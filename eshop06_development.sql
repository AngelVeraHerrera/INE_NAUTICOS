-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: eshop06_development
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.13.10.1

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cif` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_url_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_url_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_url_file_size` int(11) DEFAULT NULL,
  `logo_url_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,1919102131,'Olympia',NULL,NULL,NULL,NULL,'2015-04-27 15:24:28','2015-04-27 15:24:28'),(2,1918929,'Fun Yak Boats',NULL,NULL,NULL,NULL,'2015-04-27 15:28:07','2015-04-27 15:28:07'),(3,1717212,'Peruanos','bkg-blu.jpg','image/jpeg',289940,'2015-05-03 18:59:48','2015-04-27 15:31:47','2015-05-03 18:59:49');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (9,10,2,100,1,'2015-05-09 15:04:00','2015-05-09 15:04:00'),(10,6,2,12,1,'2015-05-09 15:04:06','2015-05-09 15:04:06'),(11,2,2,312,1,'2015-05-09 15:04:11','2015-05-09 15:04:11'),(12,10,8,100,1,'2015-05-17 16:40:19','2015-05-17 16:40:19'),(26,1,12,18,1,'2015-05-25 17:22:43','2015-05-25 17:22:43'),(29,6,16,12,1,'2015-05-27 11:44:56','2015-05-27 11:44:56');
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,'2015-05-09 12:00:14','2015-05-09 12:00:14'),(2,'2015-05-09 12:00:15','2015-05-09 12:00:15'),(3,'2015-05-09 15:23:07','2015-05-09 15:23:07'),(4,'2015-05-09 15:23:08','2015-05-09 15:23:08'),(5,'2015-05-11 16:08:46','2015-05-11 16:08:46'),(6,'2015-05-11 16:08:47','2015-05-11 16:08:47'),(7,'2015-05-17 15:07:27','2015-05-17 15:07:27'),(8,'2015-05-17 15:07:30','2015-05-17 15:07:30'),(9,'2015-05-25 07:56:33','2015-05-25 07:56:33'),(10,'2015-05-25 07:56:34','2015-05-25 07:56:34'),(11,'2015-05-25 12:14:26','2015-05-25 12:14:26'),(12,'2015-05-25 12:14:27','2015-05-25 12:14:27'),(13,'2015-05-26 06:57:38','2015-05-26 06:57:38'),(14,'2015-05-26 06:57:39','2015-05-26 06:57:39'),(15,'2015-05-27 11:40:05','2015-05-27 11:40:05'),(16,'2015-05-27 11:40:06','2015-05-27 11:40:06'),(17,'2015-05-29 21:11:59','2015-05-29 21:11:59'),(18,'2015-05-29 21:12:01','2015-05-29 21:12:01'),(19,'2015-06-01 09:01:06','2015-06-01 09:01:06'),(20,'2015-06-01 09:01:08','2015-06-01 09:01:08');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalogs`
--

DROP TABLE IF EXISTS `catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalogs`
--

LOCK TABLES `catalogs` WRITE;
/*!40000 ALTER TABLE `catalogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_items_orders` (`order_id`),
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (3,10,3,100,1,'2015-05-25 16:16:11','2015-05-25 16:16:11'),(4,10,4,100,1,'2015-05-25 17:02:15','2015-05-25 17:02:15'),(5,10,5,100,1,'2015-05-25 17:02:59','2015-05-25 17:02:59'),(6,11,6,144,1,'2015-05-27 11:44:09','2015-05-27 11:44:09'),(7,10,6,100,1,'2015-05-27 11:44:09','2015-05-27 11:44:09');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `error_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (3,'carlos.darth@gmail.com','645482111','Carlos','Contreras','Pedro de Matheu no. 7','Puerto Real','11510','ES','127.0.0.1','cerrado',NULL,'2015-05-25 16:16:11','2015-05-27 11:55:06'),(4,'carlos.darth@gmail.com','645482666','Carlos','Contreras','Pedro de Matheu no. 7','Puerto Real','11510','ES','127.0.0.1','fallido','Excepción no controlada: undefined method `cerrado?\' for #<Order:0x0000000536b410>','2015-05-25 17:02:15','2015-05-25 17:02:15'),(5,'carlos.darth@gmail.com','645482666','Carlos','Contreras','Pedro de Matheu no. 7','Puerto Real','11510','ES','127.0.0.1','cerrado',NULL,'2015-05-25 17:02:59','2015-05-27 12:11:06'),(6,'carlos.darth@gmail.com','645482444','Carlos','Contreras','Pedro de Matheu no. 7','Puerto Real','11510','ES','127.0.0.1','procesado',NULL,'2015-05-27 11:44:09','2015-05-27 11:44:17');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `product_img_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_img_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_img_file_size` int(11) DEFAULT NULL,
  `product_img_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_brands_products` (`brand_id`),
  CONSTRAINT `fk_brands_products` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'Chaleco',18,'Ayuda la flotabilidad para deportes náuticos\r\n\r\n30-50 kg TALLA S\r\nFlotador delantero monobloque, flotador dorsal en 2 partes.\r\nVisibilidad Colores muy visibles.\r\nAsa de tejido cobre el cuello para colgar el chaleco.\r\nRegulable con hebilla de plástico','40046.jpg','image/jpeg',20240,'2015-04-27 15:26:04','2015-04-27 15:26:04','2015-04-27 15:26:04'),(2,2,'Fun Yak Clam Azul',312,'Caracteristicas Tecnicas:\r\n- Construccion de capa simple.\r\n- 2 personas o 150 Kg.\r\n- Peso barco vacio: 18 Kg.\r\n- Longitud: 1,99 m.\r\n- Anchura: 1,10 m.\r\n- Hueco: 0,30 m.','FunYakClam-RecicleauAzul-1.jpg','image/jpeg',21144,'2015-04-27 15:29:34','2015-04-27 15:29:35','2015-04-27 16:23:09'),(3,3,'Jibionera',9,'Preciosas jibioneras.','jibionera-yo-zuri-bb-diam-s-z-774-77440.jpg','image/jpeg',50343,'2015-04-27 15:32:23','2015-04-27 15:32:24','2015-04-27 15:32:24'),(6,1,'Ancla',12,'1','logo-csi.png','image/png',45876,'2015-05-03 18:57:37','2015-04-27 16:32:17','2015-05-03 18:57:37'),(9,1,'Producto Falso',121,'',NULL,NULL,NULL,NULL,'2015-05-03 21:38:01','2015-05-03 21:38:01'),(10,3,'Hilo de Pescar',100,'Muy bueno',NULL,NULL,NULL,NULL,'2015-05-03 23:21:39','2015-05-03 23:21:39'),(11,1,'Ancla 2',144,'Muy buena',NULL,NULL,NULL,NULL,'2015-05-26 08:57:43','2015-05-26 08:57:43');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20150405231427'),('20150416201452'),('20150420175309'),('20150427164152'),('20150509114658'),('20150509114732'),('20150509114733'),('20150511174500'),('20150517152521'),('20150525073346'),('20150525073458'),('20150525073459'),('20150525080804'),('20150525080805'),('20150525080810'),('20150525080811');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `crypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `failed_login_count` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_login_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `current_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','carlos.darth@gmail.com','e0e4750cd62e4fad7d51bc4c16238bfac6c9670fb8f27612bdd3dea6546da6b282c2f84640dc3c09eabaf37e3d10d7eae306c93ad5db50f35b8d39628d77aa44','QV4kN0lG7NqnILc5QkH','4f3af9204f7cd7387dfbe3dde21084e8ac1f964728f01d5f2468daaa93547e5fe5688be610254b7cbab5e225aeebf29d4ccb6dd0c2a8f0030c482ba44e5de08d','ltQ0hmRwIGP43NslIxl',26,1,'2015-06-01 13:26:24','2015-06-01 13:26:19','2015-06-01 13:23:46','127.0.0.1','127.0.0.1','2015-05-18 18:06:36','2015-06-01 13:44:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-01 21:52:36
