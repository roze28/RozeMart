-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: rozemartdb
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

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
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `logo` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_oce3937d2f4mpfqrycbr0l93m` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Canon','Canon.png'),(2,'Fujifilm','Fujifilm.png'),(3,'Sony','Sony.png'),(4,'HP','HP.png'),(5,'SanDisk','SanDisk.png'),(6,'Western Digital','Western Digital.png'),(7,'Panasonic','Panasonic.png'),(8,'Pelican','Pelican.png'),(9,'Apple','Apple.png'),(10,'Samsung','Samsung.png'),(11,'Olympus','Olympus.png'),(12,'CADeN','Caden.png'),(13,'AmazonBasics','amazonbasics.png'),(14,'Nikon','Nikon.png'),(15,'Neewer','Neewer.png'),(16,'Sigma','Sigma.png'),(17,'Bosch','Bosch.png'),(18,'Joby','Joby.png'),(19,'GoPro','GoPro.png'),(20,'Manfrotto','Manfrotto.png'),(21,'Google','Google.png'),(22,'LG','LG.png'),(23,'Motorola','Motorola.png'),(24,'Pantech','Pantech.png'),(25,'Huawei','Huawei.png'),(26,'Xiaomi','Xiaomi.png'),(27,'HOVAMP','Hovamp.png'),(28,'Aioneus','Aioneus.png'),(29,'XIAE','XIAE.png'),(30,'Everyworth','Everyworth.png'),(31,'Lexar','Lexar.png'),(32,'Nulaxy','Nulaxy.png'),(33,'Fitfort','Fitfort.png'),(34,'PopSockets','PopSocket.png'),(35,'SHAWE','SHAWE.png'),(36,'Lenovo','Lenovo.png'),(37,'Acer','Acer.png'),(38,'Dell','Dell.png'),(39,'Intel','Intel.png'),(40,'ASUS','ASUS.png'),(41,'Microsoft','Microsoft.png'),(42,'DragonTouch','DragonTouch.png'),(43,'AMD','AMD.png'),(44,'XFX','XFX.png'),(45,'MSI','MSI.png'),(46,'Seagate','Seagate.png'),(47,'Cosair','Corsair.png'),(48,'Thermaltake','Thermaltake.png'),(49,'Kingston','Kingston.png'),(50,'Creative','Creative.png'),(51,'Crucial','Crucial.png'),(52,'HyperX','HyperX.png'),(53,'Gigabyte','Gigabyte.png'),(54,'TP-Link','TP-Link.png');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands_categories`
--

DROP TABLE IF EXISTS `brands_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands_categories` (
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`brand_id`,`category_id`),
  KEY `FK6x68tjj3eay19skqlhn7ls6ai` (`category_id`),
  CONSTRAINT `FK58ksmicdguvu4d7b6yglgqvxo` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `FK6x68tjj3eay19skqlhn7ls6ai` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands_categories`
--

LOCK TABLES `brands_categories` WRITE;
/*!40000 ALTER TABLE `brands_categories` DISABLE KEYS */;
INSERT INTO `brands_categories` VALUES (6,1),(1,2),(2,2),(3,2),(7,2),(8,2),(9,4),(4,5),(9,5),(10,5),(36,5),(37,5),(38,5),(39,5),(40,5),(4,6),(9,6),(10,6),(36,6),(37,6),(38,6),(40,6),(9,7),(10,7),(36,7),(37,7),(38,7),(40,7),(41,7),(42,7),(8,9),(12,9),(13,9),(1,10),(3,10),(7,10),(11,10),(14,10),(1,11),(3,11),(14,11),(15,11),(1,12),(14,12),(16,12),(17,13),(18,13),(19,13),(20,13),(9,14),(10,14),(21,14),(22,14),(23,14),(24,14),(9,15),(10,15),(21,15),(23,15),(25,15),(26,15),(27,17),(28,17),(29,17),(30,17),(5,18),(10,18),(31,18),(20,19),(32,19),(33,19),(34,19),(35,19),(39,22),(43,22),(43,23),(44,23),(45,23),(5,24),(6,24),(10,24),(46,24),(10,25),(22,25),(40,25),(40,26),(47,26),(48,26),(5,27),(6,27),(10,27),(49,27),(40,28),(50,28),(5,29),(6,29),(10,29),(47,29),(49,29),(51,29),(52,29),(40,30),(45,30),(53,30),(5,31),(54,31);
/*!40000 ALTER TABLE `brands_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jx1ptm0r46dop8v0o7nmgfbeq` (`alias`),
  UNIQUE KEY `UK_t8o6pivur7nn124jehx7cygw5` (`name`),
  KEY `FKsaok720gsu4u2wrgbk10b5n8d` (`parent_id`),
  CONSTRAINT `FKsaok720gsu4u2wrgbk10b5n8d` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Electronics','electronics','electronics.png',_binary '',NULL),(2,'Camera & Photo','camera','camera.jpg',_binary '',1),(3,'Computers','computers','computers.png',_binary '',NULL),(4,'Cell Phones & Accessories','cellphones','cellphones.png',_binary '',1),(5,'Desktops','desktop_computers','desktop computers.png',_binary '',3),(6,'Laptops','laptop_computers','laptop computers.png',_binary '',3),(7,'Tablets','tablet_computers','tablets.png',_binary '',3),(8,'Computer Components','computer_components','computer components.png',_binary '',3),(9,'Bags & Cases','camera_bags_cases','bags_cases.png',_binary '',2),(10,'Digital Cameras','digital_cameras','digital cameras.png',_binary '',2),(11,'Flashes','camera_flashes','flashes.png',_binary '',2),(12,'Lenses','camera_lenses','lenses.png',_binary '',2),(13,'Tripods & Monopods','camera_tripods_monopods','tripods_monopods.png',_binary '',2),(14,'Carrier Cell Phones','carrier_cellphones','carrier cellphones.png',_binary '',4),(15,'Unlocked Cell Phones','unlocked_cellphones','unlocked cellphones.png',_binary '',4),(16,'Accessories','cellphone_accessories','cellphone accessories.png',_binary '',4),(17,'Cables & Adapters','cellphone_cables_adapters','cables and adapters.png',_binary '',16),(18,'MicroSD Cards','microsd_cards','microsd cards.png',_binary '',16),(19,'Stands','cellphone_stands','cellphone_stands.png',_binary '',16),(20,'Cases','cellphone_cases','cellphone cases.png',_binary '',16),(21,'Headphones','headphones','headphones.png',_binary '',16),(22,'CPU Processors Unit','computer_processors','computer processors.png',_binary '',8),(23,'Graphic Cards','computer_graphic_cards','graphic cards.png',_binary '',8),(24,'Internal Hard Drives','hard_drive','internal hard drive.png',_binary '',8),(25,'Internal Optical Drives','computer_optical_drives','internal optical drives.png',_binary '',8),(26,'Power Supplies','computer_power_supplies','power supplies.png',_binary '',8),(27,'Solid State Drives','solid_state_drives','solid state drives.png',_binary '',8),(28,'Sound Cards','computer_sound_cards','sound cards.png',_binary '',8),(29,'Memory','computer_memory','computer memory.png',_binary '',8),(30,'Motherboard','computer_motherboard','motherboards.png',_binary '',8),(31,'Network Cards','computer_network_cards','network cards.png',_binary '',8);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqnq71xsohugpqwf3c9gxmsuy` (`product_id`),
  CONSTRAINT `FKqnq71xsohugpqwf3c9gxmsuy` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (1,'extra image 1.png',1),(2,'extra-image3.png',1),(3,'extra_image_2.png',1);
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `alias` varchar(256) NOT NULL,
  `short_description` varchar(512) NOT NULL,
  `full_description` varchar(4096) NOT NULL,
  `main_image` varchar(255) NOT NULL,
  `created_time` datetime(6) DEFAULT NULL,
  `updated_time` datetime(6) DEFAULT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'1',
  `in_stock` bit(1) DEFAULT b'1',
  `cost` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `discount_percent` float DEFAULT '0',
  `length` float NOT NULL DEFAULT '0',
  `width` float NOT NULL DEFAULT '0',
  `height` float NOT NULL DEFAULT '0',
  `weight` float NOT NULL DEFAULT '0',
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_8qwq8q3hk7cxkp9gruxupnif5` (`alias`),
  UNIQUE KEY `UK_o61fmio5yukmmiqgnxf8pnavn` (`name`),
  KEY `FKa3a4mpsfdf4d2y6r8ra3sc8mv` (`brand_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKa3a4mpsfdf4d2y6r8ra3sc8mv` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Samsung Galaxy A31','samsung_galaxy_a31','A good samrtphone from samsung','This a very good smartphone from full description','main image.jpg','2022-05-17 23:57:12.819000','2022-05-17 23:57:12.819000',_binary '',_binary '\0',0,499,0,0,0,0,0,10,15),(2,'Dell Insprion 3000','dell_insprion_3000','short description for dell insprion 3000','full description for dell insprion 3000','','2022-05-18 00:03:12.473000','2022-05-18 00:03:12.473000',_binary '\0',_binary '',400,456,0,0,0,0,0,38,6),(5,'Contrary to popular','Contrary-to-popular','<div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</span><br></div>','<div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</span><br></div>','eclipse.png','2022-05-18 21:37:17.330000','2022-05-18 21:37:17.330000',_binary '',_binary '',500,700,0,0,0,0,0,38,5);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `description` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','manage everything'),(2,'Salesperson','manage product price, customers, shipping, orders and sales report'),(3,'Editor','manage categories, brands, products, articles and menus'),(4,'Shipper','view products, view orders and update order status'),(5,'Assistant','manage questions and reviews');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `photos` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'firoze.hossain01@yahoo.com',_binary '','Md. Firoze','Hossain ','$2a$10$ZulihJaR03c8V6e4g33o2uq7DPgeTmkivpou91SPKuP9hQ311Eu4G','gegg.png'),(2,'kanna.allada@gmail.com',_binary '','Allada','Pavan','$2a$10$zRa/rmQ8JarpYG2bNKftyelKnsUhsHwGB.xmCKTWJClsB7O9wzTnG','Allada Pavan.png'),(3,'aecllc.bnk@gmail.com',_binary '','Bruce','Kitchell','$2a$10$GINThwCjVZAbGnmOe9BIeuDuvDlyfuwZrg/Rsmrjs1Lsq2pnXtO/S','Bruce Kitchell.png'),(4,'muhammad.evran13@gmail.com',_binary '','Muhammad','Evran','$2a$10$UcHWHC72azPVZJb5Ky.Yy.X695WGf1ZkkGMS3WL3B9WqWf2dQD04G','Muhammad Evran.png'),(5,'kent.hervey8@gmail.com',_binary '','Kent','Hervey','$2a$10$YHXRsZ07/Btv.qCgGht.7u2PW.GLWzpVB7eabfgH1mhTVVXffDT6K','KentHervey.png'),(7,'nathihsa@gmail.com',_binary '','Nathi','Sangweni','$2a$10$WyHmQiXCSYuHcGeg8eFWvOScqzSgg88MmqpajPdzSkLsvZjT3tKC.','Nathi_Sangweni.png'),(8,'ammanollashirisha2020@gmail.com',_binary '','Ammanolla','Shirisha','$2a$10$N1eE87eXFB2XQ5nmWKaTXOofnrPn8koeNvZhEpleJzO49i55e/Vk.','Ammanolla.png'),(9,'bfeeny238@hotmail.com',_binary '','Bill','Feeny','$2a$10$3sH0v..zpjwA8ux5/q.OAeu0HgmSdMj8VzMWzhwwBDkE8wOISsUyi','Bill Feeny.png'),(10,'redsantosph@gmail.com',_binary '','Frederick','delos Santos','$2a$10$KXHmKpE6YB/0sjiy3fkMv.muKyxqvOXE6jVeaPu8KEaExx62ZmmNe','Frederick Santos.png'),(11,'ro_anamaria@mail.ru',_binary '\0','Ana','Maria','$2a$10$sz0CHOHAY1Xjt2ajIZgnG.L2KBQ4SsQkOGsPYue.C5gr6j.KMDdqS','Anna Maria.jpg'),(12,'maytassatya@hotmail.com',_binary '\0','Satya','Narayana','$2a$10$R7EJcaYijjJo/IVk6c1CieBML2uP3RAKMVlCxylPAePlCfJsX7OOy','Satya Narayana.png'),(13,'matthewefoli@gmail.com',_binary '','Matthew','Efoli','$2a$10$ECNnxXSVArnwS9KCet3yguQ1qHKyBIhh2G8c4F9CYgvp/Hadl8OS6','Matthew.png'),(15,'jackkbruce@yahoo.com',_binary '','Jack','Bruce','$2a$10$a6iyIHRj8DNpu15obVHTSOGcLe4IfpBcD4iEEJesWaFpBQvRoF2da','Jack Bruce.png'),(16,'zirri.mohamed@gmail.com',_binary '','Mohamed','Zirri','$2a$10$TmvyH1AoyDqRmQ4uC8NAZOOV29CPEDGuxVsHLP1cJoHQGr78L4kjW','Mohamed Zirri.jpg'),(17,'mk.majumdar009@hotmail.com',_binary '\0','Mithun','Kumar Majumdar','$2a$10$Y6SEy2INN0Rk/vhLHHJUYO6IMqNW3Ar.jVe9o0W1lpBRX8xr2Itui','Mithun Kumar Majumdar.png'),(18,'aliraza.arain.28@gmail.com',_binary '','Ali','Raza','$2a$10$PISZ2KitSbhE4/Z3dtIGk.WUi2ILiDl4PzRUDEQSp5BJIxcdcPq4G','Ali Raza.png'),(19,'isaachenry2877@gmail.com',_binary '','Isaac','Henry','$2a$10$CtmhrOz/AhDoCpKbeYl8O.0ngCFMukcznNZq7.YcHrkRyKpBG8Zca','Isaac Henry.jpg'),(20,'s.stasovska82@hotmail.com',_binary '','Svetlana','Stasovska','$2a$10$fcN2cNa7vB.78QnmzfNZEeUBkrwUaM.bVK3iDB.KFQlR15DwL7QZy','Svetlana Stasovska.png'),(21,'mikegates2012@gmail.com',_binary '','Mike','Gates','$2a$10$zIO1tygsw6cB2ymiR.WX0ulr9NKdTlZHqu7w/W/LLwk8HhK7nVnH.','Mike Gates.png'),(22,'pedroquintero2022@gmail.com',_binary '','Pedro','Quintero','$2a$10$UPX5EwZw0MyBvbe.7mxg2u8GOl/4KgaUU40iSjr1PLFYvhu35fMmu','Pedro Quintero.png'),(23,'amina.elshal2@yahoo.com',_binary '','Amina','Elshal','$2a$10$J1yoyqG5vWNe5N663PkgY.h53gfJtTR7Bb8E8u3sXdNbOZxhXgHu.','Amina Elshal.png'),(24,'test1@gmail.com',_binary '','test','one','$2a$10$K5upIZoFrDh/KKomCKR6ze5RwoT5ORpx9uK5xvvImXvl1pyNRLUUm','PIC PP SIZE.jpg'),(25,'testing2@gmail.com',_binary '','Test','Two','$2a$10$9dDq8.EihZVUujzqgZyZ3eBiaLt4/e47RZVZZ8BoUmyaB3QSlK54C','PIC PP SIZE.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(2,1),(21,1),(22,1),(3,2),(9,2),(10,2),(11,2),(12,2),(13,2),(19,2),(20,2),(4,3),(5,3),(7,3),(8,3),(11,3),(18,3),(20,3),(25,3),(15,4),(16,4),(17,4),(18,4),(21,4),(24,4),(5,5),(15,5),(18,5),(19,5),(20,5),(21,5),(23,5);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-19 16:29:51
