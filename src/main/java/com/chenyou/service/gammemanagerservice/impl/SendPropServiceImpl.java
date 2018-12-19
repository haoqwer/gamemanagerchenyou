package com.chenyou.service.gammemanagerservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.SendPropMapper;
import com.chenyou.pojo.SendProp;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.ServerService;
import com.chenyou.service.gammemanagerservice.PropService;
import com.chenyou.service.gammemanagerservice.SendPropService;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.apache.http.client.utils.URIBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-18 18:10
 * @Version: 1.0
 **/
@Service
@Transactional
public class SendPropServiceImpl implements SendPropService {

    private static final Logger logger = LoggerFactory.getLogger(SendPropServiceImpl.class);

    @Autowired
    private PropService propService;

    @Autowired
    private SendPropMapper sendPropMapper;

    @Autowired
    private ServerService serverService;

    @Override
    public int saveSendProp(List <SendProp> listSendProp) throws BizException, URISyntaxException, UnsupportedEncodingException {
        if (StringUtils.isEmpty(listSendProp)) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入发送道具数据");
        }
        int sum = 0;
        String userIds = null;
        String title = null;
        String content = null;
//        List<String> attach=new ArrayList <>();
//        List<String> uids=new ArrayList <>();
        String attach = "";
        String uids = "";
        //获取第一个SendPro因为大部分数据都是一致的
        SendProp firstSendPro = listSendProp.get(0);
        conditions(firstSendPro);
        //拼到uids,判断是否是全服送还是个人发送
        if(null !=firstSendPro.getServerId()){
                uids=serverService.getServerName(firstSendPro.getServerId());
        }else {
            userIds = firstSendPro.getUids();
            String[] oldUserIds = userIds.split(",");
            for (int i = 0; i <= oldUserIds.length - 1; i++) {
                if (i == oldUserIds.length - 1) {
                    System.out.println(oldUserIds[i]);
                    uids = uids + oldUserIds[i];
                } else {
                    uids = uids + oldUserIds[i] + ",";
                }
            }
        }
        logger.debug(uids);
        System.out.println(uids);

        //获取到title
        title = firstSendPro.getTitle();
        //获取到cotent
        content = firstSendPro.getContent();
        for (int j = 0; j <= listSendProp.size() - 1; j++) {
            conditions(listSendProp.get(j));
            //获取到道具id
            Integer propId = listSendProp.get(j).getPropId();
            Integer propCount = listSendProp.get(j).getPropCount();
            if (listSendProp.size() == 1) {
                attach = propId.toString() + "," + propCount;
            } else {
                if (j == listSendProp.size() - 1) {
                    attach = attach + propId.toString() + "," + propCount.toString();
                } else {
                    attach = attach + propId.toString() + "," + propCount + ",";
                }
            }
            listSendProp.get(j).setPropName(propService.propName(propId));
            listSendProp.get(j).setUids(uids);
            int i = sendPropMapper.insertSelective(listSendProp.get(j));
            sum += i;
        }
        logger.debug(attach);
        System.out.println(attach);
        //http://gamejy.chyoukj.com:8080/?mod=mail&act=sendMail&title=道具发送&msg=道具发送&fromuid=0&attach=10048,10,1312,5,130910&type=1&uids=1001,1002,1003
        URI uri = new URIBuilder("http://gamejy.chyoukj.com:8080/").setParameter("mod", "mail").
                setParameter("act", "sendMail").setParameter("title", title).setParameter("msg", content).
                setParameter("fromuid", "0").setParameter("attach", attach).setParameter("type", "1").setParameter("uids", uids).build();
        //获取到url
        String url = URLDecoder.decode(uri.toString(), "UTF-8");
//            HttpGet httpGet = new HttpGet(url);
        System.out.println("路径为:" + url);
        return sum;
    }

    /*
    *
    * 查找已经发送的道具
    * @author hlx
    * @date 2018\12\19 0019 17:27
    * @param [pageNum, pageSize]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult findPage(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        List <SendProp> list = sendPropMapper.selectByExample(null);
        for(SendProp sendProp:list){
            sendProp.setPropName(propService.propName(sendProp.getPropId()));
        }
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思当前没有数据!");
        }
        Page<SendProp> page=(Page<SendProp>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }

    public static void conditions(SendProp sendProp) throws BizException {
        if( ! StringUtils.isEmpty(sendProp.getUids()) && null !=sendProp.getServerId()){
            throw new BizException(BizException.CODE_PARM_LACK,"道具发送区服和玩家ID只能选择一个!");
        }
        if (StringUtils.isEmpty(sendProp.getContent())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入内容!");
        }
        if (StringUtils.isEmpty(sendProp.getTitle())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入标题!");
        }
        if (null == sendProp.getPropId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择道具");
        }
        if (null == sendProp.getPropCount()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入道具数量");
        }
        //设置首端尾端不能出现空格
     if(  ! StringUtils.isEmpty(sendProp.getUids())){
         if (sendProp.getUids().substring(0, 1).equals(",")) {
             throw new BizException(BizException.CODE_PARM_LACK, "uids开头不能出现,");
         }
         sendProp.setUids(sendProp.getUids().trim());
     }
    }
}
