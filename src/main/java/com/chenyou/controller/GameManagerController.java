package com.chenyou.controller;

import com.chenyou.base.BizException;
import com.chenyou.mapper.UserMapper;
import com.chenyou.pojo.User;
import com.chenyou.service.facade.LoginServer;
import com.chenyou.utils.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * 游戏管理
 */
@RestController
@RequestMapping("/game")
public class GameManagerController {

    @Autowired
    private LoginServer loginServer;

    @Autowired
    private UserMapper userMapper;

    @RequestMapping(value = "/closenumber", method = RequestMethod.GET)
    public Map <String, Object> closeNumber() throws BizException {
        Map<String,Object> result=new HashMap <>();
        boolean success = loginServer.getSuccess("admin", "admin");
        result.put("success",success);
        return result;
    }


    //http://47.104.227.113:8080/?mod=user&act=set&uid=4290563&key=state&value=1



}
