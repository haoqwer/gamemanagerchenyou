package com.chenyou.service.generalservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.AboutGame;

public interface AboutGameService {
    AboutGame getAboutGame(Integer serverId, String channelId) throws BizException;
    public void testSchedule();
}
