package com.chenyou.mapper;

import com.chenyou.DataSource;
import com.chenyou.pojo.IntimacyRank;
import com.chenyou.pojo.IntimacyRankExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
@DataSource("dataSource1")
public interface IntimacyRankMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int countByExample(IntimacyRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int deleteByExample(IntimacyRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int deleteByPrimaryKey(Integer uid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int insert(IntimacyRank record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int insertSelective(IntimacyRank record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    List<IntimacyRank> selectByExample(IntimacyRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    IntimacyRank selectByPrimaryKey(Integer uid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int updateByExampleSelective(@Param("record") IntimacyRank record, @Param("example") IntimacyRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int updateByExample(@Param("record") IntimacyRank record, @Param("example") IntimacyRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int updateByPrimaryKeySelective(IntimacyRank record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_intimacy_rank
     *
     * @mbggenerated Wed Oct 10 11:39:58 CST 2018
     */
    int updateByPrimaryKey(IntimacyRank record);
}