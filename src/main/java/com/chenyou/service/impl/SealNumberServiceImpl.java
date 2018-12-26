package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.SealNumberMapper;
import com.chenyou.pojo.SealNumber;
import com.chenyou.pojo.SealNumberExample;
import com.chenyou.service.SealNumberService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
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
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class SealNumberServiceImpl implements SealNumberService {


    @Autowired
    private SealNumberMapper sealNumberMapper;


    private static final Logger logger = LoggerFactory.getLogger(SealNumberServiceImpl.class);

    @Override
    public int addSealNumber(String uIds, Integer serverId) throws URISyntaxException, UnsupportedEncodingException, BizException {
        if (StringUtils.isEmpty(uIds)) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入用户uid");
        }
        CloseableHttpClient httpClient = HttpClients.createDefault();
        //将uids进行切割
//        uIds.split(",")
        int i = 0;
        SealNumber sealNumber = new SealNumber();
        String[] uuidS = uIds.split(",");
        for (String uid : uuidS) {
            sealNumber.setUid(uid);
            sealNumber.getRecordTime(DateUtil.format1(new Date()));
            sealNumber.setStatus("1");
            sealNumber.setServerId(serverId);
//            http://47.104.227.113:8080/?mod=user&act=set&uid=4523068&key=state&value=1&server=1
            URI uri = new URIBuilder("http://47.104.227.113:8080/").setParameter("mod", "user").setParameter("act", "set").setParameter("uid", uid).setParameter("key", "state").setParameter("value", "1").setParameter("server", serverId + "").build();
            String url = URLDecoder.decode(uri.toString(), "UTF-8");
            HttpGet httpGet = new HttpGet(url);
            CloseableHttpResponse response;
            System.out.println("url地址为:" + url);
            try {
                response = httpClient.execute(httpGet);
                if (response.getStatusLine().getStatusCode() == 200) {
                    String content = EntityUtils.toString(response.getEntity(), "UTF-8");
                    System.out.println("响应的内容为:" + content);
                    logger.info("content:" + content);
                }
            } catch (IOException e) {
                throw new BizException(BizException.CODE_PARM_LACK, "封号失败!");
            }
            sealNumberMapper.insert(sealNumber);
            i++;
        }
        return 1;
    }

    @Override
    public int updateSealNumber(String uIds, Integer serverId) throws BizException, URISyntaxException, UnsupportedEncodingException {
        if (StringUtils.isEmpty(uIds)) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入用户uid");
        }
        CloseableHttpClient httpClient = HttpClients.createDefault();
        int i = 0;
        String[] uuidS = uIds.split(",");
        for (String uuid : uuidS) {
            SealNumberExample example = new SealNumberExample();
            SealNumberExample.Criteria criteria = example.createCriteria();
            criteria.andUidEqualTo(uuid);
            List <SealNumber> list = sealNumberMapper.selectByExample(example);
            list.get(0).setStatus("0");
//            http://47.104.227.113:8080/?mod=user&act=set&uid=4290563&key=state&value=1
            URI uri = new URIBuilder("http://47.104.227.113:8080/").setParameter("mod", "user").setParameter("act", "set").setParameter("uid", uuid).setParameter("key", "state").setParameter("value", "0").setParameter("server", serverId + "").build();
            String url = URLDecoder.decode(uri.toString(), "UTF-8");
            System.out.println("url地址为:" + url);
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
                throw new BizException(BizException.CODE_PARM_LACK, "封号失败!");
            }
            sealNumberMapper.updateByPrimaryKeySelective(list.get(0));
            i++;
        }
        return i;
    }
}
