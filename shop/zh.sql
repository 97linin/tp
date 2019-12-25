/*
 Navicat Premium Data Transfer

 Source Server         : tp51
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : zh

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 13/12/2019 15:30:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for zh_article
-- ----------------------------
DROP TABLE IF EXISTS `zh_article`;
CREATE TABLE `zh_article`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题图片',
  `is_host` int(4) NULL DEFAULT 0 COMMENT '是否热门1是0否',
  `is_top` int(4) NULL DEFAULT 0 COMMENT '是否置顶1是0否',
  `cate_id` int(8) NULL DEFAULT NULL COMMENT '栏目主键',
  `user_id` int(8) NULL DEFAULT NULL COMMENT '用户主键',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品内容',
  `price` int(10) NULL DEFAULT NULL COMMENT '商品价格',
  `pv` int(10) NULL DEFAULT NULL COMMENT '阅读量',
  `status` int(4) NULL DEFAULT NULL COMMENT '状态1显示0关闭',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_article
-- ----------------------------
INSERT INTO `zh_article` VALUES (29, '20191213\\659d487d28274b1ee15258c30818bcd0.jpg', 0, 0, 1, 41, '潮流男士夹克', '穿上去会更帅哦', 199, 111, 1, 1576213014, 1576213014);
INSERT INTO `zh_article` VALUES (30, '20191213\\e1bd16ae8f6801c4c542658bd28f7a33.jpg', 0, 0, 1, 41, '夹克夹克夹克', '穿上去会更帅哦', 999, 111, 1, 1576213089, 1576213089);
INSERT INTO `zh_article` VALUES (31, '20191213\\852eb9aa9a04a3ea026a41123f7882fd.jpg', 0, 0, 2, 41, '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣', 555, 111, 1, 1576213146, 1576213146);
INSERT INTO `zh_article` VALUES (32, '20191213\\2ad40b0f3e7d7d6b16cb4b06af3dbf86.jpg', 0, 0, 2, 41, '女生潮流夹克', '女生潮流夹克女生潮流夹克', 333, 112, 1, 1576213179, 1576213179);
INSERT INTO `zh_article` VALUES (33, '20191213\\7af4afac6e6e40b60997f943b45fdec8.jpg', 0, 0, 1, 41, '女生潮流夹克', '女生潮流夹克女生潮流夹克', 5555, 126, 1, 1576213218, 1576213218);
INSERT INTO `zh_article` VALUES (34, '20191213\\7ede0afb1f111f88f0a4a144f44f9ce0.jpg', 0, 0, 2, 41, '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣女生潮流卫衣', 55, 124, 1, 1576213244, 1576213244);
INSERT INTO `zh_article` VALUES (35, '20191213\\f5157893d55bff90952c3945b13c85fa.jpg', 0, 0, 3, 41, '童装系列童装系列', '童装系列童装系列童装系列', 22, 125, 1, 1576213279, 1576213279);
INSERT INTO `zh_article` VALUES (36, '20191213\\eea43fcc32111d1f8b5d37fa1bb40a8d.jpg', 0, 0, 3, 41, '童装系列童装系列', '童装系列童装系列童装系列童装系列', 99, 136, 1, 1576213319, 1576213319);
INSERT INTO `zh_article` VALUES (37, '20191213\\df19f1a47b56dbc204557e24f002e363.jpg', 0, 0, 2, 41, '女装女装女装', '女装女装女装女装女装女装女装女装女装', 7777, 156, 1, 1576213359, 1576213637);
INSERT INTO `zh_article` VALUES (38, '20191213\\63329bf73290ff4fbd1a3339c31165d9.jpg', 0, 0, 2, 41, '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣女生潮流卫衣', 77, 777, 1, 1576213675, 1576213675);
INSERT INTO `zh_article` VALUES (39, '20191213\\26c5612780b21c4ee51de260e92b2b77.jpg', 0, 0, 1, 41, '男生潮流卫衣', '                   女生潮流卫衣女生潮流卫衣女生潮流卫衣                ', 99, 236, 1, 1576213704, 1576213902);
INSERT INTO `zh_article` VALUES (40, '20191213\\7d4db976b818af758b64cd7b8eab0e7b.jpg', 0, 0, 9, 41, '男毛衣男生毛衣', '                   男毛衣男生毛衣男毛衣男生毛衣男毛衣男生毛衣                ', 66, 13246, 1, 1576213847, 1576213985);
INSERT INTO `zh_article` VALUES (41, '20191213\\446ae7185afbe63d324d56f103d212a1.jpg', 0, 0, 2, 41, '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣', 666, 4325, 1, 1576214009, 1576214009);
INSERT INTO `zh_article` VALUES (42, '20191213\\642365a475803ea2e93a316a24d25bd1.jpg', 0, 0, 11, 41, '袜子袜子袜子', '袜子袜子袜子袜子', 6666, 3424, 1, 1576214072, 1576214072);
INSERT INTO `zh_article` VALUES (43, '20191213\\edd403d65c5bc8daaa3c6cd4fbe72c73.jpg', 0, 0, 11, 41, '袜子袜子袜子', '袜子袜子袜子袜子', 333, 44, 1, 1576214098, 1576214098);
INSERT INTO `zh_article` VALUES (44, '20191213\\1fedce64efc87e1c5c2746ab0d9439db.jpg', 0, 0, 1, 41, '男生潮流夹克', '      女生潮流夹克女生潮流夹克        ', 111, 73, 1, 1576214141, 1576214218);
INSERT INTO `zh_article` VALUES (45, '20191213\\9ffce8335c18c51fd7dbb26c89aefd40.jpg', 0, 0, 10, 41, '男士内裤男士内裤', '男士内裤男士内裤男士内裤', 222, 2507, 1, 1576214297, 1576214297);

-- ----------------------------
-- Table structure for zh_article_category
-- ----------------------------
DROP TABLE IF EXISTS `zh_article_category`;
CREATE TABLE `zh_article_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户主键',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '栏目名称',
  `sort` int(255) NULL DEFAULT NULL COMMENT '栏目排序',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态1启用0禁用',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_article_category
-- ----------------------------
INSERT INTO `zh_article_category` VALUES (1, 0, '男士外套', 1, 1, 1575951252, NULL);
INSERT INTO `zh_article_category` VALUES (2, 0, '女生外套', 2, 1, 1575951252, NULL);
INSERT INTO `zh_article_category` VALUES (3, 0, '童装', 9, 1, 1575951252, NULL);
INSERT INTO `zh_article_category` VALUES (9, NULL, '毛衣', 4, 1, 1576135096, 1576135096);
INSERT INTO `zh_article_category` VALUES (10, NULL, '内裤', 6, 1, 1576141791, 1576141791);
INSERT INTO `zh_article_category` VALUES (11, NULL, '袜子', 8, 1, 1576142051, 1576142051);

-- ----------------------------
-- Table structure for zh_user
-- ----------------------------
DROP TABLE IF EXISTS `zh_user`;
CREATE TABLE `zh_user`  (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `password` char(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `status` int(11) NULL DEFAULT 1 COMMENT '状态1启用0禁用',
  `is_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否是管理员',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zh_user
-- ----------------------------
INSERT INTO `zh_user` VALUES (40, 'hunagjiehua', '123456@qq.com', '13549903721', '4694c6087f568151a105d90c753bffc4ad218478', 1, '0', 1576141533, 1576141533);
INSERT INTO `zh_user` VALUES (41, 'huangjie', '1234567@qq.com', '13549903713', 'e5b4c22434b5f3d8f87e52d6d1f6a81331fbb6d2', 1, '1', 1576141628, 1576141628);
INSERT INTO `zh_user` VALUES (43, 'ccccc', 'ccccc@qq.com', '13548890495', '360e46f15f432af83c77017177a759aba8a58519', 1, '0', 1576157542, 1576157542);
INSERT INTO `zh_user` VALUES (44, 'vbnvbn', 'vbnvbn@qq.com', '13547784932', '4694c6087f568151a105d90c753bffc4ad218478', 1, '0', 1576158028, 1576158028);

-- ----------------------------
-- Table structure for zh_user_comments
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_comments`;
CREATE TABLE `zh_user_comments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户主键',
  `art_id` int(11) NULL DEFAULT NULL COMMENT '文档主键',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '评论内容',
  `reply_id` int(11) NULL DEFAULT NULL COMMENT '回复id',
  `status` int(11) NULL DEFAULT NULL COMMENT '1显示0隐藏',
  `create_time` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zh_user_fav
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_fav`;
CREATE TABLE `zh_user_fav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户主键',
  `article_id` int(11) NULL DEFAULT NULL COMMENT '文档主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of zh_user_fav
-- ----------------------------
INSERT INTO `zh_user_fav` VALUES (20, 41, 28);
INSERT INTO `zh_user_fav` VALUES (50, 41, 45);

-- ----------------------------
-- Table structure for zh_user_like
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_like`;
CREATE TABLE `zh_user_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户主键',
  `article_id` int(11) NULL DEFAULT NULL COMMENT '文档主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of zh_user_like
-- ----------------------------
INSERT INTO `zh_user_like` VALUES (18, 41, 45);
INSERT INTO `zh_user_like` VALUES (9, 30, 15);

SET FOREIGN_KEY_CHECKS = 1;
