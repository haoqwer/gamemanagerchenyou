package com.chenyou.service;

import com.chenyou.pojo.Notify;

import java.text.ParseException;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-08 10:11
 * @Version: 1.0
 **/
public interface NotifyService {
    List<Notify> getListNotify();
    List<Notify> addNotify() throws ParseException;
}
