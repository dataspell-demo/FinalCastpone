-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: CastponeProject
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.1

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
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `CustomerID` int NOT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  `Cus_Email` varchar(255) DEFAULT NULL,
  `Cus_phone` int DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'fdsfgdg','sfgsd',2341),(2,'sgdfsg','gdf',1),(3,'sdgdfsgs','gfsd',3414),(4,'fgfsdg','gsd',14314432),(5,'fsdg','g',4231),(6,'dfsg','dsg',413),(7,'sdfg','sd',4234),(8,'dfsg','gsd',324),(9,'fsdfg','gsd',234),(10,'sdg','gsdg',234),(11,'dg','fds',1),(12,'dsg','gsdg',14);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DeliveryAddress`
--

DROP TABLE IF EXISTS `DeliveryAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeliveryAddress` (
  `AddressID` int NOT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `PostCode` int DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeliveryAddress`
--

LOCK TABLES `DeliveryAddress` WRITE;
/*!40000 ALTER TABLE `DeliveryAddress` DISABLE KEYS */;
INSERT INTO `DeliveryAddress` VALUES (1,'fdsfgdg',2341,'sfgsd','sfgsd','sfgsd'),(2,'sgdfsg',1,'gdf','gdf','gdf'),(3,'sdgdfsgs',3414,'gfsd','gfsd','gfsd'),(4,'fgfsdg',14314432,'gsd','gsd','gsd'),(5,'fsdg',4231,'g','g','g'),(6,'dfsg',413,'dsg','dsg','dsg'),(7,'sdfg',4234,'sd','sd','sd'),(8,'dfsg',324,'gsd','gsd','gsd'),(9,'fsdfg',234,'gsd','gsd','gsd'),(10,'sdg',234,'gsdg','gsdg','gsdg'),(11,'dg',1,'fds','fds','fds'),(12,'dsg',14,'gsdg','gsdg','gsdg');
/*!40000 ALTER TABLE `DeliveryAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `EmployeeID` int NOT NULL,
  `EmpName` varchar(255) DEFAULT NULL,
  `EmpSurname` varchar(255) DEFAULT NULL,
  `Role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'fdsfgdg','fdsfgdg','fdsfgdg'),(2,'sgdfsg','sgdfsg','sgdfsg'),(3,'sdgdfsgs','sdgdfsgs','sdgdfsgs'),(4,'fgfsdg','fgfsdg','fgfsdg'),(5,'fsdg','fsdg','fsdg'),(6,'dfsg','dfsg','dfsg'),(7,'sdfg','sdfg','sdfg'),(8,'dfsg','dfsg','dfsg'),(9,'fsdfg','fsdfg','fsdfg'),(10,'sdg','sdg','sdg'),(11,'dg','dg','dg'),(12,'dsg','dsg','dsg');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `TotalCost` int DEFAULT NULL,
  `ProdQuantity` int DEFAULT NULL,
  `Discount` decimal(10,2) DEFAULT NULL,
  `ShippingID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `ShippingID` (`ShippingID`),
  KEY `ProductID` (`ProductID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`ShippingID`) REFERENCES `Shipping` (`ShippingID`),
  CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `Product` (`ProductID`),
  CONSTRAINT `Orders_ibfk_3` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`),
  CONSTRAINT `Orders_ibfk_4` FOREIGN KEY (`EmployeeID`) REFERENCES `Employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'1970-01-01 00:00:00',1,1,1.00,1,1,1,1),(2,'1970-01-01 00:00:00',2,2,2.00,2,2,2,2),(3,'1970-01-01 00:00:00',3,3,3.00,3,3,3,3),(4,'1970-01-01 00:00:00',4,4,4.00,4,4,4,4),(5,'1970-01-01 00:00:00',5,5,5.00,5,5,5,5),(6,'1970-01-01 00:00:00',6,6,6.00,6,6,6,6),(7,'1970-01-01 00:00:00',7,7,7.00,7,7,7,7),(8,'1970-01-01 00:00:00',8,8,8.00,8,8,8,8),(9,'1970-01-01 00:00:00',9,9,9.00,9,9,9,9),(10,'1970-01-01 00:00:00',10,10,10.00,10,10,10,10),(11,'1970-01-01 00:00:00',11,11,11.00,11,11,11,11),(12,'1970-01-01 00:00:00',12,12,12.00,12,12,12,12);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `ProductID` int NOT NULL,
  `ProductCat` varchar(255) DEFAULT NULL,
  `ProductSubCat` varchar(255) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductCost` float DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  `Cuisine` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,'1','fdsfgdg','fdsfgdg',1,1,'fdsfgdg'),(2,'2','sgdfsg','sgdfsg',2,2,'sgdfsg'),(3,'3','sdgdfsgs','sdgdfsgs',3,3,'sdgdfsgs'),(4,'4','fgfsdg','fgfsdg',4,4,'fgfsdg'),(5,'5','fsdg','fsdg',5,5,'fsdg'),(6,'6','dfsg','dfsg',6,6,'dfsg'),(7,'7','sdfg','sdfg',7,7,'sdfg'),(8,'8','dfsg','dfsg',8,8,'dfsg'),(9,'9','fsdfg','fsdfg',9,9,'fsdfg'),(10,'10','sdg','sdg',10,10,'sdg'),(11,'11','dg','dg',11,11,'dg'),(12,'12','dsg','dsg',12,12,'dsg');
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shipping`
--

DROP TABLE IF EXISTS `Shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shipping` (
  `ShippingID` int NOT NULL,
  `ShippingMode` varchar(255) DEFAULT NULL,
  `ShippingDate` datetime DEFAULT NULL,
  `AddressID` int DEFAULT NULL,
  `ShipCost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ShippingID`),
  KEY `AddressID` (`AddressID`),
  CONSTRAINT `Shipping_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `DeliveryAddress` (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shipping`
--

LOCK TABLES `Shipping` WRITE;
/*!40000 ALTER TABLE `Shipping` DISABLE KEYS */;
INSERT INTO `Shipping` VALUES (1,'fdsfgdg','1970-01-01 00:00:00',1,1.00),(2,'sgdfsg','1970-01-01 00:00:00',2,2.00),(3,'sdgdfsgs','1970-01-01 00:00:00',3,3.00),(4,'fgfsdg','1970-01-01 00:00:00',4,4.00),(5,'fsdg','1970-01-01 00:00:00',5,5.00),(6,'dfsg','1970-01-01 00:00:00',6,6.00),(7,'sdfg','1970-01-01 00:00:00',7,7.00),(8,'dfsg','1970-01-01 00:00:00',8,8.00),(9,'fsdfg','1970-01-01 00:00:00',9,9.00),(10,'sdg','1970-01-01 00:00:00',10,10.00),(11,'dg','1970-01-01 00:00:00',11,11.00),(12,'dsg','1970-01-01 00:00:00',12,12.00);
/*!40000 ALTER TABLE `Shipping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-03 22:46:49
