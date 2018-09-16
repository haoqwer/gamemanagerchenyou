package com.chenyou.service.impl;

import com.chenyou.mapper.ActivityOutputMapper;
import com.chenyou.pojo.ActivityOutput;
import com.chenyou.pojo.ActivityOutputExample;
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
    private ActivityOutputMapper activityOutputMapper;

    @Override
    public PageResult listActivityOutput(String startTime,String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException {
        PageHelper.startPage(pageNum,pageSize);
        ActivityOutputExample example=new ActivityOutputExample();
        ActivityOutputExample.Criteria criteria = example.createCriteria();
        Date start = null;
        Date end = null;
        Date temp = null;
        if (!StringUtils.isEmpty(startTime)) {
            start = DateUtil.parse(startTime);
        }
        if (!StringUtils.isEmpty(endTime)) {
            end = DateUtil.parse(endTime);
        }
        if (start.after(end)) {
            temp = end;
            end = start;
            start = temp;
        }
        criteria.andRecordeTimeBetween(start,end);
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        List <ActivityOutput> list = activityOutputMapper.selectByExample(example);
        Page<ActivityOutput> page=(Page<ActivityOutput>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
