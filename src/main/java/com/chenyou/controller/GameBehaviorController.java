package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.Server;
import com.chenyou.service.*;
import javafx.application.Application;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.StringReader;
import java.util.HashMap;
import java.util.Map;

/**
 * 游戏行为统计
 */
@RestController
@RequestMapping("/behavior")
public class GameBehaviorController extends BaseController {

    @Autowired
    private GradePlayerService gradePlayerService;

    @Autowired
    private VipCountService vipCountService;

    @Autowired
    private GangCountService gangCountService;

    @Autowired
    private GangGradeService gangGradeService;

    @Autowired
    private ForceRankService forceRankService;

    @Autowired
    private LevelRankService levelRankService;

    @Autowired
    private IntimacyRankService intimacyRankService;

    @Autowired
    private GangRankService gangRankService;

    @Autowired
    private TaskMessageService taskMessageService;

    /**
     * 用户等级
     *
     * @param serverId
     * @param channelId
     * @param pageNum
     * @param PageSize
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/listGradePalyer", method = RequestMethod.GET)
    public Map <String, Object> listGradeplayer(Integer serverId, Integer channelId, int pageNum, int PageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, gradePlayerService.listGradePlayer(serverId, channelId, pageNum, PageSize));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listVipCount", method = RequestMethod.GET)
    public Map <String, Object> listVipCount(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, vipCountService.listVipCount(serverId, channelId, pageNum, pageSize));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listGangCount", method = RequestMethod.GET)
    public Map <String, Object> listGangCount(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, gangCountService.listGangCount(serverId, channelId, pageNum, pageSize));
        resultMap.put(ApplicationConstants.TAG_DATA, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listGangGrade", method = RequestMethod.GET)
    public Map <String, Object> listGangGrade(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, gangGradeService.listGangGrade(serverId, channelId, pageNum, pageSize));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listForceRank", method = RequestMethod.GET)
    public Map <String, Object> listForceRank(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, forceRankService.listGorceRank(serverId, channelId, pageNum, pageSize));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "/listLevelRank", method = RequestMethod.GET)
    public Map <String, Object> listLevelRank(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, levelRankService.listLevelRank(serverId, channelId, pageNum, pageSize));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "listIntimacyRank", method = RequestMethod.GET)
    public Map <String, Object> listIntimacyRank(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, intimacyRankService.listIntimacyRank(serverId, channelId, pageNum, pageSize));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "listGangRank", method = RequestMethod.GET)
    public Map <String, Object> listGangRank(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, gangRankService.listGangRank(serverId, channelId, pageNum, pageSize));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    @RequestMapping(value = "listTaskMessage", method = RequestMethod.GET)
    public Map <String, Object> listTaskMessage(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, taskMessageService.listTaskMessage(serverId, channelId, pageNum, pageSize));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

}
