/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : mydictionary

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 08/05/2019 18:57:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for md_app
-- ----------------------------
DROP TABLE IF EXISTS `md_app`;
CREATE TABLE `md_app`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `app_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store application' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_app
-- ----------------------------
INSERT INTO `md_app` VALUES (1, 'aa', 'AA', '2019-04-09 19:09:14', 1, '2019-04-09 19:09:14', 1);
INSERT INTO `md_app` VALUES (2, 'aa', 'AA', '2019-04-09 19:09:35', 1, '2019-04-09 19:09:35', 1);
INSERT INTO `md_app` VALUES (3, 'aa', 'AA', '2019-04-09 19:10:16', 1, '2019-04-09 19:10:16', 1);
INSERT INTO `md_app` VALUES (4, 'aa', 'AA', '2019-04-09 19:10:34', 1, '2019-04-09 19:10:34', 1);
INSERT INTO `md_app` VALUES (5, 'aa', 'AA', '2019-04-09 19:11:09', 1, '2019-04-09 19:11:09', 1);
INSERT INTO `md_app` VALUES (6, 'aa', 'AA', '2019-04-09 19:11:44', 1, '2019-04-09 19:11:45', 1);
INSERT INTO `md_app` VALUES (7, 'aa', 'AA', '2019-04-09 19:11:59', 1, '2019-04-09 19:11:59', 1);
INSERT INTO `md_app` VALUES (8, 'aa', 'AA', '2019-04-09 19:14:28', 1, '2019-04-09 19:14:28', 1);
INSERT INTO `md_app` VALUES (9, 'aa', 'AA', '2019-04-09 19:14:41', 1, '2019-04-09 19:14:41', 1);

-- ----------------------------
-- Table structure for md_changed_record
-- ----------------------------
DROP TABLE IF EXISTS `md_changed_record`;
CREATE TABLE `md_changed_record`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `diff_type` tinyint(1) NOT NULL COMMENT 'Add 1, Delete 2, Modify 3',
  `attr_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `original_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `current_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `data_type` int(11) NOT NULL,
  `data_length` int(11) NOT NULL,
  `is_null` tinyint(1) NOT NULL,
  `default_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_primary_key` tinyint(1) NOT NULL,
  `is_foreign_key` tinyint(1) NOT NULL,
  `is_unique_key` tinyint(1) NOT NULL,
  `is_index_key` tinyint(1) NOT NULL,
  `column_character_set` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store changed records' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for md_column
-- ----------------------------
DROP TABLE IF EXISTS `md_column`;
CREATE TABLE `md_column`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_length` int(11) DEFAULT NULL,
  `is_null` tinyint(1) NOT NULL,
  `default_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_primary_key` tinyint(1) DEFAULT NULL,
  `is_foreign_key` tinyint(1) DEFAULT NULL,
  `is_unique_key` tinyint(1) DEFAULT NULL,
  `is_index_key` tinyint(1) DEFAULT NULL,
  `column_character_set` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store columns' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for md_db
-- ----------------------------
DROP TABLE IF EXISTS `md_db`;
CREATE TABLE `md_db`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `db_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `db_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `app_id` int(11) NOT NULL,
  `env_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store DB' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for md_diff_info
-- ----------------------------
DROP TABLE IF EXISTS `md_diff_info`;
CREATE TABLE `md_diff_info`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `diff_type` tinyint(1) NOT NULL COMMENT 'Add 1, Delete 2, Modify 3',
  `data_type` int(11) NOT NULL,
  `data_length` int(11) NOT NULL,
  `is_null` tinyint(1) NOT NULL,
  `default_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_primary_key` tinyint(1) NOT NULL,
  `is_foreign_key` tinyint(1) NOT NULL,
  `is_unique_key` tinyint(1) NOT NULL,
  `is_index_key` tinyint(1) NOT NULL,
  `column_character_set` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store diff' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for md_env
-- ----------------------------
DROP TABLE IF EXISTS `md_env`;
CREATE TABLE `md_env`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `env_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `env_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store ENV' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_env
-- ----------------------------
INSERT INTO `md_env` VALUES (1, 'dd', 'DD', '2019-04-09 19:09:14', 1, '2019-04-09 19:09:14', 1);
INSERT INTO `md_env` VALUES (2, 'dd', 'DD', '2019-04-09 19:09:35', 1, '2019-04-09 19:09:35', 1);
INSERT INTO `md_env` VALUES (3, 'dd', 'DD', '2019-04-09 19:10:16', 1, '2019-04-09 19:10:16', 1);
INSERT INTO `md_env` VALUES (4, 'dd', 'DD', '2019-04-09 19:10:34', 1, '2019-04-09 19:10:34', 1);
INSERT INTO `md_env` VALUES (5, 'dd', 'DD', '2019-04-09 19:11:09', 1, '2019-04-09 19:11:09', 1);
INSERT INTO `md_env` VALUES (6, 'dd', 'DD', '2019-04-09 19:11:44', 1, '2019-04-09 19:11:45', 1);
INSERT INTO `md_env` VALUES (7, 'dd', 'DD', '2019-04-09 19:11:59', 1, '2019-04-09 19:11:59', 1);
INSERT INTO `md_env` VALUES (8, 'dd', 'DD', '2019-04-09 19:14:28', 1, '2019-04-09 19:14:28', 1);
INSERT INTO `md_env` VALUES (9, 'dd', 'DD', '2019-04-09 19:14:41', 1, '2019-04-09 19:14:41', 1);

-- ----------------------------
-- Table structure for md_group
-- ----------------------------
DROP TABLE IF EXISTS `md_group`;
CREATE TABLE `md_group`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store groups' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for md_group_role
-- ----------------------------
DROP TABLE IF EXISTS `md_group_role`;
CREATE TABLE `md_group_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store group roles' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for md_role
-- ----------------------------
DROP TABLE IF EXISTS `md_role`;
CREATE TABLE `md_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_symbol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store roles' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_role
-- ----------------------------
INSERT INTO `md_role` VALUES (1, 'Admin', 'ADMIN', '2019-03-22 00:00:00', 1, '2019-03-22 19:14:14', 1);
INSERT INTO `md_role` VALUES (2, 'Developer', 'DEVELOPER', '2019-03-22 00:00:25', 1, '2019-03-22 19:15:47', 1);
INSERT INTO `md_role` VALUES (3, 'Viewer', 'VIEWER', '2019-03-22 00:14:03', 1, '2019-03-22 19:15:57', 1);

-- ----------------------------
-- Table structure for md_site
-- ----------------------------
DROP TABLE IF EXISTS `md_site`;
CREATE TABLE `md_site`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `site_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store site' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_site
-- ----------------------------
INSERT INTO `md_site` VALUES (1, 'ss', 'SS', '2019-04-09 19:09:14', 1, '2019-04-09 19:09:14', 1);
INSERT INTO `md_site` VALUES (2, 'ss', 'SS', '2019-04-09 19:09:35', 1, '2019-04-09 19:09:35', 1);
INSERT INTO `md_site` VALUES (3, 'ss', 'SS', '2019-04-09 19:10:16', 1, '2019-04-09 19:10:16', 1);
INSERT INTO `md_site` VALUES (4, 'ss', 'SS', '2019-04-09 19:10:34', 1, '2019-04-09 19:10:34', 1);
INSERT INTO `md_site` VALUES (5, 'ss', 'SS', '2019-04-09 19:11:09', 1, '2019-04-09 19:11:09', 1);
INSERT INTO `md_site` VALUES (6, 'ss', 'SS', '2019-04-09 19:11:44', 1, '2019-04-09 19:11:45', 1);
INSERT INTO `md_site` VALUES (7, 'ss', 'SS', '2019-04-09 19:11:59', 1, '2019-04-09 19:11:59', 1);
INSERT INTO `md_site` VALUES (8, 'ss', 'SS', '2019-04-09 19:14:28', 1, '2019-04-09 19:14:28', 1);
INSERT INTO `md_site` VALUES (9, 'ss', 'SS', '2019-04-09 19:14:41', 1, '2019-04-09 19:14:41', 1);

-- ----------------------------
-- Table structure for md_table
-- ----------------------------
DROP TABLE IF EXISTS `md_table`;
CREATE TABLE `md_table`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `db_id` int(11) NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_engine` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_character_set` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store tables' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for md_test
-- ----------------------------
DROP TABLE IF EXISTS `md_test`;
CREATE TABLE `md_test`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_id` int(11) NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data_length` int(11) DEFAULT NULL,
  `is_null` tinyint(1) NOT NULL,
  `default_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_primary_key` tinyint(1) DEFAULT NULL,
  `is_foreign_key` tinyint(1) DEFAULT NULL,
  `is_unique_key` tinyint(1) DEFAULT NULL,
  `is_index_key` tinyint(1) DEFAULT NULL,
  `column_character_set` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store columns' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_test
-- ----------------------------
INSERT INTO `md_test` VALUES (1, 1, 'username', 'char', 255, 0, NULL, 0, NULL, 0, 1, 'utf8', '2019-03-23 15:37:39', 1, '2019-03-23 15:39:13', 1);
INSERT INTO `md_test` VALUES (2, 1, 'password', 'varchar', 200, 1, NULL, 1, 1, NULL, 0, 'utf8', '2019-03-23 15:38:56', 1, '2019-03-23 15:39:01', 1);
INSERT INTO `md_test` VALUES (3, 1, 'age', 'int', 11, 1, '0', NULL, 0, 1, NULL, 'gbk', '2019-03-23 15:40:12', 1, '2019-03-23 15:40:21', 1);
INSERT INTO `md_test` VALUES (4, 2, 'parentid', 'bigint', 11, 0, NULL, 1, NULL, 0, 1, 'utf8', '2019-03-23 15:41:27', 1, '2019-03-23 15:41:36', 1);

-- ----------------------------
-- Table structure for md_user
-- ----------------------------
DROP TABLE IF EXISTS `md_user`;
CREATE TABLE `md_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store users' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_user
-- ----------------------------
INSERT INTO `md_user` VALUES (1, 'admin', '84252802@qq.com', '2019-04-04 15:27:09', 1, '2019-04-04 15:27:17', 1);
INSERT INTO `md_user` VALUES (2, 'justin', 'justinwen@rayootech.com', '2019-04-04 15:28:04', 1, '2019-04-04 15:28:10', 1);

-- ----------------------------
-- Table structure for md_user_role
-- ----------------------------
DROP TABLE IF EXISTS `md_user_role`;
CREATE TABLE `md_user_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `create_at` timestamp(0) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'store user roles' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of md_user_role
-- ----------------------------
INSERT INTO `md_user_role` VALUES (1, 1, 1, '2019-04-04 15:28:48', 1, '2019-04-04 15:28:54', 1);
INSERT INTO `md_user_role` VALUES (2, 2, 2, '2019-04-04 15:29:02', 1, '2019-04-04 15:29:07', 1);

SET FOREIGN_KEY_CHECKS = 1;
