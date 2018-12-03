package com.chenyou.service.gamecountservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.TaskMessageMapper;
import com.chenyou.pojo.TaskMessage;
import com.chenyou.pojo.TaskMessageExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gamecountservice.TaskMessageService;
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
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class TaskMessageServiceImpl implements TaskMessageService {

    private static final Logger logger = LoggerFactory.getLogger(TaskMessageServiceImpl.class);

    @Autowired
    private TaskMessageMapper taskMessageMapper;

    @Override
    public PageResult listTaskMessage(String start, String end, Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("start:" + start);
        logger.info("end:" + end);
        logger.info("serverId:" + serverId);
        logger.info("channelId:" + channelId);
        List <TaskMessage> list = new ArrayList <>();
        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(start, end);
        TaskMessageExample example = new TaskMessageExample();
        example.setOrderByClause("task_list asc");
        TaskMessageExample.Criteria criteria = example.createCriteria();
        //如果其中一个为空
        if (serverId == null && channelId == null) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start, end);
        }
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        list = taskMessageMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <TaskMessage> page = (Page <TaskMessage>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
