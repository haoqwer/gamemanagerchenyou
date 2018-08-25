package com.chenyou.service.realm;

import com.chenyou.pojo.Menu;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.User;
import com.chenyou.service.MenuService;
import com.chenyou.service.RoleService;
import com.chenyou.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class LoginRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private MenuService menuService;

    /**
     * 进行权限校验
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        User user = (User) principals.getPrimaryPrincipal();
        /**
         * 获取到用户跟角色管理的所有角色信息
         */
        List<Role> roles = roleService.selectRolesByUserId(user.getUserId());
        SimpleAuthorizationInfo sai = new SimpleAuthorizationInfo();
        /**
         * 获取用户跟角色关联，角色跟权限关联的所有信息
         */
        List<Menu> menus = menuService.selectListMenuByUserId(user.getUserId());
        if (null != menus && menus.size() > 0) {
            for (Menu menu : menus) {
                sai.addStringPermission(menu.getPerms());
            }
        }
        if (null != roles && roles.size() > 0) {
            for (Role role : roles) {
                sai.addRole(role.getRoleKey());
            }
        }
        return sai;
    }

    /**
     * 进行登录认证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取到令牌
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) token;
        String loginName = usernamePasswordToken.getUsername();
        User user;
        try {
            //去数据库中查找该用户名是否存在用户
            user = userService.userLogin(loginName);
            return new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
