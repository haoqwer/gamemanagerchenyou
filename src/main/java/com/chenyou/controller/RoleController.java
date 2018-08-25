package com.chenyou.controller;

import com.chenyou.base.BizException;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.pojo.entity.Result;
import com.chenyou.service.RoleService;
import com.chenyou.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    /**
     * 查看所有角色
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("/findPage")
    public PageResult findPage(int page, int rows) {
        return roleService.findPage(page, rows);
    }

    /**
     * 根据条件查询，展示对应的角色
     * @param role
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("/search")
    public PageResult search(Role role, int page, int rows) {
        return roleService.findPage(role, page, rows);
    }

    /**
     * 角色增加
     *
     * @param role
     * @return
     */
    @RequestMapping("/add")
    public Result add(Role role) {
        try {
            roleService.insertRole(role);
            return new Result(true, "角色增加成功!");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "角色增加失败!");
        }
    }

    /**
     * 校验角色名是否唯一
     *
     * @param role
     * @return
     */
    @RequestMapping("/checkRoleNameUnique")
    public String checkRoleNameUnique(Role role) {
        String uniqueFlag = "0";
        if (null != role) {
            uniqueFlag = roleService.checkRoleNameUnique(role);
        }
        return uniqueFlag;
    }

    /**
     * 根据roleId查找对应的角色
     *
     * @param roleID
     * @return
     */
    @RequestMapping("/findOne")
    public Role findOne(Integer roleID) {
        return roleService.findOne(roleID);
    }

    /**
     * 修改角色
     * @param role
     * @return
     */
    @RequestMapping("/updateRole")
    public Result update(Role role) {
        try {
            roleService.updateRole(role);
            return new Result(true, "角色修改成功!");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "角色修改失败!!");
        }
    }

    /**
     * 删除角色
     * @param roleIds
     * @return
     * @throws BizException
     */
    @RequestMapping("/delete")
    public Result delete(Integer[] roleIds) throws BizException {
        try {
            roleService.deleteRoleByIds(roleIds);
            return new Result(true, "删除成功!");
        } catch (BizException e) {
            e.printStackTrace();
            return new Result(false, "删除失败!");
        }
    }





}
