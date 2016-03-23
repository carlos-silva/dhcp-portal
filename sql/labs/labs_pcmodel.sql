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
-- Table structure for table `pcmodel`
--

DROP TABLE IF EXISTS `pcmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcmodel` (
  `id` tinyint(3) unsigned NOT NULL,
  `manufacturer` tinytext NOT NULL,
  `model` tinytext NOT NULL,
  `size` tinytext,
  `description` tinytext,
  `comments` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcmodel`
--

LOCK TABLES `pcmodel` WRITE;
/*!40000 ALTER TABLE `pcmodel` DISABLE KEYS */;
INSERT INTO `pcmodel` VALUES (1,'Dell','Optiplex 380',NULL,'Optiplex 380',NULL),(2,'Dell','Optiplex 390',NULL,'Optiplex 390',NULL),(3,'Dell','Optiplex 760','tower','Optiplex 760 (tower)',NULL),(4,'Dell ','Optiplex 760',NULL,'Optiplex 760',NULL),(5,'Dell','Optiplex 780',NULL,'Optiplex 780',NULL),(6,'Dell','Optiplex 7010',NULL,'Optiplex 7010',NULL),(7,'Dell','Precision 380',NULL,'Precision 380',NULL),(8,'Dell','Precision T3400',NULL,'Precision T3400',NULL),(9,'Dell','Precision T3500',NULL,'Precision T3500',NULL);
/*!40000 ALTER TABLE `pcmodel` ENABLE KEYS */;
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
