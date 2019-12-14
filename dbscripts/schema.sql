CREATE DATABASE  IF NOT EXISTS `mentorondemand` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mentorondemand`;
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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor` (
  `me_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `me_confirm_password` varchar(255) DEFAULT NULL,
  `me_contact_no` varchar(255) DEFAULT NULL,
  `me_email` varchar(255) DEFAULT NULL,
  `me_firstname` varchar(255) DEFAULT NULL,
  `me_lastname` varchar(255) DEFAULT NULL,
  `me_linkedin_url` varchar(255) DEFAULT NULL,
  `me_password` varchar(255) DEFAULT NULL,
  `me_userid` varchar(255) DEFAULT NULL,
  `me_years_of_experience` float DEFAULT NULL,
  PRIMARY KEY (`me_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mentor_calendar`
--

DROP TABLE IF EXISTS `mentor_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_calendar` (
  `mc_id` bigint(20) NOT NULL,
  `mc_end_date` date DEFAULT NULL,
  `mc_end_time` time DEFAULT NULL,
  `mc_start_date` date DEFAULT NULL,
  `mc_start_time` time DEFAULT NULL,
  `mc_me_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mc_id`),
  KEY `FKg0vtymuejgf1nynfyxj70y4jt` (`mc_me_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mentor_skill`
--

DROP TABLE IF EXISTS `mentor_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_skill` (
  `ms_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ms_exp` bigint(20) DEFAULT NULL,
  `ms_facilities` varchar(255) DEFAULT NULL,
  `ms_self_rating` bigint(20) DEFAULT NULL,
  `ms_trainings_delivered` varchar(255) DEFAULT NULL,
  `ms_me_id` bigint(20) DEFAULT NULL,
  `ms_sk_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ms_id`),
  KEY `FK49a3ygnib52wsm2kmp7a0937c` (`ms_me_id`),
  KEY `FKh0rsohgbqgtm4tbqhk3asmlpc` (`ms_sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ro_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ro_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `sk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sk_duration` varchar(255) DEFAULT NULL,
  `sk_prereq` varchar(255) DEFAULT NULL,
  `sk_name` varchar(255) DEFAULT NULL,
  `sk_toc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technology` (
  `te_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `te_duration` varchar(255) DEFAULT NULL,
  `te_prereq` varchar(255) DEFAULT NULL,
  `te_name` varchar(255) DEFAULT NULL,
  `te_toc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`te_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trainee`
--

DROP TABLE IF EXISTS `trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainee` (
  `tr_id` bigint(20) NOT NULL,
  `tr_confirm_password` varchar(255) DEFAULT NULL,
  `tr_contact_no` varchar(255) DEFAULT NULL,
  `tr_email` varchar(255) DEFAULT NULL,
  `tr_firstname` varchar(255) DEFAULT NULL,
  `tr_lastname` varchar(255) DEFAULT NULL,
  `tr_password` varchar(255) DEFAULT NULL,
  `tr_userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `tg_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tg_status` varchar(255) DEFAULT NULL,
  `tg_me_id` bigint(20) DEFAULT NULL,
  `tg_te_id` bigint(20) DEFAULT NULL,
  `tg_tr_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`tg_id`),
  KEY `FKgasjjefouws5l6x434nrlt6dk` (`tg_me_id`),
  KEY `FKplyquytxxusj2pqevwp7v1dsi` (`tg_te_id`),
  KEY `FK1n0bwq78qcj0a4e5qcnbkdkvl` (`tg_tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `us_id` bigint(20) NOT NULL,
  `us_password` varchar(255) DEFAULT NULL,
  `us_userid` varchar(255) DEFAULT NULL,
  `us_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `ur_us_id` bigint(20) NOT NULL,
  `ur_ro_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ur_us_id`,`ur_ro_id`),
  KEY `FKjia4161ecu6h4p0egc2oc04lt` (`ur_ro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-11 15:34:00
