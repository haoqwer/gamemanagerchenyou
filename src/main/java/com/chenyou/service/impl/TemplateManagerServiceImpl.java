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

    /*
     *
     * 新增模板管理
     * @author hlx
     * @date 2018\11\30 0030 15:41
     * @param [templateManagerList]
     * @return int
     */
    @Override
    public int saveTemplateManager(List <TemplateManager> templateManagerList) throws BizException {
        //1.判断传入的TemplateManager是否为空
        if (StringUtils.isEmpty(templateManagerList)) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入模板管理选项!");
        }
        int i = 0;
        int sum = 0;
        for (TemplateManager templateManager : templateManagerList) {
            //2.对创建每个活动进行判断
            condition(templateManager);
            if (templateManager.getDelayDays() == 0) {
                //3.如果延期天数为0的话，那么延期状态为0表示不延期
                templateManager.setDelayStatus(0);
            } else {
                //3.1如果延期天数不为0的话
                templateManager.setDelayStatus(1);
            }
            //3.设置模板名称
            templateManager.setTemplateName(templateNameService.templateName(templateManager.getTemplateId()));
            //4.进行排序根据模板Id
            templateManager.setSort(templateManager.getTemplateId());
            //5.设置时间
            templateManager.setRecordTime(DateUtil.format1(new Date()));
            //6.进行增加
            i = templateManagerMapper.insertSelective(templateManager);
            sum = sum + i;
        }
        return sum;
    }

    /*
     *
     * 模板管理列表
     * @author hlx
     * @date 2018\12\3 0003 17:01
     * @param [pageNum, pageSize]
     * @return com.chenyou.pojo.entity.PageResult
     */
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
     * 保存和修改模板时需要做的判断
     *
     * @param templateManager
     * @throws BizException
     */
    public static void condition(TemplateManager templateManager) throws BizException {
        //1.判断是否选择模板
        if (null == templateManager.getTemplateId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择一个模板名称!");
        }
        //2.判断是否输入活动ID
        if (StringUtils.isEmpty(templateManager.getActiveId())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入活动id!");
        }
        //3.判断是否输入开服天数
        System.out.println("活动开启天数" + templateManager.getOpenTakesDay());
        if (templateManager.getOpenTakesDay() < 0) {
            throw new BizException(BizException.CODE_PARM_LACK, "开服天数不能输入负数!");
        }
        if (null == templateManager.getOpenTakesDay()) {
            System.out.println(templateManager.getOpenTakesDay() + "天数");
            throw new BizException(BizException.CODE_PARM_LACK, "请输入开服天数!");
        }
        //4.判断是否输入延期状态
        if (null == templateManager.getDelayDays()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入延期天数!");
        }
        if (templateManager.getDelayDays() < 0) {
            throw new BizException(BizException.CODE_PARM_LACK, "延期天数不能输入负数!");
        }
    }

    /**
     * 查找模板管理
     *
     * @param id
     * @return com.chenyou.pojo.TemplateManager
     * @author hlx
     * @date 2018\12\1 0001 10:20
     */
    @Override
    public TemplateManager findTemplateManager(Integer id) {
        return templateManagerMapper.selectByPrimaryKey(id);
    }

    /*
     *
     * 修改模板管理
     * @author hlx
     * @date 2018\12\1 0001 10:20
     * @param [templateManager]
     * @return int
     */
    @Override
    public int updateTemplateManager(TemplateManager templateManager) throws BizException {
        condition(templateManager);
        checkActiveIdUnique(templateManager);
        //2.根据修改的延期进行判断
        if (templateManager.getDelayDays() == 0) {
            //3.如果延期天数为0的话，那么延期状态为0表示不延期
            templateManager.setDelayStatus(0);
        } else {
            templateManager.setDelayStatus(1);
        }
        //3.设置模板名称
        templateManager.setTemplateName(templateNameService.templateName(templateManager.getTemplateId()));
        //4.修改排序
        templateManager.setSort(templateManager.getTemplateId());
        templateManager.setRecordTime(DateUtil.format1(new Date()));
        return templateManagerMapper.updateByPrimaryKeySelective(templateManager);
    }
    
    /*
    *  
    * 活动开启管理进行列表查询
    * @author hlx
    * @date 2018\12\3 0003 18:58
    * @param [pageNum, pageSize, templateManager]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult findSearch(int pageNum, int pageSize, TemplateManager templateManager) throws BizException {
        TemplateManagerExample example = new TemplateManagerExample();
        TemplateManagerExample.Criteria criteria = example.createCriteria();
        PageHelper.startPage(pageNum, pageSize);
        //1.模板名称查询、
        if (null != templateManager.getTemplateId()) {
            criteria.andTemplateIdEqualTo(templateManager.getTemplateId());
        }
        //2.进行活动id查询
        if (!StringUtils.isEmpty(templateManager.getActiveId())) {
            criteria.andActiveIdEqualTo(templateManager.getActiveId());
        }
        //3.进行活动天数查询
        if (null != templateManager.getDelayDays()) {
            criteria.andDelayDaysEqualTo(templateManager.getDelayDays());
        }
        //4.是否延期
        if (null != templateManager.getDelayStatus()) {
            criteria.andDelayStatusEqualTo(templateManager.getDelayStatus());
        }
        List <TemplateManager> list = templateManagerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思,当前没有数据!");
        }
        Page <TemplateManager> page = (Page <TemplateManager>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }

    /*
     *
     * 删除模板管理的数据
     * @author hlx
     * @date 2018\12\1 0001 10:19
     * @param [ids]
     * @return int
     */
    @Override
    public int deleteTemplateManager(Integer[] ids) throws BizException {
        int i = 0;
        int sum = 0;
        if (ids == null || ids.length < 0) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择你要删除的数据");
        }
        for (Integer id : ids) {
            i = templateManagerMapper.deleteByPrimaryKey(id);
            sum += i;
        }
        return sum;
    }
}
