package com.chenyou.service.generalservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.LtvCountMapper;
import com.chenyou.pojo.LtvCount;
import com.chenyou.pojo.LtvCountExample;
import com.chenyou.service.generalservice.LtvCountService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
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
public class LtvCountServiceImpl implements LtvCountService {

    @Autowired
    private LtvCountMapper ltvCountMapper;

    private static final Logger logger = LoggerFactory.getLogger(LtvCountServiceImpl.class);


    @Override
    public List <LtvCount> listLtvCount(String start, String end, Integer serverId, String channelId) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        //1.进行时间交换
        DateUtil.exchangeTime(start,end);
        List <LtvCount> list=new ArrayList <>();
        //2.进行函数查询
        LtvCountExample example = new LtvCountExample();
        //3.设置时间倒序列
        example.setOrderByClause("recorde_time desc");
        LtvCountExample.Criteria criteria = example.createCriteria();
        //4.进行总和查询
        if (serverId == null && channelId == null) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        //5.进行区服查询
        if (null != serverId && !serverId.equals("null")) {
            criteria.andServerIdEqualTo(serverId);
        }
        //6.进行渠道查询
        if (null != channelId && !channelId.equals("null")) {
            criteria.andChannelIdEqualTo(channelId);
        }
        //7.进行两个时间查询
        if(! StringUtils.isEmpty(start) && ! StringUtils.isEmpty(end)){
            criteria.andRecordeTimeBetween(start,end);
        }
        //8.对开始时间进行查询
        if(! StringUtils.isEmpty(start) && StringUtils.isEmpty(end)){
            criteria.andRecordeTimeEqualTo(start);
        }
        if(StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)){
            criteria.andRecordeTimeEqualTo(end);
        }
        list = ltvCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        return list;
    }

    @Override
    public List <LtvCount> listLtvCount() throws BizException {
        List <LtvCount> list = ltvCountMapper.selectByExample(null);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思，当前没有数据!");
        }
        return list;
    }

    @Override
    public List <LtvCount> exprotListLtvCount(String start, String end, Integer serverId, String channelId) throws ParseException, BizException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        //1.进行时间交换
        DateUtil.exchangeTime(start,end);
        List <LtvCount> list=new ArrayList <>();
        LtvCountExample example = new LtvCountExample();
        example.setOrderByClause("recorde_time desc");
        LtvCountExample.Criteria criteria = example.createCriteria();
        if (serverId == null && channelId == null) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        if(!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)){
            criteria.andRecordeTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andRecordeTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andRecordeTimeEqualTo(end);
        }
        list = ltvCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        return list;
    }
}
