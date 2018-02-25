# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.38)
# Database: techvariable
# Generation Time: 2018-02-25 16:03:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `author`;

CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;

INSERT INTO `author` (`id`, `name`, `last_name`)
VALUES
	(1,'John','Johnson'),
	(2,'Martin','Fowler'),
	(3,'Jason','Lengstorf'),
	(4,'Linus','Torvalds'),
	(5,'Robert','Martin'),
	(6,'Bill','Gates'),
	(7,'Achyut','Deka'),
	(8,'Achyut','Deka');

/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quote
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quote`;

CREATE TABLE `quote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `quote` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `quote_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `quote` WRITE;
/*!40000 ALTER TABLE `quote` DISABLE KEYS */;

INSERT INTO `quote` (`id`, `author_id`, `quote`)
VALUES
	(1,1,'First, solve the problem. Then, write the code.'),
	(2,2,'Any fool can write code that a computer can understand. Good programmers write code that humans can understand.'),
	(3,3,'If you stop learning, then the projects you work on are stuck in whatever time period you decided to settle.'),
	(4,4,'Bad programmers worry about the code. Good programmers worry about the data structures and their relationships.'),
	(5,4,'Most good programmers do programming not because they expect to get paid or get adulation by the public, but because it is fun to program.'),
	(6,4,'When you say \'I wrote a program that crashed Windows,\' people just stare at you blankly and say \'Hey, I got those with the system, for free.\''),
	(7,4,'A computer is like air conditioning - it becomes useless when you open Windows.'),
	(8,4,'If you think your users are idiots, only idiots will use it.'),
	(9,5,'You should name a variable using the same care with which you name a first-born child.'),
	(10,6,'If you are born poor, it is not your mistake, but if you die poor it is your mistake.'),
	(11,6,'No one will need more than 637Kb of memory for a personal computer.');

/*!40000 ALTER TABLE `quote` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
