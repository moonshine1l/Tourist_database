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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `surname` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `patronymic` varchar(225) DEFAULT NULL,
  `birthdate` date NOT NULL,
  `document` varchar(255) NOT NULL,
  `series_and_number` char(15) NOT NULL,
  `division_code` char(7) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `phone` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Иванов','Иван','Иванович','1987-01-01','паспорт','1234 456789','670-789','ОУФМС России по г. Муром','2007-01-16','+7 (997) 260-63-20'),(2,'Колбина','Наталия','Васильевна','1986-05-25','паспорт','4525 557517','120-458','Отделением УФМС России в г. Воронеж','2006-06-06','+7 (984) 544-68-26'),(3,'Яцкевич','Аполлинария','Якововна','1980-06-26','паспорт','4878 638813','300-320','ОВД России по г. Подольск','2000-07-01','+7 (987) 908-51-40'),(4,'Миронов','Иван','Сергеевич','1992-01-24','паспорт','4068 538838','630-816','Отделом внутренних дел России по г. Махачкала','2012-02-12','+7 (941) 859-87-68'),(5,'Майсак','Лана','Егоровна','1990-06-19','паспорт','4641 616466','860-737','Управление внутренних дел по г. Барнаул','2010-06-27','+7 (927) 860-24-97'),(6,'Розанов','Антон','Германович','1977-02-14','паспорт','4384 917920','950-342','Отделением УФМС России по г. Томск','2022-02-19','+7 (973) 908-16-83'),(7,'Слепцов','Севастьян','Ипполитович','1973-01-16','паспорт','4779 999665','360-166','ОУФМС России по г. Красноярск','2018-01-22','+7 (948) 272-30-86'),(8,'Жербин','Никита','Евгениевич','1977-05-09','паспорт','4249 657097','600-905','Отделом УФМС России по г. Северодвинск','2022-05-18','+7 (939) 708-95-69'),(9,'Жербин','Александр','Никитич','2012-07-03','свидетельство о рождении','I-ТД №599991',NULL,NULL,NULL,'+7 (955) 708-45-99'),(10,'Олейникова','Антонина','Фадеевна','1985-11-23','паспорт','4126 360640','340-308','ОУФМС России по г. Северск','2005-11-29','+7 (987) 241-23-11'),(11,'Данькина','Марьяна','Леонтьевна','1992-03-04','паспорт','4225 203456','100-645','УФМС России по г. Волжский','2012-03-16','+7 (909) 743-28-80'),(12,'Карпюка','Людмила','Серафимовна','1983-03-10','паспорт','4223 752458','730-987','ОВД России по г. Киров','2003-03-19','+7 (944) 800-95-29'),(13,'Холод','Михаил','Геннадьевич','1972-12-11','паспорт','4632 462823','810-776','ОУФМС России по г. Курган','2017-12-14','+7 (937) 757-90-71'),(14,'Холод','Никита','Михайлович','2010-01-01','свидетельство о рождении','III-ДВ №716163',NULL,NULL,NULL,'+7 (998) 109-71-97'),(15,'Кубышкин','Иннокентий','Иннокентиевич','1998-06-15','паспорт','4973 749656','150-757','УФМС России по г. Вологда','2018-06-27','+7 (945) 292-85-67'),(16,'Гурин','Иван','Кириллович','1985-02-05','паспорт','4275 719033','710-376','УФМС России по г. Муром','2005-02-08','+7 (970) 288-90-98'),(17,'Михалицын','Федор','Романович','1996-01-20','паспорт','4686 372164','520-335','Отделом внутренних дел России по г. Владикавказ','2016-02-04','+7 (996) 847-11-40'),(18,'Кауфман','Егор','Васильевич','1976-11-15','паспорт','4392 193270','160-613','ОУФМС России по г. Ангарск','2021-12-01','+7 (934) 554-17-98'),(19,'Белозерцева','Клавдия','Антоновна','1988-06-30','паспорт','4946 810904','670-766','Управление внутренних дел по г. Воронеж','2008-07-11','+7 (965) 549-45-73'),(20,'Югова','Ева','Егоровна','1999-01-24','паспорт','4951 741028','500-156','Отделом внутренних дел России по г. Орёл','2019-02-12','+7 (925) 683-21-19');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
