/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.16-log : Database - studentinfo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentinfo` /*!40100 DEFAULT CHARACTER SET utf32 */;

USE `studentinfo`;

/*Table structure for table `base_dict` */

DROP TABLE IF EXISTS `base_dict`;

CREATE TABLE `base_dict` (
  `dict_id` varchar(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(64) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(64) NOT NULL COMMENT '数据字典项目名称',
  `dict_sort` int(10) DEFAULT NULL COMMENT '排序字段',
  `dict_enable` char(1) NOT NULL COMMENT '1:使用 0:停用',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `base_dict` */

insert  into `base_dict`(`dict_id`,`dict_type_code`,`dict_type_name`,`dict_item_name`,`dict_sort`,`dict_enable`) 
values ('1','001','所属学院','信息工程学院 ',1,'1'),
('10','001','所属学院','理学院 ',10,'1'),
('11','002','学生性别','男 ',1,'1'),
('12','002','学生性别','女 ',2,'1'),
('13','003','学生年级','大一 ',1,'1'),
('14','003','学生年级','大二 ',2,'1'),
('15','003','学生年级','大三 ',3,'1'),
('16','003','学生年级','大四 ',4,'1'),
('2','001','所属学院','生命科学学院 ',2,'1'),
('3','001','所属学院','水利水电学院 ',3,'1'),
('4','001','所属学院','体育学院 ',4,'1'),
('5','001','所属学院','人文学院 ',5,'1'),
('6','001','所属学院','法学院 ',6,'1'),
('7','001','所属学院','艺术与传媒学院 ',7,'1'),
('8','001','所属学院','机电学院 ',8,'1'),
('9','001','所属学院','食品学院 ',9,'1');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `stu_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '编号(主键)',
  `stu_name` varchar(32) NOT NULL COMMENT '学生姓名',
  `stu_number` varchar(10) NOT NULL COMMENT '学生学号',
  `stu_sex` varchar(2) DEFAULT NULL COMMENT '学生性别',
  `stu_college` varchar(32) NOT NULL COMMENT '所属学院',
  `stu_grade` varchar(64) DEFAULT NULL COMMENT '学生年级',
  `stu_phone` varchar(64) DEFAULT NULL COMMENT '学生电话',
  PRIMARY KEY (`stu_id`),
  KEY `FK_stu_student_sex` (`stu_sex`),
  KEY `FK_stu_student_college` (`stu_college`),
  KEY `FK_stu_student_grade` (`stu_grade`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(64) NOT NULL COMMENT '用户账号',
  `password` varchar(32) NOT NULL COMMENT '用户密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
