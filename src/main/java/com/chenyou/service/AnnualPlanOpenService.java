package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.AnnualPlanOpen;
import com.chenyou.pojo.entity.PageResult;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-26 22:33
 * @Version: 1.0
 **/
public interface AnnualPlanOpenService {
    int saveAnnualPlanOpen(AnnualPlanOpen annualPlanOpen) throws BizException, ParseException, URISyntaxException, UnsupportedEncodingException;
    PageResult findPage(int pageNum,int pageSize);

    //每天晚上0时0分01秒开启
    void openActivity() throws URISyntaxException, UnsupportedEncodingException;
}
