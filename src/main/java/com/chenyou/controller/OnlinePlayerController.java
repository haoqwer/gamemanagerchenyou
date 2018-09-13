package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.OnlinePlayerCountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/online")
public class OnlinePlayerController {

    @Autowired
    private OnlinePlayerCountService onlinePlayerCountService;

    @RequestMapping(value = "/listOnlinePlayerCount",method = RequestMethod.GET)
    public Map<String,Object> listOnlinePlayerCount(String parse, Integer serverId, Integer channelId, int page, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, onlinePlayerCountService.listOnlinePlayerCount(parse, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

}
