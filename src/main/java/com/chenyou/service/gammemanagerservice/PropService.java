package com.chenyou.service.gammemanagerservice;

import com.chenyou.base.BizException;
import com.chenyou.pojo.Prop;
import com.chenyou.pojo.entity.PageResult;

import java.util.List;

/**
 * @Description:
 * 道具的接口
 * 查询道具
 * 修改道具
 * 删除道具
 * @Author: hlx
 * @CreateDate: 2018-12-18 16:21
 * @Version: 1.0
 **/
public interface PropService {

    /*
    *
    * 使用excel导入道具数据
    * @author hlx
    * @date 2018\12\18  16:53
    * @param [listProp]
    * @return int
    */
    int saveProp(List<Prop> listProp);
    
    /**
    *  
    * 道具展示
    * @author hlx
    * @date 2018\12\18 0018 16:54
    * @param [pageNum, pageSize]
    * @return com.chenyou.pojo.entity.PageResult
    */
    PageResult findPage(int pageNum,int pageSize) throws BizException;

    /*
    *
    * 修改道具
    * @author hlx
    * @date 2018\12\18 0018 16:54
    * @param [prop]
    * @return int
    */
    int updateProp(Prop prop) throws BizException;

    List<Prop> listProp() throws BizException;

    String propName(Integer propId) throws BizException;


    List<Prop> listPropByPropLikeName(String propName);

    String checkPropIdUnique(Prop prop) throws BizException;

    String checkPropNameUnique(Prop prop) throws BizException;




}
