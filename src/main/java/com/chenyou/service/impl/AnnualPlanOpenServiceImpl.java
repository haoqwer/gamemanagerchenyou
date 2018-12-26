package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AnnualPlanOpenMapper;
import com.chenyou.pojo.AnnualPlanOpen;
import com.chenyou.pojo.AnnualSchedule;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.*;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-26 22:34
 * @Version: 1.0
 **/
@Service
@Transactional
public class AnnualPlanOpenServiceImpl implements AnnualPlanOpenService {

    @Autowired
    private AnnualScheduleService annualScheduleService;


    @Autowired
    private AnnualPlanOpenMapper annualPlanOpenMapper;


    @Autowired
    private ServerService serverService;

    @Autowired
    private TemplateNameService templateNameService ;

    @Autowired
    private AnnualNameService annualNameService;


    @Override
    public int saveAnnualPlanOpen(AnnualPlanOpen annualPlanOpen) throws BizException {
        int sum = 0;
        int i = 0;
        if (null == annualPlanOpen.getServerId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择区服!");
        }
        if (null == annualPlanOpen.getAnnualId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择区服活动计划!");
        }
        if (StringUtils.isEmpty(annualPlanOpen.getStart())) {
            throw new BizException(BizException.CODE_PARM_LACK, "请选择区服活动计划开始时间");
        }
        List <AnnualSchedule> listAnnualSchedule = annualScheduleService.listAnnualScheduleByAnnualId(annualPlanOpen.getAnnualId());
        for (AnnualSchedule annualSchedule : listAnnualSchedule) {
            annualPlanOpen.setTemplateId(annualSchedule.getTemplateId());
            annualPlanOpen.setEnd("2018-12-26");
            annualPlanOpen.setOpenTime(DateUtil.format1(new Date()));
            i = annualPlanOpenMapper.insertSelective(annualPlanOpen);
            sum += i;
        }
        return sum;
    }

    @Override
    public PageResult findPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List <AnnualPlanOpen> list = annualPlanOpenMapper.selectByExample(null);
        for(AnnualPlanOpen annualPlanOpen :list){
            annualPlanOpen.setServerName(serverService.getServerName(annualPlanOpen.getServerId()));
            annualPlanOpen.setAnnualName(annualNameService.getAnnualPlanName(annualPlanOpen.getAnnualId()));
            annualPlanOpen.setTemplateName(templateNameService.templateName(annualPlanOpen.getTemplateId()));
        }
        Page<AnnualPlanOpen> page=( Page<AnnualPlanOpen>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }
}
