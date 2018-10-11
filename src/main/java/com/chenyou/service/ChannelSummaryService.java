package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

/**
 * 渠道数据汇总
 */
public interface ChannelSummaryService {

    PageResult listChannelSummary(String start,String end,int pageNum,int pageSize,String channelId) throws BizException, ParseException;

}
