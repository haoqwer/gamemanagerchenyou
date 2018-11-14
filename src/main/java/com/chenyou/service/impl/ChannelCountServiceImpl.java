package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ChannelCountMapper;
import com.chenyou.mapper.ChannelMapper;
import com.chenyou.pojo.ChannelCount;
import com.chenyou.pojo.ChannelCountExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ChannelCountService;
import com.chenyou.service.ChannelService;
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
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class ChannelCountServiceImpl implements ChannelCountService {

    private static final Logger logger = LoggerFactory.getLogger(ChannelCountServiceImpl.class);

    @Autowired
    private ChannelCountMapper channelCountMapper;

    @Autowired
    private ChannelService channelService;

    @Override
    public PageResult listChannelCount(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws ParseException, BizException {
        logger.info("start" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        String temp = null;
        List <ChannelCount> list = new ArrayList <>();
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
            }
        }
        PageHelper.startPage(pageSize, rows);
        ChannelCountExample example = new ChannelCountExample();
        example.setOrderByClause("count_time desc");
        ChannelCountExample.Criteria criteria = example.createCriteria();
        if(null == serverId && null == channelId){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        if(null !=channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andCountTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andCountTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andCountTimeEqualTo(end);
        }
        list=channelCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <ChannelCount> page = (Page <ChannelCount>) list;
        return new PageResult(page.getTotal(), page.getResult());
//        if (null == serverId && null == channelId) {
//            //如果serverId和channelId为空则为查出所有
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = channelCountMapper.queryChannelCountByTimeTo(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = channelCountMapper.queryChannelCountByTime(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = channelCountMapper.queryChannelCountByTime(end);
//            }
//            if (StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = channelCountMapper.queryChannelCountAll();
//            }
//            for(ChannelCount channelCount : list){
//                channelCount.setChannelName("所有");
//            }
//        } else {
//            ChannelCountExample example = new ChannelCountExample();
//            example.setOrderByClause("count_time desc");
//            ChannelCountExample.Criteria criteria = example.createCriteria();
//            if (null != serverId) {
//                criteria.andServerIdEqualTo(serverId);
//            }
//            if (null != channelId) {
//                criteria.andChannelIdEqualTo(channelId);
//            }
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andCountTimeBetween(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                criteria.andCountTimeEqualTo(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andCountTimeEqualTo(end);
//            }
//            list = channelCountMapper.selectByExample(example);
//            for(ChannelCount channelCount :list){
//                channelCount.setChannelName(channelService.getChannelName(channelCount.getChannelId()));
//            }
//        }
//        if (StringUtils.isEmpty(list)) {
//            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
//        }
//        Page <ChannelCount> page = (Page <ChannelCount>) list;
//        return new PageResult(page.getTotal(), page.getResult());
    }
}
