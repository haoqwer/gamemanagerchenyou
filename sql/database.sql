<!--自动序列-->
CREATE DEFINER=`hotel`@`%` FUNCTION `seqnextval`(`p_seqname` varchar(16)) RETURNS varchar(16) CHARSET utf8mb4
BEGIN

	update t_sys_seq set seq = last_insert_id(seq+1) where seqname=p_seqname;
	IF ROW_COUNT()>0 then
		RETURN last_insert_id();
  ELSE
		RETURN -1;
	end if;

END

CREATE TABLE `t_identity_agreement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `agreement_id` int(11) NOT NULL,
  `mb_project_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_agreement` (`agreement_id`),
  KEY `idx_project` (`mb_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员授权协议关系表'

CREATE TABLE `t_identity_baseinfo` (
  `uid` varchar(64) NOT NULL COMMENT '用户id',
  `mb_id` varchar(32) DEFAULT NULL COMMENT '会员ID',
  `mobile` varchar(255) DEFAULT NULL,
  `realname` varchar(32) DEFAULT NULL,
  `ID_number` varchar(100) DEFAULT NULL COMMENT '身份证号码',
  `sex` int(11) DEFAULT NULL COMMENT '性别:0-未设置，1-男，2-女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `province` varchar(255) DEFAULT NULL COMMENT '手机号归属省份',
  `city` varchar(255) DEFAULT NULL COMMENT '手机号归属城市',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  KEY `ind_idnumber` (`ID_number`),
  KEY `idx_realname` (`realname`),
  KEY `idx_mobile` (`mobile`(191)),
  KEY `idx_provice` (`province`(191)),
  KEY `idx_city` (`city`(191)),
  KEY `ind_createtime` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='会员积分汇总表'

CREATE TABLE `t_identity_ignore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) NOT NULL,
  `req_source` int(11) DEFAULT NULL COMMENT '请求来源（会员中心，下单页）',
  `mb_project_id` int(11) DEFAULT NULL,
  `mb_grade` int(11) DEFAULT NULL,
  `identity_id` int(11) DEFAULT NULL COMMENT '身份规则ID',
  `mb_card_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '状态：-1-删除；1-忽略',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_project` (`mb_project_id`),
  KEY `idx_grade` (`mb_grade`),
  KEY `idx_card` (`mb_card_id`),
  KEY `idx_status` (`status`),
  KEY `idx_createTime` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户拒绝获取身份的操作记录'

CREATE TABLE `t_identity_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL,
  `owner_hotel` int(11) DEFAULT NULL COMMENT '来源商户',
  `mb_id` varchar(32) DEFAULT NULL COMMENT '会员ID',
  `mb_type` int(11) DEFAULT NULL COMMENT '会员类型:1-消费会员；2-持有资产会员；3-会员计划会员',
  `mb_project_id` int(11) DEFAULT NULL COMMENT '会员计划ID',
  `mb_grade` int(11) DEFAULT NULL COMMENT '会员等级',
  `identity_id` int(11) DEFAULT NULL COMMENT '身份规则ID',
  `mb_card_id` int(11) DEFAULT NULL COMMENT '会员卡ID',
  `mb_card_grant` int(11) DEFAULT '0' COMMENT '会员卡是否已经发放',
  `auth_info` int(11) DEFAULT NULL COMMENT '用户信息授权内容',
  `xnet_id` int(11) DEFAULT NULL COMMENT '交换会员来自哪个交换网络',
  `status` int(11) DEFAULT '1' COMMENT '状态：1-正常；-1-退出',
  `source` int(11) DEFAULT '1' COMMENT '来源:1-本商户注册；2-交换网络',
  `channel` varchar(100) DEFAULT NULL COMMENT '注册渠道',
  `track_id` varchar(64) DEFAULT NULL COMMENT '跟踪ID',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `effective_time` date DEFAULT NULL COMMENT '生效时间',
  `expire_time` date DEFAULT NULL COMMENT '过期时间',
  `asset_time` datetime DEFAULT NULL COMMENT '最近获得资产时间',
  `consume_time` datetime DEFAULT NULL COMMENT '最近消费时间',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_uid` (`uid`),
  KEY `idx_mbtype` (`mb_type`),
  KEY `idx_project` (`mb_project_id`),
  KEY `idx_grade` (`mb_grade`),
  KEY `idx_card` (`mb_card_id`),
  KEY `idx_source` (`source`),
  KEY `idx_channel` (`channel`),
  KEY `idx_track` (`track_id`),
  KEY `idx_registerTime` (`register_time`),
  KEY `idx_expireTime` (`expire_time`),
  KEY `idx_xnet` (`xnet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='商户会员表'


CREATE TABLE `t_identity_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL COMMENT '用户id',
  `record_type` int(11) DEFAULT NULL,
  `owner_hotel` int(11) DEFAULT NULL COMMENT '来源商户',
  `mb_id` varchar(64) DEFAULT NULL COMMENT '会员ID',
  `mb_type` int(11) DEFAULT NULL COMMENT '会员类型:1-消费会员；2-持有资产会员；3-免费会员；4-付费会员',
  `mb_project_id` int(11) DEFAULT NULL COMMENT '会员计划ID',
  `mb_grade` int(11) DEFAULT NULL COMMENT '会员等级',
  `identity_id` int(11) DEFAULT NULL COMMENT '身份规则ID',
  `mb_card_id` int(11) DEFAULT NULL COMMENT '会员卡ID',
  `auth_info` int(11) DEFAULT NULL COMMENT '用户信息授权内容',
  `xnet_id` int(11) DEFAULT NULL COMMENT '交换网络ID',
  `source` int(11) DEFAULT NULL COMMENT '来源:1-本商户注册；2-交换网络',
  `status` int(11) DEFAULT '0' COMMENT '会员注册状态：-1-退出；0-注册中；1-注册完成',
  `channel` varchar(100) DEFAULT NULL COMMENT '注册渠道',
  `track_id` varchar(64) DEFAULT NULL COMMENT '跟踪ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `idx_project` (`mb_project_id`),
  KEY `source` (`source`),
  KEY `channel` (`channel`),
  KEY `idx_grade` (`mb_grade`),
  KEY `idx_card` (`mb_card_id`),
  KEY `idx_mbtype` (`mb_type`),
  KEY `idx_xnet` (`xnet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COMMENT='商户会员日志记录表'

CREATE TABLE `t_sys_parameters` (
  `param_key` varchar(64) NOT NULL DEFAULT '' COMMENT '参数KEY',
  `param_value` varchar(2048) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL COMMENT '参数描述',
  `param_type` char(1) DEFAULT NULL COMMENT '参数类型,0:系统参数，1:业务参数',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`param_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4


CREATE TABLE `t_sys_seq` (
  `seqname` varchar(16) NOT NULL COMMENT '序列名',
  `seq` bigint(14) NOT NULL COMMENT '序列当前值',
  PRIMARY KEY (`seqname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4


CREATE TABLE `t_consume_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT '会员id',
  `record_type` int(11) DEFAULT NULL COMMENT '消费记录类型',
  `hotel_id` int(11) DEFAULT NULL COMMENT '商户id',
  `checkin` date DEFAULT NULL COMMENT 'checkin时间（住宿奖励）',
  `checkout` date DEFAULT NULL COMMENT 'checkout时间（住宿奖励）',
  `stay_start` date DEFAULT NULL COMMENT '整个订单的入住开始时间',
  `stay_end` date DEFAULT NULL COMMENT '整个订单的入住结束时间',
  `quantity` int(11) DEFAULT NULL COMMENT '间数（住宿奖励）',
  `jihe_business_member` int(11) DEFAULT NULL COMMENT '合作商户类型',
  `amount` int(11) DEFAULT NULL COMMENT '消费金额（单位到分）',
  `currency` varchar(16) CHARACTER SET utf8 DEFAULT '￥' COMMENT '币种',
  `points_rights` int(11) DEFAULT '1' COMMENT '是否享受积分权益:1-享受积分权益；-1-消费时间点非会员商户；-2-用户消费时非会员；-3-订单已经享受优惠；-4-超过当天奖励限额',
  `order_id` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '订单id',
  `track_id` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '跟踪ID',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '记录状态：\n0-待发放；\n2-已发放；\n11-已删除',
  `remark` varchar(1024) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `web_site` varchar(64) DEFAULT NULL COMMENT '预订站点：jihex.cn-saas；jihelife',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ind_uid` (`uid`) USING BTREE,
  KEY `ind_hotelid` (`hotel_id`) USING BTREE,
  KEY `ind_recordType` (`record_type`) USING BTREE,
  KEY `ind_orderid` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='会员消费记录'


INSERT INTO `t_sys_parameters` VALUES ('aliyun_mq_access_key', 'LTAIYeu8Z7PEdG4a', 'aliyun消息队列的access_key', '1', '2017-8-31 10:42:52', '2018-1-23 19:43:56');
INSERT INTO `t_sys_parameters` VALUES ('aliyun_mq_producer_id', 'PID_ONLINE_TEST_ORDER', 'aliyun消息队列的生产者ID', '1', '2017-8-31 10:42:52', '2018-1-23 19:44:05');
INSERT INTO `t_sys_parameters` VALUES ('aliyun_mq_secret_key', 'Y0BZM67Z7emh3LVVvosWEAkJj6eqzW', 'aliyun消息队列的secret_key', '1', '2017-8-31 10:42:52', '2018-1-23 19:44:16');
INSERT INTO `t_sys_parameters` VALUES ('aliyun_mq_topic', 'jihe_test_order', 'aliyun消息队列的topic', '1', '2017-8-31 10:42:52', '2018-1-23 19:52:25');
INSERT INTO `t_sys_parameters` VALUES ('h5url_root_path', 'http://test.jihex.cn/', 'H5的根路径', '1', '2015-11-30 21:37:24', '2018-1-23 19:57:37');
INSERT INTO `t_sys_parameters` VALUES ('IDCard_regex', '^[A-Za-z0-9]+$', '身份证号码验证', '1', '2017-1-5 16:55:43', '2017-1-5 16:55:43');
INSERT INTO `t_sys_parameters` VALUES ('jihex_hotel_mbid_length', '6', '商户会员ID长度', '1', '2018-1-27 17:05:23', '2018-1-27 17:05:23');
INSERT INTO `t_sys_parameters` VALUES ('jihex_mbid_length', '7', 'jihex会员ID长度', '1', '2018-1-20 13:24:26', '2018-1-20 13:26:31');
INSERT INTO `t_sys_parameters` VALUES ('service_root_url', 'http://test.jihex.cn/', '服务域名地址', '1', '2018-1-11 14:40:08', '2018-1-19 19:39:55');
INSERT INTO `t_sys_parameters` VALUES ('service_root_url_mq', 'http://onsaddr-internal.aliyun.com:8080/rocketmq/nsaddr4client-internal', '消息队列服务地址', '1', '2018-1-11 14:40:08', '2018-1-11 14:40:08');
INSERT INTO `t_sys_parameters` VALUES ('service_root_url_solr', 'http://test.jihelife.com:8099/solr/product/', 'SOLR服务地址', '1', '2018-1-11 14:40:08', '2018-1-11 14:40:08');
