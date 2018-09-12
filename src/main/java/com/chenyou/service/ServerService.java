package com.chenyou.service;

import com.chenyou.pojo.Server;

import java.util.List;

public interface ServerService {
    /**
     * 查询出所有的Server数据
     * @return
     */
    List<Server> listServer();
}
