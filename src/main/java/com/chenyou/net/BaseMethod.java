package com.chenyou.net;

import com.chenyou.base.BizException;
import org.apache.http.client.methods.HttpRequestBase;

import java.io.Serializable;

/**
 * Created by maobg on 2015/12/29.
 */
public interface BaseMethod {

    //定义路径
    public String getMethodUrl();
    public HttpRequestBase getRequest() throws BizException;

    public static abstract class ChenYouRequest implements Serializable {

    }

    public static abstract class ChenYouResponse implements Serializable {
        private String sc;
        private String errorMsg;
        private Integer errcode;
        private String errmsg;

        public Integer getErrcode() {
            return errcode;
        }

        public void setErrcode(Integer errcode) {
            this.errcode = errcode;
        }

        public String getErrmsg() {
            return errmsg;
        }

        public void setErrmsg(String errmsg) {
            this.errmsg = errmsg;
        }

        public String getSc() {
            return sc;
        }

        public void setSc(String sc) {
            this.sc = sc;
        }

        public String getErrorMsg() {
            return errorMsg;
        }

        public void setErrorMsg(String errorMsg) {
            this.errorMsg = errorMsg;
        }

    }
}

