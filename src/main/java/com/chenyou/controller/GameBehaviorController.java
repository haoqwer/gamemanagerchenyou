package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.service.gamecountservice.*;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
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

    @Autowired
    private OutConsumeService outConsumeService;


    /**
     * 用户等级
     *
     * @param serverId
     * @param channelId
     * @param
     * @param
     * @return
     * @throws BizException
     */
    @RequiresPermissions("grade:user:view")
    @RequestMapping(value = "/listGradePalyer", method = RequestMethod.GET)
    public Map <String, Object> listGradeplayer(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, gradePlayerService.listGradePlayer(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * vip人数
     *
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
    @RequiresPermissions("vip:count:view")
    @RequestMapping(value = "/listVipCount", method = RequestMethod.GET)
    public Map <String, Object> listVipCount(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, vipCountService.listVipCount(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 帮派数量
     *
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
    @RequiresPermissions("gang:count:view")
    @RequestMapping(value = "/listGangCount", method = RequestMethod.GET)
    public Map <String, Object> listGangCount(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, gangCountService.listGangCount(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 帮派等级
     *
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
    @RequiresPermissions("gang:grade:view")
    @RequestMapping(value = "/listGangGrade", method = RequestMethod.GET)
    public Map <String, Object> listGangGrade(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, gangGradeService.listGangGrade(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 势力榜
     *
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
    @RequiresPermissions("rank:message:view")
    @RequestMapping(value = "/listForceRank", method = RequestMethod.GET)
    public Map <String, Object> listForceRank(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, forceRankService.listGorceRank(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 关卡榜
     *
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
    @RequiresPermissions("rank:message:view")
    @RequestMapping(value = "/listLevelRank", method = RequestMethod.GET)
    public Map <String, Object> listLevelRank(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, levelRankService.listLevelRank(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 亲密榜
     *
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
    @RequiresPermissions("rank:message:view")
    @RequestMapping(value = "/listIntimacyRank", method = RequestMethod.GET)
    public Map <String, Object> listIntimacyRank(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, intimacyRankService.listIntimacyRank(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 帮派榜
     *
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
    @RequiresPermissions("rank:message:view")
    @RequestMapping(value = "/listGangRank", method = RequestMethod.GET)
    public Map <String, Object> listGangRank(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, gangRankService.listGangRank(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 任务消息
     *
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
    @RequiresPermissions("task:message:view")
    @RequestMapping(value = "/listTaskMessage", method = RequestMethod.GET)
    public Map <String, Object> listTaskMessage(String start, String end, Integer serverId, String channelId, int page, int rows) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, taskMessageService.listTaskMessage(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 产出与消耗
     *
     * @param start
     * @param end
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws ParseException
     * @throws BizException
     * @throws ParseException
     */
    @RequiresPermissions("output:consume:view")
    @RequestMapping(value = "/listOutConsume", method = RequestMethod.GET)
    public Map <String, Object> listOutConsume(String start, String end, Integer serverId, String channelId, int page, int rows) throws ParseException, BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, outConsumeService.listOutConsume(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

}
