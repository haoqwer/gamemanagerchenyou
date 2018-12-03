package com.chenyou.service.channeldata.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ChannelSummaryMapper;
import com.chenyou.pojo.ChannelSummary;
import com.chenyou.pojo.ChannelSummaryExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.channeldata.ChannelSummaryService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

/**
 * 渠道数据汇总
 */
@Service
@Transactional
public class ChannelSummaryServiceImpl implements ChannelSummaryService {


    @Autowired
    private ChannelSummaryMapper channelSummaryMapper;



    /**
     * 分页展示渠道数据
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult listChannelSummary(String start, String end, int pageNum, int pageSize,String channelId) throws BizException, ParseException {
        List <ChannelSummary> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(start, end);
        ChannelSummaryExample example = new ChannelSummaryExample();
        ChannelSummaryExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(channelId)) {
            criteria.andChannelIdEqualTo(channelId);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start, end);
        }
        //如果其中一个为空
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        list = channelSummaryMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思，当前没有数据!");
        }
        Page <ChannelSummary> page = (Page <ChannelSummary>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }


    @Override
    public List <ChannelSummary> listChannelSummary(String start, String end, String channelId) throws ParseException, BizException {
        DateUtil.exchangeTime(start,end);
        List <ChannelSummary> list = new ArrayList <>();
        ChannelSummaryExample example=new ChannelSummaryExample();
        example.setOrderByClause("show_time desc");
        ChannelSummaryExample.Criteria criteria = example.createCriteria();
        if( ! StringUtils.isEmpty(channelId)){
            criteria.andChannelIdEqualTo(channelId);
        }
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start, end);
        }
        if(! StringUtils.isEmpty(start) && StringUtils.isEmpty(end)){
            criteria.andShowTimeEqualTo(start);
        }
        if(StringUtils.isEmpty(start) && ! StringUtils.isEmpty(end)){
            criteria.andShowTimeEqualTo(end);
        }
       list= channelSummaryMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思,当前没有数据!");
        }
        return list;
    }

    @Override
    public List <ChannelSummary> listChannelSummaryByChannelId(String channelId) throws BizException {
        List <ChannelSummary> list = new ArrayList <>();
        ChannelSummaryExample example = new ChannelSummaryExample();
        ChannelSummaryExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(channelId)) {
            criteria.andChannelIdEqualTo(channelId);
            list = channelSummaryMapper.selectByExample(example);
        } else {
            list = channelSummaryMapper.selectByExample(null);
        }
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思!当前没有数据!");
        }
        return list;
    }
}
