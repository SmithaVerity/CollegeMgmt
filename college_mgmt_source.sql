CREATE DATABASE  IF NOT EXISTS `college_mgmt` ;
USE `college_mgmt`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 54.206.34.109    Database: college_mgmt
-- ------------------------------------------------------
-- Server version	8.0.43-0ubuntu0.24.04.2

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_college`
--

LOCK TABLES `tbl_college` WRITE;
/*!40000 ALTER TABLE `tbl_college` DISABLE KEYS */;
INSERT INTO `tbl_college` VALUES (1,'Test College 1','Test College 1 Branch 1'),(2,'Test College 2','Test College 2 Branch 1'),(3,'Test College 3','Test College 3 Branch 1'),(4,'Test College 4','Test College 4 Branch 1'),(5,'Test College 5','Test College 5 Branch 1'),(6,'Test College 6','Test College 6 Branch 1'),(7,'Test College 7','Test College 7 Branch 1'),(8,'Test College 8','Test College 8 Branch 1'),(9,'Test College 9','Test College 9 Branch 1'),(10,'Test College 10','Test College 10 Branch 1'),(11,'Arpita_College ','Arpita_Branch'),(12,'VIT','MS'),(13,'Bhaskar_anits','Bhaskar_IT'),(14,'Selvapathy_Test college','ECE'),(15,'Rekha_college1','Manyata'),(16,'Manjusha1_Test_College','Manjusha_Test_branch_1'),(17,'Rekha_college2','Nagavara'),(18,'SarPandav','IT'),(19,'SarRaisony','Computer'),(20,'AnushaKalli_Clg1','CSE'),(21,'AnitaC1','AnitaB1'),(22,'SarPriyadarshani','Machanical'),(23,'AnitaC2','AnitaB1'),(24,'NarasimhaL-CollegeTest1','CSE'),(25,'SarPawai','ENTC'),(26,'MouniTest1','HYD1'),(27,'Prafulla_BIT','Prafulla_ECE'),(28,'AnitaC3','AnitaB3'),(29,'AnitaC4','AnitaB1'),(30,'Anil_College','CS'),(31,'SubashCollege','MS'),(32,'Anil_College','CS'),(33,'Sathish_Collage','Mechanical'),(34,'MouniTest2','HYD2'),(35,'MouniTest3','HYD3'),(36,'MouniTest4','HYD4'),(37,'MouniTest5','HYD5'),(38,'SarMIT','AI'),(39,'Manjusha_Test_college_2','Manjusha_test_branch_2'),(40,'AnushaKalli_Clg2','IT'),(41,'Arpita_College _2','Arpita_Branch'),(42,'Arpita_College_2','Arpita_Branch2'),(43,'AnushaKalli_Clg1','CSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (1,'College 1 Student 1',1,'Male','student1_1@demo.com','B. A'),(2,'College 1 Student 2',1,'Female','student1_2@demo.com','B. Tech'),(3,'College 1 Student 3',1,'Male','student1_3@demo.com','B. Com'),(4,'College 1 Student 4',1,'Female','student1_4@demo.com','B. A'),(5,'College 1 Student 5',1,'Male','student1_5@demo.com','B. Tech'),(6,'College 1 Student 6',1,'Female','student1_6@demo.com','B. Com'),(7,'College 1 Student 7',1,'Male','student1_7@demo.com','B. A'),(8,'College 1 Student 8',1,'Female','student1_8@demo.com','B. Tech'),(9,'College 1 Student 9',1,'Male','student1_9@demo.com','B. Com'),(10,'College 1 Student 10',1,'Female','student1_10@demo.com','B. A'),(11,'College 2 Student 1',2,'Male','student2_1@demo.com','B. Tech'),(12,'College 2 Student 2',2,'Female','student2_2@demo.com','B. Com'),(13,'College 2 Student 3',2,'Male','student2_3@demo.com','B. A'),(14,'College 2 Student 4',2,'Female','student2_4@demo.com','B. Tech'),(15,'College 2 Student 5',2,'Male','student2_5@demo.com','B. Com'),(16,'College 2 Student 6',2,'Female','student2_6@demo.com','B. A'),(17,'College 2 Student 7',2,'Male','student2_7@demo.com','B. Tech'),(18,'College 2 Student 8',2,'Female','student2_8@demo.com','B. Com'),(19,'College 2 Student 9',2,'Male','student2_9@demo.com','B. A'),(20,'College 2 Student 10',2,'Female','student2_10@demo.com','B. Tech'),(21,'College 3 Student 1',3,'Male','student3_1@demo.com','B. Com'),(22,'College 3 Student 2',3,'Female','student3_2@demo.com','B. A'),(23,'College 3 Student 3',3,'Male','student3_3@demo.com','B. Tech'),(24,'College 3 Student 4',3,'Female','student3_4@demo.com','B. Com'),(25,'College 3 Student 5',3,'Male','student3_5@demo.com','B. A'),(26,'College 3 Student 6',3,'Female','student3_6@demo.com','B. Tech'),(27,'College 3 Student 7',3,'Male','student3_7@demo.com','B. Com'),(28,'College 3 Student 8',3,'Female','student3_8@demo.com','B. A'),(29,'College 3 Student 9',3,'Male','student3_9@demo.com','B. Tech'),(30,'College 3 Student 10',3,'Female','student3_10@demo.com','B. Com'),(31,'College 4 Student 1',4,'Male','student4_1@demo.com','B. A'),(32,'College 4 Student 2',20,'Female','student4_2@demo.com','B. Tech'),(33,'College 4 Student 3',4,'Male','student4_3@demo.com','B. Com'),(34,'College 4 Student 4',4,'Female','student4_4@demo.com','B. A'),(35,'College 4 Student 5',4,'Male','student4_5@demo.com','B. Tech'),(36,'College 4 Student 6',4,'Female','student4_6@demo.com','B. Com'),(37,'College 4 Student 7',4,'Male','student4_7@demo.com','B. A'),(38,'College 4 Student 8',4,'Female','student4_8@demo.com','B. Tech'),(39,'College 4 Student 9',4,'Male','student4_9@demo.com','B. Com'),(40,'College 4 Student 10',4,'Female','student4_10@demo.com','B. A'),(41,'College 5 Student 1',5,'Male','student5_1@demo.com','B. Tech'),(42,'College 5 Student 2',5,'Female','student5_2@demo.com','B. Com'),(43,'College 5 Student 3',5,'Male','student5_3@demo.com','B. A'),(44,'College 5 Student 4',5,'Female','student5_4@demo.com','B. Tech'),(45,'College 5 Student 5',5,'Male','student5_5@demo.com','B. Com'),(46,'College 5 Student 6',5,'Female','student5_6@demo.com','B. A'),(47,'College 5 Student 7',5,'Male','student5_7@demo.com','B. Tech'),(48,'College 5 Student 8',5,'Female','student5_8@demo.com','B. Com'),(49,'College 5 Student 9',5,'Male','student5_9@demo.com','B. A'),(50,'College 5 Student 10',5,'Female','student5_10@demo.com','B. Tech'),(51,'Arpita_student',11,'female','ar@in.ibm.com','Testing'),(52,'Bhaskar_Santhosh',13,'male','bhaskar.anits@outlook.com','Information Teachnology'),(53,'Selvapathy',14,'male','selva1@gm','ECEB'),(54,'Manjusha_test_student_1',16,'female','dahale.manjusha@ibm.com','ECE'),(55,'Rekha_1',15,'female','rekhauser@demo.com','Cloud Migration'),(56,'Subash',31,'male','SubashTest1@gmail.com','MS'),(57,'Anita Sinha',21,'female','anitasinha@anita.c1','A1'),(58,'Mouni Katam',26,'female','moukatam@in.ibm.com','ECE'),(59,'Manjusha_test_student_2',16,'female','dahale.manjusha@ibm.com','EEE'),(60,'Anita2',23,'female','anitasinha1@anita.c1','C2'),(61,'NarasimhaEdit1',24,'male','nlingala@in.ibm.com1','ComputerScienceEngineering'),(62,'AK_TestUser1',20,'female','anukalli@in.ibm.com','CSE'),(63,'Manjusha_test_student_2',16,'female','dahale.manjusha@ibm.com','EEE'),(64,'Prafulla_pranav',27,'male','prafpras@in.ibm.com','ECE'),(65,'Prafulla_Prerna',27,'female','prafpras@in.ibm.com','CS'),(66,'Studen2',11,'male','xyz@123.com','dev'),(67,'SubashVIT',31,'male','subashtest1@gmail.com','MS'),(68,'SarAnkit',18,'male','sarita.bagde@ibm.com','IT'),(70,'SarSwapnil',25,'male','sarita.bagde@ibm.com','IT'),(71,'SarJoshna',19,'female','sarita.bagde@ibm.com','IT'),(72,'sathish_student',33,'male','sathish.a3@ibm.com','Mechanical'),(73,'SarPriya',22,'female','sarita.bagde@ibm.com','IT'),(74,'SubashVIT',31,'male','subashtest2@gmail.com','MS'),(75,'SarNikesh',19,'male','sarita.bagde@ibm.com','IT'),(76,'Mike',14,'male','mike@123','WCF'),(77,'Test3',31,'male','subashtest2@gmail.com','MS'),(78,'sathish_student1',33,'male','sathish.a2@ibm.com','Mechanical'),(79,'Kumar',32,'male','Test2@test.com','CS'),(80,'CloudTest',31,'female','testcloud@gmail.com','MS'),(81,'Dusa',32,'female','Test@test1.com','CS'),(82,'D',30,'male','Test@test2.com','CSE'),(83,'Bhaskar_naidu',13,'male','thota@thota.com','CSE'),(84,'A',30,'male','test@test5.com','CSD'),(85,'test3',39,'male','test3@gmail.com','ECE'),(86,'Mouni2',26,'female','moukatam@in.ibm.com','ECE'),(87,'Student3',20,'female','student3@gmail.com','CSE'),(88,'NarasimhaS2',24,'male','nlingala@in.ibm.com','ComputerScienceEngineering'),(89,'NarasimhaS3',24,'male','nlingala@in.ibm.com','ComputerScienceEngineering');
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
) ENGINE=InnoDB AUTO_INCREMENT=2122 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'SuperUser',0,'superuser@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2,'Moderator 1 College 1',1,'moderator1_1@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(3,'Moderator 1 College 2',2,'moderator1_2@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(4,'Moderator 1 College 3',3,'moderator1_3@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(5,'Moderator 1 College 4',4,'moderator1_4@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(6,'Moderator 1 College 5',5,'moderator1_5@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(7,'Moderator 1 College 6',6,'moderator1_6@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(8,'Moderator 1 College 7',7,'moderator1_7@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(9,'Moderator 1 College 8',8,'moderator1_8@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(10,'Moderator 1 College 9',9,'moderator1_9@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(11,'Moderator 1 College 10',10,'moderator1_10@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(12,'Moderator 2 College 1',1,'moderator2_1@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(13,'Moderator 2 College 2',2,'moderator2_2@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(14,'Moderator 2 College 3',3,'moderator2_3@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(15,'Moderator 2 College 4',4,'moderator2_4@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(16,'Moderator 2 College 5',5,'moderator2_5@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(17,'Moderator 2 College 6',6,'moderator2_6@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(18,'Moderator 2 College 7',7,'moderator2_7@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(19,'Moderator 2 College 8',8,'moderator2_8@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(20,'Moderator 2 College 9',9,'moderator2_9@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2100,'Moderator 2 College 10',10,'moderator2_10@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2101,'arpitaa1@in.ibm.com',11,'arpitaa21@in.ibm.com','female',1,'33cac5f1f310cc4742a28b28c1a9e90978d76488','33cac5f1f310cc4742a28b28c1a9e90978d76488'),(2102,'Bhaskar_anits',13,'bhaskar.anits@gmail.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2103,'Rekha',15,'superuser@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2104,'Selva',14,'superuser@selva.com','male',2,'99e2b89f3cda731add47da0c4a7698c1e4c80ba3','99e2b89f3cda731add47da0c4a7698c1e4c80ba3'),(2105,'Subash',12,'subashtest@gmail.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2106,'dahale.manjusha@ibm.com',16,'dahale.manjusha@ibm.com','female',1,'8308651804facb7b9af8ffc53a33a22d6a1c8ac2','8308651804facb7b9af8ffc53a33a22d6a1c8ac2'),(2107,'Mouni',26,'moukatam@in.ibm.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2108,'AnushaKalli',20,'AK_demo@gmail.com','female',1,'e5b5be81afe4b5d584f4ca3501c5581c3e1469c5','e5b5be81afe4b5d584f4ca3501c5581c3e1469c5'),(2109,'Narasimhal1@demo.com',24,'nlingala@in.ibm.com','male',1,'2e99f8eb1e1c26d3f84602558329771057685b10','2e99f8eb1e1c26d3f84602558329771057685b10'),(2110,'Prafulla',27,'prafpras@in.ibm.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2111,'SarPriya',18,'sarita.bagde@ibm.com','female',1,'40bd001563085fc35165329ea1ff5c5ecbdbbeef','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(2112,'AnitaModerator',29,'anitasinha4@anita.c1','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2113,'Sathish_Morderator',33,'superuser@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2114,'Anil_Student',30,'dusa.anil.kumar@ibm.com','male',1,'27fec3d74accc8f133e0bc0fe5bbe86d68c1b912','27fec3d74accc8f133e0bc0fe5bbe86d68c1b912'),(2115,'SarPandav',25,'sarita.bagde@ibm.com','male',1,'40bd001563085fc35165329ea1ff5c5ecbdbbeef','40bd001563085fc35165329ea1ff5c5ecbdbbeef'),(2116,'SubashVIT',31,'subashtest2@gmail.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2117,'www',11,'xyz@123.com','female',2,'b2029ba5ea1042d78c96d3888897571eea8c27fa','b2029ba5ea1042d78c96d3888897571eea8c27fa'),(2118,'Moderator_test2',39,'mode2@gmail.com','male',1,'8308651804facb7b9af8ffc53a33a22d6a1c8ac2','8308651804facb7b9af8ffc53a33a22d6a1c8ac2'),(2119,'Mouni1',26,'moukatam1@in.ibm.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2120,'Moderator2',40,'anukalli@in.ibm.com','female',2,'5b3fd2f40bbd1e1e5b62076f75be4699d785e509','e5b5be81afe4b5d584f4ca3501c5581c3e1469c5'),(2121,'Mouni3',34,'moukatam2@in.ibm.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b');
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

-- Dump completed on 2025-11-17 14:29:05
