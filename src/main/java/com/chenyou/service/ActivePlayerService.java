package com.chenyou.service;

import com.chenyou.pojo.entity.PageResult;

public interface ActivePlayerService {

    PageResult listActviePlayer(Integer serverId,Integer channelId,int pageSize,int rows);
}
