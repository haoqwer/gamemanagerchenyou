package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.TemplateName;

import java.util.List;

public interface TemplateNameService {
      void saveTemplateName(TemplateName templateName);
      List<TemplateName> findAll() throws BizException;
      String templateName(int id);
      int ifExist(Integer templateId) throws BizException;
}
