-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: oneteam
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Title` varchar(3) DEFAULT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `Empid` int NOT NULL,
  `Basic_Salary` int DEFAULT '5000',
  `Commision` int DEFAULT '0',
  `Net_Salary` int DEFAULT NULL,
  `Deptid` int NOT NULL,
  `mobileno` bigint DEFAULT NULL,
  `place` varchar(50) DEFAULT NULL,
  `Blood_group` varchar(3) DEFAULT NULL,
  `Qualid` int DEFAULT NULL,
  PRIMARY KEY (`Empid`),
  UNIQUE KEY `mobileno` (`mobileno`),
  KEY `FK_DID` (`Deptid`),
  KEY `FK_QID` (`Qualid`),
  CONSTRAINT `FK_DID` FOREIGN KEY (`Deptid`) REFERENCES `department` (`Deptid`),
  CONSTRAINT `FK_QID` FOREIGN KEY (`Qualid`) REFERENCES `qualification` (`QualId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Mr','Kiran','Mohan',1001,25000,4500,29500,104,9447717046,'Trivandrum','A+',60),('Mr','Madhu','Mohan',1002,22000,2640,24640,103,9895361245,'Kollam','B+',40),('Mrs','Mini','Mathew',1003,17000,3040,20040,101,8281357945,'Ernakulam','AB+',70),('Mr','Deepak','Thomas',1004,42000,5040,47040,101,9895471245,'Trivandrum','A+',100),('Mrs','Meera','Madhavan',1005,32000,3840,35840,105,8695474145,'Alappuzha','B-',120),('Mr','Manu','Menon',1006,24000,2880,26880,102,8695414569,'Palakkad','AB-',110),('Ms','Sumayya','Basheer',1007,37000,9440,46440,104,8247357945,'Ernakulam','A+',150),('Mr','Vinu','Nair',1008,25000,3000,28000,102,9447414569,'trivandrum','A+',60),('Ms','Sini','Pillai',1009,18000,2160,20160,103,9447789669,'Kollam','O+',80),('Mr','Midhun','Venu',1010,27000,6240,33240,105,8956237945,'Ernakulam','O+',90);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11 11:29:08
