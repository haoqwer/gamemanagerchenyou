package com.chenyou.service.gamecountservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface OutConsumeService {
    PageResult listOutConsume(String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws ParseException, BizException;
}
