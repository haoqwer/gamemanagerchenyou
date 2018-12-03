package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.newplayerservice.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/applicationContext-dao.xml", "classpath:spring/applicationContext-serivce.xml", "classpath:spring/applicationContext-shiro.xml"})
public class GamePlayerTest {

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

    @Test
    public void test_listActivePlayer() throws BizException, ParseException {
        PageResult pageResult = activePlayerService.listActviePlayer("2018-10-08","2018-10-05",1, "test_01", 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_listRetainPlayer() throws BizException, ParseException {
        PageResult pageResult = retainPlayerService.listRetainPlayer(null,null,null, "1", 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_listAwayPlayer() throws BizException, ParseException {
        PageResult pageResult = awayPlayerService.listAwayPlayer("2018-09-13","2018-09-20",1, "1", 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_listLoginDay() throws BizException, ParseException {
        PageResult pageResult = loginDayService.listLoginDay("2018-10-09",null,null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }


    @Test
    public void test_listAwayGrade() throws BizException, ParseException {
        PageResult pageResult = awayGradeService.listAwayGradeServiceImpl(null,null,null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_listAwayOutput() throws BizException, ParseException {
        PageResult pageResult = awayOutputService.listAwayOutput(null,null,null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }
}
