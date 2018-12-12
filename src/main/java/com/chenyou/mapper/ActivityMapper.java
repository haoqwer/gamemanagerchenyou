package com.chenyou.mapper;

import com.chenyou.pojo.Activity;
import com.chenyou.pojo.ActivityExample;
import com.chenyou.pojo.ActivityKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ActivityMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int countByExample(ActivityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int deleteByExample(ActivityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int deleteByPrimaryKey(ActivityKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int insert(Activity record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int insertSelective(Activity record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    List<Activity> selectByExample(ActivityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    Activity selectByPrimaryKey(ActivityKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int updateByExampleSelective(@Param("record") Activity record, @Param("example") ActivityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int updateByExample(@Param("record") Activity record, @Param("example") ActivityExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int updateByPrimaryKeySelective(Activity record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table s_activity
     *
     * @mbggenerated Tue Dec 11 18:56:07 CST 2018
     */
    int updateByPrimaryKey(Activity record);

    Activity getActivity(Activity activity);
}