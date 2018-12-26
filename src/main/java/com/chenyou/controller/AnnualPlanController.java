package com.chenyou.controller;

import com.alibaba.fastjson.JSON;
import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.AnnualName;
import com.chenyou.pojo.AnnualPlanOpen;
import com.chenyou.pojo.AnnualSchedule;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.AnnualNameService;
import com.chenyou.service.AnnualPlanOpenService;
import com.chenyou.service.AnnualScheduleService;
import org.apache.xmlbeans.impl.regex.REUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-26 19:56
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/annual")
public class AnnualPlanController extends BaseController {


    @Autowired
    private AnnualNameService annualNameService;

    @Autowired
    private AnnualScheduleService annualScheduleService;


    @Autowired
    private AnnualPlanOpenService annualPlanOpenService;

    /*
    *  
    * 展现计划管理
    * @author hlx
    * @date 2018\12\26  21:26
    * @param []
    * @return java.util.List<com.chenyou.pojo.AnnualName>
    */
    @RequestMapping(value = "/listAnnualName", method = RequestMethod.GET)
    public List <AnnualName> listAnnualName() throws BizException {
        return annualNameService.listAnnualName();
    }

    /*
    *
    * 保存计划
    * @author hlx
    * @date 2018\12\26  21:27
    * @param [listAnnualSchedule]
    * @return java.util.Map<java.lang.String,java.lang.Object>
    */
    @RequestMapping(value = "/saveAnnualSchedule", method = RequestMethod.POST)
    public Map <String, Object> saveAnnualSchedule(String listAnnualSchedule) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        List <AnnualSchedule> list = JSON.parseArray(listAnnualSchedule, AnnualSchedule.class);
        for (AnnualSchedule annualSchedule : list) {
            annualSchedule.setCreateBy(getUserName());
        }
        resultMap.put(ApplicationConstants.TAG_DATA, annualScheduleService.saveAnnualSchedule(list));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /*
    *
    * 计划分页列表
    * @author hlx
    * @date 2018\12\26  21:27
    * @param [page, rows]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @RequestMapping(value = "/findPage", method = RequestMethod.GET)
    public PageResult findPage(int page, int rows) throws BizException {
        return annualScheduleService.findPage(page, rows);
    }


    /*
    *
    * 修改计划
    * @author hlx
    * @date 2018\12\26  21:27
    * @param [annualSchedule]
    * @return java.util.Map<java.lang.String,java.lang.Object>
    */
    @RequestMapping(value = "/updateAnnualSchedule", method = RequestMethod.POST)
    public Map <String, Object> updateAnnualSchedule(AnnualSchedule annualSchedule) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, annualScheduleService.updateAnnualSchedule(annualSchedule));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    @RequestMapping(value = "saveAnnualPlanOpen",method = RequestMethod.POST)
    public Map <String, Object>  saveAnnualPlanOpen(AnnualPlanOpen annualPlanOpen) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, annualPlanOpenService.saveAnnualPlanOpen(annualPlanOpen));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    @RequestMapping(value = "findAnnualPlanOpen",method = RequestMethod.GET)
    public PageResult findAnnualPlanOpen(int page, int rows) {
        return annualPlanOpenService.findPage(page, rows);
    }

}
