package com.chenyou.service.facade.gamemanager;

import com.chenyou.base.BizException;
import com.chenyou.net.HttpPoolUtil;
import com.chenyou.net.gamemanager.ReplacementOrderMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.net.URISyntaxException;

@Scope("singleton")
@Service
public class ReplacementOrderServer {

    @Autowired
    private HttpPoolUtil httpPoolUtil;

    public String getSuccess(String mod,String act,String uid,String jfd,String amount) throws BizException, URISyntaxException {
        ReplacementOrderMethod orderMethod=new ReplacementOrderMethod("http://47.104.227.113:8080/",mod,act,uid,jfd,amount);
        return   httpPoolUtil.doRequest(orderMethod.getRequest(),ReplacementOrderMethod.Response.class).getSUCCESS();
    }

}
