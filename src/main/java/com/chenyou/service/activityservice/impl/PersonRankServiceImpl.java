package com.chenyou.service.activityservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.PersonRankMapper;
import com.chenyou.pojo.PersonRank;
import com.chenyou.pojo.PersonRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.activityservice.PersonRankService;
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
public class PersonRankServiceImpl implements PersonRankService {

    private static  final Logger logger=LoggerFactory.getLogger(PersonRankServiceImpl.class);

    @Autowired
    private PersonRankMapper personRankMapper;

    @Override
    public PageResult listActivityRank(String startTime, String endTime, Integer serverId, int pageNum, int pageSize) throws ParseException, BizException {
        logger.info("start:" + startTime);
        logger.info("end:" + endTime);
        logger.info("serverId:" + serverId);
        PageHelper.startPage(pageNum, pageSize);
        List <PersonRank> list = new ArrayList <>();
        DateUtil.exchangeTime(startTime, endTime);
        PersonRankExample example = new PersonRankExample();
        DateUtil.exchangeTime(startTime, endTime);
        example.setOrderByClause("record_time desc");
        PersonRankExample.Criteria criteria = example.createCriteria();
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
        list = personRankMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <PersonRank> page = (Page <PersonRank>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
