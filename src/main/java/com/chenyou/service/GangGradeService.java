package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

/**
 * 帮派等级
 */
public interface GangGradeService {

    PageResult listGangGrade(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;
}
