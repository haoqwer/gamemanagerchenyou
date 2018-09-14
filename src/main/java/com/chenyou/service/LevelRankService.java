package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

/**
 *关卡榜
 */
public interface LevelRankService {

    PageResult listLevelRank(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;

}
