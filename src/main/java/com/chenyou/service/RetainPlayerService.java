package com.chenyou.service;

import com.chenyou.pojo.entity.PageResult;

public interface RetainPlayerService {
    PageResult listRetainPlayer(Integer serverId,Integer channelId,int pageSize,int rows);
}
