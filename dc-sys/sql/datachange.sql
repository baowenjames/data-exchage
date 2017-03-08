/*
Navicat MySQL Data Transfer

Source Server         : localhost_3307 maridb10
Source Server Version : 50505
Source Host           : localhost:3307
Source Database       : datachange

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-08 23:51:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `KEY` varchar(32) NOT NULL,
  `TYPE` varchar(2) NOT NULL,
  `NAME` varchar(80) NOT NULL,
  `EXT` varchar(8) DEFAULT NULL,
  `BYTES` decimal(12,0) NOT NULL,
  `DATA` longblob NOT NULL,
  `EXPIRED` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `DESC_INFO` varchar(40) DEFAULT NULL,
  `UPDATE_BY` varchar(40) NOT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_file
-- ----------------------------

-- ----------------------------
-- Table structure for sys_func
-- ----------------------------
DROP TABLE IF EXISTS `sys_func`;
CREATE TABLE `sys_func` (
  `FUNC_CODE` varchar(40) NOT NULL,
  `FUNC_NAME` varchar(40) DEFAULT NULL,
  `FUNC_TYPE` varchar(40) DEFAULT NULL,
  `FUNC_PATH` varchar(40) DEFAULT NULL,
  `ORDER_SEQ` decimal(10,0) DEFAULT NULL,
  `DISABLE_FLAH` varchar(1) DEFAULT NULL,
  `DESC_INFO` varchar(200) DEFAULT NULL,
  `CREATE_BY` varchar(40) NOT NULL,
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATE_BY` varchar(40) NOT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`FUNC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_func
-- ----------------------------
INSERT INTO `sys_func` VALUES ('01', '系统运行', '1', '', '0', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0101', '人员管理', '2', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('010101', '用户列表', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('010102', '角色管理', '3', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0102', '权限配置', '2', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('010201', '人员权限', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('010202', '数据权限', '3', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0103', '系统设置', '2', '', '3', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('010301', '系统参数', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('02', '基础信息', '1', '', '0', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0201', '组织管理', '2', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('020101', '机构列表', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0202', '站点管理', '2', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('020201', '站点列表', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('020202', '设备列表', '3', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('03', '检测数据', '1', '', '0', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0301', '数据报送', '2', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('030101', '检测数据', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('04', '统计分析', '1', '', '0', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0401', '综合查询', '2', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('040101', '单车数据查询', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('040102', '日平均超限数据查询', '3', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0402', '统计分析', '2', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('040201', '日数据', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('040202', '月数据', '3', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('040203', '季度数据', '3', '', '3', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('040204', '年数据', '3', '', '4', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('05', '消息服务', '1', '', '0', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0501', 'ZK配置', '2', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('050101', 'ZK列表', '3', '', '1', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');
INSERT INTO `sys_func` VALUES ('0502', 'MQ配置', '2', '', '2', '0', '', 'SYS_INIT', '2017-03-08 23:43:59', 'SYS_INIT', '2017-03-08 23:43:59');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `LOG_TASK` varchar(100) NOT NULL,
  `LOG_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LOG_TEXT` varchar(1000) NOT NULL,
  `REF01` varchar(200) DEFAULT NULL,
  `REF02` varchar(200) DEFAULT NULL,
  `REF03` varchar(200) DEFAULT NULL,
  `REF04` varchar(200) DEFAULT NULL,
  `REF05` varchar(200) DEFAULT NULL,
  `REF06` varchar(200) DEFAULT NULL,
  `REF07` varchar(200) DEFAULT NULL,
  `REF08` varchar(200) DEFAULT NULL,
  `REF09` varchar(200) DEFAULT NULL,
  `REF10` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `PARAM_CODE` varchar(40) NOT NULL,
  `PARAM_NAME` varchar(40) DEFAULT NULL,
  `PARAM_VALUE` varchar(40) DEFAULT NULL,
  `DESC_INFO` varchar(200) DEFAULT NULL,
  `CREATE_BY` varchar(40) NOT NULL,
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATE_BY` varchar(40) NOT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`PARAM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_CODE` varchar(40) NOT NULL,
  `ROLE_NAME` varchar(40) DEFAULT NULL,
  `DISABLE_FLAG` varchar(1) DEFAULT NULL,
  `DESC_INFO` varchar(200) DEFAULT NULL,
  `CREATE_BY` varchar(40) NOT NULL,
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATE_BY` varchar(40) NOT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ROLE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('SYS_ADMIN', '系统管理员', '0', '1', 'SYS_INIT', '2017-03-08 23:47:01', 'SYS_INIT', '2017-03-08 23:47:01');

-- ----------------------------
-- Table structure for sys_role_func
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_func`;
CREATE TABLE `sys_role_func` (
  `ROLE_CODE` varchar(40) NOT NULL,
  `FUNC_CODE` varchar(40) NOT NULL,
  PRIMARY KEY (`ROLE_CODE`,`FUNC_CODE`),
  KEY `FK_SYS_ROLE_FUNC_FUNC` (`FUNC_CODE`),
  CONSTRAINT `FK_SYS_ROLE_FUNC_FUNC` FOREIGN KEY (`FUNC_CODE`) REFERENCES `sys_func` (`FUNC_CODE`),
  CONSTRAINT `FK_SYS_ROLE_FUNC_ROLE` FOREIGN KEY (`ROLE_CODE`) REFERENCES `sys_role` (`ROLE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_func
-- ----------------------------
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '01');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0101');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '010101');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '010102');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0102');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '010201');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '010202');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0103');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '010301');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '02');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0201');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '020101');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0202');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '020201');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '020202');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '03');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0301');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '030101');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '04');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0401');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '040101');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '040102');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0402');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '040201');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '040202');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '040203');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '040204');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '05');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0501');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '050101');
INSERT INTO `sys_role_func` VALUES ('SYS_ADMIN', '0502');

-- ----------------------------
-- Table structure for sys_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_task`;
CREATE TABLE `sys_task` (
  `TASK_CODE` varchar(40) NOT NULL,
  `TASK_NAME` varchar(100) NOT NULL,
  `LAST_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `AK_SYS_TASK_01` (`TASK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_task
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(40) NOT NULL,
  `PASSWORD` varchar(128) NOT NULL,
  `USER_NAME` varchar(40) NOT NULL,
  `ROLE_CODE` varchar(40) DEFAULT NULL,
  `ORG_ID` varchar(32) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `LOGIN_COUNT` decimal(10,0) DEFAULT NULL,
  `LAST_LOGIN_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LAST_LOGIN_IP` varchar(40) DEFAULT NULL,
  `DISABLE_FLAG` varchar(1) DEFAULT NULL,
  `DESC_INFO` varchar(200) DEFAULT NULL,
  `CREATE_BY` varchar(40) NOT NULL,
  `CREATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATE_BY` varchar(40) NOT NULL,
  `UPDATE_TIME` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`USER_ID`),
  KEY `AK_SYS_USER_01` (`USER_NAME`),
  KEY `FK_SYS_USER_ROLE` (`ROLE_CODE`),
  CONSTRAINT `FK_SYS_USER_ROLE` FOREIGN KEY (`ROLE_CODE`) REFERENCES `sys_role` (`ROLE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'SYS_ADMIN', null, null, null, '2017-03-08 23:47:01', null, '0', null, 'SYS_INIT', '2017-03-08 23:47:01', 'SYS_INIT', '2017-03-08 23:47:01');
