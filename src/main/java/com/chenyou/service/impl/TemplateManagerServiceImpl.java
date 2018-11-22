package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.base.constant.UserConstants;
import com.chenyou.mapper.TemplateManagerMapper;
import com.chenyou.pojo.TemplateManager;
import com.chenyou.pojo.TemplateManagerExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.TemplateManagerService;
import com.chenyou.service.TemplateNameService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class TemplateManagerServiceImpl implements TemplateManagerService {

    @Autowired
    private TemplateManagerMapper templateManagerMapper;

    @Autowired
    private TemplateNameService templateNameService;

    /**
     * 判断输入活动id是否唯一
     *
     * @param templateManager
     * @return
     */
    @Override
    public String checkActiveIdUnique(TemplateManager templateManager) throws BizException {
        if (StringUtils.isEmpty(templateManager.getActiveId())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入活动id!");
        }
        int id = null == templateManager.getId() ? -1 : templateManager.getId();
        TemplateManager template = templateManagerMapper.checkActiveIdUnique(templateManager.getActiveId());
        if (StringUtils.isNotNull(template) && id != template.getId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "活动id" + templateManager.getActiveId() + "已经存在!");
        }
        return UserConstants.ACTIVE_ID_UNIQUE;
    }

    @Override
    public int saveTemplateManager(List <TemplateManager> templateManagerList) throws BizException {
        if (StringUtils.isEmpty(templateManagerList)) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入模板管理选项!");
        }
        int i = 0;
        for (TemplateManager templateManager : templateManagerList) {
            condition(templateManager);
            templateManager.setTemplateName(templateNameService.templateName(templateManager.getTemplateId()));
            templateManager.setSort(templateManager.getTemplateId());
            templateManager.setRecordTime(DateUtil.format1(new Date()));
            i = templateManagerMapper.insertSelective(templateManager);
            i++;
        }
        return i;
    }

    @Override
    public PageResult findPage(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum, pageSize);
        TemplateManagerExample example = new TemplateManagerExample();
        example.setOrderByClause("sort asc");
        List <TemplateManager> list = templateManagerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思当前没有数据!");
        }
        Page <TemplateManager> page = (Page <TemplateManager>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }

    /**
     * 保存和修改的时候需要做的判断
     *
     * @param templateManager
     * @throws BizException
     */
    public static void condition(TemplateManager templateManager) throws BizException {
        if (null == templateManager.getTemplateId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择一个模板名称!");
        }
        if (StringUtils.isEmpty(templateManager.getActiveId())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入活动id!");
        }
        if (null != templateManager.getOpenTakesDay()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入开服天数!");
        }
        if (null == templateManager.getDelayStatus()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择延期状态!");
        }
    }

    @Override
    public TemplateManager findTemplateManager(Integer id) {
        return templateManagerMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateTemplateManager(TemplateManager templateManager) throws BizException {
        condition(templateManager);
        checkActiveIdUnique(templateManager);
        templateManager.setRecordTime(DateUtil.format1(new Date()));
        return templateManagerMapper.updateByPrimaryKeySelective(templateManager);
    }

    @Override
    public int deleteTemplateManager(Integer[] ids) throws BizException {
        int i = 0;
        if (ids == null || ids.length < 0) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择你要删除的数据");
        }
        for (Integer id : ids) {
            i = templateManagerMapper.deleteByPrimaryKey(id);
            i++;
        }
        return i;
    }
}
