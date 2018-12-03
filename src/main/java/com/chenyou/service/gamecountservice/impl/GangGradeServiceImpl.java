package com.chenyou.service.gamecountservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.GangGradeMapper;
import com.chenyou.pojo.GangGrade;
import com.chenyou.pojo.GangGradeExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gamecountservice.GangGradeService;
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

/**
 * 帮派等级
 */
@Service
@Transactional
public class GangGradeServiceImpl implements GangGradeService {

    @Autowired
    private GangGradeMapper gangGradeMapper;

    private static  final Logger logger=LoggerFactory.getLogger(GangGradeServiceImpl.class);

    @Override
    public PageResult listGangGrade(String start,String end,Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <GangGrade> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(start, end);
        GangGradeExample example = new GangGradeExample();
        example.setOrderByClause("gang_grade asc");
        GangGradeExample.Criteria criteria = example.createCriteria();
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
        list = gangGradeMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <GangGrade> page = (Page <GangGrade>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
