package com.chenyou.service.newplayerservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivePlayerMapper;
import com.chenyou.pojo.ActivePlayer;
import com.chenyou.pojo.ActivePlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.newplayerservice.ActivePlayerService;
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
public class ActivePlayerServiceImpl implements ActivePlayerService {

    private static final Logger logger = LoggerFactory.getLogger(ActivePlayerServiceImpl.class);

    @Autowired
    private ActivePlayerMapper activePlayerMapper;

    @Override
    public PageResult listActviePlayer(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        //1.进行分页
        PageHelper.startPage(pageSize, rows);
        List <ActivePlayer> list = new ArrayList <>();
        //2.进行时间交换
        DateUtil.exchangeTime(start,end);
        ActivePlayerExample example=new ActivePlayerExample();
        //3.进行排序
        example.setOrderByClause("show_time desc");
        ActivePlayerExample.Criteria criteria = example.createCriteria();
        //4.查询所有的渠道和区服
        if(serverId ==null && channelId ==null){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        //5.查询区服
        if(serverId !=null){
            criteria.andServerIdEqualTo(serverId);
        }
        //6.查询渠道
        if(channelId !=null){
            criteria.andChannelIdEqualTo(channelId);
        }
        //7.根据时间进行查询
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
           criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        //8.查出所有的活跃用户
        list=activePlayerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <ActivePlayer> page = (Page <ActivePlayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
