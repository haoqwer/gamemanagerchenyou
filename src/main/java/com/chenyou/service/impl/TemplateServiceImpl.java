package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.TemplateNameMapper;
import com.chenyou.pojo.TemplateName;
import com.chenyou.service.TemplateNameService;
import com.chenyou.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
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

    @Override
    public int ifExist(Integer templateId) throws BizException {
        List<Integer> templateIds=new ArrayList <>();
        List <TemplateName> listTemplate = templateNameMapper.selectByExample(null);
        if(StringUtils.isEmpty(listTemplate)){
           throw new BizException(BizException.CODE_PARM_LACK,"当前没有选择的模板!");
        }
        for(TemplateName templateName:listTemplate){
            templateIds.add(templateName.getId());
        }
        int i=0;
        for(int j=0;j<=templateIds.size()-1;j++){
            if(templateIds.get(j).intValue()==templateId.intValue()){
                i++;
            }
        }
        return i;
    }
}
