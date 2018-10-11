/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : chenyoumanager

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-10-11 17:49:51
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '概况', '0', '1', '#', 'M', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '概况');
INSERT INTO `sys_menu` VALUES ('2', '游戏玩家', '0', '2', '#', 'M', 'gameplayer', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏玩家');
INSERT INTO `sys_menu` VALUES ('3', '在线分析', '0', '3', '#', 'M', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线分析');
INSERT INTO `sys_menu` VALUES ('4', '充值统计', '0', '4', '#', 'M', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '充值统计');
INSERT INTO `sys_menu` VALUES ('5', '渠道数据', '0', '5', '#', 'M', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '渠道数据');
INSERT INTO `sys_menu` VALUES ('6', '游戏行为统计', '0', '6', '#', 'M', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏行为统计');
INSERT INTO `sys_menu` VALUES ('7', '活动分析', '0', '7', '#', 'M', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '充值统计');
INSERT INTO `sys_menu` VALUES ('8', '游戏管理', '0', '8', '#', 'M', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏管理');
INSERT INTO `sys_menu` VALUES ('9', '后台管理', '0', '9', '#', 'M', 'hao', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '后台管理');
INSERT INTO `sys_menu` VALUES ('10', '推送设置', '0', '10', '#', 'M', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '推送设置');
INSERT INTO `sys_menu` VALUES ('11', '游戏概况', '1', '11', '#', 'C', 'game:about:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏概况');
INSERT INTO `sys_menu` VALUES ('12', '日报', '1', '12', '#', 'C', 'dayily:paper:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日报');
INSERT INTO `sys_menu` VALUES ('13', 'LTV概况', '1', '12', '#', 'C', 'ltv:gengral:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', 'LTV概况');
INSERT INTO `sys_menu` VALUES ('14', '新增玩家', '2', '13', '#', 'C', 'add:newplayer:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增玩家');
INSERT INTO `sys_menu` VALUES ('15', '活跃玩家', '2', '14', '#', 'C', 'active:player:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '活跃玩家');
INSERT INTO `sys_menu` VALUES ('16', '玩家留存', '2', '15', '#', 'C', 'level:player:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '玩家留存');
INSERT INTO `sys_menu` VALUES ('17', '玩家流失', '2', '16', '#', 'C', 'loss:player:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '玩家流失');
INSERT INTO `sys_menu` VALUES ('18', '流失行为分析', '2', '17', '#', 'C', 'loss:behavior:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '流失行为分析');
INSERT INTO `sys_menu` VALUES ('19', '在线用户', '3', '18', '#', 'C', 'online:player:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户');
INSERT INTO `sys_menu` VALUES ('20', '每日充值', '4', '19', '#', 'C', 'recharge:day:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '每日充值');
INSERT INTO `sys_menu` VALUES ('21', '计费点分析', '4', '20', '#', 'C', 'point:pricing:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '计费点分析');
INSERT INTO `sys_menu` VALUES ('22', '渠道数据汇总', '5', '21', '#', 'C', 'channel:count:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '渠道数据汇总');
INSERT INTO `sys_menu` VALUES ('23', '用户等级', '6', '22', '#', 'C', 'grade:user:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户等级');
INSERT INTO `sys_menu` VALUES ('24', 'vip人数', '6', '23', '#', 'C', 'vip:count:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', 'vip人数');
INSERT INTO `sys_menu` VALUES ('25', '帮派数量', '6', '24', '#', 'C', 'gang:count:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '帮派数量');
INSERT INTO `sys_menu` VALUES ('26', '帮派等级', '6', '25', '#', 'C', 'gang:grade:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '帮派等级');
INSERT INTO `sys_menu` VALUES ('27', '排行信息', '6', '26', '#', 'C', 'rank:message:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '排行信息');
INSERT INTO `sys_menu` VALUES ('28', '任务信息', '6', '27', '#', 'C', 'task:message:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务消息');
INSERT INTO `sys_menu` VALUES ('29', '产出与消耗', '6', '28', '#', 'C', 'output:consume:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '产出与消耗');
INSERT INTO `sys_menu` VALUES ('30', '活动参与人数', '7', '29', '#', 'C', 'number:activity:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '活动参与人数');
INSERT INTO `sys_menu` VALUES ('31', '活动产出与消耗', '7', '30', '#', 'C', 'oup:activity:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '活动产出与消耗');
INSERT INTO `sys_menu` VALUES ('32', '活动排行榜', '7', '31', '#', 'C', 'activity:rank:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '活动排行榜');
INSERT INTO `sys_menu` VALUES ('33', '游戏活动开启', '8', '32', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '游戏活动开启');
INSERT INTO `sys_menu` VALUES ('34', '系统邮件发放', '8', '33', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '推送设置');
INSERT INTO `sys_menu` VALUES ('35', '游戏公告修改', '8', '34', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统邮件发放');
INSERT INTO `sys_menu` VALUES ('36', '聊天监控', '8', '35', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '聊天监控');
INSERT INTO `sys_menu` VALUES ('37', '玩家信息查询', '8', '36', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '玩家信息查询');
INSERT INTO `sys_menu` VALUES ('38', '充值补单', '8', '36', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '充值补单');
INSERT INTO `sys_menu` VALUES ('39', '充值补单日志', '8', '36', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '充值补单日志');
INSERT INTO `sys_menu` VALUES ('40', '用户管理', '9', '37', '#', 'C', 'system:user:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理');
INSERT INTO `sys_menu` VALUES ('41', '角色管理', '9', '38', '#', 'C', 'system:role:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理');
INSERT INTO `sys_menu` VALUES ('42', '菜单管理', '9', '39', '#', 'C', 'system:menu:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理');
INSERT INTO `sys_menu` VALUES ('43', '消息发布', '10', '39', '#', 'C', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '消息发布');
INSERT INTO `sys_menu` VALUES ('45', '用户类', '12', '41', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户类');
INSERT INTO `sys_menu` VALUES ('46', '收入类', '12', '42', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '收入类');
INSERT INTO `sys_menu` VALUES ('47', '渠道统计', '12', '43', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '渠道统计');
INSERT INTO `sys_menu` VALUES ('48', '登录天数', '17', '44', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录天数');
INSERT INTO `sys_menu` VALUES ('49', '流失等级', '17', '45', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '流失等级');
INSERT INTO `sys_menu` VALUES ('50', '流失关卡', '17', '46', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '流失关卡');
INSERT INTO `sys_menu` VALUES ('51', '势力榜', '26', '47', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '势力榜');
INSERT INTO `sys_menu` VALUES ('52', '关卡榜', '26', '48', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关卡榜');
INSERT INTO `sys_menu` VALUES ('53', '亲密榜', '26', '49', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '亲密榜');
INSERT INTO `sys_menu` VALUES ('54', '帮派榜', '26', '50', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '帮派榜');
INSERT INTO `sys_menu` VALUES ('55', '帮派排行', '31', '51', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '帮派排行');
INSERT INTO `sys_menu` VALUES ('56', '个人排行', '31', '52', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '个人排行');
INSERT INTO `sys_menu` VALUES ('57', '用户新增', '37', '53', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户新增');
INSERT INTO `sys_menu` VALUES ('58', '用户修改', '37', '54', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户修改');
INSERT INTO `sys_menu` VALUES ('59', '用户查询', '37', '55', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户查询');
INSERT INTO `sys_menu` VALUES ('60', '用户删除', '37', '56', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户删除');
INSERT INTO `sys_menu` VALUES ('61', '角色新增', '38', '57', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色新增');
INSERT INTO `sys_menu` VALUES ('62', '角色修改', '38', '58', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色修改');
INSERT INTO `sys_menu` VALUES ('63', '角色查询', '38', '59', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色查询');
INSERT INTO `sys_menu` VALUES ('64', '角色删除', '38', '60', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色删除');
INSERT INTO `sys_menu` VALUES ('65', '菜单新增', '39', '61', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单新增');
INSERT INTO `sys_menu` VALUES ('66', '菜单修改', '39', '62', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单修改');
INSERT INTO `sys_menu` VALUES ('67', '菜单查询', '39', '63', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单查询');
INSERT INTO `sys_menu` VALUES ('68', '菜单删除', '39', '64', '#', 'F', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单删除');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '0', 'admin', '2018-03-16 11:33:00', null, '2018-09-25 09:48:05', '管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '0', 'admin', '2018-03-16 11:33:00', null, '2018-10-11 17:19:10', '普通角色');
INSERT INTO `sys_role` VALUES ('14', '老板', 'boss', '1', null, null, '2018-09-03 18:22:55', null, '2018-09-17 10:51:40', '老板');
INSERT INTO `sys_role` VALUES ('16', '管理员1', '123', '1', '0', 'admin', '2018-09-12 14:37:21', null, '2018-10-11 17:17:04', '1');

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
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '25');
INSERT INTO `sys_role_menu` VALUES ('1', '26');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '35');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '39');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '60');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '62');
INSERT INTO `sys_role_menu` VALUES ('1', '63');
INSERT INTO `sys_role_menu` VALUES ('1', '64');
INSERT INTO `sys_role_menu` VALUES ('1', '65');
INSERT INTO `sys_role_menu` VALUES ('1', '66');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '22');
INSERT INTO `sys_role_menu` VALUES ('6', '1');
INSERT INTO `sys_role_menu` VALUES ('11', '1');
INSERT INTO `sys_role_menu` VALUES ('12', '1');
INSERT INTO `sys_role_menu` VALUES ('13', '1');
INSERT INTO `sys_role_menu` VALUES ('14', '1');
INSERT INTO `sys_role_menu` VALUES ('14', '2');
INSERT INTO `sys_role_menu` VALUES ('14', '3');
INSERT INTO `sys_role_menu` VALUES ('14', '4');
INSERT INTO `sys_role_menu` VALUES ('14', '5');
INSERT INTO `sys_role_menu` VALUES ('14', '6');
INSERT INTO `sys_role_menu` VALUES ('14', '7');
INSERT INTO `sys_role_menu` VALUES ('14', '8');
INSERT INTO `sys_role_menu` VALUES ('14', '9');
INSERT INTO `sys_role_menu` VALUES ('14', '10');
INSERT INTO `sys_role_menu` VALUES ('14', '11');
INSERT INTO `sys_role_menu` VALUES ('14', '12');
INSERT INTO `sys_role_menu` VALUES ('14', '13');
INSERT INTO `sys_role_menu` VALUES ('14', '14');
INSERT INTO `sys_role_menu` VALUES ('14', '15');
INSERT INTO `sys_role_menu` VALUES ('14', '16');
INSERT INTO `sys_role_menu` VALUES ('14', '17');
INSERT INTO `sys_role_menu` VALUES ('14', '18');
INSERT INTO `sys_role_menu` VALUES ('14', '19');
INSERT INTO `sys_role_menu` VALUES ('14', '20');
INSERT INTO `sys_role_menu` VALUES ('14', '21');
INSERT INTO `sys_role_menu` VALUES ('14', '22');
INSERT INTO `sys_role_menu` VALUES ('14', '23');
INSERT INTO `sys_role_menu` VALUES ('14', '24');
INSERT INTO `sys_role_menu` VALUES ('14', '25');
INSERT INTO `sys_role_menu` VALUES ('14', '26');
INSERT INTO `sys_role_menu` VALUES ('14', '27');
INSERT INTO `sys_role_menu` VALUES ('14', '28');
INSERT INTO `sys_role_menu` VALUES ('14', '29');
INSERT INTO `sys_role_menu` VALUES ('14', '30');
INSERT INTO `sys_role_menu` VALUES ('14', '31');
INSERT INTO `sys_role_menu` VALUES ('14', '32');
INSERT INTO `sys_role_menu` VALUES ('14', '33');
INSERT INTO `sys_role_menu` VALUES ('14', '34');
INSERT INTO `sys_role_menu` VALUES ('14', '35');
INSERT INTO `sys_role_menu` VALUES ('14', '36');
INSERT INTO `sys_role_menu` VALUES ('14', '37');
INSERT INTO `sys_role_menu` VALUES ('14', '38');
INSERT INTO `sys_role_menu` VALUES ('14', '39');
INSERT INTO `sys_role_menu` VALUES ('14', '40');
INSERT INTO `sys_role_menu` VALUES ('14', '41');
INSERT INTO `sys_role_menu` VALUES ('14', '42');
INSERT INTO `sys_role_menu` VALUES ('14', '43');
INSERT INTO `sys_role_menu` VALUES ('14', '45');
INSERT INTO `sys_role_menu` VALUES ('14', '46');
INSERT INTO `sys_role_menu` VALUES ('14', '47');
INSERT INTO `sys_role_menu` VALUES ('14', '48');
INSERT INTO `sys_role_menu` VALUES ('14', '49');
INSERT INTO `sys_role_menu` VALUES ('14', '50');
INSERT INTO `sys_role_menu` VALUES ('14', '51');
INSERT INTO `sys_role_menu` VALUES ('14', '52');
INSERT INTO `sys_role_menu` VALUES ('14', '53');
INSERT INTO `sys_role_menu` VALUES ('14', '54');
INSERT INTO `sys_role_menu` VALUES ('14', '55');
INSERT INTO `sys_role_menu` VALUES ('14', '56');
INSERT INTO `sys_role_menu` VALUES ('14', '57');
INSERT INTO `sys_role_menu` VALUES ('14', '58');
INSERT INTO `sys_role_menu` VALUES ('14', '59');
INSERT INTO `sys_role_menu` VALUES ('14', '60');
INSERT INTO `sys_role_menu` VALUES ('14', '61');
INSERT INTO `sys_role_menu` VALUES ('14', '62');
INSERT INTO `sys_role_menu` VALUES ('14', '63');
INSERT INTO `sys_role_menu` VALUES ('14', '64');
INSERT INTO `sys_role_menu` VALUES ('14', '65');
INSERT INTO `sys_role_menu` VALUES ('14', '66');
INSERT INTO `sys_role_menu` VALUES ('14', '67');
INSERT INTO `sys_role_menu` VALUES ('14', '68');
INSERT INTO `sys_role_menu` VALUES ('16', '5');
INSERT INTO `sys_role_menu` VALUES ('16', '22');

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
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', null, '15888888889', null, '21232f297a57a5a743894a0e4a801fc3', null, null, null, '127.0.0.1', '2018-10-11 17:48:47', 'admin', null, null, null, '管理员', 'android_td_jyfc');
INSERT INTO `sys_user` VALUES ('6', '123', '123', null, '13098381432', null, '202cb962ac59075b964b07152d234b70', null, '0', null, '0:0:0:0:0:0:0:1', '2018-10-11 17:16:02', 'admin', '2018-10-11 17:10:41', 'admin', null, '123', null);
INSERT INTO `sys_user` VALUES ('7', 'z', '指牛', null, '13098381435', null, '202cb962ac59075b964b07152d234b70', null, '0', null, '127.0.0.1', '2018-10-11 17:42:57', 'admin', '2018-10-11 17:17:54', '123', null, '渠道', 'android_td_jyfc');
INSERT INTO `sys_user` VALUES ('8', 'test01', '渠道1', null, '13098381433', null, '0e698a8ffc1a0af622c7b4db3cb750cc', null, '0', null, '127.0.0.1', '2018-10-11 17:46:42', 'admin', '2018-10-11 17:38:37', 'admin', null, '渠道1', 'android_td_jyfc');

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
INSERT INTO `sys_user_role` VALUES ('6', '1');
INSERT INTO `sys_user_role` VALUES ('7', '2');
INSERT INTO `sys_user_role` VALUES ('8', '2');
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

-- ----------------------------
-- Table structure for t_about_game
-- ----------------------------
DROP TABLE IF EXISTS `t_about_game`;
CREATE TABLE `t_about_game` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `server_name` varchar(64) NOT NULL COMMENT '服务器名称',
  `stime` varchar(32) NOT NULL DEFAULT '' COMMENT '开服日期',
  `day` int(11) NOT NULL DEFAULT '1' COMMENT '开服天数',
  `create_num` int(11) NOT NULL DEFAULT '0' COMMENT '注册人数',
  `online_num` int(11) NOT NULL DEFAULT '0' COMMENT '在线人数',
  `active_num` int(11) NOT NULL DEFAULT '0' COMMENT '活跃人数',
  `money` int(11) NOT NULL DEFAULT '0' COMMENT '付费总量',
  `pay_num` int(11) NOT NULL DEFAULT '0' COMMENT '付费人数',
  `arpu` int(11) NOT NULL DEFAULT '0' COMMENT 'arpu值',
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='游戏概况';

-- ----------------------------
-- Records of t_about_game
-- ----------------------------
INSERT INTO `t_about_game` VALUES ('1', '1', 'node_360_1', '2018-09-11 11:09:21', '29', '171', '0', '0', '0', '0', '0', 'android_td_jyfc');
INSERT INTO `t_about_game` VALUES ('2', '2', 'node_360_2', '2018-09-11 11:09:21', '29', '0', '0', '0', '0', '0', '0', 'android_test_02');
INSERT INTO `t_about_game` VALUES ('3', null, '所有区服和渠道', '2018-09-11 11:09:21', '1', '10000', '88888888', '66666', '999999', '999999', '999', null);
INSERT INTO `t_about_game` VALUES ('4', '1', '只选择区服', '2018-09-11 11:09:21', '29', '171', '0', '0', '0', '0', '0', null);

-- ----------------------------
-- Table structure for t_active_player
-- ----------------------------
DROP TABLE IF EXISTS `t_active_player`;
CREATE TABLE `t_active_player` (
  `active_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活跃玩家id',
  `show_time` varchar(32) NOT NULL COMMENT '记录时间',
  `active_player_count` int(11) NOT NULL COMMENT '活跃玩家个数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`active_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6282 DEFAULT CHARSET=utf8mb4 COMMENT='活跃玩家(游戏玩家)';

-- ----------------------------
-- Records of t_active_player
-- ----------------------------
INSERT INTO `t_active_player` VALUES ('1387', '2018-10-05', '1', '1', 'test_01');
INSERT INTO `t_active_player` VALUES ('2144', '2018-10-06', '2', '1', 'test_01');
INSERT INTO `t_active_player` VALUES ('4144', '2018-10-07', '2', '1', 'test_01');
INSERT INTO `t_active_player` VALUES ('6281', '2018-10-08', '2', '1', 'test_01');

-- ----------------------------
-- Table structure for t_activity_num
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_num`;
CREATE TABLE `t_activity_num` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动编号',
  `activity_number` varchar(64) NOT NULL COMMENT '活动编号',
  `activity_player_count` int(11) NOT NULL COMMENT '活动参与玩家数',
  `consume_ingot` int(11) DEFAULT NULL COMMENT '活动消耗元宝',
  `server_id` int(11) DEFAULT NULL,
  `server_name` varchar(16) NOT NULL,
  `record_time` varchar(32) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='活动分析-->活动参与人数';

-- ----------------------------
-- Records of t_activity_num
-- ----------------------------
INSERT INTO `t_activity_num` VALUES ('1', '11111', '1111111', '222', '1', '360', '2018-09-12');
INSERT INTO `t_activity_num` VALUES ('2', '2222', '222222222', '222222', '1', '360', '2018-09-03');
INSERT INTO `t_activity_num` VALUES ('3', '333', '3333', '333', '1', '360', '2018-09-10');

-- ----------------------------
-- Table structure for t_activity_output
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_output`;
CREATE TABLE `t_activity_output` (
  `id` int(11) NOT NULL,
  `prop_id` int(11) NOT NULL COMMENT '道具Id',
  `output` varchar(64) NOT NULL COMMENT '产出',
  `consume` varchar(64) NOT NULL,
  `server_id` int(11) NOT NULL,
  `server_name` varchar(64) NOT NULL,
  `recorde_time` varchar(32) NOT NULL COMMENT '记录时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活动分析-->活动产出与消耗';

-- ----------------------------
-- Records of t_activity_output
-- ----------------------------
INSERT INTO `t_activity_output` VALUES ('1', '1', '222', '3333', '1', '360', '2018-09-12');

-- ----------------------------
-- Table structure for t_activity_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_activity_rank`;
CREATE TABLE `t_activity_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gang_id` int(11) NOT NULL COMMENT '帮派排行',
  `gang_name` varchar(16) NOT NULL COMMENT '帮派名称',
  `server_id` int(11) NOT NULL,
  `server_name` varchar(16) NOT NULL COMMENT '帮派区服',
  `record_time` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='活动分析-->活动排行榜-->帮派排行';

-- ----------------------------
-- Records of t_activity_rank
-- ----------------------------
INSERT INTO `t_activity_rank` VALUES ('1', '1', '天外飞仙', '1', '666', '2018-09-17');

-- ----------------------------
-- Table structure for t_add_newplayer
-- ----------------------------
DROP TABLE IF EXISTS `t_add_newplayer`;
CREATE TABLE `t_add_newplayer` (
  `newplayer_id` int(11) NOT NULL COMMENT '新增id',
  `register_time` varchar(32) NOT NULL COMMENT '注册时间',
  `register_plant` int(11) NOT NULL COMMENT '注册设备',
  `register_player` varchar(32) NOT NULL COMMENT '注册玩家',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`newplayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新增玩家(游戏玩家)';

-- ----------------------------
-- Records of t_add_newplayer
-- ----------------------------
INSERT INTO `t_add_newplayer` VALUES ('1', '2018-09-13', '0', '99999', null, '');
INSERT INTO `t_add_newplayer` VALUES ('2', '2018-09-20', '0', '10000', null, null);
INSERT INTO `t_add_newplayer` VALUES ('3534182', '2018-10-08 10:33:02', '0', '隗立果', '1', 'test_01');
INSERT INTO `t_add_newplayer` VALUES ('5194036', '2018-10-07 18:25:53', '0', '衡安然', '1', 'test_01');
INSERT INTO `t_add_newplayer` VALUES ('5693271', '2018-10-07 18:31:59', '0', '詹万言', '1', 'test_01');
INSERT INTO `t_add_newplayer` VALUES ('5834902', '2018-10-04 10:28:13', '0', '朱源智', '1', '1');
INSERT INTO `t_add_newplayer` VALUES ('8631249', '2018-10-06 22:03:09', '0', '付青寒', '1', 'test_01');

-- ----------------------------
-- Table structure for t_away_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_away_grade`;
CREATE TABLE `t_away_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流失等级',
  `game_grade` varchar(64) NOT NULL COMMENT '流失等级名称',
  `count_player` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `show_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='流失等级';

-- ----------------------------
-- Records of t_away_grade
-- ----------------------------
INSERT INTO `t_away_grade` VALUES ('1', '王者级别', '9999', '1', '1', '2018-10-08');
INSERT INTO `t_away_grade` VALUES ('2', '2', '2', null, null, '2018-08-08');

-- ----------------------------
-- Table structure for t_away_output
-- ----------------------------
DROP TABLE IF EXISTS `t_away_output`;
CREATE TABLE `t_away_output` (
  `away_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流失关卡id',
  `away_output` varchar(64) NOT NULL COMMENT '流失关卡',
  `count_player` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `show_time` varchar(32) DEFAULT NULL COMMENT '记录当前日期',
  PRIMARY KEY (`away_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='流失关卡';

-- ----------------------------
-- Records of t_away_output
-- ----------------------------
INSERT INTO `t_away_output` VALUES ('1', '第一千零八关', '88888', '1', '1', '2018-10-08');
INSERT INTO `t_away_output` VALUES ('2', '12345', '99999', null, null, '2018-10-08');

-- ----------------------------
-- Table structure for t_away_player
-- ----------------------------
DROP TABLE IF EXISTS `t_away_player`;
CREATE TABLE `t_away_player` (
  `away_id` int(11) NOT NULL,
  `record_time` varchar(32) NOT NULL COMMENT '记录时间',
  `add_player` int(11) NOT NULL COMMENT '自增用户',
  `away_player` int(11) NOT NULL COMMENT '流失用户',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`away_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='玩家流失(游戏玩家)';

-- ----------------------------
-- Records of t_away_player
-- ----------------------------
INSERT INTO `t_away_player` VALUES ('1', '2018-09-13', '99999', '9999', '1', '1');
INSERT INTO `t_away_player` VALUES ('2', '2018-09-20', '6666', '6666', null, null);

-- ----------------------------
-- Table structure for t_channel
-- ----------------------------
DROP TABLE IF EXISTS `t_channel`;
CREATE TABLE `t_channel` (
  `channel_id` varchar(32) NOT NULL,
  `channel_name` varchar(64) NOT NULL,
  `server_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_channel
-- ----------------------------
INSERT INTO `t_channel` VALUES ('android_td_jyfc', 'android_td_jyfc', '2');
INSERT INTO `t_channel` VALUES ('android_test_02', 'android_test_02', '2');
INSERT INTO `t_channel` VALUES ('test_01', 'test_01', '1');

-- ----------------------------
-- Table structure for t_channel_count
-- ----------------------------
DROP TABLE IF EXISTS `t_channel_count`;
CREATE TABLE `t_channel_count` (
  `c_id` int(11) NOT NULL,
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
  `channel_id` varchar(32) DEFAULT NULL COMMENT '渠道id',
  `server_id` int(11) DEFAULT NULL COMMENT '分区区服id',
  `count_time` varchar(32) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道统计(用户)';

-- ----------------------------
-- Records of t_channel_count
-- ----------------------------
INSERT INTO `t_channel_count` VALUES ('1', '360', '9999', '9999', '11111', '22', '333.00', '33', '55', '77', '100', '1', '1', '2018-09-11');
INSERT INTO `t_channel_count` VALUES ('2', '360', '1111', '2222', '333', '444', '555.00', '666', '777', '999', '888', null, null, '2018-09-13');

-- ----------------------------
-- Table structure for t_channel_summary
-- ----------------------------
DROP TABLE IF EXISTS `t_channel_summary`;
CREATE TABLE `t_channel_summary` (
  `c_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
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
  `show_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道数据汇总(渠道数据)';

-- ----------------------------
-- Records of t_channel_summary
-- ----------------------------
INSERT INTO `t_channel_summary` VALUES ('1', 'android_td_jyfc', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1.00', '1.00', '2018-09-20');

-- ----------------------------
-- Table structure for t_create_count
-- ----------------------------
DROP TABLE IF EXISTS `t_create_count`;
CREATE TABLE `t_create_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rtime` varchar(32) NOT NULL,
  `rcount` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_create_count
-- ----------------------------

-- ----------------------------
-- Table structure for t_cyuser_count
-- ----------------------------
DROP TABLE IF EXISTS `t_cyuser_count`;
CREATE TABLE `t_cyuser_count` (
  `user_count_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户统计的id',
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
  `channel_id` varchar(32) DEFAULT NULL COMMENT '渠道id',
  `count_time` varchar(32) NOT NULL COMMENT '统计时间',
  PRIMARY KEY (`user_count_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9004 DEFAULT CHARSET=utf8mb4 COMMENT='用户类(日报)';

-- ----------------------------
-- Records of t_cyuser_count
-- ----------------------------
INSERT INTO `t_cyuser_count` VALUES ('1', '9999', '100', '100009', '9999', '8888', '10086', '10010', '123', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8888', '8888', '8888', '8888', '8888', '8888', '8888', '8888', '8888', '1234', '1111', '12345', '2', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8889', '8889', '8889', '8889', '8889', '8889', '8889', '8889', '8889', '1234', '1111', '12345', '2', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8890', '8890', '8890', '8890', '8890', '8890', '8890', '8890', '8890', '1234', '1111', '12345', '2', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8891', '8891', '8891', '8891', '8891', '8891', '8891', '8891', '8891', '1234', '1111', '12345', '2', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8892', '8892', '8892', '8892', '8892', '8892', '8892', '8892', '8892', '1234', '1111', '12345', '2', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8893', '8893', '8893', '8893', '8893', '8893', '8893', '8893', '8893', '1234', '1111', '12345', '2', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8894', '8894', '8894', '8894', '8894', '8894', '8894', '8894', '8894', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8895', '8895', '8895', '8895', '8895', '8895', '8895', '8895', '8895', '1234', '1111', '12345', '2', '2', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8896', '8896', '8896', '8896', '8896', '8896', '8896', '8896', '8896', '1234', '1111', '12345', '2', '2', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8897', '8897', '8897', '8897', '8897', '8897', '8897', '8897', '8897', '1234', '1111', '12345', '2', '2', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8898', '8898', '8898', '8898', '8898', '8898', '8898', '8898', '8898', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8899', '8899', '8899', '8899', '8899', '8899', '8899', '8899', '8899', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8900', '8900', '8900', '8900', '8900', '8900', '8900', '8900', '8900', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8901', '8901', '8901', '8901', '8901', '8901', '8901', '8901', '8901', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8902', '8902', '8902', '8902', '8902', '8902', '8902', '8902', '8902', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8903', '8903', '8903', '8903', '8903', '8903', '8903', '8903', '8903', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8904', '8904', '8904', '8904', '8904', '8904', '8904', '8904', '8904', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8905', '8905', '8905', '8905', '8905', '8905', '8905', '8905', '8905', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8906', '8906', '8906', '8906', '8906', '8906', '8906', '8906', '8906', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8907', '8907', '8907', '8907', '8907', '8907', '8907', '8907', '8907', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8908', '8908', '8908', '8908', '8908', '8908', '8908', '8908', '8908', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8909', '8909', '8909', '8909', '8909', '8909', '8909', '8909', '8909', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8910', '8910', '8910', '8910', '8910', '8910', '8910', '8910', '8910', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8911', '8911', '8911', '8911', '8911', '8911', '8911', '8911', '8911', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8912', '8912', '8912', '8912', '8912', '8912', '8912', '8912', '8912', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8913', '8913', '8913', '8913', '8913', '8913', '8913', '8913', '8913', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8914', '8914', '8914', '8914', '8914', '8914', '8914', '8914', '8914', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8915', '8915', '8915', '8915', '8915', '8915', '8915', '8915', '8915', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8916', '8916', '8916', '8916', '8916', '8916', '8916', '8916', '8916', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8917', '8917', '8917', '8917', '8917', '8917', '8917', '8917', '8917', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8918', '8918', '8918', '8918', '8918', '8918', '8918', '8918', '8918', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8919', '8919', '8919', '8919', '8919', '8919', '8919', '8919', '8919', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8920', '8920', '8920', '8920', '8920', '8920', '8920', '8920', '8920', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8921', '8921', '8921', '8921', '8921', '8921', '8921', '8921', '8921', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8922', '8922', '8922', '8922', '8922', '8922', '8922', '8922', '8922', '1234', '1111', '12345', '1', '1', '2018-09-21');
INSERT INTO `t_cyuser_count` VALUES ('8923', '8923', '8923', '8923', '8923', '8923', '8923', '8923', '8923', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8924', '8924', '8924', '8924', '8924', '8924', '8924', '8924', '8924', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8925', '8925', '8925', '8925', '8925', '8925', '8925', '8925', '8925', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8926', '8926', '8926', '8926', '8926', '8926', '8926', '8926', '8926', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8927', '8927', '8927', '8927', '8927', '8927', '8927', '8927', '8927', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8928', '8928', '8928', '8928', '8928', '8928', '8928', '8928', '8928', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8929', '8929', '8929', '8929', '8929', '8929', '8929', '8929', '8929', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8930', '8930', '8930', '8930', '8930', '8930', '8930', '8930', '8930', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8931', '8931', '8931', '8931', '8931', '8931', '8931', '8931', '8931', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8932', '8932', '8932', '8932', '8932', '8932', '8932', '8932', '8932', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8933', '8933', '8933', '8933', '8933', '8933', '8933', '8933', '8933', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8934', '8934', '8934', '8934', '8934', '8934', '8934', '8934', '8934', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8935', '8935', '8935', '8935', '8935', '8935', '8935', '8935', '8935', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8936', '8936', '8936', '8936', '8936', '8936', '8936', '8936', '8936', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8937', '8937', '8937', '8937', '8937', '8937', '8937', '8937', '8937', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8938', '8938', '8938', '8938', '8938', '8938', '8938', '8938', '8938', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8939', '8939', '8939', '8939', '8939', '8939', '8939', '8939', '8939', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8940', '8940', '8940', '8940', '8940', '8940', '8940', '8940', '8940', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8941', '8941', '8941', '8941', '8941', '8941', '8941', '8941', '8941', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8942', '8942', '8942', '8942', '8942', '8942', '8942', '8942', '8942', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8943', '8943', '8943', '8943', '8943', '8943', '8943', '8943', '8943', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8944', '8944', '8944', '8944', '8944', '8944', '8944', '8944', '8944', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8945', '8945', '8945', '8945', '8945', '8945', '8945', '8945', '8945', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8946', '8946', '8946', '8946', '8946', '8946', '8946', '8946', '8946', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8947', '8947', '8947', '8947', '8947', '8947', '8947', '8947', '8947', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8948', '8948', '8948', '8948', '8948', '8948', '8948', '8948', '8948', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8949', '8949', '8949', '8949', '8949', '8949', '8949', '8949', '8949', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8950', '8950', '8950', '8950', '8950', '8950', '8950', '8950', '8950', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8951', '8951', '8951', '8951', '8951', '8951', '8951', '8951', '8951', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8952', '8952', '8952', '8952', '8952', '8952', '8952', '8952', '8952', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8953', '8953', '8953', '8953', '8953', '8953', '8953', '8953', '8953', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8954', '8954', '8954', '8954', '8954', '8954', '8954', '8954', '8954', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8955', '8955', '8955', '8955', '8955', '8955', '8955', '8955', '8955', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8956', '8956', '8956', '8956', '8956', '8956', '8956', '8956', '8956', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8957', '8957', '8957', '8957', '8957', '8957', '8957', '8957', '8957', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8958', '8958', '8958', '8958', '8958', '8958', '8958', '8958', '8958', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8959', '8959', '8959', '8959', '8959', '8959', '8959', '8959', '8959', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8960', '8960', '8960', '8960', '8960', '8960', '8960', '8960', '8960', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8961', '8961', '8961', '8961', '8961', '8961', '8961', '8961', '8961', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8962', '8962', '8962', '8962', '8962', '8962', '8962', '8962', '8962', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8963', '8963', '8963', '8963', '8963', '8963', '8963', '8963', '8963', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8964', '8964', '8964', '8964', '8964', '8964', '8964', '8964', '8964', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8965', '8965', '8965', '8965', '8965', '8965', '8965', '8965', '8965', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8966', '8966', '8966', '8966', '8966', '8966', '8966', '8966', '8966', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8967', '8967', '8967', '8967', '8967', '8967', '8967', '8967', '8967', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8968', '8968', '8968', '8968', '8968', '8968', '8968', '8968', '8968', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8969', '8969', '8969', '8969', '8969', '8969', '8969', '8969', '8969', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8970', '8970', '8970', '8970', '8970', '8970', '8970', '8970', '8970', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8971', '8971', '8971', '8971', '8971', '8971', '8971', '8971', '8971', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8972', '8972', '8972', '8972', '8972', '8972', '8972', '8972', '8972', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8973', '8973', '8973', '8973', '8973', '8973', '8973', '8973', '8973', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8974', '8974', '8974', '8974', '8974', '8974', '8974', '8974', '8974', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8975', '8975', '8975', '8975', '8975', '8975', '8975', '8975', '8975', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8976', '8976', '8976', '8976', '8976', '8976', '8976', '8976', '8976', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8977', '8977', '8977', '8977', '8977', '8977', '8977', '8977', '8977', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8978', '8978', '8978', '8978', '8978', '8978', '8978', '8978', '8978', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8979', '8979', '8979', '8979', '8979', '8979', '8979', '8979', '8979', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8980', '8980', '8980', '8980', '8980', '8980', '8980', '8980', '8980', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8981', '8981', '8981', '8981', '8981', '8981', '8981', '8981', '8981', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8982', '8982', '8982', '8982', '8982', '8982', '8982', '8982', '8982', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8983', '8983', '8983', '8983', '8983', '8983', '8983', '8983', '8983', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8984', '8984', '8984', '8984', '8984', '8984', '8984', '8984', '8984', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8985', '8985', '8985', '8985', '8985', '8985', '8985', '8985', '8985', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8986', '8986', '8986', '8986', '8986', '8986', '8986', '8986', '8986', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8987', '8987', '8987', '8987', '8987', '8987', '8987', '8987', '8987', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8988', '8988', '8988', '8988', '8988', '8988', '8988', '8988', '8988', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8989', '8989', '8989', '8989', '8989', '8989', '8989', '8989', '8989', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8990', '8990', '8990', '8990', '8990', '8990', '8990', '8990', '8990', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8991', '8991', '8991', '8991', '8991', '8991', '8991', '8991', '8991', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8992', '8992', '8992', '8992', '8992', '8992', '8992', '8992', '8992', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8993', '8993', '8993', '8993', '8993', '8993', '8993', '8993', '8993', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8994', '8994', '8994', '8994', '8994', '8994', '8994', '8994', '8994', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8995', '8995', '8995', '8995', '8995', '8995', '8995', '8995', '8995', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8996', '8996', '8996', '8996', '8996', '8996', '8996', '8996', '8996', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8997', '8997', '8997', '8997', '8997', '8997', '8997', '8997', '8997', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8998', '8998', '8998', '8998', '8998', '8998', '8998', '8998', '8998', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('8999', '8999', '8999', '8999', '8999', '8999', '8999', '8999', '8999', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('9000', '9000', '9000', '9000', '9000', '9000', '9000', '9000', '9000', '1234', '1111', '12345', '1', '1', '2018-09-11');
INSERT INTO `t_cyuser_count` VALUES ('9001', '9000', '100', '2000', '5000', '6000', '8000', '200', '1', '2', '3', '4', null, null, '2018-09-13');
INSERT INTO `t_cyuser_count` VALUES ('9002', '902', '2', '2', '3', '4', '6', '5', '6', '6', '6', '6', null, null, '2018-09-21');
INSERT INTO `t_cyuser_count` VALUES ('9003', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, '2018-10-11');

-- ----------------------------
-- Table structure for t_everyday_recharge
-- ----------------------------
DROP TABLE IF EXISTS `t_everyday_recharge`;
CREATE TABLE `t_everyday_recharge` (
  `recharge_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '每日充值id',
  `recharge_time` varchar(32) DEFAULT NULL COMMENT '时间段',
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
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`recharge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='充值统计(每日充值)';

-- ----------------------------
-- Records of t_everyday_recharge
-- ----------------------------
INSERT INTO `t_everyday_recharge` VALUES ('1', '2018-09-11', '6666', '666', '10000', '8888', '999', '999999', '16668', '388888', '1.10', '1.05', '1', '1');
INSERT INTO `t_everyday_recharge` VALUES ('2', '2018-09-05', '222', '22222', '2222222', '222222', '2', '2', '22222', '2', '22.00', '1.66', null, null);

-- ----------------------------
-- Table structure for t_force_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_force_rank`;
CREATE TABLE `t_force_rank` (
  `uid` int(11) NOT NULL,
  `force_rank` int(11) NOT NULL COMMENT '排名顺序',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名',
  `force_value` int(11) NOT NULL COMMENT '势力 值',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `show_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='势力榜(游戏行为统计)';

-- ----------------------------
-- Records of t_force_rank
-- ----------------------------
INSERT INTO `t_force_rank` VALUES ('1054763', '166', '米大开', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1240358', '101', '段半雪', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1243987', '165', '孟天宇', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1265793', '53', '常冰安', '1470', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1284907', '125', '封南风', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1296803', '30', '巫马德明', '4604', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1327698', '100', '20030990322', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1365024', '164', '樊怜烟', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1409675', '163', '郜断缘', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1526987', '68', '麻不可', '1036', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('1703492', '162', '穆行恶', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2041369', '161', '文安志', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2043916', '160', '屈傀斗', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2184706', '52', '红成天', '1470', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2536708', '35', '童连碧', '3040', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2546381', '124', '连半鬼', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2684510', '13', '冯天思', '13774', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2731809', '99', '200300322', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2789540', '159', '苍觅云', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2806451', '158', '牧立诚', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2975814', '98', '雍无敌', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('2987514', '47', '邓笑白', '1776', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3152849', '123', '寿天寿', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3241608', '22', '晋飞翮', '8978', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3274690', '67', '虞伟诚', '1036', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3453629', '122', '南门飞星', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3489765', '157', '200306660322', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3513269', '156', '宓幼南', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3534182', '31', '隗立果', '4294', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3546829', '45', '宦洪纲', '2000', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3564923', '155', '卜冷之', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3728436', '91', '楚飞航', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3853196', '154', '姬远侵', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3861257', '121', '满安宜', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3897064', '120', '屠松思', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3907164', '153', '慕碧空', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('3942678', '66', '曾博裕', '1036', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4097568', '152', '夹谷飞驰', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4192360', '23', '尤语雪', '8520', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4218359', '119', '钦飞鸣', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4237569', '151', '赏高达', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4367152', '11', '喻问旋', '27515', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4368972', '26', '闻人承嗣', '5491', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4379561', '65', '皮烨磊', '1036', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4382705', '8', '空博易', '39738', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4571036', '118', '仉督德宇', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4580612', '64', '地方反反复', '1036', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4629357', '59', '福高洁', '1059', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4695271', '150', '钱越泽', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('4863205', '7', '闫飞鸿', '45737', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5086324', '21', '谷梁绣连', '10939', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5194036', '117', '衡安然', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5234987', '57', '裴元龙', '1226', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5238916', '149', '钭冥幽', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5247103', '116', '戈安和', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5314962', '56', '鄢飞龙', '1230', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5316089', '9', '富伟祺', '32556', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5367912', '148', '崔人雄', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5618043', '147', '杭人英', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5693271', '114', '詹万言', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5781693', '88', '巴谷槐', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5816042', '54', '李修杰', '1408', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5834902', '113', '朱源智', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5879203', '146', '乐皓轩', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5947023', '112', '东郭飞翔', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('5947032', '145', '柯鑫磊', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6035849', '144', '吕伟宸', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6052871', '143', '曲伯云', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6134970', '142', '龚难摧', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6174859', '141', '和明辉', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6270519', '111', '阚博学', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6273105', '87', '裘难破', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6278534', '110', '墨高飞', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6381970', '34', '殷天德', '3135', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6701845', '63', '冀灭龙', '1036', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6789052', '109', '逄代丝', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6802913', '84', '全不尤', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6812475', '140', '戎剑成', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('6905283', '139', '苗弘文', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('7012853', '138', '蒯成化', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('7031265', '33', '郑立辉', '3257', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('7209563', '126', '余妙海', '950', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('7236498', '137', '伯高驰', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('7526034', '107', '訾博实', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('7841695', '136', '蒋访琴', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('7913285', '16', '司世开', '12267', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('7985624', '135', '吉人杰', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8045263', '134', '姚泽洋', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8056192', '12', '糜天佑', '20981', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8107524', '76', '焦秋寒', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8192035', '58', '危百川', '1098', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8314279', '133', '倪冷安', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8407156', '106', '颛孙德运', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8459136', '105', '亢飞章', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8495072', '132', '隙万怨', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8571690', '10', '邰安彤', '32111', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8597631', '104', '后成龙', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8621370', '74', '蔡青文', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8631249', '102', '付青寒', '966', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8634521', '131', '蔺文昊', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8643712', '130', '东彬彬', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8740652', '129', '魏苑博', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8741523', '39', '郝半邪', '2564', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('8976302', '44', '沃斌斌', '2089', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('9081364', '61', '万剑通', '1036', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('9351278', '71', '阎沧海', '1008', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('9403158', '103', '闵一手', '956', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('9421308', '128', '冷博涉', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('9432768', '60', '江世倌', '1036', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('9456817', '127', '璩万天', '928', '1', 'test_01', '2018-10-08');
INSERT INTO `t_force_rank` VALUES ('9506238', '70', '沈初彤', '1008', '1', 'test_01', '2018-10-08');

-- ----------------------------
-- Table structure for t_gang_count
-- ----------------------------
DROP TABLE IF EXISTS `t_gang_count`;
CREATE TABLE `t_gang_count` (
  `gang_id` int(11) NOT NULL AUTO_INCREMENT,
  `gang_num` int(11) NOT NULL COMMENT '帮派数量',
  `channel_id` varchar(32) NOT NULL,
  `server_id` int(11) NOT NULL,
  `show_time` varchar(32) NOT NULL,
  PRIMARY KEY (`gang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47275 DEFAULT CHARSET=utf8mb4 COMMENT='帮派数量(游戏行为统计)';

-- ----------------------------
-- Records of t_gang_count
-- ----------------------------
INSERT INTO `t_gang_count` VALUES ('47273', '2', 'test_01', '1', '2018-10-08');
INSERT INTO `t_gang_count` VALUES ('47274', '7', 'android_td_jyfc', '1', '2018-10-08');

-- ----------------------------
-- Table structure for t_gang_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_gang_grade`;
CREATE TABLE `t_gang_grade` (
  `gang_id` int(11) NOT NULL AUTO_INCREMENT,
  `gang_grade` int(11) NOT NULL COMMENT '等级区间',
  `gang_count` int(11) NOT NULL COMMENT '数量',
  `server_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `show_time` varchar(32) NOT NULL,
  PRIMARY KEY (`gang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70792 DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->帮派等级';

-- ----------------------------
-- Records of t_gang_grade
-- ----------------------------
INSERT INTO `t_gang_grade` VALUES ('70789', '1', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_gang_grade` VALUES ('70790', '1', '5', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_gang_grade` VALUES ('70791', '2', '2', '1', 'android_td_jyfc', '2018-10-08');

-- ----------------------------
-- Table structure for t_gang_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_gang_rank`;
CREATE TABLE `t_gang_rank` (
  `gang_id` int(11) NOT NULL,
  `gang_rank` int(11) NOT NULL COMMENT '排名',
  `gang_name` varchar(64) NOT NULL COMMENT '玩家名',
  `force_value` int(11) NOT NULL COMMENT '势力值',
  `gang_grade` varchar(16) NOT NULL COMMENT '帮派等级',
  `server_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `show_time` varchar(32) NOT NULL,
  PRIMARY KEY (`gang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->排行消息-->帮派榜';

-- ----------------------------
-- Records of t_gang_rank
-- ----------------------------
INSERT INTO `t_gang_rank` VALUES ('3148265', '4', '123456', '2091162', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_gang_rank` VALUES ('3582496', '3', '1223', '2444560', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_gang_rank` VALUES ('4327685', '6', 'rrrrrrr', '6030', '2', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_gang_rank` VALUES ('5793618', '9', '啦啦啦', '2780', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_gang_rank` VALUES ('6173920', '7', '1111', '4794', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_gang_rank` VALUES ('6425901', '2', 'zm', '79911350', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_gang_rank` VALUES ('7859231', '8', '1234', '3528', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_gang_rank` VALUES ('8159230', '5', '123', '27515', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_gang_rank` VALUES ('8652093', '1', '辰优', '275006918', '2', '1', 'android_td_jyfc', '2018-10-08');

-- ----------------------------
-- Table structure for t_grade_player
-- ----------------------------
DROP TABLE IF EXISTS `t_grade_player`;
CREATE TABLE `t_grade_player` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_section` varchar(12) NOT NULL COMMENT '等级区间',
  `grade_player` int(11) NOT NULL COMMENT '人数',
  `server_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `show_time` varchar(32) NOT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=357267 DEFAULT CHARSET=utf8mb4 COMMENT='用户等级(游戏行为统计)';

-- ----------------------------
-- Records of t_grade_player
-- ----------------------------
INSERT INTO `t_grade_player` VALUES ('357252', '10', '9', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357253', '1', '102', '1', 'test_01', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357254', '12', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357255', '4', '6', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357256', '10', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357257', '1', '32', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357258', '6', '3', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357259', '3', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357260', '5', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357261', '11', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357262', '7', '3', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357263', '6', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357264', '8', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357265', '1', '1', '1', 'android_test_02', '2018-10-08');
INSERT INTO `t_grade_player` VALUES ('357266', '8', '1', '1', 'android_td_jyfc', '2018-10-08');

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
  `channel_id` varchar(32) DEFAULT NULL COMMENT '渠道id',
  `recorde_time` varchar(32) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COMMENT='收入类(用户)';

-- ----------------------------
-- Records of t_income_class
-- ----------------------------
INSERT INTO `t_income_class` VALUES ('1', '11.11', '12.22', '8888888', '99%', '100000000', '999999999', '1', '1', '2018-09-13');
INSERT INTO `t_income_class` VALUES ('2', '222.22', '222.33', '666666666', '88%', '6666666', '8888888', null, null, '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3', '3.00', '3.00', '3', '%99', '3', '3', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4', '4.00', '4.00', '4', '%99', '4', '4', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('5', '5.00', '5.00', '5', '%99', '5', '5', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('6', '6.00', '6.00', '6', '%99', '6', '6', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('7', '7.00', '7.00', '7', '%99', '7', '7', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('8', '8.00', '8.00', '8', '%99', '8', '8', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('9', '9.00', '9.00', '9', '%99', '9', '9', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('10', '10.00', '10.00', '10', '%99', '10', '10', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('11', '11.00', '11.00', '11', '%99', '11', '11', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('12', '12.00', '12.00', '12', '%99', '12', '12', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('13', '13.00', '13.00', '13', '%99', '13', '13', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('14', '14.00', '14.00', '14', '%99', '14', '14', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('15', '15.00', '15.00', '15', '%99', '15', '15', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('16', '16.00', '16.00', '16', '%99', '16', '16', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('17', '17.00', '17.00', '17', '%99', '17', '17', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('18', '18.00', '18.00', '18', '%99', '18', '18', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('19', '19.00', '19.00', '19', '%99', '19', '19', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('20', '20.00', '20.00', '20', '%99', '20', '20', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('21', '21.00', '21.00', '21', '%99', '21', '21', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('22', '22.00', '22.00', '22', '%99', '22', '22', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('23', '23.00', '23.00', '23', '%99', '23', '23', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('24', '24.00', '24.00', '24', '%99', '24', '24', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('25', '25.00', '25.00', '25', '%99', '25', '25', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('26', '26.00', '26.00', '26', '%99', '26', '26', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('27', '27.00', '27.00', '27', '%99', '27', '27', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('28', '28.00', '28.00', '28', '%99', '28', '28', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('29', '29.00', '29.00', '29', '%99', '29', '29', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('30', '30.00', '30.00', '30', '%99', '30', '30', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('31', '31.00', '31.00', '31', '%99', '31', '31', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('32', '32.00', '32.00', '32', '%99', '32', '32', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('33', '33.00', '33.00', '33', '%99', '33', '33', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('34', '34.00', '34.00', '34', '%99', '34', '34', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('35', '35.00', '35.00', '35', '%99', '35', '35', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('36', '36.00', '36.00', '36', '%99', '36', '36', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('37', '37.00', '37.00', '37', '%99', '37', '37', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('38', '38.00', '38.00', '38', '%99', '38', '38', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('39', '39.00', '39.00', '39', '%99', '39', '39', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('40', '40.00', '40.00', '40', '%99', '40', '40', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('41', '41.00', '41.00', '41', '%99', '41', '41', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('42', '42.00', '42.00', '42', '%99', '42', '42', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('43', '43.00', '43.00', '43', '%99', '43', '43', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('44', '44.00', '44.00', '44', '%99', '44', '44', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('45', '45.00', '45.00', '45', '%99', '45', '45', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('46', '46.00', '46.00', '46', '%99', '46', '46', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('47', '47.00', '47.00', '47', '%99', '47', '47', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('48', '48.00', '48.00', '48', '%99', '48', '48', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('49', '49.00', '49.00', '49', '%99', '49', '49', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('50', '50.00', '50.00', '50', '%99', '50', '50', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('51', '51.00', '51.00', '51', '%99', '51', '51', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('52', '52.00', '52.00', '52', '%99', '52', '52', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('53', '53.00', '53.00', '53', '%99', '53', '53', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('54', '54.00', '54.00', '54', '%99', '54', '54', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('55', '55.00', '55.00', '55', '%99', '55', '55', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('56', '56.00', '56.00', '56', '%99', '56', '56', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('57', '57.00', '57.00', '57', '%99', '57', '57', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('58', '58.00', '58.00', '58', '%99', '58', '58', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('59', '59.00', '59.00', '59', '%99', '59', '59', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('60', '60.00', '60.00', '60', '%99', '60', '60', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('61', '61.00', '61.00', '61', '%99', '61', '61', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('62', '62.00', '62.00', '62', '%99', '62', '62', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('63', '63.00', '63.00', '63', '%99', '63', '63', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('64', '64.00', '64.00', '64', '%99', '64', '64', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('65', '65.00', '65.00', '65', '%99', '65', '65', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('66', '66.00', '66.00', '66', '%99', '66', '66', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('67', '67.00', '67.00', '67', '%99', '67', '67', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('68', '68.00', '68.00', '68', '%99', '68', '68', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('69', '69.00', '69.00', '69', '%99', '69', '69', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('70', '70.00', '70.00', '70', '%99', '70', '70', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('71', '71.00', '71.00', '71', '%99', '71', '71', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('72', '72.00', '72.00', '72', '%99', '72', '72', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('73', '73.00', '73.00', '73', '%99', '73', '73', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('74', '74.00', '74.00', '74', '%99', '74', '74', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('75', '75.00', '75.00', '75', '%99', '75', '75', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('76', '76.00', '76.00', '76', '%99', '76', '76', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('77', '77.00', '77.00', '77', '%99', '77', '77', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('78', '78.00', '78.00', '78', '%99', '78', '78', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('79', '79.00', '79.00', '79', '%99', '79', '79', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('80', '80.00', '80.00', '80', '%99', '80', '80', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('81', '81.00', '81.00', '81', '%99', '81', '81', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('82', '82.00', '82.00', '82', '%99', '82', '82', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('83', '83.00', '83.00', '83', '%99', '83', '83', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('84', '84.00', '84.00', '84', '%99', '84', '84', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('85', '85.00', '85.00', '85', '%99', '85', '85', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('86', '86.00', '86.00', '86', '%99', '86', '86', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('87', '87.00', '87.00', '87', '%99', '87', '87', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('88', '88.00', '88.00', '88', '%99', '88', '88', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('89', '89.00', '89.00', '89', '%99', '89', '89', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('90', '90.00', '90.00', '90', '%99', '90', '90', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('91', '91.00', '91.00', '91', '%99', '91', '91', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('92', '92.00', '92.00', '92', '%99', '92', '92', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('93', '93.00', '93.00', '93', '%99', '93', '93', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('94', '94.00', '94.00', '94', '%99', '94', '94', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('95', '95.00', '95.00', '95', '%99', '95', '95', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('96', '96.00', '96.00', '96', '%99', '96', '96', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('97', '97.00', '97.00', '97', '%99', '97', '97', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('98', '98.00', '98.00', '98', '%99', '98', '98', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('99', '99.00', '99.00', '99', '%99', '99', '99', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('100', '100.00', '100.00', '100', '%99', '100', '100', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('101', '101.00', '101.00', '101', '%99', '101', '101', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('102', '102.00', '102.00', '102', '%99', '102', '102', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('103', '103.00', '103.00', '103', '%99', '103', '103', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('104', '104.00', '104.00', '104', '%99', '104', '104', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('105', '105.00', '105.00', '105', '%99', '105', '105', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('106', '106.00', '106.00', '106', '%99', '106', '106', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('107', '107.00', '107.00', '107', '%99', '107', '107', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('108', '108.00', '108.00', '108', '%99', '108', '108', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('109', '109.00', '109.00', '109', '%99', '109', '109', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('110', '110.00', '110.00', '110', '%99', '110', '110', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('111', '111.00', '111.00', '111', '%99', '111', '111', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('112', '112.00', '112.00', '112', '%99', '112', '112', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('113', '113.00', '113.00', '113', '%99', '113', '113', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('114', '114.00', '114.00', '114', '%99', '114', '114', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('115', '115.00', '115.00', '115', '%99', '115', '115', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('116', '116.00', '116.00', '116', '%99', '116', '116', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('117', '117.00', '117.00', '117', '%99', '117', '117', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('118', '118.00', '118.00', '118', '%99', '118', '118', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('119', '119.00', '119.00', '119', '%99', '119', '119', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('120', '120.00', '120.00', '120', '%99', '120', '120', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('121', '121.00', '121.00', '121', '%99', '121', '121', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('122', '122.00', '122.00', '122', '%99', '122', '122', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('123', '123.00', '123.00', '123', '%99', '123', '123', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('124', '124.00', '124.00', '124', '%99', '124', '124', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('125', '125.00', '125.00', '125', '%99', '125', '125', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('126', '126.00', '126.00', '126', '%99', '126', '126', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('127', '127.00', '127.00', '127', '%99', '127', '127', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('128', '128.00', '128.00', '128', '%99', '128', '128', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('129', '129.00', '129.00', '129', '%99', '129', '129', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('130', '130.00', '130.00', '130', '%99', '130', '130', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('131', '131.00', '131.00', '131', '%99', '131', '131', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('132', '132.00', '132.00', '132', '%99', '132', '132', '1', '1', '2018-09-11');

-- ----------------------------
-- Table structure for t_intimacy_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_intimacy_rank`;
CREATE TABLE `t_intimacy_rank` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `intimate_rank` int(11) NOT NULL COMMENT '排名',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名',
  `intimate_value` int(11) NOT NULL COMMENT '势力值',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `show_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9846231 DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->排行消息-->亲密榜';

-- ----------------------------
-- Records of t_intimacy_rank
-- ----------------------------
INSERT INTO `t_intimacy_rank` VALUES ('1039267', '36', 'sk3', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1054763', '0', '米大开', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1240358', '0', '段半雪', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1243987', '0', '孟天宇', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1265793', '35', '常冰安', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1284907', '0', '封南风', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1296803', '34', '巫马德明', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1327698', '0', '20030990322', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1365024', '0', '樊怜烟', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1409675', '0', '郜断缘', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1526987', '0', '麻不可', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1703492', '0', '穆行恶', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('1867253', '0', '伏三毒', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2041369', '0', '文安志', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2043916', '0', '屈傀斗', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2184706', '0', '红成天', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2493875', '0', '山明轩', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2536708', '0', '童连碧', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2537194', '0', '庄恶天', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2546381', '0', '连半鬼', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2635971', '11', '靳博涛', '3', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2684510', '0', '冯天思', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2731809', '0', '200300322', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2789540', '0', '苍觅云', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2806451', '0', '牧立诚', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2975814', '0', '雍无敌', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('2987514', '0', '邓笑白', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3042819', '0', '农剑身', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3152849', '0', '寿天寿', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3174985', '0', '孔海亦', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3185690', '0', '盖成周', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3208641', '0', '辛博文', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3241608', '0', '晋飞翮', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3274690', '0', '虞伟诚', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3367425', '0', '归海飞英', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3452961', '0', '于子默', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3453629', '33', '南门飞星', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3489765', '0', '200306660322', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3498621', '0', '齐飞风', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3513269', '0', '宓幼南', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3534182', '17', '隗立果', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3542618', '7', 'wang', '4', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3546829', '10', '宦洪纲', '3', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3564923', '0', '卜冷之', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3590617', '0', '舒大楚', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3597240', '32', '谯笪高峯', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3678452', '0', '高鸿涛', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3728436', '0', '楚飞航', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3853196', '0', '姬远侵', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3861257', '0', '满安宜', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3897064', '0', '屠松思', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3907164', '0', '慕碧空', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('3942678', '0', '曾博裕', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4097568', '0', '夹谷飞驰', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4192360', '4', '尤语雪', '9', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4218359', '0', '钦飞鸣', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4237569', '0', '赏高达', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4367152', '31', '喻问旋', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4368972', '30', '闻人承嗣', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4379561', '0', '皮烨磊', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4382705', '16', '空博易', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4571036', '0', '仉督德宇', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4580612', '29', '地方反反复', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4629357', '0', '福高洁', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4695271', '0', '钱越泽', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('4863205', '6', '闫飞鸿', '4', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5063918', '0', '水谷波', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5086324', '5', '谷梁绣连', '4', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5138049', '0', '夏孤风', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5168420', '0', '幸元正', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5194036', '0', '衡安然', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5234987', '28', '裴元龙', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5238916', '0', '钭冥幽', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5247103', '0', '戈安和', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5314962', '27', '鄢飞龙', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5316089', '1', '富伟祺', '40', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5327461', '0', '尹子骞', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5367912', '0', '崔人雄', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5372690', '0', '简博延', '0', '1', 'android_test_02', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5618043', '0', '杭人英', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5693271', '0', '詹万言', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5781693', '0', '巴谷槐', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5816042', '26', '李修杰', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5834902', '0', '朱源智', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5879203', '0', '乐皓轩', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5947023', '0', '东郭飞翔', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5947032', '0', '柯鑫磊', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('5948136', '0', '云芷烟', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6035849', '0', '吕伟宸', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6052871', '0', '曲伯云', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6091724', '3', 'zoumi', '11', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6132045', '0', '毛擎汉', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6134970', '0', '龚难摧', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6174859', '0', '和明辉', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6231054', '0', '禄宾鸿', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6237408', '0', 'sk1', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6270519', '0', '阚博学', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6273105', '0', '裘难破', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6278534', '0', '墨高飞', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6381970', '25', '殷天德', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6398507', '0', '充不二', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6497280', '2', '曹语蝶', '11', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6540837', '0', '令狐德惠', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6701845', '0', '冀灭龙', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6753219', '0', '宁乘风', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6789052', '0', '逄代丝', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6802913', '0', '全不尤', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6812475', '0', '戎剑成', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6837925', '0', '鲍映波', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6905283', '0', '苗弘文', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('6940728', '0', '王致远', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7012853', '0', '蒯成化', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7031265', '24', '郑立辉', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7120685', '0', '怀无招', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7140256', '23', '钟离德容', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7209563', '0', '余妙海', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7236498', '0', '伯高驰', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7256310', '22', '堵一刀', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7345982', '0', '赵之玉', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7391504', '0', '黎中道', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7402193', '21', '晏断天', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7425183', '0', '花迎松', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7480321', '0', 'sk', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7526034', '0', '訾博实', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7639415', '15', '45454', '2', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7813590', '9', 'lxm', '3', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7814256', '0', '时熠彤', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7829604', '0', '邱寄灵', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7841695', '0', '蒋访琴', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7851032', '20', 'wangl', '1', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7890516', '14', '杨志1', '2', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7913285', '13', '司世开', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('7985624', '0', '吉人杰', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8042635', '0', '俟承恩', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8045263', '0', '姚泽洋', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8056192', '0', '糜天佑', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8107524', '0', '焦秋寒', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8192035', '19', '危百川', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8314279', '0', '倪冷安', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8407156', '0', '颛孙德运', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8426079', '0', '甘绝施', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8459136', '0', '亢飞章', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8495072', '0', '隙万怨', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8571690', '0', '邰安彤', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8597631', '0', '后成龙', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8621370', '0', '蔡青文', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8631249', '0', '付青寒', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8634521', '0', '蔺文昊', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8635197', '0', '汤盼旋', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8643712', '0', '东彬彬', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8651702', '0', '孙锦程', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8725940', '0', '仇剑心', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8740652', '0', '魏苑博', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8741523', '8', '郝半邪', '3', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('8976302', '18', '沃斌斌', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9081364', '0', '万剑通', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9351278', '0', '阎沧海', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9376025', '0', '金志泽', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9403158', '0', '闵一手', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9421308', '0', '冷博涉', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9432768', '0', '江世倌', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9456817', '0', '璩万天', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9467328', '12', '景梦容', '2', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9468502', '0', '郝王菱', '0', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9506238', '0', '沈初彤', '0', '1', 'test_01', '2018-10-08');
INSERT INTO `t_intimacy_rank` VALUES ('9846230', '0', '凌明杰', '0', '1', 'android_td_jyfc', '2018-10-08');

-- ----------------------------
-- Table structure for t_keep_user
-- ----------------------------
DROP TABLE IF EXISTS `t_keep_user`;
CREATE TABLE `t_keep_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oneday` int(11) NOT NULL,
  `threaday` int(11) NOT NULL,
  `sevenday` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65746 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_keep_user
-- ----------------------------
INSERT INTO `t_keep_user` VALUES ('65744', '10', '1', '0', '1', 'test_01');
INSERT INTO `t_keep_user` VALUES ('65745', '7', '0', '0', '1', 'android_td_jyfc');

-- ----------------------------
-- Table structure for t_level_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_level_rank`;
CREATE TABLE `t_level_rank` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `level_rank` int(11) NOT NULL COMMENT '排名',
  `player_name` varchar(32) NOT NULL COMMENT '玩家名',
  `level_value` int(11) NOT NULL COMMENT '势力值',
  `server_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `show_time` varchar(32) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9506239 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_level_rank
-- ----------------------------
INSERT INTO `t_level_rank` VALUES ('1054763', '166', '米大开', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1240358', '165', '段半雪', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1243987', '164', '孟天宇', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1265793', '66', '常冰安', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1284907', '65', '封南风', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1296803', '64', '巫马德明', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1327698', '163', '20030990322', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1365024', '162', '樊怜烟', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1409675', '161', '郜断缘', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1526987', '160', '麻不可', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('1703492', '159', '穆行恶', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2041369', '157', '文安志', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2043916', '156', '屈傀斗', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2184706', '63', '红成天', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2536708', '62', '童连碧', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2546381', '61', '连半鬼', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2684510', '60', '冯天思', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2731809', '153', '200300322', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2789540', '152', '苍觅云', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2806451', '151', '牧立诚', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2975814', '150', '雍无敌', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('2987514', '149', '邓笑白', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3152849', '59', '寿天寿', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3241608', '58', '晋飞翮', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3274690', '144', '虞伟诚', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3453629', '57', '南门飞星', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3489765', '141', '200306660322', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3513269', '139', '宓幼南', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3534182', '56', '隗立果', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3546829', '138', '宦洪纲', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3564923', '137', '卜冷之', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3728436', '134', '楚飞航', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3853196', '133', '姬远侵', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3861257', '54', '满安宜', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3897064', '53', '屠松思', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3907164', '132', '慕碧空', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('3942678', '52', '曾博裕', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4097568', '131', '夹谷飞驰', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4192360', '51', '尤语雪', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4218359', '130', '钦飞鸣', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4237569', '129', '赏高达', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4367152', '8', '喻问旋', '42', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4368972', '50', '闻人承嗣', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4379561', '49', '皮烨磊', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4382705', '48', '空博易', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4571036', '47', '仉督德宇', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4580612', '46', '地方反反复', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4629357', '45', '福高洁', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4695271', '128', '钱越泽', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('4863205', '44', '闫飞鸿', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5086324', '7', '谷梁绣连', '42', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5194036', '43', '衡安然', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5234987', '42', '裴元龙', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5238916', '124', '钭冥幽', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5247103', '41', '戈安和', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5314962', '13', '鄢飞龙', '16', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5316089', '4', '富伟祺', '83', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5367912', '122', '崔人雄', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5618043', '121', '杭人英', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5693271', '39', '詹万言', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5781693', '120', '巴谷槐', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5816042', '38', '李修杰', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5834902', '37', '朱源智', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5879203', '119', '乐皓轩', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5947023', '36', '东郭飞翔', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('5947032', '118', '柯鑫磊', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6035849', '117', '吕伟宸', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6052871', '116', '曲伯云', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6134970', '114', '龚难摧', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6174859', '113', '和明辉', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6270519', '35', '阚博学', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6273105', '110', '裘难破', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6278534', '34', '墨高飞', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6381970', '12', '殷天德', '17', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6701845', '33', '冀灭龙', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6789052', '31', '逄代丝', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6802913', '107', '全不尤', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6812475', '106', '戎剑成', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('6905283', '104', '苗弘文', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('7012853', '102', '蒯成化', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('7031265', '10', '郑立辉', '31', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('7209563', '100', '余妙海', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('7236498', '99', '伯高驰', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('7526034', '29', '訾博实', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('7841695', '89', '蒋访琴', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('7913285', '28', '司世开', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('7985624', '87', '吉人杰', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8045263', '85', '姚泽洋', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8056192', '16', '糜天佑', '3', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8107524', '84', '焦秋寒', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8192035', '27', '危百川', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8314279', '83', '倪冷安', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8407156', '26', '颛孙德运', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8459136', '25', '亢飞章', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8495072', '81', '隙万怨', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8571690', '24', '邰安彤', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8597631', '23', '后成龙', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8621370', '80', '蔡青文', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8631249', '22', '付青寒', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8634521', '79', '蔺文昊', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8643712', '77', '东彬彬', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8740652', '75', '魏苑博', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8741523', '20', '郝半邪', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('8976302', '5', '沃斌斌', '53', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('9081364', '19', '万剑通', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('9351278', '74', '阎沧海', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('9403158', '18', '闵一手', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('9421308', '72', '冷博涉', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('9432768', '17', '江世倌', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('9456817', '71', '璩万天', '1', '1', 'test_01', '2018-10-08');
INSERT INTO `t_level_rank` VALUES ('9506238', '68', '沈初彤', '1', '1', 'test_01', '2018-10-08');

-- ----------------------------
-- Table structure for t_login_count
-- ----------------------------
DROP TABLE IF EXISTS `t_login_count`;
CREATE TABLE `t_login_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ltime` varchar(11) NOT NULL,
  `count` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22204 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_login_count
-- ----------------------------
INSERT INTO `t_login_count` VALUES ('10087', '2018-10-05', '1', '1', 'test_01');
INSERT INTO `t_login_count` VALUES ('11543', '2018-10-06', '1', '1', 'test_01');
INSERT INTO `t_login_count` VALUES ('11544', '2018-10-06', '1', '1', 'test_01');
INSERT INTO `t_login_count` VALUES ('16357', '2018-10-07', '1', '1', 'test_01');
INSERT INTO `t_login_count` VALUES ('16358', '2018-10-07', '1', '1', 'test_01');
INSERT INTO `t_login_count` VALUES ('16359', '2018-10-07', '1', '1', 'android_td_quick01');
INSERT INTO `t_login_count` VALUES ('22200', '2018-10-08', '1', '1', 'test_01');
INSERT INTO `t_login_count` VALUES ('22201', '2018-10-08', '1', '1', 'test_01');
INSERT INTO `t_login_count` VALUES ('22202', '2018-10-08', '1', '1', 'android_test_02');
INSERT INTO `t_login_count` VALUES ('22203', '2018-10-08', '1', '1', 'android_td_quick01');

-- ----------------------------
-- Table structure for t_login_day
-- ----------------------------
DROP TABLE IF EXISTS `t_login_day`;
CREATE TABLE `t_login_day` (
  `login_day_id` int(11) NOT NULL AUTO_INCREMENT,
  `count_day` int(11) NOT NULL COMMENT '登录天数',
  `show_time` varchar(32) DEFAULT NULL,
  `count_num` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`login_day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='登录天数';

-- ----------------------------
-- Records of t_login_day
-- ----------------------------
INSERT INTO `t_login_day` VALUES ('1', '1', '2018-10-09', '100000', '1', '1');
INSERT INTO `t_login_day` VALUES ('2', '2', '2018-10-09', '8888', null, null);

-- ----------------------------
-- Table structure for t_ltv_count
-- ----------------------------
DROP TABLE IF EXISTS `t_ltv_count`;
CREATE TABLE `t_ltv_count` (
  `ltv_id` int(11) NOT NULL AUTO_INCREMENT,
  `recorde_time` varchar(32) NOT NULL COMMENT '记录时间',
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
  `channel_id` varchar(32) DEFAULT NULL COMMENT '渠道id',
  PRIMARY KEY (`ltv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='LTV概况';

-- ----------------------------
-- Records of t_ltv_count
-- ----------------------------
INSERT INTO `t_ltv_count` VALUES ('1', '2018-09-11', '123', '1234', '456', '789', '9999', '66666', '88888', '9999', '66666', '1', 'android_td_jyfc');
INSERT INTO `t_ltv_count` VALUES ('2', '2018-09-13', '345', '234', '666', '888', '999', '1111', '1111', '2222', '6666', null, null);

-- ----------------------------
-- Table structure for t_onlineplayer_count
-- ----------------------------
DROP TABLE IF EXISTS `t_onlineplayer_count`;
CREATE TABLE `t_onlineplayer_count` (
  `online_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '在线id',
  `record_time` varchar(32) NOT NULL COMMENT '记录年月日',
  `show_time_hour` varchar(16) NOT NULL COMMENT '展示时间',
  `online_player_count` int(11) NOT NULL COMMENT '在线用户数量',
  `allplayer_coun` int(11) NOT NULL COMMENT '在线用户总人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`online_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='在线用户(在线分析)';

-- ----------------------------
-- Records of t_onlineplayer_count
-- ----------------------------
INSERT INTO `t_onlineplayer_count` VALUES ('1', '2018-09-11', '1:00-2:00', '99999', '88888', '1', '1');
INSERT INTO `t_onlineplayer_count` VALUES ('2', '2018-09-11', '2:00-3:00', '1111', '2222', null, null);

-- ----------------------------
-- Table structure for t_out_consume
-- ----------------------------
DROP TABLE IF EXISTS `t_out_consume`;
CREATE TABLE `t_out_consume` (
  `out_consume_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods` varchar(64) NOT NULL COMMENT '物品',
  `ration` int(11) NOT NULL COMMENT '产出',
  `consume` int(11) NOT NULL COMMENT '消耗',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `record_time` varchar(32) DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`out_consume_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->产出与消耗';

-- ----------------------------
-- Records of t_out_consume
-- ----------------------------
INSERT INTO `t_out_consume` VALUES ('1', '铭文', '50', '400', '1', '1', '2018-09-04');
INSERT INTO `t_out_consume` VALUES ('2', '元宝', '90', '100', null, null, '2018-09-04');

-- ----------------------------
-- Table structure for t_person_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_person_rank`;
CREATE TABLE `t_person_rank` (
  `person_rank_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人排行',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名称',
  `server_name` varchar(16) NOT NULL COMMENT '区服',
  `server_id` int(11) NOT NULL,
  `record_time` varchar(32) NOT NULL,
  PRIMARY KEY (`person_rank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='活动分析-->活动排行榜-->个人排行';

-- ----------------------------
-- Records of t_person_rank
-- ----------------------------
INSERT INTO `t_person_rank` VALUES ('1', '龙哥', '666', '1', '2018-09-10');

-- ----------------------------
-- Table structure for t_point_analyse
-- ----------------------------
DROP TABLE IF EXISTS `t_point_analyse`;
CREATE TABLE `t_point_analyse` (
  `charging_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '计费点id',
  `charging_time` varchar(16) NOT NULL COMMENT '计费点时间段',
  `buy_num_user` int(11) DEFAULT NULL COMMENT '购买人数',
  `recharge_first_buyuser` int(11) DEFAULT NULL COMMENT '首充购买人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `show_time` date DEFAULT NULL COMMENT '展示时间',
  PRIMARY KEY (`charging_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='计费点分析(充值统计)';

-- ----------------------------
-- Records of t_point_analyse
-- ----------------------------
INSERT INTO `t_point_analyse` VALUES ('1', '计费点0', '100000', '99999', '1', '1', '2018-10-10');
INSERT INTO `t_point_analyse` VALUES ('2', '计费点1', '99999', '123456', null, null, '2018-10-30');

-- ----------------------------
-- Table structure for t_recharge_log
-- ----------------------------
DROP TABLE IF EXISTS `t_recharge_log`;
CREATE TABLE `t_recharge_log` (
  `recharge_id` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(64) NOT NULL,
  `recharge_server` varchar(64) NOT NULL,
  `recharge_goods` varchar(64) NOT NULL,
  `role_name` varchar(64) NOT NULL,
  `order_id` int(32) NOT NULL,
  `operator` varchar(255) NOT NULL,
  PRIMARY KEY (`recharge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_recharge_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_retain_player
-- ----------------------------
DROP TABLE IF EXISTS `t_retain_player`;
CREATE TABLE `t_retain_player` (
  `retain_id` int(11) NOT NULL AUTO_INCREMENT,
  `show_time` varchar(32) NOT NULL COMMENT '展示时间',
  `oneday_retain` varchar(16) NOT NULL COMMENT '留存',
  `threeday_retain` varchar(16) NOT NULL,
  `weekly_retain` varchar(16) NOT NULL COMMENT '七留',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`retain_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='玩家留存(游戏玩家)';

-- ----------------------------
-- Records of t_retain_player
-- ----------------------------
INSERT INTO `t_retain_player` VALUES ('1', '2018-09-13', '90%', '90%', '88%', '1', '1');
INSERT INTO `t_retain_player` VALUES ('2', '2018-09-12', '88%', '66%', '88%', null, null);

-- ----------------------------
-- Table structure for t_server
-- ----------------------------
DROP TABLE IF EXISTS `t_server`;
CREATE TABLE `t_server` (
  `server_id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(64) NOT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_server
-- ----------------------------
INSERT INTO `t_server` VALUES ('1', 'node_360_1', '1');
INSERT INTO `t_server` VALUES ('2', 'node_360_2', '2');

-- ----------------------------
-- Table structure for t_task_message
-- ----------------------------
DROP TABLE IF EXISTS `t_task_message`;
CREATE TABLE `t_task_message` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `task_list` varchar(255) NOT NULL COMMENT '任务列表',
  `now_progress_num` int(11) DEFAULT NULL COMMENT '当前进度人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` varchar(32) DEFAULT NULL,
  `show_time` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->任务消息';

-- ----------------------------
-- Records of t_task_message
-- ----------------------------
INSERT INTO `t_task_message` VALUES ('1', '1', '888888', '1', '1', '2018-10-08');
INSERT INTO `t_task_message` VALUES ('2', '2', '999999', null, null, '2018-10-08');

-- ----------------------------
-- Table structure for t_vip_count
-- ----------------------------
DROP TABLE IF EXISTS `t_vip_count`;
CREATE TABLE `t_vip_count` (
  `vip_id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_grade` varchar(12) NOT NULL COMMENT 'vip区间',
  `vip_online_count` int(11) NOT NULL COMMENT '人数',
  `server_id` int(11) NOT NULL,
  `channel_id` varchar(32) NOT NULL,
  `show_time` varchar(32) NOT NULL,
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=284553 DEFAULT CHARSET=utf8mb4 COMMENT='vip人数(游戏行为统计)';

-- ----------------------------
-- Records of t_vip_count
-- ----------------------------
INSERT INTO `t_vip_count` VALUES ('284541', '0', '54', '1', 'android_td_jyfc', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284542', '0', '90', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284543', '4', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284544', '6', '3', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284545', '1', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284546', '12', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284547', '9', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284548', '7', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284549', '5', '2', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284550', '0', '1', '1', 'android_test_02', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284551', '3', '5', '1', 'test_01', '2018-10-08');
INSERT INTO `t_vip_count` VALUES ('284552', '2', '1', '1', 'test_01', '2018-10-08');

-- ----------------------------
-- Procedure structure for cyusercount
-- ----------------------------
DROP PROCEDURE IF EXISTS `cyusercount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cyusercount`(IN insertCount INT)
BEGIN
	DECLARE i INT DEFAULT 8888;
	WHILE i<=insertCount DO
		INSERT INTO admin(username,`password`) VALUES(CONCAT('Rose',i),'666');
INSERT INTO `t_cyuser_count` VALUES ( i, i, i, i, i, i, i, i, '1234', '1111', '12345', i, i, '2018-09-11 00:00:00');
		SET i=i+1;
	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for hao
-- ----------------------------
DROP PROCEDURE IF EXISTS `hao`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hao`()
BEGIN

DECLARE i INT DEFAULT 999;

WHILE i<1100
DO
INSERT INTO `t_add_newplayer` VALUES (null, '2018-09-13 00:00:00', '10000', '99999', 'i', 'i');
SET i=i+1;
END WHILE ;
commit;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_income
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_income`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_income`(IN count INT)
BEGIN
DECLARE i INT DEFAULT 4;
WHILE
			i<=count
	DO
	insert into t_income_class VALUES(i,i,i,i,'%99',i,i,1,1,'2018-09-11');
		set i=i+1;
END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for test_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `test_insert`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_insert`()
BEGIN

DECLARE i INT DEFAULT 999;

WHILE i<1100
DO
INSERT INTO `t_add_newplayer` VALUES ('1', '2018-09-13 00:00:00', '10000', '99999', 'i', 'i');
SET i=i+1;
END WHILE ;
commit;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for t_about_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `t_about_insert`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `t_about_insert`(IN insertCount INT)
BEGIN
	DECLARE i INT DEFAULT 200;
	WHILE i<=insertCount DO
		INSERT INTO admin(username,`password`) VALUES(CONCAT('Rose',i),'666');
INSERT INTO `t_about_game` VALUES ('node_360_1', '2018-09-11 11:09:21', i, i, i, i, 10000, 9999, 6666, 1);
		SET i=i+1;
	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usercount
-- ----------------------------
DROP PROCEDURE IF EXISTS `usercount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usercount`(IN insertCount INT)
BEGIN
	DECLARE i INT DEFAULT 8888;
	WHILE i<=insertCount DO
INSERT INTO t_cyuser_count  VALUES (i, i, i, i, i, i, i, i, i, '1234', '1111', '12345', 1, 1, '2018-09-11 00:00:00');
		SET i=i+1;
	END WHILE;

END
;;
DELIMITER ;
