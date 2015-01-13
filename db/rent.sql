# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: rent
# ------------------------------------------------------
# Server version 5.6.13

#
# Source for table apartment
#

DROP TABLE IF EXISTS `apartment`;
CREATE TABLE `apartment` (
  `apId` int(11) NOT NULL AUTO_INCREMENT COMMENT '房屋编号',
  `city` int(11) NOT NULL DEFAULT '0' COMMENT '房屋所在城市',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '房屋所在地址',
  `area` decimal(10,2) DEFAULT '0.00' COMMENT '平米数',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系人',
  `telphone` varchar(11) NOT NULL DEFAULT '' COMMENT '联系电话',
  `userId` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `renttype` int(11) NOT NULL DEFAULT '0' COMMENT '出租方式',
  `desc` text COMMENT '房屋描述',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '房屋别名',
  PRIMARY KEY (`apId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房屋基本信息表';

#
# Dumping data for table apartment
#

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,1,'山东青岛崂山区',15.2,800,'王先生','12345678901',1,0,1,'大窗，阳面，干净','崂山一号');
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table city
#

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cId` int(11) NOT NULL AUTO_INCREMENT COMMENT '城市Id',
  `cityname` varchar(255) NOT NULL DEFAULT '' COMMENT '城市名称',
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='城市';

#
# Dumping data for table city
#

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'青岛');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table person
#

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `personname` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `sex` int(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `homecity` int(11) NOT NULL DEFAULT '0' COMMENT '户籍所在地',
  `telphone` varchar(11) DEFAULT NULL COMMENT '联系方式',
  `iswork` int(11) DEFAULT NULL COMMENT '是否工作',
  `workname` varchar(255) DEFAULT NULL COMMENT '工作内容',
  `newhome` int(11) NOT NULL DEFAULT '0' COMMENT '对房子的要求',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户基本信息表';

#
# Dumping data for table person
#

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,1,'LCY',1,22,1,'09876543210',1,'IT',1);
INSERT INTO `person` VALUES (2,2,'zyp',1,23,1,'12345678901',1,'IT',1);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table renttype
#

DROP TABLE IF EXISTS `renttype`;
CREATE TABLE `renttype` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `typename` varchar(255) NOT NULL DEFAULT '' COMMENT '类型名',
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='出租方式';

#
# Dumping data for table renttype
#

LOCK TABLES `renttype` WRITE;
/*!40000 ALTER TABLE `renttype` DISABLE KEYS */;
INSERT INTO `renttype` VALUES (1,'整组');
/*!40000 ALTER TABLE `renttype` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table user
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '用户类型',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Dumping data for table user
#

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'lcy','lcy123','1198163495@qq.com',2);
INSERT INTO `user` VALUES (2,'zyp','zyp123','zyppyz@qq.com',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table user_apartment
#

DROP TABLE IF EXISTS `user_apartment`;
CREATE TABLE `user_apartment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `riId` int(11) NOT NULL DEFAULT '0' COMMENT '租入ID',
  `roId` int(11) NOT NULL DEFAULT '0' COMMENT '租出ID',
  `apId` int(11) NOT NULL DEFAULT '0' COMMENT '房屋ID',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '1，预定，2，出租',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户房屋关系表';

#
# Dumping data for table user_apartment
#

LOCK TABLES `user_apartment` WRITE;
/*!40000 ALTER TABLE `user_apartment` DISABLE KEYS */;
INSERT INTO `user_apartment` VALUES (1,1,1,1,1);
/*!40000 ALTER TABLE `user_apartment` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
