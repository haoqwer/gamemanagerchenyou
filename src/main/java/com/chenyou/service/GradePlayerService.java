package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

/**
 * 游戏行为统计-->用户等级
 */
public interface GradePlayerService {

    PageResult listGradePlayer(String start,String end,Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException, ParseException;

}
