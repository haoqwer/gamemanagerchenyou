package com.chenyou.service.impl;

import com.chenyou.mapper.ActivePlayerMapper;
import com.chenyou.pojo.ActivePlayer;
import com.chenyou.pojo.ActivePlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivePlayerService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ActivePlayerServiceImpl implements ActivePlayerService {

    @Autowired
    private ActivePlayerMapper activePlayerMapper;

    @Override
    public PageResult listActviePlayer(Integer serverId, Integer channelId, int pageSize, int rows) {
        PageHelper.startPage(pageSize, rows);
        ActivePlayerExample example = new ActivePlayerExample();
        example.setOrderByClause("show_time desc");
        ActivePlayerExample.Criteria criteria = example.createCriteria();
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <ActivePlayer> list = activePlayerMapper.selectByExample(example);
        Page <ActivePlayer> page = (Page <ActivePlayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
