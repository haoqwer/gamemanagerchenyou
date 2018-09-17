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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Service
@Transactional

public class ActivityNumServiceImpl implements ActivityNumService {

    @Autowired
    private ActivityNumMapper activityNumMapper;

    @Override
    public PageResult listActivityNum(String startTime,String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException {
        PageHelper.startPage(pageNum, pageSize);
        ActivityNumExample example = new ActivityNumExample();
        ActivityNumExample.Criteria criteria = example.createCriteria();
        Date start = null;
        Date end = null;
        Date temp = null;
        //时间段的逻辑思维,判断传入的日期是否为空，1.都为空2.一个为空3.两个都不为空
       if(!StringUtils.isEmpty(startTime) && StringUtils.isEmpty(endTime)){
          criteria.andRecordTimeEqualTo(DateUtil.parse(startTime));
       }
       if(StringUtils.isEmpty(startTime)&& !StringUtils.isEmpty(endTime)){
           criteria.andRecordTimeEqualTo(DateUtil.parse(endTime));
       }
       if(!StringUtils.isEmpty(startTime)&& !StringUtils.isEmpty(endTime)){
           if (start.after(end)) {
               temp = end;
               end = start;
               start = temp;
               criteria.andRecordTimeBetween(start, end);
           }
       }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        List <ActivityNum> list = activityNumMapper.selectByExample(example);
        Page <ActivityNum> page = (Page <ActivityNum>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
