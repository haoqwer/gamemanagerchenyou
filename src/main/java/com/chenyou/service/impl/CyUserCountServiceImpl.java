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
import java.util.Date;
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
    public PageResult listUserCount(String start, String end, Integer serverId, Integer channelId, int pageSize, int rows) throws ParseException, BizException {
        PageHelper.startPage(pageSize, rows);
        Date startTime = null;
        Date endTime = null;
        Date temp = null;
        CyUserCountExample example = new CyUserCountExample();
        example.setOrderByClause("count_time desc");
        CyUserCountExample.Criteria criteria = example.createCriteria();
        //如果输入的两个时间都不为空
        if (!StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            startTime = DateUtil.parse(start);
            endTime = DateUtil.parse(end);
            if (startTime.after(endTime)) {
                //如果前面时间大于后面时间
                temp = endTime;
                endTime = startTime;
                startTime = temp;
                criteria.andCountTimeBetween(startTime, endTime);
            } else {
                criteria.andCountTimeBetween(startTime, endTime);
            }
        }
        //如果其中一个为空
        if (!StringUtils.isEmpty(start) & StringUtils.isEmpty(end)) {
            criteria.andCountTimeEqualTo(DateUtil.parse(start));
        }
        if (StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            criteria.andCountTimeEqualTo(DateUtil.parse(end));
        }
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
        List <CyUserCount> list = userCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
        }
        Page <CyUserCount> page = (Page <CyUserCount>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
