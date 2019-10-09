/*
Navicat MySQL Data Transfer

Source Server         : pyda
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : pyda

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-09-29 20:44:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acode_code
-- ----------------------------
DROP TABLE IF EXISTS `acode_code`;
CREATE TABLE `acode_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `knowledge` varchar(512) NOT NULL,
  `text` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acode_code
-- ----------------------------
INSERT INTO `acode_code` VALUES ('1', '2', '11');
INSERT INTO `acode_code` VALUES ('2', '1', '22');
INSERT INTO `acode_code` VALUES ('3', '3333', '33');
INSERT INTO `acode_code` VALUES ('4', '2222', '44');
INSERT INTO `acode_code` VALUES ('5', '1111', '55');

-- ----------------------------
-- Table structure for acode_code_work
-- ----------------------------
DROP TABLE IF EXISTS `acode_code_work`;
CREATE TABLE `acode_code_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(512) NOT NULL,
  `submit_time` time(6) NOT NULL,
  `result` varchar(100) NOT NULL,
  `user` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of acode_code_work
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 用户', '7', 'add_user');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 用户', '7', 'change_user');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 用户', '7', 'delete_user');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 用户', '7', 'view_user');
INSERT INTO `auth_permission` VALUES ('29', 'Can add answer', '8', 'add_answer');
INSERT INTO `auth_permission` VALUES ('30', 'Can change answer', '8', 'change_answer');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete answer', '8', 'delete_answer');
INSERT INTO `auth_permission` VALUES ('32', 'Can view answer', '8', 'view_answer');
INSERT INTO `auth_permission` VALUES ('33', 'Can add question', '9', 'add_question');
INSERT INTO `auth_permission` VALUES ('34', 'Can change question', '9', 'change_question');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete question', '9', 'delete_question');
INSERT INTO `auth_permission` VALUES ('36', 'Can view question', '9', 'view_question');
INSERT INTO `auth_permission` VALUES ('37', 'Can add captcha store', '10', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('38', 'Can change captcha store', '10', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete captcha store', '10', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('40', 'Can view captcha store', '10', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('41', 'Can add comments', '11', 'add_comments');
INSERT INTO `auth_permission` VALUES ('42', 'Can change comments', '11', 'change_comments');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete comments', '11', 'delete_comments');
INSERT INTO `auth_permission` VALUES ('44', 'Can view comments', '11', 'view_comments');
INSERT INTO `auth_permission` VALUES ('45', 'Can add paper sheet', '12', 'add_papersheet');
INSERT INTO `auth_permission` VALUES ('46', 'Can change paper sheet', '12', 'change_papersheet');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete paper sheet', '12', 'delete_papersheet');
INSERT INTO `auth_permission` VALUES ('48', 'Can view paper sheet', '12', 'view_papersheet');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 题库', '13', 'add_question_bank');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 题库', '13', 'change_question_bank');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 题库', '13', 'delete_question_bank');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 题库', '13', 'view_question_bank');
INSERT INTO `auth_permission` VALUES ('53', 'Can add resources_mp4', '14', 'add_resources_mp4');
INSERT INTO `auth_permission` VALUES ('54', 'Can change resources_mp4', '14', 'change_resources_mp4');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete resources_mp4', '14', 'delete_resources_mp4');
INSERT INTO `auth_permission` VALUES ('56', 'Can view resources_mp4', '14', 'view_resources_mp4');
INSERT INTO `auth_permission` VALUES ('57', 'Can add resources_pdf', '15', 'add_resources_pdf');
INSERT INTO `auth_permission` VALUES ('58', 'Can change resources_pdf', '15', 'change_resources_pdf');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete resources_pdf', '15', 'delete_resources_pdf');
INSERT INTO `auth_permission` VALUES ('60', 'Can view resources_pdf', '15', 'view_resources_pdf');
INSERT INTO `auth_permission` VALUES ('61', 'Can add resources_txt', '16', 'add_resources_txt');
INSERT INTO `auth_permission` VALUES ('62', 'Can change resources_txt', '16', 'change_resources_txt');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete resources_txt', '16', 'delete_resources_txt');
INSERT INTO `auth_permission` VALUES ('64', 'Can view resources_txt', '16', 'view_resources_txt');
INSERT INTO `auth_permission` VALUES ('65', 'Can add evaluation table', '17', 'add_evaluationtable');
INSERT INTO `auth_permission` VALUES ('66', 'Can change evaluation table', '17', 'change_evaluationtable');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete evaluation table', '17', 'delete_evaluationtable');
INSERT INTO `auth_permission` VALUES ('68', 'Can view evaluation table', '17', 'view_evaluationtable');
INSERT INTO `auth_permission` VALUES ('69', 'Can add analysis table', '18', 'add_analysistable');
INSERT INTO `auth_permission` VALUES ('70', 'Can change analysis table', '18', 'change_analysistable');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete analysis table', '18', 'delete_analysistable');
INSERT INTO `auth_permission` VALUES ('72', 'Can view analysis table', '18', 'view_analysistable');
INSERT INTO `auth_permission` VALUES ('73', 'Can add exam exam', '19', 'add_examexam');
INSERT INTO `auth_permission` VALUES ('74', 'Can change exam exam', '19', 'change_examexam');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete exam exam', '19', 'delete_examexam');
INSERT INTO `auth_permission` VALUES ('76', 'Can view exam exam', '19', 'view_examexam');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$120000$jpcEhXYnl82p$FEi+zdDGaOIlHBUJSlDv236336yvhaU40QbEyHlIA1k=', '2019-09-29 13:22:51.431173', '1', 'admin1', '', '', '3124123@qq.com', '1', '1', '2019-09-29 13:22:41.628151');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('3', 'JYLI', 'jyli', '04677f9c31e2088609f9e6326ad2408de640a848', '2019-09-29 19:17:52.996441');

-- ----------------------------
-- Table structure for content_manage_analysistable
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_analysistable`;
CREATE TABLE `content_manage_analysistable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tester` varchar(255) NOT NULL,
  `is_right` varchar(1) NOT NULL,
  `title_id` varchar(11) NOT NULL,
  `testpaper_id` varchar(11) NOT NULL,
  `q_b_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_manage_analy_q_b_id_1e86684c_fk_content_m` (`q_b_id`),
  CONSTRAINT `content_manage_analy_q_b_id_1e86684c_fk_content_m` FOREIGN KEY (`q_b_id`) REFERENCES `content_manage_question_bank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_analysistable
-- ----------------------------
INSERT INTO `content_manage_analysistable` VALUES ('1', '13', '0', '2', '1', '2');
INSERT INTO `content_manage_analysistable` VALUES ('2', '13', '0', '2', '1', '2');
INSERT INTO `content_manage_analysistable` VALUES ('3', '13', '0', '2', '1', '2');

-- ----------------------------
-- Table structure for content_manage_comments
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_comments`;
CREATE TABLE `content_manage_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `to_uid` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `from_table` varchar(40) NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `from_cid` int(11) NOT NULL,
  `from_uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_manage_comments_from_uid_id_613f9509_fk_user_user_id` (`from_uid_id`),
  CONSTRAINT `content_manage_comments_from_uid_id_613f9509_fk_user_user_id` FOREIGN KEY (`from_uid_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_comments
-- ----------------------------

-- ----------------------------
-- Table structure for content_manage_evaluationtable
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_evaluationtable`;
CREATE TABLE `content_manage_evaluationtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluator` varchar(255) NOT NULL,
  `evaluation_time` datetime(6) NOT NULL,
  `evaluation_content` varchar(255) NOT NULL,
  `paper_sheet_id` int(11) NOT NULL,
  `p_s_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_manage_evalu_p_s_id_2256386f_fk_content_m` (`p_s_id`),
  CONSTRAINT `content_manage_evalu_p_s_id_2256386f_fk_content_m` FOREIGN KEY (`p_s_id`) REFERENCES `content_manage_papersheet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_evaluationtable
-- ----------------------------
INSERT INTO `content_manage_evaluationtable` VALUES ('1', '312312', '2019-09-29 13:48:19.196135', '412412', '1', '1');

-- ----------------------------
-- Table structure for content_manage_examexam
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_examexam`;
CREATE TABLE `content_manage_examexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `exam_number` varchar(255) NOT NULL,
  `C_answer` varchar(255) DEFAULT NULL,
  `F_answer` varchar(255) DEFAULT NULL,
  `J_answer` varchar(255) DEFAULT NULL,
  `true_number` varchar(255) NOT NULL,
  `sumbit_time` datetime(6) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `right_r` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_examexam
-- ----------------------------
INSERT INTO `content_manage_examexam` VALUES ('1', '13', '4', '2', null, null, '12', '2019-09-29 13:53:23.000000', '23', '321', 'dqwe');

-- ----------------------------
-- Table structure for content_manage_papersheet
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_papersheet`;
CREATE TABLE `content_manage_papersheet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_score` int(11) NOT NULL,
  `judgment_score` int(11) NOT NULL,
  `fillin_score` int(11) NOT NULL,
  `total_score` int(11) NOT NULL,
  `choice_title` varchar(255) NOT NULL,
  `judgment_title` varchar(255) NOT NULL,
  `fillin_title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `scopeof_topics` varchar(255) NOT NULL,
  `choice_ans` varchar(255) NOT NULL,
  `judgment_ans` varchar(255) NOT NULL,
  `fillin_ans` varchar(255) NOT NULL,
  `q_b_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_manage_paper_q_b_id_c6fd2532_fk_content_m` (`q_b_id`),
  CONSTRAINT `content_manage_paper_q_b_id_c6fd2532_fk_content_m` FOREIGN KEY (`q_b_id`) REFERENCES `content_manage_question_bank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_papersheet
-- ----------------------------
INSERT INTO `content_manage_papersheet` VALUES ('1', '2', '1', '3', '30', '2,3,4,', '1,7,', '5,6,', '312', 'D,E', '2', '', '', '2');

-- ----------------------------
-- Table structure for content_manage_question_bank
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_question_bank`;
CREATE TABLE `content_manage_question_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  `test_Ch` int(11) NOT NULL,
  `test_Fill` int(11) NOT NULL,
  `test_TOF` int(11) NOT NULL,
  `Choice_A` varchar(200) NOT NULL,
  `Choice_B` varchar(200) NOT NULL,
  `Choice_C` varchar(200) NOT NULL,
  `Choice_D` varchar(200) NOT NULL,
  `right_Choice` varchar(20) NOT NULL,
  `counter` int(11) NOT NULL,
  `right_counter` int(11) NOT NULL,
  `classify` varchar(20) NOT NULL,
  `from_uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_manage_quest_from_uid_id_2c69f5ab_fk_user_user` (`from_uid_id`),
  CONSTRAINT `content_manage_quest_from_uid_id_2c69f5ab_fk_user_user` FOREIGN KEY (`from_uid_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_question_bank
-- ----------------------------
INSERT INTO `content_manage_question_bank` VALUES ('1', '2131', '1', '1', '1', '1321', '3124', '4124', '412', 'A', '1', '1', 'A', '1');
INSERT INTO `content_manage_question_bank` VALUES ('2', '1', '1', '1', '1', '1', '11', '111', '1111', 'D', '2', '1', 'B', '1');
INSERT INTO `content_manage_question_bank` VALUES ('3', '2', '1', '1', '1', '2', '22', '222', '2222', 'C', '3', '1', 'C', '1');
INSERT INTO `content_manage_question_bank` VALUES ('4', '3', '1', '1', '1', '3', '33', '333', '3333', 'C', '4', '1', 'C', '1');
INSERT INTO `content_manage_question_bank` VALUES ('5', '4', '1', '1', '1', '4', '44', '444', '4444', 'C', '5', '1', 'D', '1');
INSERT INTO `content_manage_question_bank` VALUES ('6', '5', '1', '1', '1', '5', '55', '555', '5555', 'C', '6', '1', 'E', '1');
INSERT INTO `content_manage_question_bank` VALUES ('7', '6', '1', '1', '1', '6', '66', '666', '6666', 'C', '7', '1', 'F', '1');
INSERT INTO `content_manage_question_bank` VALUES ('8', '7', '1', '1', '1', '7', '77', '777', '7777', 'A', '8', '1', 'A', '1');
INSERT INTO `content_manage_question_bank` VALUES ('9', '8', '1', '1', '1', '8', '88', '888', '8888', 'B', '9', '1', 'B', '1');

-- ----------------------------
-- Table structure for content_manage_resources_mp4
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_resources_mp4`;
CREATE TABLE `content_manage_resources_mp4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `resources_path` varchar(200) NOT NULL,
  `download_counter` int(11) NOT NULL,
  `classify` varchar(20) NOT NULL,
  `from_uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_manage_resou_from_uid_id_a7a0e36f_fk_user_user` (`from_uid_id`),
  CONSTRAINT `content_manage_resou_from_uid_id_a7a0e36f_fk_user_user` FOREIGN KEY (`from_uid_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_resources_mp4
-- ----------------------------

-- ----------------------------
-- Table structure for content_manage_resources_pdf
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_resources_pdf`;
CREATE TABLE `content_manage_resources_pdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `resources_path` varchar(200) NOT NULL,
  `download_counter` int(11) NOT NULL,
  `classify` varchar(20) NOT NULL,
  `from_uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_manage_resou_from_uid_id_8bc2d879_fk_user_user` (`from_uid_id`),
  CONSTRAINT `content_manage_resou_from_uid_id_8bc2d879_fk_user_user` FOREIGN KEY (`from_uid_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_resources_pdf
-- ----------------------------

-- ----------------------------
-- Table structure for content_manage_resources_txt
-- ----------------------------
DROP TABLE IF EXISTS `content_manage_resources_txt`;
CREATE TABLE `content_manage_resources_txt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `resources_path` varchar(200) NOT NULL,
  `download_counter` int(11) NOT NULL,
  `classify` varchar(20) NOT NULL,
  `from_uid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `content_manage_resou_from_uid_id_47686fe6_fk_user_user` (`from_uid_id`),
  CONSTRAINT `content_manage_resou_from_uid_id_47686fe6_fk_user_user` FOREIGN KEY (`from_uid_id`) REFERENCES `user_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of content_manage_resources_txt
-- ----------------------------
INSERT INTO `content_manage_resources_txt` VALUES ('1', '21321', 'C:\\\\Users\\\\吴清典\\\\Desktop\\\\PyDA（合成）\\\\PyDA\\\\PyDA\\\\PyDA\\\\1710121108-闫相佩-javaweb-实验一', '0', 'C', '1');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-09-29 13:25:18.830407', '2', '2131', '1', '[{\"added\": {}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-09-29 13:46:47.569307', '2', '2131', '2', '[{\"changed\": {\"fields\": [\"counter\", \"right_counter\"]}}]', '13', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-09-29 14:07:48.619548', '1', '21321', '1', '[{\"added\": {}}]', '16', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('10', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('18', 'content_manage', 'analysistable');
INSERT INTO `django_content_type` VALUES ('11', 'content_manage', 'comments');
INSERT INTO `django_content_type` VALUES ('17', 'content_manage', 'evaluationtable');
INSERT INTO `django_content_type` VALUES ('19', 'content_manage', 'examexam');
INSERT INTO `django_content_type` VALUES ('12', 'content_manage', 'papersheet');
INSERT INTO `django_content_type` VALUES ('13', 'content_manage', 'question_bank');
INSERT INTO `django_content_type` VALUES ('14', 'content_manage', 'resources_mp4');
INSERT INTO `django_content_type` VALUES ('15', 'content_manage', 'resources_pdf');
INSERT INTO `django_content_type` VALUES ('16', 'content_manage', 'resources_txt');
INSERT INTO `django_content_type` VALUES ('8', 'exam', 'answer');
INSERT INTO `django_content_type` VALUES ('9', 'exam', 'question');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'user', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-09-29 12:58:33.131894');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-09-29 12:58:34.858451');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-09-29 12:58:35.273438');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-09-29 12:58:35.300448');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-09-29 12:58:35.326448');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-09-29 12:58:35.663537');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-09-29 12:58:35.891592');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-09-29 12:58:36.105646');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-09-29 12:58:36.129693');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-09-29 12:58:36.259687');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-09-29 12:58:36.268688');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-09-29 12:58:36.292695');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-09-29 12:58:36.573766');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-09-29 12:58:36.778821');
INSERT INTO `django_migrations` VALUES ('15', 'captcha', '0001_initial', '2019-09-29 12:58:36.873843');
INSERT INTO `django_migrations` VALUES ('16', 'user', '0001_initial', '2019-09-29 12:58:36.981871');
INSERT INTO `django_migrations` VALUES ('17', 'content_manage', '0001_initial', '2019-09-29 12:58:38.451242');
INSERT INTO `django_migrations` VALUES ('18', 'exam', '0001_initial', '2019-09-29 12:58:38.738317');
INSERT INTO `django_migrations` VALUES ('19', 'sessions', '0001_initial', '2019-09-29 12:58:38.838341');
INSERT INTO `django_migrations` VALUES ('20', 'content_manage', '0002_auto_20190929_1302', '2019-09-29 13:02:35.893193');
INSERT INTO `django_migrations` VALUES ('21', 'content_manage', '0003_auto_20190929_1304', '2019-09-29 13:04:13.980050');
INSERT INTO `django_migrations` VALUES ('22', 'content_manage', '0003_auto_20190929_1305', '2019-09-29 13:05:11.738683');
INSERT INTO `django_migrations` VALUES ('23', 'content_manage', '0004_auto_20190929_1315', '2019-09-29 13:15:18.324518');
INSERT INTO `django_migrations` VALUES ('24', 'Acode', '0001_initial', '2019-09-29 19:49:10.424814');
INSERT INTO `django_migrations` VALUES ('25', 'content_manage', '0005_auto_20190929_1948', '2019-09-29 19:49:10.487291');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0kd1tivv3a0c7rguwuln3lsgqpotd0a5', 'Zjk3ZTlkYTY4ZDA4MzFmZmQ0ZmZjM2E4MDM1NjA5MzVlMjQ0ZjEwNzp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyX2lkIjoyLCJ1c2VyX25hbWUiOiIxIn0=', '2019-10-13 19:13:55.096584');
INSERT INTO `django_session` VALUES ('xfbx3naxwxd5fj1pbwltt16evyvwjy3q', 'ZWM2ODRjNTgxYjAxYmM2ZjJjOTIyNGMxMzllOTBjNzE0OTYzM2Q5Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZTA4ZDc1MDhjMzk3MDQ5YTNlYjA0YzJhYjlhN2ZhYmZkOTE2OTlhIiwiaXNfbG9naW4iOnRydWUsInVzZXJfaWQiOjEsInVzZXJfbmFtZSI6ImFkbWluMSIsIm1lc3NhZ2UiOiIifQ==', '2019-10-13 14:08:04.888752');

-- ----------------------------
-- Table structure for exam_answer
-- ----------------------------
DROP TABLE IF EXISTS `exam_answer`;
CREATE TABLE `exam_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(128) NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_answer_question_id_df7a0005_fk_exam_question_id` (`question_id`),
  CONSTRAINT `exam_answer_question_id_df7a0005_fk_exam_question_id` FOREIGN KEY (`question_id`) REFERENCES `exam_question` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_answer
-- ----------------------------

-- ----------------------------
-- Table structure for exam_exam
-- ----------------------------
DROP TABLE IF EXISTS `exam_exam`;
CREATE TABLE `exam_exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `exam_number` varchar(128) NOT NULL,
  `C_answer` varchar(128) NOT NULL,
  `F_answer` varchar(128) NOT NULL,
  `J_answer` varchar(128) NOT NULL,
  `true_number` varchar(250) NOT NULL,
  `submit_time` time(6) NOT NULL,
  `teacher` varchar(128) NOT NULL,
  `score` varchar(128) NOT NULL,
  `right_r` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_exam
-- ----------------------------
INSERT INTO `exam_exam` VALUES ('1', '1', '', 'C,C,C,C,', 'C,1,', 'T,T,', '3 ', '20:36:12.000000', '', '2', '0.125');

-- ----------------------------
-- Table structure for exam_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(32) NOT NULL,
  `question_text` varchar(512) NOT NULL,
  `question_answer` varchar(128) NOT NULL,
  `question_a` varchar(64) NOT NULL,
  `question_b` varchar(64) NOT NULL,
  `question_c` varchar(64) NOT NULL,
  `question_d` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_question
-- ----------------------------

-- ----------------------------
-- Table structure for user_user
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(254) NOT NULL,
  `sex` varchar(32) NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `is_work` int(11) NOT NULL,
  `not_solve` int(11) NOT NULL,
  `is_exam` tinyint(1) NOT NULL,
  `is_student` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_user
-- ----------------------------
INSERT INTO `user_user` VALUES ('1', 'admin1', '1146fcba660bc0b5f0d45d77eccf6d7353c5bce55f6e2a58fb42106af0abdd2e', '416466413@qq.com', 'male', '2019-09-29 13:24:57.429952', '0', '0', '0', '1');
INSERT INTO `user_user` VALUES ('2', '1', '1146fcba660bc0b5f0d45d77eccf6d7353c5bce55f6e2a58fb42106af0abdd2e', '123456@qq.com', 'male', '2019-09-29 19:13:39.264986', '8', '7', '0', '1');
