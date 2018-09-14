package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.mapper.RetainPlayerMapper;
import com.chenyou.pojo.AwayPlayer;
import com.chenyou.pojo.entity.PageResult;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
    public  void  test_listActivePlayer() throws BizException {
        PageResult pageResult = activePlayerService.listActviePlayer(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for(Object obj:pageResult.getRows()){
            System.out.println(obj);
        }
    }

    @Test
    public void test_listRetainPlayer() throws BizException {
        PageResult pageResult = retainPlayerService.listRetainPlayer(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for(Object obj:pageResult.getRows()){
            System.out.println(obj);
        }
    }

    @Test
    public void test_listAwayPlayer() throws BizException {
        PageResult pageResult = awayPlayerService.listAwayPlayer(1, 1, 1, 10);
        System.out.println(pageResult.getTotal());
        for(Object obj:pageResult.getRows()){
            System.out.println(obj);
        }
    }

    @Test
    public void test_listLoginDay() throws BizException {
        PageResult pageResult = loginDayService.listLoginDay(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for(Object obj:pageResult.getRows()){
            System.out.println(obj);
        }
    }


    @Test
    public  void test_listAwayGrade() throws BizException {
        PageResult pageResult = awayGradeService.listAwayGradeServiceImpl(null, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for(Object obj:pageResult.getRows()){
            System.out.println(obj);
        }
    }

    @Test
    public  void test_listAwayOutput() throws BizException {
        PageResult pageResult = awayOutputService.listAwayOutputService(2, null, 1, 10);
        System.out.println(pageResult.getTotal());
        for(Object obj:pageResult.getRows()){
            System.out.println(obj);
        }
    }







}
