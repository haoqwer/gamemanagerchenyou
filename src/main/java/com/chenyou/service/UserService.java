package com.chenyou.service;

import com.chenyou.pojo.User;
import com.chenyou.pojo.entity.PageResult;

public interface UserService {

    /**
     * 根据用户名查询用户是否存在
     * @param loginName
     * @return
     */
    public User userLogin(String loginName);

    /**
     * 查看所有用户
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageResult findPage(int pageNum,int pageSize);

    /**
     * 根据条件查询用户
     * @param user
     * @param pageNum
     * @param pageSize
     * @return
     */
    public PageResult findPage(User user,int pageNum,int pageSize);

    /**
     * 添加用户时,校验登录名是否唯一
     * @param loginName
     * @return
     */
    public String checkLoginNameUnique(String  loginName);

    /**
     * 校验手机号是否唯一
     * @param user
     * @return
     */
    public String checkPhoneUnique(User user);

    /**
     * 新增用户
     * @param user
     * @return
     */
    public  int insertUser(User user);

    /**
     * 用户管理时查看用户和修改时展现的用户
     * @param userId
     * @return
     */
    public User selectUserByUserId(Integer userId);

    /**
     * 修改用户
     * @param user
     * @return
     */
    public int updateUser(User user);

    /**
     * 用户修改密码
     * @param user
     * @return
     */
    public  int update(User user);

    /**
     * 用户删除
     * @param userIds
     * @return
     */
    public void deleUserByIds(Integer[] userIds);




}
