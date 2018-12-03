package com.chenyou.service.rechargecountservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.PointAnalyseMapper;
import com.chenyou.pojo.PointAnalyse;
import com.chenyou.pojo.PointAnalyseExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.rechargecountservice.PointAnalyseService;
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
public class PointAnalyseServiceImpl implements PointAnalyseService {

    private static final Logger logger = LoggerFactory.getLogger(PointAnalyseServiceImpl.class);

    @Autowired
    private PointAnalyseMapper pointAnalyseMapper;

    @Override
    public PageResult listPointAnalyse(String start, String end, Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <PointAnalyse> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(start, end);
        PointAnalyseExample example = new PointAnalyseExample();
        example.setOrderByClause("charging_time desc");
        PointAnalyseExample.Criteria criteria = example.createCriteria();
        //如果其中一个为空
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
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start, end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        list = pointAnalyseMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <PointAnalyse> page = (Page <PointAnalyse>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
