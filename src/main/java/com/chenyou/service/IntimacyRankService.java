package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

/**
 * 亲密榜
 */
public interface IntimacyRankService {
    PageResult listIntimacyRank(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;
}
