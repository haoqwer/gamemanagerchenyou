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
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class ActivePlayerServiceImpl implements ActivePlayerService {

    private static final Logger logger = LoggerFactory.getLogger(ActivePlayerServiceImpl.class);

    @Autowired
    private ActivePlayerMapper activePlayerMapper;

    @Override
    public PageResult listActviePlayer(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        PageHelper.startPage(pageSize, rows);
        String temp = null;
        List <ActivePlayer> list = new ArrayList <>();
//抽取出来共同的
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
            }
        }
        ActivePlayerExample example=new ActivePlayerExample();
        example.setOrderByClause("show_time desc");
        ActivePlayerExample.Criteria criteria = example.createCriteria();
        if(serverId ==null && channelId ==null){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if(serverId !=null){
            criteria.andServerIdEqualTo(serverId);
        }
        if(channelId !=null){
            criteria.andChannelIdEqualTo(channelId);
        }
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
           criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        list=activePlayerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <ActivePlayer> page = (Page <ActivePlayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
//        if (serverId == null && channelId == null) {
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = activePlayerMapper.queryActivePlayerByTimeTo(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = activePlayerMapper.queryActivePlayerByTime(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                list = activePlayerMapper.queryActivePlayerByTime(end);
//            }
//            if (StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                list = activePlayerMapper.queryActivePlayerAll();
//            }
//        } else {
//            ActivePlayerExample example = new ActivePlayerExample();
//            example.setOrderByClause("show_time desc");
//            ActivePlayerExample.Criteria criteria = example.createCriteria();
//            if (serverId != null) {
//                criteria.andServerIdEqualTo(serverId);
//            }
//            if (channelId != null) {
//                criteria.andChannelIdEqualTo(channelId);
//            }
//            if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andShowTimeBetween(start, end);
//            }
//            if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
//                criteria.andShowTimeEqualTo(start);
//            }
//            if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
//                criteria.andShowTimeEqualTo(end);
//            }
//            list = activePlayerMapper.selectByExample(example);
//        }
//        if (StringUtils.isEmpty(list)) {
//            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
//        }
//        Page <ActivePlayer> page = (Page <ActivePlayer>) list;
//        return new PageResult(page.getTotal(), page.getResult());
    }
}
