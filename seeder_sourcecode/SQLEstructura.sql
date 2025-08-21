-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: predict_health_db
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `tbb_actividad_fisica`
--

DROP TABLE IF EXISTS `tbb_actividad_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_actividad_fisica` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Usuario_ID` int NOT NULL,
  `Smartwatch_ID` int NOT NULL,
  `Pasos` int DEFAULT NULL,
  `Distancia_km` decimal(6,2) DEFAULT NULL,
  `Calorias_quemadas` int DEFAULT NULL,
  `Minutos_actividad` int DEFAULT NULL,
  `Pisos_subidos` int DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Usuario_ID` (`Usuario_ID`),
  KEY `Smartwatch_ID` (`Smartwatch_ID`),
  KEY `ix_tbb_actividad_fisica_ID` (`ID`),
  CONSTRAINT `tbb_actividad_fisica_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `tbb_usuarios` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `tbb_actividad_fisica_ibfk_2` FOREIGN KEY (`Smartwatch_ID`) REFERENCES `tbb_smartwatches` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_alertas`
--

DROP TABLE IF EXISTS `tbb_alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_alertas` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Usuario_ID` int NOT NULL,
  `Smartwatch_ID` int DEFAULT NULL,
  `Tipo_alerta` enum('FRECUENCIA_ALTA','FRECUENCIA_BAJA','PRESION_ALTA','SATURACION_BAJA','CAIDA_DETECTADA','MEDICAMENTO','EJERCICIO','PERSONALIZADA') NOT NULL,
  `Mensaje` text NOT NULL,
  `Valor_detectado` decimal(10,2) DEFAULT NULL,
  `Valor_umbral` decimal(10,2) DEFAULT NULL,
  `Prioridad` enum('BAJA','MEDIA','ALTA','CRITICA') DEFAULT NULL,
  `Timestamp_alerta` datetime NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Usuario_ID` (`Usuario_ID`),
  KEY `Smartwatch_ID` (`Smartwatch_ID`),
  KEY `ix_tbb_alertas_ID` (`ID`),
  CONSTRAINT `tbb_alertas_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `tbb_usuarios` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `tbb_alertas_ibfk_2` FOREIGN KEY (`Smartwatch_ID`) REFERENCES `tbb_smartwatches` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=550646 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_mediciones_cardiacas`
--

DROP TABLE IF EXISTS `tbb_mediciones_cardiacas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_mediciones_cardiacas` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `Usuario_ID` int NOT NULL,
  `Smartwatch_ID` int NOT NULL,
  `Timestamp_medicion` datetime NOT NULL,
  `Frecuencia_cardiaca` int NOT NULL,
  `Presion_sistolica` int DEFAULT NULL,
  `Presion_diastolica` int DEFAULT NULL,
  `Saturacion_oxigeno` decimal(4,1) DEFAULT NULL,
  `Temperatura` decimal(3,1) DEFAULT NULL,
  `Nivel_estres` int DEFAULT NULL,
  `Variabilidad_ritmo` decimal(5,2) DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Usuario_ID` (`Usuario_ID`),
  KEY `Smartwatch_ID` (`Smartwatch_ID`),
  KEY `ix_tbb_mediciones_cardiacas_ID` (`ID`),
  CONSTRAINT `tbb_mediciones_cardiacas_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `tbb_usuarios` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `tbb_mediciones_cardiacas_ibfk_2` FOREIGN KEY (`Smartwatch_ID`) REFERENCES `tbb_smartwatches` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `check_nivel_estres` CHECK (((`Nivel_estres` >= 0) and (`Nivel_estres` <= 100)))
) ENGINE=InnoDB AUTO_INCREMENT=50138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_perfil_salud`
--

DROP TABLE IF EXISTS `tbb_perfil_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_perfil_salud` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Usuario_ID` int NOT NULL,
  `Peso_kg` decimal(5,2) DEFAULT NULL,
  `Altura_cm` decimal(5,2) DEFAULT NULL,
  `Tipo_sangre` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') DEFAULT NULL,
  `Fumador` tinyint(1) DEFAULT NULL,
  `Diabetico` tinyint(1) DEFAULT NULL,
  `Hipertenso` tinyint(1) DEFAULT NULL,
  `Historial_cardiaco` tinyint(1) DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Usuario_ID` (`Usuario_ID`),
  KEY `ix_tbb_perfil_salud_ID` (`ID`),
  CONSTRAINT `tbb_perfil_salud_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `tbb_usuarios` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_personas`
--

DROP TABLE IF EXISTS `tbb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_personas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) DEFAULT NULL,
  `Primer_Apellido` varchar(80) DEFAULT NULL,
  `Segundo_Apellido` varchar(80) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Genero` enum('H','M','NB') DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_personas_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_smartwatches`
--

DROP TABLE IF EXISTS `tbb_smartwatches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_smartwatches` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Usuario_ID` int NOT NULL,
  `Marca` varchar(50) NOT NULL,
  `Modelo` varchar(100) NOT NULL,
  `Numero_serie` varchar(100) NOT NULL,
  `Fecha_vinculacion` datetime NOT NULL,
  `Activo` tinyint(1) DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Numero_serie` (`Numero_serie`),
  KEY `Usuario_ID` (`Usuario_ID`),
  KEY `ix_tbb_smartwatches_ID` (`ID`),
  CONSTRAINT `tbb_smartwatches_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `tbb_usuarios` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbb_usuarios`
--

DROP TABLE IF EXISTS `tbb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Persona_Id` int NOT NULL,
  `Nombre_Usuario` varchar(100) NOT NULL,
  `Correo_Electronico` varchar(100) NOT NULL,
  `Contrasena` varchar(255) NOT NULL,
  `Numero_Telefonico_Movil` varchar(20) DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Google_ID` varchar(100) DEFAULT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nombre_Usuario` (`Nombre_Usuario`),
  UNIQUE KEY `Correo_Electronico` (`Correo_Electronico`),
  UNIQUE KEY `Google_ID` (`Google_ID`),
  KEY `Persona_Id` (`Persona_Id`),
  KEY `ix_tbb_usuarios_ID` (`ID`),
  CONSTRAINT `tbb_usuarios_ibfk_1` FOREIGN KEY (`Persona_Id`) REFERENCES `tbb_personas` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbc_roles`
--

DROP TABLE IF EXISTS `tbc_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_roles` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) NOT NULL,
  `Descripcion` text,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Nombre` (`Nombre`),
  KEY `ix_tbc_roles_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbd_usuarios_roles`
--

DROP TABLE IF EXISTS `tbd_usuarios_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_usuarios_roles` (
  `Usuario_ID` int NOT NULL,
  `Rol_ID` int NOT NULL,
  `Estatus` tinyint(1) NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Usuario_ID`,`Rol_ID`),
  KEY `Rol_ID` (`Rol_ID`),
  CONSTRAINT `tbd_usuarios_roles_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `tbb_usuarios` (`ID`) ON DELETE CASCADE,
  CONSTRAINT `tbd_usuarios_roles_ibfk_2` FOREIGN KEY (`Rol_ID`) REFERENCES `tbc_roles` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-19 11:48:57
