package com.chenyou.service.impl;

import com.chenyou.base.constant.UserConstants;
import com.chenyou.mapper.UserMapper;
import com.chenyou.mapper.UserRoleMapper;
import com.chenyou.pojo.User;
import com.chenyou.pojo.UserExample;
import com.chenyou.pojo.UserRoleKey;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.UserService;
import com.chenyou.utils.MD5Utils;
import com.chenyou.utils.ShiroUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    private static  final Logger logger=LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    /**
     * 根据用户名查找用户是否存在
     * 查找用户是否存在的同时判断用户的状态如果状态是0
     * 允许登录
     * 状态为1登录失败，被封闭
     *
     * @param loginName
     * @return
     */
    @Override
    public User userLogin(String loginName) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        logger.info("loginName:"+loginName);
        if (null != loginName && loginName.length() > 0) {
            criteria.andLoginNameEqualTo(loginName);
        }
        List<User> users = userMapper.selectByExample(example);
        //判断用户状态是否锁定，如果锁定返回null,表示登录失败!
        if ("0".equals(users.get(0).getStatus())) {
            return users.get(0);
        } else {
            return null;
        }
    }

    /**
     * 查看所有用户
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        logger.info("pageNum:"+pageNum+"--pageSize:"+pageSize);
        PageHelper.startPage(pageNum, pageSize);
        Page<User> page = (Page<User>) userMapper.selectByExample(null);
        return new PageResult(page.getTotal(), page.getResult());
    }

    /**
     * 有查询条件展示分页
     *
     * @param user
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult findPage(User user, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        if (null != user.getUserName() && user.getUserName().length() > 0) {
            logger.info("username:"+user.getUserName());
            criteria.andUserNameLike("%" + user.getUserName() + "%");
        }
        if (null != user.getLoginName() && user.getLoginName().length() > 0) {
            logger.info("loginName:"+user.getLoginName());
            criteria.andLoginNameLike("%" + user.getLoginName() + "%");
        }
        if (null != user.getPhonenumber() && user.getPhonenumber().length() > 0) {
            logger.info("phonNumber:"+user.getPhonenumber());
            criteria.andPhonenumberLike("%" + user.getPhonenumber() + "%");
        }
        Page<User> page = (Page<User>) userMapper.selectByExample(example);
        return new PageResult(page.getTotal(), page.getResult());
    }


    /**
     *添加用户时,校验登录名是否唯一
     * @param loginNmae
     * @return
     */
    @Override
    public String checkLoginNameUnique(String loginNmae) {
        logger.info("loginName:"+loginNmae);
        int count = userMapper.checkLoginNameUnique(loginNmae);
        if (count > 0) {
            //用户名不是唯一
            return UserConstants.USER_NAME_NOT_UNIQUE;
        }
        return UserConstants.USER_NAME_NOT_UNIQUE;
    }

    /**
     *添加用户时,校验手机号是否唯一
     * @param user
     * @return
     */
    @Override
    public String checkPhoneUnique(User user) {
        Integer userId = null == user.getUserId() ? -1 : user.getUserId();
        logger.info("phonNumber"+user.getPhonenumber());
        User u = userMapper.checkPhoneUnique(user.getPhonenumber());
        if (null != u && u.getUserId() != userId) {
            return UserConstants.USER_PHONE_NOT_UNIQUE;
        }
        return  UserConstants.USER_PHONE_UNIQUE;
    }

    /**
     * 新增用户与角色相关联的中间表
     * @param user
     */
    public void insertUserRole(User user) {
        //让用户与角色进行关联
        List<UserRoleKey> userRoles = new ArrayList<>();
        for (Integer roleId : user.getRoleIds()) {
            logger.info("roleId:"+roleId);
            UserRoleKey ur = new UserRoleKey();
            ur.setUserId(user.getUserId());
            logger.info("userId:"+user.getUserId());
            ur.setRoleId(roleId);
            userRoles.add(ur);
        }
        if (userRoles.size() > 0) {
            userRoleMapper.batchUserRole(userRoles);
        }
    }

    /**
     * 新增用户
     *
     * @param user
     * @return
     */
    @Override
    public int insertUser(User user) {
        //新增用户的时候，首先新增用户
        user.setCreateBy(ShiroUtils.getLoginName());
        user.setPassword(MD5Utils.md5(user.getPassword()));
        int rows = userMapper.insert(user);
        //新增用户与角色关联
        insertUserRole(user);
        return rows;
    }

    /**
     * 用户管理时查看用户和修改时展现的用户
     * @param userId
     * @return
     */
    @Override
    public User selectUserByUserId(Integer userId) {
        logger.info("userId:"+userId);
        return userMapper.selectByPrimaryKey(userId);
    }

    /**
     * 修改用户
     *
     * @param user
     * @return
     */
    @Override
    public int updateUser(User user) {

        Integer userId = user.getUserId();
        String loginName = ShiroUtils.getLoginName();
        user.setCreateBy(loginName);
        userRoleMapper.deleteUserRoleByUserId(userId);
        insertUserRole(user);
        return userMapper.updateByPrimaryKey(user);
    }

    @Override
    public int update(User user) {
        return userMapper.updateByPrimaryKey(user);
    }

    /**
     * 用户删除
     * @param userIds
     * @return
     */
    @Override
    public void deleUserByIds(Integer[] userIds) {
        for (Integer userid : userIds) {
            //先删除用户与角色管联的中间表
            userRoleMapper.deleteUserRoleByUserId(userid);
            //再删除用户表
            userMapper.deleteByPrimaryKey(userid);
        }
    }
}
