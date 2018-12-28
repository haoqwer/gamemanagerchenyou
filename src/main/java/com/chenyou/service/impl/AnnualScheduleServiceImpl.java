package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AnnualScheduleMapper;
import com.chenyou.pojo.AnnualSchedule;
import com.chenyou.pojo.AnnualScheduleExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.AnnualNameService;
import com.chenyou.service.AnnualScheduleService;
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

import java.util.Date;
import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-26 20:02
 * @Version: 1.0
 **/
@Service
@Transactional
public class AnnualScheduleServiceImpl  implements AnnualScheduleService {


    private static  final Logger logger=LoggerFactory.getLogger(AnnualScheduleServiceImpl.class);


    @Autowired
    private TemplateNameService templateNameService;


    @Autowired
    private AnnualScheduleMapper annualScheduleMapper;

    @Autowired
    private AnnualNameService annualNameService;




    /*
    *
    * 新增年度计划管理
    * @author hlx
    * @date 2018\12\26 0026 20:02
    * @param [list]
    * @return int
    */
    @Override
    public int saveAnnualSchedule(List<AnnualSchedule> list) throws BizException {
        int sum=0;
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"请输入新增计划信息!");
        }
        for(AnnualSchedule annualSchedule:list){
            if(null == annualSchedule.getTemplateId()){
                throw new BizException(BizException.CODE_PARM_LACK,"请输入模板ID");
            }
            if(null == annualSchedule.getTemplateOpendays()){
                throw new BizException(BizException.CODE_PARM_LACK,"请输入模板开启天数!");
            }
            //需要判断模板是否存在
            int i = templateNameService.ifExist(annualSchedule.getTemplateId());
            if(i==0){
                logger.debug("不好意思模板"+annualSchedule.getTemplateId()+"不存在!");
                continue;
            }

            annualSchedule.setSort(annualSchedule.getAnnualId());
            annualSchedule.setCreateTime(DateUtil.format1(new Date()));
            annualSchedule.setAnnualName(annualNameService.getAnnualPlanName(annualSchedule.getAnnualId()));
            int count = annualScheduleMapper.insertSelective(annualSchedule);
            sum+=count;
        }
        return sum;
    }

    @Override
    public PageResult findPage(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        AnnualScheduleExample example=new AnnualScheduleExample();
        example.setOrderByClause("annual_id asc");
        List <AnnualSchedule> list = annualScheduleMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"没有年度计划名称!");
        }
        for(AnnualSchedule annualSchedule:list){
            annualSchedule.setTemplateName(templateNameService.templateName(annualSchedule.getTemplateId()));
        }
        Page<AnnualSchedule> page=(Page<AnnualSchedule>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }


    @Override
    public int updateAnnualSchedule(AnnualSchedule annualSchedule) throws BizException {
        if(null ==annualSchedule.getTemplateOpendays()){
            throw new BizException(BizException.CODE_PARM_LACK,"请输入模板开启天数!");
        }
        if(0==annualSchedule.getTemplateOpendays()){
            throw new BizException(BizException.CODE_PARM_LACK,"请输入正确的模板开启天数!");
        }
       int i= annualScheduleMapper.updateByPrimaryKeySelective(annualSchedule);

        return i;
    }


    @Override
    public List <AnnualSchedule> listAnnualScheduleByAnnualId(Integer annualId) {
        AnnualScheduleExample example=new AnnualScheduleExample();
        AnnualScheduleExample.Criteria criteria = example.createCriteria();
        criteria.andAnnualIdEqualTo(annualId);
        List <AnnualSchedule> list = annualScheduleMapper.selectByExample(example);
        return list;
    }


    @Override
    public int delete(Integer[] ids) throws BizException {
        if(null ==ids){
            throw new BizException(BizException.CODE_PARM_LACK,"请选择删除的数据!");
        }
        int sum=0;
        int i=0;
        for(Integer id:ids){
            i=annualScheduleMapper.deleteByPrimaryKey(id);
            sum+=i;
        }
        return sum;
    }


    /*
    *
    * 根据条件查询
    * @author hlx
    * @date 2018\12\27 0027 14:03
    * @param [pageNu, pageSize, annualSchedule]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult listAnnualScheduleQuery(int pageNu, int pageSize, AnnualSchedule annualSchedule) throws BizException {
        PageHelper.startPage(pageNu,pageSize);
        AnnualScheduleExample example=new AnnualScheduleExample();
        AnnualScheduleExample.Criteria criteria = example.createCriteria();
        if(null != annualSchedule.getAnnualId()){
            criteria.andAnnualIdEqualTo(annualSchedule.getAnnualId());
        }
        if(null != annualSchedule.getTemplateOpendays()){
            criteria.andTemplateOpendaysEqualTo(annualSchedule.getTemplateOpendays());
        }
        if(null != annualSchedule.getTemplateId()){
            criteria.andTemplateIdEqualTo(annualSchedule.getTemplateId());
        }
        List <AnnualSchedule> list = annualScheduleMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思当前没有数据!");
        }
        Page<AnnualSchedule> page=(Page<AnnualSchedule>)list;
        return new PageResult(page.getTotal(),page.getResult());
    }

    @Override
    public List <AnnualSchedule> listAnnualSchedulePoi(AnnualSchedule annualSchedule) throws BizException {
        AnnualScheduleExample example=new AnnualScheduleExample();
        AnnualScheduleExample.Criteria criteria = example.createCriteria();
        if(null != annualSchedule.getAnnualId()){
            criteria.andAnnualIdEqualTo(annualSchedule.getAnnualId());
        }
        if(null != annualSchedule.getTemplateOpendays()){
            criteria.andTemplateOpendaysEqualTo(annualSchedule.getTemplateOpendays());
        }
        if(null != annualSchedule.getTemplateId()){
            criteria.andTemplateIdEqualTo(annualSchedule.getTemplateId());
        }
        List <AnnualSchedule> list = annualScheduleMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思当前没有数据!");
        }
        return list;
    }
}
