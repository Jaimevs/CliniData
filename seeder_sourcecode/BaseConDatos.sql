CREATE DATABASE  IF NOT EXISTS `gimnasio_8b_idgs_220385` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gimnasio_8b_idgs_220385`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gimnasio_8b_idgs_220385
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
-- Table structure for table `tbb_areas`
--

DROP TABLE IF EXISTS `tbb_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_areas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) DEFAULT NULL,
  `Descripcion` varchar(80) DEFAULT NULL,
  `Sucursal` varchar(80) DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_areas_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_areas`
--

LOCK TABLES `tbb_areas` WRITE;
/*!40000 ALTER TABLE `tbb_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_empleados`
--

DROP TABLE IF EXISTS `tbb_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_empleados` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Area_ID` varchar(100) DEFAULT NULL,
  `Fecha_Contratacion` datetime DEFAULT NULL,
  `Puesto_ID` varchar(20) DEFAULT NULL,
  `Persona_ID` varchar(25) DEFAULT NULL,
  `Numero_Empleado` varchar(45) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_empleados_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_empleados`
--

LOCK TABLES `tbb_empleados` WRITE;
/*!40000 ALTER TABLE `tbb_empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_equipamientos`
--

DROP TABLE IF EXISTS `tbb_equipamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_equipamientos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Area` varchar(100) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Marca` varchar(100) DEFAULT NULL,
  `Modelo` varchar(180) DEFAULT NULL,
  `Fotografia` longtext,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Total_Existencias` int DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ix_tbb_equipamientos_Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_equipamientos`
--

LOCK TABLES `tbb_equipamientos` WRITE;
/*!40000 ALTER TABLE `tbb_equipamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_equipamientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_horarios`
--

DROP TABLE IF EXISTS `tbb_horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_horarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(60) DEFAULT NULL,
  `Tipo` varchar(80) DEFAULT NULL,
  `Fecha_Inicio` datetime DEFAULT NULL,
  `Fecha_Fin` datetime DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Empleado` varchar(80) DEFAULT NULL,
  `Sucursal` varchar(80) DEFAULT NULL,
  `Servicio` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_horarios_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_horarios`
--

LOCK TABLES `tbb_horarios` WRITE;
/*!40000 ALTER TABLE `tbb_horarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_instalaciones`
--

DROP TABLE IF EXISTS `tbb_instalaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_instalaciones` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Sucursal_Id` int DEFAULT NULL,
  `Descripcion` longtext,
  `Tipo` varchar(50) DEFAULT NULL,
  `Calificacion` enum('Exelente_servicio','Buen_servicio','Servicio_Regular','Puedemejorar_el_servicio') DEFAULT NULL,
  `Horario_Disponible` longtext,
  `Servicio` varchar(100) DEFAULT NULL,
  `Observaciones` varchar(100) DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ix_tbb_instalaciones_Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_instalaciones`
--

LOCK TABLES `tbb_instalaciones` WRITE;
/*!40000 ALTER TABLE `tbb_instalaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_instalaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_instructors`
--

DROP TABLE IF EXISTS `tbb_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_instructors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `specialty` varchar(100) DEFAULT NULL,
  `years_of_experience` int DEFAULT NULL,
  `total_clients_attended` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `registration_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_tbb_instructors_email` (`email`),
  KEY `ix_tbb_instructors_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_instructors`
--

LOCK TABLES `tbb_instructors` WRITE;
/*!40000 ALTER TABLE `tbb_instructors` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_mantenimientos`
--

DROP TABLE IF EXISTS `tbb_mantenimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_mantenimientos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Equipo` varchar(100) DEFAULT NULL,
  `Descripcion` longtext,
  `Responsable` varchar(80) DEFAULT NULL,
  `Costo` decimal(10,2) DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_mantenimiento` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ix_tbb_mantenimientos_Id` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_mantenimientos`
--

LOCK TABLES `tbb_mantenimientos` WRITE;
/*!40000 ALTER TABLE `tbb_mantenimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_mantenimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_miembros`
--

DROP TABLE IF EXISTS `tbb_miembros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_miembros` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Membresia_ID` int DEFAULT NULL,
  `Usuario_ID` int DEFAULT NULL,
  `Tipo` enum('Frecuente','Ocasional','Nuevo','Esporadico','Visita') DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Antiguedad` varchar(80) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_miembros_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_miembros`
--

LOCK TABLES `tbb_miembros` WRITE;
/*!40000 ALTER TABLE `tbb_miembros` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_miembros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_pedidos`
--

DROP TABLE IF EXISTS `tbb_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_pedidos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tipo` enum('Promocion','Descuento','Precio_Tienda') NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime NOT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Total_Productos` float NOT NULL,
  `Costo_Total` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_pedidos_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_pedidos`
--

LOCK TABLES `tbb_pedidos` WRITE;
/*!40000 ALTER TABLE `tbb_pedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_personas`
--

DROP TABLE IF EXISTS `tbb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_personas` (
  `ID` int NOT NULL AUTO_INCREMENT COMMENT 'Descripcion: Atributo identificador numero auto incremental que distingue de manera unica a la persona. \nNaturaleza: Cuantitativo\nDominio: Enteos positivos\nComposicion: 1{0-9}',
  `Titulo_Cortesia` varchar(20) DEFAULT NULL COMMENT 'Descripcion: Abreviatur o Palabra de Cortesia para dirigirse de manera formal a la persona, por ejemplo:Sr., Sra.,Ing., Dra, etc.\nNaturaleza: Cualitativa \nDominio: Caracteres Alfanumericos y puntos (.)\nComposicion: 0{A-Z|a-z|.}20',
  `Nombre` varchar(80) NOT NULL COMMENT 'Descripcion: Valos asociado a la persona dentro de su registro civil\nNaturaleza: Cualitativa \nDominio: Caracteres Alfanumericos, vocales con tilde, espacios separados \nComposicion: 0{A-Z|a-z| |}80',
  `Primer_Apellido` varchar(80) NOT NULL COMMENT 'Descripcion: Valos asociado a la persona dentro de su registro civil, generalmente conocido como Apellido Paterno\nNaturaleza: Cualitativa \nDominio: Caracteres Alfanumericos, vocales con tilde, espacios separados \nComposicion: 0{A-Z|a-z| |}80',
  `Segundo_Apellido` varchar(80) DEFAULT NULL COMMENT 'Descripcion: Valos asociado a la persona dentro de su registro civil, generalmente conocido como Apellido Materno\nNaturaleza: Cualitativa \nDominio: Caracteres Alfanumericos, vocales con tilde, espacios separados \nComposicion: 0{A-Z|a-z| |}80',
  `Fecha_Nacimiento` date NOT NULL COMMENT 'Descripcion: Fecha que determina la edad de la persona, indicado el dia, mes y año de natalicio\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\n\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\nFecha_Nacimiento = Año+''-''+Mes+''-''+Dia',
  `Fotografia` varchar(100) DEFAULT NULL COMMENT 'Descripcion: Nombre y extension del archivo de la imagen de portada de la persona.\nNaturaleza: Cualitativa \nDominio: Caracteres Alfanumericos, mas la extension permitida de imagenes como .jpg, .png, etc. \nComposicion:\n\nNombre_Archivo = 0{A-z|0-9}96\nExtension_Archivo = 0{A-z}4\nFotografia = Nombre_Archivo+''-''+Extension_Archivo',
  `Genero` enum('H','M','N/B') NOT NULL COMMENT 'Descripcion: Datos alusivo al genero biologico de la persona\nNaturaleza: Cualitativo\nDominio: Conjunto de valoesr Permitidos\nComposicion: \n\nGenero = [''H'',''M'',''N/B''] ',
  `Tipo_Sangre` enum('A+','A-','B+','B-','AB+','AB-','O+','O-') NOT NULL COMMENT 'Descripcion: Datos referentes al tipo y grupo sanguineo\\\\nNaturaleza: Cualitativo\\\\nDominio: Conjunto de valores Permitidos\\\\nComposicion: \\\\n\\\\nGenero = [''AP'', ''AN'', ''BP'', ''BN'', ''ABP'', ''ABN'', ''OP'', ''ON''] ',
  `Estatus` bit(1) NOT NULL DEFAULT b'1' COMMENT 'Descripcion: Dato de Auditoria que define el estatus actual del regitro, siendo 0 para un datos no activos y 1 para datos activos para uso en el sistema\nNaturaleza: Cuantativo\nDominio: Booleano\nComposicion: [0|1]\n',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de creacion del registro\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\n\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\n\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\n\nFecha_Registro= Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  `Fecha_Actualizacion` datetime DEFAULT NULL COMMENT 'Descripcion: Dato de Auditoria que documenta la fecha y hora de la ultima modificacion del registro\nNaturaleza: Cuantitativo\nDominio: Numeros Enteros Positivos imitados por el calendario y limites de mes y/o año bisiesto.\nComposicion:\n\n\nAño = 4{0-9}4\nMes =  [01|02|...|12]\nDia =  [01|02|..|31]\n\nHora = [00|01|...|23]\nMinutos = [00|01|...|59]\nSeguntodos = [00|01|...|59]\n\nFecha_Actualizacion = Año+''-''+Mes+''-''+Dia+''-''+Hora+''-''+Munutos+''-''+Segundos',
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_personas_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Esta tabla almacenara los datos de las personas asociadas a los usuarios de la plataforma de administracion de gimnasio, es importante denotar que la presona es una superentidad de : CLIENTE, COLABORADOR, PROVEDOR ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_personas`
--

LOCK TABLES `tbb_personas` WRITE;
/*!40000 ALTER TABLE `tbb_personas` DISABLE KEYS */;
INSERT INTO `tbb_personas` VALUES (1,NULL,'Emilio','Urrutia','Vega','2005-05-28','foto/7005a257-00eb-11f0-8ba8-581122b8ead5.png','H','A-',_binary '','2025-03-14 09:46:04',NULL),(2,NULL,'Cecilia','Ortega','Acosta','2007-08-31','foto/7005feba-00eb-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:46:04',NULL),(3,NULL,'Paula','Ponce','Campos','2005-10-06','foto/700637b1-00eb-11f0-8ba8-581122b8ead5.png','M','O-',_binary '','2025-03-14 09:46:04',NULL),(4,'Dip.','Maximiliano','Esquivel','Domínguez','2005-08-01','foto/70068092-00eb-11f0-8ba8-581122b8ead5.png','H','AB+',_binary '','2025-03-14 09:46:04',NULL),(5,NULL,'Alejandro','Ríos','Zavala','2011-07-14','foto/7006bca3-00eb-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:46:04',NULL),(6,NULL,'Alejandro','Delgado','Rivera','2007-10-04','foto/7006e8c7-00eb-11f0-8ba8-581122b8ead5.png','H','O-',_binary '','2025-03-14 09:46:04',NULL),(7,NULL,'Gabriela','Cedillo','Paredes','2006-08-30','foto/7007216c-00eb-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:46:04',NULL),(8,'Pdta.','Julia','Guevara','Rivera','2009-12-15','foto/700752db-00eb-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:46:04',NULL),(9,NULL,'Marcos','Méndez','Silva','2011-06-03','foto/70078268-00eb-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:46:04',NULL),(10,NULL,'Rosario','Toledo','Sánchez','2011-05-19','foto/7007b350-00eb-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:46:04',NULL),(11,NULL,'Jimena','Rojas','Vega','1995-09-11','foto/ca361056-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(12,'C.','Berta','López','Reyes','1965-03-10','foto/ca36c2cb-00ec-11f0-8ba8-581122b8ead5.png','M','O-',_binary '','2025-03-14 09:55:45',NULL),(13,NULL,'Adriana','Domínguez','Cordero','2006-07-15','foto/ca36ff24-00ec-11f0-8ba8-581122b8ead5.png','M','AB+',_binary '','2025-03-14 09:55:45',NULL),(14,NULL,'Belén','Escobar','Urrutia','1985-06-06','foto/ca3741e0-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(15,'Joven','Armando','Patiño','Padilla','1962-11-14','foto/ca37713c-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(16,NULL,'Abigail','Suárez','Romero','1982-08-09','foto/ca379d78-00ec-11f0-8ba8-581122b8ead5.png','M','A-',_binary '','2025-03-14 09:55:45',NULL),(17,NULL,'Mariana','Gutiérrez','Zamora','2003-01-20','foto/ca37ca45-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(18,NULL,'Eugenia','Bermúdez','Ortega','1989-01-11','foto/ca37f883-00ec-11f0-8ba8-581122b8ead5.png','M','B+',_binary '','2025-03-14 09:55:45',NULL),(19,NULL,'Jaime','Salazar','Silva','1988-09-12','foto/ca3828d9-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(20,'Sen.','Dolores','Benítez','Navarro','1982-09-29','foto/ca3854c1-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(21,NULL,'Carolina','Esquivel','Acosta','1979-08-22','foto/ca3881bf-00ec-11f0-8ba8-581122b8ead5.png','M','AB+',_binary '','2025-03-14 09:55:45',NULL),(22,NULL,'Marta','Sepúlveda','Villarreal','1988-01-31','foto/ca38adc9-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(23,NULL,'Bruno','Sepúlveda','Beltrán','2007-02-21','foto/ca38da24-00ec-11f0-8ba8-581122b8ead5.png','H','B+',_binary '','2025-03-14 09:55:45',NULL),(24,'Arq.','Romeo','Cano','Rodríguez','1970-12-23','foto/ca390a0c-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(25,NULL,'Germán','Domínguez','Sepúlveda','1959-02-23','foto/ca3939e1-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(26,'Almte.','Fabiola','Paredes','García','1999-07-24','foto/ca39669b-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(27,NULL,'Luz','Ramos','Farías','1993-12-11','foto/ca399489-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(28,'Ing.','Ricardo','Vergara','Cano','1962-08-05','foto/ca39c089-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(29,NULL,'Ezequiel','Acosta','Chávez','1981-11-11','foto/ca39f14a-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(30,NULL,'Andrés','Montalvo','Saavedra','1981-06-13','foto/ca3a1cda-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(31,NULL,'Javier','Vásquez','Figueroa','1987-05-13','foto/ca3a4ac3-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(32,NULL,'Vanessa','Huerta','Salazar','1987-04-30','foto/ca3a7649-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(33,NULL,'Esteban','Campos','Toledo','1956-06-29','foto/ca3aa431-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(34,NULL,'Iván','Álvarez','Urrutia','1983-10-16','foto/ca3acfa1-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(35,'Sen.','Micaela','Sepúlveda','Ponce','1982-05-24','foto/ca3afdd3-00ec-11f0-8ba8-581122b8ead5.png','M','A-',_binary '','2025-03-14 09:55:45',NULL),(36,NULL,'Mauricio','Aguilar','Ponce','1997-06-10','foto/ca3b2f20-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(37,NULL,'Germán','Figueroa','Quintero','1976-09-19','foto/ca3b5a84-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(38,NULL,'Fernando','Cruz','Rodríguez','1993-10-31','foto/ca3b84a0-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(39,'C.','Fernanda','Ponce','Mejía','1978-12-01','foto/ca3bb0f2-00ec-11f0-8ba8-581122b8ead5.png','M','O-',_binary '','2025-03-14 09:55:45',NULL),(40,NULL,'Irene','Vargas','Castañeda','1971-04-13','foto/ca3bdc79-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(41,NULL,'Rebeca','Osorio','Guerrero','1980-05-02','foto/ca3c07b6-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(42,NULL,'Mauricio','Salazar','Toledo','1955-07-28','foto/ca3c31df-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(43,'C.P.','Jimena','Ortega','Zamora','1982-03-26','foto/ca3c5d92-00ec-11f0-8ba8-581122b8ead5.png','M','AB+',_binary '','2025-03-14 09:55:45',NULL),(44,NULL,'Miguel','Navarro','Vergara','1967-03-03','foto/ca3c894a-00ec-11f0-8ba8-581122b8ead5.png','H','O-',_binary '','2025-03-14 09:55:45',NULL),(45,NULL,'Germán','López','Fuentes','1994-07-07','foto/ca3cb5fb-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(46,NULL,'César','Valenzuela','Vásquez','1974-10-16','foto/ca3ce0f7-00ec-11f0-8ba8-581122b8ead5.png','H','A-',_binary '','2025-03-14 09:55:45',NULL),(47,'C.P.','Irene','González','Cedillo','1960-07-14','foto/ca3d10c1-00ec-11f0-8ba8-581122b8ead5.png','M','A-',_binary '','2025-03-14 09:55:45',NULL),(48,NULL,'Laura','Figueroa','Villarreal','1974-04-23','foto/ca3d3d2f-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(49,NULL,'Mateo','Cabrera','López','1957-03-08','foto/ca3d6a70-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(50,NULL,'Cecilia','Mora','López','1994-09-23','foto/ca3d95ae-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(51,'C.P.','Miriam','Silva','Jiménez','2002-05-22','foto/ca3dc190-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(52,NULL,'Luz','Álvarez','Rivera','1972-09-22','foto/ca3defe6-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(53,NULL,'Rosalía','Martínez','Palacios','2004-11-14','foto/ca3e4cf7-00ec-11f0-8ba8-581122b8ead5.png','M','AB+',_binary '','2025-03-14 09:55:45',NULL),(54,NULL,'Rafael','Camacho','Silva','1966-11-10','foto/ca3e7d50-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(55,NULL,'Gilberto','Quintero','Ramírez','1975-07-08','foto/ca3ea986-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(56,NULL,'Lorenzo','Muñoz','Guerrero','1998-01-26','foto/ca3ed5ee-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(57,NULL,'Yahir','Bustamante','Cano','1991-11-01','foto/ca3f0181-00ec-11f0-8ba8-581122b8ead5.png','H','B+',_binary '','2025-03-14 09:55:45',NULL),(58,NULL,'Baltasar','Escobar','Romero','1997-10-15','foto/ca3f2d2a-00ec-11f0-8ba8-581122b8ead5.png','H','O-',_binary '','2025-03-14 09:55:45',NULL),(59,'Sra.','Patricia','Montalvo','Benítez','1968-01-06','foto/ca3f5969-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(60,'Almte.','Gabriel','Huerta','Carrasco','1960-10-23','foto/ca3f8520-00ec-11f0-8ba8-581122b8ead5.png','H','B+',_binary '','2025-03-14 09:55:45',NULL),(61,'Sra.','Raquel','Urrutia','Cordero','1990-08-26','foto/ca3fb0df-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(62,NULL,'Yesenia','Palacios','Huerta','1992-04-01','foto/ca3fdf3b-00ec-11f0-8ba8-581122b8ead5.png','M','O-',_binary '','2025-03-14 09:55:45',NULL),(63,'Sra.','Zulema','Cano','Silva','1979-01-12','foto/ca400c26-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(64,'Tte.','Diego','Montalvo','Fuentes','1998-04-18','foto/ca40399d-00ec-11f0-8ba8-581122b8ead5.png','H','A-',_binary '','2025-03-14 09:55:45',NULL),(65,NULL,'Nicolás','León','Padilla','1992-12-13','foto/ca406637-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(66,'Arq.','María','Méndez','Peralta','1999-09-11','foto/ca4091f8-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(67,NULL,'Pablo','Romero','Cabrera','1994-12-24','foto/ca40bf9d-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(68,NULL,'Felipe','Domínguez','Guevara','1959-05-27','foto/ca40eb33-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(69,NULL,'Beatriz','Silva','Muñoz','1964-12-03','foto/ca411688-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(70,'Med.','Mercedes','Rivera','Benítez','1980-06-25','foto/ca414221-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(71,'Sen.','Fernanda','Ramírez','Guerrero','1956-09-14','foto/ca4171cd-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(72,NULL,'Maximiliano','Padilla','Bustamante','1972-08-11','foto/ca419ec0-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(73,NULL,'Daniel','Carrasco','Espinoza','1997-06-07','foto/ca41ca08-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(74,'Srita.','Olga','Camacho','Esquivel','1974-02-12','foto/ca41f5cd-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(75,'Cnel.','Sandra','Sánchez','Salinas','1957-05-08','foto/ca4227ad-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(76,NULL,'Brenda','Cruz','Navarro','1983-06-13','foto/ca425aa2-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(77,NULL,'Yesenia','Solís','Vergara','1968-04-15','foto/ca4285da-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(78,'C.P.','Irene','Torres','Morales','1981-07-04','foto/ca42e0fc-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(79,NULL,'Leticia','Padilla','García','1999-09-19','foto/ca4310fc-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(80,NULL,'Rosario','Hernández','Aguilar','1960-07-26','foto/ca433ca4-00ec-11f0-8ba8-581122b8ead5.png','M','O-',_binary '','2025-03-14 09:55:45',NULL),(81,'Mtr.','Uriel','Beltrán','Méndez','1971-10-11','foto/ca4368ab-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(82,NULL,'Daniel','Bravo','Farías','1962-06-21','foto/ca439439-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(83,NULL,'Diego','Godoy','Morales','1954-03-27','foto/ca43c0d5-00ec-11f0-8ba8-581122b8ead5.png','H','B+',_binary '','2025-03-14 09:55:45',NULL),(84,NULL,'Román','Benítez','Barrera','1989-04-08','foto/ca43ec3b-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(85,NULL,'Isabel','Castillo','Mejía','1957-08-13','foto/ca4417aa-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(86,'Dip.','Gustavo','Mejía','Herrera','1966-05-08','foto/ca4443af-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(87,'Cnel.','Belén','Salazar','Montoya','1997-05-30','foto/ca446f6a-00ec-11f0-8ba8-581122b8ead5.png','M','AB+',_binary '','2025-03-14 09:55:45',NULL),(88,NULL,'Yandel','Domínguez','Huerta','1977-03-29','foto/ca449acd-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(89,NULL,'Pedro','Padilla','Arenas','1970-08-26','foto/ca44c715-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(90,'Mtra.','Karen','Martínez','Mejía','1959-04-14','foto/ca44f382-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(91,'Tte.','Adriana','Barrera','Méndez','1959-06-29','foto/ca451fb6-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(92,'Gral.','Sebastián','Tapia','Paredes','1976-08-13','foto/ca454b67-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(93,NULL,'Gustavo','Montes','Escobar','1957-11-13','foto/ca457708-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(94,'Pdta.','Zaira','Méndez','Barrera','1960-02-23','foto/ca45a44a-00ec-11f0-8ba8-581122b8ead5.png','M','A-',_binary '','2025-03-14 09:55:45',NULL),(95,NULL,'Camila','Mora','Álvarez','1970-06-06','foto/ca45d2d7-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(96,NULL,'Raúl','Rojas','Palacios','1981-11-19','foto/ca45fec2-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(97,'Cnel.','Rubén','Pizarro','González','1960-08-18','foto/ca462a7c-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(98,'Lic.','Miriam','Valenzuela','Patiño','1960-03-21','foto/ca465628-00ec-11f0-8ba8-581122b8ead5.png','M','A-',_binary '','2025-03-14 09:55:45',NULL),(99,NULL,'Blanca','Suárez','Chávez','1976-07-28','foto/ca46819f-00ec-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:55:45',NULL),(100,NULL,'Samuel','Farías','Vergara','1972-03-06','foto/ca46ad77-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(101,NULL,'César','Reyes','Jiménez','1967-01-08','foto/ca46d8e6-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(102,'Ing.','Adrián','Ramírez','Quintero','1965-02-27','foto/ca47075f-00ec-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:55:45',NULL),(103,'Dip.','Daniel','Valenzuela','Castañeda','1973-04-16','foto/ca47343d-00ec-11f0-8ba8-581122b8ead5.png','H','O-',_binary '','2025-03-14 09:55:45',NULL),(104,NULL,'Omar','Esquivel','Delgado','1999-09-30','foto/ca476066-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(105,NULL,'Iván','Vásquez','Toledo','1975-07-18','foto/ca478c55-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(106,'Sra.','Laura','Beltrán','Romero','1971-01-15','foto/ca47b838-00ec-11f0-8ba8-581122b8ead5.png','M','B+',_binary '','2025-03-14 09:55:45',NULL),(107,'LAE','Tomás','Beltrán','Méndez','1989-07-26','foto/ca47e4ba-00ec-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:55:45',NULL),(108,'C.','Carolina','Sepúlveda','Domínguez','1965-09-05','foto/ca48139c-00ec-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:55:45',NULL),(109,NULL,'Camila','Carrasco','Solís','1976-02-02','foto/ca483faa-00ec-11f0-8ba8-581122b8ead5.png','M','B+',_binary '','2025-03-14 09:55:45',NULL),(110,NULL,'Genaro','Ortega','Rodríguez','1966-05-02','foto/ca486cbf-00ec-11f0-8ba8-581122b8ead5.png','H','B+',_binary '','2025-03-14 09:55:45',NULL),(111,'Sra.','Carla','Bravo','Montalvo','2001-02-02','foto/3895b091-00ed-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:58:50',NULL),(112,NULL,'Diego','Guevara','Álvarez','1995-02-19','foto/389d5baf-00ed-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:58:50',NULL),(113,NULL,'Alonso','Zavala','Bustamante','2003-02-11','foto/389d9a98-00ed-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:58:50',NULL),(114,'Almte.','Germán','Esquivel','Reyes','2003-11-10','foto/389dc76e-00ed-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:58:50',NULL),(115,'Tte.','Fabián','Aguirre','Zamora','1999-10-27','foto/389df6e2-00ed-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:58:50',NULL),(116,NULL,'Alejandra','Hernández','Pizarro','1998-12-28','foto/389e23fd-00ed-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:58:50',NULL),(117,NULL,'Leticia','Ramírez','Valdés','2002-02-22','foto/389e5777-00ed-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:58:50',NULL),(118,NULL,'Teresa','Álvarez','Jiménez','2004-03-27','foto/389e83e4-00ed-11f0-8ba8-581122b8ead5.png','M','A-',_binary '','2025-03-14 09:58:50',NULL),(119,NULL,'Claudia','Muñoz','Castillo','2004-08-25','foto/389eb30c-00ed-11f0-8ba8-581122b8ead5.png','M','A+',_binary '','2025-03-14 09:58:50',NULL),(120,'Dr.','Genaro','Figueroa','Herrera','1995-01-01','foto/389f0041-00ed-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:58:50',NULL),(121,NULL,'Matías','Rodríguez','Campos','1998-06-07','foto/571066d6-00ed-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:59:41',NULL),(122,'Profr.','Orlando','Jiménez','Rivera','1997-08-17','foto/57182199-00ed-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:59:41',NULL),(123,NULL,'Marta','Pizarro','Guerrero','2000-07-18','foto/571860ff-00ed-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:59:41',NULL),(124,'Dir.','Rosalía','Rivera','Ortega','2002-02-08','foto/57189472-00ed-11f0-8ba8-581122b8ead5.png','M','O+',_binary '','2025-03-14 09:59:41',NULL),(125,NULL,'Samuel','Benítez','Urrutia','2004-03-15','foto/5718e28f-00ed-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:59:41',NULL),(126,NULL,'Alejandro','Ortega','Paredes','1997-05-20','foto/57191bab-00ed-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:59:41',NULL),(127,NULL,'Valentín','Ortega','Solís','2001-11-19','foto/57196349-00ed-11f0-8ba8-581122b8ead5.png','H','A+',_binary '','2025-03-14 09:59:41',NULL),(128,NULL,'Ramiro','Ramirez','Rivera','1999-07-07','foto/57199897-00ed-11f0-8ba8-581122b8ead5.png','H','O+',_binary '','2025-03-14 09:59:41',NULL);
/*!40000 ALTER TABLE `tbb_personas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER `tbb_personas_AFTER_INSERT` AFTER INSERT ON `tbb_personas` FOR EACH ROW BEGIN
	declare nombre_persona varchar(255);
    declare v_estatus varchar(20) default 'Activo';
    -- validamos el estatus del registro y 
    -- le asignamos una etiqueta para la descripción
    
    if not new.Estatus then 
		set v_estatus = 'Inativo';
	end if;
    
    
    -- Obtain tha name of the newly inserted person
    set nombre_persona = (select concat_ws("",p.Titulo_cortesia, p.Nombre, p.Primer_Apellido, p.Segundo_Apellido) 
    from tbb_personas p where p.id = new.ID);
    
    -- Register the insertion of a new    person in the logbook 
    insert into tbi_bitacora values(
    default, user(), 'Create','tbb_personas', concat_ws("", 'Se ha agregado una nueva PERSONA con el ID:', 
    new.ID, '\n', 
    'Nombre: ', nombre_persona, '\n',
    'Genero ', new.Genero, '\n',
    'Grupo Sanguineo: ', new.Tipo_Sangre,'\n',
    'Archivo de Fotografía: ', new.Fotografia, '\n',
    'Fecha de Nacimiento: ', new.Fecha_Nacimiento, '\n',
    'Estatus: ', v_estatus),
    default, default
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
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_personas_BEFORE_UPDATE` BEFORE UPDATE ON `tbb_personas` FOR EACH ROW BEGIN
-- Registrar en la bitácora los datos antes de la actualización
    DECLARE nombre_original VARCHAR(255);
    DECLARE v_estatus_original VARCHAR(20) DEFAULT 'Activo';
    
    -- Estatus original
    IF NOT OLD.Estatus THEN
        SET v_estatus_original = 'Inactivo';
    END IF;

    -- Obtener el nombre original
    SET nombre_original = CONCAT_WS(' ', OLD.Titulo_Cortesia, OLD.Nombre, OLD.Primer_Apellido, OLD.Segundo_Apellido);

    -- Registrar en la bitácora la información previa
    INSERT INTO tbi_bitacora 
    VALUES (
		default,
        USER(), 
        'Update', 
        'tbb_personas', 
        CONCAT_WS('\n',
            'Antes de la actualización:',
            'ID: ', OLD.ID,
            'Nombre registrado: ', nombre_original,
            'Género: ', OLD.Genero,
            'Tipo sangre: ', OLD.Tipo_Sangre,
            'Fotografía: ', OLD.Fotografia,
            'Fecha de Nacimiento: ', OLD.Fecha_Nacimiento,
            'Estatus: ', v_estatus_original
        ),
        DEFAULT,
        DEFAULT
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
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_personas_AFTER_UPDATE` AFTER UPDATE ON `tbb_personas` FOR EACH ROW BEGIN
DECLARE nombre_nuevo VARCHAR(255);
    DECLARE v_estatus_nuevo VARCHAR(20) DEFAULT 'Activo';

    -- Estatus nuevo
    IF NOT NEW.Estatus THEN
        SET v_estatus_nuevo = 'Inactivo';
    END IF;

    -- Obtener el nombre actualizado
    SET nombre_nuevo = CONCAT_WS(' ', NEW.Titulo_Cortesia, NEW.Nombre, NEW.Primer_Apellido, NEW.Segundo_Apellido);

    -- Registrar en la bitácora la información actualizada
    INSERT INTO tbi_bitacora 
    VALUES (
    default,
        USER(), 'Update', 'tbb_personas', 
        CONCAT_WS('\n',
            'Después de la actualización:',
            'ID: ', NEW.ID,
            'Nombre: ', nombre_nuevo,
            'Género: ', NEW.Genero,
            'Grupo Sanguíneo: ', NEW.Tipo_Sangre,
            'Fotografía: ', NEW.Fotografia,
            'Fecha de Nacimiento: ', NEW.Fecha_Nacimiento,
            'Estatus: ', v_estatus_nuevo
        ),
        DEFAULT, DEFAULT
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
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tbb_personas_AFTER_DELETE` AFTER DELETE ON `tbb_personas` FOR EACH ROW BEGIN
 DECLARE nombre_persona VARCHAR(255);
    DECLARE v_estatus VARCHAR(20) DEFAULT 'Activo';
    
    -- Validamos el estatus del registro y le asignamos una etiqueta para la descripción
    IF OLD.Estatus THEN 
        SET v_estatus = 'Inactivo';
    END IF;
    
    -- Obtener el nombre de la persona eliminada
    SET nombre_persona = CONCAT_WS(" ", OLD.Titulo_Cortesia, OLD.Nombre, OLD.Primer_Apellido, OLD.Segundo_Apellido);
    
    -- Registrar la eliminación de la persona en la bitácora
    INSERT INTO tbi_bitacora VALUES (
        DEFAULT, 
        USER(), 
        'Delete',
        'tbb_personas',
        CONCAT_WS("", 
            'Se ha eliminado una PERSONA con el ID: ', OLD.ID, '\n',
            'Nombre: ', nombre_persona, '\n',
            'Genero: ', OLD.Genero, '\n',
            'Grupo Sanguíneo: ', OLD.Tipo_Sangre, '\n',
            'Archivo de Fotografía: ', OLD.Fotografia, '\n',
            'Fecha de Nacimiento: ', OLD.Fecha_Nacimiento, '\n',
            'Estatus: ', v_estatus
        ),
        DEFAULT, 
        DEFAULT
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tbb_preguntas_nutricionales`
--

DROP TABLE IF EXISTS `tbb_preguntas_nutricionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_preguntas_nutricionales` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Pregunta` varchar(255) DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_preguntas_nutricionales_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_preguntas_nutricionales`
--

LOCK TABLES `tbb_preguntas_nutricionales` WRITE;
/*!40000 ALTER TABLE `tbb_preguntas_nutricionales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_preguntas_nutricionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_productos`
--

DROP TABLE IF EXISTS `tbb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_productos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Marca` varchar(100) NOT NULL,
  `Cod_barras` varchar(50) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Presentacion` varchar(100) DEFAULT NULL,
  `Precio_actual` decimal(6,2) NOT NULL,
  `Fotografia` varchar(100) DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_registro` datetime DEFAULT NULL,
  `Fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Cod_barras` (`Cod_barras`),
  KEY `ix_tbb_productos_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_productos`
--

LOCK TABLES `tbb_productos` WRITE;
/*!40000 ALTER TABLE `tbb_productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_promociones`
--

DROP TABLE IF EXISTS `tbb_promociones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_promociones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Producto_id` int DEFAULT NULL,
  `Tipo` enum('Miembro','Empleado','Usuario') NOT NULL,
  `Aplicacion_en` enum('Tienda_Virtual','Tienda_Presencial') NOT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_promociones_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_promociones`
--

LOCK TABLES `tbb_promociones` WRITE;
/*!40000 ALTER TABLE `tbb_promociones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_promociones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_transacciones`
--

DROP TABLE IF EXISTS `tbb_transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_transacciones` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Usuario_ID` int DEFAULT NULL,
  `Metodo_Pago` enum('TarjetaDebito','TarjetaCredito') DEFAULT NULL,
  `Monto` float DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbb_transacciones_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_transacciones`
--

LOCK TABLES `tbb_transacciones` WRITE;
/*!40000 ALTER TABLE `tbb_transacciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_transacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbb_usuarios`
--

DROP TABLE IF EXISTS `tbb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbb_usuarios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Persona_Id` int DEFAULT NULL,
  `Nombre_Usuario` varchar(100) NOT NULL,
  `Correo_Electronico` varchar(100) NOT NULL,
  `Contrasena` varchar(40) NOT NULL,
  `Numero_Telefonico_Movil` varchar(20) DEFAULT NULL,
  `Estatus` enum('Activo','Inactivo','Bloqueado','Suspendido') NOT NULL,
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Persona_Id` (`Persona_Id`),
  KEY `ix_tbb_usuarios_ID` (`ID`),
  CONSTRAINT `tbb_usuarios_ibfk_1` FOREIGN KEY (`Persona_Id`) REFERENCES `tbb_personas` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbb_usuarios`
--

LOCK TABLES `tbb_usuarios` WRITE;
/*!40000 ALTER TABLE `tbb_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_ejercicios`
--

DROP TABLE IF EXISTS `tbc_ejercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_ejercicios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Video` varchar(255) DEFAULT NULL,
  `Tipo` enum('Aerobico','Resistencia','Flexibilidad','Fuerza') DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Dificultad` enum('Basico','Intermedio','Avanzado') DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Recomendaciones` varchar(255) DEFAULT NULL,
  `Restricciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbc_ejercicios_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_ejercicios`
--

LOCK TABLES `tbc_ejercicios` WRITE;
/*!40000 ALTER TABLE `tbc_ejercicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_ejercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_membresias`
--

DROP TABLE IF EXISTS `tbc_membresias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_membresias` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(50) DEFAULT NULL,
  `Tipo` enum('Individual','Familiar','Empresarial') DEFAULT NULL,
  `Tipo_Servicios` enum('Basicos','Completa','Coaching','Nutriologo') DEFAULT NULL,
  `Tipo_Plan` enum('Anual','Semestral','Trimestral','Bimestral','Mensual','Semanal','Diaria') DEFAULT NULL,
  `Nivel` enum('Nuevo','Plata','Oro','Diamante') DEFAULT NULL,
  `Fecha_Inicio` datetime DEFAULT NULL,
  `Fecha_Fin` datetime DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbc_membresias_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_membresias`
--

LOCK TABLES `tbc_membresias` WRITE;
/*!40000 ALTER TABLE `tbc_membresias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_membresias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_puestos`
--

DROP TABLE IF EXISTS `tbc_puestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_puestos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Salario` varchar(20) DEFAULT NULL,
  `Requisitos` varchar(255) DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbc_puestos_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_puestos`
--

LOCK TABLES `tbc_puestos` WRITE;
/*!40000 ALTER TABLE `tbc_puestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_puestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_roles`
--

DROP TABLE IF EXISTS `tbc_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_roles` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) NOT NULL,
  `Descripcion` longtext,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbc_roles_ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_roles`
--

LOCK TABLES `tbc_roles` WRITE;
/*!40000 ALTER TABLE `tbc_roles` DISABLE KEYS */;
INSERT INTO `tbc_roles` VALUES (1,'Administrador',NULL,1,'2025-03-13 00:00:00',NULL),(2,'Cliente',NULL,1,'2025-03-13 00:00:00',NULL),(3,'Colaborador',NULL,1,'2025-03-13 00:00:00',NULL),(4,'Entrenador',NULL,1,'2025-03-13 00:00:00',NULL),(5,'Visitante',NULL,1,'2025-03-13 00:00:00',NULL);
/*!40000 ALTER TABLE `tbc_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_servicios_clientes`
--

DROP TABLE IF EXISTS `tbc_servicios_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_servicios_clientes` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Persona_ID` varchar(80) DEFAULT NULL,
  `Tipo_Servicio` enum('Consulta','Reclamo','Sugerencia') DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Comentarios` varchar(200) DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbc_servicios_clientes_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_servicios_clientes`
--

LOCK TABLES `tbc_servicios_clientes` WRITE;
/*!40000 ALTER TABLE `tbc_servicios_clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbc_servicios_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbc_sucursales`
--

DROP TABLE IF EXISTS `tbc_sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbc_sucursales` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) DEFAULT NULL,
  `Direccion` varchar(150) DEFAULT NULL,
  `Responsable_Id` int DEFAULT NULL,
  `Total_Clientes_Atendidos` int DEFAULT NULL,
  `Promedio_Clientes_X_Dia` int DEFAULT NULL,
  `Capacidad_Maxima` int DEFAULT NULL,
  `Total_Empleados` int DEFAULT NULL,
  `Horario_Disponibilidad` longtext,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ix_tbc_sucursales_Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbc_sucursales`
--

LOCK TABLES `tbc_sucursales` WRITE;
/*!40000 ALTER TABLE `tbc_sucursales` DISABLE KEYS */;
INSERT INTO `tbc_sucursales` VALUES (1,'bx','xbx',898,8,77,7,8,'x',1,'2024-12-10 23:45:56','2024-12-10 23:45:56'),(2,'Jesus','privada',12,45,46,1,8,'no tiene tiempo ',1,'2024-12-11 00:37:23','2024-12-11 00:37:23'),(3,'sd','s',2,2,22,22,2,'dcd',1,'2024-12-11 06:38:02','2024-12-11 06:38:02'),(4,'ferchi','las pilas',12548,2,80,50,15,'medio dia',1,'2024-12-11 00:38:12','2024-12-11 00:38:12'),(5,'d','s',3,3,3,3,3,'sd',1,'2024-12-11 07:02:31','2024-12-11 07:02:31'),(6,'Xicotepec','Niños Heroes',2,2,22,22,3,'HDJA',1,'2024-12-11 07:04:09','2024-12-11 07:04:09');
/*!40000 ALTER TABLE `tbc_sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_aduedos`
--

DROP TABLE IF EXISTS `tbd_aduedos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_aduedos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Area` varchar(255) DEFAULT NULL,
  `Cliente` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Tipo` varchar(255) DEFAULT NULL,
  `Detalle` enum('Producto','Equipamiento','Servicio') DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_aduedos_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_aduedos`
--

LOCK TABLES `tbd_aduedos` WRITE;
/*!40000 ALTER TABLE `tbd_aduedos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_aduedos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_dietas`
--

DROP TABLE IF EXISTS `tbd_dietas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_dietas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Detalle` longtext,
  `Descripcion` longtext,
  `Objetivo` longtext,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_dietas`
--

LOCK TABLES `tbd_dietas` WRITE;
/*!40000 ALTER TABLE `tbd_dietas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_dietas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_ejercicios_rutinas`
--

DROP TABLE IF EXISTS `tbd_ejercicios_rutinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_ejercicios_rutinas` (
  `Ejercicio_ID` int NOT NULL,
  `Rutina_ID` int NOT NULL,
  `Cantidad` varchar(10) DEFAULT NULL,
  `Tipo` enum('Repeticiones','Tiempo') DEFAULT NULL,
  `Observaciones` text,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Ejercicio_ID`,`Rutina_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_ejercicios_rutinas`
--

LOCK TABLES `tbd_ejercicios_rutinas` WRITE;
/*!40000 ALTER TABLE `tbd_ejercicios_rutinas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_ejercicios_rutinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_evaluaciones_servicios`
--

DROP TABLE IF EXISTS `tbd_evaluaciones_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_evaluaciones_servicios` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Usuario_ID` int DEFAULT NULL,
  `Servicios` enum('SNutricion','HP','C','PE') DEFAULT NULL,
  `Calificacion` varchar(60) DEFAULT NULL,
  `Criterio` varchar(100) DEFAULT NULL,
  `Estatus` tinyint(1) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_evaluaciones_servicios_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_evaluaciones_servicios`
--

LOCK TABLES `tbd_evaluaciones_servicios` WRITE;
/*!40000 ALTER TABLE `tbd_evaluaciones_servicios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_evaluaciones_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_indicadores_nutricionales`
--

DROP TABLE IF EXISTS `tbd_indicadores_nutricionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_indicadores_nutricionales` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Altura` float DEFAULT NULL,
  `Peso` float DEFAULT NULL,
  `Imc` float DEFAULT NULL,
  `Porcentaje_grasa` float DEFAULT NULL,
  `Nivel_actividad` enum('Sedentario','Ligero','Moderado','Activo','Muy_Activo') DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Usuario_Id` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_indicadores_nutricionales_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_indicadores_nutricionales`
--

LOCK TABLES `tbd_indicadores_nutricionales` WRITE;
/*!40000 ALTER TABLE `tbd_indicadores_nutricionales` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_indicadores_nutricionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_opinion_cliente`
--

DROP TABLE IF EXISTS `tbd_opinion_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_opinion_cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `respuesta` longtext,
  `estatus` tinyint(1) DEFAULT NULL,
  `atencion_personal` varchar(100) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_tbd_opinion_cliente_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_opinion_cliente`
--

LOCK TABLES `tbd_opinion_cliente` WRITE;
/*!40000 ALTER TABLE `tbd_opinion_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_opinion_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_preguntas`
--

DROP TABLE IF EXISTS `tbd_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_preguntas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(255) NOT NULL,
  `respuesta` longtext NOT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `persona` varchar(100) DEFAULT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_tbd_preguntas_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_preguntas`
--

LOCK TABLES `tbd_preguntas` WRITE;
/*!40000 ALTER TABLE `tbd_preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_programas_saludables`
--

DROP TABLE IF EXISTS `tbd_programas_saludables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_programas_saludables` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(250) DEFAULT NULL,
  `Usuario_ID` int DEFAULT NULL,
  `Instructor_ID` int DEFAULT NULL,
  `Fecha_Creacion` datetime DEFAULT NULL,
  `Estatus` enum('Registrado','Sugerido','Aprobado_Medico','Aprobado_Usuario','Rechazado_Medico','Rechazado_Usuario','Terminado','Suspendido','Cancelado') DEFAULT NULL,
  `Duracion` varchar(80) DEFAULT NULL,
  `Porcentaje_Avance` decimal(5,2) DEFAULT NULL,
  `Fecha_Ultima_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_programas_saludables_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_programas_saludables`
--

LOCK TABLES `tbd_programas_saludables` WRITE;
/*!40000 ALTER TABLE `tbd_programas_saludables` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_programas_saludables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_rutinas`
--

DROP TABLE IF EXISTS `tbd_rutinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_rutinas` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Programa_Saludable_ID` int DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  `Tiempo_Aproximado` varchar(10) DEFAULT NULL,
  `Estatus` enum('Concluido','Actual','Suspendida') DEFAULT NULL,
  `Resultados_Esperados` text,
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_rutinas_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_rutinas`
--

LOCK TABLES `tbd_rutinas` WRITE;
/*!40000 ALTER TABLE `tbd_rutinas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_rutinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_usuarios_roles`
--

DROP TABLE IF EXISTS `tbd_usuarios_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_usuarios_roles` (
  `Usuario_ID` int NOT NULL,
  `Rol_ID` int NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '1',
  `Fecha_Registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`Usuario_ID`,`Rol_ID`),
  KEY `Rol_ID` (`Rol_ID`),
  CONSTRAINT `tbd_usuarios_roles_ibfk_1` FOREIGN KEY (`Usuario_ID`) REFERENCES `tbb_usuarios` (`ID`),
  CONSTRAINT `tbd_usuarios_roles_ibfk_2` FOREIGN KEY (`Rol_ID`) REFERENCES `tbc_roles` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_usuarios_roles`
--

LOCK TABLES `tbd_usuarios_roles` WRITE;
/*!40000 ALTER TABLE `tbd_usuarios_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_usuarios_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbd_valoracion_nutricional`
--

DROP TABLE IF EXISTS `tbd_valoracion_nutricional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbd_valoracion_nutricional` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Miembro_ID` int DEFAULT NULL,
  `Indicador_ID` int DEFAULT NULL,
  `Pregunta_ID` int DEFAULT NULL,
  `Valor` varchar(60) DEFAULT NULL,
  `Comentarios` varchar(60) DEFAULT NULL,
  `Fecha_Registro` datetime DEFAULT NULL,
  `Fecha_Actualizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ix_tbd_valoracion_nutricional_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbd_valoracion_nutricional`
--

LOCK TABLES `tbd_valoracion_nutricional` WRITE;
/*!40000 ALTER TABLE `tbd_valoracion_nutricional` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbd_valoracion_nutricional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbi_bitacora`
--

DROP TABLE IF EXISTS `tbi_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbi_bitacora` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) NOT NULL,
  `Operacion` enum('Create','Read','Update','Delete') NOT NULL,
  `Tabla` varchar(50) NOT NULL,
  `Descripción` text NOT NULL,
  `Estatus` bit(1) DEFAULT b'1',
  `Fecha_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbi_bitacora`
--

LOCK TABLES `tbi_bitacora` WRITE;
/*!40000 ALTER TABLE `tbi_bitacora` DISABLE KEYS */;
INSERT INTO `tbi_bitacora` VALUES (1,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:1\nNombre: EmilioUrrutiaVega\nGenero H\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/7005a257-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2005-05-28\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(2,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:2\nNombre: CeciliaOrtegaAcosta\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/7005feba-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2007-08-31\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(3,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:3\nNombre: PaulaPonceCampos\nGenero M\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/700637b1-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2005-10-06\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(4,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:4\nNombre: Dip.MaximilianoEsquivelDomínguez\nGenero H\nGrupo Sanguineo: AB+\nArchivo de Fotografía: foto/70068092-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2005-08-01\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(5,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:5\nNombre: AlejandroRíosZavala\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/7006bca3-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2011-07-14\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(6,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:6\nNombre: AlejandroDelgadoRivera\nGenero H\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/7006e8c7-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2007-10-04\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(7,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:7\nNombre: GabrielaCedilloParedes\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/7007216c-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2006-08-30\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(8,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:8\nNombre: Pdta.JuliaGuevaraRivera\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/700752db-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2009-12-15\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(9,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:9\nNombre: MarcosMéndezSilva\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/70078268-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2011-06-03\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(10,'JaimeVazquez@10.10.68.5','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:10\nNombre: RosarioToledoSánchez\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/7007b350-00eb-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2011-05-19\nEstatus: Activo',_binary '','2025-03-14 09:46:04'),(11,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:11\nNombre: JimenaRojasVega\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca361056-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1995-09-11\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(12,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:12\nNombre: C.BertaLópezReyes\nGenero M\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/ca36c2cb-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1965-03-10\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(13,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:13\nNombre: AdrianaDomínguezCordero\nGenero M\nGrupo Sanguineo: AB+\nArchivo de Fotografía: foto/ca36ff24-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2006-07-15\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(14,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:14\nNombre: BelénEscobarUrrutia\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3741e0-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1985-06-06\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(15,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:15\nNombre: JovenArmandoPatiñoPadilla\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca37713c-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1962-11-14\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(16,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:16\nNombre: AbigailSuárezRomero\nGenero M\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/ca379d78-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1982-08-09\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(17,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:17\nNombre: MarianaGutiérrezZamora\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca37ca45-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2003-01-20\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(18,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:18\nNombre: EugeniaBermúdezOrtega\nGenero M\nGrupo Sanguineo: B+\nArchivo de Fotografía: foto/ca37f883-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1989-01-11\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(19,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:19\nNombre: JaimeSalazarSilva\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3828d9-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1988-09-12\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(20,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:20\nNombre: Sen.DoloresBenítezNavarro\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3854c1-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1982-09-29\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(21,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:21\nNombre: CarolinaEsquivelAcosta\nGenero M\nGrupo Sanguineo: AB+\nArchivo de Fotografía: foto/ca3881bf-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1979-08-22\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(22,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:22\nNombre: MartaSepúlvedaVillarreal\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca38adc9-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1988-01-31\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(23,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:23\nNombre: BrunoSepúlvedaBeltrán\nGenero H\nGrupo Sanguineo: B+\nArchivo de Fotografía: foto/ca38da24-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2007-02-21\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(24,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:24\nNombre: Arq.RomeoCanoRodríguez\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca390a0c-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1970-12-23\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(25,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:25\nNombre: GermánDomínguezSepúlveda\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3939e1-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1959-02-23\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(26,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:26\nNombre: Almte.FabiolaParedesGarcía\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca39669b-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1999-07-24\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(27,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:27\nNombre: LuzRamosFarías\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca399489-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1993-12-11\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(28,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:28\nNombre: Ing.RicardoVergaraCano\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca39c089-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1962-08-05\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(29,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:29\nNombre: EzequielAcostaChávez\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca39f14a-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1981-11-11\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(30,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:30\nNombre: AndrésMontalvoSaavedra\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3a1cda-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1981-06-13\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(31,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:31\nNombre: JavierVásquezFigueroa\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3a4ac3-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1987-05-13\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(32,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:32\nNombre: VanessaHuertaSalazar\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3a7649-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1987-04-30\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(33,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:33\nNombre: EstebanCamposToledo\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3aa431-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1956-06-29\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(34,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:34\nNombre: IvánÁlvarezUrrutia\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3acfa1-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1983-10-16\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(35,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:35\nNombre: Sen.MicaelaSepúlvedaPonce\nGenero M\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/ca3afdd3-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1982-05-24\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(36,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:36\nNombre: MauricioAguilarPonce\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3b2f20-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1997-06-10\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(37,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:37\nNombre: GermánFigueroaQuintero\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3b5a84-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1976-09-19\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(38,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:38\nNombre: FernandoCruzRodríguez\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3b84a0-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1993-10-31\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(39,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:39\nNombre: C.FernandaPonceMejía\nGenero M\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/ca3bb0f2-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1978-12-01\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(40,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:40\nNombre: IreneVargasCastañeda\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3bdc79-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1971-04-13\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(41,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:41\nNombre: RebecaOsorioGuerrero\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3c07b6-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1980-05-02\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(42,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:42\nNombre: MauricioSalazarToledo\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3c31df-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1955-07-28\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(43,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:43\nNombre: C.P.JimenaOrtegaZamora\nGenero M\nGrupo Sanguineo: AB+\nArchivo de Fotografía: foto/ca3c5d92-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1982-03-26\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(44,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:44\nNombre: MiguelNavarroVergara\nGenero H\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/ca3c894a-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1967-03-03\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(45,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:45\nNombre: GermánLópezFuentes\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3cb5fb-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1994-07-07\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(46,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:46\nNombre: CésarValenzuelaVásquez\nGenero H\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/ca3ce0f7-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1974-10-16\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(47,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:47\nNombre: C.P.IreneGonzálezCedillo\nGenero M\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/ca3d10c1-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1960-07-14\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(48,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:48\nNombre: LauraFigueroaVillarreal\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3d3d2f-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1974-04-23\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(49,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:49\nNombre: MateoCabreraLópez\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3d6a70-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1957-03-08\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(50,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:50\nNombre: CeciliaMoraLópez\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3d95ae-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1994-09-23\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(51,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:51\nNombre: C.P.MiriamSilvaJiménez\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3dc190-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2002-05-22\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(52,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:52\nNombre: LuzÁlvarezRivera\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3defe6-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1972-09-22\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(53,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:53\nNombre: RosalíaMartínezPalacios\nGenero M\nGrupo Sanguineo: AB+\nArchivo de Fotografía: foto/ca3e4cf7-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2004-11-14\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(54,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:54\nNombre: RafaelCamachoSilva\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3e7d50-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1966-11-10\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(55,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:55\nNombre: GilbertoQuinteroRamírez\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3ea986-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1975-07-08\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(56,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:56\nNombre: LorenzoMuñozGuerrero\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca3ed5ee-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1998-01-26\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(57,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:57\nNombre: YahirBustamanteCano\nGenero H\nGrupo Sanguineo: B+\nArchivo de Fotografía: foto/ca3f0181-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1991-11-01\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(58,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:58\nNombre: BaltasarEscobarRomero\nGenero H\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/ca3f2d2a-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1997-10-15\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(59,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:59\nNombre: Sra.PatriciaMontalvoBenítez\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3f5969-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1968-01-06\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(60,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:60\nNombre: Almte.GabrielHuertaCarrasco\nGenero H\nGrupo Sanguineo: B+\nArchivo de Fotografía: foto/ca3f8520-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1960-10-23\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(61,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:61\nNombre: Sra.RaquelUrrutiaCordero\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca3fb0df-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1990-08-26\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(62,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:62\nNombre: YeseniaPalaciosHuerta\nGenero M\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/ca3fdf3b-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1992-04-01\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(63,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:63\nNombre: Sra.ZulemaCanoSilva\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca400c26-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1979-01-12\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(64,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:64\nNombre: Tte.DiegoMontalvoFuentes\nGenero H\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/ca40399d-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1998-04-18\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(65,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:65\nNombre: NicolásLeónPadilla\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca406637-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1992-12-13\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(66,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:66\nNombre: Arq.MaríaMéndezPeralta\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca4091f8-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1999-09-11\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(67,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:67\nNombre: PabloRomeroCabrera\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca40bf9d-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1994-12-24\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(68,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:68\nNombre: FelipeDomínguezGuevara\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca40eb33-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1959-05-27\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(69,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:69\nNombre: BeatrizSilvaMuñoz\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca411688-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1964-12-03\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(70,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:70\nNombre: Med.MercedesRiveraBenítez\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca414221-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1980-06-25\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(71,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:71\nNombre: Sen.FernandaRamírezGuerrero\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca4171cd-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1956-09-14\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(72,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:72\nNombre: MaximilianoPadillaBustamante\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca419ec0-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1972-08-11\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(73,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:73\nNombre: DanielCarrascoEspinoza\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca41ca08-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1997-06-07\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(74,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:74\nNombre: Srita.OlgaCamachoEsquivel\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca41f5cd-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1974-02-12\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(75,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:75\nNombre: Cnel.SandraSánchezSalinas\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca4227ad-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1957-05-08\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(76,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:76\nNombre: BrendaCruzNavarro\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca425aa2-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1983-06-13\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(77,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:77\nNombre: YeseniaSolísVergara\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca4285da-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1968-04-15\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(78,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:78\nNombre: C.P.IreneTorresMorales\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca42e0fc-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1981-07-04\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(79,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:79\nNombre: LeticiaPadillaGarcía\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca4310fc-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1999-09-19\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(80,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:80\nNombre: RosarioHernándezAguilar\nGenero M\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/ca433ca4-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1960-07-26\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(81,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:81\nNombre: Mtr.UrielBeltránMéndez\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca4368ab-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1971-10-11\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(82,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:82\nNombre: DanielBravoFarías\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca439439-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1962-06-21\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(83,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:83\nNombre: DiegoGodoyMorales\nGenero H\nGrupo Sanguineo: B+\nArchivo de Fotografía: foto/ca43c0d5-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1954-03-27\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(84,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:84\nNombre: RománBenítezBarrera\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca43ec3b-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1989-04-08\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(85,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:85\nNombre: IsabelCastilloMejía\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca4417aa-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1957-08-13\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(86,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:86\nNombre: Dip.GustavoMejíaHerrera\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca4443af-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1966-05-08\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(87,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:87\nNombre: Cnel.BelénSalazarMontoya\nGenero M\nGrupo Sanguineo: AB+\nArchivo de Fotografía: foto/ca446f6a-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1997-05-30\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(88,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:88\nNombre: YandelDomínguezHuerta\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca449acd-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1977-03-29\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(89,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:89\nNombre: PedroPadillaArenas\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca44c715-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1970-08-26\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(90,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:90\nNombre: Mtra.KarenMartínezMejía\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca44f382-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1959-04-14\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(91,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:91\nNombre: Tte.AdrianaBarreraMéndez\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca451fb6-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1959-06-29\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(92,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:92\nNombre: Gral.SebastiánTapiaParedes\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca454b67-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1976-08-13\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(93,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:93\nNombre: GustavoMontesEscobar\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca457708-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1957-11-13\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(94,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:94\nNombre: Pdta.ZairaMéndezBarrera\nGenero M\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/ca45a44a-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1960-02-23\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(95,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:95\nNombre: CamilaMoraÁlvarez\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca45d2d7-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1970-06-06\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(96,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:96\nNombre: RaúlRojasPalacios\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca45fec2-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1981-11-19\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(97,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:97\nNombre: Cnel.RubénPizarroGonzález\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca462a7c-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1960-08-18\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(98,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:98\nNombre: Lic.MiriamValenzuelaPatiño\nGenero M\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/ca465628-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1960-03-21\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(99,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:99\nNombre: BlancaSuárezChávez\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca46819f-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1976-07-28\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(100,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:100\nNombre: SamuelFaríasVergara\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca46ad77-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1972-03-06\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(101,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:101\nNombre: CésarReyesJiménez\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca46d8e6-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1967-01-08\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(102,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:102\nNombre: Ing.AdriánRamírezQuintero\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/ca47075f-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1965-02-27\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(103,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:103\nNombre: Dip.DanielValenzuelaCastañeda\nGenero H\nGrupo Sanguineo: O-\nArchivo de Fotografía: foto/ca47343d-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1973-04-16\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(104,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:104\nNombre: OmarEsquivelDelgado\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca476066-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1999-09-30\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(105,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:105\nNombre: IvánVásquezToledo\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca478c55-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1975-07-18\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(106,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:106\nNombre: Sra.LauraBeltránRomero\nGenero M\nGrupo Sanguineo: B+\nArchivo de Fotografía: foto/ca47b838-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1971-01-15\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(107,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:107\nNombre: LAETomásBeltránMéndez\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca47e4ba-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1989-07-26\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(108,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:108\nNombre: C.CarolinaSepúlvedaDomínguez\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/ca48139c-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1965-09-05\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(109,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:109\nNombre: CamilaCarrascoSolís\nGenero M\nGrupo Sanguineo: B+\nArchivo de Fotografía: foto/ca483faa-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1976-02-02\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(110,'AlejandroRomero@10.10.68.4','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:110\nNombre: GenaroOrtegaRodríguez\nGenero H\nGrupo Sanguineo: B+\nArchivo de Fotografía: foto/ca486cbf-00ec-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1966-05-02\nEstatus: Activo',_binary '','2025-03-14 09:55:45'),(111,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:111\nNombre: Sra.CarlaBravoMontalvo\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/3895b091-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2001-02-02\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(112,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:112\nNombre: DiegoGuevaraÁlvarez\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/389d5baf-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1995-02-19\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(113,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:113\nNombre: AlonsoZavalaBustamante\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/389d9a98-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2003-02-11\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(114,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:114\nNombre: Almte.GermánEsquivelReyes\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/389dc76e-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2003-11-10\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(115,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:115\nNombre: Tte.FabiánAguirreZamora\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/389df6e2-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1999-10-27\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(116,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:116\nNombre: AlejandraHernándezPizarro\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/389e23fd-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1998-12-28\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(117,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:117\nNombre: LeticiaRamírezValdés\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/389e5777-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2002-02-22\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(118,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:118\nNombre: TeresaÁlvarezJiménez\nGenero M\nGrupo Sanguineo: A-\nArchivo de Fotografía: foto/389e83e4-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2004-03-27\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(119,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:119\nNombre: ClaudiaMuñozCastillo\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/389eb30c-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2004-08-25\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(120,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:120\nNombre: Dr.GenaroFigueroaHerrera\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/389f0041-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1995-01-01\nEstatus: Activo',_binary '','2025-03-14 09:58:50'),(121,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:121\nNombre: MatíasRodríguezCampos\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/571066d6-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1998-06-07\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(122,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:122\nNombre: Profr.OrlandoJiménezRivera\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/57182199-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1997-08-17\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(123,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:123\nNombre: MartaPizarroGuerrero\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/571860ff-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2000-07-18\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(124,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:124\nNombre: Dir.RosalíaRiveraOrtega\nGenero M\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/57189472-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2002-02-08\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(125,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:125\nNombre: SamuelBenítezUrrutia\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/5718e28f-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2004-03-15\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(126,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:126\nNombre: AlejandroOrtegaParedes\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/57191bab-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1997-05-20\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(127,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:127\nNombre: ValentínOrtegaSolís\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/57196349-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2001-11-19\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(128,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:128\nNombre: GustavoMontesMontes\nGenero H\nGrupo Sanguineo: O+\nArchivo de Fotografía: foto/57199897-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1999-07-07\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(129,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:129\nNombre: EsperanzaGuevaraSepúlveda\nGenero M\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/5719d233-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 1996-08-18\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(130,'root@::1','Create','tbb_personas','Se ha agregado una nueva PERSONA con el ID:130\nNombre: DanielReyesSepúlveda\nGenero H\nGrupo Sanguineo: A+\nArchivo de Fotografía: foto/571a2904-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: 2003-04-04\nEstatus: Activo',_binary '','2025-03-14 09:59:41'),(135,'root@localhost','Update','tbb_personas','Antes de la actualización:\nID: \n128\nNombre registrado: \nGustavo Montes Montes\nGénero: \nH\nTipo sangre: \nO+\nFotografía: \nfoto/57199897-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: \n1999-07-07\nEstatus: \nActivo',_binary '','2025-03-19 06:01:44'),(136,'root@localhost','Update','tbb_personas','Después de la actualización:\nID: \n128\nNombre: \nRamiro Ramirez Rivera\nGénero: \nH\nGrupo Sanguíneo: \nO+\nFotografía: \nfoto/57199897-00ed-11f0-8ba8-581122b8ead5.png\nFecha de Nacimiento: \n1999-07-07\nEstatus: \nActivo',_binary '','2025-03-19 06:01:44');
/*!40000 ALTER TABLE `tbi_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_personas_por_tiposangre`
--

DROP TABLE IF EXISTS `vw_personas_por_tiposangre`;
/*!50001 DROP VIEW IF EXISTS `vw_personas_por_tiposangre`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_personas_por_tiposangre` AS SELECT 
 1 AS `tipo_sangre`,
 1 AS `porcentaje`,
 1 AS `total_personas`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'gimnasio_8b_idgs_220385'
--

--
-- Dumping routines for database 'gimnasio_8b_idgs_220385'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calcula_edad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcula_edad`(fecha_nacimiento date) RETURNS int
    DETERMINISTIC
BEGIN
	declare edad int default null;
    set edad = floor(datediff(current_date(),fecha_nacimiento) / 365.25); 
RETURN edad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_apellido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_apellido`() RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_apellido_generado VARCHAR(100) DEFAULT NULL;
    DECLARE num_aleatorio INT;

    -- Genera un número aleatorio entre 1 y 100
    SET num_aleatorio = fn_numero_aleatorio_rangos(1, 100);

    -- Establece los 100 apellidos disponibles
    SET v_apellido_generado = ELT(num_aleatorio,
        "García", "Rodríguez", "Martínez", "López", "González", "Pérez", "Sánchez", "Ramírez", "Torres", "Flores",
        "Gutiérrez", "Morales", "Rivera", "Cruz", "Hernández", "Vásquez", "Álvarez", "Jiménez", "Mendoza", "Castillo",
        "Ortega", "Reyes", "Delgado", "Romero", "Silva", "Suárez", "Ramos", "Aguilar", "Ortega", "Navarro",
        "Domínguez", "Guerrero", "Cabrera", "Vega", "Herrera", "Méndez", "Ríos", "Valencia", "Carrasco", "Vargas",
        "Paredes", "Escobar", "Fuentes", "Camacho", "Campos", "Montes", "Salazar", "Peña", "León", "Cordero",
        "Acosta", "Mora", "Solís", "Lara", "Rojas", "Beltrán", "Montalvo", "Quintero", "Espinoza", "Bravo",
        "Benítez", "Farías", "Zamora", "Mejía", "Bermúdez", "Pizarro", "Figueroa", "Castañeda", "Arenas", "Toledo",
        "Godoy", "Padilla", "Palacios", "Ponce", "Saavedra", "Sepúlveda", "Urrutia", "Vergara", "Zavala", "Valdés",
        "Valenzuela", "Villarreal", "Huerta", "Cano", "Aguirre", "Arellano", "Salinas", "Peralta", "Barrera", "Bustamante",
        "Cedillo", "Guevara", "Chávez", "Osorio", "Tapia", "Muñoz", "Patiño", "Serrano", "Montoya", "Esquivel"
    );

    RETURN v_apellido_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_bandera_porcentaje` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_bandera_porcentaje`(porcentaje int) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN
	declare flag boolean;
    
    if porcentaje < 0 or porcentaje > 100 then
		signal sqlstate '45000'
        set message_text = 'El porcentaje debe estar entre 0 y 100';
	end if;
    
    set flag = (rand() * 100 < porcentaje);

RETURN flag;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_fecha_nacimiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_fecha_nacimiento`(fecha_lim_inf DATE, fecha_lim_sup DATE) RETURNS date
    DETERMINISTIC
BEGIN
	 declare fecha_generada date default null;
     declare dias_rango int;
     declare dias_aleatorios int;
     
     set dias_rango = datediff(fecha_lim_sup,fecha_lim_inf);
     set dias_aleatorios = fn_numero_aleatorio_rangos(1, dias_rango);
     
     set fecha_generada = date_add(fecha_lim_inf, interval dias_aleatorios day);
RETURN fecha_generada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_nombre_simple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_nombre_simple`(genero CHAR(1)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE v_nombre_generado VARCHAR(100) DEFAULT NULL;
    DECLARE num_aleatorio INT;

    -- Genera un número aleatorio entre 1 y 100
    SET num_aleatorio = fn_numero_aleatorio_rangos(1, 100);

    IF genero = 'H' THEN 
        SET v_nombre_generado = ELT(num_aleatorio,
            "Alejandro", "Alonso", "Andrés", "Antonio", "Armando", "Arturo", "Benjamín", "Bruno", "Camilo", "Carlos",
            "Cristian", "Daniel", "David", "Diego", "Eduardo", "Emilio", "Emmanuel", "Enrique", "Esteban", "Ezequiel",
            "Fabián", "Felipe", "Fernando", "Francisco", "Gabriel", "Germán", "Gilberto", "Guillermo", "Gustavo", "Héctor",
            "Horacio", "Hugo", "Ignacio", "Isaac", "Ismael", "Iván", "Jaime", "Javier", "Jesús", "Joaquín",
            "Jorge", "José", "Juan", "Julio", "Kevin", "Leandro", "Leonardo", "Lorenzo", "Luis", "Manuel",
            "Marcos", "Martín", "Mateo", "Matías", "Mauricio", "Maximiliano", "Miguel", "Nicolás", "Omar", "Orlando",
            "Oscar", "Pablo", "Patricio", "Pedro", "Rafael", "Ramón", "Raúl", "Ricardo", "Roberto", "Rodrigo",
            "Rogelio", "Román", "Romeo", "Rubén", "Salvador", "Samuel", "Santiago", "Sebastián", "Sergio", "Teodoro",
            "Tomás", "Uriel", "Valentín", "Vicente", "Víctor", "Wilfredo", "William", "Xavier", "Yahir", "Yandel",
            "Zacarías", "Abel", "Adrián", "Braulio", "Baltasar", "César", "Damián", "Efraín", "Fausto", "Genaro"
        );

    ELSE
        SET v_nombre_generado = ELT(num_aleatorio,
            "Abigail", "Adriana", "Alejandra", "Alicia", "Ana", "Andrea", "Angela", "Antonia", "Aurora", "Beatriz",
            "Belén", "Blanca", "Brenda", "Camila", "Carla", "Carmen", "Carolina", "Cecilia", "Clara", "Claudia",
            "Concepción", "Cristina", "Daniela", "Diana", "Dolores", "Elena", "Elizabeth", "Emilia", "Esperanza", "Estefanía",
            "Estela", "Eugenia", "Eva", "Fabiola", "Fernanda", "Flor", "Francisca", "Gabriela", "Gloria", "Graciela",
            "Guadalupe", "Helena", "Inés", "Irene", "Isabel", "Jacqueline", "Jimena", "Josefina", "Juana", "Julia",
            "Karen", "Laura", "Leticia", "Liliana", "Lorena", "Lucía", "Luisa", "Luz", "Magdalena", "Manuela",
            "Marcela", "Margarita", "María", "Mariana", "Marina", "Marta", "Mercedes", "Micaela", "Miriam", "Monserrat",
            "Natalia", "Norma", "Olga", "Patricia", "Paula", "Paulina", "Pilar", "Raquel", "Rebeca", "Rocío",
            "Rosalía", "Rosario", "Sandra", "Sara", "Silvia", "Sofía", "Susana", "Teresa", "Valentina", "Vanessa",
            "Verónica", "Victoria", "Virginia", "Ximena", "Yesenia", "Yolanda", "Zaira", "Zulema", "Amalia", "Berta"
        );
    END IF;

    RETURN v_nombre_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_genera_titulo_cortesia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_genera_titulo_cortesia`(genero CHAR(1)) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE titulo_generado VARCHAR(20) DEFAULT NULL;
    DECLARE bandera_titulo BOOLEAN DEFAULT (fn_genera_bandera_porcentaje(25));

    IF bandera_titulo THEN
    IF genero = 'H' THEN
        SET titulo_generado = ELT(fn_numero_aleatorio_rangos(1, 20),
            'Sr.', 'Joven', 'Dr.', 'Mtr.', 'Lic.', 'Profr.', 'C.', 'C.P.', 'Med.', 'LAE', 
            'Ing.', 'Arq.', 'Gral.', 'Cnel.', 'Tte.', 'Almte.', 'Pdte.', 'Sen.', 'Dip.', 'Dir.');
    ELSE
        SET titulo_generado = ELT(fn_numero_aleatorio_rangos(1, 20),
            'Sra.', 'Srita.', 'Dra.', 'Mtra.', 'Lic.', 'Profra.', 'C.', 'C.P.', 'Med.', 'LAE', 
            'Ing.', 'Arq.', 'Gral.', 'Cnel.', 'Tte.', 'Almte.', 'Pdta.', 'Sen.', 'Dip.', 'Dir.');
		END IF;
	END IF;

    RETURN titulo_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_numero_aleatorio_rangos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_numero_aleatorio_rangos`(lim_inferior int, lim_superior int) RETURNS int
    DETERMINISTIC
BEGIN
	declare random_number INT;
    
    set random_number = floor(RAND()*(lim_superior - lim_inferior + 1))+lim_inferior;
RETURN random_number;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_tipo_sangre_aleatorio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_tipo_sangre_aleatorio`() RETURNS varchar(5) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE gs_generado VARCHAR(5) DEFAULT NULL;
    DECLARE pivote INT DEFAULT fn_numero_aleatorio_rangos(0,1000);
    
     IF pivote BETWEEN 0 AND 360 THEN
        SET gs_generado = "A+";
    ELSEIF pivote BETWEEN 361 AND 450 THEN
        SET gs_generado = "A-";
    ELSEIF pivote BETWEEN 451 AND 510 THEN
        SET gs_generado = "B+";
    ELSEIF pivote BETWEEN 511 AND 525 THEN
        SET gs_generado = "B-";
    ELSEIF pivote BETWEEN 526 AND 555 THEN
        SET gs_generado = "AB+";
    ELSEIF pivote BETWEEN 556 AND 560 THEN
        SET gs_generado = "AB-";
    ELSEIF pivote BETWEEN 561 AND 920 THEN
        SET gs_generado = "O+";
    ELSEIF pivote BETWEEN 921 AND 1000 THEN
        SET gs_generado = "O-";
    END IF;
RETURN gs_generado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_genera_persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_persona`(
    cuantos INT, 
    genero CHAR(3), 
    edad_min INT, 
    edad_max INT
)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE fecha_nacimiento DATE DEFAULT NULL;
    DECLARE fecha_valida BOOLEAN DEFAULT FALSE;
    DECLARE genero_original CHAR(3);
    
    -- Guardar si el género fue proporcionado o es NULL
    SET genero_original = genero;
    
    WHILE i < cuantos DO
        -- Si el género es NULL, generarlo aleatoriamente
        IF genero IS NULL THEN 
            SET genero = ELT(fn_numero_aleatorio_rangos(1, 2), 'M', 'H');
        END IF;
        
        -- Generar una fecha de nacimiento válida
        SET fecha_valida = FALSE;
        WHILE fecha_valida = FALSE DO
            SET fecha_nacimiento = fn_genera_fecha_nacimiento('1950-01-01', CURRENT_DATE());
            IF fn_calcula_edad(fecha_nacimiento) BETWEEN edad_min AND edad_max THEN
                SET fecha_valida = TRUE;
            END IF;
        END WHILE;
        
        -- Insertar la persona generada en la tabla
        INSERT INTO tbb_personas 
        VALUES (
            DEFAULT, 
            fn_genera_titulo_cortesia(genero), 
            fn_genera_nombre_simple(genero), 
            fn_genera_apellido(), 
            fn_genera_apellido(), 
            fecha_nacimiento, 
            CONCAT('foto/', UUID(), '.png'), 
            genero, 
            fn_tipo_sangre_aleatorio(), 
            DEFAULT, NOW(), NULL
        );
        
        -- Incrementar el contador
        SET i = i + 1;
        
        -- Si el género original era NULL, resetearlo para la siguiente iteración
        IF genero_original IS NULL THEN
            SET genero = NULL;
        END IF;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_genera_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_usuario`(
    IN cuantos INT,
    IN genero CHAR(3),
    IN edad_min INT,
    IN edad_max INT,
    IN rol_id INT
)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE persona_id INT;
    DECLARE nombre VARCHAR(80);
    DECLARE apellido VARCHAR(80);
    DECLARE nombre_usuario VARCHAR(60);
    DECLARE correo VARCHAR(100);
    DECLARE contrasena VARCHAR(40);
    DECLARE telefono VARCHAR(20);
    DECLARE intentos INT;
    
    -- Validar si el rol_id existe en tbc_roles
    IF NOT EXISTS (SELECT 1 FROM tbc_roles WHERE ID = rol_id) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El tipo de usuario especificado no existe en tbc_roles';
    END IF;

    user_loop: WHILE i < cuantos DO
        -- Generar una nueva persona
        CALL sp_genera_persona(1, genero, edad_min, edad_max);
        	DO SLEEP(2);
        
        -- Obtener la última persona generada
        SELECT ID, COALESCE(Segundo_Apellido, 'Anonimo'), COALESCE(Primer_Apellido, 'Desconocido') 
        INTO persona_id, nombre, apellido
        FROM tbb_personas ORDER BY ID DESC LIMIT 1;

        -- Verificar que se obtuvo una persona
        IF persona_id IS NULL THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Error: No se pudo obtener la persona generada.';
        END IF;

        SET intentos = 0;
        -- Eliminar acentos
        SET nombre = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(nombre, 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u');
        SET apellido = REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(apellido, 'á', 'a'), 'é', 'e'), 'í', 'i'), 'ó', 'o'), 'ú', 'u');
        
        SET nombre_usuario = LOWER(CONCAT(LEFT(nombre, 20), '.', LEFT(apellido, 20)));
        SET nombre_usuario = LEFT(nombre_usuario, 25);  -- Deja 1 caracter libre para el número aleatorio

        nombre_loop: WHILE EXISTS (SELECT 1 FROM tbb_usuarios WHERE Nombre_Usuario = nombre_usuario) DO
            SET nombre_usuario = CONCAT(LEFT(nombre_usuario, 25), FLOOR(RAND() * 10));
            SET intentos = intentos + 1;
            IF intentos > 10 THEN LEAVE nombre_loop; END IF;
        END WHILE;

        -- Generar correo electrónico único sin números
        SET intentos = 0;
        SET correo = CONCAT(nombre_usuario, '@example.com');
        SET correo = LEFT(correo, 100);

        correo_loop: WHILE EXISTS (SELECT 1 FROM tbb_usuarios WHERE Correo_Electronico = correo) DO
            SET correo = CONCAT(nombre_usuario, '@example.com'); -- No agregamos números
            SET intentos = intentos + 1;
            IF intentos > 10 THEN LEAVE correo_loop; END IF;
        END WHILE;

        -- Generar una contraseña aleatoria
        SET contrasena = MD5(UUID());

        -- Generar número de teléfono único
        SET intentos = 0;
        SET telefono = CONCAT('55', FLOOR(RAND() * 90000000) + 10000000);
        
        telefono_loop: WHILE EXISTS (SELECT 1 FROM tbb_usuarios WHERE Numero_Telefonico_Movil = telefono) DO
            SET telefono = CONCAT('55', FLOOR(RAND() * 90000000) + 10000000);
            SET intentos = intentos + 1;
            IF intentos > 10 THEN LEAVE telefono_loop; END IF;
        END WHILE;

        -- Insertar usuario
        INSERT INTO tbb_usuarios (Persona_Id, Nombre_Usuario, Correo_Electronico, Contrasena, Numero_Telefonico_Movil, Estatus, Fecha_Registro)
        VALUES (persona_id, nombre_usuario, correo, contrasena, telefono, 'Activo', NOW());

        -- Obtener ID del usuario recién insertado
        SET @usuario_id = LAST_INSERT_ID();

        -- Insertar en tbd_usuarios_roles
        INSERT INTO tbd_usuarios_roles (Usuario_ID, Rol_ID, Estatus, Fecha_Registro)
        VALUES (@usuario_id, rol_id, 1, NOW());

        -- Incrementar el contador
        SET i = i + 1;
    END WHILE user_loop;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_limpia_bd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_limpia_bd`(password varchar(12))
BEGIN
 IF password = "8B_idgs/1234"
 then 
	delete from tbd_usuarios_roles;
    alter table tbd_usuarios_roles auto_increment=1;
    
	delete from tbb_usuarios;
    alter table tbb_usuarios auto_increment=1;
    
    
	delete from tbb_personas;
    alter table tbb_personas auto_increment=1;
    
    	delete from tbi_bitacora;
    alter table tbi_bitacora auto_increment=1;
 

    
else
	select "Contraseña incorrecta" as mensaje;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_personas_por_tiposangre`
--

/*!50001 DROP VIEW IF EXISTS `vw_personas_por_tiposangre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_personas_por_tiposangre` AS with `total_personas` as (select count(0) AS `total` from `tbb_personas`) select `p`.`Tipo_Sangre` AS `tipo_sangre`,((count(0) * 100.0) / (select `total_personas`.`total` from `total_personas`)) AS `porcentaje`,count(0) AS `total_personas` from `tbb_personas` `p` group by `p`.`Tipo_Sangre` order by `p`.`Tipo_Sangre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-20  1:45:44
