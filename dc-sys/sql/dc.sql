/*
Navicat MySQL Data Transfer

Source Server         : moerben
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : dc

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-03-07 23:32:19
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
-- Table structure for sys_role_func
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_func`;
CREATE TABLE `sys_role_func` (
  `ROLE_CODE` varchar(40) NOT NULL,
  `FUNC_CODE` varchar(40) NOT NULL,
  PRIMARY KEY (`ROLE_CODE`,`FUNC_CODE`),
  KEY `FK_SYS_ROLE_FUNC_FUNC` (`FUNC_CODE`),
  CONSTRAINT `FK_SYS_ROLE_FUNC_ROLE` FOREIGN KEY (`ROLE_CODE`) REFERENCES `sys_role` (`ROLE_CODE`),
  CONSTRAINT `FK_SYS_ROLE_FUNC_FUNC` FOREIGN KEY (`FUNC_CODE`) REFERENCES `sys_func` (`FUNC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
