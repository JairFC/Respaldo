-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mundo
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
-- Table structure for table `ciudadano`
--

DROP TABLE IF EXISTS `ciudadano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudadano` (
  `ciudadano_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `RFC` varchar(13) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `lugar_nacimiento` varchar(50) DEFAULT 'Chiuhuahua',
  `pais_nacimiento` varchar(50) DEFAULT 'M‚xico',
  `genero` varchar(15) NOT NULL,
  PRIMARY KEY (`ciudadano_id`),
  UNIQUE KEY `RFC` (`RFC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudadano`
--

LOCK TABLES `ciudadano` WRITE;
/*!40000 ALTER TABLE `ciudadano` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudadano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `ciudades_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `poblacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`ciudades_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'CHIHUAHUA',600000),(2,'',600000);
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comida_mundo`
--

DROP TABLE IF EXISTS `comida_mundo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comida_mundo` (
  `comida_id` int(11) DEFAULT NULL,
  `nombre_comida` enum('TACOS','BURRITOS','CARNE ASADA','TLACOYOS') DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comida_mundo`
--

LOCK TABLES `comida_mundo` WRITE;
/*!40000 ALTER TABLE `comida_mundo` DISABLE KEYS */;
INSERT INTO `comida_mundo` VALUES (1,'BURRITOS',10.20),(1,'',10.20),(1,'',10.20);
/*!40000 ALTER TABLE `comida_mundo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copia_cliente`
--

DROP TABLE IF EXISTS `copia_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copia_cliente` (
  `nocliente` int(11) NOT NULL,
  `nombre` varchar(45) CHARACTER SET utf8 NOT NULL,
  `a_paterno` varchar(45) CHARACTER SET utf8 NOT NULL,
  `a_materno` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `direccion` varchar(45) CHARACTER SET utf8 NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `cp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `rfc` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copia_cliente`
--

LOCK TABLES `copia_cliente` WRITE;
/*!40000 ALTER TABLE `copia_cliente` DISABLE KEYS */;
INSERT INTO `copia_cliente` VALUES (0,'Pepito','Carrasco','Lopez','por delicias','6391695544','31420','CALP123123132'),(10,'juan','perez','muller','alemania','614552566','31135','jupm1254'),(69,'Mutombo','Camerun','triste','Africa','6145698759','31666','MC69874'),(333,'juan','peres','peres','ghjk','6141234567','5632','vgbuhnj'),(999,'Felix','Gonzalez','Orta','Madrid','6144082547','31150','GOOFHEFGKS'),(1000,'juan','lenon','apellidom1','rancho','614253','31250','rfc1'),(1044,'javier','martinez','sanchez','94','6145552369','45885','saljdhfwiug'),(1052,'mitchel','acosta','martinez','lord byron','6145104364','45864','asa547'),(1234,'dada','ati','on','122','6124521','e3122','afej3ojño'),(1235,'andres','Lopez','obrador','serca de la caja','658485612','32185','FGASD6543'),(1505,'jose','lopez','estrada','villa juarez','6142365896','31027','16654dff'),(1546,'Valeria','Lopez','Arizpe','sq','6391383530','34567','fsdkfhdñs'),(2000,'pedrfo','gallo','apellidom','ctm','61452556','31207','gsh'),(2005,'David','Oscar','Schartws','oscar','614168798','31125','JBHDVSJHA45'),(2013,'Ana','Torres','Rodriguez','Los mochis','6143586332','31124','ASD9719381DAJR'),(2105,'martin','carrasco','jaquez','balleza','6361105584','31125','MCA11234'),(2345,'hector','morales','solar','alcas','1543185131','15645','sddefg'),(2828,'Fayre ','Alcudia','Juarez','jeje','6141234567','31060','erfnj'),(3000,'yuleini','terrazas','parada','herradura','6141980972','31385','tepy960427'),(3005,'Kirito','kun','nico','calle','6144444444','31144','KMJDSBFHJDS5'),(4000,'Stephanie','Hernandez','Dominguez','acequias','6144474649','13202','DORS14'),(5463,'luisa','hernandez ','rodriguez','villa','6147896512','31475','dgs546576ds'),(6000,'orlando','orozco','terrazas','paseosfrisson','12345678','31589','oorg170623'),(7365,'juan ','hernandez','de la rosa','cdp','6145789435','31140','dhf56435aa'),(8000,'oscar','estrada','herrera','29','6141977383','31350','eaho940114'),(10000,'pepe','picas','papas','fresas','6149876954','02589','pipape'),(11000,'victor','silva','llanas','ranchomendio','6141234567','31106','sillav'),(15610,'Uziel','Perez','Campillo','dolres','6251114734','1564','slkdfsjkh'),(52654,'Rodrigo','Lopez','Luna','algun lado','6144234234','54234','xddxdxdxdxdxdxd'),(53652,'David','Gonzales','Tinajero','Av. Industrias','6141234567','32145','GOTD23156FDSFG'),(111111,'Valoo','Lopez','Avizpon','Quinta sebastian','6391383530','3153 ','VAL2344'),(117007,'Miguel','Gonzales','De la Garza','Pascual','614254897','32154','MGDG1545');
/*!40000 ALTER TABLE `copia_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oceanos`
--

DROP TABLE IF EXISTS `oceanos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oceanos` (
  `oceanos_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `profundidad_media` int(11) DEFAULT '3000',
  PRIMARY KEY (`oceanos_id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oceanos`
--

LOCK TABLES `oceanos` WRITE;
/*!40000 ALTER TABLE `oceanos` DISABLE KEYS */;
INSERT INTO `oceanos` VALUES (1,'pacifico',4000),(2,'indico',3000);
/*!40000 ALTER TABLE `oceanos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises` (
  `paises_id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `poblacion` int(11) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises_copia`
--

DROP TABLE IF EXISTS `paises_copia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paises_copia` (
  `paises_id` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `poblacion` int(11) DEFAULT NULL,
  `capital` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises_copia`
--

LOCK TABLES `paises_copia` WRITE;
/*!40000 ALTER TABLE `paises_copia` DISABLE KEYS */;
/*!40000 ALTER TABLE `paises_copia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viajero`
--

DROP TABLE IF EXISTS `viajero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viajero` (
  `viajero_id` int(11) NOT NULL,
  `articulo` varchar(40) DEFAULT NULL,
  `viaticos` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viajero`
--

LOCK TABLES `viajero` WRITE;
/*!40000 ALTER TABLE `viajero` DISABLE KEYS */;
INSERT INTO `viajero` VALUES (1,'lentes',10.20);
/*!40000 ALTER TABLE `viajero` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-06 17:13:55
