package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.TaskMessageMapper;
import com.chenyou.pojo.TaskMessage;
import com.chenyou.pojo.TaskMessageExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.TaskMessageService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TaskMessageServiceImpl implements TaskMessageService {

    @Autowired
    private TaskMessageMapper taskMessageMapper;

    @Override
    public PageResult listTaskMessage(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        TaskMessageExample example=new TaskMessageExample();
        example.setOrderByClause("task_list asc");
        TaskMessageExample.Criteria criteria = example.createCriteria();
        if(serverId ==null &channelId==null){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        if(null !=channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        List <TaskMessage> list = taskMessageMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<TaskMessage> page=(Page<TaskMessage>) list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
