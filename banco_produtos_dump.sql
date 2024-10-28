-- MySQL dump 10.13  Distrib 8.4.2, for Linux (x86_64)
--
-- Host: localhost    Database: banco_produtos
-- ------------------------------------------------------
-- Server version	8.4.2

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('6ef6e4f7-9c47-412a-94c9-a99eae392cb2','f85f22a4a9c6e292050405e6ca77e9a1bf88324c0e533c94ac2d164e4cc4f457','2024-10-27 16:40:40.058','20241027164039_cria_tabela_produtos',NULL,NULL,'2024-10-27 16:40:39.915',1),('aeae44cc-0db1-408f-9ad8-21dd6a7f542b','74a69911c78468bba30021316747e16198fc8eb7e7367fa675d6f634cf4a4901','2024-10-27 16:42:25.761','20241027164225_renomeia_tabela_produto',NULL,NULL,'2024-10-27 16:42:25.546',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updated_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('cm2s953mj000112hb8zl7m37d','Desktop Gamer Pichau',2500,20,'2024-10-27 23:59:42.235','2024-10-27 23:59:42.235'),('cm2s953n1000212hb3pr600tr','Monitor LCD LG Plus',1200,5,'2024-10-27 23:59:42.254','2024-10-27 23:59:42.254'),('cm2s953nj000312hbiix2huop','Headphone Potente',400,25,'2024-10-27 23:59:42.272','2024-10-27 23:59:42.272'),('cm2s953ny000412hbd8k5twyn','Fonte para Desktop',900,30,'2024-10-27 23:59:42.287','2024-10-27 23:59:42.287'),('cm2s953oj000512hb1glasb3f','Teclado Polaroid',340,18,'2024-10-27 23:59:42.308','2024-10-27 23:59:42.308'),('cm2s953p1000612hbfgz8ig1w','Placa Asus TUF Gaming',1400,22,'2024-10-27 23:59:42.326','2024-10-27 23:59:42.326'),('cm2s953ph000712hb1q11g5mc','Processador i9 13th',1600,17,'2024-10-27 23:59:42.341','2024-10-27 23:59:42.341'),('cm2s953py000812hblxik52yn','Notebook Lenovo Ideapad 3i',800,40,'2024-10-27 23:59:42.359','2024-10-27 23:59:42.359'),('cm2s953qf000912hb5tbztq7k','Notebook Dell Vostro',1700,12,'2024-10-27 23:59:42.376','2024-10-27 23:59:42.376'),('cm2s953qz000a12hb5t9cy83p','Notebook Dell Latitude',1250,28,'2024-10-27 23:59:42.396','2024-10-27 23:59:42.396'),('cm2s96miv0000hjslhl7263pr','Processador i5 12th ',900,4,'2024-10-28 00:00:53.382','2024-10-28 00:00:53.382'),('cm2s99c8q0000v7f7ria0iz4d','Fone CCA CRA IEM Fidelity',100,2,'2024-10-28 00:03:00.025','2024-10-28 00:03:00.025');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28  0:11:29
