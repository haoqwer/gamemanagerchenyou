package com.chenyou.service.impl;

import com.chenyou.mapper.EvervyDayRechargeMapper;
import com.chenyou.pojo.EvervyDayRecharge;
import com.chenyou.pojo.EvervyDayRechargeExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.EverydayChargeService;
import com.chenyou.utils.DateUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.List;

@Service
@Transactional
public class EveryDayChargeServiceImpl implements EverydayChargeService {


    @Autowired
    private EvervyDayRechargeMapper evervyDayRechargeMapper;

    @Override
    public PageResult listEveryDayCharget(String parse, Integer serverId, Integer channelId, int pageNum, int pageSize) throws ParseException {
        PageHelper.startPage(pageNum, pageSize);
        EvervyDayRechargeExample example = new EvervyDayRechargeExample();
        example.setOrderByClause("recharge_time desc");
        EvervyDayRechargeExample.Criteria criteria = example.createCriteria();
        if (null != parse) {
            criteria.andRechargeTimeEqualTo(DateUtil.parse(parse));
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <EvervyDayRecharge> list = evervyDayRechargeMapper.selectByExample(example);
        Page <EvervyDayRecharge> page = (Page <EvervyDayRecharge>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
