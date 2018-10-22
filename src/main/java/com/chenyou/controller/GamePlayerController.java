package com.chenyou.controller;


import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
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

    @Autowired
    private LoginDayService loginDayService;

    @Autowired
    private AwayGradeService awayGradeService;

    @Autowired
    private AwayOutputService awayOutputService;

    /**
     * 新增玩家
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequiresPermissions("add:newplayer:view")
    @RequestMapping(value = "/listAddNewPlayer", method = RequestMethod.GET)
    public Map <String, Object> listAddNewPlayer(String start,String end,Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, addNewPlayerService.listAddNewPlayer(start,end,serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 活跃玩家
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequiresPermissions("active:player:view")
    @RequestMapping(value = "/listActivePlayer", method = RequestMethod.GET)
    public Map <String, Object> listActivePlayer(String start,String end,Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        //获取到活跃玩家的数据
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, activePlayerService.listActviePlayer(start,end,serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 玩家留存
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequiresPermissions("level:player:view")
    @RequestMapping(value = "/listRetainPlayer")
    public Map <String, Object> listRetainPlayer(String start,String end,Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, retainPlayerService.listRetainPlayer(start,end,serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    /**
     * 玩家流失
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequiresPermissions("loss:player:view")
    @RequestMapping(value = "/listAwayPlayer", method = RequestMethod.GET)
    public Map <String, Object> listAwayPlayer(String start,String end,Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, awayPlayerService.listAwayPlayer(start,end,serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 登录天数
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequiresPermissions("loss:player:view")
    @RequestMapping(value = "listLoginDay", method = RequestMethod.GET)
    public Map <String, Object> listLoginDay(String start,String end,Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, loginDayService.listLoginDay(start,end,serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 流失等级
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequiresPermissions("loss:player:view")
    @RequestMapping(value = "listAwayGrade", method = RequestMethod.GET)
    public Map <String, Object> listAwayGrade(String start,String end,Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, awayGradeService.listAwayGradeServiceImpl(start,end,serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    /**
     * 流失关卡
     * @param start
     * @param end
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     * @throws ParseException
     */
    @RequiresPermissions("loss:player:view")
    @RequestMapping(value = "listAwayOutput", method = RequestMethod.GET)
    public Map <String, Object> listAwayOutput(String start,String end,Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, awayOutputService.listAwayOutput(start,end,serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


}
