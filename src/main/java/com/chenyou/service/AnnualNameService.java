package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.AnnualName;

import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-26 19:53
 * @Version: 1.0
 **/
public interface AnnualNameService {
    List<AnnualName> listAnnualName() throws BizException;
    String getAnnualPlanName(Integer annualId);
}
