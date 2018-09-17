package com.chenyou.service.impl;


import com.chenyou.mapper.ActivityOutPutMapper;
import com.chenyou.pojo.ActivityOutPut;
import com.chenyou.pojo.ActivityOutPutExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivityOutputService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class ActivityOutputServiceImpl implements ActivityOutputService {

    @Autowired
    private ActivityOutPutMapper activityOutPutMapper;

    @Override
    public PageResult listActivityOutput(String startTime, String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException {
        Date start =null;
        Date end = null;
        Date temp = null;
        if(!StringUtils.isEmpty(startTime)){
            start=DateUtil.parse(startTime);
        }
        if(!StringUtils.isEmpty(endTime)){
            end=DateUtil.parse(endTime);
        }
        PageHelper.startPage(pageNum, pageSize);
        ActivityOutPutExample example = new ActivityOutPutExample();
        ActivityOutPutExample.Criteria criteria = example.createCriteria();
        if(!StringUtils.isEmpty(startTime) && StringUtils.isEmpty(endTime)){
            criteria.andRecordeTimeEqualTo(DateUtil.parse(startTime));
        }
        if(StringUtils.isEmpty(startTime)&& !StringUtils.isEmpty(endTime)){
            criteria.andRecordeTimeEqualTo(DateUtil.parse(endTime));
        }
        if(!StringUtils.isEmpty(startTime)&& !StringUtils.isEmpty(endTime)){
            if (start.after(end)) {
                temp = end;
                end = start;
                start = temp;
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
        Page <ActivityOutPut> page = (Page <ActivityOutPut>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
