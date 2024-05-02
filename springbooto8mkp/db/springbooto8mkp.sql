-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbooto8mkp
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbooto8mkp`
--

/*!40000 DROP DATABASE IF EXISTS `springbooto8mkp`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbooto8mkp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbooto8mkp`;

--
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650097167781 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (31,'2022-04-16 08:14:35','班级1'),(32,'2022-04-16 08:14:35','班级2'),(33,'2022-04-16 08:14:35','班级3'),(34,'2022-04-16 08:14:35','班级4'),(35,'2022-04-16 08:14:35','班级5'),(36,'2022-04-16 08:14:35','班级6'),(1650097167780,'2022-04-16 08:19:26','计算机一班');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhiwu` varchar(200) DEFAULT NULL COMMENT '职务',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650097157730 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-04-16 08:14:35','教师工号1','123456','upload/jiaoshi_touxiang1.jpg','教师姓名1','男','13823888881','773890001@qq.com','职务1'),(22,'2022-04-16 08:14:35','教师工号2','123456','upload/jiaoshi_touxiang2.jpg','教师姓名2','男','13823888882','773890002@qq.com','职务2'),(23,'2022-04-16 08:14:35','教师工号3','123456','upload/jiaoshi_touxiang3.jpg','教师姓名3','男','13823888883','773890003@qq.com','职务3'),(24,'2022-04-16 08:14:35','教师工号4','123456','upload/jiaoshi_touxiang4.jpg','教师姓名4','男','13823888884','773890004@qq.com','职务4'),(25,'2022-04-16 08:14:35','教师工号5','123456','upload/jiaoshi_touxiang5.jpg','教师姓名5','男','13823888885','773890005@qq.com','职务5'),(26,'2022-04-16 08:14:35','教师工号6','123456','upload/jiaoshi_touxiang6.jpg','教师姓名6','男','13823888886','773890006@qq.com','职务6'),(1650097157729,'2022-04-16 08:19:17','001','123456','upload/1650097135528.jpg','杨丽','女','13823877774','','教师');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'教师工号1','jiaoshi','教师','cwtnxubvhaj5dcqpb1pae2l5dpkgmz1e','2022-04-16 08:15:43','2022-04-16 09:15:44'),(2,11,'学号1','xuesheng','学生','kaqux6z16p00hl23d8apc5rkbsons0sz','2022-04-16 08:16:13','2022-04-16 09:16:14'),(3,1,'abo','users','管理员','d6o2i8l6bg278lkfn2p9rochy0w7bbme','2022-04-16 08:16:19','2022-04-16 09:21:15'),(4,1650097186513,'002','xuesheng','学生','k2odgyofxu3fnxjhxeviy1hq9s10y7ix','2022-04-16 08:19:55','2022-04-16 09:21:05'),(5,1650097157729,'001','jiaoshi','教师','4r1f9htut5u1nj24okpib8s2ndqd8x4z','2022-04-16 08:20:12','2022-04-16 09:20:13');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-16 08:14:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650097186514 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-04-16 08:14:35','学号1','123456','upload/xuesheng_touxiang1.jpg','学生姓名1','男','13823888881','773890001@qq.com','班级1'),(12,'2022-04-16 08:14:35','学号2','123456','upload/xuesheng_touxiang2.jpg','学生姓名2','男','13823888882','773890002@qq.com','班级2'),(13,'2022-04-16 08:14:35','学号3','123456','upload/xuesheng_touxiang3.jpg','学生姓名3','男','13823888883','773890003@qq.com','班级3'),(14,'2022-04-16 08:14:35','学号4','123456','upload/xuesheng_touxiang4.jpg','学生姓名4','男','13823888884','773890004@qq.com','班级4'),(15,'2022-04-16 08:14:35','学号5','123456','upload/xuesheng_touxiang5.jpg','学生姓名5','男','13823888885','773890005@qq.com','班级5'),(16,'2022-04-16 08:14:35','学号6','123456','upload/xuesheng_touxiang6.jpg','学生姓名6','男','13823888886','773890006@qq.com','班级6'),(1650097186513,'2022-04-16 08:19:46','002','123456','upload/1650097200251.jpg','王强','男','13823855556',NULL,'计算机一班');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonghechengji`
--

DROP TABLE IF EXISTS `zonghechengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zonghechengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xueyechengji` float DEFAULT NULL COMMENT '学业成绩',
  `deyuchengji` float DEFAULT NULL COMMENT '德育成绩',
  `tiyusuzhi` float DEFAULT NULL COMMENT '体育素质',
  `zhiyusuzhi` float DEFAULT NULL COMMENT '智育素质',
  `zongfen` float DEFAULT NULL COMMENT '总分',
  `xuenian` varchar(200) NOT NULL COMMENT '学年',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650097240827 DEFAULT CHARSET=utf8 COMMENT='综合成绩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonghechengji`
--

LOCK TABLES `zonghechengji` WRITE;
/*!40000 ALTER TABLE `zonghechengji` DISABLE KEYS */;
INSERT INTO `zonghechengji` VALUES (41,'2022-04-16 08:14:35','学号1','学生姓名1','班级1',1,1,1,1,1,'学年1','2022-04-16 16:14:35','教师工号1','教师姓名1'),(42,'2022-04-16 08:14:35','学号2','学生姓名2','班级2',2,2,2,2,2,'学年2','2022-04-16 16:14:35','教师工号2','教师姓名2'),(43,'2022-04-16 08:14:35','学号3','学生姓名3','班级3',3,3,3,3,3,'学年3','2022-04-16 16:14:35','教师工号3','教师姓名3'),(44,'2022-04-16 08:14:35','学号4','学生姓名4','班级4',4,4,4,4,4,'学年4','2022-04-16 16:14:35','教师工号4','教师姓名4'),(45,'2022-04-16 08:14:35','学号5','学生姓名5','班级5',5,5,5,5,5,'学年5','2022-04-16 16:14:35','教师工号5','教师姓名5'),(46,'2022-04-16 08:14:35','学号6','学生姓名6','班级6',6,6,6,6,6,'学年6','2022-04-16 16:14:35','教师工号6','教师姓名6'),(1650097240826,'2022-04-16 08:20:40','002','王强','计算机一班',20,20,20,20,80,'2021学年','2022-04-16 16:20:18','001','杨丽');
/*!40000 ALTER TABLE `zonghechengji` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-16 19:50:49
