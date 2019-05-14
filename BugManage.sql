/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.17 : Database - BugManage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`BugManage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `BugManage`;

/*Table structure for table `bug_detail` */

DROP TABLE IF EXISTS `bug_detail`;

CREATE TABLE `bug_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `projectId` bigint(20) NOT NULL COMMENT '对应项目表的主键',
  `severity` int(100) NOT NULL COMMENT '严重性（10：文字错误 20：次要错误 30：严重错误）',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `reportUser` varchar(50) DEFAULT NULL COMMENT '报告人',
  `createDate` date NOT NULL COMMENT '报告时间（当前时间）',
  PRIMARY KEY (`id`),
  KEY `projectId` (`projectId`),
  CONSTRAINT `bug_detail_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `bug_project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `bug_detail` */

insert  into `bug_detail`(`id`,`projectId`,`severity`,`title`,`reportUser`,`createDate`) values (1,1,20,'图书录入时，不能选择时间','张杰','2019-05-08'),(2,3,30,'菜单不能及时刷新','谢娜','2019-05-08'),(3,6,10,'会议室字体打错','何炅','2019-05-06');

/*Table structure for table `bug_project` */

DROP TABLE IF EXISTS `bug_project`;

CREATE TABLE `bug_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `name` varchar(50) NOT NULL COMMENT '项目名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `bug_project` */

insert  into `bug_project`(`id`,`name`) values (1,'图书管理系统'),(2,'超市管理系统'),(3,'微信点餐系统'),(4,'当当网管理系统'),(5,'乐购Tina街管理系统'),(6,'会议室管理系统'),(7,'天猫精灵管理系统');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
