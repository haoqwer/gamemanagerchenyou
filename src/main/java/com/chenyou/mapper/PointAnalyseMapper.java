package com.chenyou.mapper;

import com.chenyou.pojo.PointAnalyse;
import com.chenyou.pojo.PointAnalyseExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PointAnalyseMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int countByExample(PointAnalyseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int deleteByExample(PointAnalyseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int deleteByPrimaryKey(Integer chargingId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int insert(PointAnalyse record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int insertSelective(PointAnalyse record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    List<PointAnalyse> selectByExample(PointAnalyseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    PointAnalyse selectByPrimaryKey(Integer chargingId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByExampleSelective(@Param("record") PointAnalyse record, @Param("example") PointAnalyseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByExample(@Param("record") PointAnalyse record, @Param("example") PointAnalyseExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByPrimaryKeySelective(PointAnalyse record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_point_analyse
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByPrimaryKey(PointAnalyse record);
}