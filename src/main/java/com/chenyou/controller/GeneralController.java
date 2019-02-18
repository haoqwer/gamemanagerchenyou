package com.chenyou.controller;

import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.LtvCount;
import com.chenyou.pojo.Server;
import com.chenyou.service.*;
import com.chenyou.service.generalservice.*;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.ExcelUtil;
import com.chenyou.utils.FileUtils;
import com.chenyou.utils.StringUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

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




    @RequestMapping("/testdemo")
    public void testSchedule(){
     System.out.println("每5秒执行一次这个请求");
        System.out.println("-----");
    }





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
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
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
    @RequestMapping(value = "/exportLtvCount", method = RequestMethod.GET)
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


    /**
     * 通过excel导入文档，将文档中的excel的数据插入到数据库中
     */

    @RequestMapping(value = "/importExcelServer", method = RequestMethod.POST)
    public void importExcelServer(MultipartFile filename, HttpServletRequest request) throws BizException, IOException {
        //1.判断是否上传文件
        if (StringUtils.isEmpty(filename.getOriginalFilename())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择你要上传的文件!");
        }
        MultipartRequest multipartRequest = (MultipartRequest) request;
        MultipartFile excelFile = multipartRequest.getFile("filename");
        //2.创建poiHssfWorkBook工具读取excel的内容
        HSSFWorkbook wb = new HSSFWorkbook(excelFile.getInputStream());
        HSSFSheet sheet = wb.getSheetAt(0);
        List <Server> list = new ArrayList <>();
        Server server = new Server();
        //3.获取到数据库中现有的所有区服
        list = serverService.listServer();
        //4.将新导入的区服名称创建为一个数组
        String[] serverNames = new String[sheet.getLastRowNum()];
        System.out.println(sheet.getLastRowNum());
        //5.将已经在数据中的区服名创建为一个数组
        String[] oldServerNames = new String[list.size()];
        //6.判断如果传入的内容为空也进行提示,传入的内容不能为空
        if (sheet.getLastRowNum() == 0) {
            throw new BizException(BizException.CODE_PARM_LACK, "导入的数据不能为空!");
        }
        //7.将读取到的内容数据放入创建的新区服名称数组中
        for (Row row : sheet) {
            int rowNum = row.getRowNum();
            if (rowNum == 0) {
                continue;
            }
            serverNames[rowNum - 1] = row.getCell(1).getStringCellValue();
        }
        //8.构建老数组的数组名称数据数组
        for (int i = 0; i <= list.size() - 1; i++) {
            oldServerNames[i] = list.get(i).getServerName();
        }
        //9.将新的区服中的数据遍历跟老区服的数组比较
        if (serverNames != null && serverNames.length > 0) {
            for (String serverName : serverNames) {
                if (!ArrayUtils.contains(oldServerNames, serverName)) {
                    server.setServerName(serverName);
                    serverService.addServer(server);
                }
            }
        } else {
            throw new BizException(BizException.CODE_PARM_LACK, "导入的数据不能为空!");
        }
    }
}
