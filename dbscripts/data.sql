-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mentorondemand
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (35),(35),(35);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','9876426290','resh@gmail.com','Reshma','Vijay','resh@linkedin.in','$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Reshma',9),(10,'raj','98543768793','raj@gmail.com','Raj','Ram','raj@linkedin.in','$2a$10$wkmX7dwm3qDIDrDAbIUnVutFjL7hVfconPviGOmiE26HUpfuSDJsO','Raj',8),(7,'pwd','3333333333','asdse','asd','asd','asdg','$2a$10$4cPKMMKuJNuedzdeUJKZ9uJ10WOfHrMAhYHYfKSodPEqlLd6nERIG','asd',5),(20,'pwd','9835973958','sanjana@gmail.com','Sanjana','S','sanj@linkedin.in','$2a$10$gBwmFrYKR20yH5.Pp.n2rOsY/2o0z1YThXPK401m2aAwdFf3SdD/S','Sanjana',4),(19,'pwd','7945358957','jayashree@gmail.com','Jayashree','Varagan','jayashree@linked.in','$2a$10$Lh/K7QL.TbldCKZXwPw02O.OhAAhcqQN3kO4tMkEZ/yaw2t6ja//a','Jayashree',7),(13,'ravi','7940937502','ravi@gmail.com','Ravi','Teja','ravi@linkedin.in','$2a$10$Ll30XmBIEuYz/krcjNQr5eqBEYrvttAzZJS7vxW0JCeHD0/tBsJ8e','Ravi',4),(15,'pwd','9067856467','naga@yahoo.in','Nagalakshmi','Kesavan','naga@linkedin.in','$2a$10$eNUlNjbJUJX/PdtcJg1szeg1fbwBdQ3lLK6alUzVM2UE7nUQ9cUp2','Naga',10),(17,'pwd','9746387959','santhosh@gmail.com','Santhosh','Kumar','santhosh@linkedin.in','$2a$10$u.YjksupY5jvZJVfW9FOXORgCxNyLQ.8PqR8YfvzlTZLK.6CTZad2','Santhosh',4);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mentor_calendar`
--

LOCK TABLES `mentor_calendar` WRITE;
/*!40000 ALTER TABLE `mentor_calendar` DISABLE KEYS */;
INSERT INTO `mentor_calendar` VALUES (1,'2018-04-16','10:05:02','2016-09-12','07:45:23',1),(2,'2018-12-12','09:45:23','2015-10-12','03:25:56',2);
/*!40000 ALTER TABLE `mentor_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `mentor_skill`
--

LOCK TABLES `mentor_skill` WRITE;
/*!40000 ALTER TABLE `mentor_skill` DISABLE KEYS */;
INSERT INTO `mentor_skill` VALUES (1,3,'Classroom,online test series',5,'27',1,1),(4,6,'Online,Classroom,Study Materials',3,'10',10,2),(16,6,'Online',4,'14',19,6),(7,4,'Online,Classroom materials',5,'23',13,1),(11,6,'Online,Materials',5,'29',15,5),(12,5,'Online',4,'15',15,2),(17,6,'Lab facilities',4,'Java',20,1),(15,5,'Classroom',4,'18',17,4);
/*!40000 ALTER TABLE `mentor_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'mentor'),(2,'trainee');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'6 months','C,C++','Java','Inheritance concepts'),(2,'3 months','C','OOPS','OOPS Principles'),(3,'1 month','SQL','DBMS','Table,database,schema creation'),(4,'1 month','HTML,CSS,Java Script','Bootstrap','Page creation'),(5,'6 months','Bootsrap,HTML,CSS','Angular','User Interface'),(6,'4 months','Java','Spring','Maven dependencies');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'6 months','C,C++','Java','Inheritance'),(2,'2 months','C','OOPS','OOPS Principles'),(3,'1 month','SQL','DBMS','Table,Database,schema creation'),(4,'1 month','HTML,CSS,Java Script','Bootstrap','Page creation'),(5,'6 months','Bootstrap,HTML,CSS,Java Script','Angular','User Interface '),(6,'4 months','Java','Spring','Maven,Dependencies');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trainee`
--

LOCK TABLES `trainee` WRITE;
/*!40000 ALTER TABLE `trainee` DISABLE KEYS */;
INSERT INTO `trainee` VALUES (1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','9876543210','js@gmail.com','Jayashree','V','$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Js'),(28,'pwd','9773564768','reeta@gmail.com','Reeta','Riya','$2a$10$tc6guimjMrAwy/ff.bqaJ.c50QWKHk2A8GdfwO507P8gxb3T8woQW','Reeta'),(23,'pwd','9664546658','swe@gmail.com','Swetha','Santhosh','$2a$10$pc5fvnVODCvYwRn8v9oSRu9VWQgeogH/r.n04MNkhcNCVuk85X/NC','Swetha'),(2,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','2749578753','sangi@gmail.com','Sangeetha','P','$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Sangi'),(33,'akash','9783247382','akash@linkedin.in','Akash','Kumar','$2a$10$V82vuMwOMSCyiZ8q/RwVp.MIf5hzDzKKOnoTiUvjx1MfWn2EcLKii','Akash');
/*!40000 ALTER TABLE `trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (1,'APPROVED',1,1,1),(7,'APPROVED',10,2,2),(9,'PENDING',15,2,2),(10,'APPROVED',17,3,28),(12,'PENDING',19,6,33);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Reshma',NULL),(2,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Js',NULL),(34,'$2a$10$V82vuMwOMSCyiZ8q/RwVp.MIf5hzDzKKOnoTiUvjx1MfWn2EcLKii','Akash',NULL),(32,'$2a$10$gBwmFrYKR20yH5.Pp.n2rOsY/2o0z1YThXPK401m2aAwdFf3SdD/S','Sanjana',NULL),(19,'$2a$10$R/lZJuT9skteNmAku9Y7aeutxbOKstD5xE5bHOf74M2PHZipyt3yK','Sangi',NULL),(20,'$2a$10$CfOE5kVb4VTjFEQRsjHKXeNnZezE3bjtMrlfBUP0axpNhe3kshfny','Ravi',NULL),(24,'$2a$10$pc5fvnVODCvYwRn8v9oSRu9VWQgeogH/r.n04MNkhcNCVuk85X/NC','Swetha',NULL),(25,'$2a$10$eNUlNjbJUJX/PdtcJg1szeg1fbwBdQ3lLK6alUzVM2UE7nUQ9cUp2','Naga',NULL),(27,'$2a$10$u.YjksupY5jvZJVfW9FOXORgCxNyLQ.8PqR8YfvzlTZLK.6CTZad2','Santhosh',NULL),(29,'$2a$10$tc6guimjMrAwy/ff.bqaJ.c50QWKHk2A8GdfwO507P8gxb3T8woQW','Reeta',NULL),(31,'$2a$10$Lh/K7QL.TbldCKZXwPw02O.OhAAhcqQN3kO4tMkEZ/yaw2t6ja//a','Jayashree',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(2,2),(15,1),(17,1),(19,2),(20,1),(21,1),(24,2),(25,1),(26,1),(27,1),(29,2),(31,1),(32,1),(34,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-11 15:33:24
