package com.chenyou.mapper;

import com.chenyou.pojo.TemplateName;
import com.chenyou.pojo.TemplateNameExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TemplateNameMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int countByExample(TemplateNameExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int deleteByExample(TemplateNameExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int insert(TemplateName record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int insertSelective(TemplateName record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    List<TemplateName> selectByExample(TemplateNameExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    TemplateName selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int updateByExampleSelective(@Param("record") TemplateName record, @Param("example") TemplateNameExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int updateByExample(@Param("record") TemplateName record, @Param("example") TemplateNameExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int updateByPrimaryKeySelective(TemplateName record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_name
     *
     * @mbggenerated Wed Nov 21 10:54:11 CST 2018
     */
    int updateByPrimaryKey(TemplateName record);
}