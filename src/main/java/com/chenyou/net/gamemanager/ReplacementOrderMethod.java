package com.chenyou.net.gamemanager;

import com.chenyou.base.BizException;
import com.chenyou.net.BaseMethod;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.URIBuilder;

import java.net.URI;
import java.net.URISyntaxException;


/**
 * 充值补单
 */
public class ReplacementOrderMethod implements BaseMethod {

    private String serviceRootUrl;

    private Request request=new Request();

    public ReplacementOrderMethod(String serviceRootUrl,String mod,String act,String uid,String jfd,String amount) {
        this.serviceRootUrl = serviceRootUrl;
        request.setMod(mod);
        request.setAct(act);
        request.setUid(uid);
        request.setJfd(jfd);
        request.setAmount(amount);
    }

    @Override
    public String getMethodUrl() {
        return serviceRootUrl;
    }

    @Override
    public HttpRequestBase getRequest() throws BizException, URISyntaxException {
        URI uri=new URIBuilder(getMethodUrl()).setParameter("mod",request.getMod()).setParameter("act",request.getAct()).setParameter("uid",request.getUid())
                .setParameter("jfd",request.getJfd()).setParameter("amount",request.getAmount()).build();
        HttpGet httpGet=new HttpGet(uri);
        return httpGet;
    }

    public static class Request extends BaseMethod.ChenYouRequest {
        private String mod;

        private String act;

        private String uid;

        private String jfd;

        private String amount;


        public String getMod() {
            return mod;
        }

        public void setMod(String mod) {
            this.mod = mod;
        }

        public String getAct() {
            return act;
        }

        public void setAct(String act) {
            this.act = act;
        }

        public String getUid() {
            return uid;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }

        public String getJfd() {
            return jfd;
        }

        public void setJfd(String jfd) {
            this.jfd = jfd;
        }

        public String getAmount() {
            return amount;
        }

        public void setAmount(String amount) {
            this.amount = amount;
        }
    }

    public static class Response extends BaseMethod.ChenYouResponse {
        private String SUCCESS;

        public String getSUCCESS() {
            return SUCCESS;
        }

        public void setSUCCESS(String SUCCESS) {
            this.SUCCESS = SUCCESS;
        }
    }
}
