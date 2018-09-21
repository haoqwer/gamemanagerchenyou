package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ForceRankMapper;
import com.chenyou.pojo.ForceRank;
import com.chenyou.pojo.ForceRankExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ForceRankService;
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

/**
 * 势力榜
 */
@Service
@Transactional
public class ForceRankServiceImpl implements ForceRankService {

    @Autowired
    private ForceRankMapper forceRankMapper;

    @Override
    public PageResult listGorceRank(String start,String end,Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException, ParseException {
        PageHelper.startPage(pageNum, pageSize);
        Date startTime = null;
        Date endTime = null;
        Date temp = null;
        ForceRankExample example = new ForceRankExample();
        example.setOrderByClause("force_rank asc");
        ForceRankExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            startTime = DateUtil.parse(start);
            endTime = DateUtil.parse(end);
            if (startTime.after(endTime)) {
                //如果前面时间大于后面时间
                temp = endTime;
                endTime = startTime;
                startTime = temp;
                criteria.andShowTimeBetween(startTime, endTime);
            } else {
                criteria.andShowTimeBetween(startTime, endTime);
            }
        }
        //如果其中一个为空
        if (!StringUtils.isEmpty(start) & StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(DateUtil.parse(start));
        }
        if (StringUtils.isEmpty(start) & !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(DateUtil.parse(end));
        }
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
        List <ForceRank> list = forceRankMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<ForceRank> page=( Page<ForceRank> )list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
