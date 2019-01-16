/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : lronelove

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 16/01/2019 15:13:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文章内容',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'lronelove' COMMENT '作者',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '文章图片',
  `status` tinyint(10) NOT NULL DEFAULT '1' COMMENT '0删除，1存在',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES (1, '萤火虫', '2019-01-16 09:10:52', '萤火虫', 'lronelove', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3188760330,463914582&fm=27&gp=0.jpg', 1);
INSERT INTO `article` VALUES (2, '碎忆', '2019-01-16 12:46:15', 'jack', 'lronelove', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3188760330,463914582&fm=27&gp=0.jpg', 1);
INSERT INTO `article` VALUES (3, '美美', '2018-01-16 09:14:33', '美美', 'lronelove', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3188760330,463914582&fm=27&gp=0.jpg', 1);
COMMIT;

-- ----------------------------
-- Table structure for year_slogan
-- ----------------------------
DROP TABLE IF EXISTS `year_slogan`;
CREATE TABLE `year_slogan` (
  `year` int(5) NOT NULL COMMENT '年',
  `slogan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '当年口号',
  PRIMARY KEY (`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of year_slogan
-- ----------------------------
BEGIN;
INSERT INTO `year_slogan` VALUES (2018, '流年碎忆，2018');
INSERT INTO `year_slogan` VALUES (2019, '平淡是真，2019');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
