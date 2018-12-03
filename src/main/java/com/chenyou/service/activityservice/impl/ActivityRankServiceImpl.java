package com.chenyou.service.activityservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivityRankMapper;
import com.chenyou.pojo.ActivityRank;
import com.chenyou.pojo.ActivityRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.activityservice.ActivityRankService;
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
public class ActivityRankServiceImpl  implements ActivityRankService {


    private static  final Logger logger=LoggerFactory.getLogger(ActivityRankServiceImpl.class);


    @Autowired
    private ActivityRankMapper activityRankMapper;

    @Override
    public PageResult listActivityRank(String startTime,String endTime, Integer serverId,int pageNum,int pageSize) throws ParseException, BizException {
        logger.info("start:" + startTime);
        logger.info("end:" + endTime);
        logger.info("serverId:" + serverId);
        List <ActivityRank> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(startTime, endTime);
        ActivityRankExample example = new ActivityRankExample();
        example.setOrderByClause("record_time");
        ActivityRankExample.Criteria criteria = example.createCriteria();
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (!StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            criteria.andRecordTimeBetween(startTime, endTime);
        }
        if (!StringUtils.isEmpty(startTime) && StringUtils.isEmpty(endTime)) {
            criteria.andRecordTimeEqualTo(startTime);
        }
        if (StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)) {
            criteria.andRecordTimeEqualTo(endTime);
        }
        list = activityRankMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <ActivityRank> page = (Page <ActivityRank>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
