package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

public interface AwayOutputService {

    PageResult listAwayOutput(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;
}
