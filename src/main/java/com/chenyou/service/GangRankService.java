package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

/**
 * 帮派榜
 */
public  interface GangRankService {

    PageResult listGangRank(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;
}
