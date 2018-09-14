package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.OnlineplayerCountMapper;
import com.chenyou.pojo.OnlineplayerCount;
import com.chenyou.pojo.OnlineplayerCountExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.OnlinePlayerCountService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class OnlinePlayerCountServiceImpl implements OnlinePlayerCountService {

    @Autowired
    private OnlineplayerCountMapper onlineplayerCountMapper;

    @Override
    public PageResult listOnlinePlayerCount(String parse, Integer serverId, Integer channelId, int pageNum, int pageSize) throws ParseException, BizException {
        Date date = null;
        PageHelper.startPage(pageNum,pageSize);
        OnlineplayerCountExample example = new OnlineplayerCountExample();
        example.setOrderByClause("record_time desc");
        OnlineplayerCountExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(parse)) {
            criteria.andRecordTimeEqualTo(parse);
        }
        if (serverId != null) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (channelId != null) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <OnlineplayerCount> list = onlineplayerCountMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw  new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page <OnlineplayerCount> page = (Page <OnlineplayerCount>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
