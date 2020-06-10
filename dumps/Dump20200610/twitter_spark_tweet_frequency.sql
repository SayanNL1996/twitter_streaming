-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: twitter_spark
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `tweet_frequency`
--

DROP TABLE IF EXISTS `tweet_frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweet_frequency` (
  `country` text,
  `hashtag` text,
  `time` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet_frequency`
--

LOCK TABLES `tweet_frequency` WRITE;
/*!40000 ALTER TABLE `tweet_frequency` DISABLE KEYS */;
INSERT INTO `tweet_frequency` VALUES ('Hashemite Kingdom of Jordan','#NiajeNiaje','Wed Jun 10 09:52:15 +0000 2020'),('Türkiye','#MOOD','Wed Jun 10 09:51:55 +0000 2020'),('Ghana','#DaybreakHitz','Wed Jun 10 09:51:46 +0000 2020'),('Ghana','#DaybreakHitz','Wed Jun 10 09:52:08 +0000 2020'),('United States','#earthquake','Wed Jun 10 09:51:40 +0000 2020'),('United States','#earthquake','Wed Jun 10 09:51:40 +0000 2020'),('India','#1YearOfFainatsTBK','Wed Jun 10 09:51:34 +0000 2020'),('India','#1YearOfFainatsTBK','Wed Jun 10 09:52:10 +0000 2020'),('Nigeria','#LateMorningMusicMixLive','Wed Jun 10 09:51:59 +0000 2020'),('Grenada','#Ghosttown','Wed Jun 10 09:52:09 +0000 2020'),('Uganda','#VisitUganda','Wed Jun 10 09:52:08 +0000 2020'),('Kenya','#CoronaHasTaughtMe','Wed Jun 10 09:51:41 +0000 2020');
/*!40000 ALTER TABLE `tweet_frequency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 21:27:32
