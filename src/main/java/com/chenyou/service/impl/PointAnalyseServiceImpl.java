package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.PointAnalyseMapper;
import com.chenyou.pojo.PointAnalyse;
import com.chenyou.pojo.PointAnalyseExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.PointAnalyseService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PointAnalyseServiceImpl implements PointAnalyseService {

    @Autowired
    private PointAnalyseMapper pointAnalyseMapper;

    @Override
    public PageResult listPointAnalyse(Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        PointAnalyseExample example=new PointAnalyseExample();
        example.setOrderByClause("charging_time desc");
        PointAnalyseExample.Criteria criteria = example.createCriteria();
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
        List <PointAnalyse> list = pointAnalyseMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<PointAnalyse> page=(Page<PointAnalyse>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
