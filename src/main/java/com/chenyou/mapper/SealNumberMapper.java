package com.chenyou.mapper;

import com.chenyou.pojo.SealNumber;
import com.chenyou.pojo.SealNumberExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SealNumberMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int countByExample(SealNumberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int deleteByExample(SealNumberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int insert(SealNumber record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int insertSelective(SealNumber record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    List<SealNumber> selectByExample(SealNumberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    SealNumber selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int updateByExampleSelective(@Param("record") SealNumber record, @Param("example") SealNumberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int updateByExample(@Param("record") SealNumber record, @Param("example") SealNumberExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int updateByPrimaryKeySelective(SealNumber record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_seal_number
     *
     * @mbggenerated Thu Dec 20 16:22:21 CST 2018
     */
    int updateByPrimaryKey(SealNumber record);
}