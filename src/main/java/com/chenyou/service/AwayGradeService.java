package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

public interface AwayGradeService {

    PageResult listAwayGradeServiceImpl(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException;
}
