package com.chenyou.pojo;

import java.util.ArrayList;
import java.util.List;

public class ForceRankExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public ForceRankExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
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
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
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

        public Criteria andForceIdIsNull() {
            addCriterion("force_id is null");
            return (Criteria) this;
        }

        public Criteria andForceIdIsNotNull() {
            addCriterion("force_id is not null");
            return (Criteria) this;
        }

        public Criteria andForceIdEqualTo(Integer value) {
            addCriterion("force_id =", value, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdNotEqualTo(Integer value) {
            addCriterion("force_id <>", value, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdGreaterThan(Integer value) {
            addCriterion("force_id >", value, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("force_id >=", value, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdLessThan(Integer value) {
            addCriterion("force_id <", value, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdLessThanOrEqualTo(Integer value) {
            addCriterion("force_id <=", value, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdIn(List<Integer> values) {
            addCriterion("force_id in", values, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdNotIn(List<Integer> values) {
            addCriterion("force_id not in", values, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdBetween(Integer value1, Integer value2) {
            addCriterion("force_id between", value1, value2, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceIdNotBetween(Integer value1, Integer value2) {
            addCriterion("force_id not between", value1, value2, "forceId");
            return (Criteria) this;
        }

        public Criteria andForceRankIsNull() {
            addCriterion("force_rank is null");
            return (Criteria) this;
        }

        public Criteria andForceRankIsNotNull() {
            addCriterion("force_rank is not null");
            return (Criteria) this;
        }

        public Criteria andForceRankEqualTo(Integer value) {
            addCriterion("force_rank =", value, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankNotEqualTo(Integer value) {
            addCriterion("force_rank <>", value, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankGreaterThan(Integer value) {
            addCriterion("force_rank >", value, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankGreaterThanOrEqualTo(Integer value) {
            addCriterion("force_rank >=", value, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankLessThan(Integer value) {
            addCriterion("force_rank <", value, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankLessThanOrEqualTo(Integer value) {
            addCriterion("force_rank <=", value, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankIn(List<Integer> values) {
            addCriterion("force_rank in", values, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankNotIn(List<Integer> values) {
            addCriterion("force_rank not in", values, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankBetween(Integer value1, Integer value2) {
            addCriterion("force_rank between", value1, value2, "forceRank");
            return (Criteria) this;
        }

        public Criteria andForceRankNotBetween(Integer value1, Integer value2) {
            addCriterion("force_rank not between", value1, value2, "forceRank");
            return (Criteria) this;
        }

        public Criteria andPlayerNameIsNull() {
            addCriterion("player_name is null");
            return (Criteria) this;
        }

        public Criteria andPlayerNameIsNotNull() {
            addCriterion("player_name is not null");
            return (Criteria) this;
        }

        public Criteria andPlayerNameEqualTo(String value) {
            addCriterion("player_name =", value, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameNotEqualTo(String value) {
            addCriterion("player_name <>", value, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameGreaterThan(String value) {
            addCriterion("player_name >", value, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameGreaterThanOrEqualTo(String value) {
            addCriterion("player_name >=", value, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameLessThan(String value) {
            addCriterion("player_name <", value, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameLessThanOrEqualTo(String value) {
            addCriterion("player_name <=", value, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameLike(String value) {
            addCriterion("player_name like", value, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameNotLike(String value) {
            addCriterion("player_name not like", value, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameIn(List<String> values) {
            addCriterion("player_name in", values, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameNotIn(List<String> values) {
            addCriterion("player_name not in", values, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameBetween(String value1, String value2) {
            addCriterion("player_name between", value1, value2, "playerName");
            return (Criteria) this;
        }

        public Criteria andPlayerNameNotBetween(String value1, String value2) {
            addCriterion("player_name not between", value1, value2, "playerName");
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

        public Criteria andServerNameIsNull() {
            addCriterion("server_name is null");
            return (Criteria) this;
        }

        public Criteria andServerNameIsNotNull() {
            addCriterion("server_name is not null");
            return (Criteria) this;
        }

        public Criteria andServerNameEqualTo(String value) {
            addCriterion("server_name =", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameNotEqualTo(String value) {
            addCriterion("server_name <>", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameGreaterThan(String value) {
            addCriterion("server_name >", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameGreaterThanOrEqualTo(String value) {
            addCriterion("server_name >=", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameLessThan(String value) {
            addCriterion("server_name <", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameLessThanOrEqualTo(String value) {
            addCriterion("server_name <=", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameLike(String value) {
            addCriterion("server_name like", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameNotLike(String value) {
            addCriterion("server_name not like", value, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameIn(List<String> values) {
            addCriterion("server_name in", values, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameNotIn(List<String> values) {
            addCriterion("server_name not in", values, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameBetween(String value1, String value2) {
            addCriterion("server_name between", value1, value2, "serverName");
            return (Criteria) this;
        }

        public Criteria andServerNameNotBetween(String value1, String value2) {
            addCriterion("server_name not between", value1, value2, "serverName");
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
     * This class corresponds to the database table t_force_rank
     *
     * @mbggenerated do_not_delete_during_merge Fri Sep 14 15:16:37 CST 2018
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table t_force_rank
     *
     * @mbggenerated Fri Sep 14 15:16:37 CST 2018
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