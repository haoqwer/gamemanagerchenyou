package com.chenyou.service.gammemanagerservice.impl;

import com.chenyou.base.BizException;
import com.chenyou.base.constant.UserConstants;
import com.chenyou.mapper.PropMapper;
import com.chenyou.pojo.Prop;
import com.chenyou.pojo.PropExample;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.gammemanagerservice.PropService;
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

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-18 16:23
 * @Version: 1.0
 **/

@Service
@Transactional
public class PropServiceImpl  implements PropService {


    private static final Logger logger=LoggerFactory.getLogger(PropServiceImpl.class);

    @Autowired
    private PropMapper propMapper;

    /*
    *
    * 导入excel进行导入,设置prop
    * @author hlx
    * @date 2018\12\18 0018 16:57
    * @param [listProp]
    * @return int
    */
    @Override
    public int saveProp(List<Prop> listProp) {
        int sum=0;
        for (Prop prop : listProp) {
            int i = 0;
            try {
                i = propMapper.insertSelective(prop);
            } catch (Exception e) {
                logger.debug(e.getMessage());
            }
            sum += i;
        }
        return sum;
    }

    /*
    *
    * 道具展示
    * @author hlx
    * @date 2018\12\18 0018 16:57
    * @param [pageNum, pageSize]
    * @return com.chenyou.pojo.entity.PageResult
    */
    @Override
    public PageResult findPage(int pageNum, int pageSize) throws BizException {
        PageHelper.startPage(pageNum,pageSize);
        PropExample example=new PropExample();
        example.setOrderByClause("sort asc");
        List <Prop> list = propMapper.selectByExample(example);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好当前没有展示的数据!");
        }
        Page<Prop> page=( Page<Prop> )list;
        return new PageResult(page.getTotal(),page.getResult());
    }

    /*
    *
    * 修改道具
    * @author hlx
    * @date 2018\12\18 0018 16:57
    * @param [prop]
    * @return int
    */
    @Override
    public int updateProp(Prop prop) throws BizException {
        if (null == prop.getPropId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入道具ID");
        }
        if (null == prop.getPropId()) {
            throw new BizException(BizException.CODE_PARM_LACK, "请输入道具名称!");
        }
        checkPropIdUnique(prop);
        checkPropNameUnique(prop);
        prop.setUpdateTime(DateUtil.format1(new Date()));
        int i = propMapper.updateByPrimaryKeySelective(prop);
        return i;
    }



    /*
    *
    * 展示道具
    * @author hlx
    * @date 2018\12\18 0018 16:58
    * @param []
    * @return java.util.List<com.chenyou.pojo.Prop>
    */
    @Override
    public List <Prop> listProp() throws BizException {
        List<Prop> list=new ArrayList <>();
        list = propMapper.selectByExample(null);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好当前没有展示的数据!");
        }
        return list;
    }

    /**
    *  
    * 根据propId获取propnAME
    * @author hlx
    * @date 2018\12\18 0018 18:02
    * @param [propId]
    * @return java.lang.String
    */
    @Override
    public String propName(Integer propId) throws BizException {
        PropExample example=new PropExample();
        PropExample.Criteria criteria = example.createCriteria();
        if(null != propId){
            criteria.andPropIdEqualTo(propId);
        }
       List<Prop> listProp=propMapper.selectByExample(example);
        return listProp.get(0).getPropName();
    }

    /*
    *
    * 根据模糊查询查询数据
    * @author hlx
    * @date 2018\12\19 0019 9:44
    * @param [proName]
    * @return java.util.List<com.chenyou.pojo.Prop>
    */
    @Override
    public List <Prop> listPropByPropLikeName(String propName) {
        List <Prop> list = new ArrayList <>();
        if (StringUtils.isEmpty(propName)) {
            list = propMapper.selectByExample(null);
        } else {
            PropExample example = new PropExample();
            example.setOrderByClause("sort asc");
            PropExample.Criteria criteria = example.createCriteria();
            criteria.andPropNameLike("%"+propName+"%");
            list = propMapper.selectByExample(example);
        }
        return list;
    }

    /*
    *
    * 检验道具id是否唯一
    * @author hlx
    * @date 2018\12\19 0019 15:22
    * @param [propId]
    * @return com.chenyou.pojo.Prop
    */
    @Override
    public String checkPropIdUnique(Prop prop) throws BizException {
       Integer id= null == prop.getId()?-1:prop.getId();
        Prop oldProp = propMapper.checkPropIdUnique(prop.getPropId());

        if(StringUtils.isNotNull(oldProp) && oldProp.getId() !=id){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思道具"+prop.getPropId()+"已经存在");
        }
        //表示唯一
        return UserConstants.USER_PHONE_UNIQUE;
    }

    @Override
    public String checkPropNameUnique(Prop prop) throws BizException {
        Integer id=null==prop.getId()?-1:prop.getId();
        Prop oldProp = propMapper.checkPropNameUnique(prop.getPropName());
        if(StringUtils.isNotNull(oldProp) && oldProp.getId() !=id){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思道具名称"+prop.getPropName()+"已经存在");
        }
        //表示唯一
        return UserConstants.USER_PHONE_UNIQUE;
    }
}
