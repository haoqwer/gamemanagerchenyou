package com.chenyou.controller;

import com.chenyou.base.BizException;
import com.chenyou.pojo.ActivitieOpen;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.pojo.entity.Result;
import com.chenyou.service.ActivitieOpenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.URISyntaxException;
import java.text.ParseException;
import java.util.List;

/**
 * 活动开启
 */
@RestController
@RequestMapping("/activitie")
public class ActivitieOpentController {

    @Autowired
    private ActivitieOpenService activitieOpenService;

    /**
     * 批量插入活动并开启活动
     * @param activitieOpenList
     * @return
     * @throws BizException
     * @throws URISyntaxException
     * @throws ParseException
     */
    @RequestMapping("/open")
    public Result open(List <ActivitieOpen> activitieOpenList) throws BizException, URISyntaxException, ParseException {
        try {
            activitieOpenService.addActivitieOpent(activitieOpenList);
            return new Result(true, "活动开启成功!");
        } catch (BizException e) {
            e.printStackTrace();
            return new Result(false, "活动开启失败!");
        }
    }

    /**
     * 显示所有
     * @param page
     * @param rows
     * @return
     * @throws BizException
     */
    @RequestMapping("/findPage")
    public PageResult findPage(int page, int rows) throws BizException {
        return activitieOpenService.findPage(page, rows);
    }

    /**
     * 条件查询
     * @param activitieOpen
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("/findSearch")
    public PageResult findSearch(ActivitieOpen activitieOpen, int page, int rows) {
        return activitieOpenService.findSearch(activitieOpen, page, rows);
    }

}
