package com.chenyou.mapper;

import com.chenyou.pojo.TemplateManager;
import com.chenyou.pojo.TemplateManagerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TemplateManagerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int countByExample(TemplateManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int deleteByExample(TemplateManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int insert(TemplateManager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int insertSelective(TemplateManager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    List<TemplateManager> selectByExample(TemplateManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    TemplateManager selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int updateByExampleSelective(@Param("record") TemplateManager record, @Param("example") TemplateManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int updateByExample(@Param("record") TemplateManager record, @Param("example") TemplateManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int updateByPrimaryKeySelective(TemplateManager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_template_manager
     *
     * @mbggenerated Tue Dec 11 17:26:05 CST 2018
     */
    int updateByPrimaryKey(TemplateManager record);

    TemplateManager checkActiveIdUnique(@Param("activeId") String activeId,@Param("templateId") Integer templateId);
}