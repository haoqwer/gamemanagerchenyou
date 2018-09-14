package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

/**
 * 游戏行为统计-->用户等级
 */
public interface GradePlayerService {

    PageResult listGradePlayer(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;

}
