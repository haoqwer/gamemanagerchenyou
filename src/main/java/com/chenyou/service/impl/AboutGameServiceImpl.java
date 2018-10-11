package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AboutGameMapper;
import com.chenyou.pojo.AboutGame;
import com.chenyou.pojo.AboutGameExample;
import com.chenyou.service.AboutGameService;
import com.chenyou.utils.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AboutGameServiceImpl implements AboutGameService {


    private static final Logger logger = LoggerFactory.getLogger(AboutGame.class);

    @Autowired
    private AboutGameMapper aboutGameMapper;

    @Override
    public AboutGame getAboutGame(Integer serverId, String channelId) throws BizException {
        //根据区服或者渠道来查询对应的游戏概况的数据
        AboutGameExample example = new AboutGameExample();
        AboutGameExample.Criteria criteria = example.createCriteria();
        logger.info("serverId:" + serverId);
        logger.info("channelId:"+channelId);
        if (null == serverId && null == channelId) {
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        if (null == serverId) {
            criteria.andServerIdIsNull();
        }
        if (null == channelId) {
            criteria.andChannelIdIsNull();
        }
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <AboutGame> list = aboutGameMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
        }
        return list.get(0);
    }

}
