package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.RechargeOrderMapper;
import com.chenyou.pojo.Order;
import com.chenyou.pojo.RechargeOrder;
import com.chenyou.service.OrderService;
import com.chenyou.service.RechargeOrderService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-19 19:43
 * @Version: 1.0
 **/
@Service
@Transactional
public class RechargeOrderServiceImpl implements RechargeOrderService {


    @Autowired
    private RechargeOrderMapper rechargeOrderMapper;

    @Autowired
    private OrderService orderService;

    /*
    *
    * 充值补单
    * @author hlx
    * @date 2018\12\19 0019 19:44
    * @param
    * @return
    */

    @Override
    public int saveRechargeOrder(RechargeOrder rechargeOrder) throws BizException {
        condition(rechargeOrder);
        Order order = orderService.getOrderById(rechargeOrder.getOrderId());
        rechargeOrder.setRechargeCount(order.getAmount());
        rechargeOrder.setRechargeTime(DateUtil.format1(new Date()));
        rechargeOrder.setOrderName(order.getOrderName());
        return rechargeOrderMapper.insertSelective(rechargeOrder);
    }

    public void condition(RechargeOrder rechargeOrder) throws BizException {
        if(null == rechargeOrder.getServerId()){
            throw new BizException(BizException.CODE_PARM_LACK,"请输入区服ID");
        }
        if(StringUtils.isEmpty(rechargeOrder.getUid())){
            throw new BizException(BizException.CODE_PARM_LACK,"请输入用户ID");
        }
        if(null==rechargeOrder.getOrderId()){
            throw new BizException(BizException.CODE_PARM_LACK,"请选择充值物品!");
        }
    }
}
