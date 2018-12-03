package com.chenyou.service.channeldata;

import com.chenyou.base.BizException;
import com.chenyou.pojo.ChannelSummary;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;
import java.util.List;

/**
 * 渠道数据汇总
 */
public interface ChannelSummaryService {

    PageResult listChannelSummary(String start,String end,int pageNum,int pageSize,String channelId) throws BizException, ParseException;


    List<ChannelSummary> listChannelSummary(String start, String end, String channelId) throws ParseException, BizException;

    List<ChannelSummary> listChannelSummaryByChannelId(String channelId) throws BizException;

}
