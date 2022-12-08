-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: bc_db
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answer` (
  `ans_num` int NOT NULL,
  `ans_title` varchar(45) NOT NULL,
  `ans_content` varchar(200) NOT NULL,
  `ans_writer` varchar(45) NOT NULL,
  `ans_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ans_num`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`ans_num`) REFERENCES `questions` (`ques_num`) ON DELETE CASCADE,
  CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`ans_num`) REFERENCES `questions` (`ques_num`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES (17,'re:qweqw124','<p>124124</p>\r\n','admin','2022-12-02 02:13:25'),(18,'re:1','','admin','2022-12-02 02:20:27'),(19,'re:1','<p>asd</p>\r\n','admin','2022-12-02 02:20:42'),(23,'re:232','<p>asd</p>\r\n','admin','2022-12-02 02:29:51'),(25,'re:23232','','admin','2022-12-02 02:22:53'),(27,'re:234234','<p>asdasd</p>\r\n','admin','2022-12-02 02:23:04'),(28,'re:23423','','admin','2022-12-02 02:24:43'),(29,'re:1515','','admin','2022-12-02 02:28:45'),(30,'re:235235','','admin','2022-12-02 02:27:21'),(32,'re:asd','<p>asd</p>\r\n','admin','2022-12-07 00:52:35'),(33,'re:문의입니다.','<p>답변입니다.</p>\r\n','admin','2022-12-07 06:05:40');
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(20) NOT NULL,
  `view_cnt` int DEFAULT '0',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `up_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (161,'title1','content1','admin',1,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(162,'title2','content2','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(163,'title3','content3','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(164,'title4','content4','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(165,'title5','content5','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(166,'title6','content6','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(167,'title7','content7','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(168,'title8','content8','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(169,'title9','content9','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(170,'title10','content10','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(171,'title11','content11','admin',2,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(172,'title12','content12','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(173,'title13','content13','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(174,'title14','content14','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(175,'title15','content15','admin',1,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(176,'title16','content16','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(177,'title17','content17','admin',1,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(178,'title18','content18','admin',0,'2022-11-03 11:33:32','2022-11-03 11:33:32'),(181,'안녕하세요','<p>안녕하세요 반갑습니다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/ch1/resources/img/bb7ccbe0-bdb1-4860-a185-238881058c19logo.png\" style=\"height:55px; width:222px\" />입니다</p>\r\n','admin',15,'2022-11-07 09:33:29','2022-11-11 12:05:51'),(182,'안녕하세요2','<p>ㅁㄴㅇㅁㅇㄴㅁ</p>\r\n\r\n<p><img alt=\"\" src=\"/ch1/resources/img/a81fa420-5c57-47ce-8d78-8f12b7d8eafdlogo.jpg\" style=\"height:55px; width:222px\" /></p>\r\n\r\n<p>ㅁㄴㅇㄴㅁㅇㅁㄴ</p>\r\n','admin',12,'2022-11-11 17:24:38','2022-11-11 17:24:38'),(183,'asdasd123','<p>asdasd123</p>\r\n','admin',9,'2022-11-23 16:41:49','2022-11-23 16:41:59'),(184,'asd','<p>asd</p>\r\n','admin',6,'2022-12-02 10:19:08','2022-12-02 10:19:08'),(185,'asdasd','<p>asdasd</p>\r\n','admin',0,'2022-12-07 09:56:47','2022-12-07 09:56:47'),(186,'공지사항입니다.','<p>공지</p>\r\n','admin',0,'2022-12-07 15:04:08','2022-12-07 15:04:08');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comm_comment`
--

DROP TABLE IF EXISTS `comm_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comm_comment` (
  `comm_num` int NOT NULL,
  `comm_comm_num` int NOT NULL AUTO_INCREMENT,
  `comm_comm_content` text NOT NULL,
  `comm_comm_writer` varchar(45) NOT NULL,
  `comm_comm_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comm_comm_up` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comm_comm_num`),
  KEY `comm_num` (`comm_num`),
  CONSTRAINT `comm_comment_ibfk_1` FOREIGN KEY (`comm_num`) REFERENCES `community` (`comm_num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comm_comment`
--

LOCK TABLES `comm_comment` WRITE;
/*!40000 ALTER TABLE `comm_comment` DISABLE KEYS */;
INSERT INTO `comm_comment` VALUES (306,5,'asdasdsa\ndsadsad\nasdsadsa','asdf','2022-11-18 01:18:48',NULL),(306,6,'asda','admin','2022-11-18 03:25:42',NULL),(306,7,'dsad','admin','2022-11-18 03:25:44',NULL),(306,8,'dsad','admin','2022-11-18 03:25:45',NULL),(306,9,'dsad','admin','2022-11-18 03:25:47',NULL),(307,10,'asda','asdf','2022-11-18 04:11:17',NULL),(307,11,'asdsa','asdf','2022-11-18 04:11:26',NULL),(306,12,'asdsad','asd','2022-11-23 07:48:40',NULL),(306,13,'dsadsa','asd','2022-11-23 07:48:43',NULL),(306,14,'dsadsa','asd','2022-11-23 07:48:46',NULL),(306,15,'dsadsa','asd','2022-11-23 07:48:48',NULL),(306,16,'dsadsadsadsa\ndsadsad\ndsad\ndsa','asd','2022-11-23 07:48:54',NULL),(306,17,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','asd','2022-11-23 07:49:01',NULL),(306,18,'aaaaaaaaa                aaaaaaaaaaaaaaa','asd','2022-11-23 07:49:06',NULL),(306,19,'15','bctour88','2022-12-02 01:12:26',NULL),(306,20,'15','bctour88','2022-12-02 01:12:27',NULL),(306,21,'123','bctour88','2022-12-02 01:12:29',NULL),(306,22,'123123','bctour88','2022-12-02 01:12:34',NULL),(308,24,'asd','bctour88','2022-12-02 01:14:14',NULL),(308,25,'asd','bctour88','2022-12-02 01:14:15',NULL),(308,26,'asd','bctour88','2022-12-02 01:14:18',NULL),(308,27,'asd','bctour88','2022-12-02 01:14:23',NULL),(308,28,'asd','bctour88','2022-12-02 01:14:25',NULL),(308,29,'asd','bctour88','2022-12-02 01:14:26',NULL),(308,30,'asd','bctour88','2022-12-02 01:14:28',NULL),(308,31,'asd','bctour88','2022-12-02 01:14:30',NULL),(308,32,'asd','bctour88','2022-12-02 01:14:31',NULL),(308,33,'asd','bctour88','2022-12-02 01:14:33',NULL),(308,34,'asd','bctour88','2022-12-02 01:14:34',NULL),(308,35,'asd','bctour88','2022-12-02 01:14:36',NULL),(308,37,'asdsad','bctour88','2022-12-07 00:23:38',NULL),(310,38,'asdasdsadsad','bctour88','2022-12-07 00:23:50','2022-12-07 00:24:08');
/*!40000 ALTER TABLE `comm_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `comm_num` int NOT NULL AUTO_INCREMENT,
  `comm_title` varchar(45) NOT NULL,
  `comm_content` text NOT NULL,
  `comm_writer` varchar(45) NOT NULL,
  `comm_view` int DEFAULT '0',
  `comm_comment` int DEFAULT '0',
  `comm_reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `comm_up_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comm_num`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (258,'1번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(259,'2번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(260,'3번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(261,'4번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(262,'5번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(263,'6번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(264,'7번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(265,'8번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(266,'9번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(267,'10번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(268,'11번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(269,'12번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(270,'13번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(271,'14번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(272,'15번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(273,'16번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(274,'17번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(275,'18번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(276,'19번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(277,'20번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(278,'21번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(279,'22번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(280,'23번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(281,'24번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(282,'25번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(283,'26번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(284,'27번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(285,'28번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(286,'29번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(287,'30번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(288,'31번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(289,'32번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(290,'33번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(291,'34번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(292,'35번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(293,'36번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(294,'37번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(295,'38번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(296,'39번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(297,'40번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(298,'41번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(299,'42번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(300,'43번글','no content','asdf',0,0,'2022-11-17 07:39:13',NULL),(301,'44번글','no content','asdf',0,0,'2022-11-17 07:39:14',NULL),(302,'45번글','no content','asdf',0,0,'2022-11-17 07:39:14',NULL),(303,'46번글','no content','asdf',0,0,'2022-11-17 07:39:14',NULL),(304,'47번글','no content','asdf',0,0,'2022-11-17 07:39:14',NULL),(305,'48번글','no content','asdf',1,0,'2022-11-17 07:39:14',NULL),(306,'49번글','<ol>\r\n	<li>리스트1</li>\r\n	<li>리스트2</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>리스트a</li>\r\n	<li>리스트b</li>\r\n</ul>\r\n','asdf',39,16,'2022-11-17 07:39:14','2022-11-18 01:15:44'),(307,'50번글','<ol>\r\n	<li>no content</li>\r\n	<li>2번리스트</li>\r\n	<li>3번리스트</li>\r\n	<li><strong>4번 굵은글씨</strong></li>\r\n	<li><strong><em>5번 굵은 기울임</em></strong>\r\n	<ol>\r\n		<li><s>6번 취소선 들여쓰기</s></li>\r\n	</ol>\r\n	</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>7번 점 리스트</li>\r\n</ul>\r\n\r\n<p>8번 내어쓰기</p>\r\n\r\n<blockquote>\r\n<p>9번 인용단락</p>\r\n</blockquote>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>0</td>\r\n			<td>번</td>\r\n		</tr>\r\n		<tr>\r\n			<td>표</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<hr />\r\n<p>줄 삽입</p>\r\n\r\n<p>&oelig;특수문자</p>\r\n','asdf',8,2,'2022-11-17 07:39:14','2022-11-18 01:14:45'),(308,'커피원두','<p>&nbsp;<img alt=\"\" src=\"/ch1/resources/img/bca4ea8a-bf29-4369-ab18-e071bcc53cdb커피원두.jpg\" style=\"height:140px; width:200px\" />&nbsp; 커피원두이다</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/ch1/resources/img/a9ce14a7-864a-4609-a86d-f8ffd8efa542cupcakes.jpg\" style=\"height:133px; width:200px\" />&nbsp;컵케익이다</p>\r\n','asd',42,13,'2022-11-23 07:50:12','2022-11-23 07:50:45'),(310,'asdasd','<p>asdsad</p>\r\n','bctour88',8,1,'2022-12-02 01:15:54','2022-12-07 00:24:18'),(312,'asdsad','<p>asdsad</p>\r\n','bctour88',9,0,'2022-12-07 00:25:02',NULL);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mem_email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('aa7','123123','aa7','aa7@aa2.com','010-1234-1234','2022-11-09 02:16:26'),('aa8','123123','aa8','aa8@aa2.com','010-1234-1234','2022-11-09 02:16:45'),('admin','1234','admin','admin@asdf.com','010-1234-1234','2022-11-14 05:36:40'),('asas','123456','asas','asas@asas.com','010-1234-1234','2022-11-03 00:26:14'),('asd','123456','asd','asd@asd.com','010-1234-1234','2022-11-03 00:25:37'),('asdasd','asdasd','asdasd','asdasd@asdasdas','010-1234-1234','2022-12-01 01:06:36'),('asdasd12','asdasd','비씨투어','bctour88@gmail.comasasd','010-1234-1212','2022-12-06 03:35:54'),('asdasdasd','asdasd','asdasd','asdasd@asdasd','010-0000-0000','2022-11-29 08:33:47'),('asdf','1234','asdf','asdf@asdf.com','010-1234-1234','2022-11-03 00:13:44'),('bctour88','test1','비씨투어','bctour88@gmail.com','010-1234-1234','2022-12-07 05:50:54'),('bctour8812','123123','비씨투어','bctour88@gmail.comqweqwe','010-0000-0000','2022-12-06 05:51:27'),('bctour88asd','asdasd','비씨투어','bctour88@gmail.comas','010-1234-1234','2022-12-01 07:27:59'),('test5','test1234','test','test5@test','010-0000-0000','2022-11-29 07:40:53'),('test6','test1234','test','test6@test','010-0000-0000','2022-11-29 07:40:53'),('test7','test1234','test','test7@test','010-0000-0000','2022-11-29 07:40:53'),('test8','test1234','test','test8@test','010-0000-0000','2022-11-29 07:40:53'),('test9','test1234','test','test9@test','010-0000-0000','2022-11-29 07:40:54');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_info`
--

DROP TABLE IF EXISTS `pd_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_info` (
  `pd_num` int NOT NULL AUTO_INCREMENT,
  `pd_city` varchar(45) DEFAULT NULL,
  `pd_img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `pd_title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pd_subtitle` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pd_days` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pd_price` int DEFAULT NULL,
  `pd_transport` char(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pd_departDay` timestamp NULL DEFAULT NULL,
  `pd_departStart` varchar(40) DEFAULT NULL,
  `pd_departEnd` varchar(40) DEFAULT NULL,
  `pd_deportDay` timestamp NULL DEFAULT NULL,
  `pd_deportStart` varchar(40) DEFAULT NULL,
  `pd_deportEnd` varchar(40) DEFAULT NULL,
  `pd_visitCity` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pd_totalScore` int DEFAULT '0',
  `pd_totalScoreMember` int DEFAULT '0',
  `pd_buyCnt` int DEFAULT '0',
  `reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reviewCheck` int DEFAULT '0',
  PRIMARY KEY (`pd_num`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_info`
--

LOCK TABLES `pd_info` WRITE;
/*!40000 ALTER TABLE `pd_info` DISABLE KEYS */;
INSERT INTO `pd_info` VALUES (11,'seoul','강남.png','#강남 #한류 스타거리 #유명인','#맛집 #쇼핑 #에이전시','1',10000,'버스','2022-12-06 15:00:00','09:00','10:30','2022-12-06 15:00:00','18:00','19:30','강남',0,0,17,'2022-11-23 04:07:40',0),(12,'seoul','명동의밤.jpg','#명동의 밤 #먹거리 #놀거리','#명동피플 #소리질러','2',11000,'버스','2022-12-04 15:00:00','09:30','11:00','2022-12-05 15:00:00','19:00','20:30','명동',0,0,9,'2022-11-24 01:07:14',0),(14,'seoul','KakaoTalk_20221205_140923796.jpg','#서울 #63빌딩 #한강뷰','#빌딩숲 #한강','2',15000,'버스','2022-12-05 15:00:00','10:00','11:30','2022-12-06 15:00:00','19:00','20:30','서울',NULL,1,12,'2022-11-28 03:19:59',0),(15,'seoul','남산타워.jpg','#서울 #불꽃놀이 #아름다운풍경','#불꽃놀이 #볼거리','1',22000,'버스','2022-12-05 15:00:00','08:30','10:30','2022-12-05 15:00:00','18:00','19:30','서울',0,0,14,'2022-11-28 03:20:49',0),(27,'uijeongbu','수락산.png','#의정부 #수락산 #등산','#야호~ #영차','1',10000,'버스','2022-12-07 15:00:00','06:00','07:00','2022-12-07 15:00:00','17:00','18:00','의정부',0,0,1,'2022-12-06 01:34:56',0),(37,'uijeongbu','천보산.png','#의정부3ㅁㄴㅇ','#의정부3ㅁㄴㅇㅁㄴㅇ','2',20000,'버스','2022-12-06 15:00:00','12:00','13:00','2022-12-07 15:00:00','12:00','13:00','서울',0,0,0,'2022-11-28 05:57:03',0),(48,'seoul','KakaoTalk_20221205_140923951.jpg','#서울 #서울나들이 #남산타워','#서울은 역시 남산타워','2',10000,'버스','2022-11-30 15:00:00','12:00','13:00','2022-12-01 15:00:00','12:00','13:00','서울',0,0,0,'2022-12-05 07:19:48',0),(49,'seoul','강남스크린.jpg','#강남  #전시회 #박람회 #별마당도서관','#책부자 #대형스크린 #볼거리','1',20000,'버스','2022-12-07 15:00:00','09:00','10:30','2022-12-07 15:00:00','20:00','21:30','강남',0,0,0,'2022-12-05 07:51:08',0),(51,'uijeongbu','녹색거리.png','#의정부 #녹색거리 #테마거리','#쇼핑 #먹거리 #당일치기','1',15000,'버스','2022-12-06 15:00:00','09:00','10:00','2022-12-06 15:00:00','19:00','20:00','의정부',0,0,2,'2022-12-06 01:29:39',0),(52,'uijeongbu','미륵암.png','#의정부 #절 #마음의 휴식 #템플스테이','#나무아미타불 #심신안정 #108번뇌','2',30000,'버스','2022-12-09 15:00:00','09:00','10:00','2022-12-10 15:00:00','20:00','21:00','의정부',0,0,1,'2022-12-06 01:32:38',0),(55,'uijeongbu','로데오거리.png','#의정부 #로데오거리 #패션명소','#젊음 #핫피플','2',15000,'버스','2022-12-07 15:00:00','10:00','11:00','2022-12-08 15:00:00','19:00','20:00','의정부',0,0,3,'2022-12-06 01:02:44',0),(56,'seoul','경복궁.jfif','#서울여행','#경복궁 #납시오','1',15000,'버스','2022-12-06 15:00:00','11:00','12:00','2022-12-06 15:00:00','20:00','21:00','서울',3,1,0,'2022-12-06 07:31:56',0);
/*!40000 ALTER TABLE `pd_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_score`
--

DROP TABLE IF EXISTS `pd_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_score` (
  `pd_scoreNum` int NOT NULL AUTO_INCREMENT,
  `pd_num` int DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `pd_scorePoint` int DEFAULT '0',
  `pd_departDay` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`pd_scoreNum`),
  KEY `pd_score_ibfk_1` (`pd_num`),
  KEY `id` (`id`),
  CONSTRAINT `pd_score_ibfk_1` FOREIGN KEY (`pd_num`) REFERENCES `pd_info` (`pd_num`) ON DELETE CASCADE,
  CONSTRAINT `pd_score_ibfk_2` FOREIGN KEY (`id`) REFERENCES `member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_score`
--

LOCK TABLES `pd_score` WRITE;
/*!40000 ALTER TABLE `pd_score` DISABLE KEYS */;
INSERT INTO `pd_score` VALUES (30,15,'admin',0,'2022-12-05 15:00:00'),(33,37,'admin',0,'2022-12-06 15:00:00'),(40,48,'admin',0,'2022-11-30 15:00:00'),(41,14,'admin',NULL,'2022-11-11 15:00:00'),(42,12,'admin',0,'2022-12-06 15:00:00'),(43,11,'admin',0,'2022-12-06 15:00:00'),(44,49,'admin',0,'2022-12-07 15:00:00'),(45,49,'bctour8812',0,'2022-12-07 15:00:00'),(46,27,'bctour8812',0,'2022-12-07 15:00:00'),(52,56,'admin',0,'2022-12-06 15:00:00'),(56,56,'test5',3,'2022-12-06 15:00:00'),(57,27,'admin',0,'2022-12-07 15:00:00'),(58,56,'bctour88',3,'2022-12-06 15:00:00');
/*!40000 ALTER TABLE `pd_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pd_wish`
--

DROP TABLE IF EXISTS `pd_wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pd_wish` (
  `pd_wishNum` int NOT NULL AUTO_INCREMENT,
  `id` varchar(45) DEFAULT NULL,
  `pd_num` int DEFAULT NULL,
  `pd_img` varchar(45) DEFAULT NULL,
  `pd_title` varchar(45) DEFAULT NULL,
  `pd_subtitle` varchar(45) DEFAULT NULL,
  `pd_days` int DEFAULT NULL,
  `pd_price` int DEFAULT NULL,
  `pd_wishCheck` int DEFAULT '0',
  PRIMARY KEY (`pd_wishNum`),
  KEY `id` (`id`),
  KEY `pd_num` (`pd_num`),
  CONSTRAINT `pd_wish_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pd_wish_ibfk_2` FOREIGN KEY (`pd_num`) REFERENCES `pd_info` (`pd_num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pd_wish`
--

LOCK TABLES `pd_wish` WRITE;
/*!40000 ALTER TABLE `pd_wish` DISABLE KEYS */;
INSERT INTO `pd_wish` VALUES (32,'admin',15,NULL,'#서울2','#서울2',3,22000,0),(36,'admin',14,NULL,'#서울','#서울',2,15000,0),(37,'asd',14,NULL,'#서울','#서울',2,15000,1),(38,'admin',37,NULL,'#의정부3','#의정부3',2,20000,0),(39,'asdasd',15,NULL,'#서울2','#서울2',3,22000,1),(40,'asdasd',14,NULL,'#서울asas','#서울asas',2,15000,1),(51,'test5',56,NULL,'#서울여행','#경복궁 #납시오',1,15000,0),(52,'bctour88',56,NULL,'#서울여행','#경복궁 #납시오',1,15000,0);
/*!40000 ALTER TABLE `pd_wish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `ques_num` int NOT NULL AUTO_INCREMENT,
  `ques_title` varchar(45) NOT NULL,
  `ques_content` text NOT NULL,
  `ques_writer` varchar(45) NOT NULL,
  `ques_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ansbool` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ques_num`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (17,'qweqw','<p>qwe</p>\r\n','bctour88','2022-12-02 02:12:25',1),(18,'1','<p>2</p>\r\n','bctour88','2022-12-02 02:12:27',1),(19,'1','<p>2</p>\r\n','bctour88','2022-12-02 02:12:28',1),(20,'1','<p>3</p>\r\n','bctour88','2022-12-02 02:12:31',0),(21,'123','<p>2</p>\r\n','bctour88','2022-12-02 02:12:35',0),(22,'23','<p>23</p>\r\n','bctour88','2022-12-02 02:12:38',0),(23,'232','<p>32</p>\r\n','bctour88','2022-12-02 02:12:40',1),(24,'232','<p>32</p>\r\n','bctour88','2022-12-02 02:12:41',0),(25,'23232','<p>2323</p>\r\n','bctour88','2022-12-02 02:12:44',1),(26,'234234','<p>234234</p>\r\n','bctour88','2022-12-02 02:12:47',0),(27,'234234','<p>234324</p>\r\n','bctour88','2022-12-02 02:12:50',1),(28,'23423','<p>234234234</p>\r\n','bctour88','2022-12-02 02:12:57',1),(29,'1515','<p>1515</p>\r\n','bctour88','2022-12-02 02:13:01',1),(30,'235235','<p>235235</p>\r\n','bctour88','2022-12-02 02:13:04',1),(32,'asd','<p>asd</p>\r\n','test5','2022-12-07 00:50:05',1),(33,'문의입니다.','<p>나문희</p>\r\n','bctour88','2022-12-07 06:00:01',1);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rec_comment`
--

DROP TABLE IF EXISTS `rec_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rec_comment` (
  `rec_num` int NOT NULL,
  `rec_comm_num` int NOT NULL AUTO_INCREMENT,
  `rec_comm_content` text NOT NULL,
  `rec_comm_writer` varchar(45) NOT NULL,
  `rec_comm_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rec_comm_up` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`rec_comm_num`),
  KEY `rec_num` (`rec_num`),
  CONSTRAINT `rec_comment_ibfk_1` FOREIGN KEY (`rec_num`) REFERENCES `recommend` (`rec_num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rec_comment`
--

LOCK TABLES `rec_comment` WRITE;
/*!40000 ALTER TABLE `rec_comment` DISABLE KEYS */;
INSERT INTO `rec_comment` VALUES (77,52,'123123','admin','2022-11-29 02:05:52',NULL),(77,70,'2','admin','2022-12-02 01:19:40',NULL),(77,71,'3','admin','2022-12-02 01:19:43',NULL),(77,72,'','admin','2022-12-02 01:19:44',NULL),(77,73,'','admin','2022-12-02 01:19:46',NULL),(77,74,'6','admin','2022-12-02 01:19:47',NULL),(77,75,'7','admin','2022-12-02 01:19:49',NULL),(77,76,'8','admin','2022-12-02 01:19:51',NULL),(77,77,'9','admin','2022-12-02 01:19:52',NULL),(77,78,'10\n','admin','2022-12-02 01:19:56',NULL),(77,79,'11','admin','2022-12-02 01:19:58',NULL),(77,80,'12','admin','2022-12-02 01:20:00',NULL),(77,81,'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','admin','2022-12-06 01:25:55',NULL),(77,82,'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz','admin','2022-12-06 01:26:02',NULL),(77,83,'asd','test5','2022-12-07 00:48:39',NULL);
/*!40000 ALTER TABLE `rec_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend` (
  `rec_num` int NOT NULL AUTO_INCREMENT,
  `rec_title` varchar(45) NOT NULL,
  `rec_content` text NOT NULL,
  `rec_writer` varchar(45) NOT NULL,
  `rec_view` int DEFAULT '0',
  `rec_recommend` int DEFAULT '0',
  `rec_comment` int DEFAULT '0',
  `rec_scorePoint` int DEFAULT '0',
  `rec_scoreCheck` int DEFAULT '0',
  `rec_reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `rec_up_date` timestamp NULL DEFAULT NULL,
  `pd_num` int DEFAULT NULL,
  PRIMARY KEY (`rec_num`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (77,'서울 국내여행 후기','<p>정말 좋아요~! 한강을 바라보면서 친구들과 놀다보니 스트레스도 풀리고 높은 건물들과 수 많은 사람들이 바쁘게</p>\r\n\r\n<p>움직이는 것을 보니 저도 다시 열정이 불타오르더라구요~</p>\r\n\r\n<p>사람들이 너무 많아 정신없었지만 즐거웠던 여행이었습니다!</p>\r\n\r\n<p><img alt=\"\" src=\"/ch1/resources/img/c481614c-d911-43f5-ab2b-04a3a9a4faafKakaoTalk_20221205_140923796.jpg\" style=\"height:200px; width:300px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n','admin',162,50,15,0,0,'2022-11-30 15:00:00','2022-12-06 01:26:33',14),(79,'title','contents','asdf',0,17,0,0,0,'2022-12-06 06:18:05',NULL,NULL),(80,'title','contents','asdf',0,30,0,0,0,'2022-12-06 06:18:10',NULL,NULL),(81,'title','contents','asdf',0,20,0,0,0,'2022-12-06 06:18:10',NULL,NULL),(82,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:10',NULL,NULL),(83,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:10',NULL,NULL),(84,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:10',NULL,NULL),(85,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:10',NULL,NULL),(86,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:10',NULL,NULL),(87,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(88,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(89,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(90,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(91,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(92,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(93,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(94,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(95,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:11',NULL,NULL),(96,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(97,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(98,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(99,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(100,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(101,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(102,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(103,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(104,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:12',NULL,NULL),(105,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:13',NULL,NULL),(106,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:13',NULL,NULL),(107,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:13',NULL,NULL),(108,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:14',NULL,NULL),(109,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:14',NULL,NULL),(110,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:14',NULL,NULL),(111,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:14',NULL,NULL),(112,'title','contents','asdf',1,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(113,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(114,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(115,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(116,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(117,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(118,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(119,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(120,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:15',NULL,NULL),(121,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:16',NULL,NULL),(122,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:16',NULL,NULL),(123,'title','contents','asdf',0,0,0,0,0,'2022-12-06 06:18:16',NULL,NULL),(124,'title','contents','asdf',3,0,0,0,0,'2022-12-06 06:18:16',NULL,NULL),(128,'리뷰','<p>리뷰<img alt=\"\" src=\"/ch1/resources/img/c49e991c-5f17-4f46-bac1-710e31c6443c서울.jfif\" style=\"height:100px; width:100px\" /></p>\r\n','bctour88',5,0,0,0,0,'2022-12-07 05:57:41','2022-12-07 05:58:29',56);
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendboolean`
--

DROP TABLE IF EXISTS `recommendboolean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendboolean` (
  `mem_id` varchar(45) NOT NULL,
  `rec_num` int NOT NULL,
  `recbool` int NOT NULL DEFAULT '0',
  `recboolnum` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`recboolnum`),
  KEY `rec_num` (`rec_num`),
  KEY `mem_id` (`mem_id`),
  CONSTRAINT `recommendboolean_ibfk_4` FOREIGN KEY (`rec_num`) REFERENCES `recommend` (`rec_num`) ON DELETE CASCADE,
  CONSTRAINT `recommendboolean_ibfk_5` FOREIGN KEY (`mem_id`) REFERENCES `member` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendboolean`
--

LOCK TABLES `recommendboolean` WRITE;
/*!40000 ALTER TABLE `recommendboolean` DISABLE KEYS */;
INSERT INTO `recommendboolean` VALUES ('admin',77,0,65),('asdasd',77,1,69),('test5',124,0,75),('test5',77,0,76),('bctour88',128,0,80),('admin',128,0,81);
/*!40000 ALTER TABLE `recommendboolean` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `res_num` int NOT NULL AUTO_INCREMENT,
  `pd_num` int DEFAULT NULL,
  `mem_id` varchar(45) DEFAULT NULL,
  `totalMember` int DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `state` int DEFAULT '0',
  `res_reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `res_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pd_reviewCheck` int NOT NULL DEFAULT '0',
  `pd_departDay` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`res_num`),
  KEY `mem_id` (`mem_id`),
  KEY `pd_num` (`pd_num`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`mem_id`) REFERENCES `member` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`pd_num`) REFERENCES `pd_info` (`pd_num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (10,14,'admin',3,45000,0,'2022-11-28 07:08:08','2022-11-29 06:08:06',1,'2022-12-05 15:00:00'),(11,14,'asd',3,45000,0,'2022-11-29 02:20:32','2022-11-29 06:13:12',0,'2022-12-05 15:00:00'),(12,15,'asdf',5,110000,0,'2022-11-29 03:15:38','2022-11-29 06:14:16',0,'2022-12-05 15:00:00'),(16,15,'asdasd',2,44000,1,'2022-12-01 01:08:03','2022-12-01 01:08:35',1,'2022-12-04 15:00:00'),(18,15,'admin',5,110000,1,'2022-12-06 15:00:00','2022-12-07 15:00:00',1,'2022-12-05 15:00:00'),(19,37,'admin',1,20000,3,'2022-12-07 15:00:00','2022-12-02 02:32:01',0,'2022-12-06 15:00:00'),(28,56,'test5',1,15000,1,'2022-12-07 00:39:53','2022-12-07 00:39:53',1,'2022-12-05 15:00:00'),(29,56,'bctour88',4,60000,1,'2022-12-07 05:53:53','2022-12-07 05:54:19',1,'2022-12-05 15:00:00');
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 15:16:20
