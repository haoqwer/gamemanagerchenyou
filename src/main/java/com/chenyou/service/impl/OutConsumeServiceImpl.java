package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.OutConsumeMapper;
import com.chenyou.pojo.OutConsume;
import com.chenyou.pojo.OutConsumeExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.OutConsumeService;
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
public class OutConsumeServiceImpl implements OutConsumeService {
    @Autowired
    private OutConsumeMapper outConsumeMapper;
    @Override
    public PageResult listOutConsume(String start,String end, Integer serverId, Integer channelId, int pageNum, int pageSize) throws ParseException, BizException {
        PageHelper.startPage(pageNum,pageSize);
        Date startTime = null;
        Date endTime = null;
        Date temp = null;
        OutConsumeExample example=new OutConsumeExample();
        OutConsumeExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            startTime = DateUtil.parse(start);
            endTime = DateUtil.parse(end);
            if (startTime.after(endTime)) {
                //如果前面时间大于后面时间
                temp = endTime;
                endTime = startTime;
                startTime = temp;
                criteria.andRecordTimeBetween(startTime, endTime);
            } else {
                criteria.andRecordTimeBetween(startTime, endTime);
            }
        }
        //如果其中一个为空
        if (!StringUtils.isEmpty(start) & StringUtils.isEmpty(end)) {
            criteria.andRecordTimeEqualTo(DateUtil.parse(start));
        }
        if (StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            criteria.andRecordTimeEqualTo(DateUtil.parse(end));
        }
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
        List<OutConsume> list = outConsumeMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<OutConsume> page=(Page<OutConsume>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
