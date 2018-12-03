package com.chenyou.service.gamecountservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.LevelRankMapper;
import com.chenyou.pojo.LevelRank;
import com.chenyou.pojo.LevelRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gamecountservice.LevelRankService;
import com.chenyou.service.ServerService;
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
 * 关卡榜
 */
@Service
@Transactional
public class LevelRankServiceImpl implements LevelRankService {


    private static final Logger logger = LoggerFactory.getLogger(LevelRankServiceImpl.class);

    @Autowired
    private LevelRankMapper levelRankMapper;

    @Autowired
    private ServerService serverService;

    @Override
    public PageResult listLevelRank(String start,String end,Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <LevelRank> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(start, end);
        LevelRankExample example = new LevelRankExample();
        example.setOrderByClause("level_rank asc");
        LevelRankExample.Criteria criteria = example.createCriteria();
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
        list = levelRankMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        for (LevelRank levelRank : list) {
            levelRank.setServerName(serverService.getServerName(levelRank.getServerId()));
        }
        Page <LevelRank> page = (Page <LevelRank>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
