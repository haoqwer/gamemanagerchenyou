package com.chenyou.service.activityservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivityNumMapper;
import com.chenyou.pojo.ActivityNum;
import com.chenyou.pojo.ActivityNumExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.activityservice.ActivityNumService;
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
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional

public class ActivityNumServiceImpl implements ActivityNumService {

    private static final Logger logger = LoggerFactory.getLogger(ActivityNumServiceImpl.class);

    @Autowired
    private ActivityNumMapper activityNumMapper;

    @Override
    public PageResult listActivityNum(String startTime, String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException, BizException {
        logger.info("startTime" + startTime);
        logger.info("endTime" + endTime);
        logger.info("serverId" + serverId);
        List <ActivityNum> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(startTime, endTime);
        ActivityNumExample example = new ActivityNumExample();
        ActivityNumExample.Criteria criteria = example.createCriteria();
        //时间段的逻辑思维,判断传入的日期是否为空，1.都为空2.一个为空3.两个都不为空
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (!StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            criteria.andRecordTimeBetween(startTime, endTime);
        }
        if (!StringUtils.isEmpty(startTime) && StringUtils.isEmpty(endTime)) {
            criteria.andRecordTimeEqualTo(startTime);
        }
        if (StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            criteria.andRecordTimeEqualTo(endTime);
        }
        list = activityNumMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
        }
        Page <ActivityNum> page = (Page <ActivityNum>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
