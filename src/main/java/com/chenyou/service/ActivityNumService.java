package com.chenyou.service;

import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface ActivityNumService {

    PageResult listActivityNum(String startTime,String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException;
}
