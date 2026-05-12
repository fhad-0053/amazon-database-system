CREATE DATABASE  IF NOT EXISTS `amazon` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `amazon`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: amazon
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Khaled','khaled','hjkl345jk3','m'),(2,'Fahd','Ali','fahd1@gmail.com','m'),(3,'Sara','Ahmed','sara2@gmail.com','f'),(4,'Omar','Khaled','omar3@gmail.com','m'),(5,'Nora','Saad','nora4@gmail.com','f'),(6,'Ali','Hassan','ali5@gmail.com','m'),(7,'Mona','Fahad','mona6@gmail.com','f'),(8,'Khaled','Omar','khaled7@gmail.com','m'),(9,'Lama','Saad','lama8@gmail.com','f'),(10,'Yousef','Ali','yousef9@gmail.com','m'),(11,'Huda','Ahmed','huda10@gmail.com','f'),(12,'Saad','Nasser','saad11@gmail.com','m'),(13,'Reem','Khaled','reem12@gmail.com','f'),(14,'Majed','Fahd','majed13@gmail.com','m'),(15,'Nada','Ali','nada14@gmail.com','f'),(16,'Abdullah','Omar','abdullah15@gmail.com','m');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orders_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `customer_id` (`customer_id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `supplair` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,2,1,'Riyadh'),(2,2,3,2,'Jeddah'),(3,3,1,3,'Dammam'),(4,4,5,4,'Makkah'),(5,5,7,5,'Riyadh'),(6,6,4,6,'Taif'),(7,7,6,7,'Jeddah'),(8,8,8,8,'Riyadh'),(9,9,9,9,'Dammam'),(10,10,10,10,'Riyadh'),(11,11,11,11,'Jeddah'),(12,12,12,12,'Makkah'),(13,13,13,13,'Riyadh'),(14,14,14,14,'Dammam'),(15,15,15,15,'Jeddah'),(16,1,5,16,'Riyadh'),(17,2,6,17,'Jeddah'),(18,3,7,18,'Dammam'),(19,4,8,19,'Riyadh'),(20,5,9,20,'Makkah');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name_product` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Laptop'),(2,'Phone'),(3,'Tablet'),(4,'Headphones'),(5,'Keyboard'),(6,'Mouse'),(7,'Monitor'),(8,'Printer'),(9,'Camera'),(10,'Smartwatch'),(11,'TV'),(12,'Speaker'),(13,'Charger'),(14,'Router'),(15,'USB Cable');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplair`
--

DROP TABLE IF EXISTS `supplair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplair` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplair`
--

LOCK TABLES `supplair` WRITE;
/*!40000 ALTER TABLE `supplair` DISABLE KEYS */;
INSERT INTO `supplair` VALUES (1,'Apple Supplier'),(2,'Samsung Supplier'),(3,'Dell Supplier'),(4,'HP Supplier'),(5,'Lenovo Supplier'),(6,'Sony Supplier'),(7,'LG Supplier'),(8,'Asus Supplier'),(9,'Acer Supplier'),(10,'Huawei Supplier'),(11,'Xiaomi Supplier'),(12,'Microsoft Supplier'),(13,'Intel Supplier'),(14,'AMD Supplier'),(15,'Logitech Supplier'),(16,'Canon Supplier'),(17,'Nikon Supplier'),(18,'Panasonic Supplier'),(19,'Philips Supplier'),(20,'Bosch Supplier');
/*!40000 ALTER TABLE `supplair` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-12 19:18:34
