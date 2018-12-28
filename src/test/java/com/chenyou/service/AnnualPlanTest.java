package com.chenyou.service;

import com.chenyou.pojo.AnnualSchedule;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * @Description:
 * 年度计划测试
 * @Author: hlx
 * @CreateDate: 2018-12-27 17:51
 * @Version: 1.0
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/applicationContext-dao.xml", "classpath:spring/applicationContext-serivce.xml", "classpath:spring/applicationContext-shiro.xml"})
public class AnnualPlanTest {

    @Autowired
    private AnnualScheduleService annualScheduleService;


    @Test
    public  void test_AnnualSchedule(){
        List <AnnualSchedule> annualSchedules = annualScheduleService.listAnnualScheduleByAnnualId(1);
        for(AnnualSchedule annualSchedule:annualSchedules){
            System.out.println(annualSchedule);
        }

    }

}
