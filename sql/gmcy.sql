#------------
#--概况-->游戏概况:t_about_game
#------------
DROP TABLE IF EXISTS `t_about_game`;
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
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='游戏概况';



-- ----------------------------
-- Records of t_about_game
-- ----------------------------
INSERT INTO `t_about_game` VALUES ('1', 'node_360_1', '2018-09-11 11:09:21', '1', '0', '1', '0', '0', '0', '0', '1');
INSERT INTO `t_about_game` VALUES ('2', 'node_360_2', '2018-09-11 11:09:21', '1', '0', '1', '0', '0', '0', '0', '2');

#------------
#--概况-->日报-->用户类:t_cyuser_count
#------------
DROP TABLE IF EXISTS `t_cyuser_count`;
CREATE TABLE `t_cyuser_count` (
  `user_count_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id',
  `avg_online_users` int(11) NOT NULL COMMENT '平均在线用户数',
  `avg_gametime` int(11) NOT NULL COMMENT '平均游戏时长',
  `avg_login_num` int(11) NOT NULL COMMENT '平均登录次数',
  `active_user` int(11) NOT NULL COMMENT '活跃用户',
  `activate_user` int(11) NOT NULL COMMENT '激活用户',
  `register_user` int(11) NOT NULL COMMENT '注册用户',
  `peak_online` int(11) NOT NULL COMMENT '峰值在线',
  `day_leave` varchar(16) NOT NULL COMMENT '一日次留',
  `threeday_leave` varchar(16) NOT NULL COMMENT '三日留存',
  `sevenday_leave` varchar(16) NOT NULL COMMENT '七日留存',
  `month_leave` varchar(16) NOT NULL COMMENT '30日留存',
  `server_id` int(11) DEFAULT NULL COMMENT '服务器id',
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道id',
  `count_time` datetime NOT NULL COMMENT '统计时间',
  PRIMARY KEY (`user_count_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户类(日报)';





#------------
#--概况-->日报-->收入类:t_income_class
#------------
DROP TABLE IF EXISTS `t_income_class`;
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
  `recorde_time` datetime NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='收入类(用户)';





#------------
#--概况-->日报-->渠道统计:t_channel_count
#------------
DROP TABLE IF EXISTS `t_channel_count`;
CREATE TABLE `t_channel_count` (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '渠道id',
  `channel_name` varchar(64) NOT NULL COMMENT '渠道名称',
  `add_user` int(11) NOT NULL COMMENT '新增用户',
  `active_user` int(11) NOT NULL COMMENT '活跃用户',
  `recharge_user` int(11) NOT NULL COMMENT '充值用户',
  `payrate` varchar(16) NOT NULL COMMENT '付费率',
  `apvalue` double(16,2) NOT NULL COMMENT 'ap值',
  `time_leave` varchar(16) NOT NULL COMMENT ' 次留',
  `threeday_leave` varchar(16) NOT NULL COMMENT '三日留存',
  `week_leave` varchar(16) NOT NULL COMMENT '周留存',
  `pay_arup` double NOT NULL,
  `server_id` int(11) DEFAULT NULL COMMENT '分区区服id',
  `count_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='渠道统计(用户)';




#------------
#--概况-->ltv概况:t_ltv_count
#------------
CREATE TABLE `t_ltv_count` (
  `ltv_id` int(11) NOT NULL AUTO_INCREMENT,
  `recorde_time` datetime NOT NULL COMMENT '记录时间',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='LTV概况';






#------------
#--游戏玩家-->新增玩家:t_add_newplayer
#------------
CREATE TABLE `t_add_newplayer` (
  `newplayer_id` int(11) NOT NULL COMMENT '新增id',
  `register_time` datetime NOT NULL COMMENT '注册时间',
  `register_plant` int(11) NOT NULL COMMENT '注册设备',
  `register_player` int(11) NOT NULL COMMENT '注册玩家',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`newplayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新增玩家(游戏玩家)';







#------------
#--游戏玩家-->活跃玩家:t_active_player
#------------
CREATE TABLE `t_active_player` (
  `active_id` int(11) NOT NULL COMMENT '活跃玩家id',
  `show_time` datetime NOT NULL COMMENT '记录时间',
  `active_player_count` int(11) NOT NULL COMMENT '活跃玩家个数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`active_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活跃玩家(游戏玩家)';



#------------
#--游戏玩家-->玩家留存:t_retain_player
#------------
CREATE TABLE `t_retain_player` (
  `retain_id` int(11) NOT NULL AUTO_INCREMENT,
  `show_time` datetime NOT NULL COMMENT '展示时间',
  `oneday_retain` varchar(16) NOT NULL COMMENT '留存',
  `threeday_retain` varchar(16) NOT NULL,
  `weekly_retain` varchar(16) NOT NULL COMMENT '七留',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`retain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='玩家留存(游戏玩家)';





#------------
#--游戏玩家-->玩家流失:t_away_player
#------------
CREATE TABLE `t_away_player` (
  `away_id` int(11) NOT NULL,
  `record_time` datetime NOT NULL COMMENT '记录时间',
  `add_player` int(11) NOT NULL COMMENT '自增用户',
  `away_player` int(11) NOT NULL COMMENT '流失用户',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`away_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='玩家流失(游戏玩家)';







#------------
#--游戏玩家-->流失行为分析-->登录天数:t_login_day
#------------
CREATE TABLE `t_login_day` (
  `login_day_id` int(11) NOT NULL AUTO_INCREMENT,
  `count_day` int(11) NOT NULL COMMENT '登录天数',
  `count_num` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`login_day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='登录天数';






#------------
#--游戏玩家-->流失行为分析-->流失等级:t_away_grade
#------------
CREATE TABLE `t_away_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流失等级',
  `game_grade` varchar(64) NOT NULL COMMENT '流失等级名称',
  `count_player` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='流失等级';





#------------
#--游戏玩家-->流失行为分析-->流失关卡:t_away_output
#------------
CREATE TABLE `t_away_output` (
  `away_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流失关卡id',
  `away_output` varchar(64) NOT NULL COMMENT '流失关卡',
  `count_player` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`away_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='流失关卡';




#------------
#--在线分析-->在线用户:t_onlineplayer_count
#------------
CREATE TABLE `t_onlineplayer_count` (
  `online_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '在线id',
  `record_time` varchar(32) NOT NULL COMMENT '记录年月日',
  `show_time_hour` varchar(16) NOT NULL COMMENT '展示时间',
  `online_player_count` int(11) NOT NULL COMMENT '在线用户数量',
  `allplayer_coun` int(11) NOT NULL COMMENT '在线用户总人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`online_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='在线用户(在线分析)';







#------------
#--充值统计-->每日充值:t_everyday_recharge
#------------
CREATE TABLE `t_everyday_recharge` (
  `recharge_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '每日充值id',
  `recharge_time` datetime(6) DEFAULT NULL COMMENT '时间段',
  `recharge_user_count` int(11) DEFAULT NULL COMMENT '充值人数',
  `recharge_first_user` int(11) DEFAULT NULL COMMENT '首充人数',
  `recharge_count` int(11) DEFAULT NULL COMMENT '充值次数',
  `recharge_first_count` int(11) DEFAULT NULL COMMENT '首充次数',
  `recharge_money` int(11) DEFAULT NULL COMMENT '充值金额',
  `recharge_first_money` int(11) DEFAULT NULL COMMENT '首充金额',
  `recharge_ingot` int(11) DEFAULT NULL COMMENT '充值元宝',
  `recharge_first_ingot` int(11) DEFAULT NULL COMMENT '首冲元宝',
  `arpu` double(11,2) DEFAULT NULL,
  `first_arpu` double(11,2) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`recharge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='充值统计(每日充值)';






#------------
#--充值统计-->计费点分析:t_point_analyse
#------------
CREATE TABLE `t_point_analyse` (
  `charging_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '计费点id',
  `charging_time` varchar(16) NOT NULL COMMENT '计费点时间段',
  `buy_num_user` int(11) DEFAULT NULL COMMENT '购买人数',
  `recharge_first_buyuser` int(11) DEFAULT NULL COMMENT '首充购买人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`charging_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='计费点分析(充值统计)';






#------------
#--渠道数据-->渠道数据汇总：t_channel_summary
#------------
CREATE TABLE `t_channel_summary` (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(16) NOT NULL COMMENT '渠道名称',
  `activate_player` int(11) DEFAULT NULL COMMENT '激活玩家',
  `register_player` int(11) DEFAULT NULL COMMENT '注册玩家',
  `active_player` int(11) DEFAULT NULL COMMENT '活跃玩家',
  `recharge_player` int(11) DEFAULT NULL COMMENT '充值玩家',
  `time_leave` varchar(16) DEFAULT NULL COMMENT '次留',
  `threeday_leave` varchar(16) DEFAULT NULL COMMENT '3留',
  `sevenday_leave` varchar(16) DEFAULT NULL COMMENT '7留',
  `pay_rate` varchar(16) DEFAULT NULL COMMENT '付费率',
  `recharge_money` int(11) DEFAULT NULL COMMENT '充值金额',
  `pay_ap` double(11,2) DEFAULT NULL COMMENT '付费ap',
  `register_ap` double(11,2) DEFAULT NULL COMMENT '注册ap',
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道数据汇总(渠道数据)';








#------------
#--游戏行为统计-->用户等级:t_grade_player
#------------
CREATE TABLE `t_grade_player` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_section` varchar(12) NOT NULL COMMENT '等级区间',
  `grade_player` int(11) DEFAULT NULL COMMENT '人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户等级(游戏行为统计)';






#------------
#--游戏行为统计-->vip人数:t_vip_count
#------------
CREATE TABLE `t_vip_count` (
  `vip_id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_grade` varchar(12) NOT NULL COMMENT 'vip区间',
  `vip_online_count` int(11) DEFAULT NULL COMMENT '人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='vip人数(游戏行为统计)';





#------------
#--游戏行为统计-->帮派数量:t_gang_count
#------------
CREATE TABLE `t_gang_count` (
  `gang_id` int(11) NOT NULL,
  `server_name` varchar(64) NOT NULL COMMENT '区服名称',
  `gang_num` int(11) DEFAULT NULL COMMENT '帮派数量',
  `channel_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='帮派数量(游戏行为统计)';





#------------
#--游戏行为统计-->帮派等级:t_gang_grade
#------------
CREATE TABLE `t_gang_grade` (
  `gang_id` int(11) NOT NULL AUTO_INCREMENT,
  `gong_grade` varchar(16) NOT NULL COMMENT '等级区间',
  `gong_count` int(11) NOT NULL COMMENT '数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`gang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




#------------
#--游戏行为统计-->排行信息-->势力榜:t_force_rank
#------------
CREATE TABLE `t_force_rank` (
  `force_id` int(11) NOT NULL COMMENT '势力榜id',
  `force_rank` int(11) NOT NULL COMMENT '排名顺序',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名',
  `force_value` int(11) NOT NULL COMMENT '势力 值',
  `server_id` int(11) NOT NULL,
  `server_name` varchar(16) DEFAULT NULL COMMENT '区服名称',
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`force_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='势力榜(游戏行为统计)';




#------------
#--游戏行为统计-->排行信息-->关卡榜:t_level_rank
#------------
CREATE TABLE `t_level_rank` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_rank` int(11) NOT NULL COMMENT '排名',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名',
  `force_value` int(11) NOT NULL COMMENT '势力值',
  `server_id` int(11) NOT NULL,
  `server_name` varchar(16) DEFAULT NULL COMMENT '玩家获得所属区服',
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



#------------
#--游戏行为统计-->排行消息-->亲密榜:t_intimacy_rank
#------------
CREATE TABLE `t_intimacy_rank` (
  `tintimacy_id` int(11) NOT NULL AUTO_INCREMENT,
  `intimate_rank` int(11) NOT NULL COMMENT '排名',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名',
  `fous_value` int(11) NOT NULL COMMENT '势力值',
  `server_id` int(11) NOT NULL,
  `server_name` varchar(16) NOT NULL COMMENT '玩家所在的区服名称',
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tintimacy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




#------------
#--游戏行为统计-->排行消息-->帮派榜:t_gang_rank
#------------
CREATE TABLE `t_gang_rank` (
  `gang_id` int(11) NOT NULL,
  `gang_rank` int(11) NOT NULL COMMENT '排名',
  `player_name` varchar(64) NOT NULL COMMENT '玩家名',
  `force_value` int(11) NOT NULL COMMENT '势力值',
  `gang_grade` varchar(16) NOT NULL COMMENT '帮派等级',
  `server_id` int(11) NOT NULL,
  `server_name` varchar(16) NOT NULL COMMENT '所属区服',
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`gang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




#------------
#--游戏行为统计-->任务信息:t_task_message
#------------
CREATE TABLE `t_task_message` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `task_list` varchar(255) NOT NULL COMMENT '任务列表',
  `now_progress_num` int(11) DEFAULT NULL COMMENT '当前进度人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;







#------------
#--游戏行为统计-->产出与消耗:t_out_consume
#------------
CREATE TABLE `t_out_consume` (
  `out_consume_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods` varchar(64) NOT NULL COMMENT '物品',
  `out` int(11) NOT NULL COMMENT '产出',
  `consume` int(11) NOT NULL COMMENT '消耗',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `record_time` datetime(6) DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`out_consume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;






#------------
#--活动分析-->活动参与人数:t_activity_num
#------------
CREATE TABLE `t_activity_num` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动编号',
  `activity_number` varchar(64) NOT NULL COMMENT '活动编号',
  `activity_player_count` int(11) NOT NULL COMMENT '活动参与玩家数',
  `consume_ingot` int(11) DEFAULT NULL COMMENT '活动消耗元宝',
  `server_id` int(11) DEFAULT NULL,
  `server_name` varchar(16) NOT NULL,
  `record_time` datetime(6) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


#------------
#--活动分析-->活动产出于消耗:t_activity_output
#------------
CREATE TABLE `t_activity_output` (
  `id` int(11) NOT NULL,
  `prop_id` int(11) NOT NULL COMMENT '道具Id',
  `out` varchar(64) NOT NULL,
  `consume` varchar(64) NOT NULL,
  `server_id` int(11) NOT NULL,
  `server_name` varchar(64) NOT NULL,
  `recorde_time` datetime(6) NOT NULL COMMENT '记录时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;









#------------
#--活动分析-->活动排行榜-->帮派排行:t_activity_rank
#------------
CREATE TABLE `t_activity_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gang_id` int(11) NOT NULL COMMENT '帮派排行',
  `gang_name` varchar(16) NOT NULL COMMENT '帮派名称',
  `server_id` int(11) NOT NULL,
  `server_name` varchar(16) NOT NULL COMMENT '帮派区服',
  `record_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





#------------
#--活动分析-->活动排行榜-->个人排行:t_person_rank
#------------
CREATE TABLE `t_person_rank` (
  `person_rank_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人排行',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名称',
  `server_name` varchar(16) NOT NULL COMMENT '区服',
  `server_id` int(11) NOT NULL,
  `record_time` datetime(6) NOT NULL,
  PRIMARY KEY (`person_rank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



