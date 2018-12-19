package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.Order;
import com.chenyou.pojo.RechargeOrder;
import com.chenyou.service.OrderService;
import com.chenyou.service.RechargeOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-19 19:22
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/order")
public class OrderController extends  BaseController {
    @Autowired
    private OrderService orderService;

    @Autowired
    private RechargeOrderService rechargeOrderService;
    /*
    * 充值物品
    * @author hlx
    * @date 2018\12\19 0019 19:25
    * @param []
    * @return java.util.List<com.chenyou.pojo.Order>
    */
    @RequestMapping(value = "/listOrder",method = RequestMethod.GET)
    public List<Order> listOrder() throws BizException {
        return  orderService.listOrder();
    }

    /**
    *
    * 保存充值补单消息
    * @author hlx
    * @date 2018\12\19 0019 20:11
    * @param [rechargeOrder]
    * @return java.util.Map<java.lang.String,java.lang.Object>
    */
    @RequestMapping(value = "/saveRechargeOrder", method = RequestMethod.GET)
    public Map <String, Object> saveRechargeOrder(RechargeOrder rechargeOrder) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        rechargeOrder.setCreateBy(getUserName());
        resultMap.put(ApplicationConstants.TAG_DATA, rechargeOrderService.saveRechargeOrder(rechargeOrder));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }
}
