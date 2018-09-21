package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AwayGradeMapper;
import com.chenyou.pojo.AwayGrade;
import com.chenyou.pojo.AwayGradeExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.AwayGradeService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AwayGradeServiceImpl implements AwayGradeService {

    private static  final Logger logger=LoggerFactory.getLogger(AwayGradeServiceImpl.class);
    @Autowired
    private AwayGradeMapper awayGradeMapper;

    @Override
    public PageResult listAwayGradeServiceImpl(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        AwayGradeExample example = new AwayGradeExample();
        AwayGradeExample.Criteria criteria = example.createCriteria();
        example.setOrderByClause("count_player desc");
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <AwayGrade> list = awayGradeMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page <AwayGrade> page = (Page <AwayGrade>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}