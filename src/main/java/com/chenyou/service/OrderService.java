package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.Order;

import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-19 19:06
 * @Version: 1.0
 **/
public interface OrderService {

    List<Order> listOrder() throws BizException;

    Order getOrderById(Integer id);

}
