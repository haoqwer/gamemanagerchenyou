package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.User;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.pojo.entity.Result;
import com.chenyou.service.RoleService;
import com.chenyou.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    /**
     * 给增加用户时给用户选择
     * @return
     */
    @RequestMapping("listRole")
    public Map<String,Object> listRole()  throws BizException{
        Map<String,Object> map =new HashMap<>();
        List<Role> roles = roleService.listRole();
        if(null !=roles && roles.size()>0){
            map.put("success",true);
            map.put("data",roles);
        }else  {
            map.put("success","false");
            map.put("message","角色为空!");
        }
        return map;
    }

    /**
     * 查看所有角色
     *
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "/findPage", method = RequestMethod.GET)
    public PageResult findPage(int page, int rows)  throws BizException{
        return roleService.findPage(page, rows);
    }

    /**
     * 根据条件查询，展示对应的角色
     *
     * @param role
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public PageResult search(Role role, int page, int rows)  throws BizException{
        return roleService.findPage(role, page, rows);
    }

    /**
     * 角色增加
     *
     * @param role
     * @return
     */
    @RequestMapping(value = "/saveRole", method = RequestMethod.POST)
    public Map<String,Object> saveRole(Role role)  throws BizException{
        Map<String,Object> resultMap=new HashMap <>();
        Subject subject = SecurityUtils.getSubject();
        User u = (User) subject.getPrincipal();
        role.setCreateBy(u.getUserName());
        resultMap.put(ApplicationConstants.TAG_DATA,roleService.saveRole(role));
        resultMap.put(ApplicationConstants.TAG_SC,ApplicationConstants.SC_OK);
        return resultMap;
    }



    /**
     * 校验角色名是否唯一
     *
     * @param role
     * @return
     */
    @RequestMapping(value = "/checkRoleNameUnique", method = RequestMethod.POST)
    public Map<String,Object> checkRoleNameUnique(Role role)  throws BizException{
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, roleService.checkRoleNameUnique(role));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 根据roleId查找对应的角色
     *
     * @param roleId
     * @return
     */
    @RequestMapping(value = "/findOne", method = RequestMethod.GET)
    public Role findOne(Integer roleId)  throws BizException{
        return roleService.getRoleByRoleId(roleId);
    }

    /**
     * 修改角色
     *
     * @param role
     * @return
     */
    @RequestMapping(value = "/updateRole", method = RequestMethod.POST)
    public Map<String,Object> update(Role role) throws BizException {
        Subject subject = SecurityUtils.getSubject();
        User u = (User) subject.getPrincipal();
        role.setCreateBy(u.getUserName());
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, roleService.updateRole(role));
        return resultMap;
    }

    /**
     * 删除角色
     * @param roleIds
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public Map<String,Object> delete(Integer[] roleIds) throws BizException {
        Map<String,Object> resultMap=new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA ,roleService.removeRoleByRoleIds(roleIds));
        resultMap.put(ApplicationConstants.TAG_SC,ApplicationConstants.SC_OK);
        return resultMap;
    }

}
