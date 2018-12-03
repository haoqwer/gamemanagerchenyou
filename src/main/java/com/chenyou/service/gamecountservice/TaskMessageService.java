package com.chenyou.service.gamecountservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

/**
 * 任务消息
 */
public interface TaskMessageService {
    PageResult listTaskMessage(String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws BizException, ParseException;
}
