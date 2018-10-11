package com.chenyou.pojo;

import java.util.ArrayList;
import java.util.List;

public class GangRankExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public GangRankExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
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
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
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

        public Criteria andGangIdIsNull() {
            addCriterion("gang_id is null");
            return (Criteria) this;
        }

        public Criteria andGangIdIsNotNull() {
            addCriterion("gang_id is not null");
            return (Criteria) this;
        }

        public Criteria andGangIdEqualTo(Integer value) {
            addCriterion("gang_id =", value, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdNotEqualTo(Integer value) {
            addCriterion("gang_id <>", value, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdGreaterThan(Integer value) {
            addCriterion("gang_id >", value, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("gang_id >=", value, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdLessThan(Integer value) {
            addCriterion("gang_id <", value, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdLessThanOrEqualTo(Integer value) {
            addCriterion("gang_id <=", value, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdIn(List<Integer> values) {
            addCriterion("gang_id in", values, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdNotIn(List<Integer> values) {
            addCriterion("gang_id not in", values, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdBetween(Integer value1, Integer value2) {
            addCriterion("gang_id between", value1, value2, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangIdNotBetween(Integer value1, Integer value2) {
            addCriterion("gang_id not between", value1, value2, "gangId");
            return (Criteria) this;
        }

        public Criteria andGangRankIsNull() {
            addCriterion("gang_rank is null");
            return (Criteria) this;
        }

        public Criteria andGangRankIsNotNull() {
            addCriterion("gang_rank is not null");
            return (Criteria) this;
        }

        public Criteria andGangRankEqualTo(Integer value) {
            addCriterion("gang_rank =", value, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankNotEqualTo(Integer value) {
            addCriterion("gang_rank <>", value, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankGreaterThan(Integer value) {
            addCriterion("gang_rank >", value, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankGreaterThanOrEqualTo(Integer value) {
            addCriterion("gang_rank >=", value, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankLessThan(Integer value) {
            addCriterion("gang_rank <", value, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankLessThanOrEqualTo(Integer value) {
            addCriterion("gang_rank <=", value, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankIn(List<Integer> values) {
            addCriterion("gang_rank in", values, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankNotIn(List<Integer> values) {
            addCriterion("gang_rank not in", values, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankBetween(Integer value1, Integer value2) {
            addCriterion("gang_rank between", value1, value2, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangRankNotBetween(Integer value1, Integer value2) {
            addCriterion("gang_rank not between", value1, value2, "gangRank");
            return (Criteria) this;
        }

        public Criteria andGangNameIsNull() {
            addCriterion("gang_name is null");
            return (Criteria) this;
        }

        public Criteria andGangNameIsNotNull() {
            addCriterion("gang_name is not null");
            return (Criteria) this;
        }

        public Criteria andGangNameEqualTo(String value) {
            addCriterion("gang_name =", value, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameNotEqualTo(String value) {
            addCriterion("gang_name <>", value, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameGreaterThan(String value) {
            addCriterion("gang_name >", value, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameGreaterThanOrEqualTo(String value) {
            addCriterion("gang_name >=", value, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameLessThan(String value) {
            addCriterion("gang_name <", value, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameLessThanOrEqualTo(String value) {
            addCriterion("gang_name <=", value, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameLike(String value) {
            addCriterion("gang_name like", value, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameNotLike(String value) {
            addCriterion("gang_name not like", value, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameIn(List<String> values) {
            addCriterion("gang_name in", values, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameNotIn(List<String> values) {
            addCriterion("gang_name not in", values, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameBetween(String value1, String value2) {
            addCriterion("gang_name between", value1, value2, "gangName");
            return (Criteria) this;
        }

        public Criteria andGangNameNotBetween(String value1, String value2) {
            addCriterion("gang_name not between", value1, value2, "gangName");
            return (Criteria) this;
        }

        public Criteria andForceValueIsNull() {
            addCriterion("force_value is null");
            return (Criteria) this;
        }

        public Criteria andForceValueIsNotNull() {
            addCriterion("force_value is not null");
            return (Criteria) this;
        }

        public Criteria andForceValueEqualTo(Integer value) {
            addCriterion("force_value =", value, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueNotEqualTo(Integer value) {
            addCriterion("force_value <>", value, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueGreaterThan(Integer value) {
            addCriterion("force_value >", value, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueGreaterThanOrEqualTo(Integer value) {
            addCriterion("force_value >=", value, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueLessThan(Integer value) {
            addCriterion("force_value <", value, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueLessThanOrEqualTo(Integer value) {
            addCriterion("force_value <=", value, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueIn(List<Integer> values) {
            addCriterion("force_value in", values, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueNotIn(List<Integer> values) {
            addCriterion("force_value not in", values, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueBetween(Integer value1, Integer value2) {
            addCriterion("force_value between", value1, value2, "forceValue");
            return (Criteria) this;
        }

        public Criteria andForceValueNotBetween(Integer value1, Integer value2) {
            addCriterion("force_value not between", value1, value2, "forceValue");
            return (Criteria) this;
        }

        public Criteria andGangGradeIsNull() {
            addCriterion("gang_grade is null");
            return (Criteria) this;
        }

        public Criteria andGangGradeIsNotNull() {
            addCriterion("gang_grade is not null");
            return (Criteria) this;
        }

        public Criteria andGangGradeEqualTo(String value) {
            addCriterion("gang_grade =", value, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeNotEqualTo(String value) {
            addCriterion("gang_grade <>", value, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeGreaterThan(String value) {
            addCriterion("gang_grade >", value, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeGreaterThanOrEqualTo(String value) {
            addCriterion("gang_grade >=", value, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeLessThan(String value) {
            addCriterion("gang_grade <", value, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeLessThanOrEqualTo(String value) {
            addCriterion("gang_grade <=", value, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeLike(String value) {
            addCriterion("gang_grade like", value, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeNotLike(String value) {
            addCriterion("gang_grade not like", value, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeIn(List<String> values) {
            addCriterion("gang_grade in", values, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeNotIn(List<String> values) {
            addCriterion("gang_grade not in", values, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeBetween(String value1, String value2) {
            addCriterion("gang_grade between", value1, value2, "gangGrade");
            return (Criteria) this;
        }

        public Criteria andGangGradeNotBetween(String value1, String value2) {
            addCriterion("gang_grade not between", value1, value2, "gangGrade");
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

        public Criteria andChannelIdEqualTo(String value) {
            addCriterion("channel_id =", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotEqualTo(String value) {
            addCriterion("channel_id <>", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdGreaterThan(String value) {
            addCriterion("channel_id >", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdGreaterThanOrEqualTo(String value) {
            addCriterion("channel_id >=", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdLessThan(String value) {
            addCriterion("channel_id <", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdLessThanOrEqualTo(String value) {
            addCriterion("channel_id <=", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdLike(String value) {
            addCriterion("channel_id like", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotLike(String value) {
            addCriterion("channel_id not like", value, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdIn(List<String> values) {
            addCriterion("channel_id in", values, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotIn(List<String> values) {
            addCriterion("channel_id not in", values, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdBetween(String value1, String value2) {
            addCriterion("channel_id between", value1, value2, "channelId");
            return (Criteria) this;
        }

        public Criteria andChannelIdNotBetween(String value1, String value2) {
            addCriterion("channel_id not between", value1, value2, "channelId");
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

        public Criteria andShowTimeEqualTo(String value) {
            addCriterion("show_time =", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeNotEqualTo(String value) {
            addCriterion("show_time <>", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeGreaterThan(String value) {
            addCriterion("show_time >", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeGreaterThanOrEqualTo(String value) {
            addCriterion("show_time >=", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeLessThan(String value) {
            addCriterion("show_time <", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeLessThanOrEqualTo(String value) {
            addCriterion("show_time <=", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeLike(String value) {
            addCriterion("show_time like", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeNotLike(String value) {
            addCriterion("show_time not like", value, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeIn(List<String> values) {
            addCriterion("show_time in", values, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeNotIn(List<String> values) {
            addCriterion("show_time not in", values, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeBetween(String value1, String value2) {
            addCriterion("show_time between", value1, value2, "showTime");
            return (Criteria) this;
        }

        public Criteria andShowTimeNotBetween(String value1, String value2) {
            addCriterion("show_time not between", value1, value2, "showTime");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_gang_rank
     *
     * @mbggenerated do_not_delete_during_merge Wed Oct 10 11:43:19 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_gang_rank
     *
     * @mbggenerated Wed Oct 10 11:43:19 CST 2018
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