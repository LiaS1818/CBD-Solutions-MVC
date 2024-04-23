-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: appcdbsolu
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `bitacora_pro`
--

DROP TABLE IF EXISTS `bitacora_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_pro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `sentencia` varchar(60) NOT NULL,
  `contrasentencia` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_pro`
--

LOCK TABLES `bitacora_pro` WRITE;
/*!40000 ALTER TABLE `bitacora_pro` DISABLE KEYS */;
INSERT INTO `bitacora_pro` VALUES (1,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 68'),(2,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 69'),(3,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 70'),(4,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 71'),(5,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 72'),(6,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 73'),(7,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 74'),(8,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 75'),(9,'2023-11-22','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 76'),(10,'2023-11-28','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 77'),(11,'2023-11-28','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 78'),(12,'2023-11-29','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 79'),(13,'2023-12-01','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 80'),(14,'2023-12-01','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 81'),(15,'2023-12-06','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 82'),(16,'2023-12-06','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 83'),(17,'2023-12-06','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 84'),(18,'2023-12-06','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 85'),(19,'2023-12-06','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 86'),(20,'2023-12-15','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 87'),(21,'2023-12-15','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 88'),(22,'2023-12-17','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 89'),(23,'2023-12-17','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 90'),(24,'2023-12-17','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 91'),(25,'2023-12-17','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 92'),(26,'2023-12-17','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 93'),(27,'2023-12-17','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 94'),(28,'2024-01-29','INSERT INTO productos (id_producto, nombre, precio, descripc','DELETE FROM productos WHERE id_producto = 95');
/*!40000 ALTER TABLE `bitacora_pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacoraelminados_pro`
--

DROP TABLE IF EXISTS `bitacoraelminados_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacoraelminados_pro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `sentencia` varchar(60) NOT NULL,
  `contrasentencia` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoraelminados_pro`
--

LOCK TABLES `bitacoraelminados_pro` WRITE;
/*!40000 ALTER TABLE `bitacoraelminados_pro` DISABLE KEYS */;
INSERT INTO `bitacoraelminados_pro` VALUES (1,'2023-11-22','DELETE FROM productos WHERE id_producto = 72','INSERT INTO productos (id_producto, nombre, precio, descripc'),(2,'2023-11-28','DELETE FROM productos WHERE id_producto = 74','INSERT INTO productos (id_producto, nombre, precio, descripc'),(3,'2023-11-28','DELETE FROM productos WHERE id_producto = 75','INSERT INTO productos (id_producto, nombre, precio, descripc'),(4,'2023-11-29','DELETE FROM productos WHERE id_producto = 79','INSERT INTO productos (id_producto, nombre, precio, descripc'),(5,'2023-11-29','DELETE FROM productos WHERE id_producto = 77','INSERT INTO productos (id_producto, nombre, precio, descripc'),(6,'2023-12-01','DELETE FROM productos WHERE id_producto = 76','INSERT INTO productos (id_producto, nombre, precio, descripc'),(7,'2023-12-04','DELETE FROM productos WHERE id_producto = 81','INSERT INTO productos (id_producto, nombre, precio, descripc'),(8,'2023-12-06','DELETE FROM productos WHERE id_producto = 83','INSERT INTO productos (id_producto, nombre, precio, descripc'),(9,'2023-12-06','DELETE FROM productos WHERE id_producto = 78','INSERT INTO productos (id_producto, nombre, precio, descripc'),(10,'2023-12-06','DELETE FROM productos WHERE id_producto = 70','INSERT INTO productos (id_producto, nombre, precio, descripc'),(11,'2023-12-06','DELETE FROM productos WHERE id_producto = 67','INSERT INTO productos (id_producto, nombre, precio, descripc'),(12,'2023-12-06','DELETE FROM productos WHERE id_producto = 71','INSERT INTO productos (id_producto, nombre, precio, descripc'),(13,'2023-12-06','DELETE FROM productos WHERE id_producto = 69','INSERT INTO productos (id_producto, nombre, precio, descripc'),(14,'2023-12-06','DELETE FROM productos WHERE id_producto = 80','INSERT INTO productos (id_producto, nombre, precio, descripc'),(15,'2023-12-06','DELETE FROM productos WHERE id_producto = 82','INSERT INTO productos (id_producto, nombre, precio, descripc'),(16,'2023-12-06','DELETE FROM productos WHERE id_producto = 84','INSERT INTO productos (id_producto, nombre, precio, descripc'),(17,'2023-12-17','DELETE FROM productos WHERE id_producto = 87','INSERT INTO productos (id_producto, nombre, precio, descripc'),(18,'2023-12-17','DELETE FROM productos WHERE id_producto = 86','INSERT INTO productos (id_producto, nombre, precio, descripc'),(19,'2023-12-17','DELETE FROM productos WHERE id_producto = 85','INSERT INTO productos (id_producto, nombre, precio, descripc'),(20,'2023-12-17','DELETE FROM productos WHERE id_producto = 88','INSERT INTO productos (id_producto, nombre, precio, descripc'),(21,'2023-12-17','DELETE FROM productos WHERE id_producto = 89','INSERT INTO productos (id_producto, nombre, precio, descripc'),(22,'2023-12-17','DELETE FROM productos WHERE id_producto = 90','INSERT INTO productos (id_producto, nombre, precio, descripc');
/*!40000 ALTER TABLE `bitacoraelminados_pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacoraupdate_pro`
--

DROP TABLE IF EXISTS `bitacoraupdate_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacoraupdate_pro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `sentencia` varchar(60) NOT NULL,
  `contrasentencia` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoraupdate_pro`
--

LOCK TABLES `bitacoraupdate_pro` WRITE;
/*!40000 ALTER TABLE `bitacoraupdate_pro` DISABLE KEYS */;
INSERT INTO `bitacoraupdate_pro` VALUES (1,'2023-11-28','UPDATE productos SET nombre = \"Producto ahora esta actualiza','UPDATE productos SET nombre = \"Producto 5\", precio = 1233.00'),(2,'2023-11-28','UPDATE productos SET nombre = \"Producto ahora esta actualiza','UPDATE productos SET nombre = \"Producto ahora esta actualiza'),(3,'2023-11-28','UPDATE productos SET nombre = \"PAnesito Actualizado\", precio','UPDATE productos SET nombre = \"PAnesito\", precio = 122.00, d'),(4,'2023-11-29','UPDATE productos SET nombre = \"PAnesito Actualizado 2\", prec','UPDATE productos SET nombre = \"PAnesito Actualizado\", precio'),(5,'2023-11-29','UPDATE productos SET nombre = \"Chocolare rico\", precio = 111','UPDATE productos SET nombre = \"Producto nuevvo\", precio = 11'),(6,'2023-12-01','UPDATE productos SET nombre = \"Gomitas 4444\", precio = 1111.','UPDATE productos SET nombre = \"Gomitas 3333\", precio = 1111.'),(7,'2023-12-06','UPDATE productos SET nombre = \"Gomitas de Sandia\", precio = ','UPDATE productos SET nombre = \"Gomitas de Sandia\", precio = '),(8,'2023-12-06','UPDATE productos SET nombre = \"Gomitas\", precio = 222.00, de','UPDATE productos SET nombre = \"Gomitas\", precio = 222.00, de'),(9,'2023-12-17','UPDATE productos SET nombre = \"Gomitas Actualizado\", precio ','UPDATE productos SET nombre = \"Gomitas\", precio = 21.00, des'),(10,'2023-12-17','UPDATE productos SET nombre = \"Gomitas Actualizado\", precio ','UPDATE productos SET nombre = \"Gomitas Actualizado\", precio ');
/*!40000 ALTER TABLE `bitacoraupdate_pro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacorauseractua`
--

DROP TABLE IF EXISTS `bitacorauseractua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacorauseractua` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `sentencia` varchar(60) NOT NULL,
  `contrasentencia` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacorauseractua`
--

LOCK TABLES `bitacorauseractua` WRITE;
/*!40000 ALTER TABLE `bitacorauseractua` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacorauseractua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacorauseragregados`
--

DROP TABLE IF EXISTS `bitacorauseragregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacorauseragregados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `sentencia` varchar(60) NOT NULL,
  `contrasentencia` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacorauseragregados`
--

LOCK TABLES `bitacorauseragregados` WRITE;
/*!40000 ALTER TABLE `bitacorauseragregados` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacorauseragregados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacorausereliminados`
--

DROP TABLE IF EXISTS `bitacorausereliminados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacorausereliminados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `sentencia` varchar(60) NOT NULL,
  `contrasentencia` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacorausereliminados`
--

LOCK TABLES `bitacorausereliminados` WRITE;
/*!40000 ALTER TABLE `bitacorausereliminados` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacorausereliminados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_usuarios`
--

DROP TABLE IF EXISTS `carrito_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito_usuarios` (
  `id_sesion` varchar(255) NOT NULL,
  `id_producto` bigint unsigned NOT NULL,
  `cantidad` int DEFAULT NULL,
  `concent` int DEFAULT NULL,
  KEY `id_producto` (`id_producto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_usuarios`
--

LOCK TABLES `carrito_usuarios` WRITE;
/*!40000 ALTER TABLE `carrito_usuarios` DISABLE KEYS */;
INSERT INTO `carrito_usuarios` VALUES ('b2n80lbm7rgjsnkh7ddif4n9jf',70,1,0),('b2n80lbm7rgjsnkh7ddif4n9jf',67,1,0),('b2n80lbm7rgjsnkh7ddif4n9jf',71,1,0),('4ude9pi6r02qtmsetieug1p378',91,0,0);
/*!40000 ALTER TABLE `carrito_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `apellido` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contrasena` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nacimiento` date DEFAULT NULL,
  `admin` tinyint DEFAULT NULL,
  `confirmado` tinyint DEFAULT NULL,
  `token` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','González','juan@example.com','','555-1234',NULL,NULL,NULL,NULL),(2,'María','López','maria@example.com','','555-5678',NULL,NULL,NULL,NULL),(3,'Carlos','Martínez','carlos@example.com','','555-9876',NULL,NULL,NULL,NULL),(4,'Laura','Pérez','laura@example.com','','555-5432',NULL,NULL,NULL,NULL),(5,'Pedro','Sánchez','pedro@example.com','','555-8765',NULL,NULL,NULL,NULL),(6,'Ana','Rodríguez','ana@example.com','','555-2345',NULL,NULL,NULL,NULL),(7,'Luis','Fernández','luis@example.com','','555-6789',NULL,NULL,NULL,NULL),(8,'Sofía','Gómez','sofia@example.com','','555-4321',NULL,NULL,NULL,NULL),(9,'Diego','Díaz','diego@example.com','','555-7654',NULL,NULL,NULL,NULL),(10,'Elena','Torres','elena@example.com','','555-3210',NULL,NULL,NULL,NULL),(11,'lia','sanchez','lia@lia.com','1111','1111','2002-02-27',NULL,NULL,NULL),(12,'David','Rangel','a17100279@gmail.com','DonHuevon','3423424324','1923-02-02',NULL,NULL,NULL),(13,'Rosa','Santana','correo@correo.com','1111','444444','2023-09-28',NULL,NULL,NULL),(14,'Lia Aide','Sanchez','aide@aide.com','$2y$10$.Er50.k6TQS99YBRZj4aOexHfA47U0VnuzPJVvmxj8Y5yQUBkIg1i','23232','2023-09-13',NULL,NULL,NULL),(15,'Valeria','Ruiz','valeria@gmail.com','$2y$10$t.e7hk03ykRsxkfiB7b2De55miSmXdJ2WoRzVr3Lxg6x1jIOnNzaO','232323','2002-10-10',NULL,NULL,NULL),(16,'Alida','Gabriela','alida@gmail.com','$2y$10$4aQPeVGt95uEdvQYDauOs.2lVUxpj2y7/OXjguZn3MHT1jAEgKf9i','3336573698','2002-02-09',NULL,NULL,NULL),(17,'Alida','Sanchez','alidagabrielas@gmail.com','$2y$10$9dBZs4ZWWGJtyPNcriltsu.3fDJlH5XDJ23ryt8wmaxSOGay.3vty','23345322','2023-11-06',NULL,NULL,NULL),(18,'Rosa','Santana','rsantana@ceti.mx','$2y$10$HSmOct.yItkpvs.8PsY9T.Vl1sz0u9Wf/q/7sSb5KeMFCmMh404gm','123445323','2023-11-08',NULL,NULL,NULL),(19,'Lia ','Sanchez','sorgoroto@gmail.com','$2y$10$zcMxO1KqM9deA9KhleBGoeZ918Dlv8N7/noPej8kWAi6qBbKfZME.','12344345','2001-09-12',NULL,NULL,NULL),(20,'Aide ','Sanchez','correo@gmail.com','$2y$10$cpG3wAXXNOtH8pTXOFRjMuMFmmTXZl2s5O1YEB7dsDlJiEyQtoJAy','123433','2002-12-12',NULL,NULL,NULL),(21,'Nahomy','Hernandez','na@gmail.com','$2y$10$YpzL7./Y1hp07q1oeLcuEedaG738YTH4B/qNdi5JH.M9cEkgkCSAK','1234545','2023-12-19',NULL,NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientesdirecciones`
--

DROP TABLE IF EXISTS `clientesdirecciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientesdirecciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clienteId` int NOT NULL,
  `direccionId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clienteId` (`clienteId`),
  KEY `direccionId` (`direccionId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientesdirecciones`
--

LOCK TABLES `clientesdirecciones` WRITE;
/*!40000 ALTER TABLE `clientesdirecciones` DISABLE KEYS */;
INSERT INTO `clientesdirecciones` VALUES (1,10,3);
/*!40000 ALTER TABLE `clientesdirecciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concentraciones`
--

DROP TABLE IF EXISTS `concentraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concentraciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cantidad` decimal(5,2) DEFAULT NULL,
  `precio` decimal(5,2) DEFAULT NULL,
  `dispo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- COLLATE=utf8mb4_general_ci
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concentraciones`
--

LOCK TABLES `concentraciones` WRITE;
/*!40000 ALTER TABLE `concentraciones` DISABLE KEYS */;
INSERT INTO `concentraciones` VALUES (1,10.50,29.99,1),(2,7.20,19.95,0),(3,15.00,39.99,1);
/*!40000 ALTER TABLE `concentraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `calle` varchar(60) NOT NULL,
  `numero` int NOT NULL,
  `CP` varchar(15) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
INSERT INTO `direcciones` VALUES (1,'Calle A',123,'12345','Ciudad X'),(2,'Calle B',456,'67890','Ciudad Y'),(3,'Calle C',789,'54321','Ciudad Z'),(4,'Avenida 1',101,'11111','Ciudad A'),(5,'Avenida 2',202,'22222','Ciudad B'),(6,'Avenida 3',303,'33333','Ciudad C'),(7,'Calle X',555,'98765','Ciudad D'),(8,'Calle Y',666,'87654','Ciudad E'),(9,'Calle Z',777,'76543','Ciudad F'),(10,'Avenida 4',404,'44444','Ciudad G');
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (94,'Gomitas Actualizado',21.00,'1212','21f4a33f7d6d08f35be93d63ae7c10a0.jpg'),(93,'Pan de Muerto MVC',232.00,'2323','8f7e7956a82f4d35221776d98747a389.jpg'),(92,'Gomitas',121.00,'fdfdf','97a18691aa9dfdd7f4a447a3f8c048d5.jpg'),(91,'Chocolate Amargo Rico En oferta',77.00,'jjj','c1459dc8fda77ebbe7169f2e9ecb690c.jpg'),(95,'Gomitas enchilosas',300.00,'Ricas muuuucho','3b5befa510dfb7d1f223a0440d03fdd2.jpg');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bitacora_pro` AFTER INSERT ON `productos` FOR EACH ROW BEGIN
    INSERT INTO bitacora_pro (fecha, sentencia, contrasentencia)
    VALUES (
        NOW(),
        CONCAT('INSERT INTO productos (id_producto, nombre, precio, descripcion, imagen) VALUES (',
               NEW.id_producto, ', "', NEW.nombre, '", ', NEW.precio, ', "', NEW.descripcion, '", "', NEW.imagen, '")'),
        CONCAT('DELETE FROM productos WHERE id_producto = ', NEW.id_producto)
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bitacoraUpdate_pro` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
    INSERT INTO bitacoraUpdate_pro (fecha, sentencia, contrasentencia)
    VALUES (
        NOW(),
        CONCAT('UPDATE productos SET nombre = \"', NEW.nombre, '\", precio = ', NEW.precio, ', descripcion = \"', NEW.descripcion, '\", imagen = \"', NEW.imagen, '\" WHERE id_producto = ', NEW.id_producto),
        CONCAT('UPDATE productos SET nombre = \"', OLD.nombre, '\", precio = ', OLD.precio, ', descripcion = \"', OLD.descripcion, '\", imagen = \"', OLD.imagen, '\" WHERE id_producto = ', OLD.id_producto)
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bitacoraElminados_pro` AFTER DELETE ON `productos` FOR EACH ROW BEGIN
    INSERT INTO bitacoraElminados_pro (fecha, sentencia, contrasentencia)
    VALUES (
        NOW(),
        CONCAT('DELETE FROM productos WHERE id_producto = ', OLD.id_producto),
        CONCAT('INSERT INTO productos (id_producto, nombre, precio, descripcion, imagen) VALUES (',
               OLD.id_producto, ', \"', OLD.nombre, '\", ', OLD.precio, ', \"', OLD.descripcion, '\", \"', OLD.imagen, '\")')
    );
END */;;
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

-- Dump completed on 2024-04-23  9:09:28
