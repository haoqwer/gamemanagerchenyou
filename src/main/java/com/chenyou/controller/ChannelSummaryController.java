package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.ChannelSummary;
import com.chenyou.pojo.User;
import com.chenyou.service.channeldata.ChannelSummaryService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.ExcelUtil;
import com.chenyou.utils.FileUtils;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
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
 * 渠道数据汇总
 */

@RestController
@RequestMapping("/channel")
public class ChannelSummaryController extends BaseController {

    @Autowired
    private ChannelSummaryService channelSummaryService;

    /**
     * 渠道数据汇总
     *
     * @param start
     * @param end
     * @param page
     * @param rows
     * @param channelId
     * @return
     * @throws BizException
     * @throws ParseException
     */
    @RequiresPermissions("channel:count:view")
    @RequestMapping("/listChanelSummary")
    public Map <String, Object> listChanelSummary(String start, String end, int page, int rows, String channelId) throws BizException, ParseException {
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        if ("admin".equals(user.getLoginName())) {
            channelId = null;
        } else {
            channelId = user.getChannelId();
        }
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, channelSummaryService.listChannelSummary(start, end, page, rows, channelId));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    @RequestMapping(value = "/exportChannelSummary", method = RequestMethod.GET)
    public void exprotChannelSummary(HttpServletRequest request, HttpServletResponse response, String start, String end) throws BizException, ParseException, IOException {
        //1.创建工具类请求参数模板
        List <Map <String, Object>> list = new ArrayList <>();
        //2.创建list的参数
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "渠道数据汇总");
        list.add(map1);
        String channelId;
        Subject subject = SecurityUtils.getSubject();
        //3.获取到当前用户的信息
        User user = (User) subject.getPrincipal();
        //4.创建返回的数据集合
        List <ChannelSummary> listChannelSum = new ArrayList <>();

        //5.判断用户是否是管理员获取到channnelId
        if ("admin".equals(user.getLoginName())) {
            channelId = null;
        } else {
            channelId = user.getChannelId();
        }
        //6.根据是否传入时间导出不同的数据
        if (start.equals("null") && end.equals("null")) {
            listChannelSum = channelSummaryService.listChannelSummaryByChannelId(channelId);
        } else {
            listChannelSum = channelSummaryService.listChannelSummary(start, end, channelId);
        }
        //7.将获取到的数据放入到Map中
        for (ChannelSummary channelSummary : listChannelSum) {
            Map <String, Object> map = new HashMap <>();
            map.put("showTime", channelSummary.getShowTime());
            map.put("channelName", channelSummary.getChannelName());
            map.put("activatePlayer", channelSummary.getActivatePlayer());
            map.put("registerPlayer", channelSummary.getRegisterPlayer());
            map.put("activePlayer", channelSummary.getActivePlayer());
            map.put("rechargePlayer", channelSummary.getRechargePlayer());
            map.put("timeLeave", channelSummary.getTimeLeave());
            map.put("threedayLeave", channelSummary.getThreedayLeave());
            map.put("sevendayLeave", channelSummary.getSevendayLeave());
            map.put("payRate", channelSummary.getPayRate());
            map.put("rechargeMoney", channelSummary.getRechargeMoney());
            map.put("payAp",channelSummary.getPayAp());
            map.put("registerAp",channelSummary.getRegisterAp());
            list.add(map);
        }
        //8.进行关系映射
        String[] keys = {"showTime", "channelName", "activatePlayer", "registerPlayer", "activePlayer", "rechargePlayer", "timeLeave", "threedayLeave", "sevendayLeave", "payRate", "rechargeMoney","payAp","registerAp"};
        String[] columnNames = {"日期", "渠道名称", "激活玩家", "注册玩家", "活跃玩家", "充值玩家", "次留", "三留", "七留", "付费率", "充值金额","付费arpu","注册arpu"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        // 9.设置下载参数：一个流两个头
        String filename = DateUtil.format(new Date()) + "-->渠道数据汇总.xls";
        //10.获取浏览器请求头中的User-Agent参数
        String agent = request.getHeader("User-Agent");
        //11.调用文件工具类，转换文件名
        String mimeType = request.getSession().getServletContext().getMimeType(filename);
        filename = FileUtils.encodeDownloadFilename(filename, agent);
        // 12.一个流：指的是response的输出流
        ServletOutputStream os = response.getOutputStream();
        // 13.两个头之一：content-type，告诉浏览器返回数据的格式
        response.setContentType(mimeType);
        // 14.两个头之二：content-disposition，告诉浏览器打开返回数据的方法，attachment;filename=文件名
        response.setHeader("content-disposition", "attachment;filename=" + filename);
        // response的输出流将excel返回到前台
        try {
            wb.write(os);
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


}
