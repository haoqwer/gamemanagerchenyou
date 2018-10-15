package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.EvervyDayRechargeMapper;
import com.chenyou.pojo.EvervyDayRecharge;
import com.chenyou.pojo.EvervyDayRechargeExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.EverydayChargeService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class EveryDayChargeServiceImpl implements EverydayChargeService {


    private static  final Logger logger=LoggerFactory.getLogger(EveryDayChargeServiceImpl.class);

    @Autowired
    private EvervyDayRechargeMapper evervyDayRechargeMapper;

    @Override
    public PageResult listEveryDayCharget(String startTime,String endTime, Integer serverId, String channelId, int pageNum, int pageSize) throws ParseException, BizException {
        logger.info("start:"+startTime);
        logger.info("end:"+endTime);
        logger.info("serverId:"+serverId);
        logger.info("channelId:"+channelId);
        String start =null;
        String end = null;
        String temp = null;
        if(!StringUtils.isEmpty(startTime)){
            start=startTime;
        }
        if(!StringUtils.isEmpty(endTime)){
            end=endTime;
        }
        PageHelper.startPage(pageNum, pageSize);
        EvervyDayRechargeExample example = new EvervyDayRechargeExample();
        example.setOrderByClause("recharge_time desc");
        EvervyDayRechargeExample.Criteria criteria = example.createCriteria();
        //时间段的逻辑思维,判断传入的日期是否为空，1.都为空2.一个为空3.两个都不为空
        if(!StringUtils.isEmpty(startTime) && StringUtils.isEmpty(endTime)){
            start=startTime;
            criteria.andRechargeTimeEqualTo(start);
        }
        if(StringUtils.isEmpty(startTime)&& !StringUtils.isEmpty(endTime)){
            end=endTime;
            criteria.andRechargeTimeEqualTo(end);
        }
        if(!StringUtils.isEmpty(startTime)&& !StringUtils.isEmpty(endTime)){
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
                criteria.andRechargeTimeBetween(start, end);
            }else  {
                criteria.andRechargeTimeBetween(start, end);
            }
        }
        if(serverId ==null && channelId==null){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <EvervyDayRecharge> list = evervyDayRechargeMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思，当前没有数据!");
        }
        Page <EvervyDayRecharge> page = (Page <EvervyDayRecharge>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
