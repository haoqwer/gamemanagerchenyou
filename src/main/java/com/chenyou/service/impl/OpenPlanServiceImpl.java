package com.chenyou.service.impl;

import com.chenyou.mapper.OpenPlanMapper;
import com.chenyou.pojo.OpenPlan;
import com.chenyou.pojo.OpenPlanExample;
import com.chenyou.service.NotifyActiService;
import com.chenyou.service.OpenPlanService;
import com.chenyou.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-08 10:30
 * @Version: 1.0
 **/
@Service
@Transactional
public class OpenPlanServiceImpl implements OpenPlanService {

    @Autowired
    private OpenPlanMapper openPlanMapper;

    @Autowired
    private NotifyActiService notifyActiService;

    @Override
    public List<OpenPlan> getListOpenPlanByAids() {
        //获取到公告模板中的活动id
        OpenPlanExample example=new OpenPlanExample();
        //获取到所有公告模板的ids
        List <Integer> aids = notifyActiService.getAids();
        System.out.println(aids);
        OpenPlanExample.Criteria criteria = example.createCriteria();
        if(!StringUtils.isEmpty(aids)){
            criteria.andAidIn(aids);
        }
        List <OpenPlan> list = openPlanMapper.selectByExample(example);
        return list;
    }

    @Override
    public List <OpenPlan> getListOpenPlan() {
        List <OpenPlan> list = openPlanMapper.selectByExample(null);
        return list;
    }
}
