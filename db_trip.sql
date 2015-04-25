/*
MySQL Data Transfer
Source Host: localhost
Source Database: db_music
Target Host: localhost
Target Database: db_music
Date: 2015/4/25 ������ 11:57:04
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for tb_admin
-- ----------------------------
CREATE TABLE `tb_admin` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_adminName` varchar(50) DEFAULT NULL,
  `t_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for tb_likes
-- ----------------------------
CREATE TABLE `tb_likes` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rember` varchar(255) DEFAULT NULL,
  `intorduction` varchar(2000) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `postId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9737 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for tb_post
-- ----------------------------
CREATE TABLE `tb_post` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `title` varchar(2000) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `rember` varchar(2000) DEFAULT NULL,
  `info` varchar(5000) DEFAULT NULL,
  `intorduction` varchar(5000) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7836 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for tb_review
-- ----------------------------
CREATE TABLE `tb_review` (
  `t_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `t_message` varchar(5000) DEFAULT NULL,
  `t_user` varchar(50) DEFAULT NULL,
  `t_time` varchar(50) DEFAULT NULL,
  `t_specialID` int(11) DEFAULT NULL,
  `peopleIdx` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `intorduction` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9804 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
CREATE TABLE `tb_user` (
  `t_id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `t_userName` varchar(50) DEFAULT NULL,
  `t_password` varchar(50) DEFAULT NULL,
  `t_email` varchar(50) DEFAULT NULL,
  `t_commentCount` int(11) DEFAULT NULL,
  `profile` varchar(2000) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `JoinDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9863 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', 'admin', '123456');
INSERT INTO `tb_likes` VALUES ('00000000001', 'zhuxueju', '2014-03-12 00:00:00', '1', '', '', '', '4', '0');
INSERT INTO `tb_likes` VALUES ('00000000066', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000067', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000068', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000069', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000070', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000071', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000072', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000073', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000074', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000075', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000076', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000077', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000078', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000079', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000080', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000081', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000082', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000083', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000084', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000085', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000086', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000087', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000088', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000089', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000090', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000091', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000092', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000093', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000094', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000095', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000096', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000097', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000098', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000099', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000100', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000101', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000102', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000103', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000104', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000105', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000106', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000107', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000108', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000109', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000110', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000111', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000112', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000113', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000114', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000115', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000116', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000117', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000118', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000119', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000120', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000121', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000122', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000123', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000124', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000125', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000126', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000127', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000128', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000129', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000130', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000131', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000132', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000133', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000134', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000135', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000136', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000137', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000138', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000139', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000140', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000141', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000142', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000143', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000144', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000145', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000146', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000147', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000148', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000149', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000150', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000151', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000152', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000153', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000154', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000155', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000156', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000157', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000158', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000159', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000160', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000161', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000162', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000163', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000164', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000165', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000166', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000167', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000168', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000169', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000170', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000171', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000172', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000173', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000174', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000175', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000176', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000177', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000178', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000179', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000180', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000181', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000182', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000183', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000184', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000185', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000186', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000187', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000188', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000189', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000190', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000191', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000192', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000193', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000194', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000195', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000196', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000197', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000198', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000199', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000200', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000201', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000202', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000203', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000204', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000205', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000206', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000207', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000208', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000209', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000210', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000211', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000212', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000213', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000214', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000215', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000216', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000217', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000218', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000219', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000220', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000221', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000222', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000223', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000224', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000225', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000226', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000227', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000228', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000229', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000230', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000231', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000232', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000233', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000234', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000235', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000236', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000237', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000238', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000239', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000240', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000241', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000242', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000243', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000244', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000245', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000246', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000247', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000248', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000249', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000250', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000251', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000252', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000253', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000254', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000255', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000256', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000257', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000258', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000259', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000260', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000261', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000262', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000263', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000264', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000265', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000266', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000267', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000268', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000269', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000270', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000271', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000272', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000273', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000274', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000275', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000276', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000277', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000278', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000279', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000280', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000281', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000282', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000283', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000284', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000285', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000000286', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '4', '0');
INSERT INTO `tb_likes` VALUES ('00000000287', '雨一直下', '2012-12-20 00:00:00', '1', '', '', '', '4', '0');
INSERT INTO `tb_likes` VALUES ('00000000288', 'aa', '2012-12-12 00:00:00', '1', '', '', '', '4', '0');
INSERT INTO `tb_likes` VALUES ('00000000291', 'zhuxueju', '2014-03-12 00:00:00', '1', '', '', '', '4', '0');
INSERT INTO `tb_likes` VALUES ('00000000431', 'edc', '2012-12-12 00:00:00', '1', '', '', '', '3', '0');
INSERT INTO `tb_likes` VALUES ('00000000636', 'zhuxueju', '2014-03-12 00:00:00', '1', '', '', '', '4', '0');
INSERT INTO `tb_likes` VALUES ('00000000789', 'New York - Empire State Building', '2015-04-23 00:00:00', '1', 'images/artist_icon.png', '', 'This glowing beacon on the Manhattan skyline has long screamed \"New York,\" often in technicolor. The second-tallest building in the city (after One World Trade Center), it can be seen from all around, and journeys to the top, while pricey, are pretty special, especially if you grew up watching magical Hollywood moments up here.', '4029', '6512');
INSERT INTO `tb_likes` VALUES ('00000000903', 'aa', '2012-12-12 00:00:00', '1', '', '', '', '3', '0');
INSERT INTO `tb_likes` VALUES ('00000001361', 'edc', '2012-12-12 00:00:00', '1', '', '', '', '0', '0');
INSERT INTO `tb_likes` VALUES ('00000002419', 'edc', '2012-12-12 00:00:00', '1', '', '', '', '3', '0');
INSERT INTO `tb_likes` VALUES ('00000004250', 'aaaaaaaaaaa', '2015-04-22 00:00:00', '1', 'images/artist_icon.png', '', '2014-04-25 08:50:45', '4029', '2341');
INSERT INTO `tb_likes` VALUES ('00000005165', 'edc', '2012-12-12 00:00:00', '1', '', '', '', '3', '0');
INSERT INTO `tb_likes` VALUES ('00000007509', 'edc', '2012-12-12 00:00:00', '1', '', '', '', '9862', '0');
INSERT INTO `tb_likes` VALUES ('00000007950', 'edc', '2012-12-12 00:00:00', '1', '', '', '', '3', '0');
INSERT INTO `tb_likes` VALUES ('00000008978', 'New York - Empire State Building', '2015-04-23 00:00:00', '1', 'images/artist_icon.png', '', 'This glowing beacon on the Manhattan skyline has long screamed \"New York,\" often in technicolor. The second-tallest building in the city (after One World Trade Center), it can be seen from all around, and journeys to the top, while pricey, are pretty special, especially if you grew up watching magical Hollywood moments up here.', '4029', '6512');
INSERT INTO `tb_likes` VALUES ('00000009570', 'edc', '2012-12-12 00:00:00', '1', '', '', '', '3', '0');
INSERT INTO `tb_post` VALUES ('00000004549', 'New York - Gran', '2015-04-25 11:45:15', '1', 'images/img.jpg', '', '', 'Always a buzz of activity, this stately building is one of my favorite places in all of New York. Not only is it fascinating to stop and watch all the comings and goings, but the structure itself is simply spectacular, with its ornate chandeliers and soaring zodiac ceiling.', 'New York - Gran');
INSERT INTO `tb_post` VALUES ('00000005154', 'Boston- Cambrid', '2015-04-23 09:53:55', '1', 'images/img.jpg', '', '', 'Situated just across the river, Cambridge is home to Harvard University, Massachusetts Institute of Technology (MIT), and a wealth of cozy, contemporary American restaurants run by celebrity chefs. The streets are vibrant and exciting, and the college campuses are polar opposites of classic and modern. Make reservations in advance to secure an intimate ambiance and a delicious meal from the kitchens of big names like Jody Adams, Barbara Lynch, Will Gilson, and Jason Bond.', 'Boston- Cambrid');
INSERT INTO `tb_post` VALUES ('00000006512', 'New York - Empire State Building', '2012-12-12 00:00:00', '1', '', '', 'edc', 'This glowing beacon on the Manhattan skyline has long screamed \"New York,\" often in technicolor. The second-tallest building in the city (after One World Trade Center), it can be seen from all around, and journeys to the top, while pricey, are pretty special, especially if you grew up watching magical Hollywood moments up here.', 'ssl;dfks;lfksl;fkls;');
INSERT INTO `tb_post` VALUES ('00000007081', 'Newbury Street ', '2015-04-25 11:46:04', '1', 'images/img.jpg', '', '', 'Newbury Street is Boston\'s trendy, upscale, Brownstone-lined shopping street. It is also the best place to try a principal Boston institution: weekend brunch, a typical couple\'s activity on leisurely weekend mornings. During the summer months, opt for a Parisian-style sidewalk table at any restaurant that takes your fancy', '');
INSERT INTO `tb_review` VALUES ('00000000020', 'ddddddddd', 'aaaaaa', '2014-04-24 11:15:13', '1', '1', '4', '0', 'zhuxueju', 'wwww');
INSERT INTO `tb_review` VALUES ('00000000128', 'hello', 'wsxcvb', '2014-04-25 09:46:24', '1', '1', '9862', '0', 'aaaaaaaaaaa', 'dplkjdslkjfsj');
INSERT INTO `tb_review` VALUES ('00000000288', 'ffffff', '111111', '2015-04-22 10:02:56', '1', '1', '3', '6512', 'New York - Empire State Building', 'dplkjdslkjfsj');
INSERT INTO `tb_review` VALUES ('00000000506', 'dkdkdkkdkdkdkdk', 'aaaaaa', '2014-04-25 08:45:22', '1', '1', '4', '0', 'zhuxueju', 'wwww');
INSERT INTO `tb_review` VALUES ('00000000898', 'ContenContentContentContentContentContentContentContentContentContentContentContentContentContentContentContentContentContent', 'Arjuna', '2015-04-22 02:06:57', '1', '1', '4029', '4441', '11111', '11111111111');
INSERT INTO `tb_review` VALUES ('00000001334', 'dddddd', '111111', '2015-04-21 09:25:21', '1', '1', '3', '5816', 'aaaaaaaaaaa', 'dplkjdslkjfsj');
INSERT INTO `tb_review` VALUES ('00000002497', null, '111111', '2015-04-20 12:23:55', '1', '1', '3', '1863', 'wwwwwwwwwwwwwww', 'fffffffffffffff');
INSERT INTO `tb_review` VALUES ('00000003155', 'rrrrrrrrrrrrrrrrrr', 'wsxcvb', '2014-04-25 10:48:24', '1', '1', '9862', '1', '雨一直下', '张宇');
INSERT INTO `tb_review` VALUES ('00000003655', null, '111111', '2015-04-20 04:28:00', '1', '1', '3', '6512', 'edc', 'dplkjdslkjfsj');
INSERT INTO `tb_review` VALUES ('00000004003', '333333', '111111', '2015-04-20 12:23:46', '1', '1', '3', '1863', 'wwwwwwwwwwwwwww', 'fffffffffffffff');
INSERT INTO `tb_review` VALUES ('00000004108', 'qqqqqqqqqqqqqq', 'wsxcvb', '2014-04-25 10:47:57', '1', '1', '9862', '0', '雨一直下', '张宇');
INSERT INTO `tb_review` VALUES ('00000004347', null, '111111', '2015-04-20 12:23:54', '1', '1', '3', '1863', 'wwwwwwwwwwwwwww', 'fffffffffffffff');
INSERT INTO `tb_review` VALUES ('00000006267', null, '111111', '2015-04-20 12:23:51', '1', '1', '3', '1863', 'wwwwwwwwwwwwwww', 'fffffffffffffff');
INSERT INTO `tb_review` VALUES ('00000007346', '33333333333', '111111', '2015-04-20 04:45:13', '1', '1', '3', '5816', 'aaaaaaaaaaa', 'dplkjdslkjfsj');
INSERT INTO `tb_review` VALUES ('00000007371', 'dddddd', '111111', '2015-04-20 04:27:45', '1', '1', '3', '6512', 'edc', 'dplkjdslkjfsj');
INSERT INTO `tb_review` VALUES ('00000008754', 'ddddddddddddddddddddddd', 'wsxcvb', '2014-04-25 10:51:38', '1', '1', '9862', '4441', '11111', '11111111111');
INSERT INTO `tb_review` VALUES ('00000008824', '33333333333', '111111', '2015-04-20 04:45:09', '1', '1', '3', '5816', 'aaaaaaaaaaa', 'dplkjdslkjfsj');
INSERT INTO `tb_review` VALUES ('00000009581', null, '111111', '2015-04-20 12:23:59', '1', '1', '3', '1863', 'wwwwwwwwwwwwwww', 'fffffffffffffff');
INSERT INTO `tb_review` VALUES ('00000009715', 'tttt', '111111', '2015-04-20 04:43:39', '1', '1', '3', '5816', 'aaaaaaaaaaa', 'dplkjdslkjfsj');
INSERT INTO `tb_review` VALUES ('00000009803', '33333333333', '111111', '2015-04-20 04:43:48', '1', '1', '3', '5816', 'aaaaaaaaaaa', 'dplkjdslkjfsj');
INSERT INTO `tb_user` VALUES ('00000004029', 'Arjuna', '111111', 'Arjuna@163.com', '1', 'This glowing beacon on the Manhattan skyline has long screamed \"New York,\" often in technicolor. The second-tallest building in the city (after One World Trade Center), it can be seen from all around, and journeys to the top, while pricey, are pretty special, especially if you grew up watching magical Hollywood moments up here.', '18792930315', null);
