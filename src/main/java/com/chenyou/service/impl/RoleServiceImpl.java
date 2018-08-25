package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.base.constant.UserConstants;
import com.chenyou.mapper.RoleMapper;
import com.chenyou.mapper.RoleMenuMapper;
import com.chenyou.mapper.UserRoleMapper;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.RoleExample;
import com.chenyou.pojo.RoleMenuKey;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.RoleService;
import com.chenyou.utils.ShiroUtils;
import com.chenyou.utils.StringUtils;
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
public class RoleServiceImpl implements RoleService {

    private  static  final Logger logger=LoggerFactory.getLogger(RoleServiceImpl.class);

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Autowired
    private RoleMenuMapper roleMenuMapper;

    /**
     * 查找对应的角色
     * @param roleId
     * @return
     */
    @Override
    public Role findOne(Integer roleId) {
        return roleMapper.selectByPrimaryKey(roleId);
    }

    /**
     * 查看所有角色
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        logger.info("pageNum"+pageNum+"---pageSize:"+pageSize);
        PageHelper.startPage(pageNum, pageSize);
        Page <Role> page = (Page <Role>) roleMapper.selectByExample(null);
        return new PageResult(page.getTotal(), page.getResult());
    }


    @Override
    public List <Role> findAllRole() {
        return roleMapper.selectByExample(null);
    }

    /**
     * 有条件分页查询
     * @param role
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult findPage(Role role, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        RoleExample example = new RoleExample();
        RoleExample.Criteria criteria = example.createCriteria();
        if (null != role.getRoleName()) {
            criteria.andRoleNameEqualTo(role.getRoleName());
        }
        Page <Role> page = (Page <Role>) roleMapper.selectByExample(example);
        return new PageResult(page.getTotal(), page.getResult());
    }


    /**
     * 根据用户userId查找对应的Role集合
     * @param userId
     * @return
     */
    @Override
    public List <Role> selectRolesByUserId(Integer userId) {
        logger.info("userId:"+userId);
        List <Role> userRoles = roleMapper.selectRolesByUserId(userId);
        return userRoles;
    }

    /**
     * 新增角色
     * @param role
     * @return
     */
    @Override
    public int insertRole(Role role) {
        //新增角色的时候将角色与权限也保存
        role.setCreateBy(ShiroUtils.getLoginName());
        //新增角色
        roleMapper.insert(role);
        //新增角色与菜单关联中间表
        return insertRoleMenu(role);
    }

    /**
     * 新增角色对象
     *
     * @param role
     * @return
     */
    public int insertRoleMenu(Role role) {
        int rows = 1;
        List <RoleMenuKey> list = new ArrayList <>();
        for (Integer menuId : role.getMenuIds()) {
            RoleMenuKey roleMenu = new RoleMenuKey();
            roleMenu.setMenuId(menuId);
            logger.info("menuId:"+menuId);
            roleMenu.setRoleId(role.getRoleId());
            logger.info("roleId:"+role.getRoleId());
            list.add(roleMenu);
        }
        if (list.size() > 0) {
            rows = roleMenuMapper.batchRoleMenu(list);
        }
        return rows;
    }

    /**
     * 根绝输入的角色名判断角色是否唯一
     * @param role
     * @return
     */
    @Override
    public String checkRoleNameUnique(Role role) {
        //获取到该角色当前的roleId
        Integer roleId = null == role.getRoleId() ? -1 : role.getRoleId();
        logger.info("roleId:"+roleId);
        Role info = roleMapper.checkRoleNameUnique(role.getRoleName());
        //判断数据库中查询到的用户id跟用户传递进来的用户id进行比较
        if (StringUtils.isNotNull(info) && info.getRoleId() != roleId) {
            return UserConstants.ROLE_NAME_NOT_UNIQUE;
        }
        return UserConstants.ROLE_NAME_UNIQUE;
    }

    /**
     * 修改角色
     * @param role
     * @return
     */
    @Override
    public int updateRole(Role role) {
        //修改角色信息
        role.setCreateBy(ShiroUtils.getLoginName());
        logger.info("roleId:"+role.getRoleId());
        roleMapper.updateByPrimaryKey(role);
        //删除角色与菜单关联
        roleMenuMapper.deleteRoleMenuByRoleId(role.getRoleId());
        return insertRoleMenu(role);
    }

    /**
     * 根据角色id,查找使用该角色的人数
     * @param roleId
     * @return
     */
    @Override
    public int countUserRoleByRoleId(Integer roleId) {
        return userRoleMapper.countUserRoleByRoleId(roleId);
    }

    /**
     * 根据roleIDs批量删除角色
     * @param roleIds
     * @return
     */
    @Override
    public int deleteRoleByIds(Integer[] roleIds) throws BizException {
        int count = 0;
        for (Integer roleId : roleIds) {
            logger.info("roleId:"+roleId);
            Role role = findOne(roleId);
            count = countUserRoleByRoleId(roleId);
            if (count > 0) {
                throw new BizException(BizException.CODE_PARM_LACK, "用户" + role.getRoleName()+ "不能删除");
            }
        }
        return count;
    }
}
