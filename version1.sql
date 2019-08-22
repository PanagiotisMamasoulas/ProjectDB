-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: erecruit
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `username` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('PaNoSM'),('zisilis9');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antikeim`
--

DROP TABLE IF EXISTS `antikeim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `antikeim` (
  `title` varchar(36) NOT NULL,
  `descr` tinytext,
  `belongs_to` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`title`),
  KEY `ANTIKEIMENO` (`belongs_to`),
  CONSTRAINT `ANTIKEIMENO` FOREIGN KEY (`belongs_to`) REFERENCES `antikeim` (`title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antikeim`
--

LOCK TABLES `antikeim` WRITE;
/*!40000 ALTER TABLE `antikeim` DISABLE KEYS */;
INSERT INTO `antikeim` VALUES ('2D','Level two element, child of Graphics','Graphics'),('3D','Level two element, child of Graphics','Graphics'),('AI','Level one element, child of Computer Science','Computer Science'),('Algorithms','Level one element, child of Computer Science','Computer Science'),('Animation','Level two element, child of Graphics','Graphics'),('Complexity and Efficiency','Level two element, child of Algorithms','Algorithms'),('Computer Science','Root element, no more general antikeim',NULL),('Data structures','Level two element, child of Algorithms','Algorithms'),('Databases','Level one element, child of Computer Science','Computer Science'),('Device connectivity','Level two element, child of Networking','Networking'),('Graphics','Level one element, child of Computer Science','Computer Science'),('Information Retieval','Level three element, child of NLP','NLP'),('Language analysis',' Level three element, child of NLP','NLP'),('Mobile Apps','Level two element, child of Programming','Programming'),('Network setup and maintainance','Level two element, child of Networking','Networking'),('Networking','Level one element, child of Computer Science','Computer Science'),('NLP','Level two element, child of AI','AI'),('NoSQL DBs','Level two element, child of Databases','Databases'),('Object-Oriented DBs','Level two element, child of Databases','Databases'),('Programming','Level one element, child of Computer Science','Computer Science'),('Relational DBs','Level two element, child of Databases','Databases'),('Robotics','Level two element, child of AI','AI'),('Web Programming','Level two element, child of Programming','Programming');
/*!40000 ALTER TABLE `antikeim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applies`
--

DROP TABLE IF EXISTS `applies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `applies` (
  `cand_usrname` varchar(12) NOT NULL,
  `job_id` int(4) NOT NULL,
  PRIMARY KEY (`cand_usrname`,`job_id`),
  KEY `APPL_JOB` (`job_id`),
  CONSTRAINT `APPL_CAND` FOREIGN KEY (`cand_usrname`) REFERENCES `candidate` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `APPL_JOB` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applies`
--

LOCK TABLES `applies` WRITE;
/*!40000 ALTER TABLE `applies` DISABLE KEYS */;
INSERT INTO `applies` VALUES ('abrown',1),('zazahir23',8),('liagourma',10),('abrown',11),('mnikol',11),('lionarF',12),('zazahir23',12);
/*!40000 ALTER TABLE `applies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `candidate` (
  `username` varchar(12) NOT NULL,
  `bio` text NOT NULL,
  `sistatikes` varchar(35) DEFAULT NULL,
  `certificates` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `CAND_USER` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('abrown','Andrew has a strong theoretical background in Algorithms and Data Stuctures and has worked for more than a decade in a software house that specializes in high performance data management. He is well skilled in high complexity schemes and heavy load memory management.','lettersscannedMcBr.pdf','degrees-cert.pdf'),('cleogeo','Cleomenis is a secodary education graduate who has long work experience in web programming technologies (has worked for than 25 years in the field). He has been also certified as a CISCO security expert (CCIE Security) and an IT project manager (PMI Project Management Professional and Project Management Professional).','RecLetters.pdf','certifALL.pdf'),('liagourma','Mrs Liagkoumi has a long experience in NLP and more specifically Information Retrieval and has also long research background on both areas. In addition she has worked on large coprus datasets and data visualization algorithms.','lettersLiagk.pdf','trainingLiagk.pdf'),('lionarF','Freddy is an experienced web programmer but has also worked on mobile apps development the last 5 years. He is a freelancer and can work from a distance. He can also manage 2d graphics and has long experience with DB scripting (My SQL, MariaDB, MS SQL Server and Oracle.','LionFr_letters.pdf','LionFR_cert.pdf'),('mnikol','Mr Nikolopoulos holds a Computer Science diploma and an MSc and has long work experience in AI applications as well as Robotics. He has also managed large R&D projects in these domains and has teaching and research experience as well. Please refer to his referral letters for more details.','referralLetNikol.pdf','degreesAndCertNikol.pdf'),('zazahir23','Mr Mobasher is a highly skilled web programmer who also has experience in 2d and 3d graphics generation as well as animation rendering. Moreover he has long experience with design, development and administration of large scale DBs, mostly relational.','Mobasher_rec.pdf','Mobasher-certif.pdf');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insCand` AFTER INSERT ON `candidate` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','Candidate');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upCand` AFTER UPDATE ON `candidate` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','Candidate');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delCand` AFTER DELETE ON `candidate` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','Candidate');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `degree` (
  `titlos` varchar(50) NOT NULL,
  `idryma` varchar(40) NOT NULL,
  `bathmida` enum('LYKEIO','UNIV','MASTER','PHD') DEFAULT NULL,
  PRIMARY KEY (`titlos`,`idryma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES ('Advanced Rendering Techniques','Delft University of Technology','MASTER'),('Artificial Intelligence',' Cambrigde University','MASTER'),('Big Data and Analytics',' Imperial College London','MASTER'),('Big Data Structures and Algorithms','Technical University of Denmark','MASTER'),('Computer and Infromatics Eng.',' Patras University','UNIV'),('Computer Science and Engineering','Delft University of Technology','UNIV'),('Computer Science Dipl.','Lancster University','UNIV'),('Computer Vision and Modelling','Princeton University','MASTER'),('Data Science Bachelor','Eindhoven University of Technology','UNIV'),('Electrical and Computer Eng.','Metsovio Polytexneio','UNIV'),('Lysium certificate','2nd Lysium of Aigaleo','LYKEIO'),('NLP related high efficiency algorithms','Patras University','PHD'),('PDEng Data Science','Eindhoven University of Technology','PHD');
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etaireia`
--

DROP TABLE IF EXISTS `etaireia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `etaireia` (
  `AFM` char(9) NOT NULL,
  `DOY` varchar(15) DEFAULT NULL,
  `name` varchar(35) NOT NULL DEFAULT 'NO-NAME registered',
  `tel` bigint(16) DEFAULT NULL,
  `street` varchar(15) DEFAULT NULL,
  `num` tinyint(4) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `country` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`AFM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etaireia`
--

LOCK TABLES `etaireia` WRITE;
/*!40000 ALTER TABLE `etaireia` DISABLE KEYS */;
INSERT INTO `etaireia` VALUES ('023451232','A Patras','Typology Ltd',2610231452,'Korinthou',56,'Patra','Greece'),('023453344','C Patras','EXPENDITURE Ltd',2610256321,'Maizonos',123,'Patra','Greece'),('123432211','A Geraka','SoftSol A.E.',2103452133,'Ahepa',44,'Athina','Greece'),('18765549','C Peiraia','Unigram',2103452672,'Karaiskaki',10,'Peiraias','Greece'),('23122345','SF 1234 BG','SocialSc',3200123451,'General Sklevi',35,'Sofia','Bulgaria'),('561234561','GS 35321 L','InCodeWeTrust',1242345612,'Oxford',12,'London','United Kingdom');
/*!40000 ALTER TABLE `etaireia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insEtair` AFTER INSERT ON `etaireia` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','etaireia');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upEtairB` BEFORE UPDATE ON `etaireia` FOR EACH ROW Begin
set new.name = old.name;
set new.DOY = old.DOY;
set new.AFM = old.AFM;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upEtair` AFTER UPDATE ON `etaireia` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','etaireia');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delEtair` AFTER DELETE ON `etaireia` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','etaireia');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `field`
--

DROP TABLE IF EXISTS `field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `field` (
  `title` varchar(36) NOT NULL,
  `descr` tinytext,
  `belongs_to` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`title`),
  KEY `ΤΟΜΕΑΣ` (`belongs_to`),
  CONSTRAINT `ΤΟΜΕΑΣ` FOREIGN KEY (`belongs_to`) REFERENCES `field` (`title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field`
--

LOCK TABLES `field` WRITE;
/*!40000 ALTER TABLE `field` DISABLE KEYS */;
INSERT INTO `field` VALUES ('Computer Architcture','Level one element, child of Computer Engineering','Computer Engineering'),('Computer Engineering','Root element, no more general field',NULL),('Computer vision','Level two element, child of Signal processing','Signal processing'),('Integrated circuits','Level two element, child of Computer Architcture','Computer Architcture'),('Robotics','Level two element, child of Signal processing','Signal processing'),('Signal processing','Level one element, child of Computer Engineering','Computer Engineering'),('VLSI design','Level two element, child of Computer Architcture','Computer Architcture');
/*!40000 ALTER TABLE `field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_degree`
--

DROP TABLE IF EXISTS `has_degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `has_degree` (
  `degr_title` varchar(50) NOT NULL,
  `degr_idryma` varchar(40) NOT NULL,
  `cand_usrname` varchar(12) NOT NULL,
  `etos` year(4) DEFAULT NULL,
  `grade` float(3,1) DEFAULT NULL,
  PRIMARY KEY (`degr_title`,`degr_idryma`,`cand_usrname`),
  KEY `HAS_CAND` (`cand_usrname`),
  CONSTRAINT `HAS_CAND` FOREIGN KEY (`cand_usrname`) REFERENCES `candidate` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `HAS_DEGR` FOREIGN KEY (`degr_title`, `degr_idryma`) REFERENCES `degree` (`titlos`, `idryma`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_degree`
--

LOCK TABLES `has_degree` WRITE;
/*!40000 ALTER TABLE `has_degree` DISABLE KEYS */;
INSERT INTO `has_degree` VALUES ('Artificial Intelligence',' Cambrigde University','liagourma',2008,8.0),('Big Data and Analytics',' Imperial College London','abrown',2006,8.0),('Big Data Structures and Algorithms','Technical University of Denmark','abrown',2008,8.2),('Computer and Infromatics Eng.',' Patras University','liagourma',2003,8.6),('Computer Science and Engineering','Delft University of Technology','zazahir23',2000,8.2),('Computer Science Dipl.','Lancster University','mnikol',2001,8.4),('Computer Vision and Modelling','Princeton University','lionarF',2001,8.5),('Computer Vision and Modelling','Princeton University','mnikol',2006,7.4),('Data Science Bachelor','Eindhoven University of Technology','abrown',2004,9.2),('Electrical and Computer Eng.','Metsovio Polytexneio','lionarF',1998,7.6),('Lysium certificate','2nd Lysium of Aigaleo','cleogeo',1999,19.2),('NLP related high efficiency algorithms','Patras University','liagourma',2013,9.0),('PDEng Data Science','Eindhoven University of Technology','zazahir23',2006,9.0);
/*!40000 ALTER TABLE `has_degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `history` (
  `user` varchar(12) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Success','Not Success') NOT NULL,
  `type` enum('Insert','Update','Delete') DEFAULT NULL,
  `table_name` varchar(20) NOT NULL,
  KEY `HIST_XRISTIS` (`user`),
  CONSTRAINT `HIST_XRISTIS` FOREIGN KEY (`user`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES ('bettyg','2019-07-20 18:35:14','Success','Update','Job'),('bettyg','2019-07-20 18:41:48','Success','Update','Job'),('bettyg','2019-07-20 18:46:02','Success','Update','Job'),('bettyg','2019-07-20 19:09:53','Success','Insert','Job'),('bettyg','2019-07-20 19:10:02','Success','Update','Job'),('abrown','2019-07-20 20:47:25','Success','Update','user'),('abrown','2019-07-20 20:47:25','Success','Update','Candidate'),('abrown','2019-07-20 20:49:56','Success','Update','user'),('abrown','2019-07-20 20:49:57','Success','Update','Candidate'),('bettyg','2019-08-19 18:41:00','Success','Update','Job');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `interview` (
  `cand_username` varchar(12) NOT NULL,
  `recruiter` varchar(12) NOT NULL,
  `int_date` datetime NOT NULL,
  `int_length` time NOT NULL,
  `comm` text,
  `personality` float(2,1) NOT NULL,
  PRIMARY KEY (`cand_username`,`recruiter`),
  KEY `INT_RECR` (`recruiter`),
  CONSTRAINT `INT_CAND` FOREIGN KEY (`cand_username`) REFERENCES `candidate` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `INT_RECR` FOREIGN KEY (`recruiter`) REFERENCES `recruiter` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `interview_chk_1` CHECK (((`personality` <= 5) and (`personality` >= 0)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
INSERT INTO `interview` VALUES ('abrown','n_tri','2019-01-12 08:32:21','00:21:19',NULL,3.4),('abrown','papad','2019-04-14 08:35:41','00:14:19',NULL,3.5),('abrown','pavkie','2019-01-16 12:31:04','00:06:19',NULL,3.8),('cleogeo','n_tri','2019-01-12 09:01:05','00:14:42',NULL,4.2),('cleogeo','papad','2019-04-14 08:00:39','00:00:00','N.S.',1.0),('liagourma','Giankost','2019-01-11 16:10:54','00:12:34','Συστάσεις από τον φίλο msmith',4.3),('liagourma','msmith','2018-11-11 10:32:37','00:08:14','Εξαίρετος νέος με όρεξη για δουλειά και κοινωνικότατος',4.6),('liagourma','pavkie','2019-03-11 11:04:31','00:07:12',NULL,4.8),('lionarF','Giankost','2019-01-11 16:25:14','00:09:09',NULL,3.4),('lionarF','msmith','2018-11-11 10:57:43','00:06:24','Μεγάλη αφοσίοση για δουλειά εξετείας των δύο ανήλικων παιδιών της',4.1),('lionarF','n_tri','2019-01-12 09:16:14','00:12:02','Ήρθε 25 λεπτά αργοπορημένη',2.8),('lionarF','papad','2019-04-14 08:00:32','00:17:02',NULL,3.6),('lionarF','varcon82','2019-01-04 08:00:00','00:10:00','Difficulties in moving abroad',2.2),('mnikol','msmith','2018-11-11 10:44:08','00:11:14','Ντροπαλή και παρά πολύ αγχωμένη',2.9),('mnikol','pavkie','2019-01-16 12:48:26','00:05:49',NULL,3.3),('zazahir23','bettyg','2019-04-13 19:23:12','00:27:32','Ενεργητικός και δραστήριος,παθιασμένος με το αντικείμενο του',4.3),('zazahir23','Giankost','2019-01-11 16:37:29','00:10:01',NULL,4.0),('zazahir23','n_tri','2019-01-12 09:30:37','00:19:22',NULL,3.7),('zazahir23','papad','2019-04-14 08:19:20','00:15:57',NULL,3.6),('zazahir23','varcon82','2019-01-04 08:19:20','00:15:57','Great but not very willing to stick in the compan time scheldude',3.1);
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `salary` float(6,1) DEFAULT NULL,
  `position` varchar(40) DEFAULT NULL,
  `edra` varchar(45) DEFAULT NULL,
  `recruiter` varchar(12) NOT NULL,
  `announce_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `submission_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `JOB_RECR` (`recruiter`),
  CONSTRAINT `JOB_RECR` FOREIGN KEY (`recruiter`) REFERENCES `recruiter` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'2019-01-01',1800.0,'data analyst','Patra, Greece','n_tri','2018-07-13 00:00:00','2018-12-20'),(2,'2019-02-01',1450.0,'web programmer','Patra, Greece','n_tri','2018-07-13 00:00:00','2019-01-10'),(3,'2019-02-01',2100.0,'mobile app developer','Patra, Greece','n_tri','2018-10-24 00:00:00','2019-01-12'),(4,'2018-12-25',2700.0,'NLP expert','Peiraias, Greece','msmith','2018-10-10 00:00:00','2018-11-10'),(5,'2019-03-01',2100.0,'Graphics designer','Peiraias, Greece','msmith','2018-10-10 00:00:00','2019-02-01'),(6,'0201-03-01',2300.0,'Visualization expert','Peiraias, Greece','Giankost','2018-10-20 00:00:00','2019-01-10'),(7,'2019-05-01',1850.0,'web and mobile app programmer','Athina, Greece','papad','2018-11-20 00:00:00','2019-04-12'),(8,'2019-05-01',1600.0,'graphics expert','Athina, Greece','bettyg','2018-11-20 00:00:00','2019-04-12'),(9,'2019-05-01',1850.0,'DB expert','Athina, Greece','papad','2018-11-20 00:00:00','2019-04-12'),(10,'2019-04-01',2100.0,'AI expert','Sofia, Bulgaria','pavkie','2018-11-21 00:00:00','2019-03-10'),(11,'2019-02-01',2600.0,'Algorithmic efficiency expert','Sofia, Bulgaria','pavkie','2018-11-01 00:00:00','2019-01-16'),(12,'2019-03-01',2800.0,'web and media programmer','Oxford, London','varcon82','2018-11-01 00:00:00','2019-01-03'),(15,'2019-05-01',1542.0,'Hello There','asfacvaw','bettyg','2019-07-20 00:00:00','2019-08-20');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insJob` AFTER INSERT ON `job` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','Job');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upJob` AFTER UPDATE ON `job` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','Job');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delJob` AFTER DELETE ON `job` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','Job');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `languages` (
  `candid` varchar(12) NOT NULL,
  `lang` set('EN','FR','SP','GR') NOT NULL,
  PRIMARY KEY (`candid`,`lang`),
  CONSTRAINT `CAND_LANG` FOREIGN KEY (`candid`) REFERENCES `candidate` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES ('abrown','EN,FR,SP'),('cleogeo','EN,SP,GR'),('liagourma','EN,GR'),('lionarF','EN,FR'),('mnikol','FR,GR'),('zazahir23','EN,GR');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `project` (
  `candid` varchar(12) NOT NULL,
  `num` tinyint(4) NOT NULL,
  `descr` text,
  `url` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`candid`,`num`),
  CONSTRAINT `PROJ_CAND` FOREIGN KEY (`candid`) REFERENCES `candidate` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('abrown',1,'Minimal examples of data structures and algorithms in Python','https://github.com/a_brown/algorithms'),('abrown',2,'Interactive Online Platform that Visualizes Algorithms from Code','https://github.com/a_brown/algorithm-visualizer'),('abrown',3,'Repository which contains links and resources on different topics of Computer Science','https://github.com/a_brown/AlgoWiki'),('liagourma',1,'WebGL2 powered geospatial visualization layers. offers an extensive catalog of pre-packaged visualization \"layers\", including ScatterplotLayer, ArcLayer, TextLayer, GeoJsonLayer, etc. The input to a layer is usually an array of JSON objects. Each layer offers highly-flexible API to customize how the data should be rendered.','https://github.com/liagk0R/deck.gl'),('liagourma',2,'Messy datasets? Missing values? missingno provides a small toolset of flexible and easy-to-use missing data visualizations and utilities that allows a quick visual summary of the completeness (or lack thereof) of the dataset.','https://github.com/liagk0R/missingno'),('liagourma',3,'Repository to track the progress in Natural Language Processing (NLP), including the datasets and the current state-of-the-art for the most common NLP tasks','https://github.com/liagk0R/NLP-progress'),('liagourma',4,'Supporting Rapid Prototyping with a Toolkit (incl. Datasets and Neural Network Layers)','https://github.com/liagk0R/PyTorch-NLP'),('lionarF',1,'HTML5 Mobile App UI templates created using Intel App Framework.','https://github.com/lionarGF/appframework-templates'),('lionarF',2,'Mobile Version of Travel sample App using Couchbase Lite 2.0.','https://github.com/lionarFG/mobile-travel-sample'),('lionarF',3,'Appium Demo App with clearly defined Page Object Pattern for React Native Mobile App. Test Language - Javascript.','https://github.com/lionarFG/Appium-Page-Object-Model-Demo'),('mnikol',1,'Essential Cheat Sheets for deep learning and machine learning researchers','https://github.com/nikolo0p/cheatsheets-ai'),('mnikol',2,'Python sample codes for robotics algorithms.','https://github.com/nikolo0p/PythonRobotics'),('zazahir23',1,'Go Graphics - 2D rendering in Go with a simple API.','https://github.com/mob@s/gg'),('zazahir23',2,'Draco is a library for compressing and decompressing 3D geometric meshes and point clouds. It is intended to improve the storage and transmission of 3D graphics.','https://github.com/mob@s/draco'),('zazahir23',3,'Data Discovery and Lineage for Big Data Ecosystem.','https://github.com/linkedin/WhereHows');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruiter`
--

DROP TABLE IF EXISTS `recruiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recruiter` (
  `username` varchar(12) NOT NULL,
  `exp_years` tinyint(4) DEFAULT NULL,
  `firm` char(9) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `RECR_ETAIREIA` (`firm`),
  CONSTRAINT `RECR_ETAIREIA` FOREIGN KEY (`firm`) REFERENCES `etaireia` (`AFM`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RECR_USER` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruiter`
--

LOCK TABLES `recruiter` WRITE;
/*!40000 ALTER TABLE `recruiter` DISABLE KEYS */;
INSERT INTO `recruiter` VALUES ('bettyg',6,'123432211'),('Giankost',8,'023451232'),('msmith',4,'18765549'),('n_tri',8,'023451232'),('papad',5,'123432211'),('pavkie',10,'23122345'),('varcon82',2,'561234561');
/*!40000 ALTER TABLE `recruiter` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insRec` AFTER INSERT ON `recruiter` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','recruiter');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upRec` AFTER UPDATE ON `recruiter` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','recruiter');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delRec` AFTER DELETE ON `recruiter` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','recruiter');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `requires`
--

DROP TABLE IF EXISTS `requires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requires` (
  `job_id` int(4) NOT NULL,
  `antikeim_title` varchar(36) NOT NULL,
  PRIMARY KEY (`job_id`,`antikeim_title`),
  KEY `REQ_ANTIK` (`antikeim_title`),
  CONSTRAINT `REQ_ANTIK` FOREIGN KEY (`antikeim_title`) REFERENCES `antikeim` (`title`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `REQ_JOB` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requires`
--

LOCK TABLES `requires` WRITE;
/*!40000 ALTER TABLE `requires` DISABLE KEYS */;
INSERT INTO `requires` VALUES (8,'2D'),(8,'3D'),(15,'3D'),(4,'AI'),(10,'AI'),(1,'Algorithms'),(6,'Algorithms'),(11,'Algorithms'),(3,'Animation'),(12,'Animation'),(15,'Animation'),(11,'Complexity and Efficiency'),(15,'Data structures'),(1,'Databases'),(9,'Databases'),(5,'Graphics'),(6,'Graphics'),(3,'Mobile Apps'),(7,'Mobile Apps'),(12,'Mobile Apps'),(4,'NLP'),(9,'NoSQL DBs'),(2,'Programming'),(6,'Programming'),(2,'Web Programming'),(7,'Web Programming'),(12,'Web Programming');
/*!40000 ALTER TABLE `requires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specializes`
--

DROP TABLE IF EXISTS `specializes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `specializes` (
  `firm_title` char(9) NOT NULL,
  `field_title` varchar(36) NOT NULL,
  PRIMARY KEY (`field_title`,`firm_title`),
  KEY `SPEC_ETAIREIA` (`firm_title`),
  CONSTRAINT `SPEC_ETAIREIA` FOREIGN KEY (`firm_title`) REFERENCES `etaireia` (`AFM`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SPEC_FIELD` FOREIGN KEY (`field_title`) REFERENCES `field` (`title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specializes`
--

LOCK TABLES `specializes` WRITE;
/*!40000 ALTER TABLE `specializes` DISABLE KEYS */;
INSERT INTO `specializes` VALUES ('023451232','VLSI design'),('023453344','Integrated circuits'),('123432211','Robotics'),('18765549','Integrated circuits'),('18765549','Signal processing'),('23122345','Computer vision'),('561234561','Computer vision'),('561234561','VLSI design');
/*!40000 ALTER TABLE `specializes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `username` varchar(12) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(35) NOT NULL,
  `reg_date` datetime DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('abrown','w1lcoxon','Andrew','McBrown','2018-01-27 00:00:00','andrewbr@yahoo.com'),('bettyg','jUn38@','Betty','Georgiou','2017-04-12 12:23:10','georb@softsol.gr'),('cleogeo','upL34r','Cleomenis','Georgiadis','2018-02-13 12:23:34','cleom17@gmail.com'),('Giankost','jUn38@','Giannis','Kostoglou','2018-02-23 11:08:15','kostog@typology.gr'),('liagourma','sionpass','Maria','Liagkoumi','2018-05-22 17:03:01','mliagkr@gmail.com'),('lionarF','erg2378','Freddy','Lionar','2018-10-07 20:09:10','Lionarfre@ezra.co.uk'),('mnikol','m@n0lis','Manolis','Nikopoloulos','2017-11-08 21:07:12','nikolp@gmail.com'),('msmith','we3wd','Mike','Smith','2017-06-23 13:12:34','smithm@unigram.com'),('n_tri','grt12wX','Nikol','Triantou','2018-03-08 20:10:20','triantou@typology.gr'),('PaNoSM','19981998','Panagiotis','Mamasoulas','2019-07-19 18:12:00','panosadmin@gmail.com'),('papad','pdfr45t','Kostas','Papadatos','2018-11-17 23:10:08','georb@softsol.gr'),('pavkie','julie79','Pavel','Skiev','2017-03-25 11:23:45','pskiev@social-sc.bg'),('varcon82','gotop@s$','Nick','Varcon','2018-12-03 18:12:39','varcni@incode.com'),('zazahir23','zoolhger','Ahmet','Mobasher-Hirs','2017-05-11 14:08:23','ahmetTech@yahoo.com'),('zisilis9','DTramp','Zisimos','Tramparis','2019-07-19 18:13:00','zisisadmin@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insUser` AFTER INSERT ON `user` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Insert','user');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upUser` AFTER UPDATE ON `user` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Update','user');
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delUser` AFTER DELETE ON `user` FOR EACH ROW BEGIN
Insert into history (user,status,type,table_name) values
(@curUser,'Success','Delete','user');
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

-- Dump completed on 2019-08-20 18:46:57
