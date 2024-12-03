/*
 Navicat Premium Data Transfer

 Source Server         : ploardb
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : smd-mt.rwlb.zhangbei.rds.aliyuncs.com:3306
 Source Schema         : momentum

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 26/11/2024 22:26:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clk_word
-- ----------------------------
DROP TABLE IF EXISTS `clk_word`;
CREATE TABLE `clk_word` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(512) DEFAULT NULL,
  `tips` varchar(800) DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clk_word
-- ----------------------------
BEGIN;
INSERT INTO `clk_word` VALUES (1, 'apple', 'n.苹果', 6, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (2, 'strong', 'adj. 强壮的,adv.大大地', 4, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (3, 'people', 'n. 人；人们；人民，国民', 3, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (4, 'diaper', '尿布', 3, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (5, 'duck', '鸭子', 5, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (6, 'witch', '女巫', 1, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (7, 'homework', 'n.家庭作业；', 6, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (8, 'shoes', 'n.鞋', 5, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (9, 'look', 'v.看；寻找；寻求；', 2, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (10, 'fly', 'v.飞；(在空中或宇宙)飞行，航行；', 3, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (11, 'china', 'n. 中国', 1, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (12, 'kite', 'n.风筝；', 3, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (13, 'bamboo', 'n.竹，竹子；竹竿', 1, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (14, 'colorful', 'adj.丰富多彩的，五彩斑斓的', 3, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (15, 'sky', 'n.天；天空', 2, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (16, 'shape', 'n.形状，（人或物的）特有形状；', 0, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (17, 'message', 'n.消息；', 1, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (18, 'air', 'n.空气；(飞行的)空中；', 1, '2024-11-25 15:27:02');
INSERT INTO `clk_word` VALUES (21, 'audio', 'noun: 音频', 2, '2024-11-25 16:03:02');
INSERT INTO `clk_word` VALUES (22, 'need', 'verb: 需要', 2, '2024-11-25 16:11:12');
INSERT INTO `clk_word` VALUES (23, 'strong', 'adjective, 强壮的', 4, '2024-11-25 16:12:16');
INSERT INTO `clk_word` VALUES (24, 'percent', 'noun: 百分比', 2, '2024-11-26 18:56:40');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
