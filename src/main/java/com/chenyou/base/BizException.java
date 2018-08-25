package com.chenyou.base;

/**
 * Created by maobg on 2015/5/23.
 */
public class BizException extends Exception {

    //基本错误定义
    public static final String CODE_NO_LONIN     = "-1";       //用户未登陆
    public static final String CODE_SIGN_ERROR       = "BASE-1000";       //签名错误
    public static final String CODE_IPAUTH_ERROR     = "BASE-1001";       //IP授权错误
    public static final String CODE_PARM_LACK        = "BASE-1002";       //缺少必要参数
    public static final String CODE_PARM_ERROR       = "BASE-1003";       //参数错误
    public static final String CALL_SERVICE_ERROR    = "BASE-1004";       //调用服务异常
    
    private String code;
    public BizException(String code, String message) {
        super(message);
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}