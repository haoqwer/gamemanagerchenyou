package com.chenyou.service.gamecountservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ForceRankMapper;
import com.chenyou.pojo.ForceRank;
import com.chenyou.pojo.ForceRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gamecountservice.ForceRankService;
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
 * 势力榜
 */
@Service
@Transactional
public class ForceRankServiceImpl implements ForceRankService {

    private  static  final Logger logger=LoggerFactory.getLogger(ForceRankServiceImpl.class);

    @Autowired
    private ForceRankMapper forceRankMapper;

    @Autowired
    private ServerService serverService;
    /*
    *
    * 势力榜
    * @author hlx
    * @date 2018\11\29 0029 9:38
    * @param [start, end, serverId, channelId, pageNum, pageSize]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult listGorceRank(String start,String end,Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        PageHelper.startPage(pageNum, pageSize);
        List <ForceRank> list = new ArrayList <>();
        ForceRankExample example = new ForceRankExample();
        example.setOrderByClause("force_rank asc");
        ForceRankExample.Criteria criteria = example.createCriteria();
        //如果其中一个为空
        DateUtil.exchangeTime(start, end);
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
        list = forceRankMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        for (ForceRank forceRank : list) {
            forceRank.setServerName(serverService.getServerName(forceRank.getServerId()));
        }
        Page <ForceRank> page = (Page <ForceRank>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
