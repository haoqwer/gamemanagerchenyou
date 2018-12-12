package com.chenyou.controller;

import com.alibaba.fastjson.JSON;
import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.TemplateManager;
import com.chenyou.pojo.TemplateName;
import com.chenyou.pojo.TemplateOpen;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.*;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.ExcelUtil;
import com.chenyou.utils.FileUtils;
import com.chenyou.utils.StringUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.*;


@RestController
@RequestMapping("/templates")
public class TemplateController extends BaseController {


    @Autowired
    private TemplateNameService templateNameService;


    @Autowired
    private TemplateManagerService templateManagerService;


    @Autowired
    private TemplateOpenService templateOpenService;


    @Autowired
    private ServerService serverService;

    @Autowired
    private ActivityService activityService;



    /**
     * 使用excel导入模板名称模板id等信息
     *
     * @param filename
     * @param request
     * @throws BizException
     * @throws IOException
     */
    @RequestMapping(value = "/importTemplates", method = RequestMethod.POST)
    public void importTemplates(MultipartFile filename, HttpServletRequest request) throws BizException, IOException {
        //1.判断是否上传文件
        if (StringUtils.isEmpty(filename.getOriginalFilename())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择你要上传的文件!");
        }
        List <TemplateName> list = new ArrayList <>();
        list = templateNameService.findAll();
        //2.获取文件输入流
        MultipartRequest multipartRequest = (MultipartRequest) request;
        MultipartFile excelFile = multipartRequest.getFile("filename");
        HSSFWorkbook workbook = new HSSFWorkbook(excelFile.getInputStream());
        HSSFSheet sheetAt = workbook.getSheetAt(0);
        TemplateName template = new TemplateName();
        String[] templateNames = new String[sheetAt.getLastRowNum()];
        String[] oldTemplateNames = new String[list.size()];
        if (sheetAt.getLastRowNum() == 0) {
            throw new BizException(BizException.CODE_PARM_LACK, "导入的数据不能没有内容!");
        }
        for (Row row : sheetAt) {
            int rowNum = row.getRowNum();
            if (rowNum == 0) {
                continue;
            }
            templateNames[rowNum - 1] = row.getCell(0).getStringCellValue();
        }
        for (int i = 0; i <= list.size() - 1; i++) {
            oldTemplateNames[i] = list.get(i).getTemplateName();
        }
        if (templateNames != null && templateNames.length > 0) {
            for (String tn : templateNames) {
                if (!ArrayUtils.contains(oldTemplateNames, tn)) {
                    template.setCreatePeople(getUserName());
                    template.setRecordTime(DateUtil.format1(new Date()));
                    template.setTemplateName(tn);
                    templateNameService.saveTemplateName(template);
                }
            }
        } else {
            throw new BizException(BizException.CODE_PARM_LACK, "导入的文件内容不能为空");
        }
    }

    @RequestMapping(value = "/listTemplateName", method = RequestMethod.GET)
    public List <TemplateName> listTemplateName() throws BizException {
        return templateNameService.findAll();
    }


    /**
     * 新增模板管理
     *
     * @param templateManagerList
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/addTemplateManager", method = RequestMethod.POST)
    public Map <String, Object> addTemplateManager(String templateManagerList) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        //1.将传入的json字符串转换成集合
        List <TemplateManager> list = JSON.parseArray(templateManagerList, TemplateManager.class);
        for (TemplateManager templateManager : list) {
            templateManager.setCreatePeople(getUserName());
        }
        resultMap.put(ApplicationConstants.TAG_DATA, templateManagerService.saveTemplateManager(list));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 增加时检查活动id是否出现重复的情况
     *
     * @param templateManager
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/checkActiveIdUnique", method = RequestMethod.POST)
    public Map <String, Object> checkActiveIdUnique(TemplateManager templateManager) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, templateManagerService.checkActiveIdUnique(templateManager));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    /**
     * 活动开启模板列表
     *
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/findPage", method = RequestMethod.GET)
    public PageResult findPage(int page, int rows) throws BizException {
        return templateManagerService.findPage(page, rows);
    }

    /**
     * 查找活动开启模板
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/findTemplateManager", method = RequestMethod.GET)
    public TemplateManager findTemplateManager(Integer id) {
        return templateManagerService.findTemplateManager(id);
    }

    /**
     * 删除活动开启模板
     *
     * @param ids
     * @return
     * @throws BizException
     */
    @RequestMapping(value = "/deleteTemplateMnagers", method = RequestMethod.GET)
    public Map <String, Object> deleteTemplateMnagers(Integer[] ids) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, templateManagerService.deleteTemplateManager(ids));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    /*
     *
     * 修改活动开启模板
     * @author hlx
     * @date 2018\12\3 0003 14:57
     * @param [templateManager]
     * @return java.util.Map<java.lang.String,java.lang.Object>
     */
    @RequestMapping(value = "/updateTemplateManager", method = RequestMethod.POST)
    public Map <String, Object> updateTemplateManager(TemplateManager templateManager) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, templateManagerService.updateTemplateManager(templateManager));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /**
     * 开启活动管理的模板
     *
     * @param [templateOpen]
     * @return java.util.Map<java.lang.String       ,     j   a   v   a.lang.Object>
     * @author hlx
     * @date 2018\12\3 0003 14:59
     */
    @RequestMapping(value = "/templateOpen", method = RequestMethod.POST)
    public Map <String, Object> templateOpen(TemplateOpen templateOpen) throws UnsupportedEncodingException, ParseException, BizException, URISyntaxException {
        templateOpen.setOperator(getUserName());
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, templateOpenService.saveTemplateOpen(templateOpen));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }


    /*
     *
     * 模板列表查询
     * @author hlx
     * @date 2018\12\3 0003 19:20
     * @param [page, rows, templateManager]
     * @return com.chenyou.pojo.entity.PageResult
     */
    @RequestMapping(value = "/findSearch", method = RequestMethod.POST)
    public PageResult findSearch(int page, int rows, String templateManager) throws BizException {
        TemplateManager templateManager1 = JSON.parseObject(templateManager, TemplateManager.class);
        return templateManagerService.findSearch(page, rows, templateManager1);
    }

    /*
    *
    * 导出模板管理
    * @author hlx
    * @date 2018\12\6 0006 19:24
    * @param [request, response, templateManager]
    * @return void
    */
    @RequestMapping(value = "/exportTemplateManager", method = RequestMethod.GET)
    public void exportTemplateManager(HttpServletRequest request, HttpServletResponse response, TemplateManager templateManager) throws BizException, IOException {
        //封装需要传递的参数
        List <Map <String, Object>> list = new ArrayList <>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "模板管理");
        list.add(map1);
        List <TemplateManager> templateManagerList = templateManagerService.listTemplateManager(templateManager);
        for (TemplateManager templateManager1 : templateManagerList) {
            Map <String, Object> map = new HashMap <>();
            map.put("recordTime", templateManager1.getRecordTime());
            map.put("templateName", templateManager1.getTemplateName());
            map.put("activeId", templateManager1.getActiveId());
            map.put("openTakesDay", templateManager1.getOpenTakesDay());
            map.put("delayDays", templateManager1.getDelayDays());
            list.add(map);
        }
        String[] keys = {"recordTime", "templateName", "activeId", "openTakesDay", "delayDays"};
        String[] columnNames = {"日期", "模板名称", "活动ID", "活动开启天数", "延期天数"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        // 设置下载参数：一个流两个头
        String filename = DateUtil.format(new Date()) + "-->模板管理.xls";
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
    *
    * 展示
    * @author hlx
    * @date 2018\12\6 0006 19:23
    * @param [page, rows]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @RequestMapping(value = "/findTemplatePage", method = RequestMethod.GET)
    public PageResult findTemplatePage(int page, int rows) throws BizException {
        return templateOpenService.findPage(page, rows);
    }

    /**
    *
    * 开启成功后导出
    * @author hlx
    * @date 2018\12\6 0006 19:23
    * @param [request, response]
    * @return void
    */
    @RequestMapping(value = "/exprotTemplateOpen", method = RequestMethod.GET)
    public void exprotTemplateOpen(HttpServletRequest request, HttpServletResponse response) throws BizException, IOException {
        List <Map <String, Object>> list = new ArrayList <>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "活动开启");
        list.add(map1);
        List <TemplateOpen> listTemplateOpen = new ArrayList <>();
        listTemplateOpen = templateOpenService.listTemplateOpen();
        for (TemplateOpen templateOpen : listTemplateOpen) {
            Map <String, Object> map = new HashMap <>();
            map.put("serverName",serverService.getServerName(templateOpen.getServerId()));
            map.put("templateName", templateNameService.templateName(templateOpen.getTemplateId()));
            map.put("start",templateOpen.getStart());
            list.add(map);
        }
        String[] keys = {"serverName", "templateName", "start"};
        String[] columnNames = {"区服名称","模板名称","开始时间"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        // 设置下载参数：一个流两个头
        String filename = DateUtil.format(new Date()) + "-->模板管理.xls";
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
    *
    * 已经开启的活动
    * @author hlx
    * @date 2018\12\12 0012 19:41
    * @param [page, rows]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @RequestMapping(value = "/findActivityList", method = RequestMethod.GET)
    public PageResult findActivityList(int page, int rows) throws BizException {
        return activityService.findPage(page, rows);
    }


}
