package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.IncomeClassMapper;
import com.chenyou.pojo.IncomeClass;
import com.chenyou.pojo.IncomeClassExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.InComeClassService;
import com.chenyou.utils.DateUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.List;

@Service
@Transactional
public class InComeClassServiceImpl implements InComeClassService {

    @Autowired
    private IncomeClassMapper incomeClassMapper;

    @Override
    public PageResult listInCome(String parse, Integer serverId, Integer channelId,int pageSize,int rows) throws ParseException, BizException {

        PageHelper.startPage(pageSize,rows);
        IncomeClassExample example=new IncomeClassExample();
        example.setOrderByClause("recorde_time desc");
        IncomeClassExample.Criteria criteria = example.createCriteria();
        if(DateUtil.parse(parse)!=null){
            criteria.andRecordeTimeEqualTo(DateUtil.parse(parse));
        }
        if(serverId != null){
            criteria.andServerIdEqualTo(serverId);
        }
        if(channelId !=null){
            criteria.andChannelIdEqualTo(channelId);
        }
        List <IncomeClass> list = incomeClassMapper.selectByExample(example);
        if(list.size()==0||list.isEmpty()){
            throw new BizException(BizException.CODE_NO_LONIN,"当前数据为空!");
        }
        Page<IncomeClass> page=(Page<IncomeClass>) list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
