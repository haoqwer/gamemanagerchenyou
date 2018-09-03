package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.base.constant.UserConstants;
import com.chenyou.mapper.RoleMapper;
import com.chenyou.mapper.UserMapper;
import com.chenyou.mapper.UserRoleMapper;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.User;
import com.chenyou.pojo.UserExample;
import com.chenyou.pojo.UserRoleKey;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.UserService;
import com.chenyou.utils.ChenyouUtils;
import com.chenyou.utils.MD5Utils;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import org.apache.poi.hssf.record.formula.functions.Lognormdist;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
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

    private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Autowired
    private RoleMapper roleMapper;

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
    public User userLogin(String loginName) throws BizException {
        if (StringUtils.isEmpty(loginName)) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入用户名！");
        }
        User user = userMapper.getUserByLoginName(loginName);
        return user;
    }


    /**
     * 返回所有用户的个数
     * @return
     */
    @Override
    public int countListUser() throws BizException{
        int count = userMapper.countByExample(null);
        return count;
    }

    /**
     * 查看所有用户
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult findPage(int pageNum, int pageSize)  throws BizException{
        logger.info("pageNum:" + pageNum + "--pageSize:" + pageSize);
        PageHelper.startPage(pageNum, pageSize);
        UserExample example=new UserExample();
        example.setOrderByClause("create_time asc");
        List<User> users = userMapper.selectByExample(null);
        for(User user:users){
            if(!StringUtils.isNull(user)){
                List<Role> roles = roleMapper.selectRolesByUserId(user.getUserId());
                user.setRoles(roles);
            }
        }
        Page<User> page=(Page<User>)users;
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
    public PageResult findPage(User user, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        UserExample example = new UserExample();
        example.setOrderByClause("create_time asc");
        UserExample.Criteria criteria = example.createCriteria();
        if (null != user.getUserName() && user.getUserName().length() > 0) {
            logger.info("username:" + user.getUserName());
            criteria.andUserNameLike("%" + user.getUserName() + "%");
        }
        if (null != user.getLoginName() && user.getLoginName().length() > 0) {
            logger.info("loginName:" + user.getLoginName());
            criteria.andLoginNameLike("%" + user.getLoginName() + "%");
        }
        if (null != user.getPhonenumber() && user.getPhonenumber().length() > 0) {
            logger.info("phonNumber:" + user.getPhonenumber());
            criteria.andPhonenumberLike("%" + user.getPhonenumber() + "%");
        }
//        Page <User> page = (Page <User>) userMapper.selectByExample(example);
        List<User> users = userMapper.selectByExample(example);
        for(User u :users){
            if(!StringUtils.isNull(u)){
                List<Role> roles = roleMapper.selectRolesByUserId(u.getUserId());
                u.setRoles(roles);
            }
        }
        Page<User> page=(Page<User>)users;
        return new PageResult(page.getTotal(), page.getResult());
    }


    /**
     * 添加用户时,校验登录名是否唯一
     *
     * @param loginNmae
     * @return
     */
    @Override
    public String checkLoginNameUnique(String loginNmae) throws BizException{
        if(StringUtils.isEmpty(loginNmae)){
            throw  new BizException(BizException.CODE_PARM_LACK,"缺少loginName!");
        }
        logger.info("loginName:" + loginNmae);
        int count = userMapper.checkLoginNameUnique(loginNmae);
        if (count > 0) {
            //用户名不是唯一
            return UserConstants.USER_NAME_NOT_UNIQUE;
        }
        return UserConstants.USER_NAME_UNIQUE;
    }

    /**
     * 添加用户时,校验手机号是否唯一
     *
     * @param user
     * @return
     */
    @Override
    public String checkPhoneUnique(User user)  throws BizException{
        if(StringUtils.isEmpty(user.getPhonenumber())){
            throw new BizException(BizException.CODE_PARM_LACK,"phonenumber不能为空");
        }
        if(! ChenyouUtils.isMobile(user.getPhonenumber())){
            throw new BizException(BizException.CODE_PARM_ERROR,"phonenumber格式错误");
        }
        Integer userId = null == user.getUserId() ? -1 : user.getUserId();
        logger.info("phonNumber" + user.getPhonenumber());
        User u = userMapper.checkPhoneUnique(user.getPhonenumber());
        if (StringUtils.isNotNull(u) && u.getUserId() != userId) {
            return UserConstants.USER_PHONE_NOT_UNIQUE;
        }
        return UserConstants.USER_PHONE_UNIQUE;
    }

    /**
     * 新增用户与角色相关联的中间表
     *
     * @param user
     */
    public void insertUserRole(User user)  throws BizException{
        //让用户与角色进行关联
        List <UserRoleKey> userRoles = new ArrayList <>();
        for (Integer roleId : user.getRoleIds()) {
            logger.info("roleId:" + roleId);
            UserRoleKey ur = new UserRoleKey();
            ur.setUserId(user.getUserId());
            logger.info("userId:" + user.getUserId());
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
    public int saveUser(User user)  throws BizException{
        //新增用户的时候，首先新增用户
        //  user.setCreateBy(ShiroUtils.getLoginName());
        if(StringUtils.isNull(user)){
            throw  new BizException(BizException.CODE_PARM_LACK,"用户信息不能为空!");
        }
        if(StringUtils.isEmpty(user.getLoginName())){
            throw  new BizException(BizException.CODE_PARM_LACK,"缺少登录名!");
        }
        if(StringUtils.isEmpty(user.getPassword())){
            throw new BizException(BizException.CODE_PARM_LACK,"缺少用户密码!");
        }
        if(StringUtils.isEmpty(user.getUserName())){
            throw new BizException(BizException.CODE_PARM_LACK,"缺少用户姓名!");
        }
        if(StringUtils.isEmpty(user.getPhonenumber())){
            throw  new BizException(BizException.CODE_PARM_LACK,"缺少用户手机号码!");
        }
        if (0 ==user.getRoleIds().size()) {
            throw new BizException(BizException.CODE_PARM_LACK,"请选择一个角色!");
        }
        int rows=0;
        try {
            user.setStatus("0");
            user.setPassword(MD5Utils.md5(user.getPassword()));
             rows = userMapper.insert(user);
            //新增用户与角色关联
            insertUserRole(user);
        }catch (Exception ex){
            ex.printStackTrace();
          logger.error(ex.getMessage());
        }
        return rows;
    }

    /**
     * 用户管理时查看用户和修改时展现的用户
     *
     * @param userId
     * @return
     */
    @Override
    public User getUserByUserId(Integer userId)  throws BizException{
        logger.info("userId:" + userId);
        return userMapper.selectByPrimaryKey(userId);
    }

    /**
     * 修改用户
     *
     * @param user
     * @return
     */
    @Override
    public int updateUser(User user)  throws BizException{
        Integer userId = user.getUserId();
//        user.setCreateBy(u.getLoginName());
        userRoleMapper.deleteUserRoleByUserId(userId);
        insertUserRole(user);
        return userMapper.updateByPrimaryKey(user);
    }

    @Override
    public int changePassword(User user)throws BizException {
        if(StringUtils.isEmpty(user.getPassword())){
            throw new  BizException(BizException.CODE_PARM_LACK,"新密码不能为空!");
        }
        return userMapper.updateByPrimaryKey(user);
    }

    /**
     * 用户删除
     *
     * @param userIds
     * @return
     */
    @Override
    public int removeUserByUserId(Integer[] userIds)  throws BizException{
        if(userIds.length==0){
            throw  new BizException(BizException.CODE_PARM_LACK,"请输入你要选择删除掉的用户!");
        }
        int rows=0;
        int count=0;
        for (Integer userid : userIds) {

            try {
                //先删除用户与角色管联的中间表
              rows=  userRoleMapper.deleteUserRoleByUserId(userid);
                //再删除用户表
                count=userMapper.deleteByPrimaryKey(userid);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return rows+count;
    }
}
