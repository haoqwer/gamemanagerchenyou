package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.TemplateNameMapper;
import com.chenyou.pojo.TemplateName;
import com.chenyou.service.TemplateNameService;
import com.chenyou.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TemplateServiceImpl implements TemplateNameService {

    @Autowired
    private TemplateNameMapper templateNameMapper;

    @Override
    public void saveTemplateName(TemplateName templateName) {
        templateNameMapper.insertSelective(templateName);
    }

    @Override
    public List<TemplateName> findAll() throws BizException {
        if(StringUtils.isEmpty(templateNameMapper.selectByExample(null))){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思当前没有数据!");
        }
        return templateNameMapper.selectByExample(null);
    }

    @Override
    public String templateName(int id) {
        TemplateName templateName = templateNameMapper.selectByPrimaryKey(id);
        return templateName.getTemplateName();
    }
}
