-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: day5
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB

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
-- Table structure for table `city1`
--

DROP TABLE IF EXISTS `city1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city1` (
  `CityID` int(4) NOT NULL,
  `cityName` varchar(255) DEFAULT 'toronto'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city1`
--

LOCK TABLES `city1` WRITE;
/*!40000 ALTER TABLE `city1` DISABLE KEYS */;
INSERT INTO `city1` VALUES (2,'Scarborough'),(3,'Brampton');
/*!40000 ALTER TABLE `city1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city2`
--

DROP TABLE IF EXISTS `city2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city2` (
  `CityID` int(4) NOT NULL,
  `cityName` varchar(255) DEFAULT 'toronto'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city2`
--

LOCK TABLES `city2` WRITE;
/*!40000 ALTER TABLE `city2` DISABLE KEYS */;
INSERT INTO `city2` VALUES (4,'New');
/*!40000 ALTER TABLE `city2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citymaster`
--

DROP TABLE IF EXISTS `citymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citymaster` (
  `CityID` int(4) NOT NULL,
  `CityName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citymaster`
--

LOCK TABLES `citymaster` WRITE;
/*!40000 ALTER TABLE `citymaster` DISABLE KEYS */;
INSERT INTO `citymaster` VALUES (1,'Toronto'),(2,'Scarborough'),(3,'Brampton');
/*!40000 ALTER TABLE `citymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person2`
--

DROP TABLE IF EXISTS `person2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person2` (
  `ID` int(3) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `CityID` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person2`
--

LOCK TABLES `person2` WRITE;
/*!40000 ALTER TABLE `person2` DISABLE KEYS */;
INSERT INTO `person2` VALUES (1,'Solanki','Shaishav',23,2),(2,'Patel','Akshar',17,2),(3,'Patel','Ajay',20,1);
/*!40000 ALTER TABLE `person2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person3`
--

DROP TABLE IF EXISTS `person3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person3` (
  `ID` int(3) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `CityID` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_persons` (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person3`
--

LOCK TABLES `person3` WRITE;
/*!40000 ALTER TABLE `person3` DISABLE KEYS */;
INSERT INTO `person3` VALUES (1,'Solanki','Shaishav',23,2),(2,'Patel','Akshar',17,2),(3,'Patel','Ajay',20,1);
/*!40000 ALTER TABLE `person3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persons`
--

DROP TABLE IF EXISTS `persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persons` (
  `ID` int(3) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `CityID` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_persons` (`CityID`),
  CONSTRAINT `fk_persons` FOREIGN KEY (`CityID`) REFERENCES `citymaster` (`CityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persons`
--

LOCK TABLES `persons` WRITE;
/*!40000 ALTER TABLE `persons` DISABLE KEYS */;
INSERT INTO `persons` VALUES (1,'Solanki','Shaishav',23,2),(2,'Patel','Akshar',17,2),(4,'Patel','Akash',22,3),(5,'Chauhan','Pratham',3,1);
/*!40000 ALTER TABLE `persons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-12 11:00:37
