package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.NotifyActi;
import com.chenyou.pojo.entity.PageResult;

import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-08 10:55
 * @Version: 1.0
 **/
public interface NotifyActiService {
    //展示
    PageResult findPage(int pageNum,int pageSize);
    //修改
    int update(NotifyActi notifyActi) throws BizException;

    List<Integer> getAids();

    NotifyActi getNotifyActiByAid(Integer aid);
}
