# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.29)
# Database: collectionDB
# Generation Time: 2020-02-03 14:23:07 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table recordCollection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `recordCollection`;

CREATE TABLE `recordCollection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Band` varchar(100) DEFAULT NULL,
  `Song` varchar(100) DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Link` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `recordCollection` WRITE;
/*!40000 ALTER TABLE `recordCollection` DISABLE KEYS */;

INSERT INTO `recordCollection` (`id`, `Band`, `Song`, `Year`, `Genre`, `Link`)
VALUES
	(1,'Bad Manners','Lip up fatty','1980','Ska','https://youtu.be/F6fQnTyEniM'),
	(2,'Bobby Womack','Woman\'s gotta have it','1972','Soul','https://youtu.be/X23t2MCZsHE'),
	(3,'Joe South','These are not my people','1968','Rock','https://youtu.be/pI3PibhZTq8'),
	(4,'The Everly Brothers','(Till) I kissed you','1959','Rock','https://youtu.be/Tm_W0ztUMms'),
	(5,'The Tams','Be young, be foolish, be happy','1968','Soul','https://youtu.be/Ezpae7vk4Bo'),
	(6,'Gordon Lightfoot','If you could read my mind','1970','Singer-Songwriter','https://youtu.be/v5tr_L31StI');

/*!40000 ALTER TABLE `recordCollection` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
