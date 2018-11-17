package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.SealNumber;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;

public interface SealNumberService {

    int addSealNumber(String uIds ) throws URISyntaxException, UnsupportedEncodingException, BizException;

    int updateSealNumber(String uIds) throws BizException, URISyntaxException, UnsupportedEncodingException;
}
