# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.29)
# Database: paul_collection
# Generation Time: 2020-02-06 11:40:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table record_collection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `record_collection`;

CREATE TABLE `record_collection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `band` varchar(100) DEFAULT NULL,
  `song` varchar(100) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `link` varchar(400) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `record_collection` WRITE;
/*!40000 ALTER TABLE `record_collection` DISABLE KEYS */;

INSERT INTO `record_collection` (`id`, `band`, `song`, `year`, `genre`, `link`, `image`)
VALUES
	(1,'Bad Manners','Lip up fatty','1980','Ska','https://youtu.be/F6fQnTyEniM','images/badManners2.jpg'),
	(2,'Bobby Womack','Woman\'s gotta have it','1972','Soul','https://youtu.be/X23t2MCZsHE','images/bobbyWomack3.jpeg'),
	(3,'Joe South','These are not my people','1968','Rock','https://youtu.be/pI3PibhZTq8','images/joeSouth4.jpg'),
	(4,'The Everly Brothers','(Till) I kissed you','1959','Rock','https://youtu.be/Tm_W0ztUMms','images/everlyBros1.jpg'),
	(5,'The Tams','Be young, be foolish, be happy','1968','Soul','https://youtu.be/Ezpae7vk4Bo','images/tams2.jpg'),
	(6,'Gordon Lightfoot','If you could read my mind','1970','Singer-Songwriter','https://youtu.be/v5tr_L31StI','images/lightfoot2.jpg');

/*!40000 ALTER TABLE `record_collection` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
