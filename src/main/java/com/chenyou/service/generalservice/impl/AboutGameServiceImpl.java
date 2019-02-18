package com.chenyou.service.generalservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AboutGameMapper;
import com.chenyou.pojo.AboutGame;
import com.chenyou.pojo.AboutGameExample;
import com.chenyou.service.generalservice.AboutGameService;
import com.chenyou.utils.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
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

    /*
    *
    * 游戏概况查询
    * @author hlx
    * @date 2018\11\27 0027 15:55
    * @param [serverId, channelId]
    * @return com.chenyou.pojo.AboutGame
    */
    @Override
    public AboutGame getAboutGame(Integer serverId, String channelId) throws BizException {
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
        //3.查询出数据
        list = aboutGameMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思,当前没有数据!");
        }
        return list.get(0);
    }

//    @Scheduled(cron="0/5 * *  * * ? ")
    @Override
    public void testSchedule() {
        System.out.println("每过5秒将会执行一次吗?testSchedule");
        System.out.println("----------");

    }
}
