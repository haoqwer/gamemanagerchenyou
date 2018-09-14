package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.entity.PageResult;

/**
 * 游戏行为统计-->vip人数
 */
public interface VipCountService {

    PageResult listVipCount(Integer serverId,Integer channelId,int pageNum,int pageSize) throws BizException;

}
