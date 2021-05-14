/*
Navicat MySQL Data Transfer

Source Server         : lavaral
Source Server Version : 50727
Source Host           : localhost:33060
Source Database       : laravel-shop

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2021-05-13 17:41:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, null, '2021-04-23 15:09:02');
INSERT INTO `admin_menu` VALUES ('2', '0', '4', '系通管理', 'fa-tasks', null, null, null, '2021-04-27 09:52:22');
INSERT INTO `admin_menu` VALUES ('3', '2', '5', '管理员', 'fa-users', 'auth/users', null, null, '2021-04-27 09:52:22');
INSERT INTO `admin_menu` VALUES ('4', '2', '6', '角色', 'fa-user', 'auth/roles', null, null, '2021-04-27 09:52:22');
INSERT INTO `admin_menu` VALUES ('5', '2', '7', '权限', 'fa-ban', 'auth/permissions', null, null, '2021-04-27 09:52:22');
INSERT INTO `admin_menu` VALUES ('6', '2', '8', '菜单', 'fa-bars', 'auth/menu', null, null, '2021-04-27 09:52:22');
INSERT INTO `admin_menu` VALUES ('7', '2', '9', '操作日志', 'fa-history', 'auth/logs', null, null, '2021-04-27 09:52:22');
INSERT INTO `admin_menu` VALUES ('8', '0', '2', '用户管理', 'fa-users', '/users', null, '2021-04-23 16:09:01', '2021-04-23 16:09:55');
INSERT INTO `admin_menu` VALUES ('9', '0', '3', '商品管理', 'fa-bars', '/products', null, '2021-04-27 09:52:10', '2021-04-27 09:52:22');
INSERT INTO `admin_menu` VALUES ('10', '0', '0', '订单管理', 'fa-rmb', '/orders', null, '2021-05-13 14:43:28', '2021-05-13 14:43:28');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-23 15:06:00', '2021-04-23 15:06:00');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-23 15:06:50', '2021-04-23 15:06:50');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-23 15:06:59', '2021-04-23 15:06:59');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-23 15:07:27', '2021-04-23 15:07:27');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 15:07:44', '2021-04-23 15:07:44');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/auth/menu/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 15:08:10', '2021-04-23 15:08:10');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/auth/menu/1', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2021-04-23 15:09:02', '2021-04-23 15:09:02');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 15:09:03', '2021-04-23 15:09:03');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/auth/menu/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 15:09:18', '2021-04-23 15:09:18');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu/2', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u901a\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2021-04-23 15:09:27', '2021-04-23 15:09:27');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 15:09:27', '2021-04-23 15:09:27');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu/3/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 15:09:33', '2021-04-23 15:09:33');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu/3', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2021-04-23 15:09:41', '2021-04-23 15:09:41');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 15:09:41', '2021-04-23 15:09:41');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/auth/menu/4/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 15:09:45', '2021-04-23 15:09:45');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu/4', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2021-04-23 15:09:50', '2021-04-23 15:09:50');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 15:09:50', '2021-04-23 15:09:50');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu/5/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 15:09:58', '2021-04-23 15:09:58');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu/5', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2021-04-23 15:10:03', '2021-04-23 15:10:03');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 15:10:03', '2021-04-23 15:10:03');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu/6/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 15:10:05', '2021-04-23 15:10:05');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu/6', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2021-04-23 15:10:10', '2021-04-23 15:10:10');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 15:10:11', '2021-04-23 15:10:11');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu/7/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 15:10:18', '2021-04-23 15:10:18');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu/7', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2021-04-23 15:10:27', '2021-04-23 15:10:27');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 15:10:27', '2021-04-23 15:10:27');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-23 16:07:31', '2021-04-23 16:07:31');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:07:46', '2021-04-23 16:07:46');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:07:53', '2021-04-23 16:07:53');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:08:23', '2021-04-23 16:08:23');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/auth/permissions', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:08:26', '2021-04-23 16:08:26');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:08:28', '2021-04-23 16:08:28');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:08:30', '2021-04-23 16:08:30');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\"}', '2021-04-23 16:09:01', '2021-04-23 16:09:01');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 16:09:01', '2021-04-23 16:09:01');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-04-23 16:09:24', '2021-04-23 16:09:24');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:09:24', '2021-04-23 16:09:24');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 16:09:33', '2021-04-23 16:09:33');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/auth/menu/8/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:09:44', '2021-04-23 16:09:44');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/auth/menu/8', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/menu\"}', '2021-04-23 16:09:55', '2021-04-23 16:09:55');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-23 16:09:55', '2021-04-23 16:09:55');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:10:04', '2021-04-23 16:10:04');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:10:17', '2021-04-23 16:10:17');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:10:21', '2021-04-23 16:10:21');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/auth/permissions', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:12:59', '2021-04-23 16:12:59');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/auth/permissions/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:13:18', '2021-04-23 16:13:18');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/auth/permissions', 'POST', '192.168.10.1', '{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/permissions\"}', '2021-04-23 16:13:46', '2021-04-23 16:13:46');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/auth/permissions', 'GET', '192.168.10.1', '[]', '2021-04-23 16:13:46', '2021-04-23 16:13:46');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/auth/roles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:14:22', '2021-04-23 16:14:22');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/auth/roles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:14:24', '2021-04-23 16:14:24');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/auth/roles', 'POST', '192.168.10.1', '{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/roles\"}', '2021-04-23 16:16:13', '2021-04-23 16:16:13');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/auth/roles', 'GET', '192.168.10.1', '[]', '2021-04-23 16:16:14', '2021-04-23 16:16:14');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:16:27', '2021-04-23 16:16:27');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/auth/users/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:16:28', '2021-04-23 16:16:28');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/auth/users', 'POST', '192.168.10.1', '{\"username\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"hhyh2021\",\"password_confirmation\":\"hyhyh2021\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2021-04-23 16:17:17', '2021-04-23 16:17:17');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/auth/users/create', 'GET', '192.168.10.1', '[]', '2021-04-23 16:17:17', '2021-04-23 16:17:17');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/auth/users', 'POST', '192.168.10.1', '{\"username\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"hhyh2021\",\"password_confirmation\":\"hyhyh2021\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\"}', '2021-04-23 16:20:44', '2021-04-23 16:20:44');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/auth/users/create', 'GET', '192.168.10.1', '[]', '2021-04-23 16:20:45', '2021-04-23 16:20:45');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/auth/users', 'POST', '192.168.10.1', '{\"username\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"hyhyh2021\",\"password_confirmation\":\"hyhyh2021\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\"}', '2021-04-23 16:20:58', '2021-04-23 16:20:58');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2021-04-23 16:20:58', '2021-04-23 16:20:58');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:21:08', '2021-04-23 16:21:08');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:21:32', '2021-04-23 16:21:32');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:21:38', '2021-04-23 16:21:38');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/auth/users/2', 'PUT', '192.168.10.1', '{\"username\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ\\/AHfEexPgQ58vFOUlhXbPHpG\",\"password_confirmation\":\"$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ\\/AHfEexPgQ58vFOUlhXbPHpG\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2021-04-23 16:21:47', '2021-04-23 16:21:47');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '[]', '2021-04-23 16:21:48', '2021-04-23 16:21:48');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/auth/users/2', 'PUT', '192.168.10.1', '{\"username\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ\\/AHfEexPgQ58vFOUlhXbPHpG\",\"password_confirmation\":\"$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ\\/AHfEexPgQ58vFOUlhXbPHpG\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\"}', '2021-04-23 16:23:45', '2021-04-23 16:23:45');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '[]', '2021-04-23 16:23:46', '2021-04-23 16:23:46');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '[]', '2021-04-23 16:26:14', '2021-04-23 16:26:14');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:26:22', '2021-04-23 16:26:22');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:26:26', '2021-04-23 16:26:26');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/auth/users/2', 'PUT', '192.168.10.1', '{\"username\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ\\/AHfEexPgQ58vFOUlhXbPHpG\",\"password_confirmation\":\"$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ\\/AHfEexPgQ58vFOUlhXbPHpG\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2021-04-23 16:26:34', '2021-04-23 16:26:34');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2021-04-23 16:26:34', '2021-04-23 16:26:34');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2021-04-23 16:26:44', '2021-04-23 16:26:44');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:26:47', '2021-04-23 16:26:47');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '[]', '2021-04-23 16:28:34', '2021-04-23 16:28:34');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:28:43', '2021-04-23 16:28:43');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:28:52', '2021-04-23 16:28:52');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/auth/users/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:28:55', '2021-04-23 16:28:55');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/auth/users/2', 'PUT', '192.168.10.1', '{\"username\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ\\/AHfEexPgQ58vFOUlhXbPHpG\",\"password_confirmation\":\"$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ\\/AHfEexPgQ58vFOUlhXbPHpG\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"ZGykFE4IhszSjDDc3hYhYANjDpvVGodNks6hSqkg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/auth\\/users\"}', '2021-04-23 16:29:05', '2021-04-23 16:29:05');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/auth/users', 'GET', '192.168.10.1', '[]', '2021-04-23 16:29:05', '2021-04-23 16:29:05');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-23 16:31:37', '2021-04-23 16:31:37');
INSERT INTO `admin_operation_log` VALUES ('82', '2', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-23 16:31:49', '2021-04-23 16:31:49');
INSERT INTO `admin_operation_log` VALUES ('83', '2', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-25 08:51:01', '2021-04-25 08:51:01');
INSERT INTO `admin_operation_log` VALUES ('84', '2', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-27 09:31:01', '2021-04-27 09:31:01');
INSERT INTO `admin_operation_log` VALUES ('85', '2', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:31:24', '2021-04-27 09:31:24');
INSERT INTO `admin_operation_log` VALUES ('86', '2', 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:31:35', '2021-04-27 09:31:35');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-27 09:31:44', '2021-04-27 09:31:44');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:40:45', '2021-04-27 09:40:45');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/auth/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:40:54', '2021-04-27 09:40:54');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:40:58', '2021-04-27 09:40:58');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:40:59', '2021-04-27 09:40:59');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:41:02', '2021-04-27 09:41:02');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:41:07', '2021-04-27 09:41:07');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin', 'GET', '192.168.10.1', '[]', '2021-04-27 09:50:45', '2021-04-27 09:50:45');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:50:54', '2021-04-27 09:50:54');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"KnU0QDSRiGX6PLtxZvkIGIqx9wQwYBzvvS4ZLLEq\"}', '2021-04-27 09:52:10', '2021-04-27 09:52:10');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-27 09:52:11', '2021-04-27 09:52:11');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"KnU0QDSRiGX6PLtxZvkIGIqx9wQwYBzvvS4ZLLEq\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-04-27 09:52:22', '2021-04-27 09:52:22');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:52:23', '2021-04-27 09:52:23');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"KnU0QDSRiGX6PLtxZvkIGIqx9wQwYBzvvS4ZLLEq\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2021-04-27 09:52:31', '2021-04-27 09:52:31');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:52:31', '2021-04-27 09:52:31');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-04-27 09:52:33', '2021-04-27 09:52:33');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:52:36', '2021-04-27 09:52:36');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 09:53:20', '2021-04-27 09:53:20');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 10:09:11', '2021-04-27 10:09:11');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 10:10:08', '2021-04-27 10:10:08');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 10:10:10', '2021-04-27 10:10:10');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 10:10:17', '2021-04-27 10:10:17');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-04-27 10:13:27', '2021-04-27 10:13:27');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/products/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 10:13:30', '2021-04-27 10:13:30');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/products', 'POST', '192.168.10.1', '{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1\",\"description\":\"<p>\\u8fd9\\u91cc\\u662f\\u603b\\u7684\\u5546\\u54c1\\u63cf\\u8ff0<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1-1\",\"description\":\"1\\u7684\\u63cf\\u8ff0\",\"price\":\"10\",\"stock\":\"100\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1-2\",\"description\":\"2\\u7684\\u63cf\\u8ff0\",\"price\":\"15\",\"stock\":\"50\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"KnU0QDSRiGX6PLtxZvkIGIqx9wQwYBzvvS4ZLLEq\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2021-04-27 10:15:01', '2021-04-27 10:15:01');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-04-27 10:15:02', '2021-04-27 10:15:02');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/products/create', 'GET', '192.168.10.1', '[]', '2021-04-27 10:15:14', '2021-04-27 10:15:14');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 10:15:18', '2021-04-27 10:15:18');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 10:17:39', '2021-04-27 10:17:39');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1\",\"description\":\"<p>\\u8fd9\\u91cc\\u662f\\u603b\\u7684\\u5546\\u54c1\\u63cf\\u8ff0<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1-1\",\"description\":\"1\\u7684\\u63cf\\u8ff0\",\"price\":\"10.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1-2\",\"description\":\"2\\u7684\\u63cf\\u8ff0\",\"price\":\"15.00\",\"stock\":\"50\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"KnU0QDSRiGX6PLtxZvkIGIqx9wQwYBzvvS4ZLLEq\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2021-04-27 10:18:04', '2021-04-27 10:18:04');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-04-27 10:18:05', '2021-04-27 10:18:05');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-04-27 13:43:08', '2021-04-27 13:43:08');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-06 09:15:01', '2021-05-06 09:15:01');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-07 08:58:44', '2021-05-07 08:58:44');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-08 10:11:29', '2021-05-08 10:11:29');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-10 08:55:28', '2021-05-10 08:55:28');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-11 08:38:15', '2021-05-11 08:38:15');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-11 09:03:36', '2021-05-11 09:03:36');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1\",\"description\":\"<p>\\u8fd9\\u91cc\\u662f\\u603b\\u7684\\u5546\\u54c1\\u63cf\\u8ff0<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"1\":{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1-1\",\"description\":\"1\\u7684\\u63cf\\u8ff0\",\"price\":\"10.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1-2\",\"description\":\"2\\u7684\\u63cf\\u8ff0\",\"price\":\"15.00\",\"stock\":\"50\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"TheIrW440iNCC2wizskELpR8ATp8ixlXVXzZ8MS8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2021-05-11 09:03:42', '2021-05-11 09:03:42');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-11 09:03:43', '2021-05-11 09:03:43');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/products/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-11 09:19:30', '2021-05-11 09:19:30');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/products/1', 'PUT', '192.168.10.1', '{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1\",\"description\":\"<p>\\u8fd9\\u91cc\\u662f\\u603b\\u7684\\u5546\\u54c1\\u63cf\\u8ff0<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"1\":{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1-1\",\"description\":\"1\\u7684\\u63cf\\u8ff0\",\"price\":\"10.00\",\"stock\":\"100\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1-2\",\"description\":\"2\\u7684\\u63cf\\u8ff0\",\"price\":\"15.00\",\"stock\":\"50\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"TheIrW440iNCC2wizskELpR8ATp8ixlXVXzZ8MS8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shop.test\\/admin\\/products\"}', '2021-05-11 09:19:35', '2021-05-11 09:19:35');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-11 09:19:35', '2021-05-11 09:19:35');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-12 08:37:25', '2021-05-12 08:37:25');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-12 10:07:56', '2021-05-12 10:07:56');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/products', 'GET', '192.168.10.1', '[]', '2021-05-13 08:39:33', '2021-05-13 08:39:33');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 14:42:55', '2021-05-13 14:42:55');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/orders\",\"roles\":[null],\"permission\":null,\"_token\":\"AhOLyEThQIQ72hIw32sxO1B6l2mIKgO3gtheBSes\"}', '2021-05-13 14:43:28', '2021-05-13 14:43:28');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-05-13 14:43:29', '2021-05-13 14:43:29');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2021-05-13 14:43:47', '2021-05-13 14:43:47');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/products', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 14:43:51', '2021-05-13 14:43:51');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 14:43:52', '2021-05-13 14:43:52');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/orders', 'GET', '192.168.10.1', '[]', '2021-05-13 14:44:16', '2021-05-13 14:44:16');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/orders', 'GET', '192.168.10.1', '[]', '2021-05-13 14:45:28', '2021-05-13 14:45:28');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/orders', 'GET', '192.168.10.1', '[]', '2021-05-13 14:46:45', '2021-05-13 14:46:45');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/orders', 'GET', '192.168.10.1', '[]', '2021-05-13 14:46:46', '2021-05-13 14:46:46');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/orders', 'GET', '192.168.10.1', '[]', '2021-05-13 14:47:02', '2021-05-13 14:47:02');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2021-05-13 14:47:09', '2021-05-13 14:47:09');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2021-05-13 14:47:12', '2021-05-13 14:47:12');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2021-05-13 14:47:21', '2021-05-13 14:47:21');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"}}', '2021-05-13 14:48:48', '2021-05-13 14:48:48');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2021-05-13 14:48:59', '2021-05-13 14:48:59');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:49:47', '2021-05-13 14:49:47');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:50:01', '2021-05-13 14:50:01');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:50:18', '2021-05-13 14:50:18');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:51:37', '2021-05-13 14:51:37');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:51:46', '2021-05-13 14:51:46');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:52:06', '2021-05-13 14:52:06');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:52:13', '2021-05-13 14:52:13');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:52:27', '2021-05-13 14:52:27');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 14:53:36', '2021-05-13 14:53:36');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/orders/19', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 15:19:47', '2021-05-13 15:19:47');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2021-05-13 15:20:30', '2021-05-13 15:20:30');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\"}', '2021-05-13 15:27:07', '2021-05-13 15:27:07');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/orders/19', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 15:27:10', '2021-05-13 15:27:10');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/orders/19/ship', 'POST', '192.168.10.1', '{\"_token\":\"AhOLyEThQIQ72hIw32sxO1B6l2mIKgO3gtheBSes\",\"express_company\":null,\"express_no\":null}', '2021-05-13 15:27:13', '2021-05-13 15:27:13');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 15:28:26', '2021-05-13 15:28:26');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/orders/19/ship', 'POST', '192.168.10.1', '{\"_token\":\"AhOLyEThQIQ72hIw32sxO1B6l2mIKgO3gtheBSes\",\"express_company\":null,\"express_no\":null}', '2021-05-13 15:28:28', '2021-05-13 15:28:28');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 15:28:28', '2021-05-13 15:28:28');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/orders/19/ship', 'POST', '192.168.10.1', '{\"_token\":\"AhOLyEThQIQ72hIw32sxO1B6l2mIKgO3gtheBSes\",\"express_company\":\"\\u5927\\u5988\\u7269\\u6d41\",\"express_no\":\"1598615646684\"}', '2021-05-13 15:33:59', '2021-05-13 15:33:59');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 15:34:00', '2021-05-13 15:34:00');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 15:34:25', '2021-05-13 15:34:25');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 15:39:30', '2021-05-13 15:39:30');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 15:39:38', '2021-05-13 15:39:38');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_sort\":{\"column\":\"paid_at\",\"type\":\"asc\"},\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2021-05-13 15:39:42', '2021-05-13 15:39:42');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/orders/19', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 15:39:45', '2021-05-13 15:39:45');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin', 'GET', '192.168.10.1', '[]', '2021-05-13 17:09:20', '2021-05-13 17:09:20');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 17:09:27', '2021-05-13 17:09:27');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/orders/19', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 17:09:31', '2021-05-13 17:09:31');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 17:20:52', '2021-05-13 17:20:52');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/orders/19/refund', 'POST', '192.168.10.1', '{\"agree\":false,\"reason\":\"\\u5c31\\u662f\\u4e0d\\u540c\\u610f \\u56e0\\u4e3a\\u5df2\\u7ecf\\u53d1\\u8d27\\u4e86\",\"_token\":\"AhOLyEThQIQ72hIw32sxO1B6l2mIKgO3gtheBSes\"}', '2021-05-13 17:21:10', '2021-05-13 17:21:10');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 17:21:12', '2021-05-13 17:21:12');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/orders', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 17:34:25', '2021-05-13 17:34:25');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/orders/19', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2021-05-13 17:34:30', '2021-05-13 17:34:30');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/orders/19/refund', 'POST', '192.168.10.1', '{\"agree\":true,\"_token\":\"AhOLyEThQIQ72hIw32sxO1B6l2mIKgO3gtheBSes\"}', '2021-05-13 17:36:17', '2021-05-13 17:36:17');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 17:36:28', '2021-05-13 17:36:28');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 17:38:47', '2021-05-13 17:38:47');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/orders/19/refund', 'POST', '192.168.10.1', '{\"agree\":true,\"_token\":\"AhOLyEThQIQ72hIw32sxO1B6l2mIKgO3gtheBSes\"}', '2021-05-13 17:38:50', '2021-05-13 17:38:50');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 17:38:56', '2021-05-13 17:38:56');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/orders/19', 'GET', '192.168.10.1', '[]', '2021-05-13 17:39:03', '2021-05-13 17:39:03');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `admin_permissions` VALUES ('6', '用户管理', 'users', '', '/users*', '2021-04-23 16:13:46', '2021-04-23 16:13:46');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '2', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '3', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '4', null, null);
INSERT INTO `admin_role_permissions` VALUES ('2', '6', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);
INSERT INTO `admin_role_users` VALUES ('2', '2', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2021-04-23 14:57:34', '2021-04-23 14:57:34');
INSERT INTO `admin_roles` VALUES ('2', '运营', 'operation', '2021-04-23 16:16:13', '2021-04-23 16:16:13');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$xv.mmKOtja29MQ2ee/LmjOMPDJPWbC.YX09KE3FQDV08fDvGBbVWa', 'Administrator', null, 'WzyvSO3ADhtXET7PxOSOW7zf48fkYnuW4oBYeUiKkE9OKyynObwwhdnGH7OV', '2021-04-23 14:57:34', '2021-04-23 14:57:34');
INSERT INTO `admin_users` VALUES ('2', 'operation', '$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ/AHfEexPgQ58vFOUlhXbPHpG', '运营', 'images/QQ截图20210416150236.png', '46oGXvuBp2Mw4YDQ0aKlRhKzQ4ADq4ZO0CM2CMkebpYWTOFZq6d9FcW8NRAM', '2021-04-23 16:20:58', '2021-04-23 16:29:05');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_user_id_foreign` (`user_id`),
  KEY `cart_items_product_sku_id_foreign` (`product_sku_id`),
  CONSTRAINT `cart_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cart_items
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2021_04_22_164150_create_user_addresses_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_01_04_173148_create_admin_tables', '3');
INSERT INTO `migrations` VALUES ('6', '2021_04_23_165537_create_products_table', '4');
INSERT INTO `migrations` VALUES ('7', '2021_04_23_165623_create_product_skus_table', '5');
INSERT INTO `migrations` VALUES ('8', '2021_05_11_090832_create_user_favorite_products_table', '6');
INSERT INTO `migrations` VALUES ('9', '2021_05_12_090747_create_cart_items_table', '7');
INSERT INTO `migrations` VALUES ('10', '2021_05_12_103111_create_orders_table', '8');
INSERT INTO `migrations` VALUES ('11', '2021_05_12_103152_create_order_items_table', '9');

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rating` int(10) unsigned DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_product_sku_id_foreign` (`product_sku_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES ('1', '1', '1', '1', '1', '10.00', null, null, null);
INSERT INTO `order_items` VALUES ('2', '2', '1', '1', '1', '10.00', null, null, null);
INSERT INTO `order_items` VALUES ('3', '3', '2', '3', '1', '849.00', null, null, null);
INSERT INTO `order_items` VALUES ('4', '4', '4', '9', '1', '7874.00', null, null, null);
INSERT INTO `order_items` VALUES ('5', '5', '2', '3', '1', '849.00', null, null, null);
INSERT INTO `order_items` VALUES ('6', '6', '1', '1', '1', '10.00', null, null, null);
INSERT INTO `order_items` VALUES ('7', '7', '1', '2', '1', '15.00', null, null, null);
INSERT INTO `order_items` VALUES ('8', '8', '2', '3', '1', '849.00', null, null, null);
INSERT INTO `order_items` VALUES ('9', '9', '2', '3', '1', '849.00', null, null, null);
INSERT INTO `order_items` VALUES ('10', '10', '16', '47', '1', '339.00', null, null, null);
INSERT INTO `order_items` VALUES ('11', '11', '1', '2', '1', '15.00', null, null, null);
INSERT INTO `order_items` VALUES ('12', '12', '4', '10', '1', '832.00', null, null, null);
INSERT INTO `order_items` VALUES ('13', '13', '1', '1', '1', '10.00', null, null, null);
INSERT INTO `order_items` VALUES ('14', '14', '16', '45', '1', '7271.00', null, null, null);
INSERT INTO `order_items` VALUES ('15', '15', '1', '2', '1', '15.00', null, null, null);
INSERT INTO `order_items` VALUES ('16', '16', '3', '6', '1', '603.00', null, null, null);
INSERT INTO `order_items` VALUES ('17', '17', '1', '1', '1', '10.00', null, null, null);
INSERT INTO `order_items` VALUES ('18', '18', '4', '9', '1', '7874.00', null, null, null);
INSERT INTO `order_items` VALUES ('19', '19', '1', '1', '1', '10.00', '3', '不错的东西', '2021-05-13 16:39:41');
INSERT INTO `order_items` VALUES ('20', '20', '1', '2', '1', '15.00', '1', 'hha', '2021-05-13 16:50:47');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `paid_at` datetime DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `ship_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_no_unique` (`no`),
  UNIQUE KEY `orders_refund_no_unique` (`refund_no`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '20210512105954110712', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '10.00', '较为哦我较为佛家', null, null, null, 'pending', null, '0', '0', 'pending', null, null, '2021-05-12 10:59:54', '2021-05-12 10:59:54');
INSERT INTO `orders` VALUES ('2', '20210512111840400835', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '10.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 11:18:40', '2021-05-12 11:19:12');
INSERT INTO `orders` VALUES ('3', '20210512135319163276', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '849.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 13:53:19', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('4', '20210512141629784599', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '7874.00', '1', null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 14:16:29', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('5', '20210512143622123782', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '849.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 14:36:22', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('6', '20210512154703103512', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '10.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 15:47:03', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('7', '20210512155044592793', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '15.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 15:50:44', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('8', '20210512155200246442', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '849.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 15:52:00', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('9', '20210512155201077809', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '849.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 15:52:01', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('10', '20210512155624718852', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '339.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 15:56:24', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('11', '20210512160253185734', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '15.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 16:02:53', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('12', '20210512160715307444', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '832.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 16:07:15', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('13', '20210512162443858484', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '10.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 16:24:43', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('14', '20210512163522559366', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '7271.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 16:35:22', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('15', '20210512164702990491', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '15.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 16:47:02', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('16', '20210512164917845482', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '603.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-12 16:49:17', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('17', '20210513085123682706', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '10.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-13 08:51:23', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('18', '20210513085939841578', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '7874.00', null, null, null, null, 'pending', null, '1', '0', 'pending', null, null, '2021-05-13 08:59:39', '2021-05-13 09:53:56');
INSERT INTO `orders` VALUES ('19', '20210513091843631393', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '10.00', null, '2021-05-13 09:22:18', 'alipay', '2021051322001499700501750475', 'success', '31d932498d2547cd88a6d7208432da93', '0', '1', 'received', '{\"express_company\":\"\\u5927\\u5988\\u7269\\u6d41\",\"express_no\":\"1598615646684\"}', '{\"refund_reason\":\"\\u4e8c\\u6b21\\u9000\\u6b3e\\u6d4b\\u8bd5\"}', '2021-05-13 09:18:43', '2021-05-13 17:38:53');
INSERT INTO `orders` VALUES ('20', '20210513164957908810', '3', '{\"address\":\"\\u5c71\\u4e1c\\u7701\\u70df\\u53f0\\u5e02\\u829d\\u7f58\\u533a\\u5927\\u5c71\\u8def888\\u53f7\",\"zip\":264004,\"contact_name\":\"\\u9ec4\\u5927\\u4ed9\",\"contact_phone\":\"15966666666\"}', '15.00', null, '2021-05-13 09:22:18', null, null, 'pending', null, '0', '1', 'pending', null, null, '2021-05-13 16:49:57', '2021-05-13 16:50:47');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for product_skus
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_skus_product_id_foreign` (`product_id`),
  CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES ('1', '测试商品-1', '1的描述', '10.00', '98', '1', '2021-04-27 10:15:01', '2021-05-13 09:53:56');
INSERT INTO `product_skus` VALUES ('2', '测试商品-2', '2的描述', '15.00', '49', '1', '2021-04-27 10:15:01', '2021-05-13 16:49:57');
INSERT INTO `product_skus` VALUES ('3', 'qui', 'Porro esse eum dolorem minus error velit.', '849.00', '39554', '2', '2021-04-27 13:42:22', '2021-05-13 09:53:56');
INSERT INTO `product_skus` VALUES ('4', 'autem', 'Sit soluta non veniam.', '5877.00', '96799', '2', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('5', 'laboriosam', 'Quia temporibus veniam alias saepe facilis explicabo.', '4850.00', '86067', '2', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('6', 'fuga', 'Officia placeat dolor ducimus consequatur deserunt ad.', '603.00', '54113', '3', '2021-04-27 13:42:22', '2021-05-13 09:53:56');
INSERT INTO `product_skus` VALUES ('7', 'et', 'Magnam et libero qui qui dolores voluptatem.', '6473.00', '63448', '3', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('8', 'quas', 'Eos ipsam dolor officiis eum libero eum.', '829.00', '74953', '3', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('9', 'ut', 'Vero qui quas voluptas id illo fugit id.', '7874.00', '9596', '4', '2021-04-27 13:42:22', '2021-05-13 09:53:56');
INSERT INTO `product_skus` VALUES ('10', 'molestiae', 'Illum et doloribus aspernatur nam.', '832.00', '54508', '4', '2021-04-27 13:42:22', '2021-05-13 09:53:56');
INSERT INTO `product_skus` VALUES ('11', 'magni', 'Saepe voluptas itaque qui eos ut esse.', '2380.00', '20779', '4', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('12', 'autem', 'Qui aperiam provident et.', '4175.00', '84035', '5', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('13', 'dignissimos', 'Qui est nostrum et in aut placeat.', '5477.00', '52936', '5', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('14', 'tempora', 'Et quisquam molestias magnam.', '8967.00', '3429', '5', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('15', 'omnis', 'Est qui voluptatem laborum aspernatur vero.', '7084.00', '11883', '6', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('16', 'dolores', 'Eos voluptatum maiores temporibus non ratione.', '9708.00', '35935', '6', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('17', 'et', 'Autem fuga vel magnam corporis.', '6716.00', '6823', '6', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('18', 'quam', 'Facere ducimus dicta minus qui non reprehenderit neque iste.', '7646.00', '18273', '7', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('19', 'facere', 'Et molestias et iure ut sit quia.', '1335.00', '1456', '7', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('20', 'et', 'Omnis quisquam non eius.', '7412.00', '86023', '7', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('21', 'magni', 'Quae exercitationem neque numquam aliquam expedita blanditiis nemo aut.', '3291.00', '6153', '8', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('22', 'fugiat', 'Ducimus vitae eaque possimus minima facere.', '7707.00', '93159', '8', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('23', 'ut', 'Pariatur similique et qui placeat.', '8523.00', '49463', '8', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('24', 'quo', 'Et alias ut et aspernatur suscipit enim.', '6125.00', '41342', '9', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('25', 'aliquid', 'Odit illo libero veritatis ducimus dolor.', '5398.00', '88029', '9', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('26', 'quo', 'Necessitatibus dignissimos corrupti eum sapiente reiciendis ullam.', '1083.00', '91640', '9', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('27', 'quas', 'Quaerat unde fugit est tenetur qui.', '4282.00', '11599', '10', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('28', 'alias', 'Ea necessitatibus ut in amet repudiandae nobis consequatur pariatur.', '270.00', '20665', '10', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('29', 'maiores', 'Molestiae porro distinctio ut voluptatem esse ut.', '8100.00', '26879', '10', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('30', 'qui', 'Beatae enim et modi unde aperiam in.', '6682.00', '53633', '11', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('31', 'ab', 'Est illo ullam sapiente et modi.', '9553.00', '9578', '11', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('32', 'dolores', 'Odit aliquid culpa sed voluptatibus pariatur commodi deleniti.', '7230.00', '83035', '11', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('33', 'aut', 'Veritatis commodi reprehenderit excepturi commodi sit.', '6451.00', '67747', '12', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('34', 'modi', 'Sit harum ut et illum blanditiis rerum hic.', '2100.00', '65289', '12', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('35', 'tempora', 'Est et soluta placeat quia et ut.', '6219.00', '4407', '12', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('36', 'quae', 'Doloremque doloremque vitae aliquam unde cumque itaque error.', '1310.00', '23822', '13', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('37', 'quibusdam', 'Et quia esse consequatur.', '4603.00', '85915', '13', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('38', 'error', 'Facilis rerum maxime ut enim sunt illo.', '1573.00', '41585', '13', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('39', 'id', 'Consectetur nulla alias provident ut aperiam ab.', '3386.00', '4932', '14', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('40', 'qui', 'Nihil qui aliquam nesciunt et nisi tempore.', '2078.00', '12744', '14', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('41', 'in', 'Enim ad omnis ipsa et provident voluptate.', '7010.00', '4786', '14', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('42', 'aut', 'Accusantium architecto dicta voluptas iure mollitia est sed.', '8331.00', '47519', '15', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('43', 'facere', 'At quae qui explicabo quibusdam magni.', '5452.00', '67264', '15', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('44', 'ab', 'Temporibus eaque aut dolorem magni cumque facere.', '4414.00', '5832', '15', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('45', 'nulla', 'Ut architecto qui voluptatem dignissimos necessitatibus.', '7271.00', '64339', '16', '2021-04-27 13:42:22', '2021-05-13 09:53:56');
INSERT INTO `product_skus` VALUES ('46', 'rerum', 'Omnis vitae facere sed unde accusantium architecto.', '1257.00', '69857', '16', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('47', 'quod', 'Ab veniam laboriosam quia sit illo quae.', '339.00', '97259', '16', '2021-04-27 13:42:22', '2021-05-13 09:53:56');
INSERT INTO `product_skus` VALUES ('48', 'qui', 'Sed veritatis distinctio quo id voluptatem dolorem officiis.', '5848.00', '52259', '17', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('49', 'et', 'Sequi repellendus rerum impedit voluptates.', '2721.00', '20147', '17', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('50', 'pariatur', 'At placeat rem recusandae facere.', '1353.00', '34495', '17', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('51', 'nemo', 'Quis quia pariatur accusantium et.', '9121.00', '25680', '18', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('52', 'fuga', 'Omnis voluptatum ab delectus excepturi quasi eos aliquam.', '3212.00', '37202', '18', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('53', 'quo', 'Consequatur quod explicabo qui tempora.', '5556.00', '65414', '18', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('54', 'et', 'Qui dolor nihil quis maiores nulla voluptas veniam.', '9641.00', '83659', '19', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('55', 'dolorum', 'Architecto distinctio nihil sequi et labore harum veniam.', '3303.00', '78371', '19', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('56', 'vel', 'Laborum consequatur nesciunt et debitis voluptate qui.', '2321.00', '35961', '19', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('57', 'et', 'Accusamus quia saepe dolorem.', '197.00', '13009', '20', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('58', 'culpa', 'Esse enim quo earum facere.', '9923.00', '23372', '20', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('59', 'nulla', 'Architecto quam nisi laudantium corporis doloribus quidem fuga.', '4379.00', '43784', '20', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('60', 'praesentium', 'Repudiandae autem sequi blanditiis reprehenderit ut eligendi ipsam.', '8000.00', '1238', '21', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('61', 'enim', 'Aut dolorem dignissimos sunt fugit qui necessitatibus.', '2944.00', '32535', '21', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('62', 'delectus', 'Mollitia autem reprehenderit in consectetur accusantium.', '2168.00', '96928', '21', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('63', 'veritatis', 'Ab voluptas illum minima distinctio debitis.', '2791.00', '41509', '22', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('64', 'animi', 'Magnam molestias doloribus qui aliquam voluptas rerum quos.', '3517.00', '5695', '22', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('65', 'inventore', 'Rerum sed culpa eum et corrupti.', '9653.00', '9633', '22', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('66', 'amet', 'Nostrum sunt iste consequatur quam odio quos.', '2899.00', '6739', '23', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('67', 'ipsa', 'Officia odit voluptates eum reprehenderit.', '3838.00', '12521', '23', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('68', 'vero', 'Voluptatibus et laudantium voluptatem tempora laudantium.', '1580.00', '71401', '23', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('69', 'sit', 'Doloribus eius incidunt voluptas velit quibusdam doloremque repellendus.', '846.00', '48992', '24', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('70', 'consequatur', 'Doloribus et corporis adipisci voluptatem cum repellat.', '1647.00', '23719', '24', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('71', 'expedita', 'Dolor corrupti explicabo sint sed sunt dolor.', '5019.00', '19324', '24', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('72', 'voluptatum', 'Molestiae repudiandae aliquid excepturi vero.', '3797.00', '2793', '25', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('73', 'vitae', 'Exercitationem tempora omnis ullam harum quibusdam.', '5641.00', '66206', '25', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('74', 'sed', 'Placeat enim consequatur atque exercitationem eveniet ullam veniam.', '7378.00', '98385', '25', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('75', 'ab', 'Perferendis ullam ipsa et ab dolorum quaerat nam.', '9881.00', '79041', '26', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('76', 'dolores', 'Quibusdam laborum porro enim vero vitae.', '3004.00', '16434', '26', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('77', 'maxime', 'Accusantium voluptas vitae nihil eveniet aliquid et repudiandae distinctio.', '1936.00', '68431', '26', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('78', 'unde', 'Aperiam itaque placeat nihil voluptatibus.', '1262.00', '95418', '27', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('79', 'et', 'Velit suscipit nulla perferendis minus qui esse.', '4086.00', '31249', '27', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('80', 'nihil', 'Dignissimos odio veniam iste ut consequatur aut dolorem.', '1074.00', '9120', '27', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('81', 'quae', 'Sit deleniti corporis beatae et aut molestiae ad quis.', '13.00', '94156', '28', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('82', 'voluptatem', 'Sed non beatae aut quis asperiores harum.', '9473.00', '70949', '28', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('83', 'culpa', 'Quis id pariatur numquam ut praesentium aut.', '9239.00', '84037', '28', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('84', 'voluptatem', 'Laborum repudiandae id ad corporis tenetur ipsam.', '7306.00', '6235', '29', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('85', 'nam', 'Sit cum voluptatibus ut recusandae rerum suscipit est.', '9285.00', '11218', '29', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('86', 'necessitatibus', 'Quae et est nisi aut sed.', '8636.00', '46966', '29', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('87', 'pariatur', 'Qui odit omnis neque itaque.', '7049.00', '73830', '30', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('88', 'qui', 'Tenetur dicta minima laboriosam doloribus sunt cupiditate.', '9687.00', '46358', '30', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('89', 'commodi', 'Ducimus velit nemo enim omnis et quam nostrum temporibus.', '4819.00', '76143', '30', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('90', 'voluptatem', 'Aut qui consequuntur et veniam veritatis.', '6783.00', '91160', '31', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('91', 'inventore', 'Perspiciatis impedit ut quidem.', '4180.00', '60986', '31', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `product_skus` VALUES ('92', 'ut', 'Praesentium repellat tenetur eum voluptatem rerum.', '1857.00', '59065', '31', '2021-04-27 13:42:22', '2021-04-27 13:42:22');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `sold_count` int(10) unsigned NOT NULL DEFAULT '0',
  `review_count` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '测试商品', '<p>这里是总的商品描述</p>', 'images/d61bc28cdb293927c96781805bc4e918.png', '1', '2.00', '1', '2', '10.00', '2021-04-27 10:15:01', '2021-05-13 16:50:47');
INSERT INTO `products` VALUES ('2', 'quibusdam', 'Est accusantium consectetur aliquid eius.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '5.00', '0', '0', '849.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('3', 'consequuntur', 'Eos minus libero est aut excepturi quaerat laudantium.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '2.00', '0', '0', '603.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('4', 'qui', 'Doloremque minima tempora illum voluptatem ducimus nobis eos.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '2.00', '0', '0', '832.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('5', 'quos', 'Aut sit qui ea est dignissimos eos.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '0.00', '0', '0', '4175.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('6', 'voluptas', 'Iure praesentium ipsum dolores est cum labore eligendi.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', '1', '4.00', '0', '0', '6716.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('7', 'odit', 'Est officia sed dolor ut voluptas et eum est.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '1.00', '0', '0', '1335.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('8', 'sed', 'Minus laudantium ut facere quis dolor voluptatibus sit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '4.00', '0', '0', '3291.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('9', 'fugiat', 'Impedit et dolores pariatur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '2.00', '0', '0', '1083.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('10', 'in', 'Dolore in qui sunt non vero cupiditate in qui.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '5.00', '0', '0', '270.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('11', 'possimus', 'Doloribus qui temporibus id fuga mollitia.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '2.00', '0', '0', '6682.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('12', 'dolores', 'Libero inventore nostrum porro.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '0.00', '0', '0', '2100.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('13', 'est', 'Quia qui reiciendis sit qui dicta expedita minima.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '4.00', '0', '0', '1310.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('14', 'voluptatem', 'Sint occaecati quis est dolorum ut aut laudantium porro.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '3.00', '0', '0', '2078.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('15', 'excepturi', 'Similique repudiandae quo fuga vero.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '0.00', '0', '0', '4414.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('16', 'rem', 'Soluta qui molestiae et impedit illo quo molestias.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '0.00', '0', '0', '339.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('17', 'dicta', 'Facilis id porro nihil aut neque delectus.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '1.00', '0', '0', '1353.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('18', 'enim', 'Inventore consequatur omnis ipsa amet ut repellat possimus.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', '1', '5.00', '0', '0', '3212.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('19', 'consequatur', 'Aut sequi repellendus fugit et optio accusamus quia.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '5.00', '0', '0', '2321.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('20', 'eos', 'Et ratione assumenda molestiae qui dolore aut eos.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', '1', '5.00', '0', '0', '197.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('21', 'est', 'Consequuntur ipsa dolore deleniti ut quo.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '0.00', '0', '0', '2168.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('22', 'iure', 'Consequuntur distinctio fugit explicabo ut voluptas.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', '1', '1.00', '0', '0', '2791.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('23', 'quaerat', 'Voluptas tenetur suscipit ut qui tempore sint repellendus.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', '1', '1.00', '0', '0', '1580.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('24', 'delectus', 'Vitae totam eveniet reiciendis repudiandae consequatur dolor.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', '1', '2.00', '0', '0', '846.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('25', 'laudantium', 'Quasi voluptatem earum in sit aut delectus.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '2.00', '0', '0', '3797.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('26', 'laudantium', 'Distinctio labore voluptatem totam quibusdam tenetur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '1.00', '0', '0', '1936.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('27', 'dolor', 'Et voluptates libero ratione in quam.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', '1', '5.00', '0', '0', '1074.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('28', 'rerum', 'Sed ratione rerum quia consequatur est eos excepturi.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', '1', '2.00', '0', '0', '13.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('29', 'repellat', 'Ut quaerat ut illum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', '1', '4.00', '0', '0', '7306.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('30', 'quos', 'Impedit ratione soluta sint illo cumque libero.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', '1', '1.00', '0', '0', '4819.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');
INSERT INTO `products` VALUES ('31', 'reiciendis', 'Amet voluptatem sint placeat nemo voluptas tempore.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', '1', '5.00', '0', '0', '1857.00', '2021-04-27 13:42:22', '2021-04-27 13:42:22');

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) unsigned NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES ('1', '1', '广东省', '深圳市', '福田区', '第61街道第418号', '65000', '邵超', '17806606979', null, '2021-04-22 17:00:46', '2021-04-22 17:00:46');
INSERT INTO `user_addresses` VALUES ('2', '1', '北京市', '市辖区', '东城区', '第3街道第561号', '287800', '曾桂花', '17180133292', null, '2021-04-22 17:00:47', '2021-04-22 17:00:47');
INSERT INTO `user_addresses` VALUES ('3', '1', '北京市', '市辖区', '东城区', '第19街道第200号', '757200', '丘嘉', '13235324840', null, '2021-04-22 17:00:47', '2021-04-22 17:00:47');
INSERT INTO `user_addresses` VALUES ('4', '3', '山东省', '烟台市', '芝罘区', '大山路888号', '264004', '黄大仙', '15966666666', '2021-05-13 16:49:57', '2021-04-23 10:24:02', '2021-05-13 16:49:57');

-- ----------------------------
-- Table structure for user_favorite_products
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_products`;
CREATE TABLE `user_favorite_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_favorite_products_user_id_foreign` (`user_id`),
  KEY `user_favorite_products_product_id_foreign` (`product_id`),
  CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_favorite_products
-- ----------------------------
INSERT INTO `user_favorite_products` VALUES ('3', '3', '1', '2021-05-11 09:52:42', '2021-05-11 09:52:42');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'hyh', '576982542@qq.com', '2021-04-22 16:25:35', '$2y$10$ycniDarZeYf6FGTJxxnkKeldHGnEMQP7EQ0RdIw./LKTVKNn3aGBi', null, '2021-04-22 15:27:59', '2021-04-22 16:25:35');
INSERT INTO `users` VALUES ('2', 'hyh2', 'hyh2@hyh2.com', '2021-04-22 16:29:18', '$2y$10$Ga9r9YdCE79rrhXEX4Ae0uWLDAoGlxtWuzLAmHOCXRM2rGrejxZKO', null, '2021-04-22 16:29:04', '2021-04-22 16:29:18');
INSERT INTO `users` VALUES ('3', '张三', '529671817@qq.com', '2021-05-11 09:33:35', '$2y$10$MZDNp9tbVNVY3Pz0sQ7ure5HZYVk97uvMx2mnWSUfyrAz9ZTAMIOe', null, '2021-05-11 09:28:13', '2021-05-11 09:33:35');
