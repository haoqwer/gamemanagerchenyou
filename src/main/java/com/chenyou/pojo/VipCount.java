package com.chenyou.pojo;

public class VipCount {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_vip_count.vip_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    private Integer vipId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_vip_count.vip_grade
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    private String vipGrade;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_vip_count.vip_online_count
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    private Integer vipOnlineCount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_vip_count.server_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    private Integer serverId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_vip_count.channel_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    private String channelId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_vip_count.show_time
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    private String showTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_vip_count.vip_id
     *
     * @return the value of t_vip_count.vip_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public Integer getVipId() {
        return vipId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_vip_count.vip_id
     *
     * @param vipId the value for t_vip_count.vip_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public void setVipId(Integer vipId) {
        this.vipId = vipId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_vip_count.vip_grade
     *
     * @return the value of t_vip_count.vip_grade
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public String getVipGrade() {
        return vipGrade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_vip_count.vip_grade
     *
     * @param vipGrade the value for t_vip_count.vip_grade
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public void setVipGrade(String vipGrade) {
        this.vipGrade = vipGrade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_vip_count.vip_online_count
     *
     * @return the value of t_vip_count.vip_online_count
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public Integer getVipOnlineCount() {
        return vipOnlineCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_vip_count.vip_online_count
     *
     * @param vipOnlineCount the value for t_vip_count.vip_online_count
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public void setVipOnlineCount(Integer vipOnlineCount) {
        this.vipOnlineCount = vipOnlineCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_vip_count.server_id
     *
     * @return the value of t_vip_count.server_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public Integer getServerId() {
        return serverId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_vip_count.server_id
     *
     * @param serverId the value for t_vip_count.server_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public void setServerId(Integer serverId) {
        this.serverId = serverId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_vip_count.channel_id
     *
     * @return the value of t_vip_count.channel_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public String getChannelId() {
        return channelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_vip_count.channel_id
     *
     * @param channelId the value for t_vip_count.channel_id
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public void setChannelId(String channelId) {
        this.channelId = channelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_vip_count.show_time
     *
     * @return the value of t_vip_count.show_time
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public String getShowTime() {
        return showTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_vip_count.show_time
     *
     * @param showTime the value for t_vip_count.show_time
     *
     * @mbggenerated Wed Oct 10 11:03:06 CST 2018
     */
    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    @Override
    public String toString() {
        return "VipCount{" +
                "vipId=" + vipId +
                ", vipGrade='" + vipGrade + '\'' +
                ", vipOnlineCount=" + vipOnlineCount +
                ", serverId=" + serverId +
                ", channelId='" + channelId + '\'' +
                ", showTime='" + showTime + '\'' +
                '}';
    }
}