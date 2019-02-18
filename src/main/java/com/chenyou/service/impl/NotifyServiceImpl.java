package com.chenyou.service.impl;

import com.chenyou.mapper.NotifyMapper;
import com.chenyou.pojo.Notify;
import com.chenyou.pojo.NotifyActi;
import com.chenyou.pojo.OpenPlan;
import com.chenyou.service.NotifyActiService;
import com.chenyou.service.NotifyService;
import com.chenyou.service.OpenPlanService;
import com.chenyou.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-08 10:12
 * @Version: 1.0
 **/
@Service
@Transactional(timeout = 500)
public class NotifyServiceImpl implements NotifyService {
    @Autowired
    private NotifyMapper notifyMapper;

    @Autowired
    private OpenPlanService openPlanService;


    @Autowired
    private NotifyActiService notifyActiService;

    @Override
    public List<Notify> getListNotify() {
        return notifyMapper.selectByExample(null);
    }

    //进行调度
    @Scheduled(cron="0/5 * *  * * ? ")
    @Override
    public void addNotifySchedule() throws ParseException {
        int sum=0;
        //1.获取到所有包含公告模板的活动
        List <OpenPlan> listOpenPlan = openPlanService.getListOpenPlanByAids();
        //
        List<Notify> listNotify=new ArrayList <>();
        //先删除活动公告
//        int i1 = notifyMapper.deleteByExample(null);
        for(OpenPlan openPlan:listOpenPlan){
            System.out.println(openPlan.getId()+"----"+openPlan.getAid());
            //2.1创建公告类
            Notify notify=new Notify();
            System.out.println(openPlan.getAid());
            //2.2获取到公告模板
            NotifyActi notifyActi = notifyActiService.getNotifyActiByAid(openPlan.getAid());
            //2.3获取到开始时间
            String stime = openPlan.getStime();
            //2.4获取到结束时间
            String etime = openPlan.getEtime();
            //2.5获取到公告内容
            String con = notifyActi.getNoity();
            con=content(con,stime,etime);
            //2.6获取到标题
            notify.setLtitle(notifyActi.getLtitle());
            notify.setStitle(notifyActi.getStitle());
            notify.setNoity(con);
            System.out.println(DateUtil.getDate(stime));
            Date st=DateUtil.getDate(stime);
            notify.setStime((int) (st.getTime()/1000));
            Date et=DateUtil.getDate(etime);
            notify.setEtime((int) (et.getTime()/1000));
            notify.setSid(openPlan.getId());
            notify.setChannid("test_01");
            System.out.println(notify);
//            int i = notifyMapper.insertSelective(notify);
//            sum+=i;
        }

    }




    @Override
    public int  addNotify() throws ParseException {
        int sum=0;
        //1.获取到所有包含公告模板的活动
        List <OpenPlan> listOpenPlan = openPlanService.getListOpenPlanByAids();
        //
        List<Notify> listNotify=new ArrayList <>();
        //先删除活动公告
//        int i1 = notifyMapper.deleteByExample(null);
        for(OpenPlan openPlan:listOpenPlan){
            System.out.println(openPlan.getId()+"----"+openPlan.getAid());
            //2.1创建公告类
            Notify notify=new Notify();
            System.out.println(openPlan.getAid());
            //2.2获取到公告模板
            NotifyActi notifyActi = notifyActiService.getNotifyActiByAid(openPlan.getAid());
            //2.3获取到开始时间
            String stime = openPlan.getStime();
            //2.4获取到结束时间
            String etime = openPlan.getEtime();
            //2.5获取到公告内容
            String con = notifyActi.getNoity();
            con=content(con,stime,etime);
            //2.6获取到标题
            notify.setLtitle(notifyActi.getLtitle());
            notify.setStitle(notifyActi.getStitle());
            notify.setNoity(con);
            System.out.println(DateUtil.getDate(stime));
            Date st=DateUtil.getDate(stime);
            notify.setStime((int) (st.getTime()/1000));
            Date et=DateUtil.getDate(etime);
            notify.setEtime((int) (et.getTime()/1000));
            notify.setSid(openPlan.getId());
            notify.setChannid("test_01");
//            listNotify.add(notify);
            System.out.println(notify);
            int i = notifyMapper.insertSelective(notify);
            sum+=i;
        }
        return sum;
    }

    /*
    *
    * 拼接字符串
    * @author hlx
    * @date 2019\1\14 0014 19:40
    * @param [content, start, end]
    * @return java.lang.String
    */
    public static String  content(String content,String start,String end) throws ParseException {
        int  i = content.indexOf("：");
        String s1=content.substring(0,i+1);
        String s2="||"+DateUtil.format3(DateUtil.parse(start))+"--"+DateUtil.format3(DateUtil.parse(end))+"|222*212*60||";
        return  s1+s2;
    }
}
