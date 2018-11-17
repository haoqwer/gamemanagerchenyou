package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.ActivitieOpen;
import com.chenyou.pojo.entity.PageResult;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.List;

public interface ActivitieOpenService {
   int addActivitieOpent(List<ActivitieOpen> activiteOpens) throws BizException, URISyntaxException, ParseException, UnsupportedEncodingException;

   int updateActivitieOpent(List<ActivitieOpen> activitieOpens) throws BizException;

   PageResult findPage(int pageSize,int pageNum) throws BizException;

   PageResult findSearch(ActivitieOpen activitieOpen,int pageSize,int pageNum);

}
