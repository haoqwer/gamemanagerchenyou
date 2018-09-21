package com.chenyou.mapper;

import com.chenyou.pojo.VipCount;
import com.chenyou.pojo.VipCountExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VipCountMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int countByExample(VipCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int deleteByExample(VipCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int deleteByPrimaryKey(Integer vipId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int insert(VipCount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int insertSelective(VipCount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    List<VipCount> selectByExample(VipCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    VipCount selectByPrimaryKey(Integer vipId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByExampleSelective(@Param("record") VipCount record, @Param("example") VipCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByExample(@Param("record") VipCount record, @Param("example") VipCountExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByPrimaryKeySelective(VipCount record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_vip_count
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByPrimaryKey(VipCount record);
}