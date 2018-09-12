/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : chenyoumanager

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-09-12 22:05:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` int(11) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT NULL COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `perms` varchar(100) DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '概况', '0', '1', '#', 'M', 'hao', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '概况');
INSERT INTO `sys_menu` VALUES ('2', '游戏玩家', '0', '2', '#', 'M', 'gameplayer', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏玩家');
INSERT INTO `sys_menu` VALUES ('3', '在线分析', '0', '3', '#', 'M', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线分析');
INSERT INTO `sys_menu` VALUES ('4', '充值统计', '0', '4', '#', 'M', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '充值统计');
INSERT INTO `sys_menu` VALUES ('5', '渠道数据', '0', '5', '#', 'M', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '渠道数据');
INSERT INTO `sys_menu` VALUES ('6', '游戏行为统计', '0', '6', '#', 'M', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏行为统计');
INSERT INTO `sys_menu` VALUES ('7', '活动分析', '0', '7', '#', 'M', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '充值统计');
INSERT INTO `sys_menu` VALUES ('8', '游戏管理', '0', '8', '#', 'M', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏管理');
INSERT INTO `sys_menu` VALUES ('9', '后台管理', '0', '9', '#', 'M', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '后台管理');
INSERT INTO `sys_menu` VALUES ('10', '推送设置', '0', '10', '#', 'M', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '推送设置');
INSERT INTO `sys_menu` VALUES ('11', '游戏概况', '1', '11', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏概况');
INSERT INTO `sys_menu` VALUES ('12', '日报', '1', '12', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日报');
INSERT INTO `sys_menu` VALUES ('13', '新增玩家', '2', '13', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增玩家');
INSERT INTO `sys_menu` VALUES ('14', '活跃玩家', '2', '14', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '活跃玩家');
INSERT INTO `sys_menu` VALUES ('15', '玩家留存', '2', '15', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '玩家留存');
INSERT INTO `sys_menu` VALUES ('16', '玩家流失', '2', '16', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '玩家流失');
INSERT INTO `sys_menu` VALUES ('17', '流失行为分析', '2', '17', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '流失行为分析');
INSERT INTO `sys_menu` VALUES ('18', '在线用户', '3', '18', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户');
INSERT INTO `sys_menu` VALUES ('19', '每日充值', '4', '19', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '每日充值');
INSERT INTO `sys_menu` VALUES ('20', '计费点分析', '4', '20', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '计费点分析');
INSERT INTO `sys_menu` VALUES ('21', '渠道数据汇总', '5', '21', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '渠道数据汇总');
INSERT INTO `sys_menu` VALUES ('22', '用户等级', '6', '22', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户等级');
INSERT INTO `sys_menu` VALUES ('23', 'vip人数', '6', '23', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', 'vip人数');
INSERT INTO `sys_menu` VALUES ('24', '帮派数量', '6', '24', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '帮派数量');
INSERT INTO `sys_menu` VALUES ('25', '帮派等级', '6', '25', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '帮派等级');
INSERT INTO `sys_menu` VALUES ('26', '排行信息', '6', '26', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '排行信息');
INSERT INTO `sys_menu` VALUES ('27', '任务消息', '6', '27', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务消息');
INSERT INTO `sys_menu` VALUES ('28', '产出与消耗', '6', '28', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '产出与消耗');
INSERT INTO `sys_menu` VALUES ('29', '活动参与人数', '7', '29', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '活动参与人数');
INSERT INTO `sys_menu` VALUES ('30', '活动产出与消耗', '7', '30', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '活动产出与消耗');
INSERT INTO `sys_menu` VALUES ('31', '活动排行榜', '7', '31', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '活动排行榜');
INSERT INTO `sys_menu` VALUES ('32', '游戏活动开启', '8', '32', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏活动开启');
INSERT INTO `sys_menu` VALUES ('33', '系统邮件发放', '8', '33', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '推送设置');
INSERT INTO `sys_menu` VALUES ('34', '游戏公告修改', '8', '34', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统邮件发放');
INSERT INTO `sys_menu` VALUES ('35', '聊天监控', '8', '35', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '聊天监控');
INSERT INTO `sys_menu` VALUES ('36', '玩家信息查询', '8', '36', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '玩家信息查询');
INSERT INTO `sys_menu` VALUES ('37', '用户管理', '9', '37', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理');
INSERT INTO `sys_menu` VALUES ('38', '角色管理', '9', '38', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理');
INSERT INTO `sys_menu` VALUES ('39', '菜单管理', '9', '39', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理');
INSERT INTO `sys_menu` VALUES ('40', '玩家留存', '10', '40', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '玩家留存');
INSERT INTO `sys_menu` VALUES ('41', '用户类', '12', '41', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户类');
INSERT INTO `sys_menu` VALUES ('42', '收入类', '12', '42', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '收入类');
INSERT INTO `sys_menu` VALUES ('43', '渠道统计', '12', '43', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '渠道统计');
INSERT INTO `sys_menu` VALUES ('44', '登录天数', '17', '44', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录天数');
INSERT INTO `sys_menu` VALUES ('45', '流失等级', '17', '45', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '流失等级');
INSERT INTO `sys_menu` VALUES ('46', '流失关卡', '17', '46', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '流失关卡');
INSERT INTO `sys_menu` VALUES ('47', '势力榜', '26', '47', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '势力榜');
INSERT INTO `sys_menu` VALUES ('48', '关卡榜', '26', '48', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关卡榜');
INSERT INTO `sys_menu` VALUES ('49', '亲密榜', '26', '49', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '亲密榜');
INSERT INTO `sys_menu` VALUES ('50', '帮派榜', '26', '50', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '帮派榜');
INSERT INTO `sys_menu` VALUES ('51', '帮派排行', '31', '51', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '帮派排行');
INSERT INTO `sys_menu` VALUES ('52', '个人排行', '31', '52', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '个人排行');
INSERT INTO `sys_menu` VALUES ('53', '用户新增', '37', '53', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户新增');
INSERT INTO `sys_menu` VALUES ('54', '用户修改', '37', '54', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户修改');
INSERT INTO `sys_menu` VALUES ('55', '用户查询', '37', '55', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户查询');
INSERT INTO `sys_menu` VALUES ('56', '用户删除', '37', '56', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户删除');
INSERT INTO `sys_menu` VALUES ('57', '角色新增', '38', '57', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色新增');
INSERT INTO `sys_menu` VALUES ('58', '角色修改', '38', '58', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色修改');
INSERT INTO `sys_menu` VALUES ('59', '角色查询', '38', '59', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色查询');
INSERT INTO `sys_menu` VALUES ('60', '角色删除', '38', '60', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色删除');
INSERT INTO `sys_menu` VALUES ('61', '菜单新增', '39', '61', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单新增');
INSERT INTO `sys_menu` VALUES ('62', '菜单修改', '39', '62', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单修改');
INSERT INTO `sys_menu` VALUES ('63', '菜单查询', '39', '63', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单查询');
INSERT INTO `sys_menu` VALUES ('64', '菜单删除', '39', '64', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单删除');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) DEFAULT NULL COMMENT '显示顺序',
  `status` char(1) DEFAULT NULL COMMENT '角色状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '0', 'admin', '2018-03-16 11:33:00', null, '2018-09-12 14:34:09', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '0', 'admin', '2018-03-16 11:33:00', null, '2018-09-12 20:53:04', '普通角色');
INSERT INTO `sys_role` VALUES ('14', '老板', 'boss', '1', null, null, '2018-09-03 18:22:55', null, '2018-09-11 10:18:40', '老板');
INSERT INTO `sys_role` VALUES ('16', '管理员1', '123', '1', '0', 'admin', '2018-09-12 14:37:21', null, '2018-09-12 20:48:58', '1');
INSERT INTO `sys_role` VALUES ('17', '辰优科技', '1', '1', '0', 'admin', '2018-09-12 20:46:53', null, '2018-09-12 20:52:32', '12');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '41');
INSERT INTO `sys_role_menu` VALUES ('2', '42');
INSERT INTO `sys_role_menu` VALUES ('2', '43');
INSERT INTO `sys_role_menu` VALUES ('6', '1');
INSERT INTO `sys_role_menu` VALUES ('11', '1');
INSERT INTO `sys_role_menu` VALUES ('12', '1');
INSERT INTO `sys_role_menu` VALUES ('13', '1');
INSERT INTO `sys_role_menu` VALUES ('14', '1');
INSERT INTO `sys_role_menu` VALUES ('14', '11');
INSERT INTO `sys_role_menu` VALUES ('14', '12');
INSERT INTO `sys_role_menu` VALUES ('14', '41');
INSERT INTO `sys_role_menu` VALUES ('14', '42');
INSERT INTO `sys_role_menu` VALUES ('14', '43');
INSERT INTO `sys_role_menu` VALUES ('16', '1');
INSERT INTO `sys_role_menu` VALUES ('16', '11');
INSERT INTO `sys_role_menu` VALUES ('16', '12');
INSERT INTO `sys_role_menu` VALUES ('16', '41');
INSERT INTO `sys_role_menu` VALUES ('16', '42');
INSERT INTO `sys_role_menu` VALUES ('16', '43');
INSERT INTO `sys_role_menu` VALUES ('17', '1');
INSERT INTO `sys_role_menu` VALUES ('17', '2');
INSERT INTO `sys_role_menu` VALUES ('17', '3');
INSERT INTO `sys_role_menu` VALUES ('17', '11');
INSERT INTO `sys_role_menu` VALUES ('17', '12');
INSERT INTO `sys_role_menu` VALUES ('17', '13');
INSERT INTO `sys_role_menu` VALUES ('17', '14');
INSERT INTO `sys_role_menu` VALUES ('17', '15');
INSERT INTO `sys_role_menu` VALUES ('17', '16');
INSERT INTO `sys_role_menu` VALUES ('17', '17');
INSERT INTO `sys_role_menu` VALUES ('17', '18');
INSERT INTO `sys_role_menu` VALUES ('17', '41');
INSERT INTO `sys_role_menu` VALUES ('17', '42');
INSERT INTO `sys_role_menu` VALUES ('17', '43');
INSERT INTO `sys_role_menu` VALUES ('17', '44');
INSERT INTO `sys_role_menu` VALUES ('17', '45');
INSERT INTO `sys_role_menu` VALUES ('17', '46');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(20) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', null, '15888888889', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '0:0:0:0:0:0:0:1', '2018-09-12 21:52:32', 'admin', '2018-03-16 11:33:00', null, '2018-09-10 18:07:51', '管理员');
INSERT INTO `sys_user` VALUES ('57', 'manager', '辰优科技', null, '18888888888', null, '1d0258c2440a8d19e716292b231e3190', null, null, null, null, null, 'admin', '2018-09-07 11:40:25', null, '2018-09-12 14:31:47', '666666');
INSERT INTO `sys_user` VALUES ('58', 'test', 'test', null, '15888888888', null, '098f6bcd4621d373cade4e832627b4f6', null, null, null, null, null, 'admin', '2018-09-07 13:34:55', null, '2018-09-10 14:30:49', '测试');
INSERT INTO `sys_user` VALUES ('59', 'hao', 'hao', null, '16675331736', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, null, null, null, 'admin', null, null, '2018-09-10 18:07:36', '角色是boss');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('32', '1');
INSERT INTO `sys_user_role` VALUES ('32', '2');
INSERT INTO `sys_user_role` VALUES ('34', '1');
INSERT INTO `sys_user_role` VALUES ('34', '2');
INSERT INTO `sys_user_role` VALUES ('36', '1');
INSERT INTO `sys_user_role` VALUES ('36', '2');
INSERT INTO `sys_user_role` VALUES ('38', '1');
INSERT INTO `sys_user_role` VALUES ('38', '2');
INSERT INTO `sys_user_role` VALUES ('40', '1');
INSERT INTO `sys_user_role` VALUES ('40', '2');
INSERT INTO `sys_user_role` VALUES ('52', '1');
INSERT INTO `sys_user_role` VALUES ('56', '1');
INSERT INTO `sys_user_role` VALUES ('56', '14');
INSERT INTO `sys_user_role` VALUES ('57', '2');
INSERT INTO `sys_user_role` VALUES ('58', '2');
INSERT INTO `sys_user_role` VALUES ('58', '14');
INSERT INTO `sys_user_role` VALUES ('59', '14');

-- ----------------------------
-- Table structure for t_about_game
-- ----------------------------
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

-- ----------------------------
-- Table structure for t_active_player
-- ----------------------------
DROP TABLE IF EXISTS `t_active_player`;
CREATE TABLE `t_active_player` (
  `active_id` int(11) NOT NULL COMMENT '活跃玩家id',
  `active_player_count` int(11) NOT NULL COMMENT '活跃玩家个数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `show_time` datetime NOT NULL,
  PRIMARY KEY (`active_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活跃玩家(游戏玩家)';

-- ----------------------------
-- Records of t_active_player
-- ----------------------------
INSERT INTO `t_active_player` VALUES ('1', '2', '1', '1', '2018-09-11 00:00:00');

-- ----------------------------
-- Table structure for t_add_newplayer
-- ----------------------------
DROP TABLE IF EXISTS `t_add_newplayer`;
CREATE TABLE `t_add_newplayer` (
  `newplayer_id` int(11) NOT NULL COMMENT '新增id',
  `register_time` datetime NOT NULL,
  `register_plant` int(11) NOT NULL COMMENT '注册设备',
  `register_player` int(11) NOT NULL COMMENT '注册玩家',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`newplayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新增玩家(游戏玩家)';

-- ----------------------------
-- Records of t_add_newplayer
-- ----------------------------
INSERT INTO `t_add_newplayer` VALUES ('1', '2018-09-11 00:00:00', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for t_away_player
-- ----------------------------
DROP TABLE IF EXISTS `t_away_player`;
CREATE TABLE `t_away_player` (
  `away_id` int(11) NOT NULL,
  `add_player` int(11) NOT NULL COMMENT '自增用户',
  `away_player` int(11) NOT NULL COMMENT '流失用户',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `record_time` datetime NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`away_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='玩家流失(游戏玩家)';

-- ----------------------------
-- Records of t_away_player
-- ----------------------------
INSERT INTO `t_away_player` VALUES ('1', '1', '1', '1', '1', '2018-09-11 20:14:16');

-- ----------------------------
-- Table structure for t_channel
-- ----------------------------
DROP TABLE IF EXISTS `t_channel`;
CREATE TABLE `t_channel` (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(64) NOT NULL,
  `server_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_channel
-- ----------------------------
INSERT INTO `t_channel` VALUES ('1', '360', '1');
INSERT INTO `t_channel` VALUES ('2', '小米', '2');

-- ----------------------------
-- Table structure for t_channel_count
-- ----------------------------
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
  `server_id` int(11) DEFAULT NULL COMMENT '分区区服id',
  `count_time` datetime NOT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='渠道统计(用户)';

-- ----------------------------
-- Records of t_channel_count
-- ----------------------------
INSERT INTO `t_channel_count` VALUES ('1', '2', '3', '4', '5', '6', '7.00', '8', '9', '0', '1', '2018-09-11 00:00:00');

-- ----------------------------
-- Table structure for t_cyuser_count
-- ----------------------------
DROP TABLE IF EXISTS `t_cyuser_count`;
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
  `count_time` date NOT NULL COMMENT '统计时间',
  PRIMARY KEY (`user_count_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户类(日报)';

-- ----------------------------
-- Records of t_cyuser_count
-- ----------------------------
INSERT INTO `t_cyuser_count` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2018-09-11');

-- ----------------------------
-- Table structure for t_income_class
-- ----------------------------
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
  `recorde_time` datetime NOT NULL,
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='收入类(用户)';

-- ----------------------------
-- Records of t_income_class
-- ----------------------------
INSERT INTO `t_income_class` VALUES ('1', '2.00', '3.00', '4', '5', '6', '7', '1', '1', '2018-09-11 00:00:00');

-- ----------------------------
-- Table structure for t_ltv_count
-- ----------------------------
DROP TABLE IF EXISTS `t_ltv_count`;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='LTV概况';

-- ----------------------------
-- Records of t_ltv_count
-- ----------------------------
INSERT INTO `t_ltv_count` VALUES ('1', '2', '3', '4', '5', '6', '7', '8', '9', '1', '1', '1');

-- ----------------------------
-- Table structure for t_retain_player
-- ----------------------------
DROP TABLE IF EXISTS `t_retain_player`;
CREATE TABLE `t_retain_player` (
  `retain_id` int(11) NOT NULL AUTO_INCREMENT,
  `oneday_retain` varchar(16) NOT NULL COMMENT '留存',
  `weekly_retain` varchar(16) NOT NULL COMMENT '七留',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `show_time` datetime NOT NULL,
  PRIMARY KEY (`retain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='玩家留存(游戏玩家)';

-- ----------------------------
-- Records of t_retain_player
-- ----------------------------
INSERT INTO `t_retain_player` VALUES ('1', '1', '1', '1', '1', '2018-09-11 00:00:00');

-- ----------------------------
-- Table structure for t_server
-- ----------------------------
DROP TABLE IF EXISTS `t_server`;
CREATE TABLE `t_server` (
  `server_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(64) NOT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_server
-- ----------------------------
INSERT INTO `t_server` VALUES ('1', 'node_360_1', '1');
INSERT INTO `t_server` VALUES ('2', 'node_360_2', '2');
