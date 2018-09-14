package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.IntimacyRankMapper;
import com.chenyou.pojo.IntimacyRank;
import com.chenyou.pojo.IntimacyRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.IntimacyRankService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class IntimacyRankServiceImpl implements IntimacyRankService {

    @Autowired
    private IntimacyRankMapper intimacyRankMapper;

    @Override
    public PageResult listIntimacyRank(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        IntimacyRankExample example = new IntimacyRankExample();
        example.setOrderByClause("intimate_rank asc");
        IntimacyRankExample.Criteria criteria = example.createCriteria();
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <IntimacyRank> list = intimacyRankMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <IntimacyRank> page = (Page <IntimacyRank>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
