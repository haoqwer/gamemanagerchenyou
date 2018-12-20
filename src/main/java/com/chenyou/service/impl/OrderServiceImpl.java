package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.OrderMapper;
import com.chenyou.pojo.Order;
import com.chenyou.service.OrderService;
import com.chenyou.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-19 19:20
 * @Version: 1.0
 **/

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    /*
     *
     * 获取所有的物品消息
     * @author hlx
     * @date 2018\12\20  14:43
     * @param []
     * @return java.util.List<com.chenyou.pojo.Order>
     */
    @Override
    public List<Order> listOrder() throws BizException {
        List <Order> list = orderMapper.selectByExample(null);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思当前没有数据!");
        }
        return list;
    }

    @Override
    public Order getOrderById(Integer id) {
        Order order = orderMapper.selectByPrimaryKey(id);
        return order;
    }
}
