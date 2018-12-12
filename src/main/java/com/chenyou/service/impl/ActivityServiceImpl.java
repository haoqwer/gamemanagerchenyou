package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivityMapper;
import com.chenyou.pojo.Activity;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivityService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @ProjectName: chenyoumanager
 * @Package: com.chenyou.service.impl
 * @ClassName: ActivityServiceImpl
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-11 19:17
 * @Version: 1.0
 **/
@Service
@Transactional
public class ActivityServiceImpl implements ActivityService {


    @Autowired
    private ActivityMapper activityMapper;
    
    /*
    *  
    * 根据参数获取到Activity
    * @author hlx
    * @date 2018\12\11 0011 19:29
    * @param [activity]
    * @return com.chenyou.pojo.Activity
    */
    @Override
    public Activity getActivity(Activity activity) {
        return activityMapper.getActivity(activity);
    }

    @Override
    public PageResult findPage(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        List <Activity> list = activityMapper.selectByExample(null);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思,当前没有展示的数据!");
        }
        Page<Activity> page=(Page<Activity> )list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
