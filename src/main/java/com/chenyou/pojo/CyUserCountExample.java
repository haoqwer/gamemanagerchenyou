package com.chenyou.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CyUserCountExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public CyUserCountExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andUserCountIdIsNull() {
            addCriterion("user_count_id is null");
            return (Criteria) this;
        }

        public Criteria andUserCountIdIsNotNull() {
            addCriterion("user_count_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserCountIdEqualTo(Integer value) {
            addCriterion("user_count_id =", value, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdNotEqualTo(Integer value) {
            addCriterion("user_count_id <>", value, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdGreaterThan(Integer value) {
            addCriterion("user_count_id >", value, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_count_id >=", value, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdLessThan(Integer value) {
            addCriterion("user_count_id <", value, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_count_id <=", value, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdIn(List<Integer> values) {
            addCriterion("user_count_id in", values, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdNotIn(List<Integer> values) {
            addCriterion("user_count_id not in", values, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdBetween(Integer value1, Integer value2) {
            addCriterion("user_count_id between", value1, value2, "userCountId");
            return (Criteria) this;
        }

        public Criteria andUserCountIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_count_id not between", value1, value2, "userCountId");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersIsNull() {
            addCriterion("avg_online_users is null");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersIsNotNull() {
            addCriterion("avg_online_users is not null");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersEqualTo(Integer value) {
            addCriterion("avg_online_users =", value, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersNotEqualTo(Integer value) {
            addCriterion("avg_online_users <>", value, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersGreaterThan(Integer value) {
            addCriterion("avg_online_users >", value, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersGreaterThanOrEqualTo(Integer value) {
            addCriterion("avg_online_users >=", value, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersLessThan(Integer value) {
            addCriterion("avg_online_users <", value, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersLessThanOrEqualTo(Integer value) {
            addCriterion("avg_online_users <=", value, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersIn(List<Integer> values) {
            addCriterion("avg_online_users in", values, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersNotIn(List<Integer> values) {
            addCriterion("avg_online_users not in", values, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersBetween(Integer value1, Integer value2) {
            addCriterion("avg_online_users between", value1, value2, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgOnlineUsersNotBetween(Integer value1, Integer value2) {
            addCriterion("avg_online_users not between", value1, value2, "avgOnlineUsers");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeIsNull() {
            addCriterion("avg_gametime is null");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeIsNotNull() {
            addCriterion("avg_gametime is not null");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeEqualTo(Integer value) {
            addCriterion("avg_gametime =", value, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeNotEqualTo(Integer value) {
            addCriterion("avg_gametime <>", value, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeGreaterThan(Integer value) {
            addCriterion("avg_gametime >", value, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeGreaterThanOrEqualTo(Integer value) {
            addCriterion("avg_gametime >=", value, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeLessThan(Integer value) {
            addCriterion("avg_gametime <", value, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeLessThanOrEqualTo(Integer value) {
            addCriterion("avg_gametime <=", value, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeIn(List<Integer> values) {
            addCriterion("avg_gametime in", values, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeNotIn(List<Integer> values) {
            addCriterion("avg_gametime not in", values, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeBetween(Integer value1, Integer value2) {
            addCriterion("avg_gametime between", value1, value2, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgGametimeNotBetween(Integer value1, Integer value2) {
            addCriterion("avg_gametime not between", value1, value2, "avgGametime");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumIsNull() {
            addCriterion("avg_login_num is null");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumIsNotNull() {
            addCriterion("avg_login_num is not null");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumEqualTo(Integer value) {
            addCriterion("avg_login_num =", value, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumNotEqualTo(Integer value) {
            addCriterion("avg_login_num <>", value, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumGreaterThan(Integer value) {
            addCriterion("avg_login_num >", value, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("avg_login_num >=", value, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumLessThan(Integer value) {
            addCriterion("avg_login_num <", value, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumLessThanOrEqualTo(Integer value) {
            addCriterion("avg_login_num <=", value, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumIn(List<Integer> values) {
            addCriterion("avg_login_num in", values, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumNotIn(List<Integer> values) {
            addCriterion("avg_login_num not in", values, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumBetween(Integer value1, Integer value2) {
            addCriterion("avg_login_num between", value1, value2, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andAvgLoginNumNotBetween(Integer value1, Integer value2) {
            addCriterion("avg_login_num not between", value1, value2, "avgLoginNum");
            return (Criteria) this;
        }

        public Criteria andActivateUserIsNull() {
            addCriterion("activate_user is null");
            return (Criteria) this;
        }

        public Criteria andActivateUserIsNotNull() {
            addCriterion("activate_user is not null");
            return (Criteria) this;
        }

        public Criteria andActivateUserEqualTo(Integer value) {
            addCriterion("activate_user =", value, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserNotEqualTo(Integer value) {
            addCriterion("activate_user <>", value, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserGreaterThan(Integer value) {
            addCriterion("activate_user >", value, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("activate_user >=", value, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserLessThan(Integer value) {
            addCriterion("activate_user <", value, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserLessThanOrEqualTo(Integer value) {
            addCriterion("activate_user <=", value, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserIn(List<Integer> values) {
            addCriterion("activate_user in", values, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserNotIn(List<Integer> values) {
            addCriterion("activate_user not in", values, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserBetween(Integer value1, Integer value2) {
            addCriterion("activate_user between", value1, value2, "activateUser");
            return (Criteria) this;
        }

        public Criteria andActivateUserNotBetween(Integer value1, Integer value2) {
            addCriterion("activate_user not between", value1, value2, "activateUser");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineIsNull() {
            addCriterion("peak_online is null");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineIsNotNull() {
            addCriterion("peak_online is not null");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineEqualTo(Integer value) {
            addCriterion("peak_online =", value, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineNotEqualTo(Integer value) {
            addCriterion("peak_online <>", value, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineGreaterThan(Integer value) {
            addCriterion("peak_online >", value, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineGreaterThanOrEqualTo(Integer value) {
            addCriterion("peak_online >=", value, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineLessThan(Integer value) {
            addCriterion("peak_online <", value, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineLessThanOrEqualTo(Integer value) {
            addCriterion("peak_online <=", value, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineIn(List<Integer> values) {
            addCriterion("peak_online in", values, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineNotIn(List<Integer> values) {
            addCriterion("peak_online not in", values, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineBetween(Integer value1, Integer value2) {
            addCriterion("peak_online between", value1, value2, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andPeakOnlineNotBetween(Integer value1, Integer value2) {
            addCriterion("peak_online not between", value1, value2, "peakOnline");
            return (Criteria) this;
        }

        public Criteria andDayLeaveIsNull() {
            addCriterion("day_leave is null");
            return (Criteria) this;
        }

        public Criteria andDayLeaveIsNotNull() {
            addCriterion("day_leave is not null");
            return (Criteria) this;
        }

        public Criteria andDayLeaveEqualTo(String value) {
            addCriterion("day_leave =", value, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveNotEqualTo(String value) {
            addCriterion("day_leave <>", value, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveGreaterThan(String value) {
            addCriterion("day_leave >", value, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveGreaterThanOrEqualTo(String value) {
            addCriterion("day_leave >=", value, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveLessThan(String value) {
            addCriterion("day_leave <", value, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveLessThanOrEqualTo(String value) {
            addCriterion("day_leave <=", value, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveLike(String value) {
            addCriterion("day_leave like", value, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveNotLike(String value) {
            addCriterion("day_leave not like", value, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveIn(List<String> values) {
            addCriterion("day_leave in", values, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveNotIn(List<String> values) {
            addCriterion("day_leave not in", values, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveBetween(String value1, String value2) {
            addCriterion("day_leave between", value1, value2, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andDayLeaveNotBetween(String value1, String value2) {
            addCriterion("day_leave not between", value1, value2, "dayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveIsNull() {
            addCriterion("threeday_leave is null");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveIsNotNull() {
            addCriterion("threeday_leave is not null");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveEqualTo(String value) {
            addCriterion("threeday_leave =", value, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveNotEqualTo(String value) {
            addCriterion("threeday_leave <>", value, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveGreaterThan(String value) {
            addCriterion("threeday_leave >", value, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveGreaterThanOrEqualTo(String value) {
            addCriterion("threeday_leave >=", value, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveLessThan(String value) {
            addCriterion("threeday_leave <", value, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveLessThanOrEqualTo(String value) {
            addCriterion("threeday_leave <=", value, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveLike(String value) {
            addCriterion("threeday_leave like", value, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveNotLike(String value) {
            addCriterion("threeday_leave not like", value, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveIn(List<String> values) {
            addCriterion("threeday_leave in", values, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveNotIn(List<String> values) {
            addCriterion("threeday_leave not in", values, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveBetween(String value1, String value2) {
            addCriterion("threeday_leave between", value1, value2, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andThreedayLeaveNotBetween(String value1, String value2) {
            addCriterion("threeday_leave not between", value1, value2, "threedayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveIsNull() {
            addCriterion("savenday_leave is null");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveIsNotNull() {
            addCriterion("savenday_leave is not null");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveEqualTo(String value) {
            addCriterion("savenday_leave =", value, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveNotEqualTo(String value) {
            addCriterion("savenday_leave <>", value, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveGreaterThan(String value) {
            addCriterion("savenday_leave >", value, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveGreaterThanOrEqualTo(String value) {
            addCriterion("savenday_leave >=", value, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveLessThan(String value) {
            addCriterion("savenday_leave <", value, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveLessThanOrEqualTo(String value) {
            addCriterion("savenday_leave <=", value, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveLike(String value) {
            addCriterion("savenday_leave like", value, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveNotLike(String value) {
            addCriterion("savenday_leave not like", value, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveIn(List<String> values) {
            addCriterion("savenday_leave in", values, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveNotIn(List<String> values) {
            addCriterion("savenday_leave not in", values, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveBetween(String value1, String value2) {
            addCriterion("savenday_leave between", value1, value2, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andSavendayLeaveNotBetween(String value1, String value2) {
            addCriterion("savenday_leave not between", value1, value2, "savendayLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveIsNull() {
            addCriterion("month_leave is null");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveIsNotNull() {
            addCriterion("month_leave is not null");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveEqualTo(String value) {
            addCriterion("month_leave =", value, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveNotEqualTo(String value) {
            addCriterion("month_leave <>", value, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveGreaterThan(String value) {
            addCriterion("month_leave >", value, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveGreaterThanOrEqualTo(String value) {
            addCriterion("month_leave >=", value, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveLessThan(String value) {
            addCriterion("month_leave <", value, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveLessThanOrEqualTo(String value) {
            addCriterion("month_leave <=", value, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveLike(String value) {
            addCriterion("month_leave like", value, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveNotLike(String value) {
            addCriterion("month_leave not like", value, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveIn(List<String> values) {
            addCriterion("month_leave in", values, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveNotIn(List<String> values) {
            addCriterion("month_leave not in", values, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveBetween(String value1, String value2) {
            addCriterion("month_leave between", value1, value2, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andMonthLeaveNotBetween(String value1, String value2) {
            addCriterion("month_leave not between", value1, value2, "monthLeave");
            return (Criteria) this;
        }

        public Criteria andServerIdIsNull() {
            addCriterion("server_id is null");
            return (Criteria) this;
        }

        public Criteria andServerIdIsNotNull() {
            addCriterion("server_id is not null");
            return (Criteria) this;
        }

        public Criteria andServerIdEqualTo(Integer value) {
            addCriterion("server_id =", value, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdNotEqualTo(Integer value) {
            addCriterion("server_id <>", value, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdGreaterThan(Integer value) {
            addCriterion("server_id >", value, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("server_id >=", value, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdLessThan(Integer value) {
            addCriterion("server_id <", value, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdLessThanOrEqualTo(Integer value) {
            addCriterion("server_id <=", value, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdIn(List<Integer> values) {
            addCriterion("server_id in", values, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdNotIn(List<Integer> values) {
            addCriterion("server_id not in", values, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdBetween(Integer value1, Integer value2) {
            addCriterion("server_id between", value1, value2, "serverId");
            return (Criteria) this;
        }

        public Criteria andServerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("server_id not between", value1, value2, "serverId");
            return (Criteria) this;
        }

        public Criteria andChannelIdIsNull() {
            addCriterion("channel_id is null");
            return (Criteria) this;
        }

        public Criteria andChannelIdIsNotNull() {
            addCriterion("channel_id is not null");
            return (Criteria) this;
        }

        public Criteria andChannelIdEqualTo(Integer value) {
            addCriterion("channel_id =", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotEqualTo(Integer value) {
            addCriterion("channel_id <>", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdGreaterThan(Integer value) {
            addCriterion("channel_id >", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("channel_id >=", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdLessThan(Integer value) {
            addCriterion("channel_id <", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdLessThanOrEqualTo(Integer value) {
            addCriterion("channel_id <=", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdIn(List<Integer> values) {
            addCriterion("channel_id in", values, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotIn(List<Integer> values) {
            addCriterion("channel_id not in", values, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdBetween(Integer value1, Integer value2) {
            addCriterion("channel_id between", value1, value2, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotBetween(Integer value1, Integer value2) {
            addCriterion("channel_id not between", value1, value2, "channelId");
            return (Criteria) this;
        }

        public Criteria andCountTimeIsNull() {
            addCriterion("count_time is null");
            return (Criteria) this;
        }

        public Criteria andCountTimeIsNotNull() {
            addCriterion("count_time is not null");
            return (Criteria) this;
        }

        public Criteria andCountTimeEqualTo(Date value) {
            addCriterion("count_time =", value, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeNotEqualTo(Date value) {
            addCriterion("count_time <>", value, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeGreaterThan(Date value) {
            addCriterion("count_time >", value, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("count_time >=", value, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeLessThan(Date value) {
            addCriterion("count_time <", value, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeLessThanOrEqualTo(Date value) {
            addCriterion("count_time <=", value, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeIn(List<Date> values) {
            addCriterion("count_time in", values, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeNotIn(List<Date> values) {
            addCriterion("count_time not in", values, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeBetween(Date value1, Date value2) {
            addCriterion("count_time between", value1, value2, "countTime");
            return (Criteria) this;
        }

        public Criteria andCountTimeNotBetween(Date value1, Date value2) {
            addCriterion("count_time not between", value1, value2, "countTime");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_cyuser_count
     *
     * @mbggenerated do_not_delete_during_merge Sat Sep 08 10:57:32 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_cyuser_count
     *
     * @mbggenerated Sat Sep 08 10:57:32 CST 2018
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}