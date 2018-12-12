package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.Activity;
import com.chenyou.pojo.entity.PageResult;

/**
 * @ProjectName: chenyoumanager
 * @Package: com.chenyou.service
 * @ClassName: ActivityService
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-11 19:16
 * @Version: 1.0
 **/
public interface ActivityService {
    Activity getActivity(Activity activity);
    PageResult findPage(int pageNum,int pageSize) throws BizException;

}
