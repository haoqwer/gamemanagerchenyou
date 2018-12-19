package com.chenyou.controller;

import com.alibaba.fastjson.JSON;
import com.chenyou.Constants.ApplicationConstants;
import com.chenyou.base.BizException;
import com.chenyou.pojo.Prop;
import com.chenyou.pojo.SendProp;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gammemanagerservice.PropService;
import com.chenyou.service.gammemanagerservice.SendPropService;
import com.chenyou.utils.CellConvertsUtils;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.util.*;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-18 16:32
 * @Version: 1.0
 **/
@RestController
@RequestMapping("/send")
public class SendEmailController extends BaseController {

    @Autowired
    private PropService propService;


    @Autowired
    private SendPropService sendPropService;

    @RequestMapping(value = "/importProps", method = RequestMethod.POST)
    public void importProps(MultipartFile filename, HttpServletRequest request) throws BizException, IOException {
        //1.判断是否上传文件
        if (StringUtils.isEmpty(filename.getOriginalFilename())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择你要上传的文件!");
        }
        List <Prop> listProp = new ArrayList <>();
        //2.获取文件输入流
        MultipartRequest multipartRequest = (MultipartRequest) request;
        MultipartFile excelFile = multipartRequest.getFile("filename");
        HSSFWorkbook workbook = new HSSFWorkbook(excelFile.getInputStream());
        HSSFSheet sheetAt = workbook.getSheetAt(0);
        if (sheetAt.getLastRowNum() == 0) {
            throw new BizException(BizException.CODE_PARM_LACK, "导入的数据不能没有内容!");
        }
        for (Row row : sheetAt) {
            Prop prop = new Prop();
            prop.setSort(Integer.valueOf(CellConvertsUtils.getCellValueByCell(row.getCell(0))));
            prop.setPropId(Integer.valueOf(CellConvertsUtils.getCellValueByCell(row.getCell(1))));
            prop.setPropName(CellConvertsUtils.getCellValueByCell(row.getCell(2)));
            listProp.add(prop);
        }
        int count = propService.saveProp(listProp);
        System.out.println(count);
    }

    /*
     *
     * 道具列表展示
     * @author hlx
     * @date 2018\12\18 0018 17:16
     * @param [page, rows]
     * @return com.chenyou.pojo.entity.PageResult
     */
    @RequestMapping(value = "/findPage", method = RequestMethod.GET)
    public PageResult findPage(int page, int rows) throws BizException {
        return propService.findPage(page, rows);
    }

    /*
     *
     * 发送道具时候展示选择道具的列表
     * @author hlx
     * @date 2018\12\18 0018 17:18
     * @param []
     * @return java.util.List<com.chenyou.pojo.Prop>
     */
    @RequestMapping(value = "/listProps", method = RequestMethod.GET)
    public List <Prop> listProps() throws BizException {
        return propService.listProp();
    }

    /*
    *
    * 修改道具
    * @author hlx
    * @date 2018\12\18 0018 17:40
    * @param [prop]
    * @return java.util.Map<java.lang.String,java.lang.Object>
    */
    @RequestMapping(value = "/updateProp", method = RequestMethod.POST)
    public Map <String, Object> updateProp(Prop prop) throws BizException {
        Map <String, Object> resultMap = new HashMap <>();
        resultMap.put(ApplicationConstants.TAG_DATA, propService.updateProp(prop));
        resultMap.put(ApplicationConstants.TAG_SC, ApplicationConstants.SC_OK);
        return resultMap;
    }

    /*
    *
    * 发送道具
    * @author hlx
    * @date 2018\12\18 0018 20:30
    * @param [sendPropList]
    * @return java.util.Map<java.lang.String,java.lang.Object>
    */
    @RequestMapping(value = "/sendProp",method = RequestMethod.POST )
    public Map<String,Object> sendProp(String sendPropList) throws BizException, UnsupportedEncodingException, URISyntaxException {
        Map <String, Object> resultMap = new HashMap <>();
        //1.将传入的json字符串转换成集合
        List <SendProp> list = JSON.parseArray(sendPropList, SendProp.class);
        for(SendProp sendProp:list){
            sendProp.setSendTime(DateUtil.format1(new Date()));
        }
        resultMap.put(ApplicationConstants.TAG_DATA,sendPropService.saveSendProp(list));
        resultMap.put(ApplicationConstants.TAG_SC,ApplicationConstants.SC_OK);
        return resultMap;
    }

    
    /*
    *  
    * 根据道具名称来查询道具
    * @author hlx
    * @date 2018\12\19  9:51
    * @param [propName]
    * @return java.util.List<com.chenyou.pojo.Prop>
    */
    @RequestMapping(value = "/listPropLikePropName", method = RequestMethod.GET)
    public List <Prop> listPropLikePropName(String propName) {
        return propService.listPropByPropLikeName(propName);
    }


    @RequestMapping(value = "/findSendPropPage",method = RequestMethod.GET)
    public PageResult findSendPropPage(int page,int rows) throws BizException {
        return sendPropService.findPage(page,rows);
    }



}
