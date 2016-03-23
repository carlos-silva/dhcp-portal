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
-- Table structure for table `vblade`
--

DROP TABLE IF EXISTS `vblade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vblade` (
  `block` smallint(5) unsigned NOT NULL,
  `interf` tinytext NOT NULL,
  `ip` int(10) unsigned NOT NULL,
  `os` tinyint(4) NOT NULL,
  `image` tinytext NOT NULL,
  `vblade` varchar(10) NOT NULL,
  `kpxe_file` tinytext NOT NULL,
  `comments` longtext,
  PRIMARY KEY (`vblade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vblade`
--

LOCK TABLES `vblade` WRITE;
/*!40000 ALTER TABLE `vblade` DISABLE KEYS */;
INSERT INTO `vblade` VALUES (1087,'eth22',1,1,'yes','1.1','qwerty','ierunvfofuisdrbgtmp\r\nthn\r\ntbfghrftnhdrfdbhfdg\r\nsfsdf\r\njdsssssssssssssssssssssssssssssssssssssssssssssssssuioa\r\nsdfs\r\ndfsd\r\nfsdfsdfsdf\r\n'),(1072,'eth7',2886797297,2,'IFS64_760_c_97g_img007a_v02_20130821_s1s3.vhd','1.3','IFS64_760_c_97g_v001_s1s3.kpxe','rvfuhyndkgusdfbg'),(1351,'eth2',2886738929,2,'IFS64_760_c_97g_img007a_v02_20130821_s1s4.vhd','1.4','IFS64_760_c_97g_v001_s1s4.kpxe',NULL),(446,'eth0',2886741745,2,'IFS32_760_c_97g_img007a_v02_20130821_s1s5.vhd','1.5','IFS64_760_c_97g_v001_s1s5.kpxe',NULL),(437,'eth1',2886739441,2,'IFS64_760_c_97g_img007a_v02_20130821_s1s6.vhd','1.6','IFS64_760_c_97g_v001_s1s6.kpxe',NULL),(1071,'eth3',2886731762,2,'IFS64_760_c_97g_img007a_v02_20130821_s4s1.vhd','4.1','IFS64_760_c_97g_v001_s4s1.kpxe',NULL),(1072,'eth6',2886797298,2,'IFS64_760_c_97g_img007a_v02_20130821_s4s3.vhd','4.3','IFS64_760_c_97g_v001_s4s3.kpxe',NULL),(1351,'eth2',2886738930,2,'IFS64_760_c_97g_img007a_v02_20130821_s4s4.vhd','4.4','IFS64_760_c_97g_v001_s4s4.kpxe',NULL),(446,'eth7',2886741746,2,'IFS32_760_c_97g_img007a_v02_20130821_s4s5.vhd','4.5','IFS64_760_c_97g_v001_s4s5.kpxe',NULL),(437,'eth1',2886739442,2,'IFS64_760_c_97g_img007a_v02_20130821_s4s6.vhd','4.6','IFS64_760_c_97g_v001_s4s6.kpxe',NULL);
/*!40000 ALTER TABLE `vblade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-13 16:43:33
