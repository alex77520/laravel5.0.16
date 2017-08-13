/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : laravel5

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-12-27 00:52:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', 'name 111', '132613150@163.com', 'page 111111', '评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论评论', '2', '2016-12-06 10:19:11', '2016-12-06 10:19:11');
INSERT INTO `comments` VALUES ('2', 'Hi', '132613150@163.com', 'page 1111回复哈哈哈哈哈', '@name 111  来信已收到，我就不说话了', '2', '2016-12-06 10:30:22', '2016-12-06 10:32:24');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2016_12_05_161656_create_users_table', '2');
INSERT INTO `migrations` VALUES ('2016_12_06_100608_create_articles_table', '2');
INSERT INTO `migrations` VALUES ('2016_12_06_100622_create_pages_table', '2');
INSERT INTO `migrations` VALUES ('2016_12_06_180816_create_comments_table', '3');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('1', 'Title 0', 'first-page', 'Body 0', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('2', 'Title 1', 'first-page', 'Body 1', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('3', 'Title 2', 'first-page', 'Body 2', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('4', 'Title 3', 'first-page', 'Body 3', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('5', 'Title 4', 'first-page', 'Body 4', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('6', 'Title 5', 'first-page', 'Body 5', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('7', 'Title 6', 'first-page', 'Body 6', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('8', 'Title 7', 'first-page', 'Body 7', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('9', 'Title 8', 'first-page', 'Body 8', '1', '2016-12-06 02:13:15', '2016-12-06 02:13:15');
INSERT INTO `pages` VALUES ('11', 'Title 10', null, '101010101010hahahhahahaahtedst', '1', '2016-12-06 09:24:48', '2016-12-06 09:31:05');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Ten', '1360920478@qq.com', '$2y$10$gKcRtzFMlzQqMxHOs4tQFO5.5rSJzSpFPiF7uzT8El1vQx0y1zVQm', 'opafTfoNKQcBsYSI4CClbN3QMjMAJBNRj3wkJmTju1rQIWqtjxdh1Xl4M1t9', '2016-12-06 02:34:50', '2016-12-26 16:50:41');
