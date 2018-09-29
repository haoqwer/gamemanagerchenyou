/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : chenyoumanager

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-09-29 17:35:49
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
INSERT INTO `sys_menu` VALUES ('28', '任务消息', '6', '27', '#', 'C', 'task:message:view', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务消息');
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
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '2', '0', 'admin', '2018-03-16 11:33:00', null, '2018-09-12 20:53:04', '普通角色');
INSERT INTO `sys_role` VALUES ('14', '老板', 'boss', '1', null, null, '2018-09-03 18:22:55', null, '2018-09-17 10:51:40', '老板');
INSERT INTO `sys_role` VALUES ('16', '管理员1', '123', '1', '0', 'admin', '2018-09-12 14:37:21', null, '2018-09-12 20:48:58', '1');

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
INSERT INTO `sys_role_menu` VALUES ('16', '1');
INSERT INTO `sys_role_menu` VALUES ('16', '11');
INSERT INTO `sys_role_menu` VALUES ('16', '12');
INSERT INTO `sys_role_menu` VALUES ('16', '41');
INSERT INTO `sys_role_menu` VALUES ('16', '42');
INSERT INTO `sys_role_menu` VALUES ('16', '43');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', null, '15888888889', null, 'e10adc3949ba59abbe56e057f20f883e', null, null, null, '0:0:0:0:0:0:0:1', '2018-09-28 17:45:31', 'admin', '2018-03-16 11:33:00', null, '2018-09-27 17:49:01', '管理员');
INSERT INTO `sys_user` VALUES ('3', 'chenyoukj', '辰优科技', null, '18888888888', null, '0be630b6db229b105a865ff5f4173568', null, null, null, null, null, 'admin', '2018-09-16 09:31:28', null, '2018-09-26 17:33:32', '超级管理员');

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
INSERT INTO `sys_user_role` VALUES ('3', '14');
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
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='游戏概况';

-- ----------------------------
-- Records of t_about_game
-- ----------------------------
INSERT INTO `t_about_game` VALUES ('1', '1', 'node_360_1', '2018-09-11 11:09:21', '11', '0', '88888', '0', '0', '0', '0', '1');
INSERT INTO `t_about_game` VALUES ('2', '2', 'node_360_2', '2018-09-11 11:09:21', '11', '0', '88888', '0', '0', '0', '0', '2');
INSERT INTO `t_about_game` VALUES ('3', null, '所有区服和渠道', '2018-09-11 11:09:21', '1', '10000', '88888888', '66666', '999999', '999999', '999', null);
INSERT INTO `t_about_game` VALUES ('4', '1', '只选择区服', '2018-09-11 11:09:21', '1', '0', '0', '0', '0', '0', '0', null);

-- ----------------------------
-- Table structure for t_active_player
-- ----------------------------
DROP TABLE IF EXISTS `t_active_player`;
CREATE TABLE `t_active_player` (
  `active_id` int(11) NOT NULL COMMENT '活跃玩家id',
  `show_time` date NOT NULL COMMENT '记录时间',
  `active_player_count` int(11) NOT NULL COMMENT '活跃玩家个数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`active_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='活跃玩家(游戏玩家)';

-- ----------------------------
-- Records of t_active_player
-- ----------------------------
INSERT INTO `t_active_player` VALUES ('1', '2018-09-13', '99999', '1', '1');
INSERT INTO `t_active_player` VALUES ('2', '2018-09-04', '11111111', null, null);

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
  `record_time` date NOT NULL COMMENT '记录时间',
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
  `recorde_time` date NOT NULL COMMENT '记录时间'
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
  `record_time` date NOT NULL,
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
  `register_time` date NOT NULL COMMENT '注册时间',
  `register_plant` int(11) NOT NULL COMMENT '注册设备',
  `register_player` int(11) NOT NULL COMMENT '注册玩家',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`newplayer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新增玩家(游戏玩家)';

-- ----------------------------
-- Records of t_add_newplayer
-- ----------------------------
INSERT INTO `t_add_newplayer` VALUES ('1', '2018-09-13', '10000', '99999', '1', '1');
INSERT INTO `t_add_newplayer` VALUES ('2', '2018-09-20', '99999', '10000', null, null);

-- ----------------------------
-- Table structure for t_away_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_away_grade`;
CREATE TABLE `t_away_grade` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流失等级',
  `game_grade` varchar(64) NOT NULL COMMENT '流失等级名称',
  `count_player` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='流失等级';

-- ----------------------------
-- Records of t_away_grade
-- ----------------------------
INSERT INTO `t_away_grade` VALUES ('1', '王者级别', '9999', '1', '1', null);
INSERT INTO `t_away_grade` VALUES ('2', '2', '2', null, null, null);

-- ----------------------------
-- Table structure for t_away_output
-- ----------------------------
DROP TABLE IF EXISTS `t_away_output`;
CREATE TABLE `t_away_output` (
  `away_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流失关卡id',
  `away_output` varchar(64) NOT NULL COMMENT '流失关卡',
  `count_player` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL COMMENT '记录当前日期',
  PRIMARY KEY (`away_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='流失关卡';

-- ----------------------------
-- Records of t_away_output
-- ----------------------------
INSERT INTO `t_away_output` VALUES ('1', '第一千零八关', '88888', '1', '1', null);
INSERT INTO `t_away_output` VALUES ('2', '12345', '99999', null, null, null);

-- ----------------------------
-- Table structure for t_away_player
-- ----------------------------
DROP TABLE IF EXISTS `t_away_player`;
CREATE TABLE `t_away_player` (
  `away_id` int(11) NOT NULL,
  `record_time` date NOT NULL COMMENT '记录时间',
  `add_player` int(11) NOT NULL COMMENT '自增用户',
  `away_player` int(11) NOT NULL COMMENT '流失用户',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
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
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道id',
  `server_id` int(11) DEFAULT NULL COMMENT '分区区服id',
  `count_time` date NOT NULL COMMENT '创建时间',
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
  `channel_id` int(11) NOT NULL,
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
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='渠道数据汇总(渠道数据)';

-- ----------------------------
-- Records of t_channel_summary
-- ----------------------------
INSERT INTO `t_channel_summary` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1.00', '1.00', '2018-09-20');

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
  `channel_id` int(11) DEFAULT NULL COMMENT '渠道id',
  `count_time` date NOT NULL COMMENT '统计时间',
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
INSERT INTO `t_cyuser_count` VALUES ('9003', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, null, '2018-09-25');

-- ----------------------------
-- Table structure for t_everyday_recharge
-- ----------------------------
DROP TABLE IF EXISTS `t_everyday_recharge`;
CREATE TABLE `t_everyday_recharge` (
  `recharge_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '每日充值id',
  `recharge_time` date DEFAULT NULL COMMENT '时间段',
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
  `force_id` int(11) NOT NULL COMMENT '势力榜id',
  `force_rank` int(11) NOT NULL COMMENT '排名顺序',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名',
  `force_value` int(11) NOT NULL COMMENT '势力 值',
  `server_id` int(11) DEFAULT NULL,
  `server_name` varchar(16) DEFAULT NULL COMMENT '区服名称',
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`force_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='势力榜(游戏行为统计)';

-- ----------------------------
-- Records of t_force_rank
-- ----------------------------
INSERT INTO `t_force_rank` VALUES ('1', '99999', '龙哥', '1000000', '1', '1区', '1', null);
INSERT INTO `t_force_rank` VALUES ('2', '666666', '龙哥', '2000000', null, null, null, null);

-- ----------------------------
-- Table structure for t_gang_count
-- ----------------------------
DROP TABLE IF EXISTS `t_gang_count`;
CREATE TABLE `t_gang_count` (
  `gang_id` int(11) NOT NULL,
  `server_name` varchar(64) NOT NULL COMMENT '区服名称',
  `gang_num` int(11) DEFAULT NULL COMMENT '帮派数量',
  `channel_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='帮派数量(游戏行为统计)';

-- ----------------------------
-- Records of t_gang_count
-- ----------------------------
INSERT INTO `t_gang_count` VALUES ('1', '超强王者', '88888', '1', '1', null);
INSERT INTO `t_gang_count` VALUES ('2', '22', '9999', null, null, null);

-- ----------------------------
-- Table structure for t_gang_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_gang_grade`;
CREATE TABLE `t_gang_grade` (
  `gang_id` int(11) NOT NULL AUTO_INCREMENT,
  `gong_grade` varchar(16) NOT NULL COMMENT '等级区间',
  `gong_count` int(11) NOT NULL COMMENT '数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`gang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->帮派等级';

-- ----------------------------
-- Records of t_gang_grade
-- ----------------------------
INSERT INTO `t_gang_grade` VALUES ('1', '超强王者', '888888', '1', '1', null);
INSERT INTO `t_gang_grade` VALUES ('2', '王者', '13838', null, null, null);

-- ----------------------------
-- Table structure for t_gang_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_gang_rank`;
CREATE TABLE `t_gang_rank` (
  `gang_id` int(11) NOT NULL,
  `gang_rank` int(11) NOT NULL COMMENT '排名',
  `player_name` varchar(64) NOT NULL COMMENT '玩家名',
  `force_value` int(11) NOT NULL COMMENT '势力值',
  `gang_grade` varchar(16) NOT NULL COMMENT '帮派等级',
  `server_id` int(11) DEFAULT NULL,
  `server_name` varchar(16) DEFAULT NULL COMMENT '所属区服',
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`gang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->排行消息-->帮派榜';

-- ----------------------------
-- Records of t_gang_rank
-- ----------------------------
INSERT INTO `t_gang_rank` VALUES ('1', '1', '龙哥', '888888', '1008', '1', '千年盛世1区', '1', null);
INSERT INTO `t_gang_rank` VALUES ('2', '2', '龙哥', '90000', '1010', null, '千年乱世', null, null);

-- ----------------------------
-- Table structure for t_grade_player
-- ----------------------------
DROP TABLE IF EXISTS `t_grade_player`;
CREATE TABLE `t_grade_player` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_section` varchar(12) NOT NULL COMMENT '等级区间',
  `grade_player` int(11) DEFAULT NULL COMMENT '人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户等级(游戏行为统计)';

-- ----------------------------
-- Records of t_grade_player
-- ----------------------------
INSERT INTO `t_grade_player` VALUES ('1', '天外飞仙第一关', '100000', '1', '1', null);
INSERT INTO `t_grade_player` VALUES ('2', '2', '222', null, null, null);

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
  `recorde_time` date NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`in_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5001 DEFAULT CHARSET=utf8mb4 COMMENT='收入类(用户)';

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
INSERT INTO `t_income_class` VALUES ('133', '133.00', '133.00', '133', '%99', '133', '133', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('134', '134.00', '134.00', '134', '%99', '134', '134', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('135', '135.00', '135.00', '135', '%99', '135', '135', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('136', '136.00', '136.00', '136', '%99', '136', '136', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('137', '137.00', '137.00', '137', '%99', '137', '137', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('138', '138.00', '138.00', '138', '%99', '138', '138', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('139', '139.00', '139.00', '139', '%99', '139', '139', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('140', '140.00', '140.00', '140', '%99', '140', '140', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('141', '141.00', '141.00', '141', '%99', '141', '141', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('142', '142.00', '142.00', '142', '%99', '142', '142', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('143', '143.00', '143.00', '143', '%99', '143', '143', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('144', '144.00', '144.00', '144', '%99', '144', '144', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('145', '145.00', '145.00', '145', '%99', '145', '145', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('146', '146.00', '146.00', '146', '%99', '146', '146', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('147', '147.00', '147.00', '147', '%99', '147', '147', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('148', '148.00', '148.00', '148', '%99', '148', '148', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('149', '149.00', '149.00', '149', '%99', '149', '149', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('150', '150.00', '150.00', '150', '%99', '150', '150', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('151', '151.00', '151.00', '151', '%99', '151', '151', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('152', '152.00', '152.00', '152', '%99', '152', '152', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('153', '153.00', '153.00', '153', '%99', '153', '153', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('154', '154.00', '154.00', '154', '%99', '154', '154', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('155', '155.00', '155.00', '155', '%99', '155', '155', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('156', '156.00', '156.00', '156', '%99', '156', '156', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('157', '157.00', '157.00', '157', '%99', '157', '157', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('158', '158.00', '158.00', '158', '%99', '158', '158', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('159', '159.00', '159.00', '159', '%99', '159', '159', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('160', '160.00', '160.00', '160', '%99', '160', '160', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('161', '161.00', '161.00', '161', '%99', '161', '161', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('162', '162.00', '162.00', '162', '%99', '162', '162', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('163', '163.00', '163.00', '163', '%99', '163', '163', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('164', '164.00', '164.00', '164', '%99', '164', '164', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('165', '165.00', '165.00', '165', '%99', '165', '165', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('166', '166.00', '166.00', '166', '%99', '166', '166', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('167', '167.00', '167.00', '167', '%99', '167', '167', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('168', '168.00', '168.00', '168', '%99', '168', '168', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('169', '169.00', '169.00', '169', '%99', '169', '169', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('170', '170.00', '170.00', '170', '%99', '170', '170', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('171', '171.00', '171.00', '171', '%99', '171', '171', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('172', '172.00', '172.00', '172', '%99', '172', '172', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('173', '173.00', '173.00', '173', '%99', '173', '173', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('174', '174.00', '174.00', '174', '%99', '174', '174', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('175', '175.00', '175.00', '175', '%99', '175', '175', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('176', '176.00', '176.00', '176', '%99', '176', '176', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('177', '177.00', '177.00', '177', '%99', '177', '177', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('178', '178.00', '178.00', '178', '%99', '178', '178', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('179', '179.00', '179.00', '179', '%99', '179', '179', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('180', '180.00', '180.00', '180', '%99', '180', '180', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('181', '181.00', '181.00', '181', '%99', '181', '181', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('182', '182.00', '182.00', '182', '%99', '182', '182', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('183', '183.00', '183.00', '183', '%99', '183', '183', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('184', '184.00', '184.00', '184', '%99', '184', '184', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('185', '185.00', '185.00', '185', '%99', '185', '185', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('186', '186.00', '186.00', '186', '%99', '186', '186', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('187', '187.00', '187.00', '187', '%99', '187', '187', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('188', '188.00', '188.00', '188', '%99', '188', '188', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('189', '189.00', '189.00', '189', '%99', '189', '189', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('190', '190.00', '190.00', '190', '%99', '190', '190', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('191', '191.00', '191.00', '191', '%99', '191', '191', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('192', '192.00', '192.00', '192', '%99', '192', '192', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('193', '193.00', '193.00', '193', '%99', '193', '193', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('194', '194.00', '194.00', '194', '%99', '194', '194', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('195', '195.00', '195.00', '195', '%99', '195', '195', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('196', '196.00', '196.00', '196', '%99', '196', '196', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('197', '197.00', '197.00', '197', '%99', '197', '197', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('198', '198.00', '198.00', '198', '%99', '198', '198', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('199', '199.00', '199.00', '199', '%99', '199', '199', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('200', '200.00', '200.00', '200', '%99', '200', '200', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('201', '201.00', '201.00', '201', '%99', '201', '201', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('202', '202.00', '202.00', '202', '%99', '202', '202', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('203', '203.00', '203.00', '203', '%99', '203', '203', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('204', '204.00', '204.00', '204', '%99', '204', '204', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('205', '205.00', '205.00', '205', '%99', '205', '205', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('206', '206.00', '206.00', '206', '%99', '206', '206', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('207', '207.00', '207.00', '207', '%99', '207', '207', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('208', '208.00', '208.00', '208', '%99', '208', '208', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('209', '209.00', '209.00', '209', '%99', '209', '209', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('210', '210.00', '210.00', '210', '%99', '210', '210', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('211', '211.00', '211.00', '211', '%99', '211', '211', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('212', '212.00', '212.00', '212', '%99', '212', '212', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('213', '213.00', '213.00', '213', '%99', '213', '213', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('214', '214.00', '214.00', '214', '%99', '214', '214', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('215', '215.00', '215.00', '215', '%99', '215', '215', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('216', '216.00', '216.00', '216', '%99', '216', '216', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('217', '217.00', '217.00', '217', '%99', '217', '217', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('218', '218.00', '218.00', '218', '%99', '218', '218', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('219', '219.00', '219.00', '219', '%99', '219', '219', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('220', '220.00', '220.00', '220', '%99', '220', '220', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('221', '221.00', '221.00', '221', '%99', '221', '221', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('222', '222.00', '222.00', '222', '%99', '222', '222', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('223', '223.00', '223.00', '223', '%99', '223', '223', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('224', '224.00', '224.00', '224', '%99', '224', '224', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('225', '225.00', '225.00', '225', '%99', '225', '225', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('226', '226.00', '226.00', '226', '%99', '226', '226', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('227', '227.00', '227.00', '227', '%99', '227', '227', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('228', '228.00', '228.00', '228', '%99', '228', '228', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('229', '229.00', '229.00', '229', '%99', '229', '229', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('230', '230.00', '230.00', '230', '%99', '230', '230', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('231', '231.00', '231.00', '231', '%99', '231', '231', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('232', '232.00', '232.00', '232', '%99', '232', '232', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('233', '233.00', '233.00', '233', '%99', '233', '233', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('234', '234.00', '234.00', '234', '%99', '234', '234', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('235', '235.00', '235.00', '235', '%99', '235', '235', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('236', '236.00', '236.00', '236', '%99', '236', '236', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('237', '237.00', '237.00', '237', '%99', '237', '237', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('238', '238.00', '238.00', '238', '%99', '238', '238', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('239', '239.00', '239.00', '239', '%99', '239', '239', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('240', '240.00', '240.00', '240', '%99', '240', '240', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('241', '241.00', '241.00', '241', '%99', '241', '241', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('242', '242.00', '242.00', '242', '%99', '242', '242', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('243', '243.00', '243.00', '243', '%99', '243', '243', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('244', '244.00', '244.00', '244', '%99', '244', '244', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('245', '245.00', '245.00', '245', '%99', '245', '245', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('246', '246.00', '246.00', '246', '%99', '246', '246', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('247', '247.00', '247.00', '247', '%99', '247', '247', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('248', '248.00', '248.00', '248', '%99', '248', '248', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('249', '249.00', '249.00', '249', '%99', '249', '249', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('250', '250.00', '250.00', '250', '%99', '250', '250', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('251', '251.00', '251.00', '251', '%99', '251', '251', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('252', '252.00', '252.00', '252', '%99', '252', '252', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('253', '253.00', '253.00', '253', '%99', '253', '253', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('254', '254.00', '254.00', '254', '%99', '254', '254', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('255', '255.00', '255.00', '255', '%99', '255', '255', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('256', '256.00', '256.00', '256', '%99', '256', '256', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('257', '257.00', '257.00', '257', '%99', '257', '257', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('258', '258.00', '258.00', '258', '%99', '258', '258', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('259', '259.00', '259.00', '259', '%99', '259', '259', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('260', '260.00', '260.00', '260', '%99', '260', '260', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('261', '261.00', '261.00', '261', '%99', '261', '261', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('262', '262.00', '262.00', '262', '%99', '262', '262', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('263', '263.00', '263.00', '263', '%99', '263', '263', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('264', '264.00', '264.00', '264', '%99', '264', '264', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('265', '265.00', '265.00', '265', '%99', '265', '265', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('266', '266.00', '266.00', '266', '%99', '266', '266', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('267', '267.00', '267.00', '267', '%99', '267', '267', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('268', '268.00', '268.00', '268', '%99', '268', '268', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('269', '269.00', '269.00', '269', '%99', '269', '269', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('270', '270.00', '270.00', '270', '%99', '270', '270', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('271', '271.00', '271.00', '271', '%99', '271', '271', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('272', '272.00', '272.00', '272', '%99', '272', '272', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('273', '273.00', '273.00', '273', '%99', '273', '273', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('274', '274.00', '274.00', '274', '%99', '274', '274', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('275', '275.00', '275.00', '275', '%99', '275', '275', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('276', '276.00', '276.00', '276', '%99', '276', '276', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('277', '277.00', '277.00', '277', '%99', '277', '277', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('278', '278.00', '278.00', '278', '%99', '278', '278', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('279', '279.00', '279.00', '279', '%99', '279', '279', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('280', '280.00', '280.00', '280', '%99', '280', '280', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('281', '281.00', '281.00', '281', '%99', '281', '281', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('282', '282.00', '282.00', '282', '%99', '282', '282', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('283', '283.00', '283.00', '283', '%99', '283', '283', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('284', '284.00', '284.00', '284', '%99', '284', '284', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('285', '285.00', '285.00', '285', '%99', '285', '285', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('286', '286.00', '286.00', '286', '%99', '286', '286', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('287', '287.00', '287.00', '287', '%99', '287', '287', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('288', '288.00', '288.00', '288', '%99', '288', '288', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('289', '289.00', '289.00', '289', '%99', '289', '289', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('290', '290.00', '290.00', '290', '%99', '290', '290', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('291', '291.00', '291.00', '291', '%99', '291', '291', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('292', '292.00', '292.00', '292', '%99', '292', '292', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('293', '293.00', '293.00', '293', '%99', '293', '293', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('294', '294.00', '294.00', '294', '%99', '294', '294', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('295', '295.00', '295.00', '295', '%99', '295', '295', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('296', '296.00', '296.00', '296', '%99', '296', '296', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('297', '297.00', '297.00', '297', '%99', '297', '297', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('298', '298.00', '298.00', '298', '%99', '298', '298', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('299', '299.00', '299.00', '299', '%99', '299', '299', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('300', '300.00', '300.00', '300', '%99', '300', '300', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('301', '301.00', '301.00', '301', '%99', '301', '301', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('302', '302.00', '302.00', '302', '%99', '302', '302', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('303', '303.00', '303.00', '303', '%99', '303', '303', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('304', '304.00', '304.00', '304', '%99', '304', '304', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('305', '305.00', '305.00', '305', '%99', '305', '305', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('306', '306.00', '306.00', '306', '%99', '306', '306', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('307', '307.00', '307.00', '307', '%99', '307', '307', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('308', '308.00', '308.00', '308', '%99', '308', '308', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('309', '309.00', '309.00', '309', '%99', '309', '309', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('310', '310.00', '310.00', '310', '%99', '310', '310', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('311', '311.00', '311.00', '311', '%99', '311', '311', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('312', '312.00', '312.00', '312', '%99', '312', '312', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('313', '313.00', '313.00', '313', '%99', '313', '313', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('314', '314.00', '314.00', '314', '%99', '314', '314', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('315', '315.00', '315.00', '315', '%99', '315', '315', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('316', '316.00', '316.00', '316', '%99', '316', '316', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('317', '317.00', '317.00', '317', '%99', '317', '317', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('318', '318.00', '318.00', '318', '%99', '318', '318', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('319', '319.00', '319.00', '319', '%99', '319', '319', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('320', '320.00', '320.00', '320', '%99', '320', '320', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('321', '321.00', '321.00', '321', '%99', '321', '321', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('322', '322.00', '322.00', '322', '%99', '322', '322', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('323', '323.00', '323.00', '323', '%99', '323', '323', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('324', '324.00', '324.00', '324', '%99', '324', '324', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('325', '325.00', '325.00', '325', '%99', '325', '325', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('326', '326.00', '326.00', '326', '%99', '326', '326', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('327', '327.00', '327.00', '327', '%99', '327', '327', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('328', '328.00', '328.00', '328', '%99', '328', '328', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('329', '329.00', '329.00', '329', '%99', '329', '329', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('330', '330.00', '330.00', '330', '%99', '330', '330', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('331', '331.00', '331.00', '331', '%99', '331', '331', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('332', '332.00', '332.00', '332', '%99', '332', '332', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('333', '333.00', '333.00', '333', '%99', '333', '333', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('334', '334.00', '334.00', '334', '%99', '334', '334', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('335', '335.00', '335.00', '335', '%99', '335', '335', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('336', '336.00', '336.00', '336', '%99', '336', '336', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('337', '337.00', '337.00', '337', '%99', '337', '337', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('338', '338.00', '338.00', '338', '%99', '338', '338', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('339', '339.00', '339.00', '339', '%99', '339', '339', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('340', '340.00', '340.00', '340', '%99', '340', '340', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('341', '341.00', '341.00', '341', '%99', '341', '341', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('342', '342.00', '342.00', '342', '%99', '342', '342', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('343', '343.00', '343.00', '343', '%99', '343', '343', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('344', '344.00', '344.00', '344', '%99', '344', '344', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('345', '345.00', '345.00', '345', '%99', '345', '345', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('346', '346.00', '346.00', '346', '%99', '346', '346', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('347', '347.00', '347.00', '347', '%99', '347', '347', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('348', '348.00', '348.00', '348', '%99', '348', '348', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('349', '349.00', '349.00', '349', '%99', '349', '349', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('350', '350.00', '350.00', '350', '%99', '350', '350', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('351', '351.00', '351.00', '351', '%99', '351', '351', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('352', '352.00', '352.00', '352', '%99', '352', '352', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('353', '353.00', '353.00', '353', '%99', '353', '353', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('354', '354.00', '354.00', '354', '%99', '354', '354', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('355', '355.00', '355.00', '355', '%99', '355', '355', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('356', '356.00', '356.00', '356', '%99', '356', '356', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('357', '357.00', '357.00', '357', '%99', '357', '357', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('358', '358.00', '358.00', '358', '%99', '358', '358', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('359', '359.00', '359.00', '359', '%99', '359', '359', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('360', '360.00', '360.00', '360', '%99', '360', '360', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('361', '361.00', '361.00', '361', '%99', '361', '361', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('362', '362.00', '362.00', '362', '%99', '362', '362', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('363', '363.00', '363.00', '363', '%99', '363', '363', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('364', '364.00', '364.00', '364', '%99', '364', '364', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('365', '365.00', '365.00', '365', '%99', '365', '365', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('366', '366.00', '366.00', '366', '%99', '366', '366', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('367', '367.00', '367.00', '367', '%99', '367', '367', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('368', '368.00', '368.00', '368', '%99', '368', '368', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('369', '369.00', '369.00', '369', '%99', '369', '369', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('370', '370.00', '370.00', '370', '%99', '370', '370', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('371', '371.00', '371.00', '371', '%99', '371', '371', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('372', '372.00', '372.00', '372', '%99', '372', '372', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('373', '373.00', '373.00', '373', '%99', '373', '373', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('374', '374.00', '374.00', '374', '%99', '374', '374', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('375', '375.00', '375.00', '375', '%99', '375', '375', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('376', '376.00', '376.00', '376', '%99', '376', '376', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('377', '377.00', '377.00', '377', '%99', '377', '377', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('378', '378.00', '378.00', '378', '%99', '378', '378', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('379', '379.00', '379.00', '379', '%99', '379', '379', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('380', '380.00', '380.00', '380', '%99', '380', '380', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('381', '381.00', '381.00', '381', '%99', '381', '381', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('382', '382.00', '382.00', '382', '%99', '382', '382', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('383', '383.00', '383.00', '383', '%99', '383', '383', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('384', '384.00', '384.00', '384', '%99', '384', '384', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('385', '385.00', '385.00', '385', '%99', '385', '385', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('386', '386.00', '386.00', '386', '%99', '386', '386', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('387', '387.00', '387.00', '387', '%99', '387', '387', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('388', '388.00', '388.00', '388', '%99', '388', '388', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('389', '389.00', '389.00', '389', '%99', '389', '389', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('390', '390.00', '390.00', '390', '%99', '390', '390', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('391', '391.00', '391.00', '391', '%99', '391', '391', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('392', '392.00', '392.00', '392', '%99', '392', '392', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('393', '393.00', '393.00', '393', '%99', '393', '393', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('394', '394.00', '394.00', '394', '%99', '394', '394', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('395', '395.00', '395.00', '395', '%99', '395', '395', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('396', '396.00', '396.00', '396', '%99', '396', '396', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('397', '397.00', '397.00', '397', '%99', '397', '397', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('398', '398.00', '398.00', '398', '%99', '398', '398', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('399', '399.00', '399.00', '399', '%99', '399', '399', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('400', '400.00', '400.00', '400', '%99', '400', '400', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('401', '401.00', '401.00', '401', '%99', '401', '401', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('402', '402.00', '402.00', '402', '%99', '402', '402', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('403', '403.00', '403.00', '403', '%99', '403', '403', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('404', '404.00', '404.00', '404', '%99', '404', '404', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('405', '405.00', '405.00', '405', '%99', '405', '405', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('406', '406.00', '406.00', '406', '%99', '406', '406', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('407', '407.00', '407.00', '407', '%99', '407', '407', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('408', '408.00', '408.00', '408', '%99', '408', '408', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('409', '409.00', '409.00', '409', '%99', '409', '409', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('410', '410.00', '410.00', '410', '%99', '410', '410', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('411', '411.00', '411.00', '411', '%99', '411', '411', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('412', '412.00', '412.00', '412', '%99', '412', '412', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('413', '413.00', '413.00', '413', '%99', '413', '413', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('414', '414.00', '414.00', '414', '%99', '414', '414', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('415', '415.00', '415.00', '415', '%99', '415', '415', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('416', '416.00', '416.00', '416', '%99', '416', '416', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('417', '417.00', '417.00', '417', '%99', '417', '417', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('418', '418.00', '418.00', '418', '%99', '418', '418', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('419', '419.00', '419.00', '419', '%99', '419', '419', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('420', '420.00', '420.00', '420', '%99', '420', '420', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('421', '421.00', '421.00', '421', '%99', '421', '421', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('422', '422.00', '422.00', '422', '%99', '422', '422', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('423', '423.00', '423.00', '423', '%99', '423', '423', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('424', '424.00', '424.00', '424', '%99', '424', '424', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('425', '425.00', '425.00', '425', '%99', '425', '425', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('426', '426.00', '426.00', '426', '%99', '426', '426', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('427', '427.00', '427.00', '427', '%99', '427', '427', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('428', '428.00', '428.00', '428', '%99', '428', '428', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('429', '429.00', '429.00', '429', '%99', '429', '429', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('430', '430.00', '430.00', '430', '%99', '430', '430', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('431', '431.00', '431.00', '431', '%99', '431', '431', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('432', '432.00', '432.00', '432', '%99', '432', '432', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('433', '433.00', '433.00', '433', '%99', '433', '433', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('434', '434.00', '434.00', '434', '%99', '434', '434', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('435', '435.00', '435.00', '435', '%99', '435', '435', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('436', '436.00', '436.00', '436', '%99', '436', '436', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('437', '437.00', '437.00', '437', '%99', '437', '437', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('438', '438.00', '438.00', '438', '%99', '438', '438', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('439', '439.00', '439.00', '439', '%99', '439', '439', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('440', '440.00', '440.00', '440', '%99', '440', '440', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('441', '441.00', '441.00', '441', '%99', '441', '441', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('442', '442.00', '442.00', '442', '%99', '442', '442', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('443', '443.00', '443.00', '443', '%99', '443', '443', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('444', '444.00', '444.00', '444', '%99', '444', '444', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('445', '445.00', '445.00', '445', '%99', '445', '445', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('446', '446.00', '446.00', '446', '%99', '446', '446', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('447', '447.00', '447.00', '447', '%99', '447', '447', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('448', '448.00', '448.00', '448', '%99', '448', '448', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('449', '449.00', '449.00', '449', '%99', '449', '449', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('450', '450.00', '450.00', '450', '%99', '450', '450', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('451', '451.00', '451.00', '451', '%99', '451', '451', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('452', '452.00', '452.00', '452', '%99', '452', '452', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('453', '453.00', '453.00', '453', '%99', '453', '453', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('454', '454.00', '454.00', '454', '%99', '454', '454', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('455', '455.00', '455.00', '455', '%99', '455', '455', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('456', '456.00', '456.00', '456', '%99', '456', '456', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('457', '457.00', '457.00', '457', '%99', '457', '457', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('458', '458.00', '458.00', '458', '%99', '458', '458', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('459', '459.00', '459.00', '459', '%99', '459', '459', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('460', '460.00', '460.00', '460', '%99', '460', '460', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('461', '461.00', '461.00', '461', '%99', '461', '461', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('462', '462.00', '462.00', '462', '%99', '462', '462', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('463', '463.00', '463.00', '463', '%99', '463', '463', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('464', '464.00', '464.00', '464', '%99', '464', '464', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('465', '465.00', '465.00', '465', '%99', '465', '465', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('466', '466.00', '466.00', '466', '%99', '466', '466', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('467', '467.00', '467.00', '467', '%99', '467', '467', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('468', '468.00', '468.00', '468', '%99', '468', '468', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('469', '469.00', '469.00', '469', '%99', '469', '469', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('470', '470.00', '470.00', '470', '%99', '470', '470', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('471', '471.00', '471.00', '471', '%99', '471', '471', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('472', '472.00', '472.00', '472', '%99', '472', '472', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('473', '473.00', '473.00', '473', '%99', '473', '473', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('474', '474.00', '474.00', '474', '%99', '474', '474', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('475', '475.00', '475.00', '475', '%99', '475', '475', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('476', '476.00', '476.00', '476', '%99', '476', '476', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('477', '477.00', '477.00', '477', '%99', '477', '477', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('478', '478.00', '478.00', '478', '%99', '478', '478', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('479', '479.00', '479.00', '479', '%99', '479', '479', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('480', '480.00', '480.00', '480', '%99', '480', '480', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('481', '481.00', '481.00', '481', '%99', '481', '481', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('482', '482.00', '482.00', '482', '%99', '482', '482', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('483', '483.00', '483.00', '483', '%99', '483', '483', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('484', '484.00', '484.00', '484', '%99', '484', '484', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('485', '485.00', '485.00', '485', '%99', '485', '485', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('486', '486.00', '486.00', '486', '%99', '486', '486', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('487', '487.00', '487.00', '487', '%99', '487', '487', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('488', '488.00', '488.00', '488', '%99', '488', '488', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('489', '489.00', '489.00', '489', '%99', '489', '489', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('490', '490.00', '490.00', '490', '%99', '490', '490', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('491', '491.00', '491.00', '491', '%99', '491', '491', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('492', '492.00', '492.00', '492', '%99', '492', '492', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('493', '493.00', '493.00', '493', '%99', '493', '493', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('494', '494.00', '494.00', '494', '%99', '494', '494', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('495', '495.00', '495.00', '495', '%99', '495', '495', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('496', '496.00', '496.00', '496', '%99', '496', '496', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('497', '497.00', '497.00', '497', '%99', '497', '497', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('498', '498.00', '498.00', '498', '%99', '498', '498', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('499', '499.00', '499.00', '499', '%99', '499', '499', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('500', '500.00', '500.00', '500', '%99', '500', '500', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('501', '501.00', '501.00', '501', '%99', '501', '501', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('502', '502.00', '502.00', '502', '%99', '502', '502', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('503', '503.00', '503.00', '503', '%99', '503', '503', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('504', '504.00', '504.00', '504', '%99', '504', '504', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('505', '505.00', '505.00', '505', '%99', '505', '505', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('506', '506.00', '506.00', '506', '%99', '506', '506', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('507', '507.00', '507.00', '507', '%99', '507', '507', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('508', '508.00', '508.00', '508', '%99', '508', '508', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('509', '509.00', '509.00', '509', '%99', '509', '509', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('510', '510.00', '510.00', '510', '%99', '510', '510', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('511', '511.00', '511.00', '511', '%99', '511', '511', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('512', '512.00', '512.00', '512', '%99', '512', '512', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('513', '513.00', '513.00', '513', '%99', '513', '513', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('514', '514.00', '514.00', '514', '%99', '514', '514', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('515', '515.00', '515.00', '515', '%99', '515', '515', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('516', '516.00', '516.00', '516', '%99', '516', '516', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('517', '517.00', '517.00', '517', '%99', '517', '517', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('518', '518.00', '518.00', '518', '%99', '518', '518', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('519', '519.00', '519.00', '519', '%99', '519', '519', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('520', '520.00', '520.00', '520', '%99', '520', '520', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('521', '521.00', '521.00', '521', '%99', '521', '521', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('522', '522.00', '522.00', '522', '%99', '522', '522', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('523', '523.00', '523.00', '523', '%99', '523', '523', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('524', '524.00', '524.00', '524', '%99', '524', '524', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('525', '525.00', '525.00', '525', '%99', '525', '525', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('526', '526.00', '526.00', '526', '%99', '526', '526', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('527', '527.00', '527.00', '527', '%99', '527', '527', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('528', '528.00', '528.00', '528', '%99', '528', '528', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('529', '529.00', '529.00', '529', '%99', '529', '529', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('530', '530.00', '530.00', '530', '%99', '530', '530', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('531', '531.00', '531.00', '531', '%99', '531', '531', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('532', '532.00', '532.00', '532', '%99', '532', '532', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('533', '533.00', '533.00', '533', '%99', '533', '533', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('534', '534.00', '534.00', '534', '%99', '534', '534', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('535', '535.00', '535.00', '535', '%99', '535', '535', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('536', '536.00', '536.00', '536', '%99', '536', '536', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('537', '537.00', '537.00', '537', '%99', '537', '537', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('538', '538.00', '538.00', '538', '%99', '538', '538', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('539', '539.00', '539.00', '539', '%99', '539', '539', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('540', '540.00', '540.00', '540', '%99', '540', '540', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('541', '541.00', '541.00', '541', '%99', '541', '541', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('542', '542.00', '542.00', '542', '%99', '542', '542', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('543', '543.00', '543.00', '543', '%99', '543', '543', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('544', '544.00', '544.00', '544', '%99', '544', '544', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('545', '545.00', '545.00', '545', '%99', '545', '545', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('546', '546.00', '546.00', '546', '%99', '546', '546', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('547', '547.00', '547.00', '547', '%99', '547', '547', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('548', '548.00', '548.00', '548', '%99', '548', '548', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('549', '549.00', '549.00', '549', '%99', '549', '549', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('550', '550.00', '550.00', '550', '%99', '550', '550', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('551', '551.00', '551.00', '551', '%99', '551', '551', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('552', '552.00', '552.00', '552', '%99', '552', '552', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('553', '553.00', '553.00', '553', '%99', '553', '553', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('554', '554.00', '554.00', '554', '%99', '554', '554', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('555', '555.00', '555.00', '555', '%99', '555', '555', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('556', '556.00', '556.00', '556', '%99', '556', '556', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('557', '557.00', '557.00', '557', '%99', '557', '557', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('558', '558.00', '558.00', '558', '%99', '558', '558', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('559', '559.00', '559.00', '559', '%99', '559', '559', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('560', '560.00', '560.00', '560', '%99', '560', '560', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('561', '561.00', '561.00', '561', '%99', '561', '561', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('562', '562.00', '562.00', '562', '%99', '562', '562', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('563', '563.00', '563.00', '563', '%99', '563', '563', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('564', '564.00', '564.00', '564', '%99', '564', '564', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('565', '565.00', '565.00', '565', '%99', '565', '565', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('566', '566.00', '566.00', '566', '%99', '566', '566', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('567', '567.00', '567.00', '567', '%99', '567', '567', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('568', '568.00', '568.00', '568', '%99', '568', '568', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('569', '569.00', '569.00', '569', '%99', '569', '569', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('570', '570.00', '570.00', '570', '%99', '570', '570', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('571', '571.00', '571.00', '571', '%99', '571', '571', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('572', '572.00', '572.00', '572', '%99', '572', '572', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('573', '573.00', '573.00', '573', '%99', '573', '573', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('574', '574.00', '574.00', '574', '%99', '574', '574', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('575', '575.00', '575.00', '575', '%99', '575', '575', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('576', '576.00', '576.00', '576', '%99', '576', '576', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('577', '577.00', '577.00', '577', '%99', '577', '577', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('578', '578.00', '578.00', '578', '%99', '578', '578', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('579', '579.00', '579.00', '579', '%99', '579', '579', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('580', '580.00', '580.00', '580', '%99', '580', '580', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('581', '581.00', '581.00', '581', '%99', '581', '581', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('582', '582.00', '582.00', '582', '%99', '582', '582', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('583', '583.00', '583.00', '583', '%99', '583', '583', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('584', '584.00', '584.00', '584', '%99', '584', '584', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('585', '585.00', '585.00', '585', '%99', '585', '585', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('586', '586.00', '586.00', '586', '%99', '586', '586', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('587', '587.00', '587.00', '587', '%99', '587', '587', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('588', '588.00', '588.00', '588', '%99', '588', '588', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('589', '589.00', '589.00', '589', '%99', '589', '589', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('590', '590.00', '590.00', '590', '%99', '590', '590', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('591', '591.00', '591.00', '591', '%99', '591', '591', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('592', '592.00', '592.00', '592', '%99', '592', '592', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('593', '593.00', '593.00', '593', '%99', '593', '593', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('594', '594.00', '594.00', '594', '%99', '594', '594', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('595', '595.00', '595.00', '595', '%99', '595', '595', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('596', '596.00', '596.00', '596', '%99', '596', '596', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('597', '597.00', '597.00', '597', '%99', '597', '597', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('598', '598.00', '598.00', '598', '%99', '598', '598', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('599', '599.00', '599.00', '599', '%99', '599', '599', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('600', '600.00', '600.00', '600', '%99', '600', '600', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('601', '601.00', '601.00', '601', '%99', '601', '601', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('602', '602.00', '602.00', '602', '%99', '602', '602', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('603', '603.00', '603.00', '603', '%99', '603', '603', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('604', '604.00', '604.00', '604', '%99', '604', '604', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('605', '605.00', '605.00', '605', '%99', '605', '605', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('606', '606.00', '606.00', '606', '%99', '606', '606', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('607', '607.00', '607.00', '607', '%99', '607', '607', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('608', '608.00', '608.00', '608', '%99', '608', '608', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('609', '609.00', '609.00', '609', '%99', '609', '609', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('610', '610.00', '610.00', '610', '%99', '610', '610', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('611', '611.00', '611.00', '611', '%99', '611', '611', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('612', '612.00', '612.00', '612', '%99', '612', '612', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('613', '613.00', '613.00', '613', '%99', '613', '613', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('614', '614.00', '614.00', '614', '%99', '614', '614', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('615', '615.00', '615.00', '615', '%99', '615', '615', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('616', '616.00', '616.00', '616', '%99', '616', '616', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('617', '617.00', '617.00', '617', '%99', '617', '617', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('618', '618.00', '618.00', '618', '%99', '618', '618', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('619', '619.00', '619.00', '619', '%99', '619', '619', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('620', '620.00', '620.00', '620', '%99', '620', '620', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('621', '621.00', '621.00', '621', '%99', '621', '621', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('622', '622.00', '622.00', '622', '%99', '622', '622', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('623', '623.00', '623.00', '623', '%99', '623', '623', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('624', '624.00', '624.00', '624', '%99', '624', '624', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('625', '625.00', '625.00', '625', '%99', '625', '625', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('626', '626.00', '626.00', '626', '%99', '626', '626', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('627', '627.00', '627.00', '627', '%99', '627', '627', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('628', '628.00', '628.00', '628', '%99', '628', '628', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('629', '629.00', '629.00', '629', '%99', '629', '629', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('630', '630.00', '630.00', '630', '%99', '630', '630', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('631', '631.00', '631.00', '631', '%99', '631', '631', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('632', '632.00', '632.00', '632', '%99', '632', '632', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('633', '633.00', '633.00', '633', '%99', '633', '633', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('634', '634.00', '634.00', '634', '%99', '634', '634', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('635', '635.00', '635.00', '635', '%99', '635', '635', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('636', '636.00', '636.00', '636', '%99', '636', '636', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('637', '637.00', '637.00', '637', '%99', '637', '637', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('638', '638.00', '638.00', '638', '%99', '638', '638', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('639', '639.00', '639.00', '639', '%99', '639', '639', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('640', '640.00', '640.00', '640', '%99', '640', '640', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('641', '641.00', '641.00', '641', '%99', '641', '641', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('642', '642.00', '642.00', '642', '%99', '642', '642', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('643', '643.00', '643.00', '643', '%99', '643', '643', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('644', '644.00', '644.00', '644', '%99', '644', '644', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('645', '645.00', '645.00', '645', '%99', '645', '645', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('646', '646.00', '646.00', '646', '%99', '646', '646', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('647', '647.00', '647.00', '647', '%99', '647', '647', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('648', '648.00', '648.00', '648', '%99', '648', '648', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('649', '649.00', '649.00', '649', '%99', '649', '649', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('650', '650.00', '650.00', '650', '%99', '650', '650', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('651', '651.00', '651.00', '651', '%99', '651', '651', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('652', '652.00', '652.00', '652', '%99', '652', '652', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('653', '653.00', '653.00', '653', '%99', '653', '653', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('654', '654.00', '654.00', '654', '%99', '654', '654', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('655', '655.00', '655.00', '655', '%99', '655', '655', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('656', '656.00', '656.00', '656', '%99', '656', '656', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('657', '657.00', '657.00', '657', '%99', '657', '657', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('658', '658.00', '658.00', '658', '%99', '658', '658', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('659', '659.00', '659.00', '659', '%99', '659', '659', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('660', '660.00', '660.00', '660', '%99', '660', '660', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('661', '661.00', '661.00', '661', '%99', '661', '661', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('662', '662.00', '662.00', '662', '%99', '662', '662', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('663', '663.00', '663.00', '663', '%99', '663', '663', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('664', '664.00', '664.00', '664', '%99', '664', '664', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('665', '665.00', '665.00', '665', '%99', '665', '665', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('666', '666.00', '666.00', '666', '%99', '666', '666', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('667', '667.00', '667.00', '667', '%99', '667', '667', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('668', '668.00', '668.00', '668', '%99', '668', '668', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('669', '669.00', '669.00', '669', '%99', '669', '669', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('670', '670.00', '670.00', '670', '%99', '670', '670', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('671', '671.00', '671.00', '671', '%99', '671', '671', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('672', '672.00', '672.00', '672', '%99', '672', '672', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('673', '673.00', '673.00', '673', '%99', '673', '673', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('674', '674.00', '674.00', '674', '%99', '674', '674', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('675', '675.00', '675.00', '675', '%99', '675', '675', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('676', '676.00', '676.00', '676', '%99', '676', '676', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('677', '677.00', '677.00', '677', '%99', '677', '677', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('678', '678.00', '678.00', '678', '%99', '678', '678', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('679', '679.00', '679.00', '679', '%99', '679', '679', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('680', '680.00', '680.00', '680', '%99', '680', '680', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('681', '681.00', '681.00', '681', '%99', '681', '681', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('682', '682.00', '682.00', '682', '%99', '682', '682', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('683', '683.00', '683.00', '683', '%99', '683', '683', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('684', '684.00', '684.00', '684', '%99', '684', '684', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('685', '685.00', '685.00', '685', '%99', '685', '685', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('686', '686.00', '686.00', '686', '%99', '686', '686', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('687', '687.00', '687.00', '687', '%99', '687', '687', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('688', '688.00', '688.00', '688', '%99', '688', '688', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('689', '689.00', '689.00', '689', '%99', '689', '689', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('690', '690.00', '690.00', '690', '%99', '690', '690', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('691', '691.00', '691.00', '691', '%99', '691', '691', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('692', '692.00', '692.00', '692', '%99', '692', '692', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('693', '693.00', '693.00', '693', '%99', '693', '693', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('694', '694.00', '694.00', '694', '%99', '694', '694', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('695', '695.00', '695.00', '695', '%99', '695', '695', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('696', '696.00', '696.00', '696', '%99', '696', '696', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('697', '697.00', '697.00', '697', '%99', '697', '697', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('698', '698.00', '698.00', '698', '%99', '698', '698', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('699', '699.00', '699.00', '699', '%99', '699', '699', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('700', '700.00', '700.00', '700', '%99', '700', '700', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('701', '701.00', '701.00', '701', '%99', '701', '701', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('702', '702.00', '702.00', '702', '%99', '702', '702', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('703', '703.00', '703.00', '703', '%99', '703', '703', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('704', '704.00', '704.00', '704', '%99', '704', '704', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('705', '705.00', '705.00', '705', '%99', '705', '705', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('706', '706.00', '706.00', '706', '%99', '706', '706', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('707', '707.00', '707.00', '707', '%99', '707', '707', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('708', '708.00', '708.00', '708', '%99', '708', '708', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('709', '709.00', '709.00', '709', '%99', '709', '709', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('710', '710.00', '710.00', '710', '%99', '710', '710', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('711', '711.00', '711.00', '711', '%99', '711', '711', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('712', '712.00', '712.00', '712', '%99', '712', '712', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('713', '713.00', '713.00', '713', '%99', '713', '713', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('714', '714.00', '714.00', '714', '%99', '714', '714', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('715', '715.00', '715.00', '715', '%99', '715', '715', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('716', '716.00', '716.00', '716', '%99', '716', '716', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('717', '717.00', '717.00', '717', '%99', '717', '717', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('718', '718.00', '718.00', '718', '%99', '718', '718', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('719', '719.00', '719.00', '719', '%99', '719', '719', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('720', '720.00', '720.00', '720', '%99', '720', '720', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('721', '721.00', '721.00', '721', '%99', '721', '721', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('722', '722.00', '722.00', '722', '%99', '722', '722', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('723', '723.00', '723.00', '723', '%99', '723', '723', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('724', '724.00', '724.00', '724', '%99', '724', '724', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('725', '725.00', '725.00', '725', '%99', '725', '725', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('726', '726.00', '726.00', '726', '%99', '726', '726', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('727', '727.00', '727.00', '727', '%99', '727', '727', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('728', '728.00', '728.00', '728', '%99', '728', '728', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('729', '729.00', '729.00', '729', '%99', '729', '729', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('730', '730.00', '730.00', '730', '%99', '730', '730', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('731', '731.00', '731.00', '731', '%99', '731', '731', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('732', '732.00', '732.00', '732', '%99', '732', '732', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('733', '733.00', '733.00', '733', '%99', '733', '733', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('734', '734.00', '734.00', '734', '%99', '734', '734', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('735', '735.00', '735.00', '735', '%99', '735', '735', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('736', '736.00', '736.00', '736', '%99', '736', '736', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('737', '737.00', '737.00', '737', '%99', '737', '737', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('738', '738.00', '738.00', '738', '%99', '738', '738', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('739', '739.00', '739.00', '739', '%99', '739', '739', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('740', '740.00', '740.00', '740', '%99', '740', '740', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('741', '741.00', '741.00', '741', '%99', '741', '741', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('742', '742.00', '742.00', '742', '%99', '742', '742', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('743', '743.00', '743.00', '743', '%99', '743', '743', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('744', '744.00', '744.00', '744', '%99', '744', '744', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('745', '745.00', '745.00', '745', '%99', '745', '745', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('746', '746.00', '746.00', '746', '%99', '746', '746', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('747', '747.00', '747.00', '747', '%99', '747', '747', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('748', '748.00', '748.00', '748', '%99', '748', '748', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('749', '749.00', '749.00', '749', '%99', '749', '749', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('750', '750.00', '750.00', '750', '%99', '750', '750', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('751', '751.00', '751.00', '751', '%99', '751', '751', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('752', '752.00', '752.00', '752', '%99', '752', '752', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('753', '753.00', '753.00', '753', '%99', '753', '753', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('754', '754.00', '754.00', '754', '%99', '754', '754', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('755', '755.00', '755.00', '755', '%99', '755', '755', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('756', '756.00', '756.00', '756', '%99', '756', '756', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('757', '757.00', '757.00', '757', '%99', '757', '757', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('758', '758.00', '758.00', '758', '%99', '758', '758', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('759', '759.00', '759.00', '759', '%99', '759', '759', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('760', '760.00', '760.00', '760', '%99', '760', '760', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('761', '761.00', '761.00', '761', '%99', '761', '761', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('762', '762.00', '762.00', '762', '%99', '762', '762', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('763', '763.00', '763.00', '763', '%99', '763', '763', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('764', '764.00', '764.00', '764', '%99', '764', '764', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('765', '765.00', '765.00', '765', '%99', '765', '765', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('766', '766.00', '766.00', '766', '%99', '766', '766', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('767', '767.00', '767.00', '767', '%99', '767', '767', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('768', '768.00', '768.00', '768', '%99', '768', '768', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('769', '769.00', '769.00', '769', '%99', '769', '769', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('770', '770.00', '770.00', '770', '%99', '770', '770', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('771', '771.00', '771.00', '771', '%99', '771', '771', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('772', '772.00', '772.00', '772', '%99', '772', '772', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('773', '773.00', '773.00', '773', '%99', '773', '773', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('774', '774.00', '774.00', '774', '%99', '774', '774', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('775', '775.00', '775.00', '775', '%99', '775', '775', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('776', '776.00', '776.00', '776', '%99', '776', '776', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('777', '777.00', '777.00', '777', '%99', '777', '777', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('778', '778.00', '778.00', '778', '%99', '778', '778', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('779', '779.00', '779.00', '779', '%99', '779', '779', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('780', '780.00', '780.00', '780', '%99', '780', '780', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('781', '781.00', '781.00', '781', '%99', '781', '781', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('782', '782.00', '782.00', '782', '%99', '782', '782', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('783', '783.00', '783.00', '783', '%99', '783', '783', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('784', '784.00', '784.00', '784', '%99', '784', '784', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('785', '785.00', '785.00', '785', '%99', '785', '785', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('786', '786.00', '786.00', '786', '%99', '786', '786', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('787', '787.00', '787.00', '787', '%99', '787', '787', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('788', '788.00', '788.00', '788', '%99', '788', '788', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('789', '789.00', '789.00', '789', '%99', '789', '789', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('790', '790.00', '790.00', '790', '%99', '790', '790', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('791', '791.00', '791.00', '791', '%99', '791', '791', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('792', '792.00', '792.00', '792', '%99', '792', '792', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('793', '793.00', '793.00', '793', '%99', '793', '793', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('794', '794.00', '794.00', '794', '%99', '794', '794', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('795', '795.00', '795.00', '795', '%99', '795', '795', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('796', '796.00', '796.00', '796', '%99', '796', '796', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('797', '797.00', '797.00', '797', '%99', '797', '797', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('798', '798.00', '798.00', '798', '%99', '798', '798', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('799', '799.00', '799.00', '799', '%99', '799', '799', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('800', '800.00', '800.00', '800', '%99', '800', '800', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('801', '801.00', '801.00', '801', '%99', '801', '801', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('802', '802.00', '802.00', '802', '%99', '802', '802', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('803', '803.00', '803.00', '803', '%99', '803', '803', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('804', '804.00', '804.00', '804', '%99', '804', '804', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('805', '805.00', '805.00', '805', '%99', '805', '805', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('806', '806.00', '806.00', '806', '%99', '806', '806', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('807', '807.00', '807.00', '807', '%99', '807', '807', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('808', '808.00', '808.00', '808', '%99', '808', '808', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('809', '809.00', '809.00', '809', '%99', '809', '809', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('810', '810.00', '810.00', '810', '%99', '810', '810', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('811', '811.00', '811.00', '811', '%99', '811', '811', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('812', '812.00', '812.00', '812', '%99', '812', '812', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('813', '813.00', '813.00', '813', '%99', '813', '813', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('814', '814.00', '814.00', '814', '%99', '814', '814', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('815', '815.00', '815.00', '815', '%99', '815', '815', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('816', '816.00', '816.00', '816', '%99', '816', '816', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('817', '817.00', '817.00', '817', '%99', '817', '817', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('818', '818.00', '818.00', '818', '%99', '818', '818', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('819', '819.00', '819.00', '819', '%99', '819', '819', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('820', '820.00', '820.00', '820', '%99', '820', '820', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('821', '821.00', '821.00', '821', '%99', '821', '821', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('822', '822.00', '822.00', '822', '%99', '822', '822', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('823', '823.00', '823.00', '823', '%99', '823', '823', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('824', '824.00', '824.00', '824', '%99', '824', '824', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('825', '825.00', '825.00', '825', '%99', '825', '825', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('826', '826.00', '826.00', '826', '%99', '826', '826', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('827', '827.00', '827.00', '827', '%99', '827', '827', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('828', '828.00', '828.00', '828', '%99', '828', '828', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('829', '829.00', '829.00', '829', '%99', '829', '829', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('830', '830.00', '830.00', '830', '%99', '830', '830', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('831', '831.00', '831.00', '831', '%99', '831', '831', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('832', '832.00', '832.00', '832', '%99', '832', '832', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('833', '833.00', '833.00', '833', '%99', '833', '833', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('834', '834.00', '834.00', '834', '%99', '834', '834', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('835', '835.00', '835.00', '835', '%99', '835', '835', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('836', '836.00', '836.00', '836', '%99', '836', '836', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('837', '837.00', '837.00', '837', '%99', '837', '837', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('838', '838.00', '838.00', '838', '%99', '838', '838', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('839', '839.00', '839.00', '839', '%99', '839', '839', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('840', '840.00', '840.00', '840', '%99', '840', '840', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('841', '841.00', '841.00', '841', '%99', '841', '841', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('842', '842.00', '842.00', '842', '%99', '842', '842', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('843', '843.00', '843.00', '843', '%99', '843', '843', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('844', '844.00', '844.00', '844', '%99', '844', '844', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('845', '845.00', '845.00', '845', '%99', '845', '845', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('846', '846.00', '846.00', '846', '%99', '846', '846', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('847', '847.00', '847.00', '847', '%99', '847', '847', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('848', '848.00', '848.00', '848', '%99', '848', '848', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('849', '849.00', '849.00', '849', '%99', '849', '849', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('850', '850.00', '850.00', '850', '%99', '850', '850', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('851', '851.00', '851.00', '851', '%99', '851', '851', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('852', '852.00', '852.00', '852', '%99', '852', '852', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('853', '853.00', '853.00', '853', '%99', '853', '853', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('854', '854.00', '854.00', '854', '%99', '854', '854', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('855', '855.00', '855.00', '855', '%99', '855', '855', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('856', '856.00', '856.00', '856', '%99', '856', '856', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('857', '857.00', '857.00', '857', '%99', '857', '857', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('858', '858.00', '858.00', '858', '%99', '858', '858', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('859', '859.00', '859.00', '859', '%99', '859', '859', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('860', '860.00', '860.00', '860', '%99', '860', '860', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('861', '861.00', '861.00', '861', '%99', '861', '861', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('862', '862.00', '862.00', '862', '%99', '862', '862', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('863', '863.00', '863.00', '863', '%99', '863', '863', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('864', '864.00', '864.00', '864', '%99', '864', '864', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('865', '865.00', '865.00', '865', '%99', '865', '865', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('866', '866.00', '866.00', '866', '%99', '866', '866', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('867', '867.00', '867.00', '867', '%99', '867', '867', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('868', '868.00', '868.00', '868', '%99', '868', '868', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('869', '869.00', '869.00', '869', '%99', '869', '869', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('870', '870.00', '870.00', '870', '%99', '870', '870', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('871', '871.00', '871.00', '871', '%99', '871', '871', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('872', '872.00', '872.00', '872', '%99', '872', '872', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('873', '873.00', '873.00', '873', '%99', '873', '873', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('874', '874.00', '874.00', '874', '%99', '874', '874', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('875', '875.00', '875.00', '875', '%99', '875', '875', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('876', '876.00', '876.00', '876', '%99', '876', '876', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('877', '877.00', '877.00', '877', '%99', '877', '877', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('878', '878.00', '878.00', '878', '%99', '878', '878', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('879', '879.00', '879.00', '879', '%99', '879', '879', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('880', '880.00', '880.00', '880', '%99', '880', '880', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('881', '881.00', '881.00', '881', '%99', '881', '881', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('882', '882.00', '882.00', '882', '%99', '882', '882', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('883', '883.00', '883.00', '883', '%99', '883', '883', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('884', '884.00', '884.00', '884', '%99', '884', '884', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('885', '885.00', '885.00', '885', '%99', '885', '885', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('886', '886.00', '886.00', '886', '%99', '886', '886', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('887', '887.00', '887.00', '887', '%99', '887', '887', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('888', '888.00', '888.00', '888', '%99', '888', '888', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('889', '889.00', '889.00', '889', '%99', '889', '889', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('890', '890.00', '890.00', '890', '%99', '890', '890', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('891', '891.00', '891.00', '891', '%99', '891', '891', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('892', '892.00', '892.00', '892', '%99', '892', '892', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('893', '893.00', '893.00', '893', '%99', '893', '893', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('894', '894.00', '894.00', '894', '%99', '894', '894', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('895', '895.00', '895.00', '895', '%99', '895', '895', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('896', '896.00', '896.00', '896', '%99', '896', '896', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('897', '897.00', '897.00', '897', '%99', '897', '897', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('898', '898.00', '898.00', '898', '%99', '898', '898', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('899', '899.00', '899.00', '899', '%99', '899', '899', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('900', '900.00', '900.00', '900', '%99', '900', '900', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('901', '901.00', '901.00', '901', '%99', '901', '901', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('902', '902.00', '902.00', '902', '%99', '902', '902', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('903', '903.00', '903.00', '903', '%99', '903', '903', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('904', '904.00', '904.00', '904', '%99', '904', '904', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('905', '905.00', '905.00', '905', '%99', '905', '905', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('906', '906.00', '906.00', '906', '%99', '906', '906', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('907', '907.00', '907.00', '907', '%99', '907', '907', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('908', '908.00', '908.00', '908', '%99', '908', '908', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('909', '909.00', '909.00', '909', '%99', '909', '909', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('910', '910.00', '910.00', '910', '%99', '910', '910', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('911', '911.00', '911.00', '911', '%99', '911', '911', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('912', '912.00', '912.00', '912', '%99', '912', '912', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('913', '913.00', '913.00', '913', '%99', '913', '913', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('914', '914.00', '914.00', '914', '%99', '914', '914', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('915', '915.00', '915.00', '915', '%99', '915', '915', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('916', '916.00', '916.00', '916', '%99', '916', '916', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('917', '917.00', '917.00', '917', '%99', '917', '917', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('918', '918.00', '918.00', '918', '%99', '918', '918', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('919', '919.00', '919.00', '919', '%99', '919', '919', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('920', '920.00', '920.00', '920', '%99', '920', '920', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('921', '921.00', '921.00', '921', '%99', '921', '921', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('922', '922.00', '922.00', '922', '%99', '922', '922', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('923', '923.00', '923.00', '923', '%99', '923', '923', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('924', '924.00', '924.00', '924', '%99', '924', '924', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('925', '925.00', '925.00', '925', '%99', '925', '925', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('926', '926.00', '926.00', '926', '%99', '926', '926', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('927', '927.00', '927.00', '927', '%99', '927', '927', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('928', '928.00', '928.00', '928', '%99', '928', '928', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('929', '929.00', '929.00', '929', '%99', '929', '929', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('930', '930.00', '930.00', '930', '%99', '930', '930', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('931', '931.00', '931.00', '931', '%99', '931', '931', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('932', '932.00', '932.00', '932', '%99', '932', '932', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('933', '933.00', '933.00', '933', '%99', '933', '933', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('934', '934.00', '934.00', '934', '%99', '934', '934', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('935', '935.00', '935.00', '935', '%99', '935', '935', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('936', '936.00', '936.00', '936', '%99', '936', '936', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('937', '937.00', '937.00', '937', '%99', '937', '937', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('938', '938.00', '938.00', '938', '%99', '938', '938', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('939', '939.00', '939.00', '939', '%99', '939', '939', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('940', '940.00', '940.00', '940', '%99', '940', '940', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('941', '941.00', '941.00', '941', '%99', '941', '941', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('942', '942.00', '942.00', '942', '%99', '942', '942', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('943', '943.00', '943.00', '943', '%99', '943', '943', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('944', '944.00', '944.00', '944', '%99', '944', '944', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('945', '945.00', '945.00', '945', '%99', '945', '945', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('946', '946.00', '946.00', '946', '%99', '946', '946', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('947', '947.00', '947.00', '947', '%99', '947', '947', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('948', '948.00', '948.00', '948', '%99', '948', '948', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('949', '949.00', '949.00', '949', '%99', '949', '949', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('950', '950.00', '950.00', '950', '%99', '950', '950', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('951', '951.00', '951.00', '951', '%99', '951', '951', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('952', '952.00', '952.00', '952', '%99', '952', '952', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('953', '953.00', '953.00', '953', '%99', '953', '953', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('954', '954.00', '954.00', '954', '%99', '954', '954', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('955', '955.00', '955.00', '955', '%99', '955', '955', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('956', '956.00', '956.00', '956', '%99', '956', '956', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('957', '957.00', '957.00', '957', '%99', '957', '957', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('958', '958.00', '958.00', '958', '%99', '958', '958', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('959', '959.00', '959.00', '959', '%99', '959', '959', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('960', '960.00', '960.00', '960', '%99', '960', '960', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('961', '961.00', '961.00', '961', '%99', '961', '961', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('962', '962.00', '962.00', '962', '%99', '962', '962', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('963', '963.00', '963.00', '963', '%99', '963', '963', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('964', '964.00', '964.00', '964', '%99', '964', '964', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('965', '965.00', '965.00', '965', '%99', '965', '965', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('966', '966.00', '966.00', '966', '%99', '966', '966', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('967', '967.00', '967.00', '967', '%99', '967', '967', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('968', '968.00', '968.00', '968', '%99', '968', '968', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('969', '969.00', '969.00', '969', '%99', '969', '969', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('970', '970.00', '970.00', '970', '%99', '970', '970', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('971', '971.00', '971.00', '971', '%99', '971', '971', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('972', '972.00', '972.00', '972', '%99', '972', '972', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('973', '973.00', '973.00', '973', '%99', '973', '973', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('974', '974.00', '974.00', '974', '%99', '974', '974', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('975', '975.00', '975.00', '975', '%99', '975', '975', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('976', '976.00', '976.00', '976', '%99', '976', '976', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('977', '977.00', '977.00', '977', '%99', '977', '977', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('978', '978.00', '978.00', '978', '%99', '978', '978', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('979', '979.00', '979.00', '979', '%99', '979', '979', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('980', '980.00', '980.00', '980', '%99', '980', '980', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('981', '981.00', '981.00', '981', '%99', '981', '981', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('982', '982.00', '982.00', '982', '%99', '982', '982', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('983', '983.00', '983.00', '983', '%99', '983', '983', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('984', '984.00', '984.00', '984', '%99', '984', '984', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('985', '985.00', '985.00', '985', '%99', '985', '985', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('986', '986.00', '986.00', '986', '%99', '986', '986', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('987', '987.00', '987.00', '987', '%99', '987', '987', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('988', '988.00', '988.00', '988', '%99', '988', '988', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('989', '989.00', '989.00', '989', '%99', '989', '989', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('990', '990.00', '990.00', '990', '%99', '990', '990', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('991', '991.00', '991.00', '991', '%99', '991', '991', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('992', '992.00', '992.00', '992', '%99', '992', '992', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('993', '993.00', '993.00', '993', '%99', '993', '993', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('994', '994.00', '994.00', '994', '%99', '994', '994', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('995', '995.00', '995.00', '995', '%99', '995', '995', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('996', '996.00', '996.00', '996', '%99', '996', '996', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('997', '997.00', '997.00', '997', '%99', '997', '997', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('998', '998.00', '998.00', '998', '%99', '998', '998', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('999', '999.00', '999.00', '999', '%99', '999', '999', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1000', '1000.00', '1000.00', '1000', '%99', '1000', '1000', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1001', '1001.00', '1001.00', '1001', '%99', '1001', '1001', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1002', '1002.00', '1002.00', '1002', '%99', '1002', '1002', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1003', '1003.00', '1003.00', '1003', '%99', '1003', '1003', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1004', '1004.00', '1004.00', '1004', '%99', '1004', '1004', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1005', '1005.00', '1005.00', '1005', '%99', '1005', '1005', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1006', '1006.00', '1006.00', '1006', '%99', '1006', '1006', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1007', '1007.00', '1007.00', '1007', '%99', '1007', '1007', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1008', '1008.00', '1008.00', '1008', '%99', '1008', '1008', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1009', '1009.00', '1009.00', '1009', '%99', '1009', '1009', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1010', '1010.00', '1010.00', '1010', '%99', '1010', '1010', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1011', '1011.00', '1011.00', '1011', '%99', '1011', '1011', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1012', '1012.00', '1012.00', '1012', '%99', '1012', '1012', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1013', '1013.00', '1013.00', '1013', '%99', '1013', '1013', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1014', '1014.00', '1014.00', '1014', '%99', '1014', '1014', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1015', '1015.00', '1015.00', '1015', '%99', '1015', '1015', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1016', '1016.00', '1016.00', '1016', '%99', '1016', '1016', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1017', '1017.00', '1017.00', '1017', '%99', '1017', '1017', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1018', '1018.00', '1018.00', '1018', '%99', '1018', '1018', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1019', '1019.00', '1019.00', '1019', '%99', '1019', '1019', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1020', '1020.00', '1020.00', '1020', '%99', '1020', '1020', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1021', '1021.00', '1021.00', '1021', '%99', '1021', '1021', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1022', '1022.00', '1022.00', '1022', '%99', '1022', '1022', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1023', '1023.00', '1023.00', '1023', '%99', '1023', '1023', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1024', '1024.00', '1024.00', '1024', '%99', '1024', '1024', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1025', '1025.00', '1025.00', '1025', '%99', '1025', '1025', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1026', '1026.00', '1026.00', '1026', '%99', '1026', '1026', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1027', '1027.00', '1027.00', '1027', '%99', '1027', '1027', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1028', '1028.00', '1028.00', '1028', '%99', '1028', '1028', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1029', '1029.00', '1029.00', '1029', '%99', '1029', '1029', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1030', '1030.00', '1030.00', '1030', '%99', '1030', '1030', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1031', '1031.00', '1031.00', '1031', '%99', '1031', '1031', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1032', '1032.00', '1032.00', '1032', '%99', '1032', '1032', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1033', '1033.00', '1033.00', '1033', '%99', '1033', '1033', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1034', '1034.00', '1034.00', '1034', '%99', '1034', '1034', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1035', '1035.00', '1035.00', '1035', '%99', '1035', '1035', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1036', '1036.00', '1036.00', '1036', '%99', '1036', '1036', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1037', '1037.00', '1037.00', '1037', '%99', '1037', '1037', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1038', '1038.00', '1038.00', '1038', '%99', '1038', '1038', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1039', '1039.00', '1039.00', '1039', '%99', '1039', '1039', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1040', '1040.00', '1040.00', '1040', '%99', '1040', '1040', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1041', '1041.00', '1041.00', '1041', '%99', '1041', '1041', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1042', '1042.00', '1042.00', '1042', '%99', '1042', '1042', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1043', '1043.00', '1043.00', '1043', '%99', '1043', '1043', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1044', '1044.00', '1044.00', '1044', '%99', '1044', '1044', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1045', '1045.00', '1045.00', '1045', '%99', '1045', '1045', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1046', '1046.00', '1046.00', '1046', '%99', '1046', '1046', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1047', '1047.00', '1047.00', '1047', '%99', '1047', '1047', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1048', '1048.00', '1048.00', '1048', '%99', '1048', '1048', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1049', '1049.00', '1049.00', '1049', '%99', '1049', '1049', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1050', '1050.00', '1050.00', '1050', '%99', '1050', '1050', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1051', '1051.00', '1051.00', '1051', '%99', '1051', '1051', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1052', '1052.00', '1052.00', '1052', '%99', '1052', '1052', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1053', '1053.00', '1053.00', '1053', '%99', '1053', '1053', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1054', '1054.00', '1054.00', '1054', '%99', '1054', '1054', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1055', '1055.00', '1055.00', '1055', '%99', '1055', '1055', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1056', '1056.00', '1056.00', '1056', '%99', '1056', '1056', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1057', '1057.00', '1057.00', '1057', '%99', '1057', '1057', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1058', '1058.00', '1058.00', '1058', '%99', '1058', '1058', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1059', '1059.00', '1059.00', '1059', '%99', '1059', '1059', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1060', '1060.00', '1060.00', '1060', '%99', '1060', '1060', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1061', '1061.00', '1061.00', '1061', '%99', '1061', '1061', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1062', '1062.00', '1062.00', '1062', '%99', '1062', '1062', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1063', '1063.00', '1063.00', '1063', '%99', '1063', '1063', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1064', '1064.00', '1064.00', '1064', '%99', '1064', '1064', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1065', '1065.00', '1065.00', '1065', '%99', '1065', '1065', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1066', '1066.00', '1066.00', '1066', '%99', '1066', '1066', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1067', '1067.00', '1067.00', '1067', '%99', '1067', '1067', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1068', '1068.00', '1068.00', '1068', '%99', '1068', '1068', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1069', '1069.00', '1069.00', '1069', '%99', '1069', '1069', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1070', '1070.00', '1070.00', '1070', '%99', '1070', '1070', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1071', '1071.00', '1071.00', '1071', '%99', '1071', '1071', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1072', '1072.00', '1072.00', '1072', '%99', '1072', '1072', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1073', '1073.00', '1073.00', '1073', '%99', '1073', '1073', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1074', '1074.00', '1074.00', '1074', '%99', '1074', '1074', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1075', '1075.00', '1075.00', '1075', '%99', '1075', '1075', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1076', '1076.00', '1076.00', '1076', '%99', '1076', '1076', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1077', '1077.00', '1077.00', '1077', '%99', '1077', '1077', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1078', '1078.00', '1078.00', '1078', '%99', '1078', '1078', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1079', '1079.00', '1079.00', '1079', '%99', '1079', '1079', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1080', '1080.00', '1080.00', '1080', '%99', '1080', '1080', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1081', '1081.00', '1081.00', '1081', '%99', '1081', '1081', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1082', '1082.00', '1082.00', '1082', '%99', '1082', '1082', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1083', '1083.00', '1083.00', '1083', '%99', '1083', '1083', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1084', '1084.00', '1084.00', '1084', '%99', '1084', '1084', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1085', '1085.00', '1085.00', '1085', '%99', '1085', '1085', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1086', '1086.00', '1086.00', '1086', '%99', '1086', '1086', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1087', '1087.00', '1087.00', '1087', '%99', '1087', '1087', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1088', '1088.00', '1088.00', '1088', '%99', '1088', '1088', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1089', '1089.00', '1089.00', '1089', '%99', '1089', '1089', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1090', '1090.00', '1090.00', '1090', '%99', '1090', '1090', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1091', '1091.00', '1091.00', '1091', '%99', '1091', '1091', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1092', '1092.00', '1092.00', '1092', '%99', '1092', '1092', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1093', '1093.00', '1093.00', '1093', '%99', '1093', '1093', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1094', '1094.00', '1094.00', '1094', '%99', '1094', '1094', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1095', '1095.00', '1095.00', '1095', '%99', '1095', '1095', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1096', '1096.00', '1096.00', '1096', '%99', '1096', '1096', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1097', '1097.00', '1097.00', '1097', '%99', '1097', '1097', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1098', '1098.00', '1098.00', '1098', '%99', '1098', '1098', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1099', '1099.00', '1099.00', '1099', '%99', '1099', '1099', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1100', '1100.00', '1100.00', '1100', '%99', '1100', '1100', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1101', '1101.00', '1101.00', '1101', '%99', '1101', '1101', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1102', '1102.00', '1102.00', '1102', '%99', '1102', '1102', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1103', '1103.00', '1103.00', '1103', '%99', '1103', '1103', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1104', '1104.00', '1104.00', '1104', '%99', '1104', '1104', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1105', '1105.00', '1105.00', '1105', '%99', '1105', '1105', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1106', '1106.00', '1106.00', '1106', '%99', '1106', '1106', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1107', '1107.00', '1107.00', '1107', '%99', '1107', '1107', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1108', '1108.00', '1108.00', '1108', '%99', '1108', '1108', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1109', '1109.00', '1109.00', '1109', '%99', '1109', '1109', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1110', '1110.00', '1110.00', '1110', '%99', '1110', '1110', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1111', '1111.00', '1111.00', '1111', '%99', '1111', '1111', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1112', '1112.00', '1112.00', '1112', '%99', '1112', '1112', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1113', '1113.00', '1113.00', '1113', '%99', '1113', '1113', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1114', '1114.00', '1114.00', '1114', '%99', '1114', '1114', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1115', '1115.00', '1115.00', '1115', '%99', '1115', '1115', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1116', '1116.00', '1116.00', '1116', '%99', '1116', '1116', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1117', '1117.00', '1117.00', '1117', '%99', '1117', '1117', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1118', '1118.00', '1118.00', '1118', '%99', '1118', '1118', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1119', '1119.00', '1119.00', '1119', '%99', '1119', '1119', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1120', '1120.00', '1120.00', '1120', '%99', '1120', '1120', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1121', '1121.00', '1121.00', '1121', '%99', '1121', '1121', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1122', '1122.00', '1122.00', '1122', '%99', '1122', '1122', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1123', '1123.00', '1123.00', '1123', '%99', '1123', '1123', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1124', '1124.00', '1124.00', '1124', '%99', '1124', '1124', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1125', '1125.00', '1125.00', '1125', '%99', '1125', '1125', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1126', '1126.00', '1126.00', '1126', '%99', '1126', '1126', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1127', '1127.00', '1127.00', '1127', '%99', '1127', '1127', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1128', '1128.00', '1128.00', '1128', '%99', '1128', '1128', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1129', '1129.00', '1129.00', '1129', '%99', '1129', '1129', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1130', '1130.00', '1130.00', '1130', '%99', '1130', '1130', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1131', '1131.00', '1131.00', '1131', '%99', '1131', '1131', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1132', '1132.00', '1132.00', '1132', '%99', '1132', '1132', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1133', '1133.00', '1133.00', '1133', '%99', '1133', '1133', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1134', '1134.00', '1134.00', '1134', '%99', '1134', '1134', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1135', '1135.00', '1135.00', '1135', '%99', '1135', '1135', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1136', '1136.00', '1136.00', '1136', '%99', '1136', '1136', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1137', '1137.00', '1137.00', '1137', '%99', '1137', '1137', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1138', '1138.00', '1138.00', '1138', '%99', '1138', '1138', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1139', '1139.00', '1139.00', '1139', '%99', '1139', '1139', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1140', '1140.00', '1140.00', '1140', '%99', '1140', '1140', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1141', '1141.00', '1141.00', '1141', '%99', '1141', '1141', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1142', '1142.00', '1142.00', '1142', '%99', '1142', '1142', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1143', '1143.00', '1143.00', '1143', '%99', '1143', '1143', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1144', '1144.00', '1144.00', '1144', '%99', '1144', '1144', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1145', '1145.00', '1145.00', '1145', '%99', '1145', '1145', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1146', '1146.00', '1146.00', '1146', '%99', '1146', '1146', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1147', '1147.00', '1147.00', '1147', '%99', '1147', '1147', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1148', '1148.00', '1148.00', '1148', '%99', '1148', '1148', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1149', '1149.00', '1149.00', '1149', '%99', '1149', '1149', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1150', '1150.00', '1150.00', '1150', '%99', '1150', '1150', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1151', '1151.00', '1151.00', '1151', '%99', '1151', '1151', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1152', '1152.00', '1152.00', '1152', '%99', '1152', '1152', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1153', '1153.00', '1153.00', '1153', '%99', '1153', '1153', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1154', '1154.00', '1154.00', '1154', '%99', '1154', '1154', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1155', '1155.00', '1155.00', '1155', '%99', '1155', '1155', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1156', '1156.00', '1156.00', '1156', '%99', '1156', '1156', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1157', '1157.00', '1157.00', '1157', '%99', '1157', '1157', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1158', '1158.00', '1158.00', '1158', '%99', '1158', '1158', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1159', '1159.00', '1159.00', '1159', '%99', '1159', '1159', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1160', '1160.00', '1160.00', '1160', '%99', '1160', '1160', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1161', '1161.00', '1161.00', '1161', '%99', '1161', '1161', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1162', '1162.00', '1162.00', '1162', '%99', '1162', '1162', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1163', '1163.00', '1163.00', '1163', '%99', '1163', '1163', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1164', '1164.00', '1164.00', '1164', '%99', '1164', '1164', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1165', '1165.00', '1165.00', '1165', '%99', '1165', '1165', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1166', '1166.00', '1166.00', '1166', '%99', '1166', '1166', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1167', '1167.00', '1167.00', '1167', '%99', '1167', '1167', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1168', '1168.00', '1168.00', '1168', '%99', '1168', '1168', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1169', '1169.00', '1169.00', '1169', '%99', '1169', '1169', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1170', '1170.00', '1170.00', '1170', '%99', '1170', '1170', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1171', '1171.00', '1171.00', '1171', '%99', '1171', '1171', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1172', '1172.00', '1172.00', '1172', '%99', '1172', '1172', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1173', '1173.00', '1173.00', '1173', '%99', '1173', '1173', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1174', '1174.00', '1174.00', '1174', '%99', '1174', '1174', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1175', '1175.00', '1175.00', '1175', '%99', '1175', '1175', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1176', '1176.00', '1176.00', '1176', '%99', '1176', '1176', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1177', '1177.00', '1177.00', '1177', '%99', '1177', '1177', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1178', '1178.00', '1178.00', '1178', '%99', '1178', '1178', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1179', '1179.00', '1179.00', '1179', '%99', '1179', '1179', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1180', '1180.00', '1180.00', '1180', '%99', '1180', '1180', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1181', '1181.00', '1181.00', '1181', '%99', '1181', '1181', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1182', '1182.00', '1182.00', '1182', '%99', '1182', '1182', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1183', '1183.00', '1183.00', '1183', '%99', '1183', '1183', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1184', '1184.00', '1184.00', '1184', '%99', '1184', '1184', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1185', '1185.00', '1185.00', '1185', '%99', '1185', '1185', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1186', '1186.00', '1186.00', '1186', '%99', '1186', '1186', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1187', '1187.00', '1187.00', '1187', '%99', '1187', '1187', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1188', '1188.00', '1188.00', '1188', '%99', '1188', '1188', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1189', '1189.00', '1189.00', '1189', '%99', '1189', '1189', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1190', '1190.00', '1190.00', '1190', '%99', '1190', '1190', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1191', '1191.00', '1191.00', '1191', '%99', '1191', '1191', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1192', '1192.00', '1192.00', '1192', '%99', '1192', '1192', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1193', '1193.00', '1193.00', '1193', '%99', '1193', '1193', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1194', '1194.00', '1194.00', '1194', '%99', '1194', '1194', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1195', '1195.00', '1195.00', '1195', '%99', '1195', '1195', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1196', '1196.00', '1196.00', '1196', '%99', '1196', '1196', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1197', '1197.00', '1197.00', '1197', '%99', '1197', '1197', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1198', '1198.00', '1198.00', '1198', '%99', '1198', '1198', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1199', '1199.00', '1199.00', '1199', '%99', '1199', '1199', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1200', '1200.00', '1200.00', '1200', '%99', '1200', '1200', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1201', '1201.00', '1201.00', '1201', '%99', '1201', '1201', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1202', '1202.00', '1202.00', '1202', '%99', '1202', '1202', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1203', '1203.00', '1203.00', '1203', '%99', '1203', '1203', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1204', '1204.00', '1204.00', '1204', '%99', '1204', '1204', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1205', '1205.00', '1205.00', '1205', '%99', '1205', '1205', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1206', '1206.00', '1206.00', '1206', '%99', '1206', '1206', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1207', '1207.00', '1207.00', '1207', '%99', '1207', '1207', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1208', '1208.00', '1208.00', '1208', '%99', '1208', '1208', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1209', '1209.00', '1209.00', '1209', '%99', '1209', '1209', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1210', '1210.00', '1210.00', '1210', '%99', '1210', '1210', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1211', '1211.00', '1211.00', '1211', '%99', '1211', '1211', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1212', '1212.00', '1212.00', '1212', '%99', '1212', '1212', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1213', '1213.00', '1213.00', '1213', '%99', '1213', '1213', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1214', '1214.00', '1214.00', '1214', '%99', '1214', '1214', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1215', '1215.00', '1215.00', '1215', '%99', '1215', '1215', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1216', '1216.00', '1216.00', '1216', '%99', '1216', '1216', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1217', '1217.00', '1217.00', '1217', '%99', '1217', '1217', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1218', '1218.00', '1218.00', '1218', '%99', '1218', '1218', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1219', '1219.00', '1219.00', '1219', '%99', '1219', '1219', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1220', '1220.00', '1220.00', '1220', '%99', '1220', '1220', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1221', '1221.00', '1221.00', '1221', '%99', '1221', '1221', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1222', '1222.00', '1222.00', '1222', '%99', '1222', '1222', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1223', '1223.00', '1223.00', '1223', '%99', '1223', '1223', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1224', '1224.00', '1224.00', '1224', '%99', '1224', '1224', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1225', '1225.00', '1225.00', '1225', '%99', '1225', '1225', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1226', '1226.00', '1226.00', '1226', '%99', '1226', '1226', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1227', '1227.00', '1227.00', '1227', '%99', '1227', '1227', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1228', '1228.00', '1228.00', '1228', '%99', '1228', '1228', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1229', '1229.00', '1229.00', '1229', '%99', '1229', '1229', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1230', '1230.00', '1230.00', '1230', '%99', '1230', '1230', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1231', '1231.00', '1231.00', '1231', '%99', '1231', '1231', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1232', '1232.00', '1232.00', '1232', '%99', '1232', '1232', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1233', '1233.00', '1233.00', '1233', '%99', '1233', '1233', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1234', '1234.00', '1234.00', '1234', '%99', '1234', '1234', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1235', '1235.00', '1235.00', '1235', '%99', '1235', '1235', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1236', '1236.00', '1236.00', '1236', '%99', '1236', '1236', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1237', '1237.00', '1237.00', '1237', '%99', '1237', '1237', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1238', '1238.00', '1238.00', '1238', '%99', '1238', '1238', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1239', '1239.00', '1239.00', '1239', '%99', '1239', '1239', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1240', '1240.00', '1240.00', '1240', '%99', '1240', '1240', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1241', '1241.00', '1241.00', '1241', '%99', '1241', '1241', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1242', '1242.00', '1242.00', '1242', '%99', '1242', '1242', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1243', '1243.00', '1243.00', '1243', '%99', '1243', '1243', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1244', '1244.00', '1244.00', '1244', '%99', '1244', '1244', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1245', '1245.00', '1245.00', '1245', '%99', '1245', '1245', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1246', '1246.00', '1246.00', '1246', '%99', '1246', '1246', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1247', '1247.00', '1247.00', '1247', '%99', '1247', '1247', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1248', '1248.00', '1248.00', '1248', '%99', '1248', '1248', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1249', '1249.00', '1249.00', '1249', '%99', '1249', '1249', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1250', '1250.00', '1250.00', '1250', '%99', '1250', '1250', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1251', '1251.00', '1251.00', '1251', '%99', '1251', '1251', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1252', '1252.00', '1252.00', '1252', '%99', '1252', '1252', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1253', '1253.00', '1253.00', '1253', '%99', '1253', '1253', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1254', '1254.00', '1254.00', '1254', '%99', '1254', '1254', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1255', '1255.00', '1255.00', '1255', '%99', '1255', '1255', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1256', '1256.00', '1256.00', '1256', '%99', '1256', '1256', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1257', '1257.00', '1257.00', '1257', '%99', '1257', '1257', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1258', '1258.00', '1258.00', '1258', '%99', '1258', '1258', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1259', '1259.00', '1259.00', '1259', '%99', '1259', '1259', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1260', '1260.00', '1260.00', '1260', '%99', '1260', '1260', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1261', '1261.00', '1261.00', '1261', '%99', '1261', '1261', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1262', '1262.00', '1262.00', '1262', '%99', '1262', '1262', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1263', '1263.00', '1263.00', '1263', '%99', '1263', '1263', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1264', '1264.00', '1264.00', '1264', '%99', '1264', '1264', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1265', '1265.00', '1265.00', '1265', '%99', '1265', '1265', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1266', '1266.00', '1266.00', '1266', '%99', '1266', '1266', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1267', '1267.00', '1267.00', '1267', '%99', '1267', '1267', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1268', '1268.00', '1268.00', '1268', '%99', '1268', '1268', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1269', '1269.00', '1269.00', '1269', '%99', '1269', '1269', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1270', '1270.00', '1270.00', '1270', '%99', '1270', '1270', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1271', '1271.00', '1271.00', '1271', '%99', '1271', '1271', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1272', '1272.00', '1272.00', '1272', '%99', '1272', '1272', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1273', '1273.00', '1273.00', '1273', '%99', '1273', '1273', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1274', '1274.00', '1274.00', '1274', '%99', '1274', '1274', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1275', '1275.00', '1275.00', '1275', '%99', '1275', '1275', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1276', '1276.00', '1276.00', '1276', '%99', '1276', '1276', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1277', '1277.00', '1277.00', '1277', '%99', '1277', '1277', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1278', '1278.00', '1278.00', '1278', '%99', '1278', '1278', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1279', '1279.00', '1279.00', '1279', '%99', '1279', '1279', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1280', '1280.00', '1280.00', '1280', '%99', '1280', '1280', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1281', '1281.00', '1281.00', '1281', '%99', '1281', '1281', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1282', '1282.00', '1282.00', '1282', '%99', '1282', '1282', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1283', '1283.00', '1283.00', '1283', '%99', '1283', '1283', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1284', '1284.00', '1284.00', '1284', '%99', '1284', '1284', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1285', '1285.00', '1285.00', '1285', '%99', '1285', '1285', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1286', '1286.00', '1286.00', '1286', '%99', '1286', '1286', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1287', '1287.00', '1287.00', '1287', '%99', '1287', '1287', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1288', '1288.00', '1288.00', '1288', '%99', '1288', '1288', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1289', '1289.00', '1289.00', '1289', '%99', '1289', '1289', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1290', '1290.00', '1290.00', '1290', '%99', '1290', '1290', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1291', '1291.00', '1291.00', '1291', '%99', '1291', '1291', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1292', '1292.00', '1292.00', '1292', '%99', '1292', '1292', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1293', '1293.00', '1293.00', '1293', '%99', '1293', '1293', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1294', '1294.00', '1294.00', '1294', '%99', '1294', '1294', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1295', '1295.00', '1295.00', '1295', '%99', '1295', '1295', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1296', '1296.00', '1296.00', '1296', '%99', '1296', '1296', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1297', '1297.00', '1297.00', '1297', '%99', '1297', '1297', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1298', '1298.00', '1298.00', '1298', '%99', '1298', '1298', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1299', '1299.00', '1299.00', '1299', '%99', '1299', '1299', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1300', '1300.00', '1300.00', '1300', '%99', '1300', '1300', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1301', '1301.00', '1301.00', '1301', '%99', '1301', '1301', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1302', '1302.00', '1302.00', '1302', '%99', '1302', '1302', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1303', '1303.00', '1303.00', '1303', '%99', '1303', '1303', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1304', '1304.00', '1304.00', '1304', '%99', '1304', '1304', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1305', '1305.00', '1305.00', '1305', '%99', '1305', '1305', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1306', '1306.00', '1306.00', '1306', '%99', '1306', '1306', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1307', '1307.00', '1307.00', '1307', '%99', '1307', '1307', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1308', '1308.00', '1308.00', '1308', '%99', '1308', '1308', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1309', '1309.00', '1309.00', '1309', '%99', '1309', '1309', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1310', '1310.00', '1310.00', '1310', '%99', '1310', '1310', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1311', '1311.00', '1311.00', '1311', '%99', '1311', '1311', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1312', '1312.00', '1312.00', '1312', '%99', '1312', '1312', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1313', '1313.00', '1313.00', '1313', '%99', '1313', '1313', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1314', '1314.00', '1314.00', '1314', '%99', '1314', '1314', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1315', '1315.00', '1315.00', '1315', '%99', '1315', '1315', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1316', '1316.00', '1316.00', '1316', '%99', '1316', '1316', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1317', '1317.00', '1317.00', '1317', '%99', '1317', '1317', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1318', '1318.00', '1318.00', '1318', '%99', '1318', '1318', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1319', '1319.00', '1319.00', '1319', '%99', '1319', '1319', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1320', '1320.00', '1320.00', '1320', '%99', '1320', '1320', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1321', '1321.00', '1321.00', '1321', '%99', '1321', '1321', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1322', '1322.00', '1322.00', '1322', '%99', '1322', '1322', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1323', '1323.00', '1323.00', '1323', '%99', '1323', '1323', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1324', '1324.00', '1324.00', '1324', '%99', '1324', '1324', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1325', '1325.00', '1325.00', '1325', '%99', '1325', '1325', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1326', '1326.00', '1326.00', '1326', '%99', '1326', '1326', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1327', '1327.00', '1327.00', '1327', '%99', '1327', '1327', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1328', '1328.00', '1328.00', '1328', '%99', '1328', '1328', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1329', '1329.00', '1329.00', '1329', '%99', '1329', '1329', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1330', '1330.00', '1330.00', '1330', '%99', '1330', '1330', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1331', '1331.00', '1331.00', '1331', '%99', '1331', '1331', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1332', '1332.00', '1332.00', '1332', '%99', '1332', '1332', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1333', '1333.00', '1333.00', '1333', '%99', '1333', '1333', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1334', '1334.00', '1334.00', '1334', '%99', '1334', '1334', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1335', '1335.00', '1335.00', '1335', '%99', '1335', '1335', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1336', '1336.00', '1336.00', '1336', '%99', '1336', '1336', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1337', '1337.00', '1337.00', '1337', '%99', '1337', '1337', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1338', '1338.00', '1338.00', '1338', '%99', '1338', '1338', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1339', '1339.00', '1339.00', '1339', '%99', '1339', '1339', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1340', '1340.00', '1340.00', '1340', '%99', '1340', '1340', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1341', '1341.00', '1341.00', '1341', '%99', '1341', '1341', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1342', '1342.00', '1342.00', '1342', '%99', '1342', '1342', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1343', '1343.00', '1343.00', '1343', '%99', '1343', '1343', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1344', '1344.00', '1344.00', '1344', '%99', '1344', '1344', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1345', '1345.00', '1345.00', '1345', '%99', '1345', '1345', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1346', '1346.00', '1346.00', '1346', '%99', '1346', '1346', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1347', '1347.00', '1347.00', '1347', '%99', '1347', '1347', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1348', '1348.00', '1348.00', '1348', '%99', '1348', '1348', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1349', '1349.00', '1349.00', '1349', '%99', '1349', '1349', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1350', '1350.00', '1350.00', '1350', '%99', '1350', '1350', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1351', '1351.00', '1351.00', '1351', '%99', '1351', '1351', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1352', '1352.00', '1352.00', '1352', '%99', '1352', '1352', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1353', '1353.00', '1353.00', '1353', '%99', '1353', '1353', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1354', '1354.00', '1354.00', '1354', '%99', '1354', '1354', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1355', '1355.00', '1355.00', '1355', '%99', '1355', '1355', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1356', '1356.00', '1356.00', '1356', '%99', '1356', '1356', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1357', '1357.00', '1357.00', '1357', '%99', '1357', '1357', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1358', '1358.00', '1358.00', '1358', '%99', '1358', '1358', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1359', '1359.00', '1359.00', '1359', '%99', '1359', '1359', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1360', '1360.00', '1360.00', '1360', '%99', '1360', '1360', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1361', '1361.00', '1361.00', '1361', '%99', '1361', '1361', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1362', '1362.00', '1362.00', '1362', '%99', '1362', '1362', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1363', '1363.00', '1363.00', '1363', '%99', '1363', '1363', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1364', '1364.00', '1364.00', '1364', '%99', '1364', '1364', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1365', '1365.00', '1365.00', '1365', '%99', '1365', '1365', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1366', '1366.00', '1366.00', '1366', '%99', '1366', '1366', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1367', '1367.00', '1367.00', '1367', '%99', '1367', '1367', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1368', '1368.00', '1368.00', '1368', '%99', '1368', '1368', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1369', '1369.00', '1369.00', '1369', '%99', '1369', '1369', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1370', '1370.00', '1370.00', '1370', '%99', '1370', '1370', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1371', '1371.00', '1371.00', '1371', '%99', '1371', '1371', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1372', '1372.00', '1372.00', '1372', '%99', '1372', '1372', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1373', '1373.00', '1373.00', '1373', '%99', '1373', '1373', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1374', '1374.00', '1374.00', '1374', '%99', '1374', '1374', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1375', '1375.00', '1375.00', '1375', '%99', '1375', '1375', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1376', '1376.00', '1376.00', '1376', '%99', '1376', '1376', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1377', '1377.00', '1377.00', '1377', '%99', '1377', '1377', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1378', '1378.00', '1378.00', '1378', '%99', '1378', '1378', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1379', '1379.00', '1379.00', '1379', '%99', '1379', '1379', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1380', '1380.00', '1380.00', '1380', '%99', '1380', '1380', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1381', '1381.00', '1381.00', '1381', '%99', '1381', '1381', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1382', '1382.00', '1382.00', '1382', '%99', '1382', '1382', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1383', '1383.00', '1383.00', '1383', '%99', '1383', '1383', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1384', '1384.00', '1384.00', '1384', '%99', '1384', '1384', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1385', '1385.00', '1385.00', '1385', '%99', '1385', '1385', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1386', '1386.00', '1386.00', '1386', '%99', '1386', '1386', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1387', '1387.00', '1387.00', '1387', '%99', '1387', '1387', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1388', '1388.00', '1388.00', '1388', '%99', '1388', '1388', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1389', '1389.00', '1389.00', '1389', '%99', '1389', '1389', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1390', '1390.00', '1390.00', '1390', '%99', '1390', '1390', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1391', '1391.00', '1391.00', '1391', '%99', '1391', '1391', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1392', '1392.00', '1392.00', '1392', '%99', '1392', '1392', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1393', '1393.00', '1393.00', '1393', '%99', '1393', '1393', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1394', '1394.00', '1394.00', '1394', '%99', '1394', '1394', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1395', '1395.00', '1395.00', '1395', '%99', '1395', '1395', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1396', '1396.00', '1396.00', '1396', '%99', '1396', '1396', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1397', '1397.00', '1397.00', '1397', '%99', '1397', '1397', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1398', '1398.00', '1398.00', '1398', '%99', '1398', '1398', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1399', '1399.00', '1399.00', '1399', '%99', '1399', '1399', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1400', '1400.00', '1400.00', '1400', '%99', '1400', '1400', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1401', '1401.00', '1401.00', '1401', '%99', '1401', '1401', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1402', '1402.00', '1402.00', '1402', '%99', '1402', '1402', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1403', '1403.00', '1403.00', '1403', '%99', '1403', '1403', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1404', '1404.00', '1404.00', '1404', '%99', '1404', '1404', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1405', '1405.00', '1405.00', '1405', '%99', '1405', '1405', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1406', '1406.00', '1406.00', '1406', '%99', '1406', '1406', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1407', '1407.00', '1407.00', '1407', '%99', '1407', '1407', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1408', '1408.00', '1408.00', '1408', '%99', '1408', '1408', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1409', '1409.00', '1409.00', '1409', '%99', '1409', '1409', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1410', '1410.00', '1410.00', '1410', '%99', '1410', '1410', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1411', '1411.00', '1411.00', '1411', '%99', '1411', '1411', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1412', '1412.00', '1412.00', '1412', '%99', '1412', '1412', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1413', '1413.00', '1413.00', '1413', '%99', '1413', '1413', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1414', '1414.00', '1414.00', '1414', '%99', '1414', '1414', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1415', '1415.00', '1415.00', '1415', '%99', '1415', '1415', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1416', '1416.00', '1416.00', '1416', '%99', '1416', '1416', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1417', '1417.00', '1417.00', '1417', '%99', '1417', '1417', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1418', '1418.00', '1418.00', '1418', '%99', '1418', '1418', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1419', '1419.00', '1419.00', '1419', '%99', '1419', '1419', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1420', '1420.00', '1420.00', '1420', '%99', '1420', '1420', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1421', '1421.00', '1421.00', '1421', '%99', '1421', '1421', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1422', '1422.00', '1422.00', '1422', '%99', '1422', '1422', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1423', '1423.00', '1423.00', '1423', '%99', '1423', '1423', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1424', '1424.00', '1424.00', '1424', '%99', '1424', '1424', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1425', '1425.00', '1425.00', '1425', '%99', '1425', '1425', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1426', '1426.00', '1426.00', '1426', '%99', '1426', '1426', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1427', '1427.00', '1427.00', '1427', '%99', '1427', '1427', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1428', '1428.00', '1428.00', '1428', '%99', '1428', '1428', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1429', '1429.00', '1429.00', '1429', '%99', '1429', '1429', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1430', '1430.00', '1430.00', '1430', '%99', '1430', '1430', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1431', '1431.00', '1431.00', '1431', '%99', '1431', '1431', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1432', '1432.00', '1432.00', '1432', '%99', '1432', '1432', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1433', '1433.00', '1433.00', '1433', '%99', '1433', '1433', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1434', '1434.00', '1434.00', '1434', '%99', '1434', '1434', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1435', '1435.00', '1435.00', '1435', '%99', '1435', '1435', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1436', '1436.00', '1436.00', '1436', '%99', '1436', '1436', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1437', '1437.00', '1437.00', '1437', '%99', '1437', '1437', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1438', '1438.00', '1438.00', '1438', '%99', '1438', '1438', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1439', '1439.00', '1439.00', '1439', '%99', '1439', '1439', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1440', '1440.00', '1440.00', '1440', '%99', '1440', '1440', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1441', '1441.00', '1441.00', '1441', '%99', '1441', '1441', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1442', '1442.00', '1442.00', '1442', '%99', '1442', '1442', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1443', '1443.00', '1443.00', '1443', '%99', '1443', '1443', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1444', '1444.00', '1444.00', '1444', '%99', '1444', '1444', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1445', '1445.00', '1445.00', '1445', '%99', '1445', '1445', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1446', '1446.00', '1446.00', '1446', '%99', '1446', '1446', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1447', '1447.00', '1447.00', '1447', '%99', '1447', '1447', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1448', '1448.00', '1448.00', '1448', '%99', '1448', '1448', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1449', '1449.00', '1449.00', '1449', '%99', '1449', '1449', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1450', '1450.00', '1450.00', '1450', '%99', '1450', '1450', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1451', '1451.00', '1451.00', '1451', '%99', '1451', '1451', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1452', '1452.00', '1452.00', '1452', '%99', '1452', '1452', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1453', '1453.00', '1453.00', '1453', '%99', '1453', '1453', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1454', '1454.00', '1454.00', '1454', '%99', '1454', '1454', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1455', '1455.00', '1455.00', '1455', '%99', '1455', '1455', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1456', '1456.00', '1456.00', '1456', '%99', '1456', '1456', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1457', '1457.00', '1457.00', '1457', '%99', '1457', '1457', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1458', '1458.00', '1458.00', '1458', '%99', '1458', '1458', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1459', '1459.00', '1459.00', '1459', '%99', '1459', '1459', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1460', '1460.00', '1460.00', '1460', '%99', '1460', '1460', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1461', '1461.00', '1461.00', '1461', '%99', '1461', '1461', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1462', '1462.00', '1462.00', '1462', '%99', '1462', '1462', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1463', '1463.00', '1463.00', '1463', '%99', '1463', '1463', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1464', '1464.00', '1464.00', '1464', '%99', '1464', '1464', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1465', '1465.00', '1465.00', '1465', '%99', '1465', '1465', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1466', '1466.00', '1466.00', '1466', '%99', '1466', '1466', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1467', '1467.00', '1467.00', '1467', '%99', '1467', '1467', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1468', '1468.00', '1468.00', '1468', '%99', '1468', '1468', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1469', '1469.00', '1469.00', '1469', '%99', '1469', '1469', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1470', '1470.00', '1470.00', '1470', '%99', '1470', '1470', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1471', '1471.00', '1471.00', '1471', '%99', '1471', '1471', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1472', '1472.00', '1472.00', '1472', '%99', '1472', '1472', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1473', '1473.00', '1473.00', '1473', '%99', '1473', '1473', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1474', '1474.00', '1474.00', '1474', '%99', '1474', '1474', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1475', '1475.00', '1475.00', '1475', '%99', '1475', '1475', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1476', '1476.00', '1476.00', '1476', '%99', '1476', '1476', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1477', '1477.00', '1477.00', '1477', '%99', '1477', '1477', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1478', '1478.00', '1478.00', '1478', '%99', '1478', '1478', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1479', '1479.00', '1479.00', '1479', '%99', '1479', '1479', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1480', '1480.00', '1480.00', '1480', '%99', '1480', '1480', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1481', '1481.00', '1481.00', '1481', '%99', '1481', '1481', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1482', '1482.00', '1482.00', '1482', '%99', '1482', '1482', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1483', '1483.00', '1483.00', '1483', '%99', '1483', '1483', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1484', '1484.00', '1484.00', '1484', '%99', '1484', '1484', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1485', '1485.00', '1485.00', '1485', '%99', '1485', '1485', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1486', '1486.00', '1486.00', '1486', '%99', '1486', '1486', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1487', '1487.00', '1487.00', '1487', '%99', '1487', '1487', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1488', '1488.00', '1488.00', '1488', '%99', '1488', '1488', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1489', '1489.00', '1489.00', '1489', '%99', '1489', '1489', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1490', '1490.00', '1490.00', '1490', '%99', '1490', '1490', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1491', '1491.00', '1491.00', '1491', '%99', '1491', '1491', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1492', '1492.00', '1492.00', '1492', '%99', '1492', '1492', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1493', '1493.00', '1493.00', '1493', '%99', '1493', '1493', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1494', '1494.00', '1494.00', '1494', '%99', '1494', '1494', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1495', '1495.00', '1495.00', '1495', '%99', '1495', '1495', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1496', '1496.00', '1496.00', '1496', '%99', '1496', '1496', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1497', '1497.00', '1497.00', '1497', '%99', '1497', '1497', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1498', '1498.00', '1498.00', '1498', '%99', '1498', '1498', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1499', '1499.00', '1499.00', '1499', '%99', '1499', '1499', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1500', '1500.00', '1500.00', '1500', '%99', '1500', '1500', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1501', '1501.00', '1501.00', '1501', '%99', '1501', '1501', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1502', '1502.00', '1502.00', '1502', '%99', '1502', '1502', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1503', '1503.00', '1503.00', '1503', '%99', '1503', '1503', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1504', '1504.00', '1504.00', '1504', '%99', '1504', '1504', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1505', '1505.00', '1505.00', '1505', '%99', '1505', '1505', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1506', '1506.00', '1506.00', '1506', '%99', '1506', '1506', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1507', '1507.00', '1507.00', '1507', '%99', '1507', '1507', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1508', '1508.00', '1508.00', '1508', '%99', '1508', '1508', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1509', '1509.00', '1509.00', '1509', '%99', '1509', '1509', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1510', '1510.00', '1510.00', '1510', '%99', '1510', '1510', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1511', '1511.00', '1511.00', '1511', '%99', '1511', '1511', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1512', '1512.00', '1512.00', '1512', '%99', '1512', '1512', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1513', '1513.00', '1513.00', '1513', '%99', '1513', '1513', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1514', '1514.00', '1514.00', '1514', '%99', '1514', '1514', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1515', '1515.00', '1515.00', '1515', '%99', '1515', '1515', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1516', '1516.00', '1516.00', '1516', '%99', '1516', '1516', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1517', '1517.00', '1517.00', '1517', '%99', '1517', '1517', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1518', '1518.00', '1518.00', '1518', '%99', '1518', '1518', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1519', '1519.00', '1519.00', '1519', '%99', '1519', '1519', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1520', '1520.00', '1520.00', '1520', '%99', '1520', '1520', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1521', '1521.00', '1521.00', '1521', '%99', '1521', '1521', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1522', '1522.00', '1522.00', '1522', '%99', '1522', '1522', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1523', '1523.00', '1523.00', '1523', '%99', '1523', '1523', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1524', '1524.00', '1524.00', '1524', '%99', '1524', '1524', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1525', '1525.00', '1525.00', '1525', '%99', '1525', '1525', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1526', '1526.00', '1526.00', '1526', '%99', '1526', '1526', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1527', '1527.00', '1527.00', '1527', '%99', '1527', '1527', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1528', '1528.00', '1528.00', '1528', '%99', '1528', '1528', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1529', '1529.00', '1529.00', '1529', '%99', '1529', '1529', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1530', '1530.00', '1530.00', '1530', '%99', '1530', '1530', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1531', '1531.00', '1531.00', '1531', '%99', '1531', '1531', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1532', '1532.00', '1532.00', '1532', '%99', '1532', '1532', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1533', '1533.00', '1533.00', '1533', '%99', '1533', '1533', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1534', '1534.00', '1534.00', '1534', '%99', '1534', '1534', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1535', '1535.00', '1535.00', '1535', '%99', '1535', '1535', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1536', '1536.00', '1536.00', '1536', '%99', '1536', '1536', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1537', '1537.00', '1537.00', '1537', '%99', '1537', '1537', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1538', '1538.00', '1538.00', '1538', '%99', '1538', '1538', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1539', '1539.00', '1539.00', '1539', '%99', '1539', '1539', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1540', '1540.00', '1540.00', '1540', '%99', '1540', '1540', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1541', '1541.00', '1541.00', '1541', '%99', '1541', '1541', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1542', '1542.00', '1542.00', '1542', '%99', '1542', '1542', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1543', '1543.00', '1543.00', '1543', '%99', '1543', '1543', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1544', '1544.00', '1544.00', '1544', '%99', '1544', '1544', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1545', '1545.00', '1545.00', '1545', '%99', '1545', '1545', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1546', '1546.00', '1546.00', '1546', '%99', '1546', '1546', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1547', '1547.00', '1547.00', '1547', '%99', '1547', '1547', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1548', '1548.00', '1548.00', '1548', '%99', '1548', '1548', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1549', '1549.00', '1549.00', '1549', '%99', '1549', '1549', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1550', '1550.00', '1550.00', '1550', '%99', '1550', '1550', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1551', '1551.00', '1551.00', '1551', '%99', '1551', '1551', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1552', '1552.00', '1552.00', '1552', '%99', '1552', '1552', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1553', '1553.00', '1553.00', '1553', '%99', '1553', '1553', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1554', '1554.00', '1554.00', '1554', '%99', '1554', '1554', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1555', '1555.00', '1555.00', '1555', '%99', '1555', '1555', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1556', '1556.00', '1556.00', '1556', '%99', '1556', '1556', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1557', '1557.00', '1557.00', '1557', '%99', '1557', '1557', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1558', '1558.00', '1558.00', '1558', '%99', '1558', '1558', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1559', '1559.00', '1559.00', '1559', '%99', '1559', '1559', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1560', '1560.00', '1560.00', '1560', '%99', '1560', '1560', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1561', '1561.00', '1561.00', '1561', '%99', '1561', '1561', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1562', '1562.00', '1562.00', '1562', '%99', '1562', '1562', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1563', '1563.00', '1563.00', '1563', '%99', '1563', '1563', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1564', '1564.00', '1564.00', '1564', '%99', '1564', '1564', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1565', '1565.00', '1565.00', '1565', '%99', '1565', '1565', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1566', '1566.00', '1566.00', '1566', '%99', '1566', '1566', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1567', '1567.00', '1567.00', '1567', '%99', '1567', '1567', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1568', '1568.00', '1568.00', '1568', '%99', '1568', '1568', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1569', '1569.00', '1569.00', '1569', '%99', '1569', '1569', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1570', '1570.00', '1570.00', '1570', '%99', '1570', '1570', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1571', '1571.00', '1571.00', '1571', '%99', '1571', '1571', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1572', '1572.00', '1572.00', '1572', '%99', '1572', '1572', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1573', '1573.00', '1573.00', '1573', '%99', '1573', '1573', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1574', '1574.00', '1574.00', '1574', '%99', '1574', '1574', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1575', '1575.00', '1575.00', '1575', '%99', '1575', '1575', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1576', '1576.00', '1576.00', '1576', '%99', '1576', '1576', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1577', '1577.00', '1577.00', '1577', '%99', '1577', '1577', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1578', '1578.00', '1578.00', '1578', '%99', '1578', '1578', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1579', '1579.00', '1579.00', '1579', '%99', '1579', '1579', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1580', '1580.00', '1580.00', '1580', '%99', '1580', '1580', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1581', '1581.00', '1581.00', '1581', '%99', '1581', '1581', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1582', '1582.00', '1582.00', '1582', '%99', '1582', '1582', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1583', '1583.00', '1583.00', '1583', '%99', '1583', '1583', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1584', '1584.00', '1584.00', '1584', '%99', '1584', '1584', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1585', '1585.00', '1585.00', '1585', '%99', '1585', '1585', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1586', '1586.00', '1586.00', '1586', '%99', '1586', '1586', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1587', '1587.00', '1587.00', '1587', '%99', '1587', '1587', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1588', '1588.00', '1588.00', '1588', '%99', '1588', '1588', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1589', '1589.00', '1589.00', '1589', '%99', '1589', '1589', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1590', '1590.00', '1590.00', '1590', '%99', '1590', '1590', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1591', '1591.00', '1591.00', '1591', '%99', '1591', '1591', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1592', '1592.00', '1592.00', '1592', '%99', '1592', '1592', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1593', '1593.00', '1593.00', '1593', '%99', '1593', '1593', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1594', '1594.00', '1594.00', '1594', '%99', '1594', '1594', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1595', '1595.00', '1595.00', '1595', '%99', '1595', '1595', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1596', '1596.00', '1596.00', '1596', '%99', '1596', '1596', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1597', '1597.00', '1597.00', '1597', '%99', '1597', '1597', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1598', '1598.00', '1598.00', '1598', '%99', '1598', '1598', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1599', '1599.00', '1599.00', '1599', '%99', '1599', '1599', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1600', '1600.00', '1600.00', '1600', '%99', '1600', '1600', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1601', '1601.00', '1601.00', '1601', '%99', '1601', '1601', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1602', '1602.00', '1602.00', '1602', '%99', '1602', '1602', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1603', '1603.00', '1603.00', '1603', '%99', '1603', '1603', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1604', '1604.00', '1604.00', '1604', '%99', '1604', '1604', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1605', '1605.00', '1605.00', '1605', '%99', '1605', '1605', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1606', '1606.00', '1606.00', '1606', '%99', '1606', '1606', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1607', '1607.00', '1607.00', '1607', '%99', '1607', '1607', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1608', '1608.00', '1608.00', '1608', '%99', '1608', '1608', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1609', '1609.00', '1609.00', '1609', '%99', '1609', '1609', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1610', '1610.00', '1610.00', '1610', '%99', '1610', '1610', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1611', '1611.00', '1611.00', '1611', '%99', '1611', '1611', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1612', '1612.00', '1612.00', '1612', '%99', '1612', '1612', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1613', '1613.00', '1613.00', '1613', '%99', '1613', '1613', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1614', '1614.00', '1614.00', '1614', '%99', '1614', '1614', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1615', '1615.00', '1615.00', '1615', '%99', '1615', '1615', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1616', '1616.00', '1616.00', '1616', '%99', '1616', '1616', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1617', '1617.00', '1617.00', '1617', '%99', '1617', '1617', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1618', '1618.00', '1618.00', '1618', '%99', '1618', '1618', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1619', '1619.00', '1619.00', '1619', '%99', '1619', '1619', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1620', '1620.00', '1620.00', '1620', '%99', '1620', '1620', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1621', '1621.00', '1621.00', '1621', '%99', '1621', '1621', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1622', '1622.00', '1622.00', '1622', '%99', '1622', '1622', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1623', '1623.00', '1623.00', '1623', '%99', '1623', '1623', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1624', '1624.00', '1624.00', '1624', '%99', '1624', '1624', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1625', '1625.00', '1625.00', '1625', '%99', '1625', '1625', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1626', '1626.00', '1626.00', '1626', '%99', '1626', '1626', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1627', '1627.00', '1627.00', '1627', '%99', '1627', '1627', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1628', '1628.00', '1628.00', '1628', '%99', '1628', '1628', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1629', '1629.00', '1629.00', '1629', '%99', '1629', '1629', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1630', '1630.00', '1630.00', '1630', '%99', '1630', '1630', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1631', '1631.00', '1631.00', '1631', '%99', '1631', '1631', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1632', '1632.00', '1632.00', '1632', '%99', '1632', '1632', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1633', '1633.00', '1633.00', '1633', '%99', '1633', '1633', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1634', '1634.00', '1634.00', '1634', '%99', '1634', '1634', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1635', '1635.00', '1635.00', '1635', '%99', '1635', '1635', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1636', '1636.00', '1636.00', '1636', '%99', '1636', '1636', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1637', '1637.00', '1637.00', '1637', '%99', '1637', '1637', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1638', '1638.00', '1638.00', '1638', '%99', '1638', '1638', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1639', '1639.00', '1639.00', '1639', '%99', '1639', '1639', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1640', '1640.00', '1640.00', '1640', '%99', '1640', '1640', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1641', '1641.00', '1641.00', '1641', '%99', '1641', '1641', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1642', '1642.00', '1642.00', '1642', '%99', '1642', '1642', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1643', '1643.00', '1643.00', '1643', '%99', '1643', '1643', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1644', '1644.00', '1644.00', '1644', '%99', '1644', '1644', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1645', '1645.00', '1645.00', '1645', '%99', '1645', '1645', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1646', '1646.00', '1646.00', '1646', '%99', '1646', '1646', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1647', '1647.00', '1647.00', '1647', '%99', '1647', '1647', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1648', '1648.00', '1648.00', '1648', '%99', '1648', '1648', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1649', '1649.00', '1649.00', '1649', '%99', '1649', '1649', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1650', '1650.00', '1650.00', '1650', '%99', '1650', '1650', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1651', '1651.00', '1651.00', '1651', '%99', '1651', '1651', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1652', '1652.00', '1652.00', '1652', '%99', '1652', '1652', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1653', '1653.00', '1653.00', '1653', '%99', '1653', '1653', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1654', '1654.00', '1654.00', '1654', '%99', '1654', '1654', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1655', '1655.00', '1655.00', '1655', '%99', '1655', '1655', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1656', '1656.00', '1656.00', '1656', '%99', '1656', '1656', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1657', '1657.00', '1657.00', '1657', '%99', '1657', '1657', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1658', '1658.00', '1658.00', '1658', '%99', '1658', '1658', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1659', '1659.00', '1659.00', '1659', '%99', '1659', '1659', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1660', '1660.00', '1660.00', '1660', '%99', '1660', '1660', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1661', '1661.00', '1661.00', '1661', '%99', '1661', '1661', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1662', '1662.00', '1662.00', '1662', '%99', '1662', '1662', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1663', '1663.00', '1663.00', '1663', '%99', '1663', '1663', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1664', '1664.00', '1664.00', '1664', '%99', '1664', '1664', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1665', '1665.00', '1665.00', '1665', '%99', '1665', '1665', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1666', '1666.00', '1666.00', '1666', '%99', '1666', '1666', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1667', '1667.00', '1667.00', '1667', '%99', '1667', '1667', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1668', '1668.00', '1668.00', '1668', '%99', '1668', '1668', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1669', '1669.00', '1669.00', '1669', '%99', '1669', '1669', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1670', '1670.00', '1670.00', '1670', '%99', '1670', '1670', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1671', '1671.00', '1671.00', '1671', '%99', '1671', '1671', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1672', '1672.00', '1672.00', '1672', '%99', '1672', '1672', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1673', '1673.00', '1673.00', '1673', '%99', '1673', '1673', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1674', '1674.00', '1674.00', '1674', '%99', '1674', '1674', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1675', '1675.00', '1675.00', '1675', '%99', '1675', '1675', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1676', '1676.00', '1676.00', '1676', '%99', '1676', '1676', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1677', '1677.00', '1677.00', '1677', '%99', '1677', '1677', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1678', '1678.00', '1678.00', '1678', '%99', '1678', '1678', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1679', '1679.00', '1679.00', '1679', '%99', '1679', '1679', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1680', '1680.00', '1680.00', '1680', '%99', '1680', '1680', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1681', '1681.00', '1681.00', '1681', '%99', '1681', '1681', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1682', '1682.00', '1682.00', '1682', '%99', '1682', '1682', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1683', '1683.00', '1683.00', '1683', '%99', '1683', '1683', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1684', '1684.00', '1684.00', '1684', '%99', '1684', '1684', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1685', '1685.00', '1685.00', '1685', '%99', '1685', '1685', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1686', '1686.00', '1686.00', '1686', '%99', '1686', '1686', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1687', '1687.00', '1687.00', '1687', '%99', '1687', '1687', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1688', '1688.00', '1688.00', '1688', '%99', '1688', '1688', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1689', '1689.00', '1689.00', '1689', '%99', '1689', '1689', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1690', '1690.00', '1690.00', '1690', '%99', '1690', '1690', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1691', '1691.00', '1691.00', '1691', '%99', '1691', '1691', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1692', '1692.00', '1692.00', '1692', '%99', '1692', '1692', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1693', '1693.00', '1693.00', '1693', '%99', '1693', '1693', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1694', '1694.00', '1694.00', '1694', '%99', '1694', '1694', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1695', '1695.00', '1695.00', '1695', '%99', '1695', '1695', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1696', '1696.00', '1696.00', '1696', '%99', '1696', '1696', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1697', '1697.00', '1697.00', '1697', '%99', '1697', '1697', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1698', '1698.00', '1698.00', '1698', '%99', '1698', '1698', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1699', '1699.00', '1699.00', '1699', '%99', '1699', '1699', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1700', '1700.00', '1700.00', '1700', '%99', '1700', '1700', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1701', '1701.00', '1701.00', '1701', '%99', '1701', '1701', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1702', '1702.00', '1702.00', '1702', '%99', '1702', '1702', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1703', '1703.00', '1703.00', '1703', '%99', '1703', '1703', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1704', '1704.00', '1704.00', '1704', '%99', '1704', '1704', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1705', '1705.00', '1705.00', '1705', '%99', '1705', '1705', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1706', '1706.00', '1706.00', '1706', '%99', '1706', '1706', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1707', '1707.00', '1707.00', '1707', '%99', '1707', '1707', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1708', '1708.00', '1708.00', '1708', '%99', '1708', '1708', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1709', '1709.00', '1709.00', '1709', '%99', '1709', '1709', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1710', '1710.00', '1710.00', '1710', '%99', '1710', '1710', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1711', '1711.00', '1711.00', '1711', '%99', '1711', '1711', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1712', '1712.00', '1712.00', '1712', '%99', '1712', '1712', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1713', '1713.00', '1713.00', '1713', '%99', '1713', '1713', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1714', '1714.00', '1714.00', '1714', '%99', '1714', '1714', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1715', '1715.00', '1715.00', '1715', '%99', '1715', '1715', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1716', '1716.00', '1716.00', '1716', '%99', '1716', '1716', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1717', '1717.00', '1717.00', '1717', '%99', '1717', '1717', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1718', '1718.00', '1718.00', '1718', '%99', '1718', '1718', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1719', '1719.00', '1719.00', '1719', '%99', '1719', '1719', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1720', '1720.00', '1720.00', '1720', '%99', '1720', '1720', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1721', '1721.00', '1721.00', '1721', '%99', '1721', '1721', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1722', '1722.00', '1722.00', '1722', '%99', '1722', '1722', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1723', '1723.00', '1723.00', '1723', '%99', '1723', '1723', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1724', '1724.00', '1724.00', '1724', '%99', '1724', '1724', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1725', '1725.00', '1725.00', '1725', '%99', '1725', '1725', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1726', '1726.00', '1726.00', '1726', '%99', '1726', '1726', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1727', '1727.00', '1727.00', '1727', '%99', '1727', '1727', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1728', '1728.00', '1728.00', '1728', '%99', '1728', '1728', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1729', '1729.00', '1729.00', '1729', '%99', '1729', '1729', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1730', '1730.00', '1730.00', '1730', '%99', '1730', '1730', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1731', '1731.00', '1731.00', '1731', '%99', '1731', '1731', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1732', '1732.00', '1732.00', '1732', '%99', '1732', '1732', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1733', '1733.00', '1733.00', '1733', '%99', '1733', '1733', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1734', '1734.00', '1734.00', '1734', '%99', '1734', '1734', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1735', '1735.00', '1735.00', '1735', '%99', '1735', '1735', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1736', '1736.00', '1736.00', '1736', '%99', '1736', '1736', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1737', '1737.00', '1737.00', '1737', '%99', '1737', '1737', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1738', '1738.00', '1738.00', '1738', '%99', '1738', '1738', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1739', '1739.00', '1739.00', '1739', '%99', '1739', '1739', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1740', '1740.00', '1740.00', '1740', '%99', '1740', '1740', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1741', '1741.00', '1741.00', '1741', '%99', '1741', '1741', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1742', '1742.00', '1742.00', '1742', '%99', '1742', '1742', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1743', '1743.00', '1743.00', '1743', '%99', '1743', '1743', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1744', '1744.00', '1744.00', '1744', '%99', '1744', '1744', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1745', '1745.00', '1745.00', '1745', '%99', '1745', '1745', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1746', '1746.00', '1746.00', '1746', '%99', '1746', '1746', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1747', '1747.00', '1747.00', '1747', '%99', '1747', '1747', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1748', '1748.00', '1748.00', '1748', '%99', '1748', '1748', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1749', '1749.00', '1749.00', '1749', '%99', '1749', '1749', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1750', '1750.00', '1750.00', '1750', '%99', '1750', '1750', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1751', '1751.00', '1751.00', '1751', '%99', '1751', '1751', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1752', '1752.00', '1752.00', '1752', '%99', '1752', '1752', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1753', '1753.00', '1753.00', '1753', '%99', '1753', '1753', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1754', '1754.00', '1754.00', '1754', '%99', '1754', '1754', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1755', '1755.00', '1755.00', '1755', '%99', '1755', '1755', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1756', '1756.00', '1756.00', '1756', '%99', '1756', '1756', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1757', '1757.00', '1757.00', '1757', '%99', '1757', '1757', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1758', '1758.00', '1758.00', '1758', '%99', '1758', '1758', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1759', '1759.00', '1759.00', '1759', '%99', '1759', '1759', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1760', '1760.00', '1760.00', '1760', '%99', '1760', '1760', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1761', '1761.00', '1761.00', '1761', '%99', '1761', '1761', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1762', '1762.00', '1762.00', '1762', '%99', '1762', '1762', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1763', '1763.00', '1763.00', '1763', '%99', '1763', '1763', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1764', '1764.00', '1764.00', '1764', '%99', '1764', '1764', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1765', '1765.00', '1765.00', '1765', '%99', '1765', '1765', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1766', '1766.00', '1766.00', '1766', '%99', '1766', '1766', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1767', '1767.00', '1767.00', '1767', '%99', '1767', '1767', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1768', '1768.00', '1768.00', '1768', '%99', '1768', '1768', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1769', '1769.00', '1769.00', '1769', '%99', '1769', '1769', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1770', '1770.00', '1770.00', '1770', '%99', '1770', '1770', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1771', '1771.00', '1771.00', '1771', '%99', '1771', '1771', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1772', '1772.00', '1772.00', '1772', '%99', '1772', '1772', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1773', '1773.00', '1773.00', '1773', '%99', '1773', '1773', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1774', '1774.00', '1774.00', '1774', '%99', '1774', '1774', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1775', '1775.00', '1775.00', '1775', '%99', '1775', '1775', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1776', '1776.00', '1776.00', '1776', '%99', '1776', '1776', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1777', '1777.00', '1777.00', '1777', '%99', '1777', '1777', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1778', '1778.00', '1778.00', '1778', '%99', '1778', '1778', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1779', '1779.00', '1779.00', '1779', '%99', '1779', '1779', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1780', '1780.00', '1780.00', '1780', '%99', '1780', '1780', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1781', '1781.00', '1781.00', '1781', '%99', '1781', '1781', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1782', '1782.00', '1782.00', '1782', '%99', '1782', '1782', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1783', '1783.00', '1783.00', '1783', '%99', '1783', '1783', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1784', '1784.00', '1784.00', '1784', '%99', '1784', '1784', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1785', '1785.00', '1785.00', '1785', '%99', '1785', '1785', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1786', '1786.00', '1786.00', '1786', '%99', '1786', '1786', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1787', '1787.00', '1787.00', '1787', '%99', '1787', '1787', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1788', '1788.00', '1788.00', '1788', '%99', '1788', '1788', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1789', '1789.00', '1789.00', '1789', '%99', '1789', '1789', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1790', '1790.00', '1790.00', '1790', '%99', '1790', '1790', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1791', '1791.00', '1791.00', '1791', '%99', '1791', '1791', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1792', '1792.00', '1792.00', '1792', '%99', '1792', '1792', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1793', '1793.00', '1793.00', '1793', '%99', '1793', '1793', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1794', '1794.00', '1794.00', '1794', '%99', '1794', '1794', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1795', '1795.00', '1795.00', '1795', '%99', '1795', '1795', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1796', '1796.00', '1796.00', '1796', '%99', '1796', '1796', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1797', '1797.00', '1797.00', '1797', '%99', '1797', '1797', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1798', '1798.00', '1798.00', '1798', '%99', '1798', '1798', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1799', '1799.00', '1799.00', '1799', '%99', '1799', '1799', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1800', '1800.00', '1800.00', '1800', '%99', '1800', '1800', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1801', '1801.00', '1801.00', '1801', '%99', '1801', '1801', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1802', '1802.00', '1802.00', '1802', '%99', '1802', '1802', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1803', '1803.00', '1803.00', '1803', '%99', '1803', '1803', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1804', '1804.00', '1804.00', '1804', '%99', '1804', '1804', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1805', '1805.00', '1805.00', '1805', '%99', '1805', '1805', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1806', '1806.00', '1806.00', '1806', '%99', '1806', '1806', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1807', '1807.00', '1807.00', '1807', '%99', '1807', '1807', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1808', '1808.00', '1808.00', '1808', '%99', '1808', '1808', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1809', '1809.00', '1809.00', '1809', '%99', '1809', '1809', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1810', '1810.00', '1810.00', '1810', '%99', '1810', '1810', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1811', '1811.00', '1811.00', '1811', '%99', '1811', '1811', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1812', '1812.00', '1812.00', '1812', '%99', '1812', '1812', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1813', '1813.00', '1813.00', '1813', '%99', '1813', '1813', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1814', '1814.00', '1814.00', '1814', '%99', '1814', '1814', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1815', '1815.00', '1815.00', '1815', '%99', '1815', '1815', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1816', '1816.00', '1816.00', '1816', '%99', '1816', '1816', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1817', '1817.00', '1817.00', '1817', '%99', '1817', '1817', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1818', '1818.00', '1818.00', '1818', '%99', '1818', '1818', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1819', '1819.00', '1819.00', '1819', '%99', '1819', '1819', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1820', '1820.00', '1820.00', '1820', '%99', '1820', '1820', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1821', '1821.00', '1821.00', '1821', '%99', '1821', '1821', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1822', '1822.00', '1822.00', '1822', '%99', '1822', '1822', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1823', '1823.00', '1823.00', '1823', '%99', '1823', '1823', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1824', '1824.00', '1824.00', '1824', '%99', '1824', '1824', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1825', '1825.00', '1825.00', '1825', '%99', '1825', '1825', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1826', '1826.00', '1826.00', '1826', '%99', '1826', '1826', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1827', '1827.00', '1827.00', '1827', '%99', '1827', '1827', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1828', '1828.00', '1828.00', '1828', '%99', '1828', '1828', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1829', '1829.00', '1829.00', '1829', '%99', '1829', '1829', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1830', '1830.00', '1830.00', '1830', '%99', '1830', '1830', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1831', '1831.00', '1831.00', '1831', '%99', '1831', '1831', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1832', '1832.00', '1832.00', '1832', '%99', '1832', '1832', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1833', '1833.00', '1833.00', '1833', '%99', '1833', '1833', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1834', '1834.00', '1834.00', '1834', '%99', '1834', '1834', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1835', '1835.00', '1835.00', '1835', '%99', '1835', '1835', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1836', '1836.00', '1836.00', '1836', '%99', '1836', '1836', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1837', '1837.00', '1837.00', '1837', '%99', '1837', '1837', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1838', '1838.00', '1838.00', '1838', '%99', '1838', '1838', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1839', '1839.00', '1839.00', '1839', '%99', '1839', '1839', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1840', '1840.00', '1840.00', '1840', '%99', '1840', '1840', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1841', '1841.00', '1841.00', '1841', '%99', '1841', '1841', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1842', '1842.00', '1842.00', '1842', '%99', '1842', '1842', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1843', '1843.00', '1843.00', '1843', '%99', '1843', '1843', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1844', '1844.00', '1844.00', '1844', '%99', '1844', '1844', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1845', '1845.00', '1845.00', '1845', '%99', '1845', '1845', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1846', '1846.00', '1846.00', '1846', '%99', '1846', '1846', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1847', '1847.00', '1847.00', '1847', '%99', '1847', '1847', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1848', '1848.00', '1848.00', '1848', '%99', '1848', '1848', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1849', '1849.00', '1849.00', '1849', '%99', '1849', '1849', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1850', '1850.00', '1850.00', '1850', '%99', '1850', '1850', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1851', '1851.00', '1851.00', '1851', '%99', '1851', '1851', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1852', '1852.00', '1852.00', '1852', '%99', '1852', '1852', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1853', '1853.00', '1853.00', '1853', '%99', '1853', '1853', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1854', '1854.00', '1854.00', '1854', '%99', '1854', '1854', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1855', '1855.00', '1855.00', '1855', '%99', '1855', '1855', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1856', '1856.00', '1856.00', '1856', '%99', '1856', '1856', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1857', '1857.00', '1857.00', '1857', '%99', '1857', '1857', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1858', '1858.00', '1858.00', '1858', '%99', '1858', '1858', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1859', '1859.00', '1859.00', '1859', '%99', '1859', '1859', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1860', '1860.00', '1860.00', '1860', '%99', '1860', '1860', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1861', '1861.00', '1861.00', '1861', '%99', '1861', '1861', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1862', '1862.00', '1862.00', '1862', '%99', '1862', '1862', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1863', '1863.00', '1863.00', '1863', '%99', '1863', '1863', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1864', '1864.00', '1864.00', '1864', '%99', '1864', '1864', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1865', '1865.00', '1865.00', '1865', '%99', '1865', '1865', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1866', '1866.00', '1866.00', '1866', '%99', '1866', '1866', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1867', '1867.00', '1867.00', '1867', '%99', '1867', '1867', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1868', '1868.00', '1868.00', '1868', '%99', '1868', '1868', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1869', '1869.00', '1869.00', '1869', '%99', '1869', '1869', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1870', '1870.00', '1870.00', '1870', '%99', '1870', '1870', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1871', '1871.00', '1871.00', '1871', '%99', '1871', '1871', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1872', '1872.00', '1872.00', '1872', '%99', '1872', '1872', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1873', '1873.00', '1873.00', '1873', '%99', '1873', '1873', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1874', '1874.00', '1874.00', '1874', '%99', '1874', '1874', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1875', '1875.00', '1875.00', '1875', '%99', '1875', '1875', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1876', '1876.00', '1876.00', '1876', '%99', '1876', '1876', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1877', '1877.00', '1877.00', '1877', '%99', '1877', '1877', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1878', '1878.00', '1878.00', '1878', '%99', '1878', '1878', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1879', '1879.00', '1879.00', '1879', '%99', '1879', '1879', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1880', '1880.00', '1880.00', '1880', '%99', '1880', '1880', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1881', '1881.00', '1881.00', '1881', '%99', '1881', '1881', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1882', '1882.00', '1882.00', '1882', '%99', '1882', '1882', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1883', '1883.00', '1883.00', '1883', '%99', '1883', '1883', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1884', '1884.00', '1884.00', '1884', '%99', '1884', '1884', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1885', '1885.00', '1885.00', '1885', '%99', '1885', '1885', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1886', '1886.00', '1886.00', '1886', '%99', '1886', '1886', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1887', '1887.00', '1887.00', '1887', '%99', '1887', '1887', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1888', '1888.00', '1888.00', '1888', '%99', '1888', '1888', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1889', '1889.00', '1889.00', '1889', '%99', '1889', '1889', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1890', '1890.00', '1890.00', '1890', '%99', '1890', '1890', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1891', '1891.00', '1891.00', '1891', '%99', '1891', '1891', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1892', '1892.00', '1892.00', '1892', '%99', '1892', '1892', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1893', '1893.00', '1893.00', '1893', '%99', '1893', '1893', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1894', '1894.00', '1894.00', '1894', '%99', '1894', '1894', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1895', '1895.00', '1895.00', '1895', '%99', '1895', '1895', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1896', '1896.00', '1896.00', '1896', '%99', '1896', '1896', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1897', '1897.00', '1897.00', '1897', '%99', '1897', '1897', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1898', '1898.00', '1898.00', '1898', '%99', '1898', '1898', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1899', '1899.00', '1899.00', '1899', '%99', '1899', '1899', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1900', '1900.00', '1900.00', '1900', '%99', '1900', '1900', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1901', '1901.00', '1901.00', '1901', '%99', '1901', '1901', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1902', '1902.00', '1902.00', '1902', '%99', '1902', '1902', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1903', '1903.00', '1903.00', '1903', '%99', '1903', '1903', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1904', '1904.00', '1904.00', '1904', '%99', '1904', '1904', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1905', '1905.00', '1905.00', '1905', '%99', '1905', '1905', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1906', '1906.00', '1906.00', '1906', '%99', '1906', '1906', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1907', '1907.00', '1907.00', '1907', '%99', '1907', '1907', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1908', '1908.00', '1908.00', '1908', '%99', '1908', '1908', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1909', '1909.00', '1909.00', '1909', '%99', '1909', '1909', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1910', '1910.00', '1910.00', '1910', '%99', '1910', '1910', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1911', '1911.00', '1911.00', '1911', '%99', '1911', '1911', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1912', '1912.00', '1912.00', '1912', '%99', '1912', '1912', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1913', '1913.00', '1913.00', '1913', '%99', '1913', '1913', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1914', '1914.00', '1914.00', '1914', '%99', '1914', '1914', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1915', '1915.00', '1915.00', '1915', '%99', '1915', '1915', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1916', '1916.00', '1916.00', '1916', '%99', '1916', '1916', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1917', '1917.00', '1917.00', '1917', '%99', '1917', '1917', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1918', '1918.00', '1918.00', '1918', '%99', '1918', '1918', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1919', '1919.00', '1919.00', '1919', '%99', '1919', '1919', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1920', '1920.00', '1920.00', '1920', '%99', '1920', '1920', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1921', '1921.00', '1921.00', '1921', '%99', '1921', '1921', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1922', '1922.00', '1922.00', '1922', '%99', '1922', '1922', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1923', '1923.00', '1923.00', '1923', '%99', '1923', '1923', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1924', '1924.00', '1924.00', '1924', '%99', '1924', '1924', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1925', '1925.00', '1925.00', '1925', '%99', '1925', '1925', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1926', '1926.00', '1926.00', '1926', '%99', '1926', '1926', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1927', '1927.00', '1927.00', '1927', '%99', '1927', '1927', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1928', '1928.00', '1928.00', '1928', '%99', '1928', '1928', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1929', '1929.00', '1929.00', '1929', '%99', '1929', '1929', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1930', '1930.00', '1930.00', '1930', '%99', '1930', '1930', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1931', '1931.00', '1931.00', '1931', '%99', '1931', '1931', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1932', '1932.00', '1932.00', '1932', '%99', '1932', '1932', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1933', '1933.00', '1933.00', '1933', '%99', '1933', '1933', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1934', '1934.00', '1934.00', '1934', '%99', '1934', '1934', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1935', '1935.00', '1935.00', '1935', '%99', '1935', '1935', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1936', '1936.00', '1936.00', '1936', '%99', '1936', '1936', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1937', '1937.00', '1937.00', '1937', '%99', '1937', '1937', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1938', '1938.00', '1938.00', '1938', '%99', '1938', '1938', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1939', '1939.00', '1939.00', '1939', '%99', '1939', '1939', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1940', '1940.00', '1940.00', '1940', '%99', '1940', '1940', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1941', '1941.00', '1941.00', '1941', '%99', '1941', '1941', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1942', '1942.00', '1942.00', '1942', '%99', '1942', '1942', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1943', '1943.00', '1943.00', '1943', '%99', '1943', '1943', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1944', '1944.00', '1944.00', '1944', '%99', '1944', '1944', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1945', '1945.00', '1945.00', '1945', '%99', '1945', '1945', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1946', '1946.00', '1946.00', '1946', '%99', '1946', '1946', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1947', '1947.00', '1947.00', '1947', '%99', '1947', '1947', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1948', '1948.00', '1948.00', '1948', '%99', '1948', '1948', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1949', '1949.00', '1949.00', '1949', '%99', '1949', '1949', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1950', '1950.00', '1950.00', '1950', '%99', '1950', '1950', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1951', '1951.00', '1951.00', '1951', '%99', '1951', '1951', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1952', '1952.00', '1952.00', '1952', '%99', '1952', '1952', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1953', '1953.00', '1953.00', '1953', '%99', '1953', '1953', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1954', '1954.00', '1954.00', '1954', '%99', '1954', '1954', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1955', '1955.00', '1955.00', '1955', '%99', '1955', '1955', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1956', '1956.00', '1956.00', '1956', '%99', '1956', '1956', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1957', '1957.00', '1957.00', '1957', '%99', '1957', '1957', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1958', '1958.00', '1958.00', '1958', '%99', '1958', '1958', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1959', '1959.00', '1959.00', '1959', '%99', '1959', '1959', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1960', '1960.00', '1960.00', '1960', '%99', '1960', '1960', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1961', '1961.00', '1961.00', '1961', '%99', '1961', '1961', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1962', '1962.00', '1962.00', '1962', '%99', '1962', '1962', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1963', '1963.00', '1963.00', '1963', '%99', '1963', '1963', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1964', '1964.00', '1964.00', '1964', '%99', '1964', '1964', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1965', '1965.00', '1965.00', '1965', '%99', '1965', '1965', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1966', '1966.00', '1966.00', '1966', '%99', '1966', '1966', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1967', '1967.00', '1967.00', '1967', '%99', '1967', '1967', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1968', '1968.00', '1968.00', '1968', '%99', '1968', '1968', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1969', '1969.00', '1969.00', '1969', '%99', '1969', '1969', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1970', '1970.00', '1970.00', '1970', '%99', '1970', '1970', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1971', '1971.00', '1971.00', '1971', '%99', '1971', '1971', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1972', '1972.00', '1972.00', '1972', '%99', '1972', '1972', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1973', '1973.00', '1973.00', '1973', '%99', '1973', '1973', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1974', '1974.00', '1974.00', '1974', '%99', '1974', '1974', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1975', '1975.00', '1975.00', '1975', '%99', '1975', '1975', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1976', '1976.00', '1976.00', '1976', '%99', '1976', '1976', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1977', '1977.00', '1977.00', '1977', '%99', '1977', '1977', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1978', '1978.00', '1978.00', '1978', '%99', '1978', '1978', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1979', '1979.00', '1979.00', '1979', '%99', '1979', '1979', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1980', '1980.00', '1980.00', '1980', '%99', '1980', '1980', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1981', '1981.00', '1981.00', '1981', '%99', '1981', '1981', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1982', '1982.00', '1982.00', '1982', '%99', '1982', '1982', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1983', '1983.00', '1983.00', '1983', '%99', '1983', '1983', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1984', '1984.00', '1984.00', '1984', '%99', '1984', '1984', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1985', '1985.00', '1985.00', '1985', '%99', '1985', '1985', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1986', '1986.00', '1986.00', '1986', '%99', '1986', '1986', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1987', '1987.00', '1987.00', '1987', '%99', '1987', '1987', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1988', '1988.00', '1988.00', '1988', '%99', '1988', '1988', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1989', '1989.00', '1989.00', '1989', '%99', '1989', '1989', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1990', '1990.00', '1990.00', '1990', '%99', '1990', '1990', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1991', '1991.00', '1991.00', '1991', '%99', '1991', '1991', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1992', '1992.00', '1992.00', '1992', '%99', '1992', '1992', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1993', '1993.00', '1993.00', '1993', '%99', '1993', '1993', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1994', '1994.00', '1994.00', '1994', '%99', '1994', '1994', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1995', '1995.00', '1995.00', '1995', '%99', '1995', '1995', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1996', '1996.00', '1996.00', '1996', '%99', '1996', '1996', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1997', '1997.00', '1997.00', '1997', '%99', '1997', '1997', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1998', '1998.00', '1998.00', '1998', '%99', '1998', '1998', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('1999', '1999.00', '1999.00', '1999', '%99', '1999', '1999', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2000', '2000.00', '2000.00', '2000', '%99', '2000', '2000', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2001', '2001.00', '2001.00', '2001', '%99', '2001', '2001', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2002', '2002.00', '2002.00', '2002', '%99', '2002', '2002', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2003', '2003.00', '2003.00', '2003', '%99', '2003', '2003', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2004', '2004.00', '2004.00', '2004', '%99', '2004', '2004', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2005', '2005.00', '2005.00', '2005', '%99', '2005', '2005', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2006', '2006.00', '2006.00', '2006', '%99', '2006', '2006', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2007', '2007.00', '2007.00', '2007', '%99', '2007', '2007', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2008', '2008.00', '2008.00', '2008', '%99', '2008', '2008', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2009', '2009.00', '2009.00', '2009', '%99', '2009', '2009', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2010', '2010.00', '2010.00', '2010', '%99', '2010', '2010', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2011', '2011.00', '2011.00', '2011', '%99', '2011', '2011', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2012', '2012.00', '2012.00', '2012', '%99', '2012', '2012', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2013', '2013.00', '2013.00', '2013', '%99', '2013', '2013', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2014', '2014.00', '2014.00', '2014', '%99', '2014', '2014', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2015', '2015.00', '2015.00', '2015', '%99', '2015', '2015', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2016', '2016.00', '2016.00', '2016', '%99', '2016', '2016', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2017', '2017.00', '2017.00', '2017', '%99', '2017', '2017', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2018', '2018.00', '2018.00', '2018', '%99', '2018', '2018', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2019', '2019.00', '2019.00', '2019', '%99', '2019', '2019', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2020', '2020.00', '2020.00', '2020', '%99', '2020', '2020', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2021', '2021.00', '2021.00', '2021', '%99', '2021', '2021', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2022', '2022.00', '2022.00', '2022', '%99', '2022', '2022', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2023', '2023.00', '2023.00', '2023', '%99', '2023', '2023', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2024', '2024.00', '2024.00', '2024', '%99', '2024', '2024', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2025', '2025.00', '2025.00', '2025', '%99', '2025', '2025', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2026', '2026.00', '2026.00', '2026', '%99', '2026', '2026', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2027', '2027.00', '2027.00', '2027', '%99', '2027', '2027', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2028', '2028.00', '2028.00', '2028', '%99', '2028', '2028', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2029', '2029.00', '2029.00', '2029', '%99', '2029', '2029', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2030', '2030.00', '2030.00', '2030', '%99', '2030', '2030', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2031', '2031.00', '2031.00', '2031', '%99', '2031', '2031', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2032', '2032.00', '2032.00', '2032', '%99', '2032', '2032', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2033', '2033.00', '2033.00', '2033', '%99', '2033', '2033', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2034', '2034.00', '2034.00', '2034', '%99', '2034', '2034', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2035', '2035.00', '2035.00', '2035', '%99', '2035', '2035', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2036', '2036.00', '2036.00', '2036', '%99', '2036', '2036', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2037', '2037.00', '2037.00', '2037', '%99', '2037', '2037', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2038', '2038.00', '2038.00', '2038', '%99', '2038', '2038', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2039', '2039.00', '2039.00', '2039', '%99', '2039', '2039', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2040', '2040.00', '2040.00', '2040', '%99', '2040', '2040', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2041', '2041.00', '2041.00', '2041', '%99', '2041', '2041', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2042', '2042.00', '2042.00', '2042', '%99', '2042', '2042', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2043', '2043.00', '2043.00', '2043', '%99', '2043', '2043', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2044', '2044.00', '2044.00', '2044', '%99', '2044', '2044', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2045', '2045.00', '2045.00', '2045', '%99', '2045', '2045', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2046', '2046.00', '2046.00', '2046', '%99', '2046', '2046', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2047', '2047.00', '2047.00', '2047', '%99', '2047', '2047', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2048', '2048.00', '2048.00', '2048', '%99', '2048', '2048', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2049', '2049.00', '2049.00', '2049', '%99', '2049', '2049', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2050', '2050.00', '2050.00', '2050', '%99', '2050', '2050', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2051', '2051.00', '2051.00', '2051', '%99', '2051', '2051', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2052', '2052.00', '2052.00', '2052', '%99', '2052', '2052', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2053', '2053.00', '2053.00', '2053', '%99', '2053', '2053', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2054', '2054.00', '2054.00', '2054', '%99', '2054', '2054', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2055', '2055.00', '2055.00', '2055', '%99', '2055', '2055', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2056', '2056.00', '2056.00', '2056', '%99', '2056', '2056', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2057', '2057.00', '2057.00', '2057', '%99', '2057', '2057', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2058', '2058.00', '2058.00', '2058', '%99', '2058', '2058', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2059', '2059.00', '2059.00', '2059', '%99', '2059', '2059', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2060', '2060.00', '2060.00', '2060', '%99', '2060', '2060', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2061', '2061.00', '2061.00', '2061', '%99', '2061', '2061', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2062', '2062.00', '2062.00', '2062', '%99', '2062', '2062', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2063', '2063.00', '2063.00', '2063', '%99', '2063', '2063', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2064', '2064.00', '2064.00', '2064', '%99', '2064', '2064', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2065', '2065.00', '2065.00', '2065', '%99', '2065', '2065', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2066', '2066.00', '2066.00', '2066', '%99', '2066', '2066', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2067', '2067.00', '2067.00', '2067', '%99', '2067', '2067', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2068', '2068.00', '2068.00', '2068', '%99', '2068', '2068', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2069', '2069.00', '2069.00', '2069', '%99', '2069', '2069', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2070', '2070.00', '2070.00', '2070', '%99', '2070', '2070', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2071', '2071.00', '2071.00', '2071', '%99', '2071', '2071', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2072', '2072.00', '2072.00', '2072', '%99', '2072', '2072', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2073', '2073.00', '2073.00', '2073', '%99', '2073', '2073', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2074', '2074.00', '2074.00', '2074', '%99', '2074', '2074', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2075', '2075.00', '2075.00', '2075', '%99', '2075', '2075', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2076', '2076.00', '2076.00', '2076', '%99', '2076', '2076', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2077', '2077.00', '2077.00', '2077', '%99', '2077', '2077', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2078', '2078.00', '2078.00', '2078', '%99', '2078', '2078', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2079', '2079.00', '2079.00', '2079', '%99', '2079', '2079', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2080', '2080.00', '2080.00', '2080', '%99', '2080', '2080', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2081', '2081.00', '2081.00', '2081', '%99', '2081', '2081', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2082', '2082.00', '2082.00', '2082', '%99', '2082', '2082', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2083', '2083.00', '2083.00', '2083', '%99', '2083', '2083', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2084', '2084.00', '2084.00', '2084', '%99', '2084', '2084', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2085', '2085.00', '2085.00', '2085', '%99', '2085', '2085', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2086', '2086.00', '2086.00', '2086', '%99', '2086', '2086', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2087', '2087.00', '2087.00', '2087', '%99', '2087', '2087', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2088', '2088.00', '2088.00', '2088', '%99', '2088', '2088', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2089', '2089.00', '2089.00', '2089', '%99', '2089', '2089', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2090', '2090.00', '2090.00', '2090', '%99', '2090', '2090', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2091', '2091.00', '2091.00', '2091', '%99', '2091', '2091', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2092', '2092.00', '2092.00', '2092', '%99', '2092', '2092', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2093', '2093.00', '2093.00', '2093', '%99', '2093', '2093', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2094', '2094.00', '2094.00', '2094', '%99', '2094', '2094', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2095', '2095.00', '2095.00', '2095', '%99', '2095', '2095', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2096', '2096.00', '2096.00', '2096', '%99', '2096', '2096', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2097', '2097.00', '2097.00', '2097', '%99', '2097', '2097', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2098', '2098.00', '2098.00', '2098', '%99', '2098', '2098', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2099', '2099.00', '2099.00', '2099', '%99', '2099', '2099', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2100', '2100.00', '2100.00', '2100', '%99', '2100', '2100', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2101', '2101.00', '2101.00', '2101', '%99', '2101', '2101', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2102', '2102.00', '2102.00', '2102', '%99', '2102', '2102', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2103', '2103.00', '2103.00', '2103', '%99', '2103', '2103', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2104', '2104.00', '2104.00', '2104', '%99', '2104', '2104', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2105', '2105.00', '2105.00', '2105', '%99', '2105', '2105', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2106', '2106.00', '2106.00', '2106', '%99', '2106', '2106', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2107', '2107.00', '2107.00', '2107', '%99', '2107', '2107', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2108', '2108.00', '2108.00', '2108', '%99', '2108', '2108', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2109', '2109.00', '2109.00', '2109', '%99', '2109', '2109', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2110', '2110.00', '2110.00', '2110', '%99', '2110', '2110', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2111', '2111.00', '2111.00', '2111', '%99', '2111', '2111', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2112', '2112.00', '2112.00', '2112', '%99', '2112', '2112', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2113', '2113.00', '2113.00', '2113', '%99', '2113', '2113', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2114', '2114.00', '2114.00', '2114', '%99', '2114', '2114', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2115', '2115.00', '2115.00', '2115', '%99', '2115', '2115', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2116', '2116.00', '2116.00', '2116', '%99', '2116', '2116', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2117', '2117.00', '2117.00', '2117', '%99', '2117', '2117', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2118', '2118.00', '2118.00', '2118', '%99', '2118', '2118', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2119', '2119.00', '2119.00', '2119', '%99', '2119', '2119', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2120', '2120.00', '2120.00', '2120', '%99', '2120', '2120', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2121', '2121.00', '2121.00', '2121', '%99', '2121', '2121', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2122', '2122.00', '2122.00', '2122', '%99', '2122', '2122', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2123', '2123.00', '2123.00', '2123', '%99', '2123', '2123', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2124', '2124.00', '2124.00', '2124', '%99', '2124', '2124', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2125', '2125.00', '2125.00', '2125', '%99', '2125', '2125', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2126', '2126.00', '2126.00', '2126', '%99', '2126', '2126', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2127', '2127.00', '2127.00', '2127', '%99', '2127', '2127', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2128', '2128.00', '2128.00', '2128', '%99', '2128', '2128', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2129', '2129.00', '2129.00', '2129', '%99', '2129', '2129', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2130', '2130.00', '2130.00', '2130', '%99', '2130', '2130', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2131', '2131.00', '2131.00', '2131', '%99', '2131', '2131', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2132', '2132.00', '2132.00', '2132', '%99', '2132', '2132', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2133', '2133.00', '2133.00', '2133', '%99', '2133', '2133', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2134', '2134.00', '2134.00', '2134', '%99', '2134', '2134', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2135', '2135.00', '2135.00', '2135', '%99', '2135', '2135', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2136', '2136.00', '2136.00', '2136', '%99', '2136', '2136', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2137', '2137.00', '2137.00', '2137', '%99', '2137', '2137', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2138', '2138.00', '2138.00', '2138', '%99', '2138', '2138', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2139', '2139.00', '2139.00', '2139', '%99', '2139', '2139', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2140', '2140.00', '2140.00', '2140', '%99', '2140', '2140', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2141', '2141.00', '2141.00', '2141', '%99', '2141', '2141', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2142', '2142.00', '2142.00', '2142', '%99', '2142', '2142', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2143', '2143.00', '2143.00', '2143', '%99', '2143', '2143', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2144', '2144.00', '2144.00', '2144', '%99', '2144', '2144', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2145', '2145.00', '2145.00', '2145', '%99', '2145', '2145', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2146', '2146.00', '2146.00', '2146', '%99', '2146', '2146', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2147', '2147.00', '2147.00', '2147', '%99', '2147', '2147', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2148', '2148.00', '2148.00', '2148', '%99', '2148', '2148', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2149', '2149.00', '2149.00', '2149', '%99', '2149', '2149', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2150', '2150.00', '2150.00', '2150', '%99', '2150', '2150', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2151', '2151.00', '2151.00', '2151', '%99', '2151', '2151', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2152', '2152.00', '2152.00', '2152', '%99', '2152', '2152', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2153', '2153.00', '2153.00', '2153', '%99', '2153', '2153', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2154', '2154.00', '2154.00', '2154', '%99', '2154', '2154', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2155', '2155.00', '2155.00', '2155', '%99', '2155', '2155', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2156', '2156.00', '2156.00', '2156', '%99', '2156', '2156', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2157', '2157.00', '2157.00', '2157', '%99', '2157', '2157', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2158', '2158.00', '2158.00', '2158', '%99', '2158', '2158', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2159', '2159.00', '2159.00', '2159', '%99', '2159', '2159', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2160', '2160.00', '2160.00', '2160', '%99', '2160', '2160', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2161', '2161.00', '2161.00', '2161', '%99', '2161', '2161', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2162', '2162.00', '2162.00', '2162', '%99', '2162', '2162', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2163', '2163.00', '2163.00', '2163', '%99', '2163', '2163', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2164', '2164.00', '2164.00', '2164', '%99', '2164', '2164', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2165', '2165.00', '2165.00', '2165', '%99', '2165', '2165', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2166', '2166.00', '2166.00', '2166', '%99', '2166', '2166', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2167', '2167.00', '2167.00', '2167', '%99', '2167', '2167', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2168', '2168.00', '2168.00', '2168', '%99', '2168', '2168', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2169', '2169.00', '2169.00', '2169', '%99', '2169', '2169', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2170', '2170.00', '2170.00', '2170', '%99', '2170', '2170', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2171', '2171.00', '2171.00', '2171', '%99', '2171', '2171', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2172', '2172.00', '2172.00', '2172', '%99', '2172', '2172', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2173', '2173.00', '2173.00', '2173', '%99', '2173', '2173', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2174', '2174.00', '2174.00', '2174', '%99', '2174', '2174', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2175', '2175.00', '2175.00', '2175', '%99', '2175', '2175', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2176', '2176.00', '2176.00', '2176', '%99', '2176', '2176', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2177', '2177.00', '2177.00', '2177', '%99', '2177', '2177', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2178', '2178.00', '2178.00', '2178', '%99', '2178', '2178', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2179', '2179.00', '2179.00', '2179', '%99', '2179', '2179', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2180', '2180.00', '2180.00', '2180', '%99', '2180', '2180', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2181', '2181.00', '2181.00', '2181', '%99', '2181', '2181', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2182', '2182.00', '2182.00', '2182', '%99', '2182', '2182', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2183', '2183.00', '2183.00', '2183', '%99', '2183', '2183', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2184', '2184.00', '2184.00', '2184', '%99', '2184', '2184', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2185', '2185.00', '2185.00', '2185', '%99', '2185', '2185', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2186', '2186.00', '2186.00', '2186', '%99', '2186', '2186', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2187', '2187.00', '2187.00', '2187', '%99', '2187', '2187', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2188', '2188.00', '2188.00', '2188', '%99', '2188', '2188', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2189', '2189.00', '2189.00', '2189', '%99', '2189', '2189', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2190', '2190.00', '2190.00', '2190', '%99', '2190', '2190', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2191', '2191.00', '2191.00', '2191', '%99', '2191', '2191', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2192', '2192.00', '2192.00', '2192', '%99', '2192', '2192', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2193', '2193.00', '2193.00', '2193', '%99', '2193', '2193', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2194', '2194.00', '2194.00', '2194', '%99', '2194', '2194', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2195', '2195.00', '2195.00', '2195', '%99', '2195', '2195', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2196', '2196.00', '2196.00', '2196', '%99', '2196', '2196', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2197', '2197.00', '2197.00', '2197', '%99', '2197', '2197', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2198', '2198.00', '2198.00', '2198', '%99', '2198', '2198', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2199', '2199.00', '2199.00', '2199', '%99', '2199', '2199', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2200', '2200.00', '2200.00', '2200', '%99', '2200', '2200', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2201', '2201.00', '2201.00', '2201', '%99', '2201', '2201', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2202', '2202.00', '2202.00', '2202', '%99', '2202', '2202', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2203', '2203.00', '2203.00', '2203', '%99', '2203', '2203', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2204', '2204.00', '2204.00', '2204', '%99', '2204', '2204', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2205', '2205.00', '2205.00', '2205', '%99', '2205', '2205', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2206', '2206.00', '2206.00', '2206', '%99', '2206', '2206', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2207', '2207.00', '2207.00', '2207', '%99', '2207', '2207', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2208', '2208.00', '2208.00', '2208', '%99', '2208', '2208', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2209', '2209.00', '2209.00', '2209', '%99', '2209', '2209', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2210', '2210.00', '2210.00', '2210', '%99', '2210', '2210', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2211', '2211.00', '2211.00', '2211', '%99', '2211', '2211', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2212', '2212.00', '2212.00', '2212', '%99', '2212', '2212', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2213', '2213.00', '2213.00', '2213', '%99', '2213', '2213', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2214', '2214.00', '2214.00', '2214', '%99', '2214', '2214', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2215', '2215.00', '2215.00', '2215', '%99', '2215', '2215', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2216', '2216.00', '2216.00', '2216', '%99', '2216', '2216', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2217', '2217.00', '2217.00', '2217', '%99', '2217', '2217', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2218', '2218.00', '2218.00', '2218', '%99', '2218', '2218', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2219', '2219.00', '2219.00', '2219', '%99', '2219', '2219', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2220', '2220.00', '2220.00', '2220', '%99', '2220', '2220', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2221', '2221.00', '2221.00', '2221', '%99', '2221', '2221', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2222', '2222.00', '2222.00', '2222', '%99', '2222', '2222', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2223', '2223.00', '2223.00', '2223', '%99', '2223', '2223', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2224', '2224.00', '2224.00', '2224', '%99', '2224', '2224', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2225', '2225.00', '2225.00', '2225', '%99', '2225', '2225', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2226', '2226.00', '2226.00', '2226', '%99', '2226', '2226', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2227', '2227.00', '2227.00', '2227', '%99', '2227', '2227', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2228', '2228.00', '2228.00', '2228', '%99', '2228', '2228', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2229', '2229.00', '2229.00', '2229', '%99', '2229', '2229', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2230', '2230.00', '2230.00', '2230', '%99', '2230', '2230', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2231', '2231.00', '2231.00', '2231', '%99', '2231', '2231', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2232', '2232.00', '2232.00', '2232', '%99', '2232', '2232', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2233', '2233.00', '2233.00', '2233', '%99', '2233', '2233', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2234', '2234.00', '2234.00', '2234', '%99', '2234', '2234', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2235', '2235.00', '2235.00', '2235', '%99', '2235', '2235', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2236', '2236.00', '2236.00', '2236', '%99', '2236', '2236', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2237', '2237.00', '2237.00', '2237', '%99', '2237', '2237', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2238', '2238.00', '2238.00', '2238', '%99', '2238', '2238', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2239', '2239.00', '2239.00', '2239', '%99', '2239', '2239', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2240', '2240.00', '2240.00', '2240', '%99', '2240', '2240', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2241', '2241.00', '2241.00', '2241', '%99', '2241', '2241', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2242', '2242.00', '2242.00', '2242', '%99', '2242', '2242', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2243', '2243.00', '2243.00', '2243', '%99', '2243', '2243', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2244', '2244.00', '2244.00', '2244', '%99', '2244', '2244', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2245', '2245.00', '2245.00', '2245', '%99', '2245', '2245', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2246', '2246.00', '2246.00', '2246', '%99', '2246', '2246', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2247', '2247.00', '2247.00', '2247', '%99', '2247', '2247', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2248', '2248.00', '2248.00', '2248', '%99', '2248', '2248', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2249', '2249.00', '2249.00', '2249', '%99', '2249', '2249', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2250', '2250.00', '2250.00', '2250', '%99', '2250', '2250', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2251', '2251.00', '2251.00', '2251', '%99', '2251', '2251', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2252', '2252.00', '2252.00', '2252', '%99', '2252', '2252', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2253', '2253.00', '2253.00', '2253', '%99', '2253', '2253', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2254', '2254.00', '2254.00', '2254', '%99', '2254', '2254', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2255', '2255.00', '2255.00', '2255', '%99', '2255', '2255', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2256', '2256.00', '2256.00', '2256', '%99', '2256', '2256', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2257', '2257.00', '2257.00', '2257', '%99', '2257', '2257', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2258', '2258.00', '2258.00', '2258', '%99', '2258', '2258', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2259', '2259.00', '2259.00', '2259', '%99', '2259', '2259', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2260', '2260.00', '2260.00', '2260', '%99', '2260', '2260', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2261', '2261.00', '2261.00', '2261', '%99', '2261', '2261', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2262', '2262.00', '2262.00', '2262', '%99', '2262', '2262', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2263', '2263.00', '2263.00', '2263', '%99', '2263', '2263', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2264', '2264.00', '2264.00', '2264', '%99', '2264', '2264', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2265', '2265.00', '2265.00', '2265', '%99', '2265', '2265', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2266', '2266.00', '2266.00', '2266', '%99', '2266', '2266', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2267', '2267.00', '2267.00', '2267', '%99', '2267', '2267', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2268', '2268.00', '2268.00', '2268', '%99', '2268', '2268', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2269', '2269.00', '2269.00', '2269', '%99', '2269', '2269', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2270', '2270.00', '2270.00', '2270', '%99', '2270', '2270', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2271', '2271.00', '2271.00', '2271', '%99', '2271', '2271', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2272', '2272.00', '2272.00', '2272', '%99', '2272', '2272', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2273', '2273.00', '2273.00', '2273', '%99', '2273', '2273', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2274', '2274.00', '2274.00', '2274', '%99', '2274', '2274', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2275', '2275.00', '2275.00', '2275', '%99', '2275', '2275', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2276', '2276.00', '2276.00', '2276', '%99', '2276', '2276', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2277', '2277.00', '2277.00', '2277', '%99', '2277', '2277', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2278', '2278.00', '2278.00', '2278', '%99', '2278', '2278', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2279', '2279.00', '2279.00', '2279', '%99', '2279', '2279', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2280', '2280.00', '2280.00', '2280', '%99', '2280', '2280', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2281', '2281.00', '2281.00', '2281', '%99', '2281', '2281', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2282', '2282.00', '2282.00', '2282', '%99', '2282', '2282', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2283', '2283.00', '2283.00', '2283', '%99', '2283', '2283', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2284', '2284.00', '2284.00', '2284', '%99', '2284', '2284', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2285', '2285.00', '2285.00', '2285', '%99', '2285', '2285', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2286', '2286.00', '2286.00', '2286', '%99', '2286', '2286', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2287', '2287.00', '2287.00', '2287', '%99', '2287', '2287', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2288', '2288.00', '2288.00', '2288', '%99', '2288', '2288', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2289', '2289.00', '2289.00', '2289', '%99', '2289', '2289', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2290', '2290.00', '2290.00', '2290', '%99', '2290', '2290', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2291', '2291.00', '2291.00', '2291', '%99', '2291', '2291', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2292', '2292.00', '2292.00', '2292', '%99', '2292', '2292', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2293', '2293.00', '2293.00', '2293', '%99', '2293', '2293', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2294', '2294.00', '2294.00', '2294', '%99', '2294', '2294', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2295', '2295.00', '2295.00', '2295', '%99', '2295', '2295', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2296', '2296.00', '2296.00', '2296', '%99', '2296', '2296', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2297', '2297.00', '2297.00', '2297', '%99', '2297', '2297', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2298', '2298.00', '2298.00', '2298', '%99', '2298', '2298', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2299', '2299.00', '2299.00', '2299', '%99', '2299', '2299', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2300', '2300.00', '2300.00', '2300', '%99', '2300', '2300', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2301', '2301.00', '2301.00', '2301', '%99', '2301', '2301', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2302', '2302.00', '2302.00', '2302', '%99', '2302', '2302', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2303', '2303.00', '2303.00', '2303', '%99', '2303', '2303', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2304', '2304.00', '2304.00', '2304', '%99', '2304', '2304', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2305', '2305.00', '2305.00', '2305', '%99', '2305', '2305', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2306', '2306.00', '2306.00', '2306', '%99', '2306', '2306', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2307', '2307.00', '2307.00', '2307', '%99', '2307', '2307', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2308', '2308.00', '2308.00', '2308', '%99', '2308', '2308', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2309', '2309.00', '2309.00', '2309', '%99', '2309', '2309', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2310', '2310.00', '2310.00', '2310', '%99', '2310', '2310', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2311', '2311.00', '2311.00', '2311', '%99', '2311', '2311', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2312', '2312.00', '2312.00', '2312', '%99', '2312', '2312', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2313', '2313.00', '2313.00', '2313', '%99', '2313', '2313', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2314', '2314.00', '2314.00', '2314', '%99', '2314', '2314', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2315', '2315.00', '2315.00', '2315', '%99', '2315', '2315', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2316', '2316.00', '2316.00', '2316', '%99', '2316', '2316', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2317', '2317.00', '2317.00', '2317', '%99', '2317', '2317', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2318', '2318.00', '2318.00', '2318', '%99', '2318', '2318', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2319', '2319.00', '2319.00', '2319', '%99', '2319', '2319', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2320', '2320.00', '2320.00', '2320', '%99', '2320', '2320', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2321', '2321.00', '2321.00', '2321', '%99', '2321', '2321', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2322', '2322.00', '2322.00', '2322', '%99', '2322', '2322', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2323', '2323.00', '2323.00', '2323', '%99', '2323', '2323', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2324', '2324.00', '2324.00', '2324', '%99', '2324', '2324', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2325', '2325.00', '2325.00', '2325', '%99', '2325', '2325', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2326', '2326.00', '2326.00', '2326', '%99', '2326', '2326', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2327', '2327.00', '2327.00', '2327', '%99', '2327', '2327', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2328', '2328.00', '2328.00', '2328', '%99', '2328', '2328', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2329', '2329.00', '2329.00', '2329', '%99', '2329', '2329', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2330', '2330.00', '2330.00', '2330', '%99', '2330', '2330', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2331', '2331.00', '2331.00', '2331', '%99', '2331', '2331', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2332', '2332.00', '2332.00', '2332', '%99', '2332', '2332', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2333', '2333.00', '2333.00', '2333', '%99', '2333', '2333', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2334', '2334.00', '2334.00', '2334', '%99', '2334', '2334', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2335', '2335.00', '2335.00', '2335', '%99', '2335', '2335', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2336', '2336.00', '2336.00', '2336', '%99', '2336', '2336', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2337', '2337.00', '2337.00', '2337', '%99', '2337', '2337', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2338', '2338.00', '2338.00', '2338', '%99', '2338', '2338', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2339', '2339.00', '2339.00', '2339', '%99', '2339', '2339', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2340', '2340.00', '2340.00', '2340', '%99', '2340', '2340', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2341', '2341.00', '2341.00', '2341', '%99', '2341', '2341', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2342', '2342.00', '2342.00', '2342', '%99', '2342', '2342', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2343', '2343.00', '2343.00', '2343', '%99', '2343', '2343', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2344', '2344.00', '2344.00', '2344', '%99', '2344', '2344', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2345', '2345.00', '2345.00', '2345', '%99', '2345', '2345', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2346', '2346.00', '2346.00', '2346', '%99', '2346', '2346', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2347', '2347.00', '2347.00', '2347', '%99', '2347', '2347', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2348', '2348.00', '2348.00', '2348', '%99', '2348', '2348', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2349', '2349.00', '2349.00', '2349', '%99', '2349', '2349', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2350', '2350.00', '2350.00', '2350', '%99', '2350', '2350', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2351', '2351.00', '2351.00', '2351', '%99', '2351', '2351', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2352', '2352.00', '2352.00', '2352', '%99', '2352', '2352', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2353', '2353.00', '2353.00', '2353', '%99', '2353', '2353', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2354', '2354.00', '2354.00', '2354', '%99', '2354', '2354', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2355', '2355.00', '2355.00', '2355', '%99', '2355', '2355', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2356', '2356.00', '2356.00', '2356', '%99', '2356', '2356', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2357', '2357.00', '2357.00', '2357', '%99', '2357', '2357', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2358', '2358.00', '2358.00', '2358', '%99', '2358', '2358', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2359', '2359.00', '2359.00', '2359', '%99', '2359', '2359', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2360', '2360.00', '2360.00', '2360', '%99', '2360', '2360', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2361', '2361.00', '2361.00', '2361', '%99', '2361', '2361', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2362', '2362.00', '2362.00', '2362', '%99', '2362', '2362', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2363', '2363.00', '2363.00', '2363', '%99', '2363', '2363', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2364', '2364.00', '2364.00', '2364', '%99', '2364', '2364', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2365', '2365.00', '2365.00', '2365', '%99', '2365', '2365', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2366', '2366.00', '2366.00', '2366', '%99', '2366', '2366', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2367', '2367.00', '2367.00', '2367', '%99', '2367', '2367', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2368', '2368.00', '2368.00', '2368', '%99', '2368', '2368', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2369', '2369.00', '2369.00', '2369', '%99', '2369', '2369', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2370', '2370.00', '2370.00', '2370', '%99', '2370', '2370', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2371', '2371.00', '2371.00', '2371', '%99', '2371', '2371', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2372', '2372.00', '2372.00', '2372', '%99', '2372', '2372', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2373', '2373.00', '2373.00', '2373', '%99', '2373', '2373', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2374', '2374.00', '2374.00', '2374', '%99', '2374', '2374', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2375', '2375.00', '2375.00', '2375', '%99', '2375', '2375', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2376', '2376.00', '2376.00', '2376', '%99', '2376', '2376', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2377', '2377.00', '2377.00', '2377', '%99', '2377', '2377', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2378', '2378.00', '2378.00', '2378', '%99', '2378', '2378', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2379', '2379.00', '2379.00', '2379', '%99', '2379', '2379', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2380', '2380.00', '2380.00', '2380', '%99', '2380', '2380', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2381', '2381.00', '2381.00', '2381', '%99', '2381', '2381', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2382', '2382.00', '2382.00', '2382', '%99', '2382', '2382', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2383', '2383.00', '2383.00', '2383', '%99', '2383', '2383', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2384', '2384.00', '2384.00', '2384', '%99', '2384', '2384', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2385', '2385.00', '2385.00', '2385', '%99', '2385', '2385', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2386', '2386.00', '2386.00', '2386', '%99', '2386', '2386', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2387', '2387.00', '2387.00', '2387', '%99', '2387', '2387', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2388', '2388.00', '2388.00', '2388', '%99', '2388', '2388', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2389', '2389.00', '2389.00', '2389', '%99', '2389', '2389', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2390', '2390.00', '2390.00', '2390', '%99', '2390', '2390', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2391', '2391.00', '2391.00', '2391', '%99', '2391', '2391', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2392', '2392.00', '2392.00', '2392', '%99', '2392', '2392', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2393', '2393.00', '2393.00', '2393', '%99', '2393', '2393', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2394', '2394.00', '2394.00', '2394', '%99', '2394', '2394', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2395', '2395.00', '2395.00', '2395', '%99', '2395', '2395', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2396', '2396.00', '2396.00', '2396', '%99', '2396', '2396', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2397', '2397.00', '2397.00', '2397', '%99', '2397', '2397', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2398', '2398.00', '2398.00', '2398', '%99', '2398', '2398', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2399', '2399.00', '2399.00', '2399', '%99', '2399', '2399', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2400', '2400.00', '2400.00', '2400', '%99', '2400', '2400', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2401', '2401.00', '2401.00', '2401', '%99', '2401', '2401', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2402', '2402.00', '2402.00', '2402', '%99', '2402', '2402', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2403', '2403.00', '2403.00', '2403', '%99', '2403', '2403', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2404', '2404.00', '2404.00', '2404', '%99', '2404', '2404', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2405', '2405.00', '2405.00', '2405', '%99', '2405', '2405', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2406', '2406.00', '2406.00', '2406', '%99', '2406', '2406', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2407', '2407.00', '2407.00', '2407', '%99', '2407', '2407', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2408', '2408.00', '2408.00', '2408', '%99', '2408', '2408', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2409', '2409.00', '2409.00', '2409', '%99', '2409', '2409', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2410', '2410.00', '2410.00', '2410', '%99', '2410', '2410', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2411', '2411.00', '2411.00', '2411', '%99', '2411', '2411', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2412', '2412.00', '2412.00', '2412', '%99', '2412', '2412', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2413', '2413.00', '2413.00', '2413', '%99', '2413', '2413', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2414', '2414.00', '2414.00', '2414', '%99', '2414', '2414', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2415', '2415.00', '2415.00', '2415', '%99', '2415', '2415', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2416', '2416.00', '2416.00', '2416', '%99', '2416', '2416', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2417', '2417.00', '2417.00', '2417', '%99', '2417', '2417', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2418', '2418.00', '2418.00', '2418', '%99', '2418', '2418', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2419', '2419.00', '2419.00', '2419', '%99', '2419', '2419', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2420', '2420.00', '2420.00', '2420', '%99', '2420', '2420', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2421', '2421.00', '2421.00', '2421', '%99', '2421', '2421', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2422', '2422.00', '2422.00', '2422', '%99', '2422', '2422', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2423', '2423.00', '2423.00', '2423', '%99', '2423', '2423', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2424', '2424.00', '2424.00', '2424', '%99', '2424', '2424', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2425', '2425.00', '2425.00', '2425', '%99', '2425', '2425', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2426', '2426.00', '2426.00', '2426', '%99', '2426', '2426', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2427', '2427.00', '2427.00', '2427', '%99', '2427', '2427', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2428', '2428.00', '2428.00', '2428', '%99', '2428', '2428', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2429', '2429.00', '2429.00', '2429', '%99', '2429', '2429', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2430', '2430.00', '2430.00', '2430', '%99', '2430', '2430', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2431', '2431.00', '2431.00', '2431', '%99', '2431', '2431', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2432', '2432.00', '2432.00', '2432', '%99', '2432', '2432', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2433', '2433.00', '2433.00', '2433', '%99', '2433', '2433', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2434', '2434.00', '2434.00', '2434', '%99', '2434', '2434', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2435', '2435.00', '2435.00', '2435', '%99', '2435', '2435', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2436', '2436.00', '2436.00', '2436', '%99', '2436', '2436', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2437', '2437.00', '2437.00', '2437', '%99', '2437', '2437', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2438', '2438.00', '2438.00', '2438', '%99', '2438', '2438', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2439', '2439.00', '2439.00', '2439', '%99', '2439', '2439', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2440', '2440.00', '2440.00', '2440', '%99', '2440', '2440', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2441', '2441.00', '2441.00', '2441', '%99', '2441', '2441', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2442', '2442.00', '2442.00', '2442', '%99', '2442', '2442', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2443', '2443.00', '2443.00', '2443', '%99', '2443', '2443', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2444', '2444.00', '2444.00', '2444', '%99', '2444', '2444', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2445', '2445.00', '2445.00', '2445', '%99', '2445', '2445', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2446', '2446.00', '2446.00', '2446', '%99', '2446', '2446', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2447', '2447.00', '2447.00', '2447', '%99', '2447', '2447', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2448', '2448.00', '2448.00', '2448', '%99', '2448', '2448', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2449', '2449.00', '2449.00', '2449', '%99', '2449', '2449', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2450', '2450.00', '2450.00', '2450', '%99', '2450', '2450', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2451', '2451.00', '2451.00', '2451', '%99', '2451', '2451', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2452', '2452.00', '2452.00', '2452', '%99', '2452', '2452', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2453', '2453.00', '2453.00', '2453', '%99', '2453', '2453', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2454', '2454.00', '2454.00', '2454', '%99', '2454', '2454', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2455', '2455.00', '2455.00', '2455', '%99', '2455', '2455', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2456', '2456.00', '2456.00', '2456', '%99', '2456', '2456', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2457', '2457.00', '2457.00', '2457', '%99', '2457', '2457', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2458', '2458.00', '2458.00', '2458', '%99', '2458', '2458', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2459', '2459.00', '2459.00', '2459', '%99', '2459', '2459', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2460', '2460.00', '2460.00', '2460', '%99', '2460', '2460', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2461', '2461.00', '2461.00', '2461', '%99', '2461', '2461', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2462', '2462.00', '2462.00', '2462', '%99', '2462', '2462', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2463', '2463.00', '2463.00', '2463', '%99', '2463', '2463', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2464', '2464.00', '2464.00', '2464', '%99', '2464', '2464', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2465', '2465.00', '2465.00', '2465', '%99', '2465', '2465', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2466', '2466.00', '2466.00', '2466', '%99', '2466', '2466', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2467', '2467.00', '2467.00', '2467', '%99', '2467', '2467', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2468', '2468.00', '2468.00', '2468', '%99', '2468', '2468', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2469', '2469.00', '2469.00', '2469', '%99', '2469', '2469', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2470', '2470.00', '2470.00', '2470', '%99', '2470', '2470', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2471', '2471.00', '2471.00', '2471', '%99', '2471', '2471', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2472', '2472.00', '2472.00', '2472', '%99', '2472', '2472', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2473', '2473.00', '2473.00', '2473', '%99', '2473', '2473', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2474', '2474.00', '2474.00', '2474', '%99', '2474', '2474', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2475', '2475.00', '2475.00', '2475', '%99', '2475', '2475', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2476', '2476.00', '2476.00', '2476', '%99', '2476', '2476', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2477', '2477.00', '2477.00', '2477', '%99', '2477', '2477', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2478', '2478.00', '2478.00', '2478', '%99', '2478', '2478', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2479', '2479.00', '2479.00', '2479', '%99', '2479', '2479', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2480', '2480.00', '2480.00', '2480', '%99', '2480', '2480', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2481', '2481.00', '2481.00', '2481', '%99', '2481', '2481', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2482', '2482.00', '2482.00', '2482', '%99', '2482', '2482', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2483', '2483.00', '2483.00', '2483', '%99', '2483', '2483', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2484', '2484.00', '2484.00', '2484', '%99', '2484', '2484', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2485', '2485.00', '2485.00', '2485', '%99', '2485', '2485', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2486', '2486.00', '2486.00', '2486', '%99', '2486', '2486', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2487', '2487.00', '2487.00', '2487', '%99', '2487', '2487', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2488', '2488.00', '2488.00', '2488', '%99', '2488', '2488', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2489', '2489.00', '2489.00', '2489', '%99', '2489', '2489', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2490', '2490.00', '2490.00', '2490', '%99', '2490', '2490', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2491', '2491.00', '2491.00', '2491', '%99', '2491', '2491', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2492', '2492.00', '2492.00', '2492', '%99', '2492', '2492', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2493', '2493.00', '2493.00', '2493', '%99', '2493', '2493', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2494', '2494.00', '2494.00', '2494', '%99', '2494', '2494', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2495', '2495.00', '2495.00', '2495', '%99', '2495', '2495', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2496', '2496.00', '2496.00', '2496', '%99', '2496', '2496', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2497', '2497.00', '2497.00', '2497', '%99', '2497', '2497', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2498', '2498.00', '2498.00', '2498', '%99', '2498', '2498', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2499', '2499.00', '2499.00', '2499', '%99', '2499', '2499', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2500', '2500.00', '2500.00', '2500', '%99', '2500', '2500', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2501', '2501.00', '2501.00', '2501', '%99', '2501', '2501', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2502', '2502.00', '2502.00', '2502', '%99', '2502', '2502', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2503', '2503.00', '2503.00', '2503', '%99', '2503', '2503', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2504', '2504.00', '2504.00', '2504', '%99', '2504', '2504', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2505', '2505.00', '2505.00', '2505', '%99', '2505', '2505', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2506', '2506.00', '2506.00', '2506', '%99', '2506', '2506', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2507', '2507.00', '2507.00', '2507', '%99', '2507', '2507', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2508', '2508.00', '2508.00', '2508', '%99', '2508', '2508', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2509', '2509.00', '2509.00', '2509', '%99', '2509', '2509', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2510', '2510.00', '2510.00', '2510', '%99', '2510', '2510', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2511', '2511.00', '2511.00', '2511', '%99', '2511', '2511', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2512', '2512.00', '2512.00', '2512', '%99', '2512', '2512', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2513', '2513.00', '2513.00', '2513', '%99', '2513', '2513', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2514', '2514.00', '2514.00', '2514', '%99', '2514', '2514', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2515', '2515.00', '2515.00', '2515', '%99', '2515', '2515', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2516', '2516.00', '2516.00', '2516', '%99', '2516', '2516', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2517', '2517.00', '2517.00', '2517', '%99', '2517', '2517', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2518', '2518.00', '2518.00', '2518', '%99', '2518', '2518', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2519', '2519.00', '2519.00', '2519', '%99', '2519', '2519', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2520', '2520.00', '2520.00', '2520', '%99', '2520', '2520', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2521', '2521.00', '2521.00', '2521', '%99', '2521', '2521', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2522', '2522.00', '2522.00', '2522', '%99', '2522', '2522', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2523', '2523.00', '2523.00', '2523', '%99', '2523', '2523', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2524', '2524.00', '2524.00', '2524', '%99', '2524', '2524', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2525', '2525.00', '2525.00', '2525', '%99', '2525', '2525', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2526', '2526.00', '2526.00', '2526', '%99', '2526', '2526', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2527', '2527.00', '2527.00', '2527', '%99', '2527', '2527', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2528', '2528.00', '2528.00', '2528', '%99', '2528', '2528', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2529', '2529.00', '2529.00', '2529', '%99', '2529', '2529', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2530', '2530.00', '2530.00', '2530', '%99', '2530', '2530', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2531', '2531.00', '2531.00', '2531', '%99', '2531', '2531', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2532', '2532.00', '2532.00', '2532', '%99', '2532', '2532', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2533', '2533.00', '2533.00', '2533', '%99', '2533', '2533', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2534', '2534.00', '2534.00', '2534', '%99', '2534', '2534', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2535', '2535.00', '2535.00', '2535', '%99', '2535', '2535', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2536', '2536.00', '2536.00', '2536', '%99', '2536', '2536', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2537', '2537.00', '2537.00', '2537', '%99', '2537', '2537', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2538', '2538.00', '2538.00', '2538', '%99', '2538', '2538', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2539', '2539.00', '2539.00', '2539', '%99', '2539', '2539', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2540', '2540.00', '2540.00', '2540', '%99', '2540', '2540', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2541', '2541.00', '2541.00', '2541', '%99', '2541', '2541', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2542', '2542.00', '2542.00', '2542', '%99', '2542', '2542', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2543', '2543.00', '2543.00', '2543', '%99', '2543', '2543', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2544', '2544.00', '2544.00', '2544', '%99', '2544', '2544', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2545', '2545.00', '2545.00', '2545', '%99', '2545', '2545', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2546', '2546.00', '2546.00', '2546', '%99', '2546', '2546', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2547', '2547.00', '2547.00', '2547', '%99', '2547', '2547', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2548', '2548.00', '2548.00', '2548', '%99', '2548', '2548', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2549', '2549.00', '2549.00', '2549', '%99', '2549', '2549', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2550', '2550.00', '2550.00', '2550', '%99', '2550', '2550', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2551', '2551.00', '2551.00', '2551', '%99', '2551', '2551', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2552', '2552.00', '2552.00', '2552', '%99', '2552', '2552', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2553', '2553.00', '2553.00', '2553', '%99', '2553', '2553', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2554', '2554.00', '2554.00', '2554', '%99', '2554', '2554', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2555', '2555.00', '2555.00', '2555', '%99', '2555', '2555', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2556', '2556.00', '2556.00', '2556', '%99', '2556', '2556', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2557', '2557.00', '2557.00', '2557', '%99', '2557', '2557', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2558', '2558.00', '2558.00', '2558', '%99', '2558', '2558', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2559', '2559.00', '2559.00', '2559', '%99', '2559', '2559', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2560', '2560.00', '2560.00', '2560', '%99', '2560', '2560', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2561', '2561.00', '2561.00', '2561', '%99', '2561', '2561', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2562', '2562.00', '2562.00', '2562', '%99', '2562', '2562', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2563', '2563.00', '2563.00', '2563', '%99', '2563', '2563', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2564', '2564.00', '2564.00', '2564', '%99', '2564', '2564', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2565', '2565.00', '2565.00', '2565', '%99', '2565', '2565', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2566', '2566.00', '2566.00', '2566', '%99', '2566', '2566', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2567', '2567.00', '2567.00', '2567', '%99', '2567', '2567', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2568', '2568.00', '2568.00', '2568', '%99', '2568', '2568', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2569', '2569.00', '2569.00', '2569', '%99', '2569', '2569', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2570', '2570.00', '2570.00', '2570', '%99', '2570', '2570', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2571', '2571.00', '2571.00', '2571', '%99', '2571', '2571', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2572', '2572.00', '2572.00', '2572', '%99', '2572', '2572', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2573', '2573.00', '2573.00', '2573', '%99', '2573', '2573', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2574', '2574.00', '2574.00', '2574', '%99', '2574', '2574', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2575', '2575.00', '2575.00', '2575', '%99', '2575', '2575', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2576', '2576.00', '2576.00', '2576', '%99', '2576', '2576', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2577', '2577.00', '2577.00', '2577', '%99', '2577', '2577', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2578', '2578.00', '2578.00', '2578', '%99', '2578', '2578', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2579', '2579.00', '2579.00', '2579', '%99', '2579', '2579', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2580', '2580.00', '2580.00', '2580', '%99', '2580', '2580', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2581', '2581.00', '2581.00', '2581', '%99', '2581', '2581', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2582', '2582.00', '2582.00', '2582', '%99', '2582', '2582', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2583', '2583.00', '2583.00', '2583', '%99', '2583', '2583', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2584', '2584.00', '2584.00', '2584', '%99', '2584', '2584', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2585', '2585.00', '2585.00', '2585', '%99', '2585', '2585', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2586', '2586.00', '2586.00', '2586', '%99', '2586', '2586', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2587', '2587.00', '2587.00', '2587', '%99', '2587', '2587', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2588', '2588.00', '2588.00', '2588', '%99', '2588', '2588', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2589', '2589.00', '2589.00', '2589', '%99', '2589', '2589', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2590', '2590.00', '2590.00', '2590', '%99', '2590', '2590', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2591', '2591.00', '2591.00', '2591', '%99', '2591', '2591', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2592', '2592.00', '2592.00', '2592', '%99', '2592', '2592', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2593', '2593.00', '2593.00', '2593', '%99', '2593', '2593', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2594', '2594.00', '2594.00', '2594', '%99', '2594', '2594', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2595', '2595.00', '2595.00', '2595', '%99', '2595', '2595', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2596', '2596.00', '2596.00', '2596', '%99', '2596', '2596', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2597', '2597.00', '2597.00', '2597', '%99', '2597', '2597', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2598', '2598.00', '2598.00', '2598', '%99', '2598', '2598', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2599', '2599.00', '2599.00', '2599', '%99', '2599', '2599', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2600', '2600.00', '2600.00', '2600', '%99', '2600', '2600', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2601', '2601.00', '2601.00', '2601', '%99', '2601', '2601', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2602', '2602.00', '2602.00', '2602', '%99', '2602', '2602', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2603', '2603.00', '2603.00', '2603', '%99', '2603', '2603', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2604', '2604.00', '2604.00', '2604', '%99', '2604', '2604', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2605', '2605.00', '2605.00', '2605', '%99', '2605', '2605', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2606', '2606.00', '2606.00', '2606', '%99', '2606', '2606', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2607', '2607.00', '2607.00', '2607', '%99', '2607', '2607', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2608', '2608.00', '2608.00', '2608', '%99', '2608', '2608', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2609', '2609.00', '2609.00', '2609', '%99', '2609', '2609', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2610', '2610.00', '2610.00', '2610', '%99', '2610', '2610', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2611', '2611.00', '2611.00', '2611', '%99', '2611', '2611', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2612', '2612.00', '2612.00', '2612', '%99', '2612', '2612', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2613', '2613.00', '2613.00', '2613', '%99', '2613', '2613', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2614', '2614.00', '2614.00', '2614', '%99', '2614', '2614', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2615', '2615.00', '2615.00', '2615', '%99', '2615', '2615', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2616', '2616.00', '2616.00', '2616', '%99', '2616', '2616', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2617', '2617.00', '2617.00', '2617', '%99', '2617', '2617', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2618', '2618.00', '2618.00', '2618', '%99', '2618', '2618', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2619', '2619.00', '2619.00', '2619', '%99', '2619', '2619', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2620', '2620.00', '2620.00', '2620', '%99', '2620', '2620', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2621', '2621.00', '2621.00', '2621', '%99', '2621', '2621', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2622', '2622.00', '2622.00', '2622', '%99', '2622', '2622', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2623', '2623.00', '2623.00', '2623', '%99', '2623', '2623', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2624', '2624.00', '2624.00', '2624', '%99', '2624', '2624', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2625', '2625.00', '2625.00', '2625', '%99', '2625', '2625', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2626', '2626.00', '2626.00', '2626', '%99', '2626', '2626', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2627', '2627.00', '2627.00', '2627', '%99', '2627', '2627', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2628', '2628.00', '2628.00', '2628', '%99', '2628', '2628', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2629', '2629.00', '2629.00', '2629', '%99', '2629', '2629', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2630', '2630.00', '2630.00', '2630', '%99', '2630', '2630', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2631', '2631.00', '2631.00', '2631', '%99', '2631', '2631', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2632', '2632.00', '2632.00', '2632', '%99', '2632', '2632', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2633', '2633.00', '2633.00', '2633', '%99', '2633', '2633', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2634', '2634.00', '2634.00', '2634', '%99', '2634', '2634', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2635', '2635.00', '2635.00', '2635', '%99', '2635', '2635', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2636', '2636.00', '2636.00', '2636', '%99', '2636', '2636', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2637', '2637.00', '2637.00', '2637', '%99', '2637', '2637', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2638', '2638.00', '2638.00', '2638', '%99', '2638', '2638', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2639', '2639.00', '2639.00', '2639', '%99', '2639', '2639', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2640', '2640.00', '2640.00', '2640', '%99', '2640', '2640', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2641', '2641.00', '2641.00', '2641', '%99', '2641', '2641', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2642', '2642.00', '2642.00', '2642', '%99', '2642', '2642', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2643', '2643.00', '2643.00', '2643', '%99', '2643', '2643', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2644', '2644.00', '2644.00', '2644', '%99', '2644', '2644', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2645', '2645.00', '2645.00', '2645', '%99', '2645', '2645', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2646', '2646.00', '2646.00', '2646', '%99', '2646', '2646', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2647', '2647.00', '2647.00', '2647', '%99', '2647', '2647', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2648', '2648.00', '2648.00', '2648', '%99', '2648', '2648', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2649', '2649.00', '2649.00', '2649', '%99', '2649', '2649', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2650', '2650.00', '2650.00', '2650', '%99', '2650', '2650', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2651', '2651.00', '2651.00', '2651', '%99', '2651', '2651', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2652', '2652.00', '2652.00', '2652', '%99', '2652', '2652', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2653', '2653.00', '2653.00', '2653', '%99', '2653', '2653', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2654', '2654.00', '2654.00', '2654', '%99', '2654', '2654', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2655', '2655.00', '2655.00', '2655', '%99', '2655', '2655', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2656', '2656.00', '2656.00', '2656', '%99', '2656', '2656', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2657', '2657.00', '2657.00', '2657', '%99', '2657', '2657', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2658', '2658.00', '2658.00', '2658', '%99', '2658', '2658', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2659', '2659.00', '2659.00', '2659', '%99', '2659', '2659', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2660', '2660.00', '2660.00', '2660', '%99', '2660', '2660', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2661', '2661.00', '2661.00', '2661', '%99', '2661', '2661', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2662', '2662.00', '2662.00', '2662', '%99', '2662', '2662', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2663', '2663.00', '2663.00', '2663', '%99', '2663', '2663', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2664', '2664.00', '2664.00', '2664', '%99', '2664', '2664', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2665', '2665.00', '2665.00', '2665', '%99', '2665', '2665', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2666', '2666.00', '2666.00', '2666', '%99', '2666', '2666', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2667', '2667.00', '2667.00', '2667', '%99', '2667', '2667', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2668', '2668.00', '2668.00', '2668', '%99', '2668', '2668', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2669', '2669.00', '2669.00', '2669', '%99', '2669', '2669', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2670', '2670.00', '2670.00', '2670', '%99', '2670', '2670', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2671', '2671.00', '2671.00', '2671', '%99', '2671', '2671', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2672', '2672.00', '2672.00', '2672', '%99', '2672', '2672', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2673', '2673.00', '2673.00', '2673', '%99', '2673', '2673', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2674', '2674.00', '2674.00', '2674', '%99', '2674', '2674', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2675', '2675.00', '2675.00', '2675', '%99', '2675', '2675', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2676', '2676.00', '2676.00', '2676', '%99', '2676', '2676', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2677', '2677.00', '2677.00', '2677', '%99', '2677', '2677', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2678', '2678.00', '2678.00', '2678', '%99', '2678', '2678', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2679', '2679.00', '2679.00', '2679', '%99', '2679', '2679', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2680', '2680.00', '2680.00', '2680', '%99', '2680', '2680', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2681', '2681.00', '2681.00', '2681', '%99', '2681', '2681', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2682', '2682.00', '2682.00', '2682', '%99', '2682', '2682', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2683', '2683.00', '2683.00', '2683', '%99', '2683', '2683', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2684', '2684.00', '2684.00', '2684', '%99', '2684', '2684', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2685', '2685.00', '2685.00', '2685', '%99', '2685', '2685', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2686', '2686.00', '2686.00', '2686', '%99', '2686', '2686', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2687', '2687.00', '2687.00', '2687', '%99', '2687', '2687', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2688', '2688.00', '2688.00', '2688', '%99', '2688', '2688', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2689', '2689.00', '2689.00', '2689', '%99', '2689', '2689', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2690', '2690.00', '2690.00', '2690', '%99', '2690', '2690', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2691', '2691.00', '2691.00', '2691', '%99', '2691', '2691', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2692', '2692.00', '2692.00', '2692', '%99', '2692', '2692', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2693', '2693.00', '2693.00', '2693', '%99', '2693', '2693', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2694', '2694.00', '2694.00', '2694', '%99', '2694', '2694', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2695', '2695.00', '2695.00', '2695', '%99', '2695', '2695', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2696', '2696.00', '2696.00', '2696', '%99', '2696', '2696', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2697', '2697.00', '2697.00', '2697', '%99', '2697', '2697', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2698', '2698.00', '2698.00', '2698', '%99', '2698', '2698', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2699', '2699.00', '2699.00', '2699', '%99', '2699', '2699', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2700', '2700.00', '2700.00', '2700', '%99', '2700', '2700', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2701', '2701.00', '2701.00', '2701', '%99', '2701', '2701', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2702', '2702.00', '2702.00', '2702', '%99', '2702', '2702', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2703', '2703.00', '2703.00', '2703', '%99', '2703', '2703', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2704', '2704.00', '2704.00', '2704', '%99', '2704', '2704', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2705', '2705.00', '2705.00', '2705', '%99', '2705', '2705', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2706', '2706.00', '2706.00', '2706', '%99', '2706', '2706', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2707', '2707.00', '2707.00', '2707', '%99', '2707', '2707', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2708', '2708.00', '2708.00', '2708', '%99', '2708', '2708', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2709', '2709.00', '2709.00', '2709', '%99', '2709', '2709', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2710', '2710.00', '2710.00', '2710', '%99', '2710', '2710', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2711', '2711.00', '2711.00', '2711', '%99', '2711', '2711', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2712', '2712.00', '2712.00', '2712', '%99', '2712', '2712', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2713', '2713.00', '2713.00', '2713', '%99', '2713', '2713', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2714', '2714.00', '2714.00', '2714', '%99', '2714', '2714', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2715', '2715.00', '2715.00', '2715', '%99', '2715', '2715', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2716', '2716.00', '2716.00', '2716', '%99', '2716', '2716', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2717', '2717.00', '2717.00', '2717', '%99', '2717', '2717', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2718', '2718.00', '2718.00', '2718', '%99', '2718', '2718', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2719', '2719.00', '2719.00', '2719', '%99', '2719', '2719', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2720', '2720.00', '2720.00', '2720', '%99', '2720', '2720', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2721', '2721.00', '2721.00', '2721', '%99', '2721', '2721', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2722', '2722.00', '2722.00', '2722', '%99', '2722', '2722', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2723', '2723.00', '2723.00', '2723', '%99', '2723', '2723', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2724', '2724.00', '2724.00', '2724', '%99', '2724', '2724', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2725', '2725.00', '2725.00', '2725', '%99', '2725', '2725', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2726', '2726.00', '2726.00', '2726', '%99', '2726', '2726', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2727', '2727.00', '2727.00', '2727', '%99', '2727', '2727', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2728', '2728.00', '2728.00', '2728', '%99', '2728', '2728', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2729', '2729.00', '2729.00', '2729', '%99', '2729', '2729', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2730', '2730.00', '2730.00', '2730', '%99', '2730', '2730', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2731', '2731.00', '2731.00', '2731', '%99', '2731', '2731', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2732', '2732.00', '2732.00', '2732', '%99', '2732', '2732', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2733', '2733.00', '2733.00', '2733', '%99', '2733', '2733', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2734', '2734.00', '2734.00', '2734', '%99', '2734', '2734', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2735', '2735.00', '2735.00', '2735', '%99', '2735', '2735', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2736', '2736.00', '2736.00', '2736', '%99', '2736', '2736', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2737', '2737.00', '2737.00', '2737', '%99', '2737', '2737', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2738', '2738.00', '2738.00', '2738', '%99', '2738', '2738', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2739', '2739.00', '2739.00', '2739', '%99', '2739', '2739', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2740', '2740.00', '2740.00', '2740', '%99', '2740', '2740', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2741', '2741.00', '2741.00', '2741', '%99', '2741', '2741', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2742', '2742.00', '2742.00', '2742', '%99', '2742', '2742', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2743', '2743.00', '2743.00', '2743', '%99', '2743', '2743', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2744', '2744.00', '2744.00', '2744', '%99', '2744', '2744', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2745', '2745.00', '2745.00', '2745', '%99', '2745', '2745', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2746', '2746.00', '2746.00', '2746', '%99', '2746', '2746', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2747', '2747.00', '2747.00', '2747', '%99', '2747', '2747', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2748', '2748.00', '2748.00', '2748', '%99', '2748', '2748', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2749', '2749.00', '2749.00', '2749', '%99', '2749', '2749', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2750', '2750.00', '2750.00', '2750', '%99', '2750', '2750', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2751', '2751.00', '2751.00', '2751', '%99', '2751', '2751', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2752', '2752.00', '2752.00', '2752', '%99', '2752', '2752', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2753', '2753.00', '2753.00', '2753', '%99', '2753', '2753', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2754', '2754.00', '2754.00', '2754', '%99', '2754', '2754', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2755', '2755.00', '2755.00', '2755', '%99', '2755', '2755', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2756', '2756.00', '2756.00', '2756', '%99', '2756', '2756', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2757', '2757.00', '2757.00', '2757', '%99', '2757', '2757', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2758', '2758.00', '2758.00', '2758', '%99', '2758', '2758', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2759', '2759.00', '2759.00', '2759', '%99', '2759', '2759', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2760', '2760.00', '2760.00', '2760', '%99', '2760', '2760', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2761', '2761.00', '2761.00', '2761', '%99', '2761', '2761', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2762', '2762.00', '2762.00', '2762', '%99', '2762', '2762', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2763', '2763.00', '2763.00', '2763', '%99', '2763', '2763', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2764', '2764.00', '2764.00', '2764', '%99', '2764', '2764', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2765', '2765.00', '2765.00', '2765', '%99', '2765', '2765', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2766', '2766.00', '2766.00', '2766', '%99', '2766', '2766', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2767', '2767.00', '2767.00', '2767', '%99', '2767', '2767', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2768', '2768.00', '2768.00', '2768', '%99', '2768', '2768', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2769', '2769.00', '2769.00', '2769', '%99', '2769', '2769', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2770', '2770.00', '2770.00', '2770', '%99', '2770', '2770', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2771', '2771.00', '2771.00', '2771', '%99', '2771', '2771', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2772', '2772.00', '2772.00', '2772', '%99', '2772', '2772', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2773', '2773.00', '2773.00', '2773', '%99', '2773', '2773', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2774', '2774.00', '2774.00', '2774', '%99', '2774', '2774', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2775', '2775.00', '2775.00', '2775', '%99', '2775', '2775', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2776', '2776.00', '2776.00', '2776', '%99', '2776', '2776', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2777', '2777.00', '2777.00', '2777', '%99', '2777', '2777', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2778', '2778.00', '2778.00', '2778', '%99', '2778', '2778', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2779', '2779.00', '2779.00', '2779', '%99', '2779', '2779', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2780', '2780.00', '2780.00', '2780', '%99', '2780', '2780', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2781', '2781.00', '2781.00', '2781', '%99', '2781', '2781', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2782', '2782.00', '2782.00', '2782', '%99', '2782', '2782', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2783', '2783.00', '2783.00', '2783', '%99', '2783', '2783', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2784', '2784.00', '2784.00', '2784', '%99', '2784', '2784', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2785', '2785.00', '2785.00', '2785', '%99', '2785', '2785', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2786', '2786.00', '2786.00', '2786', '%99', '2786', '2786', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2787', '2787.00', '2787.00', '2787', '%99', '2787', '2787', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2788', '2788.00', '2788.00', '2788', '%99', '2788', '2788', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2789', '2789.00', '2789.00', '2789', '%99', '2789', '2789', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2790', '2790.00', '2790.00', '2790', '%99', '2790', '2790', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2791', '2791.00', '2791.00', '2791', '%99', '2791', '2791', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2792', '2792.00', '2792.00', '2792', '%99', '2792', '2792', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2793', '2793.00', '2793.00', '2793', '%99', '2793', '2793', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2794', '2794.00', '2794.00', '2794', '%99', '2794', '2794', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2795', '2795.00', '2795.00', '2795', '%99', '2795', '2795', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2796', '2796.00', '2796.00', '2796', '%99', '2796', '2796', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2797', '2797.00', '2797.00', '2797', '%99', '2797', '2797', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2798', '2798.00', '2798.00', '2798', '%99', '2798', '2798', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2799', '2799.00', '2799.00', '2799', '%99', '2799', '2799', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2800', '2800.00', '2800.00', '2800', '%99', '2800', '2800', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2801', '2801.00', '2801.00', '2801', '%99', '2801', '2801', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2802', '2802.00', '2802.00', '2802', '%99', '2802', '2802', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2803', '2803.00', '2803.00', '2803', '%99', '2803', '2803', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2804', '2804.00', '2804.00', '2804', '%99', '2804', '2804', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2805', '2805.00', '2805.00', '2805', '%99', '2805', '2805', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2806', '2806.00', '2806.00', '2806', '%99', '2806', '2806', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2807', '2807.00', '2807.00', '2807', '%99', '2807', '2807', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2808', '2808.00', '2808.00', '2808', '%99', '2808', '2808', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2809', '2809.00', '2809.00', '2809', '%99', '2809', '2809', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2810', '2810.00', '2810.00', '2810', '%99', '2810', '2810', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2811', '2811.00', '2811.00', '2811', '%99', '2811', '2811', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2812', '2812.00', '2812.00', '2812', '%99', '2812', '2812', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2813', '2813.00', '2813.00', '2813', '%99', '2813', '2813', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2814', '2814.00', '2814.00', '2814', '%99', '2814', '2814', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2815', '2815.00', '2815.00', '2815', '%99', '2815', '2815', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2816', '2816.00', '2816.00', '2816', '%99', '2816', '2816', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2817', '2817.00', '2817.00', '2817', '%99', '2817', '2817', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2818', '2818.00', '2818.00', '2818', '%99', '2818', '2818', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2819', '2819.00', '2819.00', '2819', '%99', '2819', '2819', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2820', '2820.00', '2820.00', '2820', '%99', '2820', '2820', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2821', '2821.00', '2821.00', '2821', '%99', '2821', '2821', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2822', '2822.00', '2822.00', '2822', '%99', '2822', '2822', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2823', '2823.00', '2823.00', '2823', '%99', '2823', '2823', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2824', '2824.00', '2824.00', '2824', '%99', '2824', '2824', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2825', '2825.00', '2825.00', '2825', '%99', '2825', '2825', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2826', '2826.00', '2826.00', '2826', '%99', '2826', '2826', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2827', '2827.00', '2827.00', '2827', '%99', '2827', '2827', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2828', '2828.00', '2828.00', '2828', '%99', '2828', '2828', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2829', '2829.00', '2829.00', '2829', '%99', '2829', '2829', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2830', '2830.00', '2830.00', '2830', '%99', '2830', '2830', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2831', '2831.00', '2831.00', '2831', '%99', '2831', '2831', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2832', '2832.00', '2832.00', '2832', '%99', '2832', '2832', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2833', '2833.00', '2833.00', '2833', '%99', '2833', '2833', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2834', '2834.00', '2834.00', '2834', '%99', '2834', '2834', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2835', '2835.00', '2835.00', '2835', '%99', '2835', '2835', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2836', '2836.00', '2836.00', '2836', '%99', '2836', '2836', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2837', '2837.00', '2837.00', '2837', '%99', '2837', '2837', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2838', '2838.00', '2838.00', '2838', '%99', '2838', '2838', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2839', '2839.00', '2839.00', '2839', '%99', '2839', '2839', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2840', '2840.00', '2840.00', '2840', '%99', '2840', '2840', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2841', '2841.00', '2841.00', '2841', '%99', '2841', '2841', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2842', '2842.00', '2842.00', '2842', '%99', '2842', '2842', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2843', '2843.00', '2843.00', '2843', '%99', '2843', '2843', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2844', '2844.00', '2844.00', '2844', '%99', '2844', '2844', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2845', '2845.00', '2845.00', '2845', '%99', '2845', '2845', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2846', '2846.00', '2846.00', '2846', '%99', '2846', '2846', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2847', '2847.00', '2847.00', '2847', '%99', '2847', '2847', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2848', '2848.00', '2848.00', '2848', '%99', '2848', '2848', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2849', '2849.00', '2849.00', '2849', '%99', '2849', '2849', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2850', '2850.00', '2850.00', '2850', '%99', '2850', '2850', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2851', '2851.00', '2851.00', '2851', '%99', '2851', '2851', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2852', '2852.00', '2852.00', '2852', '%99', '2852', '2852', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2853', '2853.00', '2853.00', '2853', '%99', '2853', '2853', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2854', '2854.00', '2854.00', '2854', '%99', '2854', '2854', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2855', '2855.00', '2855.00', '2855', '%99', '2855', '2855', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2856', '2856.00', '2856.00', '2856', '%99', '2856', '2856', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2857', '2857.00', '2857.00', '2857', '%99', '2857', '2857', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2858', '2858.00', '2858.00', '2858', '%99', '2858', '2858', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2859', '2859.00', '2859.00', '2859', '%99', '2859', '2859', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2860', '2860.00', '2860.00', '2860', '%99', '2860', '2860', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2861', '2861.00', '2861.00', '2861', '%99', '2861', '2861', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2862', '2862.00', '2862.00', '2862', '%99', '2862', '2862', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2863', '2863.00', '2863.00', '2863', '%99', '2863', '2863', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2864', '2864.00', '2864.00', '2864', '%99', '2864', '2864', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2865', '2865.00', '2865.00', '2865', '%99', '2865', '2865', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2866', '2866.00', '2866.00', '2866', '%99', '2866', '2866', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2867', '2867.00', '2867.00', '2867', '%99', '2867', '2867', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2868', '2868.00', '2868.00', '2868', '%99', '2868', '2868', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2869', '2869.00', '2869.00', '2869', '%99', '2869', '2869', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2870', '2870.00', '2870.00', '2870', '%99', '2870', '2870', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2871', '2871.00', '2871.00', '2871', '%99', '2871', '2871', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2872', '2872.00', '2872.00', '2872', '%99', '2872', '2872', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2873', '2873.00', '2873.00', '2873', '%99', '2873', '2873', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2874', '2874.00', '2874.00', '2874', '%99', '2874', '2874', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2875', '2875.00', '2875.00', '2875', '%99', '2875', '2875', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2876', '2876.00', '2876.00', '2876', '%99', '2876', '2876', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2877', '2877.00', '2877.00', '2877', '%99', '2877', '2877', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2878', '2878.00', '2878.00', '2878', '%99', '2878', '2878', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2879', '2879.00', '2879.00', '2879', '%99', '2879', '2879', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2880', '2880.00', '2880.00', '2880', '%99', '2880', '2880', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2881', '2881.00', '2881.00', '2881', '%99', '2881', '2881', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2882', '2882.00', '2882.00', '2882', '%99', '2882', '2882', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2883', '2883.00', '2883.00', '2883', '%99', '2883', '2883', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2884', '2884.00', '2884.00', '2884', '%99', '2884', '2884', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2885', '2885.00', '2885.00', '2885', '%99', '2885', '2885', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2886', '2886.00', '2886.00', '2886', '%99', '2886', '2886', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2887', '2887.00', '2887.00', '2887', '%99', '2887', '2887', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2888', '2888.00', '2888.00', '2888', '%99', '2888', '2888', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2889', '2889.00', '2889.00', '2889', '%99', '2889', '2889', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2890', '2890.00', '2890.00', '2890', '%99', '2890', '2890', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2891', '2891.00', '2891.00', '2891', '%99', '2891', '2891', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2892', '2892.00', '2892.00', '2892', '%99', '2892', '2892', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2893', '2893.00', '2893.00', '2893', '%99', '2893', '2893', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2894', '2894.00', '2894.00', '2894', '%99', '2894', '2894', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2895', '2895.00', '2895.00', '2895', '%99', '2895', '2895', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2896', '2896.00', '2896.00', '2896', '%99', '2896', '2896', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2897', '2897.00', '2897.00', '2897', '%99', '2897', '2897', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2898', '2898.00', '2898.00', '2898', '%99', '2898', '2898', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2899', '2899.00', '2899.00', '2899', '%99', '2899', '2899', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2900', '2900.00', '2900.00', '2900', '%99', '2900', '2900', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2901', '2901.00', '2901.00', '2901', '%99', '2901', '2901', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2902', '2902.00', '2902.00', '2902', '%99', '2902', '2902', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2903', '2903.00', '2903.00', '2903', '%99', '2903', '2903', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2904', '2904.00', '2904.00', '2904', '%99', '2904', '2904', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2905', '2905.00', '2905.00', '2905', '%99', '2905', '2905', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2906', '2906.00', '2906.00', '2906', '%99', '2906', '2906', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2907', '2907.00', '2907.00', '2907', '%99', '2907', '2907', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2908', '2908.00', '2908.00', '2908', '%99', '2908', '2908', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2909', '2909.00', '2909.00', '2909', '%99', '2909', '2909', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2910', '2910.00', '2910.00', '2910', '%99', '2910', '2910', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2911', '2911.00', '2911.00', '2911', '%99', '2911', '2911', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2912', '2912.00', '2912.00', '2912', '%99', '2912', '2912', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2913', '2913.00', '2913.00', '2913', '%99', '2913', '2913', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2914', '2914.00', '2914.00', '2914', '%99', '2914', '2914', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2915', '2915.00', '2915.00', '2915', '%99', '2915', '2915', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2916', '2916.00', '2916.00', '2916', '%99', '2916', '2916', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2917', '2917.00', '2917.00', '2917', '%99', '2917', '2917', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2918', '2918.00', '2918.00', '2918', '%99', '2918', '2918', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2919', '2919.00', '2919.00', '2919', '%99', '2919', '2919', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2920', '2920.00', '2920.00', '2920', '%99', '2920', '2920', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2921', '2921.00', '2921.00', '2921', '%99', '2921', '2921', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2922', '2922.00', '2922.00', '2922', '%99', '2922', '2922', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2923', '2923.00', '2923.00', '2923', '%99', '2923', '2923', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2924', '2924.00', '2924.00', '2924', '%99', '2924', '2924', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2925', '2925.00', '2925.00', '2925', '%99', '2925', '2925', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2926', '2926.00', '2926.00', '2926', '%99', '2926', '2926', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2927', '2927.00', '2927.00', '2927', '%99', '2927', '2927', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2928', '2928.00', '2928.00', '2928', '%99', '2928', '2928', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2929', '2929.00', '2929.00', '2929', '%99', '2929', '2929', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2930', '2930.00', '2930.00', '2930', '%99', '2930', '2930', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2931', '2931.00', '2931.00', '2931', '%99', '2931', '2931', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2932', '2932.00', '2932.00', '2932', '%99', '2932', '2932', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2933', '2933.00', '2933.00', '2933', '%99', '2933', '2933', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2934', '2934.00', '2934.00', '2934', '%99', '2934', '2934', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2935', '2935.00', '2935.00', '2935', '%99', '2935', '2935', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2936', '2936.00', '2936.00', '2936', '%99', '2936', '2936', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2937', '2937.00', '2937.00', '2937', '%99', '2937', '2937', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2938', '2938.00', '2938.00', '2938', '%99', '2938', '2938', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2939', '2939.00', '2939.00', '2939', '%99', '2939', '2939', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2940', '2940.00', '2940.00', '2940', '%99', '2940', '2940', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2941', '2941.00', '2941.00', '2941', '%99', '2941', '2941', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2942', '2942.00', '2942.00', '2942', '%99', '2942', '2942', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2943', '2943.00', '2943.00', '2943', '%99', '2943', '2943', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2944', '2944.00', '2944.00', '2944', '%99', '2944', '2944', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2945', '2945.00', '2945.00', '2945', '%99', '2945', '2945', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2946', '2946.00', '2946.00', '2946', '%99', '2946', '2946', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2947', '2947.00', '2947.00', '2947', '%99', '2947', '2947', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2948', '2948.00', '2948.00', '2948', '%99', '2948', '2948', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2949', '2949.00', '2949.00', '2949', '%99', '2949', '2949', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2950', '2950.00', '2950.00', '2950', '%99', '2950', '2950', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2951', '2951.00', '2951.00', '2951', '%99', '2951', '2951', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2952', '2952.00', '2952.00', '2952', '%99', '2952', '2952', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2953', '2953.00', '2953.00', '2953', '%99', '2953', '2953', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2954', '2954.00', '2954.00', '2954', '%99', '2954', '2954', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2955', '2955.00', '2955.00', '2955', '%99', '2955', '2955', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2956', '2956.00', '2956.00', '2956', '%99', '2956', '2956', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2957', '2957.00', '2957.00', '2957', '%99', '2957', '2957', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2958', '2958.00', '2958.00', '2958', '%99', '2958', '2958', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2959', '2959.00', '2959.00', '2959', '%99', '2959', '2959', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2960', '2960.00', '2960.00', '2960', '%99', '2960', '2960', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2961', '2961.00', '2961.00', '2961', '%99', '2961', '2961', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2962', '2962.00', '2962.00', '2962', '%99', '2962', '2962', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2963', '2963.00', '2963.00', '2963', '%99', '2963', '2963', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2964', '2964.00', '2964.00', '2964', '%99', '2964', '2964', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2965', '2965.00', '2965.00', '2965', '%99', '2965', '2965', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2966', '2966.00', '2966.00', '2966', '%99', '2966', '2966', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2967', '2967.00', '2967.00', '2967', '%99', '2967', '2967', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2968', '2968.00', '2968.00', '2968', '%99', '2968', '2968', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2969', '2969.00', '2969.00', '2969', '%99', '2969', '2969', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2970', '2970.00', '2970.00', '2970', '%99', '2970', '2970', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2971', '2971.00', '2971.00', '2971', '%99', '2971', '2971', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2972', '2972.00', '2972.00', '2972', '%99', '2972', '2972', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2973', '2973.00', '2973.00', '2973', '%99', '2973', '2973', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2974', '2974.00', '2974.00', '2974', '%99', '2974', '2974', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2975', '2975.00', '2975.00', '2975', '%99', '2975', '2975', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2976', '2976.00', '2976.00', '2976', '%99', '2976', '2976', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2977', '2977.00', '2977.00', '2977', '%99', '2977', '2977', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2978', '2978.00', '2978.00', '2978', '%99', '2978', '2978', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2979', '2979.00', '2979.00', '2979', '%99', '2979', '2979', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2980', '2980.00', '2980.00', '2980', '%99', '2980', '2980', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2981', '2981.00', '2981.00', '2981', '%99', '2981', '2981', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2982', '2982.00', '2982.00', '2982', '%99', '2982', '2982', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2983', '2983.00', '2983.00', '2983', '%99', '2983', '2983', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2984', '2984.00', '2984.00', '2984', '%99', '2984', '2984', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2985', '2985.00', '2985.00', '2985', '%99', '2985', '2985', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2986', '2986.00', '2986.00', '2986', '%99', '2986', '2986', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2987', '2987.00', '2987.00', '2987', '%99', '2987', '2987', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2988', '2988.00', '2988.00', '2988', '%99', '2988', '2988', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2989', '2989.00', '2989.00', '2989', '%99', '2989', '2989', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2990', '2990.00', '2990.00', '2990', '%99', '2990', '2990', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2991', '2991.00', '2991.00', '2991', '%99', '2991', '2991', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2992', '2992.00', '2992.00', '2992', '%99', '2992', '2992', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2993', '2993.00', '2993.00', '2993', '%99', '2993', '2993', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2994', '2994.00', '2994.00', '2994', '%99', '2994', '2994', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2995', '2995.00', '2995.00', '2995', '%99', '2995', '2995', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2996', '2996.00', '2996.00', '2996', '%99', '2996', '2996', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2997', '2997.00', '2997.00', '2997', '%99', '2997', '2997', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2998', '2998.00', '2998.00', '2998', '%99', '2998', '2998', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('2999', '2999.00', '2999.00', '2999', '%99', '2999', '2999', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3000', '3000.00', '3000.00', '3000', '%99', '3000', '3000', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3001', '3001.00', '3001.00', '3001', '%99', '3001', '3001', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3002', '3002.00', '3002.00', '3002', '%99', '3002', '3002', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3003', '3003.00', '3003.00', '3003', '%99', '3003', '3003', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3004', '3004.00', '3004.00', '3004', '%99', '3004', '3004', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3005', '3005.00', '3005.00', '3005', '%99', '3005', '3005', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3006', '3006.00', '3006.00', '3006', '%99', '3006', '3006', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3007', '3007.00', '3007.00', '3007', '%99', '3007', '3007', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3008', '3008.00', '3008.00', '3008', '%99', '3008', '3008', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3009', '3009.00', '3009.00', '3009', '%99', '3009', '3009', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3010', '3010.00', '3010.00', '3010', '%99', '3010', '3010', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3011', '3011.00', '3011.00', '3011', '%99', '3011', '3011', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3012', '3012.00', '3012.00', '3012', '%99', '3012', '3012', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3013', '3013.00', '3013.00', '3013', '%99', '3013', '3013', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3014', '3014.00', '3014.00', '3014', '%99', '3014', '3014', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3015', '3015.00', '3015.00', '3015', '%99', '3015', '3015', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3016', '3016.00', '3016.00', '3016', '%99', '3016', '3016', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3017', '3017.00', '3017.00', '3017', '%99', '3017', '3017', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3018', '3018.00', '3018.00', '3018', '%99', '3018', '3018', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3019', '3019.00', '3019.00', '3019', '%99', '3019', '3019', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3020', '3020.00', '3020.00', '3020', '%99', '3020', '3020', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3021', '3021.00', '3021.00', '3021', '%99', '3021', '3021', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3022', '3022.00', '3022.00', '3022', '%99', '3022', '3022', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3023', '3023.00', '3023.00', '3023', '%99', '3023', '3023', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3024', '3024.00', '3024.00', '3024', '%99', '3024', '3024', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3025', '3025.00', '3025.00', '3025', '%99', '3025', '3025', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3026', '3026.00', '3026.00', '3026', '%99', '3026', '3026', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3027', '3027.00', '3027.00', '3027', '%99', '3027', '3027', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3028', '3028.00', '3028.00', '3028', '%99', '3028', '3028', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3029', '3029.00', '3029.00', '3029', '%99', '3029', '3029', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3030', '3030.00', '3030.00', '3030', '%99', '3030', '3030', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3031', '3031.00', '3031.00', '3031', '%99', '3031', '3031', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3032', '3032.00', '3032.00', '3032', '%99', '3032', '3032', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3033', '3033.00', '3033.00', '3033', '%99', '3033', '3033', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3034', '3034.00', '3034.00', '3034', '%99', '3034', '3034', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3035', '3035.00', '3035.00', '3035', '%99', '3035', '3035', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3036', '3036.00', '3036.00', '3036', '%99', '3036', '3036', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3037', '3037.00', '3037.00', '3037', '%99', '3037', '3037', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3038', '3038.00', '3038.00', '3038', '%99', '3038', '3038', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3039', '3039.00', '3039.00', '3039', '%99', '3039', '3039', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3040', '3040.00', '3040.00', '3040', '%99', '3040', '3040', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3041', '3041.00', '3041.00', '3041', '%99', '3041', '3041', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3042', '3042.00', '3042.00', '3042', '%99', '3042', '3042', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3043', '3043.00', '3043.00', '3043', '%99', '3043', '3043', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3044', '3044.00', '3044.00', '3044', '%99', '3044', '3044', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3045', '3045.00', '3045.00', '3045', '%99', '3045', '3045', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3046', '3046.00', '3046.00', '3046', '%99', '3046', '3046', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3047', '3047.00', '3047.00', '3047', '%99', '3047', '3047', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3048', '3048.00', '3048.00', '3048', '%99', '3048', '3048', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3049', '3049.00', '3049.00', '3049', '%99', '3049', '3049', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3050', '3050.00', '3050.00', '3050', '%99', '3050', '3050', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3051', '3051.00', '3051.00', '3051', '%99', '3051', '3051', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3052', '3052.00', '3052.00', '3052', '%99', '3052', '3052', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3053', '3053.00', '3053.00', '3053', '%99', '3053', '3053', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3054', '3054.00', '3054.00', '3054', '%99', '3054', '3054', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3055', '3055.00', '3055.00', '3055', '%99', '3055', '3055', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3056', '3056.00', '3056.00', '3056', '%99', '3056', '3056', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3057', '3057.00', '3057.00', '3057', '%99', '3057', '3057', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3058', '3058.00', '3058.00', '3058', '%99', '3058', '3058', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3059', '3059.00', '3059.00', '3059', '%99', '3059', '3059', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3060', '3060.00', '3060.00', '3060', '%99', '3060', '3060', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3061', '3061.00', '3061.00', '3061', '%99', '3061', '3061', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3062', '3062.00', '3062.00', '3062', '%99', '3062', '3062', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3063', '3063.00', '3063.00', '3063', '%99', '3063', '3063', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3064', '3064.00', '3064.00', '3064', '%99', '3064', '3064', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3065', '3065.00', '3065.00', '3065', '%99', '3065', '3065', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3066', '3066.00', '3066.00', '3066', '%99', '3066', '3066', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3067', '3067.00', '3067.00', '3067', '%99', '3067', '3067', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3068', '3068.00', '3068.00', '3068', '%99', '3068', '3068', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3069', '3069.00', '3069.00', '3069', '%99', '3069', '3069', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3070', '3070.00', '3070.00', '3070', '%99', '3070', '3070', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3071', '3071.00', '3071.00', '3071', '%99', '3071', '3071', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3072', '3072.00', '3072.00', '3072', '%99', '3072', '3072', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3073', '3073.00', '3073.00', '3073', '%99', '3073', '3073', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3074', '3074.00', '3074.00', '3074', '%99', '3074', '3074', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3075', '3075.00', '3075.00', '3075', '%99', '3075', '3075', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3076', '3076.00', '3076.00', '3076', '%99', '3076', '3076', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3077', '3077.00', '3077.00', '3077', '%99', '3077', '3077', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3078', '3078.00', '3078.00', '3078', '%99', '3078', '3078', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3079', '3079.00', '3079.00', '3079', '%99', '3079', '3079', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3080', '3080.00', '3080.00', '3080', '%99', '3080', '3080', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3081', '3081.00', '3081.00', '3081', '%99', '3081', '3081', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3082', '3082.00', '3082.00', '3082', '%99', '3082', '3082', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3083', '3083.00', '3083.00', '3083', '%99', '3083', '3083', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3084', '3084.00', '3084.00', '3084', '%99', '3084', '3084', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3085', '3085.00', '3085.00', '3085', '%99', '3085', '3085', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3086', '3086.00', '3086.00', '3086', '%99', '3086', '3086', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3087', '3087.00', '3087.00', '3087', '%99', '3087', '3087', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3088', '3088.00', '3088.00', '3088', '%99', '3088', '3088', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3089', '3089.00', '3089.00', '3089', '%99', '3089', '3089', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3090', '3090.00', '3090.00', '3090', '%99', '3090', '3090', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3091', '3091.00', '3091.00', '3091', '%99', '3091', '3091', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3092', '3092.00', '3092.00', '3092', '%99', '3092', '3092', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3093', '3093.00', '3093.00', '3093', '%99', '3093', '3093', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3094', '3094.00', '3094.00', '3094', '%99', '3094', '3094', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3095', '3095.00', '3095.00', '3095', '%99', '3095', '3095', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3096', '3096.00', '3096.00', '3096', '%99', '3096', '3096', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3097', '3097.00', '3097.00', '3097', '%99', '3097', '3097', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3098', '3098.00', '3098.00', '3098', '%99', '3098', '3098', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3099', '3099.00', '3099.00', '3099', '%99', '3099', '3099', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3100', '3100.00', '3100.00', '3100', '%99', '3100', '3100', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3101', '3101.00', '3101.00', '3101', '%99', '3101', '3101', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3102', '3102.00', '3102.00', '3102', '%99', '3102', '3102', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3103', '3103.00', '3103.00', '3103', '%99', '3103', '3103', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3104', '3104.00', '3104.00', '3104', '%99', '3104', '3104', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3105', '3105.00', '3105.00', '3105', '%99', '3105', '3105', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3106', '3106.00', '3106.00', '3106', '%99', '3106', '3106', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3107', '3107.00', '3107.00', '3107', '%99', '3107', '3107', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3108', '3108.00', '3108.00', '3108', '%99', '3108', '3108', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3109', '3109.00', '3109.00', '3109', '%99', '3109', '3109', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3110', '3110.00', '3110.00', '3110', '%99', '3110', '3110', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3111', '3111.00', '3111.00', '3111', '%99', '3111', '3111', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3112', '3112.00', '3112.00', '3112', '%99', '3112', '3112', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3113', '3113.00', '3113.00', '3113', '%99', '3113', '3113', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3114', '3114.00', '3114.00', '3114', '%99', '3114', '3114', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3115', '3115.00', '3115.00', '3115', '%99', '3115', '3115', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3116', '3116.00', '3116.00', '3116', '%99', '3116', '3116', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3117', '3117.00', '3117.00', '3117', '%99', '3117', '3117', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3118', '3118.00', '3118.00', '3118', '%99', '3118', '3118', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3119', '3119.00', '3119.00', '3119', '%99', '3119', '3119', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3120', '3120.00', '3120.00', '3120', '%99', '3120', '3120', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3121', '3121.00', '3121.00', '3121', '%99', '3121', '3121', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3122', '3122.00', '3122.00', '3122', '%99', '3122', '3122', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3123', '3123.00', '3123.00', '3123', '%99', '3123', '3123', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3124', '3124.00', '3124.00', '3124', '%99', '3124', '3124', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3125', '3125.00', '3125.00', '3125', '%99', '3125', '3125', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3126', '3126.00', '3126.00', '3126', '%99', '3126', '3126', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3127', '3127.00', '3127.00', '3127', '%99', '3127', '3127', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3128', '3128.00', '3128.00', '3128', '%99', '3128', '3128', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3129', '3129.00', '3129.00', '3129', '%99', '3129', '3129', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3130', '3130.00', '3130.00', '3130', '%99', '3130', '3130', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3131', '3131.00', '3131.00', '3131', '%99', '3131', '3131', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3132', '3132.00', '3132.00', '3132', '%99', '3132', '3132', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3133', '3133.00', '3133.00', '3133', '%99', '3133', '3133', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3134', '3134.00', '3134.00', '3134', '%99', '3134', '3134', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3135', '3135.00', '3135.00', '3135', '%99', '3135', '3135', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3136', '3136.00', '3136.00', '3136', '%99', '3136', '3136', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3137', '3137.00', '3137.00', '3137', '%99', '3137', '3137', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3138', '3138.00', '3138.00', '3138', '%99', '3138', '3138', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3139', '3139.00', '3139.00', '3139', '%99', '3139', '3139', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3140', '3140.00', '3140.00', '3140', '%99', '3140', '3140', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3141', '3141.00', '3141.00', '3141', '%99', '3141', '3141', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3142', '3142.00', '3142.00', '3142', '%99', '3142', '3142', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3143', '3143.00', '3143.00', '3143', '%99', '3143', '3143', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3144', '3144.00', '3144.00', '3144', '%99', '3144', '3144', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3145', '3145.00', '3145.00', '3145', '%99', '3145', '3145', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3146', '3146.00', '3146.00', '3146', '%99', '3146', '3146', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3147', '3147.00', '3147.00', '3147', '%99', '3147', '3147', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3148', '3148.00', '3148.00', '3148', '%99', '3148', '3148', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3149', '3149.00', '3149.00', '3149', '%99', '3149', '3149', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3150', '3150.00', '3150.00', '3150', '%99', '3150', '3150', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3151', '3151.00', '3151.00', '3151', '%99', '3151', '3151', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3152', '3152.00', '3152.00', '3152', '%99', '3152', '3152', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3153', '3153.00', '3153.00', '3153', '%99', '3153', '3153', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3154', '3154.00', '3154.00', '3154', '%99', '3154', '3154', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3155', '3155.00', '3155.00', '3155', '%99', '3155', '3155', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3156', '3156.00', '3156.00', '3156', '%99', '3156', '3156', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3157', '3157.00', '3157.00', '3157', '%99', '3157', '3157', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3158', '3158.00', '3158.00', '3158', '%99', '3158', '3158', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3159', '3159.00', '3159.00', '3159', '%99', '3159', '3159', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3160', '3160.00', '3160.00', '3160', '%99', '3160', '3160', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3161', '3161.00', '3161.00', '3161', '%99', '3161', '3161', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3162', '3162.00', '3162.00', '3162', '%99', '3162', '3162', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3163', '3163.00', '3163.00', '3163', '%99', '3163', '3163', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3164', '3164.00', '3164.00', '3164', '%99', '3164', '3164', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3165', '3165.00', '3165.00', '3165', '%99', '3165', '3165', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3166', '3166.00', '3166.00', '3166', '%99', '3166', '3166', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3167', '3167.00', '3167.00', '3167', '%99', '3167', '3167', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3168', '3168.00', '3168.00', '3168', '%99', '3168', '3168', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3169', '3169.00', '3169.00', '3169', '%99', '3169', '3169', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3170', '3170.00', '3170.00', '3170', '%99', '3170', '3170', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3171', '3171.00', '3171.00', '3171', '%99', '3171', '3171', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3172', '3172.00', '3172.00', '3172', '%99', '3172', '3172', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3173', '3173.00', '3173.00', '3173', '%99', '3173', '3173', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3174', '3174.00', '3174.00', '3174', '%99', '3174', '3174', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3175', '3175.00', '3175.00', '3175', '%99', '3175', '3175', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3176', '3176.00', '3176.00', '3176', '%99', '3176', '3176', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3177', '3177.00', '3177.00', '3177', '%99', '3177', '3177', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3178', '3178.00', '3178.00', '3178', '%99', '3178', '3178', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3179', '3179.00', '3179.00', '3179', '%99', '3179', '3179', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3180', '3180.00', '3180.00', '3180', '%99', '3180', '3180', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3181', '3181.00', '3181.00', '3181', '%99', '3181', '3181', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3182', '3182.00', '3182.00', '3182', '%99', '3182', '3182', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3183', '3183.00', '3183.00', '3183', '%99', '3183', '3183', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3184', '3184.00', '3184.00', '3184', '%99', '3184', '3184', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3185', '3185.00', '3185.00', '3185', '%99', '3185', '3185', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3186', '3186.00', '3186.00', '3186', '%99', '3186', '3186', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3187', '3187.00', '3187.00', '3187', '%99', '3187', '3187', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3188', '3188.00', '3188.00', '3188', '%99', '3188', '3188', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3189', '3189.00', '3189.00', '3189', '%99', '3189', '3189', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3190', '3190.00', '3190.00', '3190', '%99', '3190', '3190', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3191', '3191.00', '3191.00', '3191', '%99', '3191', '3191', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3192', '3192.00', '3192.00', '3192', '%99', '3192', '3192', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3193', '3193.00', '3193.00', '3193', '%99', '3193', '3193', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3194', '3194.00', '3194.00', '3194', '%99', '3194', '3194', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3195', '3195.00', '3195.00', '3195', '%99', '3195', '3195', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3196', '3196.00', '3196.00', '3196', '%99', '3196', '3196', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3197', '3197.00', '3197.00', '3197', '%99', '3197', '3197', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3198', '3198.00', '3198.00', '3198', '%99', '3198', '3198', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3199', '3199.00', '3199.00', '3199', '%99', '3199', '3199', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3200', '3200.00', '3200.00', '3200', '%99', '3200', '3200', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3201', '3201.00', '3201.00', '3201', '%99', '3201', '3201', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3202', '3202.00', '3202.00', '3202', '%99', '3202', '3202', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3203', '3203.00', '3203.00', '3203', '%99', '3203', '3203', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3204', '3204.00', '3204.00', '3204', '%99', '3204', '3204', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3205', '3205.00', '3205.00', '3205', '%99', '3205', '3205', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3206', '3206.00', '3206.00', '3206', '%99', '3206', '3206', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3207', '3207.00', '3207.00', '3207', '%99', '3207', '3207', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3208', '3208.00', '3208.00', '3208', '%99', '3208', '3208', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3209', '3209.00', '3209.00', '3209', '%99', '3209', '3209', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3210', '3210.00', '3210.00', '3210', '%99', '3210', '3210', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3211', '3211.00', '3211.00', '3211', '%99', '3211', '3211', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3212', '3212.00', '3212.00', '3212', '%99', '3212', '3212', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3213', '3213.00', '3213.00', '3213', '%99', '3213', '3213', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3214', '3214.00', '3214.00', '3214', '%99', '3214', '3214', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3215', '3215.00', '3215.00', '3215', '%99', '3215', '3215', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3216', '3216.00', '3216.00', '3216', '%99', '3216', '3216', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3217', '3217.00', '3217.00', '3217', '%99', '3217', '3217', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3218', '3218.00', '3218.00', '3218', '%99', '3218', '3218', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3219', '3219.00', '3219.00', '3219', '%99', '3219', '3219', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3220', '3220.00', '3220.00', '3220', '%99', '3220', '3220', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3221', '3221.00', '3221.00', '3221', '%99', '3221', '3221', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3222', '3222.00', '3222.00', '3222', '%99', '3222', '3222', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3223', '3223.00', '3223.00', '3223', '%99', '3223', '3223', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3224', '3224.00', '3224.00', '3224', '%99', '3224', '3224', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3225', '3225.00', '3225.00', '3225', '%99', '3225', '3225', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3226', '3226.00', '3226.00', '3226', '%99', '3226', '3226', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3227', '3227.00', '3227.00', '3227', '%99', '3227', '3227', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3228', '3228.00', '3228.00', '3228', '%99', '3228', '3228', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3229', '3229.00', '3229.00', '3229', '%99', '3229', '3229', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3230', '3230.00', '3230.00', '3230', '%99', '3230', '3230', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3231', '3231.00', '3231.00', '3231', '%99', '3231', '3231', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3232', '3232.00', '3232.00', '3232', '%99', '3232', '3232', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3233', '3233.00', '3233.00', '3233', '%99', '3233', '3233', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3234', '3234.00', '3234.00', '3234', '%99', '3234', '3234', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3235', '3235.00', '3235.00', '3235', '%99', '3235', '3235', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3236', '3236.00', '3236.00', '3236', '%99', '3236', '3236', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3237', '3237.00', '3237.00', '3237', '%99', '3237', '3237', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3238', '3238.00', '3238.00', '3238', '%99', '3238', '3238', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3239', '3239.00', '3239.00', '3239', '%99', '3239', '3239', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3240', '3240.00', '3240.00', '3240', '%99', '3240', '3240', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3241', '3241.00', '3241.00', '3241', '%99', '3241', '3241', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3242', '3242.00', '3242.00', '3242', '%99', '3242', '3242', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3243', '3243.00', '3243.00', '3243', '%99', '3243', '3243', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3244', '3244.00', '3244.00', '3244', '%99', '3244', '3244', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3245', '3245.00', '3245.00', '3245', '%99', '3245', '3245', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3246', '3246.00', '3246.00', '3246', '%99', '3246', '3246', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3247', '3247.00', '3247.00', '3247', '%99', '3247', '3247', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3248', '3248.00', '3248.00', '3248', '%99', '3248', '3248', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3249', '3249.00', '3249.00', '3249', '%99', '3249', '3249', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3250', '3250.00', '3250.00', '3250', '%99', '3250', '3250', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3251', '3251.00', '3251.00', '3251', '%99', '3251', '3251', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3252', '3252.00', '3252.00', '3252', '%99', '3252', '3252', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3253', '3253.00', '3253.00', '3253', '%99', '3253', '3253', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3254', '3254.00', '3254.00', '3254', '%99', '3254', '3254', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3255', '3255.00', '3255.00', '3255', '%99', '3255', '3255', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3256', '3256.00', '3256.00', '3256', '%99', '3256', '3256', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3257', '3257.00', '3257.00', '3257', '%99', '3257', '3257', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3258', '3258.00', '3258.00', '3258', '%99', '3258', '3258', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3259', '3259.00', '3259.00', '3259', '%99', '3259', '3259', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3260', '3260.00', '3260.00', '3260', '%99', '3260', '3260', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3261', '3261.00', '3261.00', '3261', '%99', '3261', '3261', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3262', '3262.00', '3262.00', '3262', '%99', '3262', '3262', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3263', '3263.00', '3263.00', '3263', '%99', '3263', '3263', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3264', '3264.00', '3264.00', '3264', '%99', '3264', '3264', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3265', '3265.00', '3265.00', '3265', '%99', '3265', '3265', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3266', '3266.00', '3266.00', '3266', '%99', '3266', '3266', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3267', '3267.00', '3267.00', '3267', '%99', '3267', '3267', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3268', '3268.00', '3268.00', '3268', '%99', '3268', '3268', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3269', '3269.00', '3269.00', '3269', '%99', '3269', '3269', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3270', '3270.00', '3270.00', '3270', '%99', '3270', '3270', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3271', '3271.00', '3271.00', '3271', '%99', '3271', '3271', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3272', '3272.00', '3272.00', '3272', '%99', '3272', '3272', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3273', '3273.00', '3273.00', '3273', '%99', '3273', '3273', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3274', '3274.00', '3274.00', '3274', '%99', '3274', '3274', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3275', '3275.00', '3275.00', '3275', '%99', '3275', '3275', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3276', '3276.00', '3276.00', '3276', '%99', '3276', '3276', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3277', '3277.00', '3277.00', '3277', '%99', '3277', '3277', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3278', '3278.00', '3278.00', '3278', '%99', '3278', '3278', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3279', '3279.00', '3279.00', '3279', '%99', '3279', '3279', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3280', '3280.00', '3280.00', '3280', '%99', '3280', '3280', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3281', '3281.00', '3281.00', '3281', '%99', '3281', '3281', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3282', '3282.00', '3282.00', '3282', '%99', '3282', '3282', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3283', '3283.00', '3283.00', '3283', '%99', '3283', '3283', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3284', '3284.00', '3284.00', '3284', '%99', '3284', '3284', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3285', '3285.00', '3285.00', '3285', '%99', '3285', '3285', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3286', '3286.00', '3286.00', '3286', '%99', '3286', '3286', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3287', '3287.00', '3287.00', '3287', '%99', '3287', '3287', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3288', '3288.00', '3288.00', '3288', '%99', '3288', '3288', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3289', '3289.00', '3289.00', '3289', '%99', '3289', '3289', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3290', '3290.00', '3290.00', '3290', '%99', '3290', '3290', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3291', '3291.00', '3291.00', '3291', '%99', '3291', '3291', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3292', '3292.00', '3292.00', '3292', '%99', '3292', '3292', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3293', '3293.00', '3293.00', '3293', '%99', '3293', '3293', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3294', '3294.00', '3294.00', '3294', '%99', '3294', '3294', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3295', '3295.00', '3295.00', '3295', '%99', '3295', '3295', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3296', '3296.00', '3296.00', '3296', '%99', '3296', '3296', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3297', '3297.00', '3297.00', '3297', '%99', '3297', '3297', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3298', '3298.00', '3298.00', '3298', '%99', '3298', '3298', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3299', '3299.00', '3299.00', '3299', '%99', '3299', '3299', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3300', '3300.00', '3300.00', '3300', '%99', '3300', '3300', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3301', '3301.00', '3301.00', '3301', '%99', '3301', '3301', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3302', '3302.00', '3302.00', '3302', '%99', '3302', '3302', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3303', '3303.00', '3303.00', '3303', '%99', '3303', '3303', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3304', '3304.00', '3304.00', '3304', '%99', '3304', '3304', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3305', '3305.00', '3305.00', '3305', '%99', '3305', '3305', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3306', '3306.00', '3306.00', '3306', '%99', '3306', '3306', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3307', '3307.00', '3307.00', '3307', '%99', '3307', '3307', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3308', '3308.00', '3308.00', '3308', '%99', '3308', '3308', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3309', '3309.00', '3309.00', '3309', '%99', '3309', '3309', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3310', '3310.00', '3310.00', '3310', '%99', '3310', '3310', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3311', '3311.00', '3311.00', '3311', '%99', '3311', '3311', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3312', '3312.00', '3312.00', '3312', '%99', '3312', '3312', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3313', '3313.00', '3313.00', '3313', '%99', '3313', '3313', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3314', '3314.00', '3314.00', '3314', '%99', '3314', '3314', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3315', '3315.00', '3315.00', '3315', '%99', '3315', '3315', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3316', '3316.00', '3316.00', '3316', '%99', '3316', '3316', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3317', '3317.00', '3317.00', '3317', '%99', '3317', '3317', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3318', '3318.00', '3318.00', '3318', '%99', '3318', '3318', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3319', '3319.00', '3319.00', '3319', '%99', '3319', '3319', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3320', '3320.00', '3320.00', '3320', '%99', '3320', '3320', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3321', '3321.00', '3321.00', '3321', '%99', '3321', '3321', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3322', '3322.00', '3322.00', '3322', '%99', '3322', '3322', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3323', '3323.00', '3323.00', '3323', '%99', '3323', '3323', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3324', '3324.00', '3324.00', '3324', '%99', '3324', '3324', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3325', '3325.00', '3325.00', '3325', '%99', '3325', '3325', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3326', '3326.00', '3326.00', '3326', '%99', '3326', '3326', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3327', '3327.00', '3327.00', '3327', '%99', '3327', '3327', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3328', '3328.00', '3328.00', '3328', '%99', '3328', '3328', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3329', '3329.00', '3329.00', '3329', '%99', '3329', '3329', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3330', '3330.00', '3330.00', '3330', '%99', '3330', '3330', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3331', '3331.00', '3331.00', '3331', '%99', '3331', '3331', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3332', '3332.00', '3332.00', '3332', '%99', '3332', '3332', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3333', '3333.00', '3333.00', '3333', '%99', '3333', '3333', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3334', '3334.00', '3334.00', '3334', '%99', '3334', '3334', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3335', '3335.00', '3335.00', '3335', '%99', '3335', '3335', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3336', '3336.00', '3336.00', '3336', '%99', '3336', '3336', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3337', '3337.00', '3337.00', '3337', '%99', '3337', '3337', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3338', '3338.00', '3338.00', '3338', '%99', '3338', '3338', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3339', '3339.00', '3339.00', '3339', '%99', '3339', '3339', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3340', '3340.00', '3340.00', '3340', '%99', '3340', '3340', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3341', '3341.00', '3341.00', '3341', '%99', '3341', '3341', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3342', '3342.00', '3342.00', '3342', '%99', '3342', '3342', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3343', '3343.00', '3343.00', '3343', '%99', '3343', '3343', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3344', '3344.00', '3344.00', '3344', '%99', '3344', '3344', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3345', '3345.00', '3345.00', '3345', '%99', '3345', '3345', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3346', '3346.00', '3346.00', '3346', '%99', '3346', '3346', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3347', '3347.00', '3347.00', '3347', '%99', '3347', '3347', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3348', '3348.00', '3348.00', '3348', '%99', '3348', '3348', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3349', '3349.00', '3349.00', '3349', '%99', '3349', '3349', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3350', '3350.00', '3350.00', '3350', '%99', '3350', '3350', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3351', '3351.00', '3351.00', '3351', '%99', '3351', '3351', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3352', '3352.00', '3352.00', '3352', '%99', '3352', '3352', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3353', '3353.00', '3353.00', '3353', '%99', '3353', '3353', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3354', '3354.00', '3354.00', '3354', '%99', '3354', '3354', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3355', '3355.00', '3355.00', '3355', '%99', '3355', '3355', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3356', '3356.00', '3356.00', '3356', '%99', '3356', '3356', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3357', '3357.00', '3357.00', '3357', '%99', '3357', '3357', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3358', '3358.00', '3358.00', '3358', '%99', '3358', '3358', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3359', '3359.00', '3359.00', '3359', '%99', '3359', '3359', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3360', '3360.00', '3360.00', '3360', '%99', '3360', '3360', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3361', '3361.00', '3361.00', '3361', '%99', '3361', '3361', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3362', '3362.00', '3362.00', '3362', '%99', '3362', '3362', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3363', '3363.00', '3363.00', '3363', '%99', '3363', '3363', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3364', '3364.00', '3364.00', '3364', '%99', '3364', '3364', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3365', '3365.00', '3365.00', '3365', '%99', '3365', '3365', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3366', '3366.00', '3366.00', '3366', '%99', '3366', '3366', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3367', '3367.00', '3367.00', '3367', '%99', '3367', '3367', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3368', '3368.00', '3368.00', '3368', '%99', '3368', '3368', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3369', '3369.00', '3369.00', '3369', '%99', '3369', '3369', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3370', '3370.00', '3370.00', '3370', '%99', '3370', '3370', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3371', '3371.00', '3371.00', '3371', '%99', '3371', '3371', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3372', '3372.00', '3372.00', '3372', '%99', '3372', '3372', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3373', '3373.00', '3373.00', '3373', '%99', '3373', '3373', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3374', '3374.00', '3374.00', '3374', '%99', '3374', '3374', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3375', '3375.00', '3375.00', '3375', '%99', '3375', '3375', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3376', '3376.00', '3376.00', '3376', '%99', '3376', '3376', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3377', '3377.00', '3377.00', '3377', '%99', '3377', '3377', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3378', '3378.00', '3378.00', '3378', '%99', '3378', '3378', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3379', '3379.00', '3379.00', '3379', '%99', '3379', '3379', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3380', '3380.00', '3380.00', '3380', '%99', '3380', '3380', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3381', '3381.00', '3381.00', '3381', '%99', '3381', '3381', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3382', '3382.00', '3382.00', '3382', '%99', '3382', '3382', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3383', '3383.00', '3383.00', '3383', '%99', '3383', '3383', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3384', '3384.00', '3384.00', '3384', '%99', '3384', '3384', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3385', '3385.00', '3385.00', '3385', '%99', '3385', '3385', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3386', '3386.00', '3386.00', '3386', '%99', '3386', '3386', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3387', '3387.00', '3387.00', '3387', '%99', '3387', '3387', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3388', '3388.00', '3388.00', '3388', '%99', '3388', '3388', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3389', '3389.00', '3389.00', '3389', '%99', '3389', '3389', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3390', '3390.00', '3390.00', '3390', '%99', '3390', '3390', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3391', '3391.00', '3391.00', '3391', '%99', '3391', '3391', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3392', '3392.00', '3392.00', '3392', '%99', '3392', '3392', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3393', '3393.00', '3393.00', '3393', '%99', '3393', '3393', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3394', '3394.00', '3394.00', '3394', '%99', '3394', '3394', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3395', '3395.00', '3395.00', '3395', '%99', '3395', '3395', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3396', '3396.00', '3396.00', '3396', '%99', '3396', '3396', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3397', '3397.00', '3397.00', '3397', '%99', '3397', '3397', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3398', '3398.00', '3398.00', '3398', '%99', '3398', '3398', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3399', '3399.00', '3399.00', '3399', '%99', '3399', '3399', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3400', '3400.00', '3400.00', '3400', '%99', '3400', '3400', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3401', '3401.00', '3401.00', '3401', '%99', '3401', '3401', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3402', '3402.00', '3402.00', '3402', '%99', '3402', '3402', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3403', '3403.00', '3403.00', '3403', '%99', '3403', '3403', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3404', '3404.00', '3404.00', '3404', '%99', '3404', '3404', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3405', '3405.00', '3405.00', '3405', '%99', '3405', '3405', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3406', '3406.00', '3406.00', '3406', '%99', '3406', '3406', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3407', '3407.00', '3407.00', '3407', '%99', '3407', '3407', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3408', '3408.00', '3408.00', '3408', '%99', '3408', '3408', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3409', '3409.00', '3409.00', '3409', '%99', '3409', '3409', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3410', '3410.00', '3410.00', '3410', '%99', '3410', '3410', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3411', '3411.00', '3411.00', '3411', '%99', '3411', '3411', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3412', '3412.00', '3412.00', '3412', '%99', '3412', '3412', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3413', '3413.00', '3413.00', '3413', '%99', '3413', '3413', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3414', '3414.00', '3414.00', '3414', '%99', '3414', '3414', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3415', '3415.00', '3415.00', '3415', '%99', '3415', '3415', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3416', '3416.00', '3416.00', '3416', '%99', '3416', '3416', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3417', '3417.00', '3417.00', '3417', '%99', '3417', '3417', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3418', '3418.00', '3418.00', '3418', '%99', '3418', '3418', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3419', '3419.00', '3419.00', '3419', '%99', '3419', '3419', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3420', '3420.00', '3420.00', '3420', '%99', '3420', '3420', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3421', '3421.00', '3421.00', '3421', '%99', '3421', '3421', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3422', '3422.00', '3422.00', '3422', '%99', '3422', '3422', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3423', '3423.00', '3423.00', '3423', '%99', '3423', '3423', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3424', '3424.00', '3424.00', '3424', '%99', '3424', '3424', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3425', '3425.00', '3425.00', '3425', '%99', '3425', '3425', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3426', '3426.00', '3426.00', '3426', '%99', '3426', '3426', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3427', '3427.00', '3427.00', '3427', '%99', '3427', '3427', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3428', '3428.00', '3428.00', '3428', '%99', '3428', '3428', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3429', '3429.00', '3429.00', '3429', '%99', '3429', '3429', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3430', '3430.00', '3430.00', '3430', '%99', '3430', '3430', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3431', '3431.00', '3431.00', '3431', '%99', '3431', '3431', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3432', '3432.00', '3432.00', '3432', '%99', '3432', '3432', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3433', '3433.00', '3433.00', '3433', '%99', '3433', '3433', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3434', '3434.00', '3434.00', '3434', '%99', '3434', '3434', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3435', '3435.00', '3435.00', '3435', '%99', '3435', '3435', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3436', '3436.00', '3436.00', '3436', '%99', '3436', '3436', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3437', '3437.00', '3437.00', '3437', '%99', '3437', '3437', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3438', '3438.00', '3438.00', '3438', '%99', '3438', '3438', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3439', '3439.00', '3439.00', '3439', '%99', '3439', '3439', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3440', '3440.00', '3440.00', '3440', '%99', '3440', '3440', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3441', '3441.00', '3441.00', '3441', '%99', '3441', '3441', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3442', '3442.00', '3442.00', '3442', '%99', '3442', '3442', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3443', '3443.00', '3443.00', '3443', '%99', '3443', '3443', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3444', '3444.00', '3444.00', '3444', '%99', '3444', '3444', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3445', '3445.00', '3445.00', '3445', '%99', '3445', '3445', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3446', '3446.00', '3446.00', '3446', '%99', '3446', '3446', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3447', '3447.00', '3447.00', '3447', '%99', '3447', '3447', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3448', '3448.00', '3448.00', '3448', '%99', '3448', '3448', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3449', '3449.00', '3449.00', '3449', '%99', '3449', '3449', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3450', '3450.00', '3450.00', '3450', '%99', '3450', '3450', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3451', '3451.00', '3451.00', '3451', '%99', '3451', '3451', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3452', '3452.00', '3452.00', '3452', '%99', '3452', '3452', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3453', '3453.00', '3453.00', '3453', '%99', '3453', '3453', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3454', '3454.00', '3454.00', '3454', '%99', '3454', '3454', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3455', '3455.00', '3455.00', '3455', '%99', '3455', '3455', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3456', '3456.00', '3456.00', '3456', '%99', '3456', '3456', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3457', '3457.00', '3457.00', '3457', '%99', '3457', '3457', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3458', '3458.00', '3458.00', '3458', '%99', '3458', '3458', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3459', '3459.00', '3459.00', '3459', '%99', '3459', '3459', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3460', '3460.00', '3460.00', '3460', '%99', '3460', '3460', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3461', '3461.00', '3461.00', '3461', '%99', '3461', '3461', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3462', '3462.00', '3462.00', '3462', '%99', '3462', '3462', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3463', '3463.00', '3463.00', '3463', '%99', '3463', '3463', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3464', '3464.00', '3464.00', '3464', '%99', '3464', '3464', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3465', '3465.00', '3465.00', '3465', '%99', '3465', '3465', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3466', '3466.00', '3466.00', '3466', '%99', '3466', '3466', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3467', '3467.00', '3467.00', '3467', '%99', '3467', '3467', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3468', '3468.00', '3468.00', '3468', '%99', '3468', '3468', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3469', '3469.00', '3469.00', '3469', '%99', '3469', '3469', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3470', '3470.00', '3470.00', '3470', '%99', '3470', '3470', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3471', '3471.00', '3471.00', '3471', '%99', '3471', '3471', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3472', '3472.00', '3472.00', '3472', '%99', '3472', '3472', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3473', '3473.00', '3473.00', '3473', '%99', '3473', '3473', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3474', '3474.00', '3474.00', '3474', '%99', '3474', '3474', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3475', '3475.00', '3475.00', '3475', '%99', '3475', '3475', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3476', '3476.00', '3476.00', '3476', '%99', '3476', '3476', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3477', '3477.00', '3477.00', '3477', '%99', '3477', '3477', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3478', '3478.00', '3478.00', '3478', '%99', '3478', '3478', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3479', '3479.00', '3479.00', '3479', '%99', '3479', '3479', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3480', '3480.00', '3480.00', '3480', '%99', '3480', '3480', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3481', '3481.00', '3481.00', '3481', '%99', '3481', '3481', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3482', '3482.00', '3482.00', '3482', '%99', '3482', '3482', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3483', '3483.00', '3483.00', '3483', '%99', '3483', '3483', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3484', '3484.00', '3484.00', '3484', '%99', '3484', '3484', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3485', '3485.00', '3485.00', '3485', '%99', '3485', '3485', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3486', '3486.00', '3486.00', '3486', '%99', '3486', '3486', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3487', '3487.00', '3487.00', '3487', '%99', '3487', '3487', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3488', '3488.00', '3488.00', '3488', '%99', '3488', '3488', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3489', '3489.00', '3489.00', '3489', '%99', '3489', '3489', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3490', '3490.00', '3490.00', '3490', '%99', '3490', '3490', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3491', '3491.00', '3491.00', '3491', '%99', '3491', '3491', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3492', '3492.00', '3492.00', '3492', '%99', '3492', '3492', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3493', '3493.00', '3493.00', '3493', '%99', '3493', '3493', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3494', '3494.00', '3494.00', '3494', '%99', '3494', '3494', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3495', '3495.00', '3495.00', '3495', '%99', '3495', '3495', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3496', '3496.00', '3496.00', '3496', '%99', '3496', '3496', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3497', '3497.00', '3497.00', '3497', '%99', '3497', '3497', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3498', '3498.00', '3498.00', '3498', '%99', '3498', '3498', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3499', '3499.00', '3499.00', '3499', '%99', '3499', '3499', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3500', '3500.00', '3500.00', '3500', '%99', '3500', '3500', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3501', '3501.00', '3501.00', '3501', '%99', '3501', '3501', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3502', '3502.00', '3502.00', '3502', '%99', '3502', '3502', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3503', '3503.00', '3503.00', '3503', '%99', '3503', '3503', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3504', '3504.00', '3504.00', '3504', '%99', '3504', '3504', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3505', '3505.00', '3505.00', '3505', '%99', '3505', '3505', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3506', '3506.00', '3506.00', '3506', '%99', '3506', '3506', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3507', '3507.00', '3507.00', '3507', '%99', '3507', '3507', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3508', '3508.00', '3508.00', '3508', '%99', '3508', '3508', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3509', '3509.00', '3509.00', '3509', '%99', '3509', '3509', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3510', '3510.00', '3510.00', '3510', '%99', '3510', '3510', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3511', '3511.00', '3511.00', '3511', '%99', '3511', '3511', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3512', '3512.00', '3512.00', '3512', '%99', '3512', '3512', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3513', '3513.00', '3513.00', '3513', '%99', '3513', '3513', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3514', '3514.00', '3514.00', '3514', '%99', '3514', '3514', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3515', '3515.00', '3515.00', '3515', '%99', '3515', '3515', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3516', '3516.00', '3516.00', '3516', '%99', '3516', '3516', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3517', '3517.00', '3517.00', '3517', '%99', '3517', '3517', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3518', '3518.00', '3518.00', '3518', '%99', '3518', '3518', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3519', '3519.00', '3519.00', '3519', '%99', '3519', '3519', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3520', '3520.00', '3520.00', '3520', '%99', '3520', '3520', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3521', '3521.00', '3521.00', '3521', '%99', '3521', '3521', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3522', '3522.00', '3522.00', '3522', '%99', '3522', '3522', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3523', '3523.00', '3523.00', '3523', '%99', '3523', '3523', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3524', '3524.00', '3524.00', '3524', '%99', '3524', '3524', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3525', '3525.00', '3525.00', '3525', '%99', '3525', '3525', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3526', '3526.00', '3526.00', '3526', '%99', '3526', '3526', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3527', '3527.00', '3527.00', '3527', '%99', '3527', '3527', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3528', '3528.00', '3528.00', '3528', '%99', '3528', '3528', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3529', '3529.00', '3529.00', '3529', '%99', '3529', '3529', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3530', '3530.00', '3530.00', '3530', '%99', '3530', '3530', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3531', '3531.00', '3531.00', '3531', '%99', '3531', '3531', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3532', '3532.00', '3532.00', '3532', '%99', '3532', '3532', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3533', '3533.00', '3533.00', '3533', '%99', '3533', '3533', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3534', '3534.00', '3534.00', '3534', '%99', '3534', '3534', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3535', '3535.00', '3535.00', '3535', '%99', '3535', '3535', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3536', '3536.00', '3536.00', '3536', '%99', '3536', '3536', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3537', '3537.00', '3537.00', '3537', '%99', '3537', '3537', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3538', '3538.00', '3538.00', '3538', '%99', '3538', '3538', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3539', '3539.00', '3539.00', '3539', '%99', '3539', '3539', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3540', '3540.00', '3540.00', '3540', '%99', '3540', '3540', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3541', '3541.00', '3541.00', '3541', '%99', '3541', '3541', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3542', '3542.00', '3542.00', '3542', '%99', '3542', '3542', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3543', '3543.00', '3543.00', '3543', '%99', '3543', '3543', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3544', '3544.00', '3544.00', '3544', '%99', '3544', '3544', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3545', '3545.00', '3545.00', '3545', '%99', '3545', '3545', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3546', '3546.00', '3546.00', '3546', '%99', '3546', '3546', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3547', '3547.00', '3547.00', '3547', '%99', '3547', '3547', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3548', '3548.00', '3548.00', '3548', '%99', '3548', '3548', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3549', '3549.00', '3549.00', '3549', '%99', '3549', '3549', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3550', '3550.00', '3550.00', '3550', '%99', '3550', '3550', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3551', '3551.00', '3551.00', '3551', '%99', '3551', '3551', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3552', '3552.00', '3552.00', '3552', '%99', '3552', '3552', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3553', '3553.00', '3553.00', '3553', '%99', '3553', '3553', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3554', '3554.00', '3554.00', '3554', '%99', '3554', '3554', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3555', '3555.00', '3555.00', '3555', '%99', '3555', '3555', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3556', '3556.00', '3556.00', '3556', '%99', '3556', '3556', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3557', '3557.00', '3557.00', '3557', '%99', '3557', '3557', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3558', '3558.00', '3558.00', '3558', '%99', '3558', '3558', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3559', '3559.00', '3559.00', '3559', '%99', '3559', '3559', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3560', '3560.00', '3560.00', '3560', '%99', '3560', '3560', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3561', '3561.00', '3561.00', '3561', '%99', '3561', '3561', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3562', '3562.00', '3562.00', '3562', '%99', '3562', '3562', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3563', '3563.00', '3563.00', '3563', '%99', '3563', '3563', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3564', '3564.00', '3564.00', '3564', '%99', '3564', '3564', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3565', '3565.00', '3565.00', '3565', '%99', '3565', '3565', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3566', '3566.00', '3566.00', '3566', '%99', '3566', '3566', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3567', '3567.00', '3567.00', '3567', '%99', '3567', '3567', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3568', '3568.00', '3568.00', '3568', '%99', '3568', '3568', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3569', '3569.00', '3569.00', '3569', '%99', '3569', '3569', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3570', '3570.00', '3570.00', '3570', '%99', '3570', '3570', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3571', '3571.00', '3571.00', '3571', '%99', '3571', '3571', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3572', '3572.00', '3572.00', '3572', '%99', '3572', '3572', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3573', '3573.00', '3573.00', '3573', '%99', '3573', '3573', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3574', '3574.00', '3574.00', '3574', '%99', '3574', '3574', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3575', '3575.00', '3575.00', '3575', '%99', '3575', '3575', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3576', '3576.00', '3576.00', '3576', '%99', '3576', '3576', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3577', '3577.00', '3577.00', '3577', '%99', '3577', '3577', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3578', '3578.00', '3578.00', '3578', '%99', '3578', '3578', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3579', '3579.00', '3579.00', '3579', '%99', '3579', '3579', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3580', '3580.00', '3580.00', '3580', '%99', '3580', '3580', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3581', '3581.00', '3581.00', '3581', '%99', '3581', '3581', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3582', '3582.00', '3582.00', '3582', '%99', '3582', '3582', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3583', '3583.00', '3583.00', '3583', '%99', '3583', '3583', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3584', '3584.00', '3584.00', '3584', '%99', '3584', '3584', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3585', '3585.00', '3585.00', '3585', '%99', '3585', '3585', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3586', '3586.00', '3586.00', '3586', '%99', '3586', '3586', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3587', '3587.00', '3587.00', '3587', '%99', '3587', '3587', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3588', '3588.00', '3588.00', '3588', '%99', '3588', '3588', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3589', '3589.00', '3589.00', '3589', '%99', '3589', '3589', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3590', '3590.00', '3590.00', '3590', '%99', '3590', '3590', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3591', '3591.00', '3591.00', '3591', '%99', '3591', '3591', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3592', '3592.00', '3592.00', '3592', '%99', '3592', '3592', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3593', '3593.00', '3593.00', '3593', '%99', '3593', '3593', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3594', '3594.00', '3594.00', '3594', '%99', '3594', '3594', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3595', '3595.00', '3595.00', '3595', '%99', '3595', '3595', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3596', '3596.00', '3596.00', '3596', '%99', '3596', '3596', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3597', '3597.00', '3597.00', '3597', '%99', '3597', '3597', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3598', '3598.00', '3598.00', '3598', '%99', '3598', '3598', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3599', '3599.00', '3599.00', '3599', '%99', '3599', '3599', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3600', '3600.00', '3600.00', '3600', '%99', '3600', '3600', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3601', '3601.00', '3601.00', '3601', '%99', '3601', '3601', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3602', '3602.00', '3602.00', '3602', '%99', '3602', '3602', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3603', '3603.00', '3603.00', '3603', '%99', '3603', '3603', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3604', '3604.00', '3604.00', '3604', '%99', '3604', '3604', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3605', '3605.00', '3605.00', '3605', '%99', '3605', '3605', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3606', '3606.00', '3606.00', '3606', '%99', '3606', '3606', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3607', '3607.00', '3607.00', '3607', '%99', '3607', '3607', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3608', '3608.00', '3608.00', '3608', '%99', '3608', '3608', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3609', '3609.00', '3609.00', '3609', '%99', '3609', '3609', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3610', '3610.00', '3610.00', '3610', '%99', '3610', '3610', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3611', '3611.00', '3611.00', '3611', '%99', '3611', '3611', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3612', '3612.00', '3612.00', '3612', '%99', '3612', '3612', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3613', '3613.00', '3613.00', '3613', '%99', '3613', '3613', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3614', '3614.00', '3614.00', '3614', '%99', '3614', '3614', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3615', '3615.00', '3615.00', '3615', '%99', '3615', '3615', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3616', '3616.00', '3616.00', '3616', '%99', '3616', '3616', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3617', '3617.00', '3617.00', '3617', '%99', '3617', '3617', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3618', '3618.00', '3618.00', '3618', '%99', '3618', '3618', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3619', '3619.00', '3619.00', '3619', '%99', '3619', '3619', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3620', '3620.00', '3620.00', '3620', '%99', '3620', '3620', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3621', '3621.00', '3621.00', '3621', '%99', '3621', '3621', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3622', '3622.00', '3622.00', '3622', '%99', '3622', '3622', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3623', '3623.00', '3623.00', '3623', '%99', '3623', '3623', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3624', '3624.00', '3624.00', '3624', '%99', '3624', '3624', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3625', '3625.00', '3625.00', '3625', '%99', '3625', '3625', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3626', '3626.00', '3626.00', '3626', '%99', '3626', '3626', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3627', '3627.00', '3627.00', '3627', '%99', '3627', '3627', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3628', '3628.00', '3628.00', '3628', '%99', '3628', '3628', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3629', '3629.00', '3629.00', '3629', '%99', '3629', '3629', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3630', '3630.00', '3630.00', '3630', '%99', '3630', '3630', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3631', '3631.00', '3631.00', '3631', '%99', '3631', '3631', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3632', '3632.00', '3632.00', '3632', '%99', '3632', '3632', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3633', '3633.00', '3633.00', '3633', '%99', '3633', '3633', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3634', '3634.00', '3634.00', '3634', '%99', '3634', '3634', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3635', '3635.00', '3635.00', '3635', '%99', '3635', '3635', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3636', '3636.00', '3636.00', '3636', '%99', '3636', '3636', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3637', '3637.00', '3637.00', '3637', '%99', '3637', '3637', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3638', '3638.00', '3638.00', '3638', '%99', '3638', '3638', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3639', '3639.00', '3639.00', '3639', '%99', '3639', '3639', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3640', '3640.00', '3640.00', '3640', '%99', '3640', '3640', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3641', '3641.00', '3641.00', '3641', '%99', '3641', '3641', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3642', '3642.00', '3642.00', '3642', '%99', '3642', '3642', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3643', '3643.00', '3643.00', '3643', '%99', '3643', '3643', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3644', '3644.00', '3644.00', '3644', '%99', '3644', '3644', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3645', '3645.00', '3645.00', '3645', '%99', '3645', '3645', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3646', '3646.00', '3646.00', '3646', '%99', '3646', '3646', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3647', '3647.00', '3647.00', '3647', '%99', '3647', '3647', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3648', '3648.00', '3648.00', '3648', '%99', '3648', '3648', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3649', '3649.00', '3649.00', '3649', '%99', '3649', '3649', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3650', '3650.00', '3650.00', '3650', '%99', '3650', '3650', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3651', '3651.00', '3651.00', '3651', '%99', '3651', '3651', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3652', '3652.00', '3652.00', '3652', '%99', '3652', '3652', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3653', '3653.00', '3653.00', '3653', '%99', '3653', '3653', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3654', '3654.00', '3654.00', '3654', '%99', '3654', '3654', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3655', '3655.00', '3655.00', '3655', '%99', '3655', '3655', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3656', '3656.00', '3656.00', '3656', '%99', '3656', '3656', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3657', '3657.00', '3657.00', '3657', '%99', '3657', '3657', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3658', '3658.00', '3658.00', '3658', '%99', '3658', '3658', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3659', '3659.00', '3659.00', '3659', '%99', '3659', '3659', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3660', '3660.00', '3660.00', '3660', '%99', '3660', '3660', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3661', '3661.00', '3661.00', '3661', '%99', '3661', '3661', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3662', '3662.00', '3662.00', '3662', '%99', '3662', '3662', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3663', '3663.00', '3663.00', '3663', '%99', '3663', '3663', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3664', '3664.00', '3664.00', '3664', '%99', '3664', '3664', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3665', '3665.00', '3665.00', '3665', '%99', '3665', '3665', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3666', '3666.00', '3666.00', '3666', '%99', '3666', '3666', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3667', '3667.00', '3667.00', '3667', '%99', '3667', '3667', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3668', '3668.00', '3668.00', '3668', '%99', '3668', '3668', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3669', '3669.00', '3669.00', '3669', '%99', '3669', '3669', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3670', '3670.00', '3670.00', '3670', '%99', '3670', '3670', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3671', '3671.00', '3671.00', '3671', '%99', '3671', '3671', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3672', '3672.00', '3672.00', '3672', '%99', '3672', '3672', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3673', '3673.00', '3673.00', '3673', '%99', '3673', '3673', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3674', '3674.00', '3674.00', '3674', '%99', '3674', '3674', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3675', '3675.00', '3675.00', '3675', '%99', '3675', '3675', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3676', '3676.00', '3676.00', '3676', '%99', '3676', '3676', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3677', '3677.00', '3677.00', '3677', '%99', '3677', '3677', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3678', '3678.00', '3678.00', '3678', '%99', '3678', '3678', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3679', '3679.00', '3679.00', '3679', '%99', '3679', '3679', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3680', '3680.00', '3680.00', '3680', '%99', '3680', '3680', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3681', '3681.00', '3681.00', '3681', '%99', '3681', '3681', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3682', '3682.00', '3682.00', '3682', '%99', '3682', '3682', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3683', '3683.00', '3683.00', '3683', '%99', '3683', '3683', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3684', '3684.00', '3684.00', '3684', '%99', '3684', '3684', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3685', '3685.00', '3685.00', '3685', '%99', '3685', '3685', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3686', '3686.00', '3686.00', '3686', '%99', '3686', '3686', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3687', '3687.00', '3687.00', '3687', '%99', '3687', '3687', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3688', '3688.00', '3688.00', '3688', '%99', '3688', '3688', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3689', '3689.00', '3689.00', '3689', '%99', '3689', '3689', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3690', '3690.00', '3690.00', '3690', '%99', '3690', '3690', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3691', '3691.00', '3691.00', '3691', '%99', '3691', '3691', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3692', '3692.00', '3692.00', '3692', '%99', '3692', '3692', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3693', '3693.00', '3693.00', '3693', '%99', '3693', '3693', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3694', '3694.00', '3694.00', '3694', '%99', '3694', '3694', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3695', '3695.00', '3695.00', '3695', '%99', '3695', '3695', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3696', '3696.00', '3696.00', '3696', '%99', '3696', '3696', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3697', '3697.00', '3697.00', '3697', '%99', '3697', '3697', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3698', '3698.00', '3698.00', '3698', '%99', '3698', '3698', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3699', '3699.00', '3699.00', '3699', '%99', '3699', '3699', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3700', '3700.00', '3700.00', '3700', '%99', '3700', '3700', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3701', '3701.00', '3701.00', '3701', '%99', '3701', '3701', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3702', '3702.00', '3702.00', '3702', '%99', '3702', '3702', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3703', '3703.00', '3703.00', '3703', '%99', '3703', '3703', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3704', '3704.00', '3704.00', '3704', '%99', '3704', '3704', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3705', '3705.00', '3705.00', '3705', '%99', '3705', '3705', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3706', '3706.00', '3706.00', '3706', '%99', '3706', '3706', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3707', '3707.00', '3707.00', '3707', '%99', '3707', '3707', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3708', '3708.00', '3708.00', '3708', '%99', '3708', '3708', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3709', '3709.00', '3709.00', '3709', '%99', '3709', '3709', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3710', '3710.00', '3710.00', '3710', '%99', '3710', '3710', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3711', '3711.00', '3711.00', '3711', '%99', '3711', '3711', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3712', '3712.00', '3712.00', '3712', '%99', '3712', '3712', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3713', '3713.00', '3713.00', '3713', '%99', '3713', '3713', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3714', '3714.00', '3714.00', '3714', '%99', '3714', '3714', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3715', '3715.00', '3715.00', '3715', '%99', '3715', '3715', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3716', '3716.00', '3716.00', '3716', '%99', '3716', '3716', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3717', '3717.00', '3717.00', '3717', '%99', '3717', '3717', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3718', '3718.00', '3718.00', '3718', '%99', '3718', '3718', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3719', '3719.00', '3719.00', '3719', '%99', '3719', '3719', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3720', '3720.00', '3720.00', '3720', '%99', '3720', '3720', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3721', '3721.00', '3721.00', '3721', '%99', '3721', '3721', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3722', '3722.00', '3722.00', '3722', '%99', '3722', '3722', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3723', '3723.00', '3723.00', '3723', '%99', '3723', '3723', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3724', '3724.00', '3724.00', '3724', '%99', '3724', '3724', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3725', '3725.00', '3725.00', '3725', '%99', '3725', '3725', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3726', '3726.00', '3726.00', '3726', '%99', '3726', '3726', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3727', '3727.00', '3727.00', '3727', '%99', '3727', '3727', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3728', '3728.00', '3728.00', '3728', '%99', '3728', '3728', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3729', '3729.00', '3729.00', '3729', '%99', '3729', '3729', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3730', '3730.00', '3730.00', '3730', '%99', '3730', '3730', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3731', '3731.00', '3731.00', '3731', '%99', '3731', '3731', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3732', '3732.00', '3732.00', '3732', '%99', '3732', '3732', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3733', '3733.00', '3733.00', '3733', '%99', '3733', '3733', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3734', '3734.00', '3734.00', '3734', '%99', '3734', '3734', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3735', '3735.00', '3735.00', '3735', '%99', '3735', '3735', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3736', '3736.00', '3736.00', '3736', '%99', '3736', '3736', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3737', '3737.00', '3737.00', '3737', '%99', '3737', '3737', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3738', '3738.00', '3738.00', '3738', '%99', '3738', '3738', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3739', '3739.00', '3739.00', '3739', '%99', '3739', '3739', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3740', '3740.00', '3740.00', '3740', '%99', '3740', '3740', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3741', '3741.00', '3741.00', '3741', '%99', '3741', '3741', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3742', '3742.00', '3742.00', '3742', '%99', '3742', '3742', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3743', '3743.00', '3743.00', '3743', '%99', '3743', '3743', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3744', '3744.00', '3744.00', '3744', '%99', '3744', '3744', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3745', '3745.00', '3745.00', '3745', '%99', '3745', '3745', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3746', '3746.00', '3746.00', '3746', '%99', '3746', '3746', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3747', '3747.00', '3747.00', '3747', '%99', '3747', '3747', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3748', '3748.00', '3748.00', '3748', '%99', '3748', '3748', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3749', '3749.00', '3749.00', '3749', '%99', '3749', '3749', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3750', '3750.00', '3750.00', '3750', '%99', '3750', '3750', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3751', '3751.00', '3751.00', '3751', '%99', '3751', '3751', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3752', '3752.00', '3752.00', '3752', '%99', '3752', '3752', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3753', '3753.00', '3753.00', '3753', '%99', '3753', '3753', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3754', '3754.00', '3754.00', '3754', '%99', '3754', '3754', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3755', '3755.00', '3755.00', '3755', '%99', '3755', '3755', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3756', '3756.00', '3756.00', '3756', '%99', '3756', '3756', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3757', '3757.00', '3757.00', '3757', '%99', '3757', '3757', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3758', '3758.00', '3758.00', '3758', '%99', '3758', '3758', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3759', '3759.00', '3759.00', '3759', '%99', '3759', '3759', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3760', '3760.00', '3760.00', '3760', '%99', '3760', '3760', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3761', '3761.00', '3761.00', '3761', '%99', '3761', '3761', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3762', '3762.00', '3762.00', '3762', '%99', '3762', '3762', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3763', '3763.00', '3763.00', '3763', '%99', '3763', '3763', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3764', '3764.00', '3764.00', '3764', '%99', '3764', '3764', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3765', '3765.00', '3765.00', '3765', '%99', '3765', '3765', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3766', '3766.00', '3766.00', '3766', '%99', '3766', '3766', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3767', '3767.00', '3767.00', '3767', '%99', '3767', '3767', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3768', '3768.00', '3768.00', '3768', '%99', '3768', '3768', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3769', '3769.00', '3769.00', '3769', '%99', '3769', '3769', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3770', '3770.00', '3770.00', '3770', '%99', '3770', '3770', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3771', '3771.00', '3771.00', '3771', '%99', '3771', '3771', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3772', '3772.00', '3772.00', '3772', '%99', '3772', '3772', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3773', '3773.00', '3773.00', '3773', '%99', '3773', '3773', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3774', '3774.00', '3774.00', '3774', '%99', '3774', '3774', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3775', '3775.00', '3775.00', '3775', '%99', '3775', '3775', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3776', '3776.00', '3776.00', '3776', '%99', '3776', '3776', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3777', '3777.00', '3777.00', '3777', '%99', '3777', '3777', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3778', '3778.00', '3778.00', '3778', '%99', '3778', '3778', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3779', '3779.00', '3779.00', '3779', '%99', '3779', '3779', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3780', '3780.00', '3780.00', '3780', '%99', '3780', '3780', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3781', '3781.00', '3781.00', '3781', '%99', '3781', '3781', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3782', '3782.00', '3782.00', '3782', '%99', '3782', '3782', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3783', '3783.00', '3783.00', '3783', '%99', '3783', '3783', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3784', '3784.00', '3784.00', '3784', '%99', '3784', '3784', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3785', '3785.00', '3785.00', '3785', '%99', '3785', '3785', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3786', '3786.00', '3786.00', '3786', '%99', '3786', '3786', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3787', '3787.00', '3787.00', '3787', '%99', '3787', '3787', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3788', '3788.00', '3788.00', '3788', '%99', '3788', '3788', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3789', '3789.00', '3789.00', '3789', '%99', '3789', '3789', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3790', '3790.00', '3790.00', '3790', '%99', '3790', '3790', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3791', '3791.00', '3791.00', '3791', '%99', '3791', '3791', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3792', '3792.00', '3792.00', '3792', '%99', '3792', '3792', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3793', '3793.00', '3793.00', '3793', '%99', '3793', '3793', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3794', '3794.00', '3794.00', '3794', '%99', '3794', '3794', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3795', '3795.00', '3795.00', '3795', '%99', '3795', '3795', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3796', '3796.00', '3796.00', '3796', '%99', '3796', '3796', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3797', '3797.00', '3797.00', '3797', '%99', '3797', '3797', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3798', '3798.00', '3798.00', '3798', '%99', '3798', '3798', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3799', '3799.00', '3799.00', '3799', '%99', '3799', '3799', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3800', '3800.00', '3800.00', '3800', '%99', '3800', '3800', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3801', '3801.00', '3801.00', '3801', '%99', '3801', '3801', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3802', '3802.00', '3802.00', '3802', '%99', '3802', '3802', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3803', '3803.00', '3803.00', '3803', '%99', '3803', '3803', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3804', '3804.00', '3804.00', '3804', '%99', '3804', '3804', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3805', '3805.00', '3805.00', '3805', '%99', '3805', '3805', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3806', '3806.00', '3806.00', '3806', '%99', '3806', '3806', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3807', '3807.00', '3807.00', '3807', '%99', '3807', '3807', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3808', '3808.00', '3808.00', '3808', '%99', '3808', '3808', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3809', '3809.00', '3809.00', '3809', '%99', '3809', '3809', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3810', '3810.00', '3810.00', '3810', '%99', '3810', '3810', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3811', '3811.00', '3811.00', '3811', '%99', '3811', '3811', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3812', '3812.00', '3812.00', '3812', '%99', '3812', '3812', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3813', '3813.00', '3813.00', '3813', '%99', '3813', '3813', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3814', '3814.00', '3814.00', '3814', '%99', '3814', '3814', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3815', '3815.00', '3815.00', '3815', '%99', '3815', '3815', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3816', '3816.00', '3816.00', '3816', '%99', '3816', '3816', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3817', '3817.00', '3817.00', '3817', '%99', '3817', '3817', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3818', '3818.00', '3818.00', '3818', '%99', '3818', '3818', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3819', '3819.00', '3819.00', '3819', '%99', '3819', '3819', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3820', '3820.00', '3820.00', '3820', '%99', '3820', '3820', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3821', '3821.00', '3821.00', '3821', '%99', '3821', '3821', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3822', '3822.00', '3822.00', '3822', '%99', '3822', '3822', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3823', '3823.00', '3823.00', '3823', '%99', '3823', '3823', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3824', '3824.00', '3824.00', '3824', '%99', '3824', '3824', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3825', '3825.00', '3825.00', '3825', '%99', '3825', '3825', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3826', '3826.00', '3826.00', '3826', '%99', '3826', '3826', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3827', '3827.00', '3827.00', '3827', '%99', '3827', '3827', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3828', '3828.00', '3828.00', '3828', '%99', '3828', '3828', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3829', '3829.00', '3829.00', '3829', '%99', '3829', '3829', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3830', '3830.00', '3830.00', '3830', '%99', '3830', '3830', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3831', '3831.00', '3831.00', '3831', '%99', '3831', '3831', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3832', '3832.00', '3832.00', '3832', '%99', '3832', '3832', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3833', '3833.00', '3833.00', '3833', '%99', '3833', '3833', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3834', '3834.00', '3834.00', '3834', '%99', '3834', '3834', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3835', '3835.00', '3835.00', '3835', '%99', '3835', '3835', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3836', '3836.00', '3836.00', '3836', '%99', '3836', '3836', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3837', '3837.00', '3837.00', '3837', '%99', '3837', '3837', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3838', '3838.00', '3838.00', '3838', '%99', '3838', '3838', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3839', '3839.00', '3839.00', '3839', '%99', '3839', '3839', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3840', '3840.00', '3840.00', '3840', '%99', '3840', '3840', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3841', '3841.00', '3841.00', '3841', '%99', '3841', '3841', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3842', '3842.00', '3842.00', '3842', '%99', '3842', '3842', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3843', '3843.00', '3843.00', '3843', '%99', '3843', '3843', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3844', '3844.00', '3844.00', '3844', '%99', '3844', '3844', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3845', '3845.00', '3845.00', '3845', '%99', '3845', '3845', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3846', '3846.00', '3846.00', '3846', '%99', '3846', '3846', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3847', '3847.00', '3847.00', '3847', '%99', '3847', '3847', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3848', '3848.00', '3848.00', '3848', '%99', '3848', '3848', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3849', '3849.00', '3849.00', '3849', '%99', '3849', '3849', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3850', '3850.00', '3850.00', '3850', '%99', '3850', '3850', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3851', '3851.00', '3851.00', '3851', '%99', '3851', '3851', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3852', '3852.00', '3852.00', '3852', '%99', '3852', '3852', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3853', '3853.00', '3853.00', '3853', '%99', '3853', '3853', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3854', '3854.00', '3854.00', '3854', '%99', '3854', '3854', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3855', '3855.00', '3855.00', '3855', '%99', '3855', '3855', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3856', '3856.00', '3856.00', '3856', '%99', '3856', '3856', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3857', '3857.00', '3857.00', '3857', '%99', '3857', '3857', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3858', '3858.00', '3858.00', '3858', '%99', '3858', '3858', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3859', '3859.00', '3859.00', '3859', '%99', '3859', '3859', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3860', '3860.00', '3860.00', '3860', '%99', '3860', '3860', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3861', '3861.00', '3861.00', '3861', '%99', '3861', '3861', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3862', '3862.00', '3862.00', '3862', '%99', '3862', '3862', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3863', '3863.00', '3863.00', '3863', '%99', '3863', '3863', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3864', '3864.00', '3864.00', '3864', '%99', '3864', '3864', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3865', '3865.00', '3865.00', '3865', '%99', '3865', '3865', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3866', '3866.00', '3866.00', '3866', '%99', '3866', '3866', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3867', '3867.00', '3867.00', '3867', '%99', '3867', '3867', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3868', '3868.00', '3868.00', '3868', '%99', '3868', '3868', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3869', '3869.00', '3869.00', '3869', '%99', '3869', '3869', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3870', '3870.00', '3870.00', '3870', '%99', '3870', '3870', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3871', '3871.00', '3871.00', '3871', '%99', '3871', '3871', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3872', '3872.00', '3872.00', '3872', '%99', '3872', '3872', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3873', '3873.00', '3873.00', '3873', '%99', '3873', '3873', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3874', '3874.00', '3874.00', '3874', '%99', '3874', '3874', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3875', '3875.00', '3875.00', '3875', '%99', '3875', '3875', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3876', '3876.00', '3876.00', '3876', '%99', '3876', '3876', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3877', '3877.00', '3877.00', '3877', '%99', '3877', '3877', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3878', '3878.00', '3878.00', '3878', '%99', '3878', '3878', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3879', '3879.00', '3879.00', '3879', '%99', '3879', '3879', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3880', '3880.00', '3880.00', '3880', '%99', '3880', '3880', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3881', '3881.00', '3881.00', '3881', '%99', '3881', '3881', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3882', '3882.00', '3882.00', '3882', '%99', '3882', '3882', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3883', '3883.00', '3883.00', '3883', '%99', '3883', '3883', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3884', '3884.00', '3884.00', '3884', '%99', '3884', '3884', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3885', '3885.00', '3885.00', '3885', '%99', '3885', '3885', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3886', '3886.00', '3886.00', '3886', '%99', '3886', '3886', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3887', '3887.00', '3887.00', '3887', '%99', '3887', '3887', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3888', '3888.00', '3888.00', '3888', '%99', '3888', '3888', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3889', '3889.00', '3889.00', '3889', '%99', '3889', '3889', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3890', '3890.00', '3890.00', '3890', '%99', '3890', '3890', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3891', '3891.00', '3891.00', '3891', '%99', '3891', '3891', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3892', '3892.00', '3892.00', '3892', '%99', '3892', '3892', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3893', '3893.00', '3893.00', '3893', '%99', '3893', '3893', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3894', '3894.00', '3894.00', '3894', '%99', '3894', '3894', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3895', '3895.00', '3895.00', '3895', '%99', '3895', '3895', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3896', '3896.00', '3896.00', '3896', '%99', '3896', '3896', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3897', '3897.00', '3897.00', '3897', '%99', '3897', '3897', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3898', '3898.00', '3898.00', '3898', '%99', '3898', '3898', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3899', '3899.00', '3899.00', '3899', '%99', '3899', '3899', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3900', '3900.00', '3900.00', '3900', '%99', '3900', '3900', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3901', '3901.00', '3901.00', '3901', '%99', '3901', '3901', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3902', '3902.00', '3902.00', '3902', '%99', '3902', '3902', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3903', '3903.00', '3903.00', '3903', '%99', '3903', '3903', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3904', '3904.00', '3904.00', '3904', '%99', '3904', '3904', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3905', '3905.00', '3905.00', '3905', '%99', '3905', '3905', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3906', '3906.00', '3906.00', '3906', '%99', '3906', '3906', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3907', '3907.00', '3907.00', '3907', '%99', '3907', '3907', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3908', '3908.00', '3908.00', '3908', '%99', '3908', '3908', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3909', '3909.00', '3909.00', '3909', '%99', '3909', '3909', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3910', '3910.00', '3910.00', '3910', '%99', '3910', '3910', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3911', '3911.00', '3911.00', '3911', '%99', '3911', '3911', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3912', '3912.00', '3912.00', '3912', '%99', '3912', '3912', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3913', '3913.00', '3913.00', '3913', '%99', '3913', '3913', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3914', '3914.00', '3914.00', '3914', '%99', '3914', '3914', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3915', '3915.00', '3915.00', '3915', '%99', '3915', '3915', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3916', '3916.00', '3916.00', '3916', '%99', '3916', '3916', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3917', '3917.00', '3917.00', '3917', '%99', '3917', '3917', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3918', '3918.00', '3918.00', '3918', '%99', '3918', '3918', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3919', '3919.00', '3919.00', '3919', '%99', '3919', '3919', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3920', '3920.00', '3920.00', '3920', '%99', '3920', '3920', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3921', '3921.00', '3921.00', '3921', '%99', '3921', '3921', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3922', '3922.00', '3922.00', '3922', '%99', '3922', '3922', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3923', '3923.00', '3923.00', '3923', '%99', '3923', '3923', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3924', '3924.00', '3924.00', '3924', '%99', '3924', '3924', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3925', '3925.00', '3925.00', '3925', '%99', '3925', '3925', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3926', '3926.00', '3926.00', '3926', '%99', '3926', '3926', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3927', '3927.00', '3927.00', '3927', '%99', '3927', '3927', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3928', '3928.00', '3928.00', '3928', '%99', '3928', '3928', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3929', '3929.00', '3929.00', '3929', '%99', '3929', '3929', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3930', '3930.00', '3930.00', '3930', '%99', '3930', '3930', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3931', '3931.00', '3931.00', '3931', '%99', '3931', '3931', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3932', '3932.00', '3932.00', '3932', '%99', '3932', '3932', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3933', '3933.00', '3933.00', '3933', '%99', '3933', '3933', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3934', '3934.00', '3934.00', '3934', '%99', '3934', '3934', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3935', '3935.00', '3935.00', '3935', '%99', '3935', '3935', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3936', '3936.00', '3936.00', '3936', '%99', '3936', '3936', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3937', '3937.00', '3937.00', '3937', '%99', '3937', '3937', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3938', '3938.00', '3938.00', '3938', '%99', '3938', '3938', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3939', '3939.00', '3939.00', '3939', '%99', '3939', '3939', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3940', '3940.00', '3940.00', '3940', '%99', '3940', '3940', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3941', '3941.00', '3941.00', '3941', '%99', '3941', '3941', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3942', '3942.00', '3942.00', '3942', '%99', '3942', '3942', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3943', '3943.00', '3943.00', '3943', '%99', '3943', '3943', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3944', '3944.00', '3944.00', '3944', '%99', '3944', '3944', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3945', '3945.00', '3945.00', '3945', '%99', '3945', '3945', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3946', '3946.00', '3946.00', '3946', '%99', '3946', '3946', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3947', '3947.00', '3947.00', '3947', '%99', '3947', '3947', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3948', '3948.00', '3948.00', '3948', '%99', '3948', '3948', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3949', '3949.00', '3949.00', '3949', '%99', '3949', '3949', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3950', '3950.00', '3950.00', '3950', '%99', '3950', '3950', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3951', '3951.00', '3951.00', '3951', '%99', '3951', '3951', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3952', '3952.00', '3952.00', '3952', '%99', '3952', '3952', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3953', '3953.00', '3953.00', '3953', '%99', '3953', '3953', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3954', '3954.00', '3954.00', '3954', '%99', '3954', '3954', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3955', '3955.00', '3955.00', '3955', '%99', '3955', '3955', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3956', '3956.00', '3956.00', '3956', '%99', '3956', '3956', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3957', '3957.00', '3957.00', '3957', '%99', '3957', '3957', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3958', '3958.00', '3958.00', '3958', '%99', '3958', '3958', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3959', '3959.00', '3959.00', '3959', '%99', '3959', '3959', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3960', '3960.00', '3960.00', '3960', '%99', '3960', '3960', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3961', '3961.00', '3961.00', '3961', '%99', '3961', '3961', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3962', '3962.00', '3962.00', '3962', '%99', '3962', '3962', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3963', '3963.00', '3963.00', '3963', '%99', '3963', '3963', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3964', '3964.00', '3964.00', '3964', '%99', '3964', '3964', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3965', '3965.00', '3965.00', '3965', '%99', '3965', '3965', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3966', '3966.00', '3966.00', '3966', '%99', '3966', '3966', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3967', '3967.00', '3967.00', '3967', '%99', '3967', '3967', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3968', '3968.00', '3968.00', '3968', '%99', '3968', '3968', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3969', '3969.00', '3969.00', '3969', '%99', '3969', '3969', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3970', '3970.00', '3970.00', '3970', '%99', '3970', '3970', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3971', '3971.00', '3971.00', '3971', '%99', '3971', '3971', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3972', '3972.00', '3972.00', '3972', '%99', '3972', '3972', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3973', '3973.00', '3973.00', '3973', '%99', '3973', '3973', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3974', '3974.00', '3974.00', '3974', '%99', '3974', '3974', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3975', '3975.00', '3975.00', '3975', '%99', '3975', '3975', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3976', '3976.00', '3976.00', '3976', '%99', '3976', '3976', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3977', '3977.00', '3977.00', '3977', '%99', '3977', '3977', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3978', '3978.00', '3978.00', '3978', '%99', '3978', '3978', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3979', '3979.00', '3979.00', '3979', '%99', '3979', '3979', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3980', '3980.00', '3980.00', '3980', '%99', '3980', '3980', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3981', '3981.00', '3981.00', '3981', '%99', '3981', '3981', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3982', '3982.00', '3982.00', '3982', '%99', '3982', '3982', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3983', '3983.00', '3983.00', '3983', '%99', '3983', '3983', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3984', '3984.00', '3984.00', '3984', '%99', '3984', '3984', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3985', '3985.00', '3985.00', '3985', '%99', '3985', '3985', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3986', '3986.00', '3986.00', '3986', '%99', '3986', '3986', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3987', '3987.00', '3987.00', '3987', '%99', '3987', '3987', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3988', '3988.00', '3988.00', '3988', '%99', '3988', '3988', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3989', '3989.00', '3989.00', '3989', '%99', '3989', '3989', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3990', '3990.00', '3990.00', '3990', '%99', '3990', '3990', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3991', '3991.00', '3991.00', '3991', '%99', '3991', '3991', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3992', '3992.00', '3992.00', '3992', '%99', '3992', '3992', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3993', '3993.00', '3993.00', '3993', '%99', '3993', '3993', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3994', '3994.00', '3994.00', '3994', '%99', '3994', '3994', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3995', '3995.00', '3995.00', '3995', '%99', '3995', '3995', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3996', '3996.00', '3996.00', '3996', '%99', '3996', '3996', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3997', '3997.00', '3997.00', '3997', '%99', '3997', '3997', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3998', '3998.00', '3998.00', '3998', '%99', '3998', '3998', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('3999', '3999.00', '3999.00', '3999', '%99', '3999', '3999', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4000', '4000.00', '4000.00', '4000', '%99', '4000', '4000', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4001', '4001.00', '4001.00', '4001', '%99', '4001', '4001', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4002', '4002.00', '4002.00', '4002', '%99', '4002', '4002', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4003', '4003.00', '4003.00', '4003', '%99', '4003', '4003', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4004', '4004.00', '4004.00', '4004', '%99', '4004', '4004', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4005', '4005.00', '4005.00', '4005', '%99', '4005', '4005', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4006', '4006.00', '4006.00', '4006', '%99', '4006', '4006', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4007', '4007.00', '4007.00', '4007', '%99', '4007', '4007', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4008', '4008.00', '4008.00', '4008', '%99', '4008', '4008', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4009', '4009.00', '4009.00', '4009', '%99', '4009', '4009', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4010', '4010.00', '4010.00', '4010', '%99', '4010', '4010', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4011', '4011.00', '4011.00', '4011', '%99', '4011', '4011', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4012', '4012.00', '4012.00', '4012', '%99', '4012', '4012', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4013', '4013.00', '4013.00', '4013', '%99', '4013', '4013', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4014', '4014.00', '4014.00', '4014', '%99', '4014', '4014', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4015', '4015.00', '4015.00', '4015', '%99', '4015', '4015', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4016', '4016.00', '4016.00', '4016', '%99', '4016', '4016', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4017', '4017.00', '4017.00', '4017', '%99', '4017', '4017', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4018', '4018.00', '4018.00', '4018', '%99', '4018', '4018', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4019', '4019.00', '4019.00', '4019', '%99', '4019', '4019', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4020', '4020.00', '4020.00', '4020', '%99', '4020', '4020', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4021', '4021.00', '4021.00', '4021', '%99', '4021', '4021', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4022', '4022.00', '4022.00', '4022', '%99', '4022', '4022', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4023', '4023.00', '4023.00', '4023', '%99', '4023', '4023', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4024', '4024.00', '4024.00', '4024', '%99', '4024', '4024', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4025', '4025.00', '4025.00', '4025', '%99', '4025', '4025', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4026', '4026.00', '4026.00', '4026', '%99', '4026', '4026', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4027', '4027.00', '4027.00', '4027', '%99', '4027', '4027', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4028', '4028.00', '4028.00', '4028', '%99', '4028', '4028', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4029', '4029.00', '4029.00', '4029', '%99', '4029', '4029', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4030', '4030.00', '4030.00', '4030', '%99', '4030', '4030', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4031', '4031.00', '4031.00', '4031', '%99', '4031', '4031', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4032', '4032.00', '4032.00', '4032', '%99', '4032', '4032', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4033', '4033.00', '4033.00', '4033', '%99', '4033', '4033', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4034', '4034.00', '4034.00', '4034', '%99', '4034', '4034', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4035', '4035.00', '4035.00', '4035', '%99', '4035', '4035', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4036', '4036.00', '4036.00', '4036', '%99', '4036', '4036', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4037', '4037.00', '4037.00', '4037', '%99', '4037', '4037', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4038', '4038.00', '4038.00', '4038', '%99', '4038', '4038', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4039', '4039.00', '4039.00', '4039', '%99', '4039', '4039', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4040', '4040.00', '4040.00', '4040', '%99', '4040', '4040', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4041', '4041.00', '4041.00', '4041', '%99', '4041', '4041', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4042', '4042.00', '4042.00', '4042', '%99', '4042', '4042', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4043', '4043.00', '4043.00', '4043', '%99', '4043', '4043', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4044', '4044.00', '4044.00', '4044', '%99', '4044', '4044', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4045', '4045.00', '4045.00', '4045', '%99', '4045', '4045', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4046', '4046.00', '4046.00', '4046', '%99', '4046', '4046', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4047', '4047.00', '4047.00', '4047', '%99', '4047', '4047', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4048', '4048.00', '4048.00', '4048', '%99', '4048', '4048', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4049', '4049.00', '4049.00', '4049', '%99', '4049', '4049', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4050', '4050.00', '4050.00', '4050', '%99', '4050', '4050', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4051', '4051.00', '4051.00', '4051', '%99', '4051', '4051', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4052', '4052.00', '4052.00', '4052', '%99', '4052', '4052', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4053', '4053.00', '4053.00', '4053', '%99', '4053', '4053', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4054', '4054.00', '4054.00', '4054', '%99', '4054', '4054', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4055', '4055.00', '4055.00', '4055', '%99', '4055', '4055', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4056', '4056.00', '4056.00', '4056', '%99', '4056', '4056', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4057', '4057.00', '4057.00', '4057', '%99', '4057', '4057', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4058', '4058.00', '4058.00', '4058', '%99', '4058', '4058', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4059', '4059.00', '4059.00', '4059', '%99', '4059', '4059', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4060', '4060.00', '4060.00', '4060', '%99', '4060', '4060', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4061', '4061.00', '4061.00', '4061', '%99', '4061', '4061', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4062', '4062.00', '4062.00', '4062', '%99', '4062', '4062', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4063', '4063.00', '4063.00', '4063', '%99', '4063', '4063', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4064', '4064.00', '4064.00', '4064', '%99', '4064', '4064', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4065', '4065.00', '4065.00', '4065', '%99', '4065', '4065', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4066', '4066.00', '4066.00', '4066', '%99', '4066', '4066', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4067', '4067.00', '4067.00', '4067', '%99', '4067', '4067', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4068', '4068.00', '4068.00', '4068', '%99', '4068', '4068', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4069', '4069.00', '4069.00', '4069', '%99', '4069', '4069', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4070', '4070.00', '4070.00', '4070', '%99', '4070', '4070', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4071', '4071.00', '4071.00', '4071', '%99', '4071', '4071', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4072', '4072.00', '4072.00', '4072', '%99', '4072', '4072', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4073', '4073.00', '4073.00', '4073', '%99', '4073', '4073', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4074', '4074.00', '4074.00', '4074', '%99', '4074', '4074', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4075', '4075.00', '4075.00', '4075', '%99', '4075', '4075', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4076', '4076.00', '4076.00', '4076', '%99', '4076', '4076', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4077', '4077.00', '4077.00', '4077', '%99', '4077', '4077', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4078', '4078.00', '4078.00', '4078', '%99', '4078', '4078', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4079', '4079.00', '4079.00', '4079', '%99', '4079', '4079', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4080', '4080.00', '4080.00', '4080', '%99', '4080', '4080', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4081', '4081.00', '4081.00', '4081', '%99', '4081', '4081', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4082', '4082.00', '4082.00', '4082', '%99', '4082', '4082', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4083', '4083.00', '4083.00', '4083', '%99', '4083', '4083', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4084', '4084.00', '4084.00', '4084', '%99', '4084', '4084', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4085', '4085.00', '4085.00', '4085', '%99', '4085', '4085', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4086', '4086.00', '4086.00', '4086', '%99', '4086', '4086', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4087', '4087.00', '4087.00', '4087', '%99', '4087', '4087', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4088', '4088.00', '4088.00', '4088', '%99', '4088', '4088', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4089', '4089.00', '4089.00', '4089', '%99', '4089', '4089', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4090', '4090.00', '4090.00', '4090', '%99', '4090', '4090', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4091', '4091.00', '4091.00', '4091', '%99', '4091', '4091', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4092', '4092.00', '4092.00', '4092', '%99', '4092', '4092', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4093', '4093.00', '4093.00', '4093', '%99', '4093', '4093', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4094', '4094.00', '4094.00', '4094', '%99', '4094', '4094', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4095', '4095.00', '4095.00', '4095', '%99', '4095', '4095', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4096', '4096.00', '4096.00', '4096', '%99', '4096', '4096', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4097', '4097.00', '4097.00', '4097', '%99', '4097', '4097', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4098', '4098.00', '4098.00', '4098', '%99', '4098', '4098', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4099', '4099.00', '4099.00', '4099', '%99', '4099', '4099', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4100', '4100.00', '4100.00', '4100', '%99', '4100', '4100', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4101', '4101.00', '4101.00', '4101', '%99', '4101', '4101', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4102', '4102.00', '4102.00', '4102', '%99', '4102', '4102', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4103', '4103.00', '4103.00', '4103', '%99', '4103', '4103', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4104', '4104.00', '4104.00', '4104', '%99', '4104', '4104', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4105', '4105.00', '4105.00', '4105', '%99', '4105', '4105', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4106', '4106.00', '4106.00', '4106', '%99', '4106', '4106', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4107', '4107.00', '4107.00', '4107', '%99', '4107', '4107', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4108', '4108.00', '4108.00', '4108', '%99', '4108', '4108', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4109', '4109.00', '4109.00', '4109', '%99', '4109', '4109', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4110', '4110.00', '4110.00', '4110', '%99', '4110', '4110', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4111', '4111.00', '4111.00', '4111', '%99', '4111', '4111', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4112', '4112.00', '4112.00', '4112', '%99', '4112', '4112', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4113', '4113.00', '4113.00', '4113', '%99', '4113', '4113', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4114', '4114.00', '4114.00', '4114', '%99', '4114', '4114', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4115', '4115.00', '4115.00', '4115', '%99', '4115', '4115', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4116', '4116.00', '4116.00', '4116', '%99', '4116', '4116', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4117', '4117.00', '4117.00', '4117', '%99', '4117', '4117', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4118', '4118.00', '4118.00', '4118', '%99', '4118', '4118', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4119', '4119.00', '4119.00', '4119', '%99', '4119', '4119', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4120', '4120.00', '4120.00', '4120', '%99', '4120', '4120', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4121', '4121.00', '4121.00', '4121', '%99', '4121', '4121', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4122', '4122.00', '4122.00', '4122', '%99', '4122', '4122', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4123', '4123.00', '4123.00', '4123', '%99', '4123', '4123', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4124', '4124.00', '4124.00', '4124', '%99', '4124', '4124', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4125', '4125.00', '4125.00', '4125', '%99', '4125', '4125', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4126', '4126.00', '4126.00', '4126', '%99', '4126', '4126', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4127', '4127.00', '4127.00', '4127', '%99', '4127', '4127', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4128', '4128.00', '4128.00', '4128', '%99', '4128', '4128', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4129', '4129.00', '4129.00', '4129', '%99', '4129', '4129', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4130', '4130.00', '4130.00', '4130', '%99', '4130', '4130', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4131', '4131.00', '4131.00', '4131', '%99', '4131', '4131', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4132', '4132.00', '4132.00', '4132', '%99', '4132', '4132', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4133', '4133.00', '4133.00', '4133', '%99', '4133', '4133', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4134', '4134.00', '4134.00', '4134', '%99', '4134', '4134', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4135', '4135.00', '4135.00', '4135', '%99', '4135', '4135', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4136', '4136.00', '4136.00', '4136', '%99', '4136', '4136', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4137', '4137.00', '4137.00', '4137', '%99', '4137', '4137', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4138', '4138.00', '4138.00', '4138', '%99', '4138', '4138', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4139', '4139.00', '4139.00', '4139', '%99', '4139', '4139', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4140', '4140.00', '4140.00', '4140', '%99', '4140', '4140', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4141', '4141.00', '4141.00', '4141', '%99', '4141', '4141', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4142', '4142.00', '4142.00', '4142', '%99', '4142', '4142', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4143', '4143.00', '4143.00', '4143', '%99', '4143', '4143', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4144', '4144.00', '4144.00', '4144', '%99', '4144', '4144', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4145', '4145.00', '4145.00', '4145', '%99', '4145', '4145', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4146', '4146.00', '4146.00', '4146', '%99', '4146', '4146', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4147', '4147.00', '4147.00', '4147', '%99', '4147', '4147', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4148', '4148.00', '4148.00', '4148', '%99', '4148', '4148', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4149', '4149.00', '4149.00', '4149', '%99', '4149', '4149', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4150', '4150.00', '4150.00', '4150', '%99', '4150', '4150', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4151', '4151.00', '4151.00', '4151', '%99', '4151', '4151', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4152', '4152.00', '4152.00', '4152', '%99', '4152', '4152', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4153', '4153.00', '4153.00', '4153', '%99', '4153', '4153', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4154', '4154.00', '4154.00', '4154', '%99', '4154', '4154', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4155', '4155.00', '4155.00', '4155', '%99', '4155', '4155', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4156', '4156.00', '4156.00', '4156', '%99', '4156', '4156', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4157', '4157.00', '4157.00', '4157', '%99', '4157', '4157', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4158', '4158.00', '4158.00', '4158', '%99', '4158', '4158', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4159', '4159.00', '4159.00', '4159', '%99', '4159', '4159', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4160', '4160.00', '4160.00', '4160', '%99', '4160', '4160', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4161', '4161.00', '4161.00', '4161', '%99', '4161', '4161', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4162', '4162.00', '4162.00', '4162', '%99', '4162', '4162', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4163', '4163.00', '4163.00', '4163', '%99', '4163', '4163', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4164', '4164.00', '4164.00', '4164', '%99', '4164', '4164', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4165', '4165.00', '4165.00', '4165', '%99', '4165', '4165', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4166', '4166.00', '4166.00', '4166', '%99', '4166', '4166', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4167', '4167.00', '4167.00', '4167', '%99', '4167', '4167', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4168', '4168.00', '4168.00', '4168', '%99', '4168', '4168', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4169', '4169.00', '4169.00', '4169', '%99', '4169', '4169', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4170', '4170.00', '4170.00', '4170', '%99', '4170', '4170', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4171', '4171.00', '4171.00', '4171', '%99', '4171', '4171', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4172', '4172.00', '4172.00', '4172', '%99', '4172', '4172', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4173', '4173.00', '4173.00', '4173', '%99', '4173', '4173', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4174', '4174.00', '4174.00', '4174', '%99', '4174', '4174', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4175', '4175.00', '4175.00', '4175', '%99', '4175', '4175', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4176', '4176.00', '4176.00', '4176', '%99', '4176', '4176', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4177', '4177.00', '4177.00', '4177', '%99', '4177', '4177', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4178', '4178.00', '4178.00', '4178', '%99', '4178', '4178', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4179', '4179.00', '4179.00', '4179', '%99', '4179', '4179', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4180', '4180.00', '4180.00', '4180', '%99', '4180', '4180', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4181', '4181.00', '4181.00', '4181', '%99', '4181', '4181', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4182', '4182.00', '4182.00', '4182', '%99', '4182', '4182', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4183', '4183.00', '4183.00', '4183', '%99', '4183', '4183', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4184', '4184.00', '4184.00', '4184', '%99', '4184', '4184', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4185', '4185.00', '4185.00', '4185', '%99', '4185', '4185', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4186', '4186.00', '4186.00', '4186', '%99', '4186', '4186', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4187', '4187.00', '4187.00', '4187', '%99', '4187', '4187', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4188', '4188.00', '4188.00', '4188', '%99', '4188', '4188', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4189', '4189.00', '4189.00', '4189', '%99', '4189', '4189', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4190', '4190.00', '4190.00', '4190', '%99', '4190', '4190', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4191', '4191.00', '4191.00', '4191', '%99', '4191', '4191', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4192', '4192.00', '4192.00', '4192', '%99', '4192', '4192', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4193', '4193.00', '4193.00', '4193', '%99', '4193', '4193', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4194', '4194.00', '4194.00', '4194', '%99', '4194', '4194', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4195', '4195.00', '4195.00', '4195', '%99', '4195', '4195', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4196', '4196.00', '4196.00', '4196', '%99', '4196', '4196', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4197', '4197.00', '4197.00', '4197', '%99', '4197', '4197', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4198', '4198.00', '4198.00', '4198', '%99', '4198', '4198', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4199', '4199.00', '4199.00', '4199', '%99', '4199', '4199', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4200', '4200.00', '4200.00', '4200', '%99', '4200', '4200', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4201', '4201.00', '4201.00', '4201', '%99', '4201', '4201', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4202', '4202.00', '4202.00', '4202', '%99', '4202', '4202', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4203', '4203.00', '4203.00', '4203', '%99', '4203', '4203', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4204', '4204.00', '4204.00', '4204', '%99', '4204', '4204', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4205', '4205.00', '4205.00', '4205', '%99', '4205', '4205', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4206', '4206.00', '4206.00', '4206', '%99', '4206', '4206', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4207', '4207.00', '4207.00', '4207', '%99', '4207', '4207', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4208', '4208.00', '4208.00', '4208', '%99', '4208', '4208', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4209', '4209.00', '4209.00', '4209', '%99', '4209', '4209', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4210', '4210.00', '4210.00', '4210', '%99', '4210', '4210', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4211', '4211.00', '4211.00', '4211', '%99', '4211', '4211', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4212', '4212.00', '4212.00', '4212', '%99', '4212', '4212', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4213', '4213.00', '4213.00', '4213', '%99', '4213', '4213', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4214', '4214.00', '4214.00', '4214', '%99', '4214', '4214', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4215', '4215.00', '4215.00', '4215', '%99', '4215', '4215', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4216', '4216.00', '4216.00', '4216', '%99', '4216', '4216', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4217', '4217.00', '4217.00', '4217', '%99', '4217', '4217', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4218', '4218.00', '4218.00', '4218', '%99', '4218', '4218', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4219', '4219.00', '4219.00', '4219', '%99', '4219', '4219', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4220', '4220.00', '4220.00', '4220', '%99', '4220', '4220', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4221', '4221.00', '4221.00', '4221', '%99', '4221', '4221', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4222', '4222.00', '4222.00', '4222', '%99', '4222', '4222', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4223', '4223.00', '4223.00', '4223', '%99', '4223', '4223', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4224', '4224.00', '4224.00', '4224', '%99', '4224', '4224', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4225', '4225.00', '4225.00', '4225', '%99', '4225', '4225', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4226', '4226.00', '4226.00', '4226', '%99', '4226', '4226', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4227', '4227.00', '4227.00', '4227', '%99', '4227', '4227', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4228', '4228.00', '4228.00', '4228', '%99', '4228', '4228', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4229', '4229.00', '4229.00', '4229', '%99', '4229', '4229', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4230', '4230.00', '4230.00', '4230', '%99', '4230', '4230', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4231', '4231.00', '4231.00', '4231', '%99', '4231', '4231', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4232', '4232.00', '4232.00', '4232', '%99', '4232', '4232', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4233', '4233.00', '4233.00', '4233', '%99', '4233', '4233', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4234', '4234.00', '4234.00', '4234', '%99', '4234', '4234', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4235', '4235.00', '4235.00', '4235', '%99', '4235', '4235', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4236', '4236.00', '4236.00', '4236', '%99', '4236', '4236', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4237', '4237.00', '4237.00', '4237', '%99', '4237', '4237', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4238', '4238.00', '4238.00', '4238', '%99', '4238', '4238', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4239', '4239.00', '4239.00', '4239', '%99', '4239', '4239', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4240', '4240.00', '4240.00', '4240', '%99', '4240', '4240', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4241', '4241.00', '4241.00', '4241', '%99', '4241', '4241', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4242', '4242.00', '4242.00', '4242', '%99', '4242', '4242', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4243', '4243.00', '4243.00', '4243', '%99', '4243', '4243', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4244', '4244.00', '4244.00', '4244', '%99', '4244', '4244', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4245', '4245.00', '4245.00', '4245', '%99', '4245', '4245', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4246', '4246.00', '4246.00', '4246', '%99', '4246', '4246', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4247', '4247.00', '4247.00', '4247', '%99', '4247', '4247', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4248', '4248.00', '4248.00', '4248', '%99', '4248', '4248', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4249', '4249.00', '4249.00', '4249', '%99', '4249', '4249', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4250', '4250.00', '4250.00', '4250', '%99', '4250', '4250', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4251', '4251.00', '4251.00', '4251', '%99', '4251', '4251', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4252', '4252.00', '4252.00', '4252', '%99', '4252', '4252', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4253', '4253.00', '4253.00', '4253', '%99', '4253', '4253', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4254', '4254.00', '4254.00', '4254', '%99', '4254', '4254', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4255', '4255.00', '4255.00', '4255', '%99', '4255', '4255', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4256', '4256.00', '4256.00', '4256', '%99', '4256', '4256', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4257', '4257.00', '4257.00', '4257', '%99', '4257', '4257', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4258', '4258.00', '4258.00', '4258', '%99', '4258', '4258', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4259', '4259.00', '4259.00', '4259', '%99', '4259', '4259', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4260', '4260.00', '4260.00', '4260', '%99', '4260', '4260', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4261', '4261.00', '4261.00', '4261', '%99', '4261', '4261', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4262', '4262.00', '4262.00', '4262', '%99', '4262', '4262', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4263', '4263.00', '4263.00', '4263', '%99', '4263', '4263', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4264', '4264.00', '4264.00', '4264', '%99', '4264', '4264', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4265', '4265.00', '4265.00', '4265', '%99', '4265', '4265', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4266', '4266.00', '4266.00', '4266', '%99', '4266', '4266', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4267', '4267.00', '4267.00', '4267', '%99', '4267', '4267', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4268', '4268.00', '4268.00', '4268', '%99', '4268', '4268', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4269', '4269.00', '4269.00', '4269', '%99', '4269', '4269', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4270', '4270.00', '4270.00', '4270', '%99', '4270', '4270', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4271', '4271.00', '4271.00', '4271', '%99', '4271', '4271', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4272', '4272.00', '4272.00', '4272', '%99', '4272', '4272', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4273', '4273.00', '4273.00', '4273', '%99', '4273', '4273', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4274', '4274.00', '4274.00', '4274', '%99', '4274', '4274', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4275', '4275.00', '4275.00', '4275', '%99', '4275', '4275', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4276', '4276.00', '4276.00', '4276', '%99', '4276', '4276', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4277', '4277.00', '4277.00', '4277', '%99', '4277', '4277', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4278', '4278.00', '4278.00', '4278', '%99', '4278', '4278', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4279', '4279.00', '4279.00', '4279', '%99', '4279', '4279', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4280', '4280.00', '4280.00', '4280', '%99', '4280', '4280', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4281', '4281.00', '4281.00', '4281', '%99', '4281', '4281', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4282', '4282.00', '4282.00', '4282', '%99', '4282', '4282', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4283', '4283.00', '4283.00', '4283', '%99', '4283', '4283', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4284', '4284.00', '4284.00', '4284', '%99', '4284', '4284', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4285', '4285.00', '4285.00', '4285', '%99', '4285', '4285', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4286', '4286.00', '4286.00', '4286', '%99', '4286', '4286', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4287', '4287.00', '4287.00', '4287', '%99', '4287', '4287', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4288', '4288.00', '4288.00', '4288', '%99', '4288', '4288', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4289', '4289.00', '4289.00', '4289', '%99', '4289', '4289', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4290', '4290.00', '4290.00', '4290', '%99', '4290', '4290', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4291', '4291.00', '4291.00', '4291', '%99', '4291', '4291', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4292', '4292.00', '4292.00', '4292', '%99', '4292', '4292', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4293', '4293.00', '4293.00', '4293', '%99', '4293', '4293', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4294', '4294.00', '4294.00', '4294', '%99', '4294', '4294', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4295', '4295.00', '4295.00', '4295', '%99', '4295', '4295', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4296', '4296.00', '4296.00', '4296', '%99', '4296', '4296', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4297', '4297.00', '4297.00', '4297', '%99', '4297', '4297', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4298', '4298.00', '4298.00', '4298', '%99', '4298', '4298', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4299', '4299.00', '4299.00', '4299', '%99', '4299', '4299', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4300', '4300.00', '4300.00', '4300', '%99', '4300', '4300', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4301', '4301.00', '4301.00', '4301', '%99', '4301', '4301', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4302', '4302.00', '4302.00', '4302', '%99', '4302', '4302', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4303', '4303.00', '4303.00', '4303', '%99', '4303', '4303', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4304', '4304.00', '4304.00', '4304', '%99', '4304', '4304', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4305', '4305.00', '4305.00', '4305', '%99', '4305', '4305', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4306', '4306.00', '4306.00', '4306', '%99', '4306', '4306', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4307', '4307.00', '4307.00', '4307', '%99', '4307', '4307', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4308', '4308.00', '4308.00', '4308', '%99', '4308', '4308', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4309', '4309.00', '4309.00', '4309', '%99', '4309', '4309', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4310', '4310.00', '4310.00', '4310', '%99', '4310', '4310', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4311', '4311.00', '4311.00', '4311', '%99', '4311', '4311', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4312', '4312.00', '4312.00', '4312', '%99', '4312', '4312', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4313', '4313.00', '4313.00', '4313', '%99', '4313', '4313', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4314', '4314.00', '4314.00', '4314', '%99', '4314', '4314', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4315', '4315.00', '4315.00', '4315', '%99', '4315', '4315', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4316', '4316.00', '4316.00', '4316', '%99', '4316', '4316', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4317', '4317.00', '4317.00', '4317', '%99', '4317', '4317', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4318', '4318.00', '4318.00', '4318', '%99', '4318', '4318', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4319', '4319.00', '4319.00', '4319', '%99', '4319', '4319', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4320', '4320.00', '4320.00', '4320', '%99', '4320', '4320', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4321', '4321.00', '4321.00', '4321', '%99', '4321', '4321', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4322', '4322.00', '4322.00', '4322', '%99', '4322', '4322', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4323', '4323.00', '4323.00', '4323', '%99', '4323', '4323', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4324', '4324.00', '4324.00', '4324', '%99', '4324', '4324', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4325', '4325.00', '4325.00', '4325', '%99', '4325', '4325', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4326', '4326.00', '4326.00', '4326', '%99', '4326', '4326', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4327', '4327.00', '4327.00', '4327', '%99', '4327', '4327', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4328', '4328.00', '4328.00', '4328', '%99', '4328', '4328', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4329', '4329.00', '4329.00', '4329', '%99', '4329', '4329', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4330', '4330.00', '4330.00', '4330', '%99', '4330', '4330', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4331', '4331.00', '4331.00', '4331', '%99', '4331', '4331', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4332', '4332.00', '4332.00', '4332', '%99', '4332', '4332', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4333', '4333.00', '4333.00', '4333', '%99', '4333', '4333', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4334', '4334.00', '4334.00', '4334', '%99', '4334', '4334', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4335', '4335.00', '4335.00', '4335', '%99', '4335', '4335', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4336', '4336.00', '4336.00', '4336', '%99', '4336', '4336', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4337', '4337.00', '4337.00', '4337', '%99', '4337', '4337', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4338', '4338.00', '4338.00', '4338', '%99', '4338', '4338', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4339', '4339.00', '4339.00', '4339', '%99', '4339', '4339', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4340', '4340.00', '4340.00', '4340', '%99', '4340', '4340', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4341', '4341.00', '4341.00', '4341', '%99', '4341', '4341', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4342', '4342.00', '4342.00', '4342', '%99', '4342', '4342', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4343', '4343.00', '4343.00', '4343', '%99', '4343', '4343', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4344', '4344.00', '4344.00', '4344', '%99', '4344', '4344', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4345', '4345.00', '4345.00', '4345', '%99', '4345', '4345', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4346', '4346.00', '4346.00', '4346', '%99', '4346', '4346', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4347', '4347.00', '4347.00', '4347', '%99', '4347', '4347', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4348', '4348.00', '4348.00', '4348', '%99', '4348', '4348', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4349', '4349.00', '4349.00', '4349', '%99', '4349', '4349', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4350', '4350.00', '4350.00', '4350', '%99', '4350', '4350', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4351', '4351.00', '4351.00', '4351', '%99', '4351', '4351', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4352', '4352.00', '4352.00', '4352', '%99', '4352', '4352', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4353', '4353.00', '4353.00', '4353', '%99', '4353', '4353', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4354', '4354.00', '4354.00', '4354', '%99', '4354', '4354', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4355', '4355.00', '4355.00', '4355', '%99', '4355', '4355', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4356', '4356.00', '4356.00', '4356', '%99', '4356', '4356', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4357', '4357.00', '4357.00', '4357', '%99', '4357', '4357', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4358', '4358.00', '4358.00', '4358', '%99', '4358', '4358', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4359', '4359.00', '4359.00', '4359', '%99', '4359', '4359', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4360', '4360.00', '4360.00', '4360', '%99', '4360', '4360', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4361', '4361.00', '4361.00', '4361', '%99', '4361', '4361', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4362', '4362.00', '4362.00', '4362', '%99', '4362', '4362', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4363', '4363.00', '4363.00', '4363', '%99', '4363', '4363', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4364', '4364.00', '4364.00', '4364', '%99', '4364', '4364', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4365', '4365.00', '4365.00', '4365', '%99', '4365', '4365', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4366', '4366.00', '4366.00', '4366', '%99', '4366', '4366', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4367', '4367.00', '4367.00', '4367', '%99', '4367', '4367', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4368', '4368.00', '4368.00', '4368', '%99', '4368', '4368', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4369', '4369.00', '4369.00', '4369', '%99', '4369', '4369', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4370', '4370.00', '4370.00', '4370', '%99', '4370', '4370', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4371', '4371.00', '4371.00', '4371', '%99', '4371', '4371', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4372', '4372.00', '4372.00', '4372', '%99', '4372', '4372', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4373', '4373.00', '4373.00', '4373', '%99', '4373', '4373', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4374', '4374.00', '4374.00', '4374', '%99', '4374', '4374', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4375', '4375.00', '4375.00', '4375', '%99', '4375', '4375', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4376', '4376.00', '4376.00', '4376', '%99', '4376', '4376', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4377', '4377.00', '4377.00', '4377', '%99', '4377', '4377', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4378', '4378.00', '4378.00', '4378', '%99', '4378', '4378', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4379', '4379.00', '4379.00', '4379', '%99', '4379', '4379', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4380', '4380.00', '4380.00', '4380', '%99', '4380', '4380', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4381', '4381.00', '4381.00', '4381', '%99', '4381', '4381', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4382', '4382.00', '4382.00', '4382', '%99', '4382', '4382', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4383', '4383.00', '4383.00', '4383', '%99', '4383', '4383', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4384', '4384.00', '4384.00', '4384', '%99', '4384', '4384', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4385', '4385.00', '4385.00', '4385', '%99', '4385', '4385', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4386', '4386.00', '4386.00', '4386', '%99', '4386', '4386', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4387', '4387.00', '4387.00', '4387', '%99', '4387', '4387', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4388', '4388.00', '4388.00', '4388', '%99', '4388', '4388', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4389', '4389.00', '4389.00', '4389', '%99', '4389', '4389', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4390', '4390.00', '4390.00', '4390', '%99', '4390', '4390', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4391', '4391.00', '4391.00', '4391', '%99', '4391', '4391', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4392', '4392.00', '4392.00', '4392', '%99', '4392', '4392', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4393', '4393.00', '4393.00', '4393', '%99', '4393', '4393', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4394', '4394.00', '4394.00', '4394', '%99', '4394', '4394', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4395', '4395.00', '4395.00', '4395', '%99', '4395', '4395', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4396', '4396.00', '4396.00', '4396', '%99', '4396', '4396', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4397', '4397.00', '4397.00', '4397', '%99', '4397', '4397', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4398', '4398.00', '4398.00', '4398', '%99', '4398', '4398', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4399', '4399.00', '4399.00', '4399', '%99', '4399', '4399', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4400', '4400.00', '4400.00', '4400', '%99', '4400', '4400', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4401', '4401.00', '4401.00', '4401', '%99', '4401', '4401', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4402', '4402.00', '4402.00', '4402', '%99', '4402', '4402', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4403', '4403.00', '4403.00', '4403', '%99', '4403', '4403', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4404', '4404.00', '4404.00', '4404', '%99', '4404', '4404', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4405', '4405.00', '4405.00', '4405', '%99', '4405', '4405', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4406', '4406.00', '4406.00', '4406', '%99', '4406', '4406', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4407', '4407.00', '4407.00', '4407', '%99', '4407', '4407', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4408', '4408.00', '4408.00', '4408', '%99', '4408', '4408', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4409', '4409.00', '4409.00', '4409', '%99', '4409', '4409', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4410', '4410.00', '4410.00', '4410', '%99', '4410', '4410', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4411', '4411.00', '4411.00', '4411', '%99', '4411', '4411', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4412', '4412.00', '4412.00', '4412', '%99', '4412', '4412', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4413', '4413.00', '4413.00', '4413', '%99', '4413', '4413', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4414', '4414.00', '4414.00', '4414', '%99', '4414', '4414', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4415', '4415.00', '4415.00', '4415', '%99', '4415', '4415', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4416', '4416.00', '4416.00', '4416', '%99', '4416', '4416', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4417', '4417.00', '4417.00', '4417', '%99', '4417', '4417', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4418', '4418.00', '4418.00', '4418', '%99', '4418', '4418', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4419', '4419.00', '4419.00', '4419', '%99', '4419', '4419', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4420', '4420.00', '4420.00', '4420', '%99', '4420', '4420', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4421', '4421.00', '4421.00', '4421', '%99', '4421', '4421', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4422', '4422.00', '4422.00', '4422', '%99', '4422', '4422', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4423', '4423.00', '4423.00', '4423', '%99', '4423', '4423', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4424', '4424.00', '4424.00', '4424', '%99', '4424', '4424', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4425', '4425.00', '4425.00', '4425', '%99', '4425', '4425', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4426', '4426.00', '4426.00', '4426', '%99', '4426', '4426', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4427', '4427.00', '4427.00', '4427', '%99', '4427', '4427', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4428', '4428.00', '4428.00', '4428', '%99', '4428', '4428', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4429', '4429.00', '4429.00', '4429', '%99', '4429', '4429', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4430', '4430.00', '4430.00', '4430', '%99', '4430', '4430', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4431', '4431.00', '4431.00', '4431', '%99', '4431', '4431', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4432', '4432.00', '4432.00', '4432', '%99', '4432', '4432', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4433', '4433.00', '4433.00', '4433', '%99', '4433', '4433', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4434', '4434.00', '4434.00', '4434', '%99', '4434', '4434', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4435', '4435.00', '4435.00', '4435', '%99', '4435', '4435', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4436', '4436.00', '4436.00', '4436', '%99', '4436', '4436', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4437', '4437.00', '4437.00', '4437', '%99', '4437', '4437', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4438', '4438.00', '4438.00', '4438', '%99', '4438', '4438', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4439', '4439.00', '4439.00', '4439', '%99', '4439', '4439', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4440', '4440.00', '4440.00', '4440', '%99', '4440', '4440', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4441', '4441.00', '4441.00', '4441', '%99', '4441', '4441', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4442', '4442.00', '4442.00', '4442', '%99', '4442', '4442', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4443', '4443.00', '4443.00', '4443', '%99', '4443', '4443', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4444', '4444.00', '4444.00', '4444', '%99', '4444', '4444', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4445', '4445.00', '4445.00', '4445', '%99', '4445', '4445', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4446', '4446.00', '4446.00', '4446', '%99', '4446', '4446', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4447', '4447.00', '4447.00', '4447', '%99', '4447', '4447', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4448', '4448.00', '4448.00', '4448', '%99', '4448', '4448', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4449', '4449.00', '4449.00', '4449', '%99', '4449', '4449', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4450', '4450.00', '4450.00', '4450', '%99', '4450', '4450', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4451', '4451.00', '4451.00', '4451', '%99', '4451', '4451', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4452', '4452.00', '4452.00', '4452', '%99', '4452', '4452', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4453', '4453.00', '4453.00', '4453', '%99', '4453', '4453', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4454', '4454.00', '4454.00', '4454', '%99', '4454', '4454', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4455', '4455.00', '4455.00', '4455', '%99', '4455', '4455', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4456', '4456.00', '4456.00', '4456', '%99', '4456', '4456', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4457', '4457.00', '4457.00', '4457', '%99', '4457', '4457', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4458', '4458.00', '4458.00', '4458', '%99', '4458', '4458', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4459', '4459.00', '4459.00', '4459', '%99', '4459', '4459', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4460', '4460.00', '4460.00', '4460', '%99', '4460', '4460', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4461', '4461.00', '4461.00', '4461', '%99', '4461', '4461', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4462', '4462.00', '4462.00', '4462', '%99', '4462', '4462', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4463', '4463.00', '4463.00', '4463', '%99', '4463', '4463', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4464', '4464.00', '4464.00', '4464', '%99', '4464', '4464', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4465', '4465.00', '4465.00', '4465', '%99', '4465', '4465', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4466', '4466.00', '4466.00', '4466', '%99', '4466', '4466', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4467', '4467.00', '4467.00', '4467', '%99', '4467', '4467', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4468', '4468.00', '4468.00', '4468', '%99', '4468', '4468', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4469', '4469.00', '4469.00', '4469', '%99', '4469', '4469', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4470', '4470.00', '4470.00', '4470', '%99', '4470', '4470', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4471', '4471.00', '4471.00', '4471', '%99', '4471', '4471', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4472', '4472.00', '4472.00', '4472', '%99', '4472', '4472', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4473', '4473.00', '4473.00', '4473', '%99', '4473', '4473', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4474', '4474.00', '4474.00', '4474', '%99', '4474', '4474', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4475', '4475.00', '4475.00', '4475', '%99', '4475', '4475', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4476', '4476.00', '4476.00', '4476', '%99', '4476', '4476', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4477', '4477.00', '4477.00', '4477', '%99', '4477', '4477', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4478', '4478.00', '4478.00', '4478', '%99', '4478', '4478', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4479', '4479.00', '4479.00', '4479', '%99', '4479', '4479', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4480', '4480.00', '4480.00', '4480', '%99', '4480', '4480', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4481', '4481.00', '4481.00', '4481', '%99', '4481', '4481', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4482', '4482.00', '4482.00', '4482', '%99', '4482', '4482', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4483', '4483.00', '4483.00', '4483', '%99', '4483', '4483', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4484', '4484.00', '4484.00', '4484', '%99', '4484', '4484', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4485', '4485.00', '4485.00', '4485', '%99', '4485', '4485', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4486', '4486.00', '4486.00', '4486', '%99', '4486', '4486', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4487', '4487.00', '4487.00', '4487', '%99', '4487', '4487', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4488', '4488.00', '4488.00', '4488', '%99', '4488', '4488', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4489', '4489.00', '4489.00', '4489', '%99', '4489', '4489', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4490', '4490.00', '4490.00', '4490', '%99', '4490', '4490', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4491', '4491.00', '4491.00', '4491', '%99', '4491', '4491', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4492', '4492.00', '4492.00', '4492', '%99', '4492', '4492', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4493', '4493.00', '4493.00', '4493', '%99', '4493', '4493', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4494', '4494.00', '4494.00', '4494', '%99', '4494', '4494', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4495', '4495.00', '4495.00', '4495', '%99', '4495', '4495', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4496', '4496.00', '4496.00', '4496', '%99', '4496', '4496', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4497', '4497.00', '4497.00', '4497', '%99', '4497', '4497', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4498', '4498.00', '4498.00', '4498', '%99', '4498', '4498', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4499', '4499.00', '4499.00', '4499', '%99', '4499', '4499', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4500', '4500.00', '4500.00', '4500', '%99', '4500', '4500', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4501', '4501.00', '4501.00', '4501', '%99', '4501', '4501', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4502', '4502.00', '4502.00', '4502', '%99', '4502', '4502', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4503', '4503.00', '4503.00', '4503', '%99', '4503', '4503', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4504', '4504.00', '4504.00', '4504', '%99', '4504', '4504', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4505', '4505.00', '4505.00', '4505', '%99', '4505', '4505', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4506', '4506.00', '4506.00', '4506', '%99', '4506', '4506', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4507', '4507.00', '4507.00', '4507', '%99', '4507', '4507', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4508', '4508.00', '4508.00', '4508', '%99', '4508', '4508', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4509', '4509.00', '4509.00', '4509', '%99', '4509', '4509', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4510', '4510.00', '4510.00', '4510', '%99', '4510', '4510', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4511', '4511.00', '4511.00', '4511', '%99', '4511', '4511', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4512', '4512.00', '4512.00', '4512', '%99', '4512', '4512', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4513', '4513.00', '4513.00', '4513', '%99', '4513', '4513', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4514', '4514.00', '4514.00', '4514', '%99', '4514', '4514', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4515', '4515.00', '4515.00', '4515', '%99', '4515', '4515', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4516', '4516.00', '4516.00', '4516', '%99', '4516', '4516', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4517', '4517.00', '4517.00', '4517', '%99', '4517', '4517', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4518', '4518.00', '4518.00', '4518', '%99', '4518', '4518', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4519', '4519.00', '4519.00', '4519', '%99', '4519', '4519', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4520', '4520.00', '4520.00', '4520', '%99', '4520', '4520', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4521', '4521.00', '4521.00', '4521', '%99', '4521', '4521', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4522', '4522.00', '4522.00', '4522', '%99', '4522', '4522', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4523', '4523.00', '4523.00', '4523', '%99', '4523', '4523', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4524', '4524.00', '4524.00', '4524', '%99', '4524', '4524', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4525', '4525.00', '4525.00', '4525', '%99', '4525', '4525', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4526', '4526.00', '4526.00', '4526', '%99', '4526', '4526', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4527', '4527.00', '4527.00', '4527', '%99', '4527', '4527', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4528', '4528.00', '4528.00', '4528', '%99', '4528', '4528', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4529', '4529.00', '4529.00', '4529', '%99', '4529', '4529', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4530', '4530.00', '4530.00', '4530', '%99', '4530', '4530', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4531', '4531.00', '4531.00', '4531', '%99', '4531', '4531', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4532', '4532.00', '4532.00', '4532', '%99', '4532', '4532', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4533', '4533.00', '4533.00', '4533', '%99', '4533', '4533', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4534', '4534.00', '4534.00', '4534', '%99', '4534', '4534', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4535', '4535.00', '4535.00', '4535', '%99', '4535', '4535', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4536', '4536.00', '4536.00', '4536', '%99', '4536', '4536', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4537', '4537.00', '4537.00', '4537', '%99', '4537', '4537', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4538', '4538.00', '4538.00', '4538', '%99', '4538', '4538', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4539', '4539.00', '4539.00', '4539', '%99', '4539', '4539', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4540', '4540.00', '4540.00', '4540', '%99', '4540', '4540', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4541', '4541.00', '4541.00', '4541', '%99', '4541', '4541', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4542', '4542.00', '4542.00', '4542', '%99', '4542', '4542', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4543', '4543.00', '4543.00', '4543', '%99', '4543', '4543', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4544', '4544.00', '4544.00', '4544', '%99', '4544', '4544', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4545', '4545.00', '4545.00', '4545', '%99', '4545', '4545', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4546', '4546.00', '4546.00', '4546', '%99', '4546', '4546', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4547', '4547.00', '4547.00', '4547', '%99', '4547', '4547', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4548', '4548.00', '4548.00', '4548', '%99', '4548', '4548', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4549', '4549.00', '4549.00', '4549', '%99', '4549', '4549', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4550', '4550.00', '4550.00', '4550', '%99', '4550', '4550', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4551', '4551.00', '4551.00', '4551', '%99', '4551', '4551', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4552', '4552.00', '4552.00', '4552', '%99', '4552', '4552', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4553', '4553.00', '4553.00', '4553', '%99', '4553', '4553', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4554', '4554.00', '4554.00', '4554', '%99', '4554', '4554', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4555', '4555.00', '4555.00', '4555', '%99', '4555', '4555', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4556', '4556.00', '4556.00', '4556', '%99', '4556', '4556', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4557', '4557.00', '4557.00', '4557', '%99', '4557', '4557', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4558', '4558.00', '4558.00', '4558', '%99', '4558', '4558', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4559', '4559.00', '4559.00', '4559', '%99', '4559', '4559', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4560', '4560.00', '4560.00', '4560', '%99', '4560', '4560', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4561', '4561.00', '4561.00', '4561', '%99', '4561', '4561', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4562', '4562.00', '4562.00', '4562', '%99', '4562', '4562', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4563', '4563.00', '4563.00', '4563', '%99', '4563', '4563', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4564', '4564.00', '4564.00', '4564', '%99', '4564', '4564', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4565', '4565.00', '4565.00', '4565', '%99', '4565', '4565', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4566', '4566.00', '4566.00', '4566', '%99', '4566', '4566', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4567', '4567.00', '4567.00', '4567', '%99', '4567', '4567', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4568', '4568.00', '4568.00', '4568', '%99', '4568', '4568', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4569', '4569.00', '4569.00', '4569', '%99', '4569', '4569', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4570', '4570.00', '4570.00', '4570', '%99', '4570', '4570', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4571', '4571.00', '4571.00', '4571', '%99', '4571', '4571', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4572', '4572.00', '4572.00', '4572', '%99', '4572', '4572', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4573', '4573.00', '4573.00', '4573', '%99', '4573', '4573', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4574', '4574.00', '4574.00', '4574', '%99', '4574', '4574', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4575', '4575.00', '4575.00', '4575', '%99', '4575', '4575', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4576', '4576.00', '4576.00', '4576', '%99', '4576', '4576', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4577', '4577.00', '4577.00', '4577', '%99', '4577', '4577', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4578', '4578.00', '4578.00', '4578', '%99', '4578', '4578', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4579', '4579.00', '4579.00', '4579', '%99', '4579', '4579', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4580', '4580.00', '4580.00', '4580', '%99', '4580', '4580', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4581', '4581.00', '4581.00', '4581', '%99', '4581', '4581', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4582', '4582.00', '4582.00', '4582', '%99', '4582', '4582', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4583', '4583.00', '4583.00', '4583', '%99', '4583', '4583', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4584', '4584.00', '4584.00', '4584', '%99', '4584', '4584', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4585', '4585.00', '4585.00', '4585', '%99', '4585', '4585', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4586', '4586.00', '4586.00', '4586', '%99', '4586', '4586', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4587', '4587.00', '4587.00', '4587', '%99', '4587', '4587', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4588', '4588.00', '4588.00', '4588', '%99', '4588', '4588', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4589', '4589.00', '4589.00', '4589', '%99', '4589', '4589', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4590', '4590.00', '4590.00', '4590', '%99', '4590', '4590', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4591', '4591.00', '4591.00', '4591', '%99', '4591', '4591', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4592', '4592.00', '4592.00', '4592', '%99', '4592', '4592', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4593', '4593.00', '4593.00', '4593', '%99', '4593', '4593', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4594', '4594.00', '4594.00', '4594', '%99', '4594', '4594', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4595', '4595.00', '4595.00', '4595', '%99', '4595', '4595', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4596', '4596.00', '4596.00', '4596', '%99', '4596', '4596', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4597', '4597.00', '4597.00', '4597', '%99', '4597', '4597', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4598', '4598.00', '4598.00', '4598', '%99', '4598', '4598', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4599', '4599.00', '4599.00', '4599', '%99', '4599', '4599', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4600', '4600.00', '4600.00', '4600', '%99', '4600', '4600', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4601', '4601.00', '4601.00', '4601', '%99', '4601', '4601', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4602', '4602.00', '4602.00', '4602', '%99', '4602', '4602', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4603', '4603.00', '4603.00', '4603', '%99', '4603', '4603', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4604', '4604.00', '4604.00', '4604', '%99', '4604', '4604', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4605', '4605.00', '4605.00', '4605', '%99', '4605', '4605', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4606', '4606.00', '4606.00', '4606', '%99', '4606', '4606', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4607', '4607.00', '4607.00', '4607', '%99', '4607', '4607', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4608', '4608.00', '4608.00', '4608', '%99', '4608', '4608', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4609', '4609.00', '4609.00', '4609', '%99', '4609', '4609', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4610', '4610.00', '4610.00', '4610', '%99', '4610', '4610', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4611', '4611.00', '4611.00', '4611', '%99', '4611', '4611', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4612', '4612.00', '4612.00', '4612', '%99', '4612', '4612', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4613', '4613.00', '4613.00', '4613', '%99', '4613', '4613', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4614', '4614.00', '4614.00', '4614', '%99', '4614', '4614', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4615', '4615.00', '4615.00', '4615', '%99', '4615', '4615', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4616', '4616.00', '4616.00', '4616', '%99', '4616', '4616', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4617', '4617.00', '4617.00', '4617', '%99', '4617', '4617', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4618', '4618.00', '4618.00', '4618', '%99', '4618', '4618', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4619', '4619.00', '4619.00', '4619', '%99', '4619', '4619', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4620', '4620.00', '4620.00', '4620', '%99', '4620', '4620', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4621', '4621.00', '4621.00', '4621', '%99', '4621', '4621', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4622', '4622.00', '4622.00', '4622', '%99', '4622', '4622', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4623', '4623.00', '4623.00', '4623', '%99', '4623', '4623', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4624', '4624.00', '4624.00', '4624', '%99', '4624', '4624', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4625', '4625.00', '4625.00', '4625', '%99', '4625', '4625', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4626', '4626.00', '4626.00', '4626', '%99', '4626', '4626', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4627', '4627.00', '4627.00', '4627', '%99', '4627', '4627', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4628', '4628.00', '4628.00', '4628', '%99', '4628', '4628', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4629', '4629.00', '4629.00', '4629', '%99', '4629', '4629', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4630', '4630.00', '4630.00', '4630', '%99', '4630', '4630', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4631', '4631.00', '4631.00', '4631', '%99', '4631', '4631', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4632', '4632.00', '4632.00', '4632', '%99', '4632', '4632', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4633', '4633.00', '4633.00', '4633', '%99', '4633', '4633', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4634', '4634.00', '4634.00', '4634', '%99', '4634', '4634', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4635', '4635.00', '4635.00', '4635', '%99', '4635', '4635', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4636', '4636.00', '4636.00', '4636', '%99', '4636', '4636', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4637', '4637.00', '4637.00', '4637', '%99', '4637', '4637', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4638', '4638.00', '4638.00', '4638', '%99', '4638', '4638', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4639', '4639.00', '4639.00', '4639', '%99', '4639', '4639', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4640', '4640.00', '4640.00', '4640', '%99', '4640', '4640', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4641', '4641.00', '4641.00', '4641', '%99', '4641', '4641', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4642', '4642.00', '4642.00', '4642', '%99', '4642', '4642', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4643', '4643.00', '4643.00', '4643', '%99', '4643', '4643', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4644', '4644.00', '4644.00', '4644', '%99', '4644', '4644', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4645', '4645.00', '4645.00', '4645', '%99', '4645', '4645', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4646', '4646.00', '4646.00', '4646', '%99', '4646', '4646', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4647', '4647.00', '4647.00', '4647', '%99', '4647', '4647', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4648', '4648.00', '4648.00', '4648', '%99', '4648', '4648', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4649', '4649.00', '4649.00', '4649', '%99', '4649', '4649', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4650', '4650.00', '4650.00', '4650', '%99', '4650', '4650', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4651', '4651.00', '4651.00', '4651', '%99', '4651', '4651', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4652', '4652.00', '4652.00', '4652', '%99', '4652', '4652', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4653', '4653.00', '4653.00', '4653', '%99', '4653', '4653', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4654', '4654.00', '4654.00', '4654', '%99', '4654', '4654', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4655', '4655.00', '4655.00', '4655', '%99', '4655', '4655', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4656', '4656.00', '4656.00', '4656', '%99', '4656', '4656', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4657', '4657.00', '4657.00', '4657', '%99', '4657', '4657', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4658', '4658.00', '4658.00', '4658', '%99', '4658', '4658', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4659', '4659.00', '4659.00', '4659', '%99', '4659', '4659', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4660', '4660.00', '4660.00', '4660', '%99', '4660', '4660', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4661', '4661.00', '4661.00', '4661', '%99', '4661', '4661', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4662', '4662.00', '4662.00', '4662', '%99', '4662', '4662', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4663', '4663.00', '4663.00', '4663', '%99', '4663', '4663', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4664', '4664.00', '4664.00', '4664', '%99', '4664', '4664', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4665', '4665.00', '4665.00', '4665', '%99', '4665', '4665', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4666', '4666.00', '4666.00', '4666', '%99', '4666', '4666', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4667', '4667.00', '4667.00', '4667', '%99', '4667', '4667', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4668', '4668.00', '4668.00', '4668', '%99', '4668', '4668', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4669', '4669.00', '4669.00', '4669', '%99', '4669', '4669', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4670', '4670.00', '4670.00', '4670', '%99', '4670', '4670', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4671', '4671.00', '4671.00', '4671', '%99', '4671', '4671', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4672', '4672.00', '4672.00', '4672', '%99', '4672', '4672', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4673', '4673.00', '4673.00', '4673', '%99', '4673', '4673', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4674', '4674.00', '4674.00', '4674', '%99', '4674', '4674', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4675', '4675.00', '4675.00', '4675', '%99', '4675', '4675', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4676', '4676.00', '4676.00', '4676', '%99', '4676', '4676', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4677', '4677.00', '4677.00', '4677', '%99', '4677', '4677', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4678', '4678.00', '4678.00', '4678', '%99', '4678', '4678', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4679', '4679.00', '4679.00', '4679', '%99', '4679', '4679', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4680', '4680.00', '4680.00', '4680', '%99', '4680', '4680', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4681', '4681.00', '4681.00', '4681', '%99', '4681', '4681', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4682', '4682.00', '4682.00', '4682', '%99', '4682', '4682', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4683', '4683.00', '4683.00', '4683', '%99', '4683', '4683', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4684', '4684.00', '4684.00', '4684', '%99', '4684', '4684', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4685', '4685.00', '4685.00', '4685', '%99', '4685', '4685', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4686', '4686.00', '4686.00', '4686', '%99', '4686', '4686', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4687', '4687.00', '4687.00', '4687', '%99', '4687', '4687', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4688', '4688.00', '4688.00', '4688', '%99', '4688', '4688', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4689', '4689.00', '4689.00', '4689', '%99', '4689', '4689', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4690', '4690.00', '4690.00', '4690', '%99', '4690', '4690', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4691', '4691.00', '4691.00', '4691', '%99', '4691', '4691', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4692', '4692.00', '4692.00', '4692', '%99', '4692', '4692', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4693', '4693.00', '4693.00', '4693', '%99', '4693', '4693', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4694', '4694.00', '4694.00', '4694', '%99', '4694', '4694', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4695', '4695.00', '4695.00', '4695', '%99', '4695', '4695', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4696', '4696.00', '4696.00', '4696', '%99', '4696', '4696', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4697', '4697.00', '4697.00', '4697', '%99', '4697', '4697', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4698', '4698.00', '4698.00', '4698', '%99', '4698', '4698', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4699', '4699.00', '4699.00', '4699', '%99', '4699', '4699', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4700', '4700.00', '4700.00', '4700', '%99', '4700', '4700', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4701', '4701.00', '4701.00', '4701', '%99', '4701', '4701', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4702', '4702.00', '4702.00', '4702', '%99', '4702', '4702', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4703', '4703.00', '4703.00', '4703', '%99', '4703', '4703', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4704', '4704.00', '4704.00', '4704', '%99', '4704', '4704', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4705', '4705.00', '4705.00', '4705', '%99', '4705', '4705', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4706', '4706.00', '4706.00', '4706', '%99', '4706', '4706', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4707', '4707.00', '4707.00', '4707', '%99', '4707', '4707', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4708', '4708.00', '4708.00', '4708', '%99', '4708', '4708', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4709', '4709.00', '4709.00', '4709', '%99', '4709', '4709', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4710', '4710.00', '4710.00', '4710', '%99', '4710', '4710', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4711', '4711.00', '4711.00', '4711', '%99', '4711', '4711', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4712', '4712.00', '4712.00', '4712', '%99', '4712', '4712', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4713', '4713.00', '4713.00', '4713', '%99', '4713', '4713', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4714', '4714.00', '4714.00', '4714', '%99', '4714', '4714', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4715', '4715.00', '4715.00', '4715', '%99', '4715', '4715', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4716', '4716.00', '4716.00', '4716', '%99', '4716', '4716', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4717', '4717.00', '4717.00', '4717', '%99', '4717', '4717', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4718', '4718.00', '4718.00', '4718', '%99', '4718', '4718', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4719', '4719.00', '4719.00', '4719', '%99', '4719', '4719', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4720', '4720.00', '4720.00', '4720', '%99', '4720', '4720', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4721', '4721.00', '4721.00', '4721', '%99', '4721', '4721', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4722', '4722.00', '4722.00', '4722', '%99', '4722', '4722', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4723', '4723.00', '4723.00', '4723', '%99', '4723', '4723', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4724', '4724.00', '4724.00', '4724', '%99', '4724', '4724', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4725', '4725.00', '4725.00', '4725', '%99', '4725', '4725', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4726', '4726.00', '4726.00', '4726', '%99', '4726', '4726', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4727', '4727.00', '4727.00', '4727', '%99', '4727', '4727', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4728', '4728.00', '4728.00', '4728', '%99', '4728', '4728', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4729', '4729.00', '4729.00', '4729', '%99', '4729', '4729', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4730', '4730.00', '4730.00', '4730', '%99', '4730', '4730', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4731', '4731.00', '4731.00', '4731', '%99', '4731', '4731', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4732', '4732.00', '4732.00', '4732', '%99', '4732', '4732', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4733', '4733.00', '4733.00', '4733', '%99', '4733', '4733', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4734', '4734.00', '4734.00', '4734', '%99', '4734', '4734', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4735', '4735.00', '4735.00', '4735', '%99', '4735', '4735', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4736', '4736.00', '4736.00', '4736', '%99', '4736', '4736', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4737', '4737.00', '4737.00', '4737', '%99', '4737', '4737', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4738', '4738.00', '4738.00', '4738', '%99', '4738', '4738', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4739', '4739.00', '4739.00', '4739', '%99', '4739', '4739', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4740', '4740.00', '4740.00', '4740', '%99', '4740', '4740', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4741', '4741.00', '4741.00', '4741', '%99', '4741', '4741', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4742', '4742.00', '4742.00', '4742', '%99', '4742', '4742', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4743', '4743.00', '4743.00', '4743', '%99', '4743', '4743', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4744', '4744.00', '4744.00', '4744', '%99', '4744', '4744', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4745', '4745.00', '4745.00', '4745', '%99', '4745', '4745', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4746', '4746.00', '4746.00', '4746', '%99', '4746', '4746', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4747', '4747.00', '4747.00', '4747', '%99', '4747', '4747', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4748', '4748.00', '4748.00', '4748', '%99', '4748', '4748', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4749', '4749.00', '4749.00', '4749', '%99', '4749', '4749', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4750', '4750.00', '4750.00', '4750', '%99', '4750', '4750', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4751', '4751.00', '4751.00', '4751', '%99', '4751', '4751', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4752', '4752.00', '4752.00', '4752', '%99', '4752', '4752', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4753', '4753.00', '4753.00', '4753', '%99', '4753', '4753', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4754', '4754.00', '4754.00', '4754', '%99', '4754', '4754', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4755', '4755.00', '4755.00', '4755', '%99', '4755', '4755', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4756', '4756.00', '4756.00', '4756', '%99', '4756', '4756', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4757', '4757.00', '4757.00', '4757', '%99', '4757', '4757', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4758', '4758.00', '4758.00', '4758', '%99', '4758', '4758', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4759', '4759.00', '4759.00', '4759', '%99', '4759', '4759', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4760', '4760.00', '4760.00', '4760', '%99', '4760', '4760', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4761', '4761.00', '4761.00', '4761', '%99', '4761', '4761', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4762', '4762.00', '4762.00', '4762', '%99', '4762', '4762', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4763', '4763.00', '4763.00', '4763', '%99', '4763', '4763', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4764', '4764.00', '4764.00', '4764', '%99', '4764', '4764', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4765', '4765.00', '4765.00', '4765', '%99', '4765', '4765', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4766', '4766.00', '4766.00', '4766', '%99', '4766', '4766', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4767', '4767.00', '4767.00', '4767', '%99', '4767', '4767', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4768', '4768.00', '4768.00', '4768', '%99', '4768', '4768', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4769', '4769.00', '4769.00', '4769', '%99', '4769', '4769', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4770', '4770.00', '4770.00', '4770', '%99', '4770', '4770', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4771', '4771.00', '4771.00', '4771', '%99', '4771', '4771', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4772', '4772.00', '4772.00', '4772', '%99', '4772', '4772', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4773', '4773.00', '4773.00', '4773', '%99', '4773', '4773', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4774', '4774.00', '4774.00', '4774', '%99', '4774', '4774', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4775', '4775.00', '4775.00', '4775', '%99', '4775', '4775', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4776', '4776.00', '4776.00', '4776', '%99', '4776', '4776', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4777', '4777.00', '4777.00', '4777', '%99', '4777', '4777', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4778', '4778.00', '4778.00', '4778', '%99', '4778', '4778', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4779', '4779.00', '4779.00', '4779', '%99', '4779', '4779', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4780', '4780.00', '4780.00', '4780', '%99', '4780', '4780', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4781', '4781.00', '4781.00', '4781', '%99', '4781', '4781', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4782', '4782.00', '4782.00', '4782', '%99', '4782', '4782', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4783', '4783.00', '4783.00', '4783', '%99', '4783', '4783', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4784', '4784.00', '4784.00', '4784', '%99', '4784', '4784', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4785', '4785.00', '4785.00', '4785', '%99', '4785', '4785', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4786', '4786.00', '4786.00', '4786', '%99', '4786', '4786', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4787', '4787.00', '4787.00', '4787', '%99', '4787', '4787', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4788', '4788.00', '4788.00', '4788', '%99', '4788', '4788', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4789', '4789.00', '4789.00', '4789', '%99', '4789', '4789', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4790', '4790.00', '4790.00', '4790', '%99', '4790', '4790', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4791', '4791.00', '4791.00', '4791', '%99', '4791', '4791', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4792', '4792.00', '4792.00', '4792', '%99', '4792', '4792', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4793', '4793.00', '4793.00', '4793', '%99', '4793', '4793', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4794', '4794.00', '4794.00', '4794', '%99', '4794', '4794', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4795', '4795.00', '4795.00', '4795', '%99', '4795', '4795', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4796', '4796.00', '4796.00', '4796', '%99', '4796', '4796', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4797', '4797.00', '4797.00', '4797', '%99', '4797', '4797', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4798', '4798.00', '4798.00', '4798', '%99', '4798', '4798', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4799', '4799.00', '4799.00', '4799', '%99', '4799', '4799', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4800', '4800.00', '4800.00', '4800', '%99', '4800', '4800', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4801', '4801.00', '4801.00', '4801', '%99', '4801', '4801', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4802', '4802.00', '4802.00', '4802', '%99', '4802', '4802', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4803', '4803.00', '4803.00', '4803', '%99', '4803', '4803', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4804', '4804.00', '4804.00', '4804', '%99', '4804', '4804', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4805', '4805.00', '4805.00', '4805', '%99', '4805', '4805', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4806', '4806.00', '4806.00', '4806', '%99', '4806', '4806', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4807', '4807.00', '4807.00', '4807', '%99', '4807', '4807', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4808', '4808.00', '4808.00', '4808', '%99', '4808', '4808', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4809', '4809.00', '4809.00', '4809', '%99', '4809', '4809', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4810', '4810.00', '4810.00', '4810', '%99', '4810', '4810', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4811', '4811.00', '4811.00', '4811', '%99', '4811', '4811', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4812', '4812.00', '4812.00', '4812', '%99', '4812', '4812', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4813', '4813.00', '4813.00', '4813', '%99', '4813', '4813', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4814', '4814.00', '4814.00', '4814', '%99', '4814', '4814', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4815', '4815.00', '4815.00', '4815', '%99', '4815', '4815', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4816', '4816.00', '4816.00', '4816', '%99', '4816', '4816', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4817', '4817.00', '4817.00', '4817', '%99', '4817', '4817', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4818', '4818.00', '4818.00', '4818', '%99', '4818', '4818', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4819', '4819.00', '4819.00', '4819', '%99', '4819', '4819', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4820', '4820.00', '4820.00', '4820', '%99', '4820', '4820', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4821', '4821.00', '4821.00', '4821', '%99', '4821', '4821', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4822', '4822.00', '4822.00', '4822', '%99', '4822', '4822', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4823', '4823.00', '4823.00', '4823', '%99', '4823', '4823', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4824', '4824.00', '4824.00', '4824', '%99', '4824', '4824', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4825', '4825.00', '4825.00', '4825', '%99', '4825', '4825', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4826', '4826.00', '4826.00', '4826', '%99', '4826', '4826', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4827', '4827.00', '4827.00', '4827', '%99', '4827', '4827', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4828', '4828.00', '4828.00', '4828', '%99', '4828', '4828', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4829', '4829.00', '4829.00', '4829', '%99', '4829', '4829', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4830', '4830.00', '4830.00', '4830', '%99', '4830', '4830', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4831', '4831.00', '4831.00', '4831', '%99', '4831', '4831', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4832', '4832.00', '4832.00', '4832', '%99', '4832', '4832', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4833', '4833.00', '4833.00', '4833', '%99', '4833', '4833', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4834', '4834.00', '4834.00', '4834', '%99', '4834', '4834', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4835', '4835.00', '4835.00', '4835', '%99', '4835', '4835', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4836', '4836.00', '4836.00', '4836', '%99', '4836', '4836', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4837', '4837.00', '4837.00', '4837', '%99', '4837', '4837', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4838', '4838.00', '4838.00', '4838', '%99', '4838', '4838', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4839', '4839.00', '4839.00', '4839', '%99', '4839', '4839', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4840', '4840.00', '4840.00', '4840', '%99', '4840', '4840', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4841', '4841.00', '4841.00', '4841', '%99', '4841', '4841', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4842', '4842.00', '4842.00', '4842', '%99', '4842', '4842', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4843', '4843.00', '4843.00', '4843', '%99', '4843', '4843', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4844', '4844.00', '4844.00', '4844', '%99', '4844', '4844', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4845', '4845.00', '4845.00', '4845', '%99', '4845', '4845', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4846', '4846.00', '4846.00', '4846', '%99', '4846', '4846', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4847', '4847.00', '4847.00', '4847', '%99', '4847', '4847', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4848', '4848.00', '4848.00', '4848', '%99', '4848', '4848', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4849', '4849.00', '4849.00', '4849', '%99', '4849', '4849', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4850', '4850.00', '4850.00', '4850', '%99', '4850', '4850', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4851', '4851.00', '4851.00', '4851', '%99', '4851', '4851', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4852', '4852.00', '4852.00', '4852', '%99', '4852', '4852', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4853', '4853.00', '4853.00', '4853', '%99', '4853', '4853', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4854', '4854.00', '4854.00', '4854', '%99', '4854', '4854', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4855', '4855.00', '4855.00', '4855', '%99', '4855', '4855', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4856', '4856.00', '4856.00', '4856', '%99', '4856', '4856', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4857', '4857.00', '4857.00', '4857', '%99', '4857', '4857', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4858', '4858.00', '4858.00', '4858', '%99', '4858', '4858', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4859', '4859.00', '4859.00', '4859', '%99', '4859', '4859', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4860', '4860.00', '4860.00', '4860', '%99', '4860', '4860', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4861', '4861.00', '4861.00', '4861', '%99', '4861', '4861', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4862', '4862.00', '4862.00', '4862', '%99', '4862', '4862', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4863', '4863.00', '4863.00', '4863', '%99', '4863', '4863', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4864', '4864.00', '4864.00', '4864', '%99', '4864', '4864', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4865', '4865.00', '4865.00', '4865', '%99', '4865', '4865', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4866', '4866.00', '4866.00', '4866', '%99', '4866', '4866', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4867', '4867.00', '4867.00', '4867', '%99', '4867', '4867', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4868', '4868.00', '4868.00', '4868', '%99', '4868', '4868', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4869', '4869.00', '4869.00', '4869', '%99', '4869', '4869', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4870', '4870.00', '4870.00', '4870', '%99', '4870', '4870', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4871', '4871.00', '4871.00', '4871', '%99', '4871', '4871', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4872', '4872.00', '4872.00', '4872', '%99', '4872', '4872', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4873', '4873.00', '4873.00', '4873', '%99', '4873', '4873', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4874', '4874.00', '4874.00', '4874', '%99', '4874', '4874', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4875', '4875.00', '4875.00', '4875', '%99', '4875', '4875', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4876', '4876.00', '4876.00', '4876', '%99', '4876', '4876', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4877', '4877.00', '4877.00', '4877', '%99', '4877', '4877', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4878', '4878.00', '4878.00', '4878', '%99', '4878', '4878', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4879', '4879.00', '4879.00', '4879', '%99', '4879', '4879', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4880', '4880.00', '4880.00', '4880', '%99', '4880', '4880', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4881', '4881.00', '4881.00', '4881', '%99', '4881', '4881', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4882', '4882.00', '4882.00', '4882', '%99', '4882', '4882', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4883', '4883.00', '4883.00', '4883', '%99', '4883', '4883', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4884', '4884.00', '4884.00', '4884', '%99', '4884', '4884', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4885', '4885.00', '4885.00', '4885', '%99', '4885', '4885', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4886', '4886.00', '4886.00', '4886', '%99', '4886', '4886', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4887', '4887.00', '4887.00', '4887', '%99', '4887', '4887', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4888', '4888.00', '4888.00', '4888', '%99', '4888', '4888', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4889', '4889.00', '4889.00', '4889', '%99', '4889', '4889', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4890', '4890.00', '4890.00', '4890', '%99', '4890', '4890', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4891', '4891.00', '4891.00', '4891', '%99', '4891', '4891', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4892', '4892.00', '4892.00', '4892', '%99', '4892', '4892', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4893', '4893.00', '4893.00', '4893', '%99', '4893', '4893', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4894', '4894.00', '4894.00', '4894', '%99', '4894', '4894', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4895', '4895.00', '4895.00', '4895', '%99', '4895', '4895', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4896', '4896.00', '4896.00', '4896', '%99', '4896', '4896', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4897', '4897.00', '4897.00', '4897', '%99', '4897', '4897', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4898', '4898.00', '4898.00', '4898', '%99', '4898', '4898', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4899', '4899.00', '4899.00', '4899', '%99', '4899', '4899', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4900', '4900.00', '4900.00', '4900', '%99', '4900', '4900', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4901', '4901.00', '4901.00', '4901', '%99', '4901', '4901', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4902', '4902.00', '4902.00', '4902', '%99', '4902', '4902', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4903', '4903.00', '4903.00', '4903', '%99', '4903', '4903', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4904', '4904.00', '4904.00', '4904', '%99', '4904', '4904', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4905', '4905.00', '4905.00', '4905', '%99', '4905', '4905', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4906', '4906.00', '4906.00', '4906', '%99', '4906', '4906', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4907', '4907.00', '4907.00', '4907', '%99', '4907', '4907', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4908', '4908.00', '4908.00', '4908', '%99', '4908', '4908', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4909', '4909.00', '4909.00', '4909', '%99', '4909', '4909', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4910', '4910.00', '4910.00', '4910', '%99', '4910', '4910', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4911', '4911.00', '4911.00', '4911', '%99', '4911', '4911', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4912', '4912.00', '4912.00', '4912', '%99', '4912', '4912', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4913', '4913.00', '4913.00', '4913', '%99', '4913', '4913', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4914', '4914.00', '4914.00', '4914', '%99', '4914', '4914', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4915', '4915.00', '4915.00', '4915', '%99', '4915', '4915', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4916', '4916.00', '4916.00', '4916', '%99', '4916', '4916', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4917', '4917.00', '4917.00', '4917', '%99', '4917', '4917', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4918', '4918.00', '4918.00', '4918', '%99', '4918', '4918', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4919', '4919.00', '4919.00', '4919', '%99', '4919', '4919', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4920', '4920.00', '4920.00', '4920', '%99', '4920', '4920', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4921', '4921.00', '4921.00', '4921', '%99', '4921', '4921', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4922', '4922.00', '4922.00', '4922', '%99', '4922', '4922', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4923', '4923.00', '4923.00', '4923', '%99', '4923', '4923', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4924', '4924.00', '4924.00', '4924', '%99', '4924', '4924', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4925', '4925.00', '4925.00', '4925', '%99', '4925', '4925', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4926', '4926.00', '4926.00', '4926', '%99', '4926', '4926', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4927', '4927.00', '4927.00', '4927', '%99', '4927', '4927', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4928', '4928.00', '4928.00', '4928', '%99', '4928', '4928', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4929', '4929.00', '4929.00', '4929', '%99', '4929', '4929', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4930', '4930.00', '4930.00', '4930', '%99', '4930', '4930', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4931', '4931.00', '4931.00', '4931', '%99', '4931', '4931', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4932', '4932.00', '4932.00', '4932', '%99', '4932', '4932', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4933', '4933.00', '4933.00', '4933', '%99', '4933', '4933', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4934', '4934.00', '4934.00', '4934', '%99', '4934', '4934', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4935', '4935.00', '4935.00', '4935', '%99', '4935', '4935', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4936', '4936.00', '4936.00', '4936', '%99', '4936', '4936', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4937', '4937.00', '4937.00', '4937', '%99', '4937', '4937', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4938', '4938.00', '4938.00', '4938', '%99', '4938', '4938', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4939', '4939.00', '4939.00', '4939', '%99', '4939', '4939', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4940', '4940.00', '4940.00', '4940', '%99', '4940', '4940', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4941', '4941.00', '4941.00', '4941', '%99', '4941', '4941', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4942', '4942.00', '4942.00', '4942', '%99', '4942', '4942', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4943', '4943.00', '4943.00', '4943', '%99', '4943', '4943', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4944', '4944.00', '4944.00', '4944', '%99', '4944', '4944', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4945', '4945.00', '4945.00', '4945', '%99', '4945', '4945', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4946', '4946.00', '4946.00', '4946', '%99', '4946', '4946', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4947', '4947.00', '4947.00', '4947', '%99', '4947', '4947', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4948', '4948.00', '4948.00', '4948', '%99', '4948', '4948', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4949', '4949.00', '4949.00', '4949', '%99', '4949', '4949', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4950', '4950.00', '4950.00', '4950', '%99', '4950', '4950', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4951', '4951.00', '4951.00', '4951', '%99', '4951', '4951', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4952', '4952.00', '4952.00', '4952', '%99', '4952', '4952', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4953', '4953.00', '4953.00', '4953', '%99', '4953', '4953', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4954', '4954.00', '4954.00', '4954', '%99', '4954', '4954', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4955', '4955.00', '4955.00', '4955', '%99', '4955', '4955', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4956', '4956.00', '4956.00', '4956', '%99', '4956', '4956', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4957', '4957.00', '4957.00', '4957', '%99', '4957', '4957', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4958', '4958.00', '4958.00', '4958', '%99', '4958', '4958', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4959', '4959.00', '4959.00', '4959', '%99', '4959', '4959', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4960', '4960.00', '4960.00', '4960', '%99', '4960', '4960', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4961', '4961.00', '4961.00', '4961', '%99', '4961', '4961', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4962', '4962.00', '4962.00', '4962', '%99', '4962', '4962', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4963', '4963.00', '4963.00', '4963', '%99', '4963', '4963', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4964', '4964.00', '4964.00', '4964', '%99', '4964', '4964', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4965', '4965.00', '4965.00', '4965', '%99', '4965', '4965', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4966', '4966.00', '4966.00', '4966', '%99', '4966', '4966', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4967', '4967.00', '4967.00', '4967', '%99', '4967', '4967', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4968', '4968.00', '4968.00', '4968', '%99', '4968', '4968', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4969', '4969.00', '4969.00', '4969', '%99', '4969', '4969', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4970', '4970.00', '4970.00', '4970', '%99', '4970', '4970', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4971', '4971.00', '4971.00', '4971', '%99', '4971', '4971', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4972', '4972.00', '4972.00', '4972', '%99', '4972', '4972', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4973', '4973.00', '4973.00', '4973', '%99', '4973', '4973', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4974', '4974.00', '4974.00', '4974', '%99', '4974', '4974', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4975', '4975.00', '4975.00', '4975', '%99', '4975', '4975', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4976', '4976.00', '4976.00', '4976', '%99', '4976', '4976', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4977', '4977.00', '4977.00', '4977', '%99', '4977', '4977', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4978', '4978.00', '4978.00', '4978', '%99', '4978', '4978', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4979', '4979.00', '4979.00', '4979', '%99', '4979', '4979', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4980', '4980.00', '4980.00', '4980', '%99', '4980', '4980', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4981', '4981.00', '4981.00', '4981', '%99', '4981', '4981', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4982', '4982.00', '4982.00', '4982', '%99', '4982', '4982', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4983', '4983.00', '4983.00', '4983', '%99', '4983', '4983', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4984', '4984.00', '4984.00', '4984', '%99', '4984', '4984', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4985', '4985.00', '4985.00', '4985', '%99', '4985', '4985', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4986', '4986.00', '4986.00', '4986', '%99', '4986', '4986', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4987', '4987.00', '4987.00', '4987', '%99', '4987', '4987', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4988', '4988.00', '4988.00', '4988', '%99', '4988', '4988', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4989', '4989.00', '4989.00', '4989', '%99', '4989', '4989', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4990', '4990.00', '4990.00', '4990', '%99', '4990', '4990', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4991', '4991.00', '4991.00', '4991', '%99', '4991', '4991', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4992', '4992.00', '4992.00', '4992', '%99', '4992', '4992', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4993', '4993.00', '4993.00', '4993', '%99', '4993', '4993', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4994', '4994.00', '4994.00', '4994', '%99', '4994', '4994', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4995', '4995.00', '4995.00', '4995', '%99', '4995', '4995', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4996', '4996.00', '4996.00', '4996', '%99', '4996', '4996', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4997', '4997.00', '4997.00', '4997', '%99', '4997', '4997', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4998', '4998.00', '4998.00', '4998', '%99', '4998', '4998', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('4999', '4999.00', '4999.00', '4999', '%99', '4999', '4999', '1', '1', '2018-09-11');
INSERT INTO `t_income_class` VALUES ('5000', '5000.00', '5000.00', '5000', '%99', '5000', '5000', '1', '1', '2018-09-11');

-- ----------------------------
-- Table structure for t_intimacy_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_intimacy_rank`;
CREATE TABLE `t_intimacy_rank` (
  `tintimacy_id` int(11) NOT NULL AUTO_INCREMENT,
  `intimate_rank` int(11) NOT NULL COMMENT '排名',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名',
  `fous_value` int(11) NOT NULL COMMENT '势力值',
  `server_id` int(11) DEFAULT NULL,
  `server_name` varchar(16) DEFAULT NULL COMMENT '玩家所在的区服名称',
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`tintimacy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->排行消息-->亲密榜';

-- ----------------------------
-- Records of t_intimacy_rank
-- ----------------------------
INSERT INTO `t_intimacy_rank` VALUES ('1', '1', '龙哥', '8888888', '1', '千年盛世1区', '1', null);
INSERT INTO `t_intimacy_rank` VALUES ('2', '2', '龙哥', '666', null, '千年乱世', null, null);

-- ----------------------------
-- Table structure for t_level_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_level_rank`;
CREATE TABLE `t_level_rank` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_rank` int(11) NOT NULL COMMENT '排名',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名',
  `force_value` int(11) NOT NULL COMMENT '势力值',
  `server_id` int(11) DEFAULT NULL,
  `server_name` varchar(16) DEFAULT NULL COMMENT '玩家获得所属区服',
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of t_level_rank
-- ----------------------------
INSERT INTO `t_level_rank` VALUES ('1', '1', '龙哥', '66666', '1', '千年盛世1区', '1', null);
INSERT INTO `t_level_rank` VALUES ('2', '2', '龙哥', '88888888', null, '千年乱世2区', null, null);

-- ----------------------------
-- Table structure for t_login_day
-- ----------------------------
DROP TABLE IF EXISTS `t_login_day`;
CREATE TABLE `t_login_day` (
  `login_day_id` int(11) NOT NULL AUTO_INCREMENT,
  `count_day` int(11) NOT NULL COMMENT '登录天数',
  `show_time` date DEFAULT NULL,
  `count_num` int(11) NOT NULL COMMENT '用户数量',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`login_day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='登录天数';

-- ----------------------------
-- Records of t_login_day
-- ----------------------------
INSERT INTO `t_login_day` VALUES ('1', '1', null, '100000', '1', '1');
INSERT INTO `t_login_day` VALUES ('2', '2', null, '8888', null, null);

-- ----------------------------
-- Table structure for t_ltv_count
-- ----------------------------
DROP TABLE IF EXISTS `t_ltv_count`;
CREATE TABLE `t_ltv_count` (
  `ltv_id` int(11) NOT NULL AUTO_INCREMENT,
  `recorde_time` date NOT NULL COMMENT '记录时间',
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='LTV概况';

-- ----------------------------
-- Records of t_ltv_count
-- ----------------------------
INSERT INTO `t_ltv_count` VALUES ('1', '2018-09-11', '123', '1234', '456', '789', '9999', '66666', '88888', '9999', '66666', '1', '1');
INSERT INTO `t_ltv_count` VALUES ('2', '2018-09-13', '345', '234', '666', '888', '999', '1111', '1111', '2222', '6666', null, null);

-- ----------------------------
-- Table structure for t_onlineplayer_count
-- ----------------------------
DROP TABLE IF EXISTS `t_onlineplayer_count`;
CREATE TABLE `t_onlineplayer_count` (
  `online_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '在线id',
  `record_time` date NOT NULL COMMENT '记录年月日',
  `show_time_hour` varchar(16) NOT NULL COMMENT '展示时间',
  `online_player_count` int(11) NOT NULL COMMENT '在线用户数量',
  `allplayer_coun` int(11) NOT NULL COMMENT '在线用户总人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`online_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='在线用户(在线分析)';

-- ----------------------------
-- Records of t_onlineplayer_count
-- ----------------------------
INSERT INTO `t_onlineplayer_count` VALUES ('1', '2018-09-11', '1:00', '99999', '88888', '1', '1');
INSERT INTO `t_onlineplayer_count` VALUES ('2', '2018-09-11', '2', '1111', '2222', null, null);

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
  `channel_id` int(11) DEFAULT NULL,
  `record_time` date DEFAULT NULL COMMENT '记录时间',
  PRIMARY KEY (`out_consume_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->产出与消耗';

-- ----------------------------
-- Records of t_out_consume
-- ----------------------------
INSERT INTO `t_out_consume` VALUES ('1', '铭文', '50', '400', '1', '1', '2018-09-04');
INSERT INTO `t_out_consume` VALUES ('2', '元宝', '90', '100', null, null, null);

-- ----------------------------
-- Table structure for t_person_rank
-- ----------------------------
DROP TABLE IF EXISTS `t_person_rank`;
CREATE TABLE `t_person_rank` (
  `person_rank_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '个人排行',
  `player_name` varchar(16) NOT NULL COMMENT '玩家名称',
  `server_name` varchar(16) NOT NULL COMMENT '区服',
  `server_id` int(11) NOT NULL,
  `record_time` date NOT NULL,
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
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL COMMENT '展示时间',
  PRIMARY KEY (`charging_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='计费点分析(充值统计)';

-- ----------------------------
-- Records of t_point_analyse
-- ----------------------------
INSERT INTO `t_point_analyse` VALUES ('1', '计费点0', '100000', '99999', '1', '1', null);
INSERT INTO `t_point_analyse` VALUES ('2', '计费点1', '99999', '123456', null, null, null);

-- ----------------------------
-- Table structure for t_retain_player
-- ----------------------------
DROP TABLE IF EXISTS `t_retain_player`;
CREATE TABLE `t_retain_player` (
  `retain_id` int(11) NOT NULL AUTO_INCREMENT,
  `show_time` date NOT NULL COMMENT '展示时间',
  `oneday_retain` varchar(16) NOT NULL COMMENT '留存',
  `threeday_retain` varchar(16) NOT NULL,
  `weekly_retain` varchar(16) NOT NULL COMMENT '七留',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
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
  `channel_id` int(11) DEFAULT NULL,
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
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='游戏行为统计-->任务消息';

-- ----------------------------
-- Records of t_task_message
-- ----------------------------
INSERT INTO `t_task_message` VALUES ('1', '1', '888888', '1', '1', null);
INSERT INTO `t_task_message` VALUES ('2', '2', '999999', null, null, null);

-- ----------------------------
-- Table structure for t_vip_count
-- ----------------------------
DROP TABLE IF EXISTS `t_vip_count`;
CREATE TABLE `t_vip_count` (
  `vip_id` int(11) NOT NULL AUTO_INCREMENT,
  `vip_grade` varchar(12) NOT NULL COMMENT 'vip区间',
  `vip_online_count` int(11) DEFAULT NULL COMMENT '人数',
  `server_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `show_time` date DEFAULT NULL,
  PRIMARY KEY (`vip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='vip人数(游戏行为统计)';

-- ----------------------------
-- Records of t_vip_count
-- ----------------------------
INSERT INTO `t_vip_count` VALUES ('1', '1', '100000', '1', '1', null);
INSERT INTO `t_vip_count` VALUES ('2', '2', '22222', null, null, null);

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
