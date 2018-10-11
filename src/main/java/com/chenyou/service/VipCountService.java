package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

/**
 * 游戏行为统计-->vip人数
 */
public interface VipCountService {

    PageResult listVipCount(String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws BizException, ParseException;

}
