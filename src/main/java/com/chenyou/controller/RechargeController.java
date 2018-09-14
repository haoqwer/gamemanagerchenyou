package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.EverydayChargeService;
import com.chenyou.service.PointAnalyseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;


@RestController
@RequestMapping("/recharge")
public class RechargeController  extends  BaseController{

    @Autowired
    private EverydayChargeService everyDayChargeService;

    @Autowired
    private PointAnalyseService pointAnalyseService;

    /**
     * 每日充值
     * @param parse
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws ParseException
     */
    @RequestMapping(value = "/listEveryDayCharge", method = RequestMethod.GET)
    public Map <String, Object> listEveryDayCharge(String parse, Integer serverId, Integer channelId, int page, int rows) throws ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, everyDayChargeService.listEveryDayCharget(parse, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 计费点分析
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/listPointAnalyse", method = RequestMethod.GET)
    public Map <String, Object> listPointAnalyse(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, pointAnalyseService.listPointAnalyse(serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


}
