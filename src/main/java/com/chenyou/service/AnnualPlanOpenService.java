package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.AnnualPlanOpen;
import com.chenyou.pojo.entity.PageResult;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-26 22:33
 * @Version: 1.0
 **/
public interface AnnualPlanOpenService {
    int saveAnnualPlanOpen(AnnualPlanOpen annualPlanOpen) throws BizException;
    PageResult findPage(int pageNum,int pageSize);
}
