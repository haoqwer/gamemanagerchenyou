package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.LtvCount;
import com.chenyou.service.*;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.ExcelUtil;
import com.chenyou.utils.FileUtils;
import com.chenyou.utils.StringUtils;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.BeanWrapper;
import org.springframework.beans.BeanWrapperImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.util.*;

@RestController
@RequestMapping("/general")
public class GeneralController extends BaseController {

    @Autowired
    private AboutGameService aboutGameService;
    @Autowired
    private CyUserCountService userCountService;

    @Autowired
    private InComeClassService inComeClassService;

    @Autowired
    private ChannelCountService channelCountService;

    @Autowired
    private LtvCountService ltvCountService;

    @Autowired
    private ChannelService channelService;

    @Autowired
    private ServerService serverService;


    /**
     * 游戏概况
     *
     * @param serverId
     * @param channelId
     * @return
     * @throws BizException
     */
    @RequiresPermissions("game:about:view")
    @RequestMapping(value = "/aboutGame", method = RequestMethod.GET)
    public Map <String, Object> getAboutGame(Integer serverId, String channelId) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, aboutGameService.getAboutGame(serverId, channelId));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.TAG_SC);
        return resultMap;
    }

    /**
     * 日报--->用户类
     *
     * @param
     * @param serverId
     * @param channelId
     * @return
     * @throws ParseException
     */
    @RequiresPermissions("dayily:paper:view")
    @RequestMapping(value = "/listUserCount", method = RequestMethod.GET)
    public Map <String, Object> listUserCount(String start, String end, Integer serverId, String channelId, int page, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, userCountService.listUserCount(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 日报-->收入类
     *
     * @param
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws ParseException
     * @throws BizException
     */
    @RequiresPermissions("dayily:paper:view")
    @RequestMapping(value = "/listInCome", method = RequestMethod.GET)
    public Map <String, Object> listInCome(String start, String end, Integer serverId, String channelId, int page, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, inComeClassService.listInCome(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 渠道统计
     *
     * @param
     * @param serverId
     * @param channelId
     * @param page
     * @param rows
     * @return
     * @throws ParseException
     * @throws BizException
     */
    @RequiresPermissions("dayily:paper:view")
    @RequestMapping(value = "/listChannel", method = RequestMethod.GET)
    public Map <String, Object> listChannel(String start, String end, Integer serverId, String channelId, int page, int rows) throws ParseException, BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, channelCountService.listChannelCount(start, end, serverId, channelId, page, rows));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * ltv概况
     *
     * @param serverId
     * @param channelId
     * @return
     * @throws BizException
     */
    @RequiresPermissions("ltv:gengral:view")
    @RequestMapping(value = "/listLtvCount", method = RequestMethod.GET)
    public Map <String, Object> listLtvCount(String start, String end, Integer serverId, String channelId) throws BizException, ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, ltvCountService.listLtvCount(start, end, serverId, channelId));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * ltvCount导出
     *
     * @param request
     * @param response
     * @throws BizException
     * @throws IOException
     * @throws ParseException
     */
    @RequestMapping(value = "exportLtvCount", method = RequestMethod.GET)
    public void exportLtvCount(HttpServletRequest request, HttpServletResponse response, String start, String end, String serverId, String channelId) throws BizException, IOException, ParseException {
        List <Map <String, Object>> list = new ArrayList <>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "ltv概况");
        list.add(map1);
        List <LtvCount> listLtv = new ArrayList <>();
        if (serverId.equals("null") && channelId.equals("null")) {
            listLtv = ltvCountService.listLtvCount(start, end, null, null);
        } else {
            listLtv = ltvCountService.listLtvCount(start, end, serverId.equals("null") ? null : Integer.parseInt(serverId), channelId.equals("null") ? null : channelId);
        }
        if (StringUtils.isEmpty(listLtv)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思当前没有数据!!!");
        }

        for (LtvCount ltv : listLtv) {
            Map <String, Object> map = new HashMap <>();
            map.put("recordeTime", ltv.getRecordeTime());
            map.put("onedayLtv", ltv.getOnedayLtv());
            map.put("twodayLtv", ltv.getTwodayLtv());
            map.put("threedayLtv", ltv.getThreedayLtv());
            map.put("fourdayLtv", ltv.getFourdayLtv());
            map.put("fivedayLtv", ltv.getFivedayLtv());
            map.put("sixdayLtv", ltv.getSixdayLtv());
            map.put("sevendayLtv", ltv.getSevendayLtv());
            map.put("fifteendayLtv", ltv.getFifteendayLtv());
            map.put("thirtydayLtv", ltv.getThirtydayLtv());
            map.put("serverName", serverService.getServerName(ltv.getServerId()) == null ? "所有区服" : serverService.getServerName(ltv.getServerId()));
            map.put("channelName", channelService.getChannelName(ltv.getChannelId()) == null ? "所有渠道" : channelService.getChannelName(ltv.getChannelId()));
            list.add(map);
        }
        String[] keys = {"recordeTime", "onedayLtv", "twodayLtv", "threedayLtv", "fourdayLtv", "fivedayLtv", "sixdayLtv", "sevendayLtv", "fifteendayLtv", "thirtydayLtv", "serverName", "channelName"};
        String[] columnNames = {"时间", "1日LTV", "2日LTV", "3日LTV", "4日LTV", "5日LTV", "6日LTV", "7日LTV", "15日LTV", "30日LTV", "区服名称", "渠道名称"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        // 设置下载参数：一个流两个头
        String filename = DateUtil.format(new Date()) + "-->ltv概况.xls";
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
