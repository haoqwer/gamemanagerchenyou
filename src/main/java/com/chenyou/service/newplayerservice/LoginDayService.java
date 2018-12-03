package com.chenyou.service.newplayerservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface LoginDayService {
    PageResult listLoginDay(String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws BizException, ParseException;
}
