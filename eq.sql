/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.1.32-MariaDB : Database - eqs_test
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
  PRIMARY KEY (`ug_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `eq_user_groups` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `eq_users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
