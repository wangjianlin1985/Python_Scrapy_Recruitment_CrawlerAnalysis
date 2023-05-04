/*
 Navicat Premium Data Transfer

 Source Server         : mysql8.0
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : jzzpfx

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 20/08/2021 16:55:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add captcha store', 6, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (22, 'Can change captcha store', 6, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (23, 'Can delete captcha store', 6, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (24, 'Can view captcha store', 6, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (25, 'Can add crontab', 7, 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES (26, 'Can change crontab', 7, 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES (27, 'Can delete crontab', 7, 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES (28, 'Can view crontab', 7, 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES (29, 'Can add interval', 8, 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES (30, 'Can change interval', 8, 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES (31, 'Can delete interval', 8, 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES (32, 'Can view interval', 8, 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES (33, 'Can add periodic task', 9, 'add_periodictask');
INSERT INTO `auth_permission` VALUES (34, 'Can change periodic task', 9, 'change_periodictask');
INSERT INTO `auth_permission` VALUES (35, 'Can delete periodic task', 9, 'delete_periodictask');
INSERT INTO `auth_permission` VALUES (36, 'Can view periodic task', 9, 'view_periodictask');
INSERT INTO `auth_permission` VALUES (37, 'Can add periodic tasks', 10, 'add_periodictasks');
INSERT INTO `auth_permission` VALUES (38, 'Can change periodic tasks', 10, 'change_periodictasks');
INSERT INTO `auth_permission` VALUES (39, 'Can delete periodic tasks', 10, 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES (40, 'Can view periodic tasks', 10, 'view_periodictasks');
INSERT INTO `auth_permission` VALUES (41, 'Can add task state', 11, 'add_taskmeta');
INSERT INTO `auth_permission` VALUES (42, 'Can change task state', 11, 'change_taskmeta');
INSERT INTO `auth_permission` VALUES (43, 'Can delete task state', 11, 'delete_taskmeta');
INSERT INTO `auth_permission` VALUES (44, 'Can view task state', 11, 'view_taskmeta');
INSERT INTO `auth_permission` VALUES (45, 'Can add saved group result', 12, 'add_tasksetmeta');
INSERT INTO `auth_permission` VALUES (46, 'Can change saved group result', 12, 'change_tasksetmeta');
INSERT INTO `auth_permission` VALUES (47, 'Can delete saved group result', 12, 'delete_tasksetmeta');
INSERT INTO `auth_permission` VALUES (48, 'Can view saved group result', 12, 'view_tasksetmeta');
INSERT INTO `auth_permission` VALUES (49, 'Can add task', 13, 'add_taskstate');
INSERT INTO `auth_permission` VALUES (50, 'Can change task', 13, 'change_taskstate');
INSERT INTO `auth_permission` VALUES (51, 'Can delete task', 13, 'delete_taskstate');
INSERT INTO `auth_permission` VALUES (52, 'Can view task', 13, 'view_taskstate');
INSERT INTO `auth_permission` VALUES (53, 'Can add worker', 14, 'add_workerstate');
INSERT INTO `auth_permission` VALUES (54, 'Can change worker', 14, 'change_workerstate');
INSERT INTO `auth_permission` VALUES (55, 'Can delete worker', 14, 'delete_workerstate');
INSERT INTO `auth_permission` VALUES (56, 'Can view worker', 14, 'view_workerstate');
INSERT INTO `auth_permission` VALUES (57, 'Can add 用户管理', 15, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (58, 'Can change 用户管理', 15, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 用户管理', 15, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (60, 'Can view 用户管理', 15, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (61, 'Can add 部门管理', 16, 'add_dept');
INSERT INTO `auth_permission` VALUES (62, 'Can change 部门管理', 16, 'change_dept');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 部门管理', 16, 'delete_dept');
INSERT INTO `auth_permission` VALUES (64, 'Can view 部门管理', 16, 'view_dept');
INSERT INTO `auth_permission` VALUES (65, 'Can add 菜单管理', 17, 'add_menu');
INSERT INTO `auth_permission` VALUES (66, 'Can change 菜单管理', 17, 'change_menu');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 菜单管理', 17, 'delete_menu');
INSERT INTO `auth_permission` VALUES (68, 'Can view 菜单管理', 17, 'view_menu');
INSERT INTO `auth_permission` VALUES (69, 'Can add 角色管理', 18, 'add_role');
INSERT INTO `auth_permission` VALUES (70, 'Can change 角色管理', 18, 'change_role');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 角色管理', 18, 'delete_role');
INSERT INTO `auth_permission` VALUES (72, 'Can view 角色管理', 18, 'view_role');
INSERT INTO `auth_permission` VALUES (73, 'Can add 岗位管理', 19, 'add_post');
INSERT INTO `auth_permission` VALUES (74, 'Can change 岗位管理', 19, 'change_post');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 岗位管理', 19, 'delete_post');
INSERT INTO `auth_permission` VALUES (76, 'Can view 岗位管理', 19, 'view_post');
INSERT INTO `auth_permission` VALUES (77, 'Can add 字典管理', 20, 'add_dictdata');
INSERT INTO `auth_permission` VALUES (78, 'Can change 字典管理', 20, 'change_dictdata');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 字典管理', 20, 'delete_dictdata');
INSERT INTO `auth_permission` VALUES (80, 'Can view 字典管理', 20, 'view_dictdata');
INSERT INTO `auth_permission` VALUES (81, 'Can add 通知公告', 21, 'add_messagepush');
INSERT INTO `auth_permission` VALUES (82, 'Can change 通知公告', 21, 'change_messagepush');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 通知公告', 21, 'delete_messagepush');
INSERT INTO `auth_permission` VALUES (84, 'Can view 通知公告', 21, 'view_messagepush');
INSERT INTO `auth_permission` VALUES (85, 'Can add 站点设置', 22, 'add_webset');
INSERT INTO `auth_permission` VALUES (86, 'Can change 站点设置', 22, 'change_webset');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 站点设置', 22, 'delete_webset');
INSERT INTO `auth_permission` VALUES (88, 'Can view 站点设置', 22, 'view_webset');
INSERT INTO `auth_permission` VALUES (89, 'Can add 文件管理', 23, 'add_savefile');
INSERT INTO `auth_permission` VALUES (90, 'Can change 文件管理', 23, 'change_savefile');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 文件管理', 23, 'delete_savefile');
INSERT INTO `auth_permission` VALUES (92, 'Can view 文件管理', 23, 'view_savefile');
INSERT INTO `auth_permission` VALUES (93, 'Can add 操作日志', 24, 'add_operationlog');
INSERT INTO `auth_permission` VALUES (94, 'Can change 操作日志', 24, 'change_operationlog');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 操作日志', 24, 'delete_operationlog');
INSERT INTO `auth_permission` VALUES (96, 'Can view 操作日志', 24, 'view_operationlog');
INSERT INTO `auth_permission` VALUES (97, 'Can add 通知公告与用户关系', 25, 'add_messagepushuser');
INSERT INTO `auth_permission` VALUES (98, 'Can change 通知公告与用户关系', 25, 'change_messagepushuser');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 通知公告与用户关系', 25, 'delete_messagepushuser');
INSERT INTO `auth_permission` VALUES (100, 'Can view 通知公告与用户关系', 25, 'view_messagepushuser');
INSERT INTO `auth_permission` VALUES (101, 'Can add 登录日志', 26, 'add_logininfor');
INSERT INTO `auth_permission` VALUES (102, 'Can change 登录日志', 26, 'change_logininfor');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 登录日志', 26, 'delete_logininfor');
INSERT INTO `auth_permission` VALUES (104, 'Can view 登录日志', 26, 'view_logininfor');
INSERT INTO `auth_permission` VALUES (105, 'Can add 字典详情', 27, 'add_dictdetails');
INSERT INTO `auth_permission` VALUES (106, 'Can change 字典详情', 27, 'change_dictdetails');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 字典详情', 27, 'delete_dictdetails');
INSERT INTO `auth_permission` VALUES (108, 'Can view 字典详情', 27, 'view_dictdetails');
INSERT INTO `auth_permission` VALUES (109, 'Can add 参数设置', 28, 'add_configsettings');
INSERT INTO `auth_permission` VALUES (110, 'Can change 参数设置', 28, 'change_configsettings');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 参数设置', 28, 'delete_configsettings');
INSERT INTO `auth_permission` VALUES (112, 'Can view 参数设置', 28, 'view_configsettings');
INSERT INTO `auth_permission` VALUES (113, 'Can add 兼职照片管理', 29, 'add_jzzp');
INSERT INTO `auth_permission` VALUES (114, 'Can change 兼职照片管理', 29, 'change_jzzp');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 兼职照片管理', 29, 'delete_jzzp');
INSERT INTO `auth_permission` VALUES (116, 'Can view 兼职照片管理', 29, 'view_jzzp');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (1, '7-3=', '4', 'd55a5060b457c8c0632738e3749f9c58dde2c0c1', '2021-03-24 23:07:16.688515');
INSERT INTO `captcha_captchastore` VALUES (2, '5+1=', '6', '95c971698959cf4d877954b40a17d1a949fb9a16', '2021-03-24 23:07:17.538365');
INSERT INTO `captcha_captchastore` VALUES (3, '9+7=', '16', '7e76650d7b8d0ee382c117d926d1e04ecd7579a4', '2021-03-24 23:14:06.925581');
INSERT INTO `captcha_captchastore` VALUES (4, '1+1=', '2', '338499850715d3116cf9fcdaa9eb461f8ca71957', '2021-03-24 23:14:57.740944');
INSERT INTO `captcha_captchastore` VALUES (5, '9+1=', '10', '01870a13ae6415775fe127cac16db5d67fa1b9ba', '2021-03-24 23:20:51.244297');
INSERT INTO `captcha_captchastore` VALUES (6, '9+7=', '16', 'f0f1da11a9c4090ac47fa189c97af2329f454eda', '2021-03-28 14:02:45.881115');
INSERT INTO `captcha_captchastore` VALUES (7, '10+2=', '12', '944598ff745482a9e5dbca35470f4b49ea73b563', '2021-03-28 17:11:58.787234');
INSERT INTO `captcha_captchastore` VALUES (8, '2*10=', '20', 'c55f693dbbff20708b436849c3973589aac9bd32', '2021-03-28 21:13:24.078350');
INSERT INTO `captcha_captchastore` VALUES (9, '2*6=', '12', 'ff68b66981e7fb01257d096e24e323ba086ac28b', '2021-08-19 02:10:33.528179');
INSERT INTO `captcha_captchastore` VALUES (10, '5+5=', '10', 'cf463373717343d30c0ccd964b6207fc257905e1', '2021-08-19 02:10:46.712116');
INSERT INTO `captcha_captchastore` VALUES (11, '5-4=', '1', 'c8ecee5bdaa37dbb5068167678c43bbddaa321dc', '2021-08-19 02:12:09.688184');
INSERT INTO `captcha_captchastore` VALUES (12, '10+4=', '14', 'aad9eff076376ea1814548b960d6b7b2ab8b55d9', '2021-08-20 16:32:18.456034');
INSERT INTO `captcha_captchastore` VALUES (13, '7-4=', '3', 'b9ec5bfeae8b84bbbee4362cd376bdc683588b8e', '2021-08-20 16:48:49.128136');

-- ----------------------------
-- Table structure for celery_taskmeta
-- ----------------------------
DROP TABLE IF EXISTS `celery_taskmeta`;
CREATE TABLE `celery_taskmeta`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `celery_taskmeta_hidden_23fd02dc`(`hidden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for celery_tasksetmeta
-- ----------------------------
DROP TABLE IF EXISTS `celery_tasksetmeta`;
CREATE TABLE `celery_tasksetmeta`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `taskset_id`(`taskset_id`) USING BTREE,
  INDEX `celery_tasksetmeta_hidden_593cfc24`(`hidden`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_permission_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_permission_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `permission_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (6, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'djcelery', 'crontabschedule');
INSERT INTO `django_content_type` VALUES (8, 'djcelery', 'intervalschedule');
INSERT INTO `django_content_type` VALUES (9, 'djcelery', 'periodictask');
INSERT INTO `django_content_type` VALUES (10, 'djcelery', 'periodictasks');
INSERT INTO `django_content_type` VALUES (11, 'djcelery', 'taskmeta');
INSERT INTO `django_content_type` VALUES (12, 'djcelery', 'tasksetmeta');
INSERT INTO `django_content_type` VALUES (13, 'djcelery', 'taskstate');
INSERT INTO `django_content_type` VALUES (14, 'djcelery', 'workerstate');
INSERT INTO `django_content_type` VALUES (16, 'permission', 'dept');
INSERT INTO `django_content_type` VALUES (29, 'permission', 'jzzp');
INSERT INTO `django_content_type` VALUES (17, 'permission', 'menu');
INSERT INTO `django_content_type` VALUES (19, 'permission', 'post');
INSERT INTO `django_content_type` VALUES (18, 'permission', 'role');
INSERT INTO `django_content_type` VALUES (15, 'permission', 'userprofile');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (28, 'system', 'configsettings');
INSERT INTO `django_content_type` VALUES (20, 'system', 'dictdata');
INSERT INTO `django_content_type` VALUES (27, 'system', 'dictdetails');
INSERT INTO `django_content_type` VALUES (26, 'system', 'logininfor');
INSERT INTO `django_content_type` VALUES (21, 'system', 'messagepush');
INSERT INTO `django_content_type` VALUES (25, 'system', 'messagepushuser');
INSERT INTO `django_content_type` VALUES (24, 'system', 'operationlog');
INSERT INTO `django_content_type` VALUES (23, 'system', 'savefile');
INSERT INTO `django_content_type` VALUES (22, 'system', 'webset');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2021-03-24 23:00:06.137655');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2021-03-24 23:00:06.324508');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2021-03-24 23:00:06.483521');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2021-03-24 23:00:07.111144');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2021-03-24 23:00:07.130719');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2021-03-24 23:00:07.147494');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2021-03-24 23:00:07.162579');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2021-03-24 23:00:07.173461');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2021-03-24 23:00:07.190441');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2021-03-24 23:00:07.207445');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2021-03-24 23:00:07.221447');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2021-03-24 23:00:07.258756');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2021-03-24 23:00:07.303473');
INSERT INTO `django_migrations` VALUES (14, 'permission', '0001_initial', '2021-03-24 23:00:08.163517');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2021-03-24 23:00:09.725147');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2021-03-24 23:00:09.984744');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-24 23:00:10.016101');
INSERT INTO `django_migrations` VALUES (18, 'captcha', '0001_initial', '2021-03-24 23:00:10.155570');
INSERT INTO `django_migrations` VALUES (19, 'djcelery', '0001_initial', '2021-03-24 23:00:10.436668');
INSERT INTO `django_migrations` VALUES (20, 'sessions', '0001_initial', '2021-03-24 23:00:10.866105');
INSERT INTO `django_migrations` VALUES (21, 'system', '0001_initial', '2021-03-24 23:00:11.382481');
INSERT INTO `django_migrations` VALUES (22, 'permission', '0002_jzzp', '2021-03-25 02:12:12.915309');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('00k2tk1bmuep7anqmnuwvy5grq6s0vxp', 'NDI1ZWUxMDc2ZjdlMWUyNTMxNTIwNjk4YWVmYjUzZGM4N2JkMzk2Yjp7Im1vZGVsX25hbWUiOiJcdTkwMWFcdTc3ZTVcdTUxNmNcdTU0NGEiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MDFhXHU3N2U1XHU1MTZjXHU1NDRhIn0=', '2021-09-02 12:44:45.655905');
INSERT INTO `django_session` VALUES ('02s5hab26p97lt5qdefriw9kd0es6g8o', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:59:33.040640');
INSERT INTO `django_session` VALUES ('0cg21n70oxmgzpf4ntsdipywjd16ov7c', 'NWNjOGZjNDYyMjg0ODE5MzI2NWQ0YjI5MmZlZGNmMGRmNWRiOGNkMjp7Im1vZGVsX25hbWUiOiJcdTY1ODdcdTRlZjZcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU2NTg3XHU0ZWY2XHU3YmExXHU3NDA2In0=', '2021-09-02 15:23:44.282153');
INSERT INTO `django_session` VALUES ('0f9vhsnhwl3qomrs24yqew5xae2yyhby', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:06:39.876171');
INSERT INTO `django_session` VALUES ('0gu2ltixgntos7g3sxe77j42vo3g0xtx', 'YjY1ZGJmZDcyYWEwYThkMTkzNjU0ZWZmNWQwMzliZTk0MWQxNzY0ODp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 22:01:20.802161');
INSERT INTO `django_session` VALUES ('0otf7jsmz9rcenkzsb5gcglyqzlhw6d3', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 16:21:52.667610');
INSERT INTO `django_session` VALUES ('0qae7ez2ngwh5olrd5e1rtdu11alzupv', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:16:14.846563');
INSERT INTO `django_session` VALUES ('0srtcsl91xpc9a0l70l6mbd55bds4p48', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:41.787400');
INSERT INTO `django_session` VALUES ('0tlny43fvv59gmmjvoe8bk5xxupth28n', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 02:11:37.040841');
INSERT INTO `django_session` VALUES ('1503ig6048yagifqd13mczfgbb43dl5v', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 22:01:20.809157');
INSERT INTO `django_session` VALUES ('15fwszznmc8l3p3ld76flp88wamj11dw', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-07 23:06:34.110660');
INSERT INTO `django_session` VALUES ('17jyi5oa02a62200p4pax4mzho0552nv', 'YmUyZWRkOWMzYWJjYzg3NGRmOTMzMDEzNjkxNjJiYTJkYmRlZWMwOTp7Im1vZGVsX25hbWUiOiJcdTc2N2JcdTVmNTVcdTY1ZTVcdTVmZDciLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NjdiXHU1ZjU1XHU2NWU1XHU1ZmQ3In0=', '2021-09-02 15:23:49.080384');
INSERT INTO `django_session` VALUES ('1f35brheplvy0fixr83sdbswupcdrbzu', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-08 00:58:44.797190');
INSERT INTO `django_session` VALUES ('1ohn2xzzx4jgh22gyhqoerwz36dr5ij4', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 14:07:13.889031');
INSERT INTO `django_session` VALUES ('20jl1vvlk4mtuee85nzxpsi4er27rin8', 'MjA4MDRkNmNmMzMyZGM2MmM3ODQ0YTIyNmQ2NGFiNDA0NDdlYmI2Yjp7Im1vZGVsX25hbWUiOiIifQ==', '2021-04-07 23:19:51.217613');
INSERT INTO `django_session` VALUES ('20ovgeyfbbtyzaxx84750udud4cqvn3o', 'N2MxZDNlODgxMzBkNTI3YzVlOWFlNGQ2MTYxNzQ0YzlmODkwN2M0NTp7Im1vZGVsX25hbWUiOiJcdTUzYzJcdTY1NzBcdThiYmVcdTdmNmUiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1M2MyXHU2NTcwXHU4YmJlXHU3ZjZlIn0=', '2021-09-02 02:11:26.144536');
INSERT INTO `django_session` VALUES ('228ucrux47jjmddro3tolfq2w95ogg16', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 12:44:48.328528');
INSERT INTO `django_session` VALUES ('22x2d785u1k54up8txribydjvd3xmqc0', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:15:09.794728');
INSERT INTO `django_session` VALUES ('27b8if4jss5ckq0jujeksf1imv0xq6mx', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:06:39.654233');
INSERT INTO `django_session` VALUES ('29cgd8jtye5zphhrrysw5igpqrprdvf0', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:21:43.423019');
INSERT INTO `django_session` VALUES ('29jysdng5307sdjj2wiekvs7mfnx5m8v', 'N2MxZDNlODgxMzBkNTI3YzVlOWFlNGQ2MTYxNzQ0YzlmODkwN2M0NTp7Im1vZGVsX25hbWUiOiJcdTUzYzJcdTY1NzBcdThiYmVcdTdmNmUiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1M2MyXHU2NTcwXHU4YmJlXHU3ZjZlIn0=', '2021-04-07 23:33:57.648215');
INSERT INTO `django_session` VALUES ('2fythki54cusu377x50dxd4dd5712nx8', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 14:18:09.920845');
INSERT INTO `django_session` VALUES ('2kzwt86cx2dk28jtxvpatxq741wzty3d', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:21:19.294517');
INSERT INTO `django_session` VALUES ('2p7yakn6g03nsyylrga3un5keqtyqes5', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 12:36:52.761269');
INSERT INTO `django_session` VALUES ('2q4oth5mmfihqs14qlix12df40kmvdw6', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:21:27.770421');
INSERT INTO `django_session` VALUES ('2u4w7xz0zidkdvvq7ev2mut6zmuunvky', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:33:23.279022');
INSERT INTO `django_session` VALUES ('2w503aeumxp66i3gmj6zgbh8oz9wlgja', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-07 23:28:36.960564');
INSERT INTO `django_session` VALUES ('2zp1kwvstheburm4hpm0uq3uvvmr9zm9', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:52:21.763261');
INSERT INTO `django_session` VALUES ('31gqhp5s9eq48wswgckvj8tj0b23l5uh', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 12:38:50.664452');
INSERT INTO `django_session` VALUES ('39eucw0augpvkbbg6rnu00qkxs6px0rg', 'MjNjMDMzN2YxY2IwMjJkOGZhZWFmMTBjNWEwZjIzMzg5YjFkZDI5ZDp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYifQ==', '2021-04-07 23:28:50.719932');
INSERT INTO `django_session` VALUES ('39o9f1ge7fv5jhuq6fsdmv1nvx3pm4px', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:42.647007');
INSERT INTO `django_session` VALUES ('3md6udg2y1cf2i6knwigoxh4gwlu5h3t', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:21:19.077500');
INSERT INTO `django_session` VALUES ('3n1qqahuqb1j1lj35bysar1gnogqi4tv', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 22:03:45.790165');
INSERT INTO `django_session` VALUES ('3pl38p2e59uu63d4g68nlrkgmx2wod5p', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:52:15.853606');
INSERT INTO `django_session` VALUES ('3qq45yr9feu8fzeeemmni8oxvbqueo3r', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 16:04:06.710282');
INSERT INTO `django_session` VALUES ('41q28cnc43cy1khjoio4w3msblvtexj3', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:26:46.646049');
INSERT INTO `django_session` VALUES ('41t7uydb60sefcj7xvqpdsik7lfiabhw', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:23:53.759291');
INSERT INTO `django_session` VALUES ('4200j3dunfmeoiewmpwyjfyghay8223z', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:56:31.102748');
INSERT INTO `django_session` VALUES ('42e94c227wzr2dne5r481i8mamg071nb', 'YmY0NTQ5ZmFhZWEwMGM1NzFiM2Y2YjNiMzUzYThmYmU5OWVlMDkyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy52YWRtaW4udXRpbHMuYmFja2VuZHMuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjNzNkMjZlMTBmZmY1OTMwMDQ2NzcwNDczZDA0MTRkZWMxNGE5NWYifQ==', '2021-04-07 23:06:25.110310');
INSERT INTO `django_session` VALUES ('42fg7drdcqlgcophr4cv2szvddkxqdo2', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:27.017891');
INSERT INTO `django_session` VALUES ('43ntp0bkg3gvgnwhlxdak2n11f7eqzlt', 'ZGJkMzQ0OTA1YzkyNjJiNzg0MjRlZTQyY2FlOWUxMDlhODMwM2E2MDp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1YjU3XHU1MTc4XHU3YmExXHU3NDA2In0=', '2021-09-02 12:40:13.188923');
INSERT INTO `django_session` VALUES ('45b2y1et9v0ati5skuuaenvqhmli9yjz', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:29:50.475469');
INSERT INTO `django_session` VALUES ('45fy865g0iujniccliggknb41pkg2v3h', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-11 14:07:14.077045');
INSERT INTO `django_session` VALUES ('46f0zq4omx7cubknmv3n4c7fdgqhu7h5', 'NTc0YmUzNTJhM2UxZDAwOTA2Zjc0MjQ4MjNmYTAyMTY4MjRhNGNlZTp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdThkMjJcdTUyYTFcdTkwZThcdTk1ZTg+XT5dIn0=', '2021-04-07 23:28:12.547431');
INSERT INTO `django_session` VALUES ('49ip7cehjd354nhtwxpbjbfw7161gyse', 'ZGRkM2RhMGYxYTFiNjk2NjE5OTIzYTRmNmQ5MGYxMzdlMTlmNjlkODp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdTVlMDJcdTU3M2FcdTkwZThcdTk1ZTg+XT5dIn0=', '2021-04-07 23:28:21.114005');
INSERT INTO `django_session` VALUES ('4c7q8j0tme2b5c0xsh96pjglqp6q5xgo', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 14:24:46.222900');
INSERT INTO `django_session` VALUES ('4ehuvsh9cut3dqwq3db7azcql8nsi676', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-08 00:21:09.432362');
INSERT INTO `django_session` VALUES ('4hnza0ffgol3bey7plfv9ms4t6vde02m', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:34.993056');
INSERT INTO `django_session` VALUES ('4ikb0yq6k9kdoa5glk9uv9endt7y4sd0', 'ZTFkY2M4MjlkOWIzZjNlNjQzMzZjOTkzZDY1MGE4ZjVhOGI4ZDE5NTp7Im1vZGVsX25hbWUiOiJcdTY0Y2RcdTRmNWNcdTY1ZTVcdTVmZDciLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU2NGNkXHU0ZjVjXHU2NWU1XHU1ZmQ3In0=', '2021-09-02 15:23:51.415134');
INSERT INTO `django_session` VALUES ('4nam8ooieh58p05c62j5sqxspy77rqnp', 'YmY0NTQ5ZmFhZWEwMGM1NzFiM2Y2YjNiMzUzYThmYmU5OWVlMDkyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy52YWRtaW4udXRpbHMuYmFja2VuZHMuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjNzNkMjZlMTBmZmY1OTMwMDQ2NzcwNDczZDA0MTRkZWMxNGE5NWYifQ==', '2021-04-11 21:12:28.989713');
INSERT INTO `django_session` VALUES ('52i97v9fqylbetr17udyg224dqnguvrb', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:12.614554');
INSERT INTO `django_session` VALUES ('52o8nhvat9mace2wsd6zgh1azp0kofjc', 'ZjllMmEyNGYyNWZmZmE2MTVkYzkxZjUyZjU5OTgwZWUzYzUxNWQxODp7Im1vZGVsX25hbWUiOiJwZXJpb2RpYyB0YXNrIiwicmVxdWVzdF9tc2ciOiJDdXN0b21Nb2RlbFZpZXdTZXRcdTY1ZTVcdTVmZDdcdTdjZmJcdTdlZGY6XHU3NTI4XHU2MjM3W3VzZXJuYW1lPWFkbWluXVx1NjdlNVx1OGJlMnBlcmlvZGljIHRhc2sifQ==', '2021-04-07 23:06:54.330591');
INSERT INTO `django_session` VALUES ('58xcjknmj9y8dajf2z870nnzsq1v01qx', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-08 00:58:44.768069');
INSERT INTO `django_session` VALUES ('59o0c14sb509nshdyg90uu6olawjzimb', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:41.434057');
INSERT INTO `django_session` VALUES ('5bc12tfj1vou2cgcjcmuwk3sacrq1gws', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:18:10.087854');
INSERT INTO `django_session` VALUES ('5epq8pdmib5b9w8i9sszeiw67cewutgr', 'OTA0ZTBhMWVlY2U1NmIxYThhZGU1NGQ4OWEzM2I2NDBjZjBiMjJiZTp7Im1vZGVsX25hbWUiOiJjcm9udGFiIiwicmVxdWVzdF9tc2ciOiJDdXN0b21Nb2RlbFZpZXdTZXRcdTY1ZTVcdTVmZDdcdTdjZmJcdTdlZGY6XHU3NTI4XHU2MjM3W3VzZXJuYW1lPWFkbWluXVx1NjdlNVx1OGJlMmNyb250YWIifQ==', '2021-04-08 00:00:00.115310');
INSERT INTO `django_session` VALUES ('5iunmsawluqcwoz2otv2khaxby0lpnur', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:15:11.882885');
INSERT INTO `django_session` VALUES ('5jm8p85u1ex9bnso6y50rwctrtzpaoo8', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:16:06.921093');
INSERT INTO `django_session` VALUES ('5m9ssaquwsgo1eqncompimeesp7b40ma', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:22:44.576029');
INSERT INTO `django_session` VALUES ('5n7s0mr6dau5daim6zead05ngzv9wuud', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-07 23:30:43.318005');
INSERT INTO `django_session` VALUES ('5su25t4epb4wavczpeq5cr8nu192qcvk', 'NDI1ZWUxMDc2ZjdlMWUyNTMxNTIwNjk4YWVmYjUzZGM4N2JkMzk2Yjp7Im1vZGVsX25hbWUiOiJcdTkwMWFcdTc3ZTVcdTUxNmNcdTU0NGEiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MDFhXHU3N2U1XHU1MTZjXHU1NDRhIn0=', '2021-09-02 02:11:29.453787');
INSERT INTO `django_session` VALUES ('5tfnhyqsask0980sj3nd4kykbid9pmcz', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:22:44.605687');
INSERT INTO `django_session` VALUES ('5vevoxy6hxbeiv7yr8k4gdy0wlfsytbe', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-09-03 16:50:52.505108');
INSERT INTO `django_session` VALUES ('5ws1kqf1qum1opttidex1jpfuv8zl0p9', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:49:58.554659');
INSERT INTO `django_session` VALUES ('5xjlzgiwe6b901cbdqkh5wvb29oxnfzp', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:39:43.783204');
INSERT INTO `django_session` VALUES ('66fnxemciy4qcdctiubj23nxb0wdw9ej', 'ZTFkY2M4MjlkOWIzZjNlNjQzMzZjOTkzZDY1MGE4ZjVhOGI4ZDE5NTp7Im1vZGVsX25hbWUiOiJcdTY0Y2RcdTRmNWNcdTY1ZTVcdTVmZDciLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU2NGNkXHU0ZjVjXHU2NWU1XHU1ZmQ3In0=', '2021-04-08 00:00:10.173941');
INSERT INTO `django_session` VALUES ('66k2cjcdx4uzrnvgsnfhk54hydhp478e', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 14:18:09.965843');
INSERT INTO `django_session` VALUES ('68jgdffkwllwdx1652lm27wlmyf66ohj', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:16.803584');
INSERT INTO `django_session` VALUES ('68y7w9jb81hgg45lla438lk9cv8k83ll', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:39:56.787071');
INSERT INTO `django_session` VALUES ('6b2px4h8cfii2b91ltrdvuaz9fakpvqt', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:16.795499');
INSERT INTO `django_session` VALUES ('6bxhtf0hvnlx2bojl0g3xgdjj55obtgl', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:07:30.270724');
INSERT INTO `django_session` VALUES ('6hcrbhqqmpottiywohc52v7ugwtcdx6n', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:24:02.434963');
INSERT INTO `django_session` VALUES ('6imcfl5rigmmcmeagjg81ikd94hh5k5s', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:34:03.202793');
INSERT INTO `django_session` VALUES ('6k51w03b6fxnopljaiwtwmv3c7wneb5e', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 22:02:43.256536');
INSERT INTO `django_session` VALUES ('6nkv3gtng3420iwuixwunpjd59blpetd', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-08 00:57:08.941728');
INSERT INTO `django_session` VALUES ('6zfztvvvsim93nxyyqif7ofckiuz1v0u', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 16:21:54.240827');
INSERT INTO `django_session` VALUES ('75mqeahzsb2whettoi9v2pm8k1516all', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:30:37.770979');
INSERT INTO `django_session` VALUES ('77zmbpgmlyxqev7kl6r8t4rjfz13ec4z', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-09-02 02:11:36.077659');
INSERT INTO `django_session` VALUES ('78gc3k492l25jslhha82iu7flf8jor0j', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:28:01.747823');
INSERT INTO `django_session` VALUES ('78i2isxle37ffkiaa8tqpvggca8cfudh', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:41:07.005980');
INSERT INTO `django_session` VALUES ('792i95r312uydyni866v1knztpbflha9', 'YmY0NTQ5ZmFhZWEwMGM1NzFiM2Y2YjNiMzUzYThmYmU5OWVlMDkyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy52YWRtaW4udXRpbHMuYmFja2VuZHMuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjNzNkMjZlMTBmZmY1OTMwMDQ2NzcwNDczZDA0MTRkZWMxNGE5NWYifQ==', '2021-04-11 14:01:55.674847');
INSERT INTO `django_session` VALUES ('7hubqpwmsvnrna01p4nt35l6eqeaj395', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:14.653147');
INSERT INTO `django_session` VALUES ('7n4jgwty7tlb63o6g69ngacrxjlmwgf4', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:21:19.082501');
INSERT INTO `django_session` VALUES ('7smkjmy0ighvra6c20i9dslf5i3ji39t', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-09-02 15:24:02.504512');
INSERT INTO `django_session` VALUES ('7x8csqw3cfavu7czdbjxetlnuk7dr1nq', 'NTc0YmUzNTJhM2UxZDAwOTA2Zjc0MjQ4MjNmYTAyMTY4MjRhNGNlZTp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdThkMjJcdTUyYTFcdTkwZThcdTk1ZTg+XT5dIn0=', '2021-04-07 23:28:29.109174');
INSERT INTO `django_session` VALUES ('83ve93a0foeakd8735ogwl1ajk47fy19', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:21.172108');
INSERT INTO `django_session` VALUES ('85edm833uoe0pphimm4y9k8k5v7w76z3', 'NjIwMmQ0OTdiNmU5NWZjM2QyMjI2NDNhYTBjMDljZTQzNmZlZWFhZDp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxNZW51OiBcdTc1MjhcdTYyMzdcdTVmM2FcdTkwMDA+XT5dIn0=', '2021-04-07 23:21:40.159580');
INSERT INTO `django_session` VALUES ('8aq4m60jtjlgryp37ke63bkxa4un7h1t', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:31:27.129712');
INSERT INTO `django_session` VALUES ('8s6qpors6z514geetf12d6ykv1fchveo', 'Mjg0ZDE4ZWJkZTZmN2JiMzZkOTNlZTQxY2UzMGQ1YWE1NTEzNzkyMDp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2OGMwXHU3ZDIyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2OltcdTdjZmJcdTdlZGZcdTc2ZDFcdTYzYTddIn0=', '2021-04-11 17:52:27.299638');
INSERT INTO `django_session` VALUES ('8v76dq1jlunqb0znveu22jh6t020h0jc', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:22:59.626593');
INSERT INTO `django_session` VALUES ('8v7fck2rh1o99tn8ttym7pjucwka61k0', 'OTA0ZTBhMWVlY2U1NmIxYThhZGU1NGQ4OWEzM2I2NDBjZjBiMjJiZTp7Im1vZGVsX25hbWUiOiJjcm9udGFiIiwicmVxdWVzdF9tc2ciOiJDdXN0b21Nb2RlbFZpZXdTZXRcdTY1ZTVcdTVmZDdcdTdjZmJcdTdlZGY6XHU3NTI4XHU2MjM3W3VzZXJuYW1lPWFkbWluXVx1NjdlNVx1OGJlMmNyb250YWIifQ==', '2021-04-07 23:33:49.758419');
INSERT INTO `django_session` VALUES ('8zg1j2393mmvq9i214bw1wtygi0vbgeh', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:50.324564');
INSERT INTO `django_session` VALUES ('91umcmm87wmvf4swvq9565vyxdb4mpyx', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:33:55.042450');
INSERT INTO `django_session` VALUES ('98szshkage89eqqd354i7g76e39ukpf7', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:20:24.614030');
INSERT INTO `django_session` VALUES ('99085wec04efd5v7g362talepa5eakgy', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:05.859232');
INSERT INTO `django_session` VALUES ('9i8qmamrd1bub34ztqkcsg4dlm77ol2i', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:52.488094');
INSERT INTO `django_session` VALUES ('9locxi4z7usjg85iq7dybg485kvrujcq', 'OTA0ZTBhMWVlY2U1NmIxYThhZGU1NGQ4OWEzM2I2NDBjZjBiMjJiZTp7Im1vZGVsX25hbWUiOiJjcm9udGFiIiwicmVxdWVzdF9tc2ciOiJDdXN0b21Nb2RlbFZpZXdTZXRcdTY1ZTVcdTVmZDdcdTdjZmJcdTdlZGY6XHU3NTI4XHU2MjM3W3VzZXJuYW1lPWFkbWluXVx1NjdlNVx1OGJlMmNyb250YWIifQ==', '2021-04-07 23:06:54.333586');
INSERT INTO `django_session` VALUES ('9qhzba1dr9u82pdq1i5wi5jld0ysx8l8', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:52:49.752261');
INSERT INTO `django_session` VALUES ('9sp3z91l5bz3c3azjz76bdnkri1g31d3', 'NTc0YmUzNTJhM2UxZDAwOTA2Zjc0MjQ4MjNmYTAyMTY4MjRhNGNlZTp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdThkMjJcdTUyYTFcdTkwZThcdTk1ZTg+XT5dIn0=', '2021-04-07 23:28:05.786264');
INSERT INTO `django_session` VALUES ('ad3dm8hv2em44223p7fxpwuxueuo484i', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 12:39:59.023594');
INSERT INTO `django_session` VALUES ('aetb6ve90oywlznbfekrzf5avqkuwkof', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 17:52:20.278107');
INSERT INTO `django_session` VALUES ('agan7c9in1vn59mkqa41gnnmgst6b17e', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 22:06:10.496830');
INSERT INTO `django_session` VALUES ('agjnond60l6dhww6po2nh2zlcqy8e2tz', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:06:39.651231');
INSERT INTO `django_session` VALUES ('aj10nb2516k2cmwc95kmn35dj7n4fh6b', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:20:37.187973');
INSERT INTO `django_session` VALUES ('ap4vslhscq4obf68dvdzn1mi8yxfr6gr', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 17:52:20.281108');
INSERT INTO `django_session` VALUES ('ax3rj7rx8oqb3kzk88zhih7hjeu5xx1c', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:18:39.423251');
INSERT INTO `django_session` VALUES ('bgrfk7u2bgp222gbyal3kpg2g2pd1pqs', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:50:57.706016');
INSERT INTO `django_session` VALUES ('blcqv1bq7pjj946itg0ot2arxf37impq', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-11 17:52:35.614776');
INSERT INTO `django_session` VALUES ('bmr5o7m7rn6gckryi6slq6c0kg4kuhzh', 'N2MxZDNlODgxMzBkNTI3YzVlOWFlNGQ2MTYxNzQ0YzlmODkwN2M0NTp7Im1vZGVsX25hbWUiOiJcdTUzYzJcdTY1NzBcdThiYmVcdTdmNmUiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1M2MyXHU2NTcwXHU4YmJlXHU3ZjZlIn0=', '2021-09-02 12:44:36.870449');
INSERT INTO `django_session` VALUES ('boq168z5h1ylrvz04kfpelj4u2tqr6yz', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:01.780094');
INSERT INTO `django_session` VALUES ('bph0rb95m0wid1p1t4l55eldznki92mz', 'ZGJkMzQ0OTA1YzkyNjJiNzg0MjRlZTQyY2FlOWUxMDlhODMwM2E2MDp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1YjU3XHU1MTc4XHU3YmExXHU3NDA2In0=', '2021-09-02 02:11:24.418465');
INSERT INTO `django_session` VALUES ('bvfgbew1k6z8918c4cxih3wsaxgogwub', 'YmFiYzYzMTg5OGI5NDRmZGIwOWU4Y2ZiZTZkY2UzMmQ0MTFhMzQyNDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdTZkZjFcdTU3MzNcdTUyMDZcdTUxNmNcdTUzZjg+XT5dIn0=', '2021-04-07 23:28:16.596125');
INSERT INTO `django_session` VALUES ('bwct3cdmfnw0tsdnjdpp3cadpz24qqa3', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:24:46.345909');
INSERT INTO `django_session` VALUES ('c3wewf9a2mxclrsirgsxyri1rhh3oi7t', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:23:53.757290');
INSERT INTO `django_session` VALUES ('c5x9qnkg68uesku3d2048w5a3s0f9k8y', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 12:44:45.655905');
INSERT INTO `django_session` VALUES ('c9baz4lt13wotwzs2dnizvutuhu0maz4', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:10.810314');
INSERT INTO `django_session` VALUES ('cjumevfwtmxp6ip9vu666ugj5wk4kdv6', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-08 00:00:13.392436');
INSERT INTO `django_session` VALUES ('co4wld6ogpmhla6t16bcnoygnpiziriq', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:18:17.033486');
INSERT INTO `django_session` VALUES ('d1t2k9nyfurfvhv13jvnc4f3ii0sn1jh', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-11 17:52:31.396454');
INSERT INTO `django_session` VALUES ('d2344iqx9wetbp3a73xr3ancs04dbqt5', 'MDVkOTQ0YTY1NGQxZTUwMDY5Zjg1Yjc0MWFkNjViMmQwY2Y3MjdiNzp7fQ==', '2021-09-02 02:09:36.844732');
INSERT INTO `django_session` VALUES ('d2iyr63xx2udtfuccbcinb4424mr449b', 'NWNjOGZjNDYyMjg0ODE5MzI2NWQ0YjI5MmZlZGNmMGRmNWRiOGNkMjp7Im1vZGVsX25hbWUiOiJcdTY1ODdcdTRlZjZcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU2NTg3XHU0ZWY2XHU3YmExXHU3NDA2In0=', '2021-04-07 23:33:59.196043');
INSERT INTO `django_session` VALUES ('d3uwsxn0mskwwnqjq74po4mgiswpmrvi', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:34:03.198793');
INSERT INTO `django_session` VALUES ('d5hl49n6j602lmrszqfk9ui1vcutwgn2', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 17:52:34.895720');
INSERT INTO `django_session` VALUES ('d82ejzk5r3t6zhe1zvww679efv4hb9vs', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:20:34.554194');
INSERT INTO `django_session` VALUES ('de2jzaxtaphuxov4hvi9xianhlsccug2', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-08 00:57:09.075806');
INSERT INTO `django_session` VALUES ('denjofbd9kxxqwrrlsc10ic7x7ai9j77', 'ZmI4N2RmYjNiNzJiYTBiZmU0MjRlMGIxMzQ0MTFhODQ4Y2ViZTE3Yjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdTRlMGFcdTZkNzdcdTUyMDZcdTUxNmNcdTUzZjg+XT5dIn0=', '2021-04-07 23:28:23.430274');
INSERT INTO `django_session` VALUES ('di5zk141doo2p1vqy05hhfjvpk1y9s5j', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-08 00:57:08.914700');
INSERT INTO `django_session` VALUES ('dnocledkpk4hu96v5mxw4kuis9jj3ylx', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:15:01.762009');
INSERT INTO `django_session` VALUES ('dr2abo8396miw5e7h3fgwui875ut83k5', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 17:52:34.861715');
INSERT INTO `django_session` VALUES ('dwohdf7fwul94hwri4cslea0rhvzamr7', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:41.436057');
INSERT INTO `django_session` VALUES ('e5i0ivr0znvfsaygimo0omxm01i62gux', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:24.414963');
INSERT INTO `django_session` VALUES ('ejmlzzb8krffshk1q6pehskv5rhz30ii', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:20:39.418127');
INSERT INTO `django_session` VALUES ('ejnkv1bkroycvs1b3fil1vu3g9an37us', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:23:41.610624');
INSERT INTO `django_session` VALUES ('el96rmj9md8be1z1apemd693j30gxa1f', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:21:23.681952');
INSERT INTO `django_session` VALUES ('elnq30f10opujg9y204380h87816s7fc', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:06:40.967336');
INSERT INTO `django_session` VALUES ('eogy8x41ub0r5g3p2cf64f7uklk58qsl', 'YmY0NTQ5ZmFhZWEwMGM1NzFiM2Y2YjNiMzUzYThmYmU5OWVlMDkyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy52YWRtaW4udXRpbHMuYmFja2VuZHMuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjNzNkMjZlMTBmZmY1OTMwMDQ2NzcwNDczZDA0MTRkZWMxNGE5NWYifQ==', '2021-09-03 16:48:57.366623');
INSERT INTO `django_session` VALUES ('ep9qcmvmeqcysatlgnwz7gtwh99uwt4u', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 16:20:33.137723');
INSERT INTO `django_session` VALUES ('eqeidocicz2utfo9z4wqfhok01wyd4ba', 'MjNjMDMzN2YxY2IwMjJkOGZhZWFmMTBjNWEwZjIzMzg5YjFkZDI5ZDp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYifQ==', '2021-04-08 00:58:18.564581');
INSERT INTO `django_session` VALUES ('exq8a1h43lsj8u8azljug3ey8vn231h1', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:36:58.750160');
INSERT INTO `django_session` VALUES ('f12nf768kddp961i2i8lhfdnvejoa02c', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 12:40:13.188424');
INSERT INTO `django_session` VALUES ('f6mg4j2mpih46w2vw1ezfueyz7wm6ic8', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:30:17.007130');
INSERT INTO `django_session` VALUES ('f7cqixa7fklgerk5fb8i1t4aeu10nd5v', 'YmY0NTQ5ZmFhZWEwMGM1NzFiM2Y2YjNiMzUzYThmYmU5OWVlMDkyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy52YWRtaW4udXRpbHMuYmFja2VuZHMuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjNzNkMjZlMTBmZmY1OTMwMDQ2NzcwNDczZDA0MTRkZWMxNGE5NWYifQ==', '2021-04-07 23:19:55.042395');
INSERT INTO `django_session` VALUES ('f7ijxydyh9oil7edbqe7jdnmdwriwif2', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:10.387518');
INSERT INTO `django_session` VALUES ('f9m3w1dy6puklgz391sfldui58xkvdog', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:49:41.028767');
INSERT INTO `django_session` VALUES ('fbh5vk7logjhnf7g9xmajncq77wy8gdi', 'YjMwNzQwYjg4NTZjNmFkMzBmYzNmZTMyZWYzZTlkM2YxMjliZDBhOTp7Im1vZGVsX25hbWUiOiJpbnRlcnZhbCIsInJlcXVlc3RfbXNnIjoiQ3VzdG9tTW9kZWxWaWV3U2V0XHU2NWU1XHU1ZmQ3XHU3Y2ZiXHU3ZWRmOlx1NzUyOFx1NjIzN1t1c2VybmFtZT1hZG1pbl1cdTY3ZTVcdThiZTJpbnRlcnZhbCJ9', '2021-04-07 23:06:54.329602');
INSERT INTO `django_session` VALUES ('fgrza1hayh8otzz9rebcetym7jz8tchr', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 14:07:30.196720');
INSERT INTO `django_session` VALUES ('fo5pnw6mf3yqewxyp4jirpler4ghhfo1', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 14:07:30.248723');
INSERT INTO `django_session` VALUES ('fxoq88p93wzah6s4etmewog8vwolw06s', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:21:19.088501');
INSERT INTO `django_session` VALUES ('fyg7my349x5pxrckuu5dk3iqy0jf8xb2', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-08 00:57:56.385442');
INSERT INTO `django_session` VALUES ('g0vw3r3u6yy506uk24nqcctc3k0hh6mj', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:29.450285');
INSERT INTO `django_session` VALUES ('g2onszn6y5oyr5g9jsq2hiwflvcyv9mi', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:16.655132');
INSERT INTO `django_session` VALUES ('g38176e84lyo7buk8eze9msvw0d2d75d', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:50:41.795404');
INSERT INTO `django_session` VALUES ('g7ax0i5oed4cutbq2hmasfzhrywvoyid', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:23:59.701606');
INSERT INTO `django_session` VALUES ('g9j03otpbg19038volro5m6gbb6ej7zw', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:29.452786');
INSERT INTO `django_session` VALUES ('gffaoz28wqjuxda5dghnbbvehu7tgk8r', 'NDI1ZWUxMDc2ZjdlMWUyNTMxNTIwNjk4YWVmYjUzZGM4N2JkMzk2Yjp7Im1vZGVsX25hbWUiOiJcdTkwMWFcdTc3ZTVcdTUxNmNcdTU0NGEiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MDFhXHU3N2U1XHU1MTZjXHU1NDRhIn0=', '2021-09-02 16:21:57.930022');
INSERT INTO `django_session` VALUES ('gz5qe33lrbmeoy3r88t70lp62j7ujhn2', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 15:53:08.269273');
INSERT INTO `django_session` VALUES ('gzwutqd86i1efnugqr98i40gp619a13q', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-11 14:07:30.467736');
INSERT INTO `django_session` VALUES ('h0v3tvg2ic8rfmjszho34ge9lqzvv4q4', 'MjNjMDMzN2YxY2IwMjJkOGZhZWFmMTBjNWEwZjIzMzg5YjFkZDI5ZDp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYifQ==', '2021-04-08 00:57:38.676094');
INSERT INTO `django_session` VALUES ('h61eol75597q9ee1080ggnqcoondfchy', 'MzAwZmI0MWU3Y2Y0NTJjZDg0YTlkYjhiN2QxYWM2ODVhN2Y2MmY1Yjp7Im1vZGVsX25hbWUiOiJcdTg5ZDJcdTgyNzJcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4OWQyXHU4MjcyXHU3YmExXHU3NDA2In0=', '2021-09-03 16:50:50.333069');
INSERT INTO `django_session` VALUES ('hceny1uwwtocddww8ddlqc9c2f3ule0y', 'MzFhOTQ0ZTQ1OWRlNzU1M2ViMjdmOWEzZmQzODk1OTIxNjRmYjM2ZDp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2OGMwXHU3ZDIyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2OltcdTVjOTdcdTRmNGRcdTdiYTFcdTc0MDZdIn0=', '2021-04-07 23:30:34.901952');
INSERT INTO `django_session` VALUES ('hd10urkk0g7nb4woszh1agp15cvybcpz', 'ZGRkM2RhMGYxYTFiNjk2NjE5OTIzYTRmNmQ5MGYxMzdlMTlmNjlkODp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdTVlMDJcdTU3M2FcdTkwZThcdTk1ZTg+XT5dIn0=', '2021-04-07 23:28:08.548232');
INSERT INTO `django_session` VALUES ('hhqhctmkkhhgb0dy28oxzdoi5u464y2i', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 16:21:57.930523');
INSERT INTO `django_session` VALUES ('hi75cg5aq2jrbu89ktvdd8qj0phjq2h9', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:49:35.529357');
INSERT INTO `django_session` VALUES ('hnrdgzqdmwu4pzqvj1j8vsmsctc027ma', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:23:41.612628');
INSERT INTO `django_session` VALUES ('hogd9pjhew2hbc7n12xk6p5gv4764vhx', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:35.823684');
INSERT INTO `django_session` VALUES ('hro7qvu0jhktpc3cgb58978m8y54yqcr', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:16:19.872682');
INSERT INTO `django_session` VALUES ('ht6tq332d3ickyn1oi3zodp3fvrdjuqh', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:20:31.758796');
INSERT INTO `django_session` VALUES ('i459fm84mcbfqp8nllb9ujom7soo2480', 'YjY1ZGJmZDcyYWEwYThkMTkzNjU0ZWZmNWQwMzliZTk0MWQxNzY0ODp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 21:47:30.200747');
INSERT INTO `django_session` VALUES ('ifvxyed3fn6dw1paljpyns4t4c3ok4xf', 'YTg2NzU0YTI5ZDhhMWM3YWMzNTE0ZjVlZmE4ZWM3MzUyMGZkYjFiMTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxNZW51OiBcdTU3MjhcdTdlYmZcdTc1MjhcdTYyMzc+XT5dIn0=', '2021-04-07 23:21:48.026439');
INSERT INTO `django_session` VALUES ('iyu3olaelxw371kxjh80effnmj39f3oi', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 16:15:31.158948');
INSERT INTO `django_session` VALUES ('j0v4my2vw9nyy3fzmciwpfgm6glymtia', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:21:43.359189');
INSERT INTO `django_session` VALUES ('j0vl3mfziqaxrbzarya6h09i5lzam88q', 'ZjllMmEyNGYyNWZmZmE2MTVkYzkxZjUyZjU5OTgwZWUzYzUxNWQxODp7Im1vZGVsX25hbWUiOiJwZXJpb2RpYyB0YXNrIiwicmVxdWVzdF9tc2ciOiJDdXN0b21Nb2RlbFZpZXdTZXRcdTY1ZTVcdTVmZDdcdTdjZmJcdTdlZGY6XHU3NTI4XHU2MjM3W3VzZXJuYW1lPWFkbWluXVx1NjdlNVx1OGJlMnBlcmlvZGljIHRhc2sifQ==', '2021-04-07 23:33:49.754527');
INSERT INTO `django_session` VALUES ('j9jc7uspvbotkluxhex0y4w7ypk5ecar', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:16.787494');
INSERT INTO `django_session` VALUES ('j9xxgop48g2gneywkmpgdow9tue0n7lo', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:50:31.568797');
INSERT INTO `django_session` VALUES ('jbkbwbw5uekt2jkzxik4xzramhwhgoky', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-09-02 15:23:53.970941');
INSERT INTO `django_session` VALUES ('jc9c3jl4qu41c03v660b52rhwu7gk6up', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:08.626234');
INSERT INTO `django_session` VALUES ('jr0ya0si2t1io84lm4cpx31u5a9ixfnd', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:35.803670');
INSERT INTO `django_session` VALUES ('jysc8nnyjb9w6wgi5x70mlirsq28t2fl', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 02:11:17.223012');
INSERT INTO `django_session` VALUES ('k0l1w4rwp12tcu9kcl5bagjxcjq45wi9', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:26.142535');
INSERT INTO `django_session` VALUES ('k5zu9j0dfvam933bbyxdurefnkeo1e5w', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:11:04.511867');
INSERT INTO `django_session` VALUES ('k68sua2up5kluef287yau1tm5nqn8tgr', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-08 00:00:13.393436');
INSERT INTO `django_session` VALUES ('k9iag140t917rtgbln48dua9wy4a5zq7', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:12:30.005792');
INSERT INTO `django_session` VALUES ('kap37pwmh2wcku9t5e4uou2tyd2o4ppw', 'MzAwZmI0MWU3Y2Y0NTJjZDg0YTlkYjhiN2QxYWM2ODVhN2Y2MmY1Yjp7Im1vZGVsX25hbWUiOiJcdTg5ZDJcdTgyNzJcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4OWQyXHU4MjcyXHU3YmExXHU3NDA2In0=', '2021-04-07 23:06:37.947130');
INSERT INTO `django_session` VALUES ('kaztaxv4qz3wdo7pqau0oo8gztxap4d5', 'ZjllMmEyNGYyNWZmZmE2MTVkYzkxZjUyZjU5OTgwZWUzYzUxNWQxODp7Im1vZGVsX25hbWUiOiJwZXJpb2RpYyB0YXNrIiwicmVxdWVzdF9tc2ciOiJDdXN0b21Nb2RlbFZpZXdTZXRcdTY1ZTVcdTVmZDdcdTdjZmJcdTdlZGY6XHU3NTI4XHU2MjM3W3VzZXJuYW1lPWFkbWluXVx1NjdlNVx1OGJlMnBlcmlvZGljIHRhc2sifQ==', '2021-04-08 00:00:00.115310');
INSERT INTO `django_session` VALUES ('kc4mtyunse3cr7arxl4c283n7z80b4ys', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:43.291662');
INSERT INTO `django_session` VALUES ('kcdze035rf86vdryji8pdjgdxdacxmg9', 'NWNjOGZjNDYyMjg0ODE5MzI2NWQ0YjI5MmZlZGNmMGRmNWRiOGNkMjp7Im1vZGVsX25hbWUiOiJcdTY1ODdcdTRlZjZcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU2NTg3XHU0ZWY2XHU3YmExXHU3NDA2In0=', '2021-09-02 12:44:38.518373');
INSERT INTO `django_session` VALUES ('kdafbop5lcj5nnome31bppy1hzcstckf', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:15:07.531560');
INSERT INTO `django_session` VALUES ('kjjpgt1j2oexmtfwj3aby5f3bf0pbcrw', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:50:01.169513');
INSERT INTO `django_session` VALUES ('ksm6dpphnftu9fsmeonusdbuuygmafqh', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:11:56.467652');
INSERT INTO `django_session` VALUES ('kvtm81tuhz6bmpjfzu0hqgr1cjbmrryz', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-07 23:30:43.301230');
INSERT INTO `django_session` VALUES ('kvwaesrxz86z3gprx1vqf9csplud4qi0', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:26.139533');
INSERT INTO `django_session` VALUES ('l0anhtqt7x0po6mrpyltwjz14mqmz7qb', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 17:52:20.282110');
INSERT INTO `django_session` VALUES ('l1vx0ap5h3v4v3m0j2hidxyjq9gp0efr', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 12:44:36.870449');
INSERT INTO `django_session` VALUES ('l563htx6t0l4kz4rf2n9cj4i17cwygsc', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:35.841698');
INSERT INTO `django_session` VALUES ('lapqoxq17gg07kimvhp209wep1w4obc3', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:11:24.629507');
INSERT INTO `django_session` VALUES ('lmi9fm37jbsdkff169bgo5qeo2w66bhb', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-07 23:29:50.470470');
INSERT INTO `django_session` VALUES ('lor6fg4x2nwxr2e5wre5nejcc8msbima', 'YmY0NTQ5ZmFhZWEwMGM1NzFiM2Y2YjNiMzUzYThmYmU5OWVlMDkyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy52YWRtaW4udXRpbHMuYmFja2VuZHMuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjNzNkMjZlMTBmZmY1OTMwMDQ2NzcwNDczZDA0MTRkZWMxNGE5NWYifQ==', '2021-04-11 17:11:03.064754');
INSERT INTO `django_session` VALUES ('lso1d28a4cuyufoi8vmpby9i5zha9bg5', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:29:39.297549');
INSERT INTO `django_session` VALUES ('lszmca5n31sfickac45i3r1ho1d365qn', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:38.828281');
INSERT INTO `django_session` VALUES ('lwvzhvumlkshgn76ni32v35xqyg7ow1e', 'N2MxZDNlODgxMzBkNTI3YzVlOWFlNGQ2MTYxNzQ0YzlmODkwN2M0NTp7Im1vZGVsX25hbWUiOiJcdTUzYzJcdTY1NzBcdThiYmVcdTdmNmUiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1M2MyXHU2NTcwXHU4YmJlXHU3ZjZlIn0=', '2021-09-02 16:21:54.237826');
INSERT INTO `django_session` VALUES ('lytfyoa36n02ijsfw2hocwuwkshhqh3t', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:41.451058');
INSERT INTO `django_session` VALUES ('m0tasdr0lp76lnvgxqug3lxi2xsr145k', 'YjY1ZGJmZDcyYWEwYThkMTkzNjU0ZWZmNWQwMzliZTk0MWQxNzY0ODp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 22:02:43.274533');
INSERT INTO `django_session` VALUES ('m3x6txdaz00z6i3yj5yslw2ssl1xuo1f', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 17:52:34.872719');
INSERT INTO `django_session` VALUES ('m86xs767w2l5wzzhgazf7ncf23hl55po', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:15:15.713391');
INSERT INTO `django_session` VALUES ('m8dpnxetbvb51n5f0ncswca4spjjlmy3', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:06:39.686219');
INSERT INTO `django_session` VALUES ('ma34e3o72e9aj14ow1ak5y6xjidrb88z', 'ZThlMTU4Y2Q2NzM2MzNmMGM1YTBhMmRlYTIzYmJiM2UxM2M0NTk1Nzp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2NmY0XHU2NWIwXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2OltcdTdjZmJcdTdlZGZcdTc2ZDFcdTYzYTddIn0=', '2021-04-11 17:52:30.513389');
INSERT INTO `django_session` VALUES ('map87no9xa8fhp62ce589pt9pwfnhnv1', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-08 00:21:09.499694');
INSERT INTO `django_session` VALUES ('mno3q53cq75wgyo470uvgxlhpjuks464', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:35.840696');
INSERT INTO `django_session` VALUES ('mrhvr61so9679mb7li4nna2geldk5uyh', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-08 00:57:38.618233');
INSERT INTO `django_session` VALUES ('mrzkwcygl76qul0xwd08tefu883dxdyy', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-09-03 16:50:52.544634');
INSERT INTO `django_session` VALUES ('msvzgytsay8y6zfz6flxya0nrjrimuw6', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 14:24:46.195900');
INSERT INTO `django_session` VALUES ('my3qlfck3qytv5kqs4kc9btr142dv4q1', 'YmY0NTQ5ZmFhZWEwMGM1NzFiM2Y2YjNiMzUzYThmYmU5OWVlMDkyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy52YWRtaW4udXRpbHMuYmFja2VuZHMuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjNzNkMjZlMTBmZmY1OTMwMDQ2NzcwNDczZDA0MTRkZWMxNGE5NWYifQ==', '2021-09-03 16:31:26.144014');
INSERT INTO `django_session` VALUES ('myf0bmy6na7alcu07m61yibyb92e4c5i', 'YmY0NTQ5ZmFhZWEwMGM1NzFiM2Y2YjNiMzUzYThmYmU5OWVlMDkyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy52YWRtaW4udXRpbHMuYmFja2VuZHMuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImNjNzNkMjZlMTBmZmY1OTMwMDQ2NzcwNDczZDA0MTRkZWMxNGE5NWYifQ==', '2021-09-02 02:11:16.231605');
INSERT INTO `django_session` VALUES ('ng1ukmedu6ni0bm4u3d5fwqdunryhp22', 'YzgwNDk2YzJkZTAyMDI5MDRkMGQ5MTVkNzU2M2Q5NmRmNzAwMjc0OTp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjFiXHU1ZWZhXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2Olt0ZXN0MShcdTZkNGJcdThiZDVcdTc1MjhcdTYyMzcxKV0ifQ==', '2021-04-08 00:56:18.980681');
INSERT INTO `django_session` VALUES ('nmd274w5ketr1h8u4mc2jl0iul52gt4d', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-11 17:52:27.865189');
INSERT INTO `django_session` VALUES ('nnoy47u6w0fi2p72earu8s068nbxha9m', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-02 16:18:37.241458');
INSERT INTO `django_session` VALUES ('nnzsr3t4lj6v8gkj587ibnc0nw3su31l', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-09-02 15:24:02.456479');
INSERT INTO `django_session` VALUES ('nomxxpkwt11dqj3cx2l7nx8j380j9bff', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-11 14:24:46.439917');
INSERT INTO `django_session` VALUES ('nwjjqfeho0iehcrusrl6uaiu4xz823x3', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-07 23:28:50.682433');
INSERT INTO `django_session` VALUES ('nws5kyp8jtpbyj7h9xi8q5j6hwnjnzek', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:36:37.147098');
INSERT INTO `django_session` VALUES ('nwwomk8p56146mezijhytnn9x0oewmn7', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 12:44:42.293865');
INSERT INTO `django_session` VALUES ('o1usuokqznfb879r9hun2dw45wwy7au8', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:29.156062');
INSERT INTO `django_session` VALUES ('o274ick2oztxvf2npbahqcsj0f9g2735', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-08 00:58:44.924247');
INSERT INTO `django_session` VALUES ('o7d6wwsgoc3ssee2qpvpvuhkubzpkand', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-11 17:52:20.988168');
INSERT INTO `django_session` VALUES ('o7ltli943bi0cue5mrebr43lcd1qunfe', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:06:37.941131');
INSERT INTO `django_session` VALUES ('oc63k6kx4vpvegldhvfs6vrgrc006yvb', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:42.677028');
INSERT INTO `django_session` VALUES ('ocxykht6fev2bf3c3jm7kbp40vzidg63', 'NWNjOGZjNDYyMjg0ODE5MzI2NWQ0YjI5MmZlZGNmMGRmNWRiOGNkMjp7Im1vZGVsX25hbWUiOiJcdTY1ODdcdTRlZjZcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU2NTg3XHU0ZWY2XHU3YmExXHU3NDA2In0=', '2021-09-03 16:50:36.321506');
INSERT INTO `django_session` VALUES ('oe08ntfyerap9zmj16i9mlt7t2263bpu', 'YjMwNzQwYjg4NTZjNmFkMzBmYzNmZTMyZWYzZTlkM2YxMjliZDBhOTp7Im1vZGVsX25hbWUiOiJpbnRlcnZhbCIsInJlcXVlc3RfbXNnIjoiQ3VzdG9tTW9kZWxWaWV3U2V0XHU2NWU1XHU1ZmQ3XHU3Y2ZiXHU3ZWRmOlx1NzUyOFx1NjIzN1t1c2VybmFtZT1hZG1pbl1cdTY3ZTVcdThiZTJpbnRlcnZhbCJ9', '2021-04-07 23:33:49.756417');
INSERT INTO `django_session` VALUES ('ofeorbuxe1pc7e8q50bkx4j5jvn4o3ro', 'YjMwNzQwYjg4NTZjNmFkMzBmYzNmZTMyZWYzZTlkM2YxMjliZDBhOTp7Im1vZGVsX25hbWUiOiJpbnRlcnZhbCIsInJlcXVlc3RfbXNnIjoiQ3VzdG9tTW9kZWxWaWV3U2V0XHU2NWU1XHU1ZmQ3XHU3Y2ZiXHU3ZWRmOlx1NzUyOFx1NjIzN1t1c2VybmFtZT1hZG1pbl1cdTY3ZTVcdThiZTJpbnRlcnZhbCJ9', '2021-04-08 00:00:00.115310');
INSERT INTO `django_session` VALUES ('oksafz0bstflmtawxve7vdafr3uzrrst', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:11:14.887651');
INSERT INTO `django_session` VALUES ('olj3kz3yo8g2dwhy552b2tqg3um39izv', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 18:00:50.064877');
INSERT INTO `django_session` VALUES ('oslb0v1no3egm12qyzbn57fdpphkp6yp', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:22:44.562928');
INSERT INTO `django_session` VALUES ('otneg1q5qerh562kxrchn692lkmrjxb4', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:23:53.757290');
INSERT INTO `django_session` VALUES ('otzbov68ha1rv2lrdnpink6ud59gnz82', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:54:37.423521');
INSERT INTO `django_session` VALUES ('oueie478rttrgg6ygtmhpdaq6nki2277', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:25:33.477382');
INSERT INTO `django_session` VALUES ('oxiyl3oj4a2dscszkz51tjlvge1byruh', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:27:05.530130');
INSERT INTO `django_session` VALUES ('p3iw938fg42vlmj5v3ilwbfiquezsfvf', 'MzAwZmI0MWU3Y2Y0NTJjZDg0YTlkYjhiN2QxYWM2ODVhN2Y2MmY1Yjp7Im1vZGVsX25hbWUiOiJcdTg5ZDJcdTgyNzJcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4OWQyXHU4MjcyXHU3YmExXHU3NDA2In0=', '2021-09-02 02:11:34.367518');
INSERT INTO `django_session` VALUES ('p7mj556c8nateewq56u166mmmff2vzs9', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:16.804583');
INSERT INTO `django_session` VALUES ('p9ou3oeq8lddkn1uihxedlze0450okt5', 'YjY1ZGJmZDcyYWEwYThkMTkzNjU0ZWZmNWQwMzliZTk0MWQxNzY0ODp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 21:47:03.496404');
INSERT INTO `django_session` VALUES ('pkvlbjn585k6cr030hnvtkimwxzwuj2o', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:30:35.091981');
INSERT INTO `django_session` VALUES ('pucvcykl19vrhovx9opd94cuqy4mxec1', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 22:04:32.476184');
INSERT INTO `django_session` VALUES ('px7p544kjwo08b1z7a8b2nlnw9zcgfy2', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-08 00:21:09.445364');
INSERT INTO `django_session` VALUES ('q4409n7p1zni00zqgekzs8bwcm4l22bg', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:38.831784');
INSERT INTO `django_session` VALUES ('q80punk7evloq0obhmgyivm6vllws67i', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-09-02 02:36:58.764172');
INSERT INTO `django_session` VALUES ('qaygdwe7mcstip9i4ewdlorldr2t8r8z', 'MjA4MDRkNmNmMzMyZGM2MmM3ODQ0YTIyNmQ2NGFiNDA0NDdlYmI2Yjp7Im1vZGVsX25hbWUiOiIifQ==', '2021-09-03 16:31:16.853399');
INSERT INTO `django_session` VALUES ('qcrs9osv45gvnnwnvnt7clxgafg03ew8', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-07 23:22:59.673685');
INSERT INTO `django_session` VALUES ('qjbdkksqn0s9myecvyim3pc0xaxmliuo', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:22:44.802426');
INSERT INTO `django_session` VALUES ('qle89stt4euo17v2mox0cet7l4g9eon2', 'MjIxNzAwYTc5ZDlkMTM3NjgxYjkyOGM3ZTI4N2IxYjQ3ZWQ3MzI2NTp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdThmZDBcdTdlZjRcdTkwZThcdTk1ZTg+XT5dIn0=', '2021-04-07 23:28:26.968922');
INSERT INTO `django_session` VALUES ('qnt89h75rn4exwjjtgewxov65y1ob0e5', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 12:44:45.655405');
INSERT INTO `django_session` VALUES ('qukbqxsg04xa2dpspda759qpzn1rqo5k', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:29:01.270737');
INSERT INTO `django_session` VALUES ('r2cup5reu66vnq9a5ppx4ig44m5l2cgc', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-09-03 16:50:42.899686');
INSERT INTO `django_session` VALUES ('r2qphbmauusdno3rau2oguwzzl5awjy4', 'ZGJkMzQ0OTA1YzkyNjJiNzg0MjRlZTQyY2FlOWUxMDlhODMwM2E2MDp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1YjU3XHU1MTc4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:33:55.058462');
INSERT INTO `django_session` VALUES ('r9x66t350srbgcmr6ixqi59lwpbwy9eg', 'MzAwZmI0MWU3Y2Y0NTJjZDg0YTlkYjhiN2QxYWM2ODVhN2Y2MmY1Yjp7Im1vZGVsX25hbWUiOiJcdTg5ZDJcdTgyNzJcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4OWQyXHU4MjcyXHU3YmExXHU3NDA2In0=', '2021-09-02 15:23:59.718118');
INSERT INTO `django_session` VALUES ('rcir9jxg5ae6nmvaintwjs2c4qqx3t0k', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 14:11:24.617501');
INSERT INTO `django_session` VALUES ('rfz7cw7s0uckl6b0vnk137void167al4', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:51:51.625046');
INSERT INTO `django_session` VALUES ('rnl0c4nbg26fnct4npdx7lzdqtlvn0qo', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:23:38.313121');
INSERT INTO `django_session` VALUES ('romn7sc4q9ln1c58z44085i8bsf3ooq6', 'NDI1ZWUxMDc2ZjdlMWUyNTMxNTIwNjk4YWVmYjUzZGM4N2JkMzk2Yjp7Im1vZGVsX25hbWUiOiJcdTkwMWFcdTc3ZTVcdTUxNmNcdTU0NGEiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MDFhXHU3N2U1XHU1MTZjXHU1NDRhIn0=', '2021-04-07 23:34:03.207704');
INSERT INTO `django_session` VALUES ('rthorkql7jy1f2x0nenlkae6rllx67xk', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:54:01.589936');
INSERT INTO `django_session` VALUES ('rvakcv9yqrmicxts1ud8cyxbhssquz4i', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-08 00:55:42.515621');
INSERT INTO `django_session` VALUES ('rwfu47ppkustpdmdjuw1lrsq7i5bmx9b', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 18:01:36.541446');
INSERT INTO `django_session` VALUES ('s5bith7vk4xa0ec9ypqfw72ogmj7htfg', 'YmUyZWRkOWMzYWJjYzg3NGRmOTMzMDEzNjkxNjJiYTJkYmRlZWMwOTp7Im1vZGVsX25hbWUiOiJcdTc2N2JcdTVmNTVcdTY1ZTVcdTVmZDciLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NjdiXHU1ZjU1XHU2NWU1XHU1ZmQ3In0=', '2021-09-02 02:11:32.222065');
INSERT INTO `django_session` VALUES ('s606nfxgkgccqxx5zmh5ccz87plugkv8', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:21:19.098502');
INSERT INTO `django_session` VALUES ('sdv0q6o17yy9e9kadc6chhfq9fvwkxh0', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 17:52:34.852717');
INSERT INTO `django_session` VALUES ('sdwg9anbyk5sl06gfaqew3ay45l6owse', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:58:53.703600');
INSERT INTO `django_session` VALUES ('sil3wxous40y3vvesky7ar9jh8b6dsu0', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:42.686035');
INSERT INTO `django_session` VALUES ('sj2fcvj55rle2fbhwvllv33z3pbzt0yg', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:06:41.010286');
INSERT INTO `django_session` VALUES ('sl4f2gbid5p1y5f4bj3sewzdmtb9oum8', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:33:57.638544');
INSERT INTO `django_session` VALUES ('svrkt3lcs85g0c4s25mxb8qb0a9hfhsw', 'ZGJkMzQ0OTA1YzkyNjJiNzg0MjRlZTQyY2FlOWUxMDlhODMwM2E2MDp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1YjU3XHU1MTc4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:50:34.992557');
INSERT INTO `django_session` VALUES ('szpjluyq6hgt3tcoi79nnzspxg7ufnk2', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:07:14.061041');
INSERT INTO `django_session` VALUES ('t1ms5ahq2butl52y3iev72lfem12a3g8', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:30:41.450057');
INSERT INTO `django_session` VALUES ('t64qa3k143z0gt6rytb44dmilbcms2cs', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-03 16:50:42.688036');
INSERT INTO `django_session` VALUES ('t9gvqo3zj1zne4qg7nnwxb1547htiazx', 'ZGRkM2RhMGYxYTFiNjk2NjE5OTIzYTRmNmQ5MGYxMzdlMTlmNjlkODp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdTVlMDJcdTU3M2FcdTkwZThcdTk1ZTg+XT5dIn0=', '2021-04-07 23:28:14.591715');
INSERT INTO `django_session` VALUES ('ta43g0veay11pizo9lcx8frib21vrx1t', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 14:35:24.737337');
INSERT INTO `django_session` VALUES ('tc3bati3218huby35r1pidfk0g2cd5of', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:57:17.602239');
INSERT INTO `django_session` VALUES ('tc6ob7hk6h86rsmf77kxhg33cv6w1e0z', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:12:26.734438');
INSERT INTO `django_session` VALUES ('td0uiyavk0xcs3ck7t2e1ysr0p2ykw53', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:30:41.695063');
INSERT INTO `django_session` VALUES ('tpv178n3nd717dakyhj6tw5fnhrsqtqm', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:14:52.012257');
INSERT INTO `django_session` VALUES ('tqk5ythul9iazhpqka9qpkrytdzrfbe6', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:06:39.665217');
INSERT INTO `django_session` VALUES ('tvoq07utjn1gedcy0w942l83g0emvg1a', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:47:30.196746');
INSERT INTO `django_session` VALUES ('twhuattof6dknfuqwoqddng1anyoiue7', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:33:57.634548');
INSERT INTO `django_session` VALUES ('twlc7wzyxurgbgn4t7jzocupglr685sf', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:22:40.005516');
INSERT INTO `django_session` VALUES ('twxp1nd3wxvircezswo31imhxcu55wk0', 'MjNjMDMzN2YxY2IwMjJkOGZhZWFmMTBjNWEwZjIzMzg5YjFkZDI5ZDp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYifQ==', '2021-04-08 00:57:18.035747');
INSERT INTO `django_session` VALUES ('txf0bel9p8oefkmng52icelhsr1l3lns', 'Zjg0YzhmNTlhNDhiNTAwZGMyMGIxOWJlYTE3YzUyNTViZWM3ZTQ5Mjp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxNZW51OiBcdTU3MjhcdTdlYmZcdTc1MjhcdTYyMzdcdTY3ZTVcdThiZTI+XT5dIn0=', '2021-04-07 23:21:43.082036');
INSERT INTO `django_session` VALUES ('tzegx2n28zlvefjo2tz98ikcio8q9tbd', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 16:21:57.928021');
INSERT INTO `django_session` VALUES ('u1i83en833nfzvyivedwmyb1nnn9ifey', 'NWNjOGZjNDYyMjg0ODE5MzI2NWQ0YjI5MmZlZGNmMGRmNWRiOGNkMjp7Im1vZGVsX25hbWUiOiJcdTY1ODdcdTRlZjZcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU2NTg3XHU0ZWY2XHU3YmExXHU3NDA2In0=', '2021-09-02 02:11:27.694225');
INSERT INTO `django_session` VALUES ('uc8bgw7z2tvzejrlzdhsq60a97fjvecp', 'NDI1ZWUxMDc2ZjdlMWUyNTMxNTIwNjk4YWVmYjUzZGM4N2JkMzk2Yjp7Im1vZGVsX25hbWUiOiJcdTkwMWFcdTc3ZTVcdTUxNmNcdTU0NGEiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MDFhXHU3N2U1XHU1MTZjXHU1NDRhIn0=', '2021-04-08 00:00:13.397434');
INSERT INTO `django_session` VALUES ('ujm8j63gxdh69rtwttcoviybw6kx7l27', 'ZGJkMzQ0OTA1YzkyNjJiNzg0MjRlZTQyY2FlOWUxMDlhODMwM2E2MDp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1YjU3XHU1MTc4XHU3YmExXHU3NDA2In0=', '2021-09-02 15:23:38.313121');
INSERT INTO `django_session` VALUES ('ujvytudcuciuhacshdxb9qdsy4cv85sb', 'ZGJkMzQ0OTA1YzkyNjJiNzg0MjRlZTQyY2FlOWUxMDlhODMwM2E2MDp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1YjU3XHU1MTc4XHU3YmExXHU3NDA2In0=', '2021-09-02 16:21:52.665608');
INSERT INTO `django_session` VALUES ('uniczhhvjkbng46mluegux9rmqmt9mqu', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:23.490671');
INSERT INTO `django_session` VALUES ('unme8hghc1gv098ipltx6voua1hv9r3n', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:21:48.296335');
INSERT INTO `django_session` VALUES ('uorhj0emc1ycn89uahj5u9gvorhuosm7', 'N2MxZDNlODgxMzBkNTI3YzVlOWFlNGQ2MTYxNzQ0YzlmODkwN2M0NTp7Im1vZGVsX25hbWUiOiJcdTUzYzJcdTY1NzBcdThiYmVcdTdmNmUiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1M2MyXHU2NTcwXHU4YmJlXHU3ZjZlIn0=', '2021-09-03 16:50:38.835786');
INSERT INTO `django_session` VALUES ('utcj4wspvsq9d35i2434a1jzau8w2ozu', 'NTc0YmUzNTJhM2UxZDAwOTA2Zjc0MjQ4MjNmYTAyMTY4MjRhNGNlZTp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdThkMjJcdTUyYTFcdTkwZThcdTk1ZTg+XT5dIn0=', '2021-04-07 23:28:18.691326');
INSERT INTO `django_session` VALUES ('uujq5rv7bftli3f5yzdbzbmap8k1ukz9', 'Yzc1ZTRmODVmMTlmZGQ2NTkyYTljYjk3NmQ4M2EyNzhmYTE2NTQ3MDp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2In0=', '2021-04-07 23:28:18.747032');
INSERT INTO `django_session` VALUES ('uxdnbtjol76ugkrhjq7zbowgfjpey2bs', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 15:39:55.866716');
INSERT INTO `django_session` VALUES ('v273pnhjv5rggikml717oy4tnboqbbvu', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 14:11:24.699510');
INSERT INTO `django_session` VALUES ('va1ymgcawexipmil5n589szoa126x065', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 12:44:42.293865');
INSERT INTO `django_session` VALUES ('vauuz4atkmpj6hee0q9xx1vk6zxj6pr0', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:55:18.960384');
INSERT INTO `django_session` VALUES ('vcetf133yfsw6jgryytv2h668g50uqmx', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-09-03 16:48:58.301285');
INSERT INTO `django_session` VALUES ('ve327fyky2smcinp4hglagjkybq09kx2', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-07 23:29:50.497327');
INSERT INTO `django_session` VALUES ('vm95lzbcok441rjr0dgw0lo1vcueip4r', 'OTQ4YzhhNTlmMjQ4NzIzNTM5YWQxNzlmODBmMjhlODM5OGQxOTU2MTp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2In0=', '2021-04-07 23:21:40.431008');
INSERT INTO `django_session` VALUES ('volmnj5inc1p61krk8lkspbpfslyq2op', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:50:22.390746');
INSERT INTO `django_session` VALUES ('vwuhuuv2x8o00956mam6467z2ayy4anc', 'YWFhOTQ1YmUzNmU3Y2IxMzI0ZTQ5ZjNkNmZlYmFlOWVhM2NlNDRlMzp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2OGMwXHU3ZDIyXHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2OltYWFx1NTIxYlx1NjViMFx1NzlkMVx1NjI4MF0ifQ==', '2021-04-07 23:28:36.953239');
INSERT INTO `django_session` VALUES ('vzs8xnd80earcjw2ma4f9z8lykz86q5j', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-07 23:06:34.115659');
INSERT INTO `django_session` VALUES ('w0i9aqtmuwg8uxjrxupay2p0vcw2jc35', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-08 00:56:19.115692');
INSERT INTO `django_session` VALUES ('wd30djbcn409ztnrt2ta9grq7jk17vwa', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 22:03:08.611009');
INSERT INTO `django_session` VALUES ('wjlawjo89t8fhxvok8g557ur6tf24ztc', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:52:53.735155');
INSERT INTO `django_session` VALUES ('wmv7jknv7khbedkg709f1pw33j9pzyg7', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:22:44.566927');
INSERT INTO `django_session` VALUES ('wp46bl7ngkm91dyy8r5zia5nauharb42', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-11 14:11:24.846521');
INSERT INTO `django_session` VALUES ('wzs91twpeizuol469fzu4flj2kq2myu6', 'YjY1ZGJmZDcyYWEwYThkMTkzNjU0ZWZmNWQwMzliZTk0MWQxNzY0ODp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYifQ==', '2021-04-11 21:47:17.545357');
INSERT INTO `django_session` VALUES ('x5sp6lruwwv1qp87lxl1m701pydkyph7', 'NDI1ZWUxMDc2ZjdlMWUyNTMxNTIwNjk4YWVmYjUzZGM4N2JkMzk2Yjp7Im1vZGVsX25hbWUiOiJcdTkwMWFcdTc3ZTVcdTUxNmNcdTU0NGEiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU5MDFhXHU3N2U1XHU1MTZjXHU1NDRhIn0=', '2021-09-02 12:44:42.297371');
INSERT INTO `django_session` VALUES ('xadmkphbcbcd8ucxf4li1jous6s0pq03', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 02:11:34.351007');
INSERT INTO `django_session` VALUES ('xal46wzsrrftzojdkzg8xrawbj8ewltp', 'YmUyZWRkOWMzYWJjYzg3NGRmOTMzMDEzNjkxNjJiYTJkYmRlZWMwOTp7Im1vZGVsX25hbWUiOiJcdTc2N2JcdTVmNTVcdTY1ZTVcdTVmZDciLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NjdiXHU1ZjU1XHU2NWU1XHU1ZmQ3In0=', '2021-04-08 00:00:08.765457');
INSERT INTO `django_session` VALUES ('xp9pzwa1di9o51cacnzrmj2cfuuba8lq', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-07 23:06:34.092890');
INSERT INTO `django_session` VALUES ('xpjy4279s63ettrqpphok9k19cvyis3x', 'YTZkNGNkNGU1ZTdhYTc4ZDg1ZDJiMzAyNDMwMzM0MzlmMjgyNGViNjp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYifQ==', '2021-04-07 23:30:10.396514');
INSERT INTO `django_session` VALUES ('xu8kcwyauq5zuf1pjykf8e6jobs69rqv', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 12:44:36.865446');
INSERT INTO `django_session` VALUES ('xw0sz5yfboddlpavjjshrb8gd9cu4gjd', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-07 23:22:59.673685');
INSERT INTO `django_session` VALUES ('xzqscvcuhja8rvwvyx3twc4175zq3yv3', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:20:20.997608');
INSERT INTO `django_session` VALUES ('y59iaiagyxqa7wi8i6rgvais5h4arn8z', 'Yjc3M2M3M2YwNjQxZGU2OGIwZTIzMjJjNjI1NGQ0MjNmNDRhYzAyYTp7Im1vZGVsX25hbWUiOiJcdTkwZThcdTk1ZThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU5MGU4XHU5NWU4XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxEZXB0OiBcdTY3NmRcdTVkZGVcdTUyMDZcdTUxNmNcdTUzZjg+XT5dIn0=', '2021-04-07 23:28:10.742335');
INSERT INTO `django_session` VALUES ('y5n9wmqafqf50nwxqsdvyf9yie2ovtqk', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:55:06.249961');
INSERT INTO `django_session` VALUES ('yhf2ea5bsrxdhjvfuoejir6xg8ubck4z', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 14:07:13.851029');
INSERT INTO `django_session` VALUES ('ykwg2wo9hx00guawy685o0oya110uxq9', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-04-11 17:52:20.240108');
INSERT INTO `django_session` VALUES ('ymjez755gqhmha4eeojxurtk9c593b6h', 'MDBlNTRhNWE3NjY3Y2RhYmM2OWNhNTg5ZTI4YTFmYjkyOWU2NzZmNDp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU1MjIwXHU5NjY0XHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2Ols8UXVlcnlTZXQgWzxNZW51OiBkdkFkbWluXHU1Yjk4XHU3ZjUxPl0+XSJ9', '2021-04-07 23:21:23.385278');
INSERT INTO `django_session` VALUES ('yte142m4yucks2bigshogn17f85s916p', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:49:26.444259');
INSERT INTO `django_session` VALUES ('ywavtmlo8elsqvytd7cec5oiwodkr88a', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-07 23:30:10.420379');
INSERT INTO `django_session` VALUES ('yx1l28wh9oy7mjgpv8r36ppn3ykc6cg2', 'MTUxNzVhNTEzOGNmYmFmYzE4ZWUzOGVmYjJlOTkxM2ZkMWYxMjQ4Mjp7Im1vZGVsX25hbWUiOiJcdTc1MjhcdTYyMzdcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU3NTI4XHU2MjM3XHU3YmExXHU3NDA2In0=', '2021-04-11 14:18:10.132857');
INSERT INTO `django_session` VALUES ('yyn5jjcnqsivczqnmoue3k27om4b2mjh', 'N2JmMGY5MDVhZTRjYzY0YjVkZDA2MTc4NDIxM2U4MThiMGU5MzM2ZDp7Im1vZGVsX25hbWUiOiJcdTgzZGNcdTUzNTVcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2NmY0XHU2NWIwXHU4M2RjXHU1MzU1XHU3YmExXHU3NDA2OltcdTVjOTdcdTRmNGRcdTdiYTFcdTc0MDZdIn0=', '2021-04-07 23:30:37.482747');
INSERT INTO `django_session` VALUES ('yzsh5lxvisf6j508xpfibjqe1v72drz9', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 16:21:54.233822');
INSERT INTO `django_session` VALUES ('z04wty7ljd9j1fqqyzntqakhbz8laa9m', 'N2MxZDNlODgxMzBkNTI3YzVlOWFlNGQ2MTYxNzQ0YzlmODkwN2M0NTp7Im1vZGVsX25hbWUiOiJcdTUzYzJcdTY1NzBcdThiYmVcdTdmNmUiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1M2MyXHU2NTcwXHU4YmJlXHU3ZjZlIn0=', '2021-09-02 15:23:41.619130');
INSERT INTO `django_session` VALUES ('zafezduevir6u4c1dp0304h57azwh0bz', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 21:41:44.895289');
INSERT INTO `django_session` VALUES ('zod9q49eivfsi59qgrqatiz0r4sx5d99', 'NzA1NWIwOTBmZTliOWVmYWYzYWUyZGI5MTlkYWM1ODZjYjc5ZmFhMjp7Im1vZGVsX25hbWUiOiJcdTViNTdcdTUxNzhcdThiZTZcdTYwYzUifQ==', '2021-09-02 15:23:53.774802');
INSERT INTO `django_session` VALUES ('zt8cax4v6w9z4nvssvo9ldo6c2u5m8vh', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 15:52:41.408235');
INSERT INTO `django_session` VALUES ('ztnhplq1hbtqdhrv783n7u3do9u84aci', 'NWNjOGZjNDYyMjg0ODE5MzI2NWQ0YjI5MmZlZGNmMGRmNWRiOGNkMjp7Im1vZGVsX25hbWUiOiJcdTY1ODdcdTRlZjZcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU2NTg3XHU0ZWY2XHU3YmExXHU3NDA2In0=', '2021-09-02 16:21:56.600358');
INSERT INTO `django_session` VALUES ('zzs527lc8rh80x8ql2gpxmntue0dlih5', 'NTQ5NTA4MjNhYWNiYTA5ZDE0ZGQ4NzVjZThmM2YzMGRkNGFiNWU2NDp7Im1vZGVsX25hbWUiOiJcdTUxN2NcdTgwNGNcdTYyZGJcdTgwNThcdTdiYTFcdTc0MDYiLCJyZXF1ZXN0X21zZyI6IkN1c3RvbU1vZGVsVmlld1NldFx1NjVlNVx1NWZkN1x1N2NmYlx1N2VkZjpcdTc1MjhcdTYyMzdbdXNlcm5hbWU9YWRtaW5dXHU2N2U1XHU4YmUyXHU1MTdjXHU4MDRjXHU2MmRiXHU4MDU4XHU3YmExXHU3NDA2In0=', '2021-04-11 17:11:58.747832');

-- ----------------------------
-- Table structure for djcelery_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_crontabschedule`;
CREATE TABLE `djcelery_crontabschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hour` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `day_of_week` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `day_of_month` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `month_of_year` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for djcelery_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_intervalschedule`;
CREATE TABLE `djcelery_intervalschedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for djcelery_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictask`;
CREATE TABLE `djcelery_periodictask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `task` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kwargs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `queue` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `exchange` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `routing_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expires` datetime(6) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) NULL DEFAULT NULL,
  `total_run_count` int(10) UNSIGNED NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `crontab_id` int(11) NULL DEFAULT NULL,
  `interval_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_`(`crontab_id`) USING BTREE,
  INDEX `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_`(`interval_id`) USING BTREE,
  CONSTRAINT `djcelery_periodictas_crontab_id_75609bab_fk_djcelery_` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `djcelery_periodictas_interval_id_b426ab02_fk_djcelery_` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for djcelery_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictasks`;
CREATE TABLE `djcelery_periodictasks`  (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for djcelery_taskstate
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_taskstate`;
CREATE TABLE `djcelery_taskstate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `task_id` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tstamp` datetime(6) NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `kwargs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `eta` datetime(6) NULL DEFAULT NULL,
  `expires` datetime(6) NULL DEFAULT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `traceback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `runtime` double NULL DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_id`(`task_id`) USING BTREE,
  INDEX `djcelery_taskstate_state_53543be4`(`state`) USING BTREE,
  INDEX `djcelery_taskstate_name_8af9eded`(`name`) USING BTREE,
  INDEX `djcelery_taskstate_tstamp_4c3f93a1`(`tstamp`) USING BTREE,
  INDEX `djcelery_taskstate_hidden_c3905e57`(`hidden`) USING BTREE,
  INDEX `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id`(`worker_id`) USING BTREE,
  CONSTRAINT `djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for djcelery_workerstate
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_workerstate`;
CREATE TABLE `djcelery_workerstate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_heartbeat` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hostname`(`hostname`) USING BTREE,
  INDEX `djcelery_workerstate_last_heartbeat_4539b544`(`last_heartbeat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_dept
-- ----------------------------
DROP TABLE IF EXISTS `permission_dept`;
CREATE TABLE `permission_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `deptName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderNum` int(11) NOT NULL,
  `owner` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  `parentId_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_dept_creator_id_3550ae65`(`creator_id`) USING BTREE,
  INDEX `permission_dept_parentId_id_43a4fd49`(`parentId_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_dept
-- ----------------------------
INSERT INTO `permission_dept` VALUES (1, '', 'admin', '1', '2021-02-27 07:26:20.518695', '2021-02-27 15:18:39.000000', 'XX创新科技', 1, NULL, '15888888888', 'cxkj@qq.com', '1', 1, NULL);
INSERT INTO `permission_dept` VALUES (2, '', 'admin', '1', '2021-02-27 07:25:09.041807', '2021-02-27 07:25:09.041853', '北京总公司', 1, NULL, NULL, NULL, '1', 1, 1);
INSERT INTO `permission_dept` VALUES (6, '', 'admin', '1', '2021-02-27 07:26:37.589741', '2021-02-27 07:26:37.589780', '研发部门', 1, NULL, NULL, NULL, '1', 1, 2);
INSERT INTO `permission_dept` VALUES (7, '', 'admin', '1', '2021-02-27 07:26:47.781467', '2021-02-27 07:26:47.781511', '市场部门', 2, NULL, NULL, NULL, '1', 1, 2);
INSERT INTO `permission_dept` VALUES (8, '', 'admin', '1', '2021-02-27 07:26:57.059878', '2021-02-27 07:26:57.059923', '测试部门', 3, NULL, NULL, NULL, '1', 1, 2);

-- ----------------------------
-- Table structure for permission_jzzp
-- ----------------------------
DROP TABLE IF EXISTS `permission_jzzp`;
CREATE TABLE `permission_jzzp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `zpzw` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gsmc` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `xz` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  `xl` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nx` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_jzzp_creator_id_ef5904d3`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4679 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_jzzp
-- ----------------------------
INSERT INTO `permission_jzzp` VALUES (4650, NULL, NULL, NULL, '2019-12-16 18:54:54.000000', '2019-12-16 18:54:54.000000', '招聘兼职文员两名', '上海天娱文化公司', '62元/小时', '杨浦', '文员文秘', 1, '本科', '无要求');
INSERT INTO `permission_jzzp` VALUES (4651, NULL, NULL, NULL, '2021-08-19 12:37:01.000000', '2021-08-19 12:37:13.000000', 'C++开发', '上海勇敢软件公司', '100元/小时', '静安', '程序员', 1, '研究生', '测试');
INSERT INTO `permission_jzzp` VALUES (4652, NULL, NULL, NULL, '2021-08-19 12:43:14.000000', '2021-08-19 12:43:17.000000', 'Java技术人员', '上海高新技术开发公司', '500元/天', '崇明', '程序员', 1, '本科', '需要2年经验');
INSERT INTO `permission_jzzp` VALUES (4657, NULL, NULL, NULL, '2021-08-19 16:12:39.000000', '2021-08-19 16:12:39.000000', '2021最火爆的赚钱方法,日结200+500+,无押金', '志汇信息科技有限公司', '53元/小时', '黄浦', '促销导购', 1, '无要求', '无要求');
INSERT INTO `permission_jzzp` VALUES (4658, NULL, NULL, NULL, '2019-05-15 16:38:40.000000', '2019-05-15 16:38:40.000000', '恒基家居展会促销客服导购', '上海庐顾商务服务有限公司', '22元/小时', '黄浦', '促销导购', 1, '大专', '无要求');
INSERT INTO `permission_jzzp` VALUES (4659, NULL, NULL, NULL, '2019-05-16 12:02:39.000000', '2019-05-16 12:02:39.000000', '小时工展会入场登记300一天', '上海景趣贸易有限公司', '37元/小时', '静安', '促销导购', 1, '无要求', '无要求');
INSERT INTO `permission_jzzp` VALUES (4660, NULL, NULL, NULL, '2019-05-20 17:32:29.000000', '2019-05-20 17:32:29.000000', '冰淇淋促销员兼职', '上海后火企业咨询事务所', '16元/小时', '静安', '促销导购', 1, '无要求', '无要求');
INSERT INTO `permission_jzzp` VALUES (4675, NULL, NULL, NULL, '2019-05-04 07:41:57.000000', '2019-05-04 07:41:57.000000', '急招南京东路羽绒服导', '上海犇牛实业有限公司', '37元/小时', '黄浦', '促销导购', 1, '无要求', '无要求');
INSERT INTO `permission_jzzp` VALUES (4676, NULL, NULL, NULL, '2019-05-05 09:07:47.000000', '2019-05-05 09:07:47.000000', '恒基家居展会促销客服导购', '上海庐顾商务服务有限公司', '22元/小时', '长宁', '促销导购', 1, '大专', '无要求');
INSERT INTO `permission_jzzp` VALUES (4677, NULL, NULL, NULL, '2019-05-06 19:45:52.000000', '2019-05-06 19:45:52.000000', '恒基家居展会促销客服导购', '上海庐顾商务服务有限公司', '22元/小时', '长宁', '促销导购', 1, '大专', '无要求');
INSERT INTO `permission_jzzp` VALUES (4678, NULL, NULL, NULL, '2019-05-13 19:27:20.000000', '2019-05-13 19:27:20.000000', '快闪店潮流服装促销员', '上海以智商务咨询有限公司', '25元/小时', '黄浦', '促销导购', 1, '无要求', '无要求');

-- ----------------------------
-- Table structure for permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `permission_menu`;
CREATE TABLE `permission_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `menuType` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orderNum` int(11) NOT NULL,
  `isFrame` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `web_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `component_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `interface_path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `interface_method` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `perms` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `visible` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isCache` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  `parentId_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_menu_creator_id_0760a5c0`(`creator_id`) USING BTREE,
  INDEX `permission_menu_parentId_id_df49c7ef`(`parentId_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_menu
-- ----------------------------
INSERT INTO `permission_menu` VALUES (1, '', 'admin', '1', '2021-02-27 07:50:00.410101', '2021-02-27 07:41:28.660364', '0', 'system', '系统管理', 1, '1', '/system', '', '', 'GET', NULL, '1', '1', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (2, '', 'admin', '1', '2021-02-27 07:51:14.500722', '2021-02-27 07:51:14.500768', '0', 'peoples', '权限管理', 2, '1', '/permission', '', '', 'GET', NULL, '1', '1', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (3, '', 'admin', '1', '2021-03-16 14:50:55.740451', '2021-02-27 07:54:38.630670', '1', 'dict', '字典管理', 1, '1', 'dict', 'vadmin/system/dict/index', '', 'GET', '', '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (4, '', 'admin', '1', '2021-03-16 14:51:07.813189', '2021-02-27 08:06:51.019173', '1', 'edit', '参数管理', 2, '1', '/system/config', 'vadmin/system/config/index', '', 'GET', '', '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (5, '', 'admin', '1', '2021-03-24 23:30:37.465229', '2021-02-27 08:25:37.339270', '1', 'post', '岗位管理', 1, '1', '/permission/post', 'vadmin/permission/post/index', '', 'GET', '', '1', '0', '1', 1, 2);
INSERT INTO `permission_menu` VALUES (6, '', 'admin', '1', '2021-03-16 14:52:06.412883', '2021-02-27 08:26:48.454553', '1', 'tree', '部门管理', 2, '1', '/permission/dept', 'vadmin/permission/dept/index', '', 'GET', '', '1', '1', '1', 1, 2);
INSERT INTO `permission_menu` VALUES (7, '', 'admin', '1', '2021-03-16 14:52:12.835100', '2021-02-27 08:28:20.411164', '1', 'tree-table', '菜单管理', 3, '1', '/permission/menu', 'vadmin/permission/menu/index', '', 'GET', '', '1', '1', '0', 1, 2);
INSERT INTO `permission_menu` VALUES (8, '', 'admin', '1', '2021-03-16 14:52:31.046775', '2021-02-27 08:29:30.153361', '1', 'peoples', '角色管理', 4, '1', '/permission/role', 'vadmin/permission/role/index', '', 'GET', '', '1', '1', '1', 1, 2);
INSERT INTO `permission_menu` VALUES (9, '', 'admin', '1', '2021-03-16 14:52:39.106512', '2021-02-27 08:30:14.030888', '1', 'user', '用户管理', 5, '1', '/permission/user', 'vadmin/permission/user/index', '', 'GET', '', '1', '1', '1', 1, 2);
INSERT INTO `permission_menu` VALUES (11, '', 'admin', '1', '2021-03-16 14:51:15.042512', '2021-02-27 16:17:36.685174', '1', 'job', '文件管理', 3, '1', '/system/savefile', 'vadmin/system/savefile/index', '', 'GET', '', '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (13, '', 'admin', '1', '2021-03-03 14:41:08.227821', '2021-03-03 14:18:52.530449', '2', NULL, '用户新增', 1, '1', NULL, NULL, '/admin/permission/user/', 'POST', 'permission:user:post', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (14, '', 'admin', '1', '2021-03-03 14:43:34.207938', '2021-03-03 14:43:34.208093', '2', NULL, '用户修改', 2, '1', NULL, NULL, '/admin/permission/user/{id}/', 'PUT', 'permission:user:{id}:put', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (15, '', 'admin', '1', '2021-03-03 14:44:58.006289', '2021-03-03 14:44:58.006338', '2', NULL, '用户删除', 3, '1', '', NULL, '/admin/permission/user/{id}/', 'DELETE', 'permission:user:{id}:delete', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (16, '', 'admin', '1', '2021-03-03 14:45:50.575443', '2021-03-03 14:45:50.575507', '2', NULL, '用户导出', 4, '1', NULL, NULL, '/admin/permission/user/export/', 'GET', 'permission:user:export:get', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (17, '', 'admin', '1', '2021-03-03 14:51:14.157310', '2021-03-03 14:51:14.157447', '2', NULL, '用户导入', 5, '1', NULL, NULL, '/admin/permission/user/import/', 'POST', 'permission:user:import:post', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (18, '', 'admin', '1', '2021-03-03 14:51:51.220886', '2021-03-03 14:51:51.220933', '2', NULL, '重置密码', 6, '1', NULL, NULL, '/admin/permission/user/resetPwd/', 'PUT', 'permission:user:resetpwd:put', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (19, '', 'admin', '1', '2021-03-03 14:53:47.877063', '2021-03-03 14:53:47.877116', '2', NULL, '角色新增', 1, '1', NULL, NULL, '/admin/permission/role/', 'POST', 'permission:role:post', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (20, '', 'admin', '1', '2021-03-03 14:54:28.794968', '2021-03-03 14:54:28.795015', '2', NULL, '角色修改', 2, '1', NULL, NULL, '/admin/permission/role/{id}/', 'PUT', 'permission:role:{id}:put', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (21, '', 'admin', '1', '2021-03-03 14:58:00.798718', '2021-03-03 14:58:00.798813', '2', NULL, '删除角色', 3, '1', NULL, NULL, '/admin/permission/role/{id}/', 'DELETE', 'permission:role:{id}:delete', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (22, '', 'admin', '1', '2021-03-03 14:58:28.940577', '2021-03-03 14:58:28.940625', '2', NULL, '角色导出', 4, '1', NULL, NULL, '/admin/permission/role/export/', 'GET', 'permission:role:export:get', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (23, '', 'admin', '1', '2021-03-03 15:00:41.081771', '2021-03-03 15:00:41.081832', '2', NULL, '菜单新增', 1, '1', NULL, NULL, '/admin/permission/menus/', 'POST', 'permission:menus:post', '1', '1', '1', 1, 7);
INSERT INTO `permission_menu` VALUES (24, '', 'admin', '1', '2021-03-03 15:01:03.178824', '2021-03-03 15:01:03.178874', '2', NULL, '菜单修改', 2, '1', NULL, NULL, '/admin/permission/menus/{id}/', 'PUT', 'permission:menus:{id}:put', '1', '1', '1', 1, 7);
INSERT INTO `permission_menu` VALUES (25, '', 'admin', '1', '2021-03-03 15:02:56.123525', '2021-03-03 15:02:56.123571', '2', NULL, '菜单删除', 3, '1', NULL, NULL, '/admin/permission/menus/{id}/', 'DELETE', 'permission:menus:{id}:delete', '1', '1', '1', 1, 7);
INSERT INTO `permission_menu` VALUES (26, '', 'admin', '1', '2021-03-03 15:04:35.191774', '2021-03-03 15:04:35.191856', '2', NULL, '部门新增', 1, '1', NULL, NULL, '/admin/permission/dept/', 'POST', 'permission:dept:post', '1', '1', '1', 1, 6);
INSERT INTO `permission_menu` VALUES (27, '', 'admin', '1', '2021-03-03 15:04:56.963168', '2021-03-03 15:04:56.963214', '2', NULL, '部门修改', 2, '1', NULL, NULL, '/admin/permission/dept/{id}/', 'PUT', 'permission:dept:{id}:put', '1', '1', '1', 1, 6);
INSERT INTO `permission_menu` VALUES (28, '', 'admin', '1', '2021-03-03 15:05:39.602577', '2021-03-03 15:05:39.602622', '2', NULL, '部门删除', 3, '1', NULL, NULL, '/admin/permission/dept/{id}/', 'DELETE', 'permission:dept:{id}:delete', '1', '1', '1', 1, 6);
INSERT INTO `permission_menu` VALUES (29, '', 'admin', '1', '2021-03-03 15:06:50.095341', '2021-03-03 15:06:50.095388', '2', NULL, '岗位新增', 1, '1', NULL, NULL, '/admin/permission/post/', 'POST', 'permission:post:post', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (30, '', 'admin', '1', '2021-03-03 15:07:36.013313', '2021-03-03 15:07:36.013358', '2', NULL, '岗位修改', 2, '1', NULL, NULL, '/admin/permission/post/{id}/', 'PUT', 'permission:post:{id}:put', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (31, '', 'admin', '1', '2021-03-03 15:08:10.371530', '2021-03-03 15:08:10.371575', '2', NULL, '岗位删除', 3, '1', NULL, NULL, '/admin/permission/post/{id}/', 'DELETE', 'permission:post:{id}:delete', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (32, '', 'admin', '1', '2021-03-03 15:09:02.213084', '2021-03-03 15:09:02.213131', '2', NULL, '岗位导出', 4, '1', NULL, NULL, '/admin/permission/post/export/', 'GET', 'permission:post:export:get', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (33, '', 'admin', '1', '2021-03-03 15:11:37.616329', '2021-03-03 15:11:37.616415', '2', NULL, '字典新增', 1, '1', NULL, NULL, '/admin/system/dict/type/', 'POST', 'system:dict:type:post', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (34, '', 'admin', '1', '2021-03-03 15:12:47.237658', '2021-03-03 15:12:47.237713', '2', NULL, '字典修改', 2, '1', NULL, NULL, '/admin/system/dict/type/{id}/', 'PUT', 'system:dict:type:{id}:put', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (35, '', 'admin', '1', '2021-03-03 15:13:40.185174', '2021-03-03 15:13:40.185230', '2', NULL, '字典删除', 3, '1', NULL, NULL, '/admin/system/dict/type/{id}/', 'DELETE', 'system:dict:type:{id}:delete', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (36, '', 'admin', '1', '2021-03-03 15:15:12.950584', '2021-03-03 15:15:12.950684', '2', NULL, '字典导出', 4, '1', NULL, NULL, '/admin/system/dict/type/export/', 'GET', 'system:dict:type:export:get', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (37, '', 'admin', '1', '2021-03-03 15:16:54.709780', '2021-03-03 15:16:20.868146', '2', NULL, '清理缓存', 5, '1', NULL, NULL, '/admin/system/dict/type/clearCache/', 'DELETE', 'system:dict:type:clearcache:delete', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (38, '', 'admin', '1', '2021-03-03 15:17:54.232085', '2021-03-03 15:17:54.232166', '2', NULL, '参数新增', 1, '1', NULL, NULL, '/admin/system/config/', 'POST', 'system:config:post', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (39, '', 'admin', '1', '2021-03-03 15:18:37.088187', '2021-03-03 15:18:37.088237', '2', NULL, '参数修改', 2, '1', NULL, NULL, '/admin/system/config/{id}/', 'PUT', 'system:config:{id}:put', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (40, '', 'admin', '1', '2021-03-03 15:19:05.532556', '2021-03-03 15:19:05.532616', '2', NULL, '参数删除', 3, '1', NULL, NULL, '/admin/system/config/{id}/', 'DELETE', 'system:config:{id}:delete', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (41, '', 'admin', '1', '2021-03-03 15:19:49.576174', '2021-03-03 15:19:49.576221', '2', NULL, '参数导出', 4, '1', NULL, NULL, '/admin/system/config/export/', 'GET', 'system:config:export:get', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (42, '', 'admin', '1', '2021-03-03 15:21:20.098250', '2021-03-03 15:21:20.098345', '2', NULL, '清理缓存', 5, '1', NULL, NULL, '/admin/system/config/clearCache/', 'DELETE', 'system:config:clearcache:delete', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (43, '', 'admin', '1', '2021-03-03 15:22:48.492613', '2021-03-03 15:22:48.492666', '2', NULL, '文件上传', 1, '1', NULL, NULL, '/admin/system/savefile/', 'POST', 'system:savefile:post', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (44, '', 'admin', '1', '2021-03-03 15:23:58.219105', '2021-03-03 15:23:58.219155', '2', NULL, '文件删除', 2, '1', NULL, NULL, '/admin/system/savefile/{id}/', 'DELETE', 'system:savefile:{id}:delete', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (45, '', 'admin', '1', '2021-03-03 15:25:15.224971', '2021-03-03 15:25:15.225018', '2', NULL, '清理废弃文件', 3, '1', NULL, NULL, '/admin/system/clearsavefile/', 'POST', 'system:clearsavefile:post', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (46, '', 'admin', '1', '2021-03-03 15:28:30.061632', '2021-03-03 15:27:19.945663', '2', NULL, '文件下载', 4, '1', NULL, NULL, NULL, 'GET', 'system:clearsavefile:download:post', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (47, '', 'admin', '1', '2021-03-16 14:51:22.015400', '2021-03-07 14:32:06.754815', '1', 'message', '通知公告', 4, '1', 'system/message', 'vadmin/system/message/index', '', 'GET', '', '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (48, '', 'admin', '1', '2021-03-07 14:35:06.718432', '2021-03-07 14:35:06.718463', '2', NULL, '发布公告', 1, '1', NULL, NULL, '/admin/system/message/', 'POST', 'system:message:post', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (49, '', 'admin', '1', '2021-03-08 13:04:32.158707', '2021-03-07 14:36:47.675837', '2', NULL, '修改公告', 2, '1', NULL, NULL, '/admin/system/message/{id}/', 'PUT', 'system:message:{id}:put', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (50, '', 'admin', '1', '2021-03-08 13:04:58.206693', '2021-03-07 14:37:52.130567', '2', NULL, '删除公告', 3, '1', NULL, NULL, '/admin/permission/menu/{id}/', 'DELETE', 'permission:menu:{id}:delete', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (51, '', 'admin', '1', '2021-03-07 14:42:37.410336', '2021-03-07 14:42:37.410366', '2', NULL, '公告导出', 4, '1', NULL, NULL, '/admin/system/message/export/', 'GET', 'system:message:export:get', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (52, '', 'admin', '1', '2021-03-09 17:19:13.828166', '2021-03-09 17:18:14.976783', '2', NULL, '字典查询', 0, '1', NULL, NULL, '/admin/system/dict/type/', 'GET', 'system:dict:type:get', '1', '1', '1', 1, 3);
INSERT INTO `permission_menu` VALUES (53, '', 'admin', '1', '2021-03-09 17:19:46.963317', '2021-03-09 17:19:33.953559', '2', NULL, '参数查询', 0, '1', NULL, NULL, '/admin/system/config/', 'GET', 'system:config:get', '1', '1', '1', 1, 4);
INSERT INTO `permission_menu` VALUES (54, '', 'admin', '1', '2021-03-09 17:20:14.749627', '2021-03-09 17:20:02.783389', '2', NULL, '文件查询', 0, '1', NULL, NULL, '/admin/system/savefile/', 'GET', 'system:savefile:get', '1', '1', '1', 1, 11);
INSERT INTO `permission_menu` VALUES (55, '', 'admin', '1', '2021-03-09 17:20:44.604824', '2021-03-09 17:20:36.025364', '2', NULL, '公告查询', 0, '1', NULL, NULL, '/admin/system/message/', 'GET', 'system:message:get', '1', '1', '1', 1, 47);
INSERT INTO `permission_menu` VALUES (56, '', 'admin', '1', '2021-03-09 17:21:06.429585', '2021-03-09 17:21:06.429629', '2', NULL, '岗位查询', 0, '1', NULL, NULL, '/admin/permission/post/', 'GET', 'permission:post:get', '1', '1', '1', 1, 5);
INSERT INTO `permission_menu` VALUES (57, '', 'admin', '1', '2021-03-09 17:21:29.013165', '2021-03-09 17:21:29.013210', '2', NULL, '部门查询', 0, '1', NULL, NULL, '/admin/permission/dept/', 'GET', 'permission:dept:get', '1', '1', '1', 1, 6);
INSERT INTO `permission_menu` VALUES (58, '', 'admin', '1', '2021-03-09 17:21:56.243957', '2021-03-09 17:21:47.358360', '2', NULL, '菜单查询', 0, '1', NULL, NULL, '/admin/permission/menus/', 'GET', 'permission:menus:get', '1', '1', '1', 1, 7);
INSERT INTO `permission_menu` VALUES (59, '', 'admin', '1', '2021-03-09 17:22:20.140143', '2021-03-09 17:22:20.140189', '2', NULL, '角色查询', 0, '1', '', NULL, '/admin/permission/role/', 'GET', 'permission:role:get', '1', '1', '1', 1, 8);
INSERT INTO `permission_menu` VALUES (60, '', 'admin', '1', '2021-03-09 17:22:38.595706', '2021-03-09 17:22:38.595751', '2', NULL, '用户查询', 0, '1', NULL, NULL, '/admin/permission/user/', 'GET', 'permission:user:get', '1', '1', '1', 1, 9);
INSERT INTO `permission_menu` VALUES (61, '', 'admin', '1', '2021-03-21 11:34:17.635680', '2021-03-16 13:34:04.148728', '0', 'log', '日志管理', 5, '1', 'log', 'ParentView', NULL, 'GET', NULL, '1', '1', '1', 1, 1);
INSERT INTO `permission_menu` VALUES (62, '', 'admin', '1', '2021-03-16 15:09:30.396752', '2021-03-16 13:36:00.114652', '1', 'logininfor', '登录日志', 1, '1', 'logininfor', 'vadmin/monitor/logininfor/index', '', 'GET', '', '1', '1', '1', 1, 61);
INSERT INTO `permission_menu` VALUES (63, '', 'admin', '1', '2021-03-16 15:09:38.015636', '2021-03-16 14:28:10.395273', '1', 'log', '操作日志', 2, '1', 'operlog', 'vadmin/monitor/operlog/index', '', 'GET', '', '1', '1', '1', 1, 61);
INSERT INTO `permission_menu` VALUES (64, '', 'admin', '1', '2021-03-16 14:31:27.618230', '2021-03-16 14:31:01.026470', '2', NULL, '登录日志查询', 1, '1', NULL, NULL, '/admin/system/logininfor/', 'GET', 'admin:system:logininfor:get', '1', '1', '1', 1, 62);
INSERT INTO `permission_menu` VALUES (65, '', 'admin', '1', '2021-03-16 14:31:44.112525', '2021-03-16 14:31:44.112572', '2', NULL, '操作日志查询', 1, '1', NULL, NULL, '/admin/system/operlog/', 'GET', 'admin:system:operlog:get', '1', '1', '1', 1, 63);
INSERT INTO `permission_menu` VALUES (66, '', 'admin', '1', '2021-03-28 17:52:30.224366', '2021-03-16 14:33:05.483003', '0', 'monitor', '系统监控', 3, '1', 'monitor', NULL, NULL, 'GET', NULL, '1', '0', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (70, '', 'admin', '1', '2021-03-16 15:04:21.404578', '2021-03-16 14:45:51.507961', '1', 'job', '定时任务', 2, '1', '/monitor/celery', 'vadmin/monitor/celery/index', '', 'GET', NULL, '1', '1', '1', 1, 66);
INSERT INTO `permission_menu` VALUES (71, '', 'admin', '1', '2021-03-16 15:04:11.799260', '2021-03-16 14:59:53.619219', '2', NULL, '任务查询', 1, '1', NULL, NULL, '/admin/monitor/celery/', 'GET', 'admin:monitor:celery:get', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (72, '', 'admin', '1', '2021-03-16 15:04:06.645135', '2021-03-16 15:00:21.809600', '2', NULL, '任务新增', 2, '1', NULL, NULL, '/admin/monitor/celery/', 'POST', 'admin:monitor:celery:post', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (73, '', 'admin', '1', '2021-03-16 15:04:00.041701', '2021-03-16 15:00:45.994228', '2', NULL, '任务修改', 3, '1', NULL, NULL, '/admin/monitor/celery/{id}/', 'PUT', 'admin:monitor:celery:{id}:put', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (74, '', 'admin', '1', '2021-03-16 15:03:54.891216', '2021-03-16 15:01:19.624182', '2', NULL, '任务删除', 4, '1', NULL, NULL, '/admin/monitor/celery/{id}/', 'DELETE', 'admin:monitor:celery:{id}:delete', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (75, '', 'admin', '1', '2021-03-16 15:07:03.505007', '2021-03-16 15:03:35.796596', '2', NULL, '任务单次执行', 6, '1', NULL, NULL, '/admin/monitor/celery/run/', 'PUT', 'admin:monitor:celery:run:put', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (76, '', 'admin', '1', '2021-03-16 15:08:09.768588', '2021-03-16 15:07:45.064547', '2', NULL, '任务导出', 5, '1', NULL, NULL, '/admin/monitor/celery/export/', 'GET', 'admin:monitor:celery:export:get', '1', '1', '1', 1, 70);
INSERT INTO `permission_menu` VALUES (77, '', 'admin', '1', '2021-03-16 15:09:09.928480', '2021-03-16 15:08:46.299829', '2', NULL, '登录日志导出', 2, '1', NULL, NULL, '/admin/system/logininfor/export/', 'GET', 'admin:system:logininfor:export:get', '1', '1', '1', 1, 62);
INSERT INTO `permission_menu` VALUES (78, '', 'admin', '1', '2021-03-16 15:09:59.500271', '2021-03-16 15:09:59.500333', '2', NULL, '操作日志导出', 2, '1', NULL, NULL, '/admin/system/operlog/export/', 'GET', 'admin:system:operlog:export:get', '1', '1', '1', 1, 63);
INSERT INTO `permission_menu` VALUES (79, '', 'admin', '1', '2021-03-16 15:13:41.377208', '2021-03-16 15:11:05.675729', '1', 'job', '定时日志', 3, '1', 'celerylog', 'vadmin/monitor/celerylog/index', NULL, 'GET', NULL, '1', '1', '1', 1, 61);
INSERT INTO `permission_menu` VALUES (80, '', 'admin', '1', '2021-03-16 15:16:29.349992', '2021-03-16 15:12:19.707979', '2', NULL, '定时日志查询', 1, '1', NULL, NULL, '/admin/monitor/celerylog/', 'GET', 'admin:monitor:celerylog:get', '1', '1', '1', 1, 79);
INSERT INTO `permission_menu` VALUES (81, '', 'admin', '1', '2021-03-16 15:16:34.419420', '2021-03-16 15:12:51.090410', '2', NULL, '定时日志导出', 2, '1', NULL, NULL, '/admin/monitor/celerylog/export/', 'GET', 'admin:monitor:celerylog:export:get', '1', '1', '1', 1, 79);
INSERT INTO `permission_menu` VALUES (82, '', 'admin', '1', '2021-03-16 15:15:21.397132', '2021-03-16 15:15:21.397186', '0', 'tool', '系统工具', 4, '1', 'tool', NULL, NULL, 'GET', NULL, '1', '1', '1', 1, NULL);
INSERT INTO `permission_menu` VALUES (83, '', 'admin', '1', '2021-03-16 15:16:10.318380', '2021-03-16 15:16:10.318426', '1', 'build', '表单构建', 1, '1', 'build', 'vadmin/tool/build/index', NULL, 'GET', NULL, '1', '1', '1', 1, 82);
INSERT INTO `permission_menu` VALUES (84, '', 'admin', '1', '2021-03-16 15:19:24.228395', '2021-03-16 15:17:23.507732', '1', 'swagger', '系统接口', 2, '1', 'swagger', 'vadmin/tool/swagger/index', '/admin/docs/', 'GET', 'admin:docs:get', '1', '1', '1', 1, 82);
INSERT INTO `permission_menu` VALUES (85, '', 'admin', '1', '2021-03-21 11:37:06.119591', '2021-03-21 11:37:06.119623', '2', NULL, '操作日志批量删除', 3, '1', NULL, NULL, '/admin/system/operation_log/{id}/', 'DELETE', 'admin:system:operation_log:{id}:delete', '1', '1', '1', 1, 63);
INSERT INTO `permission_menu` VALUES (86, '', 'admin', '1', '2021-03-21 11:39:07.579469', '2021-03-21 11:39:07.579517', '2', NULL, '操作日志清空', 4, '1', NULL, NULL, '/admin/system/operation_log/clean/', 'DELETE', 'admin:system:operation_log:clean:delete', '1', '1', '1', 1, 63);
INSERT INTO `permission_menu` VALUES (87, '', 'admin', '1', '2021-03-21 23:32:44.308857', '2021-03-21 23:32:44.308882', '2', NULL, '登录日志批量删除', 3, '1', NULL, NULL, '/admin/system/logininfor/{id}/', 'DELETE', 'admin:system:logininfor:{id}:delete', '1', '1', '1', 1, 62);
INSERT INTO `permission_menu` VALUES (88, '', 'admin', '1', '2021-03-21 23:33:30.888568', '2021-03-21 23:33:30.888593', '2', NULL, '登录日志清空', 4, '1', NULL, NULL, '/admin/system/logininfor/clean/', 'DELETE', 'admin:system:logininfor:clean:delete', '1', '1', '1', 1, 62);

-- ----------------------------
-- Table structure for permission_post
-- ----------------------------
DROP TABLE IF EXISTS `permission_post`;
CREATE TABLE `permission_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `postName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postCode` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postSort` int(11) NOT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_post_creator_id_fbfeca2a`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_post
-- ----------------------------
INSERT INTO `permission_post` VALUES (1, '', 'admin', '1', '2021-02-27 07:16:10.725970', '2021-02-27 07:16:10.726016', '董事长', 'ceo', 1, '1', NULL, 1);
INSERT INTO `permission_post` VALUES (2, '', 'admin', '1', '2021-02-27 07:16:28.139648', '2021-02-27 07:16:28.139689', '项目经理', 'ce', 2, '1', NULL, 1);
INSERT INTO `permission_post` VALUES (3, '', 'admin', '1', '2021-02-27 07:16:39.843069', '2021-02-27 07:16:39.843114', '人力资源', 'hr', 3, '1', NULL, 1);
INSERT INTO `permission_post` VALUES (4, '', 'admin', '1', '2021-02-27 07:16:51.082769', '2021-02-27 07:16:51.082813', '普通员工', 'user', 4, '1', NULL, 1);

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `roleName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `roleKey` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `roleSort` int(11) NOT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `dataScope` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permission_role_creator_id_131bc7b0`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
INSERT INTO `permission_role` VALUES (1, '', 'admin', '1', '2021-02-27 08:48:23.225361', '2021-02-27 08:48:08.064911', '超级管理员', 'admin', 1, '1', 1, '2', NULL, 1);
INSERT INTO `permission_role` VALUES (2, '', 'admin', '1', '2021-02-27 08:49:05.149632', '2021-02-27 08:48:47.317214', '普通角色', 'common', 2, '1', 0, '2', NULL, 1);

-- ----------------------------
-- Table structure for permission_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `permission_role_dept`;
CREATE TABLE `permission_role_dept`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permission_role_dept_role_id_dept_id_1d89afeb_uniq`(`role_id`, `dept_id`) USING BTREE,
  INDEX `permission_role_dept_role_id_99a9f232`(`role_id`) USING BTREE,
  INDEX `permission_role_dept_dept_id_cbe9076a`(`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role_dept
-- ----------------------------
INSERT INTO `permission_role_dept` VALUES (1, 1, 1);
INSERT INTO `permission_role_dept` VALUES (2, 1, 2);
INSERT INTO `permission_role_dept` VALUES (6, 1, 6);
INSERT INTO `permission_role_dept` VALUES (7, 1, 7);
INSERT INTO `permission_role_dept` VALUES (8, 1, 8);
INSERT INTO `permission_role_dept` VALUES (17, 2, 1);
INSERT INTO `permission_role_dept` VALUES (18, 2, 2);
INSERT INTO `permission_role_dept` VALUES (22, 2, 6);
INSERT INTO `permission_role_dept` VALUES (23, 2, 7);
INSERT INTO `permission_role_dept` VALUES (24, 2, 8);

-- ----------------------------
-- Table structure for permission_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `permission_role_menu`;
CREATE TABLE `permission_role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permission_role_menu_role_id_menu_id_bb9e5441_uniq`(`role_id`, `menu_id`) USING BTREE,
  INDEX `permission_role_menu_role_id_33541d2b`(`role_id`) USING BTREE,
  INDEX `permission_role_menu_menu_id_0c24555f`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_role_menu
-- ----------------------------
INSERT INTO `permission_role_menu` VALUES (1, 1, 1);
INSERT INTO `permission_role_menu` VALUES (2, 1, 2);
INSERT INTO `permission_role_menu` VALUES (3, 1, 3);
INSERT INTO `permission_role_menu` VALUES (4, 1, 4);
INSERT INTO `permission_role_menu` VALUES (5, 1, 5);
INSERT INTO `permission_role_menu` VALUES (6, 1, 6);
INSERT INTO `permission_role_menu` VALUES (7, 1, 7);
INSERT INTO `permission_role_menu` VALUES (8, 1, 8);
INSERT INTO `permission_role_menu` VALUES (9, 1, 9);
INSERT INTO `permission_role_menu` VALUES (21, 1, 11);
INSERT INTO `permission_role_menu` VALUES (22, 1, 13);
INSERT INTO `permission_role_menu` VALUES (23, 1, 14);
INSERT INTO `permission_role_menu` VALUES (24, 1, 15);
INSERT INTO `permission_role_menu` VALUES (25, 1, 16);
INSERT INTO `permission_role_menu` VALUES (26, 1, 17);
INSERT INTO `permission_role_menu` VALUES (27, 1, 18);
INSERT INTO `permission_role_menu` VALUES (28, 1, 19);
INSERT INTO `permission_role_menu` VALUES (29, 1, 20);
INSERT INTO `permission_role_menu` VALUES (30, 1, 21);
INSERT INTO `permission_role_menu` VALUES (31, 1, 22);
INSERT INTO `permission_role_menu` VALUES (32, 1, 23);
INSERT INTO `permission_role_menu` VALUES (33, 1, 24);
INSERT INTO `permission_role_menu` VALUES (34, 1, 25);
INSERT INTO `permission_role_menu` VALUES (35, 1, 26);
INSERT INTO `permission_role_menu` VALUES (36, 1, 27);
INSERT INTO `permission_role_menu` VALUES (37, 1, 28);
INSERT INTO `permission_role_menu` VALUES (38, 1, 29);
INSERT INTO `permission_role_menu` VALUES (39, 1, 30);
INSERT INTO `permission_role_menu` VALUES (40, 1, 31);
INSERT INTO `permission_role_menu` VALUES (41, 1, 32);
INSERT INTO `permission_role_menu` VALUES (42, 1, 33);
INSERT INTO `permission_role_menu` VALUES (43, 1, 34);
INSERT INTO `permission_role_menu` VALUES (44, 1, 35);
INSERT INTO `permission_role_menu` VALUES (45, 1, 36);
INSERT INTO `permission_role_menu` VALUES (46, 1, 37);
INSERT INTO `permission_role_menu` VALUES (47, 1, 38);
INSERT INTO `permission_role_menu` VALUES (48, 1, 39);
INSERT INTO `permission_role_menu` VALUES (49, 1, 40);
INSERT INTO `permission_role_menu` VALUES (50, 1, 41);
INSERT INTO `permission_role_menu` VALUES (51, 1, 42);
INSERT INTO `permission_role_menu` VALUES (52, 1, 43);
INSERT INTO `permission_role_menu` VALUES (53, 1, 44);
INSERT INTO `permission_role_menu` VALUES (54, 1, 45);
INSERT INTO `permission_role_menu` VALUES (55, 1, 46);
INSERT INTO `permission_role_menu` VALUES (56, 1, 47);
INSERT INTO `permission_role_menu` VALUES (57, 1, 48);
INSERT INTO `permission_role_menu` VALUES (58, 1, 49);
INSERT INTO `permission_role_menu` VALUES (59, 1, 50);
INSERT INTO `permission_role_menu` VALUES (60, 1, 51);
INSERT INTO `permission_role_menu` VALUES (61, 1, 52);
INSERT INTO `permission_role_menu` VALUES (62, 1, 53);
INSERT INTO `permission_role_menu` VALUES (63, 1, 54);
INSERT INTO `permission_role_menu` VALUES (64, 1, 55);
INSERT INTO `permission_role_menu` VALUES (65, 1, 56);
INSERT INTO `permission_role_menu` VALUES (66, 1, 57);
INSERT INTO `permission_role_menu` VALUES (67, 1, 58);
INSERT INTO `permission_role_menu` VALUES (68, 1, 59);
INSERT INTO `permission_role_menu` VALUES (69, 1, 60);
INSERT INTO `permission_role_menu` VALUES (74, 1, 61);
INSERT INTO `permission_role_menu` VALUES (75, 1, 62);
INSERT INTO `permission_role_menu` VALUES (76, 1, 63);
INSERT INTO `permission_role_menu` VALUES (70, 1, 64);
INSERT INTO `permission_role_menu` VALUES (71, 1, 65);
INSERT INTO `permission_role_menu` VALUES (79, 1, 66);
INSERT INTO `permission_role_menu` VALUES (80, 1, 70);
INSERT INTO `permission_role_menu` VALUES (81, 1, 71);
INSERT INTO `permission_role_menu` VALUES (82, 1, 72);
INSERT INTO `permission_role_menu` VALUES (83, 1, 73);
INSERT INTO `permission_role_menu` VALUES (84, 1, 74);
INSERT INTO `permission_role_menu` VALUES (85, 1, 75);
INSERT INTO `permission_role_menu` VALUES (86, 1, 76);
INSERT INTO `permission_role_menu` VALUES (72, 1, 77);
INSERT INTO `permission_role_menu` VALUES (73, 1, 78);
INSERT INTO `permission_role_menu` VALUES (77, 1, 85);
INSERT INTO `permission_role_menu` VALUES (78, 1, 86);
INSERT INTO `permission_role_menu` VALUES (11, 2, 1);
INSERT INTO `permission_role_menu` VALUES (12, 2, 2);
INSERT INTO `permission_role_menu` VALUES (13, 2, 3);
INSERT INTO `permission_role_menu` VALUES (14, 2, 4);
INSERT INTO `permission_role_menu` VALUES (15, 2, 5);
INSERT INTO `permission_role_menu` VALUES (16, 2, 6);
INSERT INTO `permission_role_menu` VALUES (17, 2, 7);
INSERT INTO `permission_role_menu` VALUES (18, 2, 8);
INSERT INTO `permission_role_menu` VALUES (19, 2, 9);

-- ----------------------------
-- Table structure for permission_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `permission_userprofile`;
CREATE TABLE `permission_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `avatar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `user_type` int(11) NOT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `dept_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `permission_userprofile_dept_id_bd5c7976`(`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_userprofile
-- ----------------------------
INSERT INTO `permission_userprofile` VALUES (1, 'pbkdf2_sha256$150000$OjTMSXJgkzrE$jEQCjWbIbXwpN4k2z0o8Yvou1UQGuoJALyL/kGDZFd4=', '2021-08-20 16:48:53.320689', 1, '', '', 1, 1, '2021-02-27 06:20:09.188689', 'admin', '3704adf3-380f-4c27-a8da-60420e8cb4ab', 'admin@qq.com', NULL, NULL, '管理员', '2', '1', 2, '1', '2021-02-27 06:20:09.263192', '2021-08-20 16:48:53.306180', 8);
INSERT INTO `permission_userprofile` VALUES (2, 'pbkdf2_sha256$150000$5Z9LSi7LpNms$xVguE/dOEpI4D95LjSaKm0xzG7vNSopUolANr8f/6/E=', NULL, 0, '', '', 0, 1, '2021-03-03 15:38:27.009893', 'common', 'b4c5d79a-f01c-4244-92f8-b5288eca1d50', NULL, NULL, NULL, '普通用户', '2', NULL, 0, '1', '2021-03-03 15:38:27.010771', '2021-03-03 15:38:27.086069', 8);
INSERT INTO `permission_userprofile` VALUES (3, 'pbkdf2_sha256$150000$BidizWB1bSx7$Fd+EEm3fqRKbe0RImQbnZTIaKMvjX4F2SEqS3Ac1m4w=', NULL, 0, '', '', 0, 1, '2021-03-25 00:56:18.836801', 'test1', '224379ec-080e-446b-b752-07d0decb1c8e', NULL, NULL, NULL, '测试用户1', '0', NULL, 0, '8', '2021-03-25 00:56:18.836801', '2021-03-25 00:57:17.461641', 6);

-- ----------------------------
-- Table structure for permission_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `permission_userprofile_groups`;
CREATE TABLE `permission_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permission_userprofile_g_userprofile_id_group_id_4293941d_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `permission_userprofile_groups_group_id_47e24032_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `permission_userprofi_userprofile_id_67612e43_fk_permissio` FOREIGN KEY (`userprofile_id`) REFERENCES `permission_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `permission_userprofile_groups_group_id_47e24032_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission_userprofile_post
-- ----------------------------
DROP TABLE IF EXISTS `permission_userprofile_post`;
CREATE TABLE `permission_userprofile_post`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permission_userprofile_post_userprofile_id_post_id_b9fb91e9_uniq`(`userprofile_id`, `post_id`) USING BTREE,
  INDEX `permission_userprofile_post_userprofile_id_229fe756`(`userprofile_id`) USING BTREE,
  INDEX `permission_userprofile_post_post_id_dda441c3`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_userprofile_post
-- ----------------------------
INSERT INTO `permission_userprofile_post` VALUES (1, 1, 1);
INSERT INTO `permission_userprofile_post` VALUES (2, 2, 4);
INSERT INTO `permission_userprofile_post` VALUES (3, 3, 4);

-- ----------------------------
-- Table structure for permission_userprofile_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_userprofile_role`;
CREATE TABLE `permission_userprofile_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permission_userprofile_role_userprofile_id_role_id_70affc5e_uniq`(`userprofile_id`, `role_id`) USING BTREE,
  INDEX `permission_userprofile_role_userprofile_id_66835002`(`userprofile_id`) USING BTREE,
  INDEX `permission_userprofile_role_role_id_e91fd02e`(`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission_userprofile_role
-- ----------------------------
INSERT INTO `permission_userprofile_role` VALUES (1, 1, 1);
INSERT INTO `permission_userprofile_role` VALUES (2, 2, 2);
INSERT INTO `permission_userprofile_role` VALUES (3, 3, 2);

-- ----------------------------
-- Table structure for permission_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `permission_userprofile_user_permissions`;
CREATE TABLE `permission_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permission_userprofile_u_userprofile_id_permissio_76ac380a_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `permission_userprofi_permission_id_6820fa86_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `permission_userprofi_permission_id_6820fa86_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `permission_userprofi_userprofile_id_e2742b5f_fk_permissio` FOREIGN KEY (`userprofile_id`) REFERENCES `permission_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_configsettings
-- ----------------------------
DROP TABLE IF EXISTS `system_configsettings`;
CREATE TABLE `system_configsettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `configName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `configKey` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `configValue` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `configType` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_configsettings_creator_id_91bcf448`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_configsettings
-- ----------------------------
INSERT INTO `system_configsettings` VALUES (1, '', 'admin', '1', '2021-02-27 07:14:48.935587', '2021-02-27 07:14:48.935634', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', '1', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow', 1);
INSERT INTO `system_configsettings` VALUES (2, '', 'admin', '1', '2021-02-27 07:15:14.039924', '2021-02-27 07:15:14.039967', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', '1', '初始化密码 123456', 1);
INSERT INTO `system_configsettings` VALUES (3, '', 'admin', '1', '2021-02-27 07:15:36.091655', '2021-02-27 07:15:36.091694', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', '1', '深色主题theme-dark，浅色主题theme-light', 1);

-- ----------------------------
-- Table structure for system_dictdata
-- ----------------------------
DROP TABLE IF EXISTS `system_dictdata`;
CREATE TABLE `system_dictdata`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `dictName` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dictType` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_dictdata_creator_id_dfad40e7`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_dictdata
-- ----------------------------
INSERT INTO `system_dictdata` VALUES (1, '', 'admin', '1', '2021-02-27 06:22:24.215575', '2021-02-27 06:22:24.215617', '用户性别', 'sys_user_sex', '1', '用户性别列表', 1);
INSERT INTO `system_dictdata` VALUES (2, '', 'admin', '1', '2021-02-27 06:24:38.126411', '2021-02-27 06:24:38.126456', '菜单状态', 'sys_show_hide', '1', '菜单状态列表', 1);
INSERT INTO `system_dictdata` VALUES (3, '', 'admin', '1', '2021-02-27 06:24:54.943462', '2021-02-27 06:24:54.943516', '系统开关', 'sys_normal_disable', '1', '系统开关列表', 1);
INSERT INTO `system_dictdata` VALUES (4, '', 'admin', '1', '2021-02-27 06:25:16.667651', '2021-02-27 06:25:16.667697', '任务状态', 'sys_job_status', '1', '任务状态列表', 1);
INSERT INTO `system_dictdata` VALUES (5, '', 'admin', '1', '2021-02-27 06:25:34.967768', '2021-02-27 06:25:34.967812', '任务分组', 'sys_job_group', '1', '任务分组列表', 1);
INSERT INTO `system_dictdata` VALUES (6, '', 'admin', '1', '2021-02-27 06:26:01.081973', '2021-02-27 06:26:01.082016', '系统是否', 'sys_yes_no', '1', '系统是否列表', 1);
INSERT INTO `system_dictdata` VALUES (7, '', 'admin', '1', '2021-02-27 06:26:17.716100', '2021-02-27 06:26:17.716144', '通知类型', 'sys_notice_type', '1', '通知类型列表', 1);
INSERT INTO `system_dictdata` VALUES (8, '', 'admin', '1', '2021-02-27 06:26:42.305470', '2021-02-27 06:26:42.305517', '通知状态', 'sys_notice_status', '1', '通知状态列表', 1);
INSERT INTO `system_dictdata` VALUES (9, '', 'admin', '1', '2021-02-27 06:26:57.913406', '2021-02-27 06:26:57.913457', '操作类型', 'sys_oper_type', '1', '操作类型列表', 1);
INSERT INTO `system_dictdata` VALUES (10, '', 'admin', '1', '2021-02-27 06:27:16.392863', '2021-02-27 06:27:16.392961', '系统状态', 'sys_common_status', '1', '登录状态列表', 1);
INSERT INTO `system_dictdata` VALUES (11, '', 'admin', '1', '2021-02-27 07:59:30.310069', '2021-02-27 07:59:30.310115', '菜单类型', 'sys_menu_type', '1', '菜单类型', 1);
INSERT INTO `system_dictdata` VALUES (12, '', 'admin', '1', '2021-02-27 07:59:47.677379', '2021-02-27 07:59:47.677423', '接口请求方式', 'sys_interface_method', '1', '接口请求方式', 1);
INSERT INTO `system_dictdata` VALUES (13, '', 'admin', '1', '2021-03-07 15:06:34.123188', '2021-03-07 14:27:51.286902', '消息类型', 'sys_message_push_type', '1', '消息通知类型', 1);
INSERT INTO `system_dictdata` VALUES (14, '', 'admin', '1', '2021-03-07 15:06:38.891604', '2021-03-07 15:06:00.930057', '消息状态', 'sys_message_push_status', '1', '消息通知状态', 1);

-- ----------------------------
-- Table structure for system_dictdetails
-- ----------------------------
DROP TABLE IF EXISTS `system_dictdetails`;
CREATE TABLE `system_dictdetails`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `dictLabel` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dictValue` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sort` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remark` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  `dict_data_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_dictdetails_creator_id_2c287032`(`creator_id`) USING BTREE,
  INDEX `system_dictdetails_dict_data_id_0bfceb37`(`dict_data_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_dictdetails
-- ----------------------------
INSERT INTO `system_dictdetails` VALUES (1, '', 'admin', '1', '2021-02-27 07:10:41.679229', '2021-02-27 06:28:44.246112', '男', '0', 0, '1', '1', '性别男', 1, 1);
INSERT INTO `system_dictdetails` VALUES (2, '', 'admin', '1', '2021-02-27 06:29:33.556002', '2021-02-27 06:29:03.591400', '女', '1', 0, '1', '2', '性别女', 1, 1);
INSERT INTO `system_dictdetails` VALUES (3, '', 'admin', '1', '2021-02-27 06:29:51.943789', '2021-02-27 06:29:17.544082', '未知', '2', 1, '1', '3', '性别未知', 1, 1);
INSERT INTO `system_dictdetails` VALUES (4, '', 'admin', '1', '2021-02-27 07:10:27.513951', '2021-02-27 06:31:38.884136', '显示', '1', 1, '1', '1', '显示菜单', 1, 2);
INSERT INTO `system_dictdetails` VALUES (5, '', 'admin', '1', '2021-02-27 07:10:30.824117', '2021-02-27 06:33:07.491136', '隐藏', '0', 0, '1', '2', '隐藏菜单', 1, 2);
INSERT INTO `system_dictdetails` VALUES (6, '', 'admin', '1', '2021-02-27 07:00:47.233161', '2021-02-27 07:00:47.233220', '正常', '1', 1, '1', '1', '正常状态', 1, 3);
INSERT INTO `system_dictdetails` VALUES (7, '', 'admin', '1', '2021-02-27 07:01:02.598169', '2021-02-27 07:01:02.598213', '停用', '0', 0, '1', '2', '停用状态', 1, 3);
INSERT INTO `system_dictdetails` VALUES (8, '', 'admin', '1', '2021-02-27 07:02:03.014319', '2021-02-27 07:01:43.750881', '正常', '1', 1, '1', '1', '正常状态', 1, 4);
INSERT INTO `system_dictdetails` VALUES (9, '', 'admin', '1', '2021-02-27 07:01:58.880996', '2021-02-27 07:01:58.881040', '暂停', '0', 0, '1', '2', '停用状态', 1, 4);
INSERT INTO `system_dictdetails` VALUES (10, '', 'admin', '1', '2021-02-27 07:02:51.415658', '2021-02-27 07:02:51.415703', '默认', 'DEFAULT', 1, '1', '1', '默认分组', 1, 5);
INSERT INTO `system_dictdetails` VALUES (11, '', 'admin', '1', '2021-02-27 07:03:13.560650', '2021-02-27 07:03:13.560696', '系统', 'SYSTEM', 0, '1', '2', '系统分组', 1, 5);
INSERT INTO `system_dictdetails` VALUES (12, '', 'admin', '1', '2021-02-27 07:03:42.729915', '2021-02-27 07:03:42.729966', '是', 'Y', 1, '1', '1', '系统默认是', 1, 6);
INSERT INTO `system_dictdetails` VALUES (13, '', 'admin', '1', '2021-02-27 07:04:01.389829', '2021-02-27 07:04:01.389872', '否', 'N', 0, '1', '2', '系统默认否', 1, 6);
INSERT INTO `system_dictdetails` VALUES (14, '', 'admin', '1', '2021-02-27 07:04:25.094873', '2021-02-27 07:04:25.094917', '通知', '1', 1, '1', '1', '通知', 1, 7);
INSERT INTO `system_dictdetails` VALUES (15, '', 'admin', '1', '2021-02-27 07:04:48.136899', '2021-02-27 07:04:48.136942', '公告', '2', 0, '1', '2', '公告', 1, 7);
INSERT INTO `system_dictdetails` VALUES (16, '', 'admin', '1', '2021-02-27 07:05:19.801756', '2021-02-27 07:05:14.206563', '正常', '1', 1, '1', '1', '正常状态', 1, 8);
INSERT INTO `system_dictdetails` VALUES (17, '', 'admin', '1', '2021-02-27 07:05:37.420621', '2021-02-27 07:05:37.420665', '关闭', '0', 0, '1', '2', '关闭状态', 1, 8);
INSERT INTO `system_dictdetails` VALUES (18, '', 'admin', '1', '2021-02-27 07:06:46.397742', '2021-02-27 07:06:10.700351', '新增', '1', 0, '1', '1', '新增操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (19, '', 'admin', '1', '2021-02-27 07:06:24.688730', '2021-02-27 07:06:24.688786', '修改', '2', 0, '1', '2', '修改操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (20, '', 'admin', '1', '2021-02-27 07:06:43.320943', '2021-02-27 07:06:43.320988', '删除', '3', 0, '1', '3', '删除操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (21, '', 'admin', '1', '2021-02-27 07:07:00.508951', '2021-02-27 07:07:00.508996', '授权', '4', 0, '1', '4', '授权操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (22, '', 'admin', '1', '2021-02-27 07:07:38.550527', '2021-02-27 07:07:38.550573', '导出', '5', 0, '1', '5', '导出操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (23, '', 'admin', '1', '2021-02-27 07:08:09.294696', '2021-02-27 07:08:09.294743', '导入', '6', 0, '1', '6', '导入操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (24, '', 'admin', '1', '2021-02-27 07:08:32.640718', '2021-02-27 07:08:32.640763', '强退', '7', 0, '1', '7', '强退操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (25, '', 'admin', '1', '2021-02-27 07:08:47.559833', '2021-02-27 07:08:47.559887', '生成', '8', 0, '1', '8', '生成操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (26, '', 'admin', '1', '2021-02-27 07:09:13.410371', '2021-02-27 07:09:04.346547', '清空', '9', 0, '1', '9', '清空操作', 1, 9);
INSERT INTO `system_dictdetails` VALUES (27, '', 'admin', '1', '2021-02-27 07:09:37.467839', '2021-02-27 07:09:37.467883', '正常', '1', 0, '1', '1', '正常状态', 1, 10);
INSERT INTO `system_dictdetails` VALUES (28, '', 'admin', '1', '2021-02-27 07:10:17.235559', '2021-02-27 07:10:02.980623', '停用', '0', 0, '1', '2', '停用状态', 1, 10);
INSERT INTO `system_dictdetails` VALUES (29, '', 'admin', '1', '2021-02-27 08:00:07.361327', '2021-02-27 08:00:07.361371', '目录', '0', 1, '1', '1', '目录', 1, 11);
INSERT INTO `system_dictdetails` VALUES (30, '', 'admin', '1', '2021-02-27 08:00:27.832697', '2021-02-27 08:00:22.160349', '菜单', '1', 0, '1', '2', '菜单', 1, 11);
INSERT INTO `system_dictdetails` VALUES (31, '', 'admin', '1', '2021-02-27 08:00:45.794325', '2021-02-27 08:00:45.794369', '按钮', '2', 0, '1', '3', '按钮', 1, 11);
INSERT INTO `system_dictdetails` VALUES (32, '', 'admin', '1', '2021-02-27 08:02:22.957299', '2021-02-27 08:02:22.957364', 'GET', 'GET', 1, '1', '1', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (33, '', 'admin', '1', '2021-02-27 08:02:37.650203', '2021-02-27 08:02:37.650291', 'POST', 'POST', 0, '1', '2', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (34, '', 'admin', '1', '2021-02-27 08:02:56.731151', '2021-02-27 08:02:56.731262', 'PUT', 'PUT', 0, '1', '3', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (35, '', 'admin', '1', '2021-02-27 08:03:19.639542', '2021-02-27 08:03:19.639611', 'PATCH', 'PATCH', 0, '1', '4', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (36, '', 'admin', '1', '2021-02-27 08:03:31.746528', '2021-02-27 08:03:31.746574', 'DELETE', 'DELETE', 0, '1', '5', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (37, '', 'admin', '1', '2021-02-27 08:03:41.277335', '2021-02-27 08:03:41.277383', 'HEAD', 'HEAD', 0, '0', '6', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (38, '', 'admin', '1', '2021-02-27 08:03:50.891906', '2021-02-27 08:03:50.891950', 'OPTIONS', 'OPTIONS', 0, '0', '7', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (39, '', 'admin', '1', '2021-02-27 08:04:00.460564', '2021-02-27 08:04:00.460610', 'TRACE', 'TRACE', 0, '0', '8', NULL, 1, 12);
INSERT INTO `system_dictdetails` VALUES (40, '', 'admin', '1', '2021-03-07 14:29:10.529482', '2021-03-07 14:29:10.529513', '消息通知', '1', 1, '1', '1', '消息通知', 1, 13);
INSERT INTO `system_dictdetails` VALUES (41, '', 'admin', '1', '2021-03-07 14:29:40.480856', '2021-03-07 14:29:26.851952', '文件下发', '2', 0, '1', '2', '文件下发', 1, 13);
INSERT INTO `system_dictdetails` VALUES (42, '', 'admin', '1', '2021-03-07 15:07:23.204077', '2021-03-07 15:07:23.204107', '待发送', '1', 1, '1', '1', '消息发送状态：待发送', 1, 14);
INSERT INTO `system_dictdetails` VALUES (43, '', 'admin', '1', '2021-03-07 15:07:31.927366', '2021-03-07 15:07:31.927397', '已发送', '2', 0, '1', '2', '消息发送状态：已发送', 1, 14);

-- ----------------------------
-- Table structure for system_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `system_logininfor`;
CREATE TABLE `system_logininfor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `session_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `browser` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ipaddr` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `loginLocation` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `msg` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `os` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_logininfor_creator_id_8c86a559`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_logininfor
-- ----------------------------
INSERT INTO `system_logininfor` VALUES (1, '', NULL, NULL, '2021-03-24 23:06:25.092974', '2021-03-24 23:06:25.092974', 'ac3d7a70-f892-4e63-a07c-e003929ed3d6', 'Chrome 86.0.4240', '127.0.0.1', ' 本机地址', '登录成功', 'Windows 10', 1, 1);
INSERT INTO `system_logininfor` VALUES (2, '', NULL, NULL, '2021-03-24 23:19:55.028362', '2021-03-24 23:19:55.028362', '3c878436-4735-4857-910a-68c5ee095b7c', 'Chrome 86.0.4240', '127.0.0.1', ' 本机地址', '登录成功', 'Windows 10', 1, 1);
INSERT INTO `system_logininfor` VALUES (3, '', NULL, NULL, '2021-03-28 14:01:55.652856', '2021-03-28 14:01:55.652856', 'd92fe447-c669-4205-92a7-855536a12516', 'Chrome 86.0.4240', '127.0.0.1', ' 本机地址', '登录成功', 'Windows 10', 1, 1);
INSERT INTO `system_logininfor` VALUES (4, '', NULL, NULL, '2021-03-28 17:11:03.045752', '2021-03-28 17:11:03.045752', '75fe5b73-df4f-4547-9d2d-23496433de5f', 'Chrome 86.0.4240', '127.0.0.1', ' 本机地址', '登录成功', 'Windows 10', 1, 1);
INSERT INTO `system_logininfor` VALUES (5, '', NULL, NULL, '2021-03-28 21:12:28.969711', '2021-03-28 21:12:28.969711', 'c529069a-2060-4f47-ac10-4e639a77bc19', 'Chrome 86.0.4240', '127.0.0.1', ' 本机地址', '登录成功', 'Windows 10', 1, 1);
INSERT INTO `system_logininfor` VALUES (6, '', NULL, NULL, '2021-08-19 02:11:14.214212', '2021-08-19 02:11:14.214212', 'd9ec0fab-5c56-44d7-b9ff-2178202e8b19', 'Chrome 86.0.4240', '127.0.0.1', '', '登录成功', 'Windows 10', 1, 1);
INSERT INTO `system_logininfor` VALUES (7, '', NULL, NULL, '2021-08-20 16:31:24.128587', '2021-08-20 16:31:24.128587', '61a5cd38-b835-430c-9610-f1d9efad8c0e', 'Chrome 86.0.4240', '127.0.0.1', '', '登录成功', 'Windows 10', 1, 1);
INSERT INTO `system_logininfor` VALUES (8, '', NULL, NULL, '2021-08-20 16:48:55.345693', '2021-08-20 16:48:55.345693', '2248c76a-21e3-467e-a6da-ad208200faae', 'Chrome 86.0.4240', '127.0.0.1', '', '登录成功', 'Windows 10', 1, 1);

-- ----------------------------
-- Table structure for system_messagepush
-- ----------------------------
DROP TABLE IF EXISTS `system_messagepush`;
CREATE TABLE `system_messagepush`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_reviewed` tinyint(1) NOT NULL,
  `status` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `to_path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_messagepush_creator_id_2112864b`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_messagepushuser
-- ----------------------------
DROP TABLE IF EXISTS `system_messagepushuser`;
CREATE TABLE `system_messagepushuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_read` tinyint(1) NOT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `message_push_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_messagepushuser_message_push_id_3fc4144e`(`message_push_id`) USING BTREE,
  INDEX `system_messagepushuser_user_id_f0455df4`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_operationlog
-- ----------------------------
DROP TABLE IF EXISTS `system_operationlog`;
CREATE TABLE `system_operationlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `request_modular` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `request_method` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `request_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_browser` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `response_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_location` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `request_os` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `json_result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_operationlog_creator_id_75ee7a2c`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of system_operationlog
-- ----------------------------
INSERT INTO `system_operationlog` VALUES (1, '', NULL, '8', '2021-03-24 23:06:25.101309', '2021-03-24 23:06:25.101309', NULL, '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'6\', \'idKeyC\': \'95c971698959cf4d877954b40a17d1a949fb9a16\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (2, '', NULL, '8', '2021-03-24 23:13:06.578999', '2021-03-24 23:13:06.578999', NULL, '/admin/logout/', '{}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (3, '', NULL, NULL, '2021-03-24 23:19:51.202019', '2021-03-24 23:19:51.202019', '', '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'1\', \'idKeyC\': \'338499850715d3116cf9fcdaa9eb461f8ca71957\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '201', ' 本机地址', 'Windows 10', '{\'code\': \'201\', \'msg\': \'验证码错误\'}', 0, NULL);
INSERT INTO `system_operationlog` VALUES (4, '', NULL, '8', '2021-03-24 23:19:55.037401', '2021-03-24 23:19:55.037401', NULL, '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'10\', \'idKeyC\': \'01870a13ae6415775fe127cac16db5d67fa1b9ba\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (5, '', NULL, '8', '2021-03-24 23:21:23.381180', '2021-03-24 23:21:23.381180', '菜单管理', '/admin/permission/menus/10/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除菜单管理:[<QuerySet [<Menu: dvAdmin官网>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (6, '', NULL, '8', '2021-03-24 23:21:40.153579', '2021-03-24 23:21:40.153579', '菜单管理', '/admin/permission/menus/69/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除菜单管理:[<QuerySet [<Menu: 用户强退>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (7, '', NULL, '8', '2021-03-24 23:21:43.078402', '2021-03-24 23:21:43.078402', '菜单管理', '/admin/permission/menus/68/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除菜单管理:[<QuerySet [<Menu: 在线用户查询>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (8, '', NULL, '8', '2021-03-24 23:21:48.021440', '2021-03-24 23:21:48.021440', '菜单管理', '/admin/permission/menus/67/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除菜单管理:[<QuerySet [<Menu: 在线用户>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (9, '', NULL, '8', '2021-03-24 23:28:05.782262', '2021-03-24 23:28:05.782262', '部门管理', '/admin/permission/dept/16/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 财务部门>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (10, '', NULL, '8', '2021-03-24 23:28:08.543232', '2021-03-24 23:28:08.543232', '部门管理', '/admin/permission/dept/15/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 市场部门>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (11, '', NULL, '8', '2021-03-24 23:28:10.737347', '2021-03-24 23:28:10.737347', '部门管理', '/admin/permission/dept/4/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 杭州分公司>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (12, '', NULL, '8', '2021-03-24 23:28:12.543399', '2021-03-24 23:28:12.543399', '部门管理', '/admin/permission/dept/14/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 财务部门>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (13, '', NULL, '8', '2021-03-24 23:28:14.587718', '2021-03-24 23:28:14.587718', '部门管理', '/admin/permission/dept/13/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 市场部门>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (14, '', NULL, '8', '2021-03-24 23:28:16.592123', '2021-03-24 23:28:16.592123', '部门管理', '/admin/permission/dept/5/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 深圳分公司>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (15, '', NULL, '8', '2021-03-24 23:28:18.687337', '2021-03-24 23:28:18.687337', '部门管理', '/admin/permission/dept/12/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 财务部门>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (16, '', NULL, '8', '2021-03-24 23:28:21.110006', '2021-03-24 23:28:21.110006', '部门管理', '/admin/permission/dept/11/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 市场部门>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (17, '', NULL, '8', '2021-03-24 23:28:23.426293', '2021-03-24 23:28:23.426293', '部门管理', '/admin/permission/dept/3/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 上海分公司>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (18, '', NULL, '8', '2021-03-24 23:28:26.964926', '2021-03-24 23:28:26.964926', '部门管理', '/admin/permission/dept/10/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 运维部门>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (19, '', NULL, '8', '2021-03-24 23:28:29.105173', '2021-03-24 23:28:29.105173', '部门管理', '/admin/permission/dept/9/', '{}', 'DELETE', 'CustomModelViewSet日志系统:用户[username=admin]删除部门管理:[<QuerySet [<Dept: 财务部门>]>]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (20, '', NULL, '8', '2021-03-24 23:30:37.478737', '2021-03-24 23:30:37.478737', '菜单管理', '/admin/permission/menus/5/', '{\'id\': 5, \'create_datetime\': \'2021-02-27 08:25:37\', \'update_datetime\': \'2021-03-16 14:51:36\', \'parentId\': 2, \'dept_belong_id\': \'1\', \'menuType\': \'1\', \'icon\': \'post\', \'name\': \'岗位管理\', \'orderNum\': 1, \'isFrame\': \'1\', \'web_path\': \'/permission/post\', \'component_path\': \'vadmin/permission/post/index\', \'interface_path\': \'\', \'interface_method\': \'GET\', \'perms\': \'\', \'status\': \'1\', \'visible\': \'0\', \'isCache\': \'1\'}', 'PUT', 'CustomModelViewSet日志系统:用户[username=admin]更新菜单管理:[岗位管理]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (21, '', NULL, '8', '2021-03-25 00:56:18.974684', '2021-03-25 00:56:18.974684', '用户管理', '/admin/permission/user/', '{\'deptId\': 6, \'username\': \'test1\', \'name\': \'测试用户1\', \'password\': \'******\', \'gender\': \'0\', \'is_active\': True, \'postIds\': [4], \'roleIds\': [2]}', 'POST', 'CustomModelViewSet日志系统:用户[username=admin]创建用户管理:[test1(测试用户1)]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (22, '', NULL, '8', '2021-03-25 00:57:18.021746', '2021-03-25 00:57:18.021746', '用户管理', '/admin/permission/user/resetPwd/', '{\'userId\': 3, \'password\': \'******\'}', 'PUT', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (23, '', NULL, '8', '2021-03-28 14:01:55.665844', '2021-03-28 14:01:55.665844', NULL, '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'16\', \'idKeyC\': \'f0f1da11a9c4090ac47fa189c97af2329f454eda\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (24, '', NULL, '8', '2021-03-28 17:11:03.056753', '2021-03-28 17:11:03.056753', NULL, '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'12\', \'idKeyC\': \'944598ff745482a9e5dbca35470f4b49ea73b563\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (25, '', NULL, '8', '2021-03-28 17:52:30.504387', '2021-03-28 17:52:30.504387', '菜单管理', '/admin/permission/menus/66/', '{\'id\': 66, \'create_datetime\': \'2021-03-16 14:33:05\', \'update_datetime\': \'2021-03-16 14:33:05\', \'dept_belong_id\': \'1\', \'menuType\': \'0\', \'icon\': \'monitor\', \'name\': \'系统监控\', \'orderNum\': 3, \'isFrame\': \'1\', \'web_path\': \'monitor\', \'component_path\': None, \'interface_path\': None, \'interface_method\': \'GET\', \'perms\': None, \'status\': \'1\', \'visible\': \'0\', \'isCache\': \'1\'}', 'PUT', 'CustomModelViewSet日志系统:用户[username=admin]更新菜单管理:[系统监控]', '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (26, '', NULL, '8', '2021-03-28 21:12:28.980713', '2021-03-28 21:12:28.980713', NULL, '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'20\', \'idKeyC\': \'c55f693dbbff20708b436849c3973589aac9bd32\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', ' 本机地址', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (27, '', NULL, '8', '2021-08-19 02:11:16.227101', '2021-08-19 02:11:16.227101', NULL, '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'1\', \'idKeyC\': \'c8ecee5bdaa37dbb5068167678c43bbddaa321dc\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', '', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (28, '', NULL, NULL, '2021-08-20 16:31:16.847396', '2021-08-20 16:31:16.847396', '', '/admin/logout/', '{}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '401', '', 'Windows 10', '{\'code\': 401, \'msg\': ErrorDetail(string=\'Signature has expired.\', code=\'authentication_failed\')}', 0, NULL);
INSERT INTO `system_operationlog` VALUES (29, '', NULL, '8', '2021-08-20 16:31:26.141012', '2021-08-20 16:31:26.141012', NULL, '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'14\', \'idKeyC\': \'aad9eff076376ea1814548b960d6b7b2ab8b55d9\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', '', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (30, '', NULL, '8', '2021-08-20 16:47:47.676607', '2021-08-20 16:47:47.676607', NULL, '/admin/logout/', '{}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', '', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);
INSERT INTO `system_operationlog` VALUES (31, '', NULL, '8', '2021-08-20 16:48:57.359620', '2021-08-20 16:48:57.359620', NULL, '/admin/login/', '{\'username\': \'admin\', \'password\': \'******\', \'idValueC\': \'3\', \'idKeyC\': \'b9ec5bfeae8b84bbbee4362cd376bdc683588b8e\'}', 'POST', NULL, '127.0.0.1', 'Chrome 86.0.4240', '200', '', 'Windows 10', '{\'code\': 200, \'msg\': \'success\'}', 1, 1);

-- ----------------------------
-- Table structure for system_savefile
-- ----------------------------
DROP TABLE IF EXISTS `system_savefile`;
CREATE TABLE `system_savefile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `size` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `oss_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_savefile_creator_id_d4528ca5`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for system_webset
-- ----------------------------
DROP TABLE IF EXISTS `system_webset`;
CREATE TABLE `system_webset`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `web_site` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `logo` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `record_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `statistics_code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `copyright_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `creator_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `system_webset_creator_id_c9518cae`(`creator_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
