package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.ChannelSummaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 渠道数据汇总
 */

@RestController
@RequestMapping("/channel")
public class ChannelSummaryController  extends  BaseController{

    @Autowired
    private ChannelSummaryService channelSummaryService;

    @RequestMapping("/listChanelSummary")
    public Map<String,Object> listChanelSummary(String start,String end,int page,int rows) throws BizException, ParseException {
        Map<String,Object> resultMap=new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA,channelSummaryService.listChannelSummary(start,end,page,rows));
        resultMap.put(ApplicationConstants.TAG_SC,ApplicationConstants.SC_OK);
        return resultMap;
    }

}
