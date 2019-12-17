DROP DATABASE IF EXISTS oa;
CREATE DATABASE oa ;
USE oa ;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `ID` int(11) NOT NULL,
  `depname` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for `flow_manage`
-- ----------------------------
DROP TABLE IF EXISTS `flow_manage`;
CREATE TABLE `flow_manage` (
  `ID` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `flow_name` varchar(20) DEFAULT NULL,
  `flow_uid1` int(11) DEFAULT NULL,
  `assess1` char(1) DEFAULT NULL,
  `assess_time1` date DEFAULT NULL,
  `assess_view1` varchar(50) DEFAULT NULL,
  `flow_uid2` int(11) DEFAULT NULL,
  `assess2` char(1) DEFAULT NULL,
  `assess_view2` varchar(50) DEFAULT NULL,
  `assess_time2` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flow_manage
-- ----------------------------

-- ----------------------------
-- Table structure for `meeting`
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting` (
  `ID` int(11) NOT NULL,
  `depid` int(11) DEFAULT NULL,
  `m_type` int(11) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `all_uid` varchar(20) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `upload` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meeting
-- ----------------------------

-- ----------------------------
-- Table structure for `meeting_room`
-- ----------------------------
DROP TABLE IF EXISTS `meeting_room`;
CREATE TABLE `meeting_room` (
  `ID` int(11) NOT NULL,
  `room_name` varchar(20) DEFAULT NULL,
  `room_content` varchar(100) DEFAULT NULL,
  `room_pic` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meeting_room
-- ----------------------------

-- ----------------------------
-- Table structure for `meeting_type`
-- ----------------------------
DROP TABLE IF EXISTS `meeting_type`;
CREATE TABLE `meeting_type` (
  `ID` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meeting_type
-- ----------------------------

-- ----------------------------
-- Table structure for `mess_group`
-- ----------------------------
DROP TABLE IF EXISTS `mess_group`;
CREATE TABLE `mess_group` (
  `ID` int(11) NOT NULL,
  `g_name` varchar(20) DEFAULT NULL,
  `g_content` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mess_group
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `ID` int(11) NOT NULL,
  `g_id` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `MSN` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `newlabel`
-- ----------------------------
DROP TABLE IF EXISTS `newlabel`;
CREATE TABLE `newlabel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(20) DEFAULT NULL,
  `label_content` varchar(100) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newlabel
-- ----------------------------
INSERT INTO `newlabel` VALUES ('1', '体育新闻', '体育新闻体育新闻体育新闻', null);
INSERT INTO `newlabel` VALUES ('2', '娱乐新闻', '娱乐新闻娱乐新闻娱乐新闻', null);
INSERT INTO `newlabel` VALUES ('3', '时政新闻', '时政新闻时政新闻时政新闻', null);
INSERT INTO `newlabel` VALUES ('4', '国际足球', '国际足球国际足球', '1');
INSERT INTO `newlabel` VALUES ('5', 'CBA', '中国篮球中国篮球', '1');
INSERT INTO `newlabel` VALUES ('6', '武林风', '河南武林风', '1');
INSERT INTO `newlabel` VALUES ('7', '网球', '网球网球', '1');
INSERT INTO `newlabel` VALUES ('8', '羽毛球', '羽毛球羽毛球', '1');
INSERT INTO `newlabel` VALUES ('9', '乒乓球', '乒乓球乒乓球', '1');
INSERT INTO `newlabel` VALUES ('10', '中超联赛', '中超联赛中超联赛', '1');
INSERT INTO `newlabel` VALUES ('11', '体坛名将', '体坛名将体坛名将', '1');
INSERT INTO `newlabel` VALUES ('12', '体坛快讯', '体坛快讯体坛快讯', '1');

-- ----------------------------
-- Table structure for `newmanage`
-- ----------------------------
DROP TABLE IF EXISTS `newmanage`;
CREATE TABLE `newmanage` (
  `ID` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `labelid` int(11) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newmanage
-- ----------------------------

-- ----------------------------
-- Table structure for `user_duty`
-- ----------------------------
DROP TABLE IF EXISTS `user_duty`;
CREATE TABLE `user_duty` (
  `ID` int(11) NOT NULL,
  `tid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_duty
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `worktime` date DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `depid` int(11) DEFAULT NULL,
  `duty` char(2) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `homephone` varchar(20) DEFAULT NULL,
  `workphone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `MSN` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `httpaddress` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `logontime` date DEFAULT NULL,
  `lastlogontime` date DEFAULT NULL,
  `logoncount` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `work_help`
-- ----------------------------
DROP TABLE IF EXISTS `work_help`;
CREATE TABLE `work_help` (
  `ID` int(11) NOT NULL,
  `file` varchar(20) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `time` date DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_help
-- ----------------------------

-- ----------------------------
-- Table structure for `workmanage`
-- ----------------------------
DROP TABLE IF EXISTS `workmanage`;
CREATE TABLE `workmanage` (
  `ID` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(300) DEFAULT NULL,
  `time` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workmanage
-- ----------------------------

/* alter table xxx   add constraint FK_xx_REFERENCE_xx foreign key (xx)  references xx (id); */
