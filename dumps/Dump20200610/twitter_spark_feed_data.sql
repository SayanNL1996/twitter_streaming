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
-- Table structure for table `feed_data`
--

DROP TABLE IF EXISTS `feed_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feed_data` (
  `country` text,
  `hashtag` text,
  `time` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feed_data`
--

LOCK TABLES `feed_data` WRITE;
/*!40000 ALTER TABLE `feed_data` DISABLE KEYS */;
INSERT INTO `feed_data` VALUES ('Ghana','#Hushpuppi','Wed Jun 10 09:51:31 +0000 2020'),('United States','#GoneWithTheWind','Wed Jun 10 09:51:32 +0000 2020'),('India','#1YearOfFainatsTBK','Wed Jun 10 09:51:34 +0000 2020'),('United States','#Pakistani','Wed Jun 10 09:51:35 +0000 2020'),('United States','#earthquake,#quake','Wed Jun 10 09:51:40 +0000 2020'),('United States','#earthquake,#quake','Wed Jun 10 09:51:40 +0000 2020'),('Kenya','#CoronaHasTaughtMe','Wed Jun 10 09:51:41 +0000 2020'),('India','#CoronaFreeBharat_withPatanjali','Wed Jun 10 09:51:43 +0000 2020'),('Ghana','#DaybreakHitz','Wed Jun 10 09:51:46 +0000 2020'),('India','#JhootiHaiBiharSarkar','Wed Jun 10 09:51:47 +0000 2020'),('United States','#whitetrashpastor,#trailerparkpreacher','Wed Jun 10 09:51:53 +0000 2020'),('Türkiye','#MOOD','Wed Jun 10 09:51:55 +0000 2020'),('Nigeria','#LateMorningMusicMixLive,#summerwalker','Wed Jun 10 09:51:59 +0000 2020'),('United States','#groundhog,#PTSDAwareness','Wed Jun 10 09:52:02 +0000 2020'),('Nigeria','#AikiDaiBaba,#ganduje,#gandujiyya_online,#regrann','Wed Jun 10 09:52:04 +0000 2020'),('India','#SonyLiv,#sonyliv,#YourHonor','Wed Jun 10 09:52:04 +0000 2020'),('India','#starlinksatellites,#SpaceX,#NASA','Wed Jun 10 09:52:06 +0000 2020'),('Kenya','#RealEstate','Wed Jun 10 09:52:06 +0000 2020'),('India','#MissYouYuvi','Wed Jun 10 09:52:07 +0000 2020'),('Uganda','#VisitUganda,#LakeBunyonyi','Wed Jun 10 09:52:08 +0000 2020'),('Ghana','#DaybreakHitz','Wed Jun 10 09:52:08 +0000 2020'),('Grenada','#Ghosttown','Wed Jun 10 09:52:09 +0000 2020'),('India','#ChintuKaBirthday','Wed Jun 10 09:52:10 +0000 2020'),('India','#1YearOfFainatsTBK','Wed Jun 10 09:52:10 +0000 2020'),('Nigeria','#UrbanFarming','Wed Jun 10 09:52:13 +0000 2020'),('India','#FranklinTempletonMF','Wed Jun 10 09:52:15 +0000 2020'),('Hashemite Kingdom of Jordan','#NiajeNiaje','Wed Jun 10 09:52:15 +0000 2020');
/*!40000 ALTER TABLE `feed_data` ENABLE KEYS */;
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
