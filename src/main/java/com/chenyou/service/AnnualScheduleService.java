package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.AnnualSchedule;
import com.chenyou.pojo.entity.PageResult;

import java.util.List;

/**
 * @Description:
 * 年度计划
 * @Author: hlx
 * @CreateDate: 2018-12-26 20:00
 * @Version: 1.0
 **/
public interface AnnualScheduleService {
    int saveAnnualSchedule(List<AnnualSchedule> list) throws BizException;
    PageResult findPage(int pageNum,int pageSize) throws BizException;
    int updateAnnualSchedule(AnnualSchedule annualSchedule) throws BizException;

    List<AnnualSchedule> listAnnualScheduleByAnnualId(Integer annualId);
}
