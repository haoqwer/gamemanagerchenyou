package com.chenyou.service.impl;

import com.chenyou.base.BizException;

import com.chenyou.mapper.AwayPlayerMapper;
import com.chenyou.pojo.AwayPlayer;
import com.chenyou.pojo.AwayPlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.AwayPlayerService;
import com.chenyou.utils.StringUtils;
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
public class AwayPlayerServiceImpl implements AwayPlayerService {

    private static  final Logger logger=LoggerFactory.getLogger(AwayPlayerServiceImpl.class);

    @Autowired
    private AwayPlayerMapper awayPlayerMapper;

    @Override
    public PageResult listAwayPlayer(Integer serverId, Integer channelId, int pageSize, int rows) throws BizException {
        PageHelper.startPage(pageSize,rows);
        AwayPlayerExample example=new AwayPlayerExample();
        example.setOrderByClause("record_time desc");
        AwayPlayerExample.Criteria criteria = example.createCriteria();
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
        List <AwayPlayer> list = awayPlayerMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<AwayPlayer> page=(Page<AwayPlayer>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
