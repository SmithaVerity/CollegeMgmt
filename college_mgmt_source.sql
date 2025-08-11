CREATE DATABASE  IF NOT EXISTS `college_mgmt`;
USE `college_mgmt`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 13.210.243.0    Database: college_mgmt
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.2

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_college`
--

LOCK TABLES `tbl_college` WRITE;
/*!40000 ALTER TABLE `tbl_college` DISABLE KEYS */;
INSERT INTO `tbl_college` VALUES (1,'Test College 1','Test College 1 Branch 1'),(2,'Test College 2','Test College 2 Branch 1'),(3,'Test College 3','Test College 3 Branch 1'),(4,'Test College 4','Test College 4 Branch 1'),(5,'Test College 5','Test College 5 Branch 1'),(6,'Test College 6','Test College 6 Branch 1'),(7,'Test College 7','Test College 7 Branch 1'),(8,'Test College 8','Test College 8 Branch 1'),(9,'Test College 9','Test College 9 Branch 1'),(10,'Test College 10','Test College 10 Branch 1'),(11,'Jyoti_Test College Name01','Science '),(12,'Jyoti_Test College Name02','Art'),(13,'Test_Ravi','BLR'),(14,'VL College 1','VL Branch 1'),(15,'VL College 2','VL Branch 2'),(16,'VL College 3','VL Branch 3'),(17,'sup_RLT','Bandra'),(18,'Ravenshaw University UKP','BSC ITM UKP'),(19,'sup_LTR','Pawai'),(20,'Srikanth_College001','Branch001'),(21,'Swapnil COEP 1','Computer'),(22,'Ravenshaw University UKP','Computer Science UKP'),(23,'Kirti_college','Kirti_Branch_1'),(24,'Swapnil COEP 2','AIML'),(25,'mmTJ1','pune1'),(26,'mmTJ2','pune2'),(27,'mmTJ3','pune3'),(28,'CIT College,Latur','Latur'),(29,'Test_College_PV','Test_Branch_PV'),(30,'Anjali_College','C.S.E'),(31,'Anjali_College_1','C.S.E_AI');
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
INSERT INTO `tbl_student` VALUES (1,'College 1 Student 1',1,'Male','student1_1@demo.com','B. A'),(2,'College 1 Student 2',1,'Female','student1_2@demo.com','B. Tech'),(3,'College 1 Student 3',1,'Male','student1_3@demo.com','B. Com'),(4,'College 1 Student 4',1,'Female','student1_4@demo.com','B. A'),(5,'College 1 Student 5',1,'Male','student1_5@demo.com','B. Tech'),(6,'College 1 Student 6',1,'Female','student1_6@demo.com','B. Com'),(7,'College 1 Student 7',1,'Male','student1_7@demo.com','B. A'),(8,'College 1 Student 8',1,'Female','student1_8@demo.com','B. Tech'),(9,'College 1 Student 9',1,'Male','student1_9@demo.com','B. Com'),(10,'College 1 Student 10',1,'Female','student1_10@demo.com','B. A'),(11,'College 2 Student 1',2,'Male','student2_1@demo.com','B. Tech'),(12,'College 2 Student 2',2,'Female','student2_2@demo.com','B. Com'),(13,'College 2 Student 3',2,'Male','student2_3@demo.com','B. A'),(14,'College 2 Student 4',2,'Female','student2_4@demo.com','B. Tech'),(15,'College 2 Student 5',2,'Male','student2_5@demo.com','B. Com'),(16,'College 2 Student 6',2,'Female','student2_6@demo.com','B. A'),(17,'College 2 Student 7',2,'Male','student2_7@demo.com','B. Tech'),(18,'College 2 Student 8',2,'Female','student2_8@demo.com','B. Com'),(19,'College 2 Student 9',2,'Male','student2_9@demo.com','B. A'),(20,'College 2 Student 10',2,'Female','student2_10@demo.com','B. Tech'),(21,'College 3 Student 1',3,'Male','student3_1@demo.com','B. Com'),(22,'College 3 Student 2',3,'Female','student3_2@demo.com','B. A'),(23,'College 3 Student 3',3,'Male','student3_3@demo.com','B. Tech'),(24,'College 3 Student 4',3,'Female','student3_4@demo.com','B. Com'),(25,'College 3 Student 5',3,'Male','student3_5@demo.com','B. A'),(26,'College 3 Student 6',3,'Female','student3_6@demo.com','B. Tech'),(27,'College 3 Student 7',3,'Male','student3_7@demo.com','B. Com'),(28,'College 3 Student 8',3,'Female','student3_8@demo.com','B. A'),(29,'College 3 Student 9',3,'Male','student3_9@demo.com','B. Tech'),(30,'College 3 Student 10',3,'Female','student3_10@demo.com','B. Com'),(31,'College 4 Student 1',4,'Male','student4_1@demo.com','B. A'),(32,'College 4 Student 2',4,'Female','student4_2@demo.com','B. Tech'),(33,'College 4 Student 3',4,'Male','student4_3@demo.com','B. Com'),(34,'College 4 Student 4',4,'Female','student4_4@demo.com','B. A'),(35,'College 4 Student 5',4,'Male','student4_5@demo.com','B. Tech'),(36,'College 4 Student 6',4,'Female','student4_6@demo.com','B. Com'),(37,'College 4 Student 7',4,'Male','student4_7@demo.com','B. A'),(38,'College 4 Student 8',4,'Female','student4_8@demo.com','B. Tech'),(39,'College 4 Student 9',4,'Male','student4_9@demo.com','B. Com'),(40,'College 4 Student 10',4,'Female','student4_10@demo.com','B. A'),(41,'College 5 Student 1',5,'Male','student5_1@demo.com','B. Tech'),(42,'College 5 Student 2',5,'Female','student5_2@demo.com','B. Com'),(43,'College 5 Student 3',5,'Male','student5_3@demo.com','B. A'),(44,'College 5 Student 4',5,'Female','student5_4@demo.com','B. Tech'),(45,'College 5 Student 5',5,'Male','student5_5@demo.com','B. Com'),(46,'College 5 Student 6',5,'Female','student5_6@demo.com','B. A'),(47,'College 5 Student 7',5,'Male','student5_7@demo.com','B. Tech'),(48,'College 5 Student 8',5,'Female','student5_8@demo.com','B. Com'),(49,'College 5 Student 9',5,'Male','student5_9@demo.com','B. A'),(50,'College 5 Student 10',5,'Female','student5_10@demo.com','B. Tech'),(51,'Jyoti_Test User01',11,'female','jyoti@abc1.com','IT'),(52,'Jyoti_Test User02',11,'female','jyoti@abc2.com','IT'),(53,'Srikanth_Student',20,'male','srikanthkankatala@gmail.com','Btech'),(54,'Test_Ravi_123',13,'male','test.ravi12345@yahoo.com','BE'),(55,'VL Student 1',14,'male','vlstudent1@demo.com','VL Course 1'),(56,'VL Student 2',14,'female','vlstudent2@demo.com','VL Course 2'),(57,'Umakanta Parida',18,'male','ukp82@gmail.com','BSC ITM'),(58,'VL Student 3',14,'male','vlstudent3@demo.com','VL Course 3'),(59,'Test_Ravi_456',13,'male','Test_Ravi_456@gmail.com','PG'),(60,'sup_test1',17,'male','sup_test1@test.com','Cloud testing'),(61,'VL Student 4',15,'male','vlstudent4@demo.com','VL Course 4'),(62,'VL Student 5',15,'female','vlstudent5@demo.com','VL Course 5'),(63,'Swapnil Student 1',24,'male','swapnil_student1@gmail.com','Computer manual'),(64,'VL Student 6',15,'female','vlstudent6@demo.com','VL Course 6'),(65,'VL Student 7',16,'male','vlstudent7@demo.com','VL Course 7'),(66,'Swapnil Student 2',21,'male','swapnil_student2@gmail.com','AIML manual'),(67,'VL Student 8',16,'male','vlstudent8@demo.com','VL Course 8'),(68,'sup_test2',19,'female','sup_test2@test.com','BE'),(69,'Kirti_student',23,'male','kirti.mishra1@ibm.com','Course_Kirti'),(70,'VL Student 9',16,'female','vlstudent9@demo.com','VL Course 9'),(71,'Jyoti_Test User03',12,'female','jyoti@abc3.com','Music'),(72,'Arnika',28,'female','arnika@demo.com','IT'),(73,'mm1',25,'male','mahemane@in.ibm.com','bcs'),(74,'sup_test3',19,'male','sup_test3','Bcom'),(75,'Umakanta Paridaaaa',22,'male','ukp85@gmail.com','Computer Science'),(76,'College PV Student 1',29,'female','student1_PV@demo.com','Electrical'),(77,'mm2',26,'male','mahemane@in.ibm.com','mcs'),(78,'Yashika',28,'female','yashika@demo.com','cs'),(79,'Srikanth_Student2',20,'male','srikanthkankatala1@gmail.com','MCA'),(80,'mm3',27,'male','mahemane@in.ibm.com','bcsmcs'),(81,'sup_test4',19,'male','sup_test4@test.com','bsc'),(82,'College PV Student 2',29,'male','student2_PV@demo.com','Civil'),(83,'sup_test4',19,'male','sup_test4@test.com','Bsc'),(84,'sup_RLT1',17,'male','sup_rlt1@test.com','BBA'),(85,'sup_rlt3',17,'male','sup_rlt@test.com','BBA'),(86,'mmclg1',25,'male','mahemane@in.ibm.com','bcs'),(87,'Anjali_Student',30,'female','AnjaliDemo@gmail.com','C.S.E'),(88,'mmclg2',26,'male','mahemane@in.ibm.com','mcs');
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
) ENGINE=InnoDB AUTO_INCREMENT=2126 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'SuperUser',0,'superuser@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2,'Moderator 1 College 1',1,'moderator1_1@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(3,'Moderator 1 College 2',2,'moderator1_2@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(4,'Moderator 1 College 3',3,'moderator1_3@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(5,'Moderator 1 College 4',4,'moderator1_4@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(6,'Moderator 1 College 5',5,'moderator1_5@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(7,'Moderator 1 College 6',6,'moderator1_6@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(8,'Moderator 1 College 7',7,'moderator1_7@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(9,'Moderator 1 College 8',8,'moderator1_8@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(10,'Moderator 1 College 9',9,'moderator1_9@demo.com','Male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(11,'Moderator 1 College 10',10,'moderator1_10@demo.com','Female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(12,'Moderator 2 College 1',1,'moderator2_1@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(13,'Moderator 2 College 2',2,'moderator2_2@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(14,'Moderator 2 College 3',3,'moderator2_3@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(15,'Moderator 2 College 4',4,'moderator2_4@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(16,'Moderator 2 College 5',5,'moderator2_5@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(17,'Moderator 2 College 6',6,'moderator2_6@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(18,'Moderator 2 College 7',7,'moderator2_7@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(19,'Moderator 2 College 8',8,'moderator2_8@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(20,'Moderator 2 College 9',9,'moderator2_9@demo.com','Male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2100,'Moderator 2 College 10',10,'moderator2_10@demo.com','Female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2101,'Test_Ravi',13,'test.ravi@gmail.com','male',1,'4c55f7670383f88028c5e661682bb34e7a515e47','62093489d7f0da5fba3d1a85ebbb2ed3cf8d2f3d'),(2102,'VL Moderator 1',14,'vlmoderator1@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2103,'VL Moderator 2',15,'vlmoderator1@demo.com','female',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2104,'VL Moderator 3',16,'vlmoderator1@demo.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2105,'Test_ravi_123',13,'test.ravi123@test.com','male',1,'4c55f7670383f88028c5e661682bb34e7a515e47','4c55f7670383f88028c5e661682bb34e7a515e47'),(2106,'sup_Moderator1',19,'sup_moderater1@test.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2107,'srikanth',20,'srikanth.kankatala@ibm.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2108,'UKP',18,'ukp82@gmial.com','male',1,'d0b559b7f13d4eb026a151aee8a38a635453e560','d0b559b7f13d4eb026a151aee8a38a635453e560'),(2109,'Jyoti_Moderator01',11,'Jyoti_Moderator01@gmail.com','female',1,'719855e8f4ebd94341277b0b0d50b75c5187133f','719855e8f4ebd94341277b0b0d50b75c5187133f'),(2110,'superuser@demo.com',23,'kirti.mishra1@ibm.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2111,'superuser@demo.com',21,'swapnil_coep1@email.com','male',1,'b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1','b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1'),(2112,'sup_Moderator2',17,'sup_moderater2@test.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2113,'Swapnil Moderator',21,'swapnil_coep2@email.com','female',1,'b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1','b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1'),(2114,'AnjaliBhosale',28,'anjali.bhosale@ibm.com','female',1,'8b51e14d4f76f254d32c3b59c93f070cefedd105','8b51e14d4f76f254d32c3b59c93f070cefedd105'),(2115,'Jyoti_Moderator02',12,'Jyoti_Moderator02@gmail.co1','female',2,'719855e8f4ebd94341277b0b0d50b75c5187133f','719855e8f4ebd94341277b0b0d50b75c5187133f'),(2116,'mmmoderator1',25,'mahemane@in.ibm.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2117,'UKP_2',18,'ukp83@gmail.com','male',1,'d0b559b7f13d4eb026a151aee8a38a635453e560','d0b559b7f13d4eb026a151aee8a38a635453e560'),(2118,'Moderator  College PV',29,'moderatorPV@demo.com','female',1,'44b2c1b62a2113d21762e21336622f9491ec0409','44b2c1b62a2113d21762e21336622f9491ec0409'),(2119,'mmmoderator2',26,'mahemane@in.ibm.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2120,'mmmoderator3',27,'mahemane@in.ibm.com','male',1,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2121,'VL Moderator 4',14,'vlmoderator4@demo.com','male',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2122,'VL Moderator 5',15,'vlmoderator5@demo.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2123,'VL Moderator 6',16,'vlmoderator6@demo.com','female',2,'7c4a8d09ca3762af61e59520943dc26494f8941b','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2124,'Anjali_Moderator',30,'AnjaliDemo@gmail.com','female',1,'7110eda4d09e062aa5e4a390b0a572ac0d2c0220','7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),(2125,'Anjali_Moderator_1',31,'AnjaliDemo@gmail.com','female',1,'7110eda4d09e062aa5e4a390b0a572ac0d2c0220','7110eda4d09e062aa5e4a390b0a572ac0d2c0220');
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

-- Dump completed on 2025-08-11 14:02:27
