package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ChannelSummaryMapper;
import com.chenyou.pojo.ChannelSummary;
import com.chenyou.pojo.ChannelSummaryExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ChannelSummaryService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.Date;
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
        String startTime = null;
        String endTime = null;
        String temp = null;
        PageHelper.startPage(pageNum, pageSize);
        ChannelSummaryExample example = new ChannelSummaryExample();
        ChannelSummaryExample.Criteria criteria = example.createCriteria();
        if(StringUtils.isEmpty(channelId)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思!您的数据跑到火星了!");
        }
        criteria.andChannelIdEqualTo(channelId);
        if (!StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            startTime = start;
            endTime = end;
            if (DateUtil.parse(startTime).after(DateUtil.parse(endTime))) {
                //如果前面时间大于后面时间
                temp = endTime;
                endTime = startTime;
                startTime = temp;
                criteria.andShowTimeBetween(startTime, endTime);
            } else {
                criteria.andShowTimeBetween(startTime, endTime);
            }
        }
        //如果其中一个为空
        if (!StringUtils.isEmpty(start) & StringUtils.isEmpty(end)) {
            startTime=start;
            criteria.andShowTimeEqualTo(startTime);
        }
        if (StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            endTime=end;
            criteria.andShowTimeEqualTo(endTime);
        }
        List <ChannelSummary> list = channelSummaryMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思，当前没有数据!");
        }
        Page <ChannelSummary> page = (Page <ChannelSummary>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
