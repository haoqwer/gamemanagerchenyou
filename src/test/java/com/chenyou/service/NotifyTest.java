package com.chenyou.service;

import com.chenyou.pojo.Notify;
import com.chenyou.pojo.NotifyActi;
import com.chenyou.pojo.OpenPlan;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.ParseException;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-08 10:14
 * @Version: 1.0
 **/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/applicationContext-dao.xml", "classpath:spring/applicationContext-serivce.xml", "classpath:spring/applicationContext-shiro.xml"})
public class NotifyTest {

    @Autowired
    private NotifyService notifyService;

    @Autowired
    private OpenPlanService openPlanService;

    @Autowired
    private NotifyActiService notifyActiService;



    @Test
    public void test02() {
        List <OpenPlan> list = openPlanService.getListOpenPlan();
        int i=0;
        for (OpenPlan openPlan : list) {
            System.out.println(openPlan);
            i++;
        }
        System.out.println(i);
    }

    @Test
    public void test03() throws ParseException {
        NotifyActi  n= notifyActiService.getNotifyActiByAid(3001);
        System.out.println(n);
    }
    @Test
    public  void  test05() throws ParseException {
        List <Notify> list = notifyService.addNotify();
        for(Notify notify : list){
            System.out.println(notify);
//            2019-01-05 00:00:01
        }
    }
}
