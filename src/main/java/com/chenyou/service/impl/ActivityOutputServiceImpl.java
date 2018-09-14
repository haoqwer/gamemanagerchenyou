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
import java.util.List;

@Service
@Transactional
public class ActivityOutputServiceImpl implements ActivityOutputService {

    @Autowired
    private ActivityOutputMapper activityOutputMapper;

    @Override
    public PageResult listActivityOutput(String parse, Integer serverId, int pageNum, int pageSize) throws ParseException {
        PageHelper.startPage(pageNum,pageSize);
        ActivityOutputExample example=new ActivityOutputExample();
        ActivityOutputExample.Criteria criteria = example.createCriteria();
        if(! StringUtils.isEmpty(parse)){
            criteria.andRecordeTimeEqualTo(DateUtil.parse(parse));
        }
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        List <ActivityOutput> list = activityOutputMapper.selectByExample(example);
        Page<ActivityOutput> page=(Page<ActivityOutput>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
