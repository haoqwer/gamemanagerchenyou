package com.chenyou.service.gamecountservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.OutConsumeMapper;
import com.chenyou.pojo.OutConsume;
import com.chenyou.pojo.OutConsumeExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gamecountservice.OutConsumeService;
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
public class OutConsumeServiceImpl implements OutConsumeService {

    private static final Logger logger=LoggerFactory.getLogger(OutConsumeServiceImpl.class);

    @Autowired
    private OutConsumeMapper outConsumeMapper;
    @Override
    public PageResult listOutConsume(String start,String end, Integer serverId, String channelId, int pageNum, int pageSize) throws ParseException, BizException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <OutConsume> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(start, end);
        OutConsumeExample example = new OutConsumeExample();
        OutConsumeExample.Criteria criteria = example.createCriteria();
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
            criteria.andRecordTimeBetween(start, end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andRecordTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andRecordTimeEqualTo(end);
        }
        list = outConsumeMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <OutConsume> page = (Page <OutConsume>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
