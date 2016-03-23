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
-- Table structure for table `vblade_history`
--

DROP TABLE IF EXISTS `vblade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vblade_history` (
  `block` smallint(5) unsigned NOT NULL,
  `interf` tinytext NOT NULL,
  `ip` int(10) unsigned NOT NULL,
  `os` tinyint(4) NOT NULL,
  `image` tinytext NOT NULL,
  `vblade` varchar(10) NOT NULL,
  `kpxe_file` tinytext NOT NULL,
  `comments` longtext,
  `date` datetime NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vblade_history`
--

LOCK TABLES `vblade_history` WRITE;
/*!40000 ALTER TABLE `vblade_history` DISABLE KEYS */;
INSERT INTO `vblade_history` VALUES (1087,'eth22',23423425,1,'no','1.1','','','2013-12-17 11:30:16'),(1087,'eth22',23423425,1,'yes','1.1','','no','2013-12-17 11:31:58'),(1072,'eth7',2886797297,2,'IFS64_760_c_97g_img007a_v02_20130821_s1s3.vhd','1.3','IFS64_760_c_97g_v001_s1s3.kpxe','rvfuhyndkgusdfbg','2013-12-17 16:05:53'),(1087,'eth22',23423425,1,'yes','1.1','','','2013-12-17 17:06:38'),(1087,'eth22',1234567,1,'yes','1.1','','','2013-12-17 17:46:42'),(1087,'eth22',2064401152,1,'yes','1.1','','','2014-01-03 14:43:59'),(1087,'eth22',1,1,'yes','1.1','','','2014-01-03 14:44:43'),(1087,'eth22',2066563405,1,'yes','1.1','','','2014-01-03 15:49:57'),(1087,'eth22',1455456,1,'yes','1.1','','','2014-01-03 15:50:13'),(1087,'eth22',1,1,'yes','1.1','','','2014-01-03 16:07:32'),(1087,'eth22',1,1,'yes','1.1','qwerty','','2014-01-07 11:57:06'),(1087,'eth22',1,1,'yes','1.1','qwerty','ierunvfofuisdrbgtmp\r\nthn\r\ntbfghrftnhdrfdbhfdg\r\nhdfgbhdfghfgnhgf','2014-01-08 18:05:45'),(1087,'eth22',1,1,'yes','1.1','qwerty','ierunvfofuisdrbgtmp\r\nthn\r\ntbfghrftnhdrfdbhfdg\r\n','2014-01-13 15:10:17'),(1087,'eth22',1,1,'yes','1.1','qwerty','ierunvfofuisdrbgtmp\r\nthn\r\ntbfghrftnhdrfdbhfdg\r\nsfsdf\r\nsdfs\r\ndfsd\r\nfsdfsdfsdf\r\n','2014-01-16 10:20:12'),(1087,'eth22',1,1,'yes','1.1','qwerty','ierunvfofuisdrbgtmp\r\nthn\r\ntbfghrftnhdrfdbhfdg\r\nsfsdf\r\njdsssssssssssssssssssssssssssssssssssssssssssssssssuioa\r\nsdfs\r\ndfsd\r\nfsdfsdfsdf\r\n','2014-01-16 10:20:25');
/*!40000 ALTER TABLE `vblade_history` ENABLE KEYS */;
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
