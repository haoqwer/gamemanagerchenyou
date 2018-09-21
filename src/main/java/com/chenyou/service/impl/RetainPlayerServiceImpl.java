package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.RetainPlayerMapper;
import com.chenyou.pojo.RetainPlayer;
import com.chenyou.pojo.RetainPlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.RetainPlayerService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RetainPlayerServiceImpl implements RetainPlayerService {

    @Autowired
    private RetainPlayerMapper retainPlayerMapper;

    @Override
    public PageResult listRetainPlayer(Integer serverId, Integer channelId, int pageSize, int rows) throws BizException {
        PageHelper.startPage(pageSize, rows);
        RetainPlayerExample example = new RetainPlayerExample();
        RetainPlayerExample.Criteria criteria = example.createCriteria();
        example.setOrderByClause("show_time desc");
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
        List <RetainPlayer> list = retainPlayerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <RetainPlayer> page = (Page <RetainPlayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
