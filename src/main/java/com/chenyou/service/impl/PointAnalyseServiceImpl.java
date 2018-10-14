package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.PointAnalyseMapper;
import com.chenyou.pojo.PointAnalyse;
import com.chenyou.pojo.PointAnalyseExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.PointAnalyseService;
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
public class PointAnalyseServiceImpl implements PointAnalyseService {

    private static final Logger logger=LoggerFactory.getLogger(PointAnalyseServiceImpl.class);

    @Autowired
    private PointAnalyseMapper pointAnalyseMapper;

    @Override
    public PageResult listPointAnalyse(String start,String end,Integer serverId, String channelId, int pageNum, int pageSize) throws BizException, ParseException {
        logger.info("start:"+start);
        logger.info("end:"+end);
        logger.info("serverId:"+serverId);
        logger.info("channelId:"+channelId);
        Date startTime = null;
        Date endTime = null;
        Date temp = null;
        PageHelper.startPage(pageNum,pageSize);
        PointAnalyseExample example=new PointAnalyseExample();
        example.setOrderByClause("charging_time desc");
        PointAnalyseExample.Criteria criteria = example.createCriteria();
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
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
        if (!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(DateUtil.parse(start));
        }
        if (StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            criteria.andShowTimeEqualTo(DateUtil.parse(end));
        }
        if(serverId ==null && channelId==null){
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
