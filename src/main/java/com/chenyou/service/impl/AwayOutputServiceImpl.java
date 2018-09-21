package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AwayOutputMapper;
import com.chenyou.pojo.AwayOutput;
import com.chenyou.pojo.AwayOutputExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.AwayOutputService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AwayOutputServiceImpl implements AwayOutputService {


    @Autowired
    private AwayOutputMapper awayOutputMapper;

    @Override
    public PageResult listAwayOutput(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        AwayOutputExample example = new AwayOutputExample();
        example.setOrderByClause("count_player asc");
        AwayOutputExample.Criteria criteria = example.createCriteria();
        if (serverId == null & channelId == null) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <AwayOutput> list = awayOutputMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <AwayOutput> page = (Page <AwayOutput>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
