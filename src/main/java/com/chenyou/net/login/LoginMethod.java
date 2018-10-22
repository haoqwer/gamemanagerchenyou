package com.chenyou.net.login;

import com.alibaba.fastjson.JSON;
import com.chenyou.base.BizException;
import com.chenyou.net.BaseMethod;
import com.chenyou.pojo.entity.Result;
import org.apache.http.Consts;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.message.BasicNameValuePair;

import java.util.ArrayList;
import java.util.List;

public class LoginMethod implements BaseMethod {

    private String serviceRootUrl;

    private Request request = new Request();


    public LoginMethod(String serviceRootUrl, String loginName, String password) {
        this.serviceRootUrl = serviceRootUrl;
        request.setLoginName(loginName);
        request.setPassword(password);
    }

    @Override
    public String getMethodUrl() {
        return serviceRootUrl + "/login.do";
    }

    @Override
    public HttpRequestBase getRequest() throws BizException {
        HttpPost httpPost = new HttpPost(getMethodUrl());
        List<NameValuePair> formparams = new ArrayList<NameValuePair>();
        formparams.add(new BasicNameValuePair("loginName",request.getLoginName()));
        formparams.add(new BasicNameValuePair("password",request.getPassword()));
        UrlEncodedFormEntity entity = new UrlEncodedFormEntity(formparams, Consts.UTF_8);
        httpPost.setEntity(entity);
        return httpPost;
    }

    public static class Request extends BaseMethod.ChenYouRequest {
        private String loginName;

        private String password;

        public String getLoginName() {
            return loginName;
        }

        public void setLoginName(String loginName) {
            this.loginName = loginName;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }
    }


    public static class Response extends BaseMethod.ChenYouResponse {
        private boolean success;//是否成功

        public boolean getSuccess() {
            return success;
        }

        public void setSuccess(boolean success) {
            this.success = success;
        }


    }


}
