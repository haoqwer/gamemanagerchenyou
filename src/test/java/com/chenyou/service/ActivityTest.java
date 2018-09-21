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
public class ActivityTest {

    @Autowired
    private ActivityNumService activityNumService;

    @Autowired
    private ActivityOutputService activityOutputService;
    @Autowired
    private OutConsumeService outConsumeService;

    @Test
    public void  test_activityNum() throws ParseException {
        PageResult pageResult = activityNumService.listActivityNum(null,null, 1, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_ActivityoutPut() throws ParseException {
        PageResult pageResult = activityOutputService.listActivityOutput(null, null,1, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void oun() throws ParseException, BizException {
        PageResult pageResult = outConsumeService.listOutConsume(null ,null, null, 1,10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }
}
