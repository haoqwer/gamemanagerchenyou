package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.TemplateManagerMapper;
import com.chenyou.mapper.TemplateOpenMapper;
import com.chenyou.pojo.*;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivityService;
import com.chenyou.service.ServerService;
import com.chenyou.service.TemplateNameService;
import com.chenyou.service.TemplateOpenService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * java类简单作用描述
 *
 * @ProjectName: chenyoumanager
 * @Package: com.chenyou.service.impl
 * @ClassName: TemplateOpneServiceImpl
 * @Description: 类作用描述
 * @Author: hlx
 * @CreateDate: 2018-11-21 18:05
 * @Version: 1.0
 **/

@Service
@Transactional
public class TemplateOpneServiceImpl implements TemplateOpenService {


    @Autowired
    private TemplateManagerMapper templateManagerMapper;

    @Autowired
    private TemplateOpenMapper templateOpenMapper;


    @Autowired
    private ServerService serverService;


    @Autowired
    private TemplateNameService templateNameService;



    private static final Logger logger = LoggerFactory.getLogger(TemplateOpneServiceImpl.class);


    /**
     * 进行活动开启
     *
     * @param [templateOpen]
     * @return int
     * @author hlx
     * @date 2018\12\1 0001 13:48
     */
    @Override
    public int saveTemplateOpen(TemplateOpen templateOpen) throws BizException, ParseException, URISyntaxException, UnsupportedEncodingException {
        List <TemplateManager> listManager = new ArrayList <>();
        //开始时间
        String end;
        //结束时间
        String start;
        //开启天数
        int openDay = 0;
        //结束天数
        int delyDay = 0;
        //区服名称
        String serverName;
        //插入多少条数据
        int sum = 0;
        int i = 0;
        //1.判断数据
        if (StringUtils.isNull(templateOpen)) {
            throw new BizException(BizException.CODE_PARM_LACK, "活动开启内容不能为空!");
        }
        if (null == templateOpen.getServerId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择区服!");
        }
        if (null == templateOpen.getTemplateId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择一个模板管理!");
        }
        if (StringUtils.isEmpty(templateOpen.getStart())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择活动开始时间!");
        }
        //2.获取到区服名称
        serverName = serverService.getServerName(templateOpen.getServerId());
        //3.获取到活动开启模板数据
        TemplateManagerExample example = new TemplateManagerExample();
        TemplateManagerExample.Criteria criteria = example.createCriteria();
        criteria.andTemplateIdEqualTo(templateOpen.getTemplateId());
        listManager = templateManagerMapper.selectByExample(example);
        //4.判断模板管理的数据是否为空
        if (StringUtils.isEmpty(listManager)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思，当前模板管理没有数据!");
        }
        //5.获取到开始时间
        start = templateOpen.getStart();
        CloseableHttpClient httpClient = HttpClients.createDefault();
        for (TemplateManager templateManager : listManager) {
            //6.对开启活动天数进行判断
            if (templateManager.getOpenTakesDay() == 0) {
                throw new BizException(BizException.CODE_PARM_LACK, "开服天数不能为0!");
            }
            //对状态进行判断如果状态是1的则不进行开启
            //7.获取到开服天数
            openDay = templateManager.getOpenTakesDay();
            //8.获取到延期天数
            delyDay = templateManager.getDelayDays();
            //9.判断是否延期来确定结束时间
            if (templateManager.getDelayStatus() == 0 || delyDay == 0) {
                //9.1表示没有延期
                end = DateUtil.addDaysByCalendar(start, openDay - 1);
            } else {
                //9.2表示延期获取到最后的时间
                end = DateUtil.addDaysByCalendar(start, openDay - 1 + delyDay);
            }
            // http://47.104.240.79:8080/?mod=control&act=addAct&server=node_360_3&aid=5003&fields=stime,2018-11-16%2000:00:01,etime,2018-11-23%2023:59:59,value,1,state=1
            //获取到开启活动的时分秒
            //10.获取到结束时间
            String hmm = templateManager.getEndtime();
            //1.1后缀部分
            String postfix = "stime," + start + "%2000:00:01,etime," + end + "%20" + hmm + ",value,1,state,1";
//                http://47.104.227.113:8080/?mod=control&act=addAct&server=node_360_1&aid=1001&value=1&stime=2018-10-13%2023:59:59&etime=2018-10-15%2023:59:59&state=1

            URI uri = new URIBuilder("http://47.104.227.113:8080/").setParameter("mod", "control").setParameter("act", "modifyAct").
                    setParameter("server", serverName).setParameter("aid", templateManager.getActiveId()).setParameter("fields", postfix).build();
            //11.2获取到url
            String url = URLDecoder.decode(uri.toString(), "UTF-8");
            System.out.println(url);
            HttpGet httpGet = new HttpGet(url);
            CloseableHttpResponse response;
            try {
                response = httpClient.execute(httpGet);
                if (response.getStatusLine().getStatusCode() == 200) {
                    String content = EntityUtils.toString(response.getEntity(), "UTF-8");
                    System.out.println("响应的内容为:" + content);
                    logger.info("content:" + content);
                }
            } catch (IOException e) {
                throw new BizException(BizException.CODE_PARM_LACK, "不好意思活动开启失败!");
            }
            //13.1插入活动id
            templateOpen.setActiveId(templateManager.getActiveId());
            //13.2插入结束时间
            templateOpen.setEnd(end);
            //13.3设置延期天数
            templateOpen.setDelayDays(delyDay);
            //13.4记录时间
            templateOpen.setRecordTime(DateUtil.format1(new Date()));
            i = templateOpenMapper.insertSelective(templateOpen);
//            templateManager.setOpenStatus(2);
//            templateManagerMapper.updateByPrimaryKeySelective(templateManager);
            sum += i;
        }
        return sum;
    }

    /**
     * @param [pageNum, pageSize]
     * @return com.chenyou.pojo.entity.PageResult
     * @author hlx
     * @date 2018\12\17  14:38
     */
    @Override
    public PageResult findPage(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        List <TemplateOpen> list = templateOpenMapper.listTemplateOpen();
//        if (StringUtils.isEmpty(list)) {
//            throw new BizException(BizException.CODE_PARM_LACK, "不好意思当前没有数据!");
//        }
        for (TemplateOpen templateOpen : list) {
            templateOpen.setServerName(serverService.getServerName(templateOpen.getServerId()));
            templateOpen.setTemplateName(templateNameService.templateName(templateOpen.getTemplateId()));
        }
        Page <TemplateOpen> page = (Page <TemplateOpen>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }

    @Override
    public List <TemplateOpen> listTemplateOpen() throws BizException {
        List <TemplateOpen> listTemplateOpen = new ArrayList <>();
        listTemplateOpen = templateOpenMapper.listTemplateOpen();
        if (StringUtils.isEmpty(listTemplateOpen)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思,当前没有数据!");
        }
        return listTemplateOpen;
    }
}
