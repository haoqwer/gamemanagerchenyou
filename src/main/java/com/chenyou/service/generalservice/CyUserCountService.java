package com.chenyou.service.generalservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface CyUserCountService {
 PageResult listUserCount(String start,String end, Integer serverId, String channelId, int pageSize, int rows) throws ParseException, BizException;
}
