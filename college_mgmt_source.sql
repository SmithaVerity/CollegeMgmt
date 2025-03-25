CREATE DATABASE  IF NOT EXISTS `college_mgmt` ;
USE `college_mgmt`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 52.64.214.228    Database: college_mgmt
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_college`
--

LOCK TABLES `tbl_college` WRITE;
/*!40000 ALTER TABLE `tbl_college` DISABLE KEYS */;
INSERT INTO `tbl_college` VALUES (1,'Test College 1','Test College 1 Branch 1'),(2,'Test College 2','Test College 2 Branch 1'),(3,'Test College 3','Test College 3 Branch 1'),(4,'Test College 4','Test College 4 Branch 1'),(5,'Test College 5','Test College 5 Branch 1'),(6,'Test College 6','Test College 6 Branch 1'),(7,'Test College 7','Test College 7 Branch 1'),(8,'Test College 8','Test College 8 Branch 1'),(9,'Test College 9','Test College 9 Branch 1'),(10,'Test College 10','Test College 10 Branch 1'),(11,'Jallepalle_CS','Hyderabad'),(12,'MiteshCollege','ECE'),(13,'Pratik_College','Kolkata Branch'),(14,'Prabhat- IIIT','Bangalore'),(15,'BLDE','CS'),(16,'Mounika College',' ECE'),(17,'Rakesh_Test College Rakesh','CS'),(18,'SRA','EEE'),(19,'Hari_college1','Hari_Branch1'),(20,'Hemavathi Navkis College','BEL '),(21,'Hemavathi Navkis College','BEL '),(22,'Nag_KC_College1','Nag_Branch1'),(23,'Nag_KC_College2','Nag_Branch2'),(24,'Nag_KC_College3','Nag_Branch3'),(25,'Nag_KC_College4','Nag_Branch4'),(26,'Nag_KC_College5','Nag_Branch5'),(27,'Hemavathi Navkis College','BEL 1'),(28,'Hemavathi Navkis College','BEL 1'),(29,'SRA','EEE'),(30,'Hema_s1','BEL '),(31,'Navkis','Bangalore'),(32,'Rakesh_Test College','ABC'),(33,'Mounicollege','CSE'),(34,'Hari_college2','Hari_Branch2'),(35,'Hari_college3','Hari_Branch3');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (1,'College 1 Student 1',1,'Male','student1_1@demo.com','B. A'),(2,'College 1 Student 2',1,'Female','student1_2@demo.com','B. Tech'),(3,'College 1 Student 3',1,'Male','student1_3@demo.com','B. Com'),(4,'College 1 Student 4',1,'Female','student1_4@demo.com','B. A'),(5,'College 1 Student 5',1,'Male','student1_5@demo.com','B. Tech'),(6,'College 1 Student 6',1,'Female','student1_6@demo.com','B. Com'),(7,'College 1 Student 7',1,'Male','student1_7@demo.com','B. A'),(8,'College 1 Student 8',1,'Female','student1_8@demo.com','B. Tech'),(9,'College 1 Student 9',1,'Male','student1_9@demo.com','B. Com'),(10,'College 1 Student 10',1,'Female','student1_10@demo.com','B. A'),(11,'College 2 Student 1',2,'Male','student2_1@demo.com','B. Tech'),(12,'College 2 Student 2',2,'Female','student2_2@demo.com','B. Com'),(13,'College 2 Student 3',2,'Male','student2_3@demo.com','B. A'),(14,'College 2 Student 4',2,'Female','student2_4@demo.com','B. Tech'),(15,'College 2 Student 5',2,'Male','student2_5@demo.com','B. Com'),(16,'College 2 Student 6',2,'Female','student2_6@demo.com','B. A'),(17,'College 2 Student 7',2,'Male','student2_7@demo.com','B. Tech'),(18,'College 2 Student 8',2,'Female','student2_8@demo.com','B. Com'),(19,'College 2 Student 9',2,'Male','student2_9@demo.com','B. A'),(20,'College 2 Student 10',2,'Female','student2_10@demo.com','B. Tech'),(21,'College 3 Student 1',3,'Male','student3_1@demo.com','B. Com'),(22,'College 3 Student 2',3,'Female','student3_2@demo.com','B. A'),(23,'College 3 Student 3',3,'Male','student3_3@demo.com','B. Tech'),(24,'College 3 Student 4',3,'Female','student3_4@demo.com','B. Com'),(25,'College 3 Student 5',3,'Male','student3_5@demo.com','B. A'),(26,'College 3 Student 6',3,'Female','student3_6@demo.com','B. Tech'),(27,'College 3 Student 7',3,'Male','student3_7@demo.com','B. Com'),(28,'College 3 Student 8',3,'Female','student3_8@demo.com','B. A'),(29,'College 3 Student 9',3,'Male','student3_9@demo.com','B. Tech'),(30,'College 3 Student 10',3,'Female','student3_10@demo.com','B. Com'),(31,'College 4 Student 1',4,'Male','student4_1@demo.com','B. A'),(32,'College 4 Student 2',4,'Female','student4_2@demo.com','B. Tech'),(33,'College 4 Student 3',4,'Male','student4_3@demo.com','B. Com'),(34,'College 4 Student 4',4,'Female','student4_4@demo.com','B. A'),(35,'College 4 Student 5',4,'Male','student4_5@demo.com','B. Tech'),(36,'College 4 Student 6',4,'Female','student4_6@demo.com','B. Com'),(37,'College 4 Student 7',4,'Male','student4_7@demo.com','B. A'),(38,'College 4 Student 8',4,'Female','student4_8@demo.com','B. Tech'),(39,'College 4 Student 9',4,'Male','student4_9@demo.com','B. Com'),(40,'College 4 Student 10',4,'Female','student4_10@demo.com','B. A'),(41,'College 5 Student 1',5,'Male','student5_1@demo.com','B. Tech'),(42,'College 5 Student 2',5,'Female','student5_2@demo.com','B. Com'),(43,'College 5 Student 3',5,'Male','student5_3@demo.com','B. A'),(44,'College 5 Student 4',5,'Female','student5_4@demo.com','B. Tech'),(45,'College 5 Student 5',5,'Male','student5_5@demo.com','B. Com'),(46,'College 5 Student 6',5,'Female','student5_6@demo.com','B. A'),(47,'College 5 Student 7',5,'Male','student5_7@demo.com','B. Tech'),(48,'College 5 Student 8',5,'Female','student5_8@demo.com','B. Com'),(49,'College 5 Student 9',5,'Male','student5_9@demo.com','B. A'),(50,'College 5 Student 10',5,'Female','student5_10@demo.com','B. Tech'),(51,'Jallepalle',11,'male','sridhar@abc.com','CS'),(52,'ramesh',11,'male','abc1@abc.com','math'),(53,'suresh',11,'male','rrrr@abc.com','CS'),(54,'MiteshCollegeStudent1',12,'male','MS1@demo.com','ECE'),(55,'MiteshCollegeStudent2',12,'female','MS2@demo.com','CSE'),(56,'studentIIIT1',14,'male','studentIIIT1@somegmail.com','BTech'),(57,'MiteshCollegeStudent3',12,'male','MS3@demo.com','MECH'),(58,'Abhi',15,'male','abhishekpatted13@gmail.com','CS'),(59,'Pratik Student',13,'male','pratikstudent@gmail.com','Mechanical'),(60,'MiteshCollegeStudent4',12,'male','MS4@demo.com','ECE'),(61,'StudentIIIT2',14,'female','StudentIIIT2@somegmail.com','BTech'),(62,'MiteshCollegeStudent5',12,'female','MS5@demo.com','AIR'),(63,'MiteshCollegeStudent6',12,'female','MS6@demo.com','MECH'),(64,'MiteshCollegeStudent7',12,'male','MS8@demo.com','ELE'),(65,'mahesh',11,'male','mahesh@abc.com','math'),(66,'MiteshCollegeStudent8',12,'male','MS8@demo.com','ECE'),(67,'Mounika',16,'female','mounikacollege@gmail.com','ECE'),(68,'MiteshCollegeStudent9',12,'female','MS9@demo.com','AIR'),(69,'MiteshCollegeStudent10',12,'female','MS10@demo.com','CSE'),(70,'Pratik Student1',13,'male','pratikstudent@gmail.com','Electrical'),(71,'Rakesh_TestStudent',17,'male','rakesh1@gmail.com','CS'),(73,'Pratik Student2',13,'male','pratikstudent1@gmail.com','Computer'),(74,'Rakesh_TestStudent1',17,'male','rakesh2@gmail.com','EC'),(75,'Rakesh_TestStudent2',17,'female','rakesh3@gmail.com','EC'),(76,'Rakesh_TestStudent3',17,'male','rakesh4@gmail.com','CS'),(77,'Haadiya',28,'male','haadiya_1','BSC'),(78,'Hari_student4',19,'male','hari_test4@gmail.com','BBA'),(79,'Purvika',27,'female','Purvika1','BA'),(80,'Rakesh_TestStudent4',17,'male','rakesh5@gmail.com','CS'),(81,'Hari_student3',19,'male','hari_test3@gmail.com','MCA'),(82,'Gangothi',28,'female','Gangoth-1','BCOM'),(83,'Pavan',28,'male','Pavan_3','BE'),(84,'studentIIIT3',14,'male','studentIIIT3@somegmail.com','BTech'),(85,'Pinky',28,'female','Pink_8','BSC'),(86,'Nag_Student1',22,'male','Nag_Student1@yahoo.com','Nag_Branch1'),(87,'Nag_Student2',22,'female','Nag_Student2@yahoo.com','Nag_Branch1'),(88,'Nag_Student3',22,'male','Nag_Student2@yahoo.com','Nag_Branch3'),(89,'Nag_Student4',22,'female','Nag_Student4@yahoo.com','Nag_Branch4'),(90,'Neha',29,'female','neha@gmail.com','BBM'),(91,'Nag_Student5',22,'female','Nag_Student5@yahoo.com','Nag_Branch4'),(92,'Pratik Student3',13,'male','pratikstudent1@gmail.com','Electronics'),(93,'Mouni',33,'female','mounicollege@gmail.com','CSE'),(94,'Rakesh_student1',32,'male','ra1@gmail.com','MCA');
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
) ENGINE=InnoDB AUTO_INCREMENT=2121 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'SuperUser',0,'superuser@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2,'Moderator 1 College 1',1,'moderator1_1@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(3,'Moderator 1 College 2',2,'moderator1_2@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(4,'Moderator 1 College 3',3,'moderator1_3@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(5,'Moderator 1 College 4',4,'moderator1_4@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(6,'Moderator 1 College 5',5,'moderator1_5@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(7,'Moderator 1 College 6',6,'moderator1_6@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(8,'Moderator 1 College 7',7,'moderator1_7@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(9,'Moderator 1 College 8',8,'moderator1_8@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(10,'Moderator 1 College 9',9,'moderator1_9@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(11,'Moderator 1 College 10',10,'moderator1_10@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(12,'Moderator 2 College 1',1,'moderator2_1@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(13,'Moderator 2 College 2',2,'moderator2_2@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(14,'Moderator 2 College 3',3,'moderator2_3@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(15,'Moderator 2 College 4',4,'moderator2_4@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(16,'Moderator 2 College 5',5,'moderator2_5@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(17,'Moderator 2 College 6',6,'moderator2_6@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(18,'Moderator 2 College 7',7,'moderator2_7@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(19,'Moderator 2 College 8',8,'moderator2_8@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(20,'Moderator 2 College 9',9,'moderator2_9@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2100,'Moderator 2 College 10',10,'moderator2_10@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2101,'MiteshMod1',12,'MiteshMod1@demo.com','male',2,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),(2102,'IIIT-userAdmin',14,'userAdmin.prabhat.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2103,'Pratik_Moderator',13,'pratiks@gmail.com','male',1,'b2b914cafe1bfb89f5008ca2da7a1a562915abfa','b2b914cafe1bfb89f5008ca2da7a1a562915abfa'),(2104,'abhip123',15,'abhishekpatted13@gmail.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2105,'Mounika',16,'mounikacollege@gmail.com','female',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2106,'Smita',18,'smita2025@gmail.com','female',2,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2107,'Rakesh_Admin_Moderator',17,'rakesh@gmail.com','male',1,'5a89b9699751d5123a9646771e833b7b0e2390a0','5a89b9699751d5123a9646771e833b7b0e2390a0'),(2108,'vishesh',11,'vish@abc.com','male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2109,'Hari_User1',19,'Hari_email@gmial.com','male',1,'cb09825e3aef7b8f400e57300c16eb2ad8891224','53ac902be1023056cdd4e6f26d6eac0fbcd92393'),(2110,'MiteshMod2',12,'MiteshMod2@demo.com','female',2,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),(2111,'Nag_Student1',22,'Nag_Student1@yahoo.com','male',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2112,'smita',29,'smita2025@gmail.com','female',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2113,'Nag_Student2',22,'Nag_Student2@yahoo.com','female',2,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2114,'Nag_Student3',22,'Nag_Student3@yahoo.com','male',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2115,'Nag_Student4',22,'Nag_Student4@yahoo.com','female',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2116,'Nag_Student5',22,'Nag_Student5@yahoo.com','male',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2117,'Hemavathi S',28,'hema_siddagangaiah@yahoo.com','female',1,'eb55192875c1f35931b1deb03a625e1eac8f0912','eb55192875c1f35931b1deb03a625e1eac8f0912'),(2118,'Rakesh_Moderator',32,'ra@gmail.com','male',1,'8d1a5fdb2c29af4a17160d3d5c04fcde40f08961','5a89b9699751d5123a9646771e833b7b0e2390a0'),(2119,'MouniRoy',33,'mounicollege@gmail.com','female',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2120,'Hari_User2',34,'hari_test5@gmail.com','male',2,'cb09825e3aef7b8f400e57300c16eb2ad8891224','7c4a8d09ca3762af61e59520943dc26494f8941b');
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

-- Dump completed on 2025-03-25 17:17:04
