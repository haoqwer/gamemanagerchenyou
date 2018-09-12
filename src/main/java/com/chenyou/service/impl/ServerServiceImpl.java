package com.chenyou.service.impl;

import com.chenyou.mapper.ServerMapper;
import com.chenyou.pojo.Server;
import com.chenyou.service.ServerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ServerServiceImpl implements ServerService {
    @Autowired
    private ServerMapper serverMapper;

    /**
     * 展示所有的server信息
     */
    @Override
    public List<Server> listServer() {
        return serverMapper.selectByExample(null);
    }
}
