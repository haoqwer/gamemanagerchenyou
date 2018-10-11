package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.AboutGame;

public interface AboutGameService {
    AboutGame getAboutGame(Integer serverId, String channelId) throws BizException;
}
