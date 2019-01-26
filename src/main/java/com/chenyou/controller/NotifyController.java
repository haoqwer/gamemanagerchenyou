package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.Activity;
import com.chenyou.pojo.Notify;
import com.chenyou.pojo.NotifyActi;
import com.chenyou.pojo.OpenPlan;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.NotifyActiService;
import com.chenyou.service.NotifyService;
import com.chenyou.service.OpenPlanService;
import com.chenyou.service.ServerService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.ExcelUtil;
import com.chenyou.utils.FileUtils;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.*;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-08 14:43
 * @Version: 1.0
 **/
@RequestMapping("/notify")
@RestController
public class NotifyController {

    @Autowired
    private NotifyActiService notifyActiService;

    @Autowired
    private OpenPlanService openPlanService;


    @Autowired
    private NotifyService notifyService;

    @Autowired
    private ServerService serverService;

    @RequestMapping(value = "/findPage", method = RequestMethod.GET)
    public PageResult findPage(int page, int rows) {
        return notifyActiService.findPage(page, rows);
    }


    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public Map <String, Object> update(NotifyActi notifyActi) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, notifyActiService.update(notifyActi));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    @RequestMapping(value = "/exportListNotify", method = RequestMethod.GET)
    public void exportListNotify(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //导出所有的公告
        List <Map <String, Object>> list = new ArrayList <>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "公告列表");
        list.add(map1);
        List <Notify> notifyList = notifyService.getListNotify();
        for (Notify notify : notifyList) {
            Map <String, Object> map = new HashMap <>();
            map.put("sid", notify.getSid());
            map.put("ltitle", notify.getLtitle());
            map.put("stitle", notify.getStitle());
            map.put("notify", notify.getNoity());
            map.put("stime", notify.getStime());
            map.put("etime", notify.getEtime());
            list.add(map);
        }
        String[] keys = {"sid", "ltitle", "stitle", "notify", "stime", "etime"};
        String[] columnNames = {"区服id", "标题", "标题1", "通知", "开始时间(时间戳)", "结束时间(时间戳)"};
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

    //导出所有活动
    @RequestMapping(value = "/exportOpenPlan", method = RequestMethod.GET)
    public void exportOpenPlan(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //导出所有的公告
        List <Map <String, Object>> list = new ArrayList <>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "活动列表");
        list.add(map1);
        List <OpenPlan> listOpenPlan = openPlanService.getListOpenPlan();
        for (OpenPlan openPlan : listOpenPlan) {
            Map <String, Object> map = new HashMap <>();
            map.put("id", openPlan.getId());
            map.put("aid", openPlan.getAid());
            map.put("stime", openPlan.getStime());
            map.put("etime", openPlan.getEtime());
            map.put("state", openPlan.getState());
            map.put("stimen", openPlan.getStimen());
            map.put("etimen", openPlan.getEtimen());
            list.add(map);
        }
        String[] keys = {"id", "aid", "stime", "etime", "state", "stimen", "etimen"};
        String[] columnNames = {"id", "活动id", "开始日期", "结束日期", "状态", "开始时间(时间戳)", "结束时间(时间戳)"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        // 设置下载参数：一个流两个头
        String filename = DateUtil.format(new Date()) + "-->活动列表.xls";
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

    @RequestMapping(value = "/addNotifys", method = RequestMethod.GET)
    public Map <String, Object> addNotifys() throws ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, notifyService.addNotify());
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        System.out.println("---------------");
        return resultMap;
    }
}
