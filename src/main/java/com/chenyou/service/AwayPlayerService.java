package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

public interface AwayPlayerService {
    PageResult listAwayPlayer(Integer serverId,Integer channelId,int pageSize,int rows) throws BizException;
}
