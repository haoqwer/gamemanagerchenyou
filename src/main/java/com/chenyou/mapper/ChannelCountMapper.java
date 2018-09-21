package com.chenyou.mapper;

import com.chenyou.pojo.ChannelCount;
import com.chenyou.pojo.ChannelCountExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ChannelCountMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int countByExample(ChannelCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int deleteByExample(ChannelCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int deleteByPrimaryKey(Integer channelId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int insert(ChannelCount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int insertSelective(ChannelCount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    List<ChannelCount> selectByExample(ChannelCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    ChannelCount selectByPrimaryKey(Integer channelId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int updateByExampleSelective(@Param("record") ChannelCount record, @Param("example") ChannelCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int updateByExample(@Param("record") ChannelCount record, @Param("example") ChannelCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int updateByPrimaryKeySelective(ChannelCount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_channel_count
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    int updateByPrimaryKey(ChannelCount record);
}