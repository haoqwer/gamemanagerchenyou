package com.chenyou.controller;


import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.ActivePlayerService;
import com.chenyou.service.AddNewPlayerService;
import com.chenyou.service.AwayPlayerService;
import com.chenyou.service.RetainPlayerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/game")
public class GamePlayerController extends BaseController {


    @Autowired
    private AddNewPlayerService addNewPlayerService;

    @Autowired
    private ActivePlayerService activePlayerService;

    @Autowired
    private RetainPlayerService retainPlayerService;

    @Autowired
    private AwayPlayerService awayPlayerService;



    @RequestMapping(value = "/listAddNewPlayer",method = RequestMethod.GET)
    public Map<String,Object> listAddNewPlayer(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        Map<String,Object> resultMap=new HashMap<>();
        resultMap.put(ApplicationConstants.TAG_DATA,addNewPlayerService.listAddNewPlayer(serverId,channelId,page,rows));
        resultMap.put(ApplicationConstants.TAG_SC,ApplicationConstants.SC_OK);
        return resultMap;
    }


    @RequestMapping(value = "/listActivePlayer", method = RequestMethod.GET)
    public Map <String, Object> listActivePlayer(Integer serverId, Integer channelId, int page, int rows) {
        //获取到活跃玩家的数据
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, activePlayerService.listActviePlayer(serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listRetainPlayer")
    public Map<String,Object> listRetainPlayer(Integer serverId,Integer channelId,int page,int rows){
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, retainPlayerService.listRetainPlayer(serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    @RequestMapping(value = "/listAwayPlayer", method = RequestMethod.GET)
    public Map <String, Object> listAwayPlayer(Integer serverId, Integer channelId, int page, int rows) {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, awayPlayerService.listAwayPlayer(serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

}
