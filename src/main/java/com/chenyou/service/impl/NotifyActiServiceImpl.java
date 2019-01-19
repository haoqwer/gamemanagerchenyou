package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.NotifyActiMapper;
import com.chenyou.pojo.NotifyActi;
import com.chenyou.pojo.NotifyActiExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.NotifyActiService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-08 11:05
 * @Version: 1.0
 **/
@Service
@Transactional
public class NotifyActiServiceImpl implements NotifyActiService {

    @Autowired
    private NotifyActiMapper notifyActiMapper;

    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List <NotifyActi> list = notifyActiMapper.selectByExample(null);
        Page <NotifyActi> page = (Page <NotifyActi>) list;
        return new PageResult(page.getTotal(),page.getResult());
    }

    @Override
    public int update(NotifyActi notifyActi) throws BizException {
        if (null == notifyActi.getAid()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入修改的活动ID");
        }
        int sum = notifyActiMapper.updateByPrimaryKeySelective(notifyActi);
        return sum;
    }

    @Override
    public List <Integer> getAids() {
        List <Integer> aids = new ArrayList <>();
        List <NotifyActi> list = notifyActiMapper.selectByExample(null);
        for (NotifyActi notifyActi : list) {
            aids.add(notifyActi.getAid());
        }
        if (StringUtils.isEmpty(aids)) {
            return null;
        }
        return aids;
    }

    @Override
    public NotifyActi getNotifyActiByAid(Integer aid) {
        NotifyActiExample example=new NotifyActiExample();
        NotifyActiExample.Criteria criteria = example.createCriteria();
        criteria.andAidEqualTo(aid);
        List <NotifyActi> list = notifyActiMapper.selectByExample(example);
        return list.get(0);
    }
}
