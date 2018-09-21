package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.GangGradeMapper;
import com.chenyou.pojo.GangGrade;
import com.chenyou.pojo.GangGradeExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.GangGradeService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 帮派等级
 */
@Service
@Transactional
public class GangGradeServiceImpl implements GangGradeService {

    @Autowired
    private GangGradeMapper gangGradeMapper;

    @Override
    public PageResult listGangGrade(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        GangGradeExample example = new GangGradeExample();
        example.setOrderByClause("gong_grade asc");
        GangGradeExample.Criteria criteria = example.createCriteria();
        if(serverId ==null &channelId==null){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <GangGrade> list = gangGradeMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <GangGrade> page = (Page <GangGrade>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
