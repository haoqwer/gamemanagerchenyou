package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.ForceRank;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

/**
 * 势力榜
 */
public interface ForceRankService {
   PageResult listGorceRank(String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws BizException, ParseException;
}

