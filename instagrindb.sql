CREATE DATABASE  IF NOT EXISTS `instagrin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `instagrin`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: instagrin
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.19.04.2

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'/posts/POST1574939307128.jpg','IU pull hair',2),(2,'/posts/POST1578299288490.jpg','IU Mirror',3),(6,'/posts/POST1581854675039.jpg','Trs',6),(7,'/posts/POST1581854877583.jpg','',6);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'User'),(2,'SuperAdmin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `displayname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileimage` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleId` int(11) NOT NULL,
  `joineddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'baronpurwahartono','baronpurwahartono','2fb01352313da4beb4a2da91e13de3ebdafc9c02eda191b121c9eb5c80d9559d','baronhartono@gmail.com','/default/default.jpg','',1,'2019-11-27 10:39:54'),(2,'rezaarab','rezaarab','2fb01352313da4beb4a2da91e13de3ebdafc9c02eda191b121c9eb5c80d9559d','reza@gmail.com','/default/default.jpg','',1,'2019-11-28 09:24:17'),(3,'alvinrochafi','alvinrochafi','46867cccb2b382cdac4e082322c5dc25188f152f47b45f29f8f1a0b62c38eaa0','alvin@purwadhika.com','/default/default.jpg','',1,'2020-01-06 03:40:56'),(4,'sharon_rogers','Sharon Rogers','2fb01352313da4beb4a2da91e13de3ebdafc9c02eda191b121c9eb5c80d9559d','Sharon@gmail.com','/default/default.jpg','',1,'2020-02-03 08:02:57'),(5,'ngasal155','ngasal155','2fb01352313da4beb4a2da91e13de3ebdafc9c02eda191b121c9eb5c80d9559d','Ngasal@ngasal.com','/default/default.jpg','',1,'2020-02-12 05:37:42'),(6,'dino','dino','1ba6aa9db59a574c353326b2523ce25bd3cfd3cc80c2088aa7144428b4953ab2','aldinorahman36@gmail.com','/default/default.jpg','',1,'2020-02-16 11:48:51'),(46,'kwlsq-','kwlsq-','0c224b5e64d478e1c97013d3c8037c003cdaad91ca8f44e676c7275a881151c2','vincentiussss@gmail.com','/default/default.jpg','',1,'2020-02-21 02:31:24'),(47,'mumenrider','mumenrider','0c224b5e64d478e1c97013d3c8037c003cdaad91ca8f44e676c7275a881151c2','mumenrider@gmail.com','/default/default.jpg','',1,'2020-02-21 02:31:28'),(48,'hilmiarizal','hilmiarizal','a2bb2037c3ea5ef8495c90854b635ff89416b307b7b8112dc62ab99028b074af','hilmi.arizal36@gmail.com','/default/default.jpg','',1,'2020-02-21 02:31:29'),(49,'adritk','adritk','2373d08ef19fad858571e4c0fa998e6ca4898c6395cc9568537141e3242dd5e6','adirscatk@gmail.com','/default/default.jpg','',1,'2020-02-21 02:31:32'),(50,'jojo','jojo','72a0f950089fd4cc5ad778500c72dc2bf916f4e4e9c69c692b3db3908dd61b38','jojo@mail.com','/default/default.jpg','',1,'2020-02-21 02:31:35'),(51,'gasinks','gasinks','4ec651ce710a544e6e54d40611c4bd7bf4f6662aaa88731f8cad370b28bf0916','mantap@123mail.com','/default/default.jpg','',1,'2020-02-21 02:32:25'),(52,'hamid','hamid','0c224b5e64d478e1c97013d3c8037c003cdaad91ca8f44e676c7275a881151c2','hamid@gmail.com','/default/default.jpg','',1,'2020-02-21 02:32:28'),(53,'joni','joni','708f53b0f61f6b9036a9666f89bc812794689c1307f58b6e3ffd75b120fb68d1','greget@gmail.com','/default/default.jpg','',1,'2020-02-21 02:33:05'),(54,'apiip','apiip','ea5b2f866c3839edff786d5eedf08e4acdcd36f2d832698cc18f1063a1d9574b','Cowo.terlaris.dipurwadhika','/default/default.jpg','',1,'2020-02-21 02:33:26'),(55,'rizal','rizal','a2bb2037c3ea5ef8495c90854b635ff89416b307b7b8112dc62ab99028b074af','rizal@gmail.com','/default/default.jpg','',1,'2020-02-21 02:33:29'),(56,'babuy','babuy','5b0d779ea32aab618e186477b872f0ee9c290b6773cfd25a53bde1823aa10c95','Babuy@gmail.com','/default/default.jpg','',1,'2020-02-21 02:33:51'),(57,'zeronov','zeronov','2fb01352313da4beb4a2da91e13de3ebdafc9c02eda191b121c9eb5c80d9559d','Zeronov@arseny.com','/default/default.jpg','',1,'2020-02-21 02:33:55'),(58,'fiqri','fiqri','a2bb2037c3ea5ef8495c90854b635ff89416b307b7b8112dc62ab99028b074af','fiqrynh29@gmail.com','/default/default.jpg','',1,'2020-02-21 02:34:55'),(59,'a','a','bda1819a9abe24dcea64660dac421cc30152d44c29ae2ce01720495f62a92068','a@a.a','/default/default.jpg','',1,'2020-02-21 02:34:58'),(60,'adri','adri','a2bb2037c3ea5ef8495c90854b635ff89416b307b7b8112dc62ab99028b074af','adri@gmail.com','/default/default.jpg','',1,'2020-02-21 02:35:47'),(61,'alea0510','alea0510','5d57fcf2844d685a3e29a61ceab5b8645610465401b484f01c7eb57acf775cb4','alee0510@gmail.com','/default/default.jpg','',1,'2020-02-21 02:35:59'),(62,'christopher','christopher','ea964eaaf56ba754e9ccde9826850bda3305a19a76767830b138ce7da13ab804','christopher@gmail.com','/default/default.jpg','',1,'2020-02-21 02:38:30'),(63,'sfg','sfg','010a5b463f7c0527cff3eab1ca361adeca5e5a8dc749f61bc524e71c6e2d864e','qdf','/default/default.jpg','',1,'2020-02-21 06:11:46');
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

-- Dump completed on 2020-02-21 16:51:38
