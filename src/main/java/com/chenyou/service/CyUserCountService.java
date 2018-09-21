package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.CyUserCount;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

public interface CyUserCountService {
 PageResult listUserCount(String start,String end, Integer serverId, Integer channelId, int pageSize, int rows) throws ParseException, BizException;
}
