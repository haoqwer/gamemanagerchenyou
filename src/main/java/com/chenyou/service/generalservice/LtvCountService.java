package com.chenyou.service.generalservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.LtvCount;

import java.text.ParseException;
import java.util.List;

public interface LtvCountService {
    List<LtvCount> listLtvCount(String start,String end,Integer serverId, String channelId) throws BizException, ParseException;

    List<LtvCount> listLtvCount() throws BizException;

    List<LtvCount> exprotListLtvCount(String start,String end,Integer serverId,String channelId) throws ParseException, BizException;

    //导出
}
