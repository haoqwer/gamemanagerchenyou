package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.TemplateManager;
import com.chenyou.pojo.entity.PageResult;

import java.util.List;

public interface TemplateManagerService {
    
    /*
    *  
    * 检验活动ID是否重复
    * @author hlx
    * @date 2018\12\3 0003 16:58
    * @param [templateManager]
    * @return java.lang.String
    */
    String checkActiveIdUnique(TemplateManager templateManager) throws BizException;
    
    /*
    *  
    * 保存模板管理
    * @author hlx
    * @date 2018\12\3 0003 17:00
    * @param [templateManagerList]
    * @return int
    */
    int saveTemplateManager(List<TemplateManager> templateManagerList) throws BizException;

    /*
    *
    * 展示模板管理列表
    * @author hlx
    * @date 2018\12\3 0003 17:00
    * @param [pageNum, pageSize]
    * @return com.chenyou.pojo.entity.PageResult
    */
    PageResult findPage(int pageNum, int pageSize) throws BizException;

    /*
    *
    * 根据模板管理Id
    * @author hlx
    * @date 2018\12\3 0003 17:00
    * @param [id]
    * @return com.chenyou.pojo.TemplateManager
    */
    TemplateManager findTemplateManager(Integer id);

    /*
    *
    * 修改模板管理
    * @author hlx
    * @date 2018\12\3 0003 17:01
    * @param [templateManager]
    * @return int
    */
    int updateTemplateManager(TemplateManager templateManager) throws BizException;

    /*
    *
    * 批量删除模板管理中的数据
    * @author hlx
    * @date 2018\12\3 0003 17:01
    * @param [ids]
    * @return int
    */
    int deleteTemplateManager(Integer[] ids) throws BizException;

    PageResult findSearch(int pageNum,int pageSize,TemplateManager templateManager) throws BizException;

}
