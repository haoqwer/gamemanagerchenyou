package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.GangRankMapper;
import com.chenyou.pojo.GangRank;
import com.chenyou.pojo.GangRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.GangRankService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.poi.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class GangRankServiceImpl implements GangRankService {

    @Autowired
    private GangRankMapper gangRankMapper;

    @Override
    public PageResult listGangRank(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        GangRankExample example=new GangRankExample();
        example.setOrderByClause("gang_rank asc");
        GangRankExample.Criteria criteria = example.createCriteria();
        if(serverId ==null &channelId==null){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        if(null !=channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        List <GangRank> list = gangRankMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<GangRank> page=(Page<GangRank>)list;
        return new PageResult(page.getTotal(),page.getResult());

    }
}
