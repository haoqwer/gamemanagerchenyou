package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.ForceRank;
import com.chenyou.pojo.entity.PageResult;

/**
 * 势力榜
 */
public interface ForceRankService {
   PageResult listGorceRank(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;
}

