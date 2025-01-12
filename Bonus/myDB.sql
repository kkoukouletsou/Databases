CREATE DATABASE  IF NOT EXISTS `treasure_hunt_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `treasure_hunt_db`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: treasure_hunt_db
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `animemoviecharacters`
--

DROP TABLE IF EXISTS `animemoviecharacters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animemoviecharacters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `charname` varchar(255) DEFAULT NULL,
  `charorigin` varchar(255) DEFAULT NULL,
  `spoilers` varchar(255) DEFAULT NULL,
  `sus_table_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sus_table_id` (`sus_table_id`),
  CONSTRAINT `animemoviecharacters_ibfk_1` FOREIGN KEY (`sus_table_id`) REFERENCES `superunsuspicioustable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animemoviecharacters`
--

LOCK TABLES `animemoviecharacters` WRITE;
/*!40000 ALTER TABLE `animemoviecharacters` DISABLE KEYS */;
INSERT INTO `animemoviecharacters` VALUES (1,'Eren Yeager','Attack on Titan','93c222306aac1473c4f9240c1d0a5f07c0d1adf885364ad3a147c03ef942c136',1),(2,'Tobirama Senju','Naruto','ed704a10f66853b3337eba68d4d47d7b',2),(3,'Aragorn','The Lord of The Rings','Xw0wQ7sg9mVrMfLwLHIguiVWGXT+KtGv0scBJFLbsqsomJobXvyueozMQ8w9is/FXwsYDGbnsguTx8FZcyVnpg==',3),(4,'Luffy','One Piece','mqbt7R3BbuSXPxqn/fTmFw==',5),(5,'Ichigo Kurosaki','Bleach','LxqggkMjtvHry80OT5kIIUHA4BC6kd0dR9BNeIpXT05kmBNabb/ZsC8esG0o+JoQaCIYDu0sgsvV3RVxu1dknw==',4),(6,'Jack Sparrow','Pirates of the Caribbean','EQZYY4wohk6/X9d2RrXPCo3tm2OaqFDPvVTPmhc24vZ91NIoE4pIVecfBD/PR76CZNbrXih0IjVvNBsLEWCkxA==',4),(7,'Levi Ackerman','Attack on Titan','bd85qWDuCwsQ6LB94mhRhFCrHUIDxbyX5yhSYEoYgkcyZVisFJ7gEiwY48vHX+tuFj9rMgAb8KNNLczU/A2ZlA==',3),(8,'Gojo Satoru','Jujutsu Kaisen','9cbecefa5ee503e68fd9affa0d7178eee1f0bc9910b373ae9c10f1554c141776',1),(9,'Severus Snape','Harry Potter','34fe56d277dbd4cd3173c01447fda57c',2),(10,'R2D2','Star Wars','07q/rPYbsfDHIclp0xh+51LSnGakxlNq73DN+2NRJbI=',5);
/*!40000 ALTER TABLE `animemoviecharacters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `athletes`
--

DROP TABLE IF EXISTS `athletes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `athletes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `teamOrSport` varchar(255) DEFAULT NULL,
  `gossip` varchar(255) DEFAULT NULL,
  `sus_table_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sus_table_id` (`sus_table_id`),
  CONSTRAINT `athletes_ibfk_1` FOREIGN KEY (`sus_table_id`) REFERENCES `superunsuspicioustable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `athletes`
--

LOCK TABLES `athletes` WRITE;
/*!40000 ALTER TABLE `athletes` DISABLE KEYS */;
INSERT INTO `athletes` VALUES (1,'Josh Hart','New York Knicks','Starting SG for the Knicks',1),(2,'Sergio Koke','Aris FC','SKG',2),(3,'Simone Biles','Gymnastics','Olympic Gold Medalist',3),(4,'Lionel Messi','Barcelona','GOAT',4),(5,'Sabrina Ionescu','New York Liberty','Brought a championship to NY',5),(6,'Giorgos Karagounis','Greek National Team','Radiohead Song is the key',5),(7,'Calvin Johnson','American Football','Second best personality that attended Georgia Tech',1),(8,'Roger Federer','Tennis','Pure class',3),(9,'Michael Jordan','Basketball','Another GOAT!',4),(10,'Bo Nix','American Football','BOLIEVER',5),(11,'Djibril Cisse','Panathinaikos','Oe oe oe oe Djibril Cisse',1);
/*!40000 ALTER TABLE `athletes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `superunsuspicioustable`
--

DROP TABLE IF EXISTS `superunsuspicioustable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `superunsuspicioustable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `algo` varchar(255) DEFAULT NULL,
  `pkey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `superunsuspicioustable`
--

LOCK TABLES `superunsuspicioustable` WRITE;
/*!40000 ALTER TABLE `superunsuspicioustable` DISABLE KEYS */;
INSERT INTO `superunsuspicioustable` VALUES (1,'SHA256','A classic hashing algorithm'),(2,'MD5','Not what you are looking for'),(3,'RSA515bits','Rivest (also has the best book of algorithms)'),(4,'RSAECB515bits','Shamir Adleman'),(5,'AES128NoP','Greek Athlete');
/*!40000 ALTER TABLE `superunsuspicioustable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totallycalmingmusic`
--

DROP TABLE IF EXISTS `totallycalmingmusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `totallycalmingmusic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `songartist` varchar(255) DEFAULT NULL,
  `songname` varchar(255) DEFAULT NULL,
  `closer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totallycalmingmusic`
--

LOCK TABLES `totallycalmingmusic` WRITE;
/*!40000 ALTER TABLE `totallycalmingmusic` DISABLE KEYS */;
INSERT INTO `totallycalmingmusic` VALUES (1,'Metallica','Blackened','...And Justice For All'),(2,'Iron Maiden','Blood Brothers','Brave New World'),(3,'Black Sabbath','Black Sabbath','Black Sabbath'),(4,'Bring Me The Horizon','Darkside','latest album'),(5,'Radiohead','Paranoid Android','OK Computer'),(6,'Heaven Shall Burn','Behind A Wall Of Silence','Whatever It May Take'),(7,'Green Day','Homecoming','American Idiot'),(8,'Salty','RedHat','GOTO animeMovieCharacters 4'),(9,'A Day To Remember','Bad Vibrations','Bad Vibrations'),(10,'Dream Theater','Dance Of Eternity','Release 2025'),(11,'Backstreet Boys','The Call','Guilty Pleasure'),(12,'Depeche Mode','Enjoy The Silence','or Behind A Wall Of Silence'),(13,'10218','KOUKOULETSOU AIKATERINI','1472d88ff43009b1cd13ba5cce09674713cf28912476212fe72bead926eb02a6');
/*!40000 ALTER TABLE `totallycalmingmusic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-12 19:18:04
