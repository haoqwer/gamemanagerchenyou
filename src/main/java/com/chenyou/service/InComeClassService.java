package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.IncomeClass;
import com.chenyou.pojo.entity.PageResult;

import java.text.ParseException;
import java.util.List;

public interface InComeClassService {
    PageResult listInCome(String parse, Integer serverId, Integer channelId, int pageSize, int rows) throws ParseException, BizException;
}
