package com.chenyou.service;

import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface EverydayChargeService {

    PageResult listEveryDayCharget(String parse,Integer serverId,Integer channelId,int pageNum,int pageSize) throws ParseException;

}
