package com.chenyou.service.activityservice.impl;


import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivityOutPutMapper;
import com.chenyou.pojo.ActivityOutPut;
import com.chenyou.pojo.ActivityOutPutExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.activityservice.ActivityOutputService;
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
        List <ActivityOutPut> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(startTime, endTime);
        ActivityOutPutExample example = new ActivityOutPutExample();
        ActivityOutPutExample.Criteria criteria = example.createCriteria();
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (!StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            criteria.andRecordeTimeBetween(startTime, endTime);
        }
        if (!StringUtils.isEmpty(startTime) && StringUtils.isEmpty(endTime)) {
            criteria.andRecordeTimeEqualTo(startTime);
        }
        if (StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            criteria.andRecordeTimeEqualTo(endTime);
        }
        list = activityOutPutMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            if (StringUtils.isEmpty(list)) {
                throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
            }
        }
        Page <ActivityOutPut> page = (Page <ActivityOutPut>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
