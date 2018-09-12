package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.service.ChannelService;
import com.chenyou.service.ServerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/select")
public class SelectServerChannelController  extends  BaseController{
    @Autowired
    private ChannelService channelService;

    @Autowired
    private ServerService serverService;

    /**
     * 获取到所有的的区服数据
     * @return
     */
    @RequestMapping(value = "/listServer", method = RequestMethod.GET)
    public Map <String, Object> listServer() {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, serverService.listServer());
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    /**
     * 获取到所有的渠道数据
     * @return
     */
    @RequestMapping(value = "/listChannel", method = RequestMethod.GET)
    public Map <String, Object> listchannel() {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, channelService.listChannel());
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

}
