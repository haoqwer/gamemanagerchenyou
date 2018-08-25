package com.chenyou.controller;

import com.chenyou.pojo.Role;
import com.chenyou.pojo.User;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.pojo.entity.Result;
import com.chenyou.service.RoleService;
import com.chenyou.service.UserService;
import com.chenyou.utils.MD5Utils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.swing.text.html.parser.Entity;
import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleServic;

    /**
     * 查看所有用户
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("/findPage")
    public PageResult findPage(int page, int rows) {
        return userService.findPage(page, rows);
    }

    /**
     * 根绝条件查询用户
     * @param user
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("/search")
    public PageResult search(@RequestBody User user, int page, int rows) {
        return userService.findPage(user, page, rows);
    }

    /**
     * 添加用户时,校验登录名是否唯一
     * @param loginName
     * @return
     */
    @RequestMapping("/checkLoginNameUnique")
    public String checkLoginNameUnique(String loginName) {
        String uniqueFlag = "0";
        if (null != loginName) {
            uniqueFlag = userService.checkLoginNameUnique(loginName);
        }
        return uniqueFlag;
    }

    /**
     * 添加用户时,校验手机号是否唯一
     * @param user
     * @return
     */
    @RequestMapping("/checkPhoneUnique")
    public String checkPhonUnique(User user) {
        String uniqueFlag = "0";
        if (null != user) {
            uniqueFlag = userService.checkPhoneUnique(user);
        }
        return uniqueFlag;
    }

    /**
     * 添加用户时，展现所有角色供用户选择
     * @return
     */
    @RequestMapping("/findAllRole")
    public List <Role> findAllRole() {
        List <Role> roles = roleServic.findAllRole();
        return roles;
    }

    /**
     * 用户新增
     * @return
     */
    @RequestMapping("/insertUser")
    public Result insertUser(User user){
        try {
            int count = userService.insertUser(user);
            return new Result(true,"用户新增!");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false,"用户新增失败!");
        }
    }

    /**
     * 用户管理时查看用户和修改时展现的用户
     * @param userId
     * @return
     */
    @RequestMapping("/findOne")
    public User selectuserByUserId(Integer userId) {
        User user = userService.selectUserByUserId(userId);
        return user;
    }

    @RequestMapping("selectListRoleByUserId")
    public List<Role> selectListRoleByUserId(Integer userId){
        List <Role> roles = roleServic.selectRolesByUserId(userId);
        return roles;
    }

    /**
     * 修改用户
     * @param user
     * @return
     */
    @RequestMapping("/updateUser")
    public Result updateUser(User user) {
        try {
            int count = userService.updateUser(user);
            return new Result(true, "用户修改成功!");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "用户修改失败!");
        }
    }

    /**
     * 修改密码
     *
     * @param oldPassword
     * @param operPassword
     * @return
     */
    @RequestMapping("/changepwd")
    public Result changepwd(String oldPassword, String operPassword) {
        //获取到当前用户
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        //获取到原密码
        String password = user.getPassword();
        if (null != user) {
            if (null != oldPassword && password.equals(MD5Utils.md5(oldPassword))) {
                //进行修改密码操作
                user.setPassword(operPassword);
                userService.update(user);
                return new Result(true, "修改密码成功!");
            } else {
                return new Result(false, "原始密码失败!");
            }
        } else {
            return new Result(false, "不好意思用户不存在!");
        }
    }

    /**
     * 用户删除
     * @param userIds
     * @return
     */
    @RequestMapping("/delete")
    public Result delete(Integer[] userIds) {
        try {
            userService.deleUserByIds(userIds);
            return new Result(true, "删除成功!");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "删除失败!");
        }
    }

}
