package com.chenyou.mapper;

import com.chenyou.DataSource;
import com.chenyou.pojo.GradePlayer;
import com.chenyou.pojo.GradePlayerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
@DataSource("dataSource1")
public interface GradePlayerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int countByExample(GradePlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int deleteByExample(GradePlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int deleteByPrimaryKey(Integer gradeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int insert(GradePlayer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int insertSelective(GradePlayer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    List<GradePlayer> selectByExample(GradePlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    GradePlayer selectByPrimaryKey(Integer gradeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int updateByExampleSelective(@Param("record") GradePlayer record, @Param("example") GradePlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int updateByExample(@Param("record") GradePlayer record, @Param("example") GradePlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int updateByPrimaryKeySelective(GradePlayer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    int updateByPrimaryKey(GradePlayer record);
}