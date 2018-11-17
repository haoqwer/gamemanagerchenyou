package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.SealNumberMapper;
import com.chenyou.pojo.SealNumber;
import com.chenyou.pojo.SealNumberExample;
import com.chenyou.service.SealNumberService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import org.apache.http.client.utils.URIBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class SealNumberServiceImpl  implements SealNumberService {


    @Autowired
    private SealNumberMapper sealNumberMapper;

    @Override
    public int addSealNumber(String uIds) throws URISyntaxException, UnsupportedEncodingException, BizException {
        if(StringUtils.isEmpty(uIds)){
            throw new BizException(BizException.CODE_PARM_LACK,"请输入用户uid");
        }
        //将uids进行切割
//        uIds.split(",")
        int i=0;
        SealNumber sealNumber = new SealNumber();
        String[] uuidS = uIds.split(",");
        for (String uid : uuidS) {
            sealNumber.setUid(uid);
            sealNumber.getRecordTime(DateUtil.format1(new Date()));
            sealNumber.setStatus("1");
//            http://47.104.227.113:8080/?mod=user&act=set&uid=4290563&key=state&value=1
            URI uri = new URIBuilder("http://47.104.227.113:8080/").setParameter("mod", "user").setParameter("act", "set").setParameter("uid", uid).setParameter("key", "state").setParameter("value", "1").build();
            String url = URLDecoder.decode(uri.toString(), "UTF-8");
            System.out.println("url地址为:" + url);
            sealNumberMapper.insert(sealNumber);
            i++;
        }
        return 1;
    }

    @Override
    public int updateSealNumber(String uIds) throws BizException, URISyntaxException, UnsupportedEncodingException {
        if(StringUtils.isEmpty(uIds)){
            throw new BizException(BizException.CODE_PARM_LACK,"请输入用户uid");
        }
        int i=0;
        String[] uuidS = uIds.split(",");
        for(String uuid :uuidS){
            SealNumberExample example=new SealNumberExample();
            SealNumberExample.Criteria criteria = example.createCriteria();
            criteria.andUidEqualTo(uuid);
            List <SealNumber> list = sealNumberMapper.selectByExample(example);
            list.get(0).setStatus("0");
//            http://47.104.227.113:8080/?mod=user&act=set&uid=4290563&key=state&value=1
            URI uri=new URIBuilder("http://47.104.227.113:8080/").setParameter("mod","user").setParameter("act","set").setParameter("uid",uuid).
                    setParameter("key","state").setParameter("value","1").build();
            String url = URLDecoder.decode(uri.toString(), "UTF-8");
            System.out.println("url地址为:" + url);
            sealNumberMapper.updateByPrimaryKeySelective(list.get(0));
            i++;
        }
        return i;
    }
}