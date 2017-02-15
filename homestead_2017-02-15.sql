# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.12-0ubuntu1.1)
# Database: homestead
# Generation Time: 2017-02-15 12:51:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(37,'2014_10_12_000000_create_users_table',1),
	(38,'2014_10_12_100000_create_password_resets_table',1),
	(39,'2017_02_11_164912_create_scores_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table scores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `scores`;

CREATE TABLE `scores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `winner_id` int(11) NOT NULL,
  `losser_id` int(11) NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `winner_score` int(11) NOT NULL,
  `losser_score` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `scores` WRITE;
/*!40000 ALTER TABLE `scores` DISABLE KEYS */;

INSERT INTO `scores` (`id`, `winner_id`, `losser_id`, `place`, `winner_score`, `losser_score`, `created_at`, `updated_at`)
VALUES
	(1,1,4,'Coventry',345,231,'2016-11-27 06:00:02',NULL),
	(2,2,3,'Manchester',363,54,'2016-11-22 06:21:12',NULL),
	(3,5,3,'London',548,376,'2016-11-24 11:18:22',NULL),
	(4,1,5,'Leeds',414,342,'2016-09-21 08:14:59',NULL),
	(5,4,3,'Edinburgh',635,546,'2016-10-23 05:44:33',NULL);

/*!40000 ALTER TABLE `scores` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `contact_number`, `email`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Markus Hessel','9514769460','nmohr@example.net','$2y$10$JNGcKId0tSCMk66aTPKvc.ZOJOw6DaQmup4mHnovf1FcU3d0sGipy','qJoagafLe1uzgD6CY2WKlg0rmOm4pG6GjIq3HSLeY9RsA0v6v0iNyga6akeK','2017-02-12 21:03:14','2017-02-12 21:03:14'),
	(2,'Clarissa Wolf','9514769460','pierce76@example.net','$2y$10$JNGcKId0tSCMk66aTPKvc.ZOJOw6DaQmup4mHnovf1FcU3d0sGipy','MPuRzoEkvz','2017-02-12 21:03:14','2017-02-12 21:03:14'),
	(3,'Mr. Cyrus Fahey','9514769460','cordie.rowe@example.org','$2y$10$JNGcKId0tSCMk66aTPKvc.ZOJOw6DaQmup4mHnovf1FcU3d0sGipy','i2zYPVVuO2','2017-02-12 21:03:14','2017-02-12 21:03:14'),
	(4,'Summer Stark III','9514769460','vcummerata@example.com','$2y$10$JNGcKId0tSCMk66aTPKvc.ZOJOw6DaQmup4mHnovf1FcU3d0sGipy','dALCrugyFc','2017-02-12 21:03:14','2017-02-12 21:03:14'),
	(5,'Sonia Macejkovic','9514769460','roob.donavon@example.org','$2y$10$JNGcKId0tSCMk66aTPKvc.ZOJOw6DaQmup4mHnovf1FcU3d0sGipy','tMn50oBDEp','2017-02-12 21:03:14','2017-02-12 21:03:14');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
