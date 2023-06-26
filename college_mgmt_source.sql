CREATE DATABASE  IF NOT EXISTS `college_mgmt`;
USE `college_mgmt`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 13.212.84.68    Database: college_mgmt
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `tbl_college`
--

DROP TABLE IF EXISTS `tbl_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_college` (
  `college_id` int NOT NULL AUTO_INCREMENT,
  `collegename` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_college`
--

LOCK TABLES `tbl_college` WRITE;
/*!40000 ALTER TABLE `tbl_college` DISABLE KEYS */;
INSERT INTO `tbl_college` VALUES (1,'Test College 1','Test College 1 Branch 1'),(2,'Test College 2','Test College 2 Branch 1'),(3,'Test College 3','Test College 3 Branch 1'),(4,'Test College 4','Test College 4 Branch 1'),(5,'Test College 5','Test College 5 Branch 1'),(6,'Test College 6','Test College 6 Branch 1'),(7,'Test College 7','Test College 7 Branch 1'),(8,'Test College 8','Test College 8 Branch 1'),(9,'Test College 9','Test College 9 Branch 1'),(10,'Test College 10','Test College 10 Branch 1'),(11,'HKBKCE','Computer sceince '),(12,'testcollegeuserqa','qauser'),(13,'Test1','Demo'),(14,'VCACS','MCA'),(15,'SAEC','RAMNAD'),(16,'PhaniCollege1','CSE'),(17,'JSPM','Hadapsar'),(18,'Narayana Junior College','Tirupati'),(19,'PhaniCollege2','IT'),(20,'PhaniCollege3','AIML'),(21,'K_College1','K_Branch1'),(22,'Cloud Migration College ','Migration '),(23,'testcollegeuserqa','qauser'),(24,'test2','Demo2'),(25,'K_College2','K_Branch2'),(26,'VIIT','BTech'),(27,'D Y Patil','Pune'),(28,'SV Engineering ','CIVIL'),(29,'SRIT','CSE'),(30,'PhaniCollege1','Branch1'),(31,'PhaniCollege1','Branch1'),(32,'PhaniCollege1','Branch1'),(33,'Banathali Vidypith','Main Campus'),(34,'Banathali Vidypith','Jaipur Campus');
/*!40000 ALTER TABLE `tbl_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(100) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (1,'Admin'),(2,'Co Admin');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_student`
--

DROP TABLE IF EXISTS `tbl_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `studentname` varchar(200) NOT NULL,
  `college_id` int NOT NULL,
  `gender` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (1,'College 1 Student 1',1,'Male','student1_1@demo.com','B. A'),(2,'College 1 Student 2',1,'Female','student1_2@demo.com','B. Tech'),(3,'College 1 Student 3',1,'Male','student1_3@demo.com','B. Com'),(4,'College 1 Student 4',1,'Female','student1_4@demo.com','B. A'),(5,'College 1 Student 5',1,'Male','student1_5@demo.com','B. Tech'),(6,'College 1 Student 6',1,'Female','student1_6@demo.com','B. Com'),(7,'College 1 Student 7',1,'Male','student1_7@demo.com','B. A'),(8,'College 1 Student 8',1,'Female','student1_8@demo.com','B. Tech'),(9,'College 1 Student 9',1,'Male','student1_9@demo.com','B. Com'),(10,'College 1 Student 10',1,'Female','student1_10@demo.com','B. A'),(11,'College 2 Student 1',2,'Male','student2_1@demo.com','B. Tech'),(12,'College 2 Student 2',2,'Female','student2_2@demo.com','B. Com'),(13,'College 2 Student 3',2,'Male','student2_3@demo.com','B. A'),(14,'College 2 Student 4',2,'Female','student2_4@demo.com','B. Tech'),(15,'College 2 Student 5',2,'Male','student2_5@demo.com','B. Com'),(16,'College 2 Student 6',2,'Female','student2_6@demo.com','B. A'),(17,'College 2 Student 7',2,'Male','student2_7@demo.com','B. Tech'),(18,'College 2 Student 8',2,'Female','student2_8@demo.com','B. Com'),(19,'College 2 Student 9',2,'Male','student2_9@demo.com','B. A'),(20,'College 2 Student 10',2,'Female','student2_10@demo.com','B. Tech'),(21,'College 3 Student 1',3,'Male','student3_1@demo.com','B. Com'),(22,'College 3 Student 2',3,'Female','student3_2@demo.com','B. A'),(23,'College 3 Student 3',3,'Male','student3_3@demo.com','B. Tech'),(24,'College 3 Student 4',3,'Female','student3_4@demo.com','B. Com'),(25,'College 3 Student 5',3,'Male','student3_5@demo.com','B. A'),(26,'College 3 Student 6',3,'Female','student3_6@demo.com','B. Tech'),(27,'College 3 Student 7',3,'Male','student3_7@demo.com','B. Com'),(28,'College 3 Student 8',3,'Female','student3_8@demo.com','B. A'),(29,'College 3 Student 9',3,'Male','student3_9@demo.com','B. Tech'),(30,'College 3 Student 10',3,'Female','student3_10@demo.com','B. Com'),(31,'College 4 Student 1',4,'Male','student4_1@demo.com','B. A'),(32,'College 4 Student 2',4,'Female','student4_2@demo.com','B. Tech'),(33,'College 4 Student 3',4,'Male','student4_3@demo.com','B. Com'),(34,'College 4 Student 4',4,'Female','student4_4@demo.com','B. A'),(35,'College 4 Student 5',4,'Male','student4_5@demo.com','B. Tech'),(36,'College 4 Student 6',4,'Female','student4_6@demo.com','B. Com'),(37,'College 4 Student 7',4,'Male','student4_7@demo.com','B. A'),(38,'College 4 Student 8',4,'Female','student4_8@demo.com','B. Tech'),(39,'College 4 Student 9',4,'Male','student4_9@demo.com','B. Com'),(40,'College 4 Student 10',4,'Female','student4_10@demo.com','B. A'),(41,'College 5 Student 1',5,'Male','student5_1@demo.com','B. Tech'),(42,'College 5 Student 2',5,'Female','student5_2@demo.com','B. Com'),(43,'College 5 Student 3',5,'Male','student5_3@demo.com','B. A'),(44,'College 5 Student 4',5,'Female','student5_4@demo.com','B. Tech'),(45,'College 5 Student 5',5,'Male','student5_5@demo.com','B. Com'),(46,'College 5 Student 6',5,'Female','student5_6@demo.com','B. A'),(47,'College 5 Student 7',5,'Male','student5_7@demo.com','B. Tech'),(48,'College 5 Student 8',5,'Female','student5_8@demo.com','B. Com'),(49,'College 5 Student 9',5,'Male','student5_9@demo.com','B. A'),(50,'College 5 Student 10',5,'Female','student5_10@demo.com','B. Tech'),(51,'Shanthi1',15,'female','sss@gmail.com','CSE'),(52,'payal',12,'female','t@gmail.com','science'),(53,'Shanthi2',15,'female','sss2@gmail.com','CSE'),(54,'Sandeep',17,'male','snaktode@gmail.com','MCA'),(55,'qauser',12,'female','user@qa.com','commerce'),(56,'CMT',22,'male','test@email.com','CMT'),(57,'PhaniStudent1',19,'male','phanitest@gmail.com','B.Tech'),(58,'ashi',12,'male','test@gmail.com','science'),(59,'PhaniStudent2',20,'male','phanitest@gmail.com','B.Sc'),(60,'manish1',13,'male','xyz@gmail.com','xyz'),(61,'sri',12,'female','payal6051@gmail.com','commerce'),(62,'PhaniStudent3',16,'male','phanitest@gmail.com','B.Tech'),(63,'Tester1',18,'male','Tester1@gmail.com','B.E'),(64,'Kriti',21,'female','Kriti@gmail.com','BTech'),(65,'Loki',11,'male','loki@gmail.com','Mech'),(66,'manish2',24,'male','xyzm@gmail.com','xyz'),(67,'Sandeep',27,'male','snaktode@gmail.com','MCA'),(68,'Shanthi3',15,'female','sss@gmail.com','CSE'),(69,'Kriti',25,'female','Kriti@gmail.com','BTech'),(70,'Bhargav',28,'male','dharani.y@gmail.com','CIVIL'),(71,'Kruthi',29,'female','dharani.y@gmail.com','CSE'),(72,'Loki',11,'male','loki@gmail.com','mech'),(73,'Duti Sree',28,'female','dharani.y@gmail.com','CSE'),(74,'Mohan sai',29,'male','dharani.y@gmail.com','ECE');
/*!40000 ALTER TABLE `tbl_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `college_id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `password` varchar(255) NOT NULL,
  `confpwd` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'Moderator 1 College 1',1,'moderator1_1@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2,'Moderator 1 College 2',2,'moderator1_2@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(3,'Moderator 1 College 3',3,'moderator1_3@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(4,'Moderator 1 College 4',4,'moderator1_4@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(5,'Moderator 1 College 5',5,'moderator1_5@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(6,'Moderator 1 College 6',6,'moderator1_6@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(7,'Moderator 1 College 7',7,'moderator1_7@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(8,'Moderator 1 College 8',8,'moderator1_8@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(9,'Moderator 1 College 9',9,'moderator1_9@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(10,'Moderator 1 College 10',10,'moderator1_10@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(11,'Moderator 2 College 1',1,'moderator2_1@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(12,'Moderator 2 College 2',2,'moderator2_2@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(13,'Moderator 2 College 3',3,'moderator2_3@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(14,'Moderator 2 College 4',4,'moderator2_4@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(15,'Moderator 2 College 5',5,'moderator2_5@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(16,'Moderator 2 College 6',6,'moderator2_6@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(17,'Moderator 2 College 7',7,'moderator2_7@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(18,'Moderator 2 College 8',8,'moderator2_8@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(19,'Moderator 2 College 9',9,'moderator2_9@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(20,'Moderator 2 College 10',10,'moderator2_10@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(21,'modd',12,'t@gmail.com','female',1,'7110eda4d09e062aa5e4a390b0a572ac0d2c0220','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(22,'snaktode',17,'snaktode@gmail.com','male',1,'278f7456e1d062914572e32e9a0b712ddcc2d34c','278f7456e1d062914572e32e9a0b712ddcc2d34c'),(23,'PhaniModerator1',20,'phanitest@gmail.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(24,'demo1',13,'manish.gupta2k@gmail.com','male',1,'40bd001563085fc35165329ea1ff5c5ecbdbbeef','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(25,'PhaniModerator2',19,'phanitest@gmail.com','male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(26,'Ravitheja.P',18,'Tester1@gmail.com','male',1,'55955dca5b794ab8330291c516c79fba05e7193e','55955dca5b794ab8330291c516c79fba05e7193e'),(27,'CTPUser',22,'test@email.com','male',2,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(28,'chaitra',11,'chaitra@gmail.com','female',2,'55bb8e8e600f22491e36b96dc3cd4977e9fd7cd6','55bb8e8e600f22491e36b96dc3cd4977e9fd7cd6'),(29,'Keerthixxxx',21,'kxxxxxxx@gmail.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(30,'ShanuModerator',15,'sss@gmail.com','female',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(31,'Moderator 10 College 1',14,'moderator10@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(32,'Dharani',0,'dyeggodi@in.ibm.com','male',1,'ebfc7910077770c8340f63cd2dca2ac1f120444f','ebfc7910077770c8340f63cd2dca2ac1f120444f'),(33,'moderator1_1@demo.com',12,'t@gmail.com','male',1,'7110eda4d09e062aa5e4a390b0a572ac0d2c0220','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(34,'testdemo2',24,'xyz@gmail.com','male',1,'40bd001563085fc35165329ea1ff5c5ecbdbbeef','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(35,'Loki',11,'loki@gmail.com','female',2,'a5b23f338648cb6f21e2cc1284e4d1b7b930ac97','a5b23f338648cb6f21e2cc1284e4d1b7b930ac97'),(36,'Moderator 10 College 2',26,'moderator11@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(37,'Charan',28,'dharani.y@gmail.com','male',1,'ebfc7910077770c8340f63cd2dca2ac1f120444f','ebfc7910077770c8340f63cd2dca2ac1f120444f'),(38,'sathya',25,'sathya@gmail.com','male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','908f704ccaadfd86a74407d234c7bde30f2744fe'),(39,'Y Reddy',29,'dharani.y@gmail.com','male',1,'ebfc7910077770c8340f63cd2dca2ac1f120444f','ebfc7910077770c8340f63cd2dca2ac1f120444f'),(40,'demo2',13,'xyz@gmail.com','female',2,'40bd001563085fc35165329ea1ff5c5ecbdbbeef','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(41,'ajit',14,'migration@test.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(42,'ajit_kumar',26,'migration1@test.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(43,'dishi',11,'loki@gmail.com','female',2,'d0ef16c8647320c4b8d798b1d06f0b38b2c712f5','d0ef16c8647320c4b8d798b1d06f0b38b2c712f5'),(44,'Kumar',29,'dharani196@gmail.com','male',1,'ebfc7910077770c8340f63cd2dca2ac1f120444f','ebfc7910077770c8340f63cd2dca2ac1f120444f');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26 14:47:34
