package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.ActivitieOpenMapper;
import com.chenyou.mapper.ServerMapper;
import com.chenyou.pojo.ActivitieOpen;
import com.chenyou.pojo.ActivitieOpenExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ActivitieOpenService;
import com.chenyou.service.ServerService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import jdk.nashorn.internal.runtime.FindProperty;
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
import java.util.Map;

@Service
@Transactional
public class ActivitieOpenServiceImpl  implements ActivitieOpenService {


    private static final Logger logger=LoggerFactory.getLogger(ActivitieOpenServiceImpl.class);


    @Autowired
    private ServerService serverService;

    @Autowired
    private ActivitieOpenMapper activitieOpenMapper;


    @Override
    public int addActivitieOpent(List<ActivitieOpen> activiteOpens) throws BizException, URISyntaxException, ParseException, UnsupportedEncodingException {
//        http://47.104.240.79:8080/?mod=control&act=addAct&server=node_360_3&aid=5003&fields=stime,2018-11-16%2000:00:01,etime,2018-11-23%2023:59:59,value,1,state=1
        //中间需要加的部分有区服名称,
        String postfix = null;
        String temp = null;
        /**
         * 批量开启活动
         */
        int i = 0;
        CloseableHttpClient httpClient = HttpClients.createDefault();
        if (StringUtils.isEmpty(activiteOpens)) {
            throw new BizException(BizException.CODE_PARM_LACK, "开启的活动数据不能为空!");
        }
        for (ActivitieOpen activitieOpen : activiteOpens) {
            logger.info("activiteOpen:" + activitieOpen);
            //获取到参数
            if (null == activitieOpen.getServerId()) {
                throw new BizException(BizException.CODE_PARM_LACK, "请选择一个区服进行活动开启!");
            }
            if (StringUtils.isEmpty(activitieOpen.getActiveNum())) {
                throw new BizException(BizException.CODE_PARM_LACK, "请编写活动编号!");
            }
            if (StringUtils.isEmpty(activitieOpen.getStart())) {
                throw new BizException(BizException.CODE_PARM_LACK, "请选择活动开启时间!");
            }
            if (StringUtils.isEmpty(activitieOpen.getEnd())) {
                throw new BizException(BizException.CODE_PARM_LACK, "请选择活动开启结束时间!");
            }
            // 对时间进行判断如果开始时间大于结束时间则进行交换
            if (DateUtil.equalTime(activitieOpen.getStart(), activitieOpen.getEnd())) {
                temp = activitieOpen.getEnd();
                activitieOpen.setEnd(activitieOpen.getStart());
                activitieOpen.setStart(temp);
            }
            //区服名称
            String serverName = serverService.getServerName(activitieOpen.getServerId());
            //活动开启和结束时间
            Map <String, Object> mapStart = DateUtil.gettime(activitieOpen.getStart());
            Map <String, Object> mapEnd = DateUtil.gettime(activitieOpen.getEnd());
            String startBefore = (String) mapStart.get("ymd");
            String startAfter = (String) mapStart.get("hms");
            String endBefore = (String) mapEnd.get("ymd");
            String endAfter = (String) mapEnd.get("hms");
            postfix = "stime," + startBefore + "%20" + startAfter + ",etime," + endBefore + "%20" + endAfter + ",value,1,state,1";
            System.out.println(postfix);
            System.out.println("postfix" + postfix);
//            http://47.104.240.79:8080/?mod=control&act=addAct&server=node_360_3&aid=5003&fields=stime,2018-11-16%2000:00:01,etime,2018-11-23%2023:59:59,value,1,state=1
            URI uri = new URIBuilder("http://47.104.240.79:8080/").setParameter("mod", "control").
                    setParameter("act", "addAct").setParameter("server", serverName).setParameter("aid", activitieOpen.getActiveNum()).
                    setParameter("fields", postfix).build();
            //获取到url
            String url = URLDecoder.decode(uri.toString(), "UTF-8");
//            HttpGet httpGet = new HttpGet(url);
            System.out.println("路径为:" + url);
//            logger.info("url:"+url);
//            CloseableHttpResponse response;
//            try {
//                response = httpClient.execute(httpGet);
//                if (response.getStatusLine().getStatusCode() == 200) {
//                    String content = EntityUtils.toString(response.getEntity(), "UTF-8");
//                    System.out.println("响应的内容为:" + content);
//                    logger.info("content:"+content);
//                }
//            } catch (IOException e) {
//               throw  new BizException(BizException.CODE_PARM_LACK,"不好意思活动开启失败!");
//            }
            System.out.println();
            //进行批量插入
            activitieOpen.setRecordTime(DateUtil.format1(new Date()));
            activitieOpen.setStatus(1);
            i = activitieOpenMapper.insert(activitieOpen);
        }
        return i;
    }

    @Override
    public int updateActivitieOpent(List <ActivitieOpen> activitieOpens) throws BizException {
        int i=0;
        if (StringUtils.isEmpty(activitieOpens)) {
            throw new BizException(BizException.CODE_PARM_LACK, "开启的活动数据不能为空!");
        }
        for(ActivitieOpen activitieOpen :activitieOpens){
            if (null == activitieOpen.getServerId()) {
                throw new BizException(BizException.CODE_PARM_LACK, "请选择一个区服进行活动开启!");
            }
            if (StringUtils.isEmpty(activitieOpen.getActiveNum())) {
                throw new BizException(BizException.CODE_PARM_LACK, "请编写活动编号!");
            }
            if (StringUtils.isEmpty(activitieOpen.getStart())) {
                throw new BizException(BizException.CODE_PARM_LACK, "请选择活动开启时间!");
            }
            if (StringUtils.isEmpty(activitieOpen.getEnd())) {
                throw new BizException(BizException.CODE_PARM_LACK, "请选择活动开启结束时间!");
            }


        }
        return 0;
    }

    @Override
    public PageResult findPage(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        ActivitieOpenExample example = new ActivitieOpenExample();
        List <ActivitieOpen> list = activitieOpenMapper.selectByExample(null);
        for (ActivitieOpen activitieOpen : list) {
            activitieOpen.setServerName(serverService.getServerName(activitieOpen.getServerId()));
        }
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思当前没有数据！");
        }
        Page <ActivitieOpen> page = (Page <ActivitieOpen>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }

    @Override
    public PageResult findSearch(ActivitieOpen activitieOpen, int pageSize, int pageNum) {
        PageHelper.startPage(pageNum,pageSize);
        ActivitieOpenExample example=new ActivitieOpenExample();
        ActivitieOpenExample.Criteria criteria = example.createCriteria();
        if(activitieOpen.getServerId() !=null){
            criteria.andServerIdEqualTo(activitieOpen.getServerId());
        }
        if(! StringUtils.isEmpty(activitieOpen.getStart())){
            criteria.andStartEqualTo(activitieOpen.getStart());
        }
        if(! StringUtils.isEmpty(activitieOpen.getEnd())){
            criteria.andEndEqualTo(activitieOpen.getEnd());
        }
        if(! StringUtils.isEmpty(activitieOpen.getActiveNum())){
            criteria.andActiveNumLike(activitieOpen.getActiveNum());
        }
        List <ActivitieOpen> list = activitieOpenMapper.selectByExample(example);
        Page<ActivitieOpen> page=(Page<ActivitieOpen>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }


}
