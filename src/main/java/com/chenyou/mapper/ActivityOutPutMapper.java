package com.chenyou.mapper;

import com.chenyou.DataSource;
import com.chenyou.pojo.ActivityOutPut;
import com.chenyou.pojo.ActivityOutPutExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
@DataSource("dataSource1")
public interface ActivityOutPutMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_output
     *
     * @mbggenerated Wed Oct 10 16:44:40 CST 2018
     */
    int countByExample(ActivityOutPutExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_output
     *
     * @mbggenerated Wed Oct 10 16:44:40 CST 2018
     */
    int deleteByExample(ActivityOutPutExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_output
     *
     * @mbggenerated Wed Oct 10 16:44:40 CST 2018
     */
    int insert(ActivityOutPut record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_output
     *
     * @mbggenerated Wed Oct 10 16:44:40 CST 2018
     */
    int insertSelective(ActivityOutPut record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_output
     *
     * @mbggenerated Wed Oct 10 16:44:40 CST 2018
     */
    List<ActivityOutPut> selectByExample(ActivityOutPutExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_output
     *
     * @mbggenerated Wed Oct 10 16:44:40 CST 2018
     */
    int updateByExampleSelective(@Param("record") ActivityOutPut record, @Param("example") ActivityOutPutExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_output
     *
     * @mbggenerated Wed Oct 10 16:44:40 CST 2018
     */
    int updateByExample(@Param("record") ActivityOutPut record, @Param("example") ActivityOutPutExample example);
}