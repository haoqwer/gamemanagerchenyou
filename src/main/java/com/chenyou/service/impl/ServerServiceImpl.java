package com.chenyou.service.impl;

import com.chenyou.mapper.ServerMapper;
import com.chenyou.pojo.Server;
import com.chenyou.service.ServerService;
import com.chenyou.utils.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ServerServiceImpl implements ServerService {

    private static final Logger logger=LoggerFactory.getLogger(ServerServiceImpl.class);

    @Autowired
    private ServerMapper serverMapper;

    /**
     * 展示所有的server信息
     */
    @Override
    public List<Server> listServer() {
        return serverMapper.selectByExample(null);
    }

    /**
     * 根据serverId获取到serverName
     * @param serverId
     * @return
     */
    @Override
    public String getServerName(Integer serverId) {
        logger.info("serverId:"+serverId);
        Server server = serverMapper.selectByPrimaryKey(serverId);
        if (StringUtils.isNotNull(server)) {
            return server.getServerName();
        } else {
            return null;
        }
    }

    @Override
    public List <Server> findAll() {
        return serverMapper.selectByExample(null);
    }

    /**
     * 插入server
     * @param server
     */
    @Override
    public void addServer(Server server) {
    serverMapper.insert(server);
    }
}
