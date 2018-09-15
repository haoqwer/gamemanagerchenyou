package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivityRankMapper;
import com.chenyou.pojo.ActivityRank;
import com.chenyou.pojo.ActivityRankExample;
import com.chenyou.pojo.GangRank;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivityRankService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.List;

@Service
@Transactional
public class ActivityRankServiceImpl  implements ActivityRankService {

    @Autowired
    private ActivityRankMapper activityRankMapper;

    @Override
    public PageResult listActivityRank(String parse, Integer serverId,int pageNum,int pageSize) throws ParseException, BizException {
        PageHelper.startPage(pageNum,pageSize);
        ActivityRankExample example=new ActivityRankExample();
        example.setOrderByClause("record_time");
        ActivityRankExample.Criteria criteria = example.createCriteria();
        if(! StringUtils.isEmpty(parse)){
            criteria.andRecordTimeEqualTo(DateUtil.parse(parse));
        }
        if(null !=serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        List<ActivityRank> list = activityRankMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<ActivityRank> page=(Page<ActivityRank>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
