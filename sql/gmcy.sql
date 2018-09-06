#------------
#--概况-->游戏概况:t_about_game
#------------
CREATE TABLE `t_about_game` (
  `server_id` int(11) NOT NULL,
  `server_name` varchar(64) NOT NULL COMMENT '服务器名称',
  `stime` varchar(32) NOT NULL DEFAULT '' COMMENT '开服日期',
  `day` int(11) NOT NULL DEFAULT '1' COMMENT '开服天数',
  `create_num` int(11) NOT NULL DEFAULT '0' COMMENT '注册人数',
  `online_num` int(11) NOT NULL DEFAULT '0' COMMENT '在线人数',
  `active_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃人数',
  `money` int(11) NOT NULL DEFAULT '0' COMMENT '付费总量',
  `pay_num` int(11) NOT NULL DEFAULT '0' COMMENT '付费人数',
  `arpu` int(11) NOT NULL DEFAULT '0' COMMENT 'arpu值',
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#------------
#--概况-->日报-->用户类:t_cyuser_count
#------------
CREATE TABLE `t_cyuser_count` (
  `user_count_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `avg_online_users` int(11) NOT NULL COMMENT '平均在线用户数',
  `avg_gametime` int(11) NOT NULL COMMENT '平均游戏时长',
  `avg_login_num` int(11) NOT NULL COMMENT '平均登录次数',
  `activate_user` int(11) NOT NULL COMMENT '激活用户',
  `peak_online` int(11) NOT NULL COMMENT '峰值在线',
  `day_leave` varchar(16) NOT NULL COMMENT '一日次留',
  `threeday_leave` varchar(16) NOT NULL COMMENT '三日留存',
  `savenday_leave` varchar(16) NOT NULL COMMENT '七日留存',
  `month_leave` varchar(16) NOT NULL COMMENT '30日留存',
  `server_id` int(11) DEFAULT NULL COMMENT '服务器id',
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道id',
  `count_time` datetime(6) NOT NULL COMMENT '统计时间',
  PRIMARY KEY (`user_count_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



#------------
#--概况-->日报-->收入类:t_income_class
#------------
CREATE TABLE `t_income_class` (
  `in_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收入Id',
  `pay_ap` double(11,2) NOT NULL COMMENT '付费ap',
  `add_ap` double(11,2) NOT NULL COMMENT '新增ap',
  `day_income` int(11) NOT NULL COMMENT '日收入',
  `day_payrate` varchar(16) NOT NULL COMMENT '日付费率',
  `add_rate_user` int(11) NOT NULL COMMENT '新增付费玩家',
  `count_rate_user` int(11) NOT NULL COMMENT '付费玩家',
  `server_id` int(11) DEFAULT NULL COMMENT '服务器id',
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道id',
  `recorde_time` datetime(6) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#------------
#--概况-->日报-->渠道统计:t_channel_count
#------------
CREATE TABLE `t_ltv_count` (
  `ltv_id` int(11) NOT NULL AUTO_INCREMENT,
  `oneday_ltv` int(11) NOT NULL COMMENT '一日ltv',
  `twoday_ltv` int(11) NOT NULL COMMENT '2日ltv',
  `threeday_ltv` int(11) NOT NULL COMMENT '3日ltv',
  `fourday_ltv` int(11) NOT NULL COMMENT '4日ltv',
  `fiveday_ltv` int(11) NOT NULL COMMENT '5日ltv',
  `sixday_ltv` int(11) NOT NULL COMMENT '6日ltv',
  `sevenday_ltv` int(11) NOT NULL COMMENT '7日ltv',
  `fifteenday_ltv` int(11) NOT NULL COMMENT '15日ltv',
  `thirtyday_ltv` int(11) NOT NULL COMMENT '30日ltv',
  `server_id` int(11) DEFAULT NULL COMMENT '分区区服id',
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道id',
  PRIMARY KEY (`ltv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#------------
#--概况-->ltv概况:t_ltv_count
#------------
CREATE TABLE `t_ltv_count` (
  `ltv_id` int(11) NOT NULL AUTO_INCREMENT,
  `oneday_ltv` int(11) NOT NULL COMMENT '一日ltv',
  `twoday_ltv` int(11) NOT NULL COMMENT '2日ltv',
  `threeday_ltv` int(11) NOT NULL COMMENT '3日ltv',
  `fourday_ltv` int(11) NOT NULL COMMENT '4日ltv',
  `fiveday_ltv` int(11) NOT NULL COMMENT '5日ltv',
  `sixday_ltv` int(11) NOT NULL COMMENT '6日ltv',
  `sevenday_ltv` int(11) NOT NULL COMMENT '7日ltv',
  `fifteenday_ltv` int(11) NOT NULL COMMENT '15日ltv',
  `thirtyday_ltv` int(11) NOT NULL COMMENT '30日ltv',
  `server_id` int(11) DEFAULT NULL COMMENT '分区区服id',
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道id',
  PRIMARY KEY (`ltv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#------------
#--游戏玩家-->新增玩家:t_add_newplayer
#------------
CREATE TABLE `t_add_newplayer` (
  `newplayer_id` int(11) NOT NULL COMMENT '新增id',
  `register_time` datetime(6) NOT NULL COMMENT '注册时间',
  `register_plant` int(11) NOT NULL COMMENT '注册设备',
  `register_player` int(11) NOT NULL COMMENT '注册玩家',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`newplayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新增玩家(游戏玩家)';



#------------
#--游戏玩家-->活跃玩家:t_active_player
#------------


#------------
#--游戏玩家-->玩家留存:t_retain_player
#------------


#------------
#--游戏玩家-->玩家流失:t_away_player
#------------


#------------
#--游戏玩家-->流失行为分析-->登录天数:t_login_day
#------------


#------------
#--游戏玩家-->流失行为分析-->流失等级:t_away_grade
#------------


#------------
#--游戏玩家-->流失行为分析-->流失关卡:t_away_output
#------------


#------------
#--在线分析-->在线用户:t_onlineplayer_count
#------------


#------------
#--充值统计-->每日充值:t_everyday_recharge
#------------


#------------
#--充值统计-->计费点分析:t_point_analyse
#------------


#------------
#--渠道数据-->渠道数据汇总：t_channel_summary
#------------



#------------
#--游戏行为统计-->用户等级:t_grade_player
#------------


#------------
#--游戏行为统计-->vip人数:t_vip_count
#------------


#------------
#--游戏行为统计-->帮派数量:t_gang_count
#------------


#------------
#--游戏行为统计-->帮派等级:t_gang_grade
#------------


#------------
#--游戏行为统计-->排行信息-->势力榜:t_force_rank
#------------


#------------
#--游戏行为统计-->排行信息-->关卡榜:t_level_rank
#------------


#------------
#--游戏行为统计-->排行消息-->亲密榜:t_intimacy_rank
#------------


#------------
#--游戏行为统计-->排行消息-->帮派榜:t_gang_rank
#------------


#------------
#--游戏行为统计-->任务信息:t_task_message
#------------
#------------
#--游戏行为统计-->产出与消耗:t_out_consume
#------------


#------------
#--活动分析-->活动参与人数:t_activity_num
#------------



#------------
#--活动分析-->活动排行榜-->帮派排行:t_activity_rank
#------------


#------------
#--活动分析-->活动排行榜-->个人排行:t_person_rank
#------------

