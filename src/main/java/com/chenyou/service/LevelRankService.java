package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

/**
 *关卡榜
 */
public interface LevelRankService {

    PageResult listLevelRank(String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws BizException, ParseException;

}
