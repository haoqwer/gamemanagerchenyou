package com.chenyou.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class RetainPlayerExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public RetainPlayerExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
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
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
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

        public Criteria andRetainIdIsNull() {
            addCriterion("retain_id is null");
            return (Criteria) this;
        }

        public Criteria andRetainIdIsNotNull() {
            addCriterion("retain_id is not null");
            return (Criteria) this;
        }

        public Criteria andRetainIdEqualTo(Integer value) {
            addCriterion("retain_id =", value, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdNotEqualTo(Integer value) {
            addCriterion("retain_id <>", value, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdGreaterThan(Integer value) {
            addCriterion("retain_id >", value, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("retain_id >=", value, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdLessThan(Integer value) {
            addCriterion("retain_id <", value, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdLessThanOrEqualTo(Integer value) {
            addCriterion("retain_id <=", value, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdIn(List<Integer> values) {
            addCriterion("retain_id in", values, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdNotIn(List<Integer> values) {
            addCriterion("retain_id not in", values, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdBetween(Integer value1, Integer value2) {
            addCriterion("retain_id between", value1, value2, "retainId");
            return (Criteria) this;
        }

        public Criteria andRetainIdNotBetween(Integer value1, Integer value2) {
            addCriterion("retain_id not between", value1, value2, "retainId");
            return (Criteria) this;
        }

        public Criteria andShowTimeIsNull() {
            addCriterion("show_time is null");
            return (Criteria) this;
        }

        public Criteria andShowTimeIsNotNull() {
            addCriterion("show_time is not null");
            return (Criteria) this;
        }

        public Criteria andShowTimeEqualTo(Date value) {
            addCriterion("show_time =", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeNotEqualTo(Date value) {
            addCriterion("show_time <>", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeGreaterThan(Date value) {
            addCriterion("show_time >", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("show_time >=", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeLessThan(Date value) {
            addCriterion("show_time <", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeLessThanOrEqualTo(Date value) {
            addCriterion("show_time <=", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeIn(List<Date> values) {
            addCriterion("show_time in", values, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeNotIn(List<Date> values) {
            addCriterion("show_time not in", values, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeBetween(Date value1, Date value2) {
            addCriterion("show_time between", value1, value2, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeNotBetween(Date value1, Date value2) {
            addCriterion("show_time not between", value1, value2, "showTime");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainIsNull() {
            addCriterion("oneday_retain is null");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainIsNotNull() {
            addCriterion("oneday_retain is not null");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainEqualTo(String value) {
            addCriterion("oneday_retain =", value, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainNotEqualTo(String value) {
            addCriterion("oneday_retain <>", value, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainGreaterThan(String value) {
            addCriterion("oneday_retain >", value, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainGreaterThanOrEqualTo(String value) {
            addCriterion("oneday_retain >=", value, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainLessThan(String value) {
            addCriterion("oneday_retain <", value, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainLessThanOrEqualTo(String value) {
            addCriterion("oneday_retain <=", value, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainLike(String value) {
            addCriterion("oneday_retain like", value, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainNotLike(String value) {
            addCriterion("oneday_retain not like", value, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainIn(List<String> values) {
            addCriterion("oneday_retain in", values, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainNotIn(List<String> values) {
            addCriterion("oneday_retain not in", values, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainBetween(String value1, String value2) {
            addCriterion("oneday_retain between", value1, value2, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andOnedayRetainNotBetween(String value1, String value2) {
            addCriterion("oneday_retain not between", value1, value2, "onedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainIsNull() {
            addCriterion("threeday_retain is null");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainIsNotNull() {
            addCriterion("threeday_retain is not null");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainEqualTo(String value) {
            addCriterion("threeday_retain =", value, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainNotEqualTo(String value) {
            addCriterion("threeday_retain <>", value, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainGreaterThan(String value) {
            addCriterion("threeday_retain >", value, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainGreaterThanOrEqualTo(String value) {
            addCriterion("threeday_retain >=", value, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainLessThan(String value) {
            addCriterion("threeday_retain <", value, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainLessThanOrEqualTo(String value) {
            addCriterion("threeday_retain <=", value, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainLike(String value) {
            addCriterion("threeday_retain like", value, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainNotLike(String value) {
            addCriterion("threeday_retain not like", value, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainIn(List<String> values) {
            addCriterion("threeday_retain in", values, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainNotIn(List<String> values) {
            addCriterion("threeday_retain not in", values, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainBetween(String value1, String value2) {
            addCriterion("threeday_retain between", value1, value2, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andThreedayRetainNotBetween(String value1, String value2) {
            addCriterion("threeday_retain not between", value1, value2, "threedayRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainIsNull() {
            addCriterion("weekly_retain is null");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainIsNotNull() {
            addCriterion("weekly_retain is not null");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainEqualTo(String value) {
            addCriterion("weekly_retain =", value, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainNotEqualTo(String value) {
            addCriterion("weekly_retain <>", value, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainGreaterThan(String value) {
            addCriterion("weekly_retain >", value, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainGreaterThanOrEqualTo(String value) {
            addCriterion("weekly_retain >=", value, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainLessThan(String value) {
            addCriterion("weekly_retain <", value, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainLessThanOrEqualTo(String value) {
            addCriterion("weekly_retain <=", value, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainLike(String value) {
            addCriterion("weekly_retain like", value, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainNotLike(String value) {
            addCriterion("weekly_retain not like", value, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainIn(List<String> values) {
            addCriterion("weekly_retain in", values, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainNotIn(List<String> values) {
            addCriterion("weekly_retain not in", values, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainBetween(String value1, String value2) {
            addCriterion("weekly_retain between", value1, value2, "weeklyRetain");
            return (Criteria) this;
        }

        public Criteria andWeeklyRetainNotBetween(String value1, String value2) {
            addCriterion("weekly_retain not between", value1, value2, "weeklyRetain");
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
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_retain_player
     *
     * @mbggenerated do_not_delete_during_merge Thu Sep 13 18:01:17 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_retain_player
     *
     * @mbggenerated Thu Sep 13 18:01:17 CST 2018
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