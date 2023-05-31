CREATE DATABASE  IF NOT EXISTS `dbsongs` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!
80016 DEFAULT ENCRYPTION='N' */;
USE `dbsongs`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost Database: dbsongs
-- ------------------------------------------------------ -- Server version 8.0.28
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
-- Table structure for table `artist`
--
DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `Artist_id` int NOT NULL,
  `Artist_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `artist`
--
LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Harry Styles'),(2,'Jack Harlow'),(3,'Future'),
(4,'Lizzo'),(5,'Glass Animals'),(6,'Lil Nas X'),(7,'Justin Bieber'),(8,'J. Cole'),
(9,'Olivio Rodrigo'),(10,'Doja Cat'),(11,'Willow'),(12,'Karol G'),(13,'Imagine
Dragons'),(14,'The Kid LAROI');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `copyright`
--
DROP TABLE IF EXISTS `copyright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copyright` (
  `Copyright_id` int NOT NULL,
  `Copyright_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Copyright_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `copyright`
--
LOCK TABLES `copyright` WRITE;
/*!40000 ALTER TABLE `copyright` DISABLE KEYS */;
INSERT INTO `copyright` VALUES (1,'Harry\'s House'),(2,'First Class'),(3,'I NEVER
LIKE YOU'),(4,'Special'),(5,'Dreamland'),(6,'Montero'),(7,'F*ck Love'),(8,'2014
Forest Hills Drive'),(9,'Sour'),(10,'Planet Her'),(11,'Ardipithecus'),
(12,'Provenza'),(13,'Mercury-Act 1'),(14,'Justice'),(15,'Honest'),(16,'Thousand
Miles');
/*!40000 ALTER TABLE `copyright` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `genres`
--
DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `Genres_id` int NOT NULL,
  `Genres_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Genres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `genres`
--
LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Synth-pop'),(2,'Hip-hop'),(3,'R&B'),
(4,'Alternative'),(5,'Pop rock'),(6,'Pop-punk'),(7,'Latin Urbano'),(8,'Pop'),
(9,'Rap');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `label`
--
DROP TABLE IF EXISTS `label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `label` (
  `Label_id` int NOT NULL,
  `Label_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `label`
--

LOCK TABLES `label` WRITE;
/*!40000 ALTER TABLE `label` DISABLE KEYS */;
INSERT INTO `label` VALUES (1,'Columbia'),(2,'Generation Now'),(3,'Epic'),(4,'Nice
Life'),(5,'Polydor Records'),(6,'Universal'),(7,'ROC Nation'),(8,'Geffen Records'),
(9,'RCA Records'),(10,'UMG Records'),(11,'Interscope Records');
/*!40000 ALTER TABLE `label` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `producer`
--
DROP TABLE IF EXISTS `producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producer` (
  `Producer_id` int NOT NULL,
  `Producer_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Producer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `producer`
--
LOCK TABLES `producer` WRITE;
/*!40000 ALTER TABLE `producer` DISABLE KEYS */;
INSERT INTO `producer` VALUES (1,'Kid Harpoon'),(2,'Jack Harlow'),(3,'ATL Jacob'),
(4,'TM88'),(5,'Blake Slatkin'),(6,'Dave Bayley'),(7,'Torey Montana'),(8,'Kanye
West'),(9,'Dreamville'),(10,'Daniel Nigro'),(11,'Linden Jay'),(12,'James Chul
Rim'),(13,'Ovy On The Drums'),(14,'Mattman & Robin'),(15,'The Monsters &
Strangers'),(16,'Azul Wynter'),(17,'DY'),(18,'Billy Walsh');
/*!40000 ALTER TABLE `producer` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `song_writers`
--
DROP TABLE IF EXISTS `song_writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song_writers` (
  `Song_writer_id` int NOT NULL,
  `Song_writer_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Song_writer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `song_writers`
--
LOCK TABLES `song_writers` WRITE;
/*!40000 ALTER TABLE `song_writers` DISABLE KEYS */;
INSERT INTO `song_writers` VALUES (1,'Harry Styles'),(2,'Christopher Bridges'),
(3,'Aubrey Graham'),(4,'Bryan Simmons'),(5,'Blake Slatkin'),(6,'Dave Bayley'),

(7,'David Biral'),(8,'Brandt Jones'),(9,'Daniel Nigro'),(10,'David Sprecher'),
(11,'James Chul Rim'),(12,'Carolina Navarro'),(13,'Justin Tranter'),(14,'Justin
Bieber '),(15,'Caleb Zackery'),(16,'Dwan Avery'),(17,'Andrew Watt');
/*!40000 ALTER TABLE `song_writers` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `songs`
--
DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `Song_id` int NOT NULL,
  `Song_name` varchar(45) NOT NULL,
  `Release_date` date NOT NULL,
  `Rank` int NOT NULL,
  `Song_writer_id` int DEFAULT NULL,
  `Producer_id` int DEFAULT NULL,
  `Artist_id` int DEFAULT NULL,
  `Genres_id` int DEFAULT NULL,
  PRIMARY KEY (`Song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `songs`
--
LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'As it Was','2022-03-31',1,1,1,1,1),(2,'First
Class','2022-04-08',2,2,2,2,2),(3,'WAIT FOR U (feat. Drake & Tems)','2022-04-
29',3,3,3,3,2),(4,'PUFFIN ON ZOOTIES','2022-04-29',4,4,4,3,2),(5,'About Damn
Time','2022-04-14',5,5,5,4,3),(6,'Heat Waves','2020-08-06',6,6,6,5,4),(7,'IM ON ONE
( feat. Drake)','2022-04-29',7,3,7,3,2),(8,'712PM','2022-04-29',8,4,4,3,2),
(9,'INDUSTRY BABY (feat. Jack Harlow)','2021-09-17',9,7,8,6,2),(10,'Stay','2021-07-
23',10,5,5,7,5),(11,'No Role Modelz','2014-12-09',11,8,9,8,2),(12,'good 4 u','2021-
05-21',12,9,10,9,6),(13,'Woman','2021-06-25',13,10,11,10,3),(14,'Wait a
minute!','2015-01-11',14,11,12,11,4),(15,'PROVENZA','2022-04-22',15,12,13,12,7),
(16,'Enemy(with JID)','2021-08-03',16,13,14,13,4),(17,'Ghost','2021-04-
19',17,14,15,7,8),(18,'Honest','2022-04-29',18,15,16,7,9),(19,'IN DAT N***','2022-
04-29',19,16,17,3,2),(20,'Thousand Miles','2022-04-22',20,17,18,14,2);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2022-05-10 15:08:31
