package com.chenyou.pojo;

import java.util.ArrayList;
import java.util.List;

public class GradePlayerExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public GradePlayerExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
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
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
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

        public Criteria andGradeIdIsNull() {
            addCriterion("grade_id is null");
            return (Criteria) this;
        }

        public Criteria andGradeIdIsNotNull() {
            addCriterion("grade_id is not null");
            return (Criteria) this;
        }

        public Criteria andGradeIdEqualTo(Integer value) {
            addCriterion("grade_id =", value, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdNotEqualTo(Integer value) {
            addCriterion("grade_id <>", value, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdGreaterThan(Integer value) {
            addCriterion("grade_id >", value, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("grade_id >=", value, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdLessThan(Integer value) {
            addCriterion("grade_id <", value, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdLessThanOrEqualTo(Integer value) {
            addCriterion("grade_id <=", value, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdIn(List<Integer> values) {
            addCriterion("grade_id in", values, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdNotIn(List<Integer> values) {
            addCriterion("grade_id not in", values, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdBetween(Integer value1, Integer value2) {
            addCriterion("grade_id between", value1, value2, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("grade_id not between", value1, value2, "gradeId");
            return (Criteria) this;
        }

        public Criteria andGradeSectionIsNull() {
            addCriterion("grade_section is null");
            return (Criteria) this;
        }

        public Criteria andGradeSectionIsNotNull() {
            addCriterion("grade_section is not null");
            return (Criteria) this;
        }

        public Criteria andGradeSectionEqualTo(String value) {
            addCriterion("grade_section =", value, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionNotEqualTo(String value) {
            addCriterion("grade_section <>", value, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionGreaterThan(String value) {
            addCriterion("grade_section >", value, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionGreaterThanOrEqualTo(String value) {
            addCriterion("grade_section >=", value, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionLessThan(String value) {
            addCriterion("grade_section <", value, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionLessThanOrEqualTo(String value) {
            addCriterion("grade_section <=", value, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionLike(String value) {
            addCriterion("grade_section like", value, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionNotLike(String value) {
            addCriterion("grade_section not like", value, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionIn(List<String> values) {
            addCriterion("grade_section in", values, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionNotIn(List<String> values) {
            addCriterion("grade_section not in", values, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionBetween(String value1, String value2) {
            addCriterion("grade_section between", value1, value2, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradeSectionNotBetween(String value1, String value2) {
            addCriterion("grade_section not between", value1, value2, "gradeSection");
            return (Criteria) this;
        }

        public Criteria andGradePlayerIsNull() {
            addCriterion("grade_player is null");
            return (Criteria) this;
        }

        public Criteria andGradePlayerIsNotNull() {
            addCriterion("grade_player is not null");
            return (Criteria) this;
        }

        public Criteria andGradePlayerEqualTo(Integer value) {
            addCriterion("grade_player =", value, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerNotEqualTo(Integer value) {
            addCriterion("grade_player <>", value, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerGreaterThan(Integer value) {
            addCriterion("grade_player >", value, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerGreaterThanOrEqualTo(Integer value) {
            addCriterion("grade_player >=", value, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerLessThan(Integer value) {
            addCriterion("grade_player <", value, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerLessThanOrEqualTo(Integer value) {
            addCriterion("grade_player <=", value, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerIn(List<Integer> values) {
            addCriterion("grade_player in", values, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerNotIn(List<Integer> values) {
            addCriterion("grade_player not in", values, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerBetween(Integer value1, Integer value2) {
            addCriterion("grade_player between", value1, value2, "gradePlayer");
            return (Criteria) this;
        }

        public Criteria andGradePlayerNotBetween(Integer value1, Integer value2) {
            addCriterion("grade_player not between", value1, value2, "gradePlayer");
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
     * This class corresponds to the database table t_grade_player
     *
     * @mbggenerated do_not_delete_during_merge Wed Oct 10 10:40:50 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_grade_player
     *
     * @mbggenerated Wed Oct 10 10:40:50 CST 2018
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