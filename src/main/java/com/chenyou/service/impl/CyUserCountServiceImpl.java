package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.CyUserCountMapper;
import com.chenyou.pojo.CyUserCount;
import com.chenyou.pojo.CyUserCountExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.CyUserCountService;
import com.chenyou.utils.DateUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class CyUserCountServiceImpl  implements CyUserCountService {


    @Autowired
    private CyUserCountMapper userCountMapper;

    /**
     *
     * @param parse 日期
     * @param serverId
     * @param channelId
     * @return
     */
    @Override
    public PageResult listUserCount(String parse, Integer serverId, Integer channelId, int pageSize, int rows) throws ParseException, BizException {
        PageHelper.startPage(pageSize,rows);
        //获取到时间
        Date date = DateUtil.parse(parse);
        CyUserCountExample example=new CyUserCountExample();
        example.setOrderByClause("count_time desc");
        CyUserCountExample.Criteria criteria = example.createCriteria();
        if(date!=null){
            criteria.andCountTimeEqualTo(date);
        }
        if(serverId !=null){
            criteria.andServerIdEqualTo(serverId);
        }
        if(channelId!=null){
            criteria.andChannelIdEqualTo(channelId);
        }

        List <CyUserCount> listuserCount = userCountMapper.selectByExample(example);
        if(listuserCount.size()==0 || listuserCount.isEmpty()){
            throw  new BizException(BizException.CODE_NO_LONIN,"当前数据为空!");
        }
        Page<CyUserCount> page=(Page<CyUserCount>)listuserCount;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
