package com.chenyou.mapper;

import com.chenyou.DataSource;
import com.chenyou.pojo.Notify;
import com.chenyou.pojo.NotifyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@DataSource("dataSource2")
public interface NotifyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int countByExample(NotifyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int deleteByExample(NotifyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int insert(Notify record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int insertSelective(Notify record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    List<Notify> selectByExample(NotifyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    Notify selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int updateByExampleSelective(@Param("record") Notify record, @Param("example") NotifyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int updateByExample(@Param("record") Notify record, @Param("example") NotifyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int updateByPrimaryKeySelective(Notify record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table d_noity
     *
     * @mbggenerated Tue Jan 08 09:59:40 CST 2019
     */
    int updateByPrimaryKey(Notify record);
}