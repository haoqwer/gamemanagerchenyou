package com.chenyou.service.facade;

import com.chenyou.base.BizException;
import com.chenyou.net.HttpPoolUtil;
import com.chenyou.net.pojo.User;
import com.chenyou.net.user.UserInfoMethod;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.List;

@Scope("singleton")
@Service
public class UserServerFacade {

    private  static  final Logger logger=LoggerFactory.getLogger(UserServerFacade.class);

    @Autowired
    private HttpPoolUtil httpPoolUtil;


    public List<User> listUser(int page,int rows) throws BizException {
        UserInfoMethod method=new UserInfoMethod("http://localhost:8080/",page,rows);
    //    return httpPoolUtil.doRequest(method.getRequest(),RegistrablePrjInfoMethod.Response.class).getData();
        return httpPoolUtil.doRequest(method.getRequest(),UserInfoMethod.Response.class).getData();
    }
}
