package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/general")
public class GeneralController {

    @Autowired
    private AboutGameService aboutGameService;
    @Autowired
    private CyUserCountService userCountService;

    @Autowired
    private InComeClassService inComeClassService;

    @Autowired
    private ChannelCountService channelCountService;

    @Autowired
    private LtvCountService ltvCountService;


    /**
     * 游戏概况
     *
     * @param serverId
     * @param channelId
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/aboutGame", method = RequestMethod.GET)
    public Map <String, Object> getAboutGame(Integer serverId, Integer channelId) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, aboutGameService.getAboutGame(serverId, channelId));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.TAG_SC);
        return resultMap;
    }

    /**
     * 日报--->用户类
     *
     * @param parse
     * @param serverId
     * @param channelId
     * @return
     * @throws ParseException
     */
    @RequestMapping(value = "/listUserCount", method = RequestMethod.GET)
    public Map <String, Object> listUserCount(String parse, Integer serverId, Integer channelId, int pageSize, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, userCountService.listUserCount(parse, serverId, channelId, pageSize, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 日报-->收入类
     *
     * @param parse
     * @param serverId
     * @param channelId
     * @param pageSize
     * @param rows
     * @return
     * @throws ParseException
     * @throws BizException
     */
    @RequestMapping(value = "/listInCome", method = RequestMethod.GET)
    public Map <String, Object> listInCome(String parse, Integer serverId, Integer channelId, int pageSize, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap <>();
            resultMap.put(ApplicationConstants.TAG_DATA, inComeClassService.listInCome(parse, serverId, channelId, pageSize, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listChannel", method = RequestMethod.GET)
    public Map <String, Object> listChannel(String parse, Integer serverId, Integer channelId, int pageSize, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, channelCountService.listChannelCount(parse, serverId, channelId, pageSize, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listLtvCount", method = RequestMethod.GET)
    public Map <String, Object> listLtvCount(Integer serverId, Integer channelId) {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, ltvCountService.listLtvCount(serverId, channelId));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


}
