CREATE DATABASE  IF NOT EXISTS `college_mgmt`;
USE `college_mgmt`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 3.101.38.80    Database: college_mgmt
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_college`
--

LOCK TABLES `tbl_college` WRITE;
/*!40000 ALTER TABLE `tbl_college` DISABLE KEYS */;
INSERT INTO `tbl_college` VALUES (1,'Test College 1','Test College 1 Branch 1'),(2,'Test College 2','Test College 2 Branch 1'),(3,'Test College 3','Test College 3 Branch 1'),(4,'Test College 4','Test College 4 Branch 1'),(5,'Test College 5','Test College 5 Branch 1'),(6,'Test College 6','Test College 6 Branch 1'),(7,'Test College 7','Test College 7 Branch 1'),(8,'Test College 8','Test College 8 Branch 1'),(9,'Test College 9','Test College 9 Branch 1'),(10,'Test College 10','Test College 10 Branch 1'),(11,'Shilpa College','Computer Science'),(12,'HIT','cse'),(13,'xyz','pune'),(14,'Test College 1','Test College 1 Branch1'),(15,'SV Engg College','Porur'),(16,'PSG','CSE'),(17,'Amt College','Main'),(18,'CSI ','EEE'),(19,'SVCE','ECE'),(20,'VNC','Bangalore'),(21,'Karunya','ECE'),(22,'SV Engg College','Chennai'),(23,'KT_Test_college','B.Tech_ECE'),(24,'Swati College 1','Swati Branch1'),(25,'S9292 College','MAS'),(26,'KIET','CSE'),(27,'Amt College','Primary'),(28,'Test College 11','Test College 11 Branch 1'),(29,'Aiswarya_College_1','Aiswarya_College_1_branch_1'),(30,'Test College 5','Test College 5 Branch 1'),(31,'MITS','ECE'),(32,'RLT','Main'),(33,'MITS','ECE'),(34,'IIT-BOM','Computer'),(35,'Shilpa1 College','Computer Science'),(36,'Msajce','CSE'),(37,'JP_VIET','Noida'),(38,'JP_AKG','Ghaziabad');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (1,'stud-test1',1,'Male','stud-test1@demo.com','B. A'),(2,'College 1 Student 2',1,'Female','student1_2@demo.com','B. Tech'),(3,'College 1 Student 3',1,'Male','student1_3@demo.com','B. Com'),(4,'College 1 Student 4',1,'Female','student1_4@demo.com','B. A'),(5,'College 1 Student 5',1,'Male','student1_5@demo.com','B. Tech'),(6,'College 1 Student 6',1,'Female','student1_6@demo.com','B. Com'),(7,'College 1 Student 7',1,'Male','student1_7@demo.com','B. A'),(8,'College 1 Student 8',1,'Female','student1_8@demo.com','B. Tech'),(9,'College 1 Student 9',1,'Male','student1_9@demo.com','B. Com'),(10,'College 1 Student 10',1,'Female','student1_10@demo.com','B. A'),(11,'College 2 Student 1',2,'Male','student2_1@demo.com','B. Tech'),(12,'College 2 Student 2',2,'Female','student2_2@demo.com','B. Com'),(13,'College 2 Student 3',2,'Male','student2_3@demo.com','B. A'),(14,'College 2 Student 4',2,'Female','student2_4@demo.com','B. Tech'),(15,'College 2 Student 5',2,'Male','student2_5@demo.com','B. Com'),(16,'College 2 Student 6',2,'Female','student2_6@demo.com','B. A'),(17,'College 2 Student 7',2,'Male','student2_7@demo.com','B. Tech'),(18,'College 2 Student 8',2,'Female','student2_8@demo.com','B. Com'),(19,'College 2 Student 9',2,'Male','student2_9@demo.com','B. A'),(20,'College 2 Student 10',2,'Female','student2_10@demo.com','B. Tech'),(21,'College 3 Student 1',3,'Male','student3_1@demo.com','B. Com'),(22,'College 3 Student 2',3,'Female','student3_2@demo.com','B. A'),(23,'College 3 Student 3',3,'Male','student3_3@demo.com','B. Tech'),(24,'College 3 Student 4',3,'Female','student3_4@demo.com','B. Com'),(25,'College 3 Student 5',3,'Male','student3_5@demo.com','B. A'),(26,'College 3 Student 6',3,'Female','student3_6@demo.com','B. Tech'),(27,'College 3 Student 7',3,'Male','student3_7@demo.com','B. Com'),(28,'College 3 Student 8',3,'Female','student3_8@demo.com','B. A'),(29,'College 3 Student 9',3,'Male','student3_9@demo.com','B. Tech'),(30,'College 3 Student 10',3,'Female','student3_10@demo.com','B. Com'),(31,'College 4 Student 1',4,'Male','student4_1@demo.com','B. A'),(32,'College 4 Student 2',4,'Female','student4_2@demo.com','B. Tech'),(33,'College 4 Student 3',4,'Male','student4_3@demo.com','B. Com'),(34,'College 4 Student 4',4,'Female','student4_4@demo.com','B. A'),(35,'College 4 Student 5',4,'Male','student4_5@demo.com','B. Tech'),(36,'College 4 Student 6',4,'Female','student4_6@demo.com','B. Com'),(37,'College 4 Student 7',4,'Male','student4_7@demo.com','B. A'),(38,'College 4 Student 8',4,'Female','student4_8@demo.com','B. Tech'),(39,'College 4 Student 9',4,'Male','student4_9@demo.com','B. Com'),(40,'College 4 Student 10',4,'Female','student4_10@demo.com','B. A'),(41,'College 5 Student 1',5,'Male','student5_1@demo.com','B. Tech'),(42,'College 5 Student 2',5,'Female','student5_2@demo.com','B. Com'),(43,'College 5 Student 3',5,'Male','student5_3@demo.com','B. A'),(44,'College 5 Student 4',5,'Female','student5_4@demo.com','B. Tech'),(45,'College 5 Student 5',5,'Male','student5_5@demo.com','B. Com'),(46,'College 5 Student 6',5,'Female','student5_6@demo.com','B. A'),(47,'College 5 Student 7',5,'Male','student5_7@demo.com','B. Tech'),(48,'College 5 Student 8',5,'Female','student5_8@demo.com','B. Com'),(49,'College 5 Student 9',5,'Male','student5_9@demo.com','B. A'),(50,'College 5 Student 10',5,'Female','student5_10@demo.com','B. Tech'),(51,'Mystud1',1,'female','mystud1@demo.com','Computer'),(52,'Mohit',12,'male','mohitgautam06091993@gmail.cpom','cse'),(53,'Shilpa student',11,'female','shilpa_student@demo.com','CS'),(54,'Dristi',19,'female','dristi.ranjan@ibm.com','Testing'),(55,'Hari',20,'male','bsetty.hari@gmail.com','Datascience'),(56,'Gowtham Menon',16,'male','gwtham menon@gmail.com','CSE'),(57,'saktsund',25,'male','ss9292@gmail.com','PROD'),(58,'Swati',24,'female','swati_new@college.com','BTECH'),(59,'Srini',15,'male','srini@gmail.com','BEEE'),(60,'kt_student1',23,'female','ktstudent1@gmail.com','ECE'),(61,'Kavya Nair',21,'female','kavyaNair@gmail.com','ECE'),(62,'Nivas',22,'male','nivas@gmail.com','BCEE'),(63,'Purna',26,'female','bhanuja.chodisetti@gmail.com','CSE'),(64,'ktstudent2',23,'male','ktstudent2@gmail.com','ECE'),(65,'Naksh',15,'female','naksh@gmail.com','BARCH'),(66,'ktstudent3',23,'male','ktstudent3@gmail.com','ECE'),(67,'DarRid',22,'female','dr@gmail.com','BioTech'),(69,'Swati',33,'female','swati.singh10@demo.com','BTECH'),(70,'Supriya M',32,'female','sm@gmail.com','Computer'),(71,'Nivas',15,'male','nivas@gmail.com','BCEE'),(72,'DarRid',15,'female','dr@gmail.com','BioTech'),(73,'Swati',33,'female','swati.singh10@demo.com','BTECH'),(74,'Demo_1',29,'male','demo_1@gmail.com','IST'),(75,'ktstudent4',23,'female','ktstudents@gmail.com','ECE'),(76,'student_new',33,'female','swati.singh10@demo.com','BTECH'),(77,'Swatiii',31,'female','swati.singh10@demo.com','BTECH'),(78,'Demo_2',29,'female','demo_2@demo.com','IST'),(79,'Demo_3',29,'female','demo_3@gmail.com','IST'),(80,'Supriya M',34,'female','sm@gmail.com','Computer'),(81,'Shilpa1 student',11,'female','shilpa1_student@demo.com','CD'),(82,'Ramya',5,'female','ramyasri.r@gmail.com','ECE'),(83,'JP_Rahul',37,'male','stu_1@demo.com','B tech'),(84,'arvind',36,'female','arv123@gmail.com','CSE'),(85,'JP_Shyam',38,'male','stu_2@demo.com','MBA'),(86,'swe',36,'female','swe@yahoo.com','CSE'),(87,'raji',36,'female','raji@gmail.com','CSE'),(88,'bala',36,'male','bala1234@gmail.com','CSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'Moderator 1 College 1',1,'moderator1_1@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2,'Moderator 1 College 2',2,'moderator1_2@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(3,'Moderator 1 College 3',3,'moderator1_3@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(4,'Moderator 1 College 4',4,'moderator1_4@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(5,'Moderator 1 College 5',5,'moderator1_5@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(6,'Moderator 1 College 6',6,'moderator1_6@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(7,'Moderator 1 College 7',7,'moderator1_7@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(8,'Moderator 1 College 8',8,'moderator1_8@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(9,'Moderator 1 College 9',9,'moderator1_9@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(10,'Moderator 1 College 10',10,'moderator1_10@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(11,'Moderator 2 College 1',1,'moderator2_1@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(12,'Moderator 2 College 2',2,'moderator2_2@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(13,'Moderator 2 College 3',3,'moderator2_3@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(14,'Moderator 2 College 4',4,'moderator2_4@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(15,'Moderator 2 College 5',5,'moderator2_5@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(16,'Moderator 2 College 6',6,'moderator2_6@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(17,'Moderator 2 College 7',7,'moderator2_7@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(18,'Moderator 2 College 8',8,'moderator2_8@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(19,'Moderator 2 College 9',9,'moderator2_9@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(20,'Moderator 2 College 10',10,'moderator2_10@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(21,'ramya@54',5,'ramyasri.r@gmail.com','female',1,'45bc96b538a1176c6cbe70b71697499926abecb7','096777da047ba38cd853e9c8ca27bb2b6c7b229c'),(22,'mohitgautam06091993@gmail.com',12,'mohitgautam06091993@gmail.cpom','male',1,'2a2cddb04ea5c22202d739e58d556bf066127e8d','2a2cddb04ea5c22202d739e58d556bf066127e8d'),(23,'Shilpa Moderator',3,'shilpa_moderator@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(24,'dristi.ranjan@ibm.com',19,'dristi.ranjan@ibm.com','female',1,'afde930269239a8b73a3e3519ca89dc573050c7b','afde930269239a8b73a3e3519ca89dc573050c7b'),(25,'SM-Moder',3,'sm@gmail.com','male',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(26,'MU1',16,'Muralidharan.gowthaman@ibm.com','male',1,'67eb088d7549dc4b1a2dfcec019442c2ce6ced9a','67eb088d7549dc4b1a2dfcec019442c2ce6ced9a'),(27,'vsnivas',15,'shrinivaslove@gmail.com','male',1,'96d0265d8500083eb2b7fe7252996a99327341e4','21bd12dc183f740ee76f27b78eb39c8ad972a757'),(28,'Hari',20,'bsetty.hari@gmail.com','male',1,'2c4c3891e2ac6958e9810a1e49c6705784fbfa1a','2c4c3891e2ac6958e9810a1e49c6705784fbfa1a'),(29,'Swati',24,'moderator1_1@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(30,'sakthi9292',25,'s9292@gmail.com','male',1,'7110eda4d09e062aa5e4a390b0a572ac0d2c0220','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(31,'kt_moderator',23,'ktmoderator@gmail.com','male',2,'7ce0359f12857f2a90c7de465f40a95f01cb5da9','7ce0359f12857f2a90c7de465f40a95f01cb5da9'),(32,'Purna',26,'bhanuja.chodisetti@gmail.com','female',1,'23d42f5f3f66498b2c8ff4c20b8c5ac826e47146','23d42f5f3f66498b2c8ff4c20b8c5ac826e47146'),(33,'aiswarya.sharma@ibm.com',29,'aiswarya.sharma@ibm.com','female',1,'e30dd436ad6e8c80f179ed6ea0da96a3c174053c','e30dd436ad6e8c80f179ed6ea0da96a3c174053c'),(34,'Supriya',32,'sm@gmail.com','female',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(35,'Swatiii',31,'swati.singh10@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(36,'Sup',34,'sm@gmail.com','female',2,'8cb2237d0679ca88db6464eac60da96345513964','7c4a8d09ca3762af61e59520943dc26494f8941b'),(37,'Shilpa1 Moderator',18,'shilpa1_moderator@demo.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(38,'snvas',15,'snvas@yahoo.com','male',2,'74b374201ff28f16f11c741553a19fdce439b5c7','74b374201ff28f16f11c741553a19fdce439b5c7'),(39,'Arv',36,'arv@gmail.com','male',2,'7110eda4d09e062aa5e4a390b0a572ac0d2c0220','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(40,'JP_Test Moderator1',37,'modr_2@demo.com','male',2,'0926c950fe247c3b465eb13e258ee468d239a065','0926c950fe247c3b465eb13e258ee468d239a065'),(41,'JP_Test Moderator2',38,'modr_1@demo.com','female',1,'0926c950fe247c3b465eb13e258ee468d239a065','0926c950fe247c3b465eb13e258ee468d239a065');
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

-- Dump completed on 2023-05-29 16:51:51
