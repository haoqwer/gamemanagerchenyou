package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.IncomeClassMapper;
import com.chenyou.pojo.IncomeClass;
import com.chenyou.pojo.IncomeClassExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.InComeClassService;
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
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class InComeClassServiceImpl implements InComeClassService {

    private static  final Logger logger=LoggerFactory.getLogger(InComeClassServiceImpl.class);

    @Autowired
    private IncomeClassMapper incomeClassMapper;

    @Override
    public PageResult listInCome(String start,String end, Integer serverId, String channelId,int pageSize,int rows) throws ParseException, BizException {
        logger.info("start:"+start);
        logger.info("end:"+end);
        logger.info("serverId:"+serverId);
        logger.info("channelId:"+channelId);
        String startTime = null;
        String endTime = null;
        String temp = null;
        PageHelper.startPage(pageSize,rows);
        IncomeClassExample example=new IncomeClassExample();
        example.setOrderByClause("recorde_time desc");
        IncomeClassExample.Criteria criteria = example.createCriteria();
        //时间段选择判断
        if (!StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            startTime = start;
            endTime = end;
            if (DateUtil.parse(startTime).after(DateUtil.parse(endTime))) {
                //如果前面时间大于后面时间
                temp = endTime;
                endTime = startTime;
                startTime = temp;
                criteria.andRecordeTimeBetween(startTime, endTime);
            } else {
                criteria.andRecordeTimeBetween(startTime, endTime);
            }
        }
        //如果其中一个为空
        if (!StringUtils.isEmpty(start) & StringUtils.isEmpty(end)) {
            startTime=start;
            criteria.andRecordeTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            endTime=end;
            criteria.andRecordeTimeEqualTo(endTime);
        }
        if(null ==serverId && null ==channelId){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if(serverId != null){
            criteria.andServerIdEqualTo(serverId);
        }
        if(channelId !=null){
            criteria.andChannelIdEqualTo(channelId);
        }
        List <IncomeClass> list = incomeClassMapper.selectByExample(example);
        if(list.size()==0||list.isEmpty()){
            throw new BizException(BizException.CODE_NO_LONIN,"不好意思,当前没有数据!!");
        }
        Page<IncomeClass> page=(Page<IncomeClass>) list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
