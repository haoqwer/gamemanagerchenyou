package com.chenyou.mapper;

import com.chenyou.DataSource;
import com.chenyou.pojo.RetainPlayer;
import com.chenyou.pojo.RetainPlayerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
@DataSource("dataSource1")
public interface RetainPlayerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int countByExample(RetainPlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int deleteByExample(RetainPlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int deleteByPrimaryKey(Integer retainId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int insert(RetainPlayer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int insertSelective(RetainPlayer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    List<RetainPlayer> selectByExample(RetainPlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    RetainPlayer selectByPrimaryKey(Integer retainId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int updateByExampleSelective(@Param("record") RetainPlayer record, @Param("example") RetainPlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int updateByExample(@Param("record") RetainPlayer record, @Param("example") RetainPlayerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int updateByPrimaryKeySelective(RetainPlayer record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Wed Oct 10 09:43:33 CST 2018
     */
    int updateByPrimaryKey(RetainPlayer record);

    List <RetainPlayer> queryRetainPlayerAll();

    List <RetainPlayer> queryRetainPlayerByTimeTo(@Param("start")String start, @Param("end")String end);

    List <RetainPlayer> queryRetainPlayerByTime(@Param("time")String time);
}