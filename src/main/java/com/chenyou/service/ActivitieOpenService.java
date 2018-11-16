package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.ActivitieOpen;
import com.chenyou.pojo.entity.PageResult;

import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.List;

public interface ActivitieOpenService {
   void addActivitieOpent(List<ActivitieOpen> activiteOpens) throws BizException, URISyntaxException, ParseException;

   PageResult findPage(int pageSize,int pageNum) throws BizException;

   PageResult findSearch(ActivitieOpen activitieOpen,int pageSize,int pageNum);

}
