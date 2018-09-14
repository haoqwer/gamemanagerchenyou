package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ChannelSummaryMapper;
import com.chenyou.pojo.ChannelSummary;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ChannelSummaryService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 渠道数据汇总
 */
@Service
@Transactional
public class ChannelSummaryServiceImpl implements ChannelSummaryService {


    @Autowired
    private ChannelSummaryMapper channelSummaryMapper;


    /**
     * 分页展示渠道数据
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public PageResult listChannelSummary(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        List <ChannelSummary> list = channelSummaryMapper.selectByExample(null);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思，当前没有数据!");
        }
        Page <ChannelSummary> page = (Page <ChannelSummary>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
