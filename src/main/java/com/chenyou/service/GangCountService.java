package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

/**
 * 游戏行为统计-->帮派数量
 */
public interface GangCountService {

    PageResult listGangCount(String start,String end,Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException, ParseException;
}
