package com.chenyou.service.generalservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.IncomeClassMapper;
import com.chenyou.pojo.IncomeClass;
import com.chenyou.pojo.IncomeClassExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.generalservice.InComeClassService;
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
public class InComeClassServiceImpl implements InComeClassService {

    private static final Logger logger = LoggerFactory.getLogger(InComeClassServiceImpl.class);

    @Autowired
    private IncomeClassMapper incomeClassMapper;

    @Override
    public PageResult listInCome(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws ParseException, BizException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <IncomeClass> list = new ArrayList <>();
        //1.开启分页
        PageHelper.startPage(pageSize, rows);
        //2.进行时间交换
        DateUtil.exchangeTime(start, end);
        //3.进行example函数查询
        IncomeClassExample example = new IncomeClassExample();
        example.setOrderByClause("recorde_time desc");
        IncomeClassExample.Criteria criteria = example.createCriteria();
        //4.进行总和查询
        if (null == serverId && null == channelId) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        //5.进行区服查询
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        //6.进行渠道查询
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        //7.根绝时间进行是一个查询还是betwwen查询
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andRecordeTimeBetween(start, end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andRecordeTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andRecordeTimeEqualTo(end);
        }
        //8.查询出数据
        list = incomeClassMapper.selectByExample(example);
        if (list.size() == 0 || list.isEmpty()) {
            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!!");
        }
        Page <IncomeClass> page = (Page <IncomeClass>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
