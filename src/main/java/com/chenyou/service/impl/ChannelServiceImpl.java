package com.chenyou.service.impl;

import com.chenyou.mapper.ChannelMapper;
import com.chenyou.pojo.Channel;
import com.chenyou.service.ChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ChannelServiceImpl implements ChannelService {

    @Autowired
    private ChannelMapper channelMapper;

    @Override
    public List<Channel> listChannel() {
        return channelMapper.selectByExample(null);
    }
}
