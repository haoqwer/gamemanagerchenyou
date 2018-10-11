package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface AwayOutputService {

    PageResult listAwayOutput(String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws BizException, ParseException;
}
