package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface EverydayChargeService {

    PageResult listEveryDayCharget(String startTime,String endTime,Integer serverId,Integer channelId,int pageNum,int pageSize) throws ParseException, BizException;

}
