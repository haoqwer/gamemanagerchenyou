package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.LtvCountMapper;
import com.chenyou.pojo.LtvCount;
import com.chenyou.pojo.LtvCountExample;
import com.chenyou.service.LtvCountService;
import com.chenyou.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LtvCountServiceImpl implements LtvCountService {

    @Autowired
    private LtvCountMapper ltvCountMapper;


    @Override
    public List <LtvCount> listLtvCount(Integer serverId, Integer channelId) throws BizException {
        LtvCountExample example = new LtvCountExample();
        LtvCountExample.Criteria criteria = example.createCriteria();
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
        List <LtvCount> list = ltvCountMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        return list;
    }

    @Override
    public List <LtvCount> listLtvCount() throws BizException {
        List <LtvCount> list = ltvCountMapper.selectByExample(null);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思，当前没有数据!");
        }
        return list;
    }
}
