package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AwayOutPutMapper;
import com.chenyou.pojo.AwayOutPut;
import com.chenyou.pojo.AwayOutPutExample;
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
    private AwayOutPutMapper awayOutPutMapper;

    @Override
    public PageResult listAwayOutputService(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        AwayOutPutExample example = new AwayOutPutExample();
        example.setOrderByClause("count_player desc");
        AwayOutPutExample.Criteria criteria = example.createCriteria();
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <AwayOutPut> list = awayOutPutMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page <AwayOutPut> page = (Page <AwayOutPut>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
