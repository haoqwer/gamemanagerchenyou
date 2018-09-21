package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.LoginDayMapper;
import com.chenyou.pojo.LoginDay;
import com.chenyou.pojo.LoginDayExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.LoginDayService;
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

@Service
@Transactional
public class LoginDayServiceImpl implements LoginDayService {

    @Autowired
    private LoginDayMapper loginDayMapper;

    @Override
    public PageResult listLoginDay(String start, String end, Integer serverId, Integer channelId, int pageNum, int pageSize) throws BizException, ParseException {
        Date startTime = null;
        Date endTime = null;
        Date temp = null;
        PageHelper.startPage(pageNum, pageSize);
        LoginDayExample example = new LoginDayExample();
        example.setOrderByClause("count_num");
        LoginDayExample.Criteria criteria = example.createCriteria();
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
        //进行条件选择
        if (serverId == null & channelId == null) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <LoginDay> list = loginDayMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <LoginDay> page = (Page <LoginDay>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }
}
