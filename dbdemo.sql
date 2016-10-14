CREATE DATABASE  IF NOT EXISTS `demo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `demo`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `ID` int(11) NOT NULL,
  `Tittle` varchar(200) DEFAULT NULL,
  `TypeDoc` varchar(200) DEFAULT NULL,
  `Authors` varchar(200) DEFAULT NULL,
  `NumOfPage` varchar(200) DEFAULT NULL,
  `Abstract` varchar(2000) DEFAULT NULL,
  `Highlights` varchar(2000) DEFAULT NULL,
  `LinkDownload` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (1,'Models for early prediction of at-risk students in a course using standards-based grading','Original Research Article','Farshid Marbouti, Heidi A. Diefes-Dux, Krishna Madhavan','1-15','Using predictive modeling methods, it is possible to identify at-risk students early and inform both the instructors and the students. While some universities have started to use standards-based grading, which has educational advantages over common score-based grading, at–risk prediction models have not been adapted to reap the benefits of standards-based grading in courses that utilize this grading. In this paper, we compare predictive methods to identify at-risk students in a course that used standards-based grading. Only in-semester performance data that were available to the course instructors were used in the prediction methods. When identifying at-risk students, it is important to minimize false negative (i.e., type II) error while not increasing false positive (i.e., type I) error significantly. To increase the generalizability of the models and accuracy of the predictions, we used a feature selection method to reduce the number of variables used in each model. The Naive Bayes Classifier model and an Ensemble model using a sequence of models (i.e., Support Vector Machine, K-Nearest Neighbors, and Naive Bayes Classifier) had the best results among the seven tested modeling methods.','Seven different prediction models for identifying at-risk students were compared.Only in-semester performance factors (i.e., grades) were used in the models.Models were created based on standards-based grading.Feature selection method resulted in higher accuracy of the models.','https://goo.gl/U3ayli'),(2,'The effectiveness of brain-compatible blended learning material in the teaching of programming logic','Original Research Article','Johan van Niekerk, Paul Webb','16-27','Blended learning is an educational approach which integrates seemingly distinct educational approaches, such as face-to-face and online experiences. In a blended learning environment the classroom lectures can, for example, be augmented with learning material offered in a variety of technologically delivered formats. There exist extensive evidence that a blended learning approach which mixes face-to-face and online learning materials is substantially more effective than using only face-to-face educational methods. However, in order to be effective, blended learning course material should still be designed and presented according to sound pedagogical principles. This article presents the results of an experiment to augment the teaching of fundamental programming logic based on the pedagogical principles underpinning brain-compatible learning materials via e-learning delivery mechanisms. The research uses both qualitative and quantitative methods. Results show promise for this use of brain-compatible material in a blended learning context.','We taught fundamental programming using brain-compatible blended learning material.Qualitative results indicate students prefer this instructional format.Quantitative results indicate an improvement in student learning.Further studies with larger sample sizes could improve practical significance.\n\n\n\n\n','#'),(3,'Self-explanation and digital games: Adaptively increasing abstraction','Original Research Article','Douglas B. Clark, Satyugjit S. Virk, Jackie Barnes, Deanne M. Adams','28-43','Research suggests that self-explanation functionality can effectively support learning in the context of digital games. Research also highlights challenges, however, in balancing and integrating the demands and abstraction of self-explanation functionality with the demands and structure of the game. These challenges are particularly true for games that are, themselves, cognitively more complex. The current study presents an approach that adapts the abstraction of self-explanation prompts based on a player\'s performance. The results demonstrate that students in this condition (a) scored significantly higher on the post-test than students whose self-explanation prompts were not adaptively adjusted and were always abstract and (b) scored higher, but not significantly so, than students who did not receive the self-explanation functionality. Analyses of gameplay metrics suggest that trade-offs in terms of progress through the game may explain some aspects of these post-test comparisons. Analyses also demonstrate that both self-explanation conditions significantly outperformed the navigation-only comparison condition on a gameplay metric that suggests deeper model-based thinking.','Abstraction of self-explanation prompts adaptively adjusted to players\' performance.Significantly higher test scores in adaptive compared to non-adaptive condition.Higher but not significantly higher differences compared to non-explanation.Analyses of game-play metrics suggest trade-offs in terms of game progress.Analyses of game-play metrics suggest deeper model-based thinking.','#');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-14 13:17:33
