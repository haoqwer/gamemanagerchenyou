package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.PersonRankMapper;
import com.chenyou.pojo.PersonRank;
import com.chenyou.pojo.PersonRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.PersonRankService;
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
public class PersonRankServiceImpl implements PersonRankService {

    @Autowired
    private PersonRankMapper personRankMapper;

    @Override
    public PageResult listActivityRank(String startTime, String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException, BizException {
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
        PersonRankExample example = new PersonRankExample();
        example.setOrderByClause("record_time desc");
        PersonRankExample.Criteria criteria = example.createCriteria();
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
            }else {
                criteria.andRecordTimeBetween(start, end);
            }
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        List <PersonRank> list = personRankMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <PersonRank> page = (Page <PersonRank>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
