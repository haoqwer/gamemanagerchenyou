package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.LevelRankMapper;
import com.chenyou.pojo.LevelRank;
import com.chenyou.pojo.LevelRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.LevelRankService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 关卡榜
 */
@Service
@Transactional
public class LevelRankServiceImpl  implements LevelRankService {

    @Autowired
    private LevelRankMapper levelRankMapper;

    @Override
    public PageResult listLevelRank(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        LevelRankExample example=new LevelRankExample();
        example.setOrderByClause("force_value asc");
        LevelRankExample.Criteria criteria = example.createCriteria();
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
        List <LevelRank> list = levelRankMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<LevelRank> page=(Page<LevelRank>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
