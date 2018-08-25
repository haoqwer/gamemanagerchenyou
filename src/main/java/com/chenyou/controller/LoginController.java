package com.chenyou.controller;

import com.chenyou.pojo.User;
import com.chenyou.utils.MD5Utils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
public class LoginController   {

    private static Log logger = LogFactory.getLog(LoginController.class);

    /**
     * 进行登录验证
     */
    @RequestMapping("/login")
    public String login (String loginName, String password, HttpServletRequest request) {
        //获取到subject主体
        Subject subject =SecurityUtils.getSubject();
        //创建令牌
        UsernamePasswordToken token=new UsernamePasswordToken(loginName,MD5Utils.md5(password));
        try {
            //进行验证
            subject.login(token);
            User user = (User) subject.getPrincipal();
            //将登录的user放入到session
            request.getSession().setAttribute("user",user);
            return "success";
        } catch (AuthenticationException e) {
            e.printStackTrace();
            return  "login_error";
        }
    }

    /**
     * 登出
     */
    public String logout(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "login";
    }
}
