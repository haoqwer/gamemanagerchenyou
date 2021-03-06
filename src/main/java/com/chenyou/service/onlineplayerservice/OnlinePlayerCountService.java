package com.chenyou.service.onlineplayerservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface OnlinePlayerCountService {

    PageResult listOnlinePlayerCount (String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws ParseException, BizException;

}
