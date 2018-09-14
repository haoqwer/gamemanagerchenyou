package com.chenyou.service.impl;

import com.chenyou.mapper.ActivityRankMapper;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivityRankService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ActivityRankServiceImpl  implements ActivityRankService {

    @Autowired
    private ActivityRankMapper activityRankMapper;

    @Override
    public PageResult listActivityRank(String parse, Integer serverId,int pageNum,int pageSize) {
        PageHelper.startPage(pageNum,pageSize);

        return null;
    }
}
