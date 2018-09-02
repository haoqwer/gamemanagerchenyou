package com.chenyou.service;

import com.chenyou.pojo.User;
import com.chenyou.pojo.entity.PageResult;

public interface UserService {

    /**
     * 根据用户名查询用户是否存在
     * @param loginName
     * @return
     */
     User userLogin(String loginName);

    /**
     * 查看所有用户
     * @param pageNum
     * @param pageSize
     * @return
     */
     PageResult findPage(int pageNum,int pageSize);

    /**
     * 根据条件查询用户
     * @param user
     * @param pageNum
     * @param pageSize
     * @return
     */
     PageResult findPage(User user,int pageNum,int pageSize);

    /**
     * 添加用户时,校验登录名是否唯一
     * @param loginName
     * @return
     */
     String checkLoginNameUnique(String  loginName);

    /**
     * 校验手机号是否唯一
     * @param user
     * @return
     */
     String checkPhoneUnique(User user);

    /**
     * 返回所有的用户个数
     * @return
     */
    int countListUser();

    /**
     * 新增用户
     * @param user
     * @return
     */
      int saveUser(User user);

    /**
     * 用户管理时查看用户和修改时展现的用户
     * @param userId
     * @return
     */
     User getUserByUserId(Integer userId);

    /**
     * 修改用户
     * @param user
     * @return
     */
     int updateUser(User user);

    /**
     * 用户修改密码
     * @param user
     * @return
     */
      int changePassword(User user);

    /**
     * 用户删除
     * @param userIds
     * @return
     */
     void removeUserByUserId(Integer[] userIds);




}
