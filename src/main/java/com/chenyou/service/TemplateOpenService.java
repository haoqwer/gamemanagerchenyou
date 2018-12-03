package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.TemplateOpen;

import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.text.ParseException;

/**
 * java类简单作用描述
 *
 * @ProjectName: chenyoumanager
 * @Package: com.chenyou.service
 * @ClassName: TemplateOpenService
 * @Description: 类作用描述
 * @Author: hlx
 * @CreateDate: 2018-11-21 18:04
 * @Version: 1.0
 **/
public interface TemplateOpenService {

    int saveTemplateOpen(TemplateOpen templateOpen) throws BizException, ParseException, URISyntaxException, UnsupportedEncodingException;

}
