package com.chenyou.pojo;

public class AwayOutput {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_away_output.away_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    private Integer awayId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_away_output.away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    private String awayOutput;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_away_output.count_player
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    private Integer countPlayer;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_away_output.server_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    private Integer serverId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_away_output.channel_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    private String channelId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_away_output.show_time
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    private String showTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_away_output.away_id
     *
     * @return the value of t_away_output.away_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public Integer getAwayId() {
        return awayId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_away_output.away_id
     *
     * @param awayId the value for t_away_output.away_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public void setAwayId(Integer awayId) {
        this.awayId = awayId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_away_output.away_output
     *
     * @return the value of t_away_output.away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public String getAwayOutput() {
        return awayOutput;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_away_output.away_output
     *
     * @param awayOutput the value for t_away_output.away_output
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public void setAwayOutput(String awayOutput) {
        this.awayOutput = awayOutput;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_away_output.count_player
     *
     * @return the value of t_away_output.count_player
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public Integer getCountPlayer() {
        return countPlayer;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_away_output.count_player
     *
     * @param countPlayer the value for t_away_output.count_player
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public void setCountPlayer(Integer countPlayer) {
        this.countPlayer = countPlayer;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_away_output.server_id
     *
     * @return the value of t_away_output.server_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public Integer getServerId() {
        return serverId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_away_output.server_id
     *
     * @param serverId the value for t_away_output.server_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public void setServerId(Integer serverId) {
        this.serverId = serverId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_away_output.channel_id
     *
     * @return the value of t_away_output.channel_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public String getChannelId() {
        return channelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_away_output.channel_id
     *
     * @param channelId the value for t_away_output.channel_id
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public void setChannelId(String channelId) {
        this.channelId = channelId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_away_output.show_time
     *
     * @return the value of t_away_output.show_time
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public String getShowTime() {
        return showTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_away_output.show_time
     *
     * @param showTime the value for t_away_output.show_time
     *
     * @mbggenerated Wed Oct 10 10:07:22 CST 2018
     */
    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    @Override
    public String toString() {
        return "AwayOutput{" +
                "awayId=" + awayId +
                ", awayOutput='" + awayOutput + '\'' +
                ", countPlayer=" + countPlayer +
                ", serverId=" + serverId +
                ", channelId='" + channelId + '\'' +
                ", showTime='" + showTime + '\'' +
                '}';
    }
}