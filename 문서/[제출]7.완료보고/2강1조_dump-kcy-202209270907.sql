-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: ydmariadbinstance.cmnybkzgfijn.ap-northeast-2.rds.amazonaws.com    Database: kcy
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.8-MariaDB-log

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
-- Table structure for table `aca_id_seq`
--

DROP TABLE IF EXISTS `aca_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aca_id_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aca_id_seq`
--

LOCK TABLES `aca_id_seq` WRITE;
/*!40000 ALTER TABLE `aca_id_seq` DISABLE KEYS */;
INSERT INTO `aca_id_seq` VALUES (710,1,9223372036854775806,1,1,0,0,0);
/*!40000 ALTER TABLE `aca_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_member_seq`
--

DROP TABLE IF EXISTS `class_member_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_member_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_member_seq`
--

LOCK TABLES `class_member_seq` WRITE;
/*!40000 ALTER TABLE `class_member_seq` DISABLE KEYS */;
INSERT INTO `class_member_seq` VALUES (25000,1,9223372036854775806,1000,1,1000,0,0);
/*!40000 ALTER TABLE `class_member_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_no_seq`
--

DROP TABLE IF EXISTS `class_no_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_no_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_no_seq`
--

LOCK TABLES `class_no_seq` WRITE;
/*!40000 ALTER TABLE `class_no_seq` DISABLE KEYS */;
INSERT INTO `class_no_seq` VALUES (13000,1,9223372036854775806,1000,1,1000,0,0);
/*!40000 ALTER TABLE `class_no_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluation_seq`
--

DROP TABLE IF EXISTS `evaluation_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluation_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation_seq`
--

LOCK TABLES `evaluation_seq` WRITE;
/*!40000 ALTER TABLE `evaluation_seq` DISABLE KEYS */;
INSERT INTO `evaluation_seq` VALUES (2000,1,9223372036854775806,1000,1,1000,0,0);
/*!40000 ALTER TABLE `evaluation_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_admins`
--

DROP TABLE IF EXISTS `k_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_admins` (
  `admin_rank` varchar(100) DEFAULT NULL,
  `admin_job` varchar(100) DEFAULT NULL,
  `admin_id` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`),
  CONSTRAINT `R_92` FOREIGN KEY (`admin_id`) REFERENCES `k_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_admins`
--

LOCK TABLES `k_admins` WRITE;
/*!40000 ALTER TABLE `k_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `k_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_alarm`
--

DROP TABLE IF EXISTS `k_alarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_alarm` (
  `sch_id` varchar(100) NOT NULL,
  `alarm_target` varchar(100) DEFAULT NULL,
  `alarm_type` varchar(100) DEFAULT NULL,
  `alarm_day` date DEFAULT NULL,
  `alarm_hour` date DEFAULT NULL,
  `alarm_content` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`sch_id`),
  CONSTRAINT `R_71` FOREIGN KEY (`sch_id`) REFERENCES `k_schedule` (`sch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_alarm`
--

LOCK TABLES `k_alarm` WRITE;
/*!40000 ALTER TABLE `k_alarm` DISABLE KEYS */;
/*!40000 ALTER TABLE `k_alarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_attendance`
--

DROP TABLE IF EXISTS `k_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_attendance` (
  `stu_id` varchar(100) DEFAULT NULL,
  `attn_type` varchar(100) DEFAULT NULL,
  `class_id` varchar(100) DEFAULT NULL,
  `attn_date` date DEFAULT NULL,
  KEY `R_113` (`stu_id`),
  KEY `k_attendance_FK` (`class_id`),
  CONSTRAINT `R_113` FOREIGN KEY (`stu_id`) REFERENCES `k_students` (`stu_id`),
  CONSTRAINT `k_attendance_FK` FOREIGN KEY (`class_id`) REFERENCES `k_class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_attendance`
--

LOCK TABLES `k_attendance` WRITE;
/*!40000 ALTER TABLE `k_attendance` DISABLE KEYS */;
INSERT INTO `k_attendance` VALUES ('11123456','1','CL11000','2022-09-25'),('00000000','2','CL11000','2022-09-25'),('01119665','1','CL11000','2022-09-25'),('02103984','1','CL11000','2022-09-25'),('03159576','2','CL11000','2022-09-25'),('04117070','1','CL11000','2022-09-25'),('04165954','1','CL11000','2022-09-25'),('06130692','1','CL11000','2022-09-25'),('11123456','1','CL11002','2022-09-26'),('11123456','1','CL11002','2022-09-26'),('11123456','1','CL11000','2022-09-26'),('00000000','2','CL11000','2022-09-26'),('01119665','1','CL11000','2022-09-26'),('02103984','1','CL11000','2022-09-26'),('03159576','1','CL11000','2022-09-26'),('04117070','2','CL11000','2022-09-26'),('04165954','1','CL11000','2022-09-26'),('06130692','1','CL11000','2022-09-26');
/*!40000 ALTER TABLE `k_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_bills`
--

DROP TABLE IF EXISTS `k_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_bills` (
  `bill_id` varchar(100) NOT NULL,
  `bill_year` int(11) DEFAULT NULL,
  `bill_sem` int(11) DEFAULT NULL,
  `bill_amount` int(11) DEFAULT NULL,
  `major_id` varchar(100) DEFAULT NULL,
  `bill_type` varchar(100) DEFAULT 'b',
  `bill_b` varchar(100) DEFAULT NULL,
  `bill_bplus` varchar(100) DEFAULT NULL,
  `bill_s1` varchar(100) DEFAULT NULL,
  `bill_s2` varchar(100) DEFAULT NULL,
  `bill_s3` varchar(100) DEFAULT NULL,
  `bill_s4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `R_93` (`major_id`),
  CONSTRAINT `R_93` FOREIGN KEY (`major_id`) REFERENCES `k_major` (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_bills`
--

LOCK TABLES `k_bills` WRITE;
/*!40000 ALTER TABLE `k_bills` DISABLE KEYS */;
INSERT INTO `k_bills` VALUES ('202211010',2022,1,1000000,'1010','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211011',2022,1,1000000,'1011','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211012',2022,1,1000000,'1012','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211013',2022,1,1000000,'1013','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211014',2022,1,1000000,'1014','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211015',2022,1,1000000,'1015','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211016',2022,1,1000000,'1016','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211017',2022,1,1000000,'1017','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211018',2022,1,1000000,'1018','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211019',2022,1,1000000,'1019','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211020',2022,1,1000000,'1020','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211021',2022,1,1000000,'1021','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211022',2022,1,1000000,'1022','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211023',2022,1,1000000,'1023','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211025',2022,1,1000000,'1025','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202211026',2022,1,1000000,'1026','b','A22-106','A22-115','A22-183','A22-184','A22-185','A22-186'),('202221010',2022,2,1000000,'1010','b','A22-149','A22-154','A22-187','A22-188','A22-189','A22-190'),('202221011',2022,2,1500000,'1011','b','A22-149','A22-154','A22-187','A22-188','A22-189','A22-190'),('202221012',2022,2,3000000,'1012','b','A22-149','A22-154','A22-187','A22-188','A22-189','A22-190');
/*!40000 ALTER TABLE `k_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_career_d`
--

DROP TABLE IF EXISTS `k_career_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_career_d` (
  `career_h_id` varchar(100) DEFAULT NULL,
  `career_q_result` varchar(100) DEFAULT NULL,
  `career_q_id` varchar(100) DEFAULT NULL,
  KEY `R_108` (`career_h_id`),
  KEY `k_career_d_FK` (`career_q_id`),
  CONSTRAINT `R_108` FOREIGN KEY (`career_h_id`) REFERENCES `k_career_h` (`career_h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_career_d`
--

LOCK TABLES `k_career_d` WRITE;
/*!40000 ALTER TABLE `k_career_d` DISABLE KEYS */;
INSERT INTO `k_career_d` VALUES ('3001','평소에도 관심이 있는 분야였고 더욱 깊게 배우고싶어서 들어오게 되었습니다.','4005'),('3001','네 작게나마 독학으로 공부를 했습니다.','4006'),('3001','Vue쪽에 대한 수업을 듣고싶습니다. ','4007'),('3001','원페이지로 해결하는 기능이 좋은거같아 배우고싶습니다.','4008'),('3001','웹개발자 쪽으로 생각하고있습니다.','4009'),('3001','취업에 대해 상담드리고싶습니다.','4010'),('2556','평소에도 관심이 있는 분야였고 더욱 깊게 배우고싶어서 들어오게 되었습니다.','4005'),('2556','네 작게나마 독학으로 공부를 했습니다.','4006'),('2556','Spring Bood쪽에 대한 수업을 듣고싶습니다. ','4007'),('2556','원페이지로 해결하는 기능이 좋은거같아 배우고싶습니다.','4008'),('2556','웹개발자 쪽으로 생각하고있습니다.','4009'),('2556','취업에 대해 상담드리고싶습니다.','4010'),('2557','평소에도 관심이 있는 분야였고 더욱 깊게 배우고싶어서 들어오게 되었습니다.','4005'),('2557','네 작게나마 독학으로 공부를 했습니다.','4006'),('2557','Ajax쪽에 대한 수업을 듣고싶습니다. ','4007'),('2557','원페이지로 해결하는 기능이 좋은거같아 배우고싶습니다.','4008'),('2557','웹개발자 쪽으로 생각하고있습니다.','4009'),('2557','취업에 대해 상담드리고싶습니다.','4010'),('2558','평소에도 관심이 있는 분야였고 더욱 깊게 배우고싶어서 들어오게 되었습니다.','4005'),('2558','네 작게나마 독학으로 공부를 했습니다.','4006'),('2558','JAVA쪽에 대한 수업을 듣고싶습니다. ','4007'),('2558','원페이지로 해결하는 기능이 좋은거같아 배우고싶습니다.','4008'),('2558','웹개발자 쪽으로 생각하고있습니다.','4009'),('2558','취업에 대해 상담드리고싶습니다.','4010'),('2559','평소에도 관심이 있는 분야였고 더욱 깊게 배우고싶어서 들어오게 되었습니다.','4005'),('2559','네 작게나마 독학으로 공부를 했습니다.','4006'),('2559','C++쪽에 대한 수업을 듣고싶습니다. ','4007'),('2559','원페이지로 해결하는 기능이 좋은거같아 배우고싶습니다.','4008'),('2559','웹개발자 쪽으로 생각하고있습니다.','4009'),('2559','취업에 대해 상담드리고싶습니다.','4010'),('2885','평소에도 관심이 있는 분야입니다.','4005'),('2885','네 작게나마 독학으로 공부를 했습니다.','4006'),('2885','코딩쪽에 대한 수업을 듣고싶습니다. ','4007'),('2885','원페이지로 해결하는 기능이 좋은거같아 배우고싶습니다.','4008'),('2885','웹개발자 쪽으로 생각하고있습니다.','4009'),('2885','취업에 대해 상담드리고싶습니다.','4010'),('6005','예 만드는것을 한번 도전해보고싶었습니다','3005'),('6005','비전에 대해 많이 검색해보았습니다','3006'),('6005','없습니다','3009'),('6005','진로상담을 원합니다','3010'),('7001','억지로죽지못해들어옴','3005'),('7001','ㄴㄴ','3006'),('7001','먹고자고놀고싶','3009'),('7001','걍뭐 .. ','3010'),('8001','예 만드는것을 한번 도전해보고싶었습니다','3005'),('8001','정확히는 잘 모르겠습니다','3006'),('8001','아직 정해놓은게 없습니다','3009'),('8001','앞으로의 진로와 전반적인 학과에 대해 알고싶습니다','3010'),('8002','예 만드는것을 한번 도전해보고싶었습니다','3005'),('8002','예 만드는것을 한번 도전해보고싶습니다','3006'),('8002','예 만드는것을 한번 도전해보고싶습니다','3009'),('8002','예 만드는것을 한번 도전해보고싶습니다','3010'),('9001','123','3005'),('9001','123','3006'),('9001','123','3009'),('9001','123','3010'),('10001','22','3005'),('10001','222','3006'),('10001','222','3009'),('10001','222','3010');
/*!40000 ALTER TABLE `k_career_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_career_h`
--

DROP TABLE IF EXISTS `k_career_h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_career_h` (
  `career_h_id` varchar(100) NOT NULL,
  `stu_id` varchar(100) DEFAULT NULL,
  `career_h_date` date DEFAULT current_timestamp(),
  `mtr_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`career_h_id`),
  KEY `R_63` (`stu_id`),
  KEY `k_career_h_FK` (`mtr_id`),
  CONSTRAINT `R_63` FOREIGN KEY (`stu_id`) REFERENCES `k_students` (`stu_id`),
  CONSTRAINT `k_career_h_FK` FOREIGN KEY (`mtr_id`) REFERENCES `k_mentoring` (`mtr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_career_h`
--

LOCK TABLES `k_career_h` WRITE;
/*!40000 ALTER TABLE `k_career_h` DISABLE KEYS */;
INSERT INTO `k_career_h` VALUES ('10001','11123456','2022-09-26','11001'),('2556','01119665','2022-09-06','2222'),('2557','01103888','2022-09-06','2003'),('2558','00149383','2022-09-06','2005'),('2559','01132538','2022-09-06','2004'),('2885','test123','2022-09-06','3002'),('3001','test123','2022-09-06','4001'),('4001','test123','2022-09-07','5001'),('4002','test123','2022-09-07','5002'),('6005','02103984','2022-09-14','7005'),('7001','02116466','2022-09-20','8001'),('8001','02116466','2022-09-22','9001'),('8002','18103786','2022-09-22','9002'),('9001','02116466','2022-09-23','10001');
/*!40000 ALTER TABLE `k_career_h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_career_list`
--

DROP TABLE IF EXISTS `k_career_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_career_list` (
  `career_list_id` varchar(100) NOT NULL,
  `prof_id` varchar(100) DEFAULT NULL,
  `career_list_date` date DEFAULT current_timestamp(),
  PRIMARY KEY (`career_list_id`),
  KEY `R_61` (`prof_id`),
  CONSTRAINT `R_61` FOREIGN KEY (`prof_id`) REFERENCES `k_professors` (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_career_list`
--

LOCK TABLES `k_career_list` WRITE;
/*!40000 ALTER TABLE `k_career_list` DISABLE KEYS */;
INSERT INTO `k_career_list` VALUES ('2022','testprof','2022-08-30'),('3003','21212121','2022-09-13');
/*!40000 ALTER TABLE `k_career_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_career_q`
--

DROP TABLE IF EXISTS `k_career_q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_career_q` (
  `career_q_id` varchar(100) NOT NULL,
  `career_q_content` varchar(500) DEFAULT NULL,
  `career_list_id` varchar(100) DEFAULT NULL,
  `career_q_yn` varchar(100) DEFAULT 'Y',
  PRIMARY KEY (`career_q_id`),
  KEY `k_career_q_FK` (`career_list_id`),
  CONSTRAINT `R_105` FOREIGN KEY (`career_list_id`) REFERENCES `k_career_list` (`career_list_id`),
  CONSTRAINT `k_career_q_FK` FOREIGN KEY (`career_list_id`) REFERENCES `k_career_list` (`career_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_career_q`
--

LOCK TABLES `k_career_q` WRITE;
/*!40000 ALTER TABLE `k_career_q` DISABLE KEYS */;
INSERT INTO `k_career_q` VALUES ('3005','본 학과에 들어오게된 계기가 있습니까?','3003','Y'),('3006','본 학과에 대해 알고 지원하셨습니까?','3003','Y'),('3007','필수로 듣고 싶은 수업이 있습니까? 있다면 무엇입니까?','3003','N'),('3008','이 수업을 듣고 싶은 이유가 있습니까?','3003','N'),('3009','희망하는 회사 또는 분야가 있습니까?','3003','Y'),('3010','어떠한 주제의 상담을 원하십니까? ex)취업 or 전과에 대해서 상담을 원합니다','3003','Y'),('4005','본 학과에 들어오게된 계기가 있습니까?','2022','Y'),('4006','본 학과에 대해 알고 지원하셨습니까?','2022','Y'),('4007','필수로 듣고 싶은 수업이 있습니까? 있다면 무엇입니까?','2022','N'),('4008','이 수업을 듣고 싶은 이유가 있습니까?','2022','N'),('4009','희망하는 회사 또는 분야가 있습니까?','2022','Y'),('4010','어떠한 주제의 상담을 원하십니까? ex)취업 or 전과에 대해서 상담을 원합니다','2022','Y');
/*!40000 ALTER TABLE `k_career_q` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_class`
--

DROP TABLE IF EXISTS `k_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_class` (
  `class_id` varchar(100) NOT NULL,
  `course_id` varchar(100) DEFAULT NULL,
  `prof_id` varchar(100) DEFAULT NULL,
  `class_to` int(11) DEFAULT NULL,
  `class_year` int(11) DEFAULT NULL,
  `class_sem` int(11) DEFAULT NULL,
  `class_syl` varchar(100) DEFAULT NULL,
  `class_ck` int(11) DEFAULT 0,
  `class_syl_original` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `R_132` (`course_id`),
  KEY `R_133` (`prof_id`),
  CONSTRAINT `R_132` FOREIGN KEY (`course_id`) REFERENCES `k_course` (`course_id`),
  CONSTRAINT `R_133` FOREIGN KEY (`prof_id`) REFERENCES `k_professors` (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_class`
--

LOCK TABLES `k_class` WRITE;
/*!40000 ALTER TABLE `k_class` DISABLE KEYS */;
INSERT INTO `k_class` VALUES ('CL11000','It1005','21212121',20,2022,1,'454b3d96-4f2e-4051-b4cb-cb9e726cb6c0_03_5_제어문 문제.txt',8,NULL),('CL11001','It1006','21212121',20,2022,1,'620f7483-086d-4521-9397-fce0a3ea6115_03_5_제어문 문제.txt',1,NULL),('CL11002','It1006','21212121',20,2022,1,'91f2ab78-1b48-44c1-a92d-92b9a85c6518_03_5_제어문 문제.txt',1,NULL),('CL11003','It1007','08268070',20,2022,1,'bb0f8f09-d06d-4ef0-bbe2-3972b09a5784_03_5_제어문 문제.txt',15,NULL),('CL11004','It1008','08268070',20,2022,1,'239eff2e-ee56-4e95-ac34-a25a9bd2cc1a_03_5_제어문 문제.txt',10,NULL),('CL11005','It1000','13258522',20,2022,1,'c38c853e-a01a-49a1-934b-1cc503d45dd9_03_5_제어문 문제.txt',11,NULL),('CL11006','It1003','13258522',20,2022,1,'7d213608-06f8-41b5-a454-54592a2cc6ec_03_5_제어문 문제.txt',20,NULL),('CL11007','It1019','14250168',30,2022,1,'27685f36-945a-47a1-98f7-def0a2435e1a_03_5_제어문 문제.txt',30,NULL),('CL11008','It1009','14250168',20,2022,1,'ce21709a-2253-4251-8063-42bee5f16b6e_03_5_제어문 문제.txt',15,NULL),('CL11009','It1001','97214089',20,2022,1,'4dba9a51-3e85-48d0-b7cd-fc91e2f67d2e_03_5_제어문 문제.txt',9,NULL),('CL11010','It1009','97214089',20,2022,1,'e5a20f4b-6ac5-439a-bdd8-aa2630ece6d7_03_5_제어문 문제.txt',8,NULL),('CL12009','De1029','01158956',20,2022,1,'2aff7dc0-d98d-45ca-a345-9ea3b4c1e383_10_Nameserver.pdf',10,NULL);
/*!40000 ALTER TABLE `k_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_class_member`
--

DROP TABLE IF EXISTS `k_class_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_class_member` (
  `class_id` varchar(100) DEFAULT NULL,
  `stu_id` varchar(100) DEFAULT NULL,
  `class_member_id` varchar(100) NOT NULL,
  PRIMARY KEY (`class_member_id`),
  KEY `R_32` (`class_id`),
  KEY `R_112` (`stu_id`),
  CONSTRAINT `R_112` FOREIGN KEY (`stu_id`) REFERENCES `k_users` (`user_id`),
  CONSTRAINT `R_32` FOREIGN KEY (`class_id`) REFERENCES `k_class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_class_member`
--

LOCK TABLES `k_class_member` WRITE;
/*!40000 ALTER TABLE `k_class_member` DISABLE KEYS */;
INSERT INTO `k_class_member` VALUES ('CL11000','11123456','CMI22000'),('CL11001','11123456','CMI22002'),('CL11000','00000000','CMI23000'),('CL11000','01119665','CMI23001'),('CL11000','02103984','CMI23002'),('CL11000','03159576','CMI23003'),('CL11000','04117070','CMI23004'),('CL11000','04165954','CMI23005'),('CL11000','06130692','CMI23006'),('CL11003','96141370','CMI24000'),('CL11002','11123456','CMI24001'),('CL11005','11123456','CMI24002');
/*!40000 ALTER TABLE `k_class_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_class_notice`
--

DROP TABLE IF EXISTS `k_class_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_class_notice` (
  `class_notice_no` int(11) DEFAULT NULL,
  `class_id` varchar(100) DEFAULT NULL,
  `class_notice_title` varchar(500) DEFAULT NULL,
  `class_notice_date` date DEFAULT NULL,
  `class_notice_hit` int(11) DEFAULT NULL,
  `class_notice_file` varchar(500) DEFAULT NULL,
  `class_notice_id` varchar(100) NOT NULL,
  `class_notice_type` varchar(100) DEFAULT NULL,
  `class_notice_con` varchar(5000) DEFAULT NULL,
  `class_notice_original` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`class_notice_id`),
  KEY `R_42` (`class_id`),
  CONSTRAINT `R_42` FOREIGN KEY (`class_id`) REFERENCES `k_class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_class_notice`
--

LOCK TABLES `k_class_notice` WRITE;
/*!40000 ALTER TABLE `k_class_notice` DISABLE KEYS */;
INSERT INTO `k_class_notice` VALUES (7001,'CL11000','이산수학 공지입니다.','2022-09-26',NULL,'0719eb04-a94c-4ac4-adbd-096ea7f393ea_이산수학.txt','10000','notice','<p><b>공지 내용 숙지하세요.</b></p>','이산수학.txt');
/*!40000 ALTER TABLE `k_class_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_class_reg`
--

DROP TABLE IF EXISTS `k_class_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_class_reg` (
  `class_id` varchar(100) NOT NULL,
  `course_id` varchar(100) DEFAULT NULL,
  `prof_id` varchar(100) DEFAULT NULL,
  `class_to` int(11) DEFAULT NULL,
  `class_year` int(11) DEFAULT NULL,
  `class_sem` int(11) DEFAULT NULL,
  `class_syl` varchar(500) DEFAULT NULL,
  `class_yn` varchar(100) DEFAULT 'n',
  `class_title` varchar(100) DEFAULT NULL,
  `class_syl_original` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  KEY `R_97` (`prof_id`),
  KEY `R_96` (`course_id`),
  CONSTRAINT `R_96` FOREIGN KEY (`course_id`) REFERENCES `k_course` (`course_id`),
  CONSTRAINT `R_97` FOREIGN KEY (`prof_id`) REFERENCES `k_professors` (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_class_reg`
--

LOCK TABLES `k_class_reg` WRITE;
/*!40000 ALTER TABLE `k_class_reg` DISABLE KEYS */;
INSERT INTO `k_class_reg` VALUES ('CL11000','It1005','21212121',20,2022,1,'454b3d96-4f2e-4051-b4cb-cb9e726cb6c0_03_5_제어문 문제.txt','y','강좌 신청합니다(컴공과)','03_5_제어문 문제.txt'),('CL11001','It1006','21212121',20,2022,1,'620f7483-086d-4521-9397-fce0a3ea6115_03_5_제어문 문제.txt','y','강좌 신청합니다(컴공과)','03_5_제어문 문제.txt'),('CL11002','It1006','21212121',20,2022,1,'91f2ab78-1b48-44c1-a92d-92b9a85c6518_03_5_제어문 문제.txt','y','강좌 신청합니다(컴공과)','03_5_제어문 문제.txt'),('CL11003','It1007','08268070',50,2022,1,'bb0f8f09-d06d-4ef0-bbe2-3972b09a5784_03_5_제어문 문제.txt','y','강좌 신청','03_5_제어문 문제.txt'),('CL11004','It1008','08268070',50,2022,1,'239eff2e-ee56-4e95-ac34-a25a9bd2cc1a_03_5_제어문 문제.txt','y','강좌 신청','03_5_제어문 문제.txt'),('CL11005','It1000','13258522',20,2022,1,'c38c853e-a01a-49a1-934b-1cc503d45dd9_03_5_제어문 문제.txt','y','컴퓨터의 개념 학습','03_5_제어문 문제.txt'),('CL11006','It1003','13258522',20,2022,1,'7d213608-06f8-41b5-a454-54592a2cc6ec_03_5_제어문 문제.txt','y','인공지능 입문 1학년','03_5_제어문 문제.txt'),('CL11007','It1019','14250168',30,2022,1,'27685f36-945a-47a1-98f7-def0a2435e1a_03_5_제어문 문제.txt','y','운영체제','03_5_제어문 문제.txt'),('CL11008','It1009','14250168',20,2022,1,'ce21709a-2253-4251-8063-42bee5f16b6e_03_5_제어문 문제.txt','y','강좌 신청','03_5_제어문 문제.txt'),('CL11009','It1001','97214089',20,2022,1,'4dba9a51-3e85-48d0-b7cd-fc91e2f67d2e_03_5_제어문 문제.txt','y','강좌 신청','03_5_제어문 문제.txt'),('CL11010','It1009','97214089',20,2022,1,'e5a20f4b-6ac5-439a-bdd8-aa2630ece6d7_03_5_제어문 문제.txt','y','강좌 신청','03_5_제어문 문제.txt'),('CL12000','It1022','13258522',20,2022,1,'7c37ef0b-c1e8-4e38-b703-7b7a6606e113_강의.txt','n','선형 및 비선형 계산 모델','강의.txt'),('CL12001','It1053','08268070',10,2022,1,'f2a881a4-b156-4962-aa49-e79841f9e7b7_00_운영체제 개요.pdf','n','강좌개설 신청합니다 -컴공과-','00_운영체제 개요.pdf'),('CL12002','It1035','13258522',20,2022,1,'24d13f96-2fc9-44a4-965c-d36c28f90b9c_온라인취업지원서비스 꿈날개.pdf','n','컴파일러','온라인취업지원서비스 꿈날개.pdf'),('CL12003','It1020','08268070',15,2022,1,'72161224-1ce5-4ab1-bc9b-ffc0cfffabb6_net_01.pdf','n','강좌신청합니다 -컴공과-','net_01.pdf'),('CL12004','It1007','14250168',10,2022,1,'7dbc9e16-13f2-478e-b840-e58f78d6c4ed_10_Nameserver.pdf','n','신청합니다','10_Nameserver.pdf'),('CL12005','It1011','14250168',15,2022,1,'fb349a0e-eb5f-4b70-9bbb-0fc0ffa84f4b_10_Nameserver.pdf','n','신청합니다','10_Nameserver.pdf'),('CL12006','It1003','97214089',20,2022,1,'cfa5ac95-7aca-42d5-8e58-8d6c6be322c4_net_01.pdf','n','신청합니다','net_01.pdf'),('CL12007','It1050','97285470',10,2022,1,'66ec43b6-8fda-4ddc-8f01-581b3de90f93_04_filesystem.pdf','n','빨리 허가 해주세요','04_filesystem.pdf'),('CL12008','It1045','97285470',20,2022,1,'650f3a01-1b34-4b98-be52-2d122278008e_09_FTP.pdf','n','신청합니다','09_FTP.pdf'),('CL12009','De1029','01158956',20,2022,1,'2aff7dc0-d98d-45ca-a345-9ea3b4c1e383_10_Nameserver.pdf','y','신청합니다-치기공-','10_Nameserver.pdf'),('CL12012','It1004','21212121',10,2022,1,NULL,'n','2222','');
/*!40000 ALTER TABLE `k_class_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_class_schedule`
--

DROP TABLE IF EXISTS `k_class_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_class_schedule` (
  `class_id` varchar(100) DEFAULT NULL,
  `class_sch_date` date DEFAULT NULL,
  `class_sch_id` varchar(100) NOT NULL,
  PRIMARY KEY (`class_sch_id`),
  KEY `R_116` (`class_id`),
  CONSTRAINT `R_116` FOREIGN KEY (`class_id`) REFERENCES `k_class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_class_schedule`
--

LOCK TABLES `k_class_schedule` WRITE;
/*!40000 ALTER TABLE `k_class_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `k_class_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_class_schedule_t`
--

DROP TABLE IF EXISTS `k_class_schedule_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_class_schedule_t` (
  `schedule_title` varchar(100) DEFAULT NULL,
  `class_timetable_days` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_class_schedule_t`
--

LOCK TABLES `k_class_schedule_t` WRITE;
/*!40000 ALTER TABLE `k_class_schedule_t` DISABLE KEYS */;
INSERT INTO `k_class_schedule_t` VALUES ('월요일','D1000'),('화요일','D1001'),('수요일','D1002'),('목요일','D1003'),('금요일','D1004');
/*!40000 ALTER TABLE `k_class_schedule_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_class_time`
--

DROP TABLE IF EXISTS `k_class_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_class_time` (
  `class_id` varchar(100) NOT NULL,
  `class_timetable_id` varchar(100) DEFAULT NULL,
  `room_id` varchar(100) DEFAULT NULL,
  KEY `R_89` (`class_timetable_id`),
  KEY `R_90` (`room_id`),
  KEY `R_28` (`class_id`),
  CONSTRAINT `R_28` FOREIGN KEY (`class_id`) REFERENCES `k_class_reg` (`class_id`),
  CONSTRAINT `R_89` FOREIGN KEY (`class_timetable_id`) REFERENCES `k_class_timetable` (`class_timetable_id`),
  CONSTRAINT `R_90` FOREIGN KEY (`room_id`) REFERENCES `k_rooms` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_class_time`
--

LOCK TABLES `k_class_time` WRITE;
/*!40000 ALTER TABLE `k_class_time` DISABLE KEYS */;
INSERT INTO `k_class_time` VALUES ('CL11003','T1001','R101'),('CL11003','T1002','R101'),('CL11003','T1003','R101'),('CL11004','T1008','R103'),('CL11004','T1009','R103'),('CL11004','T1010','R103'),('CL11008','T1017','R101'),('CL11008','T1018','R101'),('CL11008','T1020','R101'),('CL11009','T1024','R138'),('CL11009','T1025','R138'),('CL11009','T1026','R138'),('CL11010','T1034','R123'),('CL11010','T1035','R123'),('CL11010','T1036','R123'),('CL11000','T1018','R168'),('CL11000','T1019','R168'),('CL11000','T1020','R168'),('CL11001','T1035','R123'),('CL11001','T1036','R123'),('CL11001','T1037','R123'),('CL11002','T1011','R121'),('CL11002','T1012','R121'),('CL11002','T1013','R121'),('CL11007','T1032','R154'),('CL11007','T1033','R154'),('CL11007','T1034','R154'),('CL11006','T1024','R129'),('CL11006','T1026','R129'),('CL11006','T1027','R129'),('CL11005','T1025','R154'),('CL11005','T1027','R154'),('CL11005','T1029','R154'),('CL12009','T1037','R101'),('CL12009','T1038','R101'),('CL12009','T1039','R101');
/*!40000 ALTER TABLE `k_class_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_class_timetable`
--

DROP TABLE IF EXISTS `k_class_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_class_timetable` (
  `class_timetable_id` varchar(100) NOT NULL,
  `class_timetable_name` varchar(100) DEFAULT NULL,
  `class_timetable_code` varchar(100) DEFAULT NULL,
  `class_timetable_days` varchar(100) DEFAULT NULL,
  `class_timetable_start` time DEFAULT NULL,
  `class_timetable_end` time DEFAULT NULL,
  `sch_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`class_timetable_id`),
  KEY `R_136` (`sch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_class_timetable`
--

LOCK TABLES `k_class_timetable` WRITE;
/*!40000 ALTER TABLE `k_class_timetable` DISABLE KEYS */;
INSERT INTO `k_class_timetable` VALUES ('T1000','1교시','TC1000','D1000','09:00:00','09:50:00',NULL),('T1001','2교시','TC1001','D1000','10:00:00','10:50:00',NULL),('T1002','3교시','TC1002','D1000','11:00:00','11:50:00',NULL),('T1003','4교시','TC1003','D1000','12:00:00','12:50:00',NULL),('T1004','5교시','TC1004','D1000','14:00:00','14:50:00',NULL),('T1005','6교시','TC1005','D1000','15:00:00','15:50:00',NULL),('T1006','7교시','TC1006','D1000','16:00:00','16:50:00',NULL),('T1007','8교시','TC1007','D1000','17:00:00','17:50:00',NULL),('T1008','1교시','TC1008','D1001','09:00:00','09:50:00',NULL),('T1009','2교시','TC1009','D1001','10:00:00','10:50:00',NULL),('T1010','3교시','TC1010','D1001','11:00:00','11:50:00',NULL),('T1011','4교시','TC1011','D1001','12:00:00','12:50:00',NULL),('T1012','5교시','TC1012','D1001','14:00:00','14:50:00',NULL),('T1013','6교시','TC1013','D1001','15:00:00','15:50:00',NULL),('T1014','7교시','TC1014','D1001','16:00:00','16:50:00',NULL),('T1015','8교시','TC1015','D1001','17:00:00','17:50:00',NULL),('T1016','1교시','TC1016','D1002','09:00:00','09:50:00',NULL),('T1017','2교시','TC1017','D1002','10:00:00','10:50:00',NULL),('T1018','3교시','TC1018','D1002','11:00:00','11:50:00',NULL),('T1019','4교시','TC1019','D1002','12:00:00','12:50:00',NULL),('T1020','5교시','TC1020','D1002','14:00:00','14:50:00',NULL),('T1021','6교시','TC1021','D1002','15:00:00','15:50:00',NULL),('T1022','7교시','TC1022','D1002','16:00:00','16:50:00',NULL),('T1023','8교시','TC1023','D1002','17:00:00','17:50:00',NULL),('T1024','1교시','TC1024','D1003','09:00:00','09:50:00',NULL),('T1025','2교시','TC1025','D1003','10:00:00','10:50:00',NULL),('T1026','3교시','TC1026','D1003','11:00:00','11:50:00',NULL),('T1027','4교시','TC1027','D1003','12:00:00','12:50:00',NULL),('T1028','5교시','TC1028','D1003','14:00:00','14:50:00',NULL),('T1029','6교시','TC1029','D1003','15:00:00','15:50:00',NULL),('T1030','7교시','TC1030','D1003','16:00:00','16:50:00',NULL),('T1031','8교시','TC1031','D1003','17:00:00','17:50:00',NULL),('T1032','1교시','TC1032','D1004','09:00:00','09:50:00',NULL),('T1033','2교시','TC1033','D1004','10:00:00','10:50:00',NULL),('T1034','3교시','TC1034','D1004','11:00:00','11:50:00',NULL),('T1035','4교시','TC1035','D1004','12:00:00','12:50:00',NULL),('T1036','5교시','TC1036','D1004','14:00:00','14:50:00',NULL),('T1037','6교시','TC1037','D1004','15:00:00','15:50:00',NULL),('T1038','7교시','TC1038','D1004','16:00:00','16:50:00',NULL),('T1039','8교시','TC1039','D1004','17:00:00','17:50:00',NULL);
/*!40000 ALTER TABLE `k_class_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_course`
--

DROP TABLE IF EXISTS `k_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_course` (
  `major_id` varchar(100) DEFAULT NULL,
  `course_id` varchar(100) NOT NULL,
  `course_title` varchar(100) DEFAULT NULL,
  `course_type` varchar(100) DEFAULT NULL,
  `course_credit` int(11) DEFAULT 0,
  `course_openday` date DEFAULT NULL,
  `course_closeday` date DEFAULT NULL,
  `course_grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `R_11` (`major_id`),
  CONSTRAINT `R_11` FOREIGN KEY (`major_id`) REFERENCES `k_major` (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_course`
--

LOCK TABLES `k_course` WRITE;
/*!40000 ALTER TABLE `k_course` DISABLE KEYS */;
INSERT INTO `k_course` VALUES ('1002','De1000','총의치기공학Ⅰ','전공선택',3,'2020-07-16','2022-07-16',1),('1002','De1001','총의치기공학Ⅱ','전공선택',3,'2020-07-16','2022-07-16',1),('1002','De1002','총의치기공학Ⅲ','전공선택',3,'2020-07-16','2022-07-16',1),('1002','De1003','치과재료학Ⅰ','전공선택',3,'2020-07-16','2022-07-16',1),('1002','De1004','치과재료학Ⅱ','전공선택',3,'2020-07-16','2022-07-16',1),('1002','De1005','치과기공소 경영관리','전공선택',3,'2020-07-16','2022-07-16',1),('1002','De1006','치과교정기공학Ⅰ','전공선택',3,'2020-07-16','2022-07-16',1),('1002','De1007','치과교정기공학Ⅱ','전공선택',3,'2020-07-16','2022-07-16',1),('1002','De1008','치아형태학Ⅰ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1009','치아형태학Ⅱ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1010','치과정밀주조학Ⅰ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1011','치과정밀주조학Ⅱ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1012','구강해부학','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1013','실무치과심미학','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1014','치과기공학개론','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1015','국부의치기공학Ⅰ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1016','국부의치기공학Ⅱ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1017','국부의치기공학Ⅲ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1018','관교의치기공학Ⅰ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1019','관교의치기공학Ⅱ','전공선택',3,'2020-07-16','2022-07-16',2),('1002','De1020','관교의치기공학Ⅲ','전공선택',3,'2020-07-16','2022-07-16',3),('1002','De1021','관교의치기공학Ⅳ','전공필수',3,'2020-07-16','2022-07-16',3),('1002','De1022','실무구강보건학','전공필수',3,'2020-07-16','2022-07-16',3),('1002','De1023','임상임플란트기공학','전공필수',3,'2020-07-16','2022-07-16',3),('1002','De1024','치아형태학실습Ⅰ','전공필수',3,'2020-07-16','2022-07-16',3),('1002','De1025','치아형태학실습Ⅱ','전공선택',3,'2020-07-16','2022-07-16',3),('1002','De1026','총의치기공학실습Ⅰ','전공선택',3,'2020-07-16','2022-07-16',3),('1002','De1027','총의치기공학실습Ⅱ','전공선택',3,'2020-07-16','2022-07-16',3),('1002','De1028','총의치기공학실습Ⅲ','전공선택',3,'2020-07-16','2022-07-16',3),('1002','De1029','국부의치기공학실습Ⅰ','전공선택',3,'2020-07-16','2022-07-16',3),('1002','De1030','국부의치기공학실습Ⅱ','전공선택',3,'2020-07-16','2022-07-16',3),('1002','De1031','국부의치기공학실습Ⅲ','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1032','치과교정기공학실습Ⅰ','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1033','치과교정기공학실습Ⅱ','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1034','치과충전기공학','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1035','임상실습','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1036','의료관계법규','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1037','실무치과기공학용어','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1038','치과임상재료','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1039','치과기공캡스톤디자인Ⅰ','전공선택',3,'2020-07-16','2022-07-16',4),('1002','De1040','치과기공캡스톤디자인Ⅱ','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1000','컴퓨터의 개념 및 실습','교양',3,'2020-07-16','2022-07-16',1),('1015','It1001','컴퓨터과학이 여는 세계','교양',3,'2020-07-16','2022-07-16',1),('1015','It1002','컴퓨터과학적 사고와 실습','교양',3,'2020-07-16','2022-07-16',1),('1015','It1003','인공지능 입문','교양',3,'2020-07-16','2022-07-16',1),('1015','It1004','인터넷 보안과 프라이버시','교양',3,'2020-07-16','2022-07-16',1),('1015','It1005','이산수학','전공필수',3,'2020-07-16','2022-07-16',1),('1015','It1006','프로그래밍연습','전공선택',3,'2020-07-16','2022-07-16',1),('1015','It1007','공학수학1','교양',3,'2020-07-16','2022-07-16',2),('1015','It1008','공학수학2','교양',3,'2020-07-16','2022-07-16',2),('1015','It1009','전기전자회로','전공필수',3,'2020-07-16','2022-07-16',2),('1015','It1010','컴퓨터구조','전공필수',3,'2020-07-16','2022-07-16',2),('1015','It1011','컴퓨터프로그래밍','전공필수',4,'2020-07-16','2022-07-16',2),('1015','It1012','논리설계','전공필수',4,'2020-07-16','2022-07-16',2),('1015','It1013','자료구조','전공필수',3,'2020-07-16','2022-07-16',2),('1015','It1014','컴퓨터공학세미나','전공선택',1,'2020-07-16','2022-07-16',2),('1015','It1015','프로그래밍의 원리','전공선택',3,'2020-07-16','2022-07-16',2),('1015','It1016','알고리즘','전공필수',3,'2020-07-16','2022-07-16',3),('1015','It1017','시스템프로그래밍','전공필수',4,'2020-07-16','2022-07-16',3),('1015','It1018','오토마타이론','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1019','운영체제','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1020','하드웨어시스템설계','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1021','프로그래밍언어','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1022','선형 및 비선형 계산모델','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1023','디지털신호처리','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1024','창의적통합설계1','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1025','데이터마이닝 개론','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1026','데이터베이스','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1027','데이터통신','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1028','소프트웨어 개발의 원리와 실습','전공선택',4,'2020-07-16','2022-07-16',3),('1015','It1029','IT창업개론','전공선택',3,'2020-07-16','2022-07-16',3),('1015','It1030','임베디드시스템과 응용','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1031','소프트웨어공학','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1032','소프트웨어응용','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1033','모바일 컴퓨팅과 응용','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1034','인공지능','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1035','컴파일러','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1036','컴퓨터그래픽스','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1037','컴퓨터네트워크','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1038','컴퓨터모델링','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1039','멀티코어 컴퓨팅','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1040','컴퓨터보안','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1041','웹정보시스템','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1042','IT-리더십 세미나','전공선택',2,'2020-07-16','2022-07-16',4),('1015','It1043','컴퓨터융합응용','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1044','인간컴퓨터상호작용','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1045','소셜 네트워크 분석','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1046','기계학습 개론','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1047','창의적통합설계2','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1048','컴퓨터비전','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1049','컴퓨터 신기술 특강','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1050','인터넷 보안','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1051','양자 컴퓨팅 및 정보의 기초','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1052','블록체인의 이해','전공선택',3,'2020-07-16','2022-07-16',4),('1015','It1053','딥러닝의 기초','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1000','커뮤니케이션이론Ⅰ','교양',3,'2020-07-16','2022-07-16',1),('1017','Li1001','커뮤니케이션연구방법론Ⅰ','교양',3,'2020-07-16','2022-07-16',1),('1017','Li1002','커뮤니케이션연구방법론Ⅱ','교양',3,'2020-07-16','2022-07-16',1),('1017','Li1003','커뮤니케이션이론Ⅱ','교양',3,'2020-07-16','2022-07-16',1),('1017','Li1004','뉴미디어저널리즘연구','전공선택',3,'2020-07-16','2022-07-16',1),('1017','Li1005','언론특강','전공선택',3,'2020-07-16','2022-07-16',1),('1017','Li1006','보도사진연구','전공선택',3,'2020-07-16','2022-07-16',1),('1017','Li1007','취재보도연구Ⅰ','전공선택',3,'2020-07-16','2022-07-16',1),('1017','Li1008','비디오저널리즘연구Ⅰ','전공선택',3,'2020-07-16','2022-07-16',1),('1017','Li1009','언론법제와윤리','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1010','저널리즘공학','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1011','정치와언론','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1012','한국방송론','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1013','정보사회와뉴미디어연구','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1014','미디어이론세미나','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1015','방송세미나','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1016','커뮤니케이션과문화','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1017','텔레비전분석과비평세미나','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1018','영상제작연구Ⅰ','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1019','영상제작연구Ⅱ','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1020','다큐멘터리연구','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1021','방송통신산업론','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1022','커뮤니케이션과문화','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1023','텔레비전분석과비평세미나','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1024','영상제작연구Ⅱ','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1025','다큐멘터리연구','전공선택',3,'2020-07-16','2022-07-16',2),('1017','Li1026','방송통신산업론','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1027','방송통신정책론','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1028','국제커뮤니케이션','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1029','미디어수용자연구','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1030','미디어경제학','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1031','영상이론세미나','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1032','인터넷커뮤니케이션연구','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1033','디지털콘텐츠산업연구','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1034','멀티미디어제작','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1035','현대디지털테크놀로지연구','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1036','멀티미디어제작','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1037','디지털컨텐츠구성론','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1038','디지털애니메이션연구','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1039','웹미디어운영과관리론','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1040','인터넷커뮤니케이션연구','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1041','디지털콘텐츠산업연구','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1042','현대디지털테크놀로지연구','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1043','멀티미디어제작','전공선택',3,'2020-07-16','2022-07-16',3),('1017','Li1044','디지털컨텐츠구성론','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1045','디지털애니메이션연구','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1046','웹미디어운영과관리론','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1047','Digital Culture','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1048','Mobile Communication','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1049','Media Research Methods','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1050','영상산업론','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1051','위험사회와 미디어','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1052','전자책연구','전공선택',3,'2020-07-16','2022-07-16',4),('1017','Li1053','Comparative Media Studies','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1000','경영과학','전공필수',3,'2020-07-16','2022-07-16',1),('1010','m1001','경영빅데이터분석개론','전공선택',3,'2020-07-16','2022-07-16',1),('1010','m1002','경영을 위한 경제학','전공필수',3,'2020-07-16','2022-07-16',1),('1010','m1003','경영전략','전공필수',3,'2020-07-16','2022-07-16',1),('1010','m1004','경영정보 특강','전공선택',1,'2020-07-16','2022-07-16',1),('1010','m1005','경영정보론','전공필수',3,'2020-07-16','2022-07-16',1),('1010','m1006','경영정보연구','전공선택',1,'2020-07-16','2022-07-16',1),('1010','m1007','경영철학과 윤리','전공필수',3,'2020-07-16','2022-07-16',1),('1010','m1008','경영학과 나의 미래','전공필수',1,'2020-07-16','2022-07-16',1),('1010','m1009','경영학원론','전공필수',3,'2020-07-16','2022-07-16',1),('1010','m1010','경영학특강','전공선택',3,'2020-07-16','2022-07-16',1),('1010','m1011','고객경험디자인과 콘텐츠 전략','전공선택',3,'2020-07-16','2022-07-16',1),('1010','m1012','고급회계','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1013','공급사슬관리','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1014','관리회계','전공필수',3,'2020-07-16','2022-07-16',2),('1010','m1015','광고관리론','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1016','국제경영','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1017','국제경영특강','전공선택',2,'2020-07-16','2022-07-16',2),('1010','m1018','국제금융관리론','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1019','국제기업환경','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1020','금융기관경영론','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1021','기업가치금융','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1022','기업경영특강','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1023','기업과 경력개발','전공선택',2,'2020-07-16','2022-07-16',2),('1010','m1024','기업법','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1025','기업재무론','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1026','기업지배구조의 이론과 실제','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1027','네트워크비즈니스경영','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1028','노사관계론','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1029','디지털 마케팅','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1030','마케팅 모형','전공선택',3,'2020-07-16','2022-07-16',2),('1010','m1031','마케팅 애널리틱스','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1032','마케팅관리','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1033','마케팅사례연구','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1034','마케팅조사론','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1035','문화예술마케팅','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1036','보험과 위험관리','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1037','비즈니스 분석학의 이해와 활용','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1038','사회봉사와 리더십','전공선택',1,'2020-07-16','2022-07-16',3),('1010','m1039','생산서비스운영','전공필수',3,'2020-07-16','2022-07-16',3),('1010','m1040','생산특강','전공선택',2,'2020-07-16','2022-07-16',3),('1010','m1041','서비스운영관리','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1042','세무회계','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1043','소비자행동','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1044','신제품개발 및 제품관리','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1045','원가회계','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1046','위험과 경영','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1047','인사관리','전공필수',3,'2020-07-16','2022-07-16',3),('1010','m1048','인사조직특강','전공선택',2,'2020-07-16','2022-07-16',3),('1010','m1049','자본시장과 회계정보','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1050','재무관리','전공필수',3,'2020-07-16','2022-07-16',3),('1010','m1051','재무사례연구','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1052','재무와 기계학습','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1053','재무제표분석과 기업가치평가','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1054','전략적 브랜드 관리','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1055','전자상거래','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1056','정보시스템특강','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1057','조직구조론','전공선택',3,'2020-07-16','2022-07-16',3),('1010','m1058','조직행위론','전공필수',3,'2020-07-16','2022-07-16',4),('1010','m1059','졸업 세미나','전공필수',2,'2020-07-16','2022-07-16',4),('1010','m1060','중급회계 I','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1061','중급회계 II','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1062','채권분석','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1063','투자론','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1064','특수경영론','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1065','파생금융상품론','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1066','품질경영','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1067','핀테크 사례연구','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1068','해외봉사 Ⅰ','전공선택',2,'2020-07-16','2022-07-16',4),('1010','m1069','해외봉사 Ⅱ','전공선택',2,'2020-07-16','2022-07-16',4),('1010','m1070','현대경영이론','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1071','협상전략','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1072','회계감사','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1073','회계원리','전공필수',3,'2020-07-16','2022-07-16',4),('1010','m1074','회계정보와 경영의사결정','전공선택',3,'2020-07-16','2022-07-16',4),('1010','m1075','회계학특강','전공선택',2,'2020-07-16','2022-07-16',4),('1024','mo1000','금형설계','전공선택',3,'2020-07-16','2022-07-16',1),('1024','mo1001','금형제도','전공선택',2,'2020-07-16','2022-07-16',1),('1024','mo1002','사출금형','전공선택',3,'2020-07-16','2022-07-16',1),('1024','mo1003','프레스금형','전공선택',2,'2020-07-16','2022-07-16',1),('1024','mo1004','프레스금형CAD실습','전공선택',3,'2020-07-16','2022-07-16',1),('1024','mo1005','금형부품제작실습','전공선택',2,'2020-07-16','2022-07-16',1),('1024','mo1006','금형CNC기초실습','전공선택',2,'2020-07-16','2022-07-16',2),('1024','mo1007','금형공작법','전공선택',2,'2020-07-16','2022-07-16',2),('1024','mo1008','프레스금형설계실습','전공선택',3,'2020-07-16','2022-07-16',2),('1024','mo1009','금형요소설계','전공선택',2,'2020-07-16','2022-07-16',2),('1024','mo1010','사출금형설계실습','전공선택',2,'2020-07-16','2022-07-16',2),('1024','mo1011','정밀측정','전공선택',2,'2020-07-16','2022-07-16',2),('1024','mo1012','제품모델링실습','전공선택',2,'2020-07-16','2022-07-16',2),('1024','mo1013','프레스금형설계','전공필수',3,'2020-07-16','2022-07-16',3),('1024','mo1014','금형CAM실습','전공선택',2,'2020-07-16','2022-07-16',3),('1024','mo1015','프레스금형3D부품모델링','전공선택',3,'2020-07-16','2022-07-16',3),('1024','mo1016','프레스금형부품가공실습','전공선택',2,'2020-07-16','2022-07-16',3),('1024','mo1017','프레스금형3D어셈블링실습','전공선택',2,'2020-07-16','2022-07-16',3),('1024','mo1018','금형CNC응용실습','전공선택',2,'2020-07-16','2022-07-16',4),('1024','mo1019','프레스성형해석실습','전공선택',3,'2020-07-16','2022-07-16',4),('1024','mo1020','고속가공실습','전공선택',3,'2020-07-16','2022-07-16',4),('1024','mo1021','금형조립실습','전공선택',3,'2020-07-16','2022-07-16',4),('1024','mo1022','RP 및 역설계실습','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1000','자유정의진리Ⅰ','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1001','글쓰기','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1002','Academic English I','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1003','1학년세미나 I','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1004','미적분학및연습 I','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1005','일반화학및연습 I','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1006','일반화학실험 I','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1007','일반물리학및연습 I','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1008','일반물리학실험 I','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1009','자유정의진리 Ⅱ','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1010','Academic English II','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1011','1학년세미나 II','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1012','미적분학및연습 II','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1013','일반화학및연습 II','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1014','*고급일반화학실험','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1015','일반물리학및연습 II','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1016','일반물리학실험 II','교양',2,'2020-07-16','2022-07-16',1),('1003','sci1017','*화학수학','교양',3,'2020-07-16','2022-07-16',1),('1003','sci1018','*물리화학 I','전공필수',3,'2020-07-16','2022-07-16',2),('1003','sci1019','유기화학 I','전공필수',3,'2020-07-16','2022-07-16',2),('1003','sci1020','분석화학 I','전공필수',2,'2020-07-16','2022-07-16',2),('1003','sci1021','*물리화학 II','전공필수',3,'2020-07-16','2022-07-16',2),('1003','sci1022','유기화학 II','전공필수',3,'2020-07-16','2022-07-16',2),('1003','sci1023','유기화학실험','전공필수',2,'2020-07-16','2022-07-16',2),('1003','sci1024','분석화학 II','전공선택',3,'2020-07-16','2022-07-16',2),('1003','sci1025','무기화학 I','전공필수',3,'2020-07-16','2022-07-16',3),('1003','sci1026','생화학 I','전공필수',3,'2020-07-16','2022-07-16',3),('1003','sci1027','물리화학실험','전공필수',2,'2020-07-16','2022-07-16',3),('1003','sci1028','*양자화학','전공선택',3,'2020-07-16','2022-07-16',3),('1003','sci1029','물리유기화학','전공선택',3,'2020-07-16','2022-07-16',3),('1003','sci1030','무기화학 II','전공필수',3,'2020-07-16','2022-07-16',3),('1003','sci1031','기기분석','전공선택',3,'2020-07-16','2022-07-16',3),('1003','sci1032','생화학 II','전공선택',3,'2020-07-16','2022-07-16',3),('1003','sci1033','유기합성화학','전공선택',3,'2020-07-16','2022-07-16',3),('1003','sci1034','계산화학','전공선택',3,'2020-07-16','2022-07-16',3),('1003','sci1035','고분자화학 I','전공선택',3,'2020-07-16','2022-07-16',3),('1003','sci1036','무기화학실험','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1037','*전공심화연구 I','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1038','유기분광화학','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1039','물리화학 III','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1040','무기화학III','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1041','고분자화학 II','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1042','전공심화연구 II','전공선택',1,'2020-07-16','2022-07-16',4),('1003','sci1043','의약화학','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1044','생유기화학','전공선택',3,'2020-07-16','2022-07-16',4),('1003','sci1045','나노화학','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1003','소비자빅데이터분석1','전공필수',3,'2020-07-16','2022-07-16',1),('1014','So1004','창의심화탐구','전공필수',3,'2020-07-16','2022-07-16',1),('1014','So1005','AI for Social Innovation','전공필수',3,'2020-07-16','2022-07-16',2),('1014','So1006','시민사회와국정관리','전공선택',3,'2020-07-16','2022-07-16',2),('1014','So1007','사회학이론','전공필수',3,'2020-07-16','2022-07-16',2),('1014','So1008','사회계층론','전공필수',3,'2020-07-16','2022-07-16',2),('1014','So1009','정치사회학','전공필수',3,'2020-07-16','2022-07-16',2),('1014','So1010','직업사회학','전공선택',3,'2020-07-16','2022-07-16',2),('1014','So1011','가족사회학','전공선택',3,'2020-07-16','2022-07-16',3),('1014','So1012','일탈과범죄','전공필수',3,'2020-07-16','2022-07-16',3),('1014','So1013','사회변동론','전공선택',3,'2020-07-16','2022-07-16',3),('1014','So1014','문화사회학','전공선택',3,'2020-07-16','2022-07-16',3),('1014','So1015','종교사회학','전공선택',3,'2020-07-16','2022-07-16',3),('1014','So1016','사회화및인성론','전공선택',3,'2020-07-16','2022-07-16',3),('1014','So1017','산업사회학','전공선택',3,'2020-07-16','2022-07-16',3),('1014','So1018','인구변화와미래사회','전공선택',3,'2020-07-16','2022-07-16',3),('1014','So1019','사회운동과정치참여','전공선택',3,'2020-07-16','2022-07-16',3),('1014','So1020','사회심리학','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1021','비교사회학','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1022','사회조사분석','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1023','발전사회학','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1024','경제사회학','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1025','사회학연습','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1026','지식사회학','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1027','졸업논문연구','전공선택',3,'2020-07-16','2022-07-16',4),('1014','So1028','조직사회학','전공선택',3,'2020-07-16','2022-07-16',4),('1016','Tr1000','심리학: 인간의 이해','전공선택',3,'2020-07-16','2022-07-16',1),('1016','Tr1001','심리통계학','전공필수',3,'2020-07-16','2022-07-16',2),('1016','Tr1002','성격심리학','전공선택',3,'2020-07-16','2022-07-16',2),('1016','Tr1003','이상심리학','전공선택',3,'2020-07-16','2022-07-16',2),('1016','Tr1004','실험심리입문 및 실험','전공필수',3,'2020-07-16','2022-07-16',2),('1016','Tr1005','신경과학','전공선택',3,'2020-07-16','2022-07-16',2),('1016','Tr1006','발달심리학','전공선택',3,'2020-07-16','2022-07-16',2),('1016','Tr1007','사회심리학 및 실험','전공선택',3,'2020-07-16','2022-07-16',2),('1016','Tr1008','학습과 기억의 심리학 및 실험','전공선택',3,'2020-07-16','2022-07-16',2),('1016','Tr1009','시각예술의 지각','전공선택',3,'2020-07-16','2022-07-16',2),('1016','Tr1010','인간공학의 심리학','전공선택',2,'2020-07-16','2022-07-16',3),('1016','Tr1011','지각심리학 및 실험','전공선택',2,'2020-07-16','2022-07-16',3),('1016','Tr1012','인지과정 및 실험','전공선택',3,'2020-07-16','2022-07-16',3),('1016','Tr1013','언어심리학 및 실험','전공선택',2,'2020-07-16','2022-07-16',3),('1016','Tr1014','상담심리학','전공선택',3,'2020-07-16','2022-07-16',3),('1016','Tr1015','임상신경심리학 및 실험','전공선택',3,'2020-07-16','2022-07-16',3),('1016','Tr1016','조직심리학','전공선택',2,'2020-07-16','2022-07-16',3),('1016','Tr1017','심리측정과 검사','전공선택',3,'2020-07-16','2022-07-16',3),('1016','Tr1018','임상심리학 및 실습','전공선택',3,'2020-07-16','2022-07-16',3),('1016','Tr1019','주의와 수행','전공선택',3,'2020-07-16','2022-07-16',3),('1016','Tr1020','중독의 심리학','전공인정',3,'2020-07-16','2022-07-16',3),('1016','Tr1021','인간 뇌이미징의 데이터사이언스','전공선택',2,'2020-07-16','2022-07-16',3),('1016','Tr1022','로봇 심리학','전공선택',2,'2020-07-16','2022-07-16',3),('1016','Tr1023','주식 심리학','전공선택',3,'2020-07-16','2022-07-16',3),('1016','Tr1024','정서심리학','전공선택',3,'2020-07-16','2022-07-16',4),('1016','Tr1025','응용발달심리학','전공선택',3,'2020-07-16','2022-07-16',4),('1016','Tr1026','응용실험심리학','전공선택',3,'2020-07-16','2022-07-16',4),('1016','Tr1027','긍정임상심리학입문','전공선택',2,'2020-07-16','2022-07-16',4),('1016','Tr1028','인지신경과학실험','전공선택',3,'2020-07-16','2022-07-16',4),('1016','Tr1029','지각적 자아와 행동','전공선택',3,'2020-07-16','2022-07-16',4),('1016','Tr1030','판단과 의사결정의 심리학','전공선택',2,'2020-07-16','2022-07-16',4);
/*!40000 ALTER TABLE `k_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_credit`
--

DROP TABLE IF EXISTS `k_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_credit` (
  `credit_total` int(11) DEFAULT NULL,
  `credit_major` int(11) DEFAULT NULL,
  `credit_lib` int(11) DEFAULT NULL,
  `stu_id` varchar(100) DEFAULT NULL,
  KEY `R_137` (`stu_id`),
  CONSTRAINT `R_137` FOREIGN KEY (`stu_id`) REFERENCES `k_students` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_credit`
--

LOCK TABLES `k_credit` WRITE;
/*!40000 ALTER TABLE `k_credit` DISABLE KEYS */;
INSERT INTO `k_credit` VALUES (100,70,30,'01174314'),(110,82,28,'11123456'),(120,100,20,'00000000');
/*!40000 ALTER TABLE `k_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_gpa`
--

DROP TABLE IF EXISTS `k_gpa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_gpa` (
  `score_id` varchar(100) DEFAULT NULL,
  `gpa_id` varchar(100) NOT NULL,
  `gpa_point` double DEFAULT NULL,
  `gpa_grade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`gpa_id`),
  KEY `R_37` (`score_id`),
  CONSTRAINT `R_37` FOREIGN KEY (`score_id`) REFERENCES `k_scores` (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_gpa`
--

LOCK TABLES `k_gpa` WRITE;
/*!40000 ALTER TABLE `k_gpa` DISABLE KEYS */;
INSERT INTO `k_gpa` VALUES ('Score10002','G10003',86,'B+'),('Score10006','G10007',92,'A');
/*!40000 ALTER TABLE `k_gpa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_gpa_standard`
--

DROP TABLE IF EXISTS `k_gpa_standard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_gpa_standard` (
  `gpa_standard_attn` int(11) DEFAULT NULL,
  `gpa_standard_quiz` int(11) DEFAULT NULL,
  `gpa_standard_mid` int(11) DEFAULT NULL,
  `gpa_standard_final` int(11) DEFAULT NULL,
  `class_id` varchar(100) NOT NULL,
  PRIMARY KEY (`class_id`),
  CONSTRAINT `R_18` FOREIGN KEY (`class_id`) REFERENCES `k_class_reg` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_gpa_standard`
--

LOCK TABLES `k_gpa_standard` WRITE;
/*!40000 ALTER TABLE `k_gpa_standard` DISABLE KEYS */;
INSERT INTO `k_gpa_standard` VALUES (40,20,20,20,'CL11000'),(40,20,20,20,'CL11001'),(40,20,20,20,'CL11002'),(20,20,30,30,'CL11003'),(20,20,30,30,'CL11004'),(40,20,20,20,'CL11005'),(40,20,20,20,'CL11006'),(40,20,20,20,'CL11007'),(40,20,20,20,'CL11008'),(40,20,20,20,'CL11009'),(40,20,20,20,'CL11010'),(40,20,20,20,'CL12000'),(50,10,20,20,'CL12001'),(40,20,20,20,'CL12002'),(50,15,20,15,'CL12003'),(50,10,20,20,'CL12004'),(50,15,20,15,'CL12005'),(50,20,15,15,'CL12006'),(60,20,10,10,'CL12007'),(50,10,20,20,'CL12008'),(50,10,20,20,'CL12009'),(25,25,25,25,'CL12012');
/*!40000 ALTER TABLE `k_gpa_standard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_grad`
--

DROP TABLE IF EXISTS `k_grad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_grad` (
  `grad_credit` double DEFAULT NULL,
  `grad_major_credit` double DEFAULT NULL,
  `grad_lib_credit` double DEFAULT NULL,
  `major_id` varchar(100) DEFAULT NULL,
  `grad_id` varchar(100) NOT NULL,
  PRIMARY KEY (`grad_id`),
  KEY `R_77` (`major_id`),
  CONSTRAINT `R_77` FOREIGN KEY (`major_id`) REFERENCES `k_major` (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_grad`
--

LOCK TABLES `k_grad` WRITE;
/*!40000 ALTER TABLE `k_grad` DISABLE KEYS */;
/*!40000 ALTER TABLE `k_grad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_major`
--

DROP TABLE IF EXISTS `k_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_major` (
  `major_id` varchar(100) NOT NULL,
  `major_name` varchar(100) DEFAULT NULL,
  `major_openday` date DEFAULT NULL,
  `major_closeday` date DEFAULT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_major`
--

LOCK TABLES `k_major` WRITE;
/*!40000 ALTER TABLE `k_major` DISABLE KEYS */;
INSERT INTO `k_major` VALUES ('1002','치기공학과','2004-05-15','2005-12-13'),('1003','화학과','2007-01-30','2008-02-12'),('1004','노어노문학과','2004-03-08','2005-10-27'),('1010','경영학과','2008-09-26','2010-09-26'),('1011','건축학과','2009-04-11','2011-04-11'),('1012','국어국문학과','2002-11-09','2004-11-09'),('1013','사회복지학과','1995-11-23','1997-11-23'),('1014','사회학과','2004-06-16','2006-06-16'),('1015','컴퓨터공학과','1997-10-15','1999-10-15'),('1016','심리학과','2004-02-04','2006-02-04'),('1017','언론정보학과','2009-04-04','2011-04-04'),('1018','언어학과','2002-12-22','2004-12-22'),('1019','영어영문학과','1998-08-01','2000-08-01'),('1020','의류학과','2000-03-18','2002-03-18'),('1021','철학과','2007-03-03','2009-03-03'),('1022','통계학과','2006-04-18','2008-04-18'),('1023','물리학과','2001-05-21','2003-05-21'),('1024','금형디자인과','1997-07-02','1999-07-02'),('1025','수학과','2000-01-19','2002-01-19'),('1026','체육학과','2007-11-07','2009-11-07');
/*!40000 ALTER TABLE `k_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_matching`
--

DROP TABLE IF EXISTS `k_matching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_matching` (
  `prof_id` varchar(100) DEFAULT NULL,
  `matching_date` date DEFAULT NULL,
  `matching_type` varchar(100) DEFAULT NULL,
  `matching_id` varchar(100) NOT NULL,
  `stu_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`matching_id`),
  KEY `R_55` (`stu_id`),
  KEY `R_56` (`prof_id`),
  CONSTRAINT `R_55` FOREIGN KEY (`stu_id`) REFERENCES `k_students` (`stu_id`),
  CONSTRAINT `R_56` FOREIGN KEY (`prof_id`) REFERENCES `k_professors` (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_matching`
--

LOCK TABLES `k_matching` WRITE;
/*!40000 ALTER TABLE `k_matching` DISABLE KEYS */;
INSERT INTO `k_matching` VALUES ('00217253','1999-03-01','0','1','99195608'),('00217253','1999-03-01','0','2','99194300'),('testprof','2022-08-30','0','2007','test123'),('21212121','2022-09-13','0','3001','11123456'),('00265609','2022-09-14','1','4001','00000001'),('21212121','2022-09-14','0','4006','02103984'),('00217253','2022-09-14','0','4009','00103086'),('00217253','2022-09-14','0','4010','00149383'),('testprof','2022-08-30','0','5','01119665'),('21212121','2022-09-20','0','5001','02116466'),('testprof','2022-08-30','0','6','01103888'),('00265609','2022-09-21','0','6001','00000000'),('05237415','2022-09-21','0','6002','18146593'),('05237415','2022-09-21','0','6003','19109454'),('02281628','2022-09-21','1','6004','00000001'),('01115942','2022-09-21','1','6005','00000001'),('02281628','2022-09-21','1','6006','00000001'),('21212121','2022-09-21','0','6007','18103786'),('00217253','2022-09-23','0','7009','00000001'),('testprof','2022-08-30','0','8','00149383'),('testprof','2022-08-30','0','9','01132538');
/*!40000 ALTER TABLE `k_matching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_matching_change`
--

DROP TABLE IF EXISTS `k_matching_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_matching_change` (
  `stu_id` varchar(100) NOT NULL,
  `matching_change_yn` varchar(100) DEFAULT NULL,
  `matching_change_date` date DEFAULT NULL,
  `matching_change_reject` varchar(500) DEFAULT NULL,
  `prof_id` varchar(100) DEFAULT NULL,
  `matching_change_reason` varchar(500) DEFAULT NULL,
  `matching_want` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  CONSTRAINT `R_125` FOREIGN KEY (`stu_id`) REFERENCES `k_students` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_matching_change`
--

LOCK TABLES `k_matching_change` WRITE;
/*!40000 ALTER TABLE `k_matching_change` DISABLE KEYS */;
INSERT INTO `k_matching_change` VALUES ('00000001','0','2022-09-25',NULL,'00217253','같은 전공의 교수로 변경원함','02281628'),('11123456','0','2022-09-26',NULL,'21212121','ddd','00217253');
/*!40000 ALTER TABLE `k_matching_change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_mentoring`
--

DROP TABLE IF EXISTS `k_mentoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_mentoring` (
  `matching_id` varchar(100) DEFAULT NULL,
  `mtr_count` int(11) DEFAULT NULL,
  `mtr_status` varchar(100) DEFAULT 'ing',
  `mtr_id` varchar(100) NOT NULL,
  `mtr_sch_id` varchar(100) DEFAULT NULL,
  `mtr_cancel` varchar(100) DEFAULT '0',
  `mtr_fileName` varchar(500) DEFAULT '0',
  `prof_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mtr_id`),
  KEY `R_131` (`mtr_sch_id`),
  KEY `R_68` (`matching_id`),
  KEY `k_mentoring_FK` (`prof_id`),
  CONSTRAINT `R_131` FOREIGN KEY (`mtr_sch_id`) REFERENCES `k_mentoring_schedule` (`mtr_sch_id`),
  CONSTRAINT `R_68` FOREIGN KEY (`matching_id`) REFERENCES `k_matching` (`matching_id`),
  CONSTRAINT `k_mentoring_FK` FOREIGN KEY (`prof_id`) REFERENCES `k_professors` (`prof_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_mentoring`
--

LOCK TABLES `k_mentoring` WRITE;
/*!40000 ALTER TABLE `k_mentoring` DISABLE KEYS */;
INSERT INTO `k_mentoring` VALUES ('5001',3,'com','10001','14001','0','0','21212121'),('3001',2,'com','11001','14002','0','0','21212121'),('6',1,'ing','2003','4004','0','0','testprof'),('9',1,'can','2004','5001','취소','0','testprof'),('8',1,'can','2005','6002','취소','0','testprof'),('5',1,'can','2222','2086','0','0','testprof'),('2007',1,'can','3002','3012','0','0','testprof'),('2007',2,'com','4001','6001','0','0','testprof'),('2007',3,'com','5001','7001','0','0','testprof'),('2007',4,'ing','5002','7002','가정사','0','testprof'),('3001',1,'com','6001','9006','0','0','21212121'),('4006',1,'ing','7005','10002','0','0','21212121'),('5001',1,'can','8001','11001','취소','0','21212121'),('5001',2,'can','9001','13001','취소','0','21212121'),('6007',1,'fill','9002','10003','0','0','21212121');
/*!40000 ALTER TABLE `k_mentoring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_mentoring_log`
--

DROP TABLE IF EXISTS `k_mentoring_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_mentoring_log` (
  `mtr_id` varchar(100) NOT NULL,
  `mtr_log_subject` varchar(500) DEFAULT NULL,
  `mtr_log_content` varchar(7000) DEFAULT NULL,
  `mtr_log_comment` varchar(7000) DEFAULT NULL,
  `mtr_home` varchar(100) DEFAULT NULL,
  `mtr_date` date DEFAULT current_timestamp(),
  PRIMARY KEY (`mtr_id`),
  CONSTRAINT `R_69` FOREIGN KEY (`mtr_id`) REFERENCES `k_mentoring` (`mtr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_mentoring_log`
--

LOCK TABLES `k_mentoring_log` WRITE;
/*!40000 ALTER TABLE `k_mentoring_log` DISABLE KEYS */;
INSERT INTO `k_mentoring_log` VALUES ('10001','ㅇㅁㅈㅇㅁ','ㅈㅇㅁㅈㅇ','ㅁㅈㅇㅁㅈㅇ','ㅁㅈ','2022-09-23'),('11001','123','123','123','123','2022-09-26'),('2222','진로에 대한 상담','( 지난 한 주 어떻게 보냈는지?) 친구들도 만나고 학원은 빠짐없이 계속 나\r\n가고 있다. ( 지난주에 오늘은 **씨가 사람들과 관계 맺는 모습에 대해서\r\n이야기 해 보자고 했는데, 생각을 해 보셨는지?) 해 보았다. 앞으로 복학\r\n하게 될 때 학교적응에 중요한 요인이 선후배들과의 관계라고 생각한다.\r\n지금까지 내가 알고 지내 온 사람들을 볼 때 그렇게 인간관계가 어렵거나\r\n힘들지 않았다. 원만하게 지내왔다고 생각되기 때문에 걱정이 되지는 않는\r\n다. ( 나이 차이가 있는 후배들과 같이 수업을 듣게 될 것인데 **씨와 사고\r\n방식이 어떨 것 같은지?) 그렇게 차이가 있으리라고 생각하지는 않는다.\r\n오히려 내가 생각하는 방식이 후배들의 사고방식과 많이 비슷하기 때문에\r\n그렇게 어려울 것이라고 생각되지는 않는다. 학과 학생회 활동이나 과대표\r\n활동에 대해서는 거의 신경을 쓰지 않았고 앞으로도 그렇게 하려고 한다.\r\n그래서 후배들과 부딪힐 일은 그렇게 많지 않으리라고 생각한다. 문제는\r\n선배들과의 관계이다. 입학한 이후로 1년 동안의 학교에 충실하지 않아서\r\n얼굴을 아는 선배들이 거의 없다. 그때는 선배들에 대한 평판이 좋지 않았\r\n다. 나이를 의식하는 것은 아니지만 나이가 같은 선배들도 있다. 앞으로\r\n어떻게 될지는 모르겠지만 익숙하지는 않을 것 같다. 하지만 그들도 군대\r\n를 갔다 와서 생활하기에는 그렇게 어렵지 않을 거라고 생각한다','하려고 하는 의지가 있고 배움에 대한 열정이 있어보임','집이 멀어 학교 인근에서 자취중이라고함','2022-09-06'),('5001','취업에 대한 상담','( 지난 한 주 어떻게 보냈는지?) 친구들도 만나고 학원은 빠짐없이 계속 나\r\n가고 있다. ( 지난주에 오늘은 **씨가 사람들과 관계 맺는 모습에 대해서\r\n이야기 해 보자고 했는데, 생각을 해 보셨는지?) 해 보았다. 앞으로 복학\r\n하게 될 때 학교적응에 중요한 요인이 선후배들과의 관계라고 생각한다.\r\n지금까지 내가 알고 지내 온 사람들을 볼 때 그렇게 인간관계가 어렵거나\r\n힘들지 않았다. 원만하게 지내왔다고 생각되기 때문에 걱정이 되지는 않는\r\n다. ( 나이 차이가 있는 후배들과 같이 수업을 듣게 될 것인데 **씨와 사고\r\n방식이 어떨 것 같은지?) 그렇게 차이가 있으리라고 생각하지는 않는다.\r\n오히려 내가 생각하는 방식이 후배들의 사고방식과 많이 비슷하기 때문에\r\n그렇게 어려울 것이라고 생각되지는 않는다. 학과 학생회 활동이나 과대표\r\n활동에 대해서는 거의 신경을 쓰지 않았고 앞으로도 그렇게 하려고 한다.\r\n그래서 후배들과 부딪힐 일은 그렇게 많지 않으리라고 생각한다. 문제는\r\n선배들과의 관계이다. 입학한 이후로 1년 동안의 학교에 충실하지 않아서\r\n얼굴을 아는 선배들이 거의 없다. 그때는 선배들에 대한 평판이 좋지 않았\r\n다. 나이를 의식하는 것은 아니지만 나이가 같은 선배들도 있다. 앞으로\r\n어떻게 될지는 모르겠지만 익숙하지는 않을 것 같다. 하지만 그들도 군대\r\n를 갔다 와서 생활하기에는 그렇게 어렵지 않을 거라고 생각한다','하려고 하는 의지가 있고 배움에 대한 열정이 있어보임','집이 멀어 학교 인근에서 자취중이라고함','2022-09-07'),('6001','취업에 대한 상담','입학 전부터 본 학과에 관련된 일을 하다가 심화적으로 배우고싶어 입학을 했다고함','좀더 지켜보면서 취업에 대한 정보 추천','본가에 거주중이며 버스로 통학(1시간거리)','2022-09-13'),('7005','진로상담','진로상담을 원하는 학생 아직 희망하는 직무는 따로 없다고 함 \r\n아직 더 배워보고 싶은 마음이 있다고 함\r\n','좀더 지켜보면서 취업에 대한 정보 추천','대구에서 버스타고 통학','2022-09-14');
/*!40000 ALTER TABLE `k_mentoring_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_mentoring_memo`
--

DROP TABLE IF EXISTS `k_mentoring_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_mentoring_memo` (
  `mtr_id` varchar(100) NOT NULL,
  `mtr_memo_content` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`mtr_id`),
  CONSTRAINT `R_143` FOREIGN KEY (`mtr_id`) REFERENCES `k_mentoring` (`mtr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_mentoring_memo`
--

LOCK TABLES `k_mentoring_memo` WRITE;
/*!40000 ALTER TABLE `k_mentoring_memo` DISABLE KEYS */;
INSERT INTO `k_mentoring_memo` VALUES ('2003',' 이 사례는 대학생들이 흔히 호소하는 대인관계의 불편함을 주로 다룬 사례이다.\n이 사례의 내담자는 대학생다운 언어능력과 사고능력이 구비되어 있었으므로,\n분석적 기법이나 대인관계에서의 행동개선을 위한 역할연습도 효과적으로\n적용되었다.\n  다음에는 분석적 기법이 적용된 과정을 보다 잘 살펴볼 수 있도록 전 회기분의\n상담을 요약과 축어록을 섞어 제시하였다.'),('3002','이 학생은 진로에 대해 고민중인 학생으로 자신이 현재 배우는 과목에 대해 의문을 느끼고있음.'),('4001','본 학생은 학업에 대한 이해도가 뛰어나고 \n입학 전부터 이에 관련된 일을 해왔다고 함'),('5001','본 학생은 학업에 대한 이해도가 뛰어나고 \n입학 전부터 이에 관련된 일을 해왔다고 함'),('6001','본 학생은 학업에 대한 이해도가 뛰어나고 \n입학 전부터 이에 관련된 일을 해왔다고 함'),('7005','진로상담을 원하는 학생 아직 희망하는 직무는 따로 없다고 함 ');
/*!40000 ALTER TABLE `k_mentoring_memo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_mentoring_schedule`
--

DROP TABLE IF EXISTS `k_mentoring_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_mentoring_schedule` (
  `mtr_sch_id` varchar(100) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `mtr_sch_date` date DEFAULT NULL,
  `mtr_sch_timecode` varchar(500) DEFAULT NULL,
  `CHECK_CODE` varchar(100) DEFAULT '0',
  PRIMARY KEY (`mtr_sch_id`),
  KEY `R_127` (`user_id`),
  KEY `k_mentoring_schedule_FK` (`mtr_sch_timecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_mentoring_schedule`
--

LOCK TABLES `k_mentoring_schedule` WRITE;
/*!40000 ALTER TABLE `k_mentoring_schedule` DISABLE KEYS */;
INSERT INTO `k_mentoring_schedule` VALUES ('10002','21212121','2022-09-27','4','1'),('10003','21212121','2022-09-27','6','1'),('11001','21212121','2022-09-22','0','1'),('12005','21212121','2022-09-27','1','0'),('13001','21212121','2022-09-28','0','1'),('13002','21212121','2022-09-28','9','0'),('13006','21212121','2022-09-22','5','0'),('14001','21212121','2022-09-29','1','1'),('14002','21212121','2022-09-29','2','1'),('14003','21212121','2022-09-29','4','0'),('15004','21212121','2022-09-28','1','0'),('15005','21212121','2022-09-28','8','0'),('2081','testprof','2022-02-10','1','0'),('2082','testprof','2022-02-11','1','0'),('2083','testprof','2022-02-09','0','0'),('2084','testprof','2022-02-17','1','0'),('2085','testprof','2022-02-17','2','0'),('2086','testprof','2022-02-16','0','0'),('2088','testprof','2022-02-01','1','0'),('2090','testprof','2022-02-01','4','0'),('3002','testprof','2022-02-04','3','0'),('3003','testprof','2022-02-04','4','0'),('3004','testprof','2022-02-04','5','0'),('3005','testprof','2022-08-16','1','0'),('3006','testprof','2022-08-16','3','0'),('3007','testprof','2022-08-16','4','0'),('3008','testprof','2022-08-22','3','0'),('3009','testprof','2022-08-22','5','0'),('3010','testprof','2022-08-22','6','0'),('3011','testprof','2022-08-12','0','0'),('3012','testprof','2022-08-12','1','0'),('3013','testprof','2022-08-12','4','0'),('3014','testprof','2022-08-12','5','0'),('3015','testprof','2022-08-08','2','0'),('3016','testprof','2022-08-26','5','0'),('4001','testprof','2022-02-08','0','0'),('4002','testprof','2022-02-08','1','0'),('4003','testprof','2022-02-08','3','0'),('4004','testprof','2022-02-08','4','1'),('4005','testprof','2022-02-08','6','0'),('4006','testprof','2022-02-08','7','0'),('4007','testprof','2022-02-02','0','0'),('4009','testprof','2022-02-02','5','0'),('5001','00000000','2022-02-02','0','0'),('5002','00000000','2022-02-02','3','0'),('5003','00000000','2022-02-02','5','0'),('5004','00000000','2022-02-02','6','0'),('6001','testprof','2022-09-07','3','1'),('6002','testprof','2022-09-07','4','0'),('6003','testprof','2022-10-12','3','0'),('6004','testprof','2022-10-12','4','0'),('6005','testprof','2022-10-12','5','0'),('6006','testprof','2022-10-17','3','0'),('6007','testprof','2022-10-07','4','0'),('6008','testprof','2022-10-07','5','0'),('6009','testprof','2022-10-25','0','0'),('6010','testprof','2022-10-25','9','0'),('7001','testprof','2022-09-22','0','1'),('7002','testprof','2022-09-22','5','1'),('9006','21212121','2022-09-23','4','1'),('9007','21212121','2022-09-23','8','1');
/*!40000 ALTER TABLE `k_mentoring_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_notice`
--

DROP TABLE IF EXISTS `k_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_notice` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(1000) DEFAULT NULL,
  `notice_content` varchar(10000) DEFAULT NULL,
  `notice_date` varchar(100) DEFAULT NULL,
  `notice_hit` int(11) DEFAULT 0,
  `notice_update_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_notice`
--

LOCK TABLES `k_notice` WRITE;
/*!40000 ALTER TABLE `k_notice` DISABLE KEYS */;
INSERT INTO `k_notice` VALUES (7,'[SW] DCU소프트웨어 대전 소프트웨어 전시대회 신청 안내','제4회 DCU소프트웨어 대전\n소프트웨어 전시대회 신청 안내\n\n제4회 DCU소프트웨어 대전 중 [소프트웨어 전시대회] 신청서입니다.\n교내외 소프트웨어 전시를 통한 저변 확대 및 우수 소프트웨어 결과물을 발굴하여 사업화 및 창업을 지원하며 우수 프로젝트 결과물 홍보와 신규 소프트웨어 결과물 홍보를 통해 성과 공유를 위한 소프트웨어 전시대회를 시행하고자 합니다.\n\n■ 프로그램 개요\n 가. 대회 일시 : 2022년 10월 5일(수) ~ 10월 7일(금) 16:00\n 나. 장소 : 예담대학교 대강당 로비\n 다. 참가 대상 : 소프트웨어 전시대회에 관심 있는 모든 인원\n 라. 전시 부문 : SW전공자,SW비전공자, 프로젝트, 아이디어 부문\n 마. 시상 부문 : 대상, 최우수상, 우수상, 입선','2022-09-16 16:02',78,'2022-09-20 10:36'),(8,'[혁신] 2022-2학기 스피치 특강[1차]','▣ [1차년도 혁신사업] 2022-2학기 스피치 특강\n\n 1) 목적: 스피치의 기본적인 준비 과정을 교육함에 따라 학생들의 발표 및 프레젠테이션 실력 향상에 도움\n\n 2) 대상: 본교 학부 재학생 10명 내외 \n\n 3) 일정:2022 9.27/10.04/10.11 (화) 15:00-17:00\n\n 4) 신청방법: 글쓰기말하기센터 홈페이지(http://geulmal.cu.ac.kr) 접속\n\n 5) 장소: 추후 합격자 개인 공지\n\n 6) 주제\n\n    -나의 가치를 높이는 긍정 스피치\n\n    -생각을 바꾸는 힘\n\n    -나의 작은 성취!\n\n 7) 강사: 홍명순\n\n 8) 혜택: 3회 모두 참석시 Stella 부여','2022-09-16 16:02',7,NULL),(9,'2022학년도 2학기 폐강 교과목 수강 정정 안내','                                  2022학년도 2학기 폐강 교과목 수강 정정 안내\n\n\n\n\n\n\n\n2022학년도 2학기 폐강 교과목 수강 정정 기간을 아래와 같이 안내하오니\n폐강 교과목 수강생은 기간 내에 수강 정정하시기 바랍니다.\n\n\n\n\n\n\n\n\n\n1. 폐강 수강정정 기간 : 2022. 9. 7(수) ~ 9. 8(목) 09:30 ~ 17:00\n\n\n2. 신청 대상자 : 폐강 교과목 수강생 및 수강신청 가능학점이 있는 재학생\n\n\n\n3. 수강신청 방법\n\n\n\n  가. 메뉴 : 학교 홈페이지 → 교육/생활 → 신청/발급 → 수강신청\n\n \n\n  나. 신청방법 : 수강신청, 수강정정 기간의 방법과 동일\n\n\n\n\n4. 폐강교과목 확인 방법\n\n\n  가. 2022학년도 2학기 폐강 교과목 현황 자료 확인(붙임파일)\n\n \n\n  나. 학생지원통합시스템 - 수업/성적 - 수강 - \'수강확인서 조회\' 메뉴의 비고란에 [폐강]으로 표기된 교과목\n\n\n\n\n5. 유의사항\n\n\n\n 가. 폐강교과목을 삭제한 후 수강정원 여석이 있는 교과목에 한하여 수강 신청가능함(※ 남은학점 추가만 가능하며, 기존의 수강신청된 교과목은 삭제 불가)\n\n \n\n 나. 폐강과목을 수강정정 기간 내 정정하지 않을 경우 수강정정 의사가 없는 것으로 간주하여 폐강교과목은 자동 삭제되며, 폐강 정정 기간 이후에는 추가 수강신청이 불가\n\n \n\n 다. 수강신청 가능학점이 남아있는 학생은 수강정원 여석이 있는 교과목에 한하여 추가 수강 신청 가능\n\n\n\n 라. 전공, 복수전공, 교직, 교양필수, 일반선택(타전공) 교과목의 폐강으로 인하여 졸업요건을 충족하기 어려울 경우 폐강정정 기간 동안 수강허가서 제출 가능\n\n    ※ 수강허가서 신청 방법 : 학사공지 818번 게시글 참조\n\n\n\n 마. 폐강으로 인하여 수강 정정한 교과목의 출석인정이 필요한 학생은 수업학적팀(A3, 종합민원센터)으로 방문하여 출석인정 신청서를 배부 받아야 함\n\n','2022-09-16 16:35',7,NULL),(10,'2022학년도 2학기 수강포기 신청 안내','2022학년도 2학기 수강포기 신청 안내\n\n\n\n\n\n2022학년도 2학기 수강포기 신청 기간을 아래와 같이 공고하오니 기간 내에 신청하시기 바랍니다.\n\n\n1. 수강포기 기간 : 2022. 9. 13(화) 10:00 ~ 9. 15(목) 17:00\n\n\n\n2. 신청방법 \n\n  가. 신청 메뉴 : 학생지원통합시스템 → 수업/성적 → 수강 → 수강포기 신청\n  나. 신청 방법 : 수강포기 사유를 입력한 후 신청 버튼 클릭\n     ※ 수강포기 신청기간 동안 자유롭게 수강포기 교과목을 변경·취소할 수 있음\n\n\n\n3. 처리 절차\n\n  가. 수강포기 기간 이후 [9.15(목) 17:00] 수강포기 신청한 교과목이 일괄적으로 삭제 처리됨\n  나. 9월 16일(금) 10:00 이후 학생지원통합시스템 ‘수강확인서 조회’ 메뉴를 통해 수강포기 신청 교과목 삭제 여부를 반드시 확인하여야 함\n\n\n\n4. 유의사항\n\n  가. 수강포기는 이번 학기에 수강 신청한 교과목 중 \"학점에 상관없이 최대 2과목\"까지 가능함. 다만, 최소수강 신청학점(매학기 12학점, 졸업예정학기는 9학점) 미만으로는 포기할 수 없음\n  나. 수강포기한 교과목의 학점은 이월되지 않으며, 수강포기한 교과목의 학점과 잔여학점을 포함하여 2학점 이하일 경우에만 잔여학점이 이월됨\n  다. 수강포기 기간 이후에는 수강포기한 교과목을 취소할 수 없으며, 수강포기 신청교과목을 변경할 수 없음\n  라. 수강포기 후 추가 수강신청이 불가하오니 신중히 판단하여 신청하여야 함\n  마. 미졸업생이 수강포기 기간 중 신청한 학점을 포기할 경우 「학생등록금징수 규정」 제9조에 따라 반환금액을 감액(1/6 감액)하여 반환됨','2022-09-16 16:41',3,NULL),(11,'2022학년도 2학기 교양필수 교과목 수강 분반 안내','2022학년도 2학기 교양필수 교과목 수강 분반 안내\n\n \n\n\n\n\n\n\n\n2022학년도 2학기 교양필수(가톨릭사상, 참삶의길, 독서와토론, 글쓰기와말하기, 인성캠프, 소프트웨어) 분반을 붙임과 같이 안내드리오니, 해당학년과 분반을 확인하여 수강신청 하시기 바랍니다.','2022-09-16 16:42',5,NULL),(12,'2022학년도 2학기 수강신청 안내','2022학년도 2학기 수강신청 안내\n\n \n\n\n\n\n2022학년도 2학기 수강신청 관련 안내 및 유의사항을 아래와 같이 알려드리오니 기간내 수강신청 하시기 바랍니다.\n\n \n\n\n\n\n\n\n\n\n                                      \n                        \n1. 수강신청 기간  : 2022. 8. 22(월) ~ 8. 26(금)  9:30 ~ 17:00\n\n                           \n    가. 학년별 수강신청 기간 (※ 타학과 및 타학년 전공교과목은 수강신청 불가)\n\n        ① 4~5학년 재학생 및 미졸업생, 학사학위취득유예자 수강신청 : 8월 22일(월), 8월 23일(화)\n        ② 3학년 재학생 수강신청 : 8월 23일(화), 8월 24일(수) \n        ③ 2학년 재학생 수강신청 : 8월 24일(수), 8월 25일(목)\n        ④ 1학년 재학생 수강신청 : 8월 25일(목)\n        ⑤ 2022학년도 2학기 편입생 수강신청 : 8월 25일(목)\n\n       ※ 유스티노자유대학 1학년 : 8월 16일(화)~8월 18일(목), 유스티노자유대학 소속 신입생은 별도의 학사공지 안내를 확인하시기 바랍니다.\n\n    나. 전학년 수강신청 기간 (※ 타학과 및 타학년 교과목 수강신청 가능)\n                                 \n        ① 전학년 수강신청 : 8월 26일(금)\n\n        ※ 학년별 수강신청 기간에는 실격(F)교과목에 대한 재수강 신청이 가능하며, 전학년 수강신청 기간에는 60점 이상 80점 미만 교과목에 대한 재수강 신청이 가능합니다. 그 외 자세한 사항은 [붙임1] 수강신청 안내자료를 확인하여 주시기 바랍니다.\n\n\n \n  2. 수강신청 방법 \n     \n    가. 수강신청 방법 : 대표 홈페이지 → 교육/생활 → 신청/발급 → 수강신청\n   \n     나. 수강신청 방법 안내 자료: [붙임2] 자료  확인\n                                 \n                 \n  3. 유의사항                        \n\n     가. 수강꾸러미 기간에 개설된 교과목이 폐강 또는 분반 추가가 될 수 있으니 수업시간표를 수시로 확인    \n     나. 수강신청기간 전까지 강의시간 및 강의실, 담당교수가 변경될 수 있으니 교과목 정보를 수시로 확인          \n     다. 수강신청 후 \'학생지원통합시스템 → 수업/성적 → 수강 → 수강확인서 조회\' 메뉴에서 교과목 수강신청 여부  및 수강신청 분반을 반드시 확인\n\n ◆ 성적부여 등 학사운영의 투명성 및 공정성 제고를 위하여 수강희망 교과목의 담당교수가 본인의 부모인 경우 가급적 수강신청을 자제해 주시기 바랍니다. ◆','2022-09-16 16:43',18,'2022-09-19 16:39'),(13,'[혁신] DCU 글쓰기 교실 - 리포트반(1차)','※ DCU 글쓰기 교실 신청 안내 ※ \n\n\n\n▣ [1차년도 혁신사업] 2022-2학기 글쓰기 교실 - 리포트반\n\n1) 목적: 학생이 제출할 과제의 전 과정을 피드백 받음으로써 리포트 완성도 향상\n\n2) 대상: 본교 학부 재학생 20명 내외/ 차수별\n\n3) 일정: 2022년 9월 28일(수)/ 10월 05일(수)/ 10월 26일(수) 9:00-11:00\n\n4) 신청방법: 글쓰기말하기센터 홈페이지(http://geulmal.cu.ac.kr) 접속\n\n5) 장소: 추후 합격자 개인 공지\n\n6) 주제: 리포트반\n\n- 리포트 쓰기 기초\n\n- 리포트 쓰기\n\n-리포트 퇴고하기\n\n7) 강사: 우문기 교수\n\n8) 혜택: 참석자 Stella 부여','2022-09-16 18:52',9,NULL),(14,'2022학년도 2학기 제3차 비전임교원 채용 공고','\n\n\n\n2022학년도 2학기 제3차 비전임교원 채용 공고\n\n\n\n\n\n\n\n \n\n\n1. 채용분야 및 인원\n\n채용구분\n\n채용인원(명)\n\n비전임교원\n\n4\n\n \n※ 채용분야별 채용인원, 담당예정 업무, 최소자격요건, 특이사항 등 세부내용은 “비전임교원 채\n\n   용 상세 현황(붙임파일 1.)” 참고\n\n\n\n2. 지원자격\n\n 가. 「교육공무원법」에 따른 결격사유가 없는 자\n\n 나. 「대학교원 자격기준 등에 관한 규정」에 의한 조교수 이상 자격기준에 해당하는 자\n\n 다. 임용예정일(2022. 10. 1.) 기준 채용분야별 최소자격요건을 모두 충족하는 자\n\n\n\n3. 전형방법\n\n1. 서류심사\n\n\n\n2. 기초심사\n\n· 심사위원 평균점수가 10점(20점 만점) 미만일 경우 불합격\n\n· 기초심사 결과는 합격 여부 판단으로만 사용하고, 최종 순위 판정하는 점수에는 포함하지 않음\n\n    \n\n3. 전공심사\n\n· 심사위원 평균점수가 60점(100점 만점) 미만일 경우 불합격\n\n    \n\n4. 면접(오디션)심사 :  채용분야별로 필요 시 실시\n\n· 심사위원 평균점수가 60점(100점 만점) 미만일 경우 불합격\n\n \n\n\n4. 채용일정\n\n절 차\n\n일 정\n\n비 고\n\n온라인 접수\n\n2022. 9. 15. (목) 14:00 ~ 9. 22. (목) 17:00\n\n우리 대학 홈페이지\n\n임용심사\n\n2022. 9. 23. (금) ~ 9. 26. (월)\n\n\n\n임용예정자 통보\n\n2022. 9. 29. (목) \n\nSMS 통보\n\n임용계약 체결\n\n2022. 10. 4. (화)\n\n학과 및 부서 사무실\n\n \n ※ 채용일정은 사정에 의하여 변경될 수 있음\n\n\n\n5. 접수기간 및 방법\n\n  가. 접수기간 : 2022. 9. 15. (목) 14:00 ~ 9. 22. (목) 17:00\n\n  나. 접수방법\n\n    1) 본교 채용 홈페이지를 통한 온라인 접수\n\n      ※ 권장 환경 : Windows 8 이상의 운영체제에서 Explorer 11 이상 또는 크롬 브라우저 사용\n\n    2) 우편·이메일 또는 방문 접수 불가\n\n    3) 비전임교원 중 1개 직위 및 채용분야에 한하여 지원 가능\n\n    4) “제출” 버튼까지 클릭하여야 접수가 완료됨\n\n\n\n6. 제출서류 : 본교 채용 홈페이지에서 직접 입력 또는 PDF파일 업로드\n\n구 분\n\nPDF 파일 업로드\n\n인적사항\n\n(직접 입력)\n\n학력사항\n\n학력 사항을 증빙하는 졸업증명서, 성적증명서\n\n(외국학위의 경우 학위기 및 외국박사학위신고필증 포함하여 제출)\n\n※ 학교명 검색이 되지 않을 경우 교무인사팀(053-850-3352)으로 문의\n\n교육·연구·산업체 경력\n\n경력(재직)증명서 또는 강의경력증명서\n\n연구실적\n\n(최소자격요건 상 필요 시) 연구실적 증빙자료\n\n자격사항\n\n(최소자격요건 상 필요 시) 자격 증빙자료\n\n자기소개서\n\n(직접 입력)\n\n추가사항\n\n(공통) 성범죄경력조회동의서, 기타 추가 증빙자료\n\n \n※ 외국어로 발급된 서류는 본인이 서명·날인한 번역문을 파일에 포함하여 제출\n\n\n\n\n\n7. 임용 및 처우\n\n  가. 임용기간 : 채용 상세 현황(붙임파일 1.)의 임용기간에 따름\n\n  나. 보수 : 계약에 따름\n\n  다. 재임용 : 비전임교원의 경우 재임용 절차는 없으며, 계약기간 만료 시 당연 퇴직함. 다만, 퇴직 후 신규임용 절차를 거쳐 임용될 수 있음\n\n\n\n8. 유의사항\n\n  가. 임용예정일에 충족예정이었던 최소자격요건을 충족하지 못할 경우 임용이 취소될 수 있음\n\n  나. 제출서류가 미비할 경우 심사과정에서 탈락할 수 있으며, 제출서류가 허위로 드러날 경우 임용이 취소될 수 있음\n\n  다. 지원자 중 적격자가 없을 경우 임용을 하지 않거나 공고 기간을 단축하여 재공고를 실시할 수 있음\n\n  라. 임용예정자의 임용 포기, 연락두절, 그 밖에 임용불능사유가 발생하는 경우에는 후순위자를 임용할 수 있음\n\n  마. 접수 마감 시간이 임박하여 지원할 경우 시스템 오류(서버 폭주, PC 환경 문제 등)가 발생할 수 있으니 사전에 접수하기를 권장하며, 이로 인한 문제 발생 시 지원자 본인의 책임으로 봄 \n\n  바. 기타 이 공고에 명시되지 않은 사항은 본교 관련 규정에 따름\n\n\n\n9. 문의처\n\n  가. 담당예정 업무, 채용분야별 최소자격요건 등에 대한 문의는 첨부파일에 명시된 학과 및 부서별 사무실로 문의\n\n  나. 기타 채용 전반에 대한 문의는 교무인사팀 담당자(053-850-3352)로 문의\n\n\n\n\n\n2022.  9.  15.','2022-09-16 19:01',4,NULL),(15,'(예비군연대)(긴급)(중요) 예비군훈련 일정 변경(2차)','                        예비군훈련 일정 변경\n\n1. 일정 취소 : 10월 24일 ~ 27일\n\n     * 예비군훈련부대의 긴급한 사정으로 불가피하게 훈련을 취소하게 됨\n\n \n\n2. 변경 후 훈련 가능 일정\n\n   가. 10월 11일(화)                            나. 10월 12일(수) ~ 14일(금)\n\n   다. 10월 31일(월) ~ 11월 3일(목)      라. 11월 21일(월) ~ 24일(목)\n\n \n\n3. 훈련일정 선택(훈련 1일 편성 인원 230명)\n\n  가. 10월 11일 : 예비군연대 방문 또는 전화 신청\n\n  나. 기타 훈련 일정은 예비군홈페이지 훈련 일정 선택에서 가능\n\n     * 예비군홈페이지 접속 제한 시 예비군연대 방문 또는 전화 신청\n\n \n\n4. 행정사항\n\n   가. 예비군홈페이지 활용 훈련 일정 변경은 9월 19일까지 가능(이후에는 불가)\n\n   나. 9월 19일까지 훈련 일정 미변경 시 임의 편성\n\n   다. 이번에 실시되는 훈련 미참석 예비군은 12월 5일 ~ 8일 편성 예정\n\n   라. 채용시험 등 훈련 일정 변경으로 해소되지 않는 사유가 있는 예비군은 예비군연대 문의\n\n     * 연기 불가 : 수업, 중간고사 등 훈련 일정 변경으로 해소 가능한 경우\n\n  마. 예비군연대 : B5 303호 / 전화 : 053-850-3306, 3308','2022-09-16 19:10',13,NULL),(16,'공기업 NCS 취업캠프 신청 안내','[5차년도 대학일자리플러스센터] \n\n공기업 NCS 취업캠프 신청 안내\n\n\n■ 혜택 : 교재 제공(무료), 수료증, 스텔라\n\n■ 신청안내\n\n * 신청기간 : ~ 2022.09.21(수)까지 \n\n * 모집인원 : 50명 <선착순>\n\n * 신청방법 : https://naver.me/GKvHQzyE\n\n * 신청대상 : 재학생 및 졸업생, 지역청년 ※ 우리 대학 및 타 대학생 모두 신청 가능\n\n * 문의 : 대학일자리플러스센터 ☎053)850-3084\n\n■ 선발자 안내 \n\n * 장소 : 본교 홈페이지 > 진로취업공지\n\n * 일시 : 2022.09.22.(목) 17시 예정\n\n■ 교육개요\n\n과정명\n\n교육장소\n\n인원\n\n교육일정\n\n교육시간\n\n공기업 NCS 취업캠프\n\n비대면교육\n\n(실시간 온라인)\n\n50명\n\n9.30(금)~10.1(토)\n\n10시~17시\n\n(점심: 12시~13시)\n\n \n■ 교육내용\n\n시간\n\n주제(1일차)\n\n방식\n\n주제(2일차)\n\n방식\n\n10:00~10:50\n\n오리엔테이션 및 특강\n\n-NCS 이해-\n\n대단위\n\nNCS 직업기초능력 문제풀이\n\n(의사소통, 대인관계, 기술능력 등)\n\n대단위\n\n11:00~11:50\n\nNCS기반 입사지원서 및 자기소개서?면접?인성검사 이해\n\n12:00~12:50\n\n중식\n\n13:00~13:50\n\n경력기술서 및 경험기술서 작성 전략\n\n대단위\n\nNCS 직업기초능력 문제풀이\n\n(의사소통, 대인관계, 기술능력 등)\n\n대단위\n\n14:00~14:50\n\n기출 문제 분석?문제 패턴 이해?필기시험공부법\n\n15:00~17:00\n\nNCS 직업기초능력 문제풀이\n\n(의사소통, 대인관계, 기술능력 등)\n\nNCS 실전대비 모의고사\n\n \n■ 유의사항\n\n * 코로나19 감염병 예방을 위해서 실시간 온라인 교육으로 진행함\n\n * 캠프 참가 선발자는 캠프 기간 오전 10시 이전에 접속 및 대기 \n\n * 자세한 사항은 캠프 참가 선발자 발표(9.22.목 17시)시 공지\n\n * 교재 무료 제공(교재는 온라인 교육 관계로 우편으로 배송되오니 신청서에 주소를 정확히 기재) \n\n * 2022-2학기 스텔라점수 인정(우리 대학 학생에 한함)\n\n * 신청 후 무단 불참 시 타 프로그램 참여 제한\n\n■ 문의 : 대학일자리플러스센터 ☎053-850-3084','2022-09-16 19:10',45,'2022-09-22 09:08');
/*!40000 ALTER TABLE `k_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_pay_d`
--

DROP TABLE IF EXISTS `k_pay_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_pay_d` (
  `pay_d_amount` int(11) DEFAULT NULL,
  `pay_d_balance` int(11) DEFAULT NULL,
  `pay_d_bank` varchar(100) DEFAULT NULL,
  `pay_d_day` date DEFAULT NULL,
  `pay_id` varchar(100) DEFAULT NULL,
  KEY `R_95` (`pay_id`),
  CONSTRAINT `R_95` FOREIGN KEY (`pay_id`) REFERENCES `k_pay_h` (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_pay_d`
--

LOCK TABLES `k_pay_d` WRITE;
/*!40000 ALTER TABLE `k_pay_d` DISABLE KEYS */;
INSERT INTO `k_pay_d` VALUES (1000000,0,'농협','2022-09-26','11123456202211015');
/*!40000 ALTER TABLE `k_pay_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_pay_h`
--

DROP TABLE IF EXISTS `k_pay_h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_pay_h` (
  `pay_id` varchar(100) NOT NULL,
  `stu_id` varchar(100) DEFAULT NULL,
  `bill_id` varchar(100) DEFAULT NULL,
  `pay_h_total` int(11) DEFAULT 1,
  `pay_h_remain` int(11) DEFAULT 1,
  `pay_h_s1` int(11) DEFAULT NULL,
  `pay_h_s2` int(11) DEFAULT NULL,
  `pay_h_s3` int(11) DEFAULT NULL,
  `pay_h_yn` varchar(100) DEFAULT 'n',
  `pay_h_grade` int(11) DEFAULT NULL,
  `pay_h_sem` int(11) DEFAULT NULL,
  `pay_h_type` varchar(100) DEFAULT 'b',
  PRIMARY KEY (`pay_id`),
  KEY `R_39` (`stu_id`),
  KEY `R_40` (`bill_id`),
  CONSTRAINT `R_39` FOREIGN KEY (`stu_id`) REFERENCES `k_users` (`user_id`),
  CONSTRAINT `R_40` FOREIGN KEY (`bill_id`) REFERENCES `k_bills` (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_pay_h`
--

LOCK TABLES `k_pay_h` WRITE;
/*!40000 ALTER TABLE `k_pay_h` DISABLE KEYS */;
INSERT INTO `k_pay_h` VALUES ('00000000202211015','00000000','202211015',1,1,NULL,NULL,NULL,'n',1,1,'b'),('00000001202211017','00000001','202211017',1,1,NULL,NULL,NULL,'n',3,1,'b'),('00103086202211023','00103086','202211023',1,1,NULL,NULL,NULL,'n',3,1,'b'),('00149383202211010','00149383','202211010',1,1,NULL,NULL,NULL,'n',4,1,'b'),('00149776202211026','00149776','202211026',1,1,NULL,NULL,NULL,'n',1,1,'b'),('01103888202211018','01103888','202211018',1,1,NULL,NULL,NULL,'n',2,1,'b'),('01119665202211015','01119665','202211015',1,1,NULL,NULL,NULL,'n',1,1,'b'),('01132538202211013','01132538','202211013',1,1,NULL,NULL,NULL,'n',1,1,'b'),('01174314202211014','01174314','202211014',1,1,NULL,NULL,NULL,'n',2,1,'b'),('02103984202211015','02103984','202211015',1,1,NULL,NULL,NULL,'n',1,1,'b'),('02116466202211021','02116466','202211021',1,1,NULL,NULL,NULL,'n',1,1,'b'),('11123456202211015','11123456','202211015',1,0,NULL,NULL,NULL,'y',2,1,'b'),('11123789202211023','11123789','202211023',1,1,NULL,NULL,NULL,'n',2,1,'b'),('17128399202211011','17128399','202211011',1,1,NULL,NULL,NULL,'n',4,1,'b'),('17198885202211021','17198885','202211021',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18100892202211025','18100892','202211025',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18103786202211023','18103786','202211023',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18116253202211023','18116253','202211023',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18116606202211013','18116606','202211013',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18119511202211011','18119511','202211011',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18139962202211018','18139962','202211018',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18140568202211019','18140568','202211019',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18146593202211016','18146593','202211016',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18180198202211021','18180198','202211021',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18183524202211026','18183524','202211026',1,1,NULL,NULL,NULL,'n',4,1,'b'),('18199618202211019','18199618','202211019',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19104187202211012','19104187','202211012',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19109453202211020','19109453','202211020',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19109454202211016','19109454','202211016',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19111503202211017','19111503','202211017',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19136098202211019','19136098','202211019',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19143945202211010','19143945','202211010',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19179440202211012','19179440','202211012',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19189372202211019','19189372','202211019',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19192126202211016','19192126','202211016',1,1,NULL,NULL,NULL,'n',4,1,'b'),('19193538202211020','19193538','202211020',1,1,NULL,NULL,NULL,'n',4,1,'b'),('20121193202211019','20121193','202211019',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20141374202211022','20141374','202211022',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20142248202211023','20142248','202211023',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20144609202211022','20144609','202211022',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20165495202211023','20165495','202211023',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20165528202211017','20165528','202211017',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20165868202211011','20165868','202211011',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20166057202211013','20166057','202211013',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20173769202211023','20173769','202211023',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20178628202211010','20178628','202211010',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20179587202211026','20179587','202211026',1,1,NULL,NULL,NULL,'n',3,1,'b'),('20187183202211011','20187183','202211011',1,1,NULL,NULL,NULL,'n',3,1,'b'),('21105406202211026','21105406','202211026',1,1,NULL,NULL,NULL,'n',2,1,'b'),('21118400202211018','21118400','202211018',1,1,NULL,NULL,NULL,'n',2,1,'b'),('21124593202211019','21124593','202211019',1,1,NULL,NULL,NULL,'n',2,1,'b'),('21149494202211014','21149494','202211014',1,1,NULL,NULL,NULL,'n',2,1,'b'),('21150011202211026','21150011','202211026',1,1,NULL,NULL,NULL,'n',2,1,'b'),('21164493202211019','21164493','202211019',1,1,NULL,NULL,NULL,'n',2,1,'b'),('22102082202211023','22102082','202211023',1,1,NULL,NULL,NULL,'n',1,1,'b'),('22122035202211025','22122035','202211025',1,1,NULL,NULL,NULL,'n',1,1,'b'),('22145097202211022','22145097','202211022',1,1,NULL,NULL,NULL,'n',1,1,'b'),('22145874202211025','22145874','202211025',1,1,NULL,NULL,NULL,'n',1,1,'b'),('22151829202211019','22151829','202211019',1,1,NULL,NULL,NULL,'n',1,1,'b'),('22156790202211025','22156790','202211025',1,1,NULL,NULL,NULL,'n',1,1,'b'),('22173886202211020','22173886','202211020',1,1,NULL,NULL,NULL,'n',1,1,'b'),('22175972202211014','22175972','202211014',1,1,NULL,NULL,NULL,'n',1,1,'b'),('22186694202211021','22186694','202211021',1,1,NULL,NULL,NULL,'n',1,1,'b'),('test123202211015','test123','202211015',1,1,NULL,NULL,NULL,'n',1,1,'b');
/*!40000 ALTER TABLE `k_pay_h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_prof_q`
--

DROP TABLE IF EXISTS `k_prof_q`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_prof_q` (
  `prof_q_id` varchar(100) NOT NULL,
  `prof_q_content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`prof_q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_prof_q`
--

LOCK TABLES `k_prof_q` WRITE;
/*!40000 ALTER TABLE `k_prof_q` DISABLE KEYS */;
INSERT INTO `k_prof_q` VALUES ('EV1000','강의계획서가 강좌의 목표,내용,성적평가 방법 등 과목의 성격을 이해하기 쉽게 구성되었다.'),('EV1001','강의계획서 진도에 맞게 해당 주차에 온라인 수업 콘텐츠가 게시되었다'),('EV1002','강의교재나 참고자료가 수업내용을 이해하는데 적절하게 구성되었으며 다양한 학습자료가 제공되\r\n었다.\r\n'),('EV1003','학생들의 질의응답 게시판 또는 이메일, 모바일 등을 활용하여 질의 내용에 성실하게 답변하였다.\r\n'),('EV1004','과제의 방법과 성적 평가기준 및 방식은 객관적이고 합리적으로 제시되었다.\r\n'),('EV1005','과제의 내용 및 분량은 적절하였으며 강의 내용을 이해하는데 도움을 주었다'),('EV1006','이 강의를 통해 관련 지식과 전공능력(핵심역량)이 증진되었다.\r\n');
/*!40000 ALTER TABLE `k_prof_q` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_prof_r`
--

DROP TABLE IF EXISTS `k_prof_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_prof_r` (
  `class_id` varchar(100) DEFAULT NULL,
  `prof_r_result` varchar(500) DEFAULT NULL,
  `prof_r_date` date DEFAULT NULL,
  `prof_q_id` varchar(100) DEFAULT NULL,
  `class_member_id` varchar(100) DEFAULT NULL,
  KEY `R_54` (`class_id`),
  KEY `R_85` (`prof_q_id`),
  KEY `R_53` (`class_member_id`),
  CONSTRAINT `R_53` FOREIGN KEY (`class_member_id`) REFERENCES `k_class_member` (`class_member_id`),
  CONSTRAINT `R_54` FOREIGN KEY (`class_id`) REFERENCES `k_class` (`class_id`),
  CONSTRAINT `R_85` FOREIGN KEY (`prof_q_id`) REFERENCES `k_prof_q` (`prof_q_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_prof_r`
--

LOCK TABLES `k_prof_r` WRITE;
/*!40000 ALTER TABLE `k_prof_r` DISABLE KEYS */;
INSERT INTO `k_prof_r` VALUES ('CL11000','1','2022-09-25','EV1000','CMI23000'),('CL11000','2','2022-09-25','EV1001','CMI23000'),('CL11000','3','2022-09-25','EV1002','CMI23000'),('CL11000','4','2022-09-25','EV1003','CMI23000'),('CL11000','5','2022-09-25','EV1004','CMI23000'),('CL11000','4','2022-09-25','EV1005','CMI23000'),('CL11000','3','2022-09-25','EV1006','CMI23000'),('CL11000','5','2022-09-25','EV1000','CMI23001'),('CL11000','4','2022-09-25','EV1001','CMI23001'),('CL11000','3','2022-09-25','EV1002','CMI23001'),('CL11000','2','2022-09-25','EV1003','CMI23001'),('CL11000','1','2022-09-25','EV1004','CMI23001'),('CL11000','2','2022-09-25','EV1005','CMI23001'),('CL11000','3','2022-09-25','EV1006','CMI23001'),('CL11000','2','2022-09-25','EV1000','CMI23002'),('CL11000','2','2022-09-25','EV1001','CMI23002'),('CL11000','1','2022-09-25','EV1002','CMI23002'),('CL11000','1','2022-09-25','EV1003','CMI23002'),('CL11000','3','2022-09-25','EV1004','CMI23002'),('CL11000','3','2022-09-25','EV1005','CMI23002'),('CL11000','4','2022-09-25','EV1006','CMI23002'),('CL11000','4','2022-09-25','EV1000','CMI23003'),('CL11000','4','2022-09-25','EV1001','CMI23003'),('CL11000','5','2022-09-25','EV1002','CMI23003'),('CL11000','5','2022-09-25','EV1003','CMI23003'),('CL11000','3','2022-09-25','EV1004','CMI23003'),('CL11000','3','2022-09-25','EV1005','CMI23003'),('CL11000','1','2022-09-25','EV1006','CMI23003'),('CL11000','5','2022-09-25','EV1000','CMI23004'),('CL11000','5','2022-09-25','EV1001','CMI23004'),('CL11000','5','2022-09-25','EV1002','CMI23004'),('CL11000','5','2022-09-25','EV1003','CMI23004'),('CL11000','5','2022-09-25','EV1004','CMI23004'),('CL11000','5','2022-09-25','EV1005','CMI23004'),('CL11000','5','2022-09-25','EV1006','CMI23004'),('CL11000','1','2022-09-25','EV1000','CMI23005'),('CL11000','1','2022-09-25','EV1001','CMI23005'),('CL11000','1','2022-09-25','EV1002','CMI23005'),('CL11000','1','2022-09-25','EV1003','CMI23005'),('CL11000','1','2022-09-25','EV1004','CMI23005'),('CL11000','1','2022-09-25','EV1005','CMI23005'),('CL11000','1','2022-09-25','EV1006','CMI23005'),('CL11000','2','2022-09-25','EV1000','CMI23006'),('CL11000','3','2022-09-25','EV1001','CMI23006'),('CL11000','3','2022-09-25','EV1002','CMI23006'),('CL11000','3','2022-09-25','EV1003','CMI23006'),('CL11000','3','2022-09-25','EV1004','CMI23006'),('CL11000','3','2022-09-25','EV1005','CMI23006'),('CL11000','3','2022-09-25','EV1006','CMI23006'),('CL11000','2','2022-09-26','EV1000','CMI22000'),('CL11000','2','2022-09-26','EV1001','CMI22000'),('CL11000','3','2022-09-26','EV1002','CMI22000'),('CL11000','3','2022-09-26','EV1003','CMI22000'),('CL11000','3','2022-09-26','EV1004','CMI22000'),('CL11000','2','2022-09-26','EV1005','CMI22000'),('CL11000','3','2022-09-26','EV1006','CMI22000');
/*!40000 ALTER TABLE `k_prof_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_professors`
--

DROP TABLE IF EXISTS `k_professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_professors` (
  `prof_id` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `prof_edu` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `prof_career` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `prof_paper` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `prof_lab` varchar(1000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `prof_mentee` int(2) DEFAULT NULL,
  PRIMARY KEY (`prof_id`),
  CONSTRAINT `R_1` FOREIGN KEY (`prof_id`) REFERENCES `k_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_professors`
--

LOCK TABLES `k_professors` WRITE;
/*!40000 ALTER TABLE `k_professors` DISABLE KEYS */;
INSERT INTO `k_professors` VALUES ('00217253','경희대학교 컴퓨터공학 박사','한국금융연수원 및 한국생산성본부 전임교수 (2018.09 ~ 현재)\n(주)베네테크 부설연구소 선임연구원\n러닝클루 강사','2002.07~2002.08. 블루투스 다중접속 스캐너 개발\nX3D를 이용한 Web3D기반 3D Object 표현에 대한 연구”, (한국해양정보통신학회)\n시스템 성능 평가를 위한 자동화 측정 모듈 개발(2005.6.1 ~ 2005.12.15)\nInside Virtual Machine, 1999\n2002.07~2002.08. 블루투스 다중접속 스캐너 개발','403호실',10),('00265609','고려대학교 공학 석사(소프트웨어공학)','러닝파트너 대표이사\n(주)모바일기술연구소 선임연구원\n서일대학교 모바일 프로그래밍 심화 실습, 데이터베이스 심화 실습 외래교수(2020. 09. 01.~ 현재)','Universal Data Model과 Universal Pattern, 2010\n오픈소스(Open Source) 소프트웨어 활용 증진을 위한 적용 모델 표준화 연구(2003.11.1 ~ 2004.3.15)\n-김병국, 홍성화, 허경, 엄두섭, 블루투스를 이용한 애드혹 네트워크에서의 효율적인 멀티미디어 데이터 전송,한국통신학회 논문지, . 2008.03.\n가상현실 교과목, 콘텐츠품질인증, 인증번호:GEC2003U-06-001 A (사단법인 한국사이버교육학회)\nUniversal Data Model과 Universal Pattern, 2010','404호실',10),('01115942','연세대학교 경제학 석사(빅데이터분석)','한국기술교육대학교 블록체인 온라인 강사\n㈜ 이기는 길 설립\n한국직업능력개발원, 한국교육학술정보원, 지방행정연수원 콘텐츠분야 심사위원','압권(壓卷)]플래시 8, 컴퓨터이해와 활용”, (도서출판 웰북,2007년)\nTilt Servo Control by Intelligent Algorithm in Holographic Data Storage System / Japanese Journal of Applied Physics / 주저자(2013)\n사이버 교육용 테스트 시스템을 위한 소프트웨어 컴포넌트 개발(2001.8.1 ~ 2002.2.28)\n게임 및 디지털 콘텐츠의 감성 키워드 도출 연구, (한국컴퓨터게임학회논문지, Vol. 28, No. 3, 30 september 2015)\n압권(壓卷)]플래시 8, 컴퓨터이해와 활용”, (도서출판 웰북,2007년)','404호실',10),('01158956','연세대학교 경제학 석사(빅데이터분석)','한국기술교육대학교 블록체인 온라인 강사\n㈜ 이기는 길 설립\n한국직업능력개발원, 한국교육학술정보원, 지방행정연수원 콘텐츠분야 심사위원','압권(壓卷)]플래시 8, 컴퓨터이해와 활용”, (도서출판 웰북,2007년)\nTilt Servo Control by Intelligent Algorithm in Holographic Data Storage System / Japanese Journal of Applied Physics / 주저자(2013)\n사이버 교육용 테스트 시스템을 위한 소프트웨어 컴포넌트 개발(2001.8.1 ~ 2002.2.28)\n게임 및 디지털 콘텐츠의 감성 키워드 도출 연구, (한국컴퓨터게임학회논문지, Vol. 28, No. 3, 30 september 2015)\n압권(壓卷)]플래시 8, 컴퓨터이해와 활용”, (도서출판 웰북,2007년)','404호실',10),('02281628','동국대학교 영상정보통신대학원 석사 (게임제작 전공)','서울사이버대학교 전임교수\n㈜컴피테크 연구 개발 부장(2016.09.01.~2017.05.31)\n동강대학 컴퓨터인터넷계열 겸임교수 역임','-Byoung-Kug Kim, Won-gil Hong and Doo-Seop Eom, A Design of Integrated Management System for Building Constructions based on USNs,2011 International Conference on Data Engineering and Internet Technology (DEIT 2011), . 2011.03.14\n엔트리로 배우는 SW코딩자격 / 다본 / 김종철(2018.09)\nKSDT, International Design Current 2010(2010.5.7~11)\n학습자중심의 교육용 콘텐츠 제작 요소 정의와 제작에 관한 연구, (한국멀티미디어학회, 춘계학술발표대회 논문집 제12권 제1호, 2009.5)\n-Byoung-Kug Kim, Won-gil Hong and Doo-Seop Eom, A Design of Integrated Management System for Building Constructions based on USNs,2011 International Conference on Data Engineering and Internet Technology (DEIT 2011), . 2011.03.14','506호실',10),('02298076','연세대학교 전기전자공학 박사(자동제어 전공)','㈜ 이기는 길 설립\n고려대학교 정보보호연구원 연구교수\n우리금융 인공지능 딥러닝 사내강사','MMORPG 『ARTRCT』게임 디자인 및 설계\n초보자를 위한 XML\' 2006, 경희대학교 출판국\n-Byoung-Kug Kim, Won-gil Hong and Doo-Seop Eom, A Design of Integrated Management System for Building Constructions based on USNs,2011 International Conference on Data Engineering and Internet Technology (DEIT 2011), . 2011.03.14\nMOS 엑셀 Expert 2013 / 성안당 / 김종철(2017.04)\nMMORPG 『ARTRCT』게임 디자인 및 설계','301호실',10),('03205116','고려대학교 공학 석사(소프트웨어공학)','UCGAME 기획 및 관리 팀장\nIBK기업은행 파이썬 데이터분석 온라인강사\n숭실대학교 강사, 컴퓨터활용(06. 03. 01 ～ 08. 08. 31)','-Byoung-Kug Kim, Sung-Hwa Hong, Young-Sik Jeong and Doo-Seop Eom, The Study of Applying Sensor Networks to a Smart Home,NCM2008, . 2008.09\nOracle 9i SQL & PL/SQL,2001\n세컨드라이프(SL) 요소를 활용한 게임형 이러닝 콘텐츠 개발 전략, (한국디자인문화학회지, Voll16, No.4, 2010.12.30)\n파워포인트 백과사전 / 길벗 / 김종철(2008.03)\n-Byoung-Kug Kim, Sung-Hwa Hong, Young-Sik Jeong and Doo-Seop Eom, The Study of Applying Sensor Networks to a Smart Home,NCM2008, . 2008.09','204호실',10),('03253506','중앙대학교 첨단영상전문대학원 공학석사(영상공학 전공)','고려대학교 부설 컴퓨터, 정보통신연구소 연구원\n숭실사이버대학교 교수\nIBK기업은행 파이썬 데이터분석 온라인강사','감성을 이용한 어린이용 기능성 게임 콘텐츠 개발 연구, (한국컴퓨터게임학회논문지, Vol. 29, No. 1, 30 March 2016)\n압권(壓卷)]플래시 8, 컴퓨터이해와 활용”, (도서출판 웰북,2007년)\n파워포인트 백과사전 / 길벗 / 김종철(2008.03)\n녹색기술센터, 자연어 기반 기후기술분류 AI 경진대회 우승 (1등), 2021.09.\n감성을 이용한 어린이용 기능성 게임 콘텐츠 개발 연구, (한국컴퓨터게임학회논문지, Vol. 29, No. 1, 30 March 2016)','208호실',10),('03279944','동국대학교 영상정보통신대학원 석사 (게임제작 전공)','인덕대학교 강사, DB프로젝트 등(02. 03. 04 ～ 05. 08. 21)\n우리금융 인공지능 딥러닝 사내강사\n농협은행 파이썬 데이터분석 온라인강사','교육인적자원부,한국교육학술정보원 원격대학 경쟁력 강화추진사업 콘텐츠 개발 지원과제 선정(2008년 내 삶속의 색(色), 2005년 게임의 세대 공감 프로젝트, 2004년 디지털카메라와 비디오영상제작, 2003년 Web3D 가상공간 모델링)\n2002.07~2002.08. 블루투스 다중접속 스캐너 개발\nMOS 파워포인트 2013 / 성안당 / 김종철(2017.04)\n컴퓨터의 이해와 활용\' 2006, 생능출판사\n교육인적자원부,한국교육학술정보원 원격대학 경쟁력 강화추진사업 콘텐츠 개발 지원과제 선정(2008년 내 삶속의 색(色), 2005년 게임의 세대 공감 프로젝트, 2004년 디지털카메라와 비디오영상제작, 2003년 Web3D 가상공간 모델링)','206호실',10),('04256872','중앙대학교 첨단영상전문대학원 공학석사(영상공학 전공)','숭실대학교 강사, 컴퓨터활용(06. 03. 01 ～ 08. 08. 31)\nSMT 이사, KSDT, KIPS, KSII, KOCON 정회원 / 문화예술콘텐츠학회 감사\n한국금융연수원 및 한국생산성본부 전임교수 (2018.09 ~ 현재)','『모바일 게임 소스 코드 생성기소스』 생성 모듈 설계 및 구현(중소기업청)\n-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Doo-Seop Eom, An Effective Data Transmission Method In Ad-Hoc Networks Using Bluetooth,4th Asia Pacific International Symposium on Information Technology(APIS), pp.487-490. 2005.01.26-27\nTransitive Signature Schemes for Undirected Graphs from Lattices, KSII Transactions on Internet and Information Systems, 2019.06.\n-김병국, 홍성화, 허경, 엄두섭, 유비쿼터스 센서네트워크에서 에너지 효율적인 망관리 프로토콜 인터페이스,멀티미디어학회논문지, 1223-1234. 2010.08\n『모바일 게임 소스 코드 생성기소스』 생성 모듈 설계 및 구현(중소기업청)','104호실',10),('04291160','한서대학교 공학사','홀로테크 대표(2018.01.03.~ 현재)\n㈜퍼시픽나인 대표(2019.05.24.~ 현재)\n국방부 육군본부 및 예하부대 전산장교','Tilt Servo Control by Intelligent Algorithm in Holographic Data Storage System / Japanese Journal of Applied Physics / 주저자(2013)\n컴퓨터 활용 위한 이산수학\' 2014, 교우사\n「클라우드 컴퓨팅 보안 기술 표준화를 위한 계층 및 역할별 보안 요구사항 관계연구」, 2016.\n컴퓨터 활용 2010 제대로 배우기\' 2011, 생능출판사\nTilt Servo Control by Intelligent Algorithm in Holographic Data Storage System / Japanese Journal of Applied Physics / 주저자(2013)','506호실',10),('05205405','동국대학교 영상정보통신대학원 석사 (게임제작 전공)','서일대학교 전력공학, 마이크로프로세서 이론, 공업수학, 제어기기, 전자회로, 제어공학, 로봇 공학 겸임교수(2012. 03. 01 ~ 2015. 02. 28)\n서울디지털대학교 컴퓨터공학과 객원교수 (2018.03. ~ 현재)\n(주)모바일기술연구소 선임연구원','LOL 게임 여자챔피언의 춤 표현을 위한 감성 요소 추출 연구, (한국컴퓨터게임학회논문지, Vol.28. No.2, 2015.6.30)\nA Strong Binding Encryption Scheme from Lattices for Secret Broadcast, IEEE Communications Letters, 2012.06.\nMMORPG 『ARTRCT』게임 디자인 및 설계\nScalable Hierarchical Identity-based Signature Scheme from Lattices, KSII Transactions on Internet and Information Systems, 2013.12.\nLOL 게임 여자챔피언의 춤 표현을 위한 감성 요소 추출 연구, (한국컴퓨터게임학회논문지, Vol.28. No.2, 2015.6.30)','102호실',10),('05237415','조선대학교 이학석사 및 박사(전자계산학과 전자계산학 전공)','고려대학교 정보보호연구원 연구교수\n서울사이버대학교 전임교수\n고려대학교 부설 컴퓨터, 정보통신연구소 연구원','학습자의 컴퓨터 응용 프로그램 환경에 따른 학습 분기형 콘텐츠 설계전략, (한국인터넷정보학회, 2010년도 추계학술발표대회, 2010.10.29~30)\n2000.08~2000.12. 블루투스 AP 개발 (오프터스)\n2004.08~2005.08. 와이브로 계측기 개발(산업자원부)\n비대면(Untact) 업무를 위한 화상인식 PCA 사용자 인증 시스템 연구”, 디지털산업정보학회 논문지,16권 4호, pp65∼72, / 디지털산업정보학회 논문지 / 박찬길, 박종순 / 2020.12.30.\n학습자의 컴퓨터 응용 프로그램 환경에 따른 학습 분기형 콘텐츠 설계전략, (한국인터넷정보학회, 2010년도 추계학술발표대회, 2010.10.29~30)','209호실',10),('06200595','고려대학교 문학박사 (문화콘텐츠학)','경희대학교 산학중점교수\n상주대학교 강사, 전산교양 등(05. 03. 02 ～ 07. 08. 24)\n한국산업기술대학교 인공지능 강사','파워포인트 애니메이션 / 길벗 / 김종철(2008.12)\n2000.04~2000.08. UNIX 보안 시스템 개발 (하나 데이터 시스템)\n-김병국,허경,홍성화,엄두섭, Architecture Design based on Ubiquitous Sensor Networks for Smart Home,2009년도 한국멀티미디어학회 추계학술발표대회 , 457. 2009.11.20-2009.11.21\n모바일 앱 개발을 위한 JavaScript & jQuery Mobile, 2012\n파워포인트 애니메이션 / 길벗 / 김종철(2008.12)','207호실',10),('06281484','연세대학교 경제학 석사(빅데이터분석)','SW마에스트로 인공지능 딥러닝 멘토강사\n숭실대학교 강사, 컴퓨터활용(06. 03. 01 ～ 08. 08. 31)\n한성대학교 모바일 프로그래밍 시간강사(2013. 03. 01. ~ 2014. 08. 30)','Oracle 9i SQL & PL/SQL,2001\n시스템 성능 평가를 위한 자동화 측정 모듈 개발(2005.6.1 ~ 2005.12.15)\n엔트리로 배우는 SW코딩자격 / 다본 / 김종철(2018.09)\nStrong designated verifier signature scheme from lattices in the standard model, Security and Communication Networks, 2016.12.\nOracle 9i SQL & PL/SQL,2001','202호실',10),('06283617','건국대학교 공학석사(컴퓨터정보공학)','서울사이버대학교 빅데이터·정보보호학과 교수\n국민대학교 겸임교수, 중급프로그래밍, 캡스톤디자인 등(10. 03. 02 ～ 20. 05. 31)\n숭실사이버대학교 교수','대규모 네트워크 프로그램 개발을 위한 Node.js 프로그래밍, 2014\n2005.08~ . ZigBee 전체 스택(full-stack) 개발\n-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Doo-Seop Eom, An Effective Data Transmission Method In Ad-Hoc Networks Using Bluetooth,4th Asia Pacific International Symposium on Information Technology(APIS), pp.487-490. 2005.01.26-27\n2006.12~2007.03 Ubiquitous 네트워크 관리방법에 대한 연구: USN 관리 프로토콜 개발 (SKT)\n대규모 네트워크 프로그램 개발을 위한 Node.js 프로그래밍, 2014','505호실',10),('07231165','고려대학교 전산학 석사','러닝클루 강사\n㈜마이존크리에이션 연구개발 팀장(2000.12.01.~2001.06.30)\n주식회사서울테크벨리 책임연구원(2007.10 ～ 2012.02)','A Strong Binding Encryption Scheme from Lattices for Secret Broadcast, IEEE Communications Letters, 2012.06.\n-Byoung-Kug Kim, Sung-Hwa Hong, Seung-Bum Lee and Doo-Seop Eom, The Study based on Network Management Protocol Interface in Ubiquitous Sensor Network,The International Conference on Applications and Principles of Information Science(APIS)7, pp.113-116. 2008.01\niOS 모바일 플랫폼 구조의 이해, 2011\n전자상거래 관리사\' 2006, 학문사\nA Strong Binding Encryption Scheme from Lattices for Secret Broadcast, IEEE Communications Letters, 2012.06.','403호실',10),('07277873','건국대학교 문학박사(중어중문학 전공)','IBK기업은행 파이썬 데이터분석 온라인강사\n방송정보기술사\n서울특별시 정보화사업추진위원회, 정보통신산업진흥원 기술개발관리단 평가위원','컴퓨터 활용 제대로 배우기(개정판)\' 2009, 생능출판사\nScalable Hierarchical Identity-based Signature Scheme from Lattices, KSII Transactions on Internet and Information Systems, 2013.12.\n가상현실 교과목, 콘텐츠품질인증, 인증번호:GEC2003U-06-001 A (사단법인 한국사이버교육학회)\n-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Doo-Seop Eom, An Effective Data Transmission Method In Ad-Hoc Networks Using Bluetooth,4th Asia Pacific International Symposium on Information Technology(APIS), pp.487-490. 2005.01.26-27\n컴퓨터 활용 제대로 배우기(개정판)\' 2009, 생능출판사','106호실',10),('07291274','인천대학교 수학학사','한국기술교육대학교 블록체인 온라인 강사\n㈜ 이기는 길 설립\n한국직업능력개발원, 한국교육학술정보원, 지방행정연수원 콘텐츠분야 심사위원','2010 Winter International Design Exhibition of The Korean Society of Design Culture(2010.2.1~6)\nPython 프로그래밍, 2014\n스크래치 COS 2급 / 성안당 / 김종철(2019.01)\nX3D를 이용한 Web3D기반 3D Object 표현에 대한 연구”, (한국해양정보통신학회)\n2010 Winter International Design Exhibition of The Korean Society of Design Culture(2010.2.1~6)','405호실',10),('07299522','고려대학교 공학 박사','텔슨전자(주) 주임연구원(2002. 07 ～ 2004.09)\n고려대학교 제어시스템보안연구센터 연구교수\n고려대학교 정보보호연구원 연구교수','사이버 교육용 테스트 시스템을 위한 소프트웨어 컴포넌트 개발(2001.8.1 ~ 2002.2.28)\nMOS 2000 6권 / 길벗 / 김종철(2006.03)\nSharing Privacy Protected and Statistically Sound Clinical Research Data Using Outsourced Data Storage, Journal of Applied Mathematics, 2014.05.\n-김병국, 홍성화, 허경, 엄두섭, 블루투스를 이용한 애드혹 네트워크에서의 효율적인 멀티미디어 데이터 전송,한국통신학회 논문지, . 2008.03.\n사이버 교육용 테스트 시스템을 위한 소프트웨어 컴포넌트 개발(2001.8.1 ~ 2002.2.28)','401호실',10),('08268070','고려대학교 전산학 석사','러닝클루 강사\n㈜마이존크리에이션 연구개발 팀장(2000.12.01.~2001.06.30)\n주식회사서울테크벨리 책임연구원(2007.10 ～ 2012.02)','A Strong Binding Encryption Scheme from Lattices for Secret Broadcast, IEEE Communications Letters, 2012.06.\n-Byoung-Kug Kim, Sung-Hwa Hong, Seung-Bum Lee and Doo-Seop Eom, The Study based on Network Management Protocol Interface in Ubiquitous Sensor Network,The International Conference on Applications and Principles of Information Science(APIS)7, pp.113-116. 2008.01\niOS 모바일 플랫폼 구조의 이해, 2011\n전자상거래 관리사\' 2006, 학문사\nA Strong Binding Encryption Scheme from Lattices for Secret Broadcast, IEEE Communications Letters, 2012.06.','403호실',10),('08287004','고려대학교 공학박사(정보보호학)','서울시북부기술교육원 학과장(2015.06.04 ～ 2020. 현재)\n사)디지털산업정보학회 이사\n온라인 Action FPS 울프팀 PD','컴퓨터 기본+활용 제대로 배우기\' 2007, 생능출판사\n-김병국, 홍성화, 허경, 엄두섭, 블루투스를 이용한 애드혹 네트워크에서의 효율적인 멀티미디어 데이터 전송,한국통신학회 논문지, . 2008.03.\nIntelligence control system compensation by DNA coding method in holographic data storage system / Microsystem Technologies / 주저자(2015)\n컴퓨터 기본+활용 제대로 배우기\' 2007, 생능출판사\n컴퓨터 기본+활용 제대로 배우기\' 2007, 생능출판사','508호실',10),('08291798','고려대학교 공학 석사(소프트웨어공학)','한국직업능력개발원, 한국교육학술정보원, 지방행정연수원 콘텐츠분야 심사위원\nUCGAME 기획 및 관리 팀장\n경희대학교 산학중점교수','온라인 게임 『배틀 래더』운영 기획 및 프로젝트 운영 관리\n3차원 가상 시뮬레이션 기법을 적용한 사이버대학(원격강의) 교육 콘텐츠 설계”,(한국디자인포럼, 2007.8)\n-김병국,홍성화,이승범,엄두섭, USN에서 망관리 프로토콜 인터페이스를 위한 연구,한국통신학회 2008 하계학술발표회, . 2008.07.\n시스템 성능 평가를 위한 자동화 측정 모듈 개발(2005.6.1 ~ 2005.12.15)\n온라인 게임 『배틀 래더』운영 기획 및 프로젝트 운영 관리','410호실',10),('10245479','인천대학교 수학학사','더존디지털웨어 팀장\n인터뷰드(주) 연구원(1999 .12.～ 2002 . 07)\n국방대학교 교수','KOCON, 2010 Spring International Digital Design Exhibition(2010.5.14~17)\n학습자의 컴퓨터 응용 프로그램 환경에 따른 학습 분기형 콘텐츠 설계전략, (한국인터넷정보학회, 2010년도 추계학술발표대회, 2010.10.29~30)\n『모바일 게임 소스 코드 생성기소스』 생성 모듈 설계 및 구현(중소기업청)\nTilt Servo Control by Intelligent Algorithm in Holographic Data Storage System / Japanese Journal of Applied Physics / 주저자(2013)\nKOCON, 2010 Spring International Digital Design Exhibition(2010.5.14~17)','309호실',10),('10271715','고려대학교 전자컴퓨터공학과 석사','e그린원격평생교육원 촬영/운영\n온라인 Action RPG 라키온 PD\n우리에프아이에스 검사부 선임검사역','가상현실 공간에서의 VRML을 이용한 3차원 Graphic Morphing 기술”, (중소기업청)\nDesign of algorithm for the 3D object representation based on the Web3D using X3D”, (5th Int. Conference PDCAT 04)\nOracle 11g SQL, 2012\n2002.03~2002.10. 블루투스 무선보안시스템 개발 (에스원 프로젝트)\n가상현실 공간에서의 VRML을 이용한 3차원 Graphic Morphing 기술”, (중소기업청)','105호실',10),('10278966','건국대학교 문학박사(중어중문학 전공)','정보경영연구원 컨설팅 및 연구 개발 책임연구위원(2015.03.01.~2016.08.30)\n지식경제부(한국산업기술평가관리단) 지식경제 기술혁신 평가단 위원\n중앙대학교 사회굥규처 시간강사','파워포인트 백과사전 / 길벗 / 김종철(2008.03)\n빅데이터와 NoSQL, 2014\nMOS 2003 6권 / 길벗 / 김종철(2007.10)\n학습자의 컴퓨터 응용 프로그램 환경에 따른 학습 분기형 콘텐츠 설계전략, (한국인터넷정보학회, 2010년도 추계학술발표대회, 2010.10.29~30)\n파워포인트 백과사전 / 길벗 / 김종철(2008.03)','209호실',10),('10298843','고려대학교 공학 석사(소프트웨어공학)','서울디지털대학교 컴퓨터공학과 객원교수 (2018.03. ~ 현재)\n한국게임학회 정회원, 컴퓨터 게임 전문 기획자 자격증\n한라대학교, 상지대학교 강의','Sharing Privacy Protected and Statistically Sound Clinical Research Data Using Outsourced Data Storage, Journal of Applied Mathematics, 2014.05.\n2003.04~2003.10. PDA를 이용한 실시간 지역정보 알림 개발(한국특허청)\nFinTech를 위한 다자간 컴퓨팅 암호기술”, 디지털산업정보학회 논문지, 15권 1호, pp61∼66, / 디지털산업정보학회 논문지 / 박찬길, 최화영, 이철희 / 2019.03.30\n경희의료원, A.I.D.D. 2021 당뇨병 발병 예측 AI 모델 개발 챌린지 우수상 수상 (3등), 2021.12.\nSharing Privacy Protected and Statistically Sound Clinical Research Data Using Outsourced Data Storage, Journal of Applied Mathematics, 2014.05.','502호실',10),('11210096','경희대학교 컴퓨터공학 박사','(주)베네테크 부설연구소 선임연구원\n(주)리즘 대표\n금호아시아나IDT 기술 개발 과장(2008.07.01.~2009.04.30)','Python 프로그래밍, 2014\n감성을 이용한 어린이용 기능성 게임 콘텐츠 개발 연구, (한국컴퓨터게임학회논문지, Vol. 29, No. 1, 30 March 2016)\n-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Jeong-Sik In, Doo-Seop Eom, A Method to Support High Data Transmission Rate in Ad-Hoc Networks based on Bluetooth,ITC-CSCC, p3-31. 2005.07\n2010 Winter International Design Exhibition of The Korean Society of Design Culture(2010.2.1~6)\nPython 프로그래밍, 2014','104호실',10),('11236532','고려대학교 정보보호대학원 공학석사( 금융보안 전공)','한신대학교 겸임교수\n㈜ 소프트닉스 PD\n㈜아크테크놀로지 대표(2016.11.01.~2017.05.31)','경희의료원, A.I.D.D. 2021 당뇨병 발병 예측 AI 모델 개발 챌린지 우수상 수상 (3등), 2021.12.\nIntelligence control system compensation by DNA coding method in holographic data storage system / Microsystem Technologies / 주저자(2015)\nEJB기반 보안 컴포넌트 개발(2001.3.1 ~ 2001.6.4)\n최근 수상 실적\n경희의료원, A.I.D.D. 2021 당뇨병 발병 예측 AI 모델 개발 챌린지 우수상 수상 (3등), 2021.12.','504호실',10),('11245302','고려대학교 정보보호대학원 공학석사( 금융보안 전공)','서울디지털대학교 컴퓨터공학과 객원교수 (2018.03. ~ 현재)\n한국게임학회 정회원, 컴퓨터 게임 전문 기획자 자격증\n한라대학교, 상지대학교 강의','Inside Virtual Machine, 1999\n컴퓨터 활용 제대로 배우기\' 2008, 생능출판사\n가상현실 공간에서의 VRML을 이용한 3차원 Graphic Morphing 기술”, (중소기업청)\n빅데이터와 NoSQL, 2014\nInside Virtual Machine, 1999','503호실',10),('11252732','성균관대학교 정보통신공학 석사','IMS시스템 팀장\n엑스코어모바일 선임연구원(2005. 11 ～ 2007. 09)\n서일대학교 전력공학, 마이크로프로세서 이론, 공업수학, 제어기기, 전자회로, 제어공학, 로봇 공학 겸임교수(2012. 03. 01 ~ 2015. 02. 28)','오픈소스(Open Source) 소프트웨어 활용 증진을 위한 적용 모델 표준화 연구(2003.11.1 ~ 2004.3.15)\n2010 Winter International Design Exhibition of The Korean Society of Design Culture(2010.2.1~6)\nKSDT, 14TH 2009 DETRA Exhibition 회원전(2009.11.26~28)\n2003.07~2003.12. 이미지 센서를 통한 MPEGㅡ4 데이터 전송 기기 개발(Etri)\n오픈소스(Open Source) 소프트웨어 활용 증진을 위한 적용 모델 표준화 연구(2003.11.1 ~ 2004.3.15)','108호실',10),('12229475','고려대학교 공학 석사(소프트웨어공학)','러닝파트너 대표이사\n(주)모바일기술연구소 선임연구원\n서일대학교 모바일 프로그래밍 심화 실습, 데이터베이스 심화 실습 외래교수(2020. 09. 01.~ 현재)','Universal Data Model과 Universal Pattern, 2010\n오픈소스(Open Source) 소프트웨어 활용 증진을 위한 적용 모델 표준화 연구(2003.11.1 ~ 2004.3.15)\n-김병국, 홍성화, 허경, 엄두섭, 블루투스를 이용한 애드혹 네트워크에서의 효율적인 멀티미디어 데이터 전송,한국통신학회 논문지, . 2008.03.\n가상현실 교과목, 콘텐츠품질인증, 인증번호:GEC2003U-06-001 A (사단법인 한국사이버교육학회)\nUniversal Data Model과 Universal Pattern, 2010','404호실',10),('12271194','고려대학교 공학 박사','삼육대학교 강사, MOS/ICDL, 학습법 향상, 콘텐츠 크리에이터 등(97. 09. 01 ～ 20. 05. 31)\n전보저장기기연구센터 연구개발 선임연구원(2003.07.01.~2008.06.30)\n한국게임학회 정회원, 컴퓨터 게임 전문 기획자 자격증','컴퓨터의 이해와 활용\' 2006, 생능출판사\nMMORPG 『ARTRCT』게임 디자인 및 설계\n초보자를 위한 XML\' 2006, 경희대학교 출판국\n석사. 900MHz 무선 데이터망을 이용한GAS 배관의 전위 측정에 관한 연구(2005)\n컴퓨터의 이해와 활용\' 2006, 생능출판사','407호실',10),('12294120','고려대학교 컴퓨터학과 박사수료','한국방송통신대학교 연구원\n더존디지털웨어 팀장\n고려대학교 제어시스템보안연구센터 연구교수','컴퓨터 활용 2010 제대로 배우기\' 2011, 생능출판사\nStrongly Unforgeable Ring Signature Scheme from Lattices in the Standard Model, Journal of Applied Mathematics, 2014.05.\n녹색기술센터, 자연어 기반 기후기술분류 AI 경진대회 우승 (1등), 2021.09.\n2000.04~2000.08. UNIX 보안 시스템 개발 (하나 데이터 시스템)\n컴퓨터 활용 2010 제대로 배우기\' 2011, 생능출판사','407호실',10),('13258522','고려대학교 컴퓨터학과 박사수료','인터뷰드(주) 연구원(1999 .12.～ 2002 . 07)\n한맥인포텍 대리\n디지털서울문화예술대학교 교수','Generation of fuzzy rules and learning algorithm for servo control in holographic data storage system / Microsystem Technologies / 주저자(2014)\n과학기술 지식정보 공유 및 표준화 확산 모델 구축 연구(2002.4.1 ~ 2002.11.30)\nGeneration of fuzzy rules and learning algorithm for servo control in holographic data storage system / Microsystem Technologies / 주저자(2014)\nDesign of algorithm for the 3D object representation based on the Web3D using X3D”, (5th Int. Conference PDCAT 04)\nGeneration of fuzzy rules and learning algorithm for servo control in holographic data storage system / Microsystem Technologies / 주저자(2014)','207호실',10),('14210481','고려대학교 전자컴퓨터공학과 석사','인덕대학교 강사, DB프로젝트 등(02. 03. 04 ～ 05. 08. 21)\n우리금융 인공지능 딥러닝 사내강사\n농협은행 파이썬 데이터분석 온라인강사','모바일 게임 『인디의 모험』 기획 및 프로젝트 관리\n-김병국,허경,홍성화,엄두섭, Architecture Design based on Ubiquitous Sensor Networks for Smart Home,2009년도 한국멀티미디어학회 추계학술발표대회 , 457. 2009.11.20-2009.11.21\n컴퓨터활용능력1급(실기) / 성안당 / 김종철(2020.01)\n주요 논문 실적\n모바일 게임 『인디의 모험』 기획 및 프로젝트 관리','205호실',10),('14234456','고려대학교 공학박사(정보보호학)','고려사이버대학교 정보관리보안학과 외래교수 (2019.03. ~ 현재)\n러닝클루 강사\ne그린원격평생교육원 촬영/운영','Encoding of VRML State Information andn Transparent Access it”, (ICIM01)\n-김병국,홍성화,이승범,엄두섭, USN에서 망관리 프로토콜 인터페이스를 위한 연구,한국통신학회 2008 하계학술발표회, . 2008.07.\nResearch about Minecraft as Interactive Program for 3D Virtual Digital Art, (International Journal of Multimedia and Ubiquitous Engineering, Vol.10, No.10 (2015))\n교육인적자원부,한국교육학술정보원 원격대학 경쟁력 강화추진사업 콘텐츠 개발 지원과제 선정(2008년 내 삶속의 색(色), 2005년 게임의 세대 공감 프로젝트, 2004년 디지털카메라와 비디오영상제작, 2003년 Web3D 가상공간 모델링)\nEncoding of VRML State Information andn Transparent Access it”, (ICIM01)','302호실',10),('14250168','중앙대학교 첨단영상전문대학원 공학석사(영상공학 전공)','서울특별시 정보화사업추진위원회, 정보통신산업진흥원 기술개발관리단 평가위원\nKT 평가위원\n사)디지털산업정보학회 이사','주요 논문 실적\nKSDT, 14TH 2009 DETRA Exhibition 회원전(2009.11.26~28)\n2000.04~2000.08. UNIX 보안 시스템 개발 (하나 데이터 시스템)\n문화적 환경의 차이를 고려한 게임 현지화 연구 크로스 파이어의 중국 사례를 중심으로, (한국컴퓨터게임학회논문지, Volume.25, No.3 Sep 2012)\n주요 논문 실적','509호실',10),('14268611','고려대학교 정보보호대학원 공학석사( 금융보안 전공)','(재)차세대융합기술연구원 위촉연구원\n서울사이버대학교 빅데이터·정보보호학과 교수\n연세대학교 산업협력단 기술 개발 연구교수 및 연구원(2011.09.01.~2015.02.28)','-Byoung-Kug, Sung-Hwa Hong, Kyeong Hur, Doo-Seop Eom, Energy-Efficient and Rapid Time Synchronization for Wireless Sensor Networks, IEEE Transactions on Consumer Electronics, . 2010.11.\nOracle 11g SQL, 2012\n모바일 게임 『인디의 모험』 기획 및 프로젝트 관리\nIntelligence control system compensation by DNA coding method in holographic data storage system / Microsystem Technologies / 주저자(2015)\n-Byoung-Kug, Sung-Hwa Hong, Kyeong Hur, Doo-Seop Eom, Energy-Efficient and Rapid Time Synchronization for Wireless Sensor Networks, IEEE Transactions on Consumer Electronics, . 2010.11.','101호실',10),('14271791','고려대학교 정보보호대학원 공학석사( 금융보안 전공)','고려대학교 제어시스템보안연구센터 연구교수\n중앙대학교 사회굥규처 시간강사\n서울사이버대학교 빅데이터·정보보호학과 교수','KSDT, 14TH 2009 DETRA Exhibition 회원전(2009.11.26~28)\n가상현실 공간에서의 VRML을 이용한 3차원 Graphic Morphing 기술”, (중소기업청)\n컴퓨터 활용 제대로 배우기(개정판)\' 2009, 생능출판사\nICDL 2016 / 성안당 / 김종철(2017.09)\nKSDT, 14TH 2009 DETRA Exhibition 회원전(2009.11.26~28)','210호실',10),('14272236','경희대학교 공학박사(네트워크 전공)','(주)리즘 대표\nT아카데미(SK Planet) 강사\nT아카데미(SK Planet) 강사','시스템 성능 평가를 위한 자동화 측정 모듈 개발(2005.6.1 ~ 2005.12.15)\n최근 수상 실적\n파워포인트 애니메이션 / 길벗 / 김종철(2008.12)\n정보검색에서 문헌 클러스터 기반의 검색 시각화 도구, 2002\n시스템 성능 평가를 위한 자동화 측정 모듈 개발(2005.6.1 ~ 2005.12.15)','102호실',10),('15223287','동국대학교 영상정보통신대학원 석사 (게임제작 전공)','서울사이버대학교 전임교수\n㈜컴피테크 연구 개발 부장(2016.09.01.~2017.05.31)\n동강대학 컴퓨터인터넷계열 겸임교수 역임','-Byoung-Kug Kim, Won-gil Hong and Doo-Seop Eom, A Design of Integrated Management System for Building Constructions based on USNs,2011 International Conference on Data Engineering and Internet Technology (DEIT 2011), . 2011.03.14\n엔트리로 배우는 SW코딩자격 / 다본 / 김종철(2018.09)\nKSDT, International Design Current 2010(2010.5.7~11)\n학습자중심의 교육용 콘텐츠 제작 요소 정의와 제작에 관한 연구, (한국멀티미디어학회, 춘계학술발표대회 논문집 제12권 제1호, 2009.5)\n-Byoung-Kug Kim, Won-gil Hong and Doo-Seop Eom, A Design of Integrated Management System for Building Constructions based on USNs,2011 International Conference on Data Engineering and Internet Technology (DEIT 2011), . 2011.03.14','506호실',10),('15231565','고려대학교 공학 석사(소프트웨어공학)','UCGAME 기획 및 관리 팀장\nIBK기업은행 파이썬 데이터분석 온라인강사\n숭실대학교 강사, 컴퓨터활용(06. 03. 01 ～ 08. 08. 31)','-Byoung-Kug Kim, Sung-Hwa Hong, Young-Sik Jeong and Doo-Seop Eom, The Study of Applying Sensor Networks to a Smart Home,NCM2008, . 2008.09\nOracle 9i SQL & PL/SQL,2001\n세컨드라이프(SL) 요소를 활용한 게임형 이러닝 콘텐츠 개발 전략, (한국디자인문화학회지, Voll16, No.4, 2010.12.30)\n파워포인트 백과사전 / 길벗 / 김종철(2008.03)\n-Byoung-Kug Kim, Sung-Hwa Hong, Young-Sik Jeong and Doo-Seop Eom, The Study of Applying Sensor Networks to a Smart Home,NCM2008, . 2008.09','204호실',10),('15262813','조선대학교 이학석사 및 박사(전자계산학과 전자계산학 전공)','IBK기업은행 파이썬 데이터분석 온라인강사\n방송정보기술사\n서울특별시 정보화사업추진위원회, 정보통신산업진흥원 기술개발관리단 평가위원','FinTech를 위한 다자간 컴퓨팅 암호기술”, 디지털산업정보학회 논문지, 15권 1호, pp61∼66, / 디지털산업정보학회 논문지 / 박찬길, 최화영, 이철희 / 2019.03.30\nInside Virtual Machine, 1999\nMOS 2002 6권 / 길벗 / 김종철(2007.03)\nAn intelligent distortion?detection algorithm for restoring data in a holographic data storage system / Microsystem Technologies / 공동저자(2014)\nFinTech를 위한 다자간 컴퓨팅 암호기술”, 디지털산업정보학회 논문지, 15권 1호, pp61∼66, / 디지털산업정보학회 논문지 / 박찬길, 최화영, 이철희 / 2019.03.30','107호실',10),('16208163','경희대학교 공학박사(네트워크 전공)','한성대학교 모바일 프로그래밍 시간강사(2013. 03. 01. ~ 2014. 08. 30)\n한성대학교 모바일 프로그래밍 시간강사(2013. 03. 01. ~ 2014. 08. 30)\n(재)차세대융합기술연구원 위촉연구원','비대면(Untact) 업무를 위한 화상인식 PCA 사용자 인증 시스템 연구”, 디지털산업정보학회 논문지,16권 4호, pp65∼72, / 디지털산업정보학회 논문지 / 박찬길, 박종순 / 2020.12.30.\nMOS 워드 2013 / 성안당 / 김종철(2017.06)\nStrong designated verifier signature scheme from lattices in the standard model, Security and Communication Networks, 2016.12.\nKSDC, 2011 Winter International Design Exhibition of The Korean Society of Design Culture(2011.1.25~27)\n비대면(Untact) 업무를 위한 화상인식 PCA 사용자 인증 시스템 연구”, 디지털산업정보학회 논문지,16권 4호, pp65∼72, / 디지털산업정보학회 논문지 / 박찬길, 박종순 / 2020.12.30.','503호실',10),('16234199','경희대학교 컴퓨터공학 박사','숭실대학교 강사, 컴퓨터활용(06. 03. 01 ～ 08. 08. 31)\nSMT 이사, KSDT, KIPS, KSII, KOCON 정회원 / 문화예술콘텐츠학회 감사\n한국금융연수원 및 한국생산성본부 전임교수 (2018.09 ~ 현재)','Image compensation using wavelet transform for tilt servo control in holographic data storage system / Japanese Journal of Applied Physics / 주저자(2015)\n-김병국, 홍성화, 허경, 엄두섭, 유비쿼터스 센서네트워크에서 에너지 효율적인 망관리 프로토콜 인터페이스,멀티미디어학회논문지, 1223-1234. 2010.08\n최근 수상 실적\nPython 프로그래밍, 2014\nImage compensation using wavelet transform for tilt servo control in holographic data storage system / Japanese Journal of Applied Physics / 주저자(2015)','103호실',10),('16237302','한서대학교 공학사','국방부 육군본부 및 예하부대 전산장교\n경희대학교 산학중점교수\n온라인원 이사','S/W PLE 아키텍처 설계(2004.6.1 ~ 2005.4.15)\n2002.03~2002.10. 블루투스 무선보안시스템 개발 (에스원 프로젝트)\n게임 및 디지털 콘텐츠의 감성 키워드 도출 연구, (한국컴퓨터게임학회논문지, Vol. 28, No. 3, 30 september 2015)\nKOCON, 2010 Spring International Digital Design Exhibition(2010.5.14~17)\nS/W PLE 아키텍처 설계(2004.6.1 ~ 2005.4.15)','305호실',10),('16253388','고려대학교 전산학 석사','금호아시아나IDT 기술 개발 과장(2008.07.01.~2009.04.30)\n서울시북부기술교육원 학과장(2015.06.04 ～ 2020. 현재)\n㈜ 이기는 길 설립','-김병국, 홍성화, 허경, 엄두섭, 유비쿼터스 센서네트워크에서 에너지 효율적인 망관리 프로토콜 인터페이스,멀티미디어학회논문지, 1223-1234. 2010.08\nImage compensation using wavelet transform for tilt servo control in holographic data storage system / Japanese Journal of Applied Physics / 주저자(2015)\n컴퓨터 기본+활용 제대로 배우기\' 2007, 생능출판사\n컴퓨터활용능력1급(실기) / 성안당 / 김종철(2020.01)\n-김병국, 홍성화, 허경, 엄두섭, 유비쿼터스 센서네트워크에서 에너지 효율적인 망관리 프로토콜 인터페이스,멀티미디어학회논문지, 1223-1234. 2010.08','306호실',10),('16271524','고려대학교 공학박사(정보보호학)','삼육대학교 강사, MOS/ICDL, 학습법 향상, 콘텐츠 크리에이터 등(97. 09. 01 ～ 20. 05. 31)\n전보저장기기연구센터 연구개발 선임연구원(2003.07.01.~2008.06.30)\n한국게임학회 정회원, 컴퓨터 게임 전문 기획자 자격증','3차원 가상 시뮬레이션 기법을 적용한 사이버대학(원격강의) 교육 콘텐츠 설계”,(한국디자인포럼, 2007.8)\nJavaScript 객체지향 프로그래밍, 2012\nInside Virtual Machine, 1999\n온라인 게임 『배틀 래더』운영 기획 및 프로젝트 운영 관리\n3차원 가상 시뮬레이션 기법을 적용한 사이버대학(원격강의) 교육 콘텐츠 설계”,(한국디자인포럼, 2007.8)','408호실',10),('17216720','성균관대학교 정보통신공학 석사','상지대학교 컴퓨터공학부 겸임교수\n홀로테크 대표(2018.01.03.~ 현재)\n(주)리즘 대표','MOS 2002 6권 / 길벗 / 김종철(2007.03)\n모바일 앱 개발을 위한 JavaScript & jQuery Mobile, 2012\n온라인 게임 『배틀 래더』운영 기획 및 프로젝트 운영 관리\n감성을 이용한 어린이용 기능성 게임 콘텐츠 개발 연구, (한국컴퓨터게임학회논문지, Vol. 29, No. 1, 30 March 2016)\nMOS 2002 6권 / 길벗 / 김종철(2007.03)','501호실',10),('18228944','경희대학교 공학박사(네트워크 전공)','홀로테크 대표(2018.01.03.~ 현재)\n㈜퍼시픽나인 대표(2019.05.24.~ 현재)\n국방부 육군본부 및 예하부대 전산장교','스크래치 COS 2급 / 성안당 / 김종철(2019.01)\n문화적 환경의 차이를 고려한 게임 현지화 연구 크로스 파이어의 중국 사례를 중심으로, (한국컴퓨터게임학회논문지, Volume.25, No.3 Sep 2012)\n학습자의 컴퓨터 응용 프로그램 환경에 따른 학습 분기형 콘텐츠 설계전략, (한국인터넷정보학회, 2010년도 추계학술발표대회, 2010.10.29~30)\niOS 모바일 플랫폼 구조의 이해, 2011\n스크래치 COS 2급 / 성안당 / 김종철(2019.01)','505호실',10),('19285757','동국대학교 영상정보통신대학원 석사 (게임제작 전공)','농협은행 파이썬 데이터분석 온라인강사\nSW마에스트로 인공지능 딥러닝 멘토강사\n방송정보기술사','Transitive Signature Schemes for Undirected Graphs from Lattices, KSII Transactions on Internet and Information Systems, 2019.06.\n2004.08~2005.08. 와이브로 계측기 개발(산업자원부)\nStrongly Unforgeable Ring Signature Scheme from Lattices in the Standard Model, Journal of Applied Mathematics, 2014.05.\nEJB기반 보안 컴포넌트 개발(2001.3.1 ~ 2001.6.4)\nTransitive Signature Schemes for Undirected Graphs from Lattices, KSII Transactions on Internet and Information Systems, 2019.06.','308호실',10),('20240291','성균관대학교 정보통신공학 석사','전보저장기기연구센터 연구개발 선임연구원(2003.07.01.~2008.06.30)\n고려사이버대학교 기초 AI 프로그래밍 외래교수(2020. 02. 01.~ 현재)\n인터뷰드(주) 연구원(1999 .12.～ 2002 . 07)','EJB기반 보안 컴포넌트 개발(2001.3.1 ~ 2001.6.4)\n온라인 게임 『배틀 래더』운영 기획 및 프로젝트 운영 관리\n2002.07~2002.08. 블루투스 다중접속 스캐너 개발\n-김병국,홍성화,김재완,엄두섭, 블루투스 HCI를 이용한 장치간의 데이터 통신,대한전자공학회 하계종합학술대회, pp.245-248. 2004.06\nEJB기반 보안 컴포넌트 개발(2001.3.1 ~ 2001.6.4)','208호실',10),('20255121','연세대학교 전기전자공학 박사(자동제어 전공)','홍익대학교 전문대학원, 장안대학교, e-그린 평생교육원 강사역임\n숭실사이버대학교 소프트웨어공학, 창의적 문제해결, 모바일 프로그래밍, 웹 프로그래밍 외래교수(2018. 09. 01.~ 현재)\n한국데이터산업진흥원 빅데이터 전문 인증강사','MOS 2000 6권 / 길벗 / 김종철(2006.03)\n원격대학 e-Learning 콘텐츠의 색채 분석을 통한 색채 적용 기준 제시, (한국디자인포럼, vol 24, 2009.8)\n대규모 네트워크 프로그램 개발을 위한 Node.js 프로그래밍, 2014\n2005.08~ . ZigBee 전체 스택(full-stack) 개발\nMOS 2000 6권 / 길벗 / 김종철(2006.03)','507호실',10),('20256648','고려대학교 전산학 석사','한국게임학회 정회원, 컴퓨터 게임 전문 기획자 자격증\n고려대학교 부설 컴퓨터, 정보통신연구소 연구원\n한맥인포텍 대리','Strong designated verifier signature scheme from lattices in the standard model, Security and Communication Networks, 2016.12.\nSharing Privacy Protected and Statistically Sound Clinical Research Data Using Outsourced Data Storage, Journal of Applied Mathematics, 2014.05.\n전자상거래 관리사\' 2006, 학문사\n2004.08~2005.08. 와이브로 계측기 개발(산업자원부)\nStrong designated verifier signature scheme from lattices in the standard model, Security and Communication Networks, 2016.12.','402호실',10),('21212121','고려대학교 전자컴퓨터공학과 석사','e그린원격평생교육원 촬영/운영\n온라인 Action RPG 라키온 PD\n우리에프아이에스 검사부 선임검사역','가상현실 공간에서의 VRML을 이용한 3차원 Graphic Morphing 기술”, (중소기업청)\nDesign of algorithm for the 3D object representation based on the Web3D using X3D”, (5th Int. Conference PDCAT 04)\nOracle 11g SQL, 2012\n2002.03~2002.10. 블루투스 무선보안시스템 개발 (에스원 프로젝트)\n가상현실 공간에서의 VRML을 이용한 3차원 Graphic Morphing 기술”, (중소기업청)','105호실',10),('21216968','고려대학교 공학 박사','디지털서울문화예술대학교 교수\n금호아시아나IDT 기술 개발 과장(2008.07.01.~2009.04.30)\n한신대학교 겸임교수','Scalable Hierarchical Identity-based Signature Scheme from Lattices, KSII Transactions on Internet and Information Systems, 2013.12.\nKSDT, International Design Current 2010(2010.5.7~11)\nKOCON, 2010 Spring International Digital Design Exhibition(2010.5.14~17)\n압권(壓卷)]플래시 8, 컴퓨터이해와 활용”, (도서출판 웰북,2007년)\nScalable Hierarchical Identity-based Signature Scheme from Lattices, KSII Transactions on Internet and Information Systems, 2013.12.','402호실',10),('21265836','조선대학교 이학석사 및 박사(전자계산학과 전자계산학 전공)','㈜아크테크놀로지 대표(2016.11.01.~2017.05.31)\n서일대학교 전력공학, 마이크로프로세서 이론, 공업수학, 제어기기, 전자회로, 제어공학, 로봇 공학 겸임교수(2012. 03. 01 ~ 2015. 02. 28)\nSMT 이사, KSDT, KIPS, KSII, KOCON 정회원 / 문화예술콘텐츠학회 감사','MOS 엑셀 Expert 2013 / 성안당 / 김종철(2017.04)\n게임 및 디지털 콘텐츠의 감성 키워드 도출 연구, (한국컴퓨터게임학회논문지, Vol. 28, No. 3, 30 september 2015)\nLOL 게임 여자챔피언의 춤 표현을 위한 감성 요소 추출 연구, (한국컴퓨터게임학회논문지, Vol.28. No.2, 2015.6.30)\n-Byoung-Kug, Sung-Hwa Hong, Kyeong Hur, Doo-Seop Eom, Energy-Efficient and Rapid Time Synchronization for Wireless Sensor Networks, IEEE Transactions on Consumer Electronics, . 2010.11.\nMOS 엑셀 Expert 2013 / 성안당 / 김종철(2017.04)','305호실',10),('22266199','인천대학교 수학학사','방송정보기술사\n인덕대학교 강사, DB프로젝트 등(02. 03. 04 ～ 05. 08. 21)\n서울디지털대학교 컴퓨터공학과 객원교수 (2018.03. ~ 현재)','2003.04~2003.10. PDA를 이용한 실시간 지역정보 알림 개발(한국특허청)\n-Byoung-Kug Kim, Sung-Hwa Hong, Young-Sik Jeong and Doo-Seop Eom, The Study of Applying Sensor Networks to a Smart Home,NCM2008, . 2008.09\n주요 논문 실적\n과학기술 지식정보 공유 및 표준화 확산 모델 구축 연구(2002.4.1 ~ 2002.11.30)\n2003.04~2003.10. PDA를 이용한 실시간 지역정보 알림 개발(한국특허청)','405호실',10),('95217606','숭실대학교 공학박사(컴퓨터시스템전공)','㈜ 소프트닉스 PD\n국방대학교 교수\nKT ds 평가위원','Oracle 11g SQL, 2012\n컴퓨터 활용 제대로 배우기(개정판)\' 2009, 생능출판사\nScalable Hierarchical Identity-based Signature Scheme from Lattices, KSII Transactions on Internet and Information Systems, 2013.12.\nKSDT, 14TH 2009 DETRA Exhibition 회원전(2009.11.26~28)\nOracle 11g SQL, 2012','210호실',10),('95228603','고려대학교 컴퓨터학과 박사수료','UCGAME 기획 및 관리 팀장\nIBK기업은행 파이썬 데이터분석 온라인강사\n숭실대학교 강사, 컴퓨터활용(06. 03. 01 ～ 08. 08. 31)','ICDL 2016 / 성안당 / 김종철(2017.09)\n-김병국,홍성화,김재완,엄두섭, 블루투스 HCI를 이용한 장치간의 데이터 통신,대한전자공학회 하계종합학술대회, pp.245-248. 2004.06\nMOS 워드 2013 / 성안당 / 김종철(2017.06)\nMOS 파워포인트 2013 / 성안당 / 김종철(2017.04)\nICDL 2016 / 성안당 / 김종철(2017.09)','205호실',10),('95246667','건국대학교 공학석사(컴퓨터정보공학)','㈜아이티엠 연구개발 팀장(2001.07.01.~2003.06.30)\n서울특별시 정보화사업추진위원회, 정보통신산업진흥원 기술개발관리단 평가위원\n㈜아이티엠 연구개발 팀장(2001.07.01.~2003.06.30)','iOS 모바일 플랫폼 구조의 이해, 2011\n학습자중심의 교육용 콘텐츠 제작 요소 정의와 제작에 관한 연구, (한국멀티미디어학회, 춘계학술발표대회 논문집 제12권 제1호, 2009.5)\n-Byoung-Kug Kim, Sung-Hwa Hong, Seung-Bum Lee and Doo-Seop Eom, The Study based on Network Management Protocol Interface in Ubiquitous Sensor Network,The International Conference on Applications and Principles of Information Science(APIS)7, pp.113-116. 2008.01\nTransitive Signature Schemes for Undirected Graphs from Lattices, KSII Transactions on Internet and Information Systems, 2019.06.\niOS 모바일 플랫폼 구조의 이해, 2011','304호실',10),('95249409','중앙대학교 첨단영상전문대학원 공학석사(영상공학 전공)','숭실사이버대학교 소프트웨어공학, 창의적 문제해결, 모바일 프로그래밍, 웹 프로그래밍 외래교수(2018. 09. 01.~ 현재)\n동강대학 컴퓨터인터넷계열 겸임교수 역임\n텔슨전자(주) 주임연구원(2002. 07 ～ 2004.09)','가상현실 교과목, 콘텐츠품질인증, 인증번호:GEC2003U-06-001 A (사단법인 한국사이버교육학회)\nFinTech를 위한 다자간 컴퓨팅 암호기술”, 디지털산업정보학회 논문지, 15권 1호, pp61∼66, / 디지털산업정보학회 논문지 / 박찬길, 최화영, 이철희 / 2019.03.30\n2006.12~2007.03 Ubiquitous 네트워크 관리방법에 대한 연구: USN 관리 프로토콜 개발 (SKT)\n오픈소스(Open Source) 소프트웨어 활용 증진을 위한 적용 모델 표준화 연구(2003.11.1 ~ 2004.3.15)\n가상현실 교과목, 콘텐츠품질인증, 인증번호:GEC2003U-06-001 A (사단법인 한국사이버교육학회)','106호실',10),('95263449','고려대학교 공학박사(정보보호학)','(주)모바일기술연구소 선임연구원\nKT ds 평가위원\n고려사이버대학교 정보관리보안학과 외래교수 (2019.03. ~ 현재)','2004.08~2005.08. 와이브로 계측기 개발(산업자원부)\nS/W PLE 아키텍처 설계(2004.6.1 ~ 2005.4.15)\n컴퓨터 활용 2010 제대로 배우기\' 2011, 생능출판사\nA Strong Binding Encryption Scheme from Lattices for Secret Broadcast, IEEE Communications Letters, 2012.06.\n2004.08~2005.08. 와이브로 계측기 개발(산업자원부)','103호실',10),('95271428','동국대학교 영상정보통신대학원 석사 (게임제작 전공)','주식회사서울테크벨리 책임연구원(2007.10 ～ 2012.02)\n한국데이터산업진흥원 빅데이터 전문 인증강사\n한국생산성본부 인공지능 딥러닝, TOPCIT 정보보안 강사','-김병국,홍성화,이승범,엄두섭, USN에서 망관리 프로토콜 인터페이스를 위한 연구,한국통신학회 2008 하계학술발표회, . 2008.07.\n컴퓨터활용능력2급(실기) / 성안당 / 김종철(2019.09)\nJavaScript 객체지향 프로그래밍, 2012\n파워포인트 애니메이션 / 길벗 / 김종철(2008.12)\n-김병국,홍성화,이승범,엄두섭, USN에서 망관리 프로토콜 인터페이스를 위한 연구,한국통신학회 2008 하계학술발표회, . 2008.07.','303호실',10),('95276513','고려대학교 문학박사 (문화콘텐츠학)','KT 평가위원\n텔슨전자(주) 주임연구원(2002. 07 ～ 2004.09)\n국민대학교 겸임교수, 중급프로그래밍, 캡스톤디자인 등(10. 03. 02 ～ 20. 05. 31)','-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Jeong-Sik In, Doo-Seop Eom, A Method to Support High Data Transmission Rate in Ad-Hoc Networks based on Bluetooth,ITC-CSCC, p3-31. 2005.07\n대규모 네트워크 프로그램 개발을 위한 Node.js 프로그래밍, 2014\n3차원 공간에서 EAI를 이용한 애니메이션의 최적 모델링”, (조선대학교)\nResearch about Minecraft as Interactive Program for 3D Virtual Digital Art, (International Journal of Multimedia and Ubiquitous Engineering, Vol.10, No.10 (2015))\n-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Jeong-Sik In, Doo-Seop Eom, A Method to Support High Data Transmission Rate in Ad-Hoc Networks based on Bluetooth,ITC-CSCC, p3-31. 2005.07','110호실',10),('95296459','연세대학교 경제학 석사(빅데이터분석)','온라인 Action FPS 울프팀 PD\n한국기술교육대학교 블록체인 온라인 강사\n삼육대학교 강사, MOS/ICDL, 학습법 향상, 콘텐츠 크리에이터 등(97. 09. 01 ～ 20. 05. 31)','전자상거래 관리사\' 2006, 학문사\n세컨드라이프(SL) 요소를 활용한 게임형 이러닝 콘텐츠 개발 전략, (한국디자인문화학회지, Voll16, No.4, 2010.12.30)\n학습자중심의 교육용 콘텐츠 제작 요소 정의와 제작에 관한 연구, (한국멀티미디어학회, 춘계학술발표대회 논문집 제12권 제1호, 2009.5)\n모바일 게임 『인디의 모험』 기획 및 프로젝트 관리\n전자상거래 관리사\' 2006, 학문사','109호실',10),('95299906','건국대학교 문학박사(중어중문학 전공)','동강대학 컴퓨터인터넷계열 겸임교수 역임\n한라대학교, 상지대학교 강의\nUCGAME 기획 및 관리 팀장','Intelligence control system compensation by DNA coding method in holographic data storage system / Microsystem Technologies / 주저자(2015)\nGeneration of fuzzy rules and learning algorithm for servo control in holographic data storage system / Microsystem Technologies / 주저자(2014)\nKSDC, 2011 Winter International Design Exhibition of The Korean Society of Design Culture(2011.1.25~27)\nSharing Privacy Protected and Statistically Sound Clinical Research Data Using Outsourced Data Storage, Journal of Applied Mathematics, 2014.05.\nIntelligence control system compensation by DNA coding method in holographic data storage system / Microsystem Technologies / 주저자(2015)','310호실',10),('96200943','경희대학교 공학박사(네트워크 전공)','국방대학교 교수\n연세대학교, 경희대학교, 용인대학교, 청강문화산업대학 강의\n서울시동부기술교육원 교수','과학기술정보 메타데이터 관리 표준화 연구(2003.3.1 ~ 2003.10.31)\n파워포인트 백과사전 / 길벗 / 김종철(2008.03)\nImage compensation using wavelet transform for tilt servo control in holographic data storage system / Japanese Journal of Applied Physics / 주저자(2015)\nMMORPG 『ARTRCT』게임 디자인 및 설계\n과학기술정보 메타데이터 관리 표준화 연구(2003.3.1 ~ 2003.10.31)','304호실',10),('96237399','숭실대학교 공학박사(컴퓨터시스템전공)','사)디지털산업정보학회 이사\n한국방송통신대학교 연구원\n한국기술교육대학교 블록체인 온라인 강사','컴퓨터활용능력2급(실기) / 성안당 / 김종철(2019.09)\n컴퓨터활용능력1급(실기) / 성안당 / 김종철(2020.01)\nX3D를 이용한 Web3D기반 3D Object 표현에 대한 연구”, (한국해양정보통신학회)\nICDL 2003 4권 / 길벗 / 김종철(2009.12)\n컴퓨터활용능력2급(실기) / 성안당 / 김종철(2019.09)','406호실',10),('96238195','연세대학교 전기전자공학 박사(자동제어 전공)','우리금융 인공지능 딥러닝 사내강사\n서일대학교 모바일 프로그래밍 심화 실습, 데이터베이스 심화 실습 외래교수(2020. 09. 01.~ 현재)\n엑스코어모바일 선임연구원(2005. 11 ～ 2007. 09)','학습자중심의 교육용 콘텐츠 제작 요소 정의와 제작에 관한 연구, (한국멀티미디어학회, 춘계학술발표대회 논문집 제12권 제1호, 2009.5)\n비대면(Untact) 업무를 위한 화상인식 PCA 사용자 인증 시스템 연구”, 디지털산업정보학회 논문지,16권 4호, pp65∼72, / 디지털산업정보학회 논문지 / 박찬길, 박종순 / 2020.12.30.\nMOS 엑셀 Expert 2013 / 성안당 / 김종철(2017.04)\n컴퓨터 활용 위한 이산수학\' 2014, 교우사\n학습자중심의 교육용 콘텐츠 제작 요소 정의와 제작에 관한 연구, (한국멀티미디어학회, 춘계학술발표대회 논문집 제12권 제1호, 2009.5)','201호실',10),('96251345','고려대학교 전산학 석사','서울사이버대학교 빅데이터·AI센터 센터장\n우리에프아이에스 검사부 선임검사역\n㈜컴피테크 연구 개발 부장(2016.09.01.~2017.05.31)','MOS 2003 6권 / 길벗 / 김종철(2007.10)\n경희의료원, A.I.D.D. 2021 당뇨병 발병 예측 AI 모델 개발 챌린지 우수상 수상 (3등), 2021.12.\nA Strong Binding Encryption Scheme from Lattices for Secret Broadcast, IEEE Communications Letters, 2012.06.\nJava Programming, 1999~2000\nMOS 2003 6권 / 길벗 / 김종철(2007.10)','504호실',10),('96261823','한서대학교 공학사','지식경제부(한국산업기술평가관리단) 지식경제 기술혁신 평가단 위원\n한국직업능력개발원, 한국교육학술정보원, 지방행정연수원 콘텐츠분야 심사위원\n연세대학교, 경희대학교, 용인대학교, 청강문화산업대학 강의','KSDC, 2011 Winter International Design Exhibition of The Korean Society of Design Culture(2011.1.25~27)\n2006.01~. TRS망을 활용한 센서네트워크 중계기 개발\n교육인적자원부,한국교육학술정보원 원격대학 경쟁력 강화추진사업 콘텐츠 개발 지원과제 선정(2008년 내 삶속의 색(色), 2005년 게임의 세대 공감 프로젝트, 2004년 디지털카메라와 비디오영상제작, 2003년 Web3D 가상공간 모델링)\n원격대학 e-Learning 콘텐츠의 색채 분석을 통한 색채 적용 기준 제시, (한국디자인포럼, vol 24, 2009.8)\nKSDC, 2011 Winter International Design Exhibition of The Korean Society of Design Culture(2011.1.25~27)','310호실',10),('96266948','동국대학교 대학원 박사수료(게임공학 전공)','우리은행 E-비즈니스사업단 팀장\n(재)차세대융합기술연구원 위촉연구원\n㈜ 소프트닉스 PD','2006.01~. TRS망을 활용한 센서네트워크 중계기 개발\nICDL 2003 4권 / 길벗 / 김종철(2009.12)\n압권(壓卷)]플래시 8, 컴퓨터이해와 활용”, (도서출판 웰북,2007년)\n2002.07~2002.08. 블루투스 다중접속 스캐너 개발\n2006.01~. TRS망을 활용한 센서네트워크 중계기 개발','203호실',10),('96282034','고려대학교 문학박사 (문화콘텐츠학)','T아카데미(SK Planet) 강사\n정보경영연구원 컨설팅 및 연구 개발 책임연구위원(2015.03.01.~2016.08.30)\n서울사이버대학교 빅데이터·AI센터 센터장','-김병국,홍성화,김재완,엄두섭, 블루투스 HCI를 이용한 장치간의 데이터 통신,대한전자공학회 하계종합학술대회, pp.245-248. 2004.06\nJava Programming, 1999~2000\n2003.07~2003.12. 이미지 센서를 통한 MPEGㅡ4 데이터 전송 기기 개발(Etri)\n2003.04~2003.10. PDA를 이용한 실시간 지역정보 알림 개발(한국특허청)\n-김병국,홍성화,김재완,엄두섭, 블루투스 HCI를 이용한 장치간의 데이터 통신,대한전자공학회 하계종합학술대회, pp.245-248. 2004.06','203호실',10),('96285904','고려대학교 전자컴퓨터공학과 석사','유씨게임즈 개발팀장\n우리은행 E-비즈니스사업단 팀장\n정보경영연구원 컨설팅 및 연구 개발 책임연구위원(2015.03.01.~2016.08.30)','3차원 공간에서 EAI를 이용한 애니메이션의 최적 모델링”, (조선대학교)\n사이버 교육용 테스트 시스템을 위한 소프트웨어 컴포넌트 개발(2001.8.1 ~ 2002.2.28)\nMOS 2000 6권 / 길벗 / 김종철(2006.03)\nUniversal Data Model과 Universal Pattern, 2010\n3차원 공간에서 EAI를 이용한 애니메이션의 최적 모델링”, (조선대학교)','204호실',10),('96299428','건국대학교 문학박사(중어중문학 전공)','서일대학교 모바일 프로그래밍 심화 실습, 데이터베이스 심화 실습 외래교수(2020. 09. 01.~ 현재)\n유씨게임즈 개발팀장\n유씨게임즈 개발팀장','석사. 900MHz 무선 데이터망을 이용한GAS 배관의 전위 측정에 관한 연구(2005)\nICDL 2016 / 성안당 / 김종철(2017.09)\n컴퓨터 활용 제대로 배우기\' 2008, 생능출판사\n-Byoung-Kug Kim, Sung-Hwa Hong, Seung-Bum Lee and Doo-Seop Eom, The Study based on Network Management Protocol Interface in Ubiquitous Sensor Network,The International Conference on Applications and Principles of Information Science(APIS)7, pp.113-116. 2008.01\n석사. 900MHz 무선 데이터망을 이용한GAS 배관의 전위 측정에 관한 연구(2005)','510호실',10),('97206870','서울과학기술대학교 정보통신미디어공학전공 박사수료','한라대학교, 상지대학교 강의\nIMS시스템 팀장\n상주대학교 강사, 전산교양 등(05. 03. 02 ～ 07. 08. 24)','X3D를 이용한 Web3D기반 3D Object 표현에 대한 연구”, (한국해양정보통신학회)\nAn intelligent distortion?detection algorithm for restoring data in a holographic data storage system / Microsystem Technologies / 공동저자(2014)\n원격대학 e-Learning 콘텐츠의 색채 분석을 통한 색채 적용 기준 제시, (한국디자인포럼, vol 24, 2009.8)\n-Byoung-Kug Kim, Sung-Hwa Hong, Young-Sik Jeong and Doo-Seop Eom, The Study of Applying Sensor Networks to a Smart Home,NCM2008, . 2008.09\nX3D를 이용한 Web3D기반 3D Object 표현에 대한 연구”, (한국해양정보통신학회)','501호실',10),('97209783','중앙대학교 첨단영상전문대학원 공학석사(영상공학 전공)','고려대학교 부설 컴퓨터, 정보통신연구소 연구원\n숭실사이버대학교 교수\nIBK기업은행 파이썬 데이터분석 온라인강사','감성을 이용한 어린이용 기능성 게임 콘텐츠 개발 연구, (한국컴퓨터게임학회논문지, Vol. 29, No. 1, 30 March 2016)\n압권(壓卷)]플래시 8, 컴퓨터이해와 활용”, (도서출판 웰북,2007년)\n파워포인트 백과사전 / 길벗 / 김종철(2008.03)\n녹색기술센터, 자연어 기반 기후기술분류 AI 경진대회 우승 (1등), 2021.09.\n감성을 이용한 어린이용 기능성 게임 콘텐츠 개발 연구, (한국컴퓨터게임학회논문지, Vol. 29, No. 1, 30 March 2016)','208호실',10),('97214089','경희대학교 컴퓨터공학 박사','숭실사이버대학교 소프트웨어공학, 창의적 문제해결, 모바일 프로그래밍, 웹 프로그래밍 외래교수(2018. 09. 01.~ 현재)\n동강대학 컴퓨터인터넷계열 겸임교수 역임\n텔슨전자(주) 주임연구원(2002. 07 ～ 2004.09)','컴퓨터 활용 위한 이산수학\' 2014, 교우사\n2003.07~2003.12. 이미지 센서를 통한 MPEGㅡ4 데이터 전송 기기 개발(Etri)\n정보검색에서 문헌 클러스터 기반의 검색 시각화 도구, 2002\n-Byoung-Kug Kim, Won-gil Hong and Doo-Seop Eom, A Design of Integrated Management System for Building Constructions based on USNs,2011 International Conference on Data Engineering and Internet Technology (DEIT 2011), . 2011.03.14\n컴퓨터 활용 위한 이산수학\' 2014, 교우사','105호실',10),('97214948','건국대학교 공학석사(컴퓨터정보공학)','㈜컴피테크 연구 개발 부장(2016.09.01.~2017.05.31)\n온라인원 이사\n전보저장기기연구센터 연구개발 선임연구원(2003.07.01.~2008.06.30)','2000.04~2000.08. UNIX 보안 시스템 개발 (하나 데이터 시스템)\nMOS 2003 6권 / 길벗 / 김종철(2007.10)\n감성을 이용한 어린이용 기능성 게임 콘텐츠 개발 연구, (한국컴퓨터게임학회논문지, Vol. 29, No. 1, 30 March 2016)\nMOS 워드 2013 / 성안당 / 김종철(2017.06)\n2000.04~2000.08. UNIX 보안 시스템 개발 (하나 데이터 시스템)','306호실',10),('97223502','연세대학교 전기전자공학 박사(자동제어 전공)','동강대학 컴퓨터인터넷계열 겸임교수 역임\n한라대학교, 상지대학교 강의\nUCGAME 기획 및 관리 팀장','모바일 앱 개발을 위한 JavaScript & jQuery Mobile, 2012\n2001.04~2001.12. 블루투스 무선스캐너 개발\nAn intelligent distortion?detection algorithm for restoring data in a holographic data storage system / Microsystem Technologies / 공동저자(2014)\n2006.01~. TRS망을 활용한 센서네트워크 중계기 개발\n모바일 앱 개발을 위한 JavaScript & jQuery Mobile, 2012','401호실',10),('97224411','고려대학교 공학 석사(소프트웨어공학)','한맥인포텍 대리\n러닝파트너 대표이사\n지식경제부(한국산업기술평가관리단) 지식경제 기술혁신 평가단 위원','문화적 환경의 차이를 고려한 게임 현지화 연구 크로스 파이어의 중국 사례를 중심으로, (한국컴퓨터게임학회논문지, Volume.25, No.3 Sep 2012)\nLOL 게임 여자챔피언의 춤 표현을 위한 감성 요소 추출 연구, (한국컴퓨터게임학회논문지, Vol.28. No.2, 2015.6.30)\n비대면(Untact) 업무를 위한 화상인식 PCA 사용자 인증 시스템 연구”, 디지털산업정보학회 논문지,16권 4호, pp65∼72, / 디지털산업정보학회 논문지 / 박찬길, 박종순 / 2020.12.30.\nMOS 2000 6권 / 길벗 / 김종철(2006.03)\n문화적 환경의 차이를 고려한 게임 현지화 연구 크로스 파이어의 중국 사례를 중심으로, (한국컴퓨터게임학회논문지, Volume.25, No.3 Sep 2012)','502호실',10),('97236728','서울과학기술대학교 정보통신미디어공학전공 박사수료','상지대학교 컴퓨터공학부 겸임교수\n홀로테크 대표(2018.01.03.~ 현재)\n(주)리즘 대표','과학기술 지식정보 공유 및 표준화 확산 모델 구축 연구(2002.4.1 ~ 2002.11.30)\nKSDC, 2011 Winter International Design Exhibition of The Korean Society of Design Culture(2011.1.25~27)\nICDL 2003 4권 / 길벗 / 김종철(2009.12)\n스크래치 COS 2급 / 성안당 / 김종철(2019.01)\n과학기술 지식정보 공유 및 표준화 확산 모델 구축 연구(2002.4.1 ~ 2002.11.30)','410호실',10),('97269644','경희대학교 컴퓨터공학 박사','한국금융연수원 및 한국생산성본부 전임교수 (2018.09 ~ 현재)\n(주)베네테크 부설연구소 선임연구원\n러닝클루 강사','2002.07~2002.08. 블루투스 다중접속 스캐너 개발\nX3D를 이용한 Web3D기반 3D Object 표현에 대한 연구”, (한국해양정보통신학회)\n시스템 성능 평가를 위한 자동화 측정 모듈 개발(2005.6.1 ~ 2005.12.15)\nInside Virtual Machine, 1999\n2002.07~2002.08. 블루투스 다중접속 스캐너 개발','403호실',10),('97270285','고려대학교 문학박사 (문화콘텐츠학)','SMT 이사, KSDT, KIPS, KSII, KOCON 정회원 / 문화예술콘텐츠학회 감사\n국방부 육군본부 및 예하부대 전산장교\n서울시북부기술교육원 학과장(2015.06.04 ～ 2020. 현재)','2000.08~2000.12. 블루투스 AP 개발 (오프터스)\nMOS 2002 6권 / 길벗 / 김종철(2007.03)\n컴퓨터활용능력2급(실기) / 성안당 / 김종철(2019.09)\nImage compensation using wavelet transform for tilt servo control in holographic data storage system / Japanese Journal of Applied Physics / 주저자(2015)\n2000.08~2000.12. 블루투스 AP 개발 (오프터스)','201호실',10),('97273893','동국대학교 대학원 박사수료(게임공학 전공)','온라인원 이사\n한국금융연수원 및 한국생산성본부 전임교수 (2018.09 ~ 현재)\n서울사이버대학교 전임교수','세컨드라이프(SL) 요소를 활용한 게임형 이러닝 콘텐츠 개발 전략, (한국디자인문화학회지, Voll16, No.4, 2010.12.30)\n석사. 900MHz 무선 데이터망을 이용한GAS 배관의 전위 측정에 관한 연구(2005)\n3차원 가상 시뮬레이션 기법을 적용한 사이버대학(원격강의) 교육 콘텐츠 설계”,(한국디자인포럼, 2007.8)\n2001.04~2001.12. 블루투스 무선스캐너 개발\n세컨드라이프(SL) 요소를 활용한 게임형 이러닝 콘텐츠 개발 전략, (한국디자인문화학회지, Voll16, No.4, 2010.12.30)','110호실',10),('97276721','숭실대학교 공학박사(컴퓨터시스템전공)','상주대학교 강사, 전산교양 등(05. 03. 02 ～ 07. 08. 24)\n연세대학교 산업협력단 기술 개발 연구교수 및 연구원(2011.09.01.~2015.02.28)\n온라인 Action RPG 라키온 PD','MOS 파워포인트 2013 / 성안당 / 김종철(2017.04)\n무형문화재 전승을 위한 <도제식 디지털 콘텐츠> 연구 민속음악 분야를 중심으로, (한국콘텐츠학회 2013 제1회 융합콘텐츠 제주학술대회 논문집 제1권 제1호, 2013. 7)\nUniversal Data Model과 Universal Pattern, 2010\n3차원 공간에서 EAI를 이용한 애니메이션의 최적 모델링”, (조선대학교)\nMOS 파워포인트 2013 / 성안당 / 김종철(2017.04)','409호실',10),('97285470','고려대학교 컴퓨터학과 박사수료','우리에프아이에스 검사부 선임검사역\n농협은행 파이썬 데이터분석 온라인강사\n홍익대학교 전문대학원, 장안대학교, e-그린 평생교육원 강사역임','Design of algorithm for the 3D object representation based on the Web3D using X3D”, (5th Int. Conference PDCAT 04)\n모바일 게임 『인디의 모험』 기획 및 프로젝트 관리\n과학기술정보 메타데이터 관리 표준화 연구(2003.3.1 ~ 2003.10.31)\nEncoding of VRML State Information andn Transparent Access it”, (ICIM01)\nDesign of algorithm for the 3D object representation based on the Web3D using X3D”, (5th Int. Conference PDCAT 04)','202호실',10),('97299813','건국대학교 문학박사(중어중문학 전공)','연세대학교 산업협력단 기술 개발 연구교수 및 연구원(2011.09.01.~2015.02.28)\n㈜아크테크놀로지 대표(2016.11.01.~2017.05.31)\n㈜마이존크리에이션 연구개발 팀장(2000.12.01.~2001.06.30)','Java Programming, 1999~2000\n3차원 공간에서 EAI를 이용한 애니메이션의 최적 모델링”, (조선대학교)\n2002.03~2002.10. 블루투스 무선보안시스템 개발 (에스원 프로젝트)\n대규모 네트워크 프로그램 개발을 위한 Node.js 프로그래밍, 2014\nJava Programming, 1999~2000','107호실',10),('98204804','조선대학교 이학석사 및 박사(전자계산학과 전자계산학 전공)','고려대학교 정보보호연구원 연구교수\n서울사이버대학교 전임교수\n고려대학교 부설 컴퓨터, 정보통신연구소 연구원','학습자의 컴퓨터 응용 프로그램 환경에 따른 학습 분기형 콘텐츠 설계전략, (한국인터넷정보학회, 2010년도 추계학술발표대회, 2010.10.29~30)\n2000.08~2000.12. 블루투스 AP 개발 (오프터스)\n2004.08~2005.08. 와이브로 계측기 개발(산업자원부)\n비대면(Untact) 업무를 위한 화상인식 PCA 사용자 인증 시스템 연구”, 디지털산업정보학회 논문지,16권 4호, pp65∼72, / 디지털산업정보학회 논문지 / 박찬길, 박종순 / 2020.12.30.\n학습자의 컴퓨터 응용 프로그램 환경에 따른 학습 분기형 콘텐츠 설계전략, (한국인터넷정보학회, 2010년도 추계학술발표대회, 2010.10.29~30)','209호실',10),('98237637','동국대학교 대학원 박사수료(게임공학 전공)','서일대학교 전력공학, 마이크로프로세서 이론, 공업수학, 제어기기, 전자회로, 제어공학, 로봇 공학 겸임교수(2012. 03. 01 ~ 2015. 02. 28)\n서울디지털대학교 컴퓨터공학과 객원교수 (2018.03. ~ 현재)\n(주)모바일기술연구소 선임연구원','초보자를 위한 XML\' 2006, 경희대학교 출판국\nMOS 엑셀 Expert 2013 / 성안당 / 김종철(2017.04)\n오픈소스(Open Source) 소프트웨어 활용 증진을 위한 적용 모델 표준화 연구(2003.11.1 ~ 2004.3.15)\nLOL 게임 여자챔피언의 춤 표현을 위한 감성 요소 추출 연구, (한국컴퓨터게임학회논문지, Vol.28. No.2, 2015.6.30)\n초보자를 위한 XML\' 2006, 경희대학교 출판국','101호실',10),('98240713','건국대학교 공학석사(컴퓨터정보공학)','경희대학교 산학중점교수\n상주대학교 강사, 전산교양 등(05. 03. 02 ～ 07. 08. 24)\n한국산업기술대학교 인공지능 강사','빅데이터와 NoSQL, 2014\n파워포인트 애니메이션 / 길벗 / 김종철(2008.12)\n2006.01~. TRS망을 활용한 센서네트워크 중계기 개발\n컴퓨터 활용 제대로 배우기(개정판)\' 2009, 생능출판사\n빅데이터와 NoSQL, 2014','206호실',10),('98248569','서울과학기술대학교 정보통신미디어공학전공 박사수료','㈜퍼시픽나인 대표(2019.05.24.~ 현재)\n디지털서울문화예술대학교 교수\nKT 평가위원','Research about Minecraft as Interactive Program for 3D Virtual Digital Art, (International Journal of Multimedia and Ubiquitous Engineering, Vol.10, No.10 (2015))\n컴퓨터 활용 2010 제대로 배우기\' 2011, 생능출판사\n경희의료원, A.I.D.D. 2021 당뇨병 발병 예측 AI 모델 개발 챌린지 우수상 수상 (3등), 2021.12.\n초보자를 위한 XML\' 2006, 경희대학교 출판국\nResearch about Minecraft as Interactive Program for 3D Virtual Digital Art, (International Journal of Multimedia and Ubiquitous Engineering, Vol.10, No.10 (2015))','308호실',10),('98297800','동국대학교 대학원 박사수료(게임공학 전공)','KT ds 평가위원\n서울시동부기술교육원 교수\nSW마에스트로 인공지능 딥러닝 멘토강사','원격대학 e-Learning 콘텐츠의 색채 분석을 통한 색채 적용 기준 제시, (한국디자인포럼, vol 24, 2009.8)\n주요 논문 실적\nS/W PLE 아키텍처 설계(2004.6.1 ~ 2005.4.15)\nS/W PLE 아키텍처 설계(2004.6.1 ~ 2005.4.15)\n원격대학 e-Learning 콘텐츠의 색채 분석을 통한 색채 적용 기준 제시, (한국디자인포럼, vol 24, 2009.8)','109호실',10),('99203458','조선대학교 이학석사 및 박사(전자계산학과 전자계산학 전공)','중앙대학교 사회굥규처 시간강사\n삼육대학교 강사, MOS/ICDL, 학습법 향상, 콘텐츠 크리에이터 등(97. 09. 01 ～ 20. 05. 31)\n홀로테크 대표(2018.01.03.~ 현재)','JavaScript 객체지향 프로그래밍, 2012\n스크래치 COS 2급 / 성안당 / 김종철(2019.01)\n석사. 900MHz 무선 데이터망을 이용한GAS 배관의 전위 측정에 관한 연구(2005)\n컴퓨터활용능력2급(실기) / 성안당 / 김종철(2019.09)\nJavaScript 객체지향 프로그래밍, 2012','309호실',10),('99212905','중앙대학교 첨단영상전문대학원 공학석사(영상공학 전공)','서울시동부기술교육원 교수\n한신대학교 겸임교수\n인덕대학교 강사, DB프로젝트 등(02. 03. 04 ～ 05. 08. 21)','KSDT, International Design Current 2010(2010.5.7~11)\nTransitive Signature Schemes for Undirected Graphs from Lattices, KSII Transactions on Internet and Information Systems, 2019.06.\n모바일 앱 개발을 위한 JavaScript & jQuery Mobile, 2012\nMOS 2003 6권 / 길벗 / 김종철(2007.10)\nKSDT, International Design Current 2010(2010.5.7~11)','507호실',10),('99242637','연세대학교 경제학 석사(빅데이터분석)','㈜마이존크리에이션 연구개발 팀장(2000.12.01.~2001.06.30)\n한국생산성본부 인공지능 딥러닝, TOPCIT 정보보안 강사\n고려사이버대학교 기초 AI 프로그래밍 외래교수(2020. 02. 01.~ 현재)','2002.03~2002.10. 블루투스 무선보안시스템 개발 (에스원 프로젝트)\n-Byoung-Kug Kim, Won-gil Hong and Doo-Seop Eom, A Design of Integrated Management System for Building Constructions based on USNs,2011 International Conference on Data Engineering and Internet Technology (DEIT 2011), . 2011.03.14\n-김병국,홍성화,김재완,엄두섭, 블루투스 HCI를 이용한 장치간의 데이터 통신,대한전자공학회 하계종합학술대회, pp.245-248. 2004.06\n「클라우드 컴퓨팅 보안 기술 표준화를 위한 계층 및 역할별 보안 요구사항 관계연구」, 2016.\n2002.03~2002.10. 블루투스 무선보안시스템 개발 (에스원 프로젝트)','302호실',10),('99249681','서울과학기술대학교 정보통신미디어공학전공 박사수료','한국산업기술대학교 인공지능 강사\ne그린원격평생교육원 촬영/운영\n한국방송통신대학교 연구원','2003.07~2003.12. 이미지 센서를 통한 MPEGㅡ4 데이터 전송 기기 개발(Etri)\n전자상거래 관리사\' 2006, 학문사\nEncoding of VRML State Information andn Transparent Access it”, (ICIM01)\n-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Jeong-Sik In, Doo-Seop Eom, A Method to Support High Data Transmission Rate in Ad-Hoc Networks based on Bluetooth,ITC-CSCC, p3-31. 2005.07\n2003.07~2003.12. 이미지 센서를 통한 MPEGㅡ4 데이터 전송 기기 개발(Etri)','408호실',10),('99250159','고려대학교 공학 박사','국민대학교 겸임교수, 중급프로그래밍, 캡스톤디자인 등(10. 03. 02 ～ 20. 05. 31)\n한국산업기술대학교 인공지능 강사\n상지대학교 컴퓨터공학부 겸임교수','Strongly Unforgeable Ring Signature Scheme from Lattices in the Standard Model, Journal of Applied Mathematics, 2014.05.\n녹색기술센터, 자연어 기반 기후기술분류 AI 경진대회 우승 (1등), 2021.09.\n무형문화재 전승을 위한 <도제식 디지털 콘텐츠> 연구 민속음악 분야를 중심으로, (한국콘텐츠학회 2013 제1회 융합콘텐츠 제주학술대회 논문집 제1권 제1호, 2013. 7)\nOracle 9i SQL & PL/SQL,2001\nStrongly Unforgeable Ring Signature Scheme from Lattices in the Standard Model, Journal of Applied Mathematics, 2014.05.','303호실',10),('99253149','인천대학교 수학학사','고려사이버대학교 기초 AI 프로그래밍 외래교수(2020. 02. 01.~ 현재)\n서울사이버대학교 빅데이터·AI센터 센터장\n숭실사이버대학교 소프트웨어공학, 창의적 문제해결, 모바일 프로그래밍, 웹 프로그래밍 외래교수(2018. 09. 01.~ 현재)','MOS 워드 2013 / 성안당 / 김종철(2017.06)\nEJB기반 보안 컴포넌트 개발(2001.3.1 ~ 2001.6.4)\n빅데이터와 NoSQL, 2014\n『모바일 게임 소스 코드 생성기소스』 생성 모듈 설계 및 구현(중소기업청)\nMOS 워드 2013 / 성안당 / 김종철(2017.06)','301호실',10),('99255215','성균관대학교 정보통신공학 석사','연세대학교, 경희대학교, 용인대학교, 청강문화산업대학 강의\n온라인 Action FPS 울프팀 PD\n더존디지털웨어 팀장','「클라우드 컴퓨팅 보안 기술 표준화를 위한 계층 및 역할별 보안 요구사항 관계연구」, 2016.\nMOS 파워포인트 2013 / 성안당 / 김종철(2017.04)\nPython 프로그래밍, 2014\n엔트리로 배우는 SW코딩자격 / 다본 / 김종철(2018.09)\n「클라우드 컴퓨팅 보안 기술 표준화를 위한 계층 및 역할별 보안 요구사항 관계연구」, 2016.','108호실',10),('99261832','고려대학교 문학박사 (문화콘텐츠학)','㈜컴피테크 연구 개발 부장(2016.09.01.~2017.05.31)\n온라인원 이사\n전보저장기기연구센터 연구개발 선임연구원(2003.07.01.~2008.06.30)','-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Doo-Seop Eom, An Effective Data Transmission Method In Ad-Hoc Networks Using Bluetooth,4th Asia Pacific International Symposium on Information Technology(APIS), pp.487-490. 2005.01.26-27\n정보검색에서 문헌 클러스터 기반의 검색 시각화 도구, 2002\nDesign of algorithm for the 3D object representation based on the Web3D using X3D”, (5th Int. Conference PDCAT 04)\nJavaScript 객체지향 프로그래밍, 2012\n-Byoung-Kug Kim, Sung-Hwa Hong, Jae-Wan Kim, Doo-Seop Eom, An Effective Data Transmission Method In Ad-Hoc Networks Using Bluetooth,4th Asia Pacific International Symposium on Information Technology(APIS), pp.487-490. 2005.01.26-27','307호실',10),('99289861','숭실대학교 공학박사(컴퓨터시스템전공)','금호아시아나IDT 기술 개발 과장(2008.07.01.~2009.04.30)\n서울시북부기술교육원 학과장(2015.06.04 ～ 2020. 현재)\n㈜ 이기는 길 설립','정보검색에서 문헌 클러스터 기반의 검색 시각화 도구, 2002\n과학기술정보 메타데이터 관리 표준화 연구(2003.3.1 ~ 2003.10.31)\n컴퓨터의 이해와 활용\' 2006, 생능출판사\n과학기술정보 메타데이터 관리 표준화 연구(2003.3.1 ~ 2003.10.31)\n정보검색에서 문헌 클러스터 기반의 검색 시각화 도구, 2002','307호실',10),('99295054','고려대학교 전자컴퓨터공학과 석사','한국생산성본부 인공지능 딥러닝, TOPCIT 정보보안 강사\n상지대학교 컴퓨터공학부 겸임교수\nIMS시스템 팀장','ICDL 2003 4권 / 길벗 / 김종철(2009.12)\nUniversal Data Model과 Universal Pattern, 2010\nJava Programming, 1999~2000\nGeneration of fuzzy rules and learning algorithm for servo control in holographic data storage system / Microsystem Technologies / 주저자(2014)\nICDL 2003 4권 / 길벗 / 김종철(2009.12)','409호실',10),('testprof','연세대학교 경제학 석사(빅데이터분석)','SW마에스트로 인공지능 딥러닝 멘토강사\n숭실대학교 강사, 컴퓨터활용(06. 03. 01 ～ 08. 08. 31)\n한성대학교 모바일 프로그래밍 시간강사(2013. 03. 01. ~ 2014. 08. 30)','Oracle 9i SQL & PL/SQL,2001\n시스템 성능 평가를 위한 자동화 측정 모듈 개발(2005.6.1 ~ 2005.12.15)\n엔트리로 배우는 SW코딩자격 / 다본 / 김종철(2018.09)\nStrong designated verifier signature scheme from lattices in the standard model, Security and Communication Networks, 2016.12.\nOracle 9i SQL & PL/SQL,2001','202호실',6);
/*!40000 ALTER TABLE `k_professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_quiz_d`
--

DROP TABLE IF EXISTS `k_quiz_d`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_quiz_d` (
  `quiz_d_date` date DEFAULT NULL,
  `quiz_d_openday` date DEFAULT NULL,
  `quiz_d_closeday` date DEFAULT NULL,
  `quiz_d_id` varchar(100) NOT NULL,
  `quiz_h_id` varchar(100) DEFAULT NULL,
  `quiz_d_cnt` int(11) DEFAULT 0,
  PRIMARY KEY (`quiz_d_id`),
  KEY `R_145` (`quiz_h_id`),
  CONSTRAINT `R_145` FOREIGN KEY (`quiz_h_id`) REFERENCES `k_quiz_h` (`quiz_h_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_quiz_d`
--

LOCK TABLES `k_quiz_d` WRITE;
/*!40000 ALTER TABLE `k_quiz_d` DISABLE KEYS */;
INSERT INTO `k_quiz_d` VALUES ('2022-09-24','2022-09-24','2022-10-01','D12001','HD13001',1),('2022-09-24','2022-09-24','2022-10-01','D12002','HD13002',1),('2022-09-26','2022-09-26','2022-09-30','D13001','HD14001',0);
/*!40000 ALTER TABLE `k_quiz_d` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_quiz_h`
--

DROP TABLE IF EXISTS `k_quiz_h`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_quiz_h` (
  `class_id` varchar(100) DEFAULT NULL,
  `quiz_h_title` varchar(500) DEFAULT NULL,
  `quiz_h_content` varchar(10000) DEFAULT NULL,
  `quiz_h_file` varchar(500) DEFAULT NULL,
  `quiz_h_id` varchar(100) NOT NULL,
  `quiz_h_seq` int(11) DEFAULT NULL,
  `quiz_h_original` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`quiz_h_id`),
  KEY `R_144` (`class_id`),
  CONSTRAINT `R_144` FOREIGN KEY (`class_id`) REFERENCES `k_class` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_quiz_h`
--

LOCK TABLES `k_quiz_h` WRITE;
/*!40000 ALTER TABLE `k_quiz_h` DISABLE KEYS */;
INSERT INTO `k_quiz_h` VALUES ('CL11000','이산수학 과제입니다. ','<p>과제입니다. 여러분 집중하세요.</p><p>----- 주의사항</p><p>1. 중복 금지..</p><p>2. a4 두 장 분량..</p><p>3. 기간 엄수..</p><p>4. 폰트 크기 16pt.. 궁서체..</p>',NULL,'HD13001',13005,''),('CL11003','공학수학 과제입니다.','<p>공학수학 과제입니다.</p><p>제출기한 엄수해서 제출하세요.</p><p>친구 거 복사해서 제출하면 제적입니다.</p>',NULL,'HD13002',13006,''),('CL11003','과제입니다','<p>과제입니다</p>',NULL,'HD14001',14005,'');
/*!40000 ALTER TABLE `k_quiz_h` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_quiz_r`
--

DROP TABLE IF EXISTS `k_quiz_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_quiz_r` (
  `quiz_r_content` varchar(10000) DEFAULT NULL,
  `quiz_r_date` date DEFAULT NULL,
  `quiz_r_file` varchar(500) DEFAULT NULL,
  `quiz_d_id` varchar(100) DEFAULT NULL,
  `quiz_r_point` int(11) DEFAULT NULL,
  `quiz_r_id` varchar(100) NOT NULL,
  `quiz_r_orginal` varchar(500) DEFAULT NULL,
  `class_member_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`quiz_r_id`),
  KEY `R_121` (`quiz_d_id`),
  KEY `class_member_id` (`class_member_id`),
  CONSTRAINT `R_121` FOREIGN KEY (`quiz_d_id`) REFERENCES `k_quiz_d` (`quiz_d_id`),
  CONSTRAINT `k_quiz_r_ibfk_1` FOREIGN KEY (`class_member_id`) REFERENCES `k_class_member` (`class_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_quiz_r`
--

LOCK TABLES `k_quiz_r` WRITE;
/*!40000 ALTER TABLE `k_quiz_r` DISABLE KEYS */;
INSERT INTO `k_quiz_r` VALUES ('안녕하세요 컴공과 1학년 박찬호입니다','2022-09-25',NULL,'D12001',80,'R13001','합친것 최종 v2.hwp','CMI22000'),('과제...','2022-09-26','ba652b73-beec-4df9-915e-39b9f1623be5_stu9.jpg','D12002',100,'R14001','stu9.jpg','CMI24000');
/*!40000 ALTER TABLE `k_quiz_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_rooms`
--

DROP TABLE IF EXISTS `k_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_rooms` (
  `room_id` varchar(100) NOT NULL,
  `room_building` varchar(100) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_rooms`
--

LOCK TABLES `k_rooms` WRITE;
/*!40000 ALTER TABLE `k_rooms` DISABLE KEYS */;
INSERT INTO `k_rooms` VALUES ('R100','브라운관',101),('R101','브라운관',102),('R102','브라운관',103),('R103','브라운관',104),('R104','브라운관',105),('R105','브라운관',201),('R106','브라운관',202),('R107','브라운관',203),('R108','브라운관',204),('R109','브라운관',205),('R110','브라운관',301),('R111','브라운관',302),('R112','브라운관',303),('R113','브라운관',304),('R114','브라운관',305),('R115','브라운관',401),('R116','브라운관',402),('R117','브라운관',403),('R118','브라운관',404),('R119','브라운관',405),('R120','브라운관',501),('R121','브라운관',502),('R122','브라운관',503),('R123','브라운관',504),('R124','브라운관',505),('R125','실버관',101),('R126','실버관',102),('R127','실버관',103),('R128','실버관',104),('R129','실버관',105),('R130','실버관',201),('R131','실버관',202),('R132','실버관',203),('R133','실버관',204),('R134','실버관',205),('R135','실버관',301),('R136','실버관',302),('R137','실버관',303),('R138','실버관',304),('R139','실버관',305),('R140','실버관',401),('R141','실버관',402),('R142','실버관',403),('R143','실버관',404),('R144','실버관',405),('R145','실버관',501),('R146','실버관',502),('R147','실버관',503),('R148','실버관',504),('R149','실버관',505),('R150','골드관',101),('R151','골드관',102),('R152','골드관',103),('R153','골드관',104),('R154','골드관',105),('R155','골드관',201),('R156','골드관',202),('R157','골드관',203),('R158','골드관',204),('R159','골드관',205),('R160','골드관',301),('R161','골드관',302),('R162','골드관',303),('R163','골드관',304),('R164','골드관',305),('R165','골드관',401),('R166','골드관',402),('R167','골드관',403),('R168','골드관',404),('R169','골드관',405),('R170','골드관',501),('R171','골드관',502),('R172','골드관',503),('R173','골드관',504),('R174','골드관',505),('R175','플래티넘',601);
/*!40000 ALTER TABLE `k_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_sch_times`
--

DROP TABLE IF EXISTS `k_sch_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_sch_times` (
  `mtr_sch_timecode` varchar(500) NOT NULL,
  `mtr_sch_start` time DEFAULT NULL,
  `mtr_sch_end` time DEFAULT NULL,
  PRIMARY KEY (`mtr_sch_timecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_sch_times`
--

LOCK TABLES `k_sch_times` WRITE;
/*!40000 ALTER TABLE `k_sch_times` DISABLE KEYS */;
INSERT INTO `k_sch_times` VALUES ('0','09:00:00','09:50:00'),('1','10:00:00','10:50:00'),('2','11:00:00','11:50:00'),('3','12:00:00','12:50:00'),('4','13:00:00','13:50:00'),('5','14:00:00','14:50:00'),('6','15:00:00','15:50:00'),('7','16:00:00','16:50:00'),('8','17:00:00','17:50:00'),('9','18:00:00','18:50:00');
/*!40000 ALTER TABLE `k_sch_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_schedule`
--

DROP TABLE IF EXISTS `k_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_schedule` (
  `sch_id` varchar(100) NOT NULL,
  `sch_start` datetime DEFAULT NULL,
  `sch_end` datetime DEFAULT NULL,
  `sch_title` varchar(500) DEFAULT NULL,
  `sch_manager` varchar(100) DEFAULT NULL,
  `sch_type` varchar(100) DEFAULT NULL,
  `sch_allday` varchar(100) DEFAULT NULL,
  `sch_uuid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_schedule`
--

LOCK TABLES `k_schedule` WRITE;
/*!40000 ALTER TABLE `k_schedule` DISABLE KEYS */;
INSERT INTO `k_schedule` VALUES ('A21-101','2021-08-02 00:00:00',NULL,'휴·복학 접수시작','김행정','APPLY','true','dbb8126e-4178-4dbc-bfb1-d45a7b5c4a04'),('A21-102','2021-08-13 00:00:00','2021-08-21 00:00:00','2021-2학기 수강신청','김행정','APPLY','true','d02b0911-fd75-4e68-b6c3-9d7699ec553e'),('A21-104','2021-08-20 00:00:00','2021-08-27 00:00:00','2021-2학기 등록','김행정','APPLY','true','f2e2f128-0232-4507-8cb1-c35c023ee7c8'),('A21-105','2021-08-23 00:00:00',NULL,'복학 접수 마감','김행정','APPLY','true','4b502969-8d39-4e4e-a739-b3fac8949080'),('A21-109','2021-09-03 00:00:00','2021-09-08 00:00:00','수강신청 확인 및 변경','김행정','APPLY','true','f1687c23-1e0b-4cd6-b50f-086a1fb5d5dd'),('A21-110','2021-09-09 00:00:00','2021-09-14 00:00:00','2021-2학기 추가등록','김행정','APPLY','true','92f4b9bf-e7be-4a69-b44e-f735547b234b'),('A21-111','2021-09-13 00:00:00',NULL,'등록금 전액 반환 일반휴학 접수 마감','김행정','APPLY','true','129ad98d-3e28-4309-b9d5-f79ae581b120'),('A21-112','2021-09-13 00:00:00','2021-09-18 00:00:00','조기졸업 신청','김행정','APPLY','true','c7dd3ff2-8def-4b19-8de5-3ca5068f966b'),('A21-120','2021-10-25 00:00:00','2021-10-28 00:00:00','수강철회','김행정','APPLY','true','9e552d80-3477-4cbd-b56e-0cf13490fd41'),('A21-121','2021-10-25 00:00:00','2021-10-30 00:00:00','캠퍼스내 소속변경 신청','김행정','APPLY','true','76fd35d1-a75a-4a22-b02f-406679748923'),('A21-122','2021-10-29 00:00:00','2021-11-03 00:00:00','교직원 평가','김행정','APPLY','true','f8b6a3e9-6039-43c0-b2c6-57f6c71347e0'),('A21-124','2021-11-12 00:00:00',NULL,'학기 2/3선, 등록필자 일반휴학 접수 마감','김행정','APPLY','true','97ddb345-d26c-4800-b064-4548e6b89f4f'),('A21-125','2021-11-15 00:00:00',NULL,'질병휴학 접수 시작','김행정','APPLY','true','2acc4299-d0b9-4941-8b41-09328068cf5c'),('A21-127','2021-11-29 00:00:00',NULL,'질병휴학 접수 마감','김행정','APPLY','true','84d00143-e224-497d-8613-a5cbae0e9437'),('A21-135','2021-12-20 00:00:00','2021-12-25 00:00:00','캠퍼스내 복수전공, 연계전공, 마이크로전공 신청','김행정','APPLY','true','6b0e6153-f59b-4110-bfc7-dc3feac6fca7'),('A21-136','2021-12-24 00:00:00','2021-12-30 00:00:00','성적제출 마감','김행정','APPLY','true','27b88e57-a91d-4222-b451-441007edea81'),('A22-104','2022-02-03 00:00:00',NULL,'휴·복학 접수시작','김행정','APPLY','true','d61f6255-391a-4df9-a4e6-55e121c6721d'),('A22-105','2022-02-14 00:00:00','2022-02-19 00:00:00','2022-1학기 수강신청','김행정','APPLY','true','74d28f73-75c7-4105-96f2-cace98f6378e'),('A22-106','2022-02-18 00:00:00','2022-02-25 00:00:00','2022-1학기 등록','김행정','APPLY','true','8a66982e-a32c-4b7f-8786-d0dd3a0a0430'),('A22-109','2022-02-22 00:00:00',NULL,'복학접수마감','김행정','APPLY','true','d086fe3a-38cf-453f-96d6-142cf4ecd216'),('A22-113','2022-03-04 00:00:00','2022-03-09 00:00:00','수강신청 확인 및 변경','김행정','APPLY','true','f2e8c800-9503-4cb1-a008-99af26450ca5'),('A22-115','2022-03-11 00:00:00','2022-03-16 00:00:00','2022-1학기 추가등록','김행정','APPLY','true','cfc36a8b-0ac8-4aa9-be8c-7ff6ce027b79'),('A22-116','2022-03-14 00:00:00','2022-03-19 00:00:00','조기졸업 신청','김행정','APPLY','true','da05bb51-0e22-4b55-b5ce-a5bb0c5edac1'),('A22-117','2022-03-15 00:00:00',NULL,'일반휴학 접수 마감, 등록금 전액 반환','김행정','APPLY','true','13eb89e3-6839-4724-bb15-c34a40405e89'),('A22-122','2022-04-27 00:00:00','2022-04-30 00:00:00','수강철회','김행정','APPLY','true','0dfa7d0c-ff24-46e8-88c1-fc322f49d3b8'),('A22-123','2022-04-27 00:00:00','2022-05-04 00:00:00','캠퍼스내 소속변경 신청','김행정','APPLY','true','0ed21750-0422-471e-afdb-a0257adcb621'),('A22-125','2022-05-02 00:00:00','2022-05-05 00:00:00','교직원 평가','김행정','APPLY','true','03b554cf-6187-4fd1-a7eb-db988b01c52d'),('A22-131','2022-05-16 00:00:00',NULL,'학기 2/3선, 등록필자 일반휴학 접수 마감','김행정','APPLY','true','3968813a-ad3c-4949-b2f8-abc3e7cfa7db'),('A22-132','2022-05-17 00:00:00',NULL,'질병휴학 접수 시작','김행정','APPLY','true','5c18b416-d1c3-45d9-a713-1abf648c4ec0'),('A22-134','2022-06-02 00:00:00',NULL,'교무위원회, 질병휴학 접수 마감','김행정','APPLY','true','df2cf05b-cbc8-4fb4-b558-174405b86ab5'),('A22-144','2022-06-22 00:00:00','2022-06-29 00:00:00','캠퍼스내 복수전공, 연계전공 신청','김행정','APPLY','true','053a073a-6c76-42c1-95e0-37215d762b65'),('A22-145','2022-06-28 00:00:00','2022-07-05 00:00:00','성적제출 마감','김행정','APPLY','true','78d18fc8-00d7-4a2b-a7c6-07fb858d611f'),('A22-146','2022-08-01 00:00:00',NULL,'휴·복학 접수시작','김행정','APPLY','true','3d6cc7d4-76eb-45e4-9fa7-5e7ec8c0199f'),('A22-147','2022-08-12 00:00:00','2022-08-20 00:00:00','2022-2학기 수강신청','김행정','APPLY','true','046c3f3d-f0ae-4025-9db0-179ab14a8e4a'),('A22-149','2022-08-19 00:00:00','2022-08-26 00:00:00','2022-2학기 등록','김행정','APPLY','true','74b51ca4-eb58-4981-b3c1-f14d29610168'),('A22-150','2022-08-23 00:00:00',NULL,'복학 접수 마감','김행정','APPLY','true','1c04d669-012d-4115-82b7-e543837ad692'),('A22-153','2022-09-05 13:30:00','2022-09-30 17:30:00','수강신청 확인 및 변경','김행정','APPLY',NULL,'64620677-0124-4991-907e-d828b4faa751'),('A22-154','2022-09-08 00:00:00','2022-09-15 00:00:00','2022-2학기 추가등록','김행정','APPLY','true','7bcce49d-c425-4363-b2a5-ddcb03f767d1'),('A22-157','2022-09-14 00:00:00',NULL,'일반휴학 접수 마감, 등록금 전액 반환','김행정','APPLY','true','950b9492-13c8-468d-8796-0dd96f0d4dd1'),('A22-166','2022-10-27 00:00:00','2022-11-01 00:00:00','수강철회','김행정','APPLY','true','3b5fcca6-1a42-4f7a-befd-79c9d8485bc7'),('A22-167','2022-10-27 00:00:00','2022-11-03 00:00:00','캠퍼스내 소속변경 신청','김행정','APPLY','true','af00d95b-a47e-4b43-b599-19bedb4436fb'),('A22-168','2022-11-01 00:00:00','2022-11-04 00:00:00','교직원 평가','김행정','APPLY','true','e462cffe-77f6-4088-9749-5c2df9e94143'),('A22-170','2022-11-14 00:00:00',NULL,'학기 2/3선, 등록필자 일반휴학 접수 마감','김행정','APPLY','true','6d14075e-d3b4-4717-b3d9-7cb0beb95a38'),('A22-171','2022-11-15 00:00:00',NULL,'질병휴학 접수 시작','김행정','APPLY','true','d1c75ce1-5459-4915-b38b-57da72b53629'),('A22-173','2022-12-01 00:00:00',NULL,'교무위원회, 성탄절예배, 질병휴학 접수 마감','김행정','APPLY','true','746e6b68-577b-46d8-99a6-1209cefb27a0'),('A22-180','2022-12-22 00:00:00','2022-12-29 00:00:00','캠퍼스내 복수전공, 연계전공 신청','김행정','APPLY','true','6ad2154b-6788-4c03-89ec-046a3fe2746f'),('A22-182','2022-12-28 00:00:00','2023-01-03 00:00:00','성적제출 마감','김행정','APPLY','true','71148d3b-3983-43d9-9010-0a3448f3a41f'),('A22-183','2022-03-03 09:00:00','2022-03-07 18:00:00','2022년-1학기 등록금 1차 분할 납부 기간','김행정','APPLY',NULL,'4a600e6e-b69c-4d67-8a85-fb9e275d33fe'),('A22-184','2022-04-04 09:00:00','2022-04-08 18:00:00','2022년-1학기 등록금 2차 분할 납부 기간','김행정','APPLY',NULL,'ef9149b2-210a-4704-9cba-046ea56767e5'),('A22-185','2022-05-02 09:00:00','2022-05-07 18:00:00','2022년-1학기 등록금 3차 분할 납부 기간','김행정','APPLY',NULL,'dc3f4eb2-7ff2-49b7-a685-694d528803ac'),('A22-186','2022-06-02 09:00:00','2022-06-07 18:00:00','2022년-1학기 등록금 4차 분할 납부 기간','김행정','APPLY',NULL,'7739c9c3-f55c-451d-8919-d8e5b794b6cb'),('A22-187','2022-09-02 09:00:00','2022-09-08 18:00:00','2022년-2학기 등록금 1차 분할 납부 기간','김행정','APPLY',NULL,'299590b6-14b8-4827-94eb-0af0a4ee16dc'),('A22-188','2022-10-04 09:00:00','2022-10-07 18:00:00','2022년-2학기 등록금 2차 분할 납부 기간','김행정','APPLY',NULL,'3b6ab6e4-a707-4249-b24e-1905e9b022dc'),('A22-189','2022-11-02 09:00:00','2022-11-08 18:00:00','2022년-2학기 등록금 3차 분할 납부 기간','김행정','APPLY',NULL,'06a1d387-8e87-43ba-9779-40ff12183c2f'),('A22-190','2022-12-02 09:00:00','2022-12-07 18:00:00','2022년-2학기 등록금 4차 분할 납부 기간','김행정','APPLY',NULL,'3482a901-aa64-4bc3-8c61-9f4afdc81c3d'),('A22-207','2022-09-21 00:00:00','2022-09-30 00:00:00','상담-2차 신청기간','김행정','APPLY','true','566be0d2-077b-4911-a5d3-b6e4ba3c7f7f'),('A22-208','2022-09-01 00:00:00','2022-09-12 00:00:00','상담-1차 신청기간','김행정','APPLY','true','f6067dc3-28d4-4163-b1d7-ace6393aab2f'),('A23-102','2023-01-01 00:00:00',NULL,'휴·복학 접수시작','김행정','APPLY','true','7424fdf3-5e18-4502-b5f1-76a9bef5206f'),('A23-103','2023-01-13 00:00:00','2023-01-18 00:00:00','2023-1학기 수강신청','김행정','APPLY','true','fe74e6d7-63a0-4701-89dd-787057f1978e'),('A23-104','2023-01-17 00:00:00','2023-01-24 00:00:00','2023-1학기 등록','김행정','APPLY','true','c1fc0e8a-9033-453a-a080-3710d0a3a582'),('A23-106','2023-01-22 00:00:00',NULL,'복학 접수 마감','김행정','APPLY','true','bead64ac-47db-4799-bebf-0d05cbb840d6'),('C21-129','2021-12-06 00:00:00',NULL,'9/20(월) 보충수업','김행정','CLASS','true','b67ac3ba-09d3-497b-abbf-5928285ad736'),('C21-130','2021-12-06 00:00:00','2021-12-11 00:00:00','자율학습 및 보충수업 기간','김행정','CLASS','true','9b075534-486f-4d98-b6a9-081dff47bf4c'),('C21-131','2021-12-07 00:00:00',NULL,'9/21(화) 보충수업','김행정','CLASS','true','96721941-1fb0-479a-b995-b097dd2bba11'),('C21-132','2021-12-08 00:00:00',NULL,'9/22(수) 보충수업','김행정','CLASS','true','9a6bae69-0387-4f78-b75e-0328fe3b053c'),('C22-137','2022-06-08 00:00:00',NULL,'3/9(수) 보충수업','김행정','CLASS','true','c77d482b-8eab-4ade-b66f-cd13443da49a'),('C22-138','2022-06-08 00:00:00','2022-06-15 00:00:00','자율학습 및 보충학습 기간','김행정','CLASS','true','f5fad2c5-d101-41a8-87e7-ef9cd201fe0d'),('C22-139','2022-06-09 00:00:00',NULL,'5/5(목) 보충수업','김행정','CLASS','true','9974e265-b7f7-451a-9414-f112cf789070'),('C22-140','2022-06-10 00:00:00',NULL,'6/1(수) 보충수업','김행정','CLASS','true','c24f495f-5f71-40d2-a95b-e66965c205a5'),('C22-141','2022-06-13 00:00:00',NULL,'6/6(월) 보충수업','김행정','CLASS','true','37f775b8-5895-4b8c-a1fc-9ba0fcab4f13'),('C22-174','2022-12-08 00:00:00','2022-12-15 00:00:00','자율학습 및 보충학습 기간','김행정','CLASS','true','57462090-b222-49df-8dc6-68a5d19eb22a'),('C22-175','2022-12-09 00:00:00',NULL,'9/9(금) 보충수업','김행정','CLASS','true','3aba2786-8976-494a-8d4a-a49717698939'),('C22-176','2022-12-12 00:00:00',NULL,'9/12(월) 보충수업','김행정','CLASS','true','2be8ae98-119d-40f9-85e9-ddf14c6ae049'),('C22-177','2022-12-13 00:00:00',NULL,'10/3(월) 보충수업','김행정','CLASS','true','6e9f5435-3c69-49ee-8d30-70ba2b19861d'),('C22-178','2022-12-14 00:00:00',NULL,'10/10(월) 보충수업','김행정','CLASS','true','8143b504-75a2-495f-bbd3-05b58b6bce77'),('E21-119','2021-10-18 00:00:00','2021-10-23 00:00:00','2021-2학기 중간시험','김행정','EXAM','true','d480d1d3-0772-4d66-b38f-52d6ac547ef4'),('E21-133','2021-12-13 00:00:00','2021-12-18 00:00:00','2021-2학기 기말시험','김행정','EXAM','true','022e6f80-32f2-4c22-b46f-80a312eff792'),('E22-121','2022-04-20 00:00:00','2022-04-27 00:00:00','2022-1학기 중간시험','김행정','EXAM','true','00918c64-fa5a-4de4-acfe-cc08197ad487'),('E22-142','2022-06-15 00:00:00','2022-06-22 00:00:00','기말시험','김행정','EXAM','true','ed3985fc-6214-4b7a-a455-28c053571912'),('E22-165','2022-10-20 00:00:00','2022-10-27 00:00:00','2022-2학기 중간시험','김행정','EXAM','true','233a33c6-16df-4d8a-9d7f-973dd9a587e4'),('E22-179','2022-12-15 00:00:00','2022-12-22 00:00:00','2022-2학기 기말시험','김행정','EXAM','true','15b6d999-99ed-4079-a0f9-67c584c8b2dc'),('G21-106','2021-08-27 00:00:00',NULL,'학위수여식','김행정','GENERAL','true','c2fb83a6-51e3-4e63-9545-956a8358f789'),('G21-107','2021-08-30 00:00:00',NULL,'개강','김행정','GENERAL','true','f6b057ac-34df-4385-99c4-4fddf1600497'),('G21-108','2021-09-02 00:00:00',NULL,'교무위원회','김행정','GENERAL','true','7e6d756c-d725-4582-9d1c-74a959c53f3e'),('G21-115','2021-10-06 00:00:00',NULL,'학기 1/3선','김행정','GENERAL','true','2a19bfc1-3fd1-4b6f-9e71-63523dc09f5a'),('G21-116','2021-10-07 00:00:00',NULL,'교무위원회','김행정','GENERAL','true','adb3b23e-64a4-41eb-a767-670a96c49159'),('G21-118','2021-10-14 00:00:00',NULL,'KCY대감사절','김행정','GENERAL','true','e49e452f-47e8-4e1c-a7a1-6198be8c572e'),('G21-123','2021-11-04 00:00:00',NULL,'교무위원회','김행정','GENERAL','true','fbb81892-f36d-47e4-b714-16a55fa1af4a'),('G21-126','2021-11-21 00:00:00',NULL,'추수감사절','김행정','GENERAL','true','8327d026-b24b-4718-9d2b-acfde8450420'),('G21-128','2021-12-02 00:00:00',NULL,'교무위원회, 성탄절예배','김행정','GENERAL','true','5c51b6de-50a5-4095-b4ac-7972d670cee6'),('G21-134','2021-12-20 00:00:00',NULL,'겨울방학 시작','김행정','GENERAL','true','216956b9-d736-4928-88e9-afaae77012e4'),('G22-107','2022-02-20 00:00:00',NULL,'졸업예배','김행정','GENERAL','true','680f9b4d-cf73-47a3-99b9-2f3879adc01c'),('G22-108','2022-02-21 00:00:00',NULL,'학위수여식','김행정','GENERAL','true','dbc75da9-cbfc-4902-b3ff-7271c44f0a5a'),('G22-111','2022-03-02 00:00:00',NULL,'개강','김행정','GENERAL','true','bd02ea75-92b4-48e9-8b6c-a58caa150fd2'),('G22-112','2022-03-03 00:00:00',NULL,'교무위원회','김행정','GENERAL','true','bf135fa0-b62c-4477-b35b-954e62a620bc'),('G22-118','2022-04-07 00:00:00',NULL,'교무위원회, 학기 1/3선','김행정','GENERAL','true','1682f109-3dd2-4d32-8e1e-7ffe669408b8'),('G22-119','2022-04-10 00:00:00','2022-04-17 00:00:00','고난주간','김행정','GENERAL','true','cd22bfb1-9097-498b-82da-b135c606a0fe'),('G22-128','2022-05-11 00:00:00',NULL,'은퇴교수의 날','김행정','GENERAL','true','6bbaa70b-f986-4202-b4e6-67c2634a3ce9'),('G22-129','2022-05-12 00:00:00',NULL,'교무위원회','김행정','GENERAL','true','d648f7ef-1752-47ff-88f2-77d1aa459454'),('G22-130','2022-05-14 00:00:00',NULL,'창립기념일','김행정','GENERAL','true','7469ffce-ce0b-4577-9a1f-a1de00b9c875'),('G22-135','2022-06-05 00:00:00',NULL,'성령강림절','김행정','GENERAL','true','e7fb2263-a47c-4cba-97b4-72babc20d0ab'),('G22-143','2022-06-22 00:00:00',NULL,'여름방학 시작','김행정','GENERAL','true','c794ce47-93e3-455d-bd53-cef8321fecb7'),('G22-151','2022-08-26 00:00:00',NULL,'학위수여식','김행정','GENERAL','true','c18971c1-8142-4d42-a020-e1dfdd79d6f6'),('G22-152','2022-09-01 00:00:00',NULL,'교무위원회, 개강','김행정','GENERAL','true','5f4fe5af-3acf-4e97-9224-46fdf4a0b347'),('G22-161','2022-10-07 00:00:00',NULL,'학기 1/3선','김행정','GENERAL','true','28a30f02-845f-410e-ac69-5b3332ccf997'),('G22-164','2022-10-13 00:00:00',NULL,'KCY대감사절','김행정','GENERAL','true','c165c847-c826-40c8-8562-797c0d52e20c'),('G22-169','2022-11-03 00:00:00',NULL,'교무위원회','김행정','GENERAL','true','a7d8d04b-7749-4429-a724-248cac97604b'),('G22-172','2022-11-20 00:00:00',NULL,'추수감사절','김행정','GENERAL','true','f4bb9b29-5bb6-4541-b894-430d59867fc2'),('G22-210','2022-10-06 00:00:00','0000-00-00 00:00:00','교무위원회gg','김행정','GENERAL','true','65c29c4f-ea67-491b-9c9e-6e312c5537db'),('G23-108','2023-01-26 00:00:00',NULL,'졸업예배','김행정','GENERAL','true','5d42eb2a-8505-46b9-b27b-6f7c6d7eb330'),('G23-109','2023-01-27 00:00:00',NULL,'학위수여식','김행정','GENERAL','true','7d0a4a92-06b3-4f20-9100-45741524cef4'),('H21-103','2021-08-15 00:00:00',NULL,'광복절','김행정','HOLIDAY','true','abfc0a83-f1ab-4204-a60b-fa8d41d93849'),('H21-113','2021-09-20 00:00:00','2021-09-23 00:00:00','추석연휴','김행정','HOLIDAY','true','0905c74c-44cd-4bdb-a32a-22303bc7632f'),('H21-114','2021-10-03 00:00:00',NULL,'개천절','김행정','HOLIDAY','true','1bcdf122-9586-4036-9ab7-684becc4b09b'),('H21-117','2021-10-09 00:00:00',NULL,'한글날','김행정','HOLIDAY','true','b370cd88-5aa7-403f-a3d1-9a9c5dbb929a'),('H21-137','2021-12-25 00:00:00',NULL,'성탄절','김행정','HOLIDAY','true','063388d3-8919-4708-b6c1-5cfb7dbfc4fa'),('H22-101','2022-01-01 00:00:00',NULL,'신정','김행정','HOLIDAY','true','25afa71d-f874-450f-aa55-8f6a0c7c5841'),('H22-102','2022-01-31 00:00:00','2022-02-03 00:00:00','설연휴','김행정','HOLIDAY','true','8423f8f3-ce75-445f-ab00-89438f265d17'),('H22-103','2022-02-01 00:00:00',NULL,'설날','김행정','HOLIDAY','true','f4ddaa75-daab-4cbe-83dd-bb60cb8f75ef'),('H22-110','2022-03-01 00:00:00',NULL,'삼일절','김행정','HOLIDAY','true','62c21b9b-2de8-46a3-8537-59f038f6ef39'),('H22-114','2022-03-09 00:00:00',NULL,'대통령선거일','김행정','HOLIDAY','true','f5454584-b781-42d2-afe2-cd293c158df4'),('H22-120','2022-04-17 00:00:00',NULL,'부활절','김행정','HOLIDAY','true','d5b98cf4-96f5-4bf6-96ce-b5aa3d388240'),('H22-124','2022-05-01 00:00:00',NULL,'근로자의 날','김행정','HOLIDAY','true','07ab7b1d-fb50-4021-b410-139356463767'),('H22-126','2022-05-05 00:00:00',NULL,'어린이날','김행정','HOLIDAY','true','485cc4c1-dae8-4986-aa89-51f8a2fe2884'),('H22-127','2022-05-08 00:00:00',NULL,'부처님오신날','김행정','HOLIDAY','true','73d8f82f-3a45-434b-b972-8b8999edb833'),('H22-133','2022-06-01 00:00:00',NULL,'지방선거일','김행정','HOLIDAY','true','f095c79c-11b0-404a-8755-5c49ef2f44a1'),('H22-136','2022-06-06 00:00:00',NULL,'현충일','김행정','HOLIDAY','true','c495c023-94e6-4365-9c53-34d294e6409c'),('H22-148','2022-08-15 00:00:00',NULL,'광복절','김행정','HOLIDAY','true','93908fff-43a6-4581-ae28-7c19c2be9b15'),('H22-155','2022-09-09 00:00:00','2022-09-12 00:00:00','추석연휴','김행정','HOLIDAY','true','151d0524-5647-4c1e-9599-c9e88fe15d24'),('H22-156','2022-09-12 00:00:00',NULL,'대체공휴일','김행정','HOLIDAY','true','c43efc22-3c37-4665-9c05-74c0bfa792ee'),('H22-159','2022-10-03 00:00:00',NULL,'개천절','김행정','HOLIDAY','true','01430855-754e-438d-b20c-e482da7f6324'),('H22-162','2022-10-09 00:00:00',NULL,'한글날','김행정','HOLIDAY','true','234c45e9-6631-4fb8-9c84-e556b756011a'),('H22-163','2022-10-10 00:00:00',NULL,'대체공휴일','김행정','HOLIDAY','true','ae6a1667-cab9-4f30-8689-b377f0306459'),('H22-181','2022-12-25 00:00:00',NULL,'성탄절','김행정','HOLIDAY','true','106e9027-19fa-4676-b6ee-b3439cca24dd'),('H23-101','2023-01-01 00:00:00',NULL,'신정','김행정','HOLIDAY','true','518fb2d8-013c-42e2-aabb-4c59db06bf55'),('H23-105','2023-01-21 00:00:00','2023-01-24 00:00:00','설연휴','김행정','HOLIDAY','true','b5c8a287-4705-4189-87e0-d3a18aafa658'),('H23-107','2023-01-22 00:00:00',NULL,'설날','김행정','HOLIDAY','true','7abe07cc-c2dd-4d41-80d7-f87e8cf9e2ed'),('S202201','2022-03-02 00:00:00','2022-06-30 00:00:00','2022년1학기','공통','SEMESTER',NULL,'940e09a7-3030-4a20-b21e-b61d547a45d2'),('S202202','2022-09-01 00:00:00','2022-12-30 00:00:00','2022년2학기','공통','SEMESTER',NULL,'028b572e-b1cd-4837-a6b5-54e8a28fd99e'),('S202301','2023-03-02 00:00:00','2023-06-30 00:00:00','2023년1학기','공통','SEMESTER',NULL,'315d84e1-7bc6-4da1-92b4-84858612c55f'),('S202302','2023-09-01 00:00:00','2023-12-30 00:00:00','2023년2학기','공통','SEMESTER',NULL,'118faed1-a733-402f-91e3-8fe12554d82a'),('S202401','2024-03-04 00:00:00','2024-06-30 00:00:00','2024년1학기','공통','SEMESTER',NULL,'9caad79e-aec3-4e9c-9dfa-9cb3424f3b23'),('S202402','2024-09-02 00:00:00','2024-12-30 00:00:00','2024년2학기','공통','SEMESTER',NULL,'ddf47de6-adb6-42bc-a5d7-aae17b3f5413'),('S202501','2025-03-04 00:00:00','2025-06-30 00:00:00','2025년1학기','공통','SEMESTER',NULL,'1099dd3d-ecd9-49f5-9ffc-88d38f18037c'),('S202502','2025-09-01 00:00:00','2025-12-30 00:00:00','2025년2학기','공통','SEMESTER',NULL,'f92006cd-a252-4573-8976-677c532f4dec'),('S202601','2026-03-03 00:00:00','2026-06-30 00:00:00','2026년1학기','공통','SEMESTER',NULL,'f266094b-2938-4cc4-8468-f36b99cfe890'),('S202602','2026-09-01 00:00:00','2026-12-30 00:00:00','2026년2학기','공통','SEMESTER',NULL,'f0b23c1c-92e6-4554-b9cd-b01dfd891a21'),('S202701','2027-03-02 00:00:00','2027-06-30 00:00:00','2027년1학기','공통','SEMESTER',NULL,'33ce8dd5-cce1-466c-8696-013a70bde6de'),('S202702','2027-09-01 00:00:00','2027-12-30 00:00:00','2027년2학기','공통','SEMESTER',NULL,'fd608150-f97c-4f86-b666-7b5e223db101'),('S202801','2028-03-02 00:00:00','2028-06-30 00:00:00','2028년1학기','공통','SEMESTER',NULL,'8b99d22c-58cc-4d86-a7dc-183e396d135f'),('S202802','2028-09-01 00:00:00','2028-12-30 00:00:00','2028년2학기','공통','SEMESTER',NULL,'a8bff871-0f0d-495b-8672-2e4d2f57c0ee'),('S202901','2029-03-02 00:00:00','2029-06-30 00:00:00','2029년1학기','공통','SEMESTER',NULL,'1cec2de8-b2e7-4fd6-a552-edbf658db1a7'),('S202902','2029-09-03 00:00:00','2029-12-30 00:00:00','2029년2학기','공통','SEMESTER',NULL,'2a4c61dc-79f0-4926-a92d-c7991aa20266'),('S203001','2030-03-04 00:00:00','2030-06-30 00:00:00','2030년1학기','공통','SEMESTER',NULL,'9f1598b2-b07b-41d7-a82a-942a00cc3898'),('S203002','2030-09-02 00:00:00','2030-12-30 00:00:00','2030년2학기','공통','SEMESTER',NULL,'ccc7a017-cd29-48e7-9804-0f6b3944d074'),('S203101','2031-03-04 00:00:00','2031-06-30 00:00:00','2031년1학기','공통','SEMESTER',NULL,'ab676780-f0bb-4d83-b653-65b9d1ba9a46'),('S203102','2031-09-01 00:00:00','2031-12-30 00:00:00','2031년2학기','공통','SEMESTER',NULL,'22360af2-21e7-4e4e-beb7-e708c53a8ce1');
/*!40000 ALTER TABLE `k_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_scores`
--

DROP TABLE IF EXISTS `k_scores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_scores` (
  `score_id` varchar(100) NOT NULL,
  `class_member_id` varchar(100) DEFAULT NULL,
  `score_attn` int(11) DEFAULT NULL,
  `score_quiz` int(11) DEFAULT NULL,
  `score_mid` int(11) DEFAULT NULL,
  `score_final` int(11) DEFAULT NULL,
  `score_date` date DEFAULT NULL,
  PRIMARY KEY (`score_id`),
  KEY `R_124` (`class_member_id`),
  CONSTRAINT `R_124` FOREIGN KEY (`class_member_id`) REFERENCES `k_class_member` (`class_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_scores`
--

LOCK TABLES `k_scores` WRITE;
/*!40000 ALTER TABLE `k_scores` DISABLE KEYS */;
INSERT INTO `k_scores` VALUES ('Score10002','CMI24000',60,20,100,80,'2022-09-26'),('Score10006','CMI22000',100,16,100,80,'2022-09-26');
/*!40000 ALTER TABLE `k_scores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_student_aca`
--

DROP TABLE IF EXISTS `k_student_aca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_student_aca` (
  `aca_id` varchar(100) NOT NULL DEFAULT nextval(`kcy`.`aca_id_seq`),
  `aca_type` varchar(100) DEFAULT NULL,
  `aca_start` varchar(100) DEFAULT NULL,
  `aca_end` varchar(100) DEFAULT NULL,
  `aca_reason` varchar(100) DEFAULT NULL,
  `aca_reason_d` varchar(5000) DEFAULT NULL,
  `aca_yn` varchar(100) DEFAULT NULL,
  `aca_reject` varchar(500) DEFAULT NULL,
  `stu_id` varchar(100) DEFAULT NULL,
  `aca_date` datetime DEFAULT NULL,
  `aca_file` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`aca_id`),
  KEY `R_79` (`stu_id`),
  CONSTRAINT `R_79` FOREIGN KEY (`stu_id`) REFERENCES `k_students` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_student_aca`
--

LOCK TABLES `k_student_aca` WRITE;
/*!40000 ALTER TABLE `k_student_aca` DISABLE KEYS */;
INSERT INTO `k_student_aca` VALUES ('10','입학','2000-03-01',NULL,NULL,NULL,NULL,NULL,'00000001','2000-03-01 00:00:00',NULL),('100','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11155891','2011-03-01 00:00:00',NULL),('101','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11175038','2011-03-01 00:00:00',NULL),('102','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11184366','2011-03-01 00:00:00',NULL),('103','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11185346','2011-03-01 00:00:00',NULL),('104','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11186205','2011-03-01 00:00:00',NULL),('105','입학','2012-03-01',NULL,NULL,NULL,NULL,NULL,'12108821','2012-03-01 00:00:00',NULL),('106','입학','2012-03-01',NULL,NULL,NULL,NULL,NULL,'12110058','2012-03-01 00:00:00',NULL),('107','입학','2012-03-01',NULL,NULL,NULL,NULL,NULL,'12130744','2012-03-01 00:00:00',NULL),('108','입학','2012-03-01',NULL,NULL,NULL,NULL,NULL,'12131053','2012-03-01 00:00:00',NULL),('109','입학','2012-03-01',NULL,NULL,NULL,NULL,NULL,'12144760','2012-03-01 00:00:00',NULL),('11','입학','2000-03-01',NULL,NULL,NULL,NULL,NULL,'00103086','2000-03-01 00:00:00',NULL),('110','입학','2012-03-01',NULL,NULL,NULL,NULL,NULL,'12172877','2012-03-01 00:00:00',NULL),('111','입학','2012-03-01',NULL,NULL,NULL,NULL,NULL,'12188975','2012-03-01 00:00:00',NULL),('112','입학','2013-03-01',NULL,NULL,NULL,NULL,NULL,'13108574','2013-03-01 00:00:00',NULL),('113','입학','2013-03-01',NULL,NULL,NULL,NULL,NULL,'13113512','2013-03-01 00:00:00',NULL),('114','입학','2013-03-01',NULL,NULL,NULL,NULL,NULL,'13137023','2013-03-01 00:00:00',NULL),('115','입학','2013-03-01',NULL,NULL,NULL,NULL,NULL,'13139981','2013-03-01 00:00:00',NULL),('116','입학','2013-03-01',NULL,NULL,NULL,NULL,NULL,'13186274','2013-03-01 00:00:00',NULL),('117','입학','2013-03-01',NULL,NULL,NULL,NULL,NULL,'13194220','2013-03-01 00:00:00',NULL),('118','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14103134','2014-03-01 00:00:00',NULL),('119','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14106615','2014-03-01 00:00:00',NULL),('12','입학','2000-03-01',NULL,NULL,NULL,NULL,NULL,'00149383','2000-03-01 00:00:00',NULL),('120','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14117683','2014-03-01 00:00:00',NULL),('121','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14121313','2014-03-01 00:00:00',NULL),('122','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14121627','2014-03-01 00:00:00',NULL),('123','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14126305','2014-03-01 00:00:00',NULL),('124','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14137896','2014-03-01 00:00:00',NULL),('125','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14160233','2014-03-01 00:00:00',NULL),('126','입학','2014-03-01',NULL,NULL,NULL,NULL,NULL,'14184145','2014-03-01 00:00:00',NULL),('127','입학','2015-03-01',NULL,NULL,NULL,NULL,NULL,'15106737','2015-03-01 00:00:00',NULL),('128','입학','2015-03-01',NULL,NULL,NULL,NULL,NULL,'15107174','2015-03-01 00:00:00',NULL),('129','입학','2015-03-01',NULL,NULL,NULL,NULL,NULL,'15108668','2015-03-01 00:00:00',NULL),('13','입학','2000-03-01',NULL,NULL,NULL,NULL,NULL,'00149776','2000-03-01 00:00:00',NULL),('130','입학','2015-03-01',NULL,NULL,NULL,NULL,NULL,'15114325','2015-03-01 00:00:00',NULL),('131','입학','2015-03-01',NULL,NULL,NULL,NULL,NULL,'15118598','2015-03-01 00:00:00',NULL),('132','입학','2015-03-01',NULL,NULL,NULL,NULL,NULL,'15122208','2015-03-01 00:00:00',NULL),('133','입학','2015-03-01',NULL,NULL,NULL,NULL,NULL,'15127860','2015-03-01 00:00:00',NULL),('134','입학','2015-03-01',NULL,NULL,NULL,NULL,NULL,'15147602','2015-03-01 00:00:00',NULL),('135','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16101803','2016-03-01 00:00:00',NULL),('136','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16102611','2016-03-01 00:00:00',NULL),('137','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16110752','2016-03-01 00:00:00',NULL),('138','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16116861','2016-03-01 00:00:00',NULL),('139','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16119134','2016-03-01 00:00:00',NULL),('14','입학','2001-03-01',NULL,NULL,NULL,NULL,NULL,'01101225','2001-03-01 00:00:00',NULL),('140','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16122646','2016-03-01 00:00:00',NULL),('141','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16126888','2016-03-01 00:00:00',NULL),('142','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16137684','2016-03-01 00:00:00',NULL),('143','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16154463','2016-03-01 00:00:00',NULL),('144','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16156846','2016-03-01 00:00:00',NULL),('145','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16164305','2016-03-01 00:00:00',NULL),('146','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16172972','2016-03-01 00:00:00',NULL),('147','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16175208','2016-03-01 00:00:00',NULL),('148','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16180053','2016-03-01 00:00:00',NULL),('149','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16180882','2016-03-01 00:00:00',NULL),('15','입학','2001-03-01',NULL,NULL,NULL,NULL,NULL,'01103888','2001-03-01 00:00:00',NULL),('150','입학','2016-03-01',NULL,NULL,NULL,NULL,NULL,'16197429','2016-03-01 00:00:00',NULL),('151','입학','2017-03-01',NULL,NULL,NULL,NULL,NULL,'17120777','2017-03-01 00:00:00',NULL),('152','입학','2017-03-01',NULL,NULL,NULL,NULL,NULL,'17121572','2017-03-01 00:00:00',NULL),('153','입학','2017-03-01',NULL,NULL,NULL,NULL,NULL,'17125917','2017-03-01 00:00:00',NULL),('154','입학','2017-03-01',NULL,NULL,NULL,NULL,NULL,'17128399','2017-03-01 00:00:00',NULL),('155','입학','2017-03-01',NULL,NULL,NULL,NULL,NULL,'17189569','2017-03-01 00:00:00',NULL),('156','입학','2017-03-01',NULL,NULL,NULL,NULL,NULL,'17197614','2017-03-01 00:00:00',NULL),('157','입학','2017-03-01',NULL,NULL,NULL,NULL,NULL,'17198885','2017-03-01 00:00:00',NULL),('158','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18100892','2018-03-01 00:00:00',NULL),('159','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18103786','2018-03-01 00:00:00',NULL),('16','입학','2001-03-01',NULL,NULL,NULL,NULL,NULL,'01115942','2001-03-01 00:00:00',NULL),('160','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18116253','2018-03-01 00:00:00',NULL),('161','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18116606','2018-03-01 00:00:00',NULL),('162','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18119511','2018-03-01 00:00:00',NULL),('163','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18139962','2018-03-01 00:00:00',NULL),('164','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18140568','2018-03-01 00:00:00',NULL),('165','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18146593','2018-03-01 00:00:00',NULL),('166','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18180198','2018-03-01 00:00:00',NULL),('167','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18183524','2018-03-01 00:00:00',NULL),('168','입학','2018-03-01',NULL,NULL,NULL,NULL,NULL,'18199618','2018-03-01 00:00:00',NULL),('169','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19104187','2019-03-01 00:00:00',NULL),('17','입학','2001-03-01',NULL,NULL,NULL,NULL,NULL,'01119665','2001-03-01 00:00:00',NULL),('170','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19109453','2019-03-01 00:00:00',NULL),('171','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19109454','2019-03-01 00:00:00',NULL),('172','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19111503','2019-03-01 00:00:00',NULL),('173','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19118402','2019-03-01 00:00:00',NULL),('174','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19136098','2019-03-01 00:00:00',NULL),('175','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19143945','2019-03-01 00:00:00',NULL),('176','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19179440','2019-03-01 00:00:00',NULL),('177','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19189372','2019-03-01 00:00:00',NULL),('178','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19192126','2019-03-01 00:00:00',NULL),('179','입학','2019-03-01',NULL,NULL,NULL,NULL,NULL,'19193538','2019-03-01 00:00:00',NULL),('18','입학','2001-03-01',NULL,NULL,NULL,NULL,NULL,'01132538','2001-03-01 00:00:00',NULL),('180','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20121193','2020-03-01 00:00:00',NULL),('181','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20123808','2020-03-01 00:00:00',NULL),('182','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20141374','2020-03-01 00:00:00',NULL),('183','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20142248','2020-03-01 00:00:00',NULL),('184','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20144609','2020-03-01 00:00:00',NULL),('185','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20155510','2020-03-01 00:00:00',NULL),('186','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20165495','2020-03-01 00:00:00',NULL),('187','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20165528','2020-03-01 00:00:00',NULL),('188','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20165868','2020-03-01 00:00:00',NULL),('189','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20166057','2020-03-01 00:00:00',NULL),('19','입학','2001-03-01',NULL,NULL,NULL,NULL,NULL,'01152457','2001-03-01 00:00:00',NULL),('190','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20173769','2020-03-01 00:00:00',NULL),('191','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20178628','2020-03-01 00:00:00',NULL),('192','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20179587','2020-03-01 00:00:00',NULL),('193','입학','2020-03-01',NULL,NULL,NULL,NULL,NULL,'20187183','2020-03-01 00:00:00',NULL),('194','입학','2021-03-01',NULL,NULL,NULL,NULL,NULL,'21105406','2021-03-01 00:00:00',NULL),('195','입학','2021-03-01',NULL,NULL,NULL,NULL,NULL,'21118400','2021-03-01 00:00:00',NULL),('196','입학','2021-03-01',NULL,NULL,NULL,NULL,NULL,'21118677','2021-03-01 00:00:00',NULL),('197','입학','2021-03-01',NULL,NULL,NULL,NULL,NULL,'21124593','2021-03-01 00:00:00',NULL),('198','입학','2021-03-01',NULL,NULL,NULL,NULL,NULL,'21149494','2021-03-01 00:00:00',NULL),('199','입학','2021-03-01',NULL,NULL,NULL,NULL,NULL,'21150011','2021-03-01 00:00:00',NULL),('20','입학','2001-03-01',NULL,NULL,NULL,NULL,NULL,'01170739','2001-03-01 00:00:00',NULL),('200','입학','2021-03-01',NULL,NULL,NULL,NULL,NULL,'21164493','2021-03-01 00:00:00',NULL),('201','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22102082','2022-03-01 00:00:00',NULL),('202','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22122035','2022-03-01 00:00:00',NULL),('203','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22145097','2022-03-01 00:00:00',NULL),('204','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22145874','2022-03-01 00:00:00',NULL),('205','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22151829','2022-03-01 00:00:00',NULL),('206','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22156790','2022-03-01 00:00:00',NULL),('207','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22173886','2022-03-01 00:00:00',NULL),('208','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22175972','2022-03-01 00:00:00',NULL),('209','입학','2022-03-01',NULL,NULL,NULL,NULL,NULL,'22186694','2022-03-01 00:00:00',NULL),('21','입학','2001-04-01',NULL,NULL,NULL,NULL,NULL,'01174314','2001-04-01 00:00:00',NULL),('210','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95101804','1995-03-01 00:00:00',NULL),('211','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95103515','1995-03-01 00:00:00',NULL),('212','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95108044','1995-03-01 00:00:00',NULL),('213','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95108789','1995-03-01 00:00:00',NULL),('214','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95109682','1995-03-01 00:00:00',NULL),('215','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95109757','1995-03-01 00:00:00',NULL),('216','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95110536','1995-03-01 00:00:00',NULL),('217','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95112934','1995-03-01 00:00:00',NULL),('218','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95113162','1995-03-01 00:00:00',NULL),('219','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95113717','1995-03-01 00:00:00',NULL),('22','입학','2001-03-01',NULL,NULL,NULL,NULL,NULL,'01187591','2001-03-01 00:00:00',NULL),('220','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95115760','1995-03-01 00:00:00',NULL),('221','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95120617','1995-03-01 00:00:00',NULL),('222','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95122232','1995-03-01 00:00:00',NULL),('223','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95123056','1995-03-01 00:00:00',NULL),('224','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95123959','1995-03-01 00:00:00',NULL),('225','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95125678','1995-03-01 00:00:00',NULL),('226','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95127891','1995-03-01 00:00:00',NULL),('227','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95137834','1995-03-01 00:00:00',NULL),('228','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95138318','1995-03-01 00:00:00',NULL),('229','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95139429','1995-03-01 00:00:00',NULL),('23','입학','2002-03-01',NULL,NULL,NULL,NULL,NULL,'02103984','2002-03-01 00:00:00',NULL),('230','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95139516','1995-03-01 00:00:00',NULL),('231','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95141366','1995-03-01 00:00:00',NULL),('232','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95142246','1995-03-01 00:00:00',NULL),('233','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95144098','1995-03-01 00:00:00',NULL),('234','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95144718','1995-03-01 00:00:00',NULL),('235','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95151093','1995-03-01 00:00:00',NULL),('236','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95155237','1995-03-01 00:00:00',NULL),('237','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95157160','1995-03-01 00:00:00',NULL),('238','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95157895','1995-03-01 00:00:00',NULL),('239','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95161609','1995-03-01 00:00:00',NULL),('24','입학','2002-03-01',NULL,NULL,NULL,NULL,NULL,'02116466','2002-03-01 00:00:00',NULL),('240','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95161791','1995-03-01 00:00:00',NULL),('241','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95166464','1995-03-01 00:00:00',NULL),('242','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95167558','1995-03-01 00:00:00',NULL),('243','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95167636','1995-03-01 00:00:00',NULL),('244','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95169217','1995-03-01 00:00:00',NULL),('245','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95172962','1995-03-01 00:00:00',NULL),('246','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95174087','1995-03-01 00:00:00',NULL),('247','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95175773','1995-03-01 00:00:00',NULL),('248','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95177465','1995-03-01 00:00:00',NULL),('249','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95180310','1995-03-01 00:00:00',NULL),('25','입학','2002-03-01',NULL,NULL,NULL,NULL,NULL,'02137760','2002-03-01 00:00:00',NULL),('250','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95181146','1995-03-01 00:00:00',NULL),('251','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95186008','1995-03-01 00:00:00',NULL),('252','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95186689','1995-03-01 00:00:00',NULL),('253','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95195955','1995-03-01 00:00:00',NULL),('254','입학','1995-03-01',NULL,NULL,NULL,NULL,NULL,'95197851','1995-03-01 00:00:00',NULL),('255','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96101273','1996-03-01 00:00:00',NULL),('256','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96101431','1996-03-01 00:00:00',NULL),('257','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96102369','1996-03-01 00:00:00',NULL),('258','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96102476','1996-03-01 00:00:00',NULL),('259','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96109664','1996-03-01 00:00:00',NULL),('26','입학','2002-03-01',NULL,NULL,NULL,NULL,NULL,'02169057','2002-03-01 00:00:00',NULL),('260','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96112210','1996-03-01 00:00:00',NULL),('261','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96115369','1996-03-01 00:00:00',NULL),('262','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96122544','1996-03-01 00:00:00',NULL),('263','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96124567','1996-03-01 00:00:00',NULL),('264','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96131880','1996-03-01 00:00:00',NULL),('265','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96133704','1996-03-01 00:00:00',NULL),('266','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96140559','1996-03-01 00:00:00',NULL),('267','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96140562','1996-03-01 00:00:00',NULL),('268','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96141370','1996-03-01 00:00:00',NULL),('269','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96141738','1996-03-01 00:00:00',NULL),('27','입학','2002-03-01',NULL,NULL,NULL,NULL,NULL,'02185384','2002-03-01 00:00:00',NULL),('270','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96143888','1996-03-01 00:00:00',NULL),('271','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96145460','1996-03-01 00:00:00',NULL),('272','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96148872','1996-03-01 00:00:00',NULL),('273','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96158904','1996-03-01 00:00:00',NULL),('274','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96162208','1996-03-01 00:00:00',NULL),('275','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96163840','1996-03-01 00:00:00',NULL),('276','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96163982','1996-03-01 00:00:00',NULL),('277','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96172390','1996-03-01 00:00:00',NULL),('278','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96174387','1996-03-01 00:00:00',NULL),('279','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96181248','1996-03-01 00:00:00',NULL),('28','입학','2002-03-01',NULL,NULL,NULL,NULL,NULL,'02186866','2002-03-01 00:00:00',NULL),('280','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96182990','1996-03-01 00:00:00',NULL),('281','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96183431','1996-03-01 00:00:00',NULL),('282','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96185360','1996-03-01 00:00:00',NULL),('283','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96185555','1996-03-01 00:00:00',NULL),('284','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96188434','1996-03-01 00:00:00',NULL),('285','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96190596','1996-03-01 00:00:00',NULL),('286','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96193666','1996-03-01 00:00:00',NULL),('287','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96194151','1996-03-01 00:00:00',NULL),('288','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96196690','1996-03-01 00:00:00',NULL),('289','입학','1996-03-01',NULL,NULL,NULL,NULL,NULL,'96197424','1996-03-01 00:00:00',NULL),('29','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03104778','2003-03-01 00:00:00',NULL),('290','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97100631','1997-03-01 00:00:00',NULL),('291','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97104783','1997-03-01 00:00:00',NULL),('292','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97107569','1997-03-01 00:00:00',NULL),('293','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97110881','1997-03-01 00:00:00',NULL),('294','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97111017','1997-03-01 00:00:00',NULL),('295','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97111434','1997-03-01 00:00:00',NULL),('296','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97113607','1997-03-01 00:00:00',NULL),('297','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97113662','1997-03-01 00:00:00',NULL),('298','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97118253','1997-03-01 00:00:00',NULL),('299','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97119382','1997-03-01 00:00:00',NULL),('30','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03115387','2003-03-01 00:00:00',NULL),('300','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97119866','1997-03-01 00:00:00',NULL),('301','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97122894','1997-03-01 00:00:00',NULL),('302','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97133338','1997-03-01 00:00:00',NULL),('303','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97138436','1997-03-01 00:00:00',NULL),('304','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97140968','1997-03-01 00:00:00',NULL),('305','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97145357','1997-03-01 00:00:00',NULL),('306','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97146947','1997-03-01 00:00:00',NULL),('307','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97150910','1997-03-01 00:00:00',NULL),('308','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97151615','1997-03-01 00:00:00',NULL),('309','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97161604','1997-03-01 00:00:00',NULL),('31','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03139643','2003-03-01 00:00:00',NULL),('310','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97163211','1997-03-01 00:00:00',NULL),('311','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97164788','1997-03-01 00:00:00',NULL),('312','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97164854','1997-03-01 00:00:00',NULL),('313','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97165937','1997-03-01 00:00:00',NULL),('314','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97177716','1997-03-01 00:00:00',NULL),('315','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97179741','1997-03-01 00:00:00',NULL),('316','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97184914','1997-03-01 00:00:00',NULL),('317','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97190513','1997-03-01 00:00:00',NULL),('318','입학','1997-03-01',NULL,NULL,NULL,NULL,NULL,'97194954','1997-03-01 00:00:00',NULL),('319','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98103194','1998-03-01 00:00:00',NULL),('32','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03149991','2003-03-01 00:00:00',NULL),('320','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98104620','1998-03-01 00:00:00',NULL),('321','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98104890','1998-03-01 00:00:00',NULL),('322','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98106637','1998-03-01 00:00:00',NULL),('323','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98107476','1998-03-01 00:00:00',NULL),('324','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98108958','1998-03-01 00:00:00',NULL),('325','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98112458','1998-03-01 00:00:00',NULL),('326','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98120147','1998-03-01 00:00:00',NULL),('327','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98123758','1998-03-01 00:00:00',NULL),('328','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98127721','1998-03-01 00:00:00',NULL),('329','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98128085','1998-03-01 00:00:00',NULL),('33','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03158946','2003-03-01 00:00:00',NULL),('330','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98128104','1998-03-01 00:00:00',NULL),('331','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98130927','1998-03-01 00:00:00',NULL),('332','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98138550','1998-03-01 00:00:00',NULL),('333','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98142303','1998-03-01 00:00:00',NULL),('334','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98142548','1998-03-01 00:00:00',NULL),('335','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98144004','1998-03-01 00:00:00',NULL),('336','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98144698','1998-03-01 00:00:00',NULL),('337','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98145272','1998-03-01 00:00:00',NULL),('338','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98146439','1998-03-01 00:00:00',NULL),('339','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98147857','1998-03-01 00:00:00',NULL),('34','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03159576','2003-03-01 00:00:00',NULL),('340','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98151670','1998-03-01 00:00:00',NULL),('341','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98154539','1998-03-01 00:00:00',NULL),('342','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98156951','1998-03-01 00:00:00',NULL),('343','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98157244','1998-03-01 00:00:00',NULL),('344','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98159767','1998-03-01 00:00:00',NULL),('345','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98161362','1998-03-01 00:00:00',NULL),('346','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98171416','1998-03-01 00:00:00',NULL),('347','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98178800','1998-03-01 00:00:00',NULL),('348','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98181064','1998-03-01 00:00:00',NULL),('349','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98182374','1998-03-01 00:00:00',NULL),('35','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03167791','2003-03-01 00:00:00',NULL),('350','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98187855','1998-03-01 00:00:00',NULL),('351','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98188599','1998-03-01 00:00:00',NULL),('352','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98193195','1998-03-01 00:00:00',NULL),('353','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98194905','1998-03-01 00:00:00',NULL),('354','입학','1998-03-01',NULL,NULL,NULL,NULL,NULL,'98198172','1998-03-01 00:00:00',NULL),('355','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99101175','1999-03-01 00:00:00',NULL),('356','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99107577','1999-03-01 00:00:00',NULL),('357','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99111714','1999-03-01 00:00:00',NULL),('358','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99117106','1999-03-01 00:00:00',NULL),('359','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99124899','1999-03-01 00:00:00',NULL),('36','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03169863','2003-03-01 00:00:00',NULL),('360','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99128242','1999-03-01 00:00:00',NULL),('361','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99132069','1999-03-01 00:00:00',NULL),('362','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99134963','1999-03-01 00:00:00',NULL),('363','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99135036','1999-03-01 00:00:00',NULL),('364','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99135606','1999-03-01 00:00:00',NULL),('365','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99136955','1999-03-01 00:00:00',NULL),('366','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99140982','1999-03-01 00:00:00',NULL),('367','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99146775','1999-03-01 00:00:00',NULL),('368','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99154775','1999-03-01 00:00:00',NULL),('369','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99157379','1999-03-01 00:00:00',NULL),('37','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03176290','2003-03-01 00:00:00',NULL),('370','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99158834','1999-03-01 00:00:00',NULL),('371','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99159042','1999-03-01 00:00:00',NULL),('372','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99161386','1999-03-01 00:00:00',NULL),('373','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99162332','1999-03-01 00:00:00',NULL),('374','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99164679','1999-03-01 00:00:00',NULL),('375','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99167651','1999-03-01 00:00:00',NULL),('376','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99170018','1999-03-01 00:00:00',NULL),('377','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99171742','1999-03-01 00:00:00',NULL),('378','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99172098','1999-03-01 00:00:00',NULL),('379','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99172969','1999-03-01 00:00:00',NULL),('38','입학','2003-03-01',NULL,NULL,NULL,NULL,NULL,'03180530','2003-03-01 00:00:00',NULL),('380','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99173220','1999-03-01 00:00:00',NULL),('381','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99178514','1999-03-01 00:00:00',NULL),('382','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99179911','1999-03-01 00:00:00',NULL),('383','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99181013','1999-03-01 00:00:00',NULL),('384','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99185489','1999-03-01 00:00:00',NULL),('385','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99187512','1999-03-01 00:00:00',NULL),('386','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99188532','1999-03-01 00:00:00',NULL),('387','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99188717','1999-03-01 00:00:00',NULL),('388','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99193449','1999-03-01 00:00:00',NULL),('389','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99194300','1999-03-01 00:00:00',NULL),('39','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04102650','2004-03-01 00:00:00',NULL),('390','입학','1999-03-01',NULL,NULL,NULL,NULL,NULL,'99195608','1999-03-01 00:00:00',NULL),('391','입학','2002-03-01',NULL,NULL,NULL,NULL,NULL,'test123','2002-03-01 00:00:00',NULL),('392','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95108789','1999-02-15 00:00:00',NULL),('393','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95112934','1999-02-15 00:00:00',NULL),('394','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95113162','1999-02-15 00:00:00',NULL),('395','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95113717','1999-02-15 00:00:00',NULL),('396','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95115760','1999-02-15 00:00:00',NULL),('397','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95122232','1999-02-15 00:00:00',NULL),('398','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95123959','1999-02-15 00:00:00',NULL),('399','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95125678','1999-02-15 00:00:00',NULL),('40','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04106983','2004-03-01 00:00:00',NULL),('400','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95138318','1999-02-15 00:00:00',NULL),('401','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95141366','1999-02-15 00:00:00',NULL),('402','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95144098','1999-02-15 00:00:00',NULL),('403','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95144718','1999-02-15 00:00:00',NULL),('404','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95151093','1999-02-15 00:00:00',NULL),('405','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95157160','1999-02-15 00:00:00',NULL),('406','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95161791','1999-02-15 00:00:00',NULL),('407','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95166464','1999-02-15 00:00:00',NULL),('408','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95169217','1999-02-15 00:00:00',NULL),('409','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95174087','1999-02-15 00:00:00',NULL),('41','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04114599','2004-03-01 00:00:00',NULL),('410','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95177465','1999-02-15 00:00:00',NULL),('411','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95180310','1999-02-15 00:00:00',NULL),('412','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95195955','1999-02-15 00:00:00',NULL),('413','졸업','1999-02-15',NULL,NULL,NULL,NULL,NULL,'95197851','1999-02-15 00:00:00',NULL),('414','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96101431','2000-02-15 00:00:00',NULL),('415','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96102369','2000-02-15 00:00:00',NULL),('416','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96102476','2000-02-15 00:00:00',NULL),('417','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96109664','2000-02-15 00:00:00',NULL),('418','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96112210','2000-02-15 00:00:00',NULL),('419','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96133704','2000-02-15 00:00:00',NULL),('42','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04117070','2004-03-01 00:00:00',NULL),('420','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96140562','2000-02-15 00:00:00',NULL),('421','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96145460','2000-02-15 00:00:00',NULL),('422','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96148872','2000-02-15 00:00:00',NULL),('423','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96162208','2000-02-15 00:00:00',NULL),('424','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96163840','2000-02-15 00:00:00',NULL),('425','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96163982','2000-02-15 00:00:00',NULL),('426','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96172390','2000-02-15 00:00:00',NULL),('427','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96174387','2000-02-15 00:00:00',NULL),('428','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96181248','2000-02-15 00:00:00',NULL),('429','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96182990','2000-02-15 00:00:00',NULL),('43','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04121831','2004-03-01 00:00:00',NULL),('430','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96190596','2000-02-15 00:00:00',NULL),('431','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96196690','2000-02-15 00:00:00',NULL),('432','졸업','2000-02-15',NULL,NULL,NULL,NULL,NULL,'96197424','2000-02-15 00:00:00',NULL),('433','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95101804','2001-02-15 00:00:00',NULL),('434','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95103515','2001-02-15 00:00:00',NULL),('435','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95108044','2001-02-15 00:00:00',NULL),('436','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95109682','2001-02-15 00:00:00',NULL),('437','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95109757','2001-02-15 00:00:00',NULL),('438','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95110536','2001-02-15 00:00:00',NULL),('439','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95120617','2001-02-15 00:00:00',NULL),('44','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04125213','2004-03-01 00:00:00',NULL),('440','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95123056','2001-02-15 00:00:00',NULL),('441','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95127891','2001-02-15 00:00:00',NULL),('442','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95137834','2001-02-15 00:00:00',NULL),('443','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95139429','2001-02-15 00:00:00',NULL),('444','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95139516','2001-02-15 00:00:00',NULL),('445','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95142246','2001-02-15 00:00:00',NULL),('446','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95155237','2001-02-15 00:00:00',NULL),('447','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95157895','2001-02-15 00:00:00',NULL),('448','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95161609','2001-02-15 00:00:00',NULL),('449','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95167558','2001-02-15 00:00:00',NULL),('45','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04133177','2004-03-01 00:00:00',NULL),('450','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95167636','2001-02-15 00:00:00',NULL),('451','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95172962','2001-02-15 00:00:00',NULL),('452','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95175773','2001-02-15 00:00:00',NULL),('453','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95181146','2001-02-15 00:00:00',NULL),('454','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95186008','2001-02-15 00:00:00',NULL),('455','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'95186689','2001-02-15 00:00:00',NULL),('456','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97110881','2001-02-15 00:00:00',NULL),('457','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97113662','2001-02-15 00:00:00',NULL),('458','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97118253','2001-02-15 00:00:00',NULL),('459','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97119866','2001-02-15 00:00:00',NULL),('46','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04165954','2004-03-01 00:00:00',NULL),('460','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97122894','2001-02-15 00:00:00',NULL),('461','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97140968','2001-02-15 00:00:00',NULL),('462','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97163211','2001-02-15 00:00:00',NULL),('463','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97164854','2001-02-15 00:00:00',NULL),('464','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97165937','2001-02-15 00:00:00',NULL),('465','졸업','2001-02-15',NULL,NULL,NULL,NULL,NULL,'97184914','2001-02-15 00:00:00',NULL),('466','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96101273','2002-02-15 00:00:00',NULL),('467','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96115369','2002-02-15 00:00:00',NULL),('468','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96122544','2002-02-15 00:00:00',NULL),('469','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96124567','2002-02-15 00:00:00',NULL),('47','입학','2004-03-01',NULL,NULL,NULL,NULL,NULL,'04182065','2004-03-01 00:00:00',NULL),('470','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96131880','2002-02-15 00:00:00',NULL),('471','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96140559','2002-02-15 00:00:00',NULL),('472','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96141370','2002-02-15 00:00:00',NULL),('473','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96141738','2002-02-15 00:00:00',NULL),('474','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96143888','2002-02-15 00:00:00',NULL),('475','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96158904','2002-02-15 00:00:00',NULL),('476','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96183431','2002-02-15 00:00:00',NULL),('477','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96185360','2002-02-15 00:00:00',NULL),('478','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96185555','2002-02-15 00:00:00',NULL),('479','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96188434','2002-02-15 00:00:00',NULL),('48','입학','2005-03-01',NULL,NULL,NULL,NULL,NULL,'05120221','2005-03-01 00:00:00',NULL),('480','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96193666','2002-02-15 00:00:00',NULL),('481','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'96194151','2002-02-15 00:00:00',NULL),('482','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98104620','2002-02-15 00:00:00',NULL),('483','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98106637','2002-02-15 00:00:00',NULL),('484','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98107476','2002-02-15 00:00:00',NULL),('485','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98128085','2002-02-15 00:00:00',NULL),('486','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98130927','2002-02-15 00:00:00',NULL),('487','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98138550','2002-02-15 00:00:00',NULL),('488','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98142303','2002-02-15 00:00:00',NULL),('489','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98142548','2002-02-15 00:00:00',NULL),('49','입학','2005-03-01',NULL,NULL,NULL,NULL,NULL,'05134454','2005-03-01 00:00:00',NULL),('490','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98144004','2002-02-15 00:00:00',NULL),('491','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98146439','2002-02-15 00:00:00',NULL),('492','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98151670','2002-02-15 00:00:00',NULL),('493','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98154539','2002-02-15 00:00:00',NULL),('494','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98156951','2002-02-15 00:00:00',NULL),('495','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98157244','2002-02-15 00:00:00',NULL),('496','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98159767','2002-02-15 00:00:00',NULL),('497','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98161362','2002-02-15 00:00:00',NULL),('498','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98182374','2002-02-15 00:00:00',NULL),('499','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98187855','2002-02-15 00:00:00',NULL),('50','입학','2005-03-01',NULL,NULL,NULL,NULL,NULL,'05151227','2005-03-01 00:00:00',NULL),('500','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98193195','2002-02-15 00:00:00',NULL),('501','졸업','2002-02-15',NULL,NULL,NULL,NULL,NULL,'98198172','2002-02-15 00:00:00',NULL),('502','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97100631','2003-02-15 00:00:00',NULL),('503','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97104783','2003-02-15 00:00:00',NULL),('504','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97107569','2003-02-15 00:00:00',NULL),('505','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97111017','2003-02-15 00:00:00',NULL),('506','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97111434','2003-02-15 00:00:00',NULL),('507','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97113607','2003-02-15 00:00:00',NULL),('508','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97119382','2003-02-15 00:00:00',NULL),('509','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97133338','2003-02-15 00:00:00',NULL),('51','입학','2005-03-01',NULL,NULL,NULL,NULL,NULL,'05190097','2005-03-01 00:00:00',NULL),('510','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97138436','2003-02-15 00:00:00',NULL),('511','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97145357','2003-02-15 00:00:00',NULL),('512','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97146947','2003-02-15 00:00:00',NULL),('513','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97150910','2003-02-15 00:00:00',NULL),('514','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97151615','2003-02-15 00:00:00',NULL),('515','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97161604','2003-02-15 00:00:00',NULL),('516','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97164788','2003-02-15 00:00:00',NULL),('517','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97177716','2003-02-15 00:00:00',NULL),('518','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97179741','2003-02-15 00:00:00',NULL),('519','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97190513','2003-02-15 00:00:00',NULL),('52','입학','2005-03-01',NULL,NULL,NULL,NULL,NULL,'05193283','2005-03-01 00:00:00',NULL),('520','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'97194954','2003-02-15 00:00:00',NULL),('521','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99101175','2003-02-15 00:00:00',NULL),('522','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99134963','2003-02-15 00:00:00',NULL),('523','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99135036','2003-02-15 00:00:00',NULL),('524','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99135606','2003-02-15 00:00:00',NULL),('525','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99136955','2003-02-15 00:00:00',NULL),('526','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99140982','2003-02-15 00:00:00',NULL),('527','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99157379','2003-02-15 00:00:00',NULL),('528','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99161386','2003-02-15 00:00:00',NULL),('529','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99171742','2003-02-15 00:00:00',NULL),('53','입학','2006-03-01',NULL,NULL,NULL,NULL,NULL,'06107937','2006-03-01 00:00:00',NULL),('530','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99172969','2003-02-15 00:00:00',NULL),('531','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99173220','2003-02-15 00:00:00',NULL),('532','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99178514','2003-02-15 00:00:00',NULL),('533','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99179911','2003-02-15 00:00:00',NULL),('534','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99185489','2003-02-15 00:00:00',NULL),('535','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99187512','2003-02-15 00:00:00',NULL),('536','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99188532','2003-02-15 00:00:00',NULL),('537','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99194300','2003-02-15 00:00:00',NULL),('538','졸업','2003-02-15',NULL,NULL,NULL,NULL,NULL,'99195608','2003-02-15 00:00:00',NULL),('539','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98103194','2004-02-15 00:00:00',NULL),('54','입학','2006-03-01',NULL,NULL,NULL,NULL,NULL,'06130692','2006-03-01 00:00:00',NULL),('540','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98104890','2004-02-15 00:00:00',NULL),('541','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98108958','2004-02-15 00:00:00',NULL),('542','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98112458','2004-02-15 00:00:00',NULL),('543','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98120147','2004-02-15 00:00:00',NULL),('544','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98123758','2004-02-15 00:00:00',NULL),('545','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98127721','2004-02-15 00:00:00',NULL),('546','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98128104','2004-02-15 00:00:00',NULL),('547','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98144698','2004-02-15 00:00:00',NULL),('548','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98145272','2004-02-15 00:00:00',NULL),('549','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98147857','2004-02-15 00:00:00',NULL),('55','입학','2006-03-01',NULL,NULL,NULL,NULL,NULL,'06139948','2006-03-01 00:00:00',NULL),('550','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98171416','2004-02-15 00:00:00',NULL),('551','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98178800','2004-02-15 00:00:00',NULL),('552','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98181064','2004-02-15 00:00:00',NULL),('553','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98188599','2004-02-15 00:00:00',NULL),('554','졸업','2004-02-15',NULL,NULL,NULL,NULL,NULL,'98194905','2004-02-15 00:00:00',NULL),('555','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'01152457','2005-02-15 00:00:00',NULL),('556','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99107577','2005-02-15 00:00:00',NULL),('557','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99111714','2005-02-15 00:00:00',NULL),('558','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99117106','2005-02-15 00:00:00',NULL),('559','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99124899','2005-02-15 00:00:00',NULL),('56','입학','2006-03-01',NULL,NULL,NULL,NULL,NULL,'06144158','2006-03-01 00:00:00',NULL),('560','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99128242','2005-02-15 00:00:00',NULL),('561','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99132069','2005-02-15 00:00:00',NULL),('562','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99146775','2005-02-15 00:00:00',NULL),('563','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99154775','2005-02-15 00:00:00',NULL),('564','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99158834','2005-02-15 00:00:00',NULL),('565','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99159042','2005-02-15 00:00:00',NULL),('566','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99162332','2005-02-15 00:00:00',NULL),('567','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99164679','2005-02-15 00:00:00',NULL),('568','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99167651','2005-02-15 00:00:00',NULL),('569','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99170018','2005-02-15 00:00:00',NULL),('57','입학','2006-03-01',NULL,NULL,NULL,NULL,NULL,'06160685','2006-03-01 00:00:00',NULL),('570','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99172098','2005-02-15 00:00:00',NULL),('571','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99181013','2005-02-15 00:00:00',NULL),('572','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99188717','2005-02-15 00:00:00',NULL),('573','졸업','2005-02-15',NULL,NULL,NULL,NULL,NULL,'99193449','2005-02-15 00:00:00',NULL),('574','졸업','2006-02-15',NULL,NULL,NULL,NULL,NULL,'02169057','2006-02-15 00:00:00',NULL),('575','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'01101225','2007-02-15 00:00:00',NULL),('576','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'01170739','2007-02-15 00:00:00',NULL),('577','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'01187591','2007-02-15 00:00:00',NULL),('578','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'03115387','2007-02-15 00:00:00',NULL),('579','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'03139643','2007-02-15 00:00:00',NULL),('58','입학','2006-03-01',NULL,NULL,NULL,NULL,NULL,'06162353','2006-03-01 00:00:00',NULL),('580','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'03158946','2007-02-15 00:00:00',NULL),('581','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'03167791','2007-02-15 00:00:00',NULL),('582','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'03169863','2007-02-15 00:00:00',NULL),('583','졸업','2007-02-15',NULL,NULL,NULL,NULL,NULL,'03176290','2007-02-15 00:00:00',NULL),('584','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'02137760','2008-02-15 00:00:00',NULL),('585','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'02185384','2008-02-15 00:00:00',NULL),('586','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'02186866','2008-02-15 00:00:00',NULL),('587','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'04102650','2008-02-15 00:00:00',NULL),('588','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'04106983','2008-02-15 00:00:00',NULL),('589','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'04114599','2008-02-15 00:00:00',NULL),('59','입학','2006-03-01',NULL,NULL,NULL,NULL,NULL,'06171730','2006-03-01 00:00:00',NULL),('590','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'04121831','2008-02-15 00:00:00',NULL),('591','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'04125213','2008-02-15 00:00:00',NULL),('592','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'04165954','2008-02-15 00:00:00',NULL),('593','졸업','2008-02-15',NULL,NULL,NULL,NULL,NULL,'04182065','2008-02-15 00:00:00',NULL),('594','졸업','2009-02-15',NULL,NULL,NULL,NULL,NULL,'03104778','2009-02-15 00:00:00',NULL),('595','졸업','2009-02-15',NULL,NULL,NULL,NULL,NULL,'03149991','2009-02-15 00:00:00',NULL),('596','졸업','2009-02-15',NULL,NULL,NULL,NULL,NULL,'03159576','2009-02-15 00:00:00',NULL),('597','졸업','2009-02-15',NULL,NULL,NULL,NULL,NULL,'03180530','2009-02-15 00:00:00',NULL),('598','졸업','2009-02-15',NULL,NULL,NULL,NULL,NULL,'05120221','2009-02-15 00:00:00',NULL),('599','졸업','2009-02-15',NULL,NULL,NULL,NULL,NULL,'05151227','2009-02-15 00:00:00',NULL),('60','입학','2006-03-01',NULL,NULL,NULL,NULL,NULL,'06198626','2006-03-01 00:00:00',NULL),('600','졸업','2009-02-15',NULL,NULL,NULL,NULL,NULL,'05190097','2009-02-15 00:00:00',NULL),('601','졸업','2009-02-15',NULL,NULL,NULL,NULL,NULL,'05193283','2009-02-15 00:00:00',NULL),('602','졸업','2010-02-15',NULL,NULL,NULL,NULL,NULL,'04117070','2010-02-15 00:00:00',NULL),('603','졸업','2010-02-15',NULL,NULL,NULL,NULL,NULL,'04133177','2010-02-15 00:00:00',NULL),('604','졸업','2010-02-15',NULL,NULL,NULL,NULL,NULL,'06107937','2010-02-15 00:00:00',NULL),('605','졸업','2010-02-15',NULL,NULL,NULL,NULL,NULL,'06144158','2010-02-15 00:00:00',NULL),('606','졸업','2010-02-15',NULL,NULL,NULL,NULL,NULL,'06162353','2010-02-15 00:00:00',NULL),('607','졸업','2010-02-15',NULL,NULL,NULL,NULL,NULL,'06198626','2010-02-15 00:00:00',NULL),('608','졸업','2011-02-15',NULL,NULL,NULL,NULL,NULL,'05134454','2011-02-15 00:00:00',NULL),('609','졸업','2011-02-15',NULL,NULL,NULL,NULL,NULL,'07126054','2011-02-15 00:00:00',NULL),('61','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07100951','2007-03-01 00:00:00',NULL),('610','졸업','2011-02-15',NULL,NULL,NULL,NULL,NULL,'07144726','2011-02-15 00:00:00',NULL),('611','졸업','2011-02-15',NULL,NULL,NULL,NULL,NULL,'07165230','2011-02-15 00:00:00',NULL),('612','졸업','2011-02-15',NULL,NULL,NULL,NULL,NULL,'07169336','2011-02-15 00:00:00',NULL),('613','졸업','2011-02-15',NULL,NULL,NULL,NULL,NULL,'07183946','2011-02-15 00:00:00',NULL),('614','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'06130692','2012-02-15 00:00:00',NULL),('615','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'06139948','2012-02-15 00:00:00',NULL),('616','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'06160685','2012-02-15 00:00:00',NULL),('617','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'06171730','2012-02-15 00:00:00',NULL),('618','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'08101138','2012-02-15 00:00:00',NULL),('619','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'08107051','2012-02-15 00:00:00',NULL),('62','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07126054','2007-03-01 00:00:00',NULL),('620','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'08112846','2012-02-15 00:00:00',NULL),('621','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'08138949','2012-02-15 00:00:00',NULL),('622','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'08142585','2012-02-15 00:00:00',NULL),('623','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'08150892','2012-02-15 00:00:00',NULL),('624','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'08157899','2012-02-15 00:00:00',NULL),('625','졸업','2012-02-15',NULL,NULL,NULL,NULL,NULL,'08161294','2012-02-15 00:00:00',NULL),('626','졸업','2013-02-15',NULL,NULL,NULL,NULL,NULL,'07100951','2013-02-15 00:00:00',NULL),('627','졸업','2013-02-15',NULL,NULL,NULL,NULL,NULL,'07139702','2013-02-15 00:00:00',NULL),('628','졸업','2013-02-15',NULL,NULL,NULL,NULL,NULL,'07178184','2013-02-15 00:00:00',NULL),('629','졸업','2013-02-15',NULL,NULL,NULL,NULL,NULL,'07185991','2013-02-15 00:00:00',NULL),('63','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07139702','2007-03-01 00:00:00',NULL),('630','졸업','2013-02-15',NULL,NULL,NULL,NULL,NULL,'09103045','2013-02-15 00:00:00',NULL),('631','졸업','2013-02-15',NULL,NULL,NULL,NULL,NULL,'09110058','2013-02-15 00:00:00',NULL),('632','졸업','2013-02-15',NULL,NULL,NULL,NULL,NULL,'09169569','2013-02-15 00:00:00',NULL),('633','졸업','2013-02-15',NULL,NULL,NULL,NULL,NULL,'09181881','2013-02-15 00:00:00',NULL),('634','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'08110595','2014-02-15 00:00:00',NULL),('635','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'08113217','2014-02-15 00:00:00',NULL),('636','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'08123476','2014-02-15 00:00:00',NULL),('637','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'08126264','2014-02-15 00:00:00',NULL),('638','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'08172305','2014-02-15 00:00:00',NULL),('639','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'10101105','2014-02-15 00:00:00',NULL),('64','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07144726','2007-03-01 00:00:00',NULL),('640','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'10135925','2014-02-15 00:00:00',NULL),('641','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'10156422','2014-02-15 00:00:00',NULL),('642','졸업','2014-02-15',NULL,NULL,NULL,NULL,NULL,'10175411','2014-02-15 00:00:00',NULL),('643','졸업','2015-02-15',NULL,NULL,NULL,NULL,NULL,'11126385','2015-02-15 00:00:00',NULL),('644','졸업','2015-02-15',NULL,NULL,NULL,NULL,NULL,'11135820','2015-02-15 00:00:00',NULL),('645','졸업','2015-02-15',NULL,NULL,NULL,NULL,NULL,'11155891','2015-02-15 00:00:00',NULL),('646','졸업','2016-02-15',NULL,NULL,NULL,NULL,NULL,'10147216','2016-02-15 00:00:00',NULL),('647','졸업','2016-02-15',NULL,NULL,NULL,NULL,NULL,'10173865','2016-02-15 00:00:00',NULL),('648','졸업','2016-02-15',NULL,NULL,NULL,NULL,NULL,'10188712','2016-02-15 00:00:00',NULL),('649','졸업','2016-02-15',NULL,NULL,NULL,NULL,NULL,'12108821','2016-02-15 00:00:00',NULL),('65','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07165230','2007-03-01 00:00:00',NULL),('650','졸업','2016-02-15',NULL,NULL,NULL,NULL,NULL,'12130744','2016-02-15 00:00:00',NULL),('651','졸업','2016-02-15',NULL,NULL,NULL,NULL,NULL,'12172877','2016-02-15 00:00:00',NULL),('652','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'11118142','2017-02-15 00:00:00',NULL),('653','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'11155787','2017-02-15 00:00:00',NULL),('654','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'11175038','2017-02-15 00:00:00',NULL),('655','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'11184366','2017-02-15 00:00:00',NULL),('656','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'11185346','2017-02-15 00:00:00',NULL),('657','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'11186205','2017-02-15 00:00:00',NULL),('658','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'13113512','2017-02-15 00:00:00',NULL),('659','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'13137023','2017-02-15 00:00:00',NULL),('66','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07169336','2007-03-01 00:00:00',NULL),('660','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'13186274','2017-02-15 00:00:00',NULL),('661','졸업','2017-02-15',NULL,NULL,NULL,NULL,NULL,'13194220','2017-02-15 00:00:00',NULL),('662','졸업','2018-02-15',NULL,NULL,NULL,NULL,NULL,'12110058','2018-02-15 00:00:00',NULL),('663','졸업','2018-02-15',NULL,NULL,NULL,NULL,NULL,'12131053','2018-02-15 00:00:00',NULL),('664','졸업','2018-02-15',NULL,NULL,NULL,NULL,NULL,'12144760','2018-02-15 00:00:00',NULL),('665','졸업','2018-02-15',NULL,NULL,NULL,NULL,NULL,'12188975','2018-02-15 00:00:00',NULL),('666','졸업','2018-02-15',NULL,NULL,NULL,NULL,NULL,'14106615','2018-02-15 00:00:00',NULL),('667','졸업','2018-02-15',NULL,NULL,NULL,NULL,NULL,'14121627','2018-02-15 00:00:00',NULL),('668','졸업','2018-02-15',NULL,NULL,NULL,NULL,NULL,'14160233','2018-02-15 00:00:00',NULL),('669','졸업','2019-02-15',NULL,NULL,NULL,NULL,NULL,'13108574','2019-02-15 00:00:00',NULL),('67','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07178184','2007-03-01 00:00:00',NULL),('670','졸업','2019-02-15',NULL,NULL,NULL,NULL,NULL,'13139981','2019-02-15 00:00:00',NULL),('671','졸업','2019-02-15',NULL,NULL,NULL,NULL,NULL,'15107174','2019-02-15 00:00:00',NULL),('672','졸업','2019-02-15',NULL,NULL,NULL,NULL,NULL,'15108668','2019-02-15 00:00:00',NULL),('673','졸업','2019-02-15',NULL,NULL,NULL,NULL,NULL,'15122208','2019-02-15 00:00:00',NULL),('674','졸업','2019-02-15',NULL,NULL,NULL,NULL,NULL,'15127860','2019-02-15 00:00:00',NULL),('675','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'14103134','2020-02-15 00:00:00',NULL),('676','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'14117683','2020-02-15 00:00:00',NULL),('677','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'14121313','2020-02-15 00:00:00',NULL),('678','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'14126305','2020-02-15 00:00:00',NULL),('679','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'14137896','2020-02-15 00:00:00',NULL),('68','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07183946','2007-03-01 00:00:00',NULL),('680','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'14184145','2020-02-15 00:00:00',NULL),('681','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'16126888','2020-02-15 00:00:00',NULL),('682','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'16156846','2020-02-15 00:00:00',NULL),('683','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'16164305','2020-02-15 00:00:00',NULL),('684','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'16175208','2020-02-15 00:00:00',NULL),('685','졸업','2020-02-15',NULL,NULL,NULL,NULL,NULL,'16197429','2020-02-15 00:00:00',NULL),('686','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'15106737','2021-02-15 00:00:00',NULL),('687','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'15114325','2021-02-15 00:00:00',NULL),('688','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'15118598','2021-02-15 00:00:00',NULL),('689','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'15147602','2021-02-15 00:00:00',NULL),('69','입학','2007-03-01',NULL,NULL,NULL,NULL,NULL,'07185991','2007-03-01 00:00:00',NULL),('690','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'17120777','2021-02-15 00:00:00',NULL),('691','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'17121572','2021-02-15 00:00:00',NULL),('692','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'17125917','2021-02-15 00:00:00',NULL),('693','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'17189569','2021-02-15 00:00:00',NULL),('694','졸업','2021-02-15',NULL,NULL,NULL,NULL,NULL,'17197614','2021-02-15 00:00:00',NULL),('695','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16101803','2022-02-15 00:00:00',NULL),('696','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16102611','2022-02-15 00:00:00',NULL),('697','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16110752','2022-02-15 00:00:00',NULL),('698','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16116861','2022-02-15 00:00:00',NULL),('699','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16119134','2022-02-15 00:00:00',NULL),('70','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08101138','2008-03-01 00:00:00',NULL),('700','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16122646','2022-02-15 00:00:00',NULL),('701','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16137684','2022-02-15 00:00:00',NULL),('702','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16154463','2022-02-15 00:00:00',NULL),('703','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16172972','2022-02-15 00:00:00',NULL),('704','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16180053','2022-02-15 00:00:00',NULL),('705','졸업','2022-02-15',NULL,NULL,NULL,NULL,NULL,'16180882','2022-02-15 00:00:00',NULL),('708','휴학','S202401','S202402','군입대','군입대로 휴학합니다','신청중',NULL,'22122035','2022-09-23 14:56:42','22122035_3795_입영통지서.txt'),('709','휴학','S202302','S202502','군입대','d입대','승인',NULL,'02116466','2022-09-23 16:33:07','02116466_2617_4조 aws oracle전용.txt'),('71','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08107051','2008-03-01 00:00:00',NULL),('72','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08110595','2008-03-01 00:00:00',NULL),('73','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08112846','2008-03-01 00:00:00',NULL),('74','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08113217','2008-03-01 00:00:00',NULL),('75','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08123476','2008-03-01 00:00:00',NULL),('76','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08126264','2008-03-01 00:00:00',NULL),('77','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08138949','2008-03-01 00:00:00',NULL),('78','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08142585','2008-03-01 00:00:00',NULL),('79','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08150892','2008-03-01 00:00:00',NULL),('80','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08157899','2008-03-01 00:00:00',NULL),('81','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08161294','2008-03-01 00:00:00',NULL),('82','입학','2008-03-01',NULL,NULL,NULL,NULL,NULL,'08172305','2008-03-01 00:00:00',NULL),('83','입학','2009-03-01',NULL,NULL,NULL,NULL,NULL,'09103045','2009-03-01 00:00:00',NULL),('84','입학','2009-03-01',NULL,NULL,NULL,NULL,NULL,'09110058','2009-03-01 00:00:00',NULL),('85','입학','2009-03-01',NULL,NULL,NULL,NULL,NULL,'09169569','2009-03-01 00:00:00',NULL),('86','입학','2009-03-01',NULL,NULL,NULL,NULL,NULL,'09181881','2009-03-01 00:00:00',NULL),('87','입학','2010-03-01',NULL,NULL,NULL,NULL,NULL,'10101105','2010-03-01 00:00:00',NULL),('88','입학','2010-03-01',NULL,NULL,NULL,NULL,NULL,'10135925','2010-03-01 00:00:00',NULL),('89','입학','2010-03-01',NULL,NULL,NULL,NULL,NULL,'10147216','2010-03-01 00:00:00',NULL),('9','입학','2000-03-01',NULL,NULL,NULL,NULL,NULL,'00000000','2000-03-01 00:00:00',NULL),('90','입학','2010-03-01',NULL,NULL,NULL,NULL,NULL,'10156422','2010-03-01 00:00:00',NULL),('91','입학','2010-03-01',NULL,NULL,NULL,NULL,NULL,'10173865','2010-03-01 00:00:00',NULL),('92','입학','2010-03-01',NULL,NULL,NULL,NULL,NULL,'10175411','2010-03-01 00:00:00',NULL),('93','입학','2010-03-01',NULL,NULL,NULL,NULL,NULL,'10188712','2010-03-01 00:00:00',NULL),('94','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11118142','2011-03-01 00:00:00',NULL),('95','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11123456','2011-03-01 00:00:00',NULL),('96','입학','2011-09-01',NULL,NULL,NULL,NULL,NULL,'11123789','2011-09-01 00:00:00',NULL),('97','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11126385','2011-03-01 00:00:00',NULL),('98','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11135820','2011-03-01 00:00:00',NULL),('99','입학','2011-03-01',NULL,NULL,NULL,NULL,NULL,'11155787','2011-03-01 00:00:00',NULL);
/*!40000 ALTER TABLE `k_student_aca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_students`
--

DROP TABLE IF EXISTS `k_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_students` (
  `stu_id` varchar(100) NOT NULL,
  `student_regdate` date DEFAULT NULL,
  `student_graddate` date DEFAULT NULL,
  `student_grade` int(11) DEFAULT NULL,
  `student_sem` int(11) DEFAULT NULL,
  `student_aca_yn` varchar(100) DEFAULT NULL,
  `student_prof` varchar(100) DEFAULT NULL,
  `student_change_status` varchar(100) DEFAULT '0',
  PRIMARY KEY (`stu_id`),
  KEY `k_students_FK` (`student_prof`),
  CONSTRAINT `R_3` FOREIGN KEY (`stu_id`) REFERENCES `k_users` (`user_id`),
  CONSTRAINT `k_students_FK` FOREIGN KEY (`student_prof`) REFERENCES `k_professors` (`prof_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_students`
--

LOCK TABLES `k_students` WRITE;
/*!40000 ALTER TABLE `k_students` DISABLE KEYS */;
INSERT INTO `k_students` VALUES ('00000000','2000-03-01',NULL,1,2,'재학','00265609','0'),('00000001','2000-03-01',NULL,3,2,'재학','00217253','1'),('00103086','2000-03-01',NULL,3,2,'재학','00217253','0'),('00149383','2000-03-01',NULL,4,2,'재학','00217253','0'),('00149776','2000-03-01',NULL,1,2,'재학','testprof','0'),('01101225','2001-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('01103888','2001-03-01',NULL,2,2,'재학','testprof','0'),('01115942','2001-03-01',NULL,3,2,'재학',NULL,'0'),('01119665','2001-03-01',NULL,1,2,'재학','testprof','0'),('01132538','2001-03-01',NULL,1,2,'재학','testprof','0'),('01152457','2001-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('01170739','2001-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('01174314','2001-04-01',NULL,2,1,'재학',NULL,'0'),('01187591','2001-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('02103984','2002-03-01',NULL,1,1,'재학','21212121','0'),('02116466','2002-03-01',NULL,1,1,'재학','21212121','0'),('02137760','2002-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('02169057','2002-03-01','2006-02-15',4,2,'졸업',NULL,'0'),('02185384','2002-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('02186866','2002-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('03104778','2003-03-01','2009-02-15',4,2,'졸업',NULL,'0'),('03115387','2003-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('03139643','2003-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('03149991','2003-03-01','2009-02-15',4,2,'졸업',NULL,'0'),('03158946','2003-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('03159576','2003-03-01','2009-02-15',1,2,'재학',NULL,'0'),('03167791','2003-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('03169863','2003-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('03176290','2003-03-01','2007-02-15',4,2,'졸업',NULL,'0'),('03180530','2003-03-01','2009-02-15',4,2,'졸업',NULL,'0'),('04102650','2004-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('04106983','2004-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('04114599','2004-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('04117070','2004-03-01','2010-02-15',1,2,'재학',NULL,'0'),('04121831','2004-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('04125213','2004-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('04133177','2004-03-01','2010-02-15',4,2,'졸업',NULL,'0'),('04165954','2004-03-01','2008-02-15',1,2,'재학',NULL,'0'),('04182065','2004-03-01','2008-02-15',4,2,'졸업',NULL,'0'),('05120221','2005-03-01','2009-02-15',4,2,'졸업',NULL,'0'),('05134454','2005-03-01','2011-02-15',4,2,'졸업',NULL,'0'),('05151227','2005-03-01','2009-02-15',4,2,'졸업',NULL,'0'),('05190097','2005-03-01','2009-02-15',4,2,'졸업',NULL,'0'),('05193283','2005-03-01','2009-02-15',4,2,'졸업',NULL,'0'),('06107937','2006-03-01','2010-02-15',4,2,'졸업',NULL,'0'),('06130692','2006-03-01','2012-02-15',1,2,'재학',NULL,'0'),('06139948','2006-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('06144158','2006-03-01','2010-02-15',4,2,'졸업',NULL,'0'),('06160685','2006-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('06162353','2006-03-01','2010-02-15',4,2,'졸업',NULL,'0'),('06171730','2006-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('06198626','2006-03-01','2010-02-15',4,2,'졸업',NULL,'0'),('07100951','2007-03-01','2013-02-15',4,2,'졸업',NULL,'0'),('07126054','2007-03-01','2011-02-15',4,2,'졸업',NULL,'0'),('07139702','2007-03-01','2013-02-15',4,2,'졸업',NULL,'0'),('07144726','2007-03-01','2011-02-15',4,2,'졸업',NULL,'0'),('07165230','2007-03-01','2011-02-15',4,2,'졸업',NULL,'0'),('07169336','2007-03-01','2011-02-15',4,2,'졸업',NULL,'0'),('07178184','2007-03-01','2013-02-15',4,2,'졸업',NULL,'0'),('07183946','2007-03-01','2011-02-15',4,2,'졸업',NULL,'0'),('07185991','2007-03-01','2013-02-15',4,2,'졸업',NULL,'0'),('08101138','2008-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('08107051','2008-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('08110595','2008-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('08112846','2008-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('08113217','2008-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('08123476','2008-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('08126264','2008-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('08138949','2008-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('08142585','2008-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('08150892','2008-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('08157899','2008-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('08161294','2008-03-01','2012-02-15',4,2,'졸업',NULL,'0'),('08172305','2008-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('09103045','2009-03-01','2013-02-15',4,2,'졸업',NULL,'0'),('09110058','2009-03-01','2013-02-15',4,2,'졸업',NULL,'0'),('09169569','2009-03-01','2013-02-15',4,2,'졸업',NULL,'0'),('09181881','2009-03-01','2013-02-15',4,2,'졸업',NULL,'0'),('10101105','2010-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('10135925','2010-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('10147216','2010-03-01','2016-02-15',4,2,'졸업',NULL,'0'),('10156422','2010-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('10173865','2010-03-01','2016-02-15',4,2,'졸업',NULL,'0'),('10175411','2010-03-01','2014-02-15',4,2,'졸업',NULL,'0'),('10188712','2010-03-01','2016-02-15',4,2,'졸업',NULL,'0'),('11118142','2011-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('11123456','2011-03-01',NULL,1,1,'재학','21212121','1'),('11123789','2011-09-01',NULL,2,1,'재학',NULL,'0'),('11126385','2011-03-01','2015-02-15',4,2,'졸업',NULL,'0'),('11135820','2011-03-01','2015-02-15',4,2,'졸업',NULL,'0'),('11155787','2011-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('11155891','2011-03-01','2015-02-15',4,2,'졸업',NULL,'0'),('11175038','2011-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('11184366','2011-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('11185346','2011-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('11186205','2011-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('12108821','2012-03-01','2016-02-15',4,2,'졸업',NULL,'0'),('12110058','2012-03-01','2018-02-15',4,2,'졸업',NULL,'0'),('12130744','2012-03-01','2016-02-15',4,2,'졸업',NULL,'0'),('12131053','2012-03-01','2018-02-15',4,2,'졸업',NULL,'0'),('12144760','2012-03-01','2018-02-15',4,2,'졸업',NULL,'0'),('12172877','2012-03-01','2016-02-15',4,2,'졸업',NULL,'0'),('12188975','2012-03-01','2018-02-15',4,2,'졸업',NULL,'0'),('13108574','2013-03-01','2019-02-15',4,2,'졸업',NULL,'0'),('13113512','2013-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('13137023','2013-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('13139981','2013-03-01','2019-02-15',4,2,'졸업',NULL,'0'),('13186274','2013-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('13194220','2013-03-01','2017-02-15',4,2,'졸업',NULL,'0'),('14103134','2014-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('14106615','2014-03-01','2018-02-15',4,2,'졸업',NULL,'0'),('14117683','2014-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('14121313','2014-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('14121627','2014-03-01','2018-02-15',4,2,'졸업',NULL,'0'),('14126305','2014-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('14137896','2014-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('14160233','2014-03-01','2018-02-15',4,2,'졸업',NULL,'0'),('14184145','2014-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('15106737','2015-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('15107174','2015-03-01','2019-02-15',4,2,'졸업',NULL,'0'),('15108668','2015-03-01','2019-02-15',4,2,'졸업',NULL,'0'),('15114325','2015-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('15118598','2015-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('15122208','2015-03-01','2019-02-15',4,2,'졸업',NULL,'0'),('15127860','2015-03-01','2019-02-15',4,2,'졸업',NULL,'0'),('15147602','2015-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('16101803','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16102611','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16110752','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16116861','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16119134','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16122646','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16126888','2016-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('16137684','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16154463','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16156846','2016-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('16164305','2016-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('16172972','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16175208','2016-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('16180053','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16180882','2016-03-01','2022-02-15',4,2,'졸업',NULL,'0'),('16197429','2016-03-01','2020-02-15',4,2,'졸업',NULL,'0'),('17120777','2017-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('17121572','2017-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('17125917','2017-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('17128399','2017-03-01',NULL,4,2,'재학',NULL,'0'),('17189569','2017-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('17197614','2017-03-01','2021-02-15',4,2,'졸업',NULL,'0'),('17198885','2017-03-01',NULL,4,2,'재학',NULL,'0'),('18100892','2018-03-01',NULL,4,2,'재학',NULL,'0'),('18103786','2018-03-01',NULL,4,2,'재학','21212121','0'),('18116253','2018-03-01',NULL,4,2,'재학',NULL,'0'),('18116606','2018-03-01',NULL,4,2,'재학',NULL,'0'),('18119511','2018-03-01',NULL,4,2,'재학',NULL,'0'),('18139962','2018-03-01',NULL,4,2,'재학',NULL,'0'),('18140568','2018-03-01',NULL,4,2,'재학',NULL,'0'),('18146593','2018-03-01',NULL,4,2,'재학','05237415','0'),('18180198','2018-03-01',NULL,4,2,'재학',NULL,'0'),('18183524','2018-03-01',NULL,4,2,'재학',NULL,'0'),('18199618','2018-03-01',NULL,4,2,'재학',NULL,'0'),('19104187','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19109453','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19109454','2019-03-01',NULL,4,2,'재학','05237415','0'),('19111503','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19118402','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19136098','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19143945','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19179440','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19189372','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19192126','2019-03-01',NULL,4,2,'재학',NULL,'0'),('19193538','2019-03-01',NULL,4,2,'재학',NULL,'0'),('20121193','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20123808','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20141374','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20142248','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20144609','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20155510','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20165495','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20165528','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20165868','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20166057','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20173769','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20178628','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20179587','2020-03-01',NULL,3,2,'재학',NULL,'0'),('20187183','2020-03-01',NULL,3,2,'재학',NULL,'0'),('21105406','2021-03-01',NULL,2,2,'재학',NULL,'0'),('21118400','2021-03-01',NULL,2,2,'재학',NULL,'0'),('21118677','2021-03-01',NULL,2,2,'재학',NULL,'0'),('21124593','2021-03-01',NULL,2,2,'재학',NULL,'0'),('21149494','2021-03-01',NULL,2,2,'재학',NULL,'0'),('21150011','2021-03-01',NULL,2,2,'재학',NULL,'0'),('21164493','2021-03-01',NULL,2,2,'재학',NULL,'0'),('22102082','2022-03-01',NULL,1,2,'재학',NULL,'0'),('22122035','2022-03-01',NULL,1,2,'재학',NULL,'0'),('22145097','2022-03-01',NULL,1,2,'재학',NULL,'0'),('22145874','2022-03-01',NULL,1,2,'재학',NULL,'0'),('22151829','2022-03-01',NULL,1,2,'재학',NULL,'0'),('22156790','2022-03-01',NULL,1,2,'재학',NULL,'0'),('22173886','2022-03-01',NULL,1,2,'재학',NULL,'0'),('22175972','2022-03-01',NULL,1,2,'재학',NULL,'0'),('22186694','2022-03-01',NULL,1,2,'재학',NULL,'0'),('95101804','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95103515','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95108044','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95108789','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95109682','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95109757','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95110536','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95112934','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95113162','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95113717','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95115760','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95120617','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95122232','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95123056','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95123959','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95125678','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95127891','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95137834','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95138318','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95139429','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95139516','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95141366','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95142246','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95144098','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95144718','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95151093','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95155237','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95157160','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95157895','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95161609','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95161791','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95166464','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95167558','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95167636','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95169217','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95172962','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95174087','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95175773','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95177465','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95180310','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95181146','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95186008','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95186689','1995-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('95195955','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('95197851','1995-03-01','1999-02-15',4,2,'졸업',NULL,'0'),('96101273','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96101431','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96102369','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96102476','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96109664','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96112210','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96115369','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96122544','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96124567','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96131880','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96133704','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96140559','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96140562','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96141370','1996-03-01','2002-02-15',2,2,'재학',NULL,'0'),('96141738','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96143888','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96145460','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96148872','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96158904','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96162208','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96163840','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96163982','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96172390','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96174387','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96181248','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96182990','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96183431','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96185360','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96185555','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96188434','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96190596','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96193666','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96194151','1996-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('96196690','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('96197424','1996-03-01','2000-02-15',4,2,'졸업',NULL,'0'),('97100631','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97104783','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97107569','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97110881','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97111017','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97111434','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97113607','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97113662','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97118253','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97119382','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97119866','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97122894','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97133338','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97138436','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97140968','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97145357','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97146947','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97150910','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97151615','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97161604','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97163211','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97164788','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97164854','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97165937','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97177716','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97179741','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97184914','1997-03-01','2001-02-15',4,2,'졸업',NULL,'0'),('97190513','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('97194954','1997-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('98103194','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98104620','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98104890','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98106637','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98107476','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98108958','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98112458','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98120147','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98123758','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98127721','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98128085','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98128104','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98130927','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98138550','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98142303','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98142548','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98144004','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98144698','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98145272','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98146439','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98147857','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98151670','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98154539','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98156951','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98157244','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98159767','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98161362','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98171416','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98178800','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98181064','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98182374','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98187855','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98188599','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98193195','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('98194905','1998-03-01','2004-02-15',4,2,'졸업',NULL,'0'),('98198172','1998-03-01','2002-02-15',4,2,'졸업',NULL,'0'),('99101175','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99107577','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99111714','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99117106','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99124899','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99128242','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99132069','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99134963','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99135036','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99135606','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99136955','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99140982','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99146775','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99154775','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99157379','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99158834','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99159042','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99161386','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99162332','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99164679','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99167651','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99170018','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99171742','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99172098','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99172969','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99173220','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99178514','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99179911','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99181013','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99185489','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99187512','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99188532','1999-03-01','2003-02-15',4,2,'졸업',NULL,'0'),('99188717','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99193449','1999-03-01','2005-02-15',4,2,'졸업',NULL,'0'),('99194300','1999-03-01','2003-02-15',4,2,'졸업','00217253','0'),('99195608','1999-03-01','2003-02-15',4,2,'졸업','00217253','0'),('test123','2002-03-01',NULL,1,1,'재학','testprof','0');
/*!40000 ALTER TABLE `k_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `k_users`
--

DROP TABLE IF EXISTS `k_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `k_users` (
  `user_id` varchar(100) NOT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_ssn` varchar(100) DEFAULT NULL,
  `user_sex` varchar(100) DEFAULT NULL,
  `user_dept` varchar(100) DEFAULT NULL,
  `user_addr` varchar(500) DEFAULT NULL,
  `user_phone` varchar(100) DEFAULT NULL,
  `user_email` varchar(500) DEFAULT NULL,
  `user_pw` varchar(100) DEFAULT NULL,
  `user_nation` varchar(100) DEFAULT NULL,
  `user_pic` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `k_users`
--

LOCK TABLES `k_users` WRITE;
/*!40000 ALTER TABLE `k_users` DISABLE KEYS */;
INSERT INTO `k_users` VALUES ('00000000','ROLE_STU','김용현','001122-3******','M','컴퓨터공학과','달서구 이곡동','010-7396-9969','mus5607@naver.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','00000000.jpg'),('00000001','ROLE_STU','곽영우','123123-4******','M','언론정보학과','달서구 진천동','010-2942-0129','faeir123@gmail.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','00000001.jpg'),('00103086','ROLE_STU','송믿음','810603-1******','M','물리학과','경상남도 창원시 의창구 창이대로113번길 9-1 (명서동, 부산상가)','290-823-3740','bsurcombea6@samsung.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','00103086.jpg'),('00149383','ROLE_STU','노혁','810717-2******','F','경영학과','부산광역시 연제구 토곡로 70 (연산동, 부산광역시 창의융합교육원)','965-264-6151','abastickcm@loc.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','00149383.jpg'),('00149776','ROLE_STU','윤샘','790814-2******','F','체육학과','경상남도 함양군 안의면 광풍로 117 (안의면, 대구실비)','857-851-7733','xbirkmyre1w@exblog.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','00149776.jpg'),('00217253','ROLE_PROF','배리','530829-2******','F','철학과','경상북도 울진군 울진읍 읍내로 3 (울진읍, 대구모텔)','411-364-1115','acarverhilldc@quantcast.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','00217253.jpg'),('00265609','ROLE_PROF','신기원','681226-2******','F','사회복지학과','경상북도 울진군 근남면 성류굴로 213 (근남면, 대구식당)','852-657-4821','hworvell5g@paypal.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','00265609.jpg'),('01101225','ROLE_STU','봉우원','801020-1******','M','수학과','제주특별자치도 서귀포시 중정로61번길 8-1 (서귀동, 서울왕만두)','643-625-6708','hiles7b@tripod.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','01101225.jpg'),('01103888','ROLE_STU','Martine','800727-1******','M','언어학과','세종특별자치시 국책연구원5로 12','759-424-6415','mmartine4i@accuweather.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Japan','01103888.jpg'),('01115942','ROLE_PROF','Creedland','790720-2******','F','금형디자인과','경상남도 양산시 다방길 3 (다방동, 부산우유)','694-776-8562','ccreedland5@uiuc.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Portugal','01115942.jpg'),('01119665','ROLE_STU','허린','810701-2******','F','컴퓨터공학과','경상북도 김천시 대항면 황악로 1444 (대항면, 대구슈퍼)','479-709-6694','arothman9s@geocities.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','01119665.jpg'),('01132538','ROLE_PROF','양빛나','790725-2******','F','사회복지학과','경상남도 거창군 거창읍 거창대로 5-1 (거창읍, 부산공업사)','903-571-9514','mpage8b@friendfeed.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','01132538.jpg'),('01152457','ROLE_STU','배민정','811029-2******','F','경영학과','서울특별시 서초구 남부순환로 2248 (방배동, 서울시교원연수원)','674-637-0374','njeremaesaa@friendfeed.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','01152457.jpg'),('01158956','ROLE_PROF','안강민','810404-2******','F','치기공학과','충청남도 천안시 동남구 목천읍 천정2길 97 (목천읍, 대전충남양돈농협)','954-844-4728','bpellew5k@guardian.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','01158956.jpg'),('01170739','ROLE_STU','Paulley','820617-1******','M','기계공학과','경기도 광주시 경안천로 139 (송정동, 광주시농민단체회관)','605-736-5006','epaulley3w@wisc.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','01170739.jpg'),('01174314','ROLE_STU','권서하','790225-1******','M','사회학과','경상남도 창원시 진해구 여좌로58번길 2 (여좌동, 부산식육점)','754-250-8379','emyattaq@netwoeafvertising.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','01174314.jpg'),('01187591','ROLE_STU','임웅','811226-1******','M','경영학과','경상북도 경주시 외동읍 석계산업단지길 66-53 (외동읍, 대구테크)','399-475-4795','fsheerin7s@aboutads.info','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','01187591.jpg'),('02103984','ROLE_STU','정철우','940928-1******','M','컴퓨터공학과','대구광역시 선원로 137','010-3753-6703','dlsfi123@daun.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','02103984.jpg'),('02116466','ROLE_STU','신혜원','930813-2******','F','철학과','대전광역시 중구 학고개로34번길 56-1 (옥계동, 대구빌라)','746-630-7937','ssilverwooda@chronoengine.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','02116466.jpg'),('02137760','ROLE_STU','Slaght','820919-1******','M','통계학과','대전광역시 동구 송촌남로11번길 116 (용전동, 대전문학관)','668-512-2755','cslaghtbb@amazon.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Canada','02137760.jpg'),('02169057','ROLE_STU','남궁나영','801030-2******','F','사회복지학과','경상남도 양산시 양산대로 931 (신기동, 대구은행)','820-258-1403','tlyndea0@reference.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','02169057.jpg'),('02185384','ROLE_STU','예서현','820220-1******','M','언론정보학과','경상남도 사천시 벌용길 75 (벌리동, 서울우유)','661-520-0252','larmell6j@cloudflare.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','02185384.jpg'),('02186866','ROLE_STU','정재희','820728-1******','M','물리학과','전라남도 담양군 대전면 대치8길 28-12 (대전면, 대전시장)','447-193-5239','mmallison3u@arizona.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','02186866.jpg'),('02281628','ROLE_PROF','장미연','690611-1******','M','언론정보학과','경상남도 함안군 대산면 대산중앙로 206-2 (대산면, 서울스토아)','479-167-1921','hmcgraylea1@opera.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','02281628.jpg'),('02298076','ROLE_PROF','류웅','550330-1******','M','물리학과','경상남도 양산시 하북면 신평남부길 63 (하북면, 부산갈비)','370-412-6137','pburnsellcu@dmoz.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','02298076.jpg'),('02345196','ROLE_ADMIN','박광','600530-2******','F','인사','서울특별시 강동구 명일로 243 (길동, 서울시산림조합빌딩)','829-805-3631','ttuson4t@amazon.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','02345196.jpg'),('03104778','ROLE_STU','장봄','840808-1******','M','심리학과','인천광역시 미추홀구 길파로35번길 26-1 (주안동, 대로빌라)','269-420-5257','dmccurlye62@infoseek.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03104778.jpg'),('03115387','ROLE_STU','설달래','810404-2******','F','사회복지학과','충청북도 청주시 서원구 궁뜰로67번길 4 (장성동, 대구산업)','737-672-7728','msussans8e@histats.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03115387.jpg'),('03139643','ROLE_STU','Jeggo','821220-2******','F','경영학과','경상남도 창원시 진해구 명제로109번길 7 (죽곡동, 부산식당)','195-314-5388','bjeggo5h@people.com.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Zambia','03139643.jpg'),('03149991','ROLE_STU','유아람','810111-1******','M','국어국문학과','강원도 양양군 양양읍 동해대로 3017 (양양읍)','916-275-4289','lkinworthy7l@fc2.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03149991.jpg'),('03158946','ROLE_STU','노남규','830212-2******','F','통계학과','대전광역시 동구 대전로791번길 31-1 (중동, 대전식당)','104-884-7028','smcblain9u@tinyurl.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03158946.jpg'),('03159576','ROLE_STU','제갈철','820221-1******','M','컴퓨터공학과','경기도 광주시 파발로 202 (탄벌동, 광주시노인복지회관)','514-504-8233','sashboltaw@google.fr','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03159576.jpg'),('03167791','ROLE_STU','박혜린','820407-2******','F','영어영문학과','경상북도 문경시 중앙로 53 (모전동, 대구유리)','652-324-7592','mecclestone6i@theguardian.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03167791.jpg'),('03169863','ROLE_STU','조일성','840718-2******','F','사회복지학과','경상남도 거제시 사등면 가조서로 241 (사등면, 서울수산)','396-941-6149','acavell6x@senate.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03169863.jpg'),('03176290','ROLE_STU','백별','830128-2******','F','수학과','광주광역시 동구 제봉로82번길 13-8 (서석동, 광주광역시 남자청소년쉼터 어깨동무)','282-477-0934','cdalbydk@yahoo.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03176290.jpg'),('03180530','ROLE_STU','Grigorio','831220-1******','M','체육학과','경상남도 창원시 진해구 충장로 156-2 (충무동, 대구여인숙)','927-253-8146','sgrigoriocc@e-recht24.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Czech Republic','03180530.jpg'),('03205116','ROLE_PROF','류상','650102-1******','M','사회학과','대전광역시 동구 계족로 277 (소제동, 대전목공소)','925-959-6780','lrushworth1o@loc.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03205116.jpg'),('03253506','ROLE_PROF','제갈사랑','621116-1******','M','경영학과','제주특별자치도 서귀포시 중정로91번길 30 (서귀동, 서울족탕)','573-157-0542','rphillott21@cdc.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','03253506.jpg'),('03279944','ROLE_PROF','Coronas','630129-2******','F','언어학과','부산광역시 강서구 녹산산단382로14번길 55 (송정동, 부산광역시 신발산업진흥센타)','835-956-3178','tcoronasc3@dagondesign.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Philippines','03279944.jpg'),('04102650','ROLE_STU','설건','820212-2******','F','철학과','경상남도 양산시 상북면 수서로 503-40 (상북면, 부산로지스)','191-232-5408','hbrood54@dmoz.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04102650.jpg'),('04106983','ROLE_STU','장철','841015-2******','F','심리학과','제주특별자치도 서귀포시 남원읍 중산간동로 6597 (남원읍, 서울농장)','713-839-2076','ssweetland7m@arizona.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04106983.jpg'),('04114599','ROLE_STU','남궁샛별','830404-2******','F','사회복지학과','전라남도 강진군 대구면 수동길 11 (대구면, 대구우체국)','848-476-3618','apatten1u@is.gd','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04114599.jpg'),('04117070','ROLE_STU','예달','830424-1******','M','컴퓨터공학과','경상북도 울진군 북면 장터길 113 (북면, 대구식당)','852-517-8425','vsaleway5t@1688.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04117070.jpg'),('04121831','ROLE_STU','황보하현','830701-2******','F','건축학과','경상남도 양산시 하북면 신평강변3길 17-15 (하북면, 부산집)','956-664-9249','paliman92@amazon.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04121831.jpg'),('04125213','ROLE_STU','Forder','820928-2******','F','사회복지학과','서울특별시 영등포구 문래로 121 (문래동3가, 서울특별시 남부교육지원청)','805-595-8512','rforder9w@wsj.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Malaysia','04125213.jpg'),('04133177','ROLE_STU','황종연','820308-1******','M','언어학과','광주광역시 서구 무진대로 584 (유촌동, 광주광역시 보건환경연구원)','166-428-7947','kpordallbw@salon.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04133177.jpg'),('04165954','ROLE_STU','Sandy','840403-2******','F','컴퓨터공학과','경상북도 문경시 중앙로 50-3 (모전동, 대구약국)','956-741-4543','ksandy3y@twitpic.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Czech Republic','04165954.jpg'),('04182065','ROLE_STU','예달','850913-2******','F','경영학과','강원도 양양군 현남면 동해대로 849-31 (현남면)','314-429-1876','aschermick15@cargocollective.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04182065.jpg'),('04256872','ROLE_PROF','Pattillo','701026-1******','M','통계학과','제주특별자치도 서귀포시 표선면 표선관정로 97 (표선면, 서울약국)','884-256-9556','cpattilloz@google.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Sweden','04256872.jpg'),('04291160','ROLE_PROF','복남순','580319-1******','M','통계학과','강원도 동해시 느릅재길 2 (발한동, 대구먹거리)','203-290-0643','meam2s@spiegel.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04291160.jpg'),('04345712','ROLE_ADMIN','탁남순','660730-1******','M','인사','경상남도 남해군 미조면 미조로236번길 30 (미조면, 서울이발관)','579-643-0857','hcardillop@ted.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','04345712.jpg'),('05120221','ROLE_STU','제갈요한','851221-2******','F','철학과','강원도 동해시 동문산1길 6 (발한동, 대전한복)','700-299-6618','vreinbeckdl@rediff.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','05120221.jpg'),('05134454','ROLE_STU','노이수','840413-1******','M','언론정보학과','경상남도 양산시 북정5길 14 (북정동, 서울우유)','478-825-2263','kholywellch@vinaora.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','05134454.jpg'),('05151227','ROLE_STU','Downer','860507-2******','F','체육학과','대전광역시 동구 대전로 838 (정동, 대전DFC)','498-418-1104','randrysiak55@spiegel.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','05151227.jpg'),('05190097','ROLE_STU','Tale','840219-2******','F','건축학과','경상남도 통영시 항남3길 20 (항남동, 서울삼겹살)','516-741-4874','ktale4n@moonfruit.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','United States','05190097.jpg'),('05193283','ROLE_STU','전믿음','850107-2******','F','심리학과','경상북도 영양군 입암면 신구2길 17-5 (입암면, 대전식당)','797-285-6617','efarloecn@globo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','05193283.jpg'),('05205405','ROLE_PROF','Theunissen','660921-2******','F','언어학과','경상남도 산청군 산청읍 꽃봉산로91번길 23-2 (산청읍, 부산침구)','458-707-8244','htheunissen3r@ebay.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','05205405.jpg'),('05237415','ROLE_PROF','안경구','661219-2******','F','심리학과','경상남도 양산시 하북면 신평강변4길 6 (하북면, 서울뚝배기)','179-522-8539','acalvard95@stanford.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','05237415.jpg'),('05348590','ROLE_ADMIN','황보건','611215-1******','M','재무','경상남도 양산시 원동면 영포안길 33-8 (원동면, 부산일보)','846-603-7749','rbrandonbv@amazon.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','05348590.jpg'),('06107937','ROLE_STU','풍성','840421-2******','F','사회학과','인천광역시 서구 봉수대로 336 (석남동, 봉수대로주유소)','738-261-1996','bmathyscs@bigcartel.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06107937.jpg'),('06130692','ROLE_STU','최호','861129-1******','M','컴퓨터공학과','경상남도 양산시 다방길 29 (다방동, 부산밧데리)','933-420-7593','kcunliffe3x@scientificamerican.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06130692.jpg'),('06139948','ROLE_STU','노철순','850604-1******','M','기계공학과','경상남도 통영시 안개2길 26 (무전동, 서울빌딩)','850-198-2583','thinstridgebi@so-net.ne.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06139948.jpg'),('06144158','ROLE_STU','오믿음','841024-2******','F','철학과','부산광역시 동구 고관로 64 (초량동, 부산시의사회관)','979-129-4105','nchillistone7v@usatoday.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06144158.jpg'),('06160685','ROLE_STU','봉지해','860903-1******','M','영어영문학과','전라남도 순천시 서면 대구1구길 129 (서면, 대구교회)','605-290-0414','jgirodon8j@nymag.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06160685.jpg'),('06162353','ROLE_STU','문철희','870320-2******','F','건축학과','강원도 춘천시 신동면 순환대로 20-10 (신동면)','323-829-8446','nrushton3e@dagondesign.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06162353.jpg'),('06171730','ROLE_STU','송경님','850423-1******','M','의류학과','경상남도 거제시 장목면 거제북로 1212 (장목면, 대로빌3)','270-766-0953','bwaple90@bandcamp.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06171730.jpg'),('06198626','ROLE_STU','심아름','840906-2******','F','경영학과','서울특별시 중구 소파로4길 6 (예장동, 서울특별시 건강가정 지원센터)','341-354-1908','rdemaria5f@blogspot.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06198626.jpg'),('06200595','ROLE_PROF','표으뜸','651016-2******','F','심리학과','경상남도 의령군 칠곡면 칠곡로 67-1 (칠곡면, 부산우유)','116-605-2733','aaire91@wix.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06200595.jpg'),('06281484','ROLE_PROF','설그루','610813-2******','F','심리학과','대전광역시 대덕구 대전로 1215 (오정동, 대전병원)','417-935-4068','kfissenden24@youku.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06281484.jpg'),('06283617','ROLE_PROF','남나비','730703-2******','F','기계공학과','부산광역시 수영구 광일로 8-6 (광안동, 대로해도지빌)','282-631-2461','jvardenbu@people.com.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','06283617.jpg'),('07100951','ROLE_STU','박영신','870712-1******','M','수학과','경상남도 사천시 건어시장길 23 (선구동, 서울식품)','953-983-0341','acarped4@etsy.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07100951.jpg'),('07126054','ROLE_STU','손지석','870716-2******','F','심리학과','대구광역시 달서구 학산남로 66 (상인동, 대구광역시 유아교육진흥원)','887-584-8158','rdesouzac6@amazon.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07126054.jpg'),('07139702','ROLE_STU','허믿음','870603-1******','M','수학과','부산광역시 사상구 모라로6번길 7 (삼락동, 대전공업사)','913-512-2970','bfrusher3p@irs.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07139702.jpg'),('07144726','ROLE_STU','Bazoche','870924-2******','F','통계학과','대전광역시 유성구 도안대로 398 (상대동, 대전역사박물관)','723-519-3545','rbazoche1j@cam.ac.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Mauritius','07144726.jpg'),('07165230','ROLE_STU','서재섭','880903-2******','F','건축학과','대전광역시 대덕구 대화로32번길 279 (대화동, 대전아스콘)','889-218-7213','hhedditch8n@independent.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07165230.jpg'),('07169336','ROLE_STU','정나라우람','881211-2******','F','체육학과','부산광역시 강서구 명지오션시티10로 61 (명지동, 부산시차량등록사업소)','959-131-6101','moreilly7u@tamu.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07169336.jpg'),('07178184','ROLE_STU','이은','881001-1******','M','심리학과','경상남도 남해군 남해읍 화전로 161 (남해읍, 서울우유)','920-664-4499','ejayam@samsung.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07178184.jpg'),('07183946','ROLE_STU','조은석','881220-2******','F','언론정보학과','경상남도 거창군 거창읍 대평5길 8 (거창읍, 대구오토바이)','868-903-1635','rhullyer78@webs.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07183946.jpg'),('07185991','ROLE_STU','풍호','850724-1******','M','언론정보학과','충청남도 천안시 동남구 쌍용대로 142 (봉명동, 쌍용대로주유소)','725-520-5409','ehaithwaitel@time.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07185991.jpg'),('07231165','ROLE_PROF','MacShirrie','640201-1******','M','영어영문학과','경상남도 함안군 군북면 중암5길 14 (군북면, 부산건강원)','810-941-2079','pmacshirrieb@dropbox.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','07231165.jpg'),('07277873','ROLE_PROF','손미란','600419-1******','M','사회학과','전라북도 익산시 무왕로 1178 (부송동, 대로주유소)','653-760-0628','rslograve4p@google.fr','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07277873.jpg'),('07291274','ROLE_PROF','문한샘','690905-2******','F','언론정보학과','서울특별시 관악구 낙성대로 101 (봉천동, 서울시과학전시관)','442-406-8184','nparminter9i@google.nl','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07291274.jpg'),('07299522','ROLE_PROF','사공다솜','650621-1******','M','의류학과','제주특별자치도 서귀포시 대정읍 상모로 325 (대정읍, 서울약국)','844-649-4150','mclaffeye@yellowpages.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','07299522.jpg'),('08101138','ROLE_STU','김담비','871120-2******','F','언어학과','대구광역시 서구 달서로12길 29-47 (비산동, 대로파크빌)','434-561-1755','jhuot7n@yahoo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08101138.jpg'),('08107051','ROLE_STU','하홍자','880926-2******','F','국어국문학과','경상북도 청송군 부남면 한앞길 47 (부남면, 대전2리경로당)','320-660-4531','fmcmeekinb0@blogs.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08107051.jpg'),('08110595','ROLE_STU','황비','860324-1******','M','기계공학과','경상남도 통영시 도산면 도산일주로 19 (도산면, 부산식당)','524-254-3127','ldohrmann45@tamu.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08110595.jpg'),('08112846','ROLE_STU','추지해','890222-2******','F','사회학과','경상남도 함안군 가야읍 함마대로 1594 (가야읍, 대로식당)','458-239-6387','tyole2w@newsvine.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08112846.jpg'),('08113217','ROLE_STU','최요한','861225-1******','M','컴퓨터공학과','서울특별시 용산구 원효로53가길 24 (원효로2가, 대로빌)','660-252-3151','smarstersbp@elpais.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08113217.jpg'),('08123476','ROLE_STU','최성','870122-1******','M','사회복지학과','울산광역시 남구 대학로5번길 11 (무거동, 대로전원파크)','529-366-4412','meyam7z@sina.com.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08123476.jpg'),('08126264','ROLE_STU','권광','871119-1******','M','경영학과','경기도 남양주시 화도읍 북한강로 1711-34 (화도읍, 대로참숯가마)','913-916-9366','hweymontbr@etsy.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08126264.jpg'),('08138949','ROLE_STU','제갈현','860601-2******','F','사회학과','경상남도 하동군 하동읍 중앙로 60 (하동읍, 서울신문)','915-952-2753','boreilly72@jalbum.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08138949.jpg'),('08142585','ROLE_STU','정린','860318-2******','F','의류학과','경상남도 함안군 칠원읍 서남길 32 (칠원읍, 서울한복)','212-703-8173','sstoadc9@chronoengine.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08142585.jpg'),('08150892','ROLE_STU','최승헌','880806-2******','F','철학과','경기도 광주시 이배재로 16 (탄벌동, 한국국토정보공사 광주시지사)','852-784-2395','jrapseybx@typepad.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08150892.jpg'),('08157899','ROLE_STU','복한샘','861201-2******','F','언어학과','서울특별시 성동구 청계천로 500 (마장동, 서울시 청운복지관)','703-211-0911','aantonat3s@umich.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08157899.jpg'),('08161294','ROLE_STU','심성','890827-2******','F','기계공학과','강원도 평창군 대화면 평창대로 770-2 (대화면)','215-474-1240','cpoluzzib4@nps.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08161294.jpg'),('08172305','ROLE_STU','김재','860907-1******','M','의류학과','대전광역시 서구 계룡로 314 (갈마동, 대전일보사)','486-925-5122','snudds6w@123-reg.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08172305.jpg'),('08268070','ROLE_PROF','정란','730609-1******','M','컴퓨터공학과','경상남도 하동군 하동읍 시장1길 20-4 (하동읍, 대구제유)','347-365-3068','hchezier1@examiner.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08268070.jpg'),('08287004','ROLE_PROF','정호','601216-1******','M','영어영문학과','경상남도 양산시 용주로 87 (용당동, 부산도시락)','973-306-2151','ymackonochie3g@homestead.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08287004.jpg'),('08291798','ROLE_PROF','유힘찬','750313-2******','F','국어국문학과','충청남도 천안시 동남구 대흥로 25 (구성동, 대전지방보훈청)','918-904-4943','nbuntine5o@sina.com.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08291798.jpg'),('08349236','ROLE_ADMIN','전경모','600624-2******','F','인사','경기도 광주시 파발로 194 (경안동, 광주시 보건소)','845-433-6475','umcpartlind7@woothemes.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08349236.jpg'),('08374220','ROLE_ADMIN','사공성한','640809-1******','M','인사','울산광역시 남구 삼호로207번길 3-9 (무거동, 대로빌라)','670-374-1071','ddedhambg@blogtalkradio.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','08374220.jpg'),('09103045','ROLE_STU','사공영철','881222-2******','F','언론정보학과','강원도 춘천시 동내면 순환대로 561 (동내면)','301-355-7624','jvasyutkinal@fda.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','09103045.jpg'),('09110058','ROLE_STU','박초롱','890711-2******','F','사회복지학과','경상남도 창원시 의창구 차룡단지로 35 (팔용동, 부산정밀)','485-398-3383','awhooleyd2@fda.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','09110058.jpg'),('09169569','ROLE_STU','최웅','870426-2******','F','언론정보학과','부산광역시 북구 만덕대로155번길 99-1 (덕천동, 부산광역시 건설기술교육원)','355-667-5978','pwarrener22@deliciousdays.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','09169569.jpg'),('09181881','ROLE_STU','성민서','890909-2******','F','철학과','대전광역시 대덕구 대화로32번길 293 (대화동, 대전아스콘)','784-418-3150','cmackartanbm@nhs.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','09181881.jpg'),('09339494','ROLE_ADMIN','조진','750704-2******','F','기획','충청북도 영동군 추풍령면 작점로 16-1 (추풍령면, 대구막창)','900-428-8710','mjohnsey73@disqus.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','09339494.jpg'),('09376772','ROLE_ADMIN','홍현승','710510-2******','F','기획','충청북도 보은군 마로면 관기3길 6-5 (마로면, 대전지업사)','947-405-0962','tmccluinj@nifty.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','09376772.jpg'),('09379449','ROLE_ADMIN','장지해','640812-1******','M','재무','대구광역시 동구 동촌로 73 (검사동, 대구광역시 농.특산품 전시판매장)','771-634-5615','brosenbloom81@liveinternet.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','09379449.jpg'),('10101105','ROLE_STU','남궁일성','900313-2******','F','의류학과','대구광역시 달서구 성당로 187 (성당동, 대구광역시 종합복지회관)','146-144-1132','tcassels7p@behance.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','10101105.jpg'),('10135925','ROLE_STU','서경재','911002-2******','F','컴퓨터공학과','경상남도 통영시 서문로 30 (문화동, 부산일보)','139-490-9480','asabatesao@tinyurl.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','10135925.jpg'),('10147216','ROLE_STU','고우리','901014-1******','M','통계학과','충청남도 천안시 동남구 영성로 84 (오룡동, 대전상호저축은행)','292-357-7815','bchampken3z@biblegateway.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','10147216.jpg'),('10156422','ROLE_STU','최은','880614-2******','F','수학과','강원도 동해시 동해대로 4835 (이도동, 동해 석미아데나 더퍼스트)','268-903-1393','rhosburn9f@scientificamerican.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','10156422.jpg'),('10173865','ROLE_STU','예훈','890801-1******','M','사회학과','경상남도 함안군 군북면 월촌안길 38 (군북면, 대구식당)','178-171-9105','bbilbyds@slate.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','10173865.jpg'),('10175411','ROLE_STU','고여진','880919-2******','F','통계학과','강원도 고성군 현내면 동해대로 9051 (현내면)','144-105-5431','smattholiea4@squidoo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','10175411.jpg'),('10188712','ROLE_STU','Ferriere','880205-1******','M','사회학과','경상북도 포항시 북구 흥해읍 한동로 25 (흥해읍, 대구은행)','473-843-8771','bferriere8i@usa.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Brazil','10188712.jpg'),('10245479','ROLE_PROF','Carnaman','680607-2******','F','언론정보학과','경상남도 남해군 설천면 노량로183번길 20 (설천면, 대구횟집)','679-220-6215','vcarnamand3@gnu.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','10245479.jpg'),('10271715','ROLE_PROF','표혜림','660620-2******','F','기계공학과','경상남도 양산시 덕계로 32 (덕계동, 서울깍두기)','906-609-2538','nthompson34@discuz.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','10271715.jpg'),('10278966','ROLE_PROF','Catt','740523-2******','F','영어영문학과','강원도 삼척시 도계읍 도계로 337 (도계읍, 대구식육점)','146-650-3771','gcatt96@google.pl','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Ivory Coast','10278966.jpg'),('10298843','ROLE_PROF','오빛가람','670804-2******','F','사회복지학과','경기도 고양시 덕양구 통일로 504 (대자동, 서울시장묘사업소)','648-346-8585','mchamberlen1p@washingtonpost.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','10298843.jpg'),('11118142','ROLE_STU','정재','900212-1******','M','통계학과','경상북도 문경시 중앙시장1길 4-12 (점촌동, 대구상회)','771-132-4416','mecob2x@amazon.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11118142.jpg'),('11123456','ROLE_STU','박찬호','910401-2******','F','컴퓨터공학과','충청북도 단양군 어상천면 대전2길 20-3 (어상천면, 대전2리경로당)','010-1111-2222','pch@naver.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11123456.jpg'),('11123789','ROLE_STU','김삿갓','910401-1******','M','물리학과','경상북도 봉화군 춘양면 의양로5길 7-10 (춘양면, 대구상회)','010-1111-2222','4pch2@ajefaw.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11123789.jpg'),('11126385','ROLE_STU','Dale','900703-2******','F','수학과','경상남도 양산시 상북면 반회서3길 16-14 (상북면, 서울우유)','469-846-0987','adale2c@guardian.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','France','11126385.jpg'),('11135820','ROLE_STU','설은채','910126-2******','F','국어국문학과','부산광역시 강서구 화전산단6로 35 (화전동, 부산시기계공업협동조합)','773-161-3634','ljapp8k@marriott.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11135820.jpg'),('11155787','ROLE_STU','탁우람','920904-1******','M','통계학과','경상남도 의령군 의령읍 의병로20길 20-3 (의령읍, 대구식육점)','529-230-0755','lperocciak@nydailynews.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11155787.jpg'),('11155891','ROLE_STU','양현우','920222-2******','F','사회복지학과','경상남도 사천시 문선7길 24-21 (벌리동, 서울삼계탕)','134-466-7687','dstanneringcw@youtube.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11155891.jpg'),('11175038','ROLE_STU','노태환','920525-1******','M','통계학과','대전광역시 중구 학고개로34번길 58 (옥계동, 대구빌라)','126-433-0399','pbothencj@cyberchimps.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11175038.jpg'),('11184366','ROLE_STU','표태식','910826-1******','M','경영학과','전라남도 무안군 삼향읍 삼일로 362 (삼향읍, 대로회집)','664-426-6082','sfarlamc1@aefwef','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11184366.jpg'),('11185346','ROLE_STU','류호','921207-1******','M','의류학과','경상북도 영천시 대창면 금창로 691 (대창면, 대구약국)','353-993-8857','jphifer2m@naver.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11185346.jpg'),('11186205','ROLE_STU','하민서','891008-1******','M','의류학과','전라북도 남원시 요천로 1742 (월락동, 대로갈비)','261-888-3432','fhodginsag@mayoclinic.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11186205.jpg'),('11210096','ROLE_PROF','문이경','720928-2******','F','의류학과','경상남도 창원시 의창구 차상로72번길 11-1 (팔용동, 부산국밥)','212-404-5862','lrolfs6q@dyndns.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11210096.jpg'),('11236532','ROLE_PROF','탁경택','750806-2******','F','의류학과','경상남도 창원시 의창구 원이대로285번길 11 (봉곡동, 서울상가)','353-858-0518','ytabourin16@technorati.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11236532.jpg'),('11245302','ROLE_PROF','Petrusch','720521-2******','F','수학과','강원도 평창군 방림면 평창대로 264-3 (방림면)','847-509-3428','epetrusch8f@com.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','11245302.jpg'),('11252732','ROLE_PROF','류무영','760714-2******','F','통계학과','경상북도 영주시 선비로 200 (영주동, 대구장식)','891-235-4197','ademattiav@about.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11252732.jpg'),('11371696','ROLE_ADMIN','성윤자','680325-2******','F','인사','부산광역시 서구 충무대로 229 (남부민동, 충무대로봄여름가을겨울)','692-147-5816','woguz3n@phpbb.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','11371696.jpg'),('12108821','ROLE_STU','Insworth','900924-2******','F','철학과','경상북도 경산시 진량읍 대구대로 359-7 (진량읍, 대구원룸)','623-610-6709','dinsworth7h@prlog.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Russia','12108821.jpg'),('12110058','ROLE_STU','Brine','900418-1******','M','국어국문학과','울산광역시 울주군 삼남읍 쌍수정1길 39 (삼남읍, 대구제면)','127-728-8964','cbrine2i@samsung.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','12110058.jpg'),('12130744','ROLE_STU','임건','910727-2******','F','컴퓨터공학과','경기도 광주시 회안대로 891 (송정동, 광주시문화스포츠센터)','131-261-4869','fkaradzas5z@imageshack.us','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','12130744.jpg'),('12131053','ROLE_STU','탁솔','920812-1******','M','언론정보학과','울산광역시 남구 대학로 152 (무거동, 대로빌딩)','462-413-0396','rmeechani@cornell.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','12131053.jpg'),('12144760','ROLE_STU','Swettenham','931009-1******','M','영어영문학과','경상남도 양산시 장터1길 14 (중부동, 부산횟집)','606-820-7239','jswettenhamy@photobucket.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','12144760.jpg'),('12172877','ROLE_STU','Whyard','920928-2******','F','물리학과','충청북도 제천시 수산면 인삼로 561 (수산면, 대전분교)','887-113-5957','gwhyard2f@meetup.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Belarus','12172877.jpg'),('12188975','ROLE_STU','탁연석','911021-1******','M','언어학과','대구광역시 남구 대명복개로1길 38 (대명동, 대구광역시 달성교육청)','945-120-4707','edysart3f@washingtonpost.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','12188975.jpg'),('12229475','ROLE_PROF','박영신','750308-1******','M','철학과','경상북도 울진군 후포면 후포로 79-1 (후포면, 대구여관)','806-265-2067','apatrick79@jiathis.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','12229475.jpg'),('12271194','ROLE_PROF','Scipsey','780223-1******','M','의류학과','충청북도 청주시 상당구 상당로144번길 5 (북문로2가, 대전일보충북본부)','417-498-4494','sscipsey7y@amazonaws.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','12271194.jpg'),('12294120','ROLE_PROF','전유리','710209-2******','F','수학과','부산광역시 수영구 광남로 18 (남천동, 부산시약사신용협동조합)','154-579-0410','npretticp@netvibes.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','12294120.jpg'),('12312312','ROLE_ADMIN','김행정','751211-1******','M','기획','강원도 춘천시 신동면 순환대로 309-90 (신동면)','010-1111-2222','dlsfi123@daum.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','12312312.jpg'),('12345678','ROLE_ADMIN','유샛별','740581-1******','M','인사','경상남도 양산시 옥곡3길 11 (남부동, 부산우유)','000-111-4115','teset@test.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','12345678.jpg'),('12392705','ROLE_ADMIN','고승미','750830-1******','M','재무','경상남도 함양군 서상면 대남로 185 (서상면, 대로마을회관)','455-380-8766','fsennettcd@ox.ac.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','12392705.jpg'),('13108574','ROLE_STU','윤지해','920406-1******','M','물리학과','경상북도 예천군 예천읍 시장로 71-2 (예천읍, 대구이용원)','797-692-9211','gstovoldce@chron.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','13108574.jpg'),('13113512','ROLE_STU','허재신','931111-2******','F','의류학과','전라북도 전주시 완산구 풍남문5길 14 (전동3가, 대전여인숙)','683-594-0560','amartinsonw@google.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','13113512.jpg'),('13137023','ROLE_STU','정버들','930313-2******','F','언어학과','강원도 삼척시 도계읍 도계로 313-1 (도계읍, 대구철물)','883-738-0912','zlabrom2p@icq.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','13137023.jpg'),('13139981','ROLE_STU','장혁','930713-1******','M','언어학과','경상남도 양산시 물금읍 가촌동2길 40-1 (물금읍, 부산우유)','757-238-1987','olightwood46@columbia.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','13139981.jpg'),('13186274','ROLE_STU','백나라우람','940728-2******','F','물리학과','충청남도 금산군 추부면 승무재로 112 (추부면, 대전종균서대산)','984-764-9240','sleisman59@w3.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','13186274.jpg'),('13194220','ROLE_STU','Littlejohn','910911-2******','F','언론정보학과','경상남도 사천시 중앙시장2길 12-10 (선구동, 서울장식)','532-323-1591','llittlejohn2z@reverbnation.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Ukraine','13194220.jpg'),('13258522','ROLE_PROF','Dolman','690922-2******','F','컴퓨터공학과','경상북도 영천시 금호읍 금호로 142 (금호읍, 대구농약사)','690-875-2709','gdolmandv@tamu.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Uruguay','13258522.jpg'),('13311712','ROLE_ADMIN','사공현승','800408-2******','F','기획','서울특별시 영등포구 당산로51길 15 (당산동6가, 대로빌딩)','931-679-9668','mwalford9m@gov.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','13311712.jpg'),('13314969','ROLE_ADMIN','설빛가람','660112-1******','M','기획','부산광역시 북구 낙동대로1739번길 7 (구포동, 부산광역시 낙동강관리본부)','311-287-3372','fpetteford7c@phpbb.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','13314969.jpg'),('13385880','ROLE_ADMIN','김우람','750407-1******','M','재무','강원도 춘천시 동면 야시대로 1645 (동면)','596-654-6226','hrudgley9x@storify.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','13385880.jpg'),('14103134','ROLE_STU','백나라우람','941023-1******','M','심리학과','강원도 양양군 양양읍 동해대로 2661-11 (양양읍, 쏠팰리스)','939-758-7336','rangears@ed.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14103134.jpg'),('14106615','ROLE_STU','최진','951203-2******','F','사회학과','경상남도 함안군 칠원읍 구성길 26 (칠원읍, 서울미용실)','324-611-3789','khaygreen70@bravesites.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14106615.jpg'),('14117683','ROLE_STU','이성','940506-1******','M','언어학과','충청남도 청양군 청양읍 중앙로12길 8-2 (청양읍, 대전일보청양총국)','673-937-5831','bbamletcy@360.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14117683.jpg'),('14121313','ROLE_STU','유성','940803-1******','M','기계공학과','대전광역시 동구 대전로 952-2 (삼성동, 대전금속)','427-104-2059','esivilbn@ehow.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14121313.jpg'),('14121627','ROLE_STU','권창현','950421-2******','F','컴퓨터공학과','제주특별자치도 서귀포시 성산읍 한도로242번길 10-13 (성산읍, 부산가든)','523-375-2146','lmuir8c@mozilla.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14121627.jpg'),('14126305','ROLE_STU','오믿음','920209-1******','M','심리학과','서울특별시 강북구 한천로150길 6-19 (수유동, 서울시티런)','992-729-5229','mbrister7a@nydailynews.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14126305.jpg'),('14137896','ROLE_STU','풍소연','941012-1******','M','기계공학과','경상북도 경산시 진량읍 대추마을길9길 33 (진량읍, 대구원룸)','592-948-5617','gfarenden3o@ca.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14137896.jpg'),('14160233','ROLE_STU','문두리','941224-2******','F','국어국문학과','서울특별시 성북구 정릉로6가길 3 (정릉동, 서울시녹지관리16초소)','532-597-3230','olorence87@ebay.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14160233.jpg'),('14184145','ROLE_STU','노성','940125-1******','M','의류학과','충청북도 단양군 대강면 사인암1길 13 (대강면, 대구민박)','764-508-5798','mjeary9q@i2i.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14184145.jpg'),('14210481','ROLE_PROF','설재','700916-1******','M','물리학과','경상남도 남해군 창선면 창선로 85 (창선면, 서울미용실)','134-988-2569','hgocke4l@wordpress.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14210481.jpg'),('14234456','ROLE_PROF','임아름','780105-1******','M','사회복지학과','경상남도 남해군 남해읍 화전로 112 (남해읍, 서울약국)','679-208-2066','dsallinger1n@reuters.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14234456.jpg'),('14250168','ROLE_PROF','Hartfield','820630-1******','M','컴퓨터공학과','충청남도 서천군 비인면 비인로 179 (비인면, 대전일보)','628-224-9189','chartfield0@ibm.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','14250168.jpg'),('14268611','ROLE_PROF','임선진','790625-2******','F','국어국문학과','경상남도 양산시 상북면 반회동7길 17 (상북면, 부산식당)','350-780-2665','sshelmerdine2u@ovh.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14268611.jpg'),('14271791','ROLE_PROF','풍현승','820701-1******','M','통계학과','경상남도 밀양시 삼랑진읍 삼랑진로 1268-50 (삼랑진읍, 부산대학교)','473-348-5984','ggorch1l@joomla.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14271791.jpg'),('14272236','ROLE_PROF','문성','720109-1******','M','사회학과','경상남도 거창군 북상면 병곡길 447-11 (북상면, 대구횟집)','250-826-7229','fbiddy8u@dyndns.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','14272236.jpg'),('15106737','ROLE_STU','장건','940929-1******','M','수학과','경상남도 사천시 장동길 20 (죽림동, 부산기업)','500-196-9773','acubbonad@cafepress.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15106737.jpg'),('15107174','ROLE_STU','심나봄','960827-2******','F','사회복지학과','경상남도 양산시 북정로 32 (북정동, 서울한의원)','612-209-0464','nblenkin8r@economist.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15107174.jpg'),('15108668','ROLE_STU','전란','950224-2******','F','컴퓨터공학과','충청남도 천안시 동남구 미나릿길 52-13 (영성동, 대전여인숙)','374-257-2683','erackbz@europa.eu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15108668.jpg'),('15114325','ROLE_STU','최훈','961221-1******','M','사회학과','대전광역시 대덕구 동서대로1761번길 12 (송촌동, 대전약품)','644-276-4833','gbencher8@businesswire.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15114325.jpg'),('15118598','ROLE_STU','Benaine','930925-1******','M','국어국문학과','전라북도 임실군 신평면 석등슬치로 352-1 (신평면, (유)대전)','758-520-9089','wbenainebs@de.vu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','15118598.jpg'),('15122208','ROLE_STU','정설','960705-2******','F','건축학과','전라북도 부안군 부안읍 향교길 25 (부안읍, 부안향교대전)','426-539-5658','nbarthrop61@nationalgeographic.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15122208.jpg'),('15127860','ROLE_STU','설영애','950722-2******','F','경영학과','대전광역시 대덕구 아리랑로 166 (읍내동, 대전조차장)','978-683-2779','jstrevens9a@nationalgeographic.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15127860.jpg'),('15147602','ROLE_STU','탁은','930324-1******','M','국어국문학과','경상남도 창원시 마산합포구 진북면 학동로 537-331 (진북면, 부산농원)','870-451-6187','gpeddowear@a8.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15147602.jpg'),('15223287','ROLE_PROF','박광','820725-1******','M','철학과','경상북도 포항시 북구 송라면 보경로 724 (송라면, 대전3리회관)','202-512-6558','dtuminini29@ask.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15223287.jpg'),('15231565','ROLE_PROF','표경완','690708-2******','F','물리학과','경상남도 남해군 남해읍 화전로 49 (남해읍, 서울한복)','420-116-7422','cpetrasek94@bloomberg.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15231565.jpg'),('15262813','ROLE_PROF','송믿음','700713-1******','M','영어영문학과','경상남도 거창군 거창읍 시장길 33-4 (거창읍, 부산이불)','493-734-0651','dbrand1v@miibeian.gov.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','15262813.jpg'),('16101803','ROLE_STU','황보경택','970404-1******','M','언어학과','강원도 춘천시 동내면 순환대로 766-8 (동내면)','781-718-2902','jmellor8o@wsj.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16101803.jpg'),('16102611','ROLE_STU','류여진','950914-1******','M','경영학과','경상남도 창원시 진해구 용원중로5번길 6-24 (용원동, 서울깍두기)','780-875-0064','nskalad1@nih.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16102611.jpg'),('16110752','ROLE_STU','심오성','950710-1******','M','건축학과','서울특별시 서초구 태봉로 131 (우면동, 서울시품질시험소)','453-632-0523','kluberto2e@mit.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16110752.jpg'),('16116861','ROLE_STU','허담비','950529-1******','M','심리학과','경상남도 창원시 진해구 석동로39번안길 46 (석동, 부산오뎅)','975-897-7562','pslowcock9v@whitehouse.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16116861.jpg'),('16119134','ROLE_STU','송지해','941205-1******','M','영어영문학과','경상남도 의령군 의령읍 충익로 127 (의령읍, 대전삼계탕)','778-415-9826','tburnup6l@macromedia.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16119134.jpg'),('16122646','ROLE_STU','Haye','950428-1******','M','건축학과','경상남도 양산시 신기로 49 (북정동, 서울밧데리)','584-339-7837','khaye6y@about.me','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Yemen','16122646.jpg'),('16126888','ROLE_STU','홍힘찬','950220-2******','F','철학과','경상남도 사천시 중앙시장1길 3-1 (선구동, 부산상회)','984-523-3130','fcolbran2a@goo.gl','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16126888.jpg'),('16137684','ROLE_STU','배리','970225-1******','M','사회학과','대전광역시 대덕구 선비마을로 260 (법동, 대전광역시 동부여성가족원)','692-987-0634','pwinchester4z@dailymail.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16137684.jpg'),('16154463','ROLE_STU','사공으뜸','960616-1******','M','사회학과','전라북도 남원시 솔터길 76 (광치동, 대구원룸)','392-655-8853','bfarrans6c@answers.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16154463.jpg'),('16156846','ROLE_STU','Thorne','950217-2******','F','컴퓨터공학과','강원도 춘천시 동내면 순환대로 606 (동내면)','190-337-2281','fthorne12@i2i.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Philippines','16156846.jpg'),('16164305','ROLE_STU','황보광','940603-2******','F','국어국문학과','경기도 파주시 가온로 106 (목동동, 대로프라자)','500-898-2952','pjanas1m@slideshare.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16164305.jpg'),('16172972','ROLE_STU','하경택','970826-1******','M','건축학과','경상남도 사천시 유람선길 17 (서동, 대로안전)','528-625-1838','cboog1i@bigcartel.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16172972.jpg'),('16175208','ROLE_STU','제갈지','960109-2******','F','통계학과','경상남도 통영시 서송정1길 8-3 (도남동, 서울영양탕)','926-205-1490','jloxdaleco@bloglovin.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16175208.jpg'),('16180053','ROLE_STU','예희재','970806-1******','M','컴퓨터공학과','경상남도 함양군 함양읍 용평5길 25-2 (함양읍, 부산오뎅)','988-183-2224','kianittellof@php.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16180053.jpg'),('16180882','ROLE_STU','송진','960205-1******','M','언론정보학과','충청남도 당진시 송악읍 복운1길 196-16 (송악읍, 대전교구복운리공소)','725-676-2137','coliverpaull3i@yelp.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16180882.jpg'),('16197429','ROLE_STU','추누리','940422-2******','F','체육학과','경상남도 창원시 진해구 안골로108번길 111 (안골동, 서울식당)','484-841-0490','apolferas@desdev.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16197429.jpg'),('16208163','ROLE_PROF','탁은','760916-2******','F','건축학과','서울특별시 성동구 자동차시장길 47 (용답동, 서울시예방약품비품소)','559-874-7321','bpooly6f@ucoz.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16208163.jpg'),('16234199','ROLE_PROF','복지','800230-1******','M','언어학과','대구광역시 서구 북비산로74길 20-5 (비산동, 대로파크빌)','453-376-4949','hgehringer4u@nymag.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16234199.jpg'),('16237302','ROLE_PROF','홍경구','690211-1******','M','체육학과','경상북도 예천군 풍양면 낙상1길 47 (풍양면, 대구건업)','968-805-7765','sivanenkov3d@stumbleupon.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16237302.jpg'),('16253388','ROLE_PROF','탁달','750429-1******','M','경영학과','강원도 춘천시 신동면 순환대로 318 (신동면)','949-614-9841','brestall1d@amazon.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16253388.jpg'),('16271524','ROLE_PROF','허일성','831211-2******','F','경영학과','충청북도 괴산군 청천면 대전길 41 (청천면, 대전노인정)','770-823-7235','tleybanai@webs.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','16271524.jpg'),('17120777','ROLE_STU','성철','970622-2******','F','국어국문학과','경상북도 영주시 번영로 149 (하망동, 대구은행)','165-281-0373','jbowering71@newsvine.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','17120777.jpg'),('17121572','ROLE_STU','장승헌','950422-2******','F','철학과','경상남도 의령군 의령읍 의병로20길 7-4 (의령읍, 부산미용실)','656-320-3006','glenaghen58@cargocollective.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','17121572.jpg'),('17125917','ROLE_STU','황경준','960411-2******','F','기계공학과','경상남도 남해군 설천면 노량로183번길 14-1 (설천면, 부산횟집)','252-504-2791','nakehurstu@vk.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','17125917.jpg'),('17128399','ROLE_STU','추현','970527-1******','M','건축학과','충청남도 아산시 온화로29번길 2 (온천동, 대구양푼이)','917-807-8842','scaverhill6d@gravatar.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','17128399.jpg'),('17189569','ROLE_STU','강믿음','950822-2******','F','언어학과','경상남도 사천시 중앙시장2길 24-3 (선구동, 서울주단)','641-339-3384','yscrivin5n@jugem.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','17189569.jpg'),('17197614','ROLE_STU','권서하','950430-2******','F','심리학과','경상북도 경주시 외동읍 순금1길 19 (외동읍, 대구유통)','200-497-7898','rbrideaux3t@cdc.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','17197614.jpg'),('17198885','ROLE_STU','남연숙','950517-1******','M','철학과','경상남도 함안군 칠북면 이령1길 57 (칠북면, 부산가든)','387-906-7788','nhub5u@jiathis.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','17198885.jpg'),('17216720','ROLE_PROF','유미래','710630-1******','M','언론정보학과','제주특별자치도 서귀포시 중정로 100-2 (서귀동, 대전여인숙)','625-284-6645','btimmermann53@mlb.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','17216720.jpg'),('18100892','ROLE_STU','Saintpierre','990318-1******','M','수학과','대전광역시 동구 은어송로 95 (가오동, 대전맹학교)','261-683-0685','osaintpierrek@howstuffworks.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Poland','18100892.jpg'),('18103786','ROLE_STU','윤진','970702-2******','F','물리학과','대구광역시 수성구 희망로 175 (황금동, 대구시약사회관)','662-101-3830','dfrancomdm@bloomberg.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18103786.jpg'),('18116253','ROLE_STU','장별찌','970929-1******','M','물리학과','충청북도 제천시 수산면 인삼로 531 (수산면, 대전보건진료소)','993-714-2298','iverduin7e@google.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18116253.jpg'),('18116606','ROLE_STU','홍철순','980430-1******','M','사회복지학과','서울특별시 마포구 방울내로5길 42 (망원동, 서울특별시 청년교류공간)','802-948-5136','tlinfootcz@tumblr.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18116606.jpg'),('18119511','ROLE_STU','Marde','990204-2******','F','건축학과','경기도 광주시 이배재로 209-5 (목현동, 광주시농업기술센터)','542-344-0231','smardedp@tuttocitta.it','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Vietnam','18119511.jpg'),('18139962','ROLE_STU','노은채','970204-2******','F','언어학과','충청북도 청주시 서원구 남이면 남석로 87-9 (남이면, 대로이엔씨(주))','891-976-9811','awadie89@odnoklassniki.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18139962.jpg'),('18140568','ROLE_STU','문태윤','990721-2******','F','영어영문학과','경상남도 하동군 화개면 쌍계사길 21 (화개면, 서울식당)','178-676-6258','mmulliganb3@digg.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18140568.jpg'),('18146593','ROLE_STU','문훈','980907-1******','M','심리학과','경상남도 진주시 진양호로570번길 7 (장대동, 대전산업중앙빌라)','543-360-2023','ddelacostecb@unblog.fr','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18146593.jpg'),('18180198','ROLE_STU','서별빛','960510-1******','M','철학과','서울특별시 중랑구 사가정로42길 21 (면목동, 대로빌딩)','294-720-6520','cashness2r@elpais.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18180198.jpg'),('18183524','ROLE_STU','심다운','980413-1******','M','체육학과','서울특별시 마포구 방울내로5길 43 (망원동, 서울특별시 청년교류공간)','468-802-9840','tbellhousea9@webmd.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18183524.jpg'),('18199618','ROLE_STU','허무열','961220-2******','F','영어영문학과','경상남도 창원시 진해구 충장로82번길 17 (대흥동, 서울갈비탕)','693-260-9979','nmarioneaud8@ihg.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','18199618.jpg'),('18228944','ROLE_PROF','Aspall','750315-1******','M','기계공학과','경상남도 사천시 서부시장길 49 (동동, 서울전업사)','279-182-1197','caspall6@t.co','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Poland','18228944.jpg'),('19104187','ROLE_STU','임민서','970806-1******','M','국어국문학과','제주특별자치도 서귀포시 안덕면 사계중앙로3번길 11 (안덕면, 사계대전경로당)','479-270-9398','jromerac7@opera.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19104187.jpg'),('19109453','ROLE_STU','배강민','990702-2******','F','의류학과','전라남도 나주시 영산포로 169-1 (이창동, 대구마트)','865-522-4261','ogebuhr8q@kickstarter.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19109453.jpg'),('19109454','ROLE_STU','하나길','000813-2******','F','심리학과','인천광역시 부평구 부평대로 88 (부평동, 부평대로우체국)','179-674-9011','bhopewellax@usatoday.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19109454.jpg'),('19111503','ROLE_STU','허샘','980414-2******','F','언론정보학과','경상남도 양산시 상북면 상북중앙로 411-1 (상북면, 서울목공소)','950-641-6208','bdoumenc5w@cbc.ca','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19111503.jpg'),('19118402','ROLE_STU','양우람','000402-2******','F','기계공학과','전라북도 고창군 대산면 사거1길 54-3 (대산면, 대로슈퍼)','941-449-9001','cmccay6o@elpais.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19118402.jpg'),('19136098','ROLE_STU','배경택','981118-1******','M','영어영문학과','경기도 오산시 원동로37번길 39 (원동, 대구슈퍼)','359-298-2082','mwallis2o@geocities.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19136098.jpg'),('19143945','ROLE_STU','전세호','991006-2******','F','경영학과','경기도 부천시 평천로 639 (약대동, 중동대로주유소)','200-586-4308','ejiroutkadq@nasa.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19143945.jpg'),('19179440','ROLE_STU','Ducham','980524-1******','M','국어국문학과','경상남도 함양군 지곡면 병곡지곡로 963 (지곡면, 대전식육식당)','103-954-7733','jducham7i@icio.us','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Peru','19179440.jpg'),('19189372','ROLE_STU','전동건','000826-1******','M','영어영문학과','경상북도 영천시 신녕면 불바위길 4 (신녕면, 대구한의원)','920-801-3004','amiddler1g@liveinternet.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19189372.jpg'),('19192126','ROLE_STU','Aldam','980726-1******','M','심리학과','경상북도 성주군 선남면 나선로 899 (선남면, 대구제재소)','244-993-3274','raldamc5@vkontakte.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','South Africa','19192126.jpg'),('19193538','ROLE_STU','임치원','980604-1******','M','의류학과','전라북도 고창군 대산면 대산시장길 10-3 (대산면, 대구식당)','822-118-5604','dnourse4r@fastcompany.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','19193538.jpg'),('19285757','ROLE_PROF','Stennard','820501-1******','M','체육학과','대전광역시 동구 대학로 62 (용운동, 대전대학교)','722-609-8847','wstennard4m@answers.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Slovenia','19285757.jpg'),('20121193','ROLE_STU','양승헌','990907-2******','F','영어영문학과','충청남도 보령시 원동2길 35 (대천동, 대전일보보령지국)','432-536-1349','awichard6k@is.gd','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20121193.jpg'),('20123808','ROLE_STU','Fouracres','011218-1******','M','기계공학과','제주특별자치도 서귀포시 중앙로 22 (서귀동, 서울감자탕)','222-209-2669','nfouracresab@youku.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Russia','20123808.jpg'),('20141374','ROLE_STU','조철','980622-2******','F','통계학과','경상남도 창원시 진해구 충장로364번가길 1 (이동, 서울포차)','298-147-0069','pcoskerry8d@fastcompany.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20141374.jpg'),('20142248','ROLE_STU','Alleyn','980712-2******','F','물리학과','서울특별시 영등포구 도림로 145 (대림동, 서울시남부도로사업소)','214-927-7118','galleyn7k@deviantart.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','20142248.jpg'),('20144609','ROLE_STU','Tzar','990825-2******','F','통계학과','경상남도 거창군 거창읍 주곡로 504-20 (거창읍, 대전식당)','684-500-5212','ptzar85@tiny.cc','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','20144609.jpg'),('20155510','ROLE_STU','남은샘','000217-2******','F','기계공학과','충청남도 청양군 목면 안심길 177-4 (목면, 대전노인회목면분회)','999-394-2108','sbage63@jiathis.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20155510.jpg'),('20165495','ROLE_STU','남빛가람','000722-2******','F','물리학과','충청남도 보령시 해수욕장2길 19 (신흑동, 서울시학생교육원대천임해수련분원)','501-538-6107','atrillow23@meetup.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20165495.jpg'),('20165528','ROLE_STU','예철순','981002-1******','M','언론정보학과','경상남도 진주시 큰들로150번길 10 (상평동, 부산원룸)','680-821-8883','dbradtkex@blogs.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20165528.jpg'),('20165868','ROLE_STU','황주원','010105-2******','F','건축학과','경상남도 사천시 사천읍 시장1길 8 (사천읍, 서울상회)','697-986-0410','dsinkings3h@theguardian.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20165868.jpg'),('20166057','ROLE_STU','Shevelin','981204-1******','M','사회복지학과','광주광역시 서구 학생독립로 37 (화정동, 광주광역시 청소년수련원, 청소년극장)','922-936-6365','eshevelin28@arizona.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Sweden','20166057.jpg'),('20173769','ROLE_STU','문힘찬','000321-2******','F','물리학과','충청남도 천안시 동남구 충절로 200 (원성동, 대로약국)','441-369-6646','tdevalci@abc.net.au','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20173769.jpg'),('20178628','ROLE_STU','최광조','980715-1******','M','경영학과','경상남도 거창군 거창읍 중앙로 123-5 (거창읍, 부산식당)','166-288-7386','afaughnyn@google.com.hk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20178628.jpg'),('20179587','ROLE_STU','장성','000428-2******','F','체육학과','부산광역시 부산진구 화지로 12 (양정동, 부산시교육청)','619-948-2793','fscaife51@sohu.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20179587.jpg'),('20187183','ROLE_STU','Refford','990912-1******','M','건축학과','대전광역시 대덕구 새말3길 29 (상서동, 대전크랑크)','150-708-3152','mrefford4y@usatoday.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Argentina','20187183.jpg'),('20240291','ROLE_PROF','표한샘','850905-1******','M','국어국문학과','강원도 춘천시 신동면 순환대로 20-12 (신동면)','177-729-7657','hellsom2q@usnews.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20240291.jpg'),('20255121','ROLE_PROF','박호','830705-1******','M','언어학과','경상북도 경주시 다불로 7 (용강동, 대구은행)','176-895-3123','gblinco1f@surveymonkey.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20255121.jpg'),('20256648','ROLE_PROF','최리','790230-2******','F','체육학과','강원도 영월군 주천면 평창강로 59 (주천면, 서울특별시 교육청 영월 야영교육장)','370-636-9512','hjimeno5i@issuu.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','20256648.jpg'),('21105406','ROLE_STU','송남순','011112-2******','F','체육학과','경상남도 의령군 의령읍 의병로 167-6 (의령읍, 서울우유)','116-370-3992','sbernardotti44@bravesites.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21105406.jpg'),('21118400','ROLE_STU','허보라','001113-1******','M','언어학과','강원도 화천군 화천읍 중앙로7길 14 (화천읍, 대구방앗간)','865-791-3167','mfrankish4f@yahoo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21118400.jpg'),('21118677','ROLE_STU','정치원','010225-1******','M','기계공학과','경상남도 통영시 멘데산업길 131 (정량동, 부산상회)','757-846-3424','schevis7o@latimes.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21118677.jpg'),('21124593','ROLE_STU','박찬호','011228-2******','F','영어영문학과','대구광역시 동구 동촌로 325 (신평동, 대한노인회 대구광역시 동구지회)','998-833-0983','rditchfieldbe@nba.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21124593.jpg'),('21149494','ROLE_STU','백지','021213-2******','F','사회학과','부산광역시 동구 수정공원북로 13 (수정동, 부산시동구대한노인회)','429-540-8214','crosencrantz48@hugedomains.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21149494.jpg'),('21150011','ROLE_STU','복승재','001229-1******','M','체육학과','경상남도 양산시 주남로 65 (주남동, 부산우유)','149-146-0397','crau6v@huffingtonpost.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21150011.jpg'),('21164493','ROLE_STU','Cresser','990824-1******','M','영어영문학과','대전광역시 중구 수도산로 9 (대흥동, 대전중학교)','585-341-0644','dcresser77@time.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','21164493.jpg'),('21212121','ROLE_PROF','박박사','791120-1******','M','컴퓨터공학과','경상남도 양산시 상북면 상북중앙로 81 (상북면, 대구슈퍼)','298-191-3841','gduggeth@irs.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21212121.jpg'),('21216968','ROLE_PROF','손한결','870727-1******','M','건축학과','전라북도 익산시 함열읍 와리3길 31 (함열읍, 대전의상실)','289-585-2115','eghidini82@alibaba.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21216968.jpg'),('21265836','ROLE_PROF','황보형','870919-2******','F','건축학과','울산광역시 북구 안시례길 22 (시례동, 대전기업)','614-822-0016','frannie1z@wsj.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','21265836.jpg'),('22102082','ROLE_STU','Giraudo','001124-2******','F','물리학과','강원도 동해시 일출로 215 (어달동, 대구민박)','179-623-3744','ggiraudob1@zimbio.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','22102082.jpg'),('22122035','ROLE_STU','한효은','031023-2******','F','수학과','경상북도 경산시 계양로8길 13 (계양동, 대구빌라)','773-545-8096','mphelips52@businessinsider.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','22122035.jpg'),('22145097','ROLE_STU','하태호','030401-2******','F','통계학과','경상남도 사천시 곤명면 완사3길 57 (곤명면, 부산우유)','472-839-4639','khowerd2@freewebs.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','22145097.jpg'),('22145874','ROLE_STU','Tollett','000211-2******','F','수학과','전라남도 강진군 대구면 청자로 1827 (대구면, 대구파출소)','492-360-6782','atollettd@hud.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','22145874.jpg'),('22151829','ROLE_STU','유여진','001213-1******','M','영어영문학과','대전광역시 서구 월평로13번길 23 (월평동, 대전빌라)','811-813-7803','mrawsen14@webs.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','22151829.jpg'),('22156790','ROLE_STU','황광조','030602-1******','M','수학과','경상북도 경주시 외동읍 석계산업단지길 66-51 (외동읍, 대구산업)','621-278-4798','jedginton37@mediafire.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','22156790.jpg'),('22173886','ROLE_STU','권광','011030-2******','F','의류학과','경상남도 창원시 마산회원구 봉양로 190 (봉암동, 부산은행)','706-678-2548','estiddard3v@drupal.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','22173886.jpg'),('22175972','ROLE_STU','송호','000608-2******','F','사회학과','전라남도 고흥군 두원면 두원로 1168 (두원면, 대전보건진료소)','649-705-9121','wtissell8s@weibo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','22175972.jpg'),('22186694','ROLE_STU','Malins','031030-2******','F','철학과','대전광역시 대덕구 새말3길 28 (상서동, 대전크랑크)','416-681-6086','mmalins4w@mayoclinic.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Albania','22186694.jpg'),('22266199','ROLE_PROF','정미르','890103-1******','M','철학과','경기도 성남시 중원구 여수대로 182 (여수동, 서울시도시철도공사모란기지사업소)','215-266-6964','jgrabert26@java.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','22266199.jpg'),('95101804','ROLE_STU','Weekland','760319-1******','M','영어영문학과','강원도 강릉시 강동면 동해대로 2003-22 (강동면)','968-720-6495','gweeklandd9@bandcamp.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Russia','95101804.jpg'),('95103515','ROLE_STU','홍희훈','750510-1******','M','심리학과','서울특별시 마포구 월드컵로 251 (성산동, 서울시생활체육협의회)','820-509-0277','obraverybd@cyberchimps.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95103515.jpg'),('95108044','ROLE_STU','Sheirlaw','730409-1******','M','철학과','경상남도 남해군 설천면 노량로195번길 10 (설천면, 서울횟집)','769-734-2891','hsheirlaw5r@istockphoto.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Iran','95108044.jpg'),('95108789','ROLE_STU','조훈','760422-2******','F','심리학과','서울특별시 강서구 화곡로 217-5 (화곡동, 우성대로빌라)','117-425-5202','ashorland17@utexas.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95108789.jpg'),('95109682','ROLE_STU','강빛가람','760306-1******','M','통계학과','경기도 오산시 역광장로 70-3 (오산동, 대전여인숙)','420-593-7648','kcuttler9b@house.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95109682.jpg'),('95109757','ROLE_STU','Varley','731021-1******','M','체육학과','서울특별시 영등포구 버드나루로18길 5 (당산동, 서울시의사회)','205-757-9726','cvarley97@netvibes.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Malaysia','95109757.jpg'),('95110536','ROLE_STU','손태연','740818-1******','M','통계학과','경상남도 하동군 화개면 석문길 8 (화개면, 부산식당)','472-977-0029','ckenny5b@goodreads.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95110536.jpg'),('95112934','ROLE_STU','사공린','731027-2******','F','경영학과','경상남도 사천시 사천읍 동구밖길 34 (사천읍, 부산학원)','297-960-6914','kdrews5d@booking.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95112934.jpg'),('95113162','ROLE_STU','남궁건','750401-2******','F','심리학과','제주특별자치도 서귀포시 대정읍 하모상가로 18-2 (대정읍, 대전여인숙)','106-408-7338','msymcoxe32@indiegogo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95113162.jpg'),('95113717','ROLE_STU','박은정','761018-2******','F','기계공학과','경상남도 통영시 사량면 내지길 22 (사량면, 부산민박)','666-597-6178','bbenoist5c@alibaba.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95113717.jpg'),('95115760','ROLE_STU','김훈','761120-2******','F','기계공학과','대구광역시 서구 달서로36길 17 (비산동, 대로하이츠3차)','713-978-2358','asilversmid1h@macromedia.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95115760.jpg'),('95120617','ROLE_STU','김노을','760908-1******','M','컴퓨터공학과','경기도 화성시 정남면 괘랑1길8번길 4 (정남면, 대로 그린빌라)','368-708-8057','msnipeb9@arizona.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95120617.jpg'),('95122232','ROLE_STU','노달','761226-2******','F','통계학과','울산광역시 남구 왕생로10번길 6 (달동, 대로빌라)','783-974-8067','kgonet49@1und1.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95122232.jpg'),('95123056','ROLE_STU','노한길','750221-1******','M','체육학과','강원도 춘천시 신동면 순환대로 316 (신동면)','583-224-7691','kdonetbh@guardian.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95123056.jpg'),('95123959','ROLE_STU','표미희','740728-2******','F','언어학과','충청남도 천안시 서북구 불당3길 19 (불당동, 대구뽈테기)','456-306-9293','twarfield8t@cbsnews.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95123959.jpg'),('95125678','ROLE_STU','서한길','750222-2******','F','영어영문학과','경기도 광주시 회안대로 350-17 (태전동, 광주시 청소년수련관)','492-697-3996','yeager4d@dell.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95125678.jpg'),('95127891','ROLE_STU','박린','751201-1******','M','기계공학과','경상남도 양산시 웅상대로 1392 (삼호동, 부산철제)','128-194-4443','cbroadway8m@list-manage.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95127891.jpg'),('95137834','ROLE_STU','김병헌','740506-1******','M','사회복지학과','충청남도 공주시 반포면 가마봉길 100 (반포면, 대전교육연수원)','491-994-4433','ifaunch8p@rakuten.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95137834.jpg'),('95138318','ROLE_STU','전치원','750101-2******','F','의류학과','경상남도 사천시 서부시장길 65 (동동, 서울한약방)','225-899-2211','iholdin6z@live.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95138318.jpg'),('95139429','ROLE_STU','박은채','760706-1******','M','경영학과','경기도 광주시 행정타운로 49-3 (송정동, 광주시선거관리위원회)','535-913-6117','teaganb5@phpbb.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95139429.jpg'),('95139516','ROLE_STU','하나라','760410-1******','M','사회학과','전라북도 정읍시 내장산로 930-10 (내장동, 동동주 대전회관)','302-354-8789','cwallege5p@tinyurl.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95139516.jpg'),('95141366','ROLE_STU','오여진','740314-2******','F','통계학과','충청북도 충주시 주덕읍 참샘길 120 (주덕읍, 대로산업(주))','291-407-8906','mgarricdt@ftc.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95141366.jpg'),('95142246','ROLE_STU','양철','760330-1******','M','건축학과','충청남도 당진시 합덕읍 합우로 49 (합덕읍, 대구농원)','548-525-8859','fdulton10@digg.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95142246.jpg'),('95144098','ROLE_STU','황보성한','740224-2******','F','수학과','경상남도 의령군 의령읍 수암로 33 (의령읍, 서울우유)','270-496-1212','mmelburyck@nyu.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95144098.jpg'),('95144718','ROLE_STU','오지','730604-2******','F','기계공학과','경기도 화성시 정남면 괘랑1길8번길 4-1 (정남면, 대로 그린빌라)','814-947-1855','rturbitt35@newyorker.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95144718.jpg'),('95151093','ROLE_STU','봉무영','760514-2******','F','사회복지학과','경상남도 창원시 성산구 원이대로580번길 21 (중앙동, 서울식당)','355-649-5961','rarmitage64@china.com.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95151093.jpg'),('95155237','ROLE_STU','남애정','730901-1******','M','물리학과','충청북도 단양군 영춘면 별방만종로 608 (영춘면, 대전식당)','860-500-4783','aphilippsohn1a@multiply.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95155237.jpg'),('95157160','ROLE_STU','안두리','740118-2******','F','경영학과','강원도 양양군 현남면 동해대로 849-39 (현남면)','172-220-7078','gmcmeekan5m@prnewswire.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95157160.jpg'),('95157895','ROLE_STU','Cheltnam','740601-1******','M','국어국문학과','경상남도 사천시 중앙시장2길 12-12 (선구동, 부산잡화상회)','950-809-7637','rcheltnamdr@com.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Ukraine','95157895.jpg'),('95161609','ROLE_STU','성나비','730809-1******','M','언어학과','경상북도 영덕군 남정면 진불1길 5 (남정면, 대구모텔)','259-442-6750','bmacfadden7f@tmall.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95161609.jpg'),('95161791','ROLE_STU','권유리','750921-2******','F','컴퓨터공학과','경기도 남양주시 화도읍 모꼬지로17번길 48-74 (화도읍, 서울특별시 학생교육원 대성리교육원)','977-290-6221','mdeblasidj@live.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95161791.jpg'),('95166464','ROLE_STU','Weyman','731221-2******','F','언론정보학과','경상남도 양산시 연호12길 31-9 (삼호동, 부산복집)','316-145-7475','rweyman9c@seesaa.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Philippines','95166464.jpg'),('95167558','ROLE_STU','허혁','740415-1******','M','심리학과','경상북도 예천군 예천읍 군청길 15-11 (예천읍, 대구슈퍼)','971-431-3994','kmercer4a@ft.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95167558.jpg'),('95167636','ROLE_STU','Hassen','730712-1******','M','사회학과','충청남도 보령시 웅천읍 충서로 977-30 (웅천읍, 대전석재)','282-719-2204','fhassen86@xing.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Czech Republic','95167636.jpg'),('95169217','ROLE_STU','조새벽','740324-2******','F','수학과','충청남도 보령시 한내로 28 (동대동, 대로빌딩)','443-175-5556','kbertot5e@constantcontact.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95169217.jpg'),('95172962','ROLE_STU','봉빛가람','740919-1******','M','영어영문학과','경상북도 영주시 구성로349번길 22 (영주동, 대구곡물상회)','850-553-0005','dlewcock4k@ed.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95172962.jpg'),('95174087','ROLE_STU','손지','760121-2******','F','언어학과','전라북도 익산시 고봉로18길 79-14 (영등동, 대로빌라)','584-371-5796','afellibrand2v@topsy.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95174087.jpg'),('95175773','ROLE_STU','김덕수','740718-1******','M','의류학과','강원도 춘천시 동내면 순환대로 608 (동내면)','428-188-7797','egallally27@myspace.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95175773.jpg'),('95177465','ROLE_STU','임린','730111-2******','F','통계학과','부산광역시 연제구 토곡로 74 (연산동, 부산광역시 영재교육진흥원)','319-615-1561','nbrech8z@nsw.gov.au','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95177465.jpg'),('95180310','ROLE_STU','홍미르','760505-2******','F','물리학과','충청북도 충주시 동량면 사천후동길 29 (동량면, 대전교회)','783-686-5951','rsegrott1k@cyberchimps.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95180310.jpg'),('95181146','ROLE_STU','Adaway','751021-1******','M','언어학과','경상남도 사천시 사천읍 평화2길 6 (사천읍, 서울설렁탕)','836-813-7978','vadaway7r@ifeng.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','France','95181146.jpg'),('95186008','ROLE_STU','Esley','750701-1******','M','언어학과','경기도 포천시 신읍2길 10-10 (신읍동, 대로빌라)','788-551-1207','hesley3k@1und1.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','95186008.jpg'),('95186689','ROLE_STU','손상','740206-1******','M','기계공학과','경상남도 함안군 가야읍 가야로 40 (가야읍, 서울안과)','907-705-6264','abanville3c@harvard.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95186689.jpg'),('95195955','ROLE_STU','황훈','730328-2******','F','철학과','대전광역시 중구 사정공원로 70 (사정동, 대전동물원)','153-725-2655','kpoundford5v@lycos.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95195955.jpg'),('95197851','ROLE_STU','Blazi','760622-2******','F','심리학과','경상남도 사천시 사천읍 동성길 7-1 (사천읍, 서울식당)','586-421-5157','mblazi13@army.mil','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Brazil','95197851.jpg'),('95217606','ROLE_PROF','손용욱','621022-1******','M','체육학과','경상북도 예천군 용궁면 용궁로 146-8 (용궁면, 대구철공소)','897-908-1860','afurst2t@quantcast.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95217606.jpg'),('95228603','ROLE_PROF','Eefting','490326-2******','F','언론정보학과','전라북도 군산시 내항2길 149 (금동, 대전횟집)','726-842-0267','seefting5q@unblog.fr','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Poland','95228603.jpg'),('95246667','ROLE_PROF','풍혁','480114-1******','M','경영학과','경상남도 남해군 삼동면 동부대로942번길 40-2 (삼동면, 서울상회)','583-417-8600','bambler2j@cdbaby.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95246667.jpg'),('95249409','ROLE_PROF','성광식','540930-2******','F','통계학과','울산광역시 북구 화봉로 125 (연암동, 대구식품)','913-501-6394','droskamsc2@slate.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95249409.jpg'),('95263449','ROLE_PROF','Lemmon','600709-1******','M','기계공학과','경상남도 남해군 창선면 창선로 70 (창선면, 서울이불)','771-782-7149','blemmona3@discovery.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Mauritius','95263449.jpg'),('95271428','ROLE_PROF','유남규','561017-2******','F','국어국문학과','경상남도 밀양시 부북면 운전1길 7 (부북면, 대전회관)','660-575-1772','dbrealey39@paginegialle.it','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95271428.jpg'),('95276513','ROLE_PROF','정린','600222-1******','M','물리학과','강원도 삼척시 근덕면 삼척로 2125 (근덕면, 대전회타운)','429-154-7840','kheelis9k@bravesites.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95276513.jpg'),('95296459','ROLE_PROF','추현','601209-2******','F','의류학과','경상남도 창원시 의창구 대산면 모산길 17 (대산면, 부산횟집)','851-239-0760','rcicchinelli56@icq.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95296459.jpg'),('95299906','ROLE_PROF','탁한별','480209-2******','F','체육학과','경상남도 진주시 남강로959번길 10 (상평동, 서울빌라)','485-459-4492','kcowden5j@barnesandnoble.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','95299906.jpg'),('96101273','ROLE_STU','하채윤','770612-1******','M','국어국문학과','강원도 홍천군 화촌면 야시대로 907 (화촌면)','788-583-3379','mbyrkmyrb6@omniture.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96101273.jpg'),('96101431','ROLE_STU','설해남','750621-2******','F','사회복지학과','대구광역시 남구 대명로 29 (대명동, 대구광역시 시설관리공단)','326-155-9363','lmaccracken9z@clickbank.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96101431.jpg'),('96102369','ROLE_STU','예가영','750703-2******','F','물리학과','경상남도 거창군 신원면 신차로 3050 (신원면, 부산철물)','220-523-6853','odarycott50@taobao.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96102369.jpg'),('96102476','ROLE_STU','풍가을','761019-2******','F','경영학과','경상남도 함양군 안의면 종로길 28 (안의면, 부산천막)','790-200-5533','pkellickde@php.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96102476.jpg'),('96109664','ROLE_STU','Wickenden','750412-2******','F','사회학과','강원도 평창군 대화면 평창대로 536-6 (대화면)','574-861-5469','cwickendenm@cocolog-nifty.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Russia','96109664.jpg'),('96112210','ROLE_STU','배민들레','760305-2******','F','사회학과','경상남도 통영시 항남1번가길 12 (항남동, 서울치과)','205-724-4011','nkohlert25@independent.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96112210.jpg'),('96115369','ROLE_STU','하달','761117-1******','M','건축학과','세종특별자치시 전의면 가톨릭대학로 30','499-925-5546','hjoseyau@amazon.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96115369.jpg'),('96122544','ROLE_STU','Cooke','740626-1******','M','물리학과','부산광역시 사하구 다대동로8번길 40 (다대동, 부산시수협다대공판장)','340-979-7191','dcookeq@mac.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Philippines','96122544.jpg'),('96124567','ROLE_STU','정담비','741210-1******','M','국어국문학과','경상남도 창원시 진해구 용재로67번길 11 (용원동, 부산원룸)','942-600-7924','rdowner4b@histats.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96124567.jpg'),('96131880','ROLE_STU','송재','760628-1******','M','수학과','충청남도 금산군 금산읍 인삼약초로 4 (금산읍, 대전한약방)','833-531-7367','vshallcrass2l@google.es','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96131880.jpg'),('96133704','ROLE_STU','Caldicot','750718-2******','F','건축학과','대구광역시 북구 구암로 155 (동천동, 대구광역시 동천소방관 파출소)','657-510-3025','acaldicot3b@google.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Colombia','96133704.jpg'),('96140559','ROLE_STU','제갈다솜','740128-1******','M','건축학과','인천광역시 옹진군 영흥면 내동로 183 (영흥면, 서울특별시 향교재단 연수원)','241-636-9103','mlepruvostbk@ftc.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96140559.jpg'),('96140562','ROLE_STU','하미란','751006-2******','F','수학과','경상남도 창원시 마산회원구 합성서11길 22 (합성동, 대구여인숙)','778-714-2146','cwoonton20@epa.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96140562.jpg'),('96141370','ROLE_STU','한미래','770313-1******','M','컴퓨터공학과','경기도 광주시 포은대로 692-6 (장지동, 광주시차량등록사업소)','778-687-8461','lmohring40@elegantthemes.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96141370.jpg'),('96141738','ROLE_STU','서일성','751018-1******','M','체육학과','강원도 삼척시 원덕읍 호산중앙로 5-66 (원덕읍, 대구상회)','406-934-0713','swinstone93@cbslocal.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96141738.jpg'),('96143888','ROLE_STU','임으뜸','770824-1******','M','물리학과','강원도 철원군 서면 와수로 29-10 (서면, 대로 목장)','909-651-0888','nmaccoveney4q@discovery.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96143888.jpg'),('96145460','ROLE_STU','홍믿음','740816-2******','F','컴퓨터공학과','서울특별시 중구 세종대로 125 (태평로1가, 서울시의회)','187-372-0216','gtribella8@angelfire.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96145460.jpg'),('96148872','ROLE_STU','노건','750213-2******','F','컴퓨터공학과','경상북도 영주시 광복로24번길 5 (영주동, 대구오락실)','327-772-8198','aschulze7d@live.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96148872.jpg'),('96158904','ROLE_STU','이빛가람','770308-1******','M','기계공학과','충청북도 단양군 어상천면 어상천로 972 (어상천면, 대전식당식육점)','425-236-4027','mkenwortheyac@shareasale.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96158904.jpg'),('96162208','ROLE_STU','강선호','740708-2******','F','의류학과','부산광역시 중구 용미길10번길 1 (남포동1가, 부산시수협)','121-894-0212','llintallaf@vistaprint.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96162208.jpg'),('96163840','ROLE_STU','서다래','760313-2******','F','국어국문학과','부산광역시 해운대구 수영강변대로 590 (반여동, 부산광안대로주유소)','738-288-5175','utreherne8v@newyorker.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96163840.jpg'),('96163982','ROLE_STU','윤남순','740502-2******','F','심리학과','강원도 양양군 현북면 동해대로 1536-14 (현북면)','391-628-3404','ahatfull4s@naver.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96163982.jpg'),('96172390','ROLE_STU','Rotte','750117-2******','F','국어국문학과','강원도 동해시 동해대로 5453 (평릉동)','887-566-0978','grotte3m@xing.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Philippines','96172390.jpg'),('96174387','ROLE_STU','한연희','760827-2******','F','통계학과','경상남도 통영시 중앙시장2길 11 (중앙동, 부산상회)','525-861-6540','lolyunina5@msn.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96174387.jpg'),('96181248','ROLE_STU','성상','760614-2******','F','철학과','경상남도 창원시 진해구 신항4로 15-82 (용원동, 부산크로스독)','346-435-0851','vnolton6g@devhub.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96181248.jpg'),('96182990','ROLE_STU','허영식','770406-2******','F','체육학과','전라남도 해남군 현산면 시등리길 52 (현산면, 대구양복점)','663-781-6957','ldeatta9n@home.pl','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96182990.jpg'),('96183431','ROLE_STU','Andreazzi','760707-1******','M','심리학과','강원도 평창군 용평면 평창대로 1742-8 (용평면)','689-238-5576','aandreazzi2b@ox.ac.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','96183431.jpg'),('96185360','ROLE_STU','복버들','760307-1******','M','언론정보학과','강원도 철원군 동송읍 이평1로45번길 12 (동송읍, 대구슈퍼)','214-191-9816','mdulsonct@jiathis.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96185360.jpg'),('96185555','ROLE_STU','권버들','761211-1******','M','수학과','제주특별자치도 서귀포시 칠십리로 383 (보목동, 부산천막)','759-893-7804','dohanessian2n@umn.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96185555.jpg'),('96188434','ROLE_STU','하병헌','770306-1******','M','국어국문학과','대전광역시 동구 대전천동로 508 (원동, 대전광역시 청소년위캔센터)','254-893-1171','ajeannaud7t@un.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96188434.jpg'),('96190596','ROLE_STU','송혜빈','750711-2******','F','컴퓨터공학과','경상남도 양산시 중앙로 99 (남부동, 부산식당)','982-624-6249','wloan83@wikimedia.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96190596.jpg'),('96193666','ROLE_STU','노두리','740120-1******','M','언론정보학과','충청남도 서산시 대산읍 영좌동길 120 (대산읍, 대로3리마을회관)','892-677-2608','dfellini3q@mtv.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96193666.jpg'),('96194151','ROLE_STU','임재인','751030-1******','M','언어학과','서울특별시 구로구 개봉로11길 38-7 (개봉동, 대로홈맨션)','375-636-2690','sdukes68@theguardian.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96194151.jpg'),('96196690','ROLE_STU','풍정자','761026-2******','F','사회복지학과','경상남도 창원시 진해구 용재로29번길 12-1 (용원동, 서울미용실)','614-310-9360','scorder4c@webeden.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96196690.jpg'),('96197424','ROLE_STU','류다운','750715-2******','F','심리학과','경상북도 예천군 호명면 도청대로 201 (호명면, 대구은행)','780-477-8481','lmatchett4x@pinterest.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96197424.jpg'),('96200943','ROLE_PROF','임나라우람','580908-2******','F','영어영문학과','경상남도 창원시 마산합포구 동서북10길 3 (부림동, 부산일보)','407-724-5110','nbirchall1s@themeforest.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96200943.jpg'),('96237399','ROLE_PROF','송경구','481124-2******','F','사회복지학과','경상북도 영천시 시청로 28 (문외동, 대구은행)','969-484-2909','ifrankel31@samsung.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96237399.jpg'),('96238195','ROLE_PROF','남연석','520324-1******','M','국어국문학과','강원도 춘천시 신동면 순환대로 309-112 (신동면)','866-400-8745','agalpen3@creativecommons.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96238195.jpg'),('96251345','ROLE_PROF','김민지','540525-2******','F','기계공학과','경상남도 거창군 위천면 원학길 419 (위천면, 대로축산작업장)','894-430-1403','fvossbf@multiply.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96251345.jpg'),('96261823','ROLE_PROF','Tzarkov','491104-2******','F','영어영문학과','서울특별시 성동구 천호대로78길 15-48 (용답동, 서울시투자기관교육복지통합센터)','995-954-5049','rtzarkov1e@sphinn.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','France','96261823.jpg'),('96266948','ROLE_PROF','강동우','591029-2******','F','물리학과','경상남도 하동군 적량면 대티길 6 (적량면, 부산식당)','503-290-5695','ryouhillcr@godaddy.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96266948.jpg'),('96282034','ROLE_PROF','박성빈','630101-2******','F','수학과','경상남도 남해군 미조면 미송로 14 (미조면, 부산낚시)','382-379-7826','rscrannager@mlb.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96282034.jpg'),('96285904','ROLE_PROF','하숙자','530420-2******','F','수학과','대전광역시 동구 계족로 395 (성남동, 대전연와)','881-426-4158','ibartot1x@cornell.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96285904.jpg'),('96299428','ROLE_PROF','남은일','620614-1******','M','기계공학과','경기도 과천시 장군마을3길 30 (주암동, 서울시보건환경연구원)','712-688-5174','lboulde4g@google.com.br','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','96299428.jpg'),('97100631','ROLE_STU','허혁','771120-1******','M','건축학과','충청북도 충주시 동량면 내동1길 19 (동량면, 대전보건진료소)','408-838-2509','fkrikorianb2@goodreads.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97100631.jpg'),('97104783','ROLE_STU','송다솜','760903-1******','M','철학과','강원도 춘천시 동내면 순환대로 575 (동내면)','802-445-6149','lgillivrie6p@tiny.cc','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97104783.jpg'),('97107569','ROLE_STU','송란','781104-1******','M','통계학과','충청남도 금산군 금산읍 금산천1길 79-1 (금산읍, 대전철물설비)','331-307-5873','ebottoms76@sciencedirect.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97107569.jpg'),('97110881','ROLE_STU','권철','761222-2******','F','영어영문학과','경상남도 양산시 상북면 반회서4길 12-18 (상북면, 부산방앗간)','612-746-8656','mcurrm8w@chronoengine.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97110881.jpg'),('97111017','ROLE_STU','표재신','751116-1******','M','사회학과','경상북도 영천시 금호읍 대구대길 333 (금호읍, 대구대학교)','976-912-5064','jrhule11@msu.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97111017.jpg'),('97111434','ROLE_STU','남바다','780306-1******','M','건축학과','전라남도 함평군 함평읍 중앙길 90 (함평읍, 광주약국)','678-912-8517','bcaybc@dropbox.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97111434.jpg'),('97113607','ROLE_STU','정란','770704-1******','M','의류학과','대전광역시 중구 보문로 331 (선화동, 대전세무서)','644-474-0910','asharplessdu@prweb.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97113607.jpg'),('97113662','ROLE_STU','신한결','751228-2******','F','사회복지학과','인천광역시 미추홀구 길파로35번길 26 (주안동, 대로빌라)','499-798-7025','areisenbt@sakura.ne.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97113662.jpg'),('97118253','ROLE_STU','백광','750806-2******','F','사회학과','강원도 고성군 현내면 동해대로 8190-1 (현내면)','930-835-1161','lkeuneke60@ask.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97118253.jpg'),('97119382','ROLE_STU','고미래','770904-1******','M','경영학과','대전광역시 유성구 테크노2로 214 (탑립동, 대전세관)','691-468-1719','hburtwellca@amazon.co.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97119382.jpg'),('97119866','ROLE_STU','풍호','751122-2******','F','국어국문학과','대구광역시 수성구 유니버시아드로42길 127 (대흥동, 대구광역시 체육회관)','508-886-2686','ddrohane30@amazon.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97119866.jpg'),('97122894','ROLE_STU','배광','760810-2******','F','심리학과','경상남도 통영시 동문로 59-1 (정량동, 부산우유)','320-483-0620','gyggo7g@xing.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97122894.jpg'),('97133338','ROLE_STU','Shortall','760217-1******','M','심리학과','경상북도 영주시 중앙로80번길 33-23 (하망동, 대구두루막)','578-269-4954','dshortalldh@umich.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','France','97133338.jpg'),('97138436','ROLE_STU','안미르','760723-1******','M','언어학과','서울특별시 용산구 독서당로20길 1-7 (한남동, 한국소비자연맹서울시지부)','693-562-7963','dginni6h@delicious.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97138436.jpg'),('97140968','ROLE_STU','Jellings','760930-2******','F','건축학과','부산광역시 사상구 강변대로 412 (엄궁동, 강변대로self주유소)','109-284-9485','ejellings84@icio.us','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','97140968.jpg'),('97145357','ROLE_STU','남궁수미','750219-1******','M','철학과','강원도 춘천시 동내면 순환대로 555 (동내면)','400-635-2112','adowthwaited0@wikimedia.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97145357.jpg'),('97146947','ROLE_STU','제갈고은','750915-1******','M','통계학과','강원도 강릉시 강릉대로 447 (포남동)','826-933-3379','hbrimmell8x@ustream.tv','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97146947.jpg'),('97150910','ROLE_STU','탁샘','760223-1******','M','기계공학과','광주광역시 광산구 평동산단7번로 72-18 (연산동, 대로물산)','369-548-9235','kdowbakincx@gov.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97150910.jpg'),('97151615','ROLE_STU','최혁','771206-1******','M','체육학과','대구광역시 수성구 국채보상로207길 37 (만촌동, 68년 대구시 공영주택)','760-594-6406','sinott41@nih.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97151615.jpg'),('97161604','ROLE_STU','남궁다운','750616-1******','M','건축학과','강원도 춘천시 동내면 순환대로 571 (동내면)','424-176-9507','ccamilleri4@dagondesign.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97161604.jpg'),('97163211','ROLE_STU','추훈','780301-2******','F','수학과','경상남도 사천시 사남면 초전로 28 (사남면, 부산우유)','617-515-3434','fcollop4e@booking.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97163211.jpg'),('97164788','ROLE_STU','풍성','750207-1******','M','사회복지학과','부산광역시 동래구 사직로 77 (사직동, 부산광역시 체육회관)','609-701-1035','stookeyc8@skype.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97164788.jpg'),('97164854','ROLE_STU','손그루','750713-2******','F','경영학과','경상남도 함안군 칠서면 계내2길 57 (칠서면, 서울횟집)','268-867-3501','amorratt19@springer.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97164854.jpg'),('97165937','ROLE_STU','강무열','780321-2******','F','물리학과','강원도 양양군 양양읍 동해대로 2772-4 (양양읍)','154-600-7906','esongust8y@globo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97165937.jpg'),('97177716','ROLE_STU','서송이','770306-1******','M','의류학과','부산광역시 사상구 가야대로 326-11 (주례동, 대한노인회부산시사상구지회)','373-720-1666','cpeegrem9e@umich.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97177716.jpg'),('97179741','ROLE_STU','유광조','760412-1******','M','국어국문학과','충청남도 당진시 교동길 151 (읍내동, 대전약국)','535-554-7848','lstuddert33@yandex.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97179741.jpg'),('97184914','ROLE_STU','배햇살','760924-2******','F','사회복지학과','경상남도 양산시 웅상대로 841 (덕계동, 부산전기)','325-934-4796','anoraway9@nyu.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97184914.jpg'),('97190513','ROLE_STU','윤가영','770712-1******','M','사회학과','경상남도 사천시 서부시장길 89-1 (서동, 대구청과)','651-447-5624','hsalatinoby@free.fr','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97190513.jpg'),('97194954','ROLE_STU','안웅','761015-1******','M','언론정보학과','경상남도 거제시 옥포로 178 (옥포동, 서울상가)','380-677-7494','jgawked5@homestead.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97194954.jpg'),('97206870','ROLE_PROF','강아라','500621-2******','F','언론정보학과','강원도 고성군 죽왕면 동해대로 5588-8 (죽왕면)','825-844-5117','nkoenen9t@livejournal.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97206870.jpg'),('97209783','ROLE_PROF','정자경','520622-2******','F','경영학과','경상북도 포항시 북구 천마로72번길 22 (양덕동, 대구은행)','768-926-7433','sohallihane5s@prnewswire.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97209783.jpg'),('97214089','ROLE_PROF','최상','541201-2******','F','컴퓨터공학과','경상북도 포항시 북구 천마로72번길 21 (양덕동, 대구은행)','316-880-5078','mbertholin6m@ocn.ne.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97214089.jpg'),('97214948','ROLE_PROF','김교수','570420-1******','M','물리학과','부산광역시 남구 신선로 223 (감만동, 대로타이어)','439-454-8511','pandreou65@ca.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97214948.jpg'),('97223502','ROLE_PROF','정치원','490106-1******','M','수학과','부산광역시 북구 함박봉로 98 (만덕동, 부산시노인전문병원)','200-479-3249','rballardo@oakley.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97223502.jpg'),('97224411','ROLE_PROF','심현','510325-1******','M','언론정보학과','제주특별자치도 제주시 천수로 89 (일도이동, 서울빌라)','592-541-6814','wjahns6n@foxnews.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97224411.jpg'),('97236728','ROLE_PROF','복은별','520929-1******','M','심리학과','경상남도 양산시 동면 산지로 61 (동면, 부산난원)','623-733-2060','mfantonetti2y@ucla.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97236728.jpg'),('97269644','ROLE_PROF','홍리','520501-2******','F','철학과','경상북도 성주군 성주읍 시장길 14-1 (성주읍, 대구한의원)','173-849-1191','iocarney3a@blogs.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97269644.jpg'),('97270285','ROLE_PROF','한다솜','500104-1******','M','사회학과','세종특별자치시 장군면 정동길 31-30','308-599-8099','dskudder18@google.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97270285.jpg'),('97273893','ROLE_PROF','고영신','540917-2******','F','사회복지학과','경상남도 창원시 진해구 용원로101번길 15 (용원동, 부산족발)','764-133-2280','rpollicottcv@nationalgeographic.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97273893.jpg'),('97276721','ROLE_PROF','예힘찬','640102-1******','M','언어학과','경상남도 창원시 진해구 용재로35번길 17 (용원동, 서울빌)','490-397-8335','siban6t@nbcnews.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97276721.jpg'),('97285470','ROLE_PROF','전현','600806-2******','F','컴퓨터공학과','전라북도 익산시 고봉로18길 87-15 (영등동, 대로빌라)','712-988-7049','psturroran@intel.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97285470.jpg'),('97299813','ROLE_PROF','Domnin','630107-2******','F','건축학과','경상북도 청도군 이서면 대전칠엽길 108 (이서면, 대전교회)','845-437-8412','jdomnin9p@cnbc.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Mongolia','97299813.jpg'),('97393234','ROLE_ADMIN','표나봄','500515-2******','F','인사','서울특별시 강동구 고덕로 183 (고덕동, 서울특별시 동부기술교육원)','636-669-8705','hboarder1t@surveymonkey.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','97393234.jpg'),('98103194','ROLE_STU','신바람','781121-1******','M','건축학과','경상남도 양산시 하북면 신평강변3길 6 (하북면, 부산우유)','526-922-3498','cbowheyc4@yellowpages.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98103194.jpg'),('98104620','ROLE_STU','남강민','790702-2******','F','영어영문학과','대구광역시 북구 칠성남로 112 (칠성동2가, 대구광역시 소방안전본부, 북부소방서)','653-701-8646','oborastondd@illinois.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98104620.jpg'),('98104890','ROLE_STU','Canero','781230-1******','M','사회학과','대구광역시 서구 달서로14길 14-7 (비산동, 대로주택)','536-615-6947','kcanero57@ocn.ne.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Russia','98104890.jpg'),('98106637','ROLE_STU','Abbs','780909-2******','F','언론정보학과','서울특별시 구로구 개봉로15길 33 (개봉동, 대로빌라)','797-795-9648','babbs2d@miibeian.gov.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Russia','98106637.jpg'),('98107476','ROLE_STU','황보철','770115-2******','F','철학과','제주특별자치도 서귀포시 태평로371번길 29-1 (서귀동, 서울양복점)','191-162-2985','bjeynessc0@nifty.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98107476.jpg'),('98108958','ROLE_STU','박미란','770712-1******','M','통계학과','경상남도 통영시 충렬로 18 (서호동, 서울슈퍼)','141-649-6103','nfrodshamay@epa.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98108958.jpg'),('98112458','ROLE_STU','고미래','760416-1******','M','체육학과','경상남도 의령군 부림면 신번로10길 7 (부림면, 부산장의사)','526-697-7422','fwinsomav@engadget.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98112458.jpg'),('98120147','ROLE_STU','예훈','770317-1******','M','체육학과','부산광역시 북구 낙동북로 737-1 (구포동, 부산광역시 학생예술문화회관)','466-408-6846','nroblett66@goo.ne.jp','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98120147.jpg'),('98123758','ROLE_STU','정성현','780620-1******','M','사회학과','경상남도 통영시 욕지면 서촌아랫길 117 (욕지면, 부산미용실)','954-137-6598','smantrup4h@bing.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98123758.jpg'),('98127721','ROLE_STU','성상','780927-1******','M','물리학과','강원도 속초시 동해대로 4320 (교동)','102-192-0498','isumpter1y@techcrunch.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98127721.jpg'),('98128085','ROLE_STU','사공자경','760423-2******','F','철학과','서울특별시 양천구 남부순환로 595 (신월동, 서울시개인택시운송사업조합)','383-647-2921','ealtoft98@e-recht24.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98128085.jpg'),('98128104','ROLE_STU','류민은','790210-1******','M','언론정보학과','경상남도 거창군 고제면 지경길 119-87 (고제면, 부산농장)','510-312-3512','nthomann4v@mashable.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98128104.jpg'),('98130927','ROLE_STU','문태웅','790912-2******','F','기계공학과','경기도 광주시 파발로 176 (경안동, 광주시공설운동장)','474-649-0331','oahmad47@istockphoto.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98130927.jpg'),('98138550','ROLE_STU','고웅','760724-2******','F','컴퓨터공학과','경기도 파주시 문산읍 문산로40번길 15 (문산읍, 대전상회)','101-432-0743','awithringten9l@livejournal.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98138550.jpg'),('98142303','ROLE_STU','손훈','760911-2******','F','의류학과','충청북도 단양군 매포읍 평동19길 3 (매포읍, 대구막창)','461-269-5975','iliversleybq@etsy.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98142303.jpg'),('98142548','ROLE_STU','복이레','791215-2******','F','체육학과','광주광역시 북구 암매길 80 (운정동, 광주광역시 위생매립장)','805-914-0244','gkeelin4o@cisco.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98142548.jpg'),('98144004','ROLE_STU','추재','760210-2******','F','사회복지학과','전라북도 부안군 부안읍 당산로 115 (부안읍, 대전열쇠)','459-342-7540','smoncurap@nasa.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98144004.jpg'),('98144698','ROLE_STU','Jorn','780811-1******','M','의류학과','전라남도 나주시 동강면 동강로 239 (동강면, 동강대전보건진료소)','436-577-8733','rjorn99@cornell.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','98144698.jpg'),('98145272','ROLE_STU','최이경','790112-1******','M','언론정보학과','경상남도 함안군 칠서면 회산2길 85 (칠서면, 대구공업사)','459-547-9075','ophilipsohn9h@storify.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98145272.jpg'),('98146439','ROLE_STU','오승헌','790122-2******','F','물리학과','경상남도 창원시 진해구 대야남로 66-1 (태백동, 서울분식)','763-508-1437','chourihane3j@hubpages.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98146439.jpg'),('98147857','ROLE_STU','탁나라','760621-1******','M','건축학과','경상남도 거제시 거제중앙로 1898 (고현동, 서울의원)','988-528-3299','mrosenfelderg@clickbank.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98147857.jpg'),('98151670','ROLE_STU','신훈','780926-2******','F','건축학과','경상남도 창원시 진해구 안골로108번길 36 (안골동, 서울식당)','950-288-5420','bbaguley67@purevolume.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98151670.jpg'),('98154539','ROLE_STU','문은채','790425-2******','F','수학과','강원도 춘천시 동내면 순환대로 565-11 (동내면)','306-206-4752','ymanzell5a@theglobeandmail.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98154539.jpg'),('98156951','ROLE_STU','전나라','761119-2******','F','국어국문학과','경상북도 청송군 주왕산면 공원길 213 (주왕산면, 대구슈퍼)','867-738-1563','tmccrory75@ucoz.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98156951.jpg'),('98157244','ROLE_STU','설훈','760929-2******','F','수학과','부산광역시 동구 중앙대로251번길 13 (초량동, 천도교부산시교구)','424-921-6712','ehuygens8l@timesonline.co.uk','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98157244.jpg'),('98159767','ROLE_STU','송우람','781108-2******','F','철학과','경상북도 예천군 지보면 지보로 203 (지보면, 대구오토바이)','916-223-8644','fmeth6s@etsy.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98159767.jpg'),('98161362','ROLE_STU','Inchbald','770719-2******','F','컴퓨터공학과','제주특별자치도 제주시 진군길 56-11 (노형동, 대구원룸)','550-777-6877','minchbaldcq@ucsd.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','98161362.jpg'),('98171416','ROLE_STU','Pretorius','770528-1******','M','수학과','경상남도 창원시 마산합포구 진전면 의산삼일로 10-15 (진전면, 대전교회)','711-265-9304','npretorius9j@hp.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Nigeria','98171416.jpg'),('98178800','ROLE_STU','Keling','780104-1******','M','영어영문학과','경상남도 사천시 사천읍 평화2길 40-11 (사천읍, 부산식당)','922-233-5907','lkelingbl@biblegateway.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Brazil','98178800.jpg'),('98181064','ROLE_STU','안현','781111-1******','M','기계공학과','충청북도 청주시 상당구 미원면 미원초정로 1 (미원면, 대전유리)','403-935-2818','jvest43@examiner.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98181064.jpg'),('98182374','ROLE_STU','복재섭','781116-2******','F','언어학과','경상북도 영주시 풍기읍 죽령로1381번길 136 (풍기읍, 대구농원)','461-513-3130','scushworth3l@mozilla.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98182374.jpg'),('98187855','ROLE_STU','황하경','780926-2******','F','경영학과','경상북도 경산시 진량읍 상림2길 10-8 (진량읍, 대구원룸)','732-407-0058','bbollinidi@apple.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98187855.jpg'),('98188599','ROLE_STU','황보설','780620-1******','M','영어영문학과','경상남도 함안군 가야읍 중앙남1길 19-2 (가야읍, 서울헤어)','266-618-6528','jtradewellda@sohu.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98188599.jpg'),('98193195','ROLE_STU','Bettridge','780219-2******','F','국어국문학과','경상북도 예천군 예천읍 효자로 108-1 (예천읍, 대구식당)','105-669-6295','jbettridge5x@state.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Lithuania','98193195.jpg'),('98194905','ROLE_STU','봉경구','771226-1******','M','통계학과','경상북도 영주시 풍기읍 동성로76번길 18 (풍기읍, 대구교복사)','753-132-4603','apudsallah@irs.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98194905.jpg'),('98198172','ROLE_STU','문건','770402-2******','F','언론정보학과','부산광역시 연제구 연제로 28 (연산동, 부산광역시 선거관리위원회)','116-254-7365','sjaumet7q@com.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98198172.jpg'),('98204804','ROLE_PROF','문미르','510413-1******','M','통계학과','경상북도 울릉군 울릉읍 도동1길 30 (울릉읍, 대구호텔)','308-387-9782','trillstonebj@illinois.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98204804.jpg'),('98237637','ROLE_PROF','성혁','660605-1******','M','건축학과','경기도 시흥시 공단2대로 127 (정왕동, 공단2대로43)','487-222-4139','bpetrovdg@theguardian.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98237637.jpg'),('98240713','ROLE_PROF','Chalke','610403-2******','F','컴퓨터공학과','강원도 양양군 현남면 동해대로 959-10 (현남면)','856-913-8260','echalke6r@fema.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Iran','98240713.jpg'),('98248569','ROLE_PROF','예영애','610327-1******','M','심리학과','서울특별시 광진구 아차산로30길 36 (자양동, 서울특별시 동부여성발전센타)','492-101-3655','kdomoni8g@seesaa.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98248569.jpg'),('98297800','ROLE_PROF','추재규','510310-1******','M','의류학과','전라북도 임실군 운암면 강운로 1221-17 (운암면, 대전산장)','734-174-2238','ctanser8a@domainmarket.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98297800.jpg'),('98350349','ROLE_ADMIN','전숙자','640628-1******','M','재무','경기도 파주시 탄현면 필승로 330-102 (탄현면, 고려통일대전)','610-129-0046','dwinleycl@who.int','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','98350349.jpg'),('98372061','ROLE_ADMIN','Dreghorn','531106-2******','F','기획','경기도 남양주시 금곡로 43 (금곡동, 대로빌딩)','553-480-9729','adreghorn1r@edublogs.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','98372061.jpg'),('99101175','ROLE_STU','임성','791130-2******','F','물리학과','충청남도 당진시 당진중앙2로 53-9 (읍내동, 대전일보)','328-792-6020','rduxbury42@examiner.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99101175.jpg'),('99107577','ROLE_STU','정웅','801205-1******','M','체육학과','강원도 춘천시 신동면 순환대로 20-13 (신동면)','528-243-3682','dcardenasaj@spotify.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99107577.jpg'),('99111714','ROLE_STU','황보다운','790515-1******','M','철학과','강원도 속초시 동해대로 4125 (조양동)','350-957-0474','bpodburyba@symantec.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99111714.jpg'),('99117106','ROLE_STU','Bubbear','791027-1******','M','컴퓨터공학과','강원도 춘천시 동내면 순환대로 565-3 (동내면)','178-424-3513','gbubbear6e@posterous.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Sweden','99117106.jpg'),('99124899','ROLE_STU','남무영','770801-1******','M','언론정보학과','대전광역시 동구 중앙로 215 (정동, 대전역)','346-522-8340','pbard7@tmall.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99124899.jpg'),('99128242','ROLE_STU','예나라우람','800409-1******','M','수학과','경기도 파주시 파주읍 가마울길 135 (파주읍, 대구휠타)','279-394-3127','rfranceschelli7w@theatlantic.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99128242.jpg'),('99132069','ROLE_STU','류상','780923-1******','M','물리학과','경기도 파주시 조리읍 정문로 3-2 (조리읍, 대로애드)','783-229-6207','ecolumbine9d@nsw.gov.au','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99132069.jpg'),('99134963','ROLE_STU','추철','770419-2******','F','의류학과','대전광역시 대덕구 대전로 1283 (대화동, 대전기공)','867-962-8838','kmeas9r@economist.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99134963.jpg'),('99135036','ROLE_STU','봉믿음','771220-2******','F','사회복지학과','충청북도 청주시 서원구 현도면 우록1길 50 (현도면, 대전기공)','601-267-7229','swhitter2k@google.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99135036.jpg'),('99135606','ROLE_STU','문웅','790208-2******','F','경영학과','서울특별시 송파구 동남로4길 6 (문정동, 대전빌딩)','274-884-2422','khlavecek1b@opensource.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99135606.jpg'),('99136955','ROLE_STU','박덕수','770712-2******','F','언어학과','경상남도 창원시 마산합포구 동서동4길 16 (신포동2가, 부산공업)','574-399-8295','tchesters7j@homestead.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99136955.jpg'),('99140982','ROLE_STU','Grindley','781121-2******','F','영어영문학과','서울특별시 중구 퇴계로26길 52 (예장동, 서울시소방재난본부)','334-184-1946','tgrindley6b@webnode.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Indonesia','99140982.jpg'),('99146775','ROLE_STU','탁건','770304-1******','M','사회복지학과','전라북도 익산시 고봉로18길 83-13 (영등동, 대로빌라)','397-978-9855','tthiolier9g@elegantthemes.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99146775.jpg'),('99154775','ROLE_STU','Pollins','800214-1******','M','기계공학과','충청북도 괴산군 청천면 청천3길 15-1 (청천면, 대구수석)','787-197-5418','cpollins5y@slashdot.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Philippines','99154775.jpg'),('99157379','ROLE_STU','Gansbuhler','771214-2******','F','컴퓨터공학과','충청남도 당진시 합덕읍 도란말2길 61 (합덕읍, (주)대로)','533-277-5794','ngansbuhler6u@illinois.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Poland','99157379.jpg'),('99158834','ROLE_STU','권병헌','780215-1******','M','철학과','충청북도 보은군 속리산면 법주사로 252-1 (속리산면, 대구상회)','328-894-9958','ffowlestone6a@hexun.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99158834.jpg'),('99159042','ROLE_STU','표우람','770103-1******','M','체육학과','대구광역시 서구 달서로14길 20-2 (비산동, 대로하이츠)','600-825-2404','rprinettt@desdev.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99159042.jpg'),('99161386','ROLE_STU','풍훈','800918-2******','F','수학과','충청남도 천안시 서북구 쌍용대로 129-1 (쌍용동, 대로부동산)','477-789-2065','lbyrcher69@uiuc.edu','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99161386.jpg'),('99162332','ROLE_STU','최건','790328-1******','M','심리학과','경상남도 함안군 군북면 중암5길 11 (군북면, 부산식당)','786-974-7465','cmcnairaz@themeforest.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99162332.jpg'),('99164679','ROLE_STU','안현승','771105-1******','M','의류학과','울산광역시 중구 해오름14길 40 (남외동, 대로전원빌라)','877-407-9417','bkristufekae@weibo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99164679.jpg'),('99167651','ROLE_STU','김샘','771110-1******','M','경영학과','전라남도 담양군 대전면 대전로 4 (대전면, 대전파출소)','898-711-2639','ywolver8h@odnoklassniki.ru','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99167651.jpg'),('99170018','ROLE_STU','김성혁','771229-1******','M','경영학과','인천광역시 남동구 에코중앙로 25-55 (고잔동, 대로수출포장)','185-162-9157','lboyton38@reference.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99170018.jpg'),('99171742','ROLE_STU','표요한','771104-2******','F','컴퓨터공학과','경상남도 양산시 물금읍 황산로 351 (물금읍, 서울식당)','711-919-4968','gkitchaside9o@cpanel.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99171742.jpg'),('99172098','ROLE_STU','제갈한결','770305-1******','M','언어학과','대전광역시 대덕구 동서대로 1790 (비래동, 대전한성교회)','753-983-2530','cmathewcf@ask.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99172098.jpg'),('99172969','ROLE_STU','유샛별','801019-2******','F','언론정보학과','충청남도 금산군 진산면 만악길 25-12 (진산면, 대전ATV체험장)','612-279-2240','dschwandermanndn@hc360.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99172969.jpg'),('99173220','ROLE_STU','제갈으뜸','780322-2******','F','경영학과','강원도 춘천시 동내면 순환대로 565-10 (동내면)','210-336-9750','adeeley5l@goodreads.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99173220.jpg'),('99178514','ROLE_STU','윤현','780629-2******','F','국어국문학과','서울특별시 중랑구 양원역로 38 (망우동, 서울시북부병원 및 시립중랑노인전문요양원)','569-726-2135','ematokhninbo@samsung.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99178514.jpg'),('99179911','ROLE_STU','윤치원','781112-2******','F','체육학과','광주광역시 동구 중앙로160번길 31-37 (황금동, 광주광역시 청소년 삶디자인센터)','635-241-8600','cveracruysseb8@elpais.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99179911.jpg'),('99181013','ROLE_STU','남치원','790407-1******','M','사회학과','경상남도 통영시 해송정2길 13 (동호동, 부산보살)','765-985-8927','abrawley2h@networksolutions.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99181013.jpg'),('99185489','ROLE_STU','김우영','801228-2******','F','기계공학과','전라북도 정읍시 서부산업도로 168-61 (상평동, 대전해외관광)','908-939-8411','eelegoodcg@earthlink.net','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99185489.jpg'),('99187512','ROLE_STU','Maass','791023-2******','F','물리학과','경상남도 남해군 고현면 탑동로 55-1 (고현면, 서울의원)','761-807-5872','kmaassa7@yahoo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Nicaragua','99187512.jpg'),('99188532','ROLE_STU','권미란','781207-2******','F','사회학과','경상남도 양산시 덕계로 91 (덕계동, 부산은행)','744-123-7096','mturton36@china.com.cn','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99188532.jpg'),('99188717','ROLE_STU','정이수','780622-1******','M','사회복지학과','부산광역시 연제구 월드컵대로 399 (거제동, 부산광역시 개인택시운송사업조합)','948-484-2935','jphilippson9y@prnewswire.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99188717.jpg'),('99193449','ROLE_STU','손혜림','790303-1******','M','영어영문학과','제주특별자치도 서귀포시 남원읍 위미중앙로 240 (남원읍, 대구청과)','110-178-2180','mabreheart88@go.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99193449.jpg'),('99194300','ROLE_STU','Tolson','780526-2******','F','의류학과','충청남도 계룡시 두마면 사계로 184 (두마면, 대전우편집중국)','297-499-8455','mtolsondo@multiply.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Kazakhstan','99194300.jpg'),('99195608','ROLE_STU','김웅','800603-2******','F','영어영문학과','경상남도 양산시 공단로 78 (신기동, 부산세차장)','437-801-6131','lcockerill4j@mozilla.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99195608.jpg'),('99203458','ROLE_PROF','송지해','580706-2******','F','사회학과','경상남도 창원시 의창구 사림로29번길 1 (봉곡동, 서울석재)','552-651-9494','trivett80@hibu.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99203458.jpg'),('99212905','ROLE_PROF','Wissby','620614-2******','F','국어국문학과','강원도 삼척시 하장면 오두재로 4 (하장면, 대전슈퍼)','791-537-1007','awissby1c@techcrunch.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Colombia','99212905.jpg'),('99242637','ROLE_PROF','정병헌','630322-1******','M','경영학과','경상남도 양산시 삼호5길 36-1 (삼호동, 부산가든)','731-715-4069','echarlina2@pcworld.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99242637.jpg'),('99249681','ROLE_PROF','황상','520723-2******','F','철학과','경상남도 사천시 서부시장길 91 (서동, 부산천막사)','888-340-7487','lllewhellinat@nps.gov','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99249681.jpg'),('99250159','ROLE_PROF','노혁','651117-2******','F','건축학과','대전광역시 중구 학고개로34번길 56 (옥계동, 대구빌라)','974-989-4050','gfeldhuhnd6@w3.org','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99250159.jpg'),('99253149','ROLE_PROF','사공훈','570409-2******','F','사회학과','제주특별자치도 서귀포시 표선면 표선관정로104번길 8-1 (표선면, 서울상회)','814-160-1036','cnorthcliffec@blogtalkradio.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99253149.jpg'),('99255215','ROLE_PROF','Chipchase','670206-1******','M','언어학과','경상남도 하동군 하동읍 중앙로 51 (하동읍, 서울바베큐)','599-909-7077','gchipchase2g@paypal.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Norway','99255215.jpg'),('99261832','ROLE_PROF','Detoc','510515-2******','F','체육학과','제주특별자치도 서귀포시 중앙로62번길 62 (서귀동, 서울 우유)','780-597-1680','cdetocb7@t-online.de','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Vanuatu','99261832.jpg'),('99289861','ROLE_PROF','Garthland','571221-2******','F','심리학과','경상북도 청송군 부남면 나실길 80 (부남면, 대전3리경로당)','942-784-3451','cgarthlanddb@angelfire.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','Papua New Guinea','99289861.jpg'),('99295054','ROLE_PROF','풍나영','620804-2******','F','사회복지학과','경상남도 양산시 하북면 신평로 45 (하북면, 서울뚝배기)','325-702-2873','esnalham1q@jigsy.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99295054.jpg'),('99333770','ROLE_ADMIN','유샛별','580412-1******','M','재무','경상남도 양산시 서창서1길 27-1 (삼호동, 부산식육점)','672-522-0692','wpfleger74@dagondesign.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','대한민국','99333770.jpg'),('99376683','ROLE_ADMIN','Raffin','541112-2******','F','기획','부산광역시 수영구 광일로 8-8 (광안동, 대로베스파빌)','125-454-3538','iraffindf@wufoo.com','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','China','99376683.jpg'),('test123','ROLE_STU','황하경','971113-2******','F','컴퓨터공학과','충청북도 단양군 어상천면 대전1길 42 (어상천면, 대전2리마을회)','010-5187-1104','burnrare@naver.com','$2a$10$DftcXwni.Q1Tb7UhO74SXeq1yFvTtGpOQYiLTC4A3WCz5Y1OTTCx6','대한민국','test123.jpg'),('testprof','ROLE_PROF','용교수','810604-1******','M','컴퓨터공학과','경상남도 사천시 동금4길 37 (동금동, 서울복집)','testphone2','testemail2','$2a$10$2CDDaqUcVkuSxWI5vGIXl.MTfoPGHpnFKcaDdOt5LzsZTdg8s8VGC','testnation2','testprof.jpg');
/*!40000 ALTER TABLE `k_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matchigId_seq`
--

DROP TABLE IF EXISTS `matchigId_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matchigId_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matchigId_seq`
--

LOCK TABLES `matchigId_seq` WRITE;
/*!40000 ALTER TABLE `matchigId_seq` DISABLE KEYS */;
INSERT INTO `matchigId_seq` VALUES (8001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `matchigId_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_id_seq`
--

DROP TABLE IF EXISTS `notice_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_id_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_id_seq`
--

LOCK TABLES `notice_id_seq` WRITE;
/*!40000 ALTER TABLE `notice_id_seq` DISABLE KEYS */;
INSERT INTO `notice_id_seq` VALUES (11000,1,9223372036854775806,1000,1,1000,0,0);
/*!40000 ALTER TABLE `notice_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_no_seq`
--

DROP TABLE IF EXISTS `notice_no_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice_no_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_no_seq`
--

LOCK TABLES `notice_no_seq` WRITE;
/*!40000 ALTER TABLE `notice_no_seq` DISABLE KEYS */;
INSERT INTO `notice_no_seq` VALUES (8001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `notice_no_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_d_id_seq`
--

DROP TABLE IF EXISTS `quiz_d_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_d_id_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_d_id_seq`
--

LOCK TABLES `quiz_d_id_seq` WRITE;
/*!40000 ALTER TABLE `quiz_d_id_seq` DISABLE KEYS */;
INSERT INTO `quiz_d_id_seq` VALUES (14001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `quiz_d_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_h_id_seq`
--

DROP TABLE IF EXISTS `quiz_h_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_h_id_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_h_id_seq`
--

LOCK TABLES `quiz_h_id_seq` WRITE;
/*!40000 ALTER TABLE `quiz_h_id_seq` DISABLE KEYS */;
INSERT INTO `quiz_h_id_seq` VALUES (15001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `quiz_h_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_r_id_seq`
--

DROP TABLE IF EXISTS `quiz_r_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_r_id_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_r_id_seq`
--

LOCK TABLES `quiz_r_id_seq` WRITE;
/*!40000 ALTER TABLE `quiz_r_id_seq` DISABLE KEYS */;
INSERT INTO `quiz_r_id_seq` VALUES (15001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `quiz_r_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_seq`
--

DROP TABLE IF EXISTS `quiz_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quiz_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_seq`
--

LOCK TABLES `quiz_seq` WRITE;
/*!40000 ALTER TABLE `quiz_seq` DISABLE KEYS */;
INSERT INTO `quiz_seq` VALUES (15005,1,9223372036854775806,5,1,1000,0,0);
/*!40000 ALTER TABLE `quiz_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduleSeq`
--

DROP TABLE IF EXISTS `scheduleSeq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduleSeq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduleSeq`
--

LOCK TABLES `scheduleSeq` WRITE;
/*!40000 ALTER TABLE `scheduleSeq` DISABLE KEYS */;
INSERT INTO `scheduleSeq` VALUES (16001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `scheduleSeq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_seq`
--

DROP TABLE IF EXISTS `schedule_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_seq`
--

LOCK TABLES `schedule_seq` WRITE;
/*!40000 ALTER TABLE `schedule_seq` DISABLE KEYS */;
INSERT INTO `schedule_seq` VALUES (1,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `schedule_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score_seq`
--

DROP TABLE IF EXISTS `score_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score_seq`
--

LOCK TABLES `score_seq` WRITE;
/*!40000 ALTER TABLE `score_seq` DISABLE KEYS */;
INSERT INTO `score_seq` VALUES (11000,1,9223372036854775806,1000,1,1000,0,0);
/*!40000 ALTER TABLE `score_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq_mysql`
--

DROP TABLE IF EXISTS `seq_mysql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seq_mysql` (
  `id` int(11) NOT NULL,
  `seq_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_mysql`
--

LOCK TABLES `seq_mysql` WRITE;
/*!40000 ALTER TABLE `seq_mysql` DISABLE KEYS */;
INSERT INTO `seq_mysql` VALUES (0,'scheduleSeq'),(0,'careerqid');
/*!40000 ALTER TABLE `seq_mysql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sq_career_h_id`
--

DROP TABLE IF EXISTS `sq_career_h_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sq_career_h_id` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sq_career_h_id`
--

LOCK TABLES `sq_career_h_id` WRITE;
/*!40000 ALTER TABLE `sq_career_h_id` DISABLE KEYS */;
INSERT INTO `sq_career_h_id` VALUES (11001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `sq_career_h_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sq_career_list`
--

DROP TABLE IF EXISTS `sq_career_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sq_career_list` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sq_career_list`
--

LOCK TABLES `sq_career_list` WRITE;
/*!40000 ALTER TABLE `sq_career_list` DISABLE KEYS */;
INSERT INTO `sq_career_list` VALUES (4001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `sq_career_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sq_career_q_id`
--

DROP TABLE IF EXISTS `sq_career_q_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sq_career_q_id` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sq_career_q_id`
--

LOCK TABLES `sq_career_q_id` WRITE;
/*!40000 ALTER TABLE `sq_career_q_id` DISABLE KEYS */;
INSERT INTO `sq_career_q_id` VALUES (11001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `sq_career_q_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sq_mtr_id`
--

DROP TABLE IF EXISTS `sq_mtr_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sq_mtr_id` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sq_mtr_id`
--

LOCK TABLES `sq_mtr_id` WRITE;
/*!40000 ALTER TABLE `sq_mtr_id` DISABLE KEYS */;
INSERT INTO `sq_mtr_id` VALUES (12001,1,9223372036854775806,1,1,1000,0,0);
/*!40000 ALTER TABLE `sq_mtr_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sq_notice_id`
--

DROP TABLE IF EXISTS `sq_notice_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sq_notice_id` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sq_notice_id`
--

LOCK TABLES `sq_notice_id` WRITE;
/*!40000 ALTER TABLE `sq_notice_id` DISABLE KEYS */;
INSERT INTO `sq_notice_id` VALUES (23,1,9223372036854775806,17,1,0,0,0);
/*!40000 ALTER TABLE `sq_notice_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_code_seq`
--

DROP TABLE IF EXISTS `timetable_code_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable_code_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_code_seq`
--

LOCK TABLES `timetable_code_seq` WRITE;
/*!40000 ALTER TABLE `timetable_code_seq` DISABLE KEYS */;
INSERT INTO `timetable_code_seq` VALUES (2000,1,9223372036854775806,1000,1,1000,0,0);
/*!40000 ALTER TABLE `timetable_code_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable_id_seq`
--

DROP TABLE IF EXISTS `timetable_id_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable_id_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) unsigned NOT NULL,
  `cycle_option` tinyint(1) unsigned NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB SEQUENCE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable_id_seq`
--

LOCK TABLES `timetable_id_seq` WRITE;
/*!40000 ALTER TABLE `timetable_id_seq` DISABLE KEYS */;
INSERT INTO `timetable_id_seq` VALUES (2000,1,9223372036854775806,1000,1,1000,0,0);
/*!40000 ALTER TABLE `timetable_id_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kcy'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_terms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`kcy`@`%` FUNCTION `fn_terms`(p_sch_id varchar(100)
  ) RETURNS varchar(100) CHARSET utf8mb4
begin
  	declare v_sch_title varchar(100);
  
  SELECT sch_title
  into v_sch_title
  from k_schedule
  where sch_id = p_sch_id;
 
 return v_sch_title;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `test` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`kcy`@`%` PROCEDURE `test`(classId varchar(100))
BEGIN
	declare sch_start  Date;
declare x int;
	set x = 1;
	set sch_start = 2022-03-08;
	loop_label:LOOP
		if x < 10 then
			leave loop_label;
			end if;
		set sch_start = DATE_ADD(sch_start, INTERVAL 1 week);
	insert  k_class_schedule(class_id,class_sch_date,class_sch_id) values (classId,sch_start,nextval(schedule_seq));
	END LOOP;
END ;;
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

-- Dump completed on 2022-09-27  9:07:22
