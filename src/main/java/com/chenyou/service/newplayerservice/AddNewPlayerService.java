package com.chenyou.service.newplayerservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface AddNewPlayerService {

    PageResult listAddNewPlayer(String start,String end,Integer serverId,String channelId,int pageSize,int rows) throws BizException, ParseException;
}
