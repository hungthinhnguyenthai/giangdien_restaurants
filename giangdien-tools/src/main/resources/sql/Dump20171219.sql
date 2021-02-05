CREATE DATABASE  IF NOT EXISTS `khudichv_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `khudichv_db`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: khudichv_db
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id` varchar(32) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `mini_map` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `business_id` varchar(32) DEFAULT NULL,
  `service_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_area_business_idx` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES ('402881855e9e8169015e9e817bb70000',NULL,NULL,NULL,'test',NULL,NULL),('402881855e9e8592015e9e8596f30000',NULL,NULL,NULL,'test',NULL,NULL);
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `id` varchar(32) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES ('402881855e9f2e78015e9f2e7d6a0000','Coffee',NULL,'Coffee for erveryone',NULL,'/');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `business_id` varchar(32) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `business` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_business_idx` (`business_id`),
  CONSTRAINT `fk_category_business` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` varchar(32) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` varchar(32) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `identification_no` varchar(9) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `date_join` date DEFAULT NULL,
  `date_leave` date DEFAULT NULL,
  `password_encryption` varchar(255) DEFAULT NULL,
  `pinpad_password` varchar(8) DEFAULT NULL,
  `pinpad_password_encryption` varchar(255) DEFAULT NULL,
  `account_non_locked` tinyint(1) DEFAULT NULL,
  `tries` int(11) DEFAULT NULL,
  `last_tried_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_UNIQUE` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('01','superadmin','17c4520f6cfd1ab53d8745e84681eb49','super','admin','',1,'','','','',NULL,NULL,NULL,'2ecddb45fa33108c1915b0e1cd73319624d8be5b',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_activity`
--

DROP TABLE IF EXISTS `employee_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_activity` (
  `id` varchar(32) NOT NULL,
  `employee_id` varchar(32) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_activity_employee_idx` (`employee_id`),
  CONSTRAINT `fk_employee_activity_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_activity`
--

LOCK TABLES `employee_activity` WRITE;
/*!40000 ALTER TABLE `employee_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_activity_detail`
--

DROP TABLE IF EXISTS `employee_activity_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_activity_detail` (
  `id` varchar(32) NOT NULL,
  `order_id` varchar(32) DEFAULT NULL,
  `employee_activity_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_activity_detail_order_idx` (`order_id`),
  KEY `fk_employee_activity_detail_activity_idx` (`employee_activity_id`),
  CONSTRAINT `fk_employee_activity_detail_activity` FOREIGN KEY (`employee_activity_id`) REFERENCES `employee_activity` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_activity_detail_order` FOREIGN KEY (`order_id`) REFERENCES `order_activity` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_activity_detail`
--

LOCK TABLES `employee_activity_detail` WRITE;
/*!40000 ALTER TABLE `employee_activity_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_activity_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_role`
--

DROP TABLE IF EXISTS `employee_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_role` (
  `id` varchar(32) NOT NULL,
  `code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `employee_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_role_employee_idx` (`employee_id`),
  CONSTRAINT `fk_employee_role_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_role`
--

LOCK TABLES `employee_role` WRITE;
/*!40000 ALTER TABLE `employee_role` DISABLE KEYS */;
INSERT INTO `employee_role` VALUES ('01','SUPER_ADMIN','Super User','01'),('02','ANONYMOUS','ANONYMOUS','01');
/*!40000 ALTER TABLE `employee_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` varchar(32) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `id` varchar(32) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import` (
  `id` varchar(32) NOT NULL,
  `employee_id` varchar(32) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_import_employee_idx` (`employee_id`),
  CONSTRAINT `fk_import_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import`
--

LOCK TABLES `import` WRITE;
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
/*!40000 ALTER TABLE `import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_detail`
--

DROP TABLE IF EXISTS `import_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_detail` (
  `id` varchar(32) NOT NULL,
  `material_id` varchar(32) NOT NULL,
  `import_id` varchar(32) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_import_detail_material_idx` (`material_id`),
  KEY `fk_import_detail_parent_idx` (`import_id`),
  CONSTRAINT `fk_import_detail_material` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_import_detail_parent` FOREIGN KEY (`import_id`) REFERENCES `import` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_detail`
--

LOCK TABLES `import_detail` WRITE;
/*!40000 ALTER TABLE `import_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internationalization`
--

DROP TABLE IF EXISTS `internationalization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `internationalization` (
  `id` varchar(32) NOT NULL,
  `key_code` varchar(45) NOT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL,
  `group_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`key_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internationalization`
--

LOCK TABLES `internationalization` WRITE;
/*!40000 ALTER TABLE `internationalization` DISABLE KEYS */;
INSERT INTO `internationalization` VALUES ('0ac7c62c744145849d579b02daa38503','SECONDARY_BUSINESS_ADDR_PROVINCE','Dong Nai Province','en','BASE_INFO'),('0e6589ee8e054c8b9d33c0f280b76039','BUSINESS_SKYPE','#','en','BASE_INFO'),('112827b24be9473aabd79b54cab6b83c','SECONDARY_BUSINESS_ADDR_COUNTRY','Vietnam','en','BASE_INFO'),('18fe382b3cd54dff9b992c2ba628b492','SECONDARY_OWNER_PHONE','(+84) 0908 098 278','en','BASE_INFO'),('1970192b977945fba7ab29fe6a1e3ec3','BUSINESS_MAP_COORDINATES_X','106.9835408','en','BASE_INFO'),('2104f9972ac947d9877167c06a5b6d0b','OWNER_PHONE','(+84) 0908 098 278','en','BASE_INFO'),('22bab9b0977a42aaa8e708f13fd2dc94','ADDR_WARD','value','en','BASE_INFO'),('36e38fb945914a3c998b1220be83bf33','STORE_NAME','Giang Dien','en','BASE_INFO'),('397d1feeb10d496a809dabe31302ec6f','SECONDARY_BUSINESS_ADDR_STREET','172 3/2 Street','en','BASE_INFO'),('3c59e4cdf880418487c5e6d83c5a0019','BUSINESS_NAME','Da Khuc | Food &amp; Beverage Concepts','en','BASE_INFO'),('3d47003797e2437da2320e9dae52f55c','BUSINESS_CLOSE_TIME','22:00','en','BASE_INFO'),('499cc46677b34d1f9dbf555ec5573dfa','OWNER_GENDER','male','en','BASE_INFO'),('4be54b0a4114406a96ae115e3da4189f','BUSINESS_OPEN_TIME','07:00','en','BASE_INFO'),('5375469b3d1d4fb883dcc878f7f5a3c0','SECONDARY_BUSINESS_ADDR_WARD','','en','BASE_INFO'),('53c6075e1aed4ed3872a9eba0e99734c','BUSINESS_FB_URL','https://www.facebook.com/dakhucgiangdien','en','BASE_INFO'),('56d6e95d3b7e44e19cad53eb9e2475df','SECONDARY_OWNER_NAME','Phuc','en','BASE_INFO'),('5f2314dc361f496d9aeb70016dcbf1f4','BUSINESS_MAP_COORDINATES_Y','10.9026093','en','BASE_INFO'),('60ccd9eff41f4b4698b4ed880597c396','OWNER_NAME','Huu Duc','en','BASE_INFO'),('70937c4e7ef04ad2aebf9e2221d28a6c','OWNER_EMAIL','ducnh@khudichvugiangdien.com','en','BASE_INFO'),('773f10f4485f418eb63770452bf1ea98','ADDR_PROVINCE','Dong Nai','en','BASE_INFO'),('7e1b254e49764b71ae27fd3c26581456','ADDR_STREET','AH 1, Giang Dien Industrial Park','en','BASE_INFO'),('8c7614d7166c40a7842238a9fb267e21','SECONDARY_BUSINESS_ADDR_CITY','Trang Bom District','en','BASE_INFO'),('9d0ef77206d440fd874c3eb7c5c23e10','SECONDARY_MAP_COORDINATES_X','10.949870','en','BASE_INFO'),('9dae0ce0e7d84f4487ab2f97488c1fa5','SECONDARY_BUSINESS_NAME','DA KHUC COFFEE','en','BASE_INFO'),('a0ebeaa4514f4aa9b257b59783298c0b','BUSINESS_SLOGAN','Get the best dining experience','en','BASE_INFO'),('a32a47edc552492c9fe34e5428fa6e77','ADDR_CITY','Trang Bom District','en','BASE_INFO'),('a51ceace1f9e4c6b8d6a2b45a6e40d7d','BUSINESS_TWITTER_URL','#','en','BASE_INFO'),('a5c108a866ed4a80a51c633b319ecf79','BUSINESS_SECTOR','Coffee & Restaurant','en','BASE_INFO'),('a6a1b93154cc4c1d8eaa37a0e0708008','BUSINESS_GG_URL','#','en','BASE_INFO'),('bbf2eeb5e4844dd0bee857855e4614e5','BUSINESS_PHONE','(+84) 0908 098 278','en','BASE_INFO'),('c601a2ea7548441a956df7c3ee520eae','ADDR_COUNTRY','VN','en','BASE_INFO'),('cc6e1428762e49569ab95ce458b16756','SECONDARY_OWNER_EMAIL','phuc@dakhuccafe.com','en','BASE_INFO'),('cced7dec48044ea881a66357bf5740c2','SECONDARY_MAP_COORDINATES_Y','10.949870','en','BASE_INFO'),('e8b6e344ae4947f18f344ed941777397','BUSINESS_GG_ANALYTIC_ID','','en','BASE_INFO'),('eac0c449ffce460a9cbea00a0ebcc81d','SECONDARY_OWNER_GENDER','female','en','BASE_INFO'),('f4a88378bd5d468f96d8faea31ae97f7','BUSINESS_DESC','We introduce new cultures to visitors through cuisines of various countries, offering a special dish for everyone regardless of their food preferences.','en','BASE_INFO');
/*!40000 ALTER TABLE `internationalization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unit` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES ('01','Coffee Bean','kg');
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_activity`
--

DROP TABLE IF EXISTS `order_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_activity` (
  `id` varchar(32) NOT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `table_id` varchar(32) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_activity_customer_idx` (`user_id`),
  CONSTRAINT `fk_order_activity_customer` FOREIGN KEY (`user_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_activity`
--

LOCK TABLES `order_activity` WRITE;
/*!40000 ALTER TABLE `order_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_activity_detail`
--

DROP TABLE IF EXISTS `order_activity_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_activity_detail` (
  `id` varchar(32) NOT NULL,
  `order_id` varchar(32) DEFAULT NULL,
  `product_id` varchar(32) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_activity_detail_order_idx` (`order_id`),
  KEY `fk_order_activity_detail_product_idx` (`product_id`),
  CONSTRAINT `fk_order_activity_detail_order` FOREIGN KEY (`order_id`) REFERENCES `order_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_activity_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_activity_detail`
--

LOCK TABLES `order_activity_detail` WRITE;
/*!40000 ALTER TABLE `order_activity_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_activity_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` varchar(32) NOT NULL,
  `sub_category_id` varchar(32) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_category_idx` (`sub_category_id`),
  CONSTRAINT `fk_product_sub_category` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `id` varchar(32) NOT NULL,
  `product_id` varchar(32) DEFAULT NULL,
  `sub_category_id` varchar(32) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `id` varchar(32) NOT NULL,
  `product_id` varchar(32) NOT NULL,
  `store_id` varchar(32) NOT NULL,
  `unit` varchar(10) DEFAULT NULL,
  `weigh` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recipe_product_idx` (`product_id`),
  KEY `fk_recipe_store_idx` (`store_id`),
  CONSTRAINT `fk_recipe_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recipe_store` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_image`
--

DROP TABLE IF EXISTS `reference_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_image` (
  `id` varchar(32) NOT NULL,
  `reference_id` varchar(32) NOT NULL,
  `image_id` varchar(32) NOT NULL,
  `type_flag` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference_id_UNIQUE` (`reference_id`),
  UNIQUE KEY `image_id_UNIQUE` (`image_id`),
  UNIQUE KEY `type_flag_UNIQUE` (`type_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_image`
--

LOCK TABLES `reference_image` WRITE;
/*!40000 ALTER TABLE `reference_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `reference_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `id` varchar(32) NOT NULL,
  `material_id` varchar(32) NOT NULL,
  `import_id` varchar(32) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `unit` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_store_material_idx` (`material_id`),
  KEY `fk_store_import_idx` (`import_id`),
  CONSTRAINT `fk_store_import` FOREIGN KEY (`import_id`) REFERENCES `import` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_store_material` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_category`
--

DROP TABLE IF EXISTS `sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_category` (
  `id` varchar(32) NOT NULL,
  `category_id` varchar(32) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sub_category_category_idx` (`category_id`),
  CONSTRAINT `fk_sub_category_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_category`
--

LOCK TABLES `sub_category` WRITE;
/*!40000 ALTER TABLE `sub_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_activity`
--

DROP TABLE IF EXISTS `table_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_activity` (
  `id` varchar(32) NOT NULL,
  `table_id` varchar(32) NOT NULL,
  `order_id` varchar(32) NOT NULL,
  `date` date DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`table_id`,`order_id`),
  KEY `fk_table_activity_table_idx` (`table_id`),
  KEY `fk_table_activity_order_idx` (`order_id`),
  CONSTRAINT `fk_table_activity_order` FOREIGN KEY (`order_id`) REFERENCES `order_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_table_activity_table` FOREIGN KEY (`table_id`) REFERENCES `table_location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_activity`
--

LOCK TABLES `table_activity` WRITE;
/*!40000 ALTER TABLE `table_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_location`
--

DROP TABLE IF EXISTS `table_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_location` (
  `id` varchar(32) NOT NULL,
  `area_id` varchar(32) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `number_of_seats` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `picture` varchar(1000) DEFAULT NULL,
  `posX` double DEFAULT NULL,
  `posY` double DEFAULT NULL,
  `zoom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_location`
--

LOCK TABLES `table_location` WRITE;
/*!40000 ALTER TABLE `table_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-19 23:49:14
