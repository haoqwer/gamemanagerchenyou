package com.chenyou.mapper;

import com.chenyou.DataSource;
import com.chenyou.pojo.OutConsume;
import com.chenyou.pojo.OutConsumeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
@DataSource("dataSource1")
public interface OutConsumeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int countByExample(OutConsumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int deleteByExample(OutConsumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int deleteByPrimaryKey(Integer outConsumeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int insert(OutConsume record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int insertSelective(OutConsume record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    List<OutConsume> selectByExample(OutConsumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    OutConsume selectByPrimaryKey(Integer outConsumeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int updateByExampleSelective(@Param("record") OutConsume record, @Param("example") OutConsumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int updateByExample(@Param("record") OutConsume record, @Param("example") OutConsumeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int updateByPrimaryKeySelective(OutConsume record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_out_consume
     *
     * @mbggenerated Wed Oct 10 11:55:12 CST 2018
     */
    int updateByPrimaryKey(OutConsume record);
}