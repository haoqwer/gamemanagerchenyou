package com.chenyou.service.facade;

import com.chenyou.base.BizException;
import com.chenyou.net.HttpPoolUtil;
import com.chenyou.net.login.LoginMethod;
import com.chenyou.pojo.entity.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import javax.swing.text.StyledEditorKit;

@Scope("singleton")
@Service
public class LoginServer {

    @Autowired
    HttpPoolUtil httpPoolUtil;

    public boolean getSuccess(String loginName,String password) throws BizException {
        LoginMethod loginMethod=new LoginMethod("http://47.92.93.115:8080",loginName,password);
        return  httpPoolUtil.doRequest(loginMethod.getRequest(),LoginMethod.Response.class).getSuccess();
    }

}
