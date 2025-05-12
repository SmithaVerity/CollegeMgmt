CREATE DATABASE  IF NOT EXISTS `college_mgmt` ;
USE `college_mgmt`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 52.64.79.101    Database: college_mgmt
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_college`
--

LOCK TABLES `tbl_college` WRITE;
/*!40000 ALTER TABLE `tbl_college` DISABLE KEYS */;
INSERT INTO `tbl_college` VALUES (1,'Test College 1','Test College 1 Branch 1'),(2,'Test College 2','Test College 2 Branch 1'),(3,'Test College 3','Test College 3 Branch 1'),(4,'Test College 4','Test College 4 Branch 1'),(5,'Test College 5','Test College 5 Branch 1'),(6,'Test College 6','Test College 6 Branch 1'),(7,'Test College 7','Test College 7 Branch 1'),(8,'Test College 8','Test College 8 Branch 1'),(9,'Test College 9','Test College 9 Branch 1'),(10,'Test College 10','Test College 10 Branch 1'),(11,'Malnad college','E&E'),(12,'Ashwiniu_college','Computer_Science'),(13,'Sang_TestCollage','Chemical'),(14,'Nirmala College','Hyderabad'),(15,'Madhavi Kadam-Test College 1','Madhavi Kadam-Test College1  ,Branch1'),(16,'Najma PSG Tech 1','Civil'),(17,'Madhavi Kadam-Test College 1','Madhavi Kadam-Test College1  ,Branch 2'),(18,'Nirmala College','Hyderabad'),(19,'Najma PSG Tech 2','ECE'),(20,'Najma PSG Tech 3','EEE'),(21,'RV college','Computer'),(22,'Najma PSG Tech 4','Fashion Technology'),(24,'Najma PSG Tech 5','Textile Technology'),(25,'Prashanth_College1','Computer science'),(26,'Test College 1_HA','Test Branch 1_HA'),(27,'Madhavi Kadam-Test College 3','Madhavi Kadam-Test College3  ,Branch 1'),(28,'Prashanth_college2','E&E'),(29,'Madhavi Kadam-Test College 2','Madhavi Kadam-Test College2  ,Branch 2'),(30,'Prashanth_college3','Civil'),(32,'GunaCollege1','BA'),(35,'Prashanth_College4','E&C'),(36,'Prashanth-College5','IT'),(37,'MuraliEngineering','Computers'),(38,'democollege1_12th','mca'),(39,'democollege2_12th','mca'),(40,'democollege3_12th','mca'),(41,'MuraliEngineering1','MCA1'),(42,'MuraliEngineerin2','MCA2'),(43,'MuraliEng3','MCA3'),(44,'Test College 2_HA','Test Branch 2_HA'),(45,'sonam_collage','IT'),(46,'MuraliEng4','MCA4'),(47,'Test College 3_HA','Test Branch 3_HA'),(48,'Test College 1_HA','Test Branch 1_HA'),(49,'MuraliEng5','MCA5'),(50,'Ashwiniu_college123','E & C'),(51,'MuraliEng6','MCA6'),(52,'Sonam_collage1','chemical'),(53,'MuraliEng7','MCA7'),(54,'sonam_collage2','mechanical'),(55,'MuraliEng8','MCA8'),(56,'sonam_collage3','computer'),(57,'GunaCollege2','BE'),(58,'Arti_College','Pune'),(59,'Rukshesh_Clg','test'),(60,'Bhavani collage1','Bhavani collage1Branch1'),(61,'Bhavani collage2','Bhavani collage1Branch2'),(62,'Bhavani collage3','Bhavani collage1Branch3'),(63,'GunaCollege3','Science'),(64,'Test College 4_HA','Test Branch 4_HA'),(65,'Bhavani college3','Bhavani college1Branch3');
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_student`
--

LOCK TABLES `tbl_student` WRITE;
/*!40000 ALTER TABLE `tbl_student` DISABLE KEYS */;
INSERT INTO `tbl_student` VALUES (1,'College 1 Student 1',1,'Male','student1_1@demo.com','B. A'),(2,'College 1 Student 2',1,'Female','student1_2@demo.com','B. Tech'),(3,'College 1 Student 3',1,'Male','student1_3@demo.com','B. Com'),(4,'College 1 Student 4',1,'Female','student1_4@demo.com','B. A'),(5,'College 1 Student 5',1,'Male','student1_5@demo.com','B. Tech'),(6,'College 1 Student 6',1,'Female','student1_6@demo.com','B. Com'),(7,'College 1 Student 7',1,'Male','student1_7@demo.com','B. A'),(8,'College 1 Student 8',1,'Female','student1_8@demo.com','B. Tech'),(9,'College 1 Student 9',1,'Male','student1_9@demo.com','B. Com'),(10,'College 1 Student 10',1,'Female','student1_10@demo.com','B. A'),(11,'College 2 Student 1',2,'Male','student2_1@demo.com','B. Tech'),(12,'College 2 Student 2',2,'Female','student2_2@demo.com','B. Com'),(13,'College 2 Student 3',2,'Male','student2_3@demo.com','B. A'),(14,'College 2 Student 4',2,'Female','student2_4@demo.com','B. Tech'),(15,'College 2 Student 5',2,'Male','student2_5@demo.com','B. Com'),(16,'College 2 Student 6',2,'Female','student2_6@demo.com','B. A'),(17,'College 2 Student 7',2,'Male','student2_7@demo.com','B. Tech'),(18,'College 2 Student 8',2,'Female','student2_8@demo.com','B. Com'),(19,'College 2 Student 9',2,'Male','student2_9@demo.com','B. A'),(20,'College 2 Student 10',2,'Female','student2_10@demo.com','B. Tech'),(21,'College 3 Student 1',3,'Male','student3_1@demo.com','B. Com'),(22,'College 3 Student 2',3,'Female','student3_2@demo.com','B. A'),(23,'College 3 Student 3',3,'Male','student3_3@demo.com','B. Tech'),(24,'College 3 Student 4',3,'Female','student3_4@demo.com','B. Com'),(25,'College 3 Student 5',3,'Male','student3_5@demo.com','B. A'),(26,'College 3 Student 6',3,'Female','student3_6@demo.com','B. Tech'),(27,'College 3 Student 7',3,'Male','student3_7@demo.com','B. Com'),(28,'College 3 Student 8',3,'Female','student3_8@demo.com','B. A'),(29,'College 3 Student 9',3,'Male','student3_9@demo.com','B. Tech'),(30,'College 3 Student 10',3,'Female','student3_10@demo.com','B. Com'),(31,'College 4 Student 1',4,'Male','student4_1@demo.com','B. A'),(32,'College 4 Student 2',4,'Female','student4_2@demo.com','B. Tech'),(33,'College 4 Student 3',4,'Male','student4_3@demo.com','B. Com'),(34,'College 4 Student 4',4,'Female','student4_4@demo.com','B. A'),(35,'College 4 Student 5',4,'Male','student4_5@demo.com','B. Tech'),(36,'College 4 Student 6',4,'Female','student4_6@demo.com','B. Com'),(37,'College 4 Student 7',4,'Male','student4_7@demo.com','B. A'),(38,'College 4 Student 8',4,'Female','student4_8@demo.com','B. Tech'),(39,'College 4 Student 9',4,'Male','student4_9@demo.com','B. Com'),(40,'College 4 Student 10',4,'Female','student4_10@demo.com','B. A'),(41,'College 5 Student 1',5,'Male','student5_1@demo.com','B. Tech'),(42,'College 5 Student 2',5,'Female','student5_2@demo.com','B. Com'),(43,'College 5 Student 3',5,'Male','student5_3@demo.com','B. A'),(44,'College 5 Student 4',5,'Female','student5_4@demo.com','B. Tech'),(45,'College 5 Student 5',5,'Male','student5_5@demo.com','B. Com'),(46,'College 5 Student 6',5,'Female','student5_6@demo.com','B. A'),(47,'College 5 Student 7',5,'Male','student5_7@demo.com','B. Tech'),(48,'College 5 Student 8',5,'Female','student5_8@demo.com','B. Com'),(49,'College 5 Student 9',5,'Male','student5_9@demo.com','B. A'),(50,'College 5 Student 10',5,'Female','student5_10@demo.com','B. Tech'),(51,'Sang_Student',13,'female','sanghamitra.bhowmick@ibm.com','TestCourse'),(52,'Ashwiniu_abc',12,'female','Ashwiniu_abc@gmail.com','Computer Science'),(53,'Student1',32,'female','student1@gunacollege1.com','BA'),(54,'Charm',14,'male','charm@demo.com','MS'),(55,'Student2',32,'male','student2@gunacollege1.com','BSc'),(56,'Student3',32,'male','student3@gunacollege1.com','BSc'),(57,'sonam_student1',52,'female','superuser@demo.com','test CMT'),(58,'Student4',32,'male','student4@gunacollege1.com','BCom'),(59,'Madhavi  Kadam-Test college1 Student1',15,'male','test College 1@test.com','English'),(60,'Prashanth_TestA',25,'male','testa@demo.com','CS'),(61,'Test 1 HA',48,'male','test1@test.com','BE'),(62,'Test_stu001',58,'male','Test_stu001@demo.com','course1'),(63,'Student5',32,'female','student5@gunacollege1.com','BCom'),(64,'Madhavi  Kadam-Test college1 Student2',15,'female','test College 1@test.com','Math'),(65,'Test 2 HA',48,'female','test2@test.com','BE'),(66,'SONAM_STUDENT2',54,'female','superuser@demo.com','IT'),(67,'Test 3 HA',48,'male','test2@test.com','BE'),(68,'Test_stu002',58,'male','Test_stu002@demo.com','course2'),(69,'Madhavi  Kadam-Test college2 Student1',29,'male','test College 2@test.com','Hindi'),(70,'Madhavi  Kadam-Test college2 Student2',29,'female','test College 2@test.com','Marathi'),(71,'Test 7 HA',47,'male','test2@test.com','BE'),(72,'Test 5 HA',47,'female','test5@test.com','BE'),(73,'Madhavi  Kadam-Test college3 Student1',27,'female','test College 3@test.com','IT '),(74,'Jeni',16,'female','jeni@demo.com','Civil'),(75,'Test 1 HA',48,'male','test1@test.com','BE'),(76,'Pavithra',19,'female','pavi@demo.com','ECE'),(77,'Deva',14,'male','Deva@demo.com','MBA'),(78,'Student1',57,'male','student1@gunacollege2.com','Mech'),(79,'Balamani',20,'female','bala@demo.com','EEE'),(80,'Student2',57,'female','student2@gunacollege2.com','Prod'),(81,'Vinothini',22,'female','vino@demo.com','Fashion Tech'),(82,'Student3',57,'male','student3@gunacollege2.com','CS'),(83,'Seetha',24,'female','seetha@demo.com','Textile Tech'),(84,'Student4',57,'female','student4@gunacollege2.com','IT'),(85,'Student5',57,'female','student5@gunacollege2.com','IT'),(86,'Ashwiniu_xyz',50,'female','Ashwiniu_123@gmail.com','E & C'),(87,'Student6',57,'male','student6@gunacollege2.com','CS'),(88,'Madhavi  Kadam-Test college2 Student1',23,'male','test College 2@test.com','Computer '),(89,'Test 12 HA',44,'male','superuser@demo.com','BE'),(90,'test_st',38,'male','Aanchal.Asthana@ibm.com','mca11'),(91,'Test 13 HA',26,'male','test2@test.com','BE'),(92,'Prashanth_testB',28,'female','Prashanth_college2@demo.com','Civil'),(93,'Test 13 HA',48,'female','test1@test.com','BE'),(94,'Student7',57,'female','student7@gunacollege2.com','CS'),(95,'Ashwiniu_asd',50,'male','Ashwiniu_456@gmail.com','E & E'),(96,'Jeni',19,'female','jeni@demo.com','ECE'),(97,'Manoj',16,'male','manoj@demo.com','Civil'),(98,'Sakthivel',20,'male','sakthi@demo.com','EEE'),(99,'Test 14 HA',48,'female','test14@test.com','BE'),(100,'Balamani',22,'female','bala@demo.com','Fashion Tech'),(101,'Sathish',24,'male','sathish@demo.com','Textile Tech'),(102,'Rex',16,'male','rex@demo.com','Civil'),(103,'Arun',19,'male','arun@demo.com','Civil'),(104,'Prashanth_TestD',30,'female','Prashanth_college3@demo.com','IT'),(105,'Student8',57,'male','student8@gunacollege2.com','EIE'),(106,'Student9',57,'female','student9@gunacollege2.com','EIE'),(107,'Test 15 HA',48,'male','test15@test.com','BE'),(108,'Student10',57,'female','student10@gunacollege2.com','Mech'),(109,'Bhavani Student1',60,'female','Bhavanistudent1@email.com','course1'),(110,'Prashanth_TestH',35,'male','Prashanth_college4@demo.com','CS'),(111,'Bhavani Student2',61,'female','Bhavanistudent2@email.com','course2'),(112,'Bhavani Student2',62,'female','Bhavanistudent3@email.com','course3'),(113,'Student1',63,'male','student1@gunacollege3.com','Phy'),(114,'Student1',63,'female','student2@gunacollege3.com','Che'),(115,'Student3',63,'female','student3@gunacollege3.com','Zoo'),(116,'Student4',63,'male','student4@gunacollege3.com','Zoo'),(117,'Test 001 HA',64,'male','test001@test.com','BE'),(118,'Test 002 HA',64,'female','test002@test.com','BE'),(119,'murali_student1',37,'male','murali@gmail.com','mca1'),(120,'Test 003 HA',64,'male','test003@test.com','BE'),(121,'murali_student1',42,'male','murali@gmail.com','mca1'),(122,'Bhavani Student4',65,'male','Bhavani Mod1@clg.com','course4'),(123,'murali_student2',37,'male','murali@gmail.com','mca2'),(124,'Bhavani Student5',65,'male','Bhavani Mod1@clg.com','course5'),(125,'Student5',63,'male','student4@gunacollege3.com','Bot'),(126,'murali_student2',42,'male','murali@gmail.com','mca2'),(127,'Murali_student3',42,'male','murali@gmail.com','mca3'),(128,'murali_college3',43,'male','murali@gmail.com','mca3'),(129,'murali_student3',43,'male','murali@gmail.com','mca4'),(130,'murali_student8',55,'female','murali@gmail.com','mca8');
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
) ENGINE=InnoDB AUTO_INCREMENT=2142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'SuperUser',0,'superuser@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2,'Moderator 1 College 1',1,'moderator1_1@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(3,'Moderator 1 College 2',2,'moderator1_2@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(4,'Moderator 1 College 3',3,'moderator1_3@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(5,'Moderator 1 College 4',4,'moderator1_4@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(6,'Moderator 1 College 5',5,'moderator1_5@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(7,'Moderator 1 College 6',6,'moderator1_6@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(8,'Moderator 1 College 7',7,'moderator1_7@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(9,'Moderator 1 College 8',8,'moderator1_8@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(10,'Moderator 1 College 9',9,'moderator1_9@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(11,'Moderator 1 College 10',10,'moderator1_10@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(12,'Moderator 2 College 1',1,'moderator2_1@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(13,'Moderator 2 College 2',2,'moderator2_2@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(14,'Moderator 2 College 3',3,'moderator2_3@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(15,'Moderator 2 College 4',4,'moderator2_4@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(16,'Moderator 2 College 5',5,'moderator2_5@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(17,'Moderator 2 College 6',6,'moderator2_6@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(18,'Moderator 2 College 7',7,'moderator2_7@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(19,'Moderator 2 College 8',8,'moderator2_8@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(20,'Moderator 2 College 9',9,'moderator2_9@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2100,'Moderator 2 College 10',10,'moderator2_10@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2101,'Sang_Moderator',13,'sanghamitra.bhowmick@ibm.com','female',1,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2102,'Ashwiniu_123',12,'Ashwiniu_123@gmail.com','female',1,'f5e3b0162373b1e3b93ba29b33e0dd1121d9981f','f5e3b0162373b1e3b93ba29b33e0dd1121d9981f'),(2103,'npanjala@in.ibm.com',14,'Nir@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2104,'Madhavi Kadam',15,'mad 123@test.com','female',1,'7110eda4d09e062aa5e4a390b0a572ac0d2c0220','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(2105,'gunaModerator1',32,'test@gunacollege1.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2106,'Test moderator 1_HA',26,'moderator1_1@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2107,'Madhavi kadam Moderator 2',29,'test College 2@test.com','male',2,'8cb2237d0679ca88db6464eac60da96345513964','8cb2237d0679ca88db6464eac60da96345513964'),(2108,'Prashanth_test1',25,'prashanth_college1@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2109,'Test moderator 2_HA',44,'moderator1_1@demo.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2110,'TestModerator_001',1,'TestModerator_001@demo.com','male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2111,'Aanchal.Asthana@ibm.com',38,'Aanchal.Asthana@ibm.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2112,'Madhavi kadam Moderator 3',27,'test College 2@test.com','female',2,'7110eda4d09e062aa5e4a390b0a572ac0d2c0220','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(2113,'Test moderator 3_HA',47,'moderator1_1@demo.com','male',1,'20eabe5d64b0e216796e834f52d61fd0b70332fc','20eabe5d64b0e216796e834f52d61fd0b70332fc'),(2114,'Moderator 1 PSG Tech 1',16,'modpsg1@demo.com','male',1,'75dca01832391c098332c8217cb5ca0461ced07c','75dca01832391c098332c8217cb5ca0461ced07c'),(2115,'Aanchal.Asthana@ibm.com',39,'superuser@demo.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2116,'Moderator 2 PSG Tech 2',19,'modpsg2@demo.com','female',2,'75dca01832391c098332c8217cb5ca0461ced07c','75dca01832391c098332c8217cb5ca0461ced07c'),(2117,'Aanchal.Asthana@ibm.com',40,'superuser@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2118,'Moderator 3 PSG Tech 3',20,'modpsg3@demo.com','male',1,'75dca01832391c098332c8217cb5ca0461ced07c','75dca01832391c098332c8217cb5ca0461ced07c'),(2119,'Moderator 4 PSG Tech 4',22,'modpsg4@demo.com','female',2,'75dca01832391c098332c8217cb5ca0461ced07c','75dca01832391c098332c8217cb5ca0461ced07c'),(2120,'Moderator 5 PSG Tech 5',24,'modpsg5@demo.com','male',1,'75dca01832391c098332c8217cb5ca0461ced07c','75dca01832391c098332c8217cb5ca0461ced07c'),(2121,'Ashwiniu_123',50,'Ashwiniu_123@gmail.com','female',1,'dbe5820a62e1edbf2e6a79f7216f29198a1b3877','dbe5820a62e1edbf2e6a79f7216f29198a1b3877'),(2122,'gunaModerator2',57,'test@gunacollege2.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2123,'superuser@demo.com',52,'modsg@demo.com','female',1,'0e7486fe8713ef03aabb523ecb6a95da0121395b','0e7486fe8713ef03aabb523ecb6a95da0121395b'),(2124,'Prashanth_test2',28,'Prashanth_college2@demo.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2125,'modsg@demo.com',56,'modsg@demo.com','female',1,'ea0e80fb81a76e79d6182503325be42def7a4103','ea0e80fb81a76e79d6182503325be42def7a4103'),(2126,'Ashwiniu_456',12,'Ashwiniu_456@gmail.com','male',1,'e59f96ac5dcd02f69b9c75561acbf7315efe4627','88e05ebe70f2de9d2541a7f460f2a546d4105fc2'),(2127,'TestModerator_001',58,'TestModerator_001@demo.com','male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2128,'testmod',59,'testmod@abc.com','male',1,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3','a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),(2129,'Prashanth-TestD',30,'Prashanth_college3@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2130,'Bhavani Mod1',60,'Bhavani Mod1@clg.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2131,'Bhavani Mod2',61,'Bhavani Mod2@clg.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2132,'Prashanth_TestH',35,'Prashanth_college4@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2133,'Bhavani Mod3',62,'Bhavani Mod3@clg.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2134,'Test1',14,'Nir@demo.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2135,'gunaModerator3',63,'test@gunacollege3.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2136,'Murali_moderator',37,'murali@gmail.com','male',1,'862c79a378b627b393f42fab21174f58218b165b','862c79a378b627b393f42fab21174f58218b165b'),(2137,'Test moderator 4_HA',64,'moderator1_4@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2138,'Murali_moderator2',42,'murali@gmail.com','male',1,'862c79a378b627b393f42fab21174f58218b165b','862c79a378b627b393f42fab21174f58218b165b'),(2139,'Bhavani Mod3',65,'Bhavani Mod3@clg.com','male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2140,'Murali_moderator3',43,'murali@gmail.com','male',2,'862c79a378b627b393f42fab21174f58218b165b','862c79a378b627b393f42fab21174f58218b165b'),(2141,'Murali_Moderator8',55,'murali@gmail.com','male',2,'862c79a378b627b393f42fab21174f58218b165b','862c79a378b627b393f42fab21174f58218b165b');
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

-- Dump completed on 2025-05-12 22:57:23
