package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AboutGameMapper;
import com.chenyou.pojo.AboutGame;
import com.chenyou.pojo.AboutGameExample;
import com.chenyou.service.AboutGameService;
import com.chenyou.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AboutGameServiceImpl implements AboutGameService {

    @Autowired
    private AboutGameMapper aboutGameMapper;

    @Override
    public AboutGame getAboutGame(Integer ServerId,Integer channelId) throws BizException {
        //根据区服或者渠道来查询对应的游戏概况的数据
        AboutGameExample example = new AboutGameExample();
        AboutGameExample.Criteria criteria = example.createCriteria();
        if (ServerId != null) {
            criteria.andServerIdEqualTo(ServerId);
        }
        if (channelId != null) {
            criteria.andChannelIdEqualTo(channelId);
        }
        List <AboutGame> listAboutGame = aboutGameMapper.selectByExample(example);
        if (listAboutGame.size() == 0 || listAboutGame.isEmpty()) {
            throw new BizException(BizException.CODE_NO_LONIN, "当前数据为空");
        }
        return listAboutGame.get(0);
    }

}
