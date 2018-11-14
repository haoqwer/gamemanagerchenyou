package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.CyUserCountMapper;
import com.chenyou.pojo.CyUserCount;
import com.chenyou.pojo.CyUserCountExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.CyUserCountService;
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
public class CyUserCountServiceImpl implements CyUserCountService {

    private static final Logger logger = LoggerFactory.getLogger(CyUserCountServiceImpl.class);

    @Autowired
    private CyUserCountMapper userCountMapper;

    /**
     * @param
     * @param serverId
     * @param channelId
     * @return
     */

    @Override
    public PageResult listUserCount(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws ParseException, BizException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        PageHelper.startPage(pageSize, rows);
        String temp = null;
        List <CyUserCount> list = new ArrayList <>();
        //抽取出来共同的
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
            }
        }
        CyUserCountExample example = new CyUserCountExample();
        example.setOrderByClause("count_time desc");
        CyUserCountExample.Criteria criteria = example.createCriteria();

        if (null == serverId && null == channelId) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        //判断时间
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andCountTimeBetween(start, end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andCountTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andCountTimeEqualTo(end);
        }
        list = userCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
        }
        Page <CyUserCount> page = (Page <CyUserCount>) list;
        return new PageResult(page.getTotal(), page.getResult());
//        if (null == serverId && null == channelId) {
//            //如果都为空则查的为统计的
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                //如果时间
//                list = userCountMapper.queryUserCountCount(start, end);
//            }
//            if (StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = userCountMapper.queryUserCountAll();
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = userCountMapper.queryUserCountByTime(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = userCountMapper.queryUserCountByTime(end);
//            }
//
//        } else {
//            CyUserCountExample example = new CyUserCountExample();
//            example.setOrderByClause("count_time desc");
//            CyUserCountExample.Criteria criteria = example.createCriteria();
//            if (null != serverId) {
//                criteria.andServerIdEqualTo(serverId);
//            }
//            if (null != channelId) {
//                criteria.andChannelIdEqualTo(channelId);
//            }
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                //如果时间
//                criteria.andCountTimeBetween(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                criteria.andCountTimeEqualTo(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andCountTimeEqualTo(end);
//            }
//            list = userCountMapper.selectByExample(example);
//        }
//        if (StringUtils.isEmpty(list)) {
//            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
//        }
//        Page <CyUserCount> page = (Page <CyUserCount>) list;
//        return new PageResult(page.getTotal(), page.getResult());
    }
}
