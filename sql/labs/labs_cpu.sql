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
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cpu` (
  `id` tinyint(3) unsigned NOT NULL,
  `manufacturer` tinytext NOT NULL,
  `model` tinytext,
  `cores` tinyint(3) unsigned DEFAULT NULL,
  `frequency` decimal(4,2) NOT NULL,
  `description` tinytext,
  `comments` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (1,'Intel',NULL,NULL,2.13,'Intel Xeon',NULL),(2,'Intel','EC5539',2,2.27,'Intel Xeon EC5539',NULL),(3,'Intel',NULL,NULL,2.80,'Intel Xeon',NULL),(4,'Intel','E7400',2,2.80,'Intel Core 2 Duo E7400',NULL),(5,'Intel','E7500',2,2.90,'Intel Core 2 Duo E7500',NULL),(6,'Intel','E7500',2,2.93,'Intel Core 2 Duo E7500',NULL),(7,'Intel','E4800',2,3.00,'Intel Core 2 Duo E8400',NULL),(8,'Intel','2120',2,3.30,'Intel Core i3-2120 ',NULL),(9,'Intel','3220',2,3.30,'Intel Core i3-3220 ',NULL);
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
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
