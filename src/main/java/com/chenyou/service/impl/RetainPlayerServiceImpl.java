package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.RetainPlayerMapper;
import com.chenyou.pojo.CyUserCount;
import com.chenyou.pojo.RetainPlayer;
import com.chenyou.pojo.RetainPlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.RetainPlayerService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sun.xml.internal.rngom.nc.ChoiceNameClass;
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
public class RetainPlayerServiceImpl implements RetainPlayerService {

    private static final Logger logger = LoggerFactory.getLogger(RetainPlayerServiceImpl.class);

    @Autowired
    private RetainPlayerMapper retainPlayerMapper;


    @Override
    public PageResult listRetainPlayer(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        PageHelper.startPage(pageSize, rows);
        String temp = null;
        List <RetainPlayer> list = new ArrayList <>();
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
            }
        }
        RetainPlayerExample example=new RetainPlayerExample();
        example.setOrderByClause("show_time desc");
        RetainPlayerExample.Criteria criteria = example.createCriteria();
        if(null == serverId && null ==channelId){
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
            criteria.andShowTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        list=retainPlayerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <RetainPlayer> page = (Page <RetainPlayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
//        if (null == serverId && null == channelId) {
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = retainPlayerMapper.queryRetainPlayerByTimeTo(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = retainPlayerMapper.queryRetainPlayerByTime(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = retainPlayerMapper.queryRetainPlayerByTime(end);
//            }
//            if (StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = retainPlayerMapper.queryRetainPlayerAll();
//            }
//            for (RetainPlayer retainPlayer : list) {
//                retainPlayer.setOnedayRetain(retainPlayer.getOnedayRetain() + "%");
//                retainPlayer.setThreedayRetain(retainPlayer.getThreedayRetain() + "%");
//                retainPlayer.setWeeklyRetain(retainPlayer.getWeeklyRetain() + "%");
//            }
//        } else {
//            RetainPlayerExample example = new RetainPlayerExample();
//            RetainPlayerExample.Criteria criteria = example.createCriteria();
//            example.setOrderByClause("show_time desc");
//            if (null != serverId) {
//                criteria.andServerIdEqualTo(serverId);
//            }
//            if (null != channelId) {
//                criteria.andChannelIdEqualTo(channelId);
//            }
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andShowTimeBetween(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                criteria.andShowTimeEqualTo(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andShowTimeEqualTo(end);
//            }
//            list = retainPlayerMapper.selectByExample(example);
//        }
//        if (StringUtils.isEmpty(list)) {
//            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
//        }
//        Page <RetainPlayer> page = (Page <RetainPlayer>) list;
//        return new PageResult(page.getTotal(), page.getResult());
    }
}
