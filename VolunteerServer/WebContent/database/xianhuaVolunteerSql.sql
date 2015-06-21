/*
SQLyog Ultimate v8.32 
MySQL - 5.6.21-log : Database - volunteer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`volunteer` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `volunteer`;

/*Table structure for table `activity` */

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `activityID` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `activityType` varchar(255) DEFAULT NULL,
  `recruitPeopleNum` int(11) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  `activityAddress` varchar(255) DEFAULT NULL,
  `activityContactName` varchar(255) DEFAULT NULL,
  `activityTelPhone` varchar(255) DEFAULT NULL,
  `activityEmail` varchar(255) DEFAULT NULL,
  `perks` varchar(255) DEFAULT NULL,
  `demand` varchar(255) DEFAULT NULL,
  `activityIntroduce` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `viewAcount` int(11) unsigned zerofill DEFAULT '00000000000' COMMENT '浏览量',
  `imgPath` varchar(255) DEFAULT NULL,
  `isRecommended` varchar(1) DEFAULT '0',
  PRIMARY KEY (`activityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `activity` */

insert  into `activity`(`activityID`,`title`,`activityType`,`recruitPeopleNum`,`startTime`,`endTime`,`deadline`,`uploadTime`,`activityAddress`,`activityContactName`,`activityTelPhone`,`activityEmail`,`perks`,`demand`,`activityIntroduce`,`publisher`,`viewAcount`,`imgPath`,`isRecommended`) values ('1','粤学粤快乐与你相约石牌1','便民',1,'2015-04-21 00:00:00','2015-02-13 22:41:14','2015-02-19 22:41:55','2015-04-21 00:00:00','广东省&&广州市&&番禺区&&大学城','1','1','1','1','1','1','1',00000000017,'1.jpg','1'),('10','粤学粤快乐与你相约石牌10','便民',5,'2015-04-20 21:46:27','2015-03-27 21:47:07','2015-03-10 21:49:06','2015-04-01 00:00:00','广东省&&广州市&&番禺区&&大学城','2','2','2','2','2','2','2',00000000016,'2.jpg','1'),('11','粤学粤快乐与你相约石牌11','敬老',5,'2015-04-20 21:46:24','2015-03-27 21:47:03','2015-03-10 21:49:09','2015-04-01 00:00:00','广东省&&广州市&&番禺区&&大学城','3','3','3','3','3','3','3',00000000018,'3.jpg','1'),('12','粤学粤快乐与你相约石牌12','便民',5,'2015-04-27 21:46:21','2015-03-27 21:46:59','2015-03-26 21:47:35','2015-04-01 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','4','4','4',00000000012,'4.jpg','1'),('13','粤学粤快乐与你相约石牌13','文体',5,'2015-04-27 21:46:19','2015-03-26 21:46:56','2015-03-25 21:47:31','2015-04-01 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','4','4','4',00000000022,'5.jpg','1'),('14','粤学粤快乐与你相约石牌14','敬老',5,'2015-04-27 21:46:17','2015-03-26 21:46:52','2015-03-26 21:47:27','2015-04-27 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','4','4','4',00000000016,'6.jpg','1'),('15','粤学粤快乐与你相约石牌15','便民',5,'2015-04-27 21:46:13','2015-03-27 21:46:45','2015-03-26 21:47:24','2015-04-27 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','44','4','4',00000000013,'7.jpg','1'),('16','粤学粤快乐与你相约石牌16','文体',5,'2015-05-01 21:46:10','2015-03-19 21:46:48','2015-03-25 21:47:21','2015-04-27 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','4','44','4',00000000013,'8.jpg','1'),('17','粤学粤快乐与你相约石牌17','便民',5,'2015-05-01 21:46:07','2015-05-14 21:46:36','2015-03-26 21:47:18','2015-04-27 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','4','4','4',00000000016,'9.jpg','1'),('18','粤学粤快乐与你相约石牌18','文体',5,'2015-05-01 21:45:55','2015-03-10 21:45:58','2015-03-10 21:46:00','2015-04-27 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','4','4','4',00000000012,'10.jpg','1'),('19','粤学粤快乐与你相约石牌19','敬老',5,'2015-05-01 21:45:09','2015-03-27 21:45:27','2015-03-27 21:45:31','2015-04-27 00:00:00','广东省&&广州市&&番禺区&&大学城','19','44','4','4','4','4','4',00000000030,'Lw7L29Y6VE6TaNf87n66.jpg','1'),('2','粤学粤快乐与你相约石牌2','文体',2,'2015-05-01 22:43:25','2015-02-27 22:43:29','2015-02-20 22:43:40','2015-05-01 00:00:00','广东省&&广州市&&番禺区&&大学城','2','2','2','2','2','2','2',00000000012,'Lw7L29Y6VE6TaNf87n66.jpg','0'),('3','粤学粤快乐与你相约石牌3','敬老',3,'2015-05-01 22:44:13','2015-02-07 22:44:19','2015-02-18 22:44:23','2015-05-01 00:00:00','广东省&&广州市&&番禺区&&大学城','3','3','3','3','3','3','3',00000000014,'Lw7L29Y6VE6TaNf87n66.jpg','0'),('4','粤学粤快乐与你相约石牌4','便民',4,'2015-05-06 22:44:52','2015-02-07 22:44:56','2015-02-09 22:44:59','2015-05-06 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','4','4','4',00000000015,'Lw7L29Y6VE6TaNf87n66.jpg','0'),('4028b8814e13f7d6014e14055e1f0001','专职志愿者','其他',12,'2015-06-27 21:47:14','2015-06-28 21:47:14','2015-06-27 21:47:14','2015-06-27 21:47:14','广东省&&广州市&&番禺区&&大学城','刘小姐','020-37653715','wealink@suixing.org@163.com','4','4','（一）职位描述：\r\n1、 根据中心安排，协助社工开展社区服务工作、社区活动；\r\n（二）应聘要求：\r\n1、 具有爱心、责任心、耐心，愿意长期从事公益事业；\r\n2、 有积极的生活态度、亲和力，善于倾听、沟通；\r\n（三）福利待遇：\r\n1、每月给予车费及餐费补贴\r\n简历投递方式：有意者请将个人简历以附件形式按“姓名-应聘岗位”的格式命名后投至机构招聘邮箱：wealink@suixing.org。经初审合格后电话通知面试。','4',00000000032,'plyA656T1hUvx5RqLEF1.jpg','1'),('5','粤学粤快乐与你相约石牌5','便民',5,'2015-05-03 22:46:57','2015-02-07 22:47:01','2015-02-13 22:47:05','2015-05-04 00:00:00','广东省&&广州市&&番禺区&&大学城','5','5','5','55','5','5','5',00000000017,'Lw7L29Y6VE6TaNf87n66.jpg','0'),('6','粤学粤快乐与你相约石牌6','便民',6,'2015-05-20 14:39:50','2015-03-28 14:39:58','2015-03-20 14:40:02','2015-03-05 00:00:00','广东省&&广州市&&番禺区&&大学城','6','6','6','6','6','6','6',00000000014,'Lw7L29Y6VE6TaNf87n66.jpg','0'),('7','粤学粤快乐与你相约石牌7','便民',7,'2015-05-20 14:40:43','2015-03-05 14:40:48','2015-03-31 14:40:51','2015-05-03 00:00:00','广东省&&广州市&&番禺区&&大学城','7','7','7','7','7','7','7',00000000076,'Lw7L29Y6VE6TaNf87n66.jpg','0'),('8','粤学粤快乐与你相约石牌8','便民',5,'2015-05-20 21:46:32','2015-03-27 21:47:14','2015-03-10 21:49:17','2015-05-04 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','4','4','4','4',00000000027,'Lw7L29Y6VE6TaNf87n66.jpg','0'),('9','粤学粤快乐与你相约石牌9','便民',5,'2015-05-20 21:46:29','2015-03-27 21:47:11','2015-03-10 21:49:58','2015-05-01 00:00:00','广东省&&广州市&&番禺区&&大学城','4','4','4','44','4','44','4',00000000024,'Lw7L29Y6VE6TaNf87n66.jpg','0');

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `addressID` varchar(50) NOT NULL COMMENT '地址ID（主键）',
  `province` varchar(50) DEFAULT NULL COMMENT '省份',
  `city` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`addressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminID` varchar(255) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `adminName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

/*Table structure for table `announce` */

DROP TABLE IF EXISTS `announce`;

CREATE TABLE `announce` (
  `announceID` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`announceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `announce` */

/*Table structure for table `applyactivity` */

DROP TABLE IF EXISTS `applyactivity`;

CREATE TABLE `applyactivity` (
  `applyActivityID` varchar(255) NOT NULL,
  `userID` varchar(255) DEFAULT NULL,
  `activityID` varchar(255) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  PRIMARY KEY (`applyActivityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `applyactivity` */

insert  into `applyactivity`(`applyActivityID`,`userID`,`activityID`,`uploadTime`) values ('4028f9814c466552014c466642730001','1','7','2015-03-23 19:30:49'),('4028f9814c466552014c469a2eff0002','1','19','2015-03-23 20:27:31'),('4028f9814c466552014c46ab8edf0003','1','9','2015-03-23 20:46:30'),('8a862eee4c82fb21014c82fb241e0001','1','1','2015-04-04 13:50:39'),('8a862eee4c88a99c014c88ab44480004','1','3','2015-04-05 16:21:07'),('8a862eee4c88a99c014c88c146c10005','1','8','2015-04-05 16:45:10'),('8a862eee4c8c93fc014c8ca4809c0002','1','14','2015-04-06 10:52:13');

/*Table structure for table `checkactivity` */

DROP TABLE IF EXISTS `checkactivity`;

CREATE TABLE `checkactivity` (
  `checkActivityID` varchar(255) NOT NULL,
  `orgID` varchar(255) DEFAULT NULL,
  `activityID` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `failedReason` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  PRIMARY KEY (`checkActivityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `checkactivity` */

insert  into `checkactivity`(`checkActivityID`,`orgID`,`activityID`,`state`,`failedReason`,`checkTime`,`uploadTime`) values ('4028f9814c455b18014c455b1bb50001',NULL,'1',NULL,NULL,NULL,'2015-03-23 14:39:01'),('8a862eee4c446430014c4464331f0001',NULL,'1',NULL,NULL,NULL,'2015-03-23 10:09:19');

/*Table structure for table `checkorg` */

DROP TABLE IF EXISTS `checkorg`;

CREATE TABLE `checkorg` (
  `checkOrgID` varchar(255) NOT NULL,
  `orgID` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `failedReason` varchar(255) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  PRIMARY KEY (`checkOrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `checkorg` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `cityID` varchar(255) NOT NULL,
  `provinceID` varchar(255) DEFAULT NULL,
  `cityName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `collectID` varchar(255) NOT NULL,
  `userID` varchar(255) DEFAULT NULL,
  `activityID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`collectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `collect` */

insert  into `collect`(`collectID`,`userID`,`activityID`) values ('402809814c7001dd014c7001dfbe0001','1','1'),('4028b8814e140740014e14134e8e0001','402881e54d7aa628014d7aa62bd70001','4028b8814e13f7d6014e14055e1f0001'),('8a862eee4c82dd7a014c82dd86860001','1','7'),('8a862eee4c832716014c8327b3200001','1','7'),('8a862eee4c832716014c8327d7640002','1','19'),('8a862eee4c832716014c8339930a0003','','8'),('8a862eee4c832716014c8339a9350004','','8'),('8a862eee4c832716014c8339b0fd0005','','8'),('8a862eee4c832716014c8339b3230006','','8'),('8a862eee4c88a99c014c88ab23fe0001','1',''),('8a862eee4c88a99c014c88ab2a7b0002','1',''),('8a862eee4c88a99c014c88ab327d0003','1',''),('8a862eee4c88a99c014c88c1c2c20006','1','8'),('8a862eee4c88a99c014c88c1cdb90007','1','8'),('8a862eee4c88a99c014c88c288d10008','1','8'),('8a862eee4c88a99c014c88c2928c0009','1','8'),('8a862eee4c88d07a014c88d0cbc60001','1','6'),('8a862eee4c88d07a014c88d0d2ee0002','1','6'),('8a862eee4c8c93fc014c8d198ddb0003','','17'),('8a862eee4c8d7bbe014c8d7c2dec0001','1','7');

/*Table structure for table `information` */

DROP TABLE IF EXISTS `information`;

CREATE TABLE `information` (
  `informationID` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `imgPath` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  PRIMARY KEY (`informationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `information` */

insert  into `information`(`informationID`,`title`,`digest`,`imgPath`,`num`,`uploadTime`) values ('111111111111','11','11','Lw7L29Y6VE6TaNf87n66.jpg',2,'2015-04-16 21:16:57');

/*Table structure for table `org` */

DROP TABLE IF EXISTS `org`;

CREATE TABLE `org` (
  `orgID` varchar(255) NOT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `practiceNumber` varchar(255) DEFAULT NULL,
  `orgScale` varchar(255) DEFAULT NULL,
  `orgAddress` varchar(255) DEFAULT NULL,
  `orgContactName` varchar(255) DEFAULT NULL,
  `orgTelPhone` varchar(255) DEFAULT NULL,
  `orgEmail` varchar(255) DEFAULT NULL,
  `orgIntroduce` varchar(255) DEFAULT NULL,
  `orgType` varchar(255) DEFAULT NULL,
  `registerTime` varchar(255) DEFAULT NULL,
  `recruitNum` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`orgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `org` */

/*Table structure for table `province` */

DROP TABLE IF EXISTS `province`;

CREATE TABLE `province` (
  `provinceID` varchar(255) NOT NULL,
  `provinceName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`provinceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `province` */

/*Table structure for table `systemddl` */

DROP TABLE IF EXISTS `systemddl`;

CREATE TABLE `systemddl` (
  `seqID` varchar(255) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `ddlCode` varchar(255) DEFAULT NULL,
  `ddlName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `systemddl` */

insert  into `systemddl`(`seqID`,`keyword`,`ddlCode`,`ddlName`) values ('8a862eee4c2fc242014c2fc245a00001','服务意向','7eLP','助老'),('8a862eee4c2fc309014c2fc30c3f0001','服务意向','13Ni','义教');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userID` varchar(255) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `portrait` varchar(255) DEFAULT NULL,
  `telPhone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `applyCount` int(11) DEFAULT NULL,
  `isCantonese` varchar(255) DEFAULT NULL,
  `registerTime` datetime DEFAULT NULL,
  `volunteerLastTime` bigint(20) DEFAULT NULL,
  `volunteerType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userID`,`account`,`password`,`userName`,`nickName`,`sex`,`address`,`portrait`,`telPhone`,`email`,`introduce`,`experience`,`applyCount`,`isCantonese`,`registerTime`,`volunteerLastTime`,`volunteerType`) values ('1','13751733273','123456','969你好',NULL,'男','湖南&&长沙&&天心&&你好','Lw7L29Y6VE6TaNf87n66.jpg','13805589942','2312@qq.com',NULL,'ABC',0,'会',NULL,0,'便民,敬老,'),('402881e54d7aa628014d7aa62bd70001','18814090301','123','李先华',NULL,NULL,NULL,NULL,'18814090301',NULL,NULL,NULL,0,NULL,NULL,0,NULL),('402881e54d7b5b7e014d7b5b81860001','18814090302','123456',NULL,NULL,NULL,NULL,NULL,'18814090302',NULL,NULL,NULL,0,NULL,NULL,0,NULL),('8a862eee4cd4da7d014cd4dc89c50001','13802412963','123456',NULL,NULL,NULL,NULL,NULL,'13802412963',NULL,NULL,NULL,0,NULL,NULL,0,NULL);

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `custBonus` varchar(255) NOT NULL,
  `custLevel` varchar(255) DEFAULT NULL,
  `custName` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `usersession` varchar(255) DEFAULT NULL,
  `custPwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`custBonus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
