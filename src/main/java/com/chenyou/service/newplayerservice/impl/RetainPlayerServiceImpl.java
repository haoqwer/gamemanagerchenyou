package com.chenyou.service.newplayerservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.RetainPlayerMapper;
import com.chenyou.pojo.RetainPlayer;
import com.chenyou.pojo.RetainPlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.newplayerservice.RetainPlayerService;
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
public class RetainPlayerServiceImpl implements RetainPlayerService {

    private static final Logger logger = LoggerFactory.getLogger(RetainPlayerServiceImpl.class);

    @Autowired
    private RetainPlayerMapper retainPlayerMapper;


    @Override
    public PageResult listRetainPlayer(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        //1.进行分页
        PageHelper.startPage(pageSize, rows);
        List <RetainPlayer> list = new ArrayList <>();
        //2.进行时间交换
        DateUtil.exchangeTime(start,end);
        RetainPlayerExample example=new RetainPlayerExample();
        //3.尽心时间排序
        example.setOrderByClause("show_time desc");
        RetainPlayerExample.Criteria criteria = example.createCriteria();
        //4.查询所有渠道和区服
        if(null == serverId && null ==channelId){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        //5.查询区服
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        //6.查询渠道
        if(null !=channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        //7.进行时间查询
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        //8.获取到查询结果
        list=retainPlayerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <RetainPlayer> page = (Page <RetainPlayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
