/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.17 : Database - nav_footer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nav_footer` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nav_footer`;

/*Table structure for table `navigation` */

DROP TABLE IF EXISTS `navigation`;

CREATE TABLE `navigation` (
  `id` int(2) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `link` varchar(100) NOT NULL,
  `parent_id` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `navigation` */

LOCK TABLES `navigation` WRITE;

insert  into `navigation`(`id`,`name`,`link`,`parent_id`) values (1,'Home','\"http://www.google.lk\"',0),(2,'Faculties','\"http://www.nsbm.lk\"',0),(3,'Sub Item 1','',1),(4,'Sub Item 2','',1),(5,'Sub Item 3','',1),(6,'About','',0),(7,'Conatact','',0),(8,'Sub Menu 2','',0),(9,'Sub Item 1','',8),(10,'Sub Item 2','',8),(11,'NEW','',0);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
