package com.chenyou.service;

import com.chenyou.pojo.entity.PageResult;

public interface ActivityRankService {
    PageResult listActivityRank(String parse,Integer serverId,int pageNum,int pageSize);
}
