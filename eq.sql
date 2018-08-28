/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.1.32-MariaDB : Database - eq_test
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eq_test` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eq_test`;

/*Table structure for table `eq_user_groups` */

DROP TABLE IF EXISTS `eq_user_groups`;

CREATE TABLE `eq_user_groups` (
  `ug_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `ug_group_name` varchar(20) DEFAULT NULL,
  `ug_status` tinyint(4) DEFAULT NULL COMMENT '1- Active, 0- inactive',
  `ug_group_type` tinyint(4) DEFAULT NULL COMMENT '1 - Admin users, 2-normal users',
  PRIMARY KEY (`ug_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `eq_user_groups` */

insert  into `eq_user_groups`(`ug_master_id`,`ug_group_name`,`ug_status`,`ug_group_type`) values (1,'Admin',1,1),(2,'Users',1,2);

/*Table structure for table `eq_users` */

DROP TABLE IF EXISTS `eq_users`;

CREATE TABLE `eq_users` (
  `us_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `ug_master_id` int(11) DEFAULT NULL,
  `us_user_name` varchar(100) DEFAULT NULL,
  `us_password` varchar(250) DEFAULT NULL,
  `us_first_name` varchar(100) DEFAULT NULL,
  `us_last_name` varchar(100) DEFAULT NULL,
  `us_status` tinyint(4) DEFAULT NULL COMMENT '1 -Active, 0-inactive',
  PRIMARY KEY (`us_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `eq_users` */

insert  into `eq_users`(`us_master_id`,`ug_master_id`,`us_user_name`,`us_password`,`us_first_name`,`us_last_name`,`us_status`) values (1,1,'admin','5b722b307fce6c944905d132691d5e4a2214b7fe92b738920eb3fce3a90420a19511c3010a0e7712b054daef5b57bad59ecbd93b3280f210578f547f4aed4d25','Ushas','Joseph',1),(2,2,'user1','5b722b307fce6c944905d132691d5e4a2214b7fe92b738920eb3fce3a90420a19511c3010a0e7712b054daef5b57bad59ecbd93b3280f210578f547f4aed4d25','User','Test',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
