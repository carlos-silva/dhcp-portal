CREATE DATABASE  IF NOT EXISTS `labs` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `labs`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: labs
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `vhd`
--

DROP TABLE IF EXISTS `vhd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vhd` (
  `date` datetime DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `os` tinyint(4) DEFAULT NULL,
  `image` tinytext,
  `vblade` varchar(10) NOT NULL,
  `kpxefile` tinytext,
  `changes` longtext,
  `vhdcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vblade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vhd`
--

LOCK TABLES `vhd` WRITE;
/*!40000 ALTER TABLE `vhd` DISABLE KEYS */;
INSERT INTO `vhd` VALUES ('2014-02-13 16:37:44','uj',1,'ujt','1.1','jft','',NULL),('2014-01-16 15:48:57','123',1,'sda','1.7','asd','dfgbhdfgbhf',NULL),('2013-12-13 17:48:51','213.14.76',1,'!@#','123','!@#321','!@#321',NULL),('2014-01-16 15:48:38','1379534',1,'vf','1234','sv','A4',NULL),('2013-12-16 15:35:37','12345678',1,'abcd','22','abcd','web',NULL),('2014-01-17 13:07:46','124',1,'hjkmjnk','23','hjmk','mhjmkm',NULL),('2013-12-16 14:26:18','13213234',2,'bbgfbg','3','dfbb','nain',NULL),('2013-12-04 17:54:14','12312434568',1,'231','465','64','6556',NULL),('2014-02-13 15:38:53','213',1,'hola','ascdsa','ascdasd','asdcasdcasdbvasdvasdfrrrrrvfg\r\ngxdbxdbxdbxdbxdbxdbxdbxdbxdbxdbxdbxdbxdbxdb\r\nsdgbgfb',NULL),('2013-12-04 17:58:54','0.7.23.24',1,'bfg','bfh','gbfhg','fgbbhfg',NULL),('2013-11-27 14:19:47','234',1,'svfs','ghbf','dfbg','dfgbdfgbdfgdfg',NULL),('2013-12-04 17:49:34','123124345',1,'df','gnf','dfg','nhdhfn',NULL),('2013-12-04 17:54:40','21367567',2,'jkl','l','klklj','ljkklj',NULL),('2013-11-27 15:33:10','23',2,'scad','sacd','ascd','scaduiaseruialsmfbusdnfupgavmpfguiodafnubfgiomufmdioauvgioduaiogvadiopfugnbpidmafposvgiodpfgu',NULL),('2013-11-27 15:07:14','34234',1,'fsd','sdbf','fgfgf','dv',NULL),('2013-11-27 14:40:56','213',1,'d12','sdv','fsv','fsdf',NULL);
/*!40000 ALTER TABLE `vhd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-13 16:43:34
