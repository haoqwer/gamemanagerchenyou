package com.chenyou.service.gamecountservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.IntimacyRankMapper;
import com.chenyou.pojo.IntimacyRank;
import com.chenyou.pojo.IntimacyRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gamecountservice.IntimacyRankService;
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

@Service
@Transactional
public class IntimacyRankServiceImpl implements IntimacyRankService {

    private static final Logger logger = LoggerFactory.getLogger(IntimacyRankServiceImpl.class);

    @Autowired
    private IntimacyRankMapper intimacyRankMapper;

    @Autowired
    private ServerService serverService;

    @Override
    public PageResult listIntimacyRank(String start, String end, Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <IntimacyRank> list = new ArrayList <>();
        DateUtil.exchangeTime(start, end);
        PageHelper.startPage(pageNum, pageSize);
        IntimacyRankExample example = new IntimacyRankExample();
        example.setOrderByClause("intimate_rank asc");
        IntimacyRankExample.Criteria criteria = example.createCriteria();
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
        list = intimacyRankMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        for (IntimacyRank intimacyRank : list) {
            intimacyRank.setServerName(serverService.getServerName(intimacyRank.getServerId()));
        }
        Page <IntimacyRank> page = (Page <IntimacyRank>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
