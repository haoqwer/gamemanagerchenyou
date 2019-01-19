package com.chenyou.service;

import com.chenyou.pojo.OpenPlan;

import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-08 10:29
 * @Version: 1.0
 **/

public interface OpenPlanService {
    List<OpenPlan> getListOpenPlanByAids();

    List<OpenPlan> getListOpenPlan();
}
