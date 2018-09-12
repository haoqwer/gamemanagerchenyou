package com.chenyou.service.impl;

import com.chenyou.mapper.LtvCountMapper;
import com.chenyou.pojo.LtvCount;
import com.chenyou.pojo.LtvCountExample;
import com.chenyou.service.LtvCountService;
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
    public List<LtvCount> listLtvCount(Integer serverId, Integer channelId) {
        LtvCountExample example=new LtvCountExample();
        LtvCountExample.Criteria criteria = example.createCriteria();
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        if(null !=channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        List <LtvCount> list = ltvCountMapper.selectByExample(example);
        return list;
    }
}
