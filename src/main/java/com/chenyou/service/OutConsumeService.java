package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface OutConsumeService {
    PageResult listOutConsume( String parse, Integer serverId,Integer channelId,int pageNum,int pageSize) throws ParseException, BizException;
}