package com.chenyou.dao;

import com.chenyou.pojo.Order;
import com.chenyou.service.OrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-20 15:07
 * @Version: 1.0
 **/
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/applicationContext-dao.xml","classpath:spring/applicationContext-serivce.xml"})
public class OrderTest {


    @Autowired
    private OrderService orderService;

    @Test
    public  void test_getOrderById(){
        Order order = orderService.getOrderById(2);
        System.out.println(order);
    }

}
