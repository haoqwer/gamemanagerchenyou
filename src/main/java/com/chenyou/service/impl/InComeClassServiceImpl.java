package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.IncomeClassMapper;
import com.chenyou.pojo.IncomeClass;
import com.chenyou.pojo.IncomeClassExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.InComeClassService;
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
public class InComeClassServiceImpl implements InComeClassService {

    private static  final Logger logger=LoggerFactory.getLogger(InComeClassServiceImpl.class);

    @Autowired
    private IncomeClassMapper incomeClassMapper;

    @Override
    public PageResult listInCome(String start,String end, Integer serverId, String channelId,int pageSize,int rows) throws ParseException, BizException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        String temp = null;
        List <IncomeClass> list = new ArrayList <>();
        PageHelper.startPage(pageSize, rows);
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
            }
        }
        IncomeClassExample example=new IncomeClassExample();
        example.setOrderByClause("recorde_time desc");
        IncomeClassExample.Criteria criteria = example.createCriteria();
        if (null == serverId && null == channelId) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        if(null !=channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)){
            criteria.andRecordeTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)){
            criteria.andRecordeTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)){
            criteria.andRecordeTimeEqualTo(end);
        }
        list = incomeClassMapper.selectByExample(example);
        if (list.size() == 0 || list.isEmpty()) {
            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!!");
        }
        Page <IncomeClass> page = (Page <IncomeClass>) list;
        return new PageResult(page.getTotal(), page.getResult());
//        if (null == serverId && null == channelId) {
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = incomeClassMapper.queryIncomClassByTimeTwo(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = incomeClassMapper.queryIncomClassByTime(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = incomeClassMapper.queryIncomClassByTime(start);
//            }
//            if (StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = incomeClassMapper.queryIncomClassAll();
//            }
//        } else {
//            IncomeClassExample example = new IncomeClassExample();
//            example.setOrderByClause("recorde_time desc");
//            IncomeClassExample.Criteria criteria = example.createCriteria();
//            if (null != serverId) {
//                criteria.andServerIdEqualTo(serverId);
//            }
//            if (null != channelId) {
//                criteria.andChannelIdEqualTo(channelId);
//            }
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andRecordeTimeBetween(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                criteria.andRecordeTimeEqualTo(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andRecordeTimeEqualTo(end);
//            }
//            list = incomeClassMapper.selectByExample(example);
//        }
//        if (list.size() == 0 || list.isEmpty()) {
//            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!!");
//        }
//        Page <IncomeClass> page = (Page <IncomeClass>) list;
//        return new PageResult(page.getTotal(), page.getResult());
    }
}
