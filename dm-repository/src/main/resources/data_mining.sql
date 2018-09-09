-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: data_mining
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `algorithm_info`
--

DROP TABLE IF EXISTS `algorithm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `algorithm_info` (
  `algorithmId` int(11) NOT NULL,
  `algorithmName` varchar(255) DEFAULT NULL,
  `interfaceDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`algorithmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `algorithm_info`
--

LOCK TABLES `algorithm_info` WRITE;
/*!40000 ALTER TABLE `algorithm_info` DISABLE KEYS */;
INSERT INTO `algorithm_info` VALUES (1,'C4.5',NULL),(2,'k均值聚类算法',NULL),(3,'支持向量机',NULL),(4,'Apriori关联算法',NULL),(5,'EM 最大期望算法',NULL),(6,'PageRank算法',NULL),(7,'AdaBoost 迭代算法',NULL),(8,'kNN：k最近邻算法',NULL),(10,'CART 分类算法',NULL);
/*!40000 ALTER TABLE `algorithm_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `algorithm_param`
--

DROP TABLE IF EXISTS `algorithm_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `algorithm_param` (
  `paramId` bigint(20) NOT NULL,
  `dataType` varchar(255) DEFAULT NULL,
  `isNecessary` bit(1) NOT NULL,
  `paramDesc` varchar(255) DEFAULT NULL,
  `algorithmId` int(11) DEFAULT NULL,
  PRIMARY KEY (`paramId`),
  KEY `ALGORITHM_FK_ID` (`algorithmId`),
  CONSTRAINT `ALGORITHM_FK_ID` FOREIGN KEY (`algorithmId`) REFERENCES `algorithm_info` (`algorithmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `algorithm_param`
--

LOCK TABLES `algorithm_param` WRITE;
/*!40000 ALTER TABLE `algorithm_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `algorithm_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `algorithm_type`
--

DROP TABLE IF EXISTS `algorithm_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `algorithm_type` (
  `typeId` int(11) NOT NULL,
  `chTypeName` varchar(255) DEFAULT NULL,
  `enTypeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `algorithm_type`
--

LOCK TABLES `algorithm_type` WRITE;
/*!40000 ALTER TABLE `algorithm_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `algorithm_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `algorithm_type_rel`
--

DROP TABLE IF EXISTS `algorithm_type_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `algorithm_type_rel` (
  `typeId` int(11) DEFAULT NULL,
  `algorithmId` int(11) NOT NULL,
  PRIMARY KEY (`algorithmId`),
  KEY `FKprpj9peylvqavh2ft51f8jsbq` (`typeId`),
  CONSTRAINT `FKh53ldoxfn1ws172g7jwnnx2u0` FOREIGN KEY (`algorithmId`) REFERENCES `algorithm_info` (`algorithmId`),
  CONSTRAINT `FKprpj9peylvqavh2ft51f8jsbq` FOREIGN KEY (`typeId`) REFERENCES `algorithm_type` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `algorithm_type_rel`
--

LOCK TABLES `algorithm_type_rel` WRITE;
/*!40000 ALTER TABLE `algorithm_type_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `algorithm_type_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area_info`
--

DROP TABLE IF EXISTS `area_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area_info` (
  `areaId` int(11) NOT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `chineseName` varchar(255) DEFAULT NULL,
  `englishName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`areaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_info`
--

LOCK TABLES `area_info` WRITE;
/*!40000 ALTER TABLE `area_info` DISABLE KEYS */;
INSERT INTO `area_info` VALUES (0,NULL,'生活','Life'),(1,NULL,'物理','Physical'),(2,NULL,'计算机','Computer'),(3,NULL,'社会','Social'),(4,NULL,'经济','Financial'),(5,NULL,'商业','Business'),(6,NULL,'游戏','Game'),(7,NULL,'其他','Other');
/*!40000 ALTER TABLE `area_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attr_char_info`
--

DROP TABLE IF EXISTS `attr_char_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attr_char_info` (
  `charId` int(11) NOT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `chineseName` varchar(255) DEFAULT NULL,
  `englishName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attr_char_info`
--

LOCK TABLES `attr_char_info` WRITE;
/*!40000 ALTER TABLE `attr_char_info` DISABLE KEYS */;
INSERT INTO `attr_char_info` VALUES (0,NULL,'分类的','Categorical'),(1,NULL,'整型','Integer'),(2,NULL,'实数','Real');
/*!40000 ALTER TABLE `attr_char_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attr_feature_info`
--

DROP TABLE IF EXISTS `attr_feature_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attr_feature_info` (
  `charId` int(11) NOT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `chineseName` varchar(255) DEFAULT NULL,
  `englishName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attr_feature_info`
--

LOCK TABLES `attr_feature_info` WRITE;
/*!40000 ALTER TABLE `attr_feature_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `attr_feature_info` ENABLE KEYS */;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
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
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
-- Table structure for table `collection_attr_char_rel`
--

DROP TABLE IF EXISTS `collection_attr_char_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_attr_char_rel` (
  `collectionId` varchar(255) NOT NULL,
  `typeId` int(11) NOT NULL,
  PRIMARY KEY (`collectionId`,`typeId`),
  KEY `FKhgyec5i0xmltdi50c9x039uyg` (`typeId`),
  CONSTRAINT `FKhgyec5i0xmltdi50c9x039uyg` FOREIGN KEY (`typeId`) REFERENCES `attr_char_info` (`charId`),
  CONSTRAINT `FKsxgn87ni83n0hnps09grq3k62` FOREIGN KEY (`collectionId`) REFERENCES `data_set_collection` (`collectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_attr_char_rel`
--

LOCK TABLES `collection_attr_char_rel` WRITE;
/*!40000 ALTER TABLE `collection_attr_char_rel` DISABLE KEYS */;
INSERT INTO `collection_attr_char_rel` VALUES ('2c96608162a7c7df0162a7cbb0420000',0),('4028808162bc9bd60162bc9cca460000',0),('4028808162bca5290162bca6357b0000',0),('4028808162bcb7b90162bcb95f3b0000',0),('5b66d7e8620b41f801620b4a8f150003',0),('5b66d7e8620b41f801620b4ac3840004',0),('5b66d7e8620b41f801620b4b34f50005',0),('2c96608162a7c7df0162a7cbb0420000',1),('4028808162bc9bd60162bc9cca460000',1),('4028808162bca5290162bca6357b0000',1),('5b66d7e8620b41f801620b4a8f150003',1),('5b66d7e8620b41f801620b4b34f50005',1),('5b66d7e8620b41f801620b4a8f150003',2),('5b66d7e8620b41f801620b4b34f50005',2);
/*!40000 ALTER TABLE `collection_attr_char_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_char_rel`
--

DROP TABLE IF EXISTS `collection_char_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_char_rel` (
  `collectionId` varchar(255) NOT NULL,
  `charId` int(11) NOT NULL,
  PRIMARY KEY (`collectionId`,`charId`),
  KEY `FKtdou93f2ei42svsfkxiyi1pdc` (`charId`),
  CONSTRAINT `FKak7vvnxqx16tew8ecg9f2j6l7` FOREIGN KEY (`collectionId`) REFERENCES `data_set_collection` (`collectionId`),
  CONSTRAINT `FKtdou93f2ei42svsfkxiyi1pdc` FOREIGN KEY (`charId`) REFERENCES `data_set_char` (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_char_rel`
--

LOCK TABLES `collection_char_rel` WRITE;
/*!40000 ALTER TABLE `collection_char_rel` DISABLE KEYS */;
INSERT INTO `collection_char_rel` VALUES ('2c96608162a7c7df0162a7cbb0420000',0),('4028808162bc9bd60162bc9cca460000',0),('4028808162bca5290162bca6357b0000',0),('4028808162bcb7b90162bcb95f3b0000',0),('5b66d7e8620b41f801620b4a8f150003',0),('5b66d7e8620b41f801620b4ac3840004',0),('5b66d7e8620b41f801620b4b34f50005',0),('2c96608162a7c7df0162a7cbb0420000',1),('4028808162bc9bd60162bc9cca460000',1),('4028808162bca5290162bca6357b0000',1),('5b66d7e8620b41f801620b4a8f150003',1),('5b66d7e8620b41f801620b4b34f50005',1),('2c96608162a7c7df0162a7cbb0420000',2),('5b66d7e8620b41f801620b4a8f150003',2),('2c96608162a7c7df0162a7cbb0420000',3);
/*!40000 ALTER TABLE `collection_char_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_task_rel`
--

DROP TABLE IF EXISTS `collection_task_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection_task_rel` (
  `collectionId` varchar(255) NOT NULL,
  `typeId` int(11) NOT NULL,
  PRIMARY KEY (`collectionId`,`typeId`),
  KEY `FKdch9jjm2i7p2xehsx1bxvap7e` (`typeId`),
  CONSTRAINT `FK8hxr53r9g86pk4djw6es8jpf` FOREIGN KEY (`collectionId`) REFERENCES `data_set_collection` (`collectionId`),
  CONSTRAINT `FKdch9jjm2i7p2xehsx1bxvap7e` FOREIGN KEY (`typeId`) REFERENCES `mining_task_type` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_task_rel`
--

LOCK TABLES `collection_task_rel` WRITE;
/*!40000 ALTER TABLE `collection_task_rel` DISABLE KEYS */;
INSERT INTO `collection_task_rel` VALUES ('2c96608162a7c7df0162a7cbb0420000',0),('4028808162bc9bd60162bc9cca460000',0),('4028808162bca5290162bca6357b0000',0),('4028808162bcb7b90162bcb95f3b0000',0),('5b66d7e8620b41f801620b4a8f150003',0),('5b66d7e8620b41f801620b4ac3840004',0),('5b66d7e8620b41f801620b4b34f50005',0),('2c96608162a7c7df0162a7cbb0420000',1),('4028808162bc9bd60162bc9cca460000',1),('5b66d7e8620b41f801620b4a8f150003',1),('5b66d7e8620b41f801620b4a8f150003',2),('5b66d7e8620b41f801620b4b34f50005',2);
/*!40000 ALTER TABLE `collection_task_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_mining_group`
--

DROP TABLE IF EXISTS `data_mining_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_mining_group` (
  `groupId` varchar(255) NOT NULL,
  `arrangementId` varchar(255) DEFAULT NULL,
  `builtTime` datetime DEFAULT NULL,
  `groupName` varchar(255) DEFAULT NULL,
  `taskId` varchar(255) DEFAULT NULL,
  `teacherUserId` varchar(32) DEFAULT NULL,
  `groupLeaderId` varchar(32) DEFAULT NULL,
  `studentUserId` varchar(32) DEFAULT NULL,
  `taskStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  KEY `TASK_FOREIGN_KEY` (`taskId`),
  KEY `LEADER_FK_ID` (`groupLeaderId`),
  KEY `S_BUILDER_FK_ID` (`studentUserId`),
  KEY `T_BUILDER_FK_ID` (`teacherUserId`),
  CONSTRAINT `BUILDER_FK_ID` FOREIGN KEY (`teacherUserId`) REFERENCES `user_info` (`userId`),
  CONSTRAINT `LEADER_FK_ID` FOREIGN KEY (`groupLeaderId`) REFERENCES `user_info` (`userId`),
  CONSTRAINT `S_BUILDER_FK_ID` FOREIGN KEY (`studentUserId`) REFERENCES `user_info` (`userId`),
  CONSTRAINT `TASK_FOREIGN_KEY` FOREIGN KEY (`taskId`) REFERENCES `data_mining_task` (`taskId`),
  CONSTRAINT `T_BUILDER_FK_ID` FOREIGN KEY (`teacherUserId`) REFERENCES `user_info` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_mining_group`
--

LOCK TABLES `data_mining_group` WRITE;
/*!40000 ALTER TABLE `data_mining_group` DISABLE KEYS */;
INSERT INTO `data_mining_group` VALUES ('8a80cb8164f9805b0164f9a444f60008','THHS22WD','2018-08-02 15:57:18','Group_THHS22WD','8a80cb8164f917830164f929d7e10000','8ae4820a5eb2450d015eb2453b1c0000','5b66d3a66205a80b016205fa8724085a',NULL,6);
/*!40000 ALTER TABLE `data_mining_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_mining_task`
--

DROP TABLE IF EXISTS `data_mining_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_mining_task` (
  `taskId` varchar(255) NOT NULL,
  `actualFinishTime` datetime DEFAULT NULL,
  `actualStartTime` datetime DEFAULT NULL,
  `arrangementId` varchar(255) DEFAULT NULL,
  `builtTime` datetime DEFAULT NULL,
  `plannedFinishTime` datetime DEFAULT NULL,
  `plannedStartTime` datetime DEFAULT NULL,
  `taskDescription` varchar(255) DEFAULT NULL,
  `taskName` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `progressStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_mining_task`
--

LOCK TABLES `data_mining_task` WRITE;
/*!40000 ALTER TABLE `data_mining_task` DISABLE KEYS */;
INSERT INTO `data_mining_task` VALUES ('8a80cb8164f917830164f929d7e10000',NULL,NULL,'123124','2018-08-02 13:43:46','2018-08-09 13:43:24','2018-08-02 13:43:24','测试任务1','测试任务1',NULL,8);
/*!40000 ALTER TABLE `data_mining_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_set_char`
--

DROP TABLE IF EXISTS `data_set_char`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_set_char` (
  `charId` int(11) NOT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `chineseName` varchar(255) DEFAULT NULL,
  `englishName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`charId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_set_char`
--

LOCK TABLES `data_set_char` WRITE;
/*!40000 ALTER TABLE `data_set_char` DISABLE KEYS */;
INSERT INTO `data_set_char` VALUES (0,NULL,'多变量','Multivariate'),(1,NULL,'单变量','Univariate'),(2,NULL,'按序','Sequential'),(3,NULL,'时序','Time-Series'),(4,NULL,'文本','Text'),(5,NULL,'畴理论','Domain-Theory');
/*!40000 ALTER TABLE `data_set_char` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_set_collection`
--

DROP TABLE IF EXISTS `data_set_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_set_collection` (
  `collectionId` varchar(255) NOT NULL,
  `collectionName` varchar(255) DEFAULT NULL,
  `dataSetFolderPath` varchar(255) DEFAULT NULL,
  `dateDonated` date DEFAULT NULL,
  `isMissingValues` varchar(255) DEFAULT NULL,
  `numberOfAttributes` bigint(20) DEFAULT NULL,
  `numberOfInstances` bigint(20) DEFAULT NULL,
  `numberOfWebHits` bigint(20) DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`collectionId`),
  KEY `AREA_TYPE_FK` (`areaId`),
  CONSTRAINT `AREA_TYPE_FK` FOREIGN KEY (`areaId`) REFERENCES `area_info` (`areaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_set_collection`
--

LOCK TABLES `data_set_collection` WRITE;
/*!40000 ALTER TABLE `data_set_collection` DISABLE KEYS */;
INSERT INTO `data_set_collection` VALUES ('2c96608162a7c7df0162a7cbb0420000','数据挖掘测试3','F:\\GitHup\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\2c96608162a7c7df0162a7cbb0420000',NULL,'true',NULL,0,NULL,1),('4028808162bc9bd60162bc9cca460000','测试数据集下载','F:\\GitHup\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\4028808162bc9bd60162bc9cca460000',NULL,'true',NULL,0,NULL,2),('4028808162bca5290162bca6357b0000','得的單位的','F:\\GitHup\\data-minning-platform\\data_sets\\4028808162bca5290162bca6357b0000',NULL,'Yes',NULL,0,NULL,0),('4028808162bcb7b90162bcb95f3b0000','数据测试4','F:\\GitHup\\data-minning-platform\\data_sets\\4028808162bcb7b90162bcb95f3b0000',NULL,'Yes',NULL,0,NULL,0),('5b66d7e8620b41f801620b4a8f150003','测试数据集1','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003',NULL,'Yes',NULL,0,NULL,1),('5b66d7e8620b41f801620b4ac3840004','测试数据集2','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4ac3840004',NULL,'Yes',NULL,0,NULL,1),('5b66d7e8620b41f801620b4b34f50005','测试数据集3','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4b34f50005',NULL,'Yes',NULL,0,NULL,0);
/*!40000 ALTER TABLE `data_set_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_set_container`
--

DROP TABLE IF EXISTS `data_set_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_set_container` (
  `containerId` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `fileType` varchar(255) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`containerId`),
  KEY `COLLECTION_ID_FK` (`collectionId`),
  CONSTRAINT `COLLECTION_ID_FK` FOREIGN KEY (`collectionId`) REFERENCES `data_set_collection` (`collectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_set_container`
--

LOCK TABLES `data_set_container` WRITE;
/*!40000 ALTER TABLE `data_set_container` DISABLE KEYS */;
INSERT INTO `data_set_container` VALUES ('4028808162bcb7b90162bcb97fdd0001',NULL,'915106840327_刘祥德_标兵.zip','F:\\GitHup\\data-minning-platform\\data_sets\\4028808162bcb7b90162bcb95f3b0000\\915106840327_刘祥德_标兵.zip','.zip',124046,'4028808162bcb7b90162bcb95f3b0000'),('5b66d7e8620b41f801620b4b91af0006',NULL,'杜稳-工作.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\杜稳-工作.doc','.doc',51200,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b91b00007',NULL,'邓四云-工作.docx','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\邓四云-工作.docx','.docx',91620,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b91e80008',NULL,'胡波-工作.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\胡波-工作.pdf','.pdf',88192,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b91fd0009',NULL,'顾颖聪-工作.docx','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\顾颖聪-工作.docx','.docx',54932,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b9212000a',NULL,'黄杰华-工作.docx','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\黄杰华-工作.docx','.docx',43225,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b924e000b',NULL,'林艺辉-工作.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\林艺辉-工作.pdf','.pdf',90203,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b9368000c',NULL,'邱丽丽-工作.docx','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\邱丽丽-工作.docx','.docx',43824,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b9385000d',NULL,'马宸阳-工作.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\马宸阳-工作.doc','.doc',161399,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b93fa000e',NULL,'李思雨-工作.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\李思雨-工作.pdf','.pdf',333564,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b9415000f',NULL,'任绍林-工作.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\任绍林-工作.pdf','.pdf',66435,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b94500010',NULL,'王余阳-工作.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\王余阳-工作.pdf','.pdf',73209,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b94a70011',NULL,'杨皓栋-工作.docx','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\杨皓栋-工作.docx','.docx',13370,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b95360012',NULL,'杨赖靖犇-工作.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\杨赖靖犇-工作.pdf','.pdf',65873,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b972f0013',NULL,'郑智健-工作.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\郑智健-工作.pdf','.pdf',247709,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b9b580014',NULL,'孔卓-工作.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\孔卓-工作.doc','.doc',1725106,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b9bf70015',NULL,'欧帆-工作.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\欧帆-工作.doc','.doc',1675776,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b9d1d0016',NULL,'余明芝_工作.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\余明芝_工作.doc','.doc',1559040,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4b9e4a0017',NULL,'刘鑫容-工作.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\刘鑫容-工作.doc','.doc',2587809,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4ba1620018',NULL,'许婷-工作.docx','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4a8f150003\\许婷-工作.docx','.docx',5428564,'5b66d7e8620b41f801620b4a8f150003'),('5b66d7e8620b41f801620b4ec2230035',NULL,'张宇轩-升学.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4ac3840004\\张宇轩-升学.pdf','.pdf',259886,'5b66d7e8620b41f801620b4ac3840004'),('5b66d7e8620b41f801620b4ec45a0036',NULL,'郑坤-升学.pdf','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4ac3840004\\郑坤-升学.pdf','.pdf',448511,'5b66d7e8620b41f801620b4ac3840004'),('5b66d7e8620b41f801620b4ec6ff0037',NULL,'石俞军-升学.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4ac3840004\\石俞军-升学.doc','.doc',3637392,'5b66d7e8620b41f801620b4ac3840004'),('5b66d7e8620b41f801620b4ec8370038',NULL,'许志塨-升学.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4ac3840004\\许志塨-升学.doc','.doc',1866246,'5b66d7e8620b41f801620b4ac3840004'),('5b66d7e8620b41f801620b4ecc4c0039',NULL,'崔婉莹 升学.docx','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4ac3840004\\崔婉莹 升学.docx','.docx',6237675,'5b66d7e8620b41f801620b4ac3840004'),('5b66d7e8620b41f801620b4ece03003a',NULL,'刘婷珺-升学.doc','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4ac3840004\\刘婷珺-升学.doc','.doc',6797824,'5b66d7e8620b41f801620b4ac3840004'),('5b66d7e8620b41f801620b4ed0fb003b',NULL,'周颉尧-升学.docx','D:\\GitHub\\data-minning-platform\\dm-web\\target\\classes\\data_sets\\5b66d7e8620b41f801620b4ac3840004\\周颉尧-升学.docx','.docx',6439336,'5b66d7e8620b41f801620b4ac3840004');
/*!40000 ALTER TABLE `data_set_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_set_description`
--

DROP TABLE IF EXISTS `data_set_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_set_description` (
  `descriptionId` bigint(20) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`descriptionId`),
  KEY `FK40gyavj7130n4k7llpa25dkgk` (`collectionId`),
  CONSTRAINT `FK40gyavj7130n4k7llpa25dkgk` FOREIGN KEY (`collectionId`) REFERENCES `data_set_collection` (`collectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_set_description`
--

LOCK TABLES `data_set_description` WRITE;
/*!40000 ALTER TABLE `data_set_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `data_set_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-08-09 07:19:28.189426'),(2,'auth','0001_initial','2018-08-09 07:19:28.649527'),(3,'admin','0001_initial','2018-08-09 07:19:28.753390'),(4,'admin','0002_logentry_remove_auto_add','2018-08-09 07:19:28.765401'),(5,'admin','0003_logentry_add_action_flag_choices','2018-08-09 07:19:28.777419'),(6,'contenttypes','0002_remove_content_type_name','2018-08-09 07:19:28.847550'),(7,'auth','0002_alter_permission_name_max_length','2018-08-09 07:19:28.887864'),(8,'auth','0003_alter_user_email_max_length','2018-08-09 07:19:28.933897'),(9,'auth','0004_alter_user_username_opts','2018-08-09 07:19:28.945896'),(10,'auth','0005_alter_user_last_login_null','2018-08-09 07:19:28.992991'),(11,'auth','0006_require_contenttypes_0002','2018-08-09 07:19:29.046028'),(12,'auth','0007_alter_validators_add_error_messages','2018-08-09 07:19:29.062053'),(13,'auth','0008_alter_user_username_max_length','2018-08-09 07:19:29.105898'),(14,'auth','0009_alter_user_last_name_max_length','2018-08-09 07:19:29.159937'),(15,'sessions','0001_initial','2018-08-09 07:19:29.195986');
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
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_status`
--

DROP TABLE IF EXISTS `favorite_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite_status` (
  `favoriteId` int(11) NOT NULL,
  `chineseValue` varchar(255) DEFAULT NULL,
  `englishValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`favoriteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_status`
--

LOCK TABLES `favorite_status` WRITE;
/*!40000 ALTER TABLE `favorite_status` DISABLE KEYS */;
INSERT INTO `favorite_status` VALUES (0,'已收藏','favorite'),(1,'未收藏','isNotFavorite');
/*!40000 ALTER TABLE `favorite_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite_stu_rel`
--

DROP TABLE IF EXISTS `favorite_stu_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite_stu_rel` (
  `t_userId` varchar(32) NOT NULL,
  `s_userId` varchar(32) NOT NULL,
  PRIMARY KEY (`t_userId`,`s_userId`),
  UNIQUE KEY `UK_omrjlhc1egbvi29hbplr05mqa` (`s_userId`),
  CONSTRAINT `FKmnu7f9rs3pphpkhqex4g3v92u` FOREIGN KEY (`t_userId`) REFERENCES `user_info` (`userId`),
  CONSTRAINT `FKtpoljycfy2kr7gqfybp5tqtdn` FOREIGN KEY (`s_userId`) REFERENCES `user_info` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_stu_rel`
--

LOCK TABLES `favorite_stu_rel` WRITE;
/*!40000 ALTER TABLE `favorite_stu_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorite_stu_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grammar_info`
--

DROP TABLE IF EXISTS `grammar_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grammar_info` (
  `grammarId` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `grammarName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`grammarId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammar_info`
--

LOCK TABLES `grammar_info` WRITE;
/*!40000 ALTER TABLE `grammar_info` DISABLE KEYS */;
INSERT INTO `grammar_info` VALUES (1,NULL,'Java'),(2,NULL,'C++'),(3,NULL,'C'),(4,NULL,'Go'),(5,NULL,'Python'),(6,NULL,'Matlab'),(7,NULL,'Scala');
/*!40000 ALTER TABLE `grammar_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_student_rel`
--

DROP TABLE IF EXISTS `group_student_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_student_rel` (
  `memberId` varchar(32) NOT NULL,
  `groupId` varchar(255) NOT NULL,
  PRIMARY KEY (`groupId`,`memberId`),
  KEY `FKsp3gskhlpxq6ciw439rc2gqwn` (`memberId`),
  CONSTRAINT `FKaau625o60q7x78amwsl15psbp` FOREIGN KEY (`groupId`) REFERENCES `data_mining_group` (`groupId`),
  CONSTRAINT `FKsp3gskhlpxq6ciw439rc2gqwn` FOREIGN KEY (`memberId`) REFERENCES `user_info` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_student_rel`
--

LOCK TABLES `group_student_rel` WRITE;
/*!40000 ALTER TABLE `group_student_rel` DISABLE KEYS */;
INSERT INTO `group_student_rel` VALUES ('5b66d3a66205a80b016205fa8724085a','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724085c','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724085d','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724085e','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724085f','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240860','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240861','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240862','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240863','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240864','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240865','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240866','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240867','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240868','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240869','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724086a','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724086b','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724086d','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724086e','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8724086f','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240870','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240871','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240872','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87240873','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250874','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250875','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250876','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250877','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250878','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250879','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725087a','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725087b','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725087c','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725087d','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725087e','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725087f','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250880','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250881','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250882','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250883','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250884','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250885','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250886','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250887','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250888','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87250889','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725088a','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725088b','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725088c','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725088d','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725088e','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa8725088f','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260890','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260891','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260892','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260893','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260894','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260895','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260896','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260897','8a80cb8164f9805b0164f9a444f60008'),('5b66d3a66205a80b016205fa87260898','8a80cb8164f9805b0164f9a444f60008');
/*!40000 ALTER TABLE `group_student_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mining_task_type`
--

DROP TABLE IF EXISTS `mining_task_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mining_task_type` (
  `typeId` int(11) NOT NULL,
  `chineseName` varchar(255) DEFAULT NULL,
  `englishName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mining_task_type`
--

LOCK TABLES `mining_task_type` WRITE;
/*!40000 ALTER TABLE `mining_task_type` DISABLE KEYS */;
INSERT INTO `mining_task_type` VALUES (0,'分类','Classification'),(1,'回归','Regression'),(2,'聚类','Clustering'),(3,'其他','Other');
/*!40000 ALTER TABLE `mining_task_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_info`
--

DROP TABLE IF EXISTS `permission_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_info` (
  `permissionId` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isAvailable` bit(1) DEFAULT NULL,
  `permissionName` varchar(255) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_info`
--

LOCK TABLES `permission_info` WRITE;
/*!40000 ALTER TABLE `permission_info` DISABLE KEYS */;
INSERT INTO `permission_info` VALUES (97,'用户模块新增','','user:create',''),(98,'用户模块修改','','user:update',''),(99,'菜单模块新增','','menu:create','');
/*!40000 ALTER TABLE `permission_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_algor_rel`
--

DROP TABLE IF EXISTS `result_algor_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_algor_rel` (
  `resultId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  PRIMARY KEY (`resultId`,`typeId`),
  KEY `FKs1q3xd7o2kdnhviohb6npkmso` (`typeId`),
  CONSTRAINT `FK776tlhp99w5thmbyqkjuxvaki` FOREIGN KEY (`resultId`) REFERENCES `result_info` (`resultId`),
  CONSTRAINT `FKs1q3xd7o2kdnhviohb6npkmso` FOREIGN KEY (`typeId`) REFERENCES `algorithm_type` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_algor_rel`
--

LOCK TABLES `result_algor_rel` WRITE;
/*!40000 ALTER TABLE `result_algor_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `result_algor_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_info`
--

DROP TABLE IF EXISTS `result_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_info` (
  `resultId` int(11) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `stageId` int(11) DEFAULT NULL,
  `submitterId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`resultId`),
  KEY `STAGE_FK` (`stageId`),
  KEY `SUBMITTER_FK` (`submitterId`),
  CONSTRAINT `STAGE_FK` FOREIGN KEY (`stageId`) REFERENCES `task_stage` (`stageId`),
  CONSTRAINT `SUBMITTER_FK` FOREIGN KEY (`submitterId`) REFERENCES `user_info` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_info`
--

LOCK TABLES `result_info` WRITE;
/*!40000 ALTER TABLE `result_info` DISABLE KEYS */;
INSERT INTO `result_info` VALUES (1,1,44,'5b66d3a66205a80b016205fa8724085a'),(3,1,44,'5b66d3a66205a80b016205fa8724085c'),(4,1,44,'5b66d3a66205a80b016205fa8724085d'),(5,1,44,'5b66d3a66205a80b016205fa8724085e'),(6,1,44,'5b66d3a66205a80b016205fa8724085f'),(7,1,44,'5b66d3a66205a80b016205fa87240860'),(8,1,44,'5b66d3a66205a80b016205fa87240861'),(9,1,44,'5b66d3a66205a80b016205fa87240862'),(10,1,44,'5b66d3a66205a80b016205fa87240863'),(11,1,44,'5b66d3a66205a80b016205fa87240864'),(12,1,44,'5b66d3a66205a80b016205fa87240865'),(13,1,44,'5b66d3a66205a80b016205fa87240866'),(14,1,44,'5b66d3a66205a80b016205fa87240867'),(15,1,44,'5b66d3a66205a80b016205fa87240868'),(16,1,44,'5b66d3a66205a80b016205fa87240869'),(17,1,44,'5b66d3a66205a80b016205fa8724086a'),(18,1,44,'5b66d3a66205a80b016205fa8724086b'),(20,1,44,'5b66d3a66205a80b016205fa8724086d'),(21,1,44,'5b66d3a66205a80b016205fa8724086e'),(22,1,44,'5b66d3a66205a80b016205fa8724086f'),(23,1,44,'5b66d3a66205a80b016205fa87240870'),(24,1,44,'5b66d3a66205a80b016205fa87240871'),(25,1,44,'5b66d3a66205a80b016205fa87240872'),(26,1,44,'5b66d3a66205a80b016205fa87240873'),(27,1,44,'5b66d3a66205a80b016205fa87250874'),(28,1,44,'5b66d3a66205a80b016205fa87250875'),(29,1,44,'5b66d3a66205a80b016205fa87250876'),(30,1,44,'5b66d3a66205a80b016205fa87250877'),(31,1,44,'5b66d3a66205a80b016205fa87250878'),(32,1,44,'5b66d3a66205a80b016205fa87250879'),(33,1,44,'5b66d3a66205a80b016205fa8725087a'),(34,1,44,'5b66d3a66205a80b016205fa8725087b'),(35,1,44,'5b66d3a66205a80b016205fa8725087c'),(36,1,44,'5b66d3a66205a80b016205fa8725087d'),(37,1,44,'5b66d3a66205a80b016205fa8725087e'),(38,1,44,'5b66d3a66205a80b016205fa8725087f'),(39,1,44,'5b66d3a66205a80b016205fa87250880'),(40,1,44,'5b66d3a66205a80b016205fa87250881'),(41,1,44,'5b66d3a66205a80b016205fa87250882'),(42,1,44,'5b66d3a66205a80b016205fa87250883'),(43,1,44,'5b66d3a66205a80b016205fa87250884'),(44,1,44,'5b66d3a66205a80b016205fa87250885'),(45,1,44,'5b66d3a66205a80b016205fa87250886'),(46,1,44,'5b66d3a66205a80b016205fa87250887'),(47,1,44,'5b66d3a66205a80b016205fa87250888'),(48,1,44,'5b66d3a66205a80b016205fa87250889'),(49,1,44,'5b66d3a66205a80b016205fa8725088a'),(50,1,44,'5b66d3a66205a80b016205fa8725088b'),(51,1,44,'5b66d3a66205a80b016205fa8725088c'),(52,1,44,'5b66d3a66205a80b016205fa8725088d'),(53,1,44,'5b66d3a66205a80b016205fa8725088e'),(54,1,44,'5b66d3a66205a80b016205fa8725088f'),(55,1,44,'5b66d3a66205a80b016205fa87260890'),(56,1,44,'5b66d3a66205a80b016205fa87260891'),(57,3,44,'5b66d3a66205a80b016205fa87260892'),(58,1,44,'5b66d3a66205a80b016205fa87260893'),(59,1,44,'5b66d3a66205a80b016205fa87260894'),(60,1,44,'5b66d3a66205a80b016205fa87260895'),(61,1,44,'5b66d3a66205a80b016205fa87260896'),(62,1,44,'5b66d3a66205a80b016205fa87260897'),(63,1,44,'5b66d3a66205a80b016205fa87260898'),(64,1,45,'5b66d3a66205a80b016205fa8724085a'),(66,1,45,'5b66d3a66205a80b016205fa8724085c'),(67,1,45,'5b66d3a66205a80b016205fa8724085d'),(68,1,45,'5b66d3a66205a80b016205fa8724085e'),(69,1,45,'5b66d3a66205a80b016205fa8724085f'),(70,1,45,'5b66d3a66205a80b016205fa87240860'),(71,1,45,'5b66d3a66205a80b016205fa87240861'),(72,1,45,'5b66d3a66205a80b016205fa87240862'),(73,1,45,'5b66d3a66205a80b016205fa87240863'),(74,1,45,'5b66d3a66205a80b016205fa87240864'),(75,1,45,'5b66d3a66205a80b016205fa87240865'),(76,1,45,'5b66d3a66205a80b016205fa87240866'),(77,1,45,'5b66d3a66205a80b016205fa87240867'),(78,1,45,'5b66d3a66205a80b016205fa87240868'),(79,1,45,'5b66d3a66205a80b016205fa87240869'),(80,1,45,'5b66d3a66205a80b016205fa8724086a'),(81,1,45,'5b66d3a66205a80b016205fa8724086b'),(83,1,45,'5b66d3a66205a80b016205fa8724086d'),(84,1,45,'5b66d3a66205a80b016205fa8724086e'),(85,1,45,'5b66d3a66205a80b016205fa8724086f'),(86,1,45,'5b66d3a66205a80b016205fa87240870'),(87,1,45,'5b66d3a66205a80b016205fa87240871'),(88,1,45,'5b66d3a66205a80b016205fa87240872'),(89,1,45,'5b66d3a66205a80b016205fa87240873'),(90,1,45,'5b66d3a66205a80b016205fa87250874'),(91,1,45,'5b66d3a66205a80b016205fa87250875'),(92,1,45,'5b66d3a66205a80b016205fa87250876'),(93,1,45,'5b66d3a66205a80b016205fa87250877'),(94,1,45,'5b66d3a66205a80b016205fa87250878'),(95,1,45,'5b66d3a66205a80b016205fa87250879'),(96,1,45,'5b66d3a66205a80b016205fa8725087a'),(97,1,45,'5b66d3a66205a80b016205fa8725087b'),(98,1,45,'5b66d3a66205a80b016205fa8725087c'),(99,1,45,'5b66d3a66205a80b016205fa8725087d'),(100,1,45,'5b66d3a66205a80b016205fa8725087e'),(101,1,45,'5b66d3a66205a80b016205fa8725087f'),(102,1,45,'5b66d3a66205a80b016205fa87250880'),(103,1,45,'5b66d3a66205a80b016205fa87250881'),(104,1,45,'5b66d3a66205a80b016205fa87250882'),(105,1,45,'5b66d3a66205a80b016205fa87250883'),(106,1,45,'5b66d3a66205a80b016205fa87250884'),(107,1,45,'5b66d3a66205a80b016205fa87250885'),(108,1,45,'5b66d3a66205a80b016205fa87250886'),(109,1,45,'5b66d3a66205a80b016205fa87250887'),(110,1,45,'5b66d3a66205a80b016205fa87250888'),(111,1,45,'5b66d3a66205a80b016205fa87250889'),(112,1,45,'5b66d3a66205a80b016205fa8725088a'),(113,1,45,'5b66d3a66205a80b016205fa8725088b'),(114,1,45,'5b66d3a66205a80b016205fa8725088c'),(115,1,45,'5b66d3a66205a80b016205fa8725088d'),(116,1,45,'5b66d3a66205a80b016205fa8725088e'),(117,1,45,'5b66d3a66205a80b016205fa8725088f'),(118,1,45,'5b66d3a66205a80b016205fa87260890'),(119,1,45,'5b66d3a66205a80b016205fa87260891'),(120,3,45,'5b66d3a66205a80b016205fa87260892'),(121,1,45,'5b66d3a66205a80b016205fa87260893'),(122,1,45,'5b66d3a66205a80b016205fa87260894'),(123,1,45,'5b66d3a66205a80b016205fa87260895'),(124,1,45,'5b66d3a66205a80b016205fa87260896'),(125,1,45,'5b66d3a66205a80b016205fa87260897'),(126,1,45,'5b66d3a66205a80b016205fa87260898'),(127,1,43,'5b66d3a66205a80b016205fa8724085a'),(129,1,43,'5b66d3a66205a80b016205fa8724085c'),(130,1,43,'5b66d3a66205a80b016205fa8724085d'),(131,1,43,'5b66d3a66205a80b016205fa8724085e'),(132,1,43,'5b66d3a66205a80b016205fa8724085f'),(133,1,43,'5b66d3a66205a80b016205fa87240860'),(134,1,43,'5b66d3a66205a80b016205fa87240861'),(135,1,43,'5b66d3a66205a80b016205fa87240862'),(136,1,43,'5b66d3a66205a80b016205fa87240863'),(137,1,43,'5b66d3a66205a80b016205fa87240864'),(138,1,43,'5b66d3a66205a80b016205fa87240865'),(139,1,43,'5b66d3a66205a80b016205fa87240866'),(140,1,43,'5b66d3a66205a80b016205fa87240867'),(141,1,43,'5b66d3a66205a80b016205fa87240868'),(142,1,43,'5b66d3a66205a80b016205fa87240869'),(143,1,43,'5b66d3a66205a80b016205fa8724086a'),(144,1,43,'5b66d3a66205a80b016205fa8724086b'),(146,1,43,'5b66d3a66205a80b016205fa8724086d'),(147,1,43,'5b66d3a66205a80b016205fa8724086e'),(148,1,43,'5b66d3a66205a80b016205fa8724086f'),(149,1,43,'5b66d3a66205a80b016205fa87240870'),(150,1,43,'5b66d3a66205a80b016205fa87240871'),(151,1,43,'5b66d3a66205a80b016205fa87240872'),(152,1,43,'5b66d3a66205a80b016205fa87240873'),(153,1,43,'5b66d3a66205a80b016205fa87250874'),(154,1,43,'5b66d3a66205a80b016205fa87250875'),(155,1,43,'5b66d3a66205a80b016205fa87250876'),(156,1,43,'5b66d3a66205a80b016205fa87250877'),(157,1,43,'5b66d3a66205a80b016205fa87250878'),(158,1,43,'5b66d3a66205a80b016205fa87250879'),(159,1,43,'5b66d3a66205a80b016205fa8725087a'),(160,1,43,'5b66d3a66205a80b016205fa8725087b'),(161,1,43,'5b66d3a66205a80b016205fa8725087c'),(162,1,43,'5b66d3a66205a80b016205fa8725087d'),(163,1,43,'5b66d3a66205a80b016205fa8725087e'),(164,1,43,'5b66d3a66205a80b016205fa8725087f'),(165,1,43,'5b66d3a66205a80b016205fa87250880'),(166,1,43,'5b66d3a66205a80b016205fa87250881'),(167,1,43,'5b66d3a66205a80b016205fa87250882'),(168,1,43,'5b66d3a66205a80b016205fa87250883'),(169,1,43,'5b66d3a66205a80b016205fa87250884'),(170,1,43,'5b66d3a66205a80b016205fa87250885'),(171,1,43,'5b66d3a66205a80b016205fa87250886'),(172,1,43,'5b66d3a66205a80b016205fa87250887'),(173,1,43,'5b66d3a66205a80b016205fa87250888'),(174,1,43,'5b66d3a66205a80b016205fa87250889'),(175,1,43,'5b66d3a66205a80b016205fa8725088a'),(176,1,43,'5b66d3a66205a80b016205fa8725088b'),(177,1,43,'5b66d3a66205a80b016205fa8725088c'),(178,1,43,'5b66d3a66205a80b016205fa8725088d'),(179,1,43,'5b66d3a66205a80b016205fa8725088e'),(180,1,43,'5b66d3a66205a80b016205fa8725088f'),(181,1,43,'5b66d3a66205a80b016205fa87260890'),(182,1,43,'5b66d3a66205a80b016205fa87260891'),(183,3,43,'5b66d3a66205a80b016205fa87260892'),(184,1,43,'5b66d3a66205a80b016205fa87260893'),(185,1,43,'5b66d3a66205a80b016205fa87260894'),(186,1,43,'5b66d3a66205a80b016205fa87260895'),(187,1,43,'5b66d3a66205a80b016205fa87260896'),(188,1,43,'5b66d3a66205a80b016205fa87260897'),(189,1,43,'5b66d3a66205a80b016205fa87260898');
/*!40000 ALTER TABLE `result_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_record_info`
--

DROP TABLE IF EXISTS `result_record_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_record_info` (
  `recordId` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `isChecked` bit(1) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `size` bigint(20) NOT NULL,
  `submittedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_record_info`
--

LOCK TABLES `result_record_info` WRITE;
/*!40000 ALTER TABLE `result_record_info` DISABLE KEYS */;
INSERT INTO `result_record_info` VALUES (1,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_2376.JPG',504050,'2018-08-12 01:53:54'),(2,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\2\\IMG_2478.JPG',2585473,'2018-08-12 01:53:58'),(3,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\3\\IMG_3257.JPG',2656946,'2018-08-12 01:54:02'),(4,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_3257.JPG',2656946,'2018-08-12 01:58:04'),(5,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_3257.JPG',2656946,'2018-08-12 01:58:41'),(6,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_3257.JPG',2656946,'2018-08-12 01:59:29'),(7,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_2478.JPG',2585473,'2018-08-12 02:00:24'),(8,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_2376.JPG',504050,'2018-08-12 02:00:40'),(9,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_2376.JPG',504050,'2018-08-12 02:00:45'),(10,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_2478.JPG',2585473,'2018-08-12 02:01:00'),(11,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_2376.JPG',504050,'2018-08-12 02:04:36'),(12,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_3257.JPG',2656946,'2018-08-12 02:05:59'),(13,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\3\\IMG_2376.JPG',504050,'2018-08-12 02:06:20'),(14,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\2\\IMG_2478.JPG',2585473,'2018-08-12 02:06:33'),(15,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\IMG_2376.JPG',504050,'2018-08-12 02:25:42'),(16,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\2\\IMG_2478.JPG',2585473,'2018-08-12 02:25:47'),(17,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\3\\IMG_3257.JPG',2656946,'2018-08-12 02:25:52'),(18,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\915106840327_刘祥德.pptx',3737272,'2018-08-12 02:37:05'),(19,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\2\\软件部署文档.docx',100883,'2018-08-12 02:37:17'),(20,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\3\\计算机学院2018年度推免名单.rar',82402,'2018-08-12 02:37:34'),(21,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\3\\同学聚会PPT.zip',610035137,'2018-08-12 03:25:41'),(22,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\2\\lombok.jar',1529616,'2018-08-12 03:26:04'),(23,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\3\\参赛作品信息采集.docx',4228965,'2018-08-12 03:26:10'),(24,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\Xftp.rar',31218775,'2018-08-12 03:28:06'),(25,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\2\\large-file-plupload.zip',6205785,'2018-08-12 03:28:24'),(26,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\3\\软件系统详细设计说明书模板.docx',163102,'2018-08-12 03:28:38'),(27,NULL,'\0','F:\\GitHup\\data-minning-platform\\students\\915106840433_沈思远\\测试任务1\\1\\ideaIU-2018.1.4.tar.gz',667751183,'2018-08-12 12:31:24');
/*!40000 ALTER TABLE `result_record_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_record_rel`
--

DROP TABLE IF EXISTS `result_record_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_record_rel` (
  `resultId` int(11) NOT NULL,
  `recordId` int(11) NOT NULL,
  PRIMARY KEY (`resultId`,`recordId`),
  UNIQUE KEY `UK_j7gprksd6sx2xdj3b7h2g2w69` (`recordId`),
  CONSTRAINT `FKgy4hu7jdx75tpbpyt21eaaivs` FOREIGN KEY (`recordId`) REFERENCES `result_record_info` (`recordId`),
  CONSTRAINT `FKllkbrc7tyqy1pu7klmovlu4ir` FOREIGN KEY (`resultId`) REFERENCES `result_info` (`resultId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_record_rel`
--

LOCK TABLES `result_record_rel` WRITE;
/*!40000 ALTER TABLE `result_record_rel` DISABLE KEYS */;
INSERT INTO `result_record_rel` VALUES (57,1),(120,2),(183,3),(57,4),(57,5),(57,6),(57,7),(57,8),(57,9),(57,10),(57,11),(57,12),(183,13),(120,14),(57,15),(120,16),(183,17),(57,18),(120,19),(183,20),(183,21),(120,22),(183,23),(57,24),(120,25),(183,26),(57,27);
/*!40000 ALTER TABLE `result_record_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_info`
--

DROP TABLE IF EXISTS `role_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_info` (
  `roleId` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isAvailable` bit(1) NOT NULL,
  `roleName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_info`
--

LOCK TABLES `role_info` WRITE;
/*!40000 ALTER TABLE `role_info` DISABLE KEYS */;
INSERT INTO `role_info` VALUES (100,'管理员','','admin'),(101,'用户管理员','','user'),(102,'学生','','student'),(103,'教师','','teacher'),(104,'游客','','vistor');
/*!40000 ALTER TABLE `role_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission_re`
--

DROP TABLE IF EXISTS `role_permission_re`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission_re` (
  `roleId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`permissionId`),
  KEY `FKfomycha2oxu73lt0b3kpf1ggx` (`permissionId`),
  CONSTRAINT `FKfomycha2oxu73lt0b3kpf1ggx` FOREIGN KEY (`permissionId`) REFERENCES `permission_info` (`permissionId`),
  CONSTRAINT `FKjruhvwe23ahtsonpq4nbsygpt` FOREIGN KEY (`roleId`) REFERENCES `role_info` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission_re`
--

LOCK TABLES `role_permission_re` WRITE;
/*!40000 ALTER TABLE `role_permission_re` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_permission_re` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_status`
--

DROP TABLE IF EXISTS `student_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_status` (
  `statusId` int(11) NOT NULL,
  `chineseValue` varchar(255) DEFAULT NULL,
  `englishValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_status`
--

LOCK TABLES `student_status` WRITE;
/*!40000 ALTER TABLE `student_status` DISABLE KEYS */;
INSERT INTO `student_status` VALUES (0,'任务进行中','executing'),(1,'锁定','unavailable'),(2,'任务完成','finished'),(3,'空闲','available');
/*!40000 ALTER TABLE `student_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_statistics`
--

DROP TABLE IF EXISTS `sys_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_statistics` (
  `statisticId` int(11) NOT NULL,
  PRIMARY KEY (`statisticId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_statistics`
--

LOCK TABLES `sys_statistics` WRITE;
/*!40000 ALTER TABLE `sys_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_algorithm_rel`
--

DROP TABLE IF EXISTS `task_algorithm_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_algorithm_rel` (
  `taskId` varchar(255) NOT NULL,
  `algorithmId` int(11) NOT NULL,
  PRIMARY KEY (`taskId`,`algorithmId`),
  KEY `FKidgnxfx3oljco4dvwhvv8033p` (`algorithmId`),
  CONSTRAINT `FK833p07qm3ebgqb6iqu19jvm3i` FOREIGN KEY (`taskId`) REFERENCES `data_mining_task` (`taskId`),
  CONSTRAINT `FKidgnxfx3oljco4dvwhvv8033p` FOREIGN KEY (`algorithmId`) REFERENCES `algorithm_info` (`algorithmId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_algorithm_rel`
--

LOCK TABLES `task_algorithm_rel` WRITE;
/*!40000 ALTER TABLE `task_algorithm_rel` DISABLE KEYS */;
INSERT INTO `task_algorithm_rel` VALUES ('8a80cb8164f917830164f929d7e10000',2),('8a80cb8164f917830164f929d7e10000',3),('8a80cb8164f917830164f929d7e10000',6),('8a80cb8164f917830164f929d7e10000',7);
/*!40000 ALTER TABLE `task_algorithm_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_data_set_rel`
--

DROP TABLE IF EXISTS `task_data_set_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_data_set_rel` (
  `taskId` varchar(255) NOT NULL,
  `collectionId` varchar(255) NOT NULL,
  PRIMARY KEY (`taskId`,`collectionId`),
  KEY `FKmppiycdgc1xd275vg4q4s3dxk` (`collectionId`),
  CONSTRAINT `FKdo9xjukrleaimjcfli9hkuncc` FOREIGN KEY (`taskId`) REFERENCES `data_mining_task` (`taskId`),
  CONSTRAINT `FKmppiycdgc1xd275vg4q4s3dxk` FOREIGN KEY (`collectionId`) REFERENCES `data_set_collection` (`collectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_data_set_rel`
--

LOCK TABLES `task_data_set_rel` WRITE;
/*!40000 ALTER TABLE `task_data_set_rel` DISABLE KEYS */;
INSERT INTO `task_data_set_rel` VALUES ('8a80cb8164f917830164f929d7e10000','5b66d7e8620b41f801620b4b34f50005');
/*!40000 ALTER TABLE `task_data_set_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_grammar_rel`
--

DROP TABLE IF EXISTS `task_grammar_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_grammar_rel` (
  `taskId` varchar(255) NOT NULL,
  `grammarId` int(11) NOT NULL,
  PRIMARY KEY (`taskId`,`grammarId`),
  KEY `FK8t6b5jg1a3q3jghrc86ivvv3y` (`grammarId`),
  CONSTRAINT `FK8t6b5jg1a3q3jghrc86ivvv3y` FOREIGN KEY (`grammarId`) REFERENCES `grammar_info` (`grammarId`),
  CONSTRAINT `FKore4gdjxqdoag6o083oovlshq` FOREIGN KEY (`taskId`) REFERENCES `data_mining_task` (`taskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_grammar_rel`
--

LOCK TABLES `task_grammar_rel` WRITE;
/*!40000 ALTER TABLE `task_grammar_rel` DISABLE KEYS */;
INSERT INTO `task_grammar_rel` VALUES ('8a80cb8164f917830164f929d7e10000',1),('8a80cb8164f917830164f929d7e10000',2),('8a80cb8164f917830164f929d7e10000',3),('8a80cb8164f917830164f929d7e10000',5);
/*!40000 ALTER TABLE `task_grammar_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_stage`
--

DROP TABLE IF EXISTS `task_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_stage` (
  `stageId` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `taskId` varchar(255) DEFAULT NULL,
  `begin` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  PRIMARY KEY (`stageId`),
  KEY `TASK_FK` (`taskId`),
  CONSTRAINT `TASK_FK` FOREIGN KEY (`taskId`) REFERENCES `data_mining_task` (`taskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_stage`
--

LOCK TABLES `task_stage` WRITE;
/*!40000 ALTER TABLE `task_stage` DISABLE KEYS */;
INSERT INTO `task_stage` VALUES (43,'3',3,'8a80cb8164f917830164f929d7e10000','2018-08-02 13:43:43','2018-08-09 13:43:43'),(44,'1',1,'8a80cb8164f917830164f929d7e10000','2018-08-02 13:43:28','2019-01-29 13:43:28'),(45,'2',2,'8a80cb8164f917830164f929d7e10000','2018-08-02 13:43:40','2019-01-29 13:43:40');
/*!40000 ALTER TABLE `task_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `serviceLevel` varchar(31) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `accountStatus` int(11) DEFAULT NULL,
  `avatar` longblob,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `lastLoginTime` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `privateSalt` varchar(255) DEFAULT NULL,
  `publicSalt` varchar(255) DEFAULT NULL,
  `regionCode` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `className` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `teacherId` varchar(255) DEFAULT NULL,
  `teacherName` varchar(255) DEFAULT NULL,
  `favoriteId` int(11) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `finishedTaskCount` int(11) DEFAULT NULL,
  `sta` int(11) DEFAULT NULL,
  `isRegister` bit(1) DEFAULT b'0',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UK_s58k9whl7u8vgxbhhm8acqg94` (`studentId`),
  UNIQUE KEY `UK_onvosn2eqrefi1qwg3k8j15um` (`teacherId`),
  KEY `FAVORITE_FOREIGN_KEY` (`favoriteId`),
  KEY `STATUS_FOREIGN_KEY` (`statusId`),
  CONSTRAINT `FAVORITE_FOREIGN_KEY` FOREIGN KEY (`favoriteId`) REFERENCES `favorite_status` (`favoriteId`),
  CONSTRAINT `STATUS_FOREIGN_KEY` FOREIGN KEY (`statusId`) REFERENCES `student_status` (`statusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('Student','2c9d101165284b33016528bda3e50000',1,'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wAARCAEsASwDASIAAhEBAxEB/8QAHgAAAAcBAQEBAAAAAAAAAAAAAQIDBAUGBwgACQr/xABHEAABAwIFAQUECAMFBwMFAAABAgMRAAQFBhIhMUEHEyJRYXGBkaEIFCMyscHR8BVCUjNicpLhCRYkQ4LS8VOi4hc0g8Ly/8QAGwEAAgMBAQEAAAAAAAAAAAAAAQIAAwQFBgf/xAAvEQACAgEEAQQBAgUFAQAAAAAAAQIRAwQSITETBSJBUXEUMiNhobHRFTNCgZHh/9oADAMBAAIRAxEAPwD6ANjajKG24orRTJBMULqwAANzUvg56CBSgYmJpUFKk80gEle6ppRKSBtVe5jUBEHilm+RIpKTSrapO9FMlC0EnajBJoAR7aPsDU6CAQIooG8UrINAkCffTpgYdLfhg0dpHpv1rwJKZoW1QSB1qWChYiEzVXxvFru4uFYVhiw27EqcUJg+gnerM+rS1vPnVMi2tceuG7h9LK5JDiiBIJkQTRXIGVq4u8z4Jfqbdxh5a1iUovEoS2oyeqEah8/1e2vaBc4c6kZjw1VopUeLSosqkxs4kEASf5tPPFQHan2rZcytZOWr1m3jVwASm3YUO8JH95IVHwrnXEvprW2ANKtL3JV0EpASG/r6VlIjqpTQUnyO3u6UvTAk2dkYhm+1Rbt3DSFJbVuHdaCiInkK26cxWM9qH0xMgZFsnLLDrlvFsZTsq3YcBCFQeVwUiCI+A2muJe0f6S+aM7OPWuXWXssYY8ohVraXTh71MEqKwClBMzMJB9fPGcVxd231Lfd1lfjlUk8jkz5/+KKi5D7UuzqTFfp2Z9VfLeYbs0eOUIUpTgAPTSNAI38unWs1zh9JTPudL8XV/jjqEIMoZQSlBImAUgmefiB6Rz85euXj63HiogqkAqjc8z68flTxF14AUHwpMDwyBBjrx/pTLGvkXf8ARfsxZ5v8cSDiuLOPpRplLzq3dwJ2CjI/frVMU+5dXJf8KikHZQ29376U1Q53vjWpAg6pXAB6fv20wxW/BQba2JbGgpc0q523J/cfhTKNAc20PMRxEtOFhRCinYFO4T58e7fimH15zSVhKYJI23n1HzFQy5SkgJ1SYkiYM+R248q8i6UykqkKCxBEc79fnTAu0Tjd/cNJ0wn1Mnff20uzcfWwpBVGmCSRAn09kVCNXAdAO/SepHnNLKJhKwdCB/NsN42k71AWTCbt62UC2FAT4lJJjjmCY23+NTLF21idulu47tyeEERB9ogwUjk8E+lVhm7BUGnCTqOwJEj0Hun4U5Cu7fQ41qBB3UII5ke/c1KXY0X9k5guZ8fy/dIcwvHr3Drln+zUl9aPTp4eOkn37Vr+TfpOZ4ywo2mLWeH3rDxCn21NhLVxvJCwnYGf5gARJIP8pxF92yvkKDxKFbBKkoBgGeZHyHqYpm1fX9s4kJcQ62JMFMLTx7jtvuKWUFIsuj6vdg/0ock52ctMOtcSXYXz4DZsrtRJU55JX91YIGykmeigDE9Q2t0i4bDggT0mYr4kZMv1OMLxbAb523v7PSXWWnO6MatWtJ9oB24IHMiPo99D7t/uO0nAk5azNdtrxmxa1NrUqFvszAJSd5TwTvxJJ5NKVcMFcWjqNtClA6RsKMEgxvvXrRYnfqKVU2Bzun06UwEC3sBNKkSBFNydJ2MijpfRp1FVQAsBQGKbm7a/qJA8hQi4BAICoPpUshRkpCjBiltISIFJoSVK1cAUrO1BECkdQaMAa8BvRwAOalEC6aMhG/O1GQATFKoSJAihtGCgEDiKHxEcUoU/rQATtQGAGrgcUUqIJ3pwEiJikltSZioRijTiVpjg0skAb9KZpCm1aoo6rjSnmaKYobEb1m1tlOPqCUgckwBXIP0nvpK2GUm3cLwlxhd9Ch4Er1+g1gwnaZO8bbTsJz6WX0gf9xMNcwfBX2DfvIUNSlk92I+9A6+RPQbbmK+aObMzXWO4i7fPvLuFOq1rd+6CJnTHQA8DgbcUV7nSClXLLLjfaXj+P3btxiGLOvJdJBFwA+nfoAoQBzsABvVVXiTrl0pRBhXlEqJ36AVGIWEpEBMwCYB536+8fCk1OzAEAzMgdYHrVsYJAc7JRN6tKQskCOPUeW3t+VQd3eFaVjZZSZJHUxI8+ZFOC4ENcmCkbz7ZqMunXFlKARBBBVyCfWnXDFl9CrJP9RKdwTIpylzStB28R34M+zem1q0tQkiEgAmRyeg/80s4tFq1sRrIkk7gfvqajKhK/vgx4UwCN9jz8PbUWrEboGVqCkbnffnfiknit/SVQk9J6zzRVNKBAChpifb+5oIeuBw1fMOE9+lUyTq6b/8Anz6U8Nu1co7xLswDvpJAMCZqFOhBEwkkQNo/fnSzLzjZ0tL5H3T1mefn86gAHGVWzm6tKkmYJ25/f606s71ejxKAPVJ4PHwpUOM3jRQtQDqeCZnf1/Oo1SVMunWnbcEQdt9/wqE7J1mLhK1sr3SQImCPdz1n97r21yGHiy+0kgkpMjxR1IO3WoW3XB++CsGZI5BEfnPvqVRovmQTqQ4gayUjoRP4wPz3qEQ6fbbQpa2lLbCjMb+e5NEdcGzhKghUQoHieBPUGlLVxtxBZuSuQICynzET8elFcaS60WXPGoAlJIjjjn0/WohqfYa3unmXW32V6XWlFSFg7hU9OvBHFb52I9p2J5YzhguZ7TV9Zw66T3jSdKXHUKMKRPkqTuREk8Heuf7QhSVMneACAevT9fh7qtuTn3LS5FyDoDawFGN4k6hv024FJNWrHhJWfcTL2a8LxjCbXFbW9bW3ctJcQUyefOpB3HGEyAXFewAVzL9GDMrt7lZGFuPlxtpCVsT4h3ZAIAUPLcR0Gn2De4lIis29sLjTJdzFg6ZQ0QfVX5UReJOnjSPYKjkDiTNKrAAn30LZBR6+uSPC8oezakheXB/57n+Y0iVTSeoj7tLbZKFACK8BHma9MnY0J8/StCEA3oyd+tFoyeaJBRJgxSyDuDSAB6UoknptUChwoSkV5IEwKBvx7FQHkaHSE7SNutIxkw4jjgV5SAN5ogXA2rxdTG5oIjCLIAPNV3OuacIyjlm8x3Fb5u2Zt21aluKAAMbVL3t8zbNLcccSkJkyTFfO/wCmp28PZtxodnmXMS14fZqP1xKTCHFaTsTMKAHi9NvLYvjhEStmIfSJ7V7vtKzje3yXC3hvfrDKQomUeESeJ+7IkDmsUQ8kOleuQNStiCeQR7qeYjcoLq2xClJMmDPOxj05qJZXqJSoA7yBE7bdPZNXxioqkCfLHRdUluNRnYSeYjf503afUtwgQQkkSDyR7tqI++sa4ESdp4P7gfGm1osJWobwDJ33n9/lTFN88kw8Jt186UgAdIMiKYIbVcOlMKIghW0x+yRt607KSpGhQnwjVAG5293SlrS1Q0gISlKln8dqZlj5dHg33aElQUEgQmeT6z5/vamV84XCGkhRBjZKo2mP1p64lTgDSVR0k7id+lBbWgunVL0agnxKjeUCNqSTokIOUqIoYZcoAkqCVADel14RehklTJ987x+vt6Gr3g+XDiV8hlLIWjkb7eYO3s9/FaQ12TuOsFz6rCCkSCd0z5xtWaeoUOzpY9E59HNlxb6U6XECZiY4nYbg/wCvHnSLcAgODYnYgk/v2VtWcex+4sWXLtlhao+8AjjzmBx7OINZPeYUu0fLDyShaNzIn27fl76txZo5VwZtRpJ4HyM2VAKC07lJ+6diRx029KXLYuAdUr1JB3H3xv7zG1FS0lsJS43GrcSSn3evNAkKbGtA2iRHUgDj4irl0ZqoRDa2laQDOxSRyR6fj7jUjYvKkOpISZ8ejYER1j3H3CkbtlK2Q+k7kSBHHoP30r1uVqWrQDITsRvHGw6+Y2o0V0ycSyHdKmwqFQJKY1T6/LpuetDo1LDSoKkHedv3yKGwWVo1QJO3HI6iPw9aUeCkvd5q3RGxPTp09vzqFy6Cm2XbvJcahII1JIHEkz7d5n9irFaB62S1cJbcbRssqIAJj2QBskR7esxUddWLr1il8LALMp2SevG/qdvfUmm50WLTqwpSVIQdKhEJjfceft6dd6VjJUdj/QuzVcYdiq8DfJ7p+5OnUeJaCiojyIbI9oBMV3c2AWwQoH2V8tewXHrjBe1vK1hbOBtdxetWo8WnV3hA4Igkjb/qVx0+r+G5dQm2bSu5UoFIOyIrK4K3QJPmyMShR3FA4Vq8J2qxowW0bH/MV7VfpSqcMswIFugn13oeNgsrCGied6MmzUoTpV8KtbdgkcNISPZS31T1qeIm4orJJmT0o6lb7VCDGW2xsSZ5gUk9ju3gQonyKqm9ESJ6d+aHvkJ/mFV1GKPOAeFKZ4gb/OlFvvLRAdM+Y2/CopkonzctjcKmkziDAMKcT/mFVda1LPiWpXtNHZ5PsoeRkosasXZbhQWD7ATQpxcOplCT8IqCSkn73FOEHSNqik2HolFXzhHHxNN3710IKkqAI9KQSsxRFkLSZ4okMk+kX2mryF2eYpjKn1F0MqQygOaNazsBPlJA99fLLGcWxC8Rc41iS3XH75xS1qWImd+vQc+2u1v9oVmFVlgGEYAl7SLlzvHAD95MyduvAP724Jx3EFLtmklwHwkCOhjny5inxRdtjXUaIbEnyHS4FKSqdxBVIM9fKZ/c0a0XrBKUn7vE8nb2fn1ptdwWyI6wBGw4/U0S3d0KgwSRO8dDIrQU/PI6uFSIAEwSdo9n4fhTJkOF0Noka4AIHA/Sl7xZ7uCeDGw352pXCLUukvOKgJ39pn9mmQGrZKMMvGSQoyYB9x9PZ8KfNsrErQSIlCJE+YJNN21JbAbVupXlwJmfzqcwy2aUpL6oQ0ncGAPDJE9eo+dDosQwftFNMrcMhKh3aVEbg7Sat/Z1lM4oDfFSg0pLidOkeLw7Aee5jy5qsYrcJxG5FtbJB1HQCDuSYECPwrd8j4EzgmXbdl5X2iUDVBnx+Q61k1mXZFJHR9PweSbb6RJ9kOVLN3FnGnEoWgqQANPGk6p+IPwiukGMmWarYFq2Qkr3OkcVnfYfhKFXSljQrvHVTO39P6n5V0zaYG0q2TCBBG0edcTLkc5HpMUI4oIwnG8hWVw0407bkDptx69K5j7c+yFrCT/GcMb0oB1KbAA3B32j1HHqfb3xi2DNpUpBTI86y3tYyOm/y+tQbJQXAFdYSoEcH2ijgzSxzsOowx1GPafOTFMJd7nv2ipSDJ3j2+fqKiEqlC0q5SQdJ6Hrt7/yrXL3KrjX1i3LZJaccbW3AExvt7dRO0fjWZYzaGwxBxptJSCCSlYjcfnxt7POu9iy7uDyup0+z3JCVm2HkraXq06Zjg8mefd50g2hbF2Ad0mZESJ22g+/5UrZFRfQfCYVBnaQdj79vwp5jNsWQ2+02riZJIE8bH2VcYZRvkVt0Fl/QhZKHIUnSfefbz8KlwyAG30klCkaJ0xPMjcbb1FWydbYHgCmyA2escj16VYrBDTlqhKUKCtJdMxyP9I9tEaFdEhblz+HPtlgltaQqVHbbkj9/GppqwtL7LttpbQHWFNoWlfOwmPLc8z/AK0vg1lqtNa0ami3oiPFMg7eXn8KjV36WcWRhlvcNIW+4gFK1xuOek8JPw9aBHybN9G3C7HHu3jKDN4pCENX2tLm3hU2gutz5ypAT7VCvrTalKW0hKgdIA+VfHHslu7nLXadl3FEOkFnEGHCtAklsOJ1pEeaZER8K+xuFuIctm1pIOpAM+e1VPsjHSQDzvR0gDgRQARwKFPpQFDgUMx0JoB50OryqEMHIOnV0iklbkxNTNvgV2pBC3GwPaf0pUZaAI1XJ9YT/rWbaxlwQ1u5qUEgiU1JJXKPWn7OXbRpUlTij5yBPyp23htqggBmfaTQjFrsZ18FXW4oLKDt60vb6lbhJPuq0Jw+1bHgtWv8gmlkswIAgDpT+MlkC1bXCtgyuOOCKcJw29WfC1A9VCplLRmadtMogTT7KAQ7GDXSx4ltpHtJo6cDJBBfG3kmrAGgEwmg0JAjajtQT57/AO0lyebdrL2YUF1xlKlMOAJ2BI2Mjjjy68iuAMbKFNiAEwTPir7UfST7J2u17s7xPK6EE3a21LtVhIJS4BtAPs+IFfHbtGyXjORsevsq45blq/sFlt1vUDJB+8I8x0n51ZClwB8x/BUrhIU1oMbHkH7x4/1pmtaW1ghZGk6hHSIp4pJOpKyZ93w+VM1pla0KEgpkRP4e+rSpvmxxcgHSAmIM8+tSligNspbKhqMqIjcD19/761FMy5MJkxPpxH4/Gn3edy8ZgAHT5Ac/61BqHDzgDmxJ4Tt024HuHWnzmJXC0ItGkCY6bT1g1GtOLI1jlZ1K223n2VZsqYEm8ukXDoBghQk7dPjzVeTKsatmnT4JZ5Ui29m+Wbi+vEXjzcNJ8QJnb9/vzrVcVvmbFtu1b3WhOoDST0gD14NNMrsC0YQA2lptKRO0auv6mnrLQzBjbNlbtpeb1jVA532Hs9eK4efM8ktzPVaXTrHHajdewS1c7q1cebGoNAqJH86t4/flXSrBR9XQAN4rJOyfLDuE4ch1wQtatSgNx0ge6K1221aACePSsilfJqnFdIg8YbJUVFMD0qu5ktGrzALpvudX2SlQJ5AmrrijQWgHSdutQjrSC2tqNiIiilyBNJUcKZtwpDeacVt0NJAceS6kFEcpEcc7RNYn2k5bVbPC5QNJCoJIHXod/X5V1H2kWf8ACs/BAQkF9tTZB2JKFH8oPl+NZh2nYBb3lup426UrUJ1pAKvy/Hzro4suxpmDNp1lTic02LqlLjQOFARPIM+6rPiTKLi1QqUwIkQeCAOZ6biKgri3+pYk4wpJkqCh6jr+fwq8vYSh/BLZZiHbWEFKyCCJEGI8vnXYTT5R5qWNxbiyoMtKRpLiCFwAZM7xvv15FWzBGWzaN3DqiiHe6O06p2546jb09lVxLYcWpCIHhCkyB90bQCBvH5+m1rtrsMYCtvuQobOwqen6ED2c0WIo0T7mKfVLULV3cFWlXOmeRtPpVGzdi+jMFve26QNLyVpLcgzq2/Olf4o+bB9lDig4Cl0+pO3uO9ReK2/8Ss2HW0ErbcAUkc6dQ+P3us1AOKo1/IS38cz/AIHhuGnvbk3rSUpEAK0HUr8J6HcRyJ+zuXJOE2hVyWUT8BXyQ+hfkm8zL22YC+tkOM2zqrtwuGCAmCYEwSSUDoYJ86+vmGsBi2Q2JCUAJE+VVtctiv6HQEbUYDavAQeK9zSih4FBpoRRtNGgmehIJ2FGUEjpREKilCZoBR4ISrgUGgA8UXvCkxxSyFpPtPJoNBsAeVCJoZM0cJGkTtNAbs8BO8UqkyIpNaoMJMijI35qdgHTZISAkTtQ6JBKvdQtgFEgRQ0UQQeZCfEFEfCvk7/tC8u3WGdtjuIqSruMRtgUeIkBSVEmQeORxPHSvrQ4CQRPSuMP9ol2Tf7yZCbz7YWo+tYGvU4sDlBEGfQAE+eworjkB8t3xBIiADE+Yjn5/KkFEzr2BA3I/H9+dPH2i24UuQmNpiJiPzqOfBQvTqJBJ46RG1WrkrSF7IoU8nUIUkhX5n8qUdUVvGAZBkiY3/Om1osfWUqIBB24npTjuyolJSRqHBHBP+k0R4ok8Na+sOoZbnaPcZP5CtTydZdyUPFsBRUNJJ59lZxlVhSrwBG4nfeANjz51r+XLRsHWvxLJ3gRtXM1kuaO96fClf2XjDsPuL9pCVNIAMJ8J6Hrxv7a13syyW3aKS6pCQTBjT8DVIycyy5coBc2PhI8upronKFlattIU2U7Dk1yZpvhHfhKMI2zRcq2aGbRCOoHw9Ks7bMnYRUDgryEJCNQJiNquOFsNupBIk0YYyrersi7m0LiCkidqr17YrtllWkb8z5VpwwxK0zp2qJxbAA62e7SAY46U/jBvOTPpBZTLv1bMNoCgsvJcWUj73Qj12PHWfSsrxrAU4lhaioJcSU7EHjrM11lnbLhuLS4sLxr7N1JAMTpnrH72rm/ELK7yXia8HxYRYurItnlNyhGo7NlQ4EjwkjfjkRTRl8MO3/kjj3tMyw9gmKqvEpUpoEgeEmYJ2MUlhd68rDm2kuLWlCeDB0pn2yefL310T2o5LF/hry3bZLggrbUkbJ/e/z865na1ZXxY4fftzZqXs4qZQZPToIn/L57119Ll3ra+0ef9Qw+Ke+PTHt9h6kvpumoUFFIUPI7x7iT8zU1bNJvLEI1taVgwrUZ36kRzMT5UszZMXzOpppp1kj7Jba0qBSI5HPJPX9KaWrF5hFzCWU3DDgHhVMpMwCDsE8ifP41rTs5jT+CCxG1u8NukJLJUysxImOT4SrpxVky3lti+Lae9htxSFKSo77Gd4/D09KcW7Op1P1m2C2jpKQFbjnbiR139tWDBMEdvru2asQu28QbbOqUlRMQdpjfn0jY0spDRTvk7u+gx2S2mE4a1nRbaZuUO9ySkavE5pJPt7lJ22iD1rtJAATArLuxPJpyLkrCcGavnLhu3tW0algSohIBO3nHHStINxAkfhSlL5djrmg60g3dBWyomvKe/pBoAodJUKUB2pkHiKOLgdZopkSKInYb0IVA5okzxR0I1H086AEEWoE7UZskEEUZbWncARRU+2ov5kHOoKQCNjXpNFbIV4QKNPTmgx0eHNKIVFEiaOkQKKCxwyveOhFKBROx6U3bMKEUskgyffUFFDEVWO0DKdnnXKmJ5XvgO5xC3WydpgkGNuu8H3VZjMCirTqFQh8Ke2ns2xXsoz3imUsds1tG3fUbdwElLjBJ0KkwCQIBrOXtxEREEHn3V9gfpifRrwnthym9jOHNFnH8KZU4w4nSO9AB8KyRuNzG4E/EfJPMGB3mD4g7hl/bKaetnVIUlSSIUCQeffViYeHyQDSi3c94noePd/58qlLZIcaKlgzwDM771Mdn+SbjOWZ2cJaV3aVySY3I8h+vSZq/5/7JrrJo+rJQ6tp3dC43A2iTuNif/FVyzRjLazRj083Hf8FUyZbOquVOFJAJG4iTvNa2HE4bZJLahrWN9Pl5elUnKuXLuzQHvGkciN5Pv9lanlDI2I5kvEl4qSgkSZE+ziuZnknKzu6WLjBIYYJmXGsP0vIa0pUQYIPuFXnCu3HH7BsN2to86qSfG6hsED1Mj4/jWoZO7Dcvtpbcv7dFxG5DiQeu9aA12QZJtW9WH4EzbugRqQn9x1rM8kUavHK+zKcq9tmcrt5AuMKfbRO6kqDnTySRXQHZ92k4jfBAumwlW3hJUFCfMH9/hVZZyczh7pIskLb4lSBVhwxi1tSnQylPBqt5YvrgvWJpV2bvhOLtXlslShBPQ05ecQrZPWs4wfGktJSJEe2rLa4uHolWx9adTTK1B/IrjWEW+IMKC2wT7Kx7O/ZVb49aP2FxbIfZdSpJSsTAP4VtyFhxO24prcNNJlRA+FCSTGi3Do4WzT9G7tOwwuJyRmdTlmQf+AxJxTraRvASshRETHTb2b5LmH6M3aZfEt41hmF8n7RNwSN+spTI3HUV9JMSXbJBUUpArPcevMOW93ZSlXQj8KdZ5Yl7SqeGOZ+9Hz3X9HrtTyrrubW1bvrZIOu2aKnkxPEFIPoTFIv5fv7NtTN7g9xYKJKYgpgxHhBT6mvofg72WEA/WsYwm1I3AuLhM/iPI/CplvCsCxNabhhjCsQSAPtLZxKjHpur281qhrMiVtGHJosTdRbR89uzfsszB2iYurB8MwZx1lkhx651qSEiJT4upmNh6dCK0bsc7OMWPa3aZbuW067J9XeMLgkoCTPsMGZ6EV3pljB8v27X/B4ewysmSUtgEn1+ArPcPyecI7e7xzDLdCEYraoW4QgDSkSSR7+vpTS1UmrBj0MG3E6JwRgN2iEAKgJH3jvUnon2UFkz3baUjgCKXUI6Vvs8/LvgTbaAM6RR1NgDajtJKifKj6RUFsRSyTzSoZT1o4IAAo1EJnCFA7E8U5SsBAiIFNylMSABQJkHnaqk6JQupZM0nqjpXvZQhNHsgu0QeDS0CeKbtJIpYKAg70QoOB1ofMUkFxzyaP3gBHFFMnYs0nrNKpTueaI2qdhRwsBQmiAV0nT7KTJilkkKTuKTKZHzqEKzm/MuCZcwxy8xlS+6j+zbTqWs+QEj8a+Yv00MHyNmbHE5uylbXlhcvEpurS7t+7KoJhSVJ1JUev35jptXdH0mLi/ssMsXrNRQCvSSRIGyzPyFcz5hyyznrA12uKW7QUvUgOAdfMe+ubn1ssObx/B6PQ+jx1Gl/UXycufR0ZFrntCHjGpsgEgEgg/6/uK6U7S8ntZlwMFlA71oHQQASRsSPUyBtPU9axLBsnXfZz2r2Vm6VKS84Q2ognUIJBJ6711C6kKtUkCPCDFVajJulviW6TDti8cvg5uwDKt9bvi3ulJIETtJPkfPr1rbsmWFlhjTa1sp1b7HrvTO/wAKt2rlVy2hKFGSR0ppcYr3CS2lemBufKsk8u46WPTqCNdw7NbLTiWwsJ32SjmrvhOYrBLWrEb2ws0j+a6u0on41zNgycazBclvD7g2zA+85PjJ9N+D+tYxn+2ewzHXGsSt8QxBwgmdJVB8oJ4HG1PjwOfubozajUQxvZFco+meDuYLjtupeHXOG4g2j7y7O9S8Un1CePjSGIYAyiVtA6Y68iuVvoo4H2OZrxTBMPs+z/G7DNKcKcOI3319v6u64l0Q8G0q1sq3ATATt5811RjFliWSsYtsJvr9y7sb0hLLr51KQv8ApUeoO9aMul2Q3dozYNZ5MnjSaZDQq0UU6oIqRwrGz36WtZkmmmbGHbBkPACCNiDsap2CYm65iiJc2KvPiudL2So62OPljbOi8Ft1P2qXCdiPjSWLMFpCj6UbKV2leHto1TtUtf2zV00UqHIitXaMztMxfOmLLw+zed1EACNvOuE+3PtFzVc405h93iN1ZYYtwoCbcqCjBVvKd5n313z2i5cubq0WxaoQVCTCzsaxPMPYfg+d1AX+rDLwTqetFJOsxEqQoATsN5oY6jO5EyKU8VQZTfoaYH2XPYvhGI22IZiRmK/N2ziWHv2i3cOuWEKlkpcI2UBBJUVGVEACYrsTtB7C+zy4sUY1gOGry/jKfGi8w1amFFXPjSghKxPn5mCKqf0fOxjLXZKxcuYJbXd7f3oT315drbAIHCQlJhIE9N/MmK1XFri7uVTfPIJGwQg7CuplzReOjjYNNkWbfbKdkqzxm30sYvct3C0bd4lJGv1I6VbLTBWDnO2xZTf2iLLuwqP7xn8qLh9skK1JSAOYAqxWNtqukOAfdTB/GsenityRs1knHG5InGgAmQNqOR5ivNphIoVc11zy7Bb2kUJ5oEH50Yc71AAERQzGxo2gkdK8UUaZDOUIMSTuaDxAxFKhQI2NBsd+tVtETASJiKUTRBsdule1Gd96K4COURNCdulIocjrvSxII5otBQA3Pt2oSI2FF2gGjmaAQUuKQZpwhYPXY01MDkV5KjO3SiQkkrkQTSSlmYFJocV5x1ojiiFGOtSwUZt2+YCrGskuut7uWau8SOu2/wCAPxrnHA2mxh7zbqdOlagQdvX9muxsUtGsQs3rK6TqaeTpUK5Z7QcoP5YucRsGkwhYK21avvAgVyPUcL3rKvwet9B1kXhekk+btGBdp68PczngrtrcBy4Yd7oqSkmCVQZMR1+RrXGtLto2oA7pBjy9Kx+/wj646p5SSp61eQ8qBJgLE/vzitYwZwPWDKp30ARPWsilugdDUYFhy8fIje4Ym4bWjQJjqapeLYA8w5qBOk1p1vbFc6vZFO0ZdZuz4mgQeZ4qh3ZapJKmUnI31S1eSnuilcjdO0x5zV4xfsryN2gI14rYXFu+vTqubNwNrV7ZBB+HlUpZdmrD8P2w0KkEQYqzYdlDFbVKWmr0wPeavx5skVVcGbLhw5Hd8kh2S5AyJ2PWLoy3YBL1xCn7u5UXbhwjiVHoJ4EASdtzU/jyrDNLqHrphx/uV60qcVICvOKRwnKi1KSq7uFuAbwo1N39u1Y2pbaQkBIq95Z5I1LhGdYYYpbod/Zn2cb9z6mbUOKISI3JqkYK6pF+knmas2a1qlZO+0RVZwZZRfIcJET1rBke5nUwJRidFZIWtVsjcxpB9KuZTKdxVGyA/wB5btjVOwkzNaCEgp91bMa9pizOmRNzhDV8nu3mwpJHBqv3HZzh7z3eIStsjqn9KuzaQlW9Lq0wITVm1Pszubi+Cn2eSr2z2axV0I/pAqUYwVDI8bi3Vf1KNTyF7Dajd0lW8CT6U2xfAjyv5I23tQ2dgZqYsEaZEc0iGSFQOKd2wKSQASAKtwRamjJrJp4mPUAwK8U15J24o2x5rqHnGABAoQTxXiRxQgdaKQvQdJM0aB1oE0JB6GKdIKMw72BsRXkOkndQ+NFFuyBJbEeVAlDJP9kI8qzsCHBXwZFFChO6hvQJaYIkspmvONMAbMpqILDd4AYBml2lBSYUdqjyWkn+xBpVtbEwWQKayIfBYGxIo2seYpD7FQkNgxXoZ/8ASFQaxZTnqKFpcK3Ig7GkktsqMd0KMEMp+60AfbRRORyfACQfZQKWkjUelJ6Wzy2IoEttzAbHsopEBOlQ5ECqB2p5TTjmEG9tmwq5tUk6f60+VaG2wiB9kmTR1sMoSVFhB9CJpZwWSLiyzDmlhyLJHtHCeI5RRbXN9idilzU42pDrChM+w9NxSOVn3HLIJeTpUgwUnzAg10H2sZEGH3BzFhDKWmntnm0/dSfQdBWIXbJZxFawzp177DYng/hXAyYnhntZ7bFq1rcayImbVxMgjoas+EKSoiYO1Uy2eAGlRNT+CXkOpIWY6is74Zalas1HBkJCUhO871YWG07EATO9U/B7wFA3nbarVYPh0JIIq6DKHHknLVuU7Ajz2pji9uooVJ5HWpfD0kt7xTTHi20wpThAAEmre0LVMx7NATrUlX3QN6qLZSHZbI5mnecMyLxLE3bDDBrSkkFQG01F4Wi4Q+lD6TJPJrE3b4OhDG1FNm1dnd4+kt+IlMJ2G1bDbuFbQPpWN5CaUktyQOOK2SyYWWEqCSdq2YU6MWoaT5Dd6lB+0IA9aU79C/uqBHpSFzbh1OhQkHpVWxFN9gN13yHFqt1EESePSmlJw5Ko44z+eS8sAOHnenaWRHNVfBsebuUCFb+2p5F+COavhOLRkzYpp8DladPNLWqwFEwd/IVHm6HxqRspDcwN96v09SnwYNbcMPPyOFLSo7Aj3UWVExSgNGKhFdBHDoSCgDBn4UYOJ8z8K904oU0UwUGS4D5/Cjax5/KgFH38qdEMoRcKOxVQ6lxIgUgzExG8UuYj2VnC+A6SpXKz7qPpmJ36c0ilUUq2qSCfOhQLCEcpO1eRsfZSjqeooraQo7+dRBY4ZIOwpYoBEg01UlTZBTxR23zwaevsCYoJBoyVGaDVrEijJG9SqGDhW2/WhSRzNAI3JNF1yYimCxyHVgzNK6xp3O8cU2SqeTS4SEjzqUAYYphtvjFk7YXbAWw8nSR+YrBs/dj+O4YXMTwxbF1Ztkq+9pcSknYEHY9ODXRMTA4Apri1ki9w+4tCkHvW1J98bfOqc2COZe41abWZNM/Y+DjJbakqOoEelSWHPJRAFL5osFWGL3dqrbu3SEj05qMYOk8yDttXnskXGTR7LFkU4KX2XnB79Xh0kmD0q+4LcglJM+IeVZLhNypLg3j1mK0HAr1OpIKiYO+9LHseXRpmGPQ3v8apPa1jFxbYO6i2nUU9DVnw+6bKJJ2jiaisew22xZCkOjUCCOaulbjSEhJKSkznbJz5cuO9fSVrKjJUDzO81oT+CNOtIvGEAEbnSKTxDIltZXarnDnS2uSdKtxP6V62tMfdSbW5xAttnwjuBp/Oazxi4rbJG6eSOR74MvOTrxpGlGoaknf21reFYwPqqUKWBWL5XyW0y6m4bxS9KjuQpyR8xWm4Jhi2FBwOqVp6KrZicoo5+ZQmyxnEWyuFtrM8eAxSOKWgv7VbakDccEUu0EnnkDrQPXCEAhRqx89mfiL4KC03d4TdqZIMBVWqwu3FNJUT0mD0pC7aYvlyU7g7TTywtO7SJGwqmMdrpFkp7kSdpqeIJB3PlVgZYKEjc7jiai8MZ1LHh2T5VOoSImuro4cbjz3qeW5KCChAA4odImj80WDW9ROQBpnii7po9BQ2ksFKp2IpQelJwaEahRIY+hwpI86X73fnmmk+tHSd96qAOkr6UohUU3BHWjhfrUog9SoqT7q8CGzPPpSDb4SACTQOPFRMI5qfzDQ6Kw5welJAGeaSQtSCDtE0dbqeZG+1SyUOm1adp2NKDcn5UzbdXMaRTpKpSD1NMnYVwKExRZ3r1ejeoiXYdJjrThtepJk8U2gAc0ohekGmBY4SQaMtOpNItnalkb+tQlnP/brltdhijeOsNEtXOyyBsCf9fxFZOgqCoAO9ddZ0yzb5qwG5wt5AUpSSpuf6o/fyNcl4jh11guJPYXepKHbdZBBn3H31xtfh2z3rpnpvStUp4/G+1/YfWTkKBNXDBsQ7gah06E1RmnDpk7eUeVStliBHgUR7Zrmnads0vD8w63A22qehqRxTHWLK1KlKgkTNUvLNk6+pwtKk9JqO7QnMz4dhinkZddvWUb94w8nWB6JVA+dRSaViqEZSSTJlWYmcQcUELJI6dKkcNAdVJIFYBg/ahhDN0W7u9ct3kq0qbfR3ek+pVt8Cav2Edodq8kLsng7qEjT4tvdRU0uWa1pMk+II3rAW0EDSqatlkSgAJ52rnrD+0jFbJwKYtHV//hXFXLDe0TNmItBvD8JhxQ2Okjn21dDInwWf6VqFy1wbShxIHige+oLMuN2eHskrdCnFeFKRuZqjWqs2XdwlOL3BZWs/cSJ/8Vc7TAW+4SH9LquSVb71Y22YdRpf079zv8DXL96/drAdbKRyJq3NgJSDFRFtZJtlylIHlFTWGsKunQP5U7qpsUHN0c/NlWKLkyZwxnu2tahurepEGkWk6YHQUsmu7jgoRo8plyPLNyfyGG9BXq8acqCkRxQgDrzXj7a8NzUIDQketeFDtUCkYqFCZFH1AEEkVFuXyUqOgjYdKBGKNqAkAHiql9AJtJBTIMmvDVHqKjmsRaKTCwKWReJVsFTRoKofNKEbmlpFME3EA0cXAAkmhQw9B253pjiilobRpAGtaU6v6TPMdRSrb6TEkb02xa2Rf2zjPeeIjdJPhV7aFEQ9YcWiElWqOp61IMuJUnmq2jFme9Q0hCgFQJWNJ34AHWplpZHXaouAskgZANemKaJfI5ND9ZBESZPlRTQjPX92bVkKQAVrWG0CeSeKetg6ZVtIqs2j5ucWNtiN239ioKbaUqFLWJIUE+UQeu9WVCwESaZcgFmz4uacIG1M23IUYExTxCtoO00SBlBJ45rKO2LsxOZbdWPYIyDiLCZcbH/OSB+P7851pCU/rQKSlJmBNJOCyR2yLcOWWGanH4OJA48ytTFw2ptbZKSkpggjoaFFytB1A+tWrtyzDlDE86PNZTdZcuLQFvEVsp8BenieCREGs9RfAmCrfivP58Pim4nstJqPPjU+rNHylmQWbwSV89D1rTbXErPELRTLkFDghST61zrZYgpp9KgoQDzWkZYxyUp36CQaojJxdF2SClyirdpfZQwu7VitjbpWhRkKSBqSf3vUJlLB7/DVAJh1IgFKhuPfW/W3c3zW4SQrYg01XkeyW539u0lpR/pED4VHBt3E3aT1CWFbJEPhHffV0EJKDHChNW/CQ6hKRKkKPVA5r1llB5CEkLgeyrDheDoZKdSztzFWx3l+T1FSXCJHA8KBULh5SlK81b1ZW+7cRKDI84olnboS0nTxTrQE+lXJHHzZnllukNS0664GG0jUrgzxVkw6zRaMpaG55J8zSOG2QaT3yxC1efQbEfjUjsnautpsHjjul2zy+u1fmlsj0g6QBtRhFEEmjAHzrWc0PXtiea9waBQqDHiIoKAFRMCjwB7agErASOte99DQgxUHSo+YONfTRy9boUbFp99yNWhIlPs1Db57fOqq39NTMD1zrFlYNMlzTpLaySJ41agAfdXKouW426ieelJLdSrrtvvJ+MnjiuL55t9nqo+m6eCrad75S+lphGIBKcZt/qxgHWhfeII+SunlWj4T2/ZFxFQaazFZocXGlDi+7J/zxXy6OIBtyGnSkjqFRNSdlmXELRaUqdW8gCNJJ3/Gro6iaKJ+k4Z/t4PrRh2d7O8UkN3IIInmp+3xptwDUoGfI18xsk9uWKZbCWbPFXG2mxIYelTYkmY4j3H3V0Bkr6UWF3ndox536ipZCULPiaJ9Vcj2kRvua0Y9SpcM5mf0zLi5jyjsRvEWzyYo10UXLC2S64lLgjU2spUPYRxWW4J2gWN+0lxN0hSVDYzsfYasyMyNqYK0uDSBzO1X7kc7ZJOhBLRwLErdx/Erm97t4hffnc6oCN0+Q6ERuDWhMXyFtpUFyCAfWsmxvEfrS0DvnCXAFtOI06kkeRIE9d5HtpXBMyXGt1NkUqW4UKCAsQsSeCdgTvvVMZpOjRLE3Hcauq7QsKTrIkcgwaZm7ubEB5y9Wtgf2ilIBUBPp58cdaoeKZtvLSyucWvLR3DfqDa3nDcutltbSNzulfhMdTx1phk/tUw/Nlsru3QpC0qT3keFRH3tjEASI59tWJpsp8cmrNJbuLNq9XdqV9YvXge7G2pCOgHlMcx034FTlleOd0hN1AWRJ34PlWRDOC7i5wywZxRNrfutwUoKSpbSRssgiYmfTkHzqbxfOdmhBtlYilhxsArWSBPEHoOTTdKwPHJdo063u2ngFtOBQOwIO1PEvAgelZVlfNtxeqbwth3dqS86ofdT03G0mfPzrQrO570RqnrRjJMRxceGTLTp3PlvVL7Xc5DK2Sb67aeDdxcNqZbVP3JHiX7hVmbfCkktrkAkGPMVzL9MbNF7Y4SxhNs2XEFBWsagAOIJkjaTv5wKdEirkkcr5Xzmp/tCuMNCx3d53qvEuVCFSOsARq4HlJ3rUC2tTZWkGR7prl7IGME9oj98hxWm3IaSoKAmYEDzMCTXV9kA/bNuAeFSQQSd64mv/wBw9X6bxjoYtPPNrSFJ2HWrPl/GywpKVKgTUK7bpKiPjTjDcMVcOhDKtKjx5VgfJ0vybDl/H2wlJCjO071omE4gzdIAPPkDWCW38VwTQq8tz3SoHepEp5+VXrK+ZBrQguASeJ6VIy2ugSj8o2ixBW2NKdQFP2GUoWF6OvlVewXGmVNgatvOpxnFGVkKChzHNaFyVuRYGAEiTSlppub5u36EmfcJqv3+OtWtm7cqXDbKdSiPwqcyYl1eEW2JXiYfuUF8p/pCvEke5KUfGt+jweaVvpHJ9R1XghS7ZZButMHaB+//AHfKo3FMTvrYrNjZt3Sm+WivQo+wwQfLp7elPdelK1EeECYnoAmmLIDaEquAVLKlJWeZACt/eNPviu5CKfLPKuf0RGHdpeA3TptrxNxYvpVoUh1EwqYjbfmenSrXa3ttdtJftX23kKEhSFBQPvFZv2h4fbNMtYqLBp77TuHiPCuBwuQQdh05JpjhD1vaspvsGxV62e0hxy3U5OlMbattIMbAGRvVksEWriSOR3ya6FTwK9uapWCdoTTq/q2Nsi1cBKQsnbjr+Z2FXFm4afQHWnErQrggyKzSg49l6kmKDb0odorwImve6kHXR6h38qD2UYK23qBR+d9Ug6SRMnY7fL3UZTcjSnoI8jTlON2942pF3ZpUkDwySrp0OxHXrSNxdYS6QCLlhJA4egR5SobfveuCke5tDItFVwTsBO23T9KOsIbOtK+TAIMjinIVgYUSlsLUSSrvXFLn1gQKTfdwiPq9u1ZLcjgJW2eP6pP5U6VlM5bRs6tOkKEE+ccfv8ql8rv3TbLr6j3rKSGkIVxOx39II2qv3Nt3aFOtvRoEkLIJB6weDyK2bHcPtMY7HMo5wybYLuxYWq8LxktvIV9VfQrShtxGlKislwQqI0lv75OqrNtdCPKuE/khLHNuP2DjN1a5mxGxWFAspt7kNNzOxUCdJTPOrbzrpXsz7UMzOWgsM0Nqt7xkhp5S1nSscBYCVRB3kcSDG1YX2WYNhSGBcZmcVbXSkLbtrlF4hLbRMCIUdK1KA0QFAwpXBAISexPM2XMzXdhi1xcsvWNyCht61K7RtvdTICo0gEAwgzqCZnaK0bZY/bLsxaqGJ8JcnWmMZ0SvGCyi5U+wltLyUtKUpsI0GSFBMGOT5A+hhoMzLY0DC1FjU+la1FR3SkcCDx0j381k+D56tMy4DiFl/GLCxv7J0PP24ZV9odxDKhJSFAoGkgglRICSDNT/APq6m0wi8xAruHX7ZxfdpdR/ZSoJKCATukb8CQCeaEMUsje0xwxPIntOl8U7QVOYQpGI3Cnu+BTdIWCEqQrZSEkbiEkkRvKR51nTWZGMlYuUYZYCztXG1vWGGvXjylYhdRGuVjUnYASTBKQImqDhfaJbYvhChit+4V3FupCgAEd06R97Y6tpJEdBvJgVR+1FTanLDNtni7T11iFw1bXKGW9ItG3Y4BJKlagskqIhSojk1fDTZZJzrhAeJwTtcFyuO17Eb3EBnA4/dW98yvQth0E90lBUlKUzABBEHz8Rk9dFyV2r5ixuyuhjqA6WEpQb15xpLlwuU6B/LH3gEkiCTzNcw5Ot33s1WeWGcTcxDvcRYbbUhpRS4tT406ELA3JVsCYJBmtvwrDO0Fxdz2dYflZzFHsr4teNX2JYWNfeNKdSkqLZEFcpASEwdESPCVVpc3kw+N03/ZFynDJDa6/wjr3J90xh2W2bV9m5RcvsJuUudw4gLChJgQDCQUjoIq74XnLDdDSUuuJhACFEEyYketY1ljAM1Wd8cQxKytrRlhKPqaXriUt92hKEGANZJSlJMhMqPHSrWpjDrW2Q3cNOXXdpDinQoIA2M7SNhzWaGKZxsuzd3Zob2fLbCrK1f76zLTqSEthau9dXHEbwCSTJkny3rmz6VmLP4nl7FcZBCFN2wQkpJECCowSJ4g71brdy0ZxZ/GBcuYg6UFNstKdLFo0keFLYmCTuCobniojtdydf597OMYwnCU6sRct3Vspn7yu7kD2kJIHr51rxYpKPuKd8YSVHz/7MrpJvH7pRUpVw6olZUSTv13JNdlZJuP4jglqsKk92ArzkCuH8oG4w/EWsOfbU0+0+W321CChYVCgZ8jPwrsrsuu9dkGkEeBQ2E7CBz7q4etVzs9RoJe1Fwu2C2SojcfOnGBvIYvUKIGxp9fWpW0D50ytsOcUuUkgg7bbGuczqLk2bL7LF4hkaNWqAQRxVzd7L8nXFsl5zDjbXJE95aOFsg/4R4T7xVI7OBdBlHfJPg49lasw8taJWfZV0EpLlGWcpRftZA2uSmLJBSnFr1aRwF6CfiEipeywe1bA1POuf4lRPwihu7xCIE7eUVVcz5ou3VjK2WiXcTukDWtB/+3bUYBPkonZI9p6VZjh5JKMEVTyOKcpPgm2mhnPG1YVZDThWGuBD7iTs7ccqT5EITufVQ8q1BpxKFBhshCQA2lIMaRAKvgABVaydl62yrgVrhNsNX1ZHjUOXnSZWo+1W3sBqdVG5KieQozykHxR7TtXq9NplgxqHyeQ1uq/U5dy6+CVDwUYUZ1K/H/Qiq9jV+WHWWW3tKi2I9SYTT1VwrSUpXJSogkHryfmQPdVMzJjTDeJMsuHwJ7tZM7wJVEe6tWHFTswzlwPMexOLF6S2vS6tYW5GkDUkccE8++qK4m4s71NwhQSVnvFBxUn/ABrB/m8qcYliq02yFqUl0OuJBSrdMGXFSOv8o99RmJYcham1W1w80pTY1JSqQHHDJ2MwQPxqyXHAU2+Ra4xpt5ISplRQRMKErTuf5tpJP8vA8qsOT8xYlZ3IYtHluMkzoc1b79PxJ/KqkLe8cSUpuu7aClHZAkgERB9npyqrHhGGLsz34utbiENBLbjaSguLM79TA25geVVSSaHs1iyzLbqam6Qpsj7xG4A9fKpNjFLJ1AdS/pSRIK0lAI94rN28y27lvLq0tvo1KbS6oLVttrbQkAaZ6n5Hama8xLce+sTDcnxqVuf+r/8AURWd4Ey1ZtprDd1bPf2T7a5/pUDSoj9isoczGy4gjvCdI3Kl7D2jfT7yKinM1X7Sylq6cQk7gIXt7ar8I3m+0fEB3E9gldvbKMkpKmwATEfGvLu7G50KNk0Y2KkrIMSPL21IN/xhCCQzeJSvqUT8qSVdrC5vLe3KuZet949vNed4PecjELw51sJ03LRMCELBH/uFJixw8KW81fPhY3SpxkKA9NiOnpTxa7AoIGGW0z/IoojjfY0ihnDVLUpQvGoGyEupKU+R3BPzp4iyimS+WclYvndV3heAXlve3bLf1gWcFtbiAYKkrUNG2pIIKgZUIB3jbsi5LwLHezJnD8gY2w6cXxRu8xPDLtxb7uCONJcJIe7tG6khlsKDBICnTrWmSMv7N8JyF/EbXGbztQXgOJ2KlLbau8E79CnIMLacFwhMxEBWkzsJ2nqFGE4S5lDEMRyLm69Dz9y1irmINpGm6cWSkqU2gpSZQCCoFRPd7zEKdtpHOyz2SowXP71thmb8SwHBlsjBrdKbHUpZXKUoCVFTigDr1FR8Ph3ISY5n7u3vMMyfhSc+5qCziTVz9Ut7RaLvv2UoQlhJWkfeU4tadQLiU7hMErA0Dstw7LC89OZlw7Ang1YMrZtSLoNC3K0KbCnkoOslwrOkgecalJmsgzXlDtbx7MbGZU2GIu43asNOvu2N0Gbm1QtKinvUagtlSgkr0gDSXNOxOgaFLf8AufJXPJv4LDYYnhOXbptOMYniOWWLq5LtzdG0F46ySpSRAbLalQoK2lSwlPhKgIq74FlTs3fxVzAsw4rhL2EYr/xjj1gv663cqS2ooeZSgd42pYIEK0QQUwkqVqx1zMWMZnyocCzc8ptxV00W3+/K9Wnwr73UmUk7kwrdQnSJNXj6OXZLjefMZu3VYQ0MAYcQby/uwU27ak6gUtR/ar0kgplOmZJ3AN/6PIo7/wDwzTbxRcpOi+YZkHJWa8SssBy3gdw/fWtkHbayQ+4UottIUybh3SnuSrWtSpGpS1SFc1c8O+iFh6bkXGYs2I7lFybnuMOsUFS3EFfdr753URtuU6SJPJiTt2G2+D5Ywe1wXArddwizt27VDygFKcbQkhAW5tqj5TsKj73EMcuHFp79m2bJV4EDvCJnhRgcK8q1YsMoR9zs5uTXZMi2xdIqGXfo7djGTSm6tsnoxB9KiouYm+u5E6tU92fshuJEIHpV4Vjtrh7aMPtlpbQwgAW1s1smCYgJEJHHO3HFQrqXHSkv3Dr3XxrhJPnpTA+XnTi2QhtAabSltIHAG1XKKXRkbb7Y/Xil7clTjVkGUaSE96oKIUesCROw60ydDtyT9de76PEEwAlPXZPxiZNL93BlTnhAJ3IEHy/D3eym10FEaTIJngfv9ipRBvdPK7oILQIdUCN/5UwSPwqx4Q6p6/swDoS49bpUAf7/AP8AIVCYkjS02W0JVCUwEjkfy/FUn3UtYXgYcRKidBS4kgxJBCvyHxq5Iqkzhb6QPZ7cdnX0iMUsnbYt2WKXKsTtFRKVIcMqj2ExWq9lWJJRfJtFrBStKTPnH7/GtV+l92W4j2jZTwjtGytas3N5lRDqr0IP2zlk4dWtIjxaCNxMgVzLknMqcLxywdfcGhS+6USdgSI/099cP1HE1M9H6ZmTgjsBNup21S9HhqQwWwbdWNt56eVBkxTeL4Q2fvHTufOpRlgWDpUAAJ6VwnH5O/ufKZoGX7dFq2hKdgKs671tpqQoGBWcMZstLBgKfc0gDnmqbjvaZjOYr4YBlS3L63dgtAOwM+InhIgE71dFOXEVbM7Vcy4Rd835/VaXLeC4M2LnE7o6Gkk7Ik6QT7yB76vnZrkcYDbG4vXEv3ylKVcXJ37x4iVrk7wkeEVRey/svZtbsZlxu5VfXzoHdqcASNjuuOQgdJ5MH+mtuYKGWUsIQNCUhKUeY5g+Unc+6vTenaB6db8n7n/Q8z6n6gs/8LE/av6//B6zCRCYCkxt/eOyfgCSaI6+nlreIKfXon4mTTJd0kyrXtuSRsVA8q9Z4HpTO8xZq3Qtb8pUASQPPyHsG3vrrKPycVyoVxLFGbK3cWFdIGk8jf8AEz8qzTE8TF7i1y4HW/DqQkq/wQD8AT7qd45jTr69Kz4e8CQCdhG6vdMD3VR8z5iwzLGX7/MF+4T3EqOoDxLiU/HUPiatSpUJzJkxhd0zdYm+w2oKt7RQ1Ez96AVD4aB8amHguSpapXBcc/xH9gfGqh2YW1+1ldnEL9ki7vNV6+JmFrUVBJ4iFKI9ia0WxtWkOgOqSQl5KN9/Cgal1nm+S1IMnDmxpYJ0mW7cmP8AqWaNdX62EPPtrMK7x4EDqfAgfDeguL1wpLiUDvG21O/9bphI/wApqKuHm1PJt0qMF/T6BLaZj8RSfkbsQxJ5DqRbuoSSNFukjYgDdwgjcee1Qf8AFcXUlbxdTc27QcWlB+zVGvS2hKkiBPomfU06vLp1DZuHUai2w48Np8bhhPrxUYkm1bQGTtqG3OoIhKR/mM+6g5DKJIOZiban6zbP22kqAWUFwKITKiNMp46qMyOKbIxG6vCp+1sH1oKjKnDpKj1O9EdSh647sFOlqGUmB4lTKjt1J/A04VibDKUJU2FSJE8gSQOnpPvpbGpHyR/huarZEhLwKQB/boJHltqNJLvMxMn7S3eIBmO6JHXqn970UYFmxmVt3LKhwAl87b9QobV7uc2suS8m5On07yYPQidq8rVH0G7EXcceQpIvMKtSCOXGoJPPJpocQwNb5WvDnUHcKDbqtKt9zB9etTCMWxVsJbvLcqSqdloInpwablWEvud67g7IciAUSnbyIED300ZIWWOTRGJVgwKlM/WVqSsqCXIAJkQNhtV1yP2h5nwHLmI4ZgzqzYOvMNOIUylZR41uQNR7s65g60n+zA4FVlvC8DW93dtbPNuuBSgC4pSZAkxvxE/CpLLWYrTLWE4sh/BcRct75wW7rzYR3SjAV3ZdKfCYGqJPnt11YpR+VZhyxcXUjqSxxXAcQw1xtl3CzibdizbLdcwhtC2WXAlbIUpClhXiCY4Qoq2HAple5ubym87id3eW4GK4i45d3CGQVJCkjQBqkBR+4VgDbQlU7mso7JcpDN+OouMPvb7BWsKCXMRBs/t2ApZCW9jEuDV4iCIklJ4GtZW7N73MWa7bK11d2mJ4e8pTjjzKlkIsSG1QoDwNqUZAQDqmVTASSii5SUYnPytQT5H2SOwZztQxlnNecLE22AufbN4fb3RS6tew1LegqU2oSdey1lRMj76uqcHwCwwiwtsNt7Zpqzsm0tW1q2gIYt207JCEDYRvuZV60bDLK3w23RaWaCGWkBABJOw5BJmdql0ttSVnbSI9oH/813cUdkVH6OFmzyzOn0hjdMqWAkJgDoBER09n/bUFeNCAUyFHYdPYPmPhVleB0lAhKlDR8gPxVUJdganHIHhmNvVR/IU9FK4IfSZlQ58z+/OjtwJ1qkjp8jSi2pCkafERz5cj8hSaSSlInaY/zD/SlofscIUmDq3Igfp86brQhxSUmRrUB04JH6ilErhKdSQZDc7cmf38aK0PtEalpjWDB8gT5/4aFchfA4caAbhUeJoODf0V+dRV1ars1LB+6JCCOgGke7eam32x3LZWQNKVpE7CAdvwV86ZtutqcU3cwUxBBgz4wo/gatRUyWyjmlvDbk2uIKm2uAtl0ASFIMgmOsKkxG4muYvpI/R0xHJdxedoeQLQXmWSRd3CLchSrAqVJWAPvMnz3KdwqBvXRTuCsKIdtlQIUtaQOPtY599SOWb7ELJ5OF3LaLq0cWpCmXEhQW2VEOIIOxSoAmI5pc2GOeO2Rdp9RLTz3RMk+jvnZnE8ssOuuyrSkOIP8qhzvFWPOmfmLZ9SbJYnccdaQzt2BX/Zpe4lmns1ZW7l66KX3LFrUpy0CpUCgR4moJPmnj7orIbVjG8/481ZWGtFj3qWri7Ukd22fvaQZ8SiNgBO6hXmc2jyRn46PXYdbhyY/NZc8HvcwZ9xhGCWD5SVH7V1SSUtJJiYH3lbiEzufISR0nkfsztcuWws2d0oSn6y+oDWZ3UlRHKlHoJgR5U27IezXB8nsN3/APD22nXXEtodCQRrg6lqPUpEjf13rW3rO0Q2h5n7NBSVpCBulHQj+8o9fI13dDoI6Zbn+5nnPUfUZ6t7Y8RQFlafU0hC2gFqAJKfuiBsiPJI59aWXcFKlIAKhAkdfFwPark+lJFQs9aHFypAAUjkFZ3DfsHKifzqExDGn1OFOHpGtKtIdjwqcVysDnYbCuokci6H2KYjb2YKnbgJUCeY5A3V6gcD1qq3N7e4ipBaaKW51eIRB/lT+Zpx/Dg+s3WIOFaFJkhZ/wCWn/uV8aRxJxDY+rNJCVIbKCoDhat1n3CE/CjuroG2yMfw5aW9KQHHIhB5BO5njqfkKyfPa7jOWe8KyTb3Gqxw4pv8T07JV3caEERvqXpkeRkVqWPYqxgGA3ubrq7bSloG2YbJjvHSQEpE+ojbfY1TuxPK91fOYjm/FEld3il6wCpYkhnUdugIOkK26GlciyMaNNwrCEWTaG3ECG3m29xyltMqoLq6DVk48442gJt1OrWvwhJcXtJPHhpxitwhq0dZROojQANt3V+nkkAVV80ZZw/OuA3uX8ZRcKw7EtQeDD6m1FltOwCkkH723rNVhRlt99LDs+YzfeZZYwzG8UtLK7QHsXwix+u2bYQiYVoPewDPiShSes81cMuZo/3mSq9wlRcsVBVuy+UkFxxxWrWngxpPXpHnWZZp7Gcu3+csvsNYXhLtq1hTNktp+yC12OlZW24wsGW1EE6pBkAfdma1fAMOYwfC2GrZCEIt2n7jwgAk/cSSBtxHwrA8s8ufbH9se/z9f5Ot4MWn0u+fM59L6X3/AN/AtiDriGylA8C3hHX7NoceknamKFOpdZbMK7ogGN9077f9Z+VHuVqZcbaWfAwhKNieQNa59sD40WwahTbrgMF9pAMcqKtR+e/vrT2c9UC659XQEtrKigvlXWdCD85n50lYXbYYlQBnTEn+6B+VN711wWSStJ1Kt70kaTI8ZH501s7FdyhZSoju1lH5/nQG+D5jMZYxQIm0xa1JG2jWtMezYz0/cUZWF5vszKW1u9YQ6hzb2TPyqWRkFzuirDsy2rgAE94FNbjngnyFNbzKmfLCDbqS6kkxofSQR5wfF8q8esifB9FnikuWRz2MY5Zo1XmHqbCtyFsqSk7fpTM49hz7mu9whrvEpA1hAMp9/vqU7/NtjIv7RUpmZQoCT12j9mk3sYYuL0P3mEWz76PAFrhSxHSSCR7J6VbGVlE00HylZ4TjGNhnDEKQ+ph9cvvBDUd2QZUtWlI8W8wAAT0mk04xh2Ssxl3KuN3ty2pLbeIOtpHdOPIMlbOpKSpIVJRqSlSfMzJlsr4ThCkY3iNhYLZumbBakKL6tlOLQgpA1RGlSjAEAxVDeSlDi1gBMrOx223rTBr4MeSLlLk13J2bc62rSbyzfuXsDcLhFsu/bUp10mCpaEkrbMJI3I5nxAieu/o9YGm2yw7mp1tfeYq8pxjXqlCOVEaui1HVttEVyv8ARu7F77tTzRcW9ziZscFwdttWIutkKdWVbpabTuAVEGVxCfIkgV3grDrfAMOtMGwtgW9raththCdglGnSB5baB5V0tJhbe9nB9TzRj/Dj38k4WlJVpCNIIExtJKRNOQ4ZXqJE6jI8oV6Us+ypNt3qCdStZG3QKUBTZehKipSRuF6SdxwuZ+FdJHFsVcbJeUSYVqGny/tB/wBtQr0KSpOoqBABj1A/7ql0uINypKxJ1gcz/Mo1DO6EpTtAUEkSOkIP50SDG4SQ4snYEAwJnn/WkoMCUbgpnbyVTxbSEtuArSCRAI9n/wAaRSkuqOkwSY9uoSPwpB0JqQsKSEoJgjfbYBVIud4lggHbfrJ6mpB5qeUdZJO3kabPohKmyAPvDj/F+lQNkloK7JN0hvUCrWpIVvBTJHx1j21F3losrgbqKhuOu8T7yAffUtgvdKtrm0W/4kzCQOCPEPj4/hREEXLaS0DDyFEHqSkgk+n3D86sStFT4YytX3m0ELk6kbjmRMce0D9man8LNrevh5JQ2+04FJT0CiQQfXclJ9DTBqx+3UxE90+UqHA7tSenun4io7MeYMLyclL96F3NwpBS3ZND7R3baT/INR56FIjmigdmpu51wzBsvG5xp0NIZ+wU2kkqdmdISQJ1JUDxwBWIZgyC3jOJXuZ+zXEGcLv7od6/aLZCe9dBkKS7pJQoncnSJI9ppvb4xiGP47YYri6lqQUrX3CUqQWkqBOjRw55hY3MEQDtVuexSxtbZH+7q0OvOlKtQQQkN7mVcahsR4dxQl3wOrXyD2QdtiL1xvJ/aRbtYLjlqDaKUohLL6Gx4w2VGdalSDPMEgncDcUXs3BuVDSi3CSWRwHI+zb35IG58q5tz5lCzx2/tcwXFkBcPj6tfpbBLtxoEoK3Y0hvSR4p1KBAO9esO0jE8qWSjb36b5jSQwwolSpU4ErcSvpA2EhU+nW+uLE76N6xLF03Z0urjSNKRwVEnxGPMnYUgFJt7fWl5IuDrSD6n7yo8gNqzDAu2/KmYVs2Nw1c4fcDUoJumpQlQVoH2gkBI5kxyKsRzHhTzjzKcQS20IQlYUOACdvgT8KFi7a7LF37105IUUtykIEbwnZP78/ZUhaWi+++pgOQqVvPkakNpSJkn2+yTVVwXFWL+9FtY3PeurX3aAojaTpHT0J9lRHa/nu5ZdayHlm602lvc27OIvImbhSvEsEx5AT7Y4oXboZIqPajm20ztiWDZVy4+pzDrS4clZTBecQJK4ImJn4etbFhtoxlnCTh7KAgWqGwn/pbCU/M/KsT7JcERiWNHELppCre2tLkM+EiHC6mSPcr5VqGZcaUq9LK1BKU3LYXBkeBGsgUWSXdA4piJusSfbQlSUNOCIV97QkAf+5XyqSum1MWww9KyVEN2YUDB38Sz7Jqp5feXcX1v9YWpfeOhalERskFxQ29Ske6rFd37ndBzSUrDK3uDGtZ0pn3Gq3yMlREXyWu/VdtNpS84pbqlBIBKQNDY+fy91GuGwlDlqVg6e6sgpPUgSs/CDRW75v6zqVCkNPHY/0sp5/zGhW/qYS2kpQ8W9aiTuXnuJHokVXSXRY5SfZFvAuvOKa0qU4oqHtXx8kgU/tCywq1aQlCkqfec3V0bRpn4imliUu4iQ0lPdd+EJ4jSgT5eSfnQrfYYtUvLbBSiwuHUnUDBUo8bckEUAEffL+yR4ECLNMdSFOuTHO+wpPC32Utvl5ZQpTylR04FK3CIK0qSDoVask6v6EFZj1mKiGXwwygLSkahqgz+XspR1yfNZnG7G91ILyklJ31pmfhXnb26UoKsb8cj7Nt2J+Me2oHGsMZwl1Qt3nVwAPGR1ieAPOo9txSkpB4JG3TpXk/DG7R9F/UyaplsRj+YrF1Kli6WECd29QnjkSPn+NNlZnYWt24fw61U+SUOkshKjtEFXPWIM1CW1/dp0tofWlOmQkKMDnpThvFX3XW2Lhm3eS84EL1tiSCPMU6xpFcp/aLbhOJ4GzlPFb+xaNvepLFs2O/WoBBC1uKOrYiUtxMRvVIsWzimJW1iwhxxal/dQnUpXoAOSTAgdT604xl1Fo83a2du2w05brUtKJ8RC4BMnyJrTPog5XwnMHbnhCcUbW6jDrW4xRpGrwqfZRqaKh1CVwqPNKfKtOCFtR+znavNsi5fR2X2Fdm7XZ7lLDMsuW6FYvda8Sx55EH7ZQ8LaiNlBEJbB66CdprQrwLdaQpxagFKWhJ0/d1HUPfIUKjMlFTuJYs84olSXEJBnoAdvnUhj32OHJDcp0Jc07nYpSlYPxn416CEVBUjxeScss3KXbLQytT+FsBxRkogwIO6limFxKQEnYmSQU7fzfqKc4egIwW3G6tSUGSd93FfqaTuUQGlaiZ3g/9H61YysSQT9eXMadc79DCjzUZd94UNJmCkJA9IbQZ9lOkuuC6MKiQo7f4FU2WSu5QDx3kR6aEigOhtpUEqWVAQqTHp/5obVrvXkqI2RuY343H5060JII4kq4/wTRWoStQA5Sn5lQ/A0KDYK0oBDZkciTt0IA+QoHLQKSoqSJhQMdNj+tKrOtalqAJ1+X94frXg2lStRmdt59E1OiWRrbzmH4izdJSgjUA54h9yTq+X41M21qLN5LbCVaULUEDYwNzHxB266vjE3lq0+05qBEtK+7tHgH609un3bfAGC0uFvFlpS4BOlUpPp/IDMczTxFZHZkza1hzLuG5dCXcS7sBx0o+ztz3e0SCF7HpIE77iq9huB3D9qjE8RL11cOPoWt1zUonU+oHcnyipk4faoY+5qJIkq3J8De/zpVgTYKbQS2EXDWkp2I+3VRZE/ohcOwZxmxs3LVyAtx1wiNwEq5THBlM+2fWpgW6nLrdPdOJcUh1YVIbUob6QR90qhUdCVV7BHVzbEmShDy995If4PpUkiwYdzCzbLKihxhpcEgworkkT13PNRAbFcfu3bLLabVy3WHg8ptr7ULS2AgnSQDO25T0II5rLsXsLVm7bt2ILNs13YEyNR7te/xNaPnV5SG2RoQpKWDpSUiE+FwbRv06zWfNrN1jbKngFd87ble3MhKT8gKsb9tAh2SuVsrtLZXdONAFxkhJgeCXgPLiE7VZcSsUWzzyyr/nXiwmDGzYG2/SP3zU3g1nbItG2UtgJUwmY6/bGmOPKP1l9O0A33T+4P1NBAbbZl1/hyzfi7bcW2E26IieQwOs7mpV7vEvBtlIUV3qQnSj+ZLI9dtyPwqQumG2VuhKZ1MGZ6w0B+VPrO3aezC4l0ag3cNuCf6vsx+VRDtl1ylhbWWsmt6J2S82tenzd5/flULijq7q4fQpxWt+4fWCRwFKQ3VhzQ4q3y/dIahICVx6fbD9aqbjjir5lPeEArSSNut0Z/ACmfCEjzySlvdCytxcoOkuW1y6IB2+0CQdqsi3C+0UJXGm4YYA1fytjUapd0+8nAmlFxRIsbobk/8ArCpmyuHi0hZcVKsSeB38mD+gqplgy75a7d4JUSvuSkqiN3Xv0TS4uXFXa3AggquXFpB/ugNoH+Yioy1CnLBLy3VlQbw8xO26iTt7zSeGkuv20mCVolXXd11R59Uik7GbJ+0U1atNXIdRCGLq4VPoNIJI22AHzpBYLtqG+8aJXY2rAVwSXFEn4gU0F04lnQhKE6cHecBA3kuqB/Cn2kG5WngIdCBG2zdvKfhJoAsY4qplCVuJVu6p9+Epg6SA0B7efj8YK8vGGu5DgElvUPGBsVGOfSn95ukt9EtWsbcSFKPzAqGxZavrDaQYCWGgNh/SD+dEl1wf/9k=',NULL,NULL,NULL,'2018-08-11 20:03:43',NULL,'HyXgUYf4++2UiBAeSz/xc7uG+x6kqOG3T9ZK0XN1tik=','9ySfQS0kp0+XOH0u8hCqV2w+GvWtDFA7GHWDUuMCfzY=','/twUQlhnAsjCY2fFE0ae20FcUbZZVyImgsjkchFNn0s=',NULL,'915106840327','网工二班','2018级','人工智能','915106840327','刘祥德',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa872007f8',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840116','何睦',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872007f9',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840118','胡波',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872007fa',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840125','冒立煊',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872007fb',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840132','王余阳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872007fc',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840133','魏学',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872007fd',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840306','刘鑫容',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872007fe',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840307','邱丽丽',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200800',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840701','崔婉莹',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200801',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840707','史迪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200802',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840304','刘婷珺',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200803',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840308','孙颜洁',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200804',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840330','潘少军',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200805',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840719','杜稳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200806',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840725','林国森',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200807',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840346','朱鹏',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87200808',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840722','胡廉荣',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8720080a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','9151010E0233','温光照',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8720080b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840135','肖高飞',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721080c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840139','俞轩',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721080d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840146','郑坤',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721080e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840219','黄杰华',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721080f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840222','李志良',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210810',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840316','邓为',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210811',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840324','李岚坤',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210812',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840709','许婷',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210813',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840733','任建',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210814',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840736','王远',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210815',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840302','金钰滢',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210816',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840211','邓四云',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210817',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840220','惠书垚',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210818',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840104','任绍林',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210819',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840138','余明芝',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721081a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915113590103','柳雪妍',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721081b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840215','顾颖聪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721081c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840301','方芳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721081d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840311','张萌',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721081e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915000720163','周颉尧',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8721081f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840702','樊钊辰  ',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210820',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840718','邓翔宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210821',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840724','李志成',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210822',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840726','林艺辉',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210823',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840734','石俞军',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210824',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840735','王昊',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210825',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915113590119','马宸阳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210826',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840137','薛铮',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210827',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840322','孔卓',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87210828',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840339','杨赖靖犇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220829',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840739','张浩',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722082a',1,NULL,NULL,NULL,NULL,NULL,NULL,'Wv1Hu1xBAjSYlrJ6lsi42iL88lNj60HzgtLNg6aJDvs=','c+udNmpy+8JNlPImheZEETomo6TYDkPpjX4UXtbiqqw=',NULL,NULL,'测试者3b969','9151068402','2015级','软件工程','915106840228','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa8722082b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840244','郑智健',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722082c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840136','许志塨',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722082d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840144','张宇轩',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722082e',1,'',NULL,NULL,NULL,'2018-08-11 17:24:49',NULL,'HJuYVy5wJXu3O+pBG7Zow0Npd34izZCl+yEclcfAiJA=','dO4CFxp8HNsApJg8EVf18i8WCf9yslweFIvWUUyYdoY=','I2+RGtnguF3OlpDWOjsYX16bmbCev+Uuz02JtYLPwRE=',NULL,'915106840329','网工一班','2018级','人工智能','915106840329','915106840329',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa8722082f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840128','苏晓博',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220830',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915000720211','李思雨',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220831',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065502',' 2015级','软件工程','915106840236','谢有鑫',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220833',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840114','韩小豪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220834',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840121','刘志强',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220835',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840126','宁伟凯',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220836',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840127','宋林鹏',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220837',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840140','袁梦雷',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220838',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840142','张恩来',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220839',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840145','张雨辰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722083a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','914106840504','孙玥',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722083c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840204','王慧田',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722083d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840212','付聪聪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722083e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840238','袁新航',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8722083f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840319','高天琛',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87220840',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840335','王祥翔',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230841',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840342','詹明昊',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230842',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840344','张书豪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230843',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915107830108','陈浩（转专业）',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230844',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840401','陈清梅',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230845',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840417','韩飞宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230846',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840420','花镇清',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230847',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840424','李鹏飞',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230848',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840425','李庆贺',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230849',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840426','李文锋',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8723084a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840444','周浩',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8723084b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','`914106840516','崔健铭',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8723084c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','`9151010F0305','叶佳媛',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8723084e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','`915106840547','丁盼云',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8723084f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840619','高玉楠',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230850',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840620','何星辰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230851',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840629','刘桦铭',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230852',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840641','周钰棣',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230853',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840642','周志杰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230854',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840723','解牧龙',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230855',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840742','张智城',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230856',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840743','赵治中',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230857',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840744','周灵智',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230858',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915106840745','邹童玺',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87230859',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151069501',' 2015级','人工智能','915113250206','郭祉祺',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724085a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840101','曹靓',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724085c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840103','马琳骅',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724085d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840105','田鑫',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724085e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840106','闫庆然',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724085f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840108','曹志远',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240860',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840110','丁钦峻',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240861',1,NULL,NULL,NULL,NULL,NULL,NULL,'9qBnRJrQss3irCBWUVgxC8Zaw2i2rmF2yGDeMMLqpdg=','5kzXGS7yKTGDBw2myupbVIMerUvSXoHfYAshvPf52Nw=',NULL,NULL,'测试者d48c4','9151068402','2015级','软件工程','915106840111','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa87240862',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840115','何俊杰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240863',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840117','何天',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240864',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840131','王衍钦',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240865',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840134','魏煜华',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240866',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840141','张定邦',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240867',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840143','张豪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240868',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','9151160D0502','李瑞敏',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240869',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840202','苗苗',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724086a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840203','田申申',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724086b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840207','张雅楠',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724086d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840217','何潇宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724086e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840218','侯松林',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8724086f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840223','李智',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240870',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840229','谭泽亚',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240871',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840230','王冠舜',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240872',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840303','刘偌汐',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87240873',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840305','刘文昕',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250874',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840313','艾朕杰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250875',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840314','巴森',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250876',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840315','陈力',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250877',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840317','范俊涵',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250878',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840318','范文强',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250879',1,'',NULL,NULL,NULL,'2018-08-08 17:03:27',NULL,'LbTg9+RyzOlMvjmK6n3DTJjFF99tQCmiA6eswW51Kds=','xCRcrtqjycAPuK1WblEmBdyd2E/HdVtPZoad7o4v0ME=','4qW40JGKoDgCEXy/K4k1RnKSOPOvePoxwgOIHtbw3Ek=',NULL,'915106840325','智能二班','2018级','人工智能','915106840325','915106840325',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa8725087a',1,'',NULL,NULL,NULL,'2018-08-08 16:54:35',NULL,'KOHszW8yzOWuhVBGm2PsOFxBmHFenrfNXSiFRpt7pnE=','8MLTTDPSvUZP71lS34C0af11hOm2Z5RE2ktl/0VbnRs=','VKq/otzG7mD3HxeXjPyf1yJsEf3Np0akdYAjnCe5SVQ=',NULL,'915106840326','软工二班','2018级','软件工程','915106840326','刘祥德',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa8725087b',1,'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAMCAgICAgMCAgIDAwMDBAYEBAQEBAgGBgUGCQgKCgkICQkKDA8MCgsOCwkJDRENDg8QEBEQCgwSExIQEw8QEBD/2wBDAQMDAwQDBAgEBAgQCwkLEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBD/wAARCAEsASwDASIAAhEBAxEB/8QAHgAAAAcBAQEBAAAAAAAAAAAAAgMEBQYHCAEACQr/xABIEAACAQMCBAMGAwYDBgUCBwABAgMABBEFIQYSMUEHE1EiYXGBkaEUMrEIFULB0fAjYuEkM1JykvEJFoKiskPCFzRTY4PS4v/EABsBAAIDAQEBAAAAAAAAAAAAAAECAAMEBQYH/8QALBEAAgIBBAICAgEEAgMAAAAAAAECEQMEEiExE0EFUSJhMhQjcbGBoZHB0f/aAAwDAQACEQMRAD8A36kYIwa8IuQ5oyLfbtXXGBmhRzzokXBGaC68wzRRIVs5JFGo+RuKG77DVgU9k7g0ehBOKJ5d+tHRjBG9RMiVBgGD1ruM14DNDAGcVBgPKB2rw37YowqcUALk0yAwSqeXOelGxZoSqoGPdQolHTsKIAYXHaiLu9gs4mmnkCIvUnpSlyFTNQm/cavq7wXg5rWIFQGxyjfGcd80APgc7XjXQdQna2sdYtJZF2KJKrN9Bv2NONvdcz8qsGPuNQHiLhp4c3VtF+LtCMMofkZR/l5SD9D/AKNFqdS02NbnQdejliVVLQXrMsq+4OrBumd2Vu2+KnvkFlvtdGHBkKgH0X/Wi7i9RYmkyqoOrMcDHzqiOPf2hOGuCtP87i3UbywuVyVtJYQ/nHBxySIpXfqMnPu2rJvil+2pxvxZbyaNwwz6RpwPKssch/Euu67ntnIO3oRvmlv6GSbPoJeeJPD8cv4WDV7MyhuQnzMqpGcgnGB0Od+1Vhxz+07wZwtfx2E+u2txNIQAlupkO+cb5x29f5Z+Xmr+JOt3F0/n6pc3DM2WZ52kJxjf2ids9KQvxFe3LmW4lLtJkMWbHX1Gwz1+9NtkyOk+Tbvi1+2DNcWr2/DOp3LEoAqeQF3P/FzAHA9x6/DFZF418UuLuLb9m1DWriRmJxGjhI4xnoB0z8u3rUWuddllwqxI5BCoWOQMDbY+/pTVLcRWytcXx5PYLIOjEY2x/Y+VMsfNsm9JcDzqeuXbxsqzg8/tEtj2QBscD+9qZxfXAHIZmO/MzHqTvjfv2pmvNXWd2e2V0iz+Vu4Gw3yM0RHOJVIVjzbsAWzn3D6Z3x1p+AN8D9A7sefKn15lyT29PcP5UJ7qeI+ZFKNjjlIBxnGcfU/emIOmByEkdvQemKUW96sP/wCYGzYVRsMUasW2iTaVrl7ZyHy7k2yu24VSoboeoG+/L32696sTQPF/ijhmyjtrO8vWiUgN+Eui+PZA3hfKt3x+XqPSqbJDDnikACkZAIx7gc7dh2pysNUVGS2uF3xgtn+HJPXqMNjftgbGkeNWPGTo0xwb+0nZHUIjcalpllzqplkudJaMXDjJPmGIlE3251Qnrn1rV/h141Wtz5Mmh3ccqEhTZrdI/mtt7Vu+eViQc+WSMjBXBya+WVyJNPJaRFmgIByW5SOvQ5x6dB/o66RrNzp0on0TUpYV2BAnKlSDke0Nx6+44PUAhXjrmI932fcPhviWz1uONo25JWGeRgRn1xn9OoqSL7utfMzwN/bB4m0DUbPSvECRL2zXCvcvk3AiBxklciQjIIOAxAIJY4r6LcJcUaXxTo1rrOj30d3a3Kc8cqNkH1B9CDkEdQetIuRGmiRLIcb0PzTjp86DAgkzk79q706jPY0xEHIT1oZB6+tFIwG1HAg1AHAtcxihcwHeuc3vxUIQJJCpORmhPzSD0HvoCYDdOtHHptQXIEFKgXYmhhRXcA10LmhtGsDymhx7GhBSaHHHuDihtobsGCSKFzDYjcVzkx768F23JqBoGG23NcDDPWuiPvRTAgnajZGhUv5M0JM81J4JW/IemKUq4xnNHsUFcEiL2fSoBxPr1twdeXGsXyD8ERzZzjl236DNPnGXF1hwxpc17ezKiRIXYscAKBvk181/2lv2l7rjLUZ9K0BzFaoxQSFcuW5sHlYHY5A9oduhJOTL9IFbuS6PFv8Aa70fUHuNM4R1e4scBlNxbyBZCf8AKWaMHbG4ONxvWY9a/aE8QjNJFo/H2vr09qa+Zi22CQS7Fc9etU+2q3Vw5mnBdmP/ANT2jg/Hc9KStcyCbzndxzHGSc423I3plC+xrS4RKNV4m1riO9bUNf1i51K6mbmea5lMrk4OBkk46fao3q2o5Um2XY9cjqcjf7fGihcgRZznbJz2/vFM927hW9tVDZ5cH3YOOnr+lWxio8CykwcUrFmcykljk74zj+/+1LY5Xf2dubJ2A6jP8gP1pugYE8wzkHYZ7H+lKUy/KeU4Q/xf0xvRKUxUs6QLmVc+7OB8cim29uHvGwJ1YAHlHN1xjqaSalfliFTmwckZPQjGKbWwD5gOG9/6/WguRvQtkgdshTn2iCBnB3yf5/eipYZowFBXJyCRn9fpRUN3cw5APs4yFI2/v+tONvewTR8kiIGxgKR+YDp3933FQnQjhvckK5bmyBkjOSPX0/Wl8fLKAyOC+45c45hjfcfypFd2ZT2415oz0bBzt8s9/vRFtMYgYSCSB06Y6VEAeYpJYpVPPsNicnP97fel0YkuDzxgsqe1yjB7/Wmu2u4pFZZkLc7bOMAE4yRv/eD9FDO1nMsqt7BY4OenbFT0FMck1OaMyJJhcsOYMhPN1z8uvvpHJFEkwmOI5F28xdjkkYz+lHTMZ4zMvI4YZJx1xvvRMzOkYnT2jheYDoAeuc0Rt3JNOGuLLWKzOkawkmCyi3uIdjEQTs3cqD0wDjfbetqfsT+M0nC+uW3h/rl4smn6weW2mEwKR3BOw5eoDjGMdyBjsPnvEDJHnYqRjlzvg7/1qzfDXiS5sdTs5oruWGe2uFkgulYK6NnbH+bqQe/eqpxrlFkalwfcK0kGAwYYIpQzx9QwDVU/hX4nrxrwjY6pBFH5xiC3AJJIkGxB3+NTGTV7xt1k5QfRRVW9ehaaJBLOit0IPuFeN4I19rAJ9Tio3+Mnl/PM7fOvM7dTml3hofH1RE/NNGv3rg1i2xvOc98Rmo/K3MMUWrbdaHkfom0CiAHLde1DG9e2GK70NWrgU4MDrQwfSgYG1CT0okDEG+TRyD2gKIBwaOQ+tQawxgMZrioaESCtdU757GkYyYIDC4otkBOKNHrXWwRsKCZGJjGF3Boqaby42ckKFBJ+Ao6RsA71TP7RvjppPhJwPPO7JPqd0Gjs7YNhpDykn4bAnP8AUZbrkHfBmL9t/wAY7tr5uFra7UQoXDxpI3ttyrscYAwGHU9CcDNYcvtQk1Cfmd/LIOORRhQemf51I+PeLtQ4u1+74h1KWSa7uZnkcuxIByDjJJOMAdc1CkmfmLovte0NiDucbfbtVkI7eWCbrhC1Z08sYI5QoAPr/wB8n60T56sQuw+Q3omSTAZeboe/rj+/qaSW0wkdmJYZYgDJO3bHpVpUu6Q6yyskPMM5CjIHb0/Wmydg8gO55RgrnbH2x1pdK6/h3OxLAY6AEZFJrOB538wq2F2Hsg52GM+nU0eh5ch9tCqqGb2iVBG3QHvjsa5fTeVCEGAMY5Tvk7nH9TShyqR8wYknJ6Yx16UiuEllm5AWwMdDjJz09/8Ar8KVuhVG3Q0AI4GTnAGx2+Qox4V2dU7DAGx7dKfV0AuyJFEXc9QB0Gev+tOLcFzGAhIpTgZxyn/t/wB6R5Io0rTzfohMkcqAMsfMNwcdftXVUk+0pxtkgEHOT9P9adNR0m5s2KSQHAOwODzf2OlNqq0TKVXGTvnp9/8AtTJplEoOLpiq2nc/4Eiqyt0zv/2NJp7Vo3ZoGDY3GB+Yden9aMi8wjmKnJI9oDcHJ9Pr2o+Jlb2W2BAztsp/pvTIWkJoJANiqhTg59P67fanixdiptpnwOXCZGRnl7Y92fpTVNEIX6nB64/hI649eh+/pSqzYIORiBy79e/69fSpQqY62zzWxOGUowGBgYI2GPhjb6UIrgcgACOCMLtud/1o6BfOw8hyTgkgDt139e+9e5VWcR8wKndcHpn1+v3FQuS4E9pG6yGKX2Q4wSegIPX3ZwPqalHDifhJBIzqHLqEbYrn3nfP5h86ZbuCKIxSsuOcb4HcHfPxGPrUgitx5McqTGWZUG3KNjvy7depz/6T0oNcESo+h37IXGFtrelS28DkYIV43ALCQKuWBHVW2691bvmtSAcyg187f2SuJotE42stNkuWjGozF15zhGHl45Ou3t+WRjfJ719EraVZoFdVxkdKxuDXA0uwSbGjJWCrnPUUKKBpB7KsT7hmh/uy9fdbd8H1GP1oUwCTBPQ0WVJJzTvHpFyBuoX4mjl0WQDd0zQUJEsZVYOfhQm99EQSIASSK608eTlvpVti0GZztmhr2pK1zGoywwPftRb6lCi8xYY+Of0oqRKHEY7/AK0MMBTK+uQjpzHA7D+tFrrbMfYib5t/pQ3oNEjikUHBHWhtIgJOwHxqMPqlww9kAH5mjIrydlw8n0GKW0wj/wCemPzZx6UB75EHtHAHckUzmYsN3J+Jom4clCOtSyAeJ+LbDQ9NuL64mUJEhY4J393SvlZ+0R4vXPivx3eX80qnTrB2jtkQ9QBk743ztv2UDuDWvv2zuOrrhHwxu7e0uWhuNUBtkZHKtg4Bwe2xP06183NUlS00xI0n5nkPO/KoC+vv6n7U0PzfPoZUo37GfUdSU3LxklF/hyc4IJ23x6D+xSK3bLHA679M+nb5D60lv3dwWXGMg4YZIPTHX3daHZy8wIZmOwUHbbPx9MfQ1oKrcmGXBPtcxyD8O3/f7Unt7gI7OxIPbtjpRlywVQWPs8pAx7/9cfaktrEJp1AOxO45etMhGuR9R42GFfAACg5/v0P0pZAqYWLAVCDtnAAx/pRNvCgUnmfruAOwBpwgtvNPKygNKctzY6en/aj/AJLEvYjaINzNJhkReZs9OWlWiabJqE7omA4VnUdfaG/9/KlOqWy2ULGQEu3XA9nl2299WR4W8PQvpiajcwhnkD4LL+XK46HqQCfr0rPqMixxNWkw+bJ/gS8EcFXOu6kCkJyhTmTOTljj6A7/AAq8IfCHFuXmtm8xQAWf+LGcmueDGgNNqs0sdvHyiTB75x0H2H3rSdtw7zWqB4enurjZ9Q26R6TT6WMY3IyFxn4Opc2Upgt+RwOoj6jtnB+49TWb+KuFbvhzUWs7qAoGOEDY39OmxH+tfTPVOGl5X9gMPeM/rWf/AB78OIL/AElr1LYLOmRz4KnbLAH7/qelPpdU4y2y6E12hhlhuiuUYumiNqBhs9j1Xv8AfpRRjDIWBJbBX1wMdfrmpbqOii4t8mPEoB9kAb9enr8vd07RXyniaWB8AjHXvjG5HrXZhNSPNZsLxv8AQZLyz2pwFLKPa9fjj5UXagNK0RYhiMcv0xnPXff40psG5ZCpbJZdiCO2/T35NFzW/wCHukbBUZI6bDON8fIdKsszSVdDpp00YQo5AIYA5HfJAP1z8aWyoZHODgsvOpZt853Hx2+9IYgfNjuQpQSqOc579Bn++1PcUbSwRzKMMPYOBgY6ZH8/hiiWQVqhZ+647jSpmWNCYiNuXfB6/IdaVyWN+mkWtyqcwkWP2gMe0dhk9P6e7oVNlpk09k5jkZi0fMVzgbH2fj96drWaI6UNMvMGSCRORicHHLgn7+/vShlLknvgtHfL40cHW1spaObU7YPyPykKXAbb3ZJxjBr6+6fZ28cEflwRL7A3VAO1fJn9mTW7LTvHPhW+v15oVvfLPMfYLSxmNQf/AORlI7EqK+ttpzSRhuXAIBBz1GKqa5FYYUJ/Kc10QlhuABRiA9xQloAAJbxjcjJowQp6ChDrQsHscVCFInUrj+FgMDsKIm1C4kHK0r9fWgBQ8eQcnFFEEnf9KytsZfsVQS7Lufa6ml35l3ximq1WRnxyZHbG9O8VtcugUQv9KkW2M1QiLY3ztRkJGT76GNF1GR+cQAL25mFKoNEulALyRA/OptdkVBaKOo7UbzADGTS2LSMH2ps79lpVHotu27NIfmKsUWDsbVJx161zJKnIqQwaRZoOZ4M/FiaNXTrcAkW8Yz/lptrIfO//AMRXV54pNA0mNHKMDLgdOYb9O/UD35rDGuTSeTGGXGAVPfbGPT319L//ABGvD+61fgex4usIEzo0mZmCDmEZG+/p369q+ZmsMXi9SDkZY59xq3Gq4I+k0Nt2reSWPRm+ORgH+RomMlHXJxnb5mlUzKynG46dc46HakcpfJZVG2/5fv8AarSp9h92DyAAYBOxx0GT8uv996XaPbrHEZWUEtsCR780ikPmkYJODkk9fjTnbMkfLCEA5RzE43JO36CimH3Yp84RMIlOFXBYDc9Kf7S5isYVupRmRvaUDYE56bdsEfSow5aWQ8jKOVsfT+/tSi2hm1C6S1iDkMcbdPj9f1oSklyyyEXJ0h+srC84k1KONcYZsHc+yM7npv8ACtBaPax6Jo1vZwRBFVBGv+Udd/fUL8OOEI7HkvbtQZmGQCc81S3XjemVLeBU5WARVH5uY9Tv36fCuNq9R5ZUukem0Ok8MbfbLn8C9MEsscnlKVkZnBVsbeyP/trTlrpqrbrzAZIxtVCeBGktb28Wf/oIsO/fYZPx3rRNuHMKqCMYrnt22dOcdqSIrrGnBZDsB6CoL4h8KR6hw9K4iJaNhJ064yD+tWhq9q49oHOelMOqWUl5pM9sThniZR8xQXDDF8Hzy1nhAWl/qFgyYNvcOgZcbBgCP7P/AHpri3S5LLUm5wCrAqrAcu/b4fD3e+tW8Y6FL/5zv4XEY88JNk7c3Zunvz/rVOeKvDDw5drYsqtnmwvKfXbr9u9dfBm2tWcbVaXfFpIqCzXEqsynZlfY4xvjPv6CnbXbF2gjfLZ5Su2R7+vc/wBaZrOJ452jJwQWQ9856YqWXsDHT47h4Mr5ayBlUsRsMjI9cDb1rppnn9r6Yz2rIAyeWWD+3kdNxv7/AK1JtMLywRxuxK8hVSQMZG+c/XNRxI1jAVWJVeUEEjI27+/r9RUx0a2lh0kXSojsk69Rlgud8Z9xP3ogjElWmWq29uCwPngcgIXqMjp261GNW1D8DxNa2l9D/gNOiMRIy7ZOCcbjfl+9KJ9VgNgzwuiiOULhjgFSDv8AaoZxbdzy3sF+CVy6klTnG+/fA6d6BNrXJdnBF1BpvHugXdqQkq3tvJH0bEnmKUxg52IB99fZXRZzPYwS4xzxqftXxf8ABK0k438VNB0UxyNBLfqpKdlUgJ7iMkA9dgenb7O8PQmLS7WNhgpEoPxAqprlgfoc+u+9dUZrwG+1C6CgKdHwr2SaFXsZ7VCdlXQ6LZRbGDJ/5iaUDTrVSOW2jGP8opUvtHNCbptS7UMggQhfyrj4dKEqDOd6OUg9SK7y5O3bvQ2+xgPlgjavCMYxQwuO4roU4zRRKOCMA9KVxkKAcUSFA3zvQ1PrUsAsUq6g42xXCyjYAn4UFFJUZyKHgAYHeigkX424S0rjfRLzh3WY0e0vY2ikVlB2I64Ox+dfHH9pvwzsvCnxO1fgywmZ7SI+Zb5J5lRmOBuoG2CBj719s51BXIxmvmH/AOJFwFc6b4hafxelu4t9Ria3eT+EsMsBv079P9aZcMF8NGJ3ITPXHbPzpK0eJTjADLjPbP8Af60qnB5yfU8w3HTYf38aSM6AEdxgAb/SrSpINtvaYI2faGBj6Z+n1pVLMI5jyg7vsPUff3DtSSydln8v8wAyPl0/nQ3bLlmLEDoNs+7+VQsXIvhHOiA9dtj9O9T/AIJ0lXlXMWTtk527dT8jUJ0GMXdyqP02GMdQMk/yq2OF7UQEIFdt8k9vl61z9ZNpUjs/HYknuZYGlqumwCRkZ25crjcD4U/8HcO6hxLrUV3PGsUaMDy53AOM/P3/AGpNw7o8V0ViyxYEMfaJ6dfrV7eH/C0dqqFYF3AOTXGySa6PSYoJLcyzfD/hyDTdMiigXHLv671YMEJQBSBtTRw5EIrdUwMAVJre3Mv5RmljGxW7fI1ahAzx5phkBLMnLse/qanUulyOMBR0qP6tpDREuEwRvT01yLaRj/xo0eXRuNra7lULDK7QB87nmyy9Nu+M1XHHukNeaeZEQuAu+wYfHBFai8auFRxBoxuYYQbm1IZcjpg5B9/w27VTEdhb6xpjeUgEi8ySJzDKspwVPvBq9O+SvbzyYn1qzbT9aaHoGxt7wdh9vvU1guLC70W2KE+Y0BilyTvuR36fD4fGn7xh4AuYZJNTtIV5uZg/KM8u+xP2/vJqB6FKb215EB54zykco/Nnods9j36jpXawZFkjwec1eF4cnPTE5iZLpoZxkkAYz/Eenyxjt3HvqR4mTRmQO26Z5hnBIOM/Ag/bO9J72x85Y3EDBwBspGSPQ+mATiluiyR30TRpAXkTeVQ5xvnf4Hfp0xV92YnwR0Tu0MtozHDqAo6EMDv9sivJavqlmkJDM0UqshAyclh09wwd/wCtOOo6A1zdR3GnuVfI5kzv33BB67joP51JuHYrW1mtv3lCvmtynLdSR6+m4pZOiL8jQ37B/hhJqPilp3El5aM0Vgk0iPkL7ahFU47j/EbB9Qa+pVrD5MYG3y2rN37GnCel6V4f6drMawm8v4PNkYDdgzMw2/5WUZ/y1pZXAGM0llcv5HcYr3xroINByBQFoNFCC7UUHHrRocdqKYeyu1z26UMEHvRY2r3McbCgBM8x5T8aNikJwuaJIY9RiuoPtUXJBURjc7ZoQYADHz2oCsxjAIruKDRYjrHnPTHwoyMYFFdOooaE9qiRGLYmBXHUihUnhbDCjVPx2NEUGwyD8Kzz+2d4Ww+Ing5q5ig8y/06M3NvtvldyAe3QZ9wNaGJ2pFqVlBf2stpcxLJDMpR0YZBBGCCO9Qh+f69ga3mdfKYcrEEFcY7Y+WKa7iM8wcYUb59/wDeK1L+2l+zvqHhHx1c6/osTfuDW5muYiTny5SSXUk5wO/TG4rL9xGyAZBPNtj099WIlIT2r8t0qk8rZ2z8P7+1LUVTuG5l2B2xt3zv7qQRRO9xyoPaY9R1Jx7qfIbG5trR5ZVKqDg5zgD0+/3qN0PCNsd+E7dXvCW2CkZAOM9RuR/pVxaBb/h4udgkajfPqfSqv4KtohL5jSFST/H0Hfv65qz5rkSxLaWnKCowSDnJ91crUvdM9Bo0o40WZwbrFktwjyug5GA3xk+grQXCnFuheQpe7iHLt+asj6DwbxDqIT92WlxPIepAAHv71LLPw48V2VVuI9Qs4xk58wRYPbBUH3b4NZHCJt8k+kjZ2i8Z6GSFjvY8HbY57VY2garY3KKEmBz0yMViDhbw540tZlkfW7iUqc8skgkHT3gEfpV6cB22uaRyLdSs35fbDEZ9dugocR6LEm+zS8VtFJGGGDmkd/pcNwhR1Hzpr0HXXa3RJXLH1p3a9WXvmm4EVsrTi3hKRVkaGMOjghlYZDDuCO4xWaePuCNQ4dvp+IeHrTz4z7Vzacg5mA7qevNjoe4GDjZjtm6ijuIirLkGoZrPBVjqTMJIV36++kap2i2Mq4kYC4m1jgviWyntLXU1tb0qfMs7tDDIDv2fGcEY2rOXEWg32g6udY0lRKvMSyIfZZc+n09dia+nHGv7NPAHFrNJreixyS4OJUYxyAn/ADKQf7HoKq7Vv2S/D6xfNra3rAHPI93I3yByCPrWnDqFh5Zh1Wm/qXSMX6HrOn6qGh5pIbqQEyW7SAgtsPZ5gB2/vrR8+iKsgvQGtnjGGJ6jqTvk4z/MdOtaqvP2NuFdYjZtFjmsbjGEk53l3675Ofv1prvP2Q/EKxcQ2OpWtyh6NLI6co+GDmt0NZjas5s/j8kXwkzOltaTR8t1ClyckKWUMQxzjIHX556Z+Jm/A3DbcR65ZaWW8+W5flMUjHHKMs2/rgHpvvj31oPwm/Y016HWX1Xje4T8Kn+5gtpSQzFdyxIG2+2PT30t8L/BuDRPHa80++hVLbSW/Eq8jjnbmyF5dsZz7+maktRD0CGim3+zcPBWk2elaHZ2tnbpEsMSoAi4UADAA92BUkZnxjO9JdKgZIEDHJ5R7vtS/wAv3Vf2cpqnQXE0oOMbe+hMXPUmjEQde9DZcjGKhAnmPqaGGlxtRiQgb0aFA7CoQrsMD1o6NOjHHuFJlLKd1o5ZQVx3pVL7BQZIFIz3otT8K8Wz1zQdx3qN/RKFMR3yx2oXKc47UVE2etKAQTUYyOY7UIbDFeBB+VdAOT76KIwaZJ2o1G65oMQ+FGKN/jRACxsDXDgjejCvsnvRTZxtUIQTxb8PdH8SeDtR4Y1m1WaG7hKJkbq5GARscbn9fWvjX45eEOt+EfGN1w5rEOVVy0LKDh48nB33yMDNfYnxZ46vOD9LX8DNFDczghZpACE674O3Y1gj9qKHi7j7S0v9bNrqjWvM63KW6xTKNzv5eEcY2/Lnoc7VRPVwxz8b7Ohg+OzZsXmS/EzV4F8KWPEXG8KX0ayxRqXIbovy/wC2NvhVu+M/hlZ6ekWo6bD5ccoLScqAb5UHp65+/eoP4DJ+7fEGGMqcuCntrjv7xtsO/rWseItEt9d0hrO6Qe2MgncA4wD7+vSsupzOOSzoaTTqeLazKnDeg2iwqbZiXIxtj+xVz+G/AltJcJcXdvLIeoyflTbY8DxaVqHleQqlemTn44z2+ferI0e8i0iBQGxy7mseTNudo6WDTuPDLV4a0XSNOjjHkRqy+o3B7VNorSO9hCooZDt+XtVFQcewWj+bLOIkB3cjJ69qJf8Aau4P4dma0Th/W9YkU4LJIsadcbEn+/hVMVLI+EW5XHEuWXtLwbJn8RDEwPoBiuR21zaEB0Ps9d6ifhr+0pp3GVzDZz+F/G2ki5t2ura5KLcW08AblMiHmHOAdjyBjVqC+0nXITPYzrIRsdipB9CDuKeWBxV9CQ1Ck64Yh07WHiAySMe+pLp2siQgeZk+81Cb9RaMSRgHpSbSdcX8csPm7A1SpuLpl6gpK4lyWrmdAwom8zGpJGKXcOJFPYJJ1yPpXNatGWJmRe3atHNFBB9a1RLeN3dgOUZ3qjPEXxu4S4PkZtZ1EqyEYhhXnlIPoo77dOuKsnxDe6ttPlaEEM2w91YZ8auCOJbLX/3wQqGaRmWS4y0brgkYI26HpkdDQxx8kqk6RMj8cN0VbNL+Ev7QOj+JPEEvC3D/AAZfSX/lebGmqP5HnAfmC4DAEDlOGxsds4NWbqfEl3wrcxDjHgPXeHIZWCx3ka/ibQknG7xflB7cyj+lS/sRXHiTrltYaHLHpcnD3Dk1zMks+m/4qyzsSwhn5tzzE822QMDuK2nxlNaX2knR5ljuRIhWRGQMrDGCCOnc10Z4MUcdpnIx6jNPPtkuP0QvhjVY7uFPJmjmR91ZDsR60xjgvz/Gm31cR8sctkJXKj8xHsjPzzT3wvw5Z6LIUs7ZYUzkIvQfD0qYWdmo1yG8AGRb+X0/zf8A+qy4ovI1GRtzTWCLnD6ZKLeMKgHLjAoxh6V6IeyPWhEYrsHlXyz0SjJJoZGK4nehdTUBRwHGBQs1wj0FeOR0qIhXYbmGK4AM7YoxUCrjFAKe1VdMNghvjahgCgrjIzQwcHY0UiBka4O3pQ8n13FBjIz1oTdNqZoKOZI2FC5z1xigjYgkUJhn4UEEPikBOCRRoJzkdqRbg5G1HJN0z1ogoXqcL1zRZK96CkgxjIopnHMQaNgKP/af04z6BZXuSVjmAb3bMN/mwrP+m6RDd6U0c8fmoGYGNtxjocf0rXviloS8S8IX1gkfPIql09c+77Vlm1ZtHs7pblHHlM2cjB6D71wvkMbjn3+mj3HweZZNC8XtP/Znvivg204V8U9J1DS1SK3vHLMcAADBGM9O/wDfe/GjZrVRsTyjf31UXHmqz63xHp93HbJHb29ysYwDzEFh3z6Z+tXBZyCaziOTnkGTjHzpJT3wTA8DwZWmuyN6pZOFaTyywANRW9vZVYoB06A96s57VJwyEE5HSo9qvCrztzQwZYZ2x1rK5cm1JNDPwXw3Hql4LrVovMkPsoXOUGewH1qu/Frww4s0PUnv7dZLWwZeVZo7cOjZ9/qflirp4cttT0mdVkjdUzglQcVbHD+qKIleS6CggZB2+NbcOpiltOdqdFKU969kE/Yvg8YdRSyt9f1nV/8Aybotm1pbQ3qxxxSEvlREpQOEUZ/iIyduhAvnxBgtNO4istU4fs5ZOdxFdJGmFZPXt0pNY8ShUVNPQySdAQNqcfL1K5i8++k26hPdV+TULLj8a5MuHReDJ5Wq/RH+M5bMWAuIHYEjJUg5qBaFdn96I3Ug5qQ8XztIjRdgOlRHRUJv0VSNz61y8ruXB29NCo8mmODr7ns0TPapLNh0wR2qGcC4Nsh5sgqKm/lnlrXC2jHkSiyveNOEk1m3ZGhaRTvhTgiq7j4Tt7J/wl7pzywH+GYCRT/6WBH0HWtBpao7e0MnpXH0a2Y5aJSD2IyKbZbtFfkUVtfKIPwjd6PptqLWO4eCFRjyIY1jXb/lWn4zW9xtYRNyn+ImnxOH9M2dbOIN68tG/glT2VQAD06VbJzapsoiscX+KoarG1KnLDf1qQ6fbhpBIeqjFJo7fl2pzskA+lNp/wCaM+ta8ToXJgCvMa6gGK6V91dY80ziZ2zQgO4NexgVwA5qChoC969yj0ryjBoWQO9PQStxJkb14Op70k8xyCBC+fhXkaRTvC9UtgQsziuBh2onnc9IH+1eLyLv+HeomFihZMbUd5gK5A+VIBJITgRP9KPhmcdYX+lNdkixTuQPWh7Gk/O4O0TfSu+a/wD+i1KOHE46GuICx+G9EtI538l/pQo3cMG8phj1pvRLFSMBtmvSbtkd6LaTIIETZPuFB81yNo3z8KiQLATJzA7de1Z98Y+Cksbya5tYCIL9SQB0DY6fatCr5rD/AHLUy8VcLjifSZtOlgwzDMbkj2G9ap1OFZoV7N3x+sejzKa69nz9k0Yy3l7p0ieW9uPOTmHXlYEY9dv0qfaBcCTT4l6lRynHpjapNxVwfcWV7daVq0Qgu0BCysu+OxB+Xaofo1jcaRzafctzNGfZYHII7Y+VcKnH8We0z5I6iskSU2sK5xjqdqfLHTIpyMqD86j9tNtzbde1SfRblGcLzYO3zqquRFZKNL4asLmMedApJ79KerbhDTgw/wBmUY6VzSJkKqT6Z2qR27K2P1q2MUyhuV9ndM0W1tsMsSV3WcCFkQdqd7OLnTrkDpSTWLdRGSVz7qu9cCVyU9xVE3tcvX3VFtOzb3Ku3UHfepZxfMlq7vI6jHQZqIW063MnsY3xuKxySs3472l++HepQvHGhb2gAMdasxGDLnsapTw+ypQlsHbpVyWjFolyc7VrxNuPJkzxV2hSuAcrRrMSOtIppmgHOqFsb4HeklvxBaXEnl8xRwcEH1qzclwzO8Upcoekz0zRyptvRFpMj4JOxpwVkA7VfFJoyZG4uhP5S82cUptoyWODjFFOy/w7UfaB2BZSBVuCP5mPVyawtinBTY13mA9K5iQn2mGK95JBySMV0KOHyd5s0IdqBhwcgj4Yry+Z6rRQA9cCu7UUokHUih4f3U6IVkJE5fZcE0BXwSS33pLEzHoNjRpA5d+9ZwioTKBjnzXnkDflzuOwoiMgdhRq4JFDkgUzN1DEChxySZ2Y4oLAqxx0ri7HOPhRJ0LUkZ13JFdLMOpNExSYOGpQGV1A2o1ZEzySb7k0PnJ/iNFFcHrXV69aiYbDwe+T9a8DltycUWMgYoQOOuKcIpQIMDm+9DkGUIU4PrSbNHBmK4UbVAFf+KfBsWuaQdQt7ctd2qk+z1K9/wBKzXqunSW19lnxnYgnpg1tAxZ3cnJqvvEDws4b1ixutUisWgvEUyc0LlQx75X8vv6CsOp0nle+HZ2fj/kvBHxZOvRm+KVojynf3U96PcOrK7HB7U03dq1rM8TnLISDR1ncFOp6VxJKmemhLdHgs3RtSTlUFsc1TDS7nzMA52qqdHvclQWI3z8asDQ7vJTDZ7dOtGMgSS7LB00q0e1NXGOrW+k6e9zMcBRt8aV6fNyp1O/aoP4pW13qmnSW9qG3U9PvV0pOMbQkYqUkn0U7c39zxhrMk3mEQkkIo7j1pbb6PNp9ygZW5M96aOHLO70m8/DXalGDld1IB9OvyqxJrrSTYhrm6jV1XIH5j9qyQW5W+zpZHse1dEz4GiWIRtj0HXtVy6fDFJaq4kGQMVn3g/iqy88W6uwAOAWQr+uKt7RNaM6LDEcnGxPSt2GUaObqISbrokskPMcDBqM8TaQY86hZjlkXdgO9Pa/jSwKTLg/5aNngSaFkk9rIppRUlRRBvG+yL6DxA5HlzNjG1SqDURKoKtmoTqGjtZ3Ze3zyls4G2KetO8wxqDnmwNzSQlJcMbIoy5RIhcMxAU/ene0ZVjwTvjOKZtPgYlQepO9SGOMAADPSujo4t3I4Xyc0koIEre40LmJ2rvLgVyugonEugNdU0IY70Er6VNrJYYKFj40UpK9TmjAyn0pkyFRRPuPSj+YYwCKQhiO+1G+YSRVNWRuxSG2yDRkbUmDGjFapQBU6BhkUGJTnt1rsZBUb7muOxQ7fUVKrkIZKgzkbHG9ASQg4zXkl5z7WN9q4VCnemsApQ84PrQxgHeiEbvRw659d6I6DM4B2FAyc9a8TntXM74qdkbsNRsUqBBXKmkSnHQUfE2xBogsOG5z1oF1Gs0LxOMq6lT8xXkfNG7MuKNETMo+ImjSaNxLeWrxgB3LgjofX7/yqMRSAHbY1e/jtwk97p0fENnGWltziQKuSVx/QfUe+qCjZWIIY4Jrz+sxPHkf7PX/HajzYV9rgfdMm8uQHc49DU90G+JYHmwB03quLV/LIJO/uqTadfmNMhzt0INZOjfLktzT9UQKBzb4r128cyF5cY9ar3SNaluZckkKppw4j4kks7DzEJK9CewplO1Ym1pqJ7WbDTrhmWWKN87dB0pr0/h7T4JSbeBFBOSMDFMdhxT+NmMcs6kdt6lOk31uTkuD8TUSUnZf+cY0iacPWUIVAYU27gVNtMggAyUwdsGoZw/qti7CMyID8ql1teWiJzPcxqo7lsVpi+CjYx/iJAx1GKTXt00Ck7YA9aapOMtEgfyxdh2HZSN/vTbrOrajqtuE0iHlVzu7Hcj3UXKiuWKcXbVDnDOt435g2T86dbW2EajAqM8P2NzbSD8Q7N659alsRBwi9ScChD8imUlFDppMWSX3wuwp5UYFJLKEQxBB1pWDXbwY9kEjy2qzebK5I7XMV0da98avMoGvYrpxXhttUIewK9yjucV2hfKoFclLg5OKGCVIpOJcH2tjQ/NGxA7VSgCsNXQ/eiklBXfaugoR1ohQojlbHs0JuZjksd+tERvj02owSAnrQGDAMbigXF0IV5nHcAn4muhwRim7XJkhgV2V2KsCVH8ajcjB2O2/yoURcjpC6PhkfIPTHelyHKgDtTRE4yCOmKXwTbYNFcEoV16gLIpA3rpcAZzgDvTIHQNnAGTgD30NGO+DimbULxLgR2lrJzySyorBTuEO5P0FPEYAQAfeiKHRntmj09aTxfmwKUqNqJBPf2MGoWs1ncpzRTIUYfGso+IfBt1wXxDLbNETaTEtBIM4IO+P79/pWt922I299R7jLgvTeNNJk0vUowDgmGYfmjb1HurPqcCzxr2btFq3psl+n2ZOicBAeYb79aV2l75bYz36ZrvFvC2rcC6xJpWrpgnLQyj8sqf8AEKZBOnZu1cDJjcHTPX4skcsVJcplp8HraXbOshA5vfRnGnhrLrmmSy6Prt9ZXCjmVUkBXOP+FgR9qgmg69La3CAP1261amh8RNdRBCcnbr3pI7emSbnCW6LMvXuoce8H6i9leQW11EjkeaoMbEejdcfID5VM+F+I9Y1tFUyQxtj2hzFiD9qtbjLgiy4kU3MMQjufXsw+FQbTuCZtMnCS2rRMvRl/rSSTTo7Oi1OCaua5Hqz0HXbkK6axbxjsvKw/nUu0bhe7nRU1TW5PK2zyE77++k+l2bLAqSsWIHVqmGj2rYVY9gfUVbBRvo2ZNZjivxr/AMBujcMafDcpHYc8yA5Ly7mrAg06KGJUEagAdqI0ewWCJWKgn4U7RiTkxKFB9B0rQkef1mpeeViL8OsWXG1POi2hl/2mQbdF9/vpNbaeby45TkRjdt+vuqSQxrEoVVwBsBW/SYL/ADZ5r5HVbf7cewaJjfFGAEVwHFCBrpnCO4NeINdBBrxOO1QNIBj0rw60I4NcAzUAdBrua8BiuhSd9qg8UZsn4islZg9zGD0xzCil4os0PI15HkHG7ivmtq37Q3iZqsbRLq5gQrjKgl8+vN0z8vWoqniNxJHP+LnvJJZC/PzsSWx3OTvmud/Vq+EdiPw06/KSPrHb8QwyrhJUfPoaWRarGc5bHrXzQ4W/aZ4p4eKq+oXcqADCTt5qg+mSeb03z9Ks7Qf2yL53RLrS4LhGHteVK0bj/q5h9x8asWqi+yifxOaP8eTdSX8TbLIPrR4ucj2SD261nHgn9oXh7iUxhLswzMMmCb2ZF+5B2HUGrV07jCzn5RFcKc9uYVfGcZK0YJ4p43UkT6O5xjNE6je2y2kzXSEwqpLYUscfAbn5Uw2+shxlJA3elx1CNlDcw9TTcMRMbdP4utdVvYI7O8N15jcoKLyqMDLEjvjpk4FTSOReUNkbiqu1zULeyu47qB4VWGYEOuAU5iOfON98dN+21SzTuJba6VkLGN4gA3OMZPuquMr4ZZKNK0Sg3CxqXJwAN6BBqdvcLmG6iZT3DA98UyvrUMcwhd/acZHpRU91C6G7tTE08QLKcZDevx/rTV9FdCzTpfw+uzx29qssQXDzhyFiHXk5ehOSenQde2ZNFMGjypBzUHk12CFoY5by3tYbmMS+aXwXLdcDtjbfON6eV1S10u3QtMPKCgAk5yPXb9aZAaJGjHmPtdaWK4UAdRUb0zXbe9tVu/MjCtn8r5x/r7qd47gMNmyKZUwDnHIp6dqI1PUbTS7G41G8kCW9rG0sjHsooqOYYJLY9KqT9o/jMcP8DS2yye1dEh1BwWXfA+BPX3D30UrIlbooHjnxml8U+ML3zbZba308tDZxhd+QMclm7tnqBsKZVvmQ+1nHxqgODeJpLrxSAebIkSQyMzb4blIGMZG/L6d6v1bXzIeux3BAxiuJr1WU9Z8bxhS+hXbXuJFcbZOan3DGtHCBpOnSqwNu0T8ysdu3rTppOpS2si5yu/eue17On2aG0fUYrpAH6/rT8ml2twoLRg/Kqj4f4gk5EHmYwB3qzOHtcWZVQyU8ZfZW47XZJbTh6x8tSsKkj3dKc7GwWFwqQqCCMGu6byzRhi2M+lOkUWGGG71ckByHK1T2ApAzR+PaCKMsTgD1NEidIU5iwFHaJJ+OvVnQh4kZ1PxAA/Vvsa0YMTzT2ow6rOtPBzY+W1ultGIxudjn5b/oaPY4OO1ADAnmPVQNvof60y6hbfvYv5c80Of93NA5Rxscb9++M7beuDXoIYk1S4SPIzytybfbH5SKMUDO1VdNxDxzwxdm3vCuo2+zJIY8lkJ64HtZAHTff1qT6Jx/peokQXitZT43V9126+12xkbnFGWGUf2CORMlnvrhxQY3WVQ6OGUjIIOQRQsCqSzs4q775xQs+g2rwHpXtx2qDLg9mu1yhBdutQZH55fxMhAz1wR8/wCzQGmIAcjBI5vr+lKJ9JukBeOMTAZJEf5un/CRn6ZpPcFLfafmRumCCDn0xjc/CuAj3IlkuJ/O5CvuAz091Gx3Lxygxu0ZHQjbFAjglmlZ4bOeXf8AhjJB9cH0oye31AR+a2mzovU5APb3HP8AZqxFTe0e7HjTVbH2XAlXG2R0671aPAf7QXFGl+Wlpcm+XIMkFwSTjvyvnIPvOV271Qkl3G6hfQ99h9/hUus+GL7QtJsdUvTGv77the27RvnmgGQQTjYhkcEdiN6eNwdoryRhlVTVmyeH/wBq3gqJ4bbWNSezmkIX24yyIc93XIA95wKuXSPETTtZshPZXRlV0DKVBKsCMj2gCN+xr5xaFaahqjRR6co5XUvNKwKqqggFS4RsEllQbfmIHerf8PeKNL4Xuf3FZa0bxIp1RYZmRWt2YnMbtsoAIyd8Df3Z1RnJrk5Go+Phj/KLNdatxJbfiUhe5/xWUJLGgyc4zg52PzpJpPFNvlvxzz28bSxpzA+0JDuOU757duu1VTq3Ed8Zp9dkkjtYYeSGSPzDJIsxT2cnm3RugbGNh3UgoxxRbal5Ze8WcJIxJz7MbKMYJ+f1qq3dmfx8Ui99b1lYNE1D8Fq0+rTpFK9rHMyA+eoJUIyJnIIPQMRuMHGKhnhr4oavMUsuIILm2vJSyJZTQSIxiAHI6q4zyfmBOBuDtVf3/GjLpBSzuo5Us0My+WCxVU3L+zucEb+4n1qtuNPEm10PimfT5J797q5tnivLwysrWsZ6CAc5wxBDZbBKnG25q2M23wIsSppmjX8a+GLXiax4Yur6OW3twHnnLEqrsv5PaGCFGxwcjOCNjiWXHiha6nA91pNxaahYBVMUscoKNnZsdem+dv0r596dxvdavZJaxz213dLcFIppV5ZFLSMvMxOQAQQT1GTnbAq2OC5b7QuH04ivNSmkttUeaCz/ANoAjVInRJGQlTuGLjYnmIwQOp2yUHg3Lh9f5L3pcUopx7/2bL4L1W4vYl1a6DGxgLeSmCSWGxO22FwQMDH0q0tO1KKRUJ5lDgEZG+/qKoPhXiREtrPhuxnLF7W3EsX4YKsDtErgkc5OCHPMcnHpUosOMdYSGORYjOjYiIjjLAbZI2PurLCbXBzMsHZctvdedCJHXk5ieUHuO323rKX7Zt8Zoin4t4orG3MjkEDYkAjocZAPap/L4gveXsOjaTat+8LSIfjLkSN5VqGAwoI9kPgcpAy253Gdqa/abMs/AGr6pKSQISObJ2CJnO/vbHetWK5KxIrZNWY08O9Tkm4uvtVVn5RLyoRlRgHJIGO+2x7VsDR5FurCGfJJdFbPTORWIfDe8NtIGduVpZDn3nJrZnhzcfitGt4pgA0Y5P6Vxdcrmz0+gdQQ8yw4cgge6l2iWcV1dLDKmVY4P1oV/a8iEjG/Si9OnNvcq+Ohx8q550uybx8DXJEc2jXARzjMchPKfdnrTvYQ8TaAyy6pot7HANzMsZeP/qXIH1qQcGSjUI4CHBAxn1+dWzDJHFbrDDtgYzmrI4lJWUyzOPDVkH0Pi23eIOLhH9wYVJ7PXjOAY1Zzn+EZ2pTJHAgJMSczf5RmgTajZ6bZS317KsUECF3Y7BQKdJriyp5P0F6/rc9hYDKn8Vcf4dvHjJLep9w6/T1qc8NWX7m0W0sJW/xYoMysd8ud2P8A1sfpVfcBWs3FF3/501SJkiuT5enW79VtlbZiPWR+vuUVYom5ZebGVBBJ7kD8o+Z3r0mg0rx490u2eX+V1XkyeOL4X+x1IYK/K3tHIBBzvgfzFNr3UVlHGgk5RlnXO+xBI+7UeLpVAfmHKW/Q/wDeozxBelbmFAo5SqIR3yWx/Kt+HG26ZyZSpWE8bWo1XTo5LN+WeC4blkBAHL1Kk9MZ7e6oxacSLcRrpl7EskiD/DuGJDSMP4wTsqg9Bg/Clutaml3aTRxYdpHdggYAEmQAb+m1QzUb+whnBmEyOqs7GUFeflOM+gXOMAHer9qSpgUuSYaZxRqegMZbe4e7tySzJI2/L0yR1Gf+IjHpVgcP8Z6Vr0Y8pzHL3RqomW6uWAnlvo+cHBYnLFj3PXoDsO2d6eOGZhNqCZmRpWBYKhCkDOCeo2zsTsKoniUuSxTaL+V+YZzQhg9Kh1lqt9bQjyLlJlU+0SQVX3s2wA+GTS2PivysLOI5GOwKKVUn3ZJLD3gVleGXovjlVckkzXg2KYhxXbLjzoGB9F6/cCvDjPQhkSXDRsDuGTel2S+hlkj9n5/4W1SFchzLz7f7xWxtnYk+77/OuzanrkJVmS5kUgdM4/nSD93vKGK3tqBuSpdhn543/SjVsNWYqUKyYOQ0c4xnY9yD9q4FUe43Bk2vXOOa7XYb/wCKWzj50j/fy3U3kpaxJH0LxZQjbuRj75o5f3/AgDwXOFI6Lz/pmk0upc7PDdw25cjJSWBcj3nbIp40hJpsFeTW728kpUOy4Ue17ffBPqOvb9aua31JvEXwEsxrE2oW2o8EX/7o5kctFLFKUCyzeZuHRSIwqkkEDCqrPy154cw8I67rv7g4n014re+QrFeWO0ts435iWbk8vGSRys2y4750VwrFaarwhZ2PidDpZbQNTFtFrUc9zPNq+El8p5bg5flVpZyv+IOVt+VAuGt4RjnkcZL9EE4O1VvDeye1FtcsJbb8RPZSS8rTROpIblZT5hCnIHLg8y+1gZpBq+k6Vb3FzrPDmu6ff6XcE3NvZyxf7UvOCZELZ9gK3KAnR856qcOmqcI8TeJnitcfg9La1u9TL3ca3HmsqRohw0rIJGBKx4wByklQANhRPEnE3DHAZ0fgnh5bSDzFuJr3VLoyX1uss6RqzwsqByRGoZTHGg9oYH5mOibWR7kv+CrNNT59ki4N4lnOmajpOq2mlSWVvOYbK4mdzLaPk8xHIOYYJc4O7YU4wAajkkPiJcaDrNnZ27TXMUygwoiiWdGOROqjBdSFKkgnOW2PK2FOu65e8K2FnxXpupaVxJFbyxpDFq1oLoTB+YqTFIu6tGF22wS3KUK4Mr4G8X4rriGPUOGOBij26lZNPuJfx0UEjxsD5KsVJRSNg7MfaCnPUHG8mNOSXBnhlljtoYdJuuNtG0/T7ObRZ2e8to1VEtyWKuCUjcBc8/IM8oOQr5IDZAj/ABu0uv6bpenRaTaWFzYanb8zM6J+I6iR5EJ5mGEU5YEgBVrWPBfh5xhxVHaatxJfQw6Ff6ctw8iSStfXE86qZFBkObdQy5wCQfZxtVj2XCfh7wm73ej8N6PYXCGT/GECmZMlyQJGywGeiggDYAAACtuBycHFxSv37M2bXwUXFK2YM8NfCzxC4l4ts9Q0vw+1FdIF9FIwgsTHBHEsylyjzkROQMkAvg5rRmlfsuzHV9Su7jiptB0dtRk1DStKtpDc+QWf2POQ4T2UHLhWbJUHmIGDdl3xJayKBbzyXD5ODGCwP/qGwHTvTe1/qFzgwpFbpy4QyDmkHXsDgdff8KeOJR9mJa7NH+LoFpvBWg6I88iSXl3NcK7TfiLlghzuSd+Y7nuxO3Wl97rHkr5FlKQY0CCGDl5VIyMHOwGfnv3pvCeZk3N5NcSMMHnfbHfYYA3J7e6gt5duhAQKuMAL0+FMsUV0jPLJKbuTsTs93GksqpDbK5LPDbqMO77ZY4HMem+B0pVr3Cem8a8O3nCGtZ8nUovIyucq0gKqwx6MAaSXcEyRxZLDnw5Ge/8AD9Nz9KfNFuIxeWc0jZWOeEknfIEg/qaujFUUuTs+YKaFd8H8dXfCF2SZdJ1CW0J2BcI5GSPeB961j4VXqyQmEkbFWGOp2qI/tl+GY4N8a9O43sEZdO4qhe4Yn8q3EbBXHxOc0Pwu1tItagiU7SINu2R/ePnXA1+LbNnqPjcu6CZoW5tlkiHvxQLLR/NfHKCD6inaytRd6ck0ftEjIx3py0SHkk5ZU5cGuM1ydpS4JjwFpLWECh3674ParJgby0+IqH6RJHHGpUjA6Zpdq3E9jpdo091Osaqp35qvitqMsm5sc9Q1NYgZGkVVQEsx2wKiNp+P8T9RjtoWeDQIHPt55Tcsh9p/+RdwPVvTAqDz8Qal4mcRR8OaK0x01WH4qSE/nGfaGd9guT6Zx6itE8LaFY6FpyQWdqsUaqqxwj+FB+Rd+5I5j67V1/jNF5X5Zrhdfs5PyetWnj4oP8n/ANL/AOjxYW8Vrbpa2yCGNEWKNR0jRVwAPgv3NKmk6HHLuCvoCfy/Rd6TCdI8q+6nIU5zlc+0fmdqKnnJ5vMOOoYjsf4j9MKK9Go2zy7Yoe6XkYuCqruB7ugH05jVf8R63N++AIGz5KhuuwKoWJx8xTrr2vCCFo4nAdjghTnBJwB/f/CarqfUGuL66uHiDqzsPzYGDn7bL9avhGlZVJ3wLbjUTfRRQQKyyeYpYHqcDb6sxPyo+8aOZkRgCIlWHOOoXdiPiajPCWp/vu7vdWhwY1na3gO+DyErnrj8wkP0qUpavcEJAv8ACqJnbdjgZ+OSfnVM+y1cBEemRkee9ujOVaVSVBxzNtj4nf5CpJBBbQxy27pFyKY4GyB0ReZz8f515okilQFVKebgbfwQj+ZprvbotC+PZkdQhGMe1I2T9tqr7CLp+JruztOSdJbpDGZPMdy5iUnCoEGzbd9z8etIzxHC/wDtQu1nkZij8knMAR/CWHXB/hFM95NzSBEbKNKW2PRIht8s5FR2GGK4DXWWhupF5EkUlHVpTzEhgc+yo+1RtINWWE3EdxyFX5ggHTPKmMbnb2VHuIJpnm1gmRijSYz23Hy930qMzz6nblfIvBN5is6LOgbkXomOUgbnfJBOCd6Oh028nTzb3UJHkbceUAoA7DB+vzpOB9v2fI+K2010B/fPtYBPPDhf1/rXP3WAf8G7s5d8YOQc/IHH+tDMfCbgpHfXqEDILlAB8gool9O0mRwLbWkJyMc8e+Tn3ivKUfQgx9J1XlxEnMM7ckw3925+O1JhdaxayNbst4GwSA0Z9oZwd8b0aeH7zaWz1KCQgcuPMZDjGdqSsnFltL5fl3BTqCvtqPmMjOKsikVyb7RJeEPE06Agsr7gHhLX41YxxNqGj28k8XXYSFDzAE5wwJxsCNsaT0Hxd4d8RfD/AFObWrfT7QwR23mWcyRiGORpmC4LYReZozg+wccx2wtZB/eWtTGSKeGdQCQcwFMZ9Dj+tPnCWk3eqabqt4t3HBPYSxuuQokcd1UbksCQwyuN232xWiGOM/5M5+WKlLns1nwcOJNFv73iLWWuJUu7NbqSa2vbYw3CMQnJIOZWUxo+QwPKVIGVwC0BbwK4X1e5vLY69f2EOlFYBeCSIR30yh/McI35EDkKFVmKhPaAPt0ToPi9pd0o0TUtHt7e2lWLklktIo/Mdl5ZfNaHl3J6Ng823Nydl+r6zfvBb3nCdkjXUN09x5aqxEszKqsuRs82CGXBOOUKeuCluLVGWTlErh9C1Xg1xwjHFc6g93eIGsUaWUzMGzGViOSjN7Ps8vPk4ODkVpv9n79m9eE5xxVx0Dd6mVjeDRIW/wAO0OS3+1uMLI4J/wB2eYKdxzbYm/g/4P6bwtHFxLemeXX7iDlmu5JX81kbB8ok4OOgLH2mxg4ACi3YLdYAsUMfKAMgYwBnGP1H3ruwTljUZo5Wq1zmtkP+WItRa/nXEsqwo23JGOYjIII5iPQ+g/LUcuNPtUnM0kXO+5EkrGRvU7n35qXXEKkFjsFUtuOvp9h9zTHeQsT5ZHT83p13/wDup6MEWNDqWYDrjr17f2aOhAB7Nt/L+YrhQqCRkhdz+v8AI0NDyDbGDnHXtj+tLQ9igYPtIvMQuBvgen2/vpSO5A32yN+3v/7felSFgDgA55SPgdjRSktJH39tcjpvkf1NREOX0BuYQFHJgDOOxIwSPgopNBevC3OvMvsjOP4dgf506zAJGmFzzw4O/wDEAR/MUgvLNZWke0ALNzMVz1JZVGPTbFWIqYd4leGOiePfAU2h3rCDW9MR7zSbkOeWOcbOhG4KNtkHpnPasLJLrHBHEy2WqWclrd6bdmC4ic4KEHlOT29d/dW5dJ1i/wBCvkuIFKMjsQrDIxkr07gjY/GmHxn8EuGPHrSZOIeHSumcXxw+VbsWHlXLrki3mON878j9RnBz0rNq9N547o9m/QavwyUJvj/Qu8K9Rh1rRY2WQMOUYGegNP8AqDQabKS8ioRv12qifAziXVuFrO54X4pt5rHU9Ik/DzwzqRIrKTsc99s+8b7g5py468QJJ52DTrgdFUjOCdq8vPG4va1yewjJT/K+GWdfeJdtpcJENyrsoORkH3/ypt0PROIvEq7TVdUuXttLYc4WNstKM9EH8OT0z2yfTMd8IvDjWONdein1uwZdPibnSObHK/cs4B/KN/ZOMkgdMitWadw5Z6YwZrUR+UqlFIGAAMK742G35VA+ldbQfG+T+5m6+jifI/KrD/bwd/f0FcDcJWnD9iLe3tIo2wqScgwvqIl9AOrHv+k1WQgHf+HcjrvtsPf0HupJbiFVEdsWVVHII27k9R6ZJ3PoKLnmCSkySBAScMegA/PJ8Owr0cYpKkeXlJye6XYbJdlDuycxOQR0GP8A7V+5pm1PXGtYykMm5wik4yM77/qflSLVeIy7vBYQNM2AemM52Rem/qaZpLNuVbjUJGPsO2RgDGfab4k7CrOuyttvobr+9luW8xCxBbnOTj2R7K79u5qBeKPEl7w7w0bDT54DqerTR2tlGD+ZpQAN8Hplj9KsiaO0llax5uQchZ9zgAADAOe2R88mqh06H/8AEHxUlv441l07hxPItShPI08ns5znfCk4HTYGpuHiqJ/wDwy+jcMWWkIzu0UMUfOd+Z3wObJ6ZA+9TeJktC0/IvKskkvX+GMYX/3YoSRW+nwtPy+ykrzYAyQIxyqP+o1F+MuKLbhPhjUdauNOvb4afbIn4aygaSaWRm52VVHfOPgOtUNWxx7uJiyNEWb8sdsN9w7nmcn39aan1JJpxIHBjV5rhh35V9kH/qrKmu+Jn7RkXHb6jZSnT7KaCHVhokNnb38FtBITGn4gyPFMHyu5hZgOuNiDeXA66vqdlFrHEXlpdXkhTkj3jjhUB3Ve+M5G/pnvWXJqFHIsUeW/+kbsWilLBLUTdRXC/b+iSXp5baTkkKt5KQDm/wCKQ5PzpvZ1lEIQjMhJB7rznlH/ALAfWjL1lmWJlLB53a4II7n2I/htv9aSQKss6CMFVDAL3wDhB9gT86sfJnSFizJLMbhgOWV8KD15AMj7dvfXFu7q4VWt2IAHtZyMsfa6f+oUkvJv8EvsECXbgemAV/v40gtdTEEQU5ycZwcdAB/KoNR8sVsOEJQSIbqFjuf8Rv5kgfL0oSaFoUj/AOzauQTsBKgOOu3bO39nanCCfhSaPE2kMmCCGRnB+x3612Sw4Rn2g1K6tz6Oyt9iMn615PefQHFLoTJw1NEyi3v4yVzsMqT8AM0BtP1y2cII5GVhzF1cFc/M9fl3o9+HEZAunazFL3wUK/MFSe9ENo/FFnci3tpVnjYAiRZByKfTDYbt6YoxYJSo9Zy6le3y2U0coQJIG82IqByoWADHbcrj50Lhh9YvJL3S9I4zj0qcTL/g3R5I3j/iZZhkhlIGUCgkbjmI5Q48GXd/LrEw1/T7xrK1trgylIjHuE6LIVYDIyObBGTtnpTNrvFGqavq8d8kcNitkFgs4YUJWCFP93HzMS8gUAfnJ+XStMHSMOZ75FzeDdpoFtqZ1HibXNH1bUbLJ0qJ7Mm4lIbmaZ0KjBXKhWUltyTg7m6/CHg3QuJ+NTxDaaOtlZ6bIZriMFysl0eUKRnCrF7BdUUb5BJA5VGUOGL7TZljuZrzVU1ZxhpBOvlMpbKiNFVeU5xsCd9xjOBv7wh4buOEuArFdVTydQvh+Ju8qeYPyAhW3OSoPL8jWvTYvJkt9I4+vl4ocdssRCRkuCu22O+NwdqcRKEDklcjO593Mf5Ckr26hucvgAAZz6Lj+VCDSI7BQ2TzH0GcNXXSOAdmA5/JIJBODttjKL/Wma6UlZHBGSCffvzH+dPjchlZVXmBYAjH/wC4c/pTI7EgkLy55RgemF/1piDdKoRmjfIUDceu5AP3olUYBcgdV6dDnb9aUypkvIgx7OSfoaLMYGV5vyknp1waSixMAAQEAONkH/uxXEKIFmKqQrc3fOQW6faj5YcENlsKf4cY/NRE0OISSu+/U+40CdjlLGfKCqnRpFx03zk/ov1ps857OUv/AAk7Ht1BB+wNPFsFu9M5ldlkiIJI6hscucfFQfnSW4slcl8cqAhj32yBt67MKsSsqf0GKLa8TmKqHjRipA3J8wN1+B/WjdL0mSy1aJoyYyZcFlxlcOeUn3Z5aRQQOihUODhhg74Zc5H/AE/c47096TeyRuba5hMoccy43YjGHHvOATj3GnQBy8SfBfQfES0fiK1Men6+9urx3SAnzQv543UfnUEbHdgOmQMHLencEHSuNZV8R5UtX0udSkMjIIJoz+WUH88gz7WAo/Lvg7DTOr+Itxo0UfDmhyLNqU8jGGVuZkhxkP7YP5iuPZz/AELLd6NYcZ2zxca6VbzScpjiu1HLcKW2JSQHmBz7znNZsmmxSmpyXJsxa3PDH44vgs3giw0/TNKt5tLZXSVI7iQEjlaLBKJn1Y746bnaptLcB3itiFFycE83aVhkk/8AKKyLwpxDxb4B8QHhyMT61w3zGawDyDJ5hyoISQWZ1/iRsANv7PfQ2gcdaJrkMt1p943mIjpiQBZYkGOeRwcnLE4FbVGlwY3+yU6jfQ2OVTBUpyx43ZU6M3/Mx2qOzyyamzefKFgyfZBxGsadR8M7e80Rc3dyQrjDCRgp3wVx7j/wj070VNqdvHamEoFRRlgeoXqq/PqTRuiurFgktLMAqFMxXm7bO4wAcdlXrSW5WTUC7xOvlIqxqH2yoG333PypJaTw3EpYyq7MSzsTsM9fpTnq2oaZwzpkXEWtXiw2ZJFtZsA0l05GEA9xJzv9MUGx0iEeJvEC8J8FKI44v3nrkpt4CJMMkBPtNg/5d9vX3Cj/AAc4Si0Lh1bm7j/x7q4gu5Wb82SC5DE9cAgfKqwudU13xO4wsZtTjUiL8RKIYtlghU8ijl+P6mr41W5g0uKa0hbZjHGgH/E4C/oD9ajQXxwB1vUAvPaEspdoUO2+CSz0lURraC+lcgeXJdHv7TDlX47b0xG9Op6lNLHOZBLNypg5ALHkXf5NUhvvL5ljUhIjKNs//SiXp8M7UjYUiudc4NsNR4u0rVb7S7U/uWP8NFM6gs3MvPIoI3A2wQT67EGpBEi2ljkLgrZu6kdOaRsjb4E0fPDJdMkKEFm93R5Tufkv612dVIeRVVIXmwoPTyYlzt8yRWaOGMJOXtmzLqZZYRx9KK4X/v8Ayxnuxy3D+SMeWfLGehCJgH/qb7UfptpKVhkjQ8zXMa4IP5VXmyPsKKEf4mdopF5SxRWGR1bcj6t9qVRTNz20oj2UXVy4Db4AKr/SnKBnvbeVLSOJQR/st2eYrg+1Jt+tA02CF0nEoJKTMo+goV2oeMBVJxa20RJGc87lj237URpt3LBC4RQQ0hbB7bDbagMj51yTcLTRH8VwzbEj2QbceX646Yps1DRuALhggk1C1cnJBYED4DBOPnTDZaveSSyJMUlC4I5kGRkgdfnTkLaK9j55AUbOzKd/vmvGLG4vs+mSyQmujycL6Kz+XpmuRkt08wFSAeudztRTaVrkd1IkcjtGmcSJcAhh12Gcg7dwB76Y9SkksrzyoXPsoSCQM/xem3aiYdRuzBtKQVyQRsRsOh7daugmZ5RTdIn3Dc1z+7tZ/ecd5HHPp6xK8sRRVzKh3JHcIce4Gq6nwXHKMmRzynpnfb61MdL1m/m4K1O0llLJPc2vOSSW5VSTC5z0HMTvUO06V31JOfBCBnAI78p/nWrEmzBnqLNd/sb+GGltc3niZr+iC4S3nFloLy4ZGlTaaVUOxZScKx6EPjfetVauYmIeN8rgs+DuOUlTn5FaZuCuH9N4Yj0XhLR4jFp2jWLCBNsuc8hZyB7THLMTtlmY96dZ3/wI2Kg5mIO3XmU5/wDiK7+HH44pHjNXnefK5ErnEb6ejgjDq7ZHvZv5Uhll5dx1bnBU9zhxSi0bl0u1AA3X0/zvSK42UDAxg7Y67kfzNXGYPSdhduqk48wDr2y1NNy/IkZLDLBCdunsod/v9KcVUDUnHX2jv8Femy6jUKg32blHwESVBkFPLGVZBGAGIG5z2P8ApRUZVpFRxkuy7+mdj98UPkURyEDdWOPt/Wh2iASg7kjmxn4ZpQ2dkQFebJI6gfBQcbfCk88RHNyrthj8sN76WliZAD0JI/8AlRjxoqHAx+b9D/WoS6C9EvAlxLp/lIBOCFY4IORsPkVGPia7YhrpYfO9l2V43Dbcp3wP/h9aQXUIiuYZo3cPGwkBz3BJH3p9lQJOzKTs0p+YD/8A9R9Ksi/Qj7sCsEUTTXM5WC3hlFzzuwQR+zk8x6DcDr6VCuJOLL3UgbPgpzChcxPqAiIfryHywR7I2J5uvXHXNFcZ63f6nrV/wvM4jsNPKIqRZUy5hDZc53IztjHajtLtoIdJh8uNV5XjYHHQi4aiFKuRn4eUQTWl/wA4SaPmEkpTDO/d3XOJCM55vzFS2dxUu1HVLvUkWx1GOKCNWPneUp5WkX+Ek9VIKsCMbHrkUht7O2bSrGZoVLK07g9MMGbB2+ApfbwqbpoyWKWsyRIpYkFGCjBz1wHIHy9KnfZGxbr2lQ3em2WpmQ+ZbNIizMrGdYyN4+YnlUg5BbBJGO+9VnqOr3ggiFrAbW6uYg/mKT5karKCFVuwIwTjGe9WhxrC+ncOwwQ3UzRXF7OkkbkEN5aMFPTOcAZ37VXWvAPqTORuqKg9wKRk/pV1tRFj2LOEvELxEjnEOoXcOp2kKOXEyBZOXzBtzrjfBxkg9O9T48Y38d1O0tmrMZJFKZJC+WnMe243UfLFRrhSyt0s1YKSZIyrb9QJ9qdtZSOOScLGoxLdtnHfkApU77JJq+Auy8W9LtdUS31uzvRE/LKxhQZ5GHOepG/LgfWkPiJxZNxxxCt+6PBY2l5bx2cBP+7RUL7jJGSf09Kh19DEbhpGjVmFuu5HpAN9qVXYDXMKcoAlvzG2B28hf6mgn7GJp4PaMLa3k4luI1XzrWeNQdiF81dsfEN/ZqQ8Ra4pvppI5CyQXTgZOf8AdxAD/wBxFKrFUsOD0/CoqBDIAANt5ajN45kuvKbBWSWVmHqfNT+W1N6E7djvw9J+HuoZpDyrAZJW268icoO3+Ziaf7p2FsFEuR+HjhwVIPNM2T8O9Q2a5khtIwgXLWNw7HuT54FS1FEkTc++b5V+Sx8yj61UywaF1HleW75gQhuLgMO/LiNR+tHG5Uv+BYF1QR2Zydtl55Dj30xxOZYJ1YDAhjG3vnfP/wARRsbM855mJ555yd+5ZUz/ANJIpLGF+mFpr5bqUkGWeWTHN2VM/YkD5UC4uJ0sS8bNkaW7Z58jmd9vidz+lGcwhgjKoOZbK7k5twc8xHb40UsUTwRqYxhrexiIBP5SSaABLeMIml5g6hJwo3zgQwZ/U96ZGLwRxIozlM9T6kfyp11edxAHVUDFJpchf4mkCk/SmW7aQCDlldcxBjg9yST+tSrGUqP/2Q==','2010-01-04 00:00:00','man',NULL,'2018-08-11 17:26:28','三七堇智','UzZAuDeVkcgvUCJVJc9CKn7U+qj7GFWuyTSifQCT66o=','uCjJlC7MNM5aEt38ZGNs+3WlPqIyxPFjYcCAxZtoNNA=','VvspZdZPOf30qwRPdYW/42j5UJk59ww2U7jRa/glNx8=','450981','915106840328','网工一班','2018级','网络工程','915106840328','915106840328',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa8725087c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840331','乔泽华',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725087d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840332','汪凯',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725087e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840334','王青虎',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725087f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840336','王元鹏',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250880',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840338','吴航',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250881',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840340','姚翔宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250882',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840341','殷迪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250883',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840343','张吉元',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250884',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915107820129','徐诗楠',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250885',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915108670140','马云鹤',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250886',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915102270119','黄瑞康',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250887',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915102270225','彭一诺',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250888',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915102610115','刘嘉辉',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87250889',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840402','窦悦',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725088a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840405','姜淼',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725088b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840412','蔡光兴',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725088c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840415','董浩宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725088d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840418','韩振宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725088e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840421','黄步鑫',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa8725088f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840422','兰卓琳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87260890',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840423','郎宗源',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87260891',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840427','李永泽',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87260892',1,'',NULL,NULL,NULL,'2018-08-12 12:34:05',NULL,'bLy+deGkxWgaKD1za4/8T9ZFI7ys/3Rvu1vga4hWzls=','PP+K9mI4rLl4Q2p2yRUZPxQCBaAG5Sfvxuf1pxbYU2M=','R6kkrlc0ARnPxKYZfLtLmL153a+pQ67Bxqci/oKU58A=',NULL,'915106840433','计科一班','2018级','计算机科学与技术','915106840433','沈思远',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa87260893',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840434','孙维华',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87260894',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840439','吴宗泽',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87260895',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840442','杨飞明',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87260896',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062301',' 2015级','计算机科学与技术','915106840445','周靖阳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87260897',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062302',' 2015级','计算机科学与技术','915103860205','李牧芝',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa87260898',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151062302',' 2015级','计算机科学与技术','915106840206','张佳颖',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872808d7',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','914106840403','李婧',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872808d8',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840227','苏晶',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872808d9',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840233','吴奕杭',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872808da',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840234','项靖渝',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872808db',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840235','肖壮',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872808dc',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840403','傅媛媛',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908dd',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840404','江丽英',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908de',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840407','欧翔雪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908df',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840409','杨佳琪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e0',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840410','张梦雪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840411','郑清容',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e2',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840413','陈可',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e3',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840414','陈旭芝',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e4',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840416','杜元民',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e5',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840419','郝士玮',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e6',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840429','刘兆楠',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e7',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840430','马浩然',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e8',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840432','牛坤',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908e9',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840435','王国彬',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908ea',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840437','王鑫',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908eb',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840438','吴立军',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908ec',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840443','张一驰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872908ed',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840505','梁若琳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08ee',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840514','侯金鹏',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08ef',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840518','李仁杰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f0',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840519','李渊',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f1',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840520','梁帅',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f2',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840521','林星潇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f3',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840522','刘澳赋',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f4',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840523','刘力琛',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f5',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840525','马春楠',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f6',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840526','马浩',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f7',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840528','宁家琪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f8',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840530','彭斌',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08f9',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840533','吴比良瑜',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08fa',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840536','严文俨',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08fb',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840537','杨光',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08fc',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840539','应梓健',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08fd',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840540','于海航',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08fe',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840544','张雨',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a08ff',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840545','郑琦',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a0900',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915106840546','陈旖旎',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a0901',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','`915115040135','葛俊杰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a0902',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915000720225','卞卡',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a0903',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','9151010F0516','李瑞',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a0904',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840601','干诗艳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872a0905',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840606','刘子琪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0906',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840608','闫思冰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0907',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840609','姚逸恒',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0908',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840610','张陆一凡',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0909',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840613','周苏燕',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b090a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840615','陈嘉裕',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b090b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840618','邓子涵',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b090c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840625','李旭辉',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b090d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840630','沙昊',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b090e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840631','童贻术',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b090f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840635','熊磊',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0910',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840638','张杰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0911',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840639','张进',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0912',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','915106840640','张峻踉',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0913',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065501',' 2015级','软件工程','9151160D0435','王义铭',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0915',1,'',NULL,NULL,NULL,'2018-08-05 01:01:46',NULL,'U451S5WupUgsxP64c4ChUkLbgxMAf0/8rHQOCDhsb70=','RrDRMhhS93PLWdWlSxkAIjq8glggp5zjHteYYDy0qZE=','C9s6mE0Sk42fG+XyUBUXrV14xMxBic5KRvK77cG27wQ=',NULL,'914106840240','计科二班','2018级','人工智能','914106840240','914106840240',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','5b66d3a66205a80b016205fa872b0916',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840107','朱晓彬',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0917',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840112','耿国炜',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0918',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840113','国玉恩',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b0919',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840119','兰志云',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b091a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840120','凌子宁',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b091b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840122','马继',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b091c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840123','马思民',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872b091d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840124','买买江·艾力',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c091e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840129','孙海林',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c091f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840130','王嘉寅',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0920',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840309','王盼',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0921',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840310','吴娜',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0922',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840312','张萍',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0923',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840320','胡博',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0924',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840321','胡秀锋',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0925',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840333','王博超',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0926',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840337','文皓宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0927',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840345','郑鑫宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0928',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840607','石杨',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0929',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840617','陈学攀',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c092a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840632','王东宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c092b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840636','杨英光',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c092c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840705','李瑾仪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c092d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840738','杨轶暄',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c092e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915106840741','张耀兴',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c092f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065801',' 2015级','网络工程','915113370102','邢琳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0930',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840205','王雅晖',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0931',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840208','艾合买提',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0932',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840210','崔云涛',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0933',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840213','付纪青',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0934',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840214','龚钰博',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0935',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840216','郭昊宇',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0936',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840221','简用志',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0937',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840224','梅东',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0938',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840225','农庭超',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872c0939',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840226','钱秉钰',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d093a',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840237','颜彪',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d093b',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840239','袁艺林',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d093c',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840242','张庸',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d093d',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840246','周昌慧',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d093e',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840406','廖希琳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d093f',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840431','玛拉提哈孜·波拉提哈孜',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0940',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840436','王柯雄',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0941',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840440','肖晨阳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0942',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','915106840441','谢能显',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0943',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','`915106840510','朱琳',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0944',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','`915106840513','戴普琛',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0945',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','`915106840516','黄泽岚',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0946',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','`915106840517','李进喜',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0947',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','`915106840529','潘万通',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0948',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','`915106840532','王超群',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','5b66d3a66205a80b016205fa872d0949',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9151065802',' 2015级','网络工程','`915106840535','许端琛',NULL,NULL,NULL,NULL,NULL,NULL,'\0'),('Student','8a80cb8164feb31a0164feb33cce0000',1,NULL,NULL,NULL,NULL,NULL,NULL,'+N3LeaAJvdZoSfKYceafo0fDgXAoJeSD/Dye87Tnfcw=','NmNane0ZdOtf+aYS5ApdFD9EWRIFVC29n0Tjy7CZXDc=','mq+U6OF9yLEuQ1GhDFsbKMO7emd86wLBno3sxZ5kDG8=',NULL,'测试者da256','9151068402','2015级','软件工程','9151068403f1','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164feb8140164feb8349b0000',1,NULL,NULL,NULL,NULL,NULL,NULL,'Not/HGBzCVbo17UNTvugvhgE7RJ0ZIU+v6zLwhWp1vw=','KdEI93Ezo3nAFT5BpPXqHOs+XOYp2fJxeEolY7PMlxg=','cql/h7Il5DZr2PiG4sKXAlkrN/rbbBFPUUkU1SLpgPM=',NULL,'测试者ade9d','9151068402','2015级','软件工程','915106840600','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164feb8140164feb835a40002',1,NULL,NULL,NULL,NULL,NULL,NULL,'td2EQFWbIEm4BhzKiOtZL5t9ysZTqxJ1kFeCjunWL7U=','gVpBz9i7+Ov/Pd5xnKZzvrAVYTf/JwirQlW24SqkJxk=','dwwxITwQ3u5CdJE/V6fh3eRPYBBM5SfuAE+Nnp+cR0E=',NULL,'测试者154a9','9151068402','2015级','软件工程','915106840588','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164fef3d10164fef3fef10002',1,NULL,NULL,NULL,NULL,NULL,NULL,'BzAiMbrG2snRv8i9/d5hWRMkdTOs30vrC71ekht3mtA=','NmirHWiEXyo7MmSQNVEoWp5JnNe3pRpH1vye8bu5kSY=','YKlOi/l7z3Lqz9tSzQq57wJx+JlE9MzuxFQuaPnbK5A=',NULL,'测试者a8f3d','9151068402','2015级','软件工程','91510684061b','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164fef4d30164fef727670002',1,NULL,NULL,NULL,NULL,NULL,NULL,'gf2yxsZP24c4SLXGXhM3Jeazgo+A0bGbbAsJadqthrY=','S8InbNR1PaSTL2hzGwn9Zv41mZLk4MKF7u62P+RmaPg=','pkYgBzxtKGEjotKkCWjPiD7A8zWgt0ZK4K7zg//8H2U=',NULL,'测试者8fbcd','9151068402','2015级','软件工程','915106840644','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164fefd5a0164fefd9b660000',1,NULL,NULL,NULL,NULL,NULL,NULL,'N/gDXvgBAgObNFETmmZZtvQfCpoIfCyOLPdHH2wEcpg=','coEZfE9BmMUDqFVhPA6JIlIsPFSBU1u4cH98QPiLzJk=','oLm6c31wRgBnXVG3uEF9htLmlRLYiXVGKbBTmKHbWVw=',NULL,'测试者d031d','9151068402','2015级','软件工程','91510684061e','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164fefd5a0164fefd9dfd0002',1,NULL,NULL,NULL,NULL,NULL,NULL,'fW0FbGanhtg/1VB9J9NaqwS6wqRdMZlruqeQHM3OYcU=','eF12T1KAwukPWb5uDeBOHajVZkF6/izW+njoNE63rns=','Fw6IJo+f2kKscFpdPcb/2KwVwOpugOZDGC/1qZ6irfU=',NULL,'测试者085ac','9151068402','2015级','软件工程','91510684047c','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164feff560164feffa1100000',1,NULL,NULL,NULL,NULL,NULL,NULL,'4D9rzgVAeMa1+bzRvNBVwQfFtNIJBX+epwBrnigMWtw=','lvCHqAnihfoDbE4j9/ZMCmiqbsUgPhMTLDU+wRYU24I=','kY0Q0OniXM+4vR9WiK9YiAKXCyXMRz1wFqm8CBtwvl8=',NULL,'测试者55fd6','9151068402','2015级','软件工程','915106840f2e','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164feff560164ff01525e0002',1,NULL,NULL,NULL,NULL,NULL,NULL,'RnXXoOAYB+6+DjBjw3E2xiEaQgXwyfDFM4ZeC6pyZSE=','y1okR5qGc9rIQe8Fld48P3tBQZt+SbK9WjHuPsinyjg=','AfWoxU0SIxaXZN6EV0jbGIjzpOe354XyahaIt5HxSgc=',NULL,'测试者d4200','9151068402','2015级','软件工程','9151068406da','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb8164ff08370164ff08605b0001',1,NULL,NULL,NULL,NULL,NULL,NULL,'iQGIPDkJZYuuUAWOWriq5u9X0cZ7tsa1K5q0HvqydrE=','DxSLxcaXzQAs+trDJo428kSdC5EIbobDcuLiqfDYn84=','IcV68OGBqxIQUNOKZBjZg1HnV5hYU771cFmiOpWjXQc=',NULL,'测试者23fd9','9151068402','2015级','软件工程','915106840161','学生注册服务测试者',NULL,NULL,NULL,NULL,NULL,NULL,''),('Student','8a80cb816505cd61016505d322d80000',1,'\0',NULL,NULL,NULL,NULL,NULL,'Nzb4Ew/Lm0ob+ooCtJ2D5CHrSa6WlO87hK431EcTcFE=','0isBy13S4aTzaVLF4Cscjhjb9TkuMrO02xo773U7XeY=','aD5/9MoWcCwKzw+aNB+jYmnkMgabbW8mgeluC3q+bY8=',NULL,'915106840209 ','网工一班','2018级','网络工程','915106840209 ','915106840209 ',NULL,NULL,NULL,NULL,NULL,NULL,''),('Teacher','8ae4820a5eb2450d015eb2453b1c0000',1,'data:image/jpeg;base64,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','1996-08-05 00:00:00','男','盛夏白瓷梅子湯，碎冰碰壁噹啷響','2018-08-12 23:47:49','堇岁予安','1PW8FVuWiKdO633zz6l5sD3viW4roAhYsAiOevRiChU=','3dfK2jMaxWRXMOE3k8z9T9uHrprCXzxSRYV5Xc1COic=','R9iHWr3oPS059ybg3qaMB4ojTvryzV2jZ44bksyIlp0=','450981','qq313700046','',NULL,NULL,NULL,NULL,NULL,'刘祥德',NULL,NULL,NULL,1,'\0');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_re`
--

DROP TABLE IF EXISTS `user_role_re`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role_re` (
  `userId` varchar(32) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`),
  KEY `FKlpntrxj3k2touihec453gvgqw` (`roleId`),
  CONSTRAINT `FKctw1d0pbo86kw4vflc7t68w44` FOREIGN KEY (`userId`) REFERENCES `user_info` (`userId`),
  CONSTRAINT `FKlpntrxj3k2touihec453gvgqw` FOREIGN KEY (`roleId`) REFERENCES `role_info` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_re`
--

LOCK TABLES `user_role_re` WRITE;
/*!40000 ALTER TABLE `user_role_re` DISABLE KEYS */;
INSERT INTO `user_role_re` VALUES ('8ae4820a5eb2450d015eb2453b1c0000',100),('2c9d101165284b33016528bda3e50000',102),('5b66d3a66205a80b016205fa8722082a',102),('5b66d3a66205a80b016205fa8722082e',102),('5b66d3a66205a80b016205fa87240861',102),('5b66d3a66205a80b016205fa87250879',102),('5b66d3a66205a80b016205fa8725087a',102),('5b66d3a66205a80b016205fa8725087b',102),('5b66d3a66205a80b016205fa87260892',102),('5b66d3a66205a80b016205fa872b0915',102),('8a80cb8164ff08370164ff08605b0001',102),('8a80cb816505cd61016505d322d80000',102);
/*!40000 ALTER TABLE `user_role_re` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-09 15:30:47
