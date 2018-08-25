package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.entity.PageResult;

import java.util.List;

public interface RoleService {
    /**
     * 查看所有角色
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageResult findPage(int pageNum, int pageSize);

    /**
     * 查找所有的角色
     * @return
     */
    public List<Role> findAllRole();

    /**
     * 查找对应的角色
     * @param roleId
     * @return
     */
    public Role  findOne(Integer roleId);

    /**
     * 根据条件查询，展示对应的角色
     * @param role
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageResult findPage(Role role,int pageNum,int  pageSize);

    /**
     * 根据用户userId查找对应的角色
     * @param userId
     * @return
     */
    public List<Role> selectRolesByUserId(Integer userId);

    /**
     * 新增角色
     * @param role
     * @return
     */
    public int insertRole(Role role);

    /**
     * 根据输入的角色名判断输入的角色是否唯一
     * @param role
     * @return
     */
    public String checkRoleNameUnique(Role role);

    /**
     * 修改角色
     * @param role
     * @return
     */
    public  int updateRole(Role role);

    /**
     * 通过查询角色id查询到使用该角色的人数
     * @param roleId
     * @return
     */
    public  int countUserRoleByRoleId(Integer roleId);

    /**
     *删除角色
     * @param roleIds
     * @return
     */
    public int deleteRoleByIds(Integer[] roleIds) throws BizException;
    


}
