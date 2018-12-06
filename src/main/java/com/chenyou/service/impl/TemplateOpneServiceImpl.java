package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.TemplateManagerMapper;
import com.chenyou.mapper.TemplateOpenMapper;
import com.chenyou.pojo.TemplateManager;
import com.chenyou.pojo.TemplateManagerExample;
import com.chenyou.pojo.TemplateOpen;
import com.chenyou.pojo.TemplateOpenExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ServerService;
import com.chenyou.service.TemplateOpenService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.http.client.utils.URIBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
        String end;
        String start;
        int openDay = 0;
        int delyDay = 0;
        String serverName;
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
        serverName = serverService.getServerName(templateOpen.getServerId());
        //2.获取到模板管理的数据
        TemplateManagerExample example = new TemplateManagerExample();
        TemplateManagerExample.Criteria criteria = example.createCriteria();
        criteria.andTemplateIdEqualTo(templateOpen.getTemplateId());
        listManager = templateManagerMapper.selectByExample(example);
        //3.判断模板管理的数据是否为空
        if (StringUtils.isEmpty(listManager)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思，当前模板管理没有数据!");
        }
        start = templateOpen.getStart();
        for (TemplateManager templateManager : listManager) {
            if (templateManager.getOpenTakesDay() == 0) {
                throw new BizException(BizException.CODE_PARM_LACK, "开服天数不能为0!");
            }
            openDay = templateManager.getOpenTakesDay();
            delyDay = templateManager.getDelayDays();
            //4.判断是否延期来确定结束的时间是
            if (templateManager.getDelayStatus() == 0 || delyDay == 0) {
                //4.1表示没有延期
                end = DateUtil.addDaysByCalendar(start, openDay);
            } else {
                end = DateUtil.addDaysByCalendar(start, openDay + delyDay);
            }
            // http://47.104.240.79:8080/?mod=control&act=addAct&server=node_360_3&aid=5003&fields=stime,2018-11-16%2000:00:01,etime,2018-11-23%2023:59:59,value,1,state=1
            String postfix = "stime," + start + "%2000:00:01,etime," + end + "%2023:59:59,value,1,state=1";
            URI uri = new URIBuilder("http://47.104.240.79:8080/").setParameter("mod", "control").setParameter("act", "addAct").
                    setParameter("server", serverName).setParameter("aid", templateManager.getActiveId()).setParameter("fields", postfix).build();
            String url = URLDecoder.decode(uri.toString(), "UTF-8");
            templateOpen.setActiveId(templateManager.getActiveId());
            templateOpen.setEnd(end);
            templateOpen.setDelayDays(delyDay);
            templateOpen.setRecordTime(DateUtil.format1(new Date()));
            i = templateOpenMapper.insertSelective(templateOpen);
            sum += i;
            System.out.println(url);
        }
        return sum;
    }

    @Override
    public PageResult findPage(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        List <TemplateOpen> list = templateOpenMapper.listTemplateOpen();
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思当前没有数据!");
        }
        Page<TemplateOpen>  page=( Page<TemplateOpen>)list;
        return new PageResult(page.getTotal(),page.getResult());
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
