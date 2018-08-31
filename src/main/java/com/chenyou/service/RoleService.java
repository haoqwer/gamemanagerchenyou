package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.entity.PageResult;

import java.util.List;
import java.util.Set;

public interface RoleService {
    /**
     * 查看所有角色
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
     PageResult findPage(int pageNum, int pageSize);

    /**
     * 查找所有的角色
     *在用户添加页面中显示所有的角色
     * @return
     */
     List <Role> listRole();

    /**
     * 查找对应的角色
     *在修改时展示页面的Role消息
     * @param roleId
     * @return
     */
     Role getRoleByRoleId(Integer roleId);

    /**
     * 根据条件查询，展示对应的角色
     *
     * @param role
     * @param pageNum
     * @param pageSize
     * @return
     */
     PageResult findPage(Role role, int pageNum, int pageSize);

    /**
     * 根据用户userId查找对应的角色
     *在用户修改时展示的页面
     * @param userId
     * @return
     */
     List <Role> listRoleByUserId(Integer userId);

    /**
     * 新增角色
     *
     * @param role
     * @return
     */
     int saveRole(Role role);

    /**
     * 根据输入的角色名判断输入的角色是否唯一
     *
     * @param role
     * @return
     */
     String checkRoleNameUnique(Role role);

    /**
     * 修改角色
     *
     * @param role
     * @return
     */
     int updateRole(Role role);

    /**
     * 通过查询角色id查询到使用该角色的人数
     *
     * @param roleId
     * @return
     */
     int countUserRoleByRoleId(Integer roleId);

    /**
     * 删除角色
     *
     * @param roleIds
     * @return
     */
     int removeRoleByRoleIds(Integer[] roleIds) throws BizException;

    /**
     * 用户id查找角色的关键字
     *
     * @param userId
     * @return
     */
     Set <String> getRoleKeys(Integer userId);


}
