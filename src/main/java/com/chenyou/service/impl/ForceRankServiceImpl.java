package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ForceRankMapper;
import com.chenyou.pojo.ForceRank;
import com.chenyou.pojo.ForceRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ForceRankService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 势力榜
 */
@Service
@Transactional
public class ForceRankServiceImpl implements ForceRankService {

    @Autowired
    private ForceRankMapper forceRankMapper;

    @Override
    public PageResult listGorceRank(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        ForceRankExample example = new ForceRankExample();
        example.setOrderByClause("force_rank asc");
        ForceRankExample.Criteria criteria = example.createCriteria();
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <ForceRank> list = forceRankMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<ForceRank> page=( Page<ForceRank> )list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
