package com.chenyou.controller;

import com.alibaba.fastjson.JSON;
import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.ActivitieOpen;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivitieOpenService;
import com.chenyou.service.SealNumberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 活动开启
 */
@RestController
@RequestMapping("/activitie")
public class ActivitieOpentController  extends BaseController{

    @Autowired
    private ActivitieOpenService activitieOpenService;

    @Autowired
    private SealNumberService sealNumberService;

    /**
     * 批量插入活动并开启活动
     * @param activitieOpenList
     * @return
     * @throws BizException
     * @throws URISyntaxException
     * @throws ParseException
     */
    @RequestMapping(value = "/open",method = RequestMethod.POST)
    public Map<String,Object> open(String activitieOpenList) throws BizException, URISyntaxException, ParseException, UnsupportedEncodingException {
        Map<String,Object> resultMaP=new HashMap<>();
        List<ActivitieOpen> list = JSON.parseArray(activitieOpenList, ActivitieOpen.class);
        resultMaP.put(ApplicationConstants.TAG_DATA,activitieOpenService.addActivitieOpent(list));
        return  resultMaP;
    }


    /**
     * 批量修改活动
     */


    /**
     * 显示所有
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/findPage",method = RequestMethod.GET)
    public PageResult findPage(int page, int rows) throws BizException {
        return activitieOpenService.findPage(page, rows);
    }

    /**
     * 条件查询
     * @param activitieOpen
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "/findSearch",method = RequestMethod.POST)
    public PageResult findSearch(ActivitieOpen activitieOpen, int page, int rows) {
        return activitieOpenService.findSearch(activitieOpen, page, rows);
    }

    /**
     * 封号
     * @param uIds
     * @return
     * @throws UnsupportedEncodingException
     * @throws BizException
     * @throws URISyntaxException
     */
    @RequestMapping(value ="closeNumber", method = RequestMethod.GET)
    public Map <String, Object> closeNumber(String uIds) throws UnsupportedEncodingException, BizException, URISyntaxException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, sealNumberService.addSealNumber(uIds));
        return resultMap;
    }

    /**
     * 解封
     * @param uIds
     * @return
     * @throws BizException
     * @throws UnsupportedEncodingException
     * @throws URISyntaxException
     */
    @RequestMapping(value ="openNumber",method = RequestMethod.GET)
    public  Map<String,Object> openNumber(String uIds) throws BizException, UnsupportedEncodingException, URISyntaxException {
        Map<String,Object>  resultMap=new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA,sealNumberService.updateSealNumber(uIds));
        return  resultMap;
    }


}
