-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for osx10.17 (arm64)
--
-- Host: localhost    Database: table_relationships
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(450) COLLATE utf8mb4_bin DEFAULT NULL,
  `title` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `blogger_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_FK` (`blogger_id`),
  CONSTRAINT `blog_post_FK` FOREIGN KEY (`blogger_id`) REFERENCES `blogger` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES
(9,'Up where they walk, up where they run, up where they stay all day in the sun. Wandering free. Wish I could be part of that world','I wanna be where the people are','2017-06-12',1),
(10,'uuggh I am 16. Yet he treats me like a child. I think I am just going to runaway. Its the most adult thing I could do.','He thinks he knows everything','2020-03-14',1),
(11,'I want to explore the world! Everyone here just sings about their boring lives. I need some suggestions! Where should I go??','Nothing happens in this small town!','2022-05-23',2),
(12,'If you dont have a dragon yet. You should seriously consider it. Stay tuned for my next seres of blogs. It is going to go through the nitty gritty of where to get dragons from, and how to care for them! Follow me for more!','Dragons!','2021-04-17',4),
(13,'For those that dont know I recently opened my own etsy shop and all I have barely had a chance to enjoy sewing, sewing, sewing all day long. I could use a good ball any day now!','All work and no play makes Ella a doll princess.','2021-08-03',3),
(14,'if there is one thing being the daughter of an inventor has taught me is that, some problems have solutions that just dont exist yet. Sometimes you have invent your way out of being stuck.','Inventing reality','2019-11-10',2),
(15,'Ok everyone like I promised! Top 3 places to get your dragons from. First. Best place to go is to haagrids. Top notch supplier of dragons. Second. Hiccup. His location is a bit hard to get to, but well worth the selcetion. Third. Pete. Not a huge selcetion from Pete but its Quality over Quantity there.','Dragons- Part one!','2021-04-30',4),
(16,'I cant be the only one who loses a shoe by the end of the night right? Anyways, I am not sure who thought glass would make a comfy material to dance in. This is why I started my own shop. To deliver what we actually want to wear out!','Had a ball','2021-11-13',3);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_comment`
--

DROP TABLE IF EXISTS `blog_post_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` date DEFAULT NULL,
  `blogger_id` int(10) unsigned NOT NULL,
  `blog_post_id` int(10) unsigned NOT NULL,
  `content` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_post_comment_FK` (`blogger_id`),
  KEY `blog_post_comment_FK_1` (`blog_post_id`),
  CONSTRAINT `blog_post_comment_FK` FOREIGN KEY (`blogger_id`) REFERENCES `blogger` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blog_post_comment_FK_1` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_comment`
--

LOCK TABLES `blog_post_comment` WRITE;
/*!40000 ALTER TABLE `blog_post_comment` DISABLE KEYS */;
INSERT INTO `blog_post_comment` VALUES
(1,'2017-06-14',2,9,'I will trade you girl! Its boring up here in the sun!'),
(2,'2020-03-14',4,10,'Come get a dragon. THAT is the most adult thing you could!'),
(3,'2022-05-23',1,11,'I know a lady who can make that trade happen for us! Shes a bit odd but it will be worth it. Just dont tell my dad'),
(4,'2021-04-26',3,12,'Can they sew?'),
(5,'2021-08-17',1,13,'Anything for fins?I have a concert coming up I need something fresh'),
(6,'2019-11-12',1,14,'I totally get that. Sometimes you really have to take it into your own hands!'),
(7,'2021-05-10',3,15,'Ok. I think I ll get one, as long as they get along with mice'),
(8,'2021-11-13',2,16,'Invite me next time! I could use some excitement');
/*!40000 ALTER TABLE `blog_post_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogger`
--

DROP TABLE IF EXISTS `blogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogger` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogger_username` (`username`),
  UNIQUE KEY `blogger_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogger`
--

LOCK TABLES `blogger` WRITE;
/*!40000 ALTER TABLE `blogger` DISABLE KEYS */;
INSERT INTO `blogger` VALUES
(1,'The little Mermaid','Ocean123','Ariel','1989-11-17','mermaid@email.com'),
(2,'Beauty','SmallTown123','Belle','1991-09-29','rose@email.com'),
(3,'Crazy mouse lady','fairiesarereal123','Cinderella','1950-03-04','glassslipper@email.com'),
(4,'Dragon','bad_password','Raya','2021-03-05','dragonsrule@email.com');
/*!40000 ALTER TABLE `blogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'table_relationships'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-16 23:45:01
