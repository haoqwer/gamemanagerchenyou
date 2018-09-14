package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.GangCountMapper;
import com.chenyou.pojo.GangCount;
import com.chenyou.pojo.GangCountExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.GangCountService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 帮派数量
 */
@Service
@Transactional
public class GangCountServiceImpl implements GangCountService {

    @Autowired
    private GangCountMapper gangCountMapper;

    @Override
    public PageResult listGangCount(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        GangCountExample example = new GangCountExample();
        example.setOrderByClause("gang_num asc");
        GangCountExample.Criteria criteria = example.createCriteria();
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <GangCount> list = gangCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <GangCount> page = (Page <GangCount>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
