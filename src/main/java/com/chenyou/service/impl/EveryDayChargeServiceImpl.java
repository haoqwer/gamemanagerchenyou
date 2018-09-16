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
import com.sun.tools.javadoc.Start;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.awt.geom.AffineTransform;
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
    public PageResult listEveryDayCharget(String startTime,String endTime, Integer serverId, Integer channelId, int pageNum, int pageSize) throws ParseException, BizException {
        Date start = null;
        Date end = null;
        Date temp = null;
        PageHelper.startPage(pageNum, pageSize);
        EvervyDayRechargeExample example = new EvervyDayRechargeExample();
        example.setOrderByClause("recharge_time desc");
        EvervyDayRechargeExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(startTime)) {
            start = DateUtil.parse(startTime);
        }
        if (!StringUtils.isEmpty(endTime)) {
            end = DateUtil.parse(endTime);
        }
        if (end.after(start)) {
            temp=end;
            end=start;
            start=temp;
        }
        criteria.andRechargeTimeBetween(start, end);
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
