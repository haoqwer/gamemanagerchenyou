package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.TemplateManager;
import com.chenyou.pojo.entity.PageResult;

import java.util.List;

public interface TemplateManagerService {

    String checkActiveIdUnique(TemplateManager templateManager) throws BizException;

    int saveTemplateManager(List<TemplateManager> templateManagerList) throws BizException;

    PageResult findPage(int pageNum, int pageSize) throws BizException;

    TemplateManager findTemplateManager(Integer id);

    int updateTemplateManager(TemplateManager templateManager) throws BizException;

    int deleteTemplateManager(Integer[] ids) throws BizException;

}
