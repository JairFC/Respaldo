-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tecnologico
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.25-MariaDB

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
-- Table structure for table `administrativo`
--

DROP TABLE IF EXISTS `administrativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrativo` (
  `administrativo_id` int(11) NOT NULL,
  `nombre_admninistrativo` varchar(50) NOT NULL,
  `apellido_administrativo` varchar(25) NOT NULL,
  `salario_administrativo` decimal(10,2) NOT NULL DEFAULT '1500.00',
  `area_administrativo` enum('Contabilidad','Administraci¢n','Recursos Financieros') DEFAULT NULL,
  PRIMARY KEY (`administrativo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativo`
--

LOCK TABLES `administrativo` WRITE;
/*!40000 ALTER TABLE `administrativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos` (
  `alumno_id` int(11) NOT NULL,
  `nombre_alumno` varchar(50) NOT NULL,
  `apellido_alumno` varchar(50) NOT NULL,
  `telefono_alumno` int(11) NOT NULL,
  `direccion_alumno` varchar(50) NOT NULL,
  `carrera_alumno` enum('Sistemas','Informatica','Gestion Empresarial','Industrial','Administracion','Dise¤o','Arquitectura') DEFAULT NULL,
  `semestre_alumno` enum('1','2','3','4','5','6','7','8','9') DEFAULT NULL,
  `materias_alumno` varchar(70) DEFAULT NULL,
  `calificaciones_alumno` varchar(70) DEFAULT NULL,
  `promedio_alumno` decimal(5,2) NOT NULL,
  PRIMARY KEY (`alumno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos_copia`
--

DROP TABLE IF EXISTS `alumnos_copia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alumnos_copia` (
  `alumno_id` int(11) NOT NULL,
  `nombre_alumno` varchar(50) NOT NULL,
  `apellido_alumno` varchar(50) NOT NULL,
  `telefono_alumno` int(11) NOT NULL,
  `direccion_alumno` varchar(50) NOT NULL,
  `carrera_alumno` enum('Sistemas','Informatica','Gestion Empresarial','Industrial','Administracion','Dise¤o','Arquitectura') DEFAULT NULL,
  `semestre_alumno` enum('1','2','3','4','5','6','7','8','9') DEFAULT NULL,
  `materias_alumno` varchar(70) DEFAULT NULL,
  `calificaciones_alumno` varchar(70) DEFAULT NULL,
  `promedio_alumno` decimal(5,2) NOT NULL,
  PRIMARY KEY (`alumno_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos_copia`
--

LOCK TABLES `alumnos_copia` WRITE;
/*!40000 ALTER TABLE `alumnos_copia` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos_copia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreras`
--

DROP TABLE IF EXISTS `carreras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreras` (
  `carrera_id` int(11) NOT NULL,
  `nombre_carrera` enum('Sistemas','Informatica','Gestion Empresarial','Industrial','Administracion','Dise¤o','Arquitectura') NOT NULL,
  `creditos_carrera` enum('50','40') DEFAULT NULL,
  `jefe_carrera` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`carrera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreras`
--

LOCK TABLES `carreras` WRITE;
/*!40000 ALTER TABLE `carreras` DISABLE KEYS */;
/*!40000 ALTER TABLE `carreras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `departamentos_id` int(11) NOT NULL,
  `nombre_departamento` enum('Administrativo','Recursos financieros','Ciencias B sicas','Sala de idiomas','Dep.Sistemas','Dep.Industrial') NOT NULL,
  `descripcion_depart` varchar(50) DEFAULT NULL,
  `nombre_encargado` varchar(50) DEFAULT NULL,
  `no_empleados` int(11) DEFAULT NULL,
  PRIMARY KEY (`departamentos_id`),
  UNIQUE KEY `nombre_departamento` (`nombre_departamento`),
  UNIQUE KEY `nombre_encargado` (`nombre_encargado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direccion` (
  `direccion_id` int(11) NOT NULL,
  `empleados_id` int(11) DEFAULT NULL,
  `nombre_encargado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`direccion_id`),
  UNIQUE KEY `empleados_id` (`empleados_id`),
  UNIQUE KEY `nombre_encargado` (`nombre_encargado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docente` (
  `docente_id` int(11) NOT NULL,
  `nombre_docente` varchar(50) NOT NULL,
  `apellido_docente` varchar(25) NOT NULL,
  `salario_docente` decimal(10,2) DEFAULT '1000.00',
  `area_docente` enum('Administrativo','Docencia') DEFAULT NULL,
  `especialidad_docente` enum('Ciencias B sicas','Dep. Sistemas','Dep. Indistrial','Administrativo') DEFAULT NULL,
  PRIMARY KEY (`docente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `empleados_id` int(11) NOT NULL,
  `tipo_Empleado` enum('Soporte','Docente') DEFAULT NULL,
  `plazas_Empleado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`empleados_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jefes_de_areas`
--

DROP TABLE IF EXISTS `jefes_de_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jefes_de_areas` (
  `jefe_area_id` int(11) NOT NULL,
  `nombre_jefe_area` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jefe_area_id`),
  UNIQUE KEY `nombre_jefe_area` (`nombre_jefe_area`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jefes_de_areas`
--

LOCK TABLES `jefes_de_areas` WRITE;
/*!40000 ALTER TABLE `jefes_de_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jefes_de_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `materia_id` int(11) NOT NULL,
  `creditos_materia` enum('4','5','6') DEFAULT NULL,
  `horarios_materia` enum('9:00-10:00','10:00-11:00','11:00-12:00','12:00-1:00') DEFAULT NULL,
  `no_max_alum` int(11) NOT NULL,
  `docente` varchar(30) DEFAULT NULL,
  `carrera` enum('Sistemas','Informatica','Gestion Empresarial','Industrial','Administracion','Dise¤o','Arquitectura') NOT NULL,
  `grupo` enum('A','B','C','D') DEFAULT NULL,
  PRIMARY KEY (`materia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuestos`
--

DROP TABLE IF EXISTS `presupuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presupuestos` (
  `presupuesto_id` int(11) NOT NULL,
  `descripcion_presupuesto` varchar(50) DEFAULT NULL,
  `cantidad_presupuesto` decimal(10,2) NOT NULL,
  PRIMARY KEY (`presupuesto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuestos`
--

LOCK TABLES `presupuestos` WRITE;
/*!40000 ALTER TABLE `presupuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `presupuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soporte`
--

DROP TABLE IF EXISTS `soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soporte` (
  `soporte_id` int(11) NOT NULL,
  `nombre_soporte` varchar(50) NOT NULL,
  `apellido_soporte` varchar(25) NOT NULL,
  `salario_soporte` decimal(10,2) NOT NULL,
  `area_soporte` enum('Intendencia','Mantenimiento','Jardiner¡a') NOT NULL,
  PRIMARY KEY (`soporte_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soporte`
--

LOCK TABLES `soporte` WRITE;
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_academicas`
--

DROP TABLE IF EXISTS `sub_academicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_academicas` (
  `subdireccion_id` int(11) NOT NULL,
  `nombre_subdireccion` varchar(50) NOT NULL,
  `descripcion_subdirec` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`subdireccion_id`),
  UNIQUE KEY `nombre_subdireccion` (`nombre_subdireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_academicas`
--

LOCK TABLES `sub_academicas` WRITE;
/*!40000 ALTER TABLE `sub_academicas` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_academicas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06 17:17:22
