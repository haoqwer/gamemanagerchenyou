package com.chenyou.service.generalservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ChannelCountMapper;
import com.chenyou.pojo.ChannelCount;
import com.chenyou.pojo.ChannelCountExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.generalservice.ChannelCountService;
import com.chenyou.service.ChannelService;
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
public class ChannelCountServiceImpl implements ChannelCountService {

    private static final Logger logger = LoggerFactory.getLogger(ChannelCountServiceImpl.class);

    @Autowired
    private ChannelCountMapper channelCountMapper;

    @Autowired
    private ChannelService channelService;
    
    /*
    *  
    * 渠道统计
    * @author hlx
    * @date 2018\11\27 0027 16:09
    * @param 
    * @return 
    */
    
    @Override
    public PageResult listChannelCount(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws ParseException, BizException {
        logger.info("start" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <ChannelCount> list = new ArrayList <>();
        //1.开启分页
        PageHelper.startPage(pageSize, rows);
        //2.时间交换
        DateUtil.exchangeTime(start,end);
        ChannelCountExample example = new ChannelCountExample();
        //3.将当前时间显示在当前
        example.setOrderByClause("count_time desc");
        ChannelCountExample.Criteria criteria = example.createCriteria();
        //4.查询渠道的数据
        if(null == serverId && null == channelId){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        //5.查询区服的数据
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        //6.查询渠道的数据
        if(null !=channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        //7.根据时间进行相对应的条件查询
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andCountTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andCountTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andCountTimeEqualTo(end);
        }
        //8.查询出所有的数据
        list=channelCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <ChannelCount> page = (Page <ChannelCount>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
