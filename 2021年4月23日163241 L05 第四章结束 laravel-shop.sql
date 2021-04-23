/*
Navicat MySQL Data Transfer

Source Server         : lavaral
Source Server Version : 50727
Source Host           : localhost:33060
Source Database       : laravel-shop

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2021-04-23 16:33:01
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', '首页', 'fa-bar-chart', '/', null, null, '2021-04-23 15:09:02');
INSERT INTO `admin_menu` VALUES ('2', '0', '3', '系通管理', 'fa-tasks', null, null, null, '2021-04-23 16:09:24');
INSERT INTO `admin_menu` VALUES ('3', '2', '4', '管理员', 'fa-users', 'auth/users', null, null, '2021-04-23 16:09:24');
INSERT INTO `admin_menu` VALUES ('4', '2', '5', '角色', 'fa-user', 'auth/roles', null, null, '2021-04-23 16:09:24');
INSERT INTO `admin_menu` VALUES ('5', '2', '6', '权限', 'fa-ban', 'auth/permissions', null, null, '2021-04-23 16:09:24');
INSERT INTO `admin_menu` VALUES ('6', '2', '7', '菜单', 'fa-bars', 'auth/menu', null, null, '2021-04-23 16:09:24');
INSERT INTO `admin_menu` VALUES ('7', '2', '8', '操作日志', 'fa-history', 'auth/logs', null, null, '2021-04-23 16:09:24');
INSERT INTO `admin_menu` VALUES ('8', '0', '2', '用户管理', 'fa-users', '/users', null, '2021-04-23 16:09:01', '2021-04-23 16:09:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `admin_users` VALUES ('2', 'operation', '$2y$10$MoFqEushmcw46cAoICnhcORoBBoHQ/AHfEexPgQ58vFOUlhXbPHpG', '运营', 'images/QQ截图20210416150236.png', 'vGIGpJlIxBFhkYpmbp3OYp211tsnXZswKpCojeGx1zu8ByQSsiCBxUwfTVjA', '2021-04-23 16:20:58', '2021-04-23 16:29:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('4', '2021_04_22_164150_create_user_addresses_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_01_04_173148_create_admin_tables', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES ('1', '1', '广东省', '深圳市', '福田区', '第61街道第418号', '65000', '邵超', '17806606979', null, '2021-04-22 17:00:46', '2021-04-22 17:00:46');
INSERT INTO `user_addresses` VALUES ('2', '1', '北京市', '市辖区', '东城区', '第3街道第561号', '287800', '曾桂花', '17180133292', null, '2021-04-22 17:00:47', '2021-04-22 17:00:47');
INSERT INTO `user_addresses` VALUES ('3', '1', '北京市', '市辖区', '东城区', '第19街道第200号', '757200', '丘嘉', '13235324840', null, '2021-04-22 17:00:47', '2021-04-22 17:00:47');
INSERT INTO `user_addresses` VALUES ('4', '1', '山东省', '烟台市', '芝罘区', '大山路888号', '264004', '黄大仙', '15966666666', null, '2021-04-23 10:24:02', '2021-04-23 10:24:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'hyh', '576982542@qq.com', '2021-04-22 16:25:35', '$2y$10$ycniDarZeYf6FGTJxxnkKeldHGnEMQP7EQ0RdIw./LKTVKNn3aGBi', null, '2021-04-22 15:27:59', '2021-04-22 16:25:35');
INSERT INTO `users` VALUES ('2', 'hyh2', 'hyh2@hyh2.com', '2021-04-22 16:29:18', '$2y$10$Ga9r9YdCE79rrhXEX4Ae0uWLDAoGlxtWuzLAmHOCXRM2rGrejxZKO', null, '2021-04-22 16:29:04', '2021-04-22 16:29:18');
