/*
Navicat MySQL Data Transfer

Source Server         : tp51
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : zh

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-12-19 14:52:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zh_article
-- ----------------------------
DROP TABLE IF EXISTS `zh_article`;
CREATE TABLE `zh_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title_img` varchar(255) DEFAULT NULL COMMENT '标题图片',
  `is_host` int(4) DEFAULT '0' COMMENT '是否热门1是0否',
  `is_top` int(4) DEFAULT '0' COMMENT '是否置顶1是0否',
  `cate_id` int(8) DEFAULT NULL COMMENT '栏目主键',
  `user_id` int(8) DEFAULT NULL COMMENT '用户主键',
  `title` varchar(255) DEFAULT NULL COMMENT '商品标题',
  `content` text COMMENT '商品内容',
  `price` int(10) DEFAULT NULL COMMENT '商品价格',
  `pv` int(10) DEFAULT NULL COMMENT '阅读量',
  `status` int(4) DEFAULT NULL COMMENT '状态1显示0关闭',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_article
-- ----------------------------
INSERT INTO `zh_article` VALUES ('29', '20191213\\659d487d28274b1ee15258c30818bcd0.jpg', '0', '0', '1', '41', '潮流男士夹克', '穿上去会更帅哦', '199', '111', '1', '1576213014', '1576213014');
INSERT INTO `zh_article` VALUES ('30', '20191213\\e1bd16ae8f6801c4c542658bd28f7a33.jpg', '0', '0', '1', '41', '夹克夹克夹克', '穿上去会更帅哦', '999', '111', '1', '1576213089', '1576213089');
INSERT INTO `zh_article` VALUES ('31', '20191213\\852eb9aa9a04a3ea026a41123f7882fd.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣', '555', '111', '1', '1576213146', '1576213146');
INSERT INTO `zh_article` VALUES ('32', '20191213\\2ad40b0f3e7d7d6b16cb4b06af3dbf86.jpg', '0', '0', '2', '41', '女生潮流夹克', '女生潮流夹克女生潮流夹克', '333', '112', '1', '1576213179', '1576213179');
INSERT INTO `zh_article` VALUES ('33', '20191213\\7af4afac6e6e40b60997f943b45fdec8.jpg', '0', '0', '1', '41', '女生潮流夹克', '女生潮流夹克女生潮流夹克', '5555', '126', '1', '1576213218', '1576213218');
INSERT INTO `zh_article` VALUES ('34', '20191213\\7ede0afb1f111f88f0a4a144f44f9ce0.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣女生潮流卫衣', '55', '130', '1', '1576213244', '1576213244');
INSERT INTO `zh_article` VALUES ('35', '20191213\\f5157893d55bff90952c3945b13c85fa.jpg', '0', '0', '3', '41', '童装系列童装系列', '童装系列童装系列童装系列', '22', '129', '1', '1576213279', '1576213279');
INSERT INTO `zh_article` VALUES ('36', '20191213\\eea43fcc32111d1f8b5d37fa1bb40a8d.jpg', '0', '0', '3', '41', '童装系列童装系列', '童装系列童装系列童装系列童装系列', '99', '146', '1', '1576213319', '1576213319');
INSERT INTO `zh_article` VALUES ('37', '20191213\\df19f1a47b56dbc204557e24f002e363.jpg', '0', '0', '2', '41', '女装女装女装', '女装女装女装女装女装女装女装女装女装', '7777', '168', '1', '1576213359', '1576213637');
INSERT INTO `zh_article` VALUES ('38', '20191213\\63329bf73290ff4fbd1a3339c31165d9.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣女生潮流卫衣', '77', '779', '1', '1576213675', '1576213675');
INSERT INTO `zh_article` VALUES ('39', '20191213\\26c5612780b21c4ee51de260e92b2b77.jpg', '0', '0', '1', '41', '男生潮流卫衣', '                   女生潮流卫衣女生潮流卫衣女生潮流卫衣                ', '99', '246', '1', '1576213704', '1576213902');
INSERT INTO `zh_article` VALUES ('40', '20191213\\7d4db976b818af758b64cd7b8eab0e7b.jpg', '0', '0', '9', '41', '男毛衣男生毛衣', '                   男毛衣男生毛衣男毛衣男生毛衣男毛衣男生毛衣                ', '66', '13247', '1', '1576213847', '1576213985');
INSERT INTO `zh_article` VALUES ('41', '20191213\\446ae7185afbe63d324d56f103d212a1.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣', '666', '4344', '1', '1576214009', '1576214009');
INSERT INTO `zh_article` VALUES ('42', '20191213\\642365a475803ea2e93a316a24d25bd1.jpg', '0', '0', '11', '41', '袜子袜子袜子', '袜子袜子袜子袜子', '6666', '3425', '1', '1576214072', '1576214072');
INSERT INTO `zh_article` VALUES ('43', '20191213\\edd403d65c5bc8daaa3c6cd4fbe72c73.jpg', '0', '0', '11', '41', '袜子袜子袜子', '袜子袜子袜子袜子', '333', '57', '1', '1576214098', '1576214098');
INSERT INTO `zh_article` VALUES ('44', '20191213\\1fedce64efc87e1c5c2746ab0d9439db.jpg', '0', '0', '1', '41', '男生潮流夹克', '      女生潮流夹克女生潮流夹克        ', '111', '252', '1', '1576214141', '1576214218');
INSERT INTO `zh_article` VALUES ('45', '20191213\\9ffce8335c18c51fd7dbb26c89aefd40.jpg', '0', '0', '10', '41', '男士内裤男士内裤', '男士内裤男士内裤男士内裤', '222', '2599', '1', '1576214297', '1576214297');
INSERT INTO `zh_article` VALUES ('46', '20191215\\cca14d763349bbe435ed9b1e801c578a.jpg', '0', '0', '2', '0', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣', null, null, null, '1576393627', '1576393627');
INSERT INTO `zh_article` VALUES ('47', '20191215\\48cd6ac4cf83b0d7f2663906dee42a86.jpg', '0', '0', '3', '0', '童装系列童装系列', '童装系列童装系列童装系列童装系列', null, null, null, '1576393647', '1576393647');
INSERT INTO `zh_article` VALUES ('48', '20191215\\13972c50d76fb5fc76e507561ea7af84.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣', null, null, null, '1576393774', '1576393774');
INSERT INTO `zh_article` VALUES ('49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣', null, null, '1', '1576393867', '1576393867');
INSERT INTO `zh_article` VALUES ('50', '20191215\\a1a7f3e4b58de2bb64c21221f9a912ea.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣', '123', null, '1', '1576396054', '1576396054');
INSERT INTO `zh_article` VALUES ('51', '20191215\\987f593c23c1d530863ac254fa54e2e8.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣女生潮流卫衣', '123', null, '1', '1576413981', '1576413981');
INSERT INTO `zh_article` VALUES ('52', '20191215\\08ab23242b901a0d2daf662fa5c032d8.jpg', '0', '0', '2', '41', '女生潮流卫衣', '女生潮流卫衣女生潮流卫衣女生潮流卫衣', '123', null, '1', '1576414016', '1576414016');

-- ----------------------------
-- Table structure for zh_article_category
-- ----------------------------
DROP TABLE IF EXISTS `zh_article_category`;
CREATE TABLE `zh_article_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户主键',
  `name` varchar(30) DEFAULT NULL COMMENT '栏目名称',
  `sort` int(255) DEFAULT NULL COMMENT '栏目排序',
  `status` int(11) DEFAULT '1' COMMENT '状态1启用0禁用',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_article_category
-- ----------------------------
INSERT INTO `zh_article_category` VALUES ('1', '0', '男士外套', '1', '1', '1575951252', null);
INSERT INTO `zh_article_category` VALUES ('2', '0', '女生外套', '2', '1', '1575951252', null);
INSERT INTO `zh_article_category` VALUES ('3', '0', '童装', '9', '1', '1575951252', null);
INSERT INTO `zh_article_category` VALUES ('9', null, '毛衣', '4', '1', '1576135096', '1576135096');
INSERT INTO `zh_article_category` VALUES ('10', null, '内裤', '6', '1', '1576141791', '1576141791');
INSERT INTO `zh_article_category` VALUES ('11', null, '袜子', '8', '1', '1576142051', '1576142051');

-- ----------------------------
-- Table structure for zh_buy_shop
-- ----------------------------
DROP TABLE IF EXISTS `zh_buy_shop`;
CREATE TABLE `zh_buy_shop` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '下单主键',
  `user_id` varchar(40) DEFAULT NULL COMMENT '下单者id',
  `title` varchar(255) DEFAULT NULL COMMENT '下单商品',
  `pv` int(255) DEFAULT NULL COMMENT '商品浏览量',
  `price` int(10) DEFAULT NULL COMMENT '商品价格',
  `status` int(255) DEFAULT '1' COMMENT '状态1正常0禁用',
  `create_time` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `update_time` varchar(255) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_buy_shop
-- ----------------------------
INSERT INTO `zh_buy_shop` VALUES ('31', '43', '童装系列童装系列', '141', '99', '1', '1576495051', '1576495051');
INSERT INTO `zh_buy_shop` VALUES ('30', '41', '男毛衣男生毛衣', '13247', '66', '1', '1576494914', '1576494914');
INSERT INTO `zh_buy_shop` VALUES ('29', '41', '女生潮流卫衣', '0', '123', '1', '1576494568', '1576494568');
INSERT INTO `zh_buy_shop` VALUES ('28', '41', '女生潮流卫衣', '4336', '666', '1', '1576494263', '1576494263');
INSERT INTO `zh_buy_shop` VALUES ('27', '41', '男生潮流卫衣', '237', '99', '1', '1576494253', '1576494253');
INSERT INTO `zh_buy_shop` VALUES ('26', '41', '男生潮流卫衣', '237', '99', '1', '1576494252', '1576494252');
INSERT INTO `zh_buy_shop` VALUES ('25', '41', '男生潮流卫衣', '237', '99', '1', '1576494250', '1576494250');
INSERT INTO `zh_buy_shop` VALUES ('24', '41', '男生潮流卫衣', '237', '99', '1', '1576494248', '1576494248');
INSERT INTO `zh_buy_shop` VALUES ('23', '41', '女生潮流卫衣', '0', '123', '1', '1576494000', '1576494000');
INSERT INTO `zh_buy_shop` VALUES ('32', '41', '袜子袜子袜子', '49', '333', '1', '1576553789', '1576553789');
INSERT INTO `zh_buy_shop` VALUES ('33', '45', '男生潮流夹克', '251', '111', '1', '1576639902', '1576639902');
INSERT INTO `zh_buy_shop` VALUES ('34', '45', '男士内裤男士内裤', '2589', '222', '1', '1576641572', '1576641572');
INSERT INTO `zh_buy_shop` VALUES ('35', '45', '男生潮流卫衣', '240', '99', '1', '1576642680', '1576642680');
INSERT INTO `zh_buy_shop` VALUES ('36', '45', '童装系列童装系列', '126', '22', '1', '1576642793', '1576642793');
INSERT INTO `zh_buy_shop` VALUES ('37', '43', '女生潮流卫衣', '0', '123', '1', '1576644094', '1576644094');

-- ----------------------------
-- Table structure for zh_user
-- ----------------------------
DROP TABLE IF EXISTS `zh_user`;
CREATE TABLE `zh_user` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `mobile` char(15) DEFAULT NULL COMMENT '手机',
  `password` char(40) DEFAULT NULL COMMENT '密码',
  `status` int(11) DEFAULT '1' COMMENT '状态1启用0禁用',
  `is_admin` varchar(255) DEFAULT '0' COMMENT '是否是管理员',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_user
-- ----------------------------
INSERT INTO `zh_user` VALUES ('40', 'hunagjiehua', '123456@qq.com', '13549903721', '4694c6087f568151a105d90c753bffc4ad218478', '1', '0', '1576141533', '1576141533');
INSERT INTO `zh_user` VALUES ('41', 'huangjie', '1234567@qq.com', '13549903713', 'e5b4c22434b5f3d8f87e52d6d1f6a81331fbb6d2', '1', '1', '1576141628', '1576141628');
INSERT INTO `zh_user` VALUES ('43', 'ccccc', 'ccccc@qq.com', '13548890495', '360e46f15f432af83c77017177a759aba8a58519', '1', '0', '1576157542', '1576157542');
INSERT INTO `zh_user` VALUES ('44', 'vbnvbn', 'vbnvbn@qq.com', '13547784932', '4694c6087f568151a105d90c753bffc4ad218478', '1', '0', '1576158028', '1576158028');
INSERT INTO `zh_user` VALUES ('45', 'admin', 'admin@qq.com', '13549903837', '4694c6087f568151a105d90c753bffc4ad218478', '1', '1', '1576639759', '1576639759');

-- ----------------------------
-- Table structure for zh_user_comments
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_comments`;
CREATE TABLE `zh_user_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户主键',
  `art_id` int(11) DEFAULT NULL COMMENT '文档主键',
  `content` text COMMENT '评论内容',
  `reply_id` int(11) DEFAULT NULL COMMENT '回复id',
  `status` int(11) DEFAULT '1' COMMENT '1显示0隐藏',
  `create_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_user_comments
-- ----------------------------
INSERT INTO `zh_user_comments` VALUES ('1', '41', '44', 'adasda', null, '1', '1576390884', '1576390884');
INSERT INTO `zh_user_comments` VALUES ('2', '41', '44', 'adasdaqdaD', null, '1', '1576390909', '1576390909');
INSERT INTO `zh_user_comments` VALUES ('3', '41', '44', 'adasdaqdaDQSQQS', null, '1', '1576390915', '1576390915');
INSERT INTO `zh_user_comments` VALUES ('4', '41', '44', 'adasdaqdaDQSQQSQ', null, '1', '1576390934', '1576390934');
INSERT INTO `zh_user_comments` VALUES ('5', '41', '44', 'AsQASAS', null, '1', '1576390949', '1576390949');
INSERT INTO `zh_user_comments` VALUES ('6', '41', '44', 'qsq', null, '1', '1576390974', '1576390974');
INSERT INTO `zh_user_comments` VALUES ('7', '41', '44', 'sqsq', null, '1', '1576390980', '1576390980');
INSERT INTO `zh_user_comments` VALUES ('8', '41', '44', 'adad', null, '1', '1576391157', '1576391157');
INSERT INTO `zh_user_comments` VALUES ('9', '41', '44', 'qsqsq', null, '1', '1576391254', '1576391254');
INSERT INTO `zh_user_comments` VALUES ('10', '41', '44', '我是黄杰花', null, '1', '1576391267', '1576391267');
INSERT INTO `zh_user_comments` VALUES ('11', '41', '44', 'i哦啊收到后i是', null, '1', '1576391336', '1576391336');
INSERT INTO `zh_user_comments` VALUES ('12', '41', '44', '大青蛙大大', null, '1', '1576391361', '1576391361');
INSERT INTO `zh_user_comments` VALUES ('13', '41', '44', '', null, '1', '1576391372', '1576391372');
INSERT INTO `zh_user_comments` VALUES ('14', '41', '44', '青岛市区的球队', null, '1', '1576391376', '1576391376');
INSERT INTO `zh_user_comments` VALUES ('15', '41', '44', '爱的', null, '1', '1576391414', '1576391414');
INSERT INTO `zh_user_comments` VALUES ('16', '41', '44', 'sasas', null, '1', '1576391895', '1576391895');
INSERT INTO `zh_user_comments` VALUES ('17', '41', '44', 'qsqsqs', null, '1', '1576391936', '1576391936');
INSERT INTO `zh_user_comments` VALUES ('18', '41', '44', 'cccc', null, '1', '1576391965', '1576391965');
INSERT INTO `zh_user_comments` VALUES ('19', '41', '44', 'qdq', null, '1', '1576391997', '1576391997');
INSERT INTO `zh_user_comments` VALUES ('20', '41', '45', 'qdqwdqwd', null, '1', '1576392042', '1576392042');
INSERT INTO `zh_user_comments` VALUES ('21', null, null, null, null, '1', '1576392120', '1576392120');
INSERT INTO `zh_user_comments` VALUES ('22', null, null, null, null, '1', '1576392126', '1576392126');
INSERT INTO `zh_user_comments` VALUES ('23', null, null, null, null, '1', '1576392151', '1576392151');
INSERT INTO `zh_user_comments` VALUES ('24', '41', '41', 'qsqsq', null, '1', '1576392164', '1576392164');
INSERT INTO `zh_user_comments` VALUES ('25', '43', '41', 'dwqdqwd', null, '1', '1576392234', '1576392234');
INSERT INTO `zh_user_comments` VALUES ('26', '43', '44', 'fwafwsf', null, '1', '1576392342', '1576392342');
INSERT INTO `zh_user_comments` VALUES ('27', '43', '44', 'sfsafs', null, '1', '1576392348', '1576392348');
INSERT INTO `zh_user_comments` VALUES ('28', '43', '50', 'fwafwaf', null, '1', '1576396819', '1576396819');
INSERT INTO `zh_user_comments` VALUES ('29', '43', '44', '法术伤害', null, '1', '1576402596', '1576402596');
INSERT INTO `zh_user_comments` VALUES ('30', '41', '44', '啊水水', null, '1', '1576470126', '1576470126');
INSERT INTO `zh_user_comments` VALUES ('31', '41', '44', '去啊大大', null, '1', '1576473219', '1576473219');

-- ----------------------------
-- Table structure for zh_user_fav
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_fav`;
CREATE TABLE `zh_user_fav` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户主键',
  `article_id` int(11) DEFAULT NULL COMMENT '文档主键',
  `title_img` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `pv` int(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of zh_user_fav
-- ----------------------------
INSERT INTO `zh_user_fav` VALUES ('79', '43', '51', '20191215\\987f593c23c1d530863ac254fa54e2e8.jpg', '123', '0', '女生潮流卫衣', '1576645578', '1576645578');
INSERT INTO `zh_user_fav` VALUES ('80', '43', '51', '20191215\\987f593c23c1d530863ac254fa54e2e8.jpg', '123', '0', '女生潮流卫衣', '1576645627', '1576645627');
INSERT INTO `zh_user_fav` VALUES ('81', '45', '49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '女生潮流卫衣', '1576645834', '1576645834');
INSERT INTO `zh_user_fav` VALUES ('82', '45', '49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '女生潮流卫衣', '1576646038', '1576646038');
INSERT INTO `zh_user_fav` VALUES ('83', '45', '51', '20191215\\987f593c23c1d530863ac254fa54e2e8.jpg', '123', '0', '女生潮流卫衣', '1576646083', '1576646083');
INSERT INTO `zh_user_fav` VALUES ('84', '45', '51', '20191215\\987f593c23c1d530863ac254fa54e2e8.jpg', '123', '0', '女生潮流卫衣', '1576646145', '1576646145');
INSERT INTO `zh_user_fav` VALUES ('85', '45', '43', '20191213\\edd403d65c5bc8daaa3c6cd4fbe72c73.jpg', '333', '50', '袜子袜子袜子', '1576646246', '1576646246');
INSERT INTO `zh_user_fav` VALUES ('86', '45', '43', '20191213\\edd403d65c5bc8daaa3c6cd4fbe72c73.jpg', '333', '51', '袜子袜子袜子', '1576646278', '1576646278');
INSERT INTO `zh_user_fav` VALUES ('87', '45', '49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '女生潮流卫衣', '1576646746', '1576646746');
INSERT INTO `zh_user_fav` VALUES ('73', '43', '35', '{title_img}', '22', '127', '童装系列童装系列', '1576645046', '1576645046');
INSERT INTO `zh_user_fav` VALUES ('74', '43', '34', '{title_img}', '55', '125', '女生潮流卫衣', '1576645339', '1576645339');
INSERT INTO `zh_user_fav` VALUES ('75', '43', '34', '{title_img}', '55', '126', '女生潮流卫衣', '1576645354', '1576645354');
INSERT INTO `zh_user_fav` VALUES ('76', '43', '34', '{title_img}', '55', '128', '女生潮流卫衣', '1576645364', '1576645364');
INSERT INTO `zh_user_fav` VALUES ('77', '43', '34', '{title_img}', '55', '128', '女生潮流卫衣', '1576645366', '1576645366');
INSERT INTO `zh_user_fav` VALUES ('78', '43', '42', '20191213\\642365a475803ea2e93a316a24d25bd1.jpg', '6666', '3425', '袜子袜子袜子', '1576645447', '1576645447');
INSERT INTO `zh_user_fav` VALUES ('88', '45', '49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '女生潮流卫衣', '1576647047', '1576647047');
INSERT INTO `zh_user_fav` VALUES ('89', '41', '49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '女生潮流卫衣', '1576648891', '1576648891');
INSERT INTO `zh_user_fav` VALUES ('90', '41', '49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '女生潮流卫衣', '1576648910', '1576648910');
INSERT INTO `zh_user_fav` VALUES ('91', '41', '49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '女生潮流卫衣', '1576648932', '1576648932');
INSERT INTO `zh_user_fav` VALUES ('92', '45', '49', '20191215\\c730569ff12b3fd8ddd5395657e5092d.jpg', '0', '0', '女生潮流卫衣', '1576648947', '1576648947');

-- ----------------------------
-- Table structure for zh_user_like
-- ----------------------------
DROP TABLE IF EXISTS `zh_user_like`;
CREATE TABLE `zh_user_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户主键',
  `article_id` int(11) DEFAULT NULL COMMENT '文档主键',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_user_like
-- ----------------------------
INSERT INTO `zh_user_like` VALUES ('18', '41', '45');
INSERT INTO `zh_user_like` VALUES ('9', '30', '15');
INSERT INTO `zh_user_like` VALUES ('22', '41', '44');
