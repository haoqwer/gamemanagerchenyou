package com.chenyou.pojo;

public class LoginDay {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_login_day.login_day_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    private Integer loginDayId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_login_day.count_day
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    private Integer countDay;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_login_day.count_num
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    private Integer countNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_login_day.server_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    private Integer serverId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_login_day.channel_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    private Integer channelId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_login_day.login_day_id
     *
     * @return the value of t_login_day.login_day_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public Integer getLoginDayId() {
        return loginDayId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_login_day.login_day_id
     *
     * @param loginDayId the value for t_login_day.login_day_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public void setLoginDayId(Integer loginDayId) {
        this.loginDayId = loginDayId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_login_day.count_day
     *
     * @return the value of t_login_day.count_day
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public Integer getCountDay() {
        return countDay;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_login_day.count_day
     *
     * @param countDay the value for t_login_day.count_day
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public void setCountDay(Integer countDay) {
        this.countDay = countDay;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_login_day.count_num
     *
     * @return the value of t_login_day.count_num
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public Integer getCountNum() {
        return countNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_login_day.count_num
     *
     * @param countNum the value for t_login_day.count_num
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public void setCountNum(Integer countNum) {
        this.countNum = countNum;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_login_day.server_id
     *
     * @return the value of t_login_day.server_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public Integer getServerId() {
        return serverId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_login_day.server_id
     *
     * @param serverId the value for t_login_day.server_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public void setServerId(Integer serverId) {
        this.serverId = serverId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_login_day.channel_id
     *
     * @return the value of t_login_day.channel_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public Integer getChannelId() {
        return channelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_login_day.channel_id
     *
     * @param channelId the value for t_login_day.channel_id
     *
     * @mbggenerated Thu Sep 13 19:47:07 CST 2018
     */
    public void setChannelId(Integer channelId) {
        this.channelId = channelId;
    }

    @Override
    public String toString() {
        return "LoginDay{" +
                "loginDayId=" + loginDayId +
                ", countDay=" + countDay +
                ", countNum=" + countNum +
                ", serverId=" + serverId +
                ", channelId=" + channelId +
                '}';
    }
}