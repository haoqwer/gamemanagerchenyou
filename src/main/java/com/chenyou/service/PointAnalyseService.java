package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface PointAnalyseService {
    PageResult listPointAnalyse(String start,String end,Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException, ParseException;
}
