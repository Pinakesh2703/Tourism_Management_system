-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: tourism
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` int NOT NULL,
  `driverid` int DEFAULT NULL,
  `vehicleid` int DEFAULT NULL,
  `pakageid` int DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `Aadhar_number` int DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `phone_number` bigint DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  UNIQUE KEY `Aadhar_number` (`Aadhar_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (101,12101,1110,10005,'M.K. Jaiswal',137895523,'chennai',9735699421),(102,12108,1114,10003,'Akash',1798534589,'kolkata',9788541128),(103,12105,1113,10002,'Abhinav',1798563256,'New Delhi',9785674598),(104,12103,1110,10004,'Mayank',1978256453,'lucknow',9977335546);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `Driver_id` int NOT NULL,
  `Driver_name` varchar(50) DEFAULT NULL,
  `Aadhar_number` int DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Phone` bigint DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Driver_id`),
  UNIQUE KEY `Aadhar_number` (`Aadhar_number`),
  UNIQUE KEY `Phone` (`Phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (12101,'pankaj',1235654860,'buddha nagar',9875632498,'available'),(12102,'Abhilash',1459863562,'gautam nagar',9785462589,'booked'),(12103,'mukund',1897513065,'saroj nagar',9130465897,'booked'),(12104,'Abhijit',1784596823,'gurgaon',978246531,'booked'),(12105,'Shashank',1122334455,'vasant vihar',9785678012,'booked'),(12106,'prantik',1986534723,'vasant vihar',9173289756,'available');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pakages`
--

DROP TABLE IF EXISTS `pakages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pakages` (
  `pakage_id` int NOT NULL,
  `destinations` varchar(500) DEFAULT NULL,
  `duration` bigint DEFAULT NULL,
  `cost` bigint DEFAULT NULL,
  PRIMARY KEY (`pakage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pakages`
--

LOCK TABLES `pakages` WRITE;
/*!40000 ALTER TABLE `pakages` DISABLE KEYS */;
INSERT INTO `pakages` VALUES (10001,'NewDelhi -Agra- Jaipur',15,18000),(10002,'NewDelhi- Shimla- Manali',10,13000),(10003,'Chandigarh- Jammu- Katra- Srinagar',15,19000),(10004,'Chandigarh- Manali- Leh',10,27000),(10005,'Jaipur-Ajmer-Udaipur- Jodhpur',15,22000);
/*!40000 ALTER TABLE `pakages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `date_of_transaction` date NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1001,'abhijit',7000,'2020-12-31'),(1002,'pratik',8000,'2020-12-30'),(1003,'tushar',9000,'2020-12-15');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` int NOT NULL,
  `vehicle_name` varchar(40) DEFAULT NULL,
  `rent` float DEFAULT NULL,
  `fuel_type` varchar(30) DEFAULT NULL,
  `Average` int DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1110,'Honda-CRV',8000,'petrol',13,'booked'),(1111,'WagonR',4000,'diesel',7,'available'),(1112,'Swift dzire',6500,'petrol',9,'available'),(1113,'Honda city',7500,'diesel',10,'booked'),(1114,'Force Traveller',15000,'diesel',6,'available'),(1116,'scorpio',8000,'petrol',9,'available');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-17 23:19:00
