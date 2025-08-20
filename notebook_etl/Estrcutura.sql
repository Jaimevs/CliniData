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

-- Dump completed on 2025-08-20  1:49:55
