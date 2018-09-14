package com.chenyou.controller;


import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.*;
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
    @RequestMapping(value = "/listAddNewPlayer", method = RequestMethod.GET)
    public Map <String, Object> listAddNewPlayer(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, addNewPlayerService.listAddNewPlayer(serverId, channelId, page, rows));
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
    @RequestMapping(value = "/listActivePlayer", method = RequestMethod.GET)
    public Map <String, Object> listActivePlayer(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        //获取到活跃玩家的数据
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, activePlayerService.listActviePlayer(serverId, channelId, page, rows));
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
    @RequestMapping(value = "/listRetainPlayer")
    public Map <String, Object> listRetainPlayer(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, retainPlayerService.listRetainPlayer(serverId, channelId, page, rows));
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
    @RequestMapping(value = "/listAwayPlayer", method = RequestMethod.GET)
    public Map <String, Object> listAwayPlayer(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, awayPlayerService.listAwayPlayer(serverId, channelId, page, rows));
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
    @RequestMapping(value = "listLoginDay", method = RequestMethod.GET)
    public Map <String, Object> listLoginDay(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, loginDayService.listLoginDay(serverId, channelId, page, rows));
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
    @RequestMapping(value = "listAwayGrade", method = RequestMethod.GET)
    public Map <String, Object> listAwayGrade(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, awayGradeService.listAwayGradeServiceImpl(serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 流失关卡
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "listAwayOutput", method = RequestMethod.GET)
    public Map <String, Object> listAwayOutput(Integer serverId, Integer channelId, int page, int rows) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, awayOutputService.listAwayOutputService(serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

}
