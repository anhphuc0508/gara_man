-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gara_man
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `tblappointment8`
--

DROP TABLE IF EXISTS `tblappointment8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblappointment8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngayHen` date NOT NULL,
  `gioHen` time NOT NULL,
  `tblCustomer8id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tblCustomer8id` (`tblCustomer8id`),
  CONSTRAINT `tblappointment8_ibfk_1` FOREIGN KEY (`tblCustomer8id`) REFERENCES `tblcustomer8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblappointment8`
--

LOCK TABLES `tblappointment8` WRITE;
/*!40000 ALTER TABLE `tblappointment8` DISABLE KEYS */;
INSERT INTO `tblappointment8` VALUES (12,'2026-11-05','19:30:00',1),(13,'2026-07-01','08:00:00',1),(14,'2026-07-02','09:00:00',2),(15,'2026-07-03','10:00:00',3),(16,'2026-07-05','11:00:00',4),(17,'2026-07-06','13:00:00',5),(18,'2026-07-08','14:00:00',6),(19,'2026-07-09','15:00:00',7),(20,'2026-07-10','16:00:00',8),(21,'2026-07-12','08:00:00',9),(22,'2026-07-13','09:00:00',10),(23,'2026-07-15','10:00:00',11),(24,'2026-07-16','11:00:00',12),(25,'2026-07-17','13:00:00',13),(26,'2026-07-19','14:00:00',14),(27,'2026-07-20','15:00:00',15),(28,'2026-07-22','16:00:00',16),(29,'2026-07-23','08:00:00',17),(30,'2026-07-25','09:00:00',18),(31,'2026-07-26','10:00:00',19),(32,'2026-07-27','11:00:00',20),(33,'2026-07-29','13:00:00',1),(34,'2026-07-30','14:00:00',2),(35,'2026-08-01','15:00:00',3),(36,'2026-08-02','16:00:00',4),(37,'2026-08-03','08:00:00',5),(38,'2026-08-05','09:00:00',6),(39,'2026-08-06','10:00:00',7),(40,'2026-08-08','11:00:00',8),(41,'2026-08-09','13:00:00',9),(42,'2026-08-11','14:00:00',10),(43,'2026-08-12','15:00:00',11),(44,'2026-08-13','16:00:00',12),(45,'2026-08-15','08:00:00',13),(46,'2026-08-16','09:00:00',14),(47,'2026-08-18','10:00:00',15),(48,'2026-08-19','11:00:00',16),(49,'2026-08-20','13:00:00',17),(50,'2026-08-22','14:00:00',18),(51,'2026-08-23','15:00:00',19),(52,'2026-08-25','16:00:00',20),(53,'2026-08-26','08:00:00',1),(54,'2026-08-28','09:00:00',2),(55,'2026-08-29','10:00:00',3),(56,'2026-08-30','11:00:00',4),(57,'2026-09-01','13:00:00',5),(58,'2026-09-02','14:00:00',6),(59,'2026-09-04','15:00:00',7),(60,'2026-09-05','16:00:00',8),(61,'2026-09-06','08:00:00',9),(62,'2026-09-08','09:00:00',10),(63,'2026-09-09','10:00:00',11),(64,'2026-09-11','11:00:00',12),(65,'2026-09-12','13:00:00',13),(66,'2026-09-14','14:00:00',14),(67,'2026-09-15','15:00:00',15),(68,'2026-09-16','16:00:00',16),(69,'2026-09-18','08:00:00',17),(70,'2026-09-19','09:00:00',18),(71,'2026-09-21','10:00:00',19),(72,'2026-09-22','11:00:00',20),(73,'2026-09-23','13:00:00',1),(74,'2026-09-25','14:00:00',2),(75,'2026-09-26','15:00:00',3),(76,'2026-09-28','16:00:00',4),(77,'2026-09-29','08:00:00',5),(78,'2026-10-01','09:00:00',6),(79,'2026-10-02','10:00:00',7),(80,'2026-10-03','11:00:00',8),(81,'2026-10-05','13:00:00',9),(82,'2026-10-06','14:00:00',10),(83,'2026-10-08','15:00:00',11),(84,'2026-10-09','16:00:00',12),(85,'2026-10-10','08:00:00',13),(86,'2026-10-12','09:00:00',14),(87,'2026-10-13','10:00:00',15),(88,'2026-10-15','11:00:00',16),(89,'2026-10-16','13:00:00',17),(90,'2026-10-18','14:00:00',18),(91,'2026-10-19','15:00:00',19),(92,'2026-10-20','16:00:00',20),(93,'2026-10-22','08:00:00',1),(94,'2026-10-23','09:00:00',2),(95,'2026-10-25','10:00:00',3),(96,'2026-10-26','11:00:00',4),(97,'2026-10-27','13:00:00',5),(98,'2026-10-29','14:00:00',6),(99,'2026-10-30','15:00:00',7),(100,'2026-11-01','16:00:00',8),(101,'2026-11-02','08:00:00',9),(102,'2026-11-04','09:00:00',10),(103,'2026-11-05','09:00:00',1),(104,'2026-11-06','10:00:00',2),(105,'2026-11-07','11:00:00',3),(106,'2026-11-08','13:00:00',4),(107,'2026-11-09','14:00:00',5),(108,'2026-11-10','15:00:00',6),(109,'2026-11-07','09:00:00',1),(111,'2026-11-19','16:08:00',2),(112,'2026-11-15','16:13:00',2);
/*!40000 ALTER TABLE `tblappointment8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblassigndetail8`
--

DROP TABLE IF EXISTS `tblassigndetail8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblassigndetail8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nhiemVu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoiGianPhanCong` datetime NOT NULL,
  `tblTechnicalStaff8id` int NOT NULL,
  `tblServiceRequestReceipt8id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tblTechnicalStaff8id` (`tblTechnicalStaff8id`),
  KEY `tblServiceRequestReceipt8id` (`tblServiceRequestReceipt8id`),
  CONSTRAINT `tblassigndetail8_ibfk_1` FOREIGN KEY (`tblTechnicalStaff8id`) REFERENCES `tbltechnicalstaff8` (`id`),
  CONSTRAINT `tblassigndetail8_ibfk_2` FOREIGN KEY (`tblServiceRequestReceipt8id`) REFERENCES `tblservicerequestreceipt8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblassigndetail8`
--

LOCK TABLES `tblassigndetail8` WRITE;
/*!40000 ALTER TABLE `tblassigndetail8` DISABLE KEYS */;
INSERT INTO `tblassigndetail8` VALUES (1,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-01 08:00:00',1,7),(2,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-02 09:00:00',2,8),(3,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-03 10:00:00',3,9),(4,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-05 11:00:00',4,10),(5,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-06 13:00:00',1,11),(6,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-08 14:00:00',2,12),(7,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-09 15:00:00',3,13),(8,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-10 16:00:00',4,14),(9,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-12 08:00:00',1,15),(10,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-13 09:00:00',2,16),(11,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-15 10:00:00',3,17),(12,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-16 11:00:00',4,18),(13,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-17 13:00:00',1,19),(14,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-19 14:00:00',2,20),(15,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-20 15:00:00',3,21),(16,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-22 16:00:00',4,22),(17,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-23 08:00:00',1,23),(18,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-25 09:00:00',2,24),(19,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-26 10:00:00',3,25),(20,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-27 11:00:00',4,26),(21,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-29 13:00:00',1,27),(22,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-07-30 14:00:00',2,28),(23,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-01 15:00:00',3,29),(24,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-02 16:00:00',4,30),(25,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-03 08:00:00',1,31),(26,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-05 09:00:00',2,32),(27,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-06 10:00:00',3,33),(28,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-08 11:00:00',4,34),(29,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-09 13:00:00',1,35),(30,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-11 14:00:00',2,36),(31,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-12 15:00:00',3,37),(32,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-13 16:00:00',4,38),(33,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-15 08:00:00',1,39),(34,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-16 09:00:00',2,40),(35,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-18 10:00:00',3,41),(36,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-19 11:00:00',4,42),(37,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-20 13:00:00',1,43),(38,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-22 14:00:00',2,44),(39,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-23 15:00:00',3,45),(40,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-25 16:00:00',4,46),(41,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-26 08:00:00',1,47),(42,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-28 09:00:00',2,48),(43,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-29 10:00:00',3,49),(44,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-08-30 11:00:00',4,50),(45,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-01 13:00:00',1,51),(46,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-02 14:00:00',2,52),(47,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-04 15:00:00',3,53),(48,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-05 16:00:00',4,54),(49,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-06 08:00:00',1,55),(50,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-08 09:00:00',2,56),(51,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-09 10:00:00',3,57),(52,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-11 11:00:00',4,58),(53,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-12 13:00:00',1,59),(54,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-14 14:00:00',2,60),(55,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-15 15:00:00',3,61),(56,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-16 16:00:00',4,62),(57,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-18 08:00:00',1,63),(58,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-19 09:00:00',2,64),(59,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-21 10:00:00',3,65),(60,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-22 11:00:00',4,66),(61,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-23 13:00:00',1,67),(62,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-25 14:00:00',2,68),(63,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-26 15:00:00',3,69),(64,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-28 16:00:00',4,70),(65,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-09-29 08:00:00',1,71),(66,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-01 09:00:00',2,72),(67,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-02 10:00:00',3,73),(68,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-03 11:00:00',4,74),(69,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-05 13:00:00',1,75),(70,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-06 14:00:00',2,76),(71,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-08 15:00:00',3,77),(72,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-09 16:00:00',4,78),(73,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-10 08:00:00',1,79),(74,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-12 09:00:00',2,80),(75,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-13 10:00:00',3,81),(76,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-15 11:00:00',4,82),(77,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-16 13:00:00',1,83),(78,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-18 14:00:00',2,84),(79,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-19 15:00:00',3,85),(80,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-20 16:00:00',4,86),(81,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-22 08:00:00',1,87),(82,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-23 09:00:00',2,88),(83,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-25 10:00:00',3,89),(84,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-26 11:00:00',4,90),(85,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-27 13:00:00',1,91),(86,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-29 14:00:00',2,92),(87,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-10-30 15:00:00',3,93),(88,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-11-01 16:00:00',4,94),(89,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-11-02 08:00:00',1,95),(90,'Thực hiện dịch vụ theo phiếu yêu cầu','2026-11-04 09:00:00',2,96);
/*!40000 ALTER TABLE `tblassigndetail8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbill8`
--

DROP TABLE IF EXISTS `tblbill8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbill8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngayLap` date NOT NULL,
  `ngayThanhToan` date NOT NULL,
  `maHD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tblSaleStaff8id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_bill_salestaff8` (`tblSaleStaff8id`),
  CONSTRAINT `fk_bill_salestaff8` FOREIGN KEY (`tblSaleStaff8id`) REFERENCES `tblsalestaff8` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbill8`
--

LOCK TABLES `tblbill8` WRITE;
/*!40000 ALTER TABLE `tblbill8` DISABLE KEYS */;
INSERT INTO `tblbill8` VALUES (1,'2026-07-01','2026-07-01','DEMO-M2-001',NULL),(2,'2026-07-02','2026-07-03','DEMO-M2-002',NULL),(3,'2026-07-03','2026-07-05','DEMO-M2-003',NULL),(4,'2026-07-05','2026-07-05','DEMO-M2-004',NULL),(5,'2026-07-06','2026-07-07','DEMO-M2-005',NULL),(6,'2026-07-08','2026-07-10','DEMO-M2-006',NULL),(7,'2026-07-09','2026-07-09','DEMO-M2-007',NULL),(8,'2026-07-10','2026-07-11','DEMO-M2-008',NULL),(9,'2026-07-12','2026-07-14','DEMO-M2-009',NULL),(10,'2026-07-13','2026-07-13','DEMO-M2-010',NULL),(11,'2026-07-15','2026-07-16','DEMO-M2-011',NULL),(12,'2026-07-16','2026-07-18','DEMO-M2-012',NULL),(13,'2026-07-17','2026-07-17','DEMO-M2-013',NULL),(14,'2026-07-19','2026-07-20','DEMO-M2-014',NULL),(15,'2026-07-20','2026-07-22','DEMO-M2-015',NULL),(16,'2026-07-22','2026-07-22','DEMO-M2-016',NULL),(17,'2026-07-23','2026-07-24','DEMO-M2-017',NULL),(18,'2026-07-25','2026-07-27','DEMO-M2-018',NULL),(19,'2026-07-26','2026-07-26','DEMO-M2-019',NULL),(20,'2026-07-27','2026-07-28','DEMO-M2-020',NULL),(21,'2026-07-29','2026-07-31','DEMO-M2-021',NULL),(22,'2026-07-30','2026-07-30','DEMO-M2-022',NULL),(23,'2026-08-01','2026-08-02','DEMO-M2-023',NULL),(24,'2026-08-02','2026-08-04','DEMO-M2-024',NULL),(25,'2026-08-03','2026-08-03','DEMO-M2-025',NULL),(26,'2026-08-05','2026-08-06','DEMO-M2-026',NULL),(27,'2026-08-06','2026-08-08','DEMO-M2-027',NULL),(28,'2026-08-08','2026-08-08','DEMO-M2-028',NULL),(29,'2026-08-09','2026-08-10','DEMO-M2-029',NULL),(30,'2026-08-11','2026-08-13','DEMO-M2-030',NULL),(31,'2026-08-12','2026-08-12','DEMO-M2-031',NULL),(32,'2026-08-13','2026-08-14','DEMO-M2-032',NULL),(33,'2026-08-15','2026-08-17','DEMO-M2-033',NULL),(34,'2026-08-16','2026-08-16','DEMO-M2-034',NULL),(35,'2026-08-18','2026-08-19','DEMO-M2-035',NULL),(36,'2026-08-19','2026-08-21','DEMO-M2-036',NULL),(37,'2026-08-20','2026-08-20','DEMO-M2-037',NULL),(38,'2026-08-22','2026-08-23','DEMO-M2-038',NULL),(39,'2026-08-23','2026-08-25','DEMO-M2-039',NULL),(40,'2026-08-25','2026-08-25','DEMO-M2-040',NULL),(41,'2026-08-26','2026-08-27','DEMO-M2-041',NULL),(42,'2026-08-28','2026-08-30','DEMO-M2-042',NULL),(43,'2026-08-29','2026-08-29','DEMO-M2-043',NULL),(44,'2026-08-30','2026-08-31','DEMO-M2-044',NULL),(45,'2026-09-01','2026-09-03','DEMO-M2-045',NULL),(46,'2026-09-02','2026-09-02','DEMO-M2-046',NULL),(47,'2026-09-04','2026-09-05','DEMO-M2-047',NULL),(48,'2026-09-05','2026-09-07','DEMO-M2-048',NULL),(49,'2026-09-06','2026-09-06','DEMO-M2-049',NULL),(50,'2026-09-08','2026-09-09','DEMO-M2-050',NULL),(51,'2026-09-09','2026-09-11','DEMO-M2-051',NULL),(52,'2026-09-11','2026-09-11','DEMO-M2-052',NULL),(53,'2026-09-12','2026-09-13','DEMO-M2-053',NULL),(54,'2026-09-14','2026-09-16','DEMO-M2-054',NULL),(55,'2026-09-15','2026-09-15','DEMO-M2-055',NULL),(56,'2026-09-16','2026-09-17','DEMO-M2-056',NULL),(57,'2026-09-18','2026-09-20','DEMO-M2-057',NULL),(58,'2026-09-19','2026-09-19','DEMO-M2-058',NULL),(59,'2026-09-21','2026-09-22','DEMO-M2-059',NULL),(60,'2026-09-22','2026-09-24','DEMO-M2-060',NULL),(61,'2026-09-23','2026-09-23','DEMO-M2-061',NULL),(62,'2026-09-25','2026-09-26','DEMO-M2-062',NULL),(63,'2026-09-26','2026-09-28','DEMO-M2-063',NULL),(64,'2026-09-28','2026-09-28','DEMO-M2-064',NULL),(65,'2026-09-29','2026-09-30','DEMO-M2-065',NULL),(66,'2026-10-01','2026-10-03','DEMO-M2-066',NULL),(67,'2026-10-02','2026-10-02','DEMO-M2-067',NULL),(68,'2026-10-03','2026-10-04','DEMO-M2-068',NULL),(69,'2026-10-05','2026-10-07','DEMO-M2-069',NULL),(70,'2026-10-06','2026-10-06','DEMO-M2-070',NULL),(71,'2026-10-08','2026-10-09','DEMO-M2-071',NULL),(72,'2026-10-09','2026-10-11','DEMO-M2-072',NULL),(73,'2026-10-10','2026-10-10','DEMO-M2-073',NULL),(74,'2026-10-12','2026-10-13','DEMO-M2-074',NULL),(75,'2026-10-13','2026-10-15','DEMO-M2-075',NULL),(76,'2026-10-15','2026-10-15','DEMO-M2-076',NULL),(77,'2026-10-16','2026-10-17','DEMO-M2-077',NULL),(78,'2026-10-18','2026-10-20','DEMO-M2-078',NULL),(79,'2026-10-19','2026-10-19','DEMO-M2-079',NULL),(80,'2026-10-20','2026-10-21','DEMO-M2-080',NULL),(81,'2026-10-22','2026-10-24','DEMO-M2-081',NULL),(82,'2026-10-23','2026-10-23','DEMO-M2-082',NULL),(83,'2026-10-25','2026-10-26','DEMO-M2-083',NULL),(84,'2026-10-26','2026-10-28','DEMO-M2-084',NULL),(85,'2026-10-27','2026-10-27','DEMO-M2-085',NULL),(86,'2026-10-29','2026-10-30','DEMO-M2-086',NULL),(87,'2026-10-30','2026-11-01','DEMO-M2-087',NULL),(88,'2026-11-01','2026-11-01','DEMO-M2-088',NULL),(89,'2026-11-02','2026-11-03','DEMO-M2-089',NULL),(90,'2026-11-04','2026-11-04','DEMO-M2-090',NULL);
/*!40000 ALTER TABLE `tblbill8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbilldetail8`
--

DROP TABLE IF EXISTS `tblbilldetail8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbilldetail8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tblBill8id` int NOT NULL,
  `tblServiceRequestReceipt8id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_billdetail_bill8` (`tblBill8id`),
  UNIQUE KEY `uq_billdetail_receipt8` (`tblServiceRequestReceipt8id`),
  CONSTRAINT `tblbilldetail8_ibfk_1` FOREIGN KEY (`tblBill8id`) REFERENCES `tblbill8` (`id`),
  CONSTRAINT `tblbilldetail8_ibfk_2` FOREIGN KEY (`tblServiceRequestReceipt8id`) REFERENCES `tblservicerequestreceipt8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbilldetail8`
--

LOCK TABLES `tblbilldetail8` WRITE;
/*!40000 ALTER TABLE `tblbilldetail8` DISABLE KEYS */;
INSERT INTO `tblbilldetail8` VALUES (1,1,7),(2,2,8),(3,3,9),(4,4,10),(5,5,11),(6,6,12),(7,7,13),(8,8,14),(9,9,15),(10,10,16),(11,11,17),(12,12,18),(13,13,19),(14,14,20),(15,15,21),(16,16,22),(17,17,23),(18,18,24),(19,19,25),(20,20,26),(21,21,27),(22,22,28),(23,23,29),(24,24,30),(25,25,31),(26,26,32),(27,27,33),(28,28,34),(29,29,35),(30,30,36),(31,31,37),(32,32,38),(33,33,39),(34,34,40),(35,35,41),(36,36,42),(37,37,43),(38,38,44),(39,39,45),(40,40,46),(41,41,47),(42,42,48),(43,43,49),(44,44,50),(45,45,51),(46,46,52),(47,47,53),(48,48,54),(49,49,55),(50,50,56),(51,51,57),(52,52,58),(53,53,59),(54,54,60),(55,55,61),(56,56,62),(57,57,63),(58,58,64),(59,59,65),(60,60,66),(61,61,67),(62,62,68),(63,63,69),(64,64,70),(65,65,71),(66,66,72),(67,67,73),(68,68,74),(69,69,75),(70,70,76),(71,71,77),(72,72,78),(73,73,79),(74,74,80),(75,75,81),(76,76,82),(77,77,83),(78,78,84),(79,79,85),(80,80,86),(81,81,87),(82,82,88),(83,83,89),(84,84,90),(85,85,91),(86,86,92),(87,87,93),(88,88,94),(89,89,95),(90,90,96);
/*!40000 ALTER TABLE `tblbilldetail8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomer8`
--

DROP TABLE IF EXISTS `tblcustomer8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomer8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tblMember8id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblMember8id` (`tblMember8id`),
  CONSTRAINT `tblcustomer8_ibfk_1` FOREIGN KEY (`tblMember8id`) REFERENCES `tblmember8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer8`
--

LOCK TABLES `tblcustomer8` WRITE;
/*!40000 ALTER TABLE `tblcustomer8` DISABLE KEYS */;
INSERT INTO `tblcustomer8` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `tblcustomer8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblimportreceiptdetails8`
--

DROP TABLE IF EXISTS `tblimportreceiptdetails8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblimportreceiptdetails8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soLuongNhap` int NOT NULL,
  `donGiaNhap` int NOT NULL,
  `tblSparePart8id` int NOT NULL,
  `tblWarehouseReceipt8id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tblSparePart8id` (`tblSparePart8id`),
  KEY `tblWarehouseReceipt8id` (`tblWarehouseReceipt8id`),
  CONSTRAINT `tblimportreceiptdetails8_ibfk_1` FOREIGN KEY (`tblSparePart8id`) REFERENCES `tblsparepart8` (`id`),
  CONSTRAINT `tblimportreceiptdetails8_ibfk_2` FOREIGN KEY (`tblWarehouseReceipt8id`) REFERENCES `tblwarehousereceipt8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblimportreceiptdetails8`
--

LOCK TABLES `tblimportreceiptdetails8` WRITE;
/*!40000 ALTER TABLE `tblimportreceiptdetails8` DISABLE KEYS */;
INSERT INTO `tblimportreceiptdetails8` VALUES (1,100,84000,1,1),(2,100,63000,4,1),(3,100,595000,7,1),(4,100,105000,10,1),(5,100,126000,2,2),(6,100,126000,5,2),(7,100,280000,8,2),(8,100,154000,11,2),(9,100,245000,3,3),(10,100,875000,6,3),(11,100,84000,9,3),(12,100,70000,12,3),(13,50,84000,1,4),(14,50,63000,4,4),(15,50,595000,7,4),(16,50,105000,10,4),(17,50,126000,2,5),(18,50,126000,5,5),(19,50,280000,8,5),(20,50,154000,11,5),(21,50,245000,3,6),(22,50,875000,6,6),(23,50,84000,9,6),(24,50,70000,12,6);
/*!40000 ALTER TABLE `tblimportreceiptdetails8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmanagementstaff8`
--

DROP TABLE IF EXISTS `tblmanagementstaff8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmanagementstaff8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tblStaff8id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblStaff8id` (`tblStaff8id`),
  CONSTRAINT `tblmanagementstaff8_ibfk_1` FOREIGN KEY (`tblStaff8id`) REFERENCES `tblstaff8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmanagementstaff8`
--

LOCK TABLES `tblmanagementstaff8` WRITE;
/*!40000 ALTER TABLE `tblmanagementstaff8` DISABLE KEYS */;
INSERT INTO `tblmanagementstaff8` VALUES (1,1),(2,9);
/*!40000 ALTER TABLE `tblmanagementstaff8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmember8`
--

DROP TABLE IF EXISTS `tblmember8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmember8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `taiKhoan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoTen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vaiTro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmember8`
--

LOCK TABLES `tblmember8` WRITE;
/*!40000 ALTER TABLE `tblmember8` DISABLE KEYS */;
INSERT INTO `tblmember8` VALUES (1,'khachhang_mau','Mau123456!','Nguyễn Văn A','0900000001','khachhang.mau@example.com','USER'),(2,'demo_kh_001','Demo123!','Nguyễn Văn An','0900000101','demo_kh_001@example.com','USER'),(3,'demo_kh_002','Demo123!','Trần Thị Bình','0900000102','demo_kh_002@example.com','USER'),(4,'demo_kh_003','Demo123!','Lê Minh Cường','0900000103','demo_kh_003@example.com','USER'),(5,'demo_kh_004','Demo123!','Phạm Thu Dung','0900000104','demo_kh_004@example.com','USER'),(6,'demo_kh_005','Demo123!','Hoàng Đức Hải','0900000105','demo_kh_005@example.com','USER'),(7,'demo_kh_006','Demo123!','Vũ Thị Hạnh','0900000106','demo_kh_006@example.com','USER'),(8,'demo_kh_007','Demo123!','Đặng Quang Huy','0900000107','demo_kh_007@example.com','USER'),(9,'demo_kh_008','Demo123!','Bùi Ngọc Lan','0900000108','demo_kh_008@example.com','USER'),(10,'demo_kh_009','Demo123!','Đỗ Thành Long','0900000109','demo_kh_009@example.com','USER'),(11,'demo_kh_010','Demo123!','Hồ Thị Mai','0900000110','demo_kh_010@example.com','USER'),(12,'demo_kh_011','Demo123!','Ngô Anh Nam','0900000111','demo_kh_011@example.com','USER'),(13,'demo_kh_012','Demo123!','Dương Bảo Ngọc','0900000112','demo_kh_012@example.com','USER'),(14,'demo_kh_013','Demo123!','Lý Minh Phong','0900000113','demo_kh_013@example.com','USER'),(15,'demo_kh_014','Demo123!','Trịnh Thu Phương','0900000114','demo_kh_014@example.com','USER'),(16,'demo_kh_015','Demo123!','Đinh Văn Quân','0900000115','demo_kh_015@example.com','USER'),(17,'demo_kh_016','Demo123!','Mai Thị Thảo','0900000116','demo_kh_016@example.com','USER'),(18,'demo_kh_017','Demo123!','Tạ Đức Thành','0900000117','demo_kh_017@example.com','USER'),(19,'demo_kh_018','Demo123!','Cao Minh Tuấn','0900000118','demo_kh_018@example.com','USER'),(20,'demo_kh_019','Demo123!','Phan Hoàng Việt','0900000119','demo_kh_019@example.com','USER'),(21,'demo_ql01','Demo123!','Quản lý mẫu','0900000201','demo_ql01@example.com','ADMIN'),(22,'demo_bh01','Demo123!','Nhân viên bán hàng mẫu 1','0900000202','demo_bh01@example.com','STAFF'),(23,'demo_bh02','Demo123!','Nhân viên bán hàng mẫu 2','0900000203','demo_bh02@example.com','STAFF'),(24,'demo_kho01','Demo123!','Nhân viên kho mẫu','0900000204','demo_kho01@example.com','STAFF'),(25,'demo_kt01','Demo123!','Kỹ thuật viên mẫu 1','0900000205','demo_kt01@example.com','STAFF'),(26,'demo_kt02','Demo123!','Kỹ thuật viên mẫu 2','0900000206','demo_kt02@example.com','STAFF'),(27,'demo_kt03','Demo123!','Kỹ thuật viên mẫu 3','0900000207','demo_kt03@example.com','STAFF'),(28,'demo_kt04','Demo123!','Kỹ thuật viên mẫu 4','0900000208','demo_kt04@example.com','STAFF'),(29,'anhphuc','123','Anh Phúc','0941539882','wellgainflex@gmail.com','ADMIN');
/*!40000 ALTER TABLE `tblmember8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsalestaff8`
--

DROP TABLE IF EXISTS `tblsalestaff8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsalestaff8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tblStaff8id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblStaff8id` (`tblStaff8id`),
  CONSTRAINT `tblsalestaff8_ibfk_1` FOREIGN KEY (`tblStaff8id`) REFERENCES `tblstaff8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsalestaff8`
--

LOCK TABLES `tblsalestaff8` WRITE;
/*!40000 ALTER TABLE `tblsalestaff8` DISABLE KEYS */;
INSERT INTO `tblsalestaff8` VALUES (1,2),(2,3);
/*!40000 ALTER TABLE `tblsalestaff8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservice8`
--

DROP TABLE IF EXISTS `tblservice8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblservice8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `maDV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenDV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donGia` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservice8`
--

LOCK TABLES `tblservice8` WRITE;
/*!40000 ALTER TABLE `tblservice8` DISABLE KEYS */;
INSERT INTO `tblservice8` VALUES (6,'DV001','Thay dầu',150000),(7,'DV002','Bảo dưỡng định kỳ',300000),(8,'DV003','Kiểm tra tổng quát',100000),(9,'DV004','Sửa chữa phanh',200000),(10,'DV005','Vệ sinh xe',50000),(11,'DV006','Thay lọc dầu',80000),(12,'DV007','Vệ sinh kim phun',250000),(13,'DV008','Kiểm tra hệ thống điện',120000),(14,'DV009','Cân bằng động',200000),(15,'DV010','Cân chỉnh thước lái',350000),(16,'DV011','Bảo dưỡng điều hòa',450000),(17,'DV012','Thay má phanh',180000),(18,'DV013','Thay ắc quy',100000),(19,'DV014','Kiểm tra động cơ',200000),(20,'DV015','Đánh bóng thân xe',500000);
/*!40000 ALTER TABLE `tblservice8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservicedetail8`
--

DROP TABLE IF EXISTS `tblservicedetail8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblservicedetail8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thanhTien` int NOT NULL,
  `tblService8id` int NOT NULL,
  `tblServiceRequestReceipt8id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tblService8id` (`tblService8id`),
  KEY `tblServiceRequestReceipt8id` (`tblServiceRequestReceipt8id`),
  CONSTRAINT `tblservicedetail8_ibfk_1` FOREIGN KEY (`tblService8id`) REFERENCES `tblservice8` (`id`),
  CONSTRAINT `tblservicedetail8_ibfk_2` FOREIGN KEY (`tblServiceRequestReceipt8id`) REFERENCES `tblservicerequestreceipt8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservicedetail8`
--

LOCK TABLES `tblservicedetail8` WRITE;
/*!40000 ALTER TABLE `tblservicedetail8` DISABLE KEYS */;
INSERT INTO `tblservicedetail8` VALUES (1,200000,9,6),(2,150000,6,7),(3,300000,7,8),(4,180000,17,8),(5,100000,8,9),(6,200000,14,9),(7,450000,16,9),(8,200000,9,10),(9,50000,10,11),(10,500000,20,11),(11,80000,11,12),(12,100000,18,12),(13,300000,7,12),(14,250000,12,13),(15,120000,13,14),(16,500000,20,14),(17,200000,14,15),(18,350000,15,15),(19,120000,13,15),(20,350000,15,16),(21,450000,16,17),(22,300000,7,17),(23,180000,17,18),(24,200000,14,18),(25,120000,13,18),(26,100000,18,19),(27,200000,19,20),(28,100000,18,20),(29,500000,20,21),(30,120000,13,21),(31,80000,11,21),(32,150000,6,22),(33,300000,7,23),(34,450000,16,23),(35,100000,8,24),(36,350000,15,24),(37,250000,12,24),(38,200000,9,25),(39,50000,10,26),(40,120000,13,26),(41,80000,11,27),(42,120000,13,27),(43,200000,9,27),(44,250000,12,28),(45,120000,13,29),(46,350000,15,29),(47,200000,14,30),(48,200000,19,30),(49,180000,17,30),(50,350000,15,31),(51,450000,16,32),(52,180000,17,32),(53,180000,17,33),(54,300000,7,33),(55,80000,11,33),(56,100000,18,34),(57,200000,19,35),(58,150000,6,35),(59,500000,20,36),(60,300000,7,36),(61,100000,8,36),(62,150000,6,37),(63,300000,7,38),(64,200000,19,38),(65,100000,8,39),(66,200000,14,39),(67,50000,10,39),(68,200000,9,40),(69,50000,10,41),(70,120000,13,41),(71,80000,11,42),(72,450000,16,42),(73,350000,15,42),(74,250000,12,43),(75,120000,13,44),(76,100000,18,44),(77,200000,14,45),(78,200000,19,45),(79,300000,7,45),(80,350000,15,46),(81,450000,16,47),(82,200000,19,47),(83,180000,17,48),(84,200000,9,48),(85,350000,15,48),(86,100000,18,49),(87,200000,19,50),(88,450000,16,50),(89,500000,20,51),(90,200000,14,51),(91,200000,9,51),(92,150000,6,52),(93,300000,7,53),(94,100000,8,53),(95,100000,8,54),(96,80000,11,54),(97,150000,6,54),(98,200000,9,55),(99,50000,10,56),(100,100000,8,56),(101,80000,11,57),(102,180000,17,57),(103,50000,10,57),(104,250000,12,58),(105,120000,13,59),(106,150000,6,59),(107,200000,14,60),(108,120000,13,60),(109,50000,10,60),(110,350000,15,61),(111,450000,16,62),(112,50000,10,62),(113,180000,17,63),(114,100000,8,63),(115,50000,10,63),(116,100000,18,64),(117,200000,19,65),(118,80000,11,65),(119,500000,20,66),(120,200000,19,66),(121,120000,13,66),(122,150000,6,67),(123,300000,7,68),(124,100000,18,68),(125,100000,8,69),(126,150000,6,69),(127,500000,20,69),(128,200000,9,70),(129,50000,10,71),(130,200000,9,71),(131,80000,11,72),(132,50000,10,72),(133,200000,14,72),(134,250000,12,73),(135,120000,13,74),(136,100000,8,74),(137,200000,14,75),(138,80000,11,75),(139,200000,19,75),(140,350000,15,76),(141,450000,16,77),(142,500000,20,77),(143,180000,17,78),(144,200000,9,78),(145,200000,14,78),(146,100000,18,79),(147,200000,19,80),(148,300000,7,80),(149,500000,20,81),(150,350000,15,81),(151,180000,17,81),(152,150000,6,82),(153,300000,7,83),(154,100000,18,83),(155,100000,8,84),(156,500000,20,84),(157,250000,12,84),(158,200000,9,85),(159,50000,10,86),(160,500000,20,86),(161,80000,11,87),(162,500000,20,87),(163,200000,19,87),(164,250000,12,88),(165,120000,13,89),(166,200000,19,89),(167,200000,14,90),(168,120000,13,90),(169,180000,17,90),(170,350000,15,91),(171,450000,16,92),(172,150000,6,92),(173,180000,17,93),(174,120000,13,93),(175,450000,16,93),(176,100000,18,94),(177,200000,19,95),(178,300000,7,95),(179,500000,20,96),(180,50000,10,96),(181,450000,16,96);
/*!40000 ALTER TABLE `tblservicedetail8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservicerequestreceipt8`
--

DROP TABLE IF EXISTS `tblservicerequestreceipt8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblservicerequestreceipt8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngayLap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bienSoXe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loaiXe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moTa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tblAppointment8id` int NOT NULL,
  `tblSaleStaff8id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_receipt_appointment8` (`tblAppointment8id`),
  KEY `idx_receipt_salestaff8` (`tblSaleStaff8id`),
  CONSTRAINT `fk_receipt_salestaff8` FOREIGN KEY (`tblSaleStaff8id`) REFERENCES `tblsalestaff8` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tblservicerequestreceipt8_ibfk_1` FOREIGN KEY (`tblAppointment8id`) REFERENCES `tblappointment8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservicerequestreceipt8`
--

LOCK TABLES `tblservicerequestreceipt8` WRITE;
/*!40000 ALTER TABLE `tblservicerequestreceipt8` DISABLE KEYS */;
INSERT INTO `tblservicerequestreceipt8` VALUES (6,'2026-11-04','17A-0938123','Xe máy','Xe bị hỏng',12,NULL),(7,'2026-07-01','30A-10001','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',13,NULL),(8,'2026-07-02','30A-10002','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',14,NULL),(9,'2026-07-03','30A-10003','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',15,NULL),(10,'2026-07-05','30A-10004','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',16,NULL),(11,'2026-07-06','30A-10005','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',17,NULL),(12,'2026-07-08','30A-10006','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',18,NULL),(13,'2026-07-09','30A-10007','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',19,NULL),(14,'2026-07-10','30A-10008','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',20,NULL),(15,'2026-07-12','30A-10009','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',21,NULL),(16,'2026-07-13','30A-10010','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',22,NULL),(17,'2026-07-15','30A-10011','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',23,NULL),(18,'2026-07-16','30A-10012','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',24,NULL),(19,'2026-07-17','30A-10013','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',25,NULL),(20,'2026-07-19','30A-10014','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',26,NULL),(21,'2026-07-20','30A-10015','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',27,NULL),(22,'2026-07-22','30A-10016','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',28,NULL),(23,'2026-07-23','30A-10017','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',29,NULL),(24,'2026-07-25','30A-10018','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',30,NULL),(25,'2026-07-26','30A-10019','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',31,NULL),(26,'2026-07-27','30A-10020','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',32,NULL),(27,'2026-07-29','30A-10001','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',33,NULL),(28,'2026-07-30','30A-10002','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',34,NULL),(29,'2026-08-01','30A-10003','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',35,NULL),(30,'2026-08-02','30A-10004','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',36,NULL),(31,'2026-08-03','30A-10005','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',37,NULL),(32,'2026-08-05','30A-10006','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',38,NULL),(33,'2026-08-06','30A-10007','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',39,NULL),(34,'2026-08-08','30A-10008','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',40,NULL),(35,'2026-08-09','30A-10009','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',41,NULL),(36,'2026-08-11','30A-10010','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',42,NULL),(37,'2026-08-12','30A-10011','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',43,NULL),(38,'2026-08-13','30A-10012','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',44,NULL),(39,'2026-08-15','30A-10013','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',45,NULL),(40,'2026-08-16','30A-10014','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',46,NULL),(41,'2026-08-18','30A-10015','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',47,NULL),(42,'2026-08-19','30A-10016','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',48,NULL),(43,'2026-08-20','30A-10017','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',49,NULL),(44,'2026-08-22','30A-10018','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',50,NULL),(45,'2026-08-23','30A-10019','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',51,NULL),(46,'2026-08-25','30A-10020','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',52,NULL),(47,'2026-08-26','30A-10001','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',53,NULL),(48,'2026-08-28','30A-10002','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',54,NULL),(49,'2026-08-29','30A-10003','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',55,NULL),(50,'2026-08-30','30A-10004','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',56,NULL),(51,'2026-09-01','30A-10005','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',57,NULL),(52,'2026-09-02','30A-10006','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',58,NULL),(53,'2026-09-04','30A-10007','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',59,NULL),(54,'2026-09-05','30A-10008','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',60,NULL),(55,'2026-09-06','30A-10009','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',61,NULL),(56,'2026-09-08','30A-10010','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',62,NULL),(57,'2026-09-09','30A-10011','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',63,NULL),(58,'2026-09-11','30A-10012','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',64,NULL),(59,'2026-09-12','30A-10013','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',65,NULL),(60,'2026-09-14','30A-10014','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',66,NULL),(61,'2026-09-15','30A-10015','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',67,NULL),(62,'2026-09-16','30A-10016','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',68,NULL),(63,'2026-09-18','30A-10017','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',69,NULL),(64,'2026-09-19','30A-10018','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',70,NULL),(65,'2026-09-21','30A-10019','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',71,NULL),(66,'2026-09-22','30A-10020','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',72,NULL),(67,'2026-09-23','30A-10001','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',73,NULL),(68,'2026-09-25','30A-10002','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',74,NULL),(69,'2026-09-26','30A-10003','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',75,NULL),(70,'2026-09-28','30A-10004','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',76,NULL),(71,'2026-09-29','30A-10005','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',77,NULL),(72,'2026-10-01','30A-10006','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',78,NULL),(73,'2026-10-02','30A-10007','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',79,NULL),(74,'2026-10-03','30A-10008','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',80,NULL),(75,'2026-10-05','30A-10009','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',81,NULL),(76,'2026-10-06','30A-10010','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',82,NULL),(77,'2026-10-08','30A-10011','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',83,NULL),(78,'2026-10-09','30A-10012','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',84,NULL),(79,'2026-10-10','30A-10013','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',85,NULL),(80,'2026-10-12','30A-10014','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',86,NULL),(81,'2026-10-13','30A-10015','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',87,NULL),(82,'2026-10-15','30A-10016','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',88,NULL),(83,'2026-10-16','30A-10017','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',89,NULL),(84,'2026-10-18','30A-10018','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',90,NULL),(85,'2026-10-19','30A-10019','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',91,NULL),(86,'2026-10-20','30A-10020','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',92,NULL),(87,'2026-10-22','30A-10001','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',93,NULL),(88,'2026-10-23','30A-10002','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',94,NULL),(89,'2026-10-25','30A-10003','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',95,NULL),(90,'2026-10-26','30A-10004','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',96,NULL),(91,'2026-10-27','30A-10005','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',97,NULL),(92,'2026-10-29','30A-10006','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',98,NULL),(93,'2026-10-30','30A-10007','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',99,NULL),(94,'2026-11-01','30A-10008','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',100,NULL),(95,'2026-11-02','30A-10009','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',101,NULL),(96,'2026-11-04','30A-10010','Ô tô','[Dữ liệu mẫu M2] Bảo dưỡng, kiểm tra và thay thế phụ tùng.',102,NULL);
/*!40000 ALTER TABLE `tblservicerequestreceipt8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsparepart8`
--

DROP TABLE IF EXISTS `tblsparepart8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsparepart8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `maPhuTung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donGia` int NOT NULL,
  `donVi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsparepart8`
--

LOCK TABLES `tblsparepart8` WRITE;
/*!40000 ALTER TABLE `tblsparepart8` DISABLE KEYS */;
INSERT INTO `tblsparepart8` VALUES (1,'PT001','Lọc dầu động cơ',120000,'Cái'),(2,'PT002','Lọc gió động cơ',180000,'Cái'),(3,'PT003','Má phanh',350000,'Bộ'),(4,'PT004','Bugi',90000,'Cái'),(5,'PT005','Dầu động cơ Castrol',180000,'Lít'),(6,'PT006','Lốp xe Michelin',1250000,'Chiếc'),(7,'PT007','Ắc quy',850000,'Bình'),(8,'PT008','Dây curoa',400000,'Sợi'),(9,'PT009','Nước làm mát',120000,'Chai'),(10,'PT010','Bóng đèn pha',150000,'Cái'),(11,'PT011','Gạt mưa',220000,'Bộ'),(12,'PT012','Dầu phanh',100000,'Chai');
/*!40000 ALTER TABLE `tblsparepart8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsparepartdetail8`
--

DROP TABLE IF EXISTS `tblsparepartdetail8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsparepartdetail8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `soLuong` int NOT NULL,
  `donGiaXuat` int NOT NULL,
  `tblSparePart8id` int NOT NULL,
  `tblServiceRequestReceipt8id` int NOT NULL,
  `soLuongSuDung` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tblSparePart8id` (`tblSparePart8id`),
  KEY `tblServiceRequestReceipt8id` (`tblServiceRequestReceipt8id`),
  CONSTRAINT `tblsparepartdetail8_ibfk_1` FOREIGN KEY (`tblSparePart8id`) REFERENCES `tblsparepart8` (`id`),
  CONSTRAINT `tblsparepartdetail8_ibfk_2` FOREIGN KEY (`tblServiceRequestReceipt8id`) REFERENCES `tblservicerequestreceipt8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsparepartdetail8`
--

LOCK TABLES `tblsparepartdetail8` WRITE;
/*!40000 ALTER TABLE `tblsparepartdetail8` DISABLE KEYS */;
INSERT INTO `tblsparepartdetail8` VALUES (1,3,120000,1,7,1),(2,2,180000,2,8,1),(3,2,180000,5,8,4),(4,2,350000,3,9,1),(5,1,120000,1,9,1),(6,3,180000,5,9,4),(7,3,180000,5,11,5),(8,3,150000,10,11,1),(9,1,1250000,6,12,1),(10,2,120000,9,12,1),(11,3,400000,8,12,1),(12,1,850000,7,13,1),(13,2,120000,9,15,2),(14,3,90000,4,15,4),(15,2,180000,2,15,1),(16,1,150000,10,16,1),(17,2,220000,11,17,1),(18,3,100000,12,17,1),(19,3,120000,1,19,1),(20,2,180000,2,20,1),(21,3,120000,9,20,2),(22,3,350000,3,21,1),(23,1,90000,4,21,4),(24,1,400000,8,21,1),(25,3,180000,5,23,5),(26,1,90000,4,23,4),(27,1,1250000,6,24,1),(28,3,120000,9,24,1),(29,2,150000,10,24,2),(30,2,850000,7,25,1),(31,1,120000,9,27,2),(32,3,90000,4,27,4),(33,3,150000,10,27,2),(34,2,150000,10,28,1),(35,3,220000,11,29,1),(36,2,90000,4,29,4),(37,2,120000,1,31,1),(38,1,180000,2,32,1),(39,3,120000,1,32,1),(40,3,350000,3,33,1),(41,3,400000,8,33,1),(42,3,90000,4,33,4),(43,3,180000,5,35,5),(44,2,1250000,6,35,4),(45,2,1250000,6,36,1),(46,3,180000,2,36,1),(47,2,850000,7,36,1),(48,1,850000,7,37,1),(49,2,120000,9,39,2),(50,3,350000,3,39,1),(51,1,180000,2,39,1),(52,3,150000,10,40,1),(53,3,220000,11,41,1),(54,3,180000,2,41,1),(55,1,120000,1,43,1),(56,3,180000,2,44,1),(57,2,220000,11,44,1),(58,3,350000,3,45,1),(59,3,220000,11,45,1),(60,2,150000,10,45,1),(61,2,180000,5,47,5),(62,3,180000,2,47,1),(63,3,1250000,6,48,1),(64,3,180000,5,48,5),(65,1,220000,11,48,1),(66,2,850000,7,49,1),(67,3,120000,9,51,2),(68,3,1250000,6,51,4),(69,1,400000,8,51,1),(70,3,150000,10,52,1),(71,1,220000,11,53,1),(72,3,350000,3,53,1),(73,2,120000,1,55,1),(74,2,180000,2,56,1),(75,2,350000,3,56,2),(76,1,350000,3,57,1),(77,2,90000,4,57,4),(78,1,120000,1,57,1),(79,3,180000,5,59,5),(80,2,1250000,6,59,4),(81,3,1250000,6,60,1),(82,1,120000,9,60,1),(83,2,350000,3,60,2),(84,2,850000,7,61,1),(85,3,120000,9,63,2),(86,1,850000,7,63,1),(87,2,180000,2,63,1),(88,1,150000,10,64,1),(89,2,220000,11,65,1),(90,3,90000,4,65,4),(91,2,120000,1,67,1),(92,3,180000,2,68,1),(93,1,180000,5,68,4),(94,2,350000,3,69,1),(95,1,850000,7,69,1),(96,1,100000,12,69,1),(97,1,180000,5,71,5),(98,2,180000,2,71,1),(99,3,1250000,6,72,1),(100,1,350000,3,72,1),(101,1,220000,11,72,1),(102,2,850000,7,73,1),(103,3,120000,9,75,2),(104,1,400000,8,75,1),(105,3,850000,7,75,1),(106,3,150000,10,76,1),(107,1,220000,11,77,1),(108,2,1250000,6,77,1),(109,3,120000,1,79,1),(110,3,180000,2,80,1),(111,1,180000,5,80,4),(112,2,350000,3,81,1),(113,1,180000,5,81,6),(114,1,120000,1,81,1),(115,1,180000,5,83,5),(116,2,120000,1,83,1),(117,2,1250000,6,84,1),(118,1,100000,12,84,1),(119,2,180000,5,84,6),(120,1,850000,7,85,1),(121,1,120000,9,87,2),(122,3,120000,1,87,1),(123,1,150000,10,87,2),(124,1,150000,10,88,1),(125,3,220000,11,89,1),(126,2,1250000,6,89,1),(127,1,120000,1,91,1),(128,1,180000,2,92,1),(129,1,90000,4,92,4),(130,2,350000,3,93,1),(131,2,120000,1,93,1),(132,1,220000,11,93,1),(133,2,180000,5,95,5),(134,1,90000,4,95,4),(135,3,1250000,6,96,1),(136,2,120000,9,96,1),(137,2,120000,1,96,1);
/*!40000 ALTER TABLE `tblsparepartdetail8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaff8`
--

DROP TABLE IF EXISTS `tblstaff8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblstaff8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tblMember8id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblMember8id` (`tblMember8id`),
  CONSTRAINT `tblstaff8_ibfk_1` FOREIGN KEY (`tblMember8id`) REFERENCES `tblmember8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff8`
--

LOCK TABLES `tblstaff8` WRITE;
/*!40000 ALTER TABLE `tblstaff8` DISABLE KEYS */;
INSERT INTO `tblstaff8` VALUES (1,21),(2,22),(3,23),(4,24),(5,25),(6,26),(7,27),(8,28),(9,29);
/*!40000 ALTER TABLE `tblstaff8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsupplier8`
--

DROP TABLE IF EXISTS `tblsupplier8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsupplier8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsupplier8`
--

LOCK TABLES `tblsupplier8` WRITE;
/*!40000 ALTER TABLE `tblsupplier8` DISABLE KEYS */;
INSERT INTO `tblsupplier8` VALUES (1,'Nhà cung cấp phụ tùng mẫu A','0900000301','demo_supplier_01@example.com'),(2,'Nhà cung cấp phụ tùng mẫu B','0900000302','demo_supplier_02@example.com'),(3,'Nhà cung cấp phụ tùng mẫu C','0900000303','demo_supplier_03@example.com');
/*!40000 ALTER TABLE `tblsupplier8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltechnicalstaff8`
--

DROP TABLE IF EXISTS `tbltechnicalstaff8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltechnicalstaff8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chuyenMon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tblStaff8id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblStaff8id` (`tblStaff8id`),
  CONSTRAINT `tbltechnicalstaff8_ibfk_1` FOREIGN KEY (`tblStaff8id`) REFERENCES `tblstaff8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltechnicalstaff8`
--

LOCK TABLES `tbltechnicalstaff8` WRITE;
/*!40000 ALTER TABLE `tbltechnicalstaff8` DISABLE KEYS */;
INSERT INTO `tbltechnicalstaff8` VALUES (1,'Động cơ',5),(2,'Điện ô tô',6),(3,'Khung gầm',7),(4,'Điều hòa',8);
/*!40000 ALTER TABLE `tbltechnicalstaff8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblwarehousereceipt8`
--

DROP TABLE IF EXISTS `tblwarehousereceipt8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblwarehousereceipt8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngayNhap` date NOT NULL,
  `tblSupplier8id` int NOT NULL,
  `tblWarehouseStaff8id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tblSupplier8id` (`tblSupplier8id`),
  KEY `tblWarehouseStaff8id` (`tblWarehouseStaff8id`),
  CONSTRAINT `tblwarehousereceipt8_ibfk_1` FOREIGN KEY (`tblSupplier8id`) REFERENCES `tblsupplier8` (`id`),
  CONSTRAINT `tblwarehousereceipt8_ibfk_2` FOREIGN KEY (`tblWarehouseStaff8id`) REFERENCES `tblwarehousestaff8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblwarehousereceipt8`
--

LOCK TABLES `tblwarehousereceipt8` WRITE;
/*!40000 ALTER TABLE `tblwarehousereceipt8` DISABLE KEYS */;
INSERT INTO `tblwarehousereceipt8` VALUES (1,'2026-06-25',1,1),(2,'2026-06-25',2,1),(3,'2026-06-25',3,1),(4,'2026-09-01',1,1),(5,'2026-09-01',2,1),(6,'2026-09-01',3,1);
/*!40000 ALTER TABLE `tblwarehousereceipt8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblwarehousestaff8`
--

DROP TABLE IF EXISTS `tblwarehousestaff8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblwarehousestaff8` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tblStaff8id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tblStaff8id` (`tblStaff8id`),
  CONSTRAINT `tblwarehousestaff8_ibfk_1` FOREIGN KEY (`tblStaff8id`) REFERENCES `tblstaff8` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblwarehousestaff8`
--

LOCK TABLES `tblwarehousestaff8` WRITE;
/*!40000 ALTER TABLE `tblwarehousestaff8` DISABLE KEYS */;
INSERT INTO `tblwarehousestaff8` VALUES (1,4);
/*!40000 ALTER TABLE `tblwarehousestaff8` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-16 20:03:14
