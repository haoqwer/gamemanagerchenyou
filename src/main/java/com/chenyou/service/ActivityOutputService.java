package com.chenyou.service;

import com.chenyou.pojo.entity.PageResult;
import com.chenyou.utils.StringUtils;

import java.text.ParseException;

public interface ActivityOutputService {
    PageResult listActivityOutput(String parse,Integer serverId,int pageNum,int pageSize) throws ParseException;
}
