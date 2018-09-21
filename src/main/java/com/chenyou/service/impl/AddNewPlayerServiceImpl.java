package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AddNewplayerMapper;
import com.chenyou.pojo.AddNewplayer;
import com.chenyou.pojo.AddNewplayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.AddNewPlayerService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AddNewPlayerServiceImpl implements AddNewPlayerService {

    private static final Logger logger = LoggerFactory.getLogger(AddNewPlayerServiceImpl.class);

    @Autowired
    private AddNewplayerMapper addNewplayerMapper;

    @Override
    public PageResult listAddNewPlayer(Integer serverId, Integer channelId, int pageSize, int rows) throws BizException {
        PageHelper.startPage(pageSize, rows);
        AddNewplayerExample example = new AddNewplayerExample();
        example.setOrderByClause("register_time desc");
        AddNewplayerExample.Criteria criteria = example.createCriteria();
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
        List <AddNewplayer> list = addNewplayerMapper.selectByExample(example);
        if (list.size() == 0 || list.isEmpty()) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <AddNewplayer> page = (Page <AddNewplayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
