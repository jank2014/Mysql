-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: join1
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `classone`
--

DROP TABLE IF EXISTS `classone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT 'jankz@jankz.com',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classone`
--

LOCK TABLES `classone` WRITE;
/*!40000 ALTER TABLE `classone` DISABLE KEYS */;
INSERT INTO `classone` VALUES (1,'Jankz','jankz@jankz.com'),(2,'Mankong','jankz@jankz.com'),(4,'jack','jankz@jankz.com'),(5,'jan','jankz@jankz.com'),(6,'Tang','jankz@jankz.com'),(7,'GuShu','jankz@jankz.com');
/*!40000 ALTER TABLE `classone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classtwo`
--

DROP TABLE IF EXISTS `classtwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classtwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classtwo`
--

LOCK TABLES `classtwo` WRITE;
/*!40000 ALTER TABLE `classtwo` DISABLE KEYS */;
INSERT INTO `classtwo` VALUES (1,'JAN'),(2,'JZ'),(3,'MANKONG'),(4,'JZOPEN'),(5,'PHP'),(6,'AJAX'),(7,'Jankz'),(8,'Mankong'),(9,'jack'),(10,'jan'),(11,'Tang'),(12,'GuShu');
/*!40000 ALTER TABLE `classtwo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `ename` varchar(10) NOT NULL,
  `hiredate` date DEFAULT NULL,
  `sal` decimal(10,2) DEFAULT NULL,
  `deptno` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES ('jankz','2016-01-01',4000.34,1),('mankog','2016-01-03',4340.34,2),('honey','2016-05-03',5345.34,3),('tan','2016-03-03',6345.34,2),('jankz','2016-01-01',4000.34,1),('mankog','2016-01-03',4340.34,2),('honey','2016-05-03',5345.34,3),('tan','2016-03-03',6345.34,2),('jankz','2016-01-01',4000.34,1),('mankog','2016-01-03',4340.34,2),('honey','2016-05-03',5345.34,3),('tan','2016-03-03',6345.34,2),('jankz','2016-01-01',4000.34,1),('mankog','2016-01-03',4340.34,2),('honey','2016-05-03',5345.34,3),('tan','2016-03-03',6345.34,2);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-13 13:23:08
