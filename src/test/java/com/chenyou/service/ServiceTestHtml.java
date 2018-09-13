package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.AboutGame;
import com.chenyou.pojo.CyUserCount;
import com.chenyou.pojo.IncomeClass;
import com.chenyou.pojo.LtvCount;
import com.chenyou.pojo.entity.PageResult;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/applicationContext-dao.xml", "classpath:spring/applicationContext-serivce.xml", "classpath:spring/applicationContext-shiro.xml"})
public class ServiceTestHtml {

    @Autowired
    private AboutGameService aboutGameService;

    @Autowired
    private CyUserCountService userCountService;

    @Autowired
    private InComeClassService inComeClassService;

    @Autowired
    private ChannelCountService channelCountService;

    @Autowired
    private LtvCountService ltvCountService;
    
    @Autowired
    private  AddNewPlayerService addNewPlayerService;

    @Test
    public void test_getAboutGame() throws BizException {
        AboutGame aboutGame = aboutGameService.getAboutGame(1,1);
        System.out.println(aboutGame);
    }

    @Test
    public void test_getUserCount() throws ParseException, BizException {
        PageResult pageResult = userCountService.listUserCount("2018-09-11", null, null,1,10);
        System.out.println(pageResult.getTotal());
        List rows = pageResult.getRows();
        for(Object userCount:rows){
            System.out.println(userCount);
        }
    }

    @Test
    public  void test_listInCome() throws ParseException, BizException {
        PageResult pageResult = inComeClassService.listInCome("2018-09-13", null, null,1,10);
        List rows = pageResult.getRows();
        for(Object userCount:rows){
            System.out.println(userCount);
        }
    }

    @Test
    public  void test_listChannelCount() throws ParseException, BizException {
        PageResult page = channelCountService.listChannelCount("2018-09-11", null, null, 1, 10);
        List rows = page.getRows();
        System.out.println(page.getTotal());
        for(Object userCount:rows){
            System.out.println(userCount);
        }
    }

    @Test
    public void test_ltvCount() throws BizException {
        List <LtvCount> list = ltvCountService.listLtvCount(1, null);
        for (LtvCount ltvCount : list) {
            System.out.println("ltvCount" + ltvCount);
        }
    }
    
    @Test
    public void test_addnewPlayer() throws BizException {
        PageResult page = addNewPlayerService.listAddNewPlayer(1, null, 1, 10);
        System.out.println(page.getTotal());
        for (Object obj : page.getRows()) {
            System.out.println(obj);
        }
    }
}



