package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.LtvCount;

import java.util.List;

public interface LtvCountService {
    List<LtvCount> listLtvCount(Integer serverId, Integer channelId) throws BizException;
}
