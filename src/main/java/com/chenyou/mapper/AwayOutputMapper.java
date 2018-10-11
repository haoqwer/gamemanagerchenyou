package com.chenyou.mapper;

import com.chenyou.pojo.AwayOutput;
import com.chenyou.pojo.AwayOutputExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AwayOutputMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int countByExample(AwayOutputExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int deleteByExample(AwayOutputExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int deleteByPrimaryKey(Integer awayId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int insert(AwayOutput record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int insertSelective(AwayOutput record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    List<AwayOutput> selectByExample(AwayOutputExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    AwayOutput selectByPrimaryKey(Integer awayId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int updateByExampleSelective(@Param("record") AwayOutput record, @Param("example") AwayOutputExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int updateByExample(@Param("record") AwayOutput record, @Param("example") AwayOutputExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int updateByPrimaryKeySelective(AwayOutput record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    int updateByPrimaryKey(AwayOutput record);
}