package com.chenyou.service.impl;

import com.chenyou.base.BizException;
import com.chenyou.mapper.AnnualNameMapper;
import com.chenyou.pojo.AnnualName;
import com.chenyou.service.AnnualNameService;
import com.chenyou.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-26 19:54
 * @Version: 1.0
 **/
@Service
@Transactional
public class AnnualNameServiceImpl implements AnnualNameService {

    @Autowired
    private AnnualNameMapper annualNameMapper;

    @Override
    public List<AnnualName> listAnnualName() throws BizException {
        List <AnnualName> list = annualNameMapper.selectByExample(null);
        if(StringUtils.isEmpty(list)){
            throw new BizException(BizException.CODE_PARM_LACK,"不好意思当前列表没有数据!");
        }
        return list;
    }

    @Override
    public String getAnnualPlanName(Integer annualId) {
        AnnualName annualNmae = annualNameMapper.selectByPrimaryKey(annualId);
        return annualNmae.getAnnualName();
    }
}
