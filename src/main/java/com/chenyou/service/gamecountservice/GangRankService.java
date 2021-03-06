package com.chenyou.service.gamecountservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

/**
 * 帮派榜
 */
public  interface GangRankService {

    PageResult listGangRank(String start,String end,Integer serverId,String channelId,int pageNum,int pageSize) throws BizException, ParseException;
}
