package com.chenyou.mapper;

import com.chenyou.pojo.ActivityRank;
import com.chenyou.pojo.ActivityRankExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ActivityRankMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int countByExample(ActivityRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int deleteByExample(ActivityRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int insert(ActivityRank record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int insertSelective(ActivityRank record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    List<ActivityRank> selectByExample(ActivityRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    ActivityRank selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int updateByExampleSelective(@Param("record") ActivityRank record, @Param("example") ActivityRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int updateByExample(@Param("record") ActivityRank record, @Param("example") ActivityRankExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int updateByPrimaryKeySelective(ActivityRank record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_activity_rank
     *
     * @mbggenerated Fri Sep 14 21:22:05 CST 2018
     */
    int updateByPrimaryKey(ActivityRank record);
}