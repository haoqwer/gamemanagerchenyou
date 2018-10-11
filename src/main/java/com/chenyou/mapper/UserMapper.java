package com.chenyou.mapper;

import com.chenyou.pojo.User;
import com.chenyou.pojo.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int countByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int deleteByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int deleteByPrimaryKey(Integer userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int insert(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int insertSelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    List<User> selectByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    User selectByPrimaryKey(Integer userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int updateByPrimaryKeySelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table sys_user
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    int updateByPrimaryKey(User record);

    /**
     * 检验登录名是否唯一
     * @param loginName
     * @return
     */
    int checkLoginNameUnique(String loginName);

    /**
     * 检验手机号是否唯一
     * @param phone
     * @return
     */
    User checkPhoneUnique(String phone);

    //根据用户获取到登录名
    User getUserByLoginName(String loginName);

    //修改登录信息
    void updateLoginInfo(User user);

    User getUserByUserId(Integer userId);

    User getPasswordByLoginName(String loginName);

}