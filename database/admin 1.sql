-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: laravel-shop
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'首页','fa-bar-chart','/',NULL,NULL,'2021-04-23 15:09:02'),(2,0,6,'系通管理','fa-tasks',NULL,NULL,NULL,'2021-05-14 10:51:16'),(3,2,7,'管理员','fa-users','auth/users',NULL,NULL,'2021-05-14 10:51:16'),(4,2,8,'角色','fa-user','auth/roles',NULL,NULL,'2021-05-14 10:51:16'),(5,2,9,'权限','fa-ban','auth/permissions',NULL,NULL,'2021-05-14 10:51:16'),(6,2,10,'菜单','fa-bars','auth/menu',NULL,NULL,'2021-05-14 10:51:16'),(7,2,11,'操作日志','fa-history','auth/logs',NULL,NULL,'2021-05-14 10:51:16'),(8,0,2,'用户管理','fa-users','/users',NULL,'2021-04-23 16:09:01','2021-04-23 16:09:55'),(9,0,3,'商品管理','fa-bars','/products',NULL,'2021-04-27 09:52:10','2021-04-27 09:52:22'),(10,0,4,'订单管理','fa-rmb','/orders',NULL,'2021-05-13 14:43:28','2021-05-14 10:31:28'),(12,0,5,'优惠券管理','fa-tags','/coupon_codes',NULL,'2021-05-14 10:50:59','2021-05-14 10:51:16');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2021-04-23 16:13:46','2021-04-23 16:13:46'),(7,'商品管理','products','','/products*','2021-05-14 14:25:27','2021-05-14 14:25:27'),(8,'优惠券管理','coupon_codes','','/coupon_codes*','2021-05-14 14:26:08','2021-05-14 14:26:08'),(9,'订单管理','orders','','/orders*','2021-05-14 14:26:29','2021-05-14 14:26:29');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(2,9,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2021-04-23 14:57:34','2021-04-23 14:57:34'),(2,'运营','operation','2021-04-23 16:16:13','2021-04-23 16:16:13');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$xv.mmKOtja29MQ2ee/LmjOMPDJPWbC.YX09KE3FQDV08fDvGBbVWa','Administrator',NULL,'WzyvSO3ADhtXET7PxOSOW7zf48fkYnuW4oBYeUiKkE9OKyynObwwhdnGH7OV','2021-04-23 14:57:34','2021-04-23 14:57:34'),(2,'operation','$2y$10$.QYtPM1aLMLF.j0eliYIQ.x24puCXhhr9E3FM4YhO2ajj.NO3pWnu','运营','images/QQ截图20210416150236.png','46oGXvuBp2Mw4YDQ0aKlRhKzQ4ADq4ZO0CM2CMkebpYWTOFZq6d9FcW8NRAM','2021-04-23 16:20:58','2021-05-14 14:29:50');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-14  6:41:16
