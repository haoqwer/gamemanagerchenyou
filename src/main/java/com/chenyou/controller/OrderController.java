package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.Order;
import com.chenyou.pojo.RechargeOrder;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.OrderService;
import com.chenyou.service.RechargeOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.text.ParseException;
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
public class OrderController extends BaseController {
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
    @RequestMapping(value = "/listOrder", method = RequestMethod.GET)
    public List <Order> listOrder() throws BizException {
        return orderService.listOrder();
    }

    /**
     * 保存充值补单消息
     *
     * @param [rechargeOrder]
     * @return java.util.Map<java.lang.String   ,   java.lang.Object>
     * @author hlx
     * @date 2018\12\19 0019 20:11
     */
    @RequestMapping(value = "/saveRechargeOrder", method = RequestMethod.POST)
    public Map <String, Object> saveRechargeOrder(RechargeOrder rechargeOrder) throws BizException, URISyntaxException, UnsupportedEncodingException {
        Map <String, Object> resultMap = new HashMap <>();
        rechargeOrder.setCreateBy(getUserName());
        resultMap.put(ApplicationConstants.TAG_DATA, rechargeOrderService.saveRechargeOrder(rechargeOrder));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /*
    *
    * 充值补单展示页面
    * @author hlx
    * @date 2018\12\20 0020 15:36
    * @param [page, rows]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @RequestMapping(value = "/findPage", method = RequestMethod.GET)
    public PageResult findPage(int page, int rows) {
        return rechargeOrderService.findPage(page, rows);
    }


    @RequestMapping(value = "findSearch",method = RequestMethod.GET)
    public PageResult findSearch(String start, String end,Integer serverId, int page, int rows) throws  BizException, ParseException {
        return rechargeOrderService.findSearch(start,end,serverId,page,rows);
    }
}
