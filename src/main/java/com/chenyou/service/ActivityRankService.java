package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;

public interface ActivityRankService {
    PageResult listActivityRank(String parse,Integer serverId,int pageNum,int pageSize) throws ParseException, BizException;
}
