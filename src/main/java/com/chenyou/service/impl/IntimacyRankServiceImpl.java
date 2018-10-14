package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.IntimacyRankMapper;
import com.chenyou.pojo.IntimacyRank;
import com.chenyou.pojo.IntimacyRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.IntimacyRankService;
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
    public PageResult listIntimacyRank(String start,String end,Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        String startTime = null;
        String endTime = null;
        String temp = null;
        PageHelper.startPage(pageNum, pageSize);
        IntimacyRankExample example = new IntimacyRankExample();
        example.setOrderByClause("intimate_rank asc");
        IntimacyRankExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            startTime = start;
            endTime = end;
            if (DateUtil.parse(startTime).after(DateUtil.parse(endTime))) {
                //如果前面时间大于后面时间
                temp = endTime;
                endTime = startTime;
                startTime = temp;
                criteria.andShowTimeBetween(startTime,endTime);
            } else {
                criteria.andShowTimeBetween(startTime, endTime);
            }
        }
        //如果其中一个为空
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            startTime=start;
            criteria.andShowTimeEqualTo(startTime);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            endTime=end;
            criteria.andShowTimeEqualTo(endTime);
        }
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
        List <IntimacyRank> list = intimacyRankMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        for(IntimacyRank intimacyRank :list){
            intimacyRank.setServerName(serverService.getServerName(intimacyRank.getServerId()));
        }
        Page <IntimacyRank> page = (Page <IntimacyRank>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
