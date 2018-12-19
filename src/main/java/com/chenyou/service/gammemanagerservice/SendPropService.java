package com.chenyou.service.gammemanagerservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.SendProp;
import com.chenyou.pojo.entity.PageResult;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-18 18:09
 * @Version: 1.0
 **/
public interface SendPropService {
    int saveSendProp(List<SendProp> listSendProp) throws BizException, URISyntaxException, UnsupportedEncodingException;

    PageResult findPage(int pageNum,int pageSize) throws BizException;
}
