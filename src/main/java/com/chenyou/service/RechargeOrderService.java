package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.RechargeOrder;
import com.chenyou.pojo.entity.PageResult;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-19 19:41
 * @Version: 1.0
 **/
public interface RechargeOrderService {

    int saveRechargeOrder(RechargeOrder rechargeOrder) throws BizException, URISyntaxException, UnsupportedEncodingException;

    PageResult findPage(int pageNum,int pageSize);

}
