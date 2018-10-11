package com.chenyou.service.impl;


import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivityOutPutMapper;
import com.chenyou.pojo.ActivityOutPut;
import com.chenyou.pojo.ActivityOutPutExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivityOutputService;
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
public class ActivityOutputServiceImpl implements ActivityOutputService {

    private static final Logger logger = LoggerFactory.getLogger(ActivityOutputServiceImpl.class);

    @Autowired
    private ActivityOutPutMapper activityOutPutMapper;

    @Override
    public PageResult listActivityOutput(String startTime, String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException, BizException {
        logger.info("start" + startTime);
        logger.info("endTime" + endTime);
        logger.info("serverId:" + serverId);
        logger.info("pageNum" + pageNum);
        logger.info("pageSize" + pageSize);
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
        ActivityOutPutExample example = new ActivityOutPutExample();
        ActivityOutPutExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(startTime) && StringUtils.isEmpty(endTime)) {
            start=startTime;
            criteria.andRecordeTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            end=endTime;
            criteria.andRecordeTimeEqualTo(end);
        }
        if (!StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
                criteria.andRecordeTimeBetween(start, end);
            } else {
                criteria.andRecordeTimeBetween(start, end);
            }
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        List <ActivityOutPut> list = activityOutPutMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            if (StringUtils.isEmpty(list)) {
                throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
            }
        }
        Page <ActivityOutPut> page = (Page <ActivityOutPut>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
