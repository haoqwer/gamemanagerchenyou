package com.chenyou.service.gamecountservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.GradePlayerMapper;
import com.chenyou.pojo.GradePlayer;
import com.chenyou.pojo.GradePlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gamecountservice.GradePlayerService;
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
 * 用户等级
 */
@Service
@Transactional
public class GradePlayerServiceImpl implements GradePlayerService {


    private static final Logger logger=LoggerFactory.getLogger(GradePlayerServiceImpl.class);

    @Autowired
    private GradePlayerMapper gradePlayerMapper;

    /*
    *
    * 用户等级
    * @author hlx
    * @date 2018\11\27 0027 19:45
    * @param [start, end, serverId, channelId, pageNum, pageSize]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult listGradePlayer(String start,String end,Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <GradePlayer> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(start, end);
        GradePlayerExample example = new GradePlayerExample();
        example.setOrderByClause("show_time desc");
        GradePlayerExample.Criteria criteria = example.createCriteria();
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
        if (StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        list = gradePlayerMapper.selectByExample(example);
        Page <GradePlayer> page = (Page <GradePlayer>) list;
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思，当前没有数据!");
        }
        return new PageResult(page.getTotal(), page.getResult());
    }
}
