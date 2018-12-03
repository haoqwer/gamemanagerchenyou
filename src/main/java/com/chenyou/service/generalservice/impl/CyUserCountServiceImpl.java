package com.chenyou.service.generalservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.CyUserCountMapper;
import com.chenyou.pojo.CyUserCount;
import com.chenyou.pojo.CyUserCountExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.generalservice.CyUserCountService;
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

    
    /*
    *  
    * 日报下的用户类查询
    * @author hlx
    * @date 2018\11\27 0027 15:56
    * @param [start, end, serverId, channelId, pageSize, rows]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult listUserCount(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws ParseException, BizException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        //1.开启分页
        PageHelper.startPage(pageSize, rows);
        List <CyUserCount> list = new ArrayList <>();
        //2.进行时间交换，如果开始时间大于结束时间，则进行交换
        DateUtil.exchangeTime(start,end);
        CyUserCountExample example = new CyUserCountExample();
        //3.查询出日期进行倒序
        example.setOrderByClause("count_time desc");
        CyUserCountExample.Criteria criteria = example.createCriteria();
        //4.进行条件查询判断,serverId&&channelId都为null表示查询的是总和
        if (null == serverId && null == channelId) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        //5.查询区服
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        //6.查询渠道
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        //7.对时间进行判断并进行查询
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
    }
}
