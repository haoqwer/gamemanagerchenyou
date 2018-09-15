package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.ActivityNumService;
import com.chenyou.service.ActivityOutputService;
import com.chenyou.service.ActivityRankService;
import com.chenyou.service.PersonRankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/activity")
public class ActivityController  extends  BaseController{

    @Autowired
    private ActivityNumService activityNumService;

    @Autowired
    private ActivityOutputService activityOutputService;


    @Autowired
    private ActivityRankService activityRankService;


    @Autowired
    private PersonRankService personRankService;


    @RequestMapping(value = "/listActivityNum", method = RequestMethod.GET)
    public Map<String, Object> listActivityNum(String parse, Integer serverId, int page, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap<>();
        resultMap.put(ApplicationConstants.TAG_DATA, activityNumService.listActivityNum(parse,serverId,page,rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listActivityOutput", method = RequestMethod.GET)
    public Map<String, Object> listActivityOutput(String parse, Integer serverId, int page, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap<>();
        resultMap.put(ApplicationConstants.TAG_DATA,activityOutputService.listActivityOutput(parse,serverId,page,rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    @RequestMapping(value = "/listActivityRank", method = RequestMethod.GET)
    public Map<String, Object> listActivityRank(String parse, Integer serverId, int page, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap<>();
        resultMap.put(ApplicationConstants.TAG_DATA,activityRankService.listActivityRank(parse,serverId,page,rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listPersonRank", method = RequestMethod.GET)
    public Map<String, Object> listPersonRank(String parse, Integer serverId, int page, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap<>();
        resultMap.put(ApplicationConstants.TAG_DATA,personRankService.listActivityRank(parse,serverId,page,rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }




}
