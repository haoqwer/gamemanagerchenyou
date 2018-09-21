package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface AddNewPlayerService {

    PageResult listAddNewPlayer(String start,String end,Integer serverId,Integer channelId,int pageSize,int rows) throws BizException, ParseException;
}
