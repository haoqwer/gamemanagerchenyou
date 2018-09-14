package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ChannelCountMapper;
import com.chenyou.pojo.ChannelCount;
import com.chenyou.pojo.ChannelCountExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ChannelCountService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.List;

@Service
@Transactional
public class ChannelCountServiceImpl  implements ChannelCountService {

    private static  final Logger logger=LoggerFactory.getLogger(ChannelCountServiceImpl.class);

    @Autowired
    private ChannelCountMapper channelCountMapper;

    @Override
    public PageResult listChannelCount(String parse, Integer serverId, Integer channelId, int pageSize, int rows) throws ParseException, BizException {
        PageHelper.startPage(pageSize,rows);
        ChannelCountExample example = new ChannelCountExample();
        example.setOrderByClause("count_time desc");
        ChannelCountExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(parse)) {
            criteria.andCountTimeEqualTo(DateUtil.parse(parse));
        }
        if (serverId != null) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (channelId != null) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <ChannelCount> list = channelCountMapper.selectByExample(example);
        if (list.size() == 0 || list.isEmpty()) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <ChannelCount> page = (Page <ChannelCount>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
