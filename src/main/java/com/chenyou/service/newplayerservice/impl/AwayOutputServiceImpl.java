package com.chenyou.service.newplayerservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AwayOutputMapper;
import com.chenyou.pojo.AwayOutput;
import com.chenyou.pojo.AwayOutputExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.newplayerservice.AwayOutputService;
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
public class AwayOutputServiceImpl implements AwayOutputService {


    private static final Logger logger = LoggerFactory.getLogger(AwayOutputServiceImpl.class);

    @Autowired
    private AwayOutputMapper awayOutputMapper;

    @Override
    public PageResult listAwayOutput(String start, String end, Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        PageHelper.startPage(pageNum, pageSize);
        List <AwayOutput> list = new ArrayList <AwayOutput>();
        DateUtil.exchangeTime(start, end);
        AwayOutputExample example = new AwayOutputExample();
        AwayOutputExample.Criteria criteria = example.createCriteria();
        example.setOrderByClause("show_time desc");
        if (null == serverId && null == channelId) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start, end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        list = awayOutputMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <AwayOutput> page = (Page <AwayOutput>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
