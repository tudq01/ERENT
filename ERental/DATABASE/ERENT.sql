-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ebike
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `biketype`
--

DROP TABLE IF EXISTS `biketype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biketype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storeid` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `license` varchar(45) DEFAULT NULL,
  `manuafactur` varchar(45) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_storeid_idx` (`storeid`),
  CONSTRAINT `fk_storeid` FOREIGN KEY (`storeid`) REFERENCES `store` (`storeid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biketype`
--

LOCK TABLES `biketype` WRITE;
/*!40000 ALTER TABLE `biketype` DISABLE KEYS */;
INSERT INTO `biketype` VALUES (1,1,'Calos','Bike',23,'1','2001','Italy',2300,'Rent'),(2,1,'Centa','Bike',42,'2','2002','France',1200,'Available'),(3,1,'Delta','Ebike',12,'3','2003','Naiko',1000,'Available'),(4,1,'Chigo','Ebike',32,'4','2004','Denta',1500,'Available'),(5,2,'GT','Bike',12,'4','2008','Italy',1255,'Available'),(6,2,'Kona','Bike',8,'1','2009','Brazil',3000,'Available'),(7,2,'Scott','Ebike',9,'2','2010','Brazil',4500,'Available'),(8,2,'Merida','Bike',23,'3','2009','Italy',3000,'Available'),(9,3,'Marin','TwinBike',53,'4','2009','Brazil',4500,'Available'),(10,3,'Giant','TwinBike',35,'5','2015','Brazil',4500,'Available'),(11,3,'Romance','Ebike',46,'6','2009','Italy',3000,'Available'),(12,3,'Alan','Ebike',22,'2','2021','USA',2800,'Available'),(13,4,'Alex','Bike',1,'1','2031','USA',4700,'Available'),(14,4,'Argon','TwinBike',2,'2','2015','France',2800,'Available'),(15,4,'Ascari','Bike',3,'1','2018','USA',2800,'Available'),(16,4,'Avanti','TwinBike',4,'2','2019','France',4700,'Available');
/*!40000 ALTER TABLE `biketype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `total` int DEFAULT NULL,
  `timeCreate` datetime DEFAULT NULL,
  `timeFinish` datetime DEFAULT NULL,
  `bikeId` varchar(45) DEFAULT NULL,
  `custId` int DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `fk_idx` (`custId`),
  CONSTRAINT `fk_to` FOREIGN KEY (`custId`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (81,0,'2021-11-15 09:21:29','2021-11-15 09:22:26','1',1),(82,0,'2021-11-15 09:25:39','2021-11-15 09:25:45','1',1),(83,0,'2021-11-15 09:26:09','2021-11-15 09:26:29','1',1),(84,0,'2021-11-15 09:47:48','2021-11-15 09:47:55','3',1),(85,0,'2021-11-15 09:48:53','2021-11-15 09:48:57','1',1),(86,0,'2021-11-15 09:55:06','2021-11-15 09:55:49','1',1),(87,0,'2021-11-15 10:01:02','2021-11-15 10:01:07','1',1),(88,0,'2021-11-15 10:01:25','2021-11-15 10:01:37','1',1),(89,0,'2021-11-16 15:17:23','2021-11-16 15:19:25','1',1),(90,0,'2021-11-16 15:27:44','2021-11-16 15:27:50','4',1);
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `storeid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `emptyDock` int DEFAULT '0',
  PRIMARY KEY (`storeid`),
  UNIQUE KEY `storeid_UNIQUE` (`storeid`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `address_UNIQUE` (`address`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'F-x Bike','225 Hoàng Hoa Thám, Ba Đình, Hà Nội','Full',0),(2,'Toan Thang Cycles','23 Lê Trọng Tấn, La Khê, Hà Nội','Full',0),(3,'Xe đạp 24h','7A Trường Chinh, Quận Thanh Xuân, Hà Nội ','Full',0),(4,'Xe Đạp Thế Giới','163 Cầu Diễn, Bắc Từ Liêm, Hà Nội','Full',0);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `message` varchar(100) DEFAULT NULL,
  `money` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_idx` (`orderId`),
  CONSTRAINT `fk` FOREIGN KEY (`orderId`) REFERENCES `rent` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (94,81,'1',400000),(95,81,'1',400000),(96,82,'',400000),(97,82,'1',400000),(98,83,'1',400000),(99,83,'1',400000),(100,84,'1',700000),(101,84,'1',700000),(102,85,'1',400000),(103,85,'1',400000),(104,86,'1',400000),(105,86,'1',400000),(106,87,'1',400000),(107,87,'1',400000),(108,88,'1',400000),(109,88,'1',400000),(110,89,'1',400000),(111,89,'1',400000),(112,90,'1',700000),(113,90,'1',700000);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useraccount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_UNIQUE` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount`
--

LOCK TABLES `useraccount` WRITE;
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` VALUES (1,'tu','nam','Tu','23B Tong Dan','dangquoctuhn@gmail.com'),(2,'xuan','phong','Hai','trung','dangquoctanhn@gmail.com');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ebike'
--

--
-- Dumping routines for database 'ebike'
--
/*!50003 DROP FUNCTION IF EXISTS `insertRent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insertRent`(
   timeT DateTime,bikeId INT,custId INT
) RETURNS int
    DETERMINISTIC
BEGIN

  INSERT INTO rent(timeCreate,bikeId,custId) VALUES (timeT,bikeId,custId);
  UPDATE biketype
SET status = 'Rent'
WHERE id = bikeId;
	
    return 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `insertReturn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `insertReturn`( 
  orID int,bikeID int,totMoney int,timeFns DateTime) RETURNS int
    DETERMINISTIC
BEGIN
   UPDATE rent SET total = totMoney,
                   timeFinish = timeFns 
   WHERE rent.orderId = orID;
UPDATE biketype
SET status = 'Available'
WHERE id = bikeId;
return 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `updateReturn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `updateReturn`(bikeID int,sID int) RETURNS int
    DETERMINISTIC
BEGIN
 UPDATE  store
  SET emptyDock = emptyDock-1,
		 status = CASE WHEN emptyDock = 0 THEN "Full" ELSE status END
    WHERE  storeid = sID;
    
    UPDATE biketype
    set   storeid = sID,status='Available'
    where id = bikeID;

RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `updateStoreRent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `updateStoreRent`(
	sId int
) RETURNS int
    DETERMINISTIC
BEGIN
    UPDATE  store
    SET emptyDock = emptyDock+1,
		 status = 'Available'
    WHERE  storeid = (SELECT storeid from biketype where id = sid );
	RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 15:51:52
