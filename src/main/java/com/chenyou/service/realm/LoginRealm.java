package com.chenyou.service.realm;

import com.chenyou.base.BizException;
import com.chenyou.mapper.UserMapper;
import com.chenyou.pojo.Menu;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.User;
import com.chenyou.service.MenuService;
import com.chenyou.service.RoleService;
import com.chenyou.service.UserService;
import com.chenyou.utils.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

public class LoginRealm extends AuthorizingRealm {


    private static final Logger logger = LoggerFactory.getLogger(LoginRealm.class);

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private MenuService menuService;


    @Autowired
    private UserMapper userMapper;

    /**
     * 进行权限校验
     * 角色关键字、菜单关键字进行权限认证
     *
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        User user = (User) principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        try {
            info.setRoles(roleService.getRoleKeys(user.getUserId()));
        } catch (BizException e) {
            e.printStackTrace();
        }
        try {
            info.setStringPermissions(menuService.selectListMenuByUserId(user.getUserId()));
        } catch (BizException e) {
            e.printStackTrace();
        }
        return info;
    }

    /**
     * 进行登录认证
     *
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取到令牌
        UsernamePasswordToken usernamePasswordToken = (UsernamePasswordToken) token;
        String loginName = usernamePasswordToken.getUsername();
        logger.info("loginName" + loginName);
        User user;
        try {
            //去数据库中查找该用户名是否存在用户
            user = userService.userLogin(loginName);
            if( ! StringUtils.isNotNull(user)){
                throw new BizException(BizException.CODE_PARM_LACK,"不好意思，你已经没有权限!");
            }
            user.setLoginDate(new Date());
            user.setLoginIp(SecurityUtils.getSubject().getSession().getHost());
            userMapper.updateLoginInfo(user);
            return new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
}
