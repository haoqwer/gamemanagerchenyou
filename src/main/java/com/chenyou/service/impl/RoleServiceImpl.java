package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.base.constant.UserConstants;
import com.chenyou.mapper.RoleMapper;
import com.chenyou.mapper.RoleMenuMapper;
import com.chenyou.mapper.UserRoleMapper;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.RoleExample;
import com.chenyou.pojo.RoleMenuKey;
import com.chenyou.pojo.User;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.RoleService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
@Transactional
public class RoleServiceImpl implements RoleService {

    private static final Logger logger = LoggerFactory.getLogger(RoleServiceImpl.class);

    @Autowired
    private RoleMapper roleMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Autowired
    private RoleMenuMapper roleMenuMapper;

    /**
     * 查找对应的角色
     *
     * @param roleId
     * @return
     */
    @Override
    public Role getRoleByRoleId(Integer roleId) {
        return roleMapper.selectByPrimaryKey(roleId);
    }

    /**
     * 查看所有角色
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        logger.info("pageNum" + pageNum + "---pageSize:" + pageSize);
        PageHelper.startPage(pageNum, pageSize);
        RoleExample example=new RoleExample();
        example.setOrderByClause("create_time asc");
        Page <Role> page = (Page <Role>) roleMapper.selectByExample(example);
        return new PageResult(page.getTotal(), page.getResult());
    }


    @Override
    public List <Role> listRole() {
        return roleMapper.selectByExample(null);
    }

    /**
     * 有条件分页查询
     *
     * @param role
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult findPage(Role role, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        RoleExample example = new RoleExample();
        example.setOrderByClause("create_time asc");
        RoleExample.Criteria criteria = example.createCriteria();
        if (null != role.getRoleName()) {
           // criteria.andRoleNameEqualTo(role.getRoleName());
            criteria.andRoleNameLike("%"+role.getRoleName()+"%");
        }
        Page <Role> page = (Page <Role>) roleMapper.selectByExample(example);
        return new PageResult(page.getTotal(), page.getResult());
    }


    /**
     * 根据用户userId查找对应的Role集合
     *
     * @param userId
     * @return
     */
    @Override
    public List <Role> listRoleByUserId(Integer userId) {
        logger.info("userId:" + userId);
        List <Role> userRoles = roleMapper.selectRolesByUserId(userId);
        return userRoles;
    }

    /**
     * 新增角色
     *
     * @param role
     * @return
     */
    @Override
    public int saveRole(Role role) {
        //新增角色的时候将角色与权限也保存
//        Subject subject = SecurityUtils.getSubject();
//        User user = (User) subject.getPrincipal();
//        role.setCreateBy(user.getLoginName());
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
            logger.info("menuId:" + menuId);
            roleMenu.setRoleId(role.getRoleId());
            logger.info("roleId:" + role.getRoleId());
            list.add(roleMenu);
        }
        if (list.size() > 0) {
            rows = roleMenuMapper.batchRoleMenu(list);
        }
        return rows;
    }

    /**
     * 根绝输入的角色名判断角色是否唯一
     *
     * @param role
     * @return
     */
    @Override
    public String checkRoleNameUnique(Role role) {
        //获取到该角色当前的roleId
        Integer roleId = null == role.getRoleId() ? -1 : role.getRoleId();
        logger.info("roleId:" + roleId);
        Role info = roleMapper.checkRoleNameUnique(role.getRoleName());
        //判断数据库中查询到的用户id跟用户传递进来的用户id进行比较
        if (StringUtils.isNotNull(info) && info.getRoleId() != roleId) {
            return UserConstants.ROLE_NAME_NOT_UNIQUE;
        }
        return UserConstants.ROLE_NAME_UNIQUE;
    }

    /**
     * 修改角色
     *
     * @param role
     * @return
     */
    @Override
    public int updateRole(Role role) {
        //修改角色信息
//        Subject subject = SecurityUtils.getSubject();
//        User user = (User) subject.getPrincipal();
//        role.setCreateBy(user.getLoginName());
        logger.info("roleId:" + role.getRoleId());
        roleMapper.updateByPrimaryKey(role);
        //删除角色与菜单关联
        roleMenuMapper.deleteRoleMenuByRoleId(role.getRoleId());
        return insertRoleMenu(role);
    }

    /**
     * 根据角色id,查找使用该角色的人数
     *
     * @param roleId
     * @return
     */
    @Override
    public int countUserRoleByRoleId(Integer roleId) {
        return userRoleMapper.countUserRoleByRoleId(roleId);
    }

    /**
     * 根据roleIDs批量删除角色
     *
     * @param roleIds
     * @return
     */
    @Override
    public int removeRoleByRoleIds(Integer[] roleIds) throws BizException {
        int count = 0;
        for (Integer roleId : roleIds) {
            logger.info("roleId:" + roleId);
            Role role = getRoleByRoleId(roleId);
            count = countUserRoleByRoleId(roleId);
            if (count > 0) {
                throw new BizException(BizException.CODE_PARM_LACK, "用户" + role.getRoleName() + "不能删除");
            }else {
                roleMenuMapper.deleteRoleMenuByRoleId(roleId);
                roleMapper.deleteByPrimaryKey(roleId);
            }
        }
        return count;
    }

    /**
     * 根据用户id查找角色权限
     * @param userId
     * @return
     */
    @Override
    public Set <String> getRoleKeys(Integer userId) {
        List <Role> roles = roleMapper.selectRolesByUserId(userId);
        Set <String> perms = new HashSet <>();
        for (Role perm : roles) {
            if (StringUtils.isNotNull(roles)) {
                perms.addAll(Arrays.asList(perm.getRoleKey().trim().split(",")));
            }
        }
        return perms;
    }
}
