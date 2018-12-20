package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.SealNumber;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;

public interface SealNumberService {

    int addSealNumber(String uIds ,Integer serverId) throws URISyntaxException, UnsupportedEncodingException, BizException;

    int updateSealNumber(String uIds,Integer serverId) throws BizException, URISyntaxException, UnsupportedEncodingException;
}
