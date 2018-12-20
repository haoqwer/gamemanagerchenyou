package com.chenyou.mapper;

import com.chenyou.pojo.Prop;
import com.chenyou.pojo.PropExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PropMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int countByExample(PropExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int deleteByExample(PropExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int insert(Prop record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int insertSelective(Prop record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    List<Prop> selectByExample(PropExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    Prop selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int updateByExampleSelective(@Param("record") Prop record, @Param("example") PropExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int updateByExample(@Param("record") Prop record, @Param("example") PropExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int updateByPrimaryKeySelective(Prop record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_prop
     *
     * @mbggenerated Wed Dec 19 09:57:07 CST 2018
     */
    int updateByPrimaryKey(Prop record);

    Prop checkPropIdUnique(Integer propId);

    Prop checkPropNameUnique(String propName);
}