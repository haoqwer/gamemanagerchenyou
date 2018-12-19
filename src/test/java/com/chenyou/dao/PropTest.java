package com.chenyou.dao;

import com.chenyou.base.BizException;
import com.chenyou.pojo.Prop;
import com.chenyou.service.gammemanagerservice.PropService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-19 15:33
 * @Version: 1.0
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/applicationContext-dao.xml","classpath:spring/applicationContext-serivce.xml"})
public class PropTest {

    @Autowired
    private PropService propService;

    @Test
    public void test_checkUnquePropId() throws BizException {
        Prop prop=new Prop();
        prop.setPropId(1001);
        prop.setId(2);
        String s = propService.checkPropIdUnique(prop);
        System.out.println(s);
    }

    @Test
    public void  test_checkUniquePropName() throws BizException {
        Prop prop=new Prop();
        prop.setPropId(1001);
        prop.setPropName("士兵");
        String s = propService.checkPropNameUnique(prop);
        System.out.println(s);
    }


}
