package com.chenyou.mapper;

import com.chenyou.DataSource;
import com.chenyou.pojo.ActivitieOpen;
import com.chenyou.pojo.ActivitieOpenExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
@DataSource("dataSource1")
public interface ActivitieOpenMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int countByExample(ActivitieOpenExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int deleteByExample(ActivitieOpenExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int deleteByPrimaryKey(Integer activeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int insert(ActivitieOpen record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int insertSelective(ActivitieOpen record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    List<ActivitieOpen> selectByExample(ActivitieOpenExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    ActivitieOpen selectByPrimaryKey(Integer activeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int updateByExampleSelective(@Param("record") ActivitieOpen record, @Param("example") ActivitieOpenExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int updateByExample(@Param("record") ActivitieOpen record, @Param("example") ActivitieOpenExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int updateByPrimaryKeySelective(ActivitieOpen record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activitie_open
     *
     * @mbggenerated Fri Nov 16 17:02:40 CST 2018
     */
    int updateByPrimaryKey(ActivitieOpen record);
}