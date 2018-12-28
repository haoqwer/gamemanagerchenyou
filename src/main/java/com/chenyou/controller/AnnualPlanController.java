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
import com.chenyou.service.TemplateNameService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.ExcelUtil;
import com.chenyou.utils.FileUtils;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.xmlbeans.impl.regex.REUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.*;

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


    @Autowired
    private TemplateNameService templateNameService;

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

    /*
    *
    * 删除计划
    * @author hlx
    * @date 2018\12\27 0027 13:54
    * @param [ids]
    * @return java.util.Map<java.lang.String,java.lang.Object>
    */
    @RequestMapping(value = "/deleteAnnuaSchedule", method = RequestMethod.GET)
    public Map <String, Object> deleteAnnualSchedule(Integer[] ids) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, annualScheduleService.delete(ids));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }



    /*
    *
    * 开启区服活动计划
    * @author hlx
    * @date 2018\12\27 0027 13:55
    * @param [annualPlanOpen]
    * @return java.util.Map<java.lang.String,java.lang.Object>
    */
    @RequestMapping(value = "/saveAnnualPlanOpen",method = RequestMethod.POST)
    public Map <String, Object>  saveAnnualPlanOpen(AnnualPlanOpen annualPlanOpen) throws BizException, ParseException, UnsupportedEncodingException, URISyntaxException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, annualPlanOpenService.saveAnnualPlanOpen(annualPlanOpen));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    /*
    *
    * 查找区服活动计划
    * @author hlx
    * @date 2018\12\27 0027 13:55
    * @param [page, rows]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @RequestMapping(value = "/findAnnualPlanOpen",method = RequestMethod.GET)
    public PageResult findAnnualPlanOpen(int page, int rows) {
        return annualPlanOpenService.findPage(page, rows);
    }


    /*
    *
    * 计划查询选择
    * @author hlx
    * @date 2018\12\28 0028 10:13
    * @param [page, rows, annualSchedule]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @RequestMapping(value = "/findAnnualScheduleSearch",method = RequestMethod.POST)
    public PageResult findAnnualScheduleSearch(int page,int rows,AnnualSchedule annualSchedule) throws BizException {
    return  annualScheduleService.listAnnualScheduleQuery(page,rows,annualSchedule);
    }


    /*
    *
    * 导出计划模板
    * @author hlx
    * @date 2018\12\28 0028 10:16
    * @param [request, response, annualSchedule]
    * @return void
    */
    @RequestMapping(value = "/exportAnnualSchedule",method = RequestMethod.GET)
    public  void exportAnnualSchedule(HttpServletRequest request, HttpServletResponse response,Integer annualId,Integer templateId,Integer templateOpendays) throws BizException, IOException {
        //封装需要传递的参数
        List <Map <String, Object>> list = new ArrayList<>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "计划管理");
        list.add(map1);
        AnnualSchedule annualSchedule=new AnnualSchedule();
        annualSchedule.setAnnualId(annualId);
        annualSchedule.setTemplateId(templateId);
        annualSchedule.setTemplateOpendays(templateOpendays);
        List <AnnualSchedule> listAnnualSchedule = annualScheduleService.listAnnualSchedulePoi(annualSchedule);
        for(AnnualSchedule annual:listAnnualSchedule){
            Map <String, Object> map = new HashMap <>();
            map.put("annualName",annualNameService.getAnnualPlanName(annual.getAnnualId()));
            map.put("templateName",templateNameService.templateName(annual.getTemplateId()));
            map.put("openDays",annual.getTemplateOpendays());
            map.put("createTime",annual.getCreateTime());
            list.add(map);
        }
        String[] keys = {"annualName", "templateName", "openDays", "createTime"};
        String[] columnNames = {"计划名称", "模板名称", "模板开启天数", "创建计划日期"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        // 设置下载参数：一个流两个头
        String filename = DateUtil.format(new Date()) + "-->计划管理.xls";
        //获取浏览器请求头中的User-Agent参数
        String agent = request.getHeader("User-Agent");
        //调用文件工具类，转换文件名
        String mimeType = request.getSession().getServletContext().getMimeType(filename);
        filename = FileUtils.encodeDownloadFilename(filename, agent);
        // 一个流：指的是response的输出流
        ServletOutputStream os = response.getOutputStream();
        // 两个头之一：content-type，告诉浏览器返回数据的格式
        response.setContentType(mimeType);
        // 两个头之二：content-disposition，告诉浏览器打开返回数据的方法，attachment;filename=文件名
        response.setHeader("content-disposition", "attachment;filename=" + filename);
        // response的输出流将excel返回到前台
        try {
            wb.write(os);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/exportAnnualPlan",method = RequestMethod.GET)
    public void exprotAnnualPlan(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List <Map <String, Object>> list = new ArrayList <>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "开启区服活动计划列表");
        list.add(map1);
        PageResult page = annualPlanOpenService.findPage(1, 10);
        List<AnnualPlanOpen> listAnnualPlanOpen = page.getRows();
        for(AnnualPlanOpen annualPlanOpen:listAnnualPlanOpen){
            Map <String, Object> map = new HashMap <>();
            map.put("sendTime",annualPlanOpen.getOpenTime());
            map.put("serverName",annualPlanOpen.getServerName());
            map.put("annualPlanName",annualPlanOpen.getAnnualName());
            map.put("templateName",annualPlanOpen.getTemplateName());
            map.put("start",annualPlanOpen.getStart());
            list.add(map);
        }
        String[] keys = {"sendTime", "serverName", "annualPlanName", "templateName","start"};
        String[] columnNames = {"日期", "区服名称", "计划名称", "模板名称","开始时间"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        // 设置下载参数：一个流两个头
        String filename = DateUtil.format(new Date()) + "-->开启区服活动计划列表.xls";
        //获取浏览器请求头中的User-Agent参数
        String agent = request.getHeader("User-Agent");
        //调用文件工具类，转换文件名
        String mimeType = request.getSession().getServletContext().getMimeType(filename);
        filename = FileUtils.encodeDownloadFilename(filename, agent);
        // 一个流：指的是response的输出流
        ServletOutputStream os = response.getOutputStream();
        // 两个头之一：content-type，告诉浏览器返回数据的格式
        response.setContentType(mimeType);
        // 两个头之二：content-disposition，告诉浏览器打开返回数据的方法，attachment;filename=文件名
        response.setHeader("content-disposition", "attachment;filename=" + filename);
        // response的输出流将excel返回到前台
        try {
            wb.write(os);
        } catch (IOException e) {
            e.printStackTrace();
        }


    }







}
