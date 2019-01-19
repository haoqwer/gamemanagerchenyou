package com.chenyou.mapper;

import com.chenyou.DataSource;
import com.chenyou.pojo.NotifyActi;
import com.chenyou.pojo.NotifyActiExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
@DataSource("dataSource2")
public interface NotifyActiMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int countByExample(NotifyActiExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int deleteByExample(NotifyActiExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int insert(NotifyActi record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int insertSelective(NotifyActi record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    List<NotifyActi> selectByExample(NotifyActiExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    NotifyActi selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int updateByExampleSelective(@Param("record") NotifyActi record, @Param("example") NotifyActiExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int updateByExample(@Param("record") NotifyActi record, @Param("example") NotifyActiExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int updateByPrimaryKeySelective(NotifyActi record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_notify_acti
     *
     * @mbggenerated Tue Jan 08 15:01:46 CST 2019
     */
    int updateByPrimaryKey(NotifyActi record);
}