package com.chenyou.service.impl;

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
import java.util.List;

@Service
@Transactional

public class ActivityNumServiceImpl implements ActivityNumService {

    @Autowired
    private ActivityNumMapper activityNumMapper;

    @Override
    public PageResult listActivityNum(String parse, Integer serverId, int pageNum, int pageSize) throws ParseException {
        PageHelper.startPage(pageNum,pageSize);
        ActivityNumExample example=new ActivityNumExample();
        ActivityNumExample.Criteria criteria = example.createCriteria();
        if(!StringUtils.isEmpty(parse)){
            criteria.andRecordTimeEqualTo(DateUtil.parse(parse));
        }
        if(null != serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        List <ActivityNum> list = activityNumMapper.selectByExample(example);
        Page<ActivityNum> page=(Page<ActivityNum>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
