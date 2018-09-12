package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

public interface AddNewPlayerService {

    PageResult listAddNewPlayer(Integer serverId,Integer channelId,int pageSize,int rows) throws BizException;
}
