package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

/**
 * 渠道数据汇总
 */
public interface ChannelSummaryService {

    PageResult listChannelSummary(int pageNum,int pageSize) throws BizException;

}
