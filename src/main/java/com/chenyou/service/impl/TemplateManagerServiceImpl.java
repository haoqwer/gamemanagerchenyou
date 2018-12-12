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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class TemplateManagerServiceImpl implements TemplateManagerService {

    private static Logger logger = LoggerFactory.getLogger(TemplateManagerServiceImpl.class);

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
        TemplateManager template = templateManagerMapper.checkActiveIdUnique(templateManager.getActiveId(), templateManager.getTemplateId());
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
            throw new BizException(BizException.CODE_PARM_LACK, "请输入模板管理内容!");
        }
        int i = 0;
        int sum = 0;
        //2.遍历输入的数据
        for (TemplateManager templateManager : templateManagerList) {
            //3.对创建每个活动进行判断
            condition(templateManager);
            if (templateManager.getDelayDays() == 0) {
                //4.如果延期天数为0的话，那么延期状态为0表示不延期
                templateManager.setDelayStatus(0);
            } else {
                //4.1如果延期天数不为0的话,表示不延期
                templateManager.setDelayStatus(1);
            }
            try {
                //5.对活动的状态进行设置,0表示开始创建
                templateManager.setOpenStatus(0);
                //6.判断活动id是否重复
                checkActiveIdUnique(templateManager);
                //7.模板名称
                templateManager.setTemplateName(templateNameService.templateName(templateManager.getTemplateId()));
                //8.对模板id进行排序
                templateManager.setSort(templateManager.getTemplateId());
                //9.设置时间
                templateManager.setRecordTime(DateUtil.format1(new Date()));
                //10.进行保存
                i = templateManagerMapper.insertSelective(templateManager);
                sum = sum + i;
            } catch (BizException e) {
                logger.debug(e.getMessage());
                continue;
            }
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
        //进行设置状态
        getList(list);
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
//        if(StringUtils.isEmpty(templateManager.getEndtime())){
//            throw new BizException(BizException.CODE_PARM_LACK,"请输入结束的年月日!");
//        }
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
        //1.判断数据是否为null
        condition(templateManager);
        //2.对活动id进行是否唯一
        checkActiveIdUnique(templateManager);
        //3.根据修改延期天数来重新设置延期状态
        if (templateManager.getDelayDays() == 0) {
            //3.1如果延期天数为0的话，那么延期状态为0表示不延期
            templateManager.setDelayStatus(0);
        } else {
            //3.2如果延期天数大于1的话，那么延期状态为1表示延期
            templateManager.setDelayStatus(1);
        }
        //4.如果模板id更换那么模板名称也得进行修改
        templateManager.setTemplateName(templateNameService.templateName(templateManager.getTemplateId()));
        //5.模板id进行修改,排序也得进行重新排序
        templateManager.setSort(templateManager.getTemplateId());
        //6.设置时间
        templateManager.setRecordTime(DateUtil.format1(new Date()));
        //7.进行修改
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
        System.out.println(templateManager.getOpenTakesDay());
        //3.进行活动天数查询
        if (null != templateManager.getOpenTakesDay()) {
            criteria.andOpenTakesDayEqualTo(templateManager.getOpenTakesDay());
        }
        //4.延期天数
        if (null != templateManager.getDelayDays()) {
            criteria.andDelayStatusEqualTo(templateManager.getDelayDays());
        }
        List <TemplateManager> list = templateManagerMapper.selectByExample(example);
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思,当前没有数据!");
        }
        getList(list);
        Page <TemplateManager> page = (Page <TemplateManager>) list;
        return new PageResult(page.getTotal(), page.getResult());
    }


    /**
     * 导出需要的数据
     *
     * @param
     * @return java.util.List<com.chenyou.pojo.TemplateManager>
     * @author hlx
     * @date 2018\12\6 0006 14:06
     */
    @Override
    public List <TemplateManager> listTemplateManager(TemplateManager templateManager) throws BizException {
        List <TemplateManager> list = new ArrayList <>();
        if (null == templateManager.getTemplateId() && StringUtils.isEmpty(templateManager.getActiveId()) && null == templateManager.getOpenTakesDay() && null == templateManager.getDelayDays()) {
            list = templateManagerMapper.selectByExample(null);
        } else {
            TemplateManagerExample example = new TemplateManagerExample();
            TemplateManagerExample.Criteria criteria = example.createCriteria();
            if (null != templateManager.getTemplateId()) {
                criteria.andTemplateIdEqualTo(templateManager.getTemplateId());
            }
            if (!StringUtils.isEmpty(templateManager.getActiveId())) {
                criteria.andActiveIdEqualTo(templateManager.getActiveId());
            }
            if (null != templateManager.getOpenTakesDay()) {
                criteria.andOpenTakesDayEqualTo(templateManager.getOpenTakesDay());
            }
            if (null != templateManager.getDelayDays()) {
                criteria.andDelayDaysEqualTo(templateManager.getDelayDays());
            }
            list = templateManagerMapper.selectByExample(example);
        }
        if (StringUtils.isEmpty(list)) {
            throw new BizException(BizException.CODE_PARM_LACK, "不好意思,当前没有数据!");
        }
        return list;
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
        if (ids == null || ids.length <= 0) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择你要删除的数据");
        }
        for (Integer id : ids) {
            i = templateManagerMapper.deleteByPrimaryKey(id);
            sum += i;
        }
        return sum;
    }

    public static void getList(List <TemplateManager> list) {
        for (TemplateManager templateManager : list) {
            if (templateManager.getOpenStatus() == 0) {
                templateManager.setActivityStatus("活动创建成功!");
            } else if (templateManager.getOpenStatus() == 1) {
                templateManager.setActivityStatus("活动开启成功!");
            } else if (templateManager.getOpenStatus() == 2) {
                templateManager.setActivityStatus("活动开启失败!");
            }
        }

    }
}
