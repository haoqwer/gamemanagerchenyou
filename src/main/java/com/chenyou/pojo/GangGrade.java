package com.chenyou.pojo;

public class GangGrade {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_gang_grade.gang_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    private Integer gangId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_gang_grade.gong_grade
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    private String gongGrade;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_gang_grade.gong_count
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    private Integer gongCount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_gang_grade.server_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    private Integer serverId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_gang_grade.channel_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    private Integer channelId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_gang_grade.gang_id
     *
     * @return the value of t_gang_grade.gang_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public Integer getGangId() {
        return gangId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_gang_grade.gang_id
     *
     * @param gangId the value for t_gang_grade.gang_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public void setGangId(Integer gangId) {
        this.gangId = gangId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_gang_grade.gong_grade
     *
     * @return the value of t_gang_grade.gong_grade
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public String getGongGrade() {
        return gongGrade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_gang_grade.gong_grade
     *
     * @param gongGrade the value for t_gang_grade.gong_grade
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public void setGongGrade(String gongGrade) {
        this.gongGrade = gongGrade;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_gang_grade.gong_count
     *
     * @return the value of t_gang_grade.gong_count
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public Integer getGongCount() {
        return gongCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_gang_grade.gong_count
     *
     * @param gongCount the value for t_gang_grade.gong_count
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public void setGongCount(Integer gongCount) {
        this.gongCount = gongCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_gang_grade.server_id
     *
     * @return the value of t_gang_grade.server_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public Integer getServerId() {
        return serverId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_gang_grade.server_id
     *
     * @param serverId the value for t_gang_grade.server_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public void setServerId(Integer serverId) {
        this.serverId = serverId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_gang_grade.channel_id
     *
     * @return the value of t_gang_grade.channel_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public Integer getChannelId() {
        return channelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_gang_grade.channel_id
     *
     * @param channelId the value for t_gang_grade.channel_id
     *
     * @mbggenerated Fri Sep 14 16:12:33 CST 2018
     */
    public void setChannelId(Integer channelId) {
        this.channelId = channelId;
    }

    @Override
    public String toString() {
        return "GangGrade{" +
                "gangId=" + gangId +
                ", gongGrade='" + gongGrade + '\'' +
                ", gongCount=" + gongCount +
                ", serverId=" + serverId +
                ", channelId=" + channelId +
                '}';
    }
}