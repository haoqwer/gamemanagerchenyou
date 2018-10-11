package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivityNumMapper;
import com.chenyou.pojo.ActivityNum;
import com.chenyou.pojo.ActivityNumExample;
import com.chenyou.pojo.Channel;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivityNumService;
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

public class ActivityNumServiceImpl implements ActivityNumService {

    private static final Logger logger = LoggerFactory.getLogger(ActivityNumServiceImpl.class);

    @Autowired
    private ActivityNumMapper activityNumMapper;

    @Override
    public PageResult listActivityNum(String startTime, String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException, BizException {
        logger.info("startTime" + startTime);
        logger.info("endTime" + endTime);
        logger.info("serverId" + serverId);
        String start = null;
        String end = null;
        String temp = null;
        if (!StringUtils.isEmpty(startTime)) {
            start = startTime;
        }
        if (!StringUtils.isEmpty(endTime)) {
            end = endTime;
        }
        PageHelper.startPage(pageNum, pageSize);
        ActivityNumExample example = new ActivityNumExample();
        ActivityNumExample.Criteria criteria = example.createCriteria();
        //时间段的逻辑思维,判断传入的日期是否为空，1.都为空2.一个为空3.两个都不为空
        if (!StringUtils.isEmpty(startTime) && StringUtils.isEmpty(endTime)) {
            start=startTime;
            criteria.andRecordTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            end=endTime;
            criteria.andRecordTimeEqualTo(end);
        }
        if (!StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
                criteria.andRecordTimeBetween(start, end);
            } else {
                criteria.andRecordTimeBetween(start, end);
            }
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        List <ActivityNum> list = activityNumMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
        }
        Page <ActivityNum> page = (Page <ActivityNum>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
