package com.chenyou.utils;

import com.chenyou.pojo.User;
import org.apache.shiro.SecurityUtils;
import javax.security.auth.Subject;
public class ShiroUtils {

    public static String getLoginName() {
       org.apache.shiro.subject.Subject subject =SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        return user.getLoginName();
    }
}
