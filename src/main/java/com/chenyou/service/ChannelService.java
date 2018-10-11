package com.chenyou.service;

import com.chenyou.pojo.Channel;
import com.chenyou.utils.StringUtils;

import java.util.List;

public interface ChannelService {
    /**
     * 展示所有的渠道数据
     *
     * @return
     */
    List <Channel> listChannel();

    String getChannelName(String channelId);

}
