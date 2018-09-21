package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/applicationContext-dao.xml", "classpath:spring/applicationContext-serivce.xml", "classpath:spring/applicationContext-shiro.xml"})
public class RechargeTestAndOnlin {

    @Autowired
    private OnlinePlayerCountService onlinePlayerCountService;

    @Autowired
    private EverydayChargeService everydayChargeService;

    @Autowired
    private PointAnalyseService pointAnalyseService;

    @Autowired
    private ChannelSummaryService channelSummaryService;

    @Autowired
    private GradePlayerService gradePlayerService;

    @Autowired
    private VipCountService vipCountService;

    @Autowired
    private GangCountService gangCountService;

    @Autowired
    private GangGradeService gangGradeService;

    @Autowired
    private   ForceRankService forceRankService;

    @Autowired
    private LevelRankService levelRankService;

    @Autowired
    private IntimacyRankService intimacyRankService;


    @Autowired
    private GangRankService gangRankService;


    @Autowired
    private TaskMessageService taskMessageService;


    @Autowired
    private OutConsumeService  outConsumeService;

    @Test
    public void test_listOnlinePlayerCount() throws ParseException, BizException {
        PageResult pageResult = onlinePlayerCountService.listOnlinePlayerCount(null, null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_listEveryDayCharge() throws ParseException, BizException {
        PageResult pageResult = everydayChargeService.listEveryDayCharget(null, null, null, null,1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_listPointAnalyseService() throws BizException {
        PageResult pageResult = pointAnalyseService.listPointAnalyse(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_channelSummaryService() throws BizException {
        PageResult pageResult = channelSummaryService.listChannelSummary(1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_gradePlayerService() throws BizException {
        PageResult pageResult = gradePlayerService.listGradePlayer(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_testVipCount() throws BizException {
        PageResult pageResult = vipCountService.listVipCount(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_listGangCount() throws BizException {
        PageResult pageResult = gangCountService.listGangCount(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_GangGrade() throws BizException {
        PageResult pageResult = gangGradeService.listGangGrade(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public  void test_forceRank() throws BizException {
        PageResult pageResult = forceRankService.listGorceRank(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public  void  test_listLevelRank() throws BizException {
        PageResult pageResult = levelRankService.listLevelRank(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_IntimacyRank() throws BizException {
        PageResult pageResult = intimacyRankService.listIntimacyRank(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public  void test_listGangRank() throws BizException {
        PageResult pageResult = gangRankService.listGangRank(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public  void  test_listTaskMessage() throws BizException {
        PageResult pageResult = taskMessageService.listTaskMessage(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

//    @Test
//    public  void test_listOutput() throws BizException {
//        PageResult pageResult = outConsumeService.listOutConsume(null, null, 1, 10);
//        System.out.println(pageResult.getTotal());
//        for (Object obj : pageResult.getRows()) {
//            System.out.println(obj);
//        }
//    }




}
