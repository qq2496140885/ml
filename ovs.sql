/*
Navicat MySQL Data Transfer

Source Server         : fan
Source Server Version : 50550
Source Host           : localhost:3306
Source Database       : ovs

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2016-11-23 15:56:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(16) NOT NULL,
  `c_total` int(32) NOT NULL DEFAULT '0',
  `c_time` int(5) NOT NULL DEFAULT '0',
  `c_type` smallint(1) NOT NULL DEFAULT '0',
  `c_u_ascription` smallint(1) NOT NULL DEFAULT '0',
  `c_u_id` int(11) NOT NULL,
  `c_p_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `c_name` (`c_name`),
  KEY `c_u_id` (`c_u_id`),
  KEY `c_p_id` (`c_p_id`),
  CONSTRAINT `code_ibfk_1` FOREIGN KEY (`c_u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `code_ibfk_2` FOREIGN KEY (`c_p_id`) REFERENCES `package` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ovpn
-- ----------------------------
DROP TABLE IF EXISTS `ovpn`;
CREATE TABLE `ovpn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_name` varchar(64) NOT NULL,
  `o_flag` smallint(1) NOT NULL DEFAULT '1',
  `o_filename` varchar(255) NOT NULL,
  `o_u_name` varchar(32) NOT NULL,
  `o_u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `o_u_id` (`o_u_id`),
  CONSTRAINT `ovpn_ibfk_1` FOREIGN KEY (`o_u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(32) NOT NULL,
  `p_total` int(32) NOT NULL DEFAULT '0',
  `p_time` int(5) NOT NULL DEFAULT '0',
  `p_price` int(5) NOT NULL DEFAULT '0',
  `p_type` smallint(1) NOT NULL DEFAULT '0',
  `p_hide` smallint(1) NOT NULL DEFAULT '0',
  `p_ascription` smallint(1) NOT NULL DEFAULT '0',
  `p_href` varchar(255) DEFAULT NULL,
  `p_u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `p_u_id` (`p_u_id`),
  CONSTRAINT `package_ibfk_1` FOREIGN KEY (`p_u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(32) NOT NULL,
  `s_ip` varchar(32) NOT NULL,
  `s_sip` varchar(20) NOT NULL,
  `s_reg` varchar(20) NOT NULL,
  `s_remark` varchar(64) DEFAULT NULL,
  `s_u_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `s_u_id` (`s_u_id`),
  CONSTRAINT `server_ibfk_1` FOREIGN KEY (`s_u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indexExplain` varchar(255) DEFAULT NULL,
  `AppNotice` varchar(255) DEFAULT NULL,
  `AppExplain` varchar(255) DEFAULT NULL,
  `AppDownload` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `remarks` varchar(64) DEFAULT NULL,
  `total` int(32) NOT NULL DEFAULT '0',
  `surplus` int(32) NOT NULL DEFAULT '0',
  `time` int(5) NOT NULL DEFAULT '0',
  `type` smallint(1) NOT NULL DEFAULT '0',
  `money` int(5) NOT NULL DEFAULT '0',
  `role` smallint(1) NOT NULL DEFAULT '0',
  `locked` smallint(1) NOT NULL DEFAULT '0',
  `status` smallint(1) unsigned NOT NULL DEFAULT '0',
  `online` smallint(1) NOT NULL DEFAULT '0',
  `activeTime` varchar(20) DEFAULT NULL,
  `lastLoginTime` varchar(20) DEFAULT NULL,
  `loginIP` varchar(20) DEFAULT NULL,
  `u_ascription` int(11) DEFAULT NULL,
  `u_u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `u_u_id` (`u_u_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`u_u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;

INSERT INTO `ovs`.`setting` (`id`) VALUES ('1');

INSERT INTO `ovs`.`user` (`id`, `username`, `password`, `role`) VALUES ('1', 'adminname', 'admin1234', '1');