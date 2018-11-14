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

import java.util.ArrayList;
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
//        AboutGameExample example = new AboutGameExample();
//        AboutGameExample.Criteria criteria = example.createCriteria();
//        logger.info("serverId:" + serverId);
//        logger.info("channelId:"+channelId);
//        if (null == serverId && null == channelId) {
//            AboutGame aboutGame = aboutGameMapper.queryServerAndChannelCount();
//            aboutGame.setServerName("总和");
//            return  aboutGame;
//        }else {
//            if (null != serverId) {
//                criteria.andServerIdEqualTo(serverId);
//            }
//            if (null != channelId) {
//                criteria.andChannelIdEqualTo(channelId);
//            }
//            List <AboutGame> list = aboutGameMapper.selectByExample(example);
//            if (StringUtils.isEmpty(list)) {
//                throw new BizException(BizException.CODE_NO_LONIN, "不好意思,当前没有数据!");
//            }
//            return list.get(0);
//        }
        List <AboutGame> list = new ArrayList <>();
        AboutGameExample example = new AboutGameExample();
        AboutGameExample.Criteria criteria = example.createCriteria();
        //1.判断是否是做统计查询
        if (null == serverId && null == channelId) {
            //1.1是统计的数据
            criteria.andServerIdIsNull();
            criteria.andChannelIdIsNull();
        }
        //2.判断是否是区服和渠道的数据统计
        if (null != serverId) {
            criteria.andServerIdEqualTo(serverId);
        }
        if (null != channelId) {
            criteria.andChannelIdEqualTo(channelId);
        }
        list = aboutGameMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思,当前没有数据!");
        }
        return list.get(0);
    }

}
