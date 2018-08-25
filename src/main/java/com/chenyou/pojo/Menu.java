package com.chenyou.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Menu {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.menu_id
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private Integer menuId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.menu_name
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private String menuName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.parent_id
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private Integer parentId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.order_num
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private Integer orderNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.url
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private String url;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.menu_type
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private String menuType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.perms
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private String perms;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.icon
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private String icon;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.create_by
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private String createBy;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.create_time
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.update_by
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private String updateBy;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.update_time
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private Date updateTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column sys_menu.remark
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    private String remark;


    /**
     *父菜单名称
     */
    private String parentName;


    /** 子菜单 */
    private List<Menu> children = new ArrayList<Menu>();


    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.menu_id
     *
     * @return the value of sys_menu.menu_id
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public Integer getMenuId() {
        return menuId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.menu_id
     *
     * @param menuId the value for sys_menu.menu_id
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.menu_name
     *
     * @return the value of sys_menu.menu_name
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public String getMenuName() {
        return menuName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.menu_name
     *
     * @param menuName the value for sys_menu.menu_name
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.parent_id
     *
     * @return the value of sys_menu.parent_id
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public Integer getParentId() {
        return parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.parent_id
     *
     * @param parentId the value for sys_menu.parent_id
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.order_num
     *
     * @return the value of sys_menu.order_num
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public Integer getOrderNum() {
        return orderNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.order_num
     *
     * @param orderNum the value for sys_menu.order_num
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.url
     *
     * @return the value of sys_menu.url
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public String getUrl() {
        return url;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.url
     *
     * @param url the value for sys_menu.url
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.menu_type
     *
     * @return the value of sys_menu.menu_type
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public String getMenuType() {
        return menuType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.menu_type
     *
     * @param menuType the value for sys_menu.menu_type
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setMenuType(String menuType) {
        this.menuType = menuType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.perms
     *
     * @return the value of sys_menu.perms
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public String getPerms() {
        return perms;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.perms
     *
     * @param perms the value for sys_menu.perms
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setPerms(String perms) {
        this.perms = perms;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.icon
     *
     * @return the value of sys_menu.icon
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public String getIcon() {
        return icon;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.icon
     *
     * @param icon the value for sys_menu.icon
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setIcon(String icon) {
        this.icon = icon;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.create_by
     *
     * @return the value of sys_menu.create_by
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public String getCreateBy() {
        return createBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.create_by
     *
     * @param createBy the value for sys_menu.create_by
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.create_time
     *
     * @return the value of sys_menu.create_time
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.create_time
     *
     * @param createTime the value for sys_menu.create_time
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.update_by
     *
     * @return the value of sys_menu.update_by
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public String getUpdateBy() {
        return updateBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.update_by
     *
     * @param updateBy the value for sys_menu.update_by
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.update_time
     *
     * @return the value of sys_menu.update_time
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.update_time
     *
     * @param updateTime the value for sys_menu.update_time
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column sys_menu.remark
     *
     * @return the value of sys_menu.remark
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column sys_menu.remark
     *
     * @param remark the value for sys_menu.remark
     *
     * @mbggenerated Fri Aug 03 15:17:28 CST 2018
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    public List<Menu> getChildren() {
        return children;
    }

    public void setChildren(List<Menu> children) {
        this.children = children;
    }

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }
}