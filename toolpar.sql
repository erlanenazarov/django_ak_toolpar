-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: aktoolpar
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preview` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (1,'technic/category/1.png','Автокраны'),(2,'technic/category/7.png','Бетономешалки'),(3,'technic/category/6.png','Дорожная техника'),(4,'technic/category/4.png','Экскаваторы'),(5,'technic/category/3.png','Фургоны'),(6,'technic/category/5.png','Погрузчики'),(7,'technic/category/8.png','Самосвалы'),(8,'technic/category/2.png','Тягачи');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Companies`
--

DROP TABLE IF EXISTS `Companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Companies`
--

LOCK TABLES `Companies` WRITE;
/*!40000 ALTER TABLE `Companies` DISABLE KEYS */;
INSERT INTO `Companies` VALUES (1,'ОсОО \"Ак Тулпар\"'),(2,'ОсОО \"Нурлан\"');
/*!40000 ALTER TABLE `Companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ObjectEntrance`
--

DROP TABLE IF EXISTS `ObjectEntrance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ObjectEntrance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ObjectEntrance`
--

LOCK TABLES `ObjectEntrance` WRITE;
/*!40000 ALTER TABLE `ObjectEntrance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ObjectEntrance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ObjectFlats`
--

DROP TABLE IF EXISTS `ObjectFlats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ObjectFlats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `render` varchar(100),
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ObjectFlats`
--

LOCK TABLES `ObjectFlats` WRITE;
/*!40000 ALTER TABLE `ObjectFlats` DISABLE KEYS */;
INSERT INTO `ObjectFlats` VALUES (1,'2х комнатная квартира','flats/1.png',''),(2,'1 комнатная квартира','flats/24.png',''),(3,'2х комнатная квартира','flats/3.png',''),(4,'1 комнатная квартира','flats/5.png',''),(5,'4х комнатная квартира','flats/1_yiQD8a4.png',''),(6,'3х комнатная квартира','flats/2.png',''),(7,'2х комнатная квартира','flats/3_PF3YkZz.png',''),(8,'2х комнатная квартира','flats/4.png',''),(9,'3х комнатная квартира','flats/1_G3vQ7O1.png',''),(10,'1 комнатная квартира','flats/23.png',''),(11,'2х комнатная квартира','flats/4_QgyFoBm.png',''),(12,'2х комнатная квартира','flats/1_ulx4vHs.png',''),(13,'1 комнатная квартира','flats/24.jpg',''),(14,'1 комнатная квартира','flats/3_c1ydI2W.png',''),(15,'1 комнатная квартира','flats/5_3jSyTQZ.png',''),(16,'3х комнатная квартира','flats/1_tvwRFjG.png',''),(17,'1 комнатная квартира','flats/23_ADUzpGp.png',''),(18,'2х комнатная квартира','flats/4_VZrjHTr.png','');
/*!40000 ALTER TABLE `ObjectFlats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ObjectsGallery`
--

DROP TABLE IF EXISTS `ObjectsGallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ObjectsGallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ObjectsGallery`
--

LOCK TABLES `ObjectsGallery` WRITE;
/*!40000 ALTER TABLE `ObjectsGallery` DISABLE KEYS */;
INSERT INTO `ObjectsGallery` VALUES (1,'18','gallery/5.jpg'),(2,'19','gallery/3.jpg'),(3,'Some title','gallery/IMG_20150826_112746.jpg'),(4,'sdadksfjghsjher','gallery/0312.jpg'),(5,'Some house','gallery/2.jpg'),(6,'Рулывад','gallery/IMG_3379.JPG'),(7,'Hey there','gallery/IMG_3386.JPG'),(8,'inConstruction','gallery/IMG_3385.JPG');
/*!40000 ALTER TABLE `ObjectsGallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add bookmark',1,'add_bookmark'),(2,'Can change bookmark',1,'change_bookmark'),(3,'Can delete bookmark',1,'delete_bookmark'),(4,'Can add pinned application',2,'add_pinnedapplication'),(5,'Can change pinned application',2,'change_pinnedapplication'),(6,'Can delete pinned application',2,'delete_pinnedapplication'),(7,'Can add log entry',3,'add_logentry'),(8,'Can change log entry',3,'change_logentry'),(9,'Can delete log entry',3,'delete_logentry'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add user',5,'add_user'),(14,'Can change user',5,'change_user'),(15,'Can delete user',5,'delete_user'),(16,'Can add group',6,'add_group'),(17,'Can change group',6,'change_group'),(18,'Can delete group',6,'delete_group'),(19,'Can add content type',7,'add_contenttype'),(20,'Can change content type',7,'change_contenttype'),(21,'Can delete content type',7,'delete_contenttype'),(22,'Can add session',8,'add_session'),(23,'Can change session',8,'change_session'),(24,'Can delete session',8,'delete_session'),(25,'Can add Подъезд',9,'add_objectentrance'),(26,'Can change Подъезд',9,'change_objectentrance'),(27,'Can delete Подъезд',9,'delete_objectentrance'),(28,'Can add Объект',10,'add_object'),(29,'Can change Объект',10,'change_object'),(30,'Can delete Объект',10,'delete_object'),(31,'Can add Планировка квартир',11,'add_objectflats'),(32,'Can change Планировка квартир',11,'change_objectflats'),(33,'Can delete Планировка квартир',11,'delete_objectflats'),(34,'Can add Галлерея',12,'add_objectgallery'),(35,'Can change Галлерея',12,'change_objectgallery'),(36,'Can delete Галлерея',12,'delete_objectgallery'),(37,'Can add Компания',13,'add_objectcompany'),(38,'Can change Компания',13,'change_objectcompany'),(39,'Can delete Компания',13,'delete_objectcompany'),(40,'Can add Категория техники',14,'add_techniccategory'),(41,'Can change Категория техники',14,'change_techniccategory'),(42,'Can delete Категория техники',14,'delete_techniccategory'),(43,'Can add Техника',15,'add_technic'),(44,'Can change Техника',15,'change_technic'),(45,'Can delete Техника',15,'delete_technic'),(46,'Can add Сертификаты',16,'add_certificates'),(47,'Can change Сертификаты',16,'change_certificates'),(48,'Can delete Сертификаты',16,'delete_certificates');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$FSkO90B1Zfow$+9XmI9jxJE0SlzncBiNrk6ouGMdbH6JqrKaFtV7bU/8=','2016-12-26 11:12:53',1,'admin','','','admin@localhost',1,1,'2016-10-20 12:16:41');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` longtext,
  `genPlan` varchar(100) DEFAULT NULL,
  `built` tinyint(1) NOT NULL,
  `company_id` int(11),
  `gallery_id` int(11),
  `livingComplex` varchar(255),
  `entrance1` varchar(100),
  `entrance2` varchar(100),
  PRIMARY KEY (`id`),
  KEY `buildings_447d3092` (`company_id`),
  KEY `buildings_6d994cdb` (`gallery_id`),
  CONSTRAINT `buildings_company_id_a71619a5_fk_Companies_id` FOREIGN KEY (`company_id`) REFERENCES `Companies` (`id`),
  CONSTRAINT `buildings_gallery_id_220ff585_fk_ObjectsGallery_id` FOREIGN KEY (`gallery_id`) REFERENCES `ObjectsGallery` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (1,'Дом №18','Микрорайон улан','','000_XtiwJvV.tif',1,1,3,'A','entrance/1-1-1-1-1.PNG','entrance/1-1-1-1-1_apVfYi6.PNG'),(2,'Дом №19','Микрорайон улан','','000.tif',1,1,2,'A','entrance/3-2-2.PNG','entrance/2-1-1-2-01.png'),(3,'Дом №20','Микрорайон улан','','00_5TkuxRC.PNG',1,1,4,'A','entrance/2-1-1-2-01_3WhQnv0.png','entrance/2-1-1-2-01_FxeDiIx.png'),(4,'Дом №23','Микрорайон улан','','00_QgJIGlv.PNG',1,1,5,'A','entrance/2-1-1-2-01_ss894lK.png','entrance/1-1-1-1-1_uF5uOBc.PNG'),(5,'Дом №17','Микрорайон улан','','00_Fc3tHLp.PNG',0,1,6,'A','entrance/2-1-1-2-01_14IsGix.png','entrance/1-1-1-1-1_ErbB6gw.PNG'),(6,'Дом №21','Микрорайон улан','','0.PNG',0,1,6,'A','entrance/1-1-1-1-1_7zVocpm.PNG','entrance/1-1-1-1-1_cbaZCRO.PNG'),(7,'Дом №22','Микрорайон улан','','00_a2zK2OD.PNG',0,1,7,'A','entrance/3-2-2_stCyKF0.PNG','entrance/2-1-1-2-01_kagm3w4.png'),(8,'Дом №24','Микрорайон улан','','00.PNG',0,1,8,'A','entrance/2-1-1-2-01_AeyOgkv.png','entrance/2-1-1-2-01_g2JSxGR.png');
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings_flats`
--

DROP TABLE IF EXISTS `buildings_flats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildings_flats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `objectflats_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `buildings_flats_object_id_4f699e79_uniq` (`object_id`,`objectflats_id`),
  KEY `buildings_flats_objectflats_id_d1460638_fk_ObjectFlats_id` (`objectflats_id`),
  CONSTRAINT `buildings_flats_objectflats_id_d1460638_fk_ObjectFlats_id` FOREIGN KEY (`objectflats_id`) REFERENCES `ObjectFlats` (`id`),
  CONSTRAINT `buildings_flats_object_id_def4566b_fk_buildings_id` FOREIGN KEY (`object_id`) REFERENCES `buildings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings_flats`
--

LOCK TABLES `buildings_flats` WRITE;
/*!40000 ALTER TABLE `buildings_flats` DISABLE KEYS */;
INSERT INTO `buildings_flats` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(6,2,5),(7,2,6),(8,2,7),(5,2,8),(9,3,9),(10,3,10),(11,3,11),(12,4,12),(13,4,13),(14,4,14),(15,4,15),(16,4,16),(17,4,17),(18,4,18),(19,5,1),(20,5,2),(21,5,4),(22,5,7),(23,6,1),(24,6,2),(25,6,3),(26,6,4),(29,7,6),(30,7,7),(27,7,8),(28,7,9),(31,8,1),(32,8,2),(34,8,4),(33,8,11);
/*!40000 ALTER TABLE `buildings_flats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `type` int(11),
  `company_id` int(11),
  PRIMARY KEY (`id`),
  KEY `certificates_447d3092` (`company_id`),
  CONSTRAINT `certificates_company_id_bbf994d6_fk_Companies_id` FOREIGN KEY (`company_id`) REFERENCES `Companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
INSERT INTO `certificates` VALUES (1,'svidet','certificates/Svidetelstvo_1.jpg',1,1),(2,'svidet 2','certificates/Svidetelstvo_2.jpg',1,1),(3,'lic1','certificates/lic1.jpeg',1,1),(4,'lic2','certificates/lic2.jpeg',1,1),(5,'','certificates/pict24.jpg',1,1),(6,'','certificates/pict25.jpg',1,1),(7,'','certificates/pict27.jpg',1,1),(8,'nurlan_lic1','certificates/lic1.jpg',1,2),(9,'nurlan_lic2','certificates/lic2.jpg',1,2),(10,'nurlan_lic3','certificates/lic3.jpg',1,2),(11,'nurlan_lic4','certificates/lic4.jpg',1,2),(12,'nurlan_pict','certificates/pict62.jpg',1,2),(13,'nurlan_pict','certificates/pict64.jpg',1,2);
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2016-10-20 12:26:02','1','1 Автокраны',1,'[{\"added\": {}}]',14,1),(2,'2016-10-20 12:27:30','2','2 Бетономешалки',1,'[{\"added\": {}}]',14,1),(3,'2016-10-20 12:27:46','3','3 Дорожная техника',1,'[{\"added\": {}}]',14,1),(4,'2016-10-20 12:28:10','4','4 Экскаваторы',1,'[{\"added\": {}}]',14,1),(5,'2016-10-20 12:28:18','5','5 Фургоны',1,'[{\"added\": {}}]',14,1),(6,'2016-10-20 12:28:27','6','6 Погрузчики',1,'[{\"added\": {}}]',14,1),(7,'2016-10-20 12:29:15','7','7 Самосвалы',1,'[{\"added\": {}}]',14,1),(8,'2016-10-20 12:29:22','8','8 Тягачи',1,'[{\"added\": {}}]',14,1),(9,'2016-10-20 13:14:18','1','1 Автокраны',2,'[{\"changed\": {\"fields\": [\"preview\"]}}]',14,1),(10,'2016-10-20 13:14:31','2','2 Бетономешалки',2,'[{\"changed\": {\"fields\": [\"preview\"]}}]',14,1),(11,'2016-10-20 13:15:22','3','3 Дорожная техника',2,'[{\"changed\": {\"fields\": [\"preview\"]}}]',14,1),(12,'2016-10-20 13:15:33','4','4 Экскаваторы',2,'[{\"changed\": {\"fields\": [\"preview\"]}}]',14,1),(13,'2016-10-20 13:17:49','5','5 Фургоны',2,'[{\"changed\": {\"fields\": [\"preview\"]}}]',14,1),(14,'2016-10-20 13:19:28','6','6 Погрузчики',2,'[{\"changed\": {\"fields\": [\"preview\"]}}]',14,1),(15,'2016-10-20 13:19:40','7','7 Самосвалы',2,'[{\"changed\": {\"fields\": [\"preview\"]}}]',14,1),(16,'2016-10-20 13:20:29','8','8 Тягачи',2,'[{\"changed\": {\"fields\": [\"preview\"]}}]',14,1),(17,'2016-10-21 08:25:55','1','1 ZOOMLION ZLJ5320JQZ25V',1,'[{\"added\": {}}]',15,1),(18,'2016-10-21 08:32:03','2','2 T-King Ouling',1,'[{\"added\": {}}]',15,1),(19,'2016-10-21 08:33:08','3','3 Dongfeng Tianjin XZL',1,'[{\"added\": {}}]',15,1),(20,'2016-10-21 08:45:44','4','4 МАЗ-6422',1,'[{\"added\": {}}]',15,1),(21,'2016-10-21 08:54:13','5','5 VOLVO FH12',1,'[{\"added\": {}}]',15,1),(22,'2016-10-21 08:55:12','6','6 Урал-4320',1,'[{\"added\": {}}]',15,1),(23,'2016-10-21 08:56:26','7','7 Foton Forland',1,'[{\"added\": {}}]',15,1),(24,'2016-10-21 08:58:11','8','8 ГАЗ-53Б',1,'[{\"added\": {}}]',15,1),(25,'2016-10-21 08:59:11','9','9 ГАЗ-53',1,'[{\"added\": {}}]',15,1),(26,'2016-10-21 08:59:42','10','10 Mercedes Benz',1,'[{\"added\": {}}]',15,1),(27,'2016-10-21 09:03:08','10','10 Mercedes Benz',2,'[{\"changed\": {\"fields\": [\"power\", \"engineVolume\", \"fuelBank\"]}}]',15,1),(28,'2016-10-21 09:13:13','11','11 Hyundai R210W-9S',1,'[{\"added\": {}}]',15,1),(29,'2016-10-21 09:18:54','12','12 Hyundai R180W-9S',1,'[{\"added\": {}}]',15,1),(30,'2016-10-21 09:19:55','13','13 Hyundai R1400-9S',1,'[{\"added\": {}}]',15,1),(31,'2016-10-21 09:21:31','14','14 Hyundai H940S',1,'[{\"added\": {}}]',15,1),(32,'2016-10-21 09:22:24','15','15 Fukai',1,'[{\"added\": {}}]',15,1),(33,'2016-10-21 09:24:44','16','16 МАЗ-551605',1,'[{\"added\": {}}]',15,1),(34,'2016-10-21 09:26:25','17','17 Краз 256',1,'[{\"added\": {}}]',15,1),(35,'2016-10-21 09:27:12','18','18 Камаз 5511',1,'[{\"added\": {}}]',15,1),(36,'2016-10-21 09:29:06','19','19 ГАЗ САЗ-3507',1,'[{\"added\": {}}]',15,1),(37,'2016-10-21 09:30:16','20','20 Камаз 5320',1,'[{\"added\": {}}]',15,1),(38,'2016-10-21 09:31:23','21','21 HR25T-9S',1,'[{\"added\": {}}]',15,1),(39,'2016-10-21 09:39:06','1','1: 18',1,'[{\"added\": {}}]',12,1),(40,'2016-10-21 09:40:04','1','2х комнатная квартира',1,'[{\"added\": {}}]',11,1),(41,'2016-10-21 09:40:23','2','1 комнатная квартира',1,'[{\"added\": {}}]',11,1),(42,'2016-10-21 09:40:38','3','2х комнатная квартира',1,'[{\"added\": {}}]',11,1),(43,'2016-10-21 09:40:54','4','1 комнатная квартира',1,'[{\"added\": {}}]',11,1),(44,'2016-10-21 09:41:11','1','ОсОО \"Ак Тулпар\"',1,'[{\"added\": {}}]',13,1),(45,'2016-10-21 09:41:17','2','ОсОО \"Нурлан\"',1,'[{\"added\": {}}]',13,1),(46,'2016-10-21 09:41:33','1','Дом №18',1,'[{\"added\": {}}]',10,1),(47,'2016-10-21 09:47:06','2','2: 19',1,'[{\"added\": {}}]',12,1),(48,'2016-10-21 09:49:14','5','4х комнатная квартира',1,'[{\"added\": {}}]',11,1),(49,'2016-10-21 09:49:44','6','3х комнатная квартира',1,'[{\"added\": {}}]',11,1),(50,'2016-10-21 09:50:14','7','2х комнатная квартира',1,'[{\"added\": {}}]',11,1),(51,'2016-10-21 09:50:44','8','2х комнатная квартира',1,'[{\"added\": {}}]',11,1),(52,'2016-10-21 09:50:57','2','Дом №19',1,'[{\"added\": {}}]',10,1),(53,'2016-10-21 09:53:52','3','3: Some title',1,'[{\"added\": {}}]',12,1),(54,'2016-10-21 09:53:55','1','Дом №18',2,'[{\"changed\": {\"fields\": [\"gallery\"]}}]',10,1),(55,'2016-10-21 10:07:32','4','4: sdadksfjghsjher',1,'[{\"added\": {}}]',12,1),(56,'2016-10-21 10:09:55','9','3х комнатная квартира',1,'[{\"added\": {}}]',11,1),(57,'2016-10-21 10:10:10','10','1 комнатная квартира',1,'[{\"added\": {}}]',11,1),(58,'2016-10-21 10:10:32','11','2х комнатная квартира',1,'[{\"added\": {}}]',11,1),(59,'2016-10-21 10:10:42','3','20',1,'[{\"added\": {}}]',10,1),(60,'2016-10-21 10:11:33','3','Дом №20',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',10,1),(61,'2016-10-21 10:13:05','5','5: Some house',1,'[{\"added\": {}}]',12,1),(62,'2016-10-21 10:14:29','12','2х комнатная квартира',1,'[{\"added\": {}}]',11,1),(63,'2016-10-21 10:14:39','13','1 комнатная квартира',1,'[{\"added\": {}}]',11,1),(64,'2016-10-21 10:14:51','14','1 комнатная квартира',1,'[{\"added\": {}}]',11,1),(65,'2016-10-21 10:15:05','15','1 комнатная квартира',1,'[{\"added\": {}}]',11,1),(66,'2016-10-21 10:15:23','16','3х комнатная квартира',1,'[{\"added\": {}}]',11,1),(67,'2016-10-21 10:15:34','17','1 комнатная квартира',1,'[{\"added\": {}}]',11,1),(68,'2016-10-21 10:15:54','18','2х комнатная квартира',1,'[{\"added\": {}}]',11,1),(69,'2016-10-21 10:16:02','4','Дом №23',1,'[{\"added\": {}}]',10,1),(70,'2016-10-21 10:18:36','6','6: Рулывад',1,'[{\"added\": {}}]',12,1),(71,'2016-10-21 10:19:05','5','Дом №17',1,'[{\"added\": {}}]',10,1),(72,'2016-10-21 10:20:13','6','Дом №21',1,'[{\"added\": {}}]',10,1),(73,'2016-10-21 10:21:37','7','7: Hey there',1,'[{\"added\": {}}]',12,1),(74,'2016-10-21 10:23:08','7','Дом №22',1,'[{\"added\": {}}]',10,1),(75,'2016-10-21 10:24:49','8','8: inConstruction',1,'[{\"added\": {}}]',12,1),(76,'2016-10-21 10:25:17','8','Дом №24',1,'[{\"added\": {}}]',10,1),(77,'2016-10-21 10:25:27','8','Дом №24',2,'[{\"changed\": {\"fields\": [\"location\"]}}]',10,1),(78,'2016-10-27 13:00:58','8','Дом №24',2,'[{\"changed\": {\"fields\": [\"genPlan\"]}}]',10,1),(79,'2016-10-27 13:01:06','7','Дом №22',2,'[{\"changed\": {\"fields\": [\"genPlan\"]}}]',10,1),(80,'2016-10-27 13:11:12','6','Дом №21',2,'[{\"changed\": {\"fields\": [\"genPlan\"]}}]',10,1),(81,'2016-10-27 13:11:19','5','Дом №17',2,'[{\"changed\": {\"fields\": [\"genPlan\"]}}]',10,1),(82,'2016-10-27 13:15:26','4','Дом №23',2,'[{\"changed\": {\"fields\": [\"genPlan\"]}}]',10,1),(83,'2016-10-27 13:15:33','3','Дом №20',2,'[{\"changed\": {\"fields\": [\"genPlan\"]}}]',10,1),(84,'2016-10-27 13:15:53','2','Дом №19',2,'[{\"changed\": {\"fields\": [\"genPlan\"]}}]',10,1),(85,'2016-10-27 13:16:04','1','Дом №18',2,'[{\"changed\": {\"fields\": [\"genPlan\"]}}]',10,1),(86,'2016-12-12 09:56:58','1','1: svidet',1,'[{\"added\": {}}]',16,1),(87,'2016-12-12 09:57:47','2','2: svidet 2',1,'[{\"added\": {}}]',16,1),(88,'2016-12-12 10:02:25','3','3: lic1',1,'[{\"added\": {}}]',16,1),(89,'2016-12-12 10:02:35','4','4: lic2',1,'[{\"added\": {}}]',16,1),(90,'2016-12-12 10:02:45','5','5: ',1,'[{\"added\": {}}]',16,1),(91,'2016-12-12 10:02:54','6','6: ',1,'[{\"added\": {}}]',16,1),(92,'2016-12-12 10:03:09','7','7: ',1,'[{\"added\": {}}]',16,1),(93,'2016-12-12 10:06:08','8','8: ',1,'[{\"added\": {}}]',16,1),(94,'2016-12-12 10:06:23','9','9: ',1,'[{\"added\": {}}]',16,1),(95,'2016-12-12 10:06:39','8','8: nurlan_lic1',2,'[{\"changed\": {\"fields\": [\"title\", \"image\"]}}]',16,1),(96,'2016-12-12 10:06:47','9','9: nurlan_lic2',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',16,1),(97,'2016-12-12 10:07:07','10','10: nurlan_lic3',1,'[{\"added\": {}}]',16,1),(98,'2016-12-12 10:07:22','11','11: nurlan_lic4',1,'[{\"added\": {}}]',16,1),(99,'2016-12-12 10:07:41','12','12: nurlan_pict',1,'[{\"added\": {}}]',16,1),(100,'2016-12-12 10:07:51','13','13: nurlan_pict',1,'[{\"added\": {}}]',16,1),(101,'2016-12-26 11:35:01','7','7 Foton Forland',2,'[{\"changed\": {\"fields\": [\"fuelBank\", \"price\", \"price_fuel\"]}}]',15,1),(102,'2016-12-26 11:35:23','18','18 Камаз 5511',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(103,'2016-12-26 11:35:39','16','16 МАЗ-551605',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(104,'2016-12-26 11:36:57','19','19 ГАЗ САЗ-3507',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(105,'2016-12-26 11:37:27','4','4 МАЗ-6422',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(106,'2016-12-26 11:38:06','6','6 Урал-4320',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(107,'2016-12-26 11:38:40','5','5 VOLVO FH12',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(108,'2016-12-26 11:38:57','20','20 Камаз 5320',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(109,'2016-12-26 11:39:20','17','17 Краз 256',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(110,'2016-12-26 11:40:29','13','13 Hyundai R1400-9S',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(111,'2016-12-26 11:40:51','11','11 Hyundai R210W-9S',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(112,'2016-12-26 11:41:24','12','12 Hyundai R180W-9S',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(113,'2016-12-26 11:41:49','14','14 Hyundai H940S',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(114,'2016-12-26 11:42:19','1','1 ZOOMLION ZLJ5320JQZ25V',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(115,'2016-12-26 11:42:50','2','2 T-King Ouling',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(116,'2016-12-26 11:43:17','3','3 Dongfeng Tianjin XZL',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(117,'2016-12-26 11:44:38','21','21 HR25T-9S',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(118,'2016-12-26 11:45:05','15','15 Fukai',2,'[{\"changed\": {\"fields\": [\"price\", \"price_fuel\"]}}]',15,1),(119,'2016-12-26 11:46:25','21','21 HR25T-9S',2,'[{\"changed\": {\"fields\": [\"amplitude\"]}}]',15,1),(120,'2016-12-26 11:46:33','20','20 Камаз 5320',2,'[{\"changed\": {\"fields\": [\"tankVolume\"]}}]',15,1),(121,'2016-12-26 11:46:46','19','19 ГАЗ САЗ-3507',2,'[{\"changed\": {\"fields\": [\"maxSpeed\"]}}]',15,1),(122,'2016-12-26 11:46:54','18','18 Камаз 5511',2,'[{\"changed\": {\"fields\": [\"maxSpeed\"]}}]',15,1),(123,'2016-12-26 11:48:02','17','17 Краз 256',2,'[{\"changed\": {\"fields\": [\"engineVolume\"]}}]',15,1),(124,'2016-12-26 11:48:36','16','16 МАЗ-551605',2,'[{\"changed\": {\"fields\": [\"engineVolume\"]}}]',15,1),(125,'2016-12-26 11:48:45','15','15 Fukai',2,'[{\"changed\": {\"fields\": [\"power\"]}}]',15,1),(126,'2016-12-26 11:50:25','14','14 Hyundai H940S',2,'[{\"changed\": {\"fields\": [\"depthDigging\"]}}]',15,1),(127,'2016-12-26 11:50:34','13','13 Hyundai R1400-9S',2,'[{\"changed\": {\"fields\": [\"depthDigging\"]}}]',15,1),(128,'2016-12-26 11:50:46','12','12 Hyundai R180W-9S',2,'[{\"changed\": {\"fields\": [\"depthDigging\"]}}]',15,1),(129,'2016-12-26 11:50:55','11','11 Hyundai R210W-9S',2,'[{\"changed\": {\"fields\": [\"depthDigging\"]}}]',15,1),(130,'2016-12-26 11:51:18','10','10 Mercedes Benz',3,'',15,1),(131,'2016-12-26 11:51:56','6','6 Урал-4320',2,'[{\"changed\": {\"fields\": [\"engineVolume\"]}}]',15,1),(132,'2016-12-26 11:52:04','5','5 VOLVO FH12',2,'[{\"changed\": {\"fields\": [\"engineVolume\"]}}]',15,1),(133,'2016-12-26 11:52:15','4','4 МАЗ-6422',2,'[{\"changed\": {\"fields\": [\"fullMass\"]}}]',15,1),(134,'2016-12-26 11:52:26','3','3 Dongfeng Tianjin XZL',2,'[{\"changed\": {\"fields\": [\"maxSpeed\"]}}]',15,1),(135,'2016-12-26 11:52:34','2','2 T-King Ouling',2,'[{\"changed\": {\"fields\": [\"maxSpeed\"]}}]',15,1),(136,'2016-12-26 11:52:44','1','1 ZOOMLION ZLJ5320JQZ25V',2,'[{\"changed\": {\"fields\": [\"engineVolume\"]}}]',15,1),(137,'2016-12-26 11:56:31','7','7 Foton Forland',2,'[]',15,1),(138,'2016-12-26 11:57:25','9','9 ГАЗ-53',3,'',15,1),(139,'2016-12-26 11:57:25','8','8 ГАЗ-53Б',3,'',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(6,'auth','group'),(4,'auth','permission'),(5,'auth','user'),(10,'Building','object'),(13,'Building','objectcompany'),(9,'Building','objectentrance'),(11,'Building','objectflats'),(12,'Building','objectgallery'),(16,'certificates','certificates'),(7,'contenttypes','contenttype'),(1,'jet','bookmark'),(2,'jet','pinnedapplication'),(8,'sessions','session'),(15,'Technic','technic'),(14,'Technic','techniccategory');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'Building','0001_initial','2016-10-20 12:07:36'),(2,'Building','0002_auto_20161001_1152','2016-10-20 12:07:36'),(3,'Building','0003_auto_20161003_1305','2016-10-20 12:07:36'),(4,'Building','0004_auto_20161018_0945','2016-10-20 12:07:44'),(5,'Building','0005_auto_20161018_0958','2016-10-20 12:07:45'),(6,'Building','0006_object_livingcomplex','2016-10-20 12:07:46'),(7,'Building','0007_auto_20161020_0929','2016-10-20 12:07:46'),(8,'Building','0008_object_flats','2016-10-20 12:07:47'),(9,'Building','0009_auto_20161020_0945','2016-10-20 12:07:48'),(10,'Building','0010_auto_20161020_1001','2016-10-20 12:07:50'),(11,'Building','0011_auto_20161020_1017','2016-10-20 12:07:52'),(12,'Technic','0001_initial','2016-10-20 12:07:53'),(13,'Technic','0002_technic_category','2016-10-20 12:07:54'),(14,'Technic','0003_technic_subcategoey','2016-10-20 12:07:54'),(15,'Technic','0004_auto_20161002_1003','2016-10-20 12:07:55'),(16,'Technic','0005_auto_20161003_1305','2016-10-20 12:08:00'),(17,'Technic','0006_auto_20161003_1306','2016-10-20 12:08:00'),(18,'Technic','0007_technic_tankvolume','2016-10-20 12:08:00'),(19,'Technic','0008_auto_20161020_1029','2016-10-20 12:08:01'),(20,'contenttypes','0001_initial','2016-10-20 12:08:02'),(21,'auth','0001_initial','2016-10-20 12:08:08'),(22,'admin','0001_initial','2016-10-20 12:08:09'),(23,'admin','0002_logentry_remove_auto_add','2016-10-20 12:08:09'),(24,'contenttypes','0002_remove_content_type_name','2016-10-20 12:08:10'),(25,'auth','0002_alter_permission_name_max_length','2016-10-20 12:08:11'),(26,'auth','0003_alter_user_email_max_length','2016-10-20 12:08:12'),(27,'auth','0004_alter_user_username_opts','2016-10-20 12:08:12'),(28,'auth','0005_alter_user_last_login_null','2016-10-20 12:08:12'),(29,'auth','0006_require_contenttypes_0002','2016-10-20 12:08:12'),(30,'auth','0007_alter_validators_add_error_messages','2016-10-20 12:08:12'),(31,'auth','0008_alter_user_username_max_length','2016-10-20 12:08:13'),(32,'certificates','0001_initial','2016-10-20 12:08:13'),(33,'jet','0001_initial','2016-10-20 12:08:13'),(34,'jet','0002_delete_userdashboardmodule','2016-10-20 12:08:13'),(35,'sessions','0001_initial','2016-10-20 12:08:14'),(36,'Technic','0009_auto_20161021_0842','2016-10-21 08:45:24'),(37,'Building','0012_auto_20161027_1250','2016-10-27 13:23:40'),(38,'certificates','0002_certificates_type','2016-12-10 15:44:29'),(39,'certificates','0003_certificates_company','2016-12-10 15:44:34'),(40,'certificates','0004_auto_20161210_1151','2016-12-10 15:44:34'),(41,'Technic','0010_technic_price','2016-12-26 11:24:16'),(42,'Technic','0011_auto_20161226_1127','2016-12-26 11:33:04');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5cchpa2xoy98j1bt511mij3rcjlzkacs','ODYyZDdhM2FhNjc2YmZkZTFhZGQ3YjNlYjRmMzU5OTk2NWI3NTBkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YjNjODk4NTYzOTVlZTc1MjNkZDIxN2EzM2E3NWY3ZWQyMzE1OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2017-01-09 11:12:54'),('ayxm9vz90m73499fqujqpkbmnrqkt9az','ODYyZDdhM2FhNjc2YmZkZTFhZGQ3YjNlYjRmMzU5OTk2NWI3NTBkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YjNjODk4NTYzOTVlZTc1MjNkZDIxN2EzM2E3NWY3ZWQyMzE1OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-11-03 15:13:49'),('bisuh3n90l8w865mh40hv12hnd1502q3','ODYyZDdhM2FhNjc2YmZkZTFhZGQ3YjNlYjRmMzU5OTk2NWI3NTBkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YjNjODk4NTYzOTVlZTc1MjNkZDIxN2EzM2E3NWY3ZWQyMzE1OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-10 17:26:27'),('f0q1dvde5vx0nsmkcbumtyuh4omwetgv','ODYyZDdhM2FhNjc2YmZkZTFhZGQ3YjNlYjRmMzU5OTk2NWI3NTBkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YjNjODk4NTYzOTVlZTc1MjNkZDIxN2EzM2E3NWY3ZWQyMzE1OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-11-03 12:16:53'),('fyhj4dcnen6it9x3dfimhdsnjytv4co0','ODYyZDdhM2FhNjc2YmZkZTFhZGQ3YjNlYjRmMzU5OTk2NWI3NTBkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YjNjODk4NTYzOTVlZTc1MjNkZDIxN2EzM2E3NWY3ZWQyMzE1OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-08 10:21:34'),('kfbzdlrxzxjswg87mca6upewdwvq6j6c','ODYyZDdhM2FhNjc2YmZkZTFhZGQ3YjNlYjRmMzU5OTk2NWI3NTBkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YjNjODk4NTYzOTVlZTc1MjNkZDIxN2EzM2E3NWY3ZWQyMzE1OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-08 05:50:06'),('xywti0k8bm6j68d3uijsmben9yv2kgmz','ODYyZDdhM2FhNjc2YmZkZTFhZGQ3YjNlYjRmMzU5OTk2NWI3NTBkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YjNjODk4NTYzOTVlZTc1MjNkZDIxN2EzM2E3NWY3ZWQyMzE1OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-08 09:08:21'),('y50gq7oi8fk1h8fpxgkb5hj0dxb6gmvj','ODYyZDdhM2FhNjc2YmZkZTFhZGQ3YjNlYjRmMzU5OTk2NWI3NTBkODp7Il9hdXRoX3VzZXJfaGFzaCI6ImU2YjNjODk4NTYzOTVlZTc1MjNkZDIxN2EzM2E3NWY3ZWQyMzE1OWEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-12-26 09:56:17');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jet_bookmark`
--

DROP TABLE IF EXISTS `jet_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jet_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jet_bookmark`
--

LOCK TABLES `jet_bookmark` WRITE;
/*!40000 ALTER TABLE `jet_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `jet_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jet_pinnedapplication`
--

DROP TABLE IF EXISTS `jet_pinnedapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jet_pinnedapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(255) NOT NULL,
  `user` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jet_pinnedapplication`
--

LOCK TABLES `jet_pinnedapplication` WRITE;
/*!40000 ALTER TABLE `jet_pinnedapplication` DISABLE KEYS */;
/*!40000 ALTER TABLE `jet_pinnedapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technic`
--

DROP TABLE IF EXISTS `technic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `preview` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `exploitation` varchar(255) DEFAULT NULL,
  `ladleVolume` varchar(255) DEFAULT NULL,
  `depthDigging` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subCategory` varchar(255) DEFAULT NULL,
  `amplitude` varchar(255),
  `capacity` varchar(255),
  `engineVolume` varchar(255),
  `fuelBank` varchar(255),
  `fullMass` varchar(255),
  `maxSpeed` varchar(255),
  `power` varchar(255),
  `tankVolume` varchar(255),
  `price` int(11),
  `price_fuel` int(11),
  PRIMARY KEY (`id`),
  KEY `Technic_b583a629` (`category_id`),
  CONSTRAINT `Technic_category_id_9fbaa136_fk_Category_id` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technic`
--

LOCK TABLES `technic` WRITE;
/*!40000 ALTER TABLE `technic` DISABLE KEYS */;
INSERT INTO `technic` VALUES (1,'technic/Zoomlion.jpg','ZOOMLION ZLJ5320JQZ25V','','','',1,'Автокран','','25 000 кг','','','','','270 л.с.','',2800,3000),(2,'technic/auto_T-King_Ouling.jpg','T-King Ouling','','','',1,'Автокран','','6885 кг.','','','','','95 (130) л.с.','',1300,1600),(3,'technic/Dongfeng_Tianjin_XZL.jpg','Dongfeng Tianjin XZL','','','',1,'Бортовой кран-манипулятор','','4 000 кг','','','','','170 л.с.','',1000,1300),(4,'technic/maz_6422.jpg','МАЗ-6422','','','',8,'Седельный тягач','','','12 000 см3','','','','330 л.с.','',1100,1765),(5,'technic/volvo_fh12.jpg','VOLVO FH12','','','',8,'Седельный тягач','','18 000 кг','','','','','420 л.с.','',1500,2100),(6,'technic/ural_4320.jpg','Урал-4320','','','',8,'Седельный тягач','','10 000 кг','','','','','240 л.с.','',1100,1765),(7,'technic/foton_forland.jpg','Foton Forland','','','',5,'Легкие грузовики','','990 кг','','','','','52 л.с.','',600,750),(11,'technic/hyundai_r210w-9s.jpg','Hyundai R210W-9S','20 500 кг','0,92-1,15 м3','',4,'Экскаватор','','','','','','','','',1325,2000),(12,'technic/hyundai_r180w-9s.jpg','Hyundai R180W-9S','18 890 кг','0,76-0,89 м3','',4,'Экскаватор','','','','','','','','',1250,1800),(13,'technic/hyundai_r1400w-7.jpg','Hyundai R1400-9S','20 500 кг','0,92-1,15 м3','',4,'Экскаватор','','','','','','','','',1175,1700),(14,'technic/hyundau_h940s.jpg','Hyundai H940S','8 500 кг','0,2 м3','',4,'Экскаватор-погрузчик','','','','','','','','',1100,1300),(15,'technic/fukai.jpg','Fukai','','0,90 м3','',6,'Погрузчик ковшовый','','2000 кг','','','','','','',1735,2500),(16,'technic/maz_551605.jpg','МАЗ-551605','','','',7,'Самосвал','','20 000 кг','','','','','330 л.с.','',1250,1800),(17,'technic/kraz_256.jpg','Краз 256','','','',7,'Самосвал','','12 000 кг','','','','','240 л.с.','',1100,1700),(18,'technic/kamaz_5511.jpg','Камаз 5511','','','',7,'Самосвал','','10 000 кг','','','','','210 л.с','',750,1200),(19,'technic/gaz_saz_5307.jpg','ГАЗ САЗ-3507','','','',7,'Самосвал','','4 250 кг','','','','','125 л.с.','',600,900),(20,'technic/kamaz_5320.jpg','Камаз 5320','','','',2,'Миксер Бетоносмеситель','','','11 000 см3','','','','210 л.с.','',1100,1700),(21,'technic/hr25t-9s','HR25T-9S','2 450 кг','','',3,'Дорожный каток','','','','','','','','',800,980);
/*!40000 ALTER TABLE `technic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-19  4:08:26
