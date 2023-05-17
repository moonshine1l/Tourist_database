CREATE DATABASE  IF NOT EXISTS `tourist_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tourist_db`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: tourist_db
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sight_has_journey`
--

DROP TABLE IF EXISTS `sight_has_journey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sight_has_journey` (
  `sight_id` int NOT NULL,
  `journey_id` int NOT NULL,
  PRIMARY KEY (`sight_id`,`journey_id`),
  KEY `fk_sight_has_journey_journey1_idx` (`journey_id`),
  KEY `fk_sight_has_journey_sight_idx` (`sight_id`),
  CONSTRAINT `fk_sight_has_journey_journey1` FOREIGN KEY (`journey_id`) REFERENCES `journey` (`id`),
  CONSTRAINT `fk_sight_has_journey_sight` FOREIGN KEY (`sight_id`) REFERENCES `sight` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sight_has_journey`
--

LOCK TABLES `sight_has_journey` WRITE;
/*!40000 ALTER TABLE `sight_has_journey` DISABLE KEYS */;
INSERT INTO `sight_has_journey` VALUES (1,1),(2,1),(3,1),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,3),(14,3),(15,4),(16,5),(17,5),(18,6),(19,6),(20,6),(21,7),(22,7),(23,7),(24,7),(25,7),(26,7),(27,8),(28,8),(29,8),(30,8),(31,9),(32,9),(33,9),(34,9),(35,9),(36,9),(37,9),(38,10),(39,10),(40,10),(41,10),(42,13),(43,13),(44,13),(45,13),(46,13),(47,13),(48,13),(49,13),(50,13),(51,13),(52,14),(53,14),(54,14),(55,14),(52,15),(53,15),(54,15),(55,15),(18,16),(19,16),(20,16),(31,17),(32,17),(33,17),(34,17),(35,17),(36,17),(37,17);
/*!40000 ALTER TABLE `sight_has_journey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18  2:45:14
