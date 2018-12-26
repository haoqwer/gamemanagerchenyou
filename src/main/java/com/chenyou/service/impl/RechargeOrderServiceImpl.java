package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.RechargeOrderMapper;
import com.chenyou.pojo.Order;
import com.chenyou.pojo.RechargeOrder;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.OrderService;
import com.chenyou.service.RechargeOrderService;
import com.chenyou.service.ServerService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.sun.xml.internal.rngom.util.Uri;
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
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-19 19:43
 * @Version: 1.0
 **/
@Service
@Transactional
public class RechargeOrderServiceImpl implements RechargeOrderService {


    private static final Logger logger = LoggerFactory.getLogger(RechargeOrderServiceImpl.class);

    @Autowired
    private RechargeOrderMapper rechargeOrderMapper;

    @Autowired
    private OrderService orderService;


    @Autowired
    private ServerService serverService;

    /*
     *
     * 充值补单
     * @author hlx
     * @date 2018\12\19 0019 19:44
     * @param
     * @return
     */

    @Override
    public int saveRechargeOrder(RechargeOrder rechargeOrder) throws BizException, URISyntaxException, UnsupportedEncodingException {
        condition(rechargeOrder);
        Order order = orderService.getOrderById(rechargeOrder.getOrderIndex());
        rechargeOrder.setRechargeCount(order.getAmount());
        rechargeOrder.setRechargeTime(DateUtil.format1(new Date()));
        rechargeOrder.setOrderName(order.getOrderName());
        CloseableHttpClient httpClient = HttpClients.createDefault();
//        http://47.104.227.113:8080/?mod=sendPay&act=sp&uid=8246539&jfd=1&amount=6&server=1
        URIBuilder uri = new URIBuilder("http://47.104.227.113:8080/").setParameter("mod", "sendPay").setParameter("act", "sp").setParameter("uid", rechargeOrder.getUid()).setParameter("jfd", order.getOrderIndex() + "").setParameter("amount", order.getAmount() + "").setParameter("server", rechargeOrder.getServerId() + "");
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
            throw new BizException(BizException.CODE_PARM_LACK, "充值补单开启失败!");
        }
        return rechargeOrderMapper.insertSelective(rechargeOrder);
    }

    public void condition(RechargeOrder rechargeOrder) throws BizException {
        if (null == rechargeOrder.getServerId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入区服ID");
        }
        if (StringUtils.isEmpty(rechargeOrder.getUid())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入用户ID");
        }
        if (null == rechargeOrder.getOrderIndex()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择充值物品!");
        }
        if (StringUtils.isEmpty(rechargeOrder.getRemark())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入备注!");
        }

    }

    /*
     *
     * 分页展示
     * @author hlx
     * @date 2018\12\20 0020 15:33
     * @param [pageNum, pageSize]
     * @return com.chenyou.pojo.entity.PageResult
     */
    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List <RechargeOrder> list = rechargeOrderMapper.selectByExample(null);
        for (RechargeOrder rechargeOrder : list) {
            rechargeOrder.setServerName(serverService.getServerName(rechargeOrder.getServerId()));
        }
        Page <RechargeOrder> page = (Page <RechargeOrder>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }


    @Override
    public PageResult findSearch(String start, String end, Integer serverId, int pageNum, int pageSize) throws BizException, ParseException {

        PageHelper.startPage(pageNum, pageSize);
        DateUtil.exchangeTime(start, end);
        List <RechargeOrder> list = rechargeOrderMapper.listRechargeOrder(start, end, serverId);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "当前没有展示的数据!");
        }
        for (RechargeOrder rechargeOrder : list) {
            rechargeOrder.setServerName(serverService.getServerName(rechargeOrder.getServerId()));
        }
        Page <RechargeOrder> page = (Page <RechargeOrder>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }

}
