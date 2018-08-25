--1.用户信息表
drop table if exists sys_user;
create table sys_user (
  user_id 			int(11) 		not null auto_increment    comment '用户ID',
  login_name 		varchar(30) 	not null 				   comment '登录账号',
  user_name 		varchar(30) 	not null 				   comment '用户昵称',
  email  			varchar(50) 	default '' 				   comment '用户邮箱',
  phonenumber  		varchar(11) 	default '' 				   comment '手机号码',
  sex  		        char(1) 	    default '0' 			   comment '用户性别（0男 1女 2未知）',
  password 			varchar(50) 	default '' 				   comment '密码',
  salt 				varchar(20) 	default '' 				   comment '盐加密',
  status 			char(1) 		default '0' 			   comment '帐号状态（0正常 1停用）',
  del_flag			char(1) 		default '0' 			   comment '删除标志（0代表存在 2代表删除）',
  login_ip          varchar(20)     default ''                 comment '最后登陆IP',
  login_date        datetime                                   comment '最后登陆时间',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time 	    datetime                                   comment '创建时间',
  update_by         varchar(64)     default ''                 comment '更新者',
  update_time       datetime                                   comment '更新时间',
  remark 		    varchar(500) 	default '' 				   comment '备注',
  primary key (user_id)
) engine=innodb auto_increment=100 default charset=utf8 comment = '用户信息表';
insert into sys_user values(1,  'admin', 'admin', 'chenyou@163.com', '15888888888', '0', 'e10adc3949ba59abbe56e057f20f883e', '111111', '0', '0', '127.0.0.1', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '管理员');
insert into sys_user values(2,  'test',  'test',  'chenyou@qq.com',  '15666666666', '0', 'e10adc3949ba59abbe56e057f20f883e', '222222', '0', '0', '127.0.0.1', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '测试员');

-----------------
--2.角色表
-----------------
drop table if exists sys_role;
create table sys_role (
  role_id 			int(11) 		not null auto_increment    comment '角色ID',
  role_name 		varchar(30) 	not null 				   comment '角色名称',
  role_key 		    varchar(100) 	not null 				   comment '角色权限字符串',
  role_sort         int(4)          not null                   comment '显示顺序',
  status 			char(1) 		not null 			       comment '角色状态（0正常 1停用）',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time 		datetime                                   comment '创建时间',
  update_by 		varchar(64) 	default ''			       comment '更新者',
  update_time 		datetime                                   comment '更新时间',
  remark 			varchar(500) 	default '' 				   comment '备注',
  primary key (role_id)
) engine=innodb auto_increment=100 default charset=utf8 comment = '角色信息表';
insert into sys_role values('1', '管理员',   'admin',  1,  '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '管理员');
insert into sys_role values('2', '普通角色', 'common', 2,  '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '普通角色');
-----------------
--3.权限表
-----------------
drop table if exists sys_menu;
create table sys_menu (
  menu_id 			int(11) 		not null auto_increment    comment '菜单ID',
  menu_name 		varchar(50) 	not null 				   comment '菜单名称',
  parent_id 		int(11) 		default 0 			       comment '父菜单ID',
  order_num 		int(4) 			default null 			   comment '显示顺序',
  url 				varchar(200) 	default ''				   comment '请求地址',
  menu_type 		char(1) 		default '' 			       comment '菜单类型（M目录 C菜单 F按钮）',
  perms 			varchar(100) 	default '' 				   comment '权限标识',
  icon 				varchar(100) 	default '' 				   comment '菜单图标',
  create_by         varchar(64)     default ''                 comment '创建者',
  create_time 		datetime                                   comment '创建时间',
  update_by 		varchar(64) 	default ''			       comment '更新者',
  update_time 		datetime                                   comment '更新时间',
  remark 			varchar(500) 	default '' 				   comment '备注',
  primary key (menu_id)
) engine=innodb auto_increment=2000 default charset=utf8 comment = '菜单权限表';

--一级菜单
insert into sys_menu values('1', '概况', '0', '1', '#', 'M',  '', 'fa fa-gear',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '概况');
insert into sys_menu values('2', '游戏玩家', '0', '2', '#', 'M',  '', 'fa fa-video-camera', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '游戏玩家');
insert into sys_menu values('3', '在线分析', '0', '3', '#', 'M', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '在线分析');
insert into sys_menu values('4', '充值统计', '0', '4', '#', 'M',  '', 'fa fa-gear',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '充值统计');
insert into sys_menu values('5', '渠道数据', '0', '5', '#', 'M',  '', 'fa fa-video-camera', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '渠道数据');
insert into sys_menu values('6', '游戏行为统计', '0', '6', '#', 'M', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '游戏行为统计');
insert into sys_menu values('7', '活动分析', '0', '7', '#', 'M',  '', 'fa fa-gear',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '充值统计');
insert into sys_menu values('8', '游戏管理', '0', '8', '#', 'M',  '', 'fa fa-video-camera', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '游戏管理');
insert into sys_menu values('9', '后台管理', '0', '9', '#', 'M', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '后台管理');
insert into sys_menu values('10', '推送设置', '0', '10', '#', 'M', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '推送设置');
--二级菜单
insert into sys_menu values('11', '游戏概况', '1', '11', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '游戏概况');
insert into sys_menu values('12', '日报', '1', '12', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '日报');
insert into sys_menu values('13', '新增玩家', '2', '13', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '新增玩家');
insert into sys_menu values('14', '活跃玩家', '2', '14', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '活跃玩家');
insert into sys_menu values('15', '玩家留存', '2', '15', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '玩家留存');
insert into sys_menu values('16', '玩家流失', '2', '16', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '玩家流失');
insert into sys_menu values('17', '流失行为分析', '2', '17', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '流失行为分析');
insert into sys_menu values('18', '在线用户', '3', '18', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '在线用户');
insert into sys_menu values('19', '每日充值', '4', '19', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '每日充值');
insert into sys_menu values('20', '计费点分析', '4', '20', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '计费点分析');
insert into sys_menu values('21', '渠道数据汇总', '5', '21', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '渠道数据汇总');
insert into sys_menu values('22', '用户等级', '6', '22', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户等级');
insert into sys_menu values('23', 'vip人数', '6', '23', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', 'vip人数');
insert into sys_menu values('24', '帮派数量', '6', '24', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '帮派数量');
insert into sys_menu values('25', '帮派等级', '6', '25', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '帮派等级');
insert into sys_menu values('26', '排行信息', '6', '26', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '排行信息');
insert into sys_menu values('27', '任务消息', '6', '27', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '任务消息');
insert into sys_menu values('28', '产出与消耗', '6', '28', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '产出与消耗');
insert into sys_menu values('29', '活动参与人数', '7', '29', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '活动参与人数');
insert into sys_menu values('30', '活动产出与消耗', '7', '30', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '活动产出与消耗');
insert into sys_menu values('31', '活动排行榜', '7', '31', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '活动排行榜');
insert into sys_menu values('32', '游戏活动开启', '8', '32', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '游戏活动开启');
insert into sys_menu values('33', '系统邮件发放', '8', '33', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '推送设置');
insert into sys_menu values('34', '游戏公告修改', '8', '34', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统邮件发放');
insert into sys_menu values('35', '聊天监控', '8', '35', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '聊天监控');
insert into sys_menu values('36', '玩家信息查询', '8', '36', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '玩家信息查询');
insert into sys_menu values('37', '用户管理', '9', '37', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户管理');
insert into sys_menu values('38', '角色管理', '9', '38', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '角色管理');
insert into sys_menu values('39', '菜单管理', '9', '39', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单管理');
insert into sys_menu values('40', '玩家留存', '10', '40', '#', 'C', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '玩家留存');
--三级菜单
insert into sys_menu values('41', '用户类', '12', '41', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户类');
insert into sys_menu values('42', '收入类', '12', '42', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '收入类');
insert into sys_menu values('43', '渠道统计', '12', '43', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '渠道统计');

insert into sys_menu values('44', '登录天数', '17', '44', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '登录天数');
insert into sys_menu values('45', '流失等级', '17', '45', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '流失等级');
insert into sys_menu values('46', '流失关卡', '17', '46', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '流失关卡');

insert into sys_menu values('47', '势力榜', '26', '47', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '势力榜');
insert into sys_menu values('48', '关卡榜', '26', '48', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '关卡榜');
insert into sys_menu values('49', '亲密榜', '26', '49', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '亲密榜');
insert into sys_menu values('50', '帮派榜', '26', '50', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '帮派榜');

insert into sys_menu values('51', '帮派排行', '31', '51', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '帮派排行');
insert into sys_menu values('52', '个人排行', '31', '52', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '个人排行');

insert into sys_menu values('53', '用户新增', '37', '53', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户新增');
insert into sys_menu values('54', '用户修改', '37', '54', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户修改');
insert into sys_menu values('55', '用户查询', '37', '55', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户查询');
insert into sys_menu values('56', '用户删除', '37', '56', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '用户删除');

insert into sys_menu values('57', '角色新增', '38', '57', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '角色新增');
insert into sys_menu values('58', '角色修改', '38', '58', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '角色修改');
insert into sys_menu values('59', '角色查询', '38', '59', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '角色查询');
insert into sys_menu values('60', '角色删除', '38', '60', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '角色删除');

insert into sys_menu values('61', '菜单新增', '39', '61', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单新增');
insert into sys_menu values('62', '菜单修改', '39', '62', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单修改');
insert into sys_menu values('63', '菜单查询', '39', '63', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单查询');
insert into sys_menu values('64', '菜单删除', '39', '64', '#', 'F', '', 'fa fa-bars',         'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '菜单删除');

-----------------
--4.用户对应角色表N-->1
-----------------
drop table if exists sys_user_role;
create table sys_user_role (
  user_id 	int(11) not null comment '用户ID',
  role_id 	int(11) not null comment '角色ID',
  primary key(user_id, role_id)
) engine=innodb default charset=utf8 comment = '用户和角色关联表';
insert into sys_user_role values ('1', '1');
insert into sys_user_role values ('2', '2');

-----------------
--5.角色对应权限表1-->N
-----------------
drop table if exists sys_role_menu;
create table sys_role_menu (
  role_id 	int(11) not null comment '角色ID',
  menu_id 	int(11) not null comment '菜单ID',
  primary key(role_id, menu_id)
) engine=innodb default charset=utf8 comment = '角色和菜单关联表';
insert into sys_role_menu values ('1', '1');
insert into sys_role_menu values ('1', '2');
insert into sys_role_menu values ('1', '3');


