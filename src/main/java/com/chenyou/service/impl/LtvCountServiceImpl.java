package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.LtvCountMapper;
import com.chenyou.pojo.LtvCount;
import com.chenyou.pojo.LtvCountExample;
import com.chenyou.service.LtvCountService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class LtvCountServiceImpl implements LtvCountService {

    @Autowired
    private LtvCountMapper ltvCountMapper;

    private static final Logger logger=LoggerFactory.getLogger(LtvCountServiceImpl.class);


    @Override
    public List <LtvCount> listLtvCount(String start, String end, Integer serverId, String channelId) throws BizException, ParseException {
        logger.info("start:"+start);
        logger.info("end:"+end);
        logger.info("serverId:"+serverId);
        logger.info("channelId:"+channelId);
        String startTime = null;
        String endTime = null;
        String temp = null;
        LtvCountExample example = new LtvCountExample();
        LtvCountExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            startTime = start;
            endTime = end;
            if (DateUtil.parse(startTime).after(DateUtil.parse(endTime))) {
                //如果前面时间大于后面时间
                temp = endTime;
                endTime = startTime;
                startTime = temp;
                criteria.andRecordeTimeBetween(startTime, endTime);
            } else {
                criteria.andRecordeTimeBetween(startTime, endTime);
            }
        }
        //如果其中一个为空
        if (!StringUtils.isEmpty(start) & StringUtils.isEmpty(end)) {
            startTime=start;
            criteria.andRecordeTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            endTime=end;
            criteria.andRecordeTimeEqualTo(end);
        }
        if (serverId == null & channelId == null) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <LtvCount> list = ltvCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        return list;
    }

    @Override
    public List <LtvCount> listLtvCount() throws BizException {
        List <LtvCount> list = ltvCountMapper.selectByExample(null);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思，当前没有数据!");
        }
        return list;
    }
}
