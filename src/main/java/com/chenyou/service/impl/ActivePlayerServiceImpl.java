package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivePlayerMapper;
import com.chenyou.pojo.ActivePlayer;
import com.chenyou.pojo.ActivePlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivePlayerService;
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
public class ActivePlayerServiceImpl implements ActivePlayerService {

    private static final Logger logger = LoggerFactory.getLogger(ActivePlayerServiceImpl.class);

    @Autowired
    private ActivePlayerMapper activePlayerMapper;

    @Override
    public PageResult listActviePlayer(String start,String end,Integer serverId, Integer channelId, int pageSize, int rows) throws BizException, ParseException {
        Date startTime = null;
        Date endTime = null;
        Date temp = null;
        PageHelper.startPage(pageSize, rows);
        ActivePlayerExample example = new ActivePlayerExample();
        example.setOrderByClause("show_time desc");
        ActivePlayerExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            startTime = DateUtil.parse(start);
            endTime = DateUtil.parse(end);
            if (startTime.after(endTime)) {
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
            criteria.andShowTimeEqualTo(DateUtil.parse(start));
        }
        if (StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(DateUtil.parse(end));
        }
        if (serverId == null && channelId == null) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            logger.info("serverId:" + serverId);
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            logger.info("channelId:" + channelId);
            criteria.andChannelIdEqualTo(channelId);
        }
        List <ActivePlayer> list = activePlayerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <ActivePlayer> page = (Page <ActivePlayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
