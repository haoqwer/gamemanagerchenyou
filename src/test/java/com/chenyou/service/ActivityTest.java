package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivityMapper;
import com.chenyou.pojo.Activity;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.activityservice.ActivityNumService;
import com.chenyou.service.activityservice.ActivityOutputService;
import com.chenyou.service.gamecountservice.OutConsumeService;
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

    @Autowired
    private   ActivityMapper activityMapper;

    @Autowired
    private TemplateNameService templateNameService;

    @Test
    public void  test_activityNum() throws ParseException, BizException {
        PageResult pageResult = activityNumService.listActivityNum(null,null, 1, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void test_ActivityoutPut() throws ParseException, BizException {
        PageResult pageResult = activityOutputService.listActivityOutput(null, null,1, 1, 10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public void oun() throws ParseException, BizException {
        PageResult pageResult = outConsumeService.listOutConsume(null ,null, null, "1",1,10);
        System.out.println(pageResult.getTotal());
        for (Object obj : pageResult.getRows()) {
            System.out.println(obj);
        }
    }

    @Test
    public  void getActivity(){
        Activity activity=new Activity();
        activity.setId(1);
        activity.setAid(1001);
        activity.setStime("2018-10-30 14:00:00");
        activity.setEtime("2018-11-31 18:59:59");
        activity.setValue(1);
        activity.setState(2);
        Activity ac = activityMapper.getActivity(activity);
        System.out.println(ac);
    }

    @Test
    public  void test_TemplateUnique() throws BizException {
        int i = templateNameService.ifExist(1);
        System.out.println(i);
    }
}
