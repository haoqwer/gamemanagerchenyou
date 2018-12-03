package com.chenyou.service.newplayerservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AwayGradeMapper;
import com.chenyou.pojo.AwayGrade;
import com.chenyou.pojo.AwayGradeExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.newplayerservice.AwayGradeService;
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
public class AwayGradeServiceImpl implements AwayGradeService {

    private static  final Logger logger=LoggerFactory.getLogger(AwayGradeServiceImpl.class);
    @Autowired
    private AwayGradeMapper awayGradeMapper;

    /*
    *
    * 流失等级查询
    * @author hlx
    * @date 2018\11\27 0027 18:16
    * @param [start, end, serverId, channelId, pageNum, pageSize]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult listAwayGradeServiceImpl(String start,String end,Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("start"+start);
        logger.info("end:"+end);
        logger.info("serverId:"+serverId);
        PageHelper.startPage(pageNum, pageSize);
        List <AwayGrade> list = new ArrayList<AwayGrade>();
        DateUtil.exchangeTime(start,end);
        AwayGradeExample example=new AwayGradeExample();
        example.setOrderByClause("show_time desc");
        AwayGradeExample.Criteria criteria = example.createCriteria();
        if(null == serverId && null == channelId){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if(null != serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        if(null != channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeBetween(start,end);
        }
        if (!StringUtils.isEmpty(start) &&  StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(start);
        }
        if (StringUtils.isEmpty(start) &&  !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(end);
        }
        list=awayGradeMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <AwayGrade> page = (Page <AwayGrade>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
