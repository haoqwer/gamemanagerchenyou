package com.chenyou.service.newplayerservice.impl;

import com.chenyou.base.BizException;

import com.chenyou.mapper.AwayPlayerMapper;
import com.chenyou.pojo.AwayPlayer;
import com.chenyou.pojo.AwayPlayerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.newplayerservice.AwayPlayerService;
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
public class AwayPlayerServiceImpl implements AwayPlayerService {

    private static  final Logger logger=LoggerFactory.getLogger(AwayPlayerServiceImpl.class);

    @Autowired
    private AwayPlayerMapper awayPlayerMapper;

    /*
    *  玩家流失查询
    *
    * @author hlx
    * @date 2018\11\27 0027 18:08
    * @param [start, end, serverId, channelId, pageSize, rows]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult listAwayPlayer(String start,String end,Integer serverId, String channelId, int pageSize, int rows) throws BizException, ParseException {
        logger.info("start:"+start);
        logger.info("end:"+end);
        logger.info("serverId:"+serverId);
        logger.info("channelId:"+channelId);
        List<AwayPlayer> list=new ArrayList <>();
        //1.进行分页
        PageHelper.startPage(pageSize,rows);
        //2.进行时间交换
        DateUtil.exchangeTime(start,end);
        AwayPlayerExample example=new AwayPlayerExample();
        //3.进行时间倒叙
        example.setOrderByClause("record_time desc");
        AwayPlayerExample.Criteria criteria = example.createCriteria();
        //4.查出渠道和区服的总和
        if(null == serverId && null == channelId){
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        //5.查询出区服
        if(null != serverId){
            criteria.andServerIdEqualTo(serverId);
        }
        //6.查询出渠道
        if(null != channelId){
            criteria.andChannelIdEqualTo(channelId);
        }
        //7.根据时间查询
        if(!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)){
            criteria.andRecordTimeBetween(start,end);
        }
        if(!StringUtils.isEmpty(start) && StringUtils.isEmpty(end)){
            criteria.andRecordTimeEqualTo(start);
        }
        if(StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)){
            criteria.andRecordTimeEqualTo(end);
        }
        //8.查询出所有结果
        list=awayPlayerMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_RESULT_NULL,"不好意思,当前没有数据!");
        }
        Page<AwayPlayer> page=(Page<AwayPlayer>)list;
        return new PageResult(page.getTotal(),page.getResult());

    }
}
