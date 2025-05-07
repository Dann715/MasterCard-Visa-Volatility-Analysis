-- MySQL dump 10.13 Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost Database: collisions
-- ------------------------------------------------------
-- Server version 8.1.0
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
-- Temporary view structure for view `average_factor_hour`
--
DROP TABLE IF EXISTS `average_factor_hour`;
/*!50001 DROP VIEW IF EXISTS `average_factor_hour`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `average_factor_hour` AS SELECT
1 AS `Factor Description`,
1 AS `Average Hour`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `borough_vehicle_gender`
--
DROP TABLE IF EXISTS `borough_vehicle_gender`;
/*!50001 DROP VIEW IF EXISTS `borough_vehicle_gender`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `borough_vehicle_gender` AS SELECT
1 AS `Borough`,
1 AS `Vehicle Type`,
1 AS `Person_gender`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `boroughs`
--
DROP TABLE IF EXISTS `boroughs`;
/*!50001 DROP VIEW IF EXISTS `boroughs`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `boroughs` AS SELECT
1 AS `Borough`,
1 AS `Occurences`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `cause`
--
DROP TABLE IF EXISTS `cause`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cause` (
`Collision_ID` int NOT NULL,
`Contributing Factor ID` int NOT NULL,
PRIMARY KEY (`Collision_ID`),
KEY `fk_cause_contr_factors1_idx` (`Contributing Factor ID`),
CONSTRAINT `fk_cause_collision_info1` FOREIGN KEY (`Collision_ID`) REFERENCES
`collision_info` (`Collision_ID`),
CONSTRAINT `fk_cause_contr_factors1` FOREIGN KEY (`Contributing Factor ID`)
REFERENCES `contr_factors` (`Contributing Factor ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `cause`
--
LOCK TABLES `cause` WRITE;
/*!40000 ALTER TABLE `cause` DISABLE KEYS */;
INSERT INTO `cause` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),
(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),
(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),
(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),
(50,50),(51,51),(52,52),(53,53),(54,54),(55,55),(56,56),(57,57),(58,58),(59,59),
(60,60),(61,61),(62,62),(63,63),(64,64),(65,65),(66,66),(67,67),(68,68),(69,69),
(70,70),(71,71),(72,72),(73,73),(74,74),(75,75),(76,76),(77,77),(78,78),(79,79),
(80,80),(81,81),(82,82),(83,83),(84,84),(85,85),(86,86),(87,87),(88,88),(89,89),
(90,90),(91,91),(92,92),(93,93),(94,94),(95,95),(96,96),(97,97),(98,98),(99,99),
(100,100),(101,101),(102,102),(103,103),(104,104),(105,105),(106,106),(107,107),
(108,108),(109,109),(110,110),(111,111),(112,112),(113,113),(114,114),(115,115),
(116,116),(117,117),(118,118),(119,119),(120,120),(121,121),(122,122),(123,123),
(124,124),(125,125),(126,126),(127,127),(128,128),(129,129),(130,130),(131,131),
(132,132),(133,133),(134,134),(135,135),(136,136),(137,137),(138,138),(139,139),
(140,140),(141,141),(142,142),(143,143),(144,144),(145,145),(146,146),(147,147),
(148,148),(149,149),(150,150),(151,151),(152,152),(153,153),(154,154),(155,155),
(156,156),(157,157),(158,158),(159,159),(160,160),(161,161),(162,162),(163,163),
(164,164),(165,165),(166,166),(167,167),(168,168),(169,169),(170,170),(171,171),
(172,172),(173,173),(174,174),(175,175),(176,176),(177,177),(178,178),(179,179),
(180,180),(181,181),(182,182),(183,183),(184,184),(185,185),(186,186),(187,187),
(188,188),(189,189),(190,190),(191,191),(192,192),(193,193),(194,194),(195,195),
(196,196),(197,197),(198,198),(199,199),(200,200),(201,201),(202,202),(203,203),
(204,204),(205,205),(206,206),(207,207),(208,208),(209,209),(210,210),(211,211),
(212,212),(213,213),(214,214),(215,215),(216,216),(217,217),(218,218),(219,219),
(220,220),(221,221),(222,222),(223,223),(224,224),(225,225),(226,226),(227,227),
(228,228),(229,229),(230,230),(231,231),(232,232),(233,233),(234,234),(235,235),
(236,236),(237,237),(238,238),(239,239),(240,240),(241,241),(242,242),(243,243),
(244,244),(245,245),(246,246),(247,247),(248,248),(249,249),(250,250),(251,251),
(252,252),(253,253),(254,254),(255,255),(256,256),(257,257),(258,258),(259,259),
(260,260),(261,261),(262,262),(263,263),(264,264),(265,265),(266,266),(267,267),
(268,268),(269,269),(270,270),(271,271),(272,272),(273,273),(274,274),(275,275),
(276,276),(277,277),(278,278),(279,279),(280,280),(281,281),(282,282),(283,283),
(284,284),(285,285),(286,286),(287,287),(288,288),(289,289),(290,290),(291,291),
(292,292),(293,293),(294,294),(295,295),(296,296),(297,297),(298,298),(299,299);
/*!40000 ALTER TABLE `cause` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `collision_info`
--
DROP TABLE IF EXISTS `collision_info`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collision_info` (
`Collision_ID` int NOT NULL AUTO_INCREMENT,
`Crash Time` varchar(25) DEFAULT NULL,
`Crash Date` varchar(25) DEFAULT NULL,
PRIMARY KEY (`Collision_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `collision_info`
--
LOCK TABLES `collision_info` WRITE;
/*!40000 ALTER TABLE `collision_info` DISABLE KEYS */;
INSERT INTO `collision_info` VALUES (1,'2:39:00 ','2021-09-11'),(2,'11:45:00
','2022-03-26'),(3,'6:55:00 ','2022-06-29'),(4,'9:35:00 ','2021-09-11'),(5,'8:13:00
','2021-12-14'),(6,'12:47:00 ','2021-04-14'),(7,'17:05:00 ','2021-12-14'),
(8,'8:17:00 ','2021-12-14'),(9,'21:10:00 ','2021-12-14'),(10,'14:58:00 ','2021-12-
14'),(11,'0:34:00 ','2021-12-13'),(12,'16:50:00 ','2021-12-14'),(13,'8:30:00
','2021-12-14'),(14,'0:59:00 ','2021-12-14'),(15,'23:10:00 ','2021-12-14'),
(16,'17:58:00 ','2021-12-14'),(17,'20:03:00 ','2021-12-14'),(18,'1:28:00 ','2021-
12-14'),(19,'19:43:00 ','2021-12-11'),(20,'14:30:00 ','2021-12-14'),(21,'4:45:00
','2021-12-11'),(22,'5:46:00 ','2021-12-14'),(23,'6:30:00 ','2021-12-13'),
(24,'3:43:00 ','2021-12-14'),(25,'17:40:00 ','2021-12-13'),(26,'17:31:00 ','2021-
12-14'),(27,'20:13:00 ','2021-12-14'),(28,'12:54:00 ','2021-12-14'),(29,'17:15:00
','2021-12-14'),(30,'22:49:00 ','2021-12-14'),(31,'9:00:00 ','2021-12-12'),
(32,'16:25:00 ','2021-12-14'),(33,'14:30:00 ','2021-04-14'),(34,'6:59:00 ','2021-
12-16'),(35,'16:00:00 ','2022-06-29'),(36,'16:15:00 ','2021-04-15'),(37,'11:42:00
','2021-07-07'),(38,'17:50:00 ','2022-07-12'),(39,'10:00:00 ','2022-03-23'),
(40,'0:43:00 ','2021-07-09'),(41,'16:45:00 ','2022-04-24'),(42,'4:49:00 ','2022-04-
24'),(43,'17:17:00 ','2022-04-22'),(44,'1:30:00 ','2022-04-24'),(45,'6:00:00
','2022-04-24'),(46,'21:40:00 ','2022-04-24'),(47,'17:45:00 ','2022-04-24'),
(48,'6:11:00 ','2022-04-15'),(49,'9:51:00 ','2022-04-24'),(50,'0:00:00 ','2022-04-
24'),(51,'20:00:00 ','2022-03-08'),(52,'15:35:00 ','2022-04-24'),(53,'12:00:00
','2022-04-22'),(54,'13:10:00 ','2022-04-24'),(55,'4:20:00 ','2022-04-24'),
(56,'19:37:00 ','2022-04-20'),(57,'16:14:00 ','2022-04-24'),(58,'19:56:00 ','2022-
04-12'),(59,'0:30:00 ','2022-04-24'),(60,'20:13:00 ','2022-04-24'),(61,'15:21:00
','2022-04-24'),(62,'10:27:00 ','2022-04-24'),(63,'21:00:00 ','2022-04-24'),
(64,'21:40:00 ','2022-04-24'),(65,'14:14:00 ','2022-04-07'),(66,'17:35:00 ','2021-
06-29'),(67,'20:20:00 ','2021-12-09'),(68,'14:50:00 ','2021-12-09'),(69,'2:45:00
','2021-12-09'),(70,'22:16:00 ','2021-12-06'),(71,'12:00:00 ','2021-12-04'),
(72,'16:20:00 ','2021-12-08'),(73,'23:15:00 ','2021-12-09'),(74,'14:34:00 ','2021-
12-01'),(75,'7:00:00 ','2021-12-10'),(76,'9:20:00 ','2021-12-07'),(77,'8:00:00
','2021-12-09'),(78,'17:08:00 ','2021-12-07'),(79,'8:20:00 ','2021-12-05'),
(80,'19:30:00 ','2021-12-08'),(81,'12:00:00 ','2021-12-08'),(82,'8:06:00 ','2021-
12-10'),(83,'19:30:00 ','2021-12-08'),(84,'22:37:00 ','2021-12-08'),(85,'17:56:00
','2021-12-08'),(86,'7:50:00 ','2021-12-07'),(87,'0:44:00 ','2021-12-08'),
(88,'15:00:00 ','2021-12-08'),(89,'11:00:00 ','2021-12-10'),(90,'1:10:00 ','2021-
12-10'),(91,'0:00:00 ','2021-12-09'),(92,'18:36:00 ','2021-12-08'),(93,'20:30:00
','2021-12-09'),(94,'10:13:00 ','2021-12-09'),(95,'14:00:00 ','2022-03-26'),
(96,'1:02:00 ','2022-03-26'),(97,'16:02:00 ','2022-03-26'),(98,'16:05:00 ','2022-
03-26'),(99,'12:05:00 ','2022-03-21'),(100,'5:13:00 ','2022-03-26'),(101,'17:42:00
','2022-03-26'),(102,'12:18:00 ','2022-03-26'),(103,'20:10:00 ','2022-03-26'),
(104,'15:45:00 ','2022-03-26'),(105,'17:55:00 ','2022-03-26'),(106,'0:50:00
','2022-03-26'),(107,'14:05:00 ','2022-03-26'),(108,'9:30:00 ','2022-03-26'),
(109,'8:30:00 ','2022-03-10'),(110,'23:00:00 ','2022-03-24'),(111,'7:36:00 ','2022-
03-26'),(112,'11:50:00 ','2022-03-26'),(113,'17:42:00 ','2022-03-26'),(114,'1:45:00
','2022-03-26'),(115,'17:00:00 ','2022-03-26'),(116,'11:48:00 ','2022-02-25'),
(117,'22:51:00 ','2022-03-26'),(118,'8:21:00 ','2022-03-26'),(119,'8:00:00 ','2022-
03-17'),(120,'10:30:00 ','2022-03-26'),(121,'9:23:00 ','2021-12-16'),(122,'13:48:00
','2022-03-26'),(123,'9:56:00 ','2022-03-25'),(124,'23:45:00 ','2022-03-26'),
(125,'1:26:00 ','2022-03-26'),(126,'9:07:00 ','2022-03-22'),(127,'16:00:00 ','2022-
03-26'),(128,'23:17:00 ','2022-03-26'),(129,'9:00:00 ','2022-03-23'),(130,'5:00:00
','2022-03-26'),(131,'6:15:00 ','2022-03-25'),(132,'21:50:00 ','2022-03-26'),
(133,'21:25:00 ','2022-03-26'),(134,'18:13:00 ','2022-03-25'),(135,'20:10:00
','2022-03-26'),(136,'12:55:00 ','2022-03-25'),(137,'11:00:00 ','2022-03-23'),
(138,'3:05:00 ','2022-03-26'),(139,'4:34:00 ','2022-03-26'),(140,'19:56:00 ','2022-
03-26'),(141,'12:40:00 ','2022-03-26'),(142,'1:58:00 ','2022-03-26'),(143,'19:56:00
','2022-03-26'),(144,'0:30:00 ','2022-03-26'),(145,'15:44:00 ','2022-03-16'),
(146,'20:05:00 ','2022-03-26'),(147,'17:54:00 ','2022-03-26'),(148,'17:55:00
','2022-03-25'),(149,'9:09:00 ','2021-12-12'),(150,'16:00:00 ','2021-04-13'),
(151,'18:17:00 ','2021-08-05'),(152,'16:35:00 ','2022-03-26'),(153,'19:50:00
','2022-03-26'),(154,'13:19:00 ','2022-03-26'),(155,'8:45:00 ','2022-03-25'),
(156,'10:10:00 ','2022-03-26'),(157,'11:45:00 ','2022-03-26'),(158,'14:35:00
','2022-03-25'),(159,'14:30:00 ','2022-03-26'),(160,'19:00:00 ','2022-03-26'),
(161,'2:05:00 ','2022-03-26'),(162,'16:40:00 ','2022-03-26'),(163,'18:05:00
','2022-03-24'),(164,'3:35:00 ','2022-03-26'),(165,'10:34:00 ','2022-03-20'),
(166,'14:54:00 ','2022-03-26'),(167,'6:35:00 ','2022-03-25'),(168,'14:00:00
','2022-03-25'),(169,'19:13:00 ','2022-03-21'),(170,'5:02:00 ','2022-03-26'),
(171,'9:45:00 ','2022-03-25'),(172,'22:54:00 ','2022-03-26'),(173,'21:00:00
','2022-03-26'),(174,'17:29:00 ','2022-03-26'),(175,'2:10:00 ','2022-03-26'),
(176,'0:00:00 ','2022-03-25'),(177,'4:00:00 ','2022-03-26'),(178,'4:34:00 ','2022-
03-26'),(179,'11:56:00 ','2022-03-09'),(180,'14:41:00 ','2022-03-26'),
(181,'18:00:00 ','2022-03-26'),(182,'13:30:00 ','2022-03-26'),(183,'13:20:00
','2022-03-26'),(184,'21:35:00 ','2022-03-25'),(185,'21:00:00 ','2022-03-23'),
(186,'12:00:00 ','2022-03-26'),(187,'13:28:00 ','2022-03-26'),(188,'19:12:00
','2022-03-26'),(189,'21:29:00 ','2022-03-26'),(190,'13:21:00 ','2022-03-25'),
(191,'8:20:00 ','2022-03-22'),(192,'22:30:00 ','2022-03-26'),(193,'11:20:00
','2022-03-26'),(194,'18:17:00 ','2022-03-26'),(195,'10:30:00 ','2022-03-14'),
(196,'1:30:00 ','2022-03-26'),(197,'3:23:00 ','2022-03-26'),(198,'1:45:00 ','2022-
03-26'),(199,'14:52:00 ','2022-03-05'),(200,'20:27:00 ','2022-03-26'),
(201,'18:19:00 ','2022-03-26'),(202,'23:00:00 ','2022-03-26'),(203,'18:00:00
','2022-03-26'),(204,'20:40:00 ','2022-03-23'),(205,'11:45:00 ','2022-04-24'),
(206,'12:01:00 ','2021-09-11'),(207,'11:00:00 ','2021-09-10'),(208,'20:15:00
','2021-09-11'),(209,'8:15:00 ','2021-09-09'),(210,'23:07:00 ','2021-12-10'),
(211,'21:50:00 ','2021-12-10'),(212,'5:40:00 ','2021-11-27'),(213,'5:15:00 ','2021-
12-09'),(214,'12:58:00 ','2021-12-08'),(215,'17:50:00 ','2021-12-08'),(216,'4:30:00
','2021-12-10'),(217,'21:22:00 ','2021-12-10'),(218,'8:30:00 ','2021-12-10'),
(219,'12:15:00 ','2021-12-10'),(220,'14:38:00 ','2021-12-08'),(221,'13:40:00
','2021-12-03'),(222,'8:50:00 ','2021-12-10'),(223,'19:45:00 ','2021-12-09'),
(224,'16:07:00 ','2021-12-10'),(225,'6:37:00 ','2021-12-08'),(226,'21:20:00
','2021-12-10'),(227,'23:16:00 ','2021-12-10'),(228,'17:21:00 ','2021-12-09'),
(229,'7:30:00 ','2021-12-09'),(230,'23:58:00 ','2021-11-24'),(231,'17:00:00
','2021-12-09'),(232,'8:15:00 ','2021-12-08'),(233,'2:20:00 ','2021-09-11'),
(234,'12:00:00 ','2021-07-09'),(235,'15:25:00 ','2021-09-11'),(236,'14:50:00
','2021-09-10'),(237,'17:45:00 ','2021-07-01'),(238,'13:45:00 ','2021-07-07'),
(239,'12:00:00 ','2021-09-11'),(240,'17:30:00 ','2021-07-07'),(241,'2:55:00
','2021-09-11'),(242,'17:15:00 ','2021-09-11'),(243,'17:14:00 ','2021-09-03'),
(244,'12:30:00 ','2021-07-08'),(245,'11:50:00 ','2021-08-23'),(246,'21:34:00
','2021-09-11'),(247,'11:30:00 ','2021-09-11'),(248,'10:34:00 ','2021-09-06'),
(249,'15:56:00 ','2021-07-08'),(250,'23:06:00 ','2021-07-07'),(251,'6:51:00
','2021-09-11'),(252,'12:30:00 ','2021-09-07'),(253,'4:10:00 ','2021-09-11'),
(254,'9:25:00 ','2021-07-08'),(255,'6:40:00 ','2021-09-11'),(256,'17:35:00 ','2021-
09-11'),(257,'17:17:00 ','2021-07-08'),(258,'3:00:00 ','2021-09-10'),(259,'5:59:00
','2021-09-11'),(260,'11:39:00 ','2021-09-09'),(261,'17:30:00 ','2021-04-13'),
(262,'17:40:00 ','2021-09-11'),(263,'22:15:00 ','2021-09-11'),(264,'7:15:00
','2021-09-11'),(265,'17:00:00 ','2021-09-10'),(266,'11:33:00 ','2021-07-08'),
(267,'21:48:00 ','2021-09-11'),(268,'10:30:00 ','2022-03-26'),(269,'19:00:00
','2021-09-11'),(270,'22:23:00 ','2021-09-11'),(271,'15:00:00 ','2021-09-11'),
(272,'10:20:00 ','2021-09-10'),(273,'0:00:00 ','2021-09-11'),(274,'15:01:00
','2021-07-06'),(275,'4:00:00 ','2021-07-09'),(276,'8:45:00 ','2021-09-10'),
(277,'11:51:00 ','2021-09-11'),(278,'18:50:00 ','2021-09-11'),(279,'7:10:00
','2021-07-02'),(280,'13:26:00 ','2021-09-06'),(281,'5:30:00 ','2021-09-11'),
(282,'12:55:00 ','2021-09-11'),(283,'14:00:00 ','2021-09-11'),(284,'12:30:00
','2021-07-09'),(285,'13:00:00 ','2021-09-11'),(286,'15:00:00 ','2021-09-11'),
(287,'15:30:00 ','2021-07-08'),(288,'11:15:00 ','2021-07-09'),(289,'10:45:00
','2021-09-02'),(290,'17:35:00 ','2021-09-07'),(291,'19:08:00 ','2021-09-11'),
(292,'10:25:00 ','2021-09-11'),(293,'14:00:00 ','2021-09-11'),(294,'0:12:00
','2021-08-29'),(295,'23:48:00 ','2021-09-11'),(296,'1:45:00 ','2021-09-11'),
(297,'17:13:00 ','2021-07-08'),(298,'11:39:00 ','2021-09-09'),(299,'19:00:00
','2021-07-06');
/*!40000 ALTER TABLE `collision_info` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `collision_view`
--
DROP TABLE IF EXISTS `collision_view`;
/*!50001 DROP VIEW IF EXISTS `collision_view`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `collision_view` AS SELECT
1 AS `Vehicle Type`,
1 AS `Factor Description`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `contr_factors`
--
DROP TABLE IF EXISTS `contr_factors`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contr_factors` (
`Contributing Factor ID` int NOT NULL,
`Factor Description` varchar(45) DEFAULT NULL,
PRIMARY KEY (`Contributing Factor ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `contr_factors`
--
LOCK TABLES `contr_factors` WRITE;
/*!40000 ALTER TABLE `contr_factors` DISABLE KEYS */;
INSERT INTO `contr_factors` VALUES (1,'Unspecified'),(2,'Driver
Inattention/Distraction'),(3,'Driver Inattention/Distraction'),(4,'Unspecified'),
(5,'Other Vehicular'),(6,'Driver Inattention/Distraction'),(7,'Unspecified'),
(8,'Driver Inattention/Distraction'),(9,'Unspecified'),(10,'Driver
Inattention/Distraction'),(11,'Unspecified'),(12,'Passenger Distraction'),
(13,'Unspecified'),(14,'Unspecified'),(15,'Traffic Control Disregarded'),
(16,'Unspecified'),(17,'Unspecified'),(18,'Unspecified'),(19,'Unsafe Lane
Changing'),(20,'Unspecified'),(21,'Unspecified'),(22,'Unspecified'),
(23,'Unspecified'),(24,'Unspecified'),(25,'Unspecified'),(26,'Unspecified'),
(27,'Unspecified'),(28,'Unspecified'),(29,'Driver Inattention/Distraction'),
(30,'Unspecified'),(31,'Unspecified'),(32,'Unspecified'),(33,'Driver
Inattention/Distraction'),(34,'Driver Inattention/Distraction'),(35,'Unspecified'),
(36,'Backing Unsafely'),(37,'Unspecified'),(38,'Driver Inattention/Distraction'),
(39,'Driver Inattention/Distraction'),(40,'Backing Unsafely'),(41,'Lost
Consciousness'),(42,'Failure to Yield Right-of-Way'),(43,'Unspecified'),
(44,'Unspecified'),(45,'Unspecified'),(46,'Unspecified'),(47,'Unspecified'),
(48,'Unspecified'),(49,'Failure to Yield Right-of-Way'),(50,'Unspecified'),
(51,'Other Vehicular'),(52,'Unspecified'),(53,'Other Vehicular'),
(54,'Unspecified'),(55,'Driver Inattention/Distraction'),(56,'Unspecified'),
(57,'Unspecified'),(58,'Unspecified'),(59,'Driver Inattention/Distraction'),
(60,'Following Too Closely'),(61,'Other Vehicular'),(62,'Unspecified'),
(63,'Unspecified'),(64,'Unspecified'),(65,'Unspecified'),(66,'Turning Improperly'),
(67,'Turning Improperly'),(68,'Physical Disability'),(69,'Fatigued/Drowsy'),
(70,'Failure to Yield Right-of-Way'),(71,'Fatigued/Drowsy'),(72,'Prescription
Medication'),(73,'Unspecified'),(74,'Unspecified'),(75,'Unspecified'),
(76,'Unspecified'),(77,'Backing Unsafely'),(78,'Unspecified'),(79,'Unspecified'),
(80,'Unspecified'),(81,'Fatigued/Drowsy'),(82,'Unspecified'),(83,''),
(84,'Unspecified'),(85,'Unspecified'),(86,'Backing
Unsafely'),(87,'Fatigued/Drowsy'),(88,'Unspecified'),(89,''),(90,'Traffic Control
Disregarded'),(91,'Unspecified'),(92,'Unspecified'),(93,'Unspecified'),
(94,'Unspecified'),(95,'Unspecified'),(96,'Unspecified'),(97,'Driver
Inattention/Distraction'),(98,'Unspecified'),(99,'Unspecified'),
(100,'Unspecified'),(101,'Unspecified'),(102,'Failure to Yield Right-of-Way'),
(103,'Driver Inattention/Distraction'),(104,'Unspecified'),(105,'Backing
Unsafely'),(106,'Other Vehicular'),(107,'Driver Inattention/Distraction'),
(108,'Unspecified'),(109,'Unspecified'),(110,'Unspecified'),(111,'Unspecified'),
(112,'Unspecified'),(113,'Following Too Closely'),(114,'Unspecified'),
(115,'Unspecified'),(116,'Unspecified'),(117,'Driver Inattention/Distraction'),
(118,'Unspecified'),(119,'Unspecified'),(120,'Unspecified'),(121,'Unspecified'),
(122,'Outside Car Distraction'),(123,'Unspecified'),(124,'Driver Inexperience'),
(125,'Unspecified'),(126,'Failure to Yield Right-of-Way'),(127,'Unspecified'),
(128,'Unspecified'),(129,'Unspecified'),(130,'Turning Improperly'),
(131,'Unspecified'),(132,'Backing Unsafely'),(133,'Backing Unsafely'),
(134,'Unspecified'),(135,'Unsafe Lane Changing'),(136,'Unspecified'),(137,''),
(138,'Unspecified'),(139,'Unspecified'),(140,'Unspecified'),(141,'Failure to Yield
Right-of-Way'),(142,'Unspecified'),(143,'Unspecified'),(144,'Unspecified'),
(145,'Illness'),(146,'Unspecified'),(147,'Unspecified'),(148,'Unsafe Lane
Changing'),(149,'Unspecified'),(150,'Unspecified'),(151,'Unspecified'),(152,'Driver
Inattention/Distraction'),(153,'Other Vehicular'),(154,'Unspecified'),
(155,'Unspecified'),(156,'Passenger Distraction'),(157,'Unspecified'),
(158,'Following Too Closely'),(159,'Passing Too Closely'),(160,'Unspecified'),
(161,'Driver Inattention/Distraction'),(162,'Driver Inattention/Distraction'),
(163,'Failure to Yield Right-of-Way'),(164,'Unspecified'),(165,'Following Too
Closely'),(166,'Unsafe Lane Changing'),(167,'Lost Consciousness'),(168,'Following
Too Closely'),(169,'Unspecified'),(170,'Passing or Lane Usage Improper'),
(171,'Unspecified'),(172,'Backing Unsafely'),(173,'Unspecified'),(174,'Outside Car
Distraction'),(175,'Unspecified'),(176,'Driver Inattention/Distraction'),
(177,'Driver Inattention/Distraction'),(178,'Lost Consciousness'),(179,'Following
Too Closely'),(180,'Unspecified'),(181,'Unspecified'),(182,'Failure to Yield Rightof-
Way'),(183,'Unspecified'),(184,'Unspecified'),(185,'Backing Unsafely'),
(186,'Unspecified'),(187,'Unspecified'),(188,'Driver Inattention/Distraction'),
(189,'Driver Inattention/Distraction'),(190,'Unspecified'),(191,'Unspecified'),
(192,'Unspecified'),(193,'Alcohol Involvement'),(194,'Following Too Closely'),
(195,'Unspecified'),(196,'Following Too Closely'),(197,'Unspecified'),
(198,'Unspecified'),(199,'Following Too Closely'),(200,'Unspecified'),
(201,'Unspecified'),(202,'Traffic Control Disregarded'),(203,'Unspecified'),
(204,'Unspecified'),(205,'Unspecified'),(206,'Unspecified'),(207,'Unspecified'),
(208,'Failure to Yield Right-of-Way'),(209,'Unsafe Lane Changing'),
(210,'Unspecified'),(211,'Driver Inattention/Distraction'),(212,'Unspecified'),
(213,'Unspecified'),(214,''),(215,'Unspecified'),(216,'Unspecified'),
(217,'Unspecified'),(218,'Driver Inattention/Distraction'),(219,'Driver
Inexperience'),(220,'Other Vehicular'),(221,'Unspecified'),(222,'Unspecified'),
(223,'Unspecified'),(224,'Unspecified'),(225,'Unspecified'),(226,'Unspecified'),
(227,'Unspecified'),(228,'Passing or Lane Usage Improper'),(229,'Unspecified'),
(230,'Unspecified'),(231,'Unspecified'),(232,'Passing Too Closely'),(233,'Driver
Inattention/Distraction'),(234,'Unspecified'),(235,'Unspecified'),
(236,'Unspecified'),(237,'Driver Inattention/Distraction'),(238,'Driver
Inattention/Distraction'),(239,'Other Vehicular'),(240,'Driver
Inattention/Distraction'),(241,'Fatigued/Drowsy'),(242,'Unspecified'),
(243,'Unspecified'),(244,'Unspecified'),(245,'Unspecified'),(246,'Unspecified'),
(247,'Unspecified'),(248,'Driver Inattention/Distraction'),(249,'Unspecified'),
(250,'Driver Inattention/Distraction'),(251,'Unspecified'),(252,'Unspecified'),
(253,''),(254,'Unspecified'),(255,'Unspecified'),(256,'Unspecified'),
(257,'Fatigued/Drowsy'),(258,'Unspecified'),(259,'Unspecified'),
(260,'Unspecified'),(261,'Unspecified'),(262,'Passing Too Closely'),
(263,'Unspecified'),(264,'Driver Inattention/Distraction'),(265,'Unspecified'),
(266,'Other Vehicular'),(267,'Unspecified'),(268,'Unspecified'),
(269,'Unspecified'),(270,'Unspecified'),(271,'Unspecified'),(272,'Unspecified'),
(273,'Unspecified'),(274,'Traffic Control Disregarded'),(275,'Unspecified'),
(276,'Failure to Yield Right-of-Way'),(277,'Unspecified'),(278,'Other Vehicular'),
(279,'Backing Unsafely'),(280,'Unspecified'),(281,'Driver
Inattention/Distraction'),(282,'Unspecified'),(283,'Unspecified'),
(284,'Unspecified'),(285,'Driver Inattention/Distraction'),(286,'Unspecified'),
(287,'Unspecified'),(288,'Driver Inattention/Distraction'),(289,'Unspecified'),
(290,''),(291,'Unsafe Lane Changing'),(292,'Passing or Lane Usage Improper'),
(293,'Unspecified'),(294,'Unspecified'),(295,'Unspecified'),(296,'Other
Vehicular'),(297,'Failure to Yield Right-of-Way'),(298,'Unspecified'),
(299,'Unspecified');
/*!40000 ALTER TABLE `contr_factors` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `crash_vehicles`
--
DROP TABLE IF EXISTS `crash_vehicles`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crash_vehicles` (
`Crash_Vehicle_ID` int NOT NULL,
`Collision_ID` int NOT NULL,
`Vehicle_ID` int NOT NULL,
PRIMARY KEY (`Crash_Vehicle_ID`),
KEY `fk_crash_vehicles_collision_info1_idx` (`Collision_ID`),
KEY `fk_crash_vehicles_vehicles1_idx` (`Vehicle_ID`),
CONSTRAINT `fk_crash_vehicles_collision_info1` FOREIGN KEY (`Collision_ID`)
REFERENCES `collision_info` (`Collision_ID`),
CONSTRAINT `fk_crash_vehicles_vehicles1` FOREIGN KEY (`Vehicle_ID`) REFERENCES
`vehicles` (`Vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `crash_vehicles`
--
LOCK TABLES `crash_vehicles` WRITE;
/*!40000 ALTER TABLE `crash_vehicles` DISABLE KEYS */;
INSERT INTO `crash_vehicles` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),
(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),
(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),
(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),
(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),
(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),
(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),
(49,49,49),(50,50,50),(51,51,51),(52,52,52),(53,53,53),(54,54,54),(55,55,55),
(56,56,56),(57,57,57),(58,58,58),(59,59,59),(60,60,60),(61,61,61),(62,62,62),
(63,63,63),(64,64,64),(65,65,65),(66,66,66),(67,67,67),(68,68,68),(69,69,69),
(70,70,70),(71,71,71),(72,72,72),(73,73,73),(74,74,74),(75,75,75),(76,76,76),
(77,77,77),(78,78,78),(79,79,79),(80,80,80),(81,81,81),(82,82,82),(83,83,83),
(84,84,84),(85,85,85),(86,86,86),(87,87,87),(88,88,88),(89,89,89),(90,90,90),
(91,91,91),(92,92,92),(93,93,93),(94,94,94),(95,95,95),(96,96,96),(97,97,97),
(98,98,98),(99,99,99),(100,100,100),(101,101,101),(102,102,102),(103,103,103),
(104,104,104),(105,105,105),(106,106,106),(107,107,107),(108,108,108),
(109,109,109),(110,110,110),(111,111,111),(112,112,112),(113,113,113),
(114,114,114),(115,115,115),(116,116,116),(117,117,117),(118,118,118),
(119,119,119),(120,120,120),(121,121,121),(122,122,122),(123,123,123),
(124,124,124),(125,125,125),(126,126,126),(127,127,127),(128,128,128),
(129,129,129),(130,130,130),(131,131,131),(132,132,132),(133,133,133),
(134,134,134),(135,135,135),(136,136,136),(137,137,137),(138,138,138),
(139,139,139),(140,140,140),(141,141,141),(142,142,142),(143,143,143),
(144,144,144),(145,145,145),(146,146,146),(147,147,147),(148,148,148),
(149,149,149),(150,150,150),(151,151,151),(152,152,152),(153,153,153),
(154,154,154),(155,155,155),(156,156,156),(157,157,157),(158,158,158),
(159,159,159),(160,160,160),(161,161,161),(162,162,162),(163,163,163),
(164,164,164),(165,165,165),(166,166,166),(167,167,167),(168,168,168),
(169,169,169),(170,170,170),(171,171,171),(172,172,172),(173,173,173),
(174,174,174),(175,175,175),(176,176,176),(177,177,177),(178,178,178),
(179,179,179),(180,180,180),(181,181,181),(182,182,182),(183,183,183),
(184,184,184),(185,185,185),(186,186,186),(187,187,187),(188,188,188),
(189,189,189),(190,190,190),(191,191,191),(192,192,192),(193,193,193),
(194,194,194),(195,195,195),(196,196,196),(197,197,197),(198,198,198),
(199,199,199),(200,200,200),(201,201,201),(202,202,202),(203,203,203),
(204,204,204),(205,205,205),(206,206,206),(207,207,207),(208,208,208),
(209,209,209),(210,210,210),(211,211,211),(212,212,212),(213,213,213),
(214,214,214),(215,215,215),(216,216,216),(217,217,217),(218,218,218),
(219,219,219),(220,220,220),(221,221,221),(222,222,222),(223,223,223),
(224,224,224),(225,225,225),(226,226,226),(227,227,227),(228,228,228),
(229,229,229),(230,230,230),(231,231,231),(232,232,232),(233,233,233),
(234,234,234),(235,235,235),(236,236,236),(237,237,237),(238,238,238),
(239,239,239),(240,240,240),(241,241,241),(242,242,242),(243,243,243),
(244,244,244),(245,245,245),(246,246,246),(247,247,247),(248,248,248),
(249,249,249),(250,250,250),(251,251,251),(252,252,252),(253,253,253),
(254,254,254),(255,255,255),(256,256,256),(257,257,257),(258,258,258),
(259,259,259),(260,260,260),(261,261,261),(262,262,262),(263,263,263),
(264,264,264),(265,265,265),(266,266,266),(267,267,267),(268,268,268),
(269,269,269),(270,270,270),(271,271,271),(272,272,272),(273,273,273),
(274,274,274),(275,275,275),(276,276,276),(277,277,277),(278,278,278),
(279,279,279),(280,280,280),(281,281,281),(282,282,282),(283,283,283),
(284,284,284),(285,285,285),(286,286,286),(287,287,287),(288,288,288),
(289,289,289),(290,290,290),(291,291,291),(292,292,292),(293,293,293),
(294,294,294),(295,295,295),(296,296,296),(297,297,297),(298,298,298),
(299,299,299);
/*!40000 ALTER TABLE `crash_vehicles` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `factor_occurences`
--
DROP TABLE IF EXISTS `factor_occurences`;
/*!50001 DROP VIEW IF EXISTS `factor_occurences`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `factor_occurences` AS SELECT
1 AS `Factor Description`,
1 AS `Occurences`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `gender`
--
DROP TABLE IF EXISTS `gender`;
/*!50001 DROP VIEW IF EXISTS `gender`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gender` AS SELECT
1 AS `Person_gender`,
1 AS `Occurences`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `location_info`
--
DROP TABLE IF EXISTS `location_info`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_info` (
`Location_ID` int NOT NULL,
`Street_name` varchar(100) DEFAULT NULL,
`Borough` varchar(100) NOT NULL,
`Zip_code` varchar(50) DEFAULT NULL,
`Latitude` varchar(45) DEFAULT NULL,
`Longitude` varchar(45) DEFAULT NULL,
`Location` varchar(45) DEFAULT NULL,
PRIMARY KEY (`Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `location_info`
--
LOCK TABLES `location_info` WRITE;
/*!40000 ALTER TABLE `location_info` DISABLE KEYS */;
INSERT INTO `location_info` VALUES (1,'WHITESTONE
EXPRESSWAY','UNKNOWN',NULL,NULL,NULL,NULL),(2,'QUEENSBORO BRIDGE
UPPER','UNKNOWN',NULL,NULL,NULL,NULL),(3,'THROGS NECK
BRIDGE','UNKNOWN',NULL,NULL,NULL,NULL),(4,NULL,'BROOKLYN','11208','40.667202','-
73.8665','(40.667202, -73.8665)'),(5,'SARATOGA
AVENUE','BROOKLYN','11233','40.683304','-73.917274','(40.683304, -73.917274)'),
(6,'MAJOR DEEGAN EXPRESSWAY RAMP','UNKNOWN',NULL,NULL,NULL,NULL),(7,'BROOKLYN
QUEENS EXPRESSWAY','UNKNOWN',NULL,'40.709183','-73.956825','(40.709183, -
73.956825)'),(8,NULL,'BRONX','10475','40.86816','-73.83148','(40.86816, -
73.83148)'),(9,NULL,'BROOKLYN','11207','40.67172','-73.8971','(40.67172, -
73.8971)'),(10,'3 AVENUE','MANHATTAN','10017','40.75144','-73.97397','(40.75144, -
73.97397)'),(11,'MYRTLE AVENUE','UNKNOWN',NULL,'40.701275','-73.88887','(40.701275,
-73.88887)'),(12,'SPRINGFIELD BOULEVARD','QUEENS','11413','40.675884','-
73.75577','(40.675884, -73.75577)'),(13,'broadway','UNKNOWN',NULL,NULL,NULL,NULL),
(14,'BELT PARKWAY','UNKNOWN',NULL,'40.59662','-74.00231','(40.59662, -74.00231)'),
(15,'NORTH CONDUIT AVENUE','QUEENS','11434','40.66684','-73.78941','(40.66684, -
73.78941)'),(16,NULL,'BROOKLYN','11217','40.68158','-73.97463','(40.68158, -
73.97463)'),(17,NULL,'BROOKLYN','11226','40.65068','-73.95881','(40.65068, -
73.95881)'),(18,'MEEKER AVENUE','UNKNOWN',NULL,NULL,NULL,NULL),(19,'WEST
KINGSBRIDGE ROAD','BRONX','10463','40.87262','-73.904686','(40.87262, -
73.904686)'),(20,'WHITESTONE EXPRESSWAY','UNKNOWN',NULL,'40.783268','-
73.82485','(40.783268, -73.82485)'),(21,NULL,'MANHATTAN','10001','40.748917','-
73.993546','(40.748917, -73.993546)'),(22,'LONG ISLAND
EXPRESSWAY','UNKNOWN',NULL,'40.744644','-73.77041','(40.744644, -73.77041)'),
(23,'82 STREET','QUEENS','11372','40.75373','-73.88505','(40.75373, -73.88505)'),
(24,'LEXINGTON AVENUE','UNKNOWN',NULL,'40.804375','-73.93742','(40.804375, -
73.93742)'),(25,'VICTORY BOULEVARD','STATEN ISLAND','10301','40.63165','-
74.08762','(40.63165, -74.08762)'),(26,'EAST 18
STREET','BROOKLYN','11230','40.623104','-73.95809','(40.623104, -73.95809)'),
(27,NULL,'BROOKLYN','11215','40.66576','-73.9845','(40.66576, -73.9845)'),
(28,'FULTON STREET','BROOKLYN','11217','40.687534','-73.9775','(40.687534, -
73.9775)'),(29,'GRAND STREET','BROOKLYN','11211','40.710957','-
73.951126','(40.710957, -73.951126)'),(30,NULL,'BRONX','10455','40.81813','-
73.910126','(40.81813, -73.910126)'),(31,NULL,'QUEENS','11385','40.70447','-
73.90148','(40.70447, -73.90148)'),(32,'EAST 93
STREET','UNKNOWN',NULL,'40.784615','-73.953964','(40.784615, -73.953964)'),
(33,'EASTCHESTER ROAD','UNKNOWN',NULL,NULL,NULL,NULL),(34,'KINGSLAND
AVENUE','UNKNOWN',NULL,NULL,NULL,NULL),(35,'WILLIAMSBURG BRIDGE OUTER
ROADWA','UNKNOWN',NULL,NULL,NULL,NULL),(36,'HUTCHINSON RIVER
PARKWAY','UNKNOWN',NULL,NULL,NULL,NULL),(37,'THROGS NECK
BRIDGE','UNKNOWN',NULL,NULL,NULL,NULL),(38,NULL,'BROOKLYN','11225','40.663303','-
73.96049','(40.663303, -73.96049)'),(39,NULL,'UNKNOWN',NULL,NULL,NULL,NULL),
(40,'ELIOT AVENUE','UNKNOWN',NULL,'40.720535','-73.88885','(40.720535, -
73.88885)'),(41,'STATEN ISLAND EXPRESSWAY','UNKNOWN',NULL,'40.607685','-
74.13892','(40.607685, -74.13892)'),(42,'BOSTON ROAD','UNKNOWN',NULL,'40.855972','-
73.869896','(40.855972, -73.869896)'),(43,'EAST 107
STREET','UNKNOWN',NULL,'40.790276','-73.9396','(40.790276, -73.9396)'),
(44,NULL,'BROOKLYN','11220','40.642986','-74.01621','(40.642986, -74.01621)'),
(45,NULL,'QUEENS','11411','0','0','(0.0, 0.0)'),(46,'BOSCOBEL
PLACE','BRONX','10452','40.843906','-73.92413','(40.843906, -73.92413)'),(47,'BRONX
RIVER PARKWAY','BRONX','10466','40.89481','-73.86183','(40.89481, -73.86183)'),
(48,'EAST 162 STREET','UNKNOWN',NULL,'0','0','(0.0, 0.0)'),(49,'CROSS BRONX
EXPY','UNKNOWN',NULL,'40.85169','-73.95238','(40.85169, -73.95238)'),(50,'MAJOR
DEEGAN EXPRESSWAY','BRONX','10453','40.861862','-73.91275','(40.861862, -
73.91275)'),(51,NULL,'BROOKLYN','11207','40.666256','-73.900215','(40.666256, -
73.900215)'),(52,'WEST 56 STREET','MANHATTAN','10019','40.767242','-
73.986206','(40.767242, -73.986206)'),(53,'AVENUE
J','BROOKLYN','11230','40.62417','-73.97048','(40.62417, -73.97048)'),(54,'SAINT
MARKS AVENUE','UNKNOWN',NULL,'40.679955','-73.97491','(40.679955, -73.97491)'),
(55,'THROOP AVENUE','BROOKLYN','11221','40.692356','-73.94282','(40.692356, -
73.94282)'),(56,'HENRY HUDSON PARKWAY','UNKNOWN',NULL,'40.78291','-
73.98578','(40.78291, -73.98578)'),(57,'ROCKAWAY
AVENUE','UNKNOWN',NULL,'40.67308','-73.91124','(40.67308, -73.91124)'),(58,'UTICA
AVENUE','BROOKLYN','11203','40.65011','-73.930214','(40.65011, -73.930214)'),
(59,'BELT PARKWAY','UNKNOWN',NULL,'40.638382','-74.03668','(40.638382, -
74.03668)'),(60,NULL,'QUEENS','11419','40.69261','-73.81143','(40.69261, -
73.81143)'),(61,'THOMSON AVENUE','QUEENS','11101','40.745235','-
73.937706','(40.745235, -73.937706)'),(62,'VANWYCK
EXPRESSWAY','UNKNOWN',NULL,NULL,NULL,NULL),(63,'21
STREET','QUEENS','11106','40.758705','-73.93793','(40.758705, -73.93793)'),
(64,'JAMAICA AVENUE','QUEENS','11418','40.695156','-73.845406','(40.695156, -
73.845406)'),(65,'1 AVENUE','MANHATTAN','10017','40.748158','-
73.97033','(40.748158, -73.97033)'),(66,'BEACH CHANNEL
DRIVE','UNKNOWN',NULL,'40.609535','-73.75372','(40.609535, -73.75372)'),(67,'EAST 7
STREET','BROOKLYN','11223','40.59207','-73.96299','(40.59207, -73.96299)'),
(68,'WEST 177 STREET','UNKNOWN',NULL,'40.850018','-73.9107','(40.850018, -
73.9107)'),(69,'149 AVENUE','QUEENS','11422','40.653023','-73.73895','(40.653023, -
73.73895)'),(70,'AVENUE J','UNKNOWN',NULL,'40.62573','-73.9564','(40.62573, -
73.9564)'),(71,'CROWN STREET','BROOKLYN','11213','40.665375','-
73.934235','(40.665375, -73.934235)'),(72,'EAST END
AVENUE','MANHATTAN','10128','40.776237','-73.943825','(40.776237, -73.943825)'),
(73,'12 AVENUE','BROOKLYN','11218','40.640835','-73.98967','(40.640835, -
73.98967)'),(74,NULL,'QUEENS','11692','40.593636','-73.797264','(40.593636, -
73.797264)'),(75,NULL,'QUEENS','11420','40.674263','-73.80453','(40.674263, -
73.80453)'),(76,'TAYLOR STREET','UNKNOWN',NULL,'40.70476','-73.96491','(40.70476, -
73.96491)'),(77,'WEST SHORE EXPRESSWAY','UNKNOWN',NULL,'40.569626','-
74.190735','(40.569626, -74.190735)'),(78,'FLUSHING
AVENUE','BROOKLYN','11205','40.698463','-73.960205','(40.698463, -73.960205)'),
(79,NULL,'BROOKLYN','11212','40.658413','-73.9171','(40.658413, -73.9171)'),
(80,NULL,'MANHATTAN','10022','40.76175','-73.96899','(40.76175, -73.96899)'),
(81,NULL,'MANHATTAN','10011','40.736614','-73.9951','(40.736614, -73.9951)'),
(82,'FLATBUSH AVENUE','UNKNOWN',NULL,NULL,NULL,NULL),(83,'OCEAN
PARKWAY','UNKNOWN',NULL,NULL,NULL,NULL),(84,NULL,'STATEN
ISLAND','10314','40.62121','-74.12385','(40.62121, -74.12385)'),(85,'MAJOR DEEGAN
EXPRESSWAY','UNKNOWN',NULL,'40.873737','-73.90593','(40.873737, -73.90593)'),
(86,'CARROLL STREET','UNKNOWN',NULL,'40.66718','-73.95076','(40.66718, -
73.95076)'),(87,'23 STREET','QUEENS','11101','40.754295','-73.93946','(40.754295, -
73.93946)'),(88,'AVENUE Y','UNKNOWN',NULL,'40.588116','-73.97261','(40.588116, -
73.97261)'),(89,NULL,'BRONX','10461','40.854935','-73.85822','(40.854935, -
73.85822)'),(90,'SCHENECTADY AVENUE','UNKNOWN',NULL,'40.662575','-
73.93448','(40.662575, -73.93448)'),(91,'47 ROAD','UNKNOWN',NULL,'40.7448','-
73.953415','(40.7448, -73.953415)'),(92,'HENRY HUDSON
PARKWAY','UNKNOWN',NULL,'40.79672','-73.97618','(40.79672, -73.97618)'),
(93,NULL,'QUEENS','11004','40.752777','-73.70743','(40.752777, -73.70743)'),
(94,'KINGS HIGHWAY','BROOKLYN','11203','40.638523','-73.92607','(40.638523, -
73.92607)'),(95,'CORSON AVENUE','STATEN ISLAND','10301','40.637833','-
74.08193','(40.637833, -74.08193)'),(96,'WEST 101
STREET','MANHATTAN','10025','40.797836','-73.96946','(40.797836, -73.96946)'),
(97,'QUEENS BOULEVARD','QUEENS','11373','40.734375','-73.87342','(40.734375, -
73.87342)'),(98,'115 AVENUE','QUEENS','11411','40.699947','-73.736626','(40.699947,
-73.736626)'),(99,NULL,'MANHATTAN','10018','40.75632','-73.999275','(40.75632, -
73.999275)'),(100,'131 STREET','QUEENS','11418','40.69614','-73.81789','(40.69614,
-73.81789)'),(101,NULL,'BROOKLYN','11234','40.631687','-73.9205','(40.631687, -
73.9205)'),(102,'LACONIA AVENUE','BRONX','10466','40.88839','-73.84666','(40.88839,
-73.84666)'),(103,NULL,'BRONX','10462','40.844425','-73.8639','(40.844425, -
73.8639)'),(104,'WHITE PLAINS ROAD','BRONX','10472','40.833965','-
73.8629','(40.833965, -73.8629)'),(105,'MANHATTAN
AVENUE','BROOKLYN','11206','40.705738','-73.944695','(40.705738, -73.944695)'),
(106,'AVENUE N','BROOKLYN','11236','40.637905','-73.8878','(40.637905, -73.8878)'),
(107,NULL,'BROOKLYN','11210','40.635063','-73.94788','(40.635063, -73.94788)'),
(108,'BRUCKNER BOULEVARD','UNKNOWN',NULL,'40.804153','-73.91304','(40.804153, -
73.91304)'),(109,'PROSPECT PLACE','BROOKLYN','11238','40.676403','-
73.96287','(40.676403, -73.96287)'),(110,'WATSON
AVENUE','BRONX','10472','40.829777','-73.85055','(40.829777, -73.85055)'),
(111,'FORT HAMILTON PARKWAY','BROOKLYN','11209','40.613926','-
74.030174','(40.613926, -74.030174)'),(112,'EAST 94
STREET','BROOKLYN','11236','40.635563','-73.89577','(40.635563, -73.89577)'),
(113,'114 STREET','QUEENS','11420','40.675167','-73.825264','(40.675167, -
73.825264)'),(114,'EAST 62 STREET','MANHATTAN','10065','40.761486','-
73.96061','(40.761486, -73.96061)'),(115,NULL,'BROOKLYN','11249','40.712284','-
73.964005','(40.712284, -73.964005)'),(116,'JAMAICA
AVENUE','QUEENS','11432','40.70546','-73.7949','(40.70546, -73.7949)'),(117,'WEST
30 STREET','UNKNOWN',NULL,'40.74967','-73.99531','(40.74967, -73.99531)'),
(118,'SAINT NICHOLAS AVENUE','MANHATTAN','10032','40.833786','-
73.94037','(40.833786, -73.94037)'),(119,'139 STREET','UNKNOWN',NULL,'40.67794','-
73.8023','(40.67794, -73.8023)'),(120,NULL,'BROOKLYN','11220','40.637985','-
74.0076','(40.637985, -74.0076)'),(121,'JACKIE ROBINSON
EXPY','UNKNOWN',NULL,NULL,NULL,NULL),(122,NULL,'MANHATTAN','10032','40.835037','-
73.93979','(40.835037, -73.93979)'),(123,'EAST
241 STREET','UNKNOWN',NULL,'40.9046','-73.852936','(40.9046, -73.852936)'),
(124,'47 STREET','QUEENS','11104','40.742508','-73.91788','(40.742508, -
73.91788)'),(125,'GOWANUS RAMP','UNKNOWN',NULL,NULL,NULL,NULL),(126,'GRAND
AVENUE','BROOKLYN','11238',NULL,NULL,NULL),(127,'SUTTER
AVENUE','BROOKLYN','11207','40.67046','-73.88788','(40.67046, -73.88788)'),
(128,'ESSEX STREET','MANHATTAN','10002','40.72224','-73.9863','(40.72224, -
73.9863)'),(129,'FLATBUSH AVENUE','UNKNOWN',NULL,'40.67639','-73.97189','(40.67639,
-73.97189)'),(130,'BRONX RIVER PARKWAY','UNKNOWN',NULL,'40.88893','-
73.86579','(40.88893, -73.86579)'),(131,'EAST 120
STREET','UNKNOWN',NULL,'40.80118','-73.93975','(40.80118, -73.93975)'),(132,'FDR
DRIVE','UNKNOWN',NULL,'40.757668','-73.95915','(40.757668, -73.95915)'),
(133,NULL,'BROOKLYN','11225','40.668896','-73.95339','(40.668896, -73.95339)'),
(134,NULL,'BROOKLYN','11218','40.63654','-73.97707','(40.63654, -73.97707)'),
(135,'EAST 168 STREET','BRONX','10456','40.831055','-73.905846','(40.831055, -
73.905846)'),(136,'GRAND CONCOURSE','UNKNOWN',NULL,'40.85868','-
73.89922','(40.85868, -73.89922)'),(137,'GULF AVENUE','UNKNOWN',NULL,'40.62466','-
74.17856','(40.62466, -74.17856)'),(138,'AVENUE J','BROOKLYN','11236','40.63947','-
73.902756','(40.63947, -73.902756)'),(139,'WEST FORDHAM
ROAD','BRONX','10468','40.86173','-73.91182','(40.86173, -73.91182)'),
(140,NULL,'BROOKLYN','11201','40.69538','-73.985115','(40.69538, -73.985115)'),
(141,'65 STREET','BROOKLYN','11219','40.63063','-74.00923','(40.63063, -
74.00923)'),(142,NULL,'BRONX','10472','40.82707','-73.87075','(40.82707, -
73.87075)'),(143,'GERRITSEN AVENUE','UNKNOWN',NULL,'40.60548','-
73.93922','(40.60548, -73.93922)'),(144,'MADISON
STREET','BROOKLYN','11221','40.692593','-73.91551','(40.692593, -73.91551)'),
(145,'49 street','MANHATTAN','10017',NULL,NULL,NULL),(146,'BUSHWICK
AVENUE','BROOKLYN','11207','40.680664','-73.902626','(40.680664, -73.902626)'),
(147,NULL,'BROOKLYN','11226','40.645718','-73.95002','(40.645718, -73.95002)'),
(148,'NOSTRAND AVENUE','UNKNOWN',NULL,'40.68327','-73.95016','(40.68327, -
73.95016)'),(149,'JEROME AVENUE','UNKNOWN',NULL,'40.84036','-73.91807','(40.84036,
-73.91807)'),(150,'VANDERVORT AVENUE','BROOKLYN','11222',NULL,NULL,NULL),
(151,'VERRAZANO BRIDGE','UNKNOWN',NULL,NULL,NULL,NULL),
(152,NULL,'BROOKLYN','11235','40.577652','-73.96344','(40.577652, -73.96344)'),
(153,NULL,'MANHATTAN','10012','40.730145','-73.99781','(40.730145, -73.99781)'),
(154,'ROCKAWAY BOULEVARD','QUEENS','11420','40.67478','-73.806206','(40.67478, -
73.806206)'),(155,NULL,'BROOKLYN','11230','40.624622','-73.97598','(40.624622, -
73.97598)'),(156,'UNION STREET','BROOKLYN','11217','40.67271','-
73.97089','(40.67271, -73.97089)'),(157,'BROOKLYN QUEENS
EXPRESSWAY','UNKNOWN',NULL,'40.7314','-73.926094','(40.7314, -73.926094)'),
(158,'PORT RICHMOND AVENUE','UNKNOWN',NULL,'40.632786','-74.13712','(40.632786, -
74.13712)'),(159,'MCCLEAN AVENUE','STATEN ISLAND','10305','40.596733','-
74.07045','(40.596733, -74.07045)'),(160,NULL,'BROOKLYN','11234','40.617645','-
73.92092','(40.617645, -73.92092)'),(161,'PARSONS
BOULEVARD','UNKNOWN',NULL,NULL,NULL,NULL),
(162,NULL,'BROOKLYN','11217','40.68651','-73.98378','(40.68651, -73.98378)'),
(163,'MARCY AVENUE','BROOKLYN','11206','40.69831','-73.9498','(40.69831, -
73.9498)'),(164,'179 STREET','UNKNOWN',NULL,'40.692455','-73.76814','(40.692455, -
73.76814)'),(165,'WEST 76 STREET','MANHATTAN','10024','40.778805','-
73.974075','(40.778805, -73.974075)'),(166,'AVENUE OF THE
AMERICAS','MANHATTAN','10001','40.747894','-73.989174','(40.747894, -73.989174)'),
(167,NULL,'BRONX','10472','40.83578','-73.871445','(40.83578, -73.871445)'),
(168,'LEONARD AVENUE','UNKNOWN',NULL,'40.61763','-74.133575','(40.61763, -
74.133575)'),(169,'WASHINGTON SQUARE NORTH','UNKNOWN',NULL,'40.731407','-
73.99698','(40.731407, -73.99698)'),(170,'CONEY ISLAND
AVENUE','BROOKLYN','11223','40.60784','-73.961975','(40.60784, -73.961975)'),
(171,'CROSS ISLAND PARKWAY','UNKNOWN',NULL,'40.752563','-73.74328','(40.752563, -
73.74328)'),(172,NULL,'BROOKLYN','11217','40.67848','-73.98232','(40.67848, -
73.98232)'),(173,NULL,'BROOKLYN','11219','40.629475','-74.004166','(40.629475, -
74.004166)'),(174,'EASTERN PARKWAY','BROOKLYN','11213','40.668797','-
73.93113','(40.668797, -73.93113)'),(175,'WEST 38
STREET','MANHATTAN','10018','40.754707','-73.99164','(40.754707, -73.99164)'),
(176,'EAST FORDHAM ROAD','BRONX','10458','40.85713','-73.8808','(40.85713, -
73.8808)'),(177,'GRAND CONCOURSE','BRONX','10468','40.857418','-
73.89996','(40.857418, -73.89996)'),(178,'CENTRAL
AVENUE','QUEENS','11385','40.702972','-73.888054','(40.702972, -73.888054)'),
(179,'WEST 84 STREET','UNKNOWN',NULL,'40.786366','-73.97598','(40.786366, -
73.97598)'),(180,'70 STREET','BROOKLYN','11228','40.624474','-
74.00668','(40.624474, -74.00668)'),(181,'39 AVENUE','QUEENS','11361','40.76532','-
73.771904','(40.76532, -73.771904)'),(182,'AVENUE U','UNKNOWN',NULL,'40.597683','-
73.96686','(40.597683, -73.96686)'),(183,'SAINT JOHNS AVENUE','STATEN
ISLAND','10305','40.609768','-74.06969','(40.609768, -74.06969)'),
(184,NULL,'MANHATTAN','10035','40.798286','-73.938705','(40.798286, -73.938705)'),
(185,NULL,'QUEENS','11354','40.776764','-73.848015','(40.776764, -73.848015)'),
(186,NULL,'QUEENS','11377','40.747498','-73.91309','(40.747498, -73.91309)'),
(187,'GRAHAM AVENUE','BROOKLYN','11206','40.701637','-73.942276','(40.701637, -
73.942276)'),(188,NULL,'QUEENS','11419','40.69349','-73.826546','(40.69349, -
73.826546)'),(189,'WETHEROLE STREET','QUEENS','11374','40.726463','-
73.85943','(40.726463, -73.85943)'),(190,'EAST 188
STREET','BRONX','10458','40.856434','-73.886826','(40.856434, -73.886826)'),
(191,'BURKE AVENUE','BRONX','10467','40.87151','-73.87057','(40.87151, -
73.87057)'),(192,NULL,'BROOKLYN','11238','40.68686','-73.96758','(40.68686, -
73.96758)'),(193,'CONEY ISLAND AVENUE','UNKNOWN',NULL,'40.624763','-
73.96518','(40.624763, -73.96518)'),(194,'130
AVENUE','QUEENS','11422','40.678417','-73.729225','(40.678417, -73.729225)'),
(195,NULL,'QUEENS','11433','40.692596','-73.79078','(40.692596, -73.79078)'),
(196,'CALAMUS AVENUE','UNKNOWN',NULL,'40.734486','-73.891754','(40.734486, -
73.891754)'),(197,NULL,'BRONX','10475','40.88399','-73.82641','(40.88399, -
73.82641)'),(198,NULL,'BROOKLYN','11238','40.683872','-73.95998','(40.683872, -
73.95998)'),(199,NULL,'MANHATTAN','10035','40.799484','-73.92929','(40.799484, -
73.92929)'),(200,'FULTON STREET','UNKNOWN',NULL,'40.70839','-74.00482','(40.70839,
-74.00482)'),(201,'WEST 51 STREET','MANHATTAN','10019','40.766502','-
73.99418','(40.766502, -73.99418)'),(202,NULL,'QUEENS','11420','40.676304','-
73.816284','(40.676304, -73.816284)'),(203,'GEORGIA
AVENUE','BROOKLYN','11207','40.66447','-73.89593','(40.66447, -73.89593)'),
(204,'WEST STREET','UNKNOWN',NULL,'40.709835','-74.014885','(40.709835, -
74.014885)'),(205,'BELT PARKWAY','UNKNOWN',NULL,'40.585342','-
73.94157','(40.585342, -73.94157)'),(206,NULL,'MANHATTAN','10016','40.746395','-
73.9856','(40.746395, -73.9856)'),(207,'OCEAN
PARKWAY','BROOKLYN','11230','40.617004','-73.96912','(40.617004, -73.96912)'),
(208,NULL,'MANHATTAN','10013','40.718662','-74.00615','(40.718662, -74.00615)'),
(209,NULL,'BROOKLYN','11238','40.680664','-73.97028','(40.680664, -73.97028)'),
(210,'BERGEN STREET','BROOKLYN','11233','40.67392','-73.91012','(40.67392, -
73.91012)'),(211,'MAJOR DEEGAN EXPRESSWAY','UNKNOWN',NULL,'40.806835','-
73.924355','(40.806835, -73.924355)'),(212,NULL,'BROOKLYN','11234','40.627735','-
73.920105','(40.627735, -73.920105)'),(213,'ROCKAWAY
BOULEVARD','UNKNOWN',NULL,'0','0','(0.0, 0.0)'),
(214,NULL,'BROOKLYN','11225','40.661263','-73.955765','(40.661263, -73.955765)'),
(215,'CROSS BRONX EXPY','UNKNOWN',NULL,'40.844883','-73.907295','(40.844883, -
73.907295)'),(216,NULL,'QUEENS','11369','40.76104','-73.88162','(40.76104, -
73.88162)'),(217,'FRANKLIN AVENUE','UNKNOWN',NULL,'40.669777','-
73.9583','(40.669777, -73.9583)'),(218,NULL,'BRONX','10457','40.839443','-
73.90436','(40.839443, -73.90436)'),(219,'13 STREET','QUEENS','11101','40.75245','-
73.94507','(40.75245, -73.94507)'),(220,NULL,'BROOKLYN','11217','40.687748','-
73.980125','(40.687748, -73.980125)'),(221,'HUTCHINSON RIVER
PARKWAY','UNKNOWN',NULL,'40.87356','-73.81853','(40.87356, -73.81853)'),
(222,NULL,'BRONX','10455','40.8176','-73.90373','(40.8176, -73.90373)'),
(223,'GLENWOOD ROAD','BROOKLYN','11236','40.638428','-73.91275','(40.638428, -
73.91275)'),(224,NULL,'MANHATTAN','10027','40.813885','-73.95211','(40.813885, -
73.95211)'),(225,'VERRAZANO BRIDGE UPPER','UNKNOWN',NULL,NULL,NULL,NULL),
(226,NULL,'MANHATTAN','10028','40.77733','-73.95456','(40.77733, -73.95456)'),
(227,'CHAMBERS STREET','UNKNOWN',NULL,'40.713135','-74.00407','(40.713135, -
74.00407)'),(228,'BROADWAY','UNKNOWN',NULL,'40.775486','-73.98217','(40.775486, -
73.98217)'),(229,'BOYNTON PLACE','BROOKLYN','11223','40.591137','-
73.97752','(40.591137, -73.97752)'),(230,'BROADWAY','UNKNOWN',NULL,'40.865536','-
73.92728','(40.865536, -73.92728)'),(231,NULL,'MANHATTAN','10019','40.76551','-
73.97795','(40.76551, -73.97795)'),(232,'OCEAN
PARKWAY','BROOKLYN','11230','40.63311','-73.97217','(40.63311, -73.97217)'),
(233,'BRONX RIVER PARKWAY','UNKNOWN',NULL,'40.823772','-73.87245','(40.823772, -
73.87245)'),(234,'ITTNER PLACE','UNKNOWN',NULL,'40.84497','-73.90247','(40.84497, -
73.90247)'),(235,'VERRAZANO BRIDGE UPPER','UNKNOWN',NULL,NULL,NULL,NULL),
(236,'BROOKLYN QUEENS EXPRESSWAY','UNKNOWN',NULL,'40.675507','-
74.00075','(40.675507, -74.00075)'),(237,'BEACH CHANNEL
DRIVE','QUEENS','11691','40.609535','-73.75372','(40.609535, -73.75372)'),
(238,'LEROY STREET','MANHATTAN','10014','40.730446','-74.00431','(40.730446, -
74.00431)'),(239,NULL,'QUEENS','11432','40.721645','-73.8026','(40.721645, -
73.8026)'),(240,'BRUCKNER EXPRESSWAY','UNKNOWN',NULL,'40.853477','-
73.82622','(40.853477, -73.82622)'),(241,'135 PLACE','QUEENS','11420','40.66901','-
73.80265','(40.66901, -73.80265)'),(242,NULL,'STATEN
ISLAND','10310','40.629475','-74.1123','(40.629475, -74.1123)'),(243,'CLINTON
STREET','BROOKLYN','11231','40.6843','-73.99724','(40.6843, -73.99724)'),(244,'FDR
DRIVE','UNKNOWN',NULL,'40.767612','-73.950005','(40.767612, -73.950005)'),(245,'7
AVENUE','UNKNOWN',NULL,'40.80066','-73.9544','(40.80066, -73.9544)'),(246,'BOSTON
ROAD','BRONX','10469','40.87645','-73.848175','(40.87645, -73.848175)'),
(247,NULL,'QUEENS','11373','40.737865','-73.876144','(40.737865, -73.876144)'),
(248,'21 STREET','UNKNOWN',NULL,'40.764103','-73.93277','(40.764103, -73.93277)'),
(249,'BELT PARKWAY','UNKNOWN',NULL,'40.66735','-73.76994','(40.66735, -73.76994)'),
(250,'HENRY HUDSON PARKWAY','UNKNOWN',NULL,'40.824265','-73.95642','(40.824265, -
73.95642)'),(251,'GREENE AVENUE','UNKNOWN',NULL,'40.702045','-73.9156','(40.702045,
-73.9156)'),(252,'SAINT NICHOLAS AVENUE','UNKNOWN',NULL,'40.85306','-
73.931','(40.85306, -73.931)'),(253,'WEST 181
STREET','MANHATTAN','10033','0','0','(0.0, 0.0)'),(254,'BUSHWICK
AVENUE','UNKNOWN',NULL,'40.697315','-73.932274','(40.697315, -73.932274)'),
(255,'LIBERTY AVENUE','UNKNOWN',NULL,'40.679344','-73.859535','(40.679344, -
73.859535)'),(256,NULL,'QUEENS','11435','40.708923','-73.81877','(40.708923, -
73.81877)'),(257,'ROME AVENUE','STATEN ISLAND','10304','40.60203','-
74.09572','(40.60203, -74.09572)'),(258,'VAN WYCK
EXPWY','UNKNOWN',NULL,'40.693787','-73.81173','(40.693787, -73.81173)'),(259,'EAST
167 STREET','BRONX','10459','40.826767','-73.888855','(40.826767, -73.888855)'),
(260,'CLAWSON STREET','STATEN ISLAND','10306','40.56692','-74.116234','(40.56692, -
74.116234)'),(261,'33 st','QUEENS','11106',NULL,NULL,NULL),(262,'12
AVENUE','BROOKLYN','11228','40.623913','-74.00726','(40.623913, -74.00726)'),
(263,'BELT PARKWAY','UNKNOWN',NULL,'40.592422','-73.99508','(40.592422, -
73.99508)'),(264,'FULTON STREET','BROOKLYN','11207','40.6783','-
73.88988','(40.6783, -73.88988)'),(265,'74 STREET','QUEENS','11372','40.748962','-
73.89176','(40.748962, -73.89176)'),(266,NULL,'BROOKLYN','11236','40.631508','-
73.90506','(40.631508, -73.90506)'),(267,'SUTPHIN
BOULEVARD','UNKNOWN',NULL,'40.677322','-73.790955','(40.677322, -73.790955)'),
(268,'BRIGHTON BEACH AVENUE','UNKNOWN',NULL,'40.57666','-73.965836','(40.57666, -
73.965836)'),(269,'WEST 120 STREET','UNKNOWN',NULL,'40.804585','-
73.94782','(40.804585, -73.94782)'),(270,'OGDEN
AVENUE','BRONX','10452','40.832916','-73.92939','(40.832916, -73.92939)'),(271,'222
STREET','QUEENS','11428','40.722515','-73.73332','(40.722515, -73.73332)'),
(272,'ATLANTIC AVENUE','QUEENS','11419','40.692127','-73.83484','(40.692127, -
73.83484)'),(273,'HALLECK STREET','BRONX','10474','40.807537','-
73.8798','(40.807537, -73.8798)'),(274,'BRONX
BOULEVARD','BRONX','10467','40.878128','-73.86944','(40.878128, -73.86944)'),
(275,'GRAND CENTRAL PKWY','UNKNOWN',NULL,'40.75777','-73.854164','(40.75777, -
73.854164)'),(276,NULL,'BROOKLYN','11212','40.6569','-73.907486','(40.6569, -
73.907486)'),(277,'CROSS BRONX EXPY','UNKNOWN',NULL,'40.845024','-
73.92632','(40.845024, -73.92632)'),(278,'BRUCKNER
BOULEVARD','BRONX','10459','40.817795','-73.89319','(40.817795, -73.89319)'),
(279,'MAJOR DEEGAN EXPRESSWAY','UNKNOWN',NULL,'40.81915','-73.93062','(40.81915, -
73.93062)'),(280,NULL,'STATEN ISLAND','10314','40.591778','-74.12734','(40.591778,
-74.12734)'),(281,'21 STREET','QUEENS','11101','40.753994','-73.94244','(40.753994,
-73.94244)'),(282,NULL,'MANHATTAN','10012','40.724846','-73.999','(40.724846, -
73.999)'),(283,'CROSS BRONX EXPY RAMP','UNKNOWN',NULL,NULL,NULL,NULL),(284,'WEST
147 STREET','UNKNOWN',NULL,'40.822933','-73.93813','(40.822933, -73.93813)'),
(285,'FULTON STREET','UNKNOWN',NULL,'40.680477','-73.951164','(40.680477, -
73.951164)'),(286,'TILDEN AVENUE','BROOKLYN','11203','40.648243','-
73.929','(40.648243, -73.929)'),(287,'ROCKAWAY
PARKWAY','BROOKLYN','11236','40.64366','-73.90067','(40.64366, -73.90067)'),
(288,'JEFFERSON AVENUE','UNKNOWN',NULL,'40.6843','-73.94121','(40.6843, -
73.94121)'),(289,'TARGEE STREET','UNKNOWN',NULL,'40.602425','-
74.091354','(40.602425, -74.091354)'),(290,NULL,'BROOKLYN','11225','40.662037','-
73.95077','(40.662037, -73.95077)'),(291,'NEVINS
STREET','BROOKLYN','11217','40.68164','-73.98568','(40.68164, -73.98568)'),(292,'1
AVENUE','MANHATTAN','10128','40.781315','-73.94614','(40.781315, -73.94614)'),
(293,'72 STREET','UNKNOWN',NULL,'40.74498','-73.89325','(40.74498, -73.89325)'),
(294,'VICTORY BOULEVARD','UNKNOWN',NULL,'40.6117','-74.13918','(40.6117, -
74.13918)'),(295,'FLATBUSH AVENUE','BROOKLYN','11234','40.616295','-
73.92991','(40.616295, -73.92991)'),(296,'18 AVENUE','QUEENS','11356','40.78322','-
73.84586','(40.78322, -73.84586)'),(297,NULL,'BRONX','10469','40.87122','-
73.83709','(40.87122, -73.83709)'),(298,'86 STREET','QUEENS','11416','40.680077','-
73.852684','(40.680077, -73.852684)'),(299,NULL,'BRONX','10457','40.843384','-
73.88987','(40.843384, -73.88987)');
/*!40000 ALTER TABLE `location_info` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `persons`
--
DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persons` (
`Persons_ID` int NOT NULL,
`Person_gender` varchar(25) DEFAULT NULL,
`License_status` varchar(25) DEFAULT NULL,
`Vehicle_ID` varchar(100) NOT NULL,
PRIMARY KEY (`Persons_ID`),
KEY `fk_persons_vehicles1_idx` (`Vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `persons`
--
LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (8393362,'','','31'),(8395403,'','','91'),
(8396973,'','','121'),(8397460,'','','133'),(8397469,'','','123'),
(8404435,'','','38'),(8483670,'','','37'),(8531488,'','','73'),
(8532175,'','','94'),(8533957,'','','155'),(8534739,'','','175'),
(8569561,'','','48'),(8572538,'','','274'),(8702657,'','','257'),
(8704041,'','','22'),(8705770,'','','284'),(8708957,'','','137'),
(8794899,'','','186'),(8889301,'','','30'),(8995418,'','','140'),
(8998479,'','','164'),(9118842,'','','241'),(9122202,'','','208'),
(9124769,'','','109'),(9132270,'','','108'),(9273416,'','','53'),
(9279658,'','','266'),(9283345,'','','106'),(9396182,'','','151'),
(9437002,'','','43'),(9439011,'','','201'),(9503405,'','','260'),
(9504593,'','','246'),(9508187,'','','118'),(9509261,'','','125'),
(9675080,'','','272'),(9723046,'','','126'),(9799870,'','','184'),
(9879462,'','','18'),(9882078,'','','24'),(9970061,'','','221'),
(9970818,'','','211'),(9977047,'','','90'),(9978957,'','','282'),
(10055389,'','','75'),(10062169,'','','56'),(10156531,'','','237'),
(10157552,'','','180'),(10158114,'','','50'),(10230895,'','','66'),
(10316936,'','','128'),(10385619,'','','69'),(10385780,'','','1'),
(10669933,'','','265'),(10782245,'','','283'),(10957637,'','','41'),
(11056089,'','','293'),(11161855,'','','98'),(11314325,'','','54'),
(11315260,'','','276'),(11565190,'','','172'),(11758197,'','','27'),
(11758837,'','','217'),(11804847,'','','10'),(11866785,'','','112'),
(11912713,'','','16'),(12005192,'','','134'),(12056310,'','','173'),
(12056337,'','','153'),(12254536,'','','9'),(12313986,'','','71'),
(12553012,'','','34'),(12658900,'','','286'),(12953874,'','','271'),
(13089065,'','','143'),(13097877,'','','64'),(13229136,'','','149'),
(13230693,'','','84'),(13233679,'','','74'),(13239670,'','','102'),
(13241410,'','','259'),(13408714,'','','251'),(13429375,'','','110'),
(13529255,'','','157'),(13654992,'','','182'),(13746922,'','','105'),
(13750457,'','','146'),(13844415,'','','171'),(13851173,'','','59'),
(13982442,'','','245'),(14197939,'','','280'),(14221219,'','','25'),
(14400270,'','','5'),(14411040,'','','122'),(14462100,'','','47'),
(14463368,'','','116'),(14504418,'','','225'),(14511804,'','','229'),
(14519990,'','','92'),(14546516,'','','115'),(14563086,'','','220'),
(14578714,'','','192'),(14599251,'','','197'),(14602717,'','','296'),
(14603135,'','','95'),(14634311,'','','78'),(14637094,'','','289'),
(14646299,'','','169'),(14648143,'','','87'),(14648689,'','','156'),
(14658856,'','','51'),(14672130,'','','85'),(14672152,'','','193'),
(14712708,'','','163'),(14713801,'','','254'),(14747912,'','','96'),
(14754561,'','','243'),(14785714,'','','295'),(14795557,'','','36'),
(14809587,'','','12'),(14822099,'','','183'),(14825597,'','','278'),
(14826434,'','','45'),(14831062,'','','70'),(14833728,'','','167'),
(14836297,'','','216'),(14842705,'','','72'),(14856165,'','','58'),
(14858054,'','','145'),(14876426,'','','281'),(14887647,'','','3'),
(14888316,'','','28'),(14889754,'','','4'),(14891978,'','','298'),
(14897251,'','','249'),(14903590,'','','68'),(14925931,'','','35'),
(14940681,'','','214'),(14964902,'','','279'),(14991843,'','','174'),
(14998179,'','','261'),(15004954,'','','181'),(15022049,'','','244'),
(15027911,'','','205'),(15029165,'','','76'),(15030134,'','','139'),
(15054978,'','','52'),(15061195,'','','79'),(15079321,'','','81'),
(15081411,'','','178'),(16938759,'M','Licensed','210'),(16938968,'U','','227'),
(16952374,'M','','19'),(16975598,'M','Licensed','267'),(17044144,'','','226'),
(17044639,'M','Licensed','6'),(17045096,'M','Licensed','60'),
(17049525,'M','Licensed','142'),(17072438,'M','Licensed','99'),
(17154674,'','','235'),(17169289,'','','29'),(17172871,'M','Licensed','273'),
(17179435,'M','Licensed','67'),(17187987,'M','Licensed','63'),
(17192960,'','','290'),(17199379,'F','Licensed','294'),
(17222837,'M','Licensed','23'),(17234958,'','','119'),
(17239665,'M','Licensed','285'),(17255296,'M','Licensed','202'),
(17261779,'M','Licensed','248'),(17277100,'','','26'),
(17285715,'M','Licensed','11'),(17303317,'F','Licensed','8'),
(17303869,'M','Licensed','270'),(17307366,'F','Licensed','13'),
(17316201,'M','Licensed','194'),(17316890,'F','Licensed','129'),
(17319910,'F','Licensed','150'),(17349952,'M','Licensed','247'),
(17352817,'M','Licensed','179'),(17375601,'M','Licensed','199'),
(17377465,'F','Licensed','212'),(17392034,'M','Licensed','264'),
(17401424,'M','Licensed','17'),(17409331,'M','Licensed','215'),
(17417712,'M','Licensed','297'),(17420144,'M','Unlicensed','168'),
(19137605,'M','Licensed','104'),(19138211,'','','61'),
(19138486,'M','Licensed','39'),(19138591,'M','Licensed','242'),
(19138597,'M','Licensed','207'),(19138606,'M','Licensed','262'),
(19138619,'F','Licensed','160'),(19138636,'M','Licensed','240'),
(19138640,'M','Licensed','292'),(19138658,'M','Licensed','288'),
(19138659,'M','Licensed','152'),(19138701,'M','Licensed','7'),
(19138705,'M','Licensed','154'),(19138706,'F','Licensed','127'),
(19138708,'M','Licensed','138'),(19138722,'','','256'),
(19138790,'M','Licensed','219'),(19138839,'M','Licensed','195'),
(19138901,'M','Licensed','233'),(19138903,'M','Licensed','55'),
(19138926,'M','Licensed','101'),(19138956,'F','Licensed','88'),
(19138997,'F','Licensed','65'),(19139016,'M','Licensed','191'),
(19139034,'F','Licensed','200'),(19139051,'','','185'),(19139059,'M','','252'),
(19139060,'F','Licensed','124'),(19139066,'','','89'),(19139072,'','','190'),
(19139093,'M','Licensed','238'),(19139096,'M','Licensed','49'),
(19139175,'M','','97'),(19139178,'M','Licensed','103'),
(19139230,'F','Licensed','206'),(19139241,'F','Licensed','93'),
(19139268,'M','Licensed','165'),(19139288,'M','Permit','32'),
(19139376,'M','Licensed','255'),(19139383,'M','Licensed','158'),
(19139393,'M','Licensed','107'),(19139394,'M','Licensed','161'),
(19139401,'','','275'),(19139431,'F','Licensed','117'),
(19139432,'F','Licensed','148'),(19139436,'F','Licensed','135'),
(19139454,'F','Licensed','77'),(19139463,'M','Licensed','176'),
(19139466,'M','Licensed','144'),(19139485,'M','Licensed','203'),
(19139523,'F','Licensed','141'),(19139524,'M','Licensed','136'),
(19139525,'M','Licensed','159'),(19139530,'M','Licensed','269'),
(19139531,'F','Licensed','299'),(19139589,'M','Licensed','277'),
(19139590,'M','Unlicensed','162'),(19139591,'M','Licensed','100'),
(19139595,'M','Licensed','177'),(19139602,'','','111'),
(19139681,'F','Licensed','132'),(19139689,'M','Licensed','113'),
(19139704,'','','236'),(19139716,'M','Licensed','62'),
(19139721,'M','Licensed','21'),(19139731,'M','Licensed','209'),
(19139740,'M','Permit','86'),(19139781,'','','188'),(19139804,'M','Licensed','40'),
(19139862,'','','147'),(19139865,'M','Licensed','187'),
(19139989,'M','Licensed','131'),(19139991,'M','Licensed','258'),
(19140142,'M','Licensed','198'),(19140178,'M','Licensed','291'),
(19140179,'M','Licensed','287'),(19140226,'F','Licensed','57'),
(19140231,'M','Unlicensed','189'),(19140262,'M','Licensed','230'),
(19140322,'','','83'),(19140446,'F','Licensed','44'),
(19140448,'F','Licensed','80'),(19140449,'','','253'),
(19140507,'F','Licensed','170'),(19140519,'M','Licensed','228'),
(19140520,'F','Licensed','114'),(19140583,'M','Licensed','232'),
(19140643,'','','196'),(19140656,'F','Licensed','20'),
(19140659,'M','Licensed','224'),(19140660,'','','82'),
(19140702,'M','Licensed','2'),(19140705,'','','223'),(19140710,'M','','42'),
(19140717,'M','Licensed','268'),(19140725,'','','218'),
(19140726,'M','Licensed','213'),(19140729,'M','Licensed','130'),
(19140791,'F','Licensed','14'),(19140792,'M','Licensed','46'),
(19140820,'F','Licensed','204'),(19140837,'M','Licensed','231'),
(19140939,'','','234'),(19140964,'','','263'),(19140971,'F','Licensed','120'),
(19141039,'','','33'),(19141050,'F','Licensed','250'),
(19141099,'M','Licensed','166'),(19693299,'M','Licensed','239'),
(19693462,'','','222'),(19694316,'M','Licensed','15');
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `specified_only_view`
--
DROP TABLE IF EXISTS `specified_only_view`;
/*!50001 DROP VIEW IF EXISTS `specified_only_view`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `specified_only_view` AS SELECT
1 AS `Vehicle Type`,
1 AS `Factor Description`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `streets`
--
DROP TABLE IF EXISTS `streets`;
/*!50001 DROP VIEW IF EXISTS `streets`*/;
SET @saved_cs_client = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `streets` AS SELECT
1 AS `Street_name`,
1 AS `Occurences`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `vehicles`
--
DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
`Vehicle_ID` int NOT NULL,
`Vehicle Type` varchar(45) DEFAULT NULL,
`Location_ID` int NOT NULL,
PRIMARY KEY (`Vehicle_ID`),
KEY `fk_vehicles_location_info1_idx` (`Location_ID`),
CONSTRAINT `fk_vehicles_location_info1` FOREIGN KEY (`Location_ID`) REFERENCES
`location_info` (`Location_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `vehicles`
--
LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,'PASSENGER VEHICLE',1),(2,'Station Wagon/Sport
Utility Vehicle',2),(3,'TAXI',3),(4,'PASSENGER VEHICLE',4),(5,'PASSENGER
VEHICLE',5),(6,'4 dr sedan',6),(7,'Bus',7),(8,'Station Wagon/Sport Utility
Vehicle',8),(9,'PASSENGER VEHICLE',9),(10,'PASSENGER VEHICLE',10),
(11,'Convertible',11),(12,'PASSENGER VEHICLE',12),(13,'Sedan',13),(14,'Sedan',14),
(15,'Bike',15),(16,'BICYCLE',16),(17,'Station Wagon/Sport Utility Vehicle',17),
(18,'PASSENGER VEHICLE',18),(19,'Station Wagon/Sport Utility Vehicle',19),
(20,'Station Wagon/Sport Utility Vehicle',20),(21,'Sedan',21),(22,'SPORT UTILITY /
STATION WAGON',22),(23,'Pick-up Truck',23),(24,'PASSENGER VEHICLE',24),
(25,'PASSENGER VEHICLE',25),(26,'Station Wagon/Sport Utility Vehicle',26),
(27,'PASSENGER VEHICLE',27),(28,'PASSENGER VEHICLE',28),(29,'Sedan',29),
(30,'OTHER',30),(31,'BICYCLE',31),(32,'Station Wagon/Sport Utility Vehicle',32),
(33,'',33),(34,'SPORT UTILITY / STATION WAGON',34),(35,'PASSENGER VEHICLE',35),
(36,'TAXI',36),(37,'OTHER',37),(38,'TAXI',38),(39,'Sedan',39),(40,'Station
Wagon/Sport Utility Vehicle',40),(41,'SPORT UTILITY / STATION WAGON',41),
(42,'Bike',42),(43,'TAXI',43),(44,'Sedan',44),(45,'PASSENGER VEHICLE',45),
(46,'Station Wagon/Sport Utility Vehicle',46),(47,'SPORT UTILITY / STATION
WAGON',47),(48,'PASSENGER VEHICLE',48),(49,'Sedan',49),(50,'SPORT UTILITY / STATION
WAGON',50),(51,'SPORT UTILITY / STATION WAGON',51),(52,'PASSENGER VEHICLE',52),
(53,'OTHER',53),(54,'PASSENGER VEHICLE',54),(55,'Station Wagon/Sport Utility
Vehicle',55),(56,'PASSENGER VEHICLE',56),(57,'Station Wagon/Sport Utility
Vehicle',57),(58,'PASSENGER VEHICLE',58),(59,'SPORT UTILITY / STATION WAGON',59),
(60,'Station Wagon/Sport Utility Vehicle',60),(61,'Sedan',61),(62,'Sedan',62),
(63,'4 dr sedan',63),(64,'SPORT UTILITY / STATION WAGON',64),(65,'Sedan',65),
(66,'SPORT UTILITY / STATION WAGON',66),(67,'Flat Bed',67),(68,'LARGE COM VEH(6 OR
MORE TIRES)',68),(69,'PASSENGER VEHICLE',69),(70,'PASSENGER VEHICLE',70),(71,'SPORT
UTILITY / STATION WAGON',71),(72,'PASSENGER VEHICLE',72),(73,'SPORT UTILITY /
STATION WAGON',73),(74,'PASSENGER VEHICLE',74),(75,'VAN',75),(76,'PASSENGER
VEHICLE',76),(77,'4 dr sedan',77),(78,'PICK-UP TRUCK',78),(79,'PASSENGER
VEHICLE',79),(80,'Sedan',80),(81,'SPORT UTILITY / STATION WAGON',81),(82,'Station
Wagon/Sport Utility Vehicle',82),(83,'',83),(84,'PASSENGER VEHICLE',84),(85,'SPORT
UTILITY / STATION WAGON',85),(86,'Sedan',86),(87,'PASSENGER VEHICLE',87),
(88,'Bus',88),(89,'',89),(90,'PASSENGER VEHICLE',90),(91,'TAXI',91),(92,'SPORT
UTILITY / STATION WAGON',92),(93,'Station Wagon/Sport Utility Vehicle',93),
(94,'TAXI',94),(95,'SPORT UTILITY / STATION WAGON',95),(96,'PASSENGER VEHICLE',96),
(97,'Box Truck',97),(98,'PASSENGER VEHICLE',98),(99,'Motorcycle',99),(100,'Station
Wagon/Sport Utility Vehicle',100),(101,'Sedan',101),(102,'SPORT UTILITY / STATION
WAGON',102),(103,'Sedan',103),(104,'Taxi',104),(105,'SPORT UTILITY / STATION
WAGON',105),(106,'SPORT UTILITY / STATION WAGON',106),(107,'Bus',107),
(108,'VAN',108),(109,'TAXI',109),(110,'PASSENGER VEHICLE',110),(111,'Station Wagon/
Sport Utility Vehicle',111),(112,'PASSENGER VEHICLE',112),(113,'Sedan',113),
(114,'Sedan',114),(115,'VAN',115),(116,'UNKNOWN',116),(117,'Station Wagon/Sport
Utility Vehicle',117),(118,'PASSENGER VEHICLE',118),(119,'2 dr sedan',119),
(120,'Station Wagon/Sport Utility Vehicle',120),(121,'VAN',121),(122,'SPORT UTILITY
/ STATION WAGON',122),(123,'UNKNOWN',123),(124,'Station Wagon/Sport Utility
Vehicle',124),(125,'SPORT UTILITY / STATION WAGON',125),(126,'UNKNOWN',126),
(127,'Station Wagon/Sport Utility Vehicle',127),(128,'PASSENGER VEHICLE',128),
(129,'Station Wagon/Sport Utility Vehicle',129),(130,'Station Wagon/Sport Utility
Vehicle',130),(131,'Sedan',131),(132,'Station Wagon/Sport Utility Vehicle',132),
(133,'MOTORCYCLE',133),(134,'SPORT UTILITY / STATION WAGON',134),(135,'Station
Wagon/Sport Utility Vehicle',135),(136,'Station Wagon/Sport Utility Vehicle',136),
(137,'BUS',137),(138,'Sedan',138),(139,'SPORT UTILITY / STATION WAGON',139),
(140,'SPORT UTILITY / STATION WAGON',140),(141,'Sedan',141),(142,'Sedan',142),
(143,'PASSENGER VEHICLE',143),(144,'Sedan',144),(145,'PASSENGER VEHICLE',145),
(146,'PASSENGER VEHICLE',146),(147,'Box Truck',147),(148,'Station Wagon/Sport
Utility Vehicle',148),(149,'LARGE COM VEH(6 OR MORE TIRES)',149),(150,'Sedan',150),
(151,'PASSENGER VEHICLE',151),(152,'Sedan',152),(153,'BICYCLE',153),(154,'Station
Wagon/Sport Utility Vehicle',154),(155,'PASSENGER VEHICLE',155),(156,'OTHER',156),
(157,'PASSENGER VEHICLE',157),(158,'Station Wagon/Sport Utility Vehicle',158),
(159,'School Bus',159),(160,'Sedan',160),(161,'Taxi',161),(162,'Pick-up
Truck',162),(163,'PASSENGER VEHICLE',163),(164,'SPORT UTILITY / STATION
WAGON',164),(165,'Box Truck',165),(166,'Station Wagon/Sport Utility Vehicle',166),
(167,'PASSENGER VEHICLE',167),(168,'Pick-up Truck',168),(169,'PASSENGER
VEHICLE',169),(170,'Sedan',170),(171,'SPORT UTILITY / STATION WAGON',171),
(172,'SPORT UTILITY / STATION WAGON',172),(173,'UNKNOWN',173),(174,'PASSENGER
VEHICLE',174),(175,'TAXI',175),(176,'Taxi',176),(177,'Motorcycle',177),
(178,'MOTORCYCLE',178),(179,'Sedan',179),(180,'PASSENGER VEHICLE',180),
(181,'PASSENGER VEHICLE',181),(182,'SPORT UTILITY / STATION WAGON',182),
(183,'PASSENGER VEHICLE',183),(184,'BUS',184),(185,'Sedan',185),(186,'SPORT UTILITY
/ STATION WAGON',186),(187,'Sedan',187),(188,'Sedan',188),(189,'Station Wagon/Sport
Utility Vehicle',189),(190,'Pick-up Truck',190),(191,'Sedan',191),(192,'PASSENGER
VEHICLE',192),(193,'PASSENGER VEHICLE',193),(194,'Pick-up Truck',194),
(195,'Sedan',195),(196,'Sedan',196),(197,'PASSENGER VEHICLE',197),(198,'Station
Wagon/Sport Utility Vehicle',198),(199,'Tractor Truck Diesel',199),(200,'Station
Wagon/Sport Utility Vehicle',200),(201,'LIVERY VEHICLE',201),(202,'Station
Wagon/Sport Utility Vehicle',202),(203,'Station Wagon/Sport Utility Vehicle',203),
(204,'Station Wagon/Sport Utility Vehicle',204),(205,'TAXI',205),(206,'Station
Wagon/Sport Utility Vehicle',206),(207,'Station Wagon/Sport Utility Vehicle',207),
(208,'SPORT UTILITY / STATION WAGON',208),(209,'Station Wagon/Sport Utility
Vehicle',209),(210,'Pick-up Truck',210),(211,'SPORT UTILITY / STATION WAGON',211),
(212,'Sedan',212),(213,'Station Wagon/Sport Utility Vehicle',213),(214,'PASSENGER
VEHICLE',214),(215,'Station Wagon/Sport Utility Vehicle',215),(216,'PASSENGER
VEHICLE',216),(217,'BUS',217),(218,'',218),(219,'Taxi',219),(220,'TAXI',220),
(221,'BUS',221),(222,'Sedan',222),(223,'Sedan',223),(224,'Station Wagon/Sport
Utility Vehicle',224),(225,'SPORT UTILITY / STATION WAGON',225),(226,'4 dr
sedan',226),(227,'Station Wagon/Sport Utility Vehicle',227),(228,'Sedan',228),
(229,'PASSENGER VEHICLE',229),(230,'Flat Bed',230),(231,'Sedan',231),(232,'Station
Wagon/Sport Utility Vehicle',232),(233,'Sedan',233),(234,'Station Wagon/Sport
Utility Vehicle',234),(235,'Station Wagon/Sport Utility Vehicle',235),(236,'Station
Wagon/Sport Utility Vehicle',236),(237,'SPORT UTILITY / STATION WAGON',237),
(238,'Bus',238),(239,'Van',239),(240,'Station Wagon/Sport Utility Vehicle',240),
(241,'PASSENGER VEHICLE',241),(242,'Sedan',242),(243,'PASSENGER VEHICLE',243),
(244,'PASSENGER VEHICLE',244),(245,'PASSENGER VEHICLE',245),(246,'PASSENGER
VEHICLE',246),(247,'Station Wagon/Sport Utility Vehicle',247),(248,'Station
Wagon/Sport Utility Vehicle',248),(249,'OTHER',249),(250,'Sedan',250),
(251,'PASSENGER VEHICLE',251),(252,'E-Sco',252),(253,'',253),(254,'PICK-UP
TRUCK',254),(255,'Station Wagon/Sport Utility Vehicle',255),(256,'Station
Wagon/Sport Utility Vehicle',256),(257,'SPORT UTILITY / STATION WAGON',257),
(258,'Taxi',258),(259,'PASSENGER VEHICLE',259),(260,'PASSENGER VEHICLE',260),
(261,'PASSENGER VEHICLE',261),(262,'Station Wagon/Sport Utility Vehicle',262),
(263,'Sedan',263),(264,'Sedan',264),(265,'PASSENGER VEHICLE',265),(266,'PASSENGER
VEHICLE',266),(267,'truck',267),(268,'Sedan',268),(269,'Dump',269),(270,'Station
Wagon/Sport Utility Vehicle',270),(271,'BUS',271),(272,'SPORT UTILITY / STATION
WAGON',272),(273,'Sedan',273),(274,'BICYCLE',274),(275,'Sedan',275),
(276,'OTHER',276),(277,'Station Wagon/Sport Utility Vehicle',277),(278,'PASSENGER
VEHICLE',278),(279,'PASSENGER VEHICLE',279),(280,'PASSENGER VEHICLE',280),
(281,'PASSENGER VEHICLE',281),(282,'SPORT UTILITY / STATION WAGON',282),
(283,'PASSENGER VEHICLE',283),(284,'OTHER',284),(285,'Sedan',285),(286,'BUS',286),
(287,'Sedan',287),(288,'Station Wagon/Sport Utility Vehicle',288),(289,'PASSENGER
VEHICLE',289),(290,'',290),(291,'Sedan',291),(292,'Station Wagon/Sport Utility
Vehicle',292),(293,'TAXI',293),(294,'Station Wagon/Sport Utility Vehicle',294),
(295,'PASSENGER VEHICLE',295),(296,'UNKNOWN',296),(297,'Station Wagon/Sport Utility
Vehicle',297),(298,'PASSENGER VEHICLE',298),(299,'Station Wagon/Sport Utility
Vehicle',299);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Final view structure for view `average_factor_hour`
--
/*!50001 DROP VIEW IF EXISTS `average_factor_hour`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `average_factor_hour` AS select `contr_factors`.`Factor Description`
AS `Factor Description`,round(avg(`collision_info`.`Crash Time`),0) AS `Average
Hour` from ((`contr_factors` join `cause` on((`contr_factors`.`Contributing Factor
ID` = `cause`.`Contributing Factor ID`))) join `collision_info`
on((`cause`.`Collision_ID` = `collision_info`.`Collision_ID`))) group by
`contr_factors`.`Factor Description` having (`contr_factors`.`Factor Description`
<> 'Unspecified') */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `borough_vehicle_gender`
--
/*!50001 DROP VIEW IF EXISTS `borough_vehicle_gender`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `borough_vehicle_gender` AS select `location_info`.`Borough` AS
`Borough`,`vehicles`.`Vehicle Type` AS `Vehicle Type`,`persons`.`Person_gender` AS
`Person_gender` from ((`location_info` join `vehicles`
on((`location_info`.`Location_ID` = `vehicles`.`Location_ID`))) join `persons`
on((`vehicles`.`Vehicle_ID` = `persons`.`Vehicle_ID`))) where
(`location_info`.`Borough` <> 'UNKNOWN') */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `boroughs`
--
/*!50001 DROP VIEW IF EXISTS `boroughs`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `boroughs` AS select `location_info`.`Borough` AS `Borough`,count(0)
AS `Occurences` from `location_info` where (`location_info`.`Borough` <> 'UNKNOWN')
group by `location_info`.`Borough` order by `Occurences` desc */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `collision_view`
--
/*!50001 DROP VIEW IF EXISTS `collision_view`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `collision_view` AS select `vehicles`.`Vehicle Type` AS `Vehicle
Type`,`contr_factors`.`Factor Description` AS `Factor Description` from
(((`vehicles` join `crash_vehicles` on((`vehicles`.`Vehicle_ID` =
`crash_vehicles`.`Vehicle_ID`))) join `cause` on((`crash_vehicles`.`Collision_ID` =
`cause`.`Collision_ID`))) join `contr_factors` on((`cause`.`Contributing Factor ID`
= `contr_factors`.`Contributing Factor ID`))) */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `factor_occurences`
--
/*!50001 DROP VIEW IF EXISTS `factor_occurences`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `factor_occurences` AS select `contr_factors`.`Factor Description` AS
`Factor Description`,count(0) AS `Occurences` from `contr_factors` where
(`contr_factors`.`Factor Description` <> 'Unspecified') group by
`contr_factors`.`Factor Description` order by `Occurences` desc */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `gender`
--
/*!50001 DROP VIEW IF EXISTS `gender`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gender` AS select `persons`.`Person_gender` AS
`Person_gender`,count(0) AS `Occurences` from `persons` group by
`persons`.`Person_gender` order by `Occurences` desc */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `specified_only_view`
--
/*!50001 DROP VIEW IF EXISTS `specified_only_view`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `specified_only_view` AS select `sq`.`Vehicle Type` AS `Vehicle
Type`,`sq`.`Factor Description` AS `Factor Description` from (select
`vehicles`.`Vehicle Type` AS `Vehicle Type`,`contr_factors`.`Factor Description` AS
`Factor Description` from (((`vehicles` join `crash_vehicles`
on((`vehicles`.`Vehicle_ID` = `crash_vehicles`.`Vehicle_ID`))) join `cause`
on((`crash_vehicles`.`Collision_ID` = `cause`.`Collision_ID`))) join
`contr_factors` on((`cause`.`Contributing Factor ID` =
`contr_factors`.`Contributing Factor ID`))) where (`contr_factors`.`Factor
Description` <> 'Unspecified')) `sq` order by `sq`.`Factor Description` desc */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
--
-- Final view structure for view `streets`
--
/*!50001 DROP VIEW IF EXISTS `streets`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8mb4 */;
/*!50001 SET character_set_results = utf8mb4 */;
/*!50001 SET collation_connection = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `streets` AS select `location_info`.`Street_name` AS
`Street_name`,count(0) AS `Occurences` from `location_info` where
(`location_info`.`Street_name` is not null) group by `location_info`.`Street_name`
order by `Occurences` desc */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2023-12-14 17:57:11