package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AddNewplayerMapper;
import com.chenyou.pojo.AddNewplayer;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.AddNewPlayerService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class AddNewPlayerServiceImpl implements AddNewPlayerService {

    private static final Logger logger = LoggerFactory.getLogger(AddNewPlayerServiceImpl.class);

    @Autowired
    private AddNewplayerMapper addNewplayerMapper;

    @Override
    public PageResult listAddNewPlayer(String start, String end, Integer serverId, String channelId, int pageSize, int rows) throws BizException, ParseException {
        String temp = null;
        PageHelper.startPage(pageSize, rows);
        List <AddNewplayer> list = new ArrayList <>();
        if (!StringUtils.isEmpty(start) && !StringUtils.isEmpty(end)) {
            if (DateUtil.parse(start).after(DateUtil.parse(end))) {
                temp = end;
                end = start;
                start = temp;
            }
        }
        if (serverId == null && channelId == null) {
                list = addNewplayerMapper.listAddNewPlayerByTime(start, end, serverId, channelId);
        } else {
                list = addNewplayerMapper.listAddNewPlayerByTimeAndId(start, end, serverId, channelId);
        }
        if (list.size() == 0 || list.isEmpty()) {
            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
        }
        Page <AddNewplayer> page = (Page <AddNewplayer>) list;
        return new PageResult(page.getTotal(), page.getResult());
//        String startTime = null;
//        String endTime = null;
//        String temp = null;
//        PageHelper.startPage(pageSize, rows);
//        List<AddNewplayer> addNewplayers=new ArrayList <>();
//        //1.判断server_id和channel_id是否为都为null
//        if( null != serverId || !StringUtils.isEmpty(channelId)){
//            if(!StringUtils.isEmpty(start)){
//                startTime=start;
//            }
//            if(!StringUtils.isEmpty(end)){
//                endTime=end;
//            }
//            if(!StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)){
//                if(DateUtil.parse(startTime).after(DateUtil.parse(endTime))){
//                    //前面时间大于后面时间
//                    temp=endTime;
//                    endTime=startTime;
//                    startTime=temp;
//                }
//            }
//            //2.判断时间
//
//            addNewplayers = addNewplayerMapper.listAddNewPlayerByTimeAndId(startTime, endTime, serverId, channelId);
//        }else{
//            //2.判断时间
//            if(!StringUtils.isEmpty(start)){
//                startTime=start;
//            }
//            if(!StringUtils.isEmpty(end)){
//                endTime=end;
//            }
//            if(!StringUtils.isEmpty(startTime) && !StringUtils.isEmpty(endTime)){
//                if(DateUtil.parse(startTime).after(DateUtil.parse(endTime))){
//                    //前面时间大于后面时间
//                    temp=endTime;
//                    endTime=startTime;
//                    startTime=temp;
//                }
//            }
//            addNewplayers= addNewplayerMapper.listAddNewPlayerByTime(startTime,endTime,serverId,channelId);
//        }
//        if (addNewplayers.size() == 0 || addNewplayers.isEmpty()) {
//            throw new BizException(BizException.CODE_RESULT_NULL, "不好意思,当前没有数据!");
//        }
//        Page <AddNewplayer> page = (Page <AddNewplayer>) addNewplayers;
//        return new PageResult(page.getTotal(), page.getResult());
    }

}
