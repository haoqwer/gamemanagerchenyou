package com.chenyou.mapper;

import com.chenyou.pojo.EvervyDayRecharge;
import com.chenyou.pojo.EvervyDayRechargeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface EvervyDayRechargeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int countByExample(EvervyDayRechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int deleteByExample(EvervyDayRechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int deleteByPrimaryKey(Integer rechargeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int insert(EvervyDayRecharge record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int insertSelective(EvervyDayRecharge record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    List<EvervyDayRecharge> selectByExample(EvervyDayRechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    EvervyDayRecharge selectByPrimaryKey(Integer rechargeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByExampleSelective(@Param("record") EvervyDayRecharge record, @Param("example") EvervyDayRechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByExample(@Param("record") EvervyDayRecharge record, @Param("example") EvervyDayRechargeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByPrimaryKeySelective(EvervyDayRecharge record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_everyday_recharge
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    int updateByPrimaryKey(EvervyDayRecharge record);
}