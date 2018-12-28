package com.chenyou.service.impl;

import com.alibaba.druid.sql.dialect.sqlserver.visitor.SQLServerSchemaStatVisitor;
import com.chenyou.base.BizException;
import com.chenyou.mapper.AnnualPlanOpenMapper;
import com.chenyou.pojo.AnnualPlanOpen;
import com.chenyou.pojo.AnnualSchedule;
import com.chenyou.pojo.TemplateManager;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.*;
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
import java.util.Date;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-26 22:34
 * @Version: 1.0
 **/
@Service
@Transactional
public class AnnualPlanOpenServiceImpl implements AnnualPlanOpenService {


    private final  static Logger logger=LoggerFactory.getLogger(AnnualPlanOpenServiceImpl.class);


    @Autowired
    private AnnualScheduleService annualScheduleService;


    @Autowired
    private AnnualPlanOpenMapper annualPlanOpenMapper;


    @Autowired
    private ServerService serverService;

    @Autowired
    private TemplateNameService templateNameService ;

    @Autowired
    private AnnualNameService annualNameService;


    @Autowired
    private TemplateManagerService templateManagerService;



    /**
    *  
    * 开启计划
    * @author hlx
    * @date 2018\12\27  16:23
    * @param [annualPlanOpen]
    * @return int
    */
    @Override
    public int saveAnnualPlanOpen(AnnualPlanOpen annualPlanOpen) throws BizException, ParseException, URISyntaxException, UnsupportedEncodingException {
        //定义插入的条数
        int sum = 0;
        int i = 0;
        //判断是否选中区服
        if (null == annualPlanOpen.getServerId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择区服!");
        }
        //判断是否选中计划
        if (null == annualPlanOpen.getAnnualId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择区服活动计划!");
        }
        //判断区服活动开始时间
        if (StringUtils.isEmpty(annualPlanOpen.getStart())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择区服活动计划开始时间");
        }
        //获取到区服计划下的所有模板
        List <AnnualSchedule> listAnnualSchedule = annualScheduleService.listAnnualScheduleByAnnualId(annualPlanOpen.getAnnualId());
        //遍历年度计划下的模板管理
        //获取到计划开始时间
        String start=annualPlanOpen.getStart();
        String serverName=serverService.getServerName(annualPlanOpen.getServerId());
        logger.info("start:"+start);
        CloseableHttpClient httpClient = HttpClients.createDefault();
        //遍历所有的计划下的模板
        for(int j=0;j<=listAnnualSchedule.size()-1;j++){
            String tempTime=null;
            Integer templateId=listAnnualSchedule.get(j).getTemplateId();
            //获取到活动的开始时间,如果是0则是第一个开始时间未设置的开始时间，不是则为上一个的开始时间加上上一个的模板开启天数
            if (j == 0) {
                tempTime = start;
            } else {
                tempTime = DateUtil.addDaysByCalendar(listAnnualSchedule.get(j - 1).getTempTime(), listAnnualSchedule.get(j - 1).getTemplateOpendays());
            }
            logger.info("tempTime:"+tempTime);
            System.out.println("tempTime:"+tempTime);
            listAnnualSchedule.get(j).setTempTime(tempTime);
            List <TemplateManager> listTemplateManager = templateManagerService.listTemplateManagerByTemplateId(templateId);
            for (TemplateManager templateManager:listTemplateManager){
                String end=null;
                if(templateManager.getDelayDays()==0 || templateManager.getDelayStatus()==0){
                    //根据开始时间和活动开启天数和结束时间进行获取活动的结束时间
                 end=DateUtil.addDaysByCalendar(listAnnualSchedule.get(j).getTempTime(),templateManager.getOpenTakesDay()-1);
                }else {
                    //根据开始时间和活动开启天数和结束时间进行获取活动的结束时间
                    end=DateUtil.addDaysByCalendar(listAnnualSchedule.get(j).getTempTime(),templateManager.getOpenTakesDay()+templateManager.getDelayDays()-1);
                }
                logger.info("end:"+end);
                System.out.println("end:"+end);
                String hmm=templateManager.getEndtime();
                String postfix = "stime," + listAnnualSchedule.get(j).getTempTime() + "%2000:00:01,etime," + end + "%20" + hmm + ",value,1,state,1";
//                http://47.104.227.113:8080/?mod=control&act=addAct&server=node_360_1&aid=1001&value=1&stime=2018-10-13%2023:59:59&etime=2018-10-15%2023:59:59&state=1
                URI uri = new URIBuilder("http://47.104.227.113:8080/").setParameter("mod", "control").setParameter("act", "addAct").
                        setParameter("server", serverName).setParameter("aid", templateManager.getActiveId()).setParameter("fields", postfix).build();
                //11.2获取到url
                String url = URLDecoder.decode(uri.toString(), "UTF-8");
//                logger.info("url:"+url);
                System.out.println(url);
                HttpGet httpGet = new HttpGet(url);
                //响应开启的结果
//                CloseableHttpResponse response1;
//                try {
//                    response1 = httpClient.execute(httpGet);
//                    if (response1.getStatusLine().getStatusCode() == 200) {
//                        String content = EntityUtils.toString(response1.getEntity(), "UTF-8");
//                        System.out.println("响应的内容为:" + content);
//                        logger.info("content:" + content);
//                    }
//                } catch (IOException e) {
//                    logger.debug("开启活动失败!");
//                }
//                http://47.104.227.113:8080/?mod=control&act=modifyAct&server=node_360_1&aid=1001&fields=stime,2018-10-14%2018:00:00,etime,2018-10-14%2018:59:59,state,1,value,1
                //活动调整
                URI uri1 = new URIBuilder("http://47.104.227.113:8080/").setParameter("mod", "control").setParameter("act", "modifyAct").
                        setParameter("server", serverName).setParameter("aid", templateManager.getActiveId()).setParameter("fields", postfix).build();
                HttpGet httpGet1 = new HttpGet(uri1);
                System.out.println(url);
                //响应调整的结果
                CloseableHttpResponse response2;
//                try {
//                    response2 = httpClient.execute(httpGet1);
//                    if (response2.getStatusLine().getStatusCode() == 200) {
//                        String content1 = EntityUtils.toString(response2.getEntity(), "UTF-8");
//                        System.out.println("响应的内容为:" + content1);
//                        logger.info("content:" + content1);
//                    }
//                } catch (IOException e) {
//                    logger.debug("开启活动失败!");
//                }
                AnnualPlanOpen planOpen=new AnnualPlanOpen();
                planOpen.setServerId(annualPlanOpen.getServerId());
                planOpen.setAnnualId(annualPlanOpen.getAnnualId());
                planOpen.setTemplateId(templateId);
                planOpen.setStart(listAnnualSchedule.get(j).getTempTime());
                planOpen.setEnd(end);
                planOpen.setOpenTime(DateUtil.format1(new Date()));
                try {
                    i = annualPlanOpenMapper.insertSelective(planOpen);
                } catch (Exception e) {
                   logger.debug(e.getMessage());
                }
                sum+=i;
            }
        }

        return sum;
    }
    
    /*
    *  
    * 展示开启计划
    * @author hlx
    * @date 2018\12\27  16:23
    * @param [pageNum, pageSize]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List <AnnualPlanOpen> list = annualPlanOpenMapper.listAnnualPlanOpen();
        for(AnnualPlanOpen annualPlanOpen :list){
            annualPlanOpen.setServerName(serverService.getServerName(annualPlanOpen.getServerId()));
            annualPlanOpen.setAnnualName(annualNameService.getAnnualPlanName(annualPlanOpen.getAnnualId()));
            annualPlanOpen.setTemplateName(templateNameService.templateName(annualPlanOpen.getTemplateId()));
        }
        Page<AnnualPlanOpen> page=( Page<AnnualPlanOpen>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }


}
