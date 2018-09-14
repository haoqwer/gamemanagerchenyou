package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

/**
 * 任务消息
 */
public interface TaskMessageService {
    PageResult listTaskMessage(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;
}
