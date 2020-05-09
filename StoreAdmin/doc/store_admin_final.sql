/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MariaDB
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : store_admin

 Target Server Type    : MariaDB
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 21/04/2020 23:32:58
*/

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `store_admin` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `store_admin`;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_name` varchar(50) NOT NULL COMMENT '登录名',
  `login_pwd` varchar(50) NOT NULL COMMENT '登录密码',
  `real_name` varchar(50) NOT NULL COMMENT '真实姓名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `email` varchar(50) NOT NULL COMMENT '电子邮箱',
  `image` varchar(100) DEFAULT NULL COMMENT '头像',
  `last_login_ip` varchar(30) DEFAULT NULL COMMENT '最后登录IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_login_name` (`login_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of t_admin
-- ----------------------------
BEGIN;
INSERT INTO `t_admin` VALUES (1, 'admin', '123123', '超级管理员', '18076481810', '1043551197@qq.com', '/upload/avatar/20200321/15847796862584445.jpg', '0:0:0:0:0:0:0:1', '2020-04-18 13:16:30');
INSERT INTO `t_admin` VALUES (2, 'admin1', '123123', '管理员', '12345678910', '1043551197@qq.com', NULL, '0:0:0:0:0:0:0:1', '2020-04-02 09:17:35');
COMMIT;

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '商品id',
  `goods_title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `goods_image` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `goods_price` bigint(20) DEFAULT NULL COMMENT '商品单价（单位：分）',
  `num` int(10) DEFAULT NULL COMMENT '商品购买数量',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_user_id_goods_id` (`user_id`,`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `item_type` varchar(100) DEFAULT NULL COMMENT '商品系列',
  `title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `sell_point` varchar(150) DEFAULT NULL COMMENT '商品卖点',
  `price` bigint(20) DEFAULT NULL COMMENT '商品单价',
  `num` int(10) DEFAULT NULL COMMENT '库存数量',
  `barcode` varchar(30) DEFAULT NULL COMMENT '条形码',
  `image` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `status` int(1) DEFAULT 1 COMMENT '商品状态：1、上架，2、下架，3、删除',
  `priority` int(10) DEFAULT NULL COMMENT '显示优先级',
  `created_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000059 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of t_goods
-- ----------------------------
BEGIN;
INSERT INTO `t_goods` VALUES (10000000, 238, '牛皮纸记事本', '广博(GuangBo)10本装40张A5牛皮纸记事本子日记本办公软抄本GBR0731', '经典回顾！超值特惠！', 23, 99999, '', '/upload/goods/20200322/93b66f0a-5ff4-4173-9a94-2551cd160cab.jpg', 1, 53, 'admin', '2019-10-25 15:08:55', NULL, '2020-03-22 10:31:19');
INSERT INTO `t_goods` VALUES (10000005, 241, '圆珠笔', '施耐德（Schneider） K15 经典款圆珠笔 (5支混色装)', '经典回顾！超值特惠！', 29, 99999, NULL, '/images/portal/03SchneiderK15/collect.png', 1, 36, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000006, 236, '票据网格拉链袋', '三木(SUNWOOD) C4523 票据网格拉链袋/文件袋 12个装 颜色随机', '经典回顾！超值特惠！', 28, 99999, NULL, '/images/portal/04_SUNWOODC452312/collect.png', 1, 53, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000007, 163, '燃 7000经典版', '戴尔Dell 燃700金色', '下单赠12000毫安移动电源', 32999, 99999, NULL, '/images/portal/11DELLran7000gold/collect.png', 1, 59, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000008, 163, '燃 7000经典版', '戴尔Dell 燃700R1605银色', '仅上海，广州，沈阳仓有货！预购从速！', 4549, 99999, NULL, '/images/portal/11DELLran7000R1605Ssilvery/collect.png', 1, 32, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000009, 163, '燃 7000学习版', '戴尔Dell 燃700金色', '下单赠12000毫安移动电源', 39929, 99999, NULL, '/images/portal/11DELLran7000gold/collect.png', 1, 84, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000010, 163, '燃 7000学习版', '戴尔Dell 燃700R1605银色', '仅上海，广州，沈阳仓有货！预购从速！', 5559, 99999, NULL, '/images/portal/11DELLran7000R1605Ssilvery/collect.png', 1, 21, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000011, 163, '燃 7000高配版', '戴尔Dell 燃700金色', '下单赠12000毫安移动电源', 3994, 99999, NULL, '/images/portal/11DELLran7000gold/collect.png', 1, 56, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000012, 163, '燃 7000高配版', '戴尔Dell 燃700R1605银色', '仅上海，广州，沈阳仓有货！预购从速！', 6559, 99999, NULL, '/images/portal/11DELLran7000R1605Ssilvery/collect.png', 1, 16, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000013, 238, 'A5优品商务笔记本', '齐心（COMIX）C5902 A5优品商务笔记本子记事本日记本122张', '下单即送10400毫安移动电源！再赠手机魔法盒！', 41, 99999, NULL, '/images/portal/02COMIXC5902A5122blue/collect.png', 1, 10, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000014, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4600, 99999, NULL, '/images/portal/12(DELL)XPS13gold/collect.png', 1, 1, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000015, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4601, 99999, NULL, '/images/portal/12DELLXPS13-silvery/collect.png', 1, 73, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000016, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4602, 99999, NULL, '/images/portal/12(DELL)XPS13gold/collect.png', 1, 64, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000017, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4604, 99992, NULL, '/images/portal/12DELLXPS13-silvery/collect.png', 1, 100, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000018, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4605, 99999, NULL, '/images/portal/12(DELL)XPS13gold/collect.png', 1, 7, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000019, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4899, 99999, NULL, '/images/portal/12DELLXPS13-silvery/collect.png', 1, 34, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000020, 163, 'IdeaPad310低配版', '联想（Lenovo）IdeaPad310低配版', '清仓！仅北京，武汉仓有货！', 5119, 99999, NULL, '/images/portal/13LenovoIdeaPad310_black/collect.png', 1, 50, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000021, 163, 'IdeaPad310低配版', '联想（Lenovo）IdeaPad310低配版', '清仓！仅北京，武汉仓有货！', 5129, 99999, NULL, '/images/portal/13LenovoIdeaPad310_silvery/collect.png', 1, 48, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000022, 163, 'IdeaPad310经典版', '联想（Lenovo）IdeaPad310经典版', '清仓！仅北京，武汉仓有货！', 5119, 99999, NULL, '/images/portal/13LenovoIdeaPad310_black/collect.png', 1, 90, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000023, 163, 'IdeaPad310经典版', '联想（Lenovo）IdeaPad310经典版', '清仓！仅北京，武汉仓有货！', 5129, 99999, NULL, '/images/portal/13LenovoIdeaPad310_silvery/collect.png', 1, 6, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000024, 163, 'IdeaPad310高配版', '联想（Lenovo）IdeaPad310高配版', '清仓！仅北京，武汉仓有货！', 5119, 99999, NULL, '/images/portal/13LenovoIdeaPad310_black/collect.png', 1, 60, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000025, 163, 'IdeaPad310高配版', '联想（Lenovo）IdeaPad310高配版', '清仓！仅北京，武汉仓有货！', 5129, 99999, NULL, '/images/portal/13LenovoIdeaPad310_silvery/collect.png', 1, 80, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000026, 163, 'YOGA710', '联想（Lenovo）YOGA710 14英寸触控笔记本（i7-7500U 8G 256GSSD 2G独显 全高清IPS 360°翻转 正版office）金', '【0元献礼】好评过万，销量传奇！经典蓝光电视，独有自然光技术专利，过大年带最好的回家！【0元白条试用，1001个拜年计划】', 59999, 99999, NULL, '/images/portal/14LenovoYOGA710 _gold/collect.png', 1, 19, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000027, 163, 'YOGA710', '联想（Lenovo）YOGA710 14英寸触控笔记本（i7-7500U 8G 256GSSD 2G独显 全高清IPS 360°翻转 正版office）银', '【0元献礼】好评过万，销量传奇！经典蓝光电视，独有自然光技术专利，过大年带最好的回家！【0元白条试用，1001个拜年计划】', 59999, 99999, NULL, '/images/portal/14LenovoYOGA710 _silvery/collect.png', 1, 55, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000028, 163, '310低配版', '联想（Lenovo）小新310低配版', '清仓！仅北京，武汉仓有货！', 4939, 99997, NULL, '/images/portal/15Lenovo_xiaoxin_310_black/collect.png', 1, 19, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000029, 163, '310低配版', '联想（Lenovo）小新310低配版', '清仓！仅北京，武汉仓有货！', 4839, 99999, NULL, '/images/portal/15Lenovo_xiaoxin_310_silvery/collect.png', 1, 27, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000030, 163, '310经典版', '联想（Lenovo）小新310经典版', '清仓！仅北京，武汉仓有货！', 4739, 99999, NULL, '/images/portal/15Lenovo_xiaoxin_310_black/collect.png', 1, 78, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000031, 163, '310经典版', '联想（Lenovo）小新310经典版', '清仓！仅北京，武汉仓有货！', 4639, 99998, NULL, '/images/portal/15Lenovo_xiaoxin_310_silvery/collect.png', 1, 9, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000032, 163, '310高配版', '联想（Lenovo）小新310高配版', '清仓！仅北京，武汉仓有货！', 4539, 99999, NULL, '/images/portal/15Lenovo_xiaoxin_310_black/collect.png', 1, 9, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000033, 163, '310高配版', '联想（Lenovo）小新310高配版', '清仓！仅北京，武汉仓有货！', 4439, 99999, NULL, '/images/portal/15Lenovo_xiaoxin_310_silvery/collect.png', 1, 18, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000034, 163, 'YOGA900', '联想（Lenovo）YOGA900绿色', '青春的活力 清新漂亮高端大气上档次', 5200, 99999, NULL, '/images/portal/16LenovoYOGA900green/collect.png', 1, 63, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000035, 163, 'YOGA900', '联想（Lenovo）YOGA900粉色', '青春的活力 清新漂亮高端大气上档次', 5200, 99999, NULL, '/images/portal/16LenovoYOGA900pink/collect.png', 1, 62, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000036, 163, 'YOGA900', '联想（Lenovo）YOGA900红色', '青春的活力 清新漂亮高端大气上档次', 5200, 99999, NULL, '/images/portal/16LenovoYOGA900red/collect.png', 1, 21, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000038, 163, '小新13旗舰版', '联想(Lenovo)小新Air13 Pro 13.3英寸14.8mm超轻薄笔记本电脑', '青春的活力 青年专属', 6439, 99998, NULL, '/images/portal/17Lenovo)xiaoxinAir13Pro_silvery/collect.png', 1, 17, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000039, 163, 'XPS15', '戴尔(DELL) XPS15 银色', '限时特价！好评过万条优秀产品！', 3333, 99999, NULL, '/images/portal/18(DELL)XPS15_silvery/collect.png', 0, 37, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000040, 163, 'DELL 15MF Pro', '戴尔(DELL)魔方15MF Pro-R2505TSS灵越', '15.6英寸二合一翻转笔记本电脑 (i5-7200U 8GB 1TB IPS Win10)触控银', 4443, 99999, NULL, '/images/portal/19DELL15MF Pro/collect.png', 1, 35, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000041, 163, 'DELL XPS15-9550', '戴尔(DELL) XPS15升级版 ', '15.6英寸二合一翻转笔记本电脑 (i5-7200U 8GB 1TGB IPS Win10)触控', 8443, 99999, NULL, '/images/portal/20DellXPS15-9550/collect.png', 1, 61, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000042, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i5 6代 红色', '经典回顾！超值特惠！', 4399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 99, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000043, 917, '书包 bag', '乐尚书包 电脑包 bag黑色', '给你满载而归的喜悦！', 89, 99999, NULL, '/images/portal/22_LEXON_LNE6025B06T/collect.png', 1, 12, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000044, 917, '书包 bag', '乐尚书包 电脑包 bag粉色', '给你满载而归的喜悦！', 89, 99999, NULL, '/images/portal/22_LEXON_LNE6025B06T/collect.png', 1, 62, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000045, 238, '皮面日程本', '广博(GuangBo)皮面日程本子 计划记事本效率手册蓝色FB60321', '经典回顾！超值特惠！', 22, 99999, NULL, '/images/portal/001GuangBo)FB60322/collect.png', 1, 73, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000046, 163, 'XPS15', '戴尔(DELL) XPS15 金色', '限时特价！好评过万条优秀产品！', 3333, 99999, NULL, '/images/portal/18(DELL)XPS15_silvery/collect.png', 1, 81, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000047, 163, 'DELL 15MF Pro', '戴尔(DELL)魔方15MF Pro-R2505TSS灵越', '15.6英寸二合一翻转笔记本电脑 (i5-7200U 8GB 1TB IPS Win10)触控白', 4443, 99997, NULL, '/images/portal/19DELL15MF Pro/collect.png', 1, 86, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000048, 163, 'DELL 15MF Pro', '戴尔(DELL)魔方15MF Pro-R2505TSS灵越', '15.6英寸二合一翻转笔记本电脑 (i7-7200U 8GB 512GB IPS Win10)触控银', 6443, 99999, NULL, '/images/portal/19DELL15MF Pro/collect.png', 1, 84, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000049, 163, 'DELL 15MF Pro', '戴尔(DELL)魔方15MF Pro-R2505TSS灵越', '15.6英寸二合一翻转笔记本电脑 (i7-7200U 8GB 512GB IPS Win10)触控白', 6443, 99999, NULL, '/images/portal/19DELL15MF Pro/collect.png', 1, 63, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000050, 163, 'DELL XPS15-9550', '戴尔(DELL) XPS15升级版 ', '15.6英寸二合一翻转笔记本电脑 (i5-7200U 8GB 256GB IPS Win10)触控', 8443, 99999, NULL, '/images/portal/20DellXPS15-9550/collect.png', 1, 60, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000051, 163, 'DELL XPS15-9550', '戴尔(DELL) XPS15升级版 ', '15.6英寸二合一翻转笔记本电脑 (i7-7200U 8GB 1TB IPS Win10)触控', 8443, 99999, NULL, '/images/portal/20DellXPS15-9550/collect.png', 1, 13, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000052, 163, 'DELL XPS15-9550', '戴尔(DELL) XPS15升级版 ', '15.6英寸二合一翻转笔记本电脑 (i7-7200U 8GB 256GB IPS Win10)触控', 8443, 99999, NULL, '/images/portal/20DellXPS15-9550/collect.png', 1, 83, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000053, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i7 6700 红', '经典回顾！超值特惠！', 6399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 74, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000054, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i5 6代 黄', '经典回顾！超值特惠！', 4399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 23, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000055, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i5 6代 蓝', '经典回顾！超值特惠！', 4399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 87, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000056, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i7 6700 蓝', '经典回顾！超值特惠！', 6399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 59, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_goods` VALUES (10000058, 1, '书刊', '煎饼侠', '搞笑', 123, 992, '', '', 1, NULL, NULL, '2020-03-22 15:07:46', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_category`;
CREATE TABLE `t_goods_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父分类id',
  `name` varchar(150) DEFAULT NULL COMMENT '名称',
  `status` int(1) DEFAULT 1 COMMENT '状态   1：正常   2：删除',
  `sort_order` int(4) DEFAULT NULL COMMENT '排序号',
  `is_parent` int(1) DEFAULT NULL COMMENT '是否是父分类   1：是  0：否',
  `created_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1184 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of t_goods_category
-- ----------------------------
BEGIN;
INSERT INTO `t_goods_category` VALUES (1, 0, '图书、音像、电子书刊', 1, 0, 1, NULL, NULL, NULL, '2020-03-31 01:24:15');
INSERT INTO `t_goods_category` VALUES (2, 1, '电子书刊', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (3, 2, '电子书', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (4, 2, '网络原创', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (5, 2, '数字杂志', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (6, 2, '多媒体图书', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (7, 1, '音像', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (8, 7, '音乐', 1, 1, 0, NULL, NULL, NULL, '2020-03-31 01:23:46');
INSERT INTO `t_goods_category` VALUES (9, 7, '影视', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (10, 7, '教育音像', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (11, 1, '英文原版', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (12, 11, '少儿', 1, 6, 0, NULL, NULL, NULL, '2020-03-31 01:26:46');
INSERT INTO `t_goods_category` VALUES (13, 1, '商务投资', 1, 3, 1, NULL, NULL, NULL, '2020-03-31 01:37:13');
INSERT INTO `t_goods_category` VALUES (14, 11, '英语学习与考试', 1, 3, 0, NULL, NULL, NULL, '2020-03-31 01:39:45');
INSERT INTO `t_goods_category` VALUES (15, 11, '小说', 1, 4, 0, NULL, NULL, NULL, '2020-03-31 01:55:04');
INSERT INTO `t_goods_category` VALUES (16, 11, '传记', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (17, 11, '励志', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (18, 1, '文艺', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (19, 18, '小说', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (20, 18, '文学', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (21, 18, '青春文学', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (22, 18, '传记', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (23, 18, '艺术', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (24, 1, '少儿', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (25, 24, '少儿', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (26, 24, '0-2岁', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (27, 24, '3-6岁', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (28, 24, '7-10岁', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (29, 24, '11-14岁', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (30, 1, '人文社科', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (31, 30, '历史', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (32, 30, '哲学', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (33, 30, '国学', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (34, 30, '政治/军事', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (35, 30, '法律', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (36, 30, '宗教', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (37, 30, '心理学', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (38, 30, '文化', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (39, 30, '社会科学', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (40, 1, '经管励志', 1, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (41, 40, '经济', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (42, 40, '金融与投资', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (43, 40, '管理', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (44, 40, '励志与成功', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (45, 1, '生活', 1, 8, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (46, 45, '生活', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (47, 45, '健身与保健', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (48, 45, '家庭与育儿', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (49, 45, '旅游', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (50, 45, '动漫/幽默', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (51, 1, '科技', 1, 9, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (52, 51, '科技', 1, 1, 0, NULL, NULL, NULL, '2020-03-31 01:31:12');
INSERT INTO `t_goods_category` VALUES (53, 51, '工程', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (54, 51, '建筑', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (55, 51, '医学', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (56, 51, '科学与自然', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (57, 51, '计算机与互联网', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (58, 51, '体育/运动', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (59, 1, '教育', 1, 10, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (60, 59, '教材教辅', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (61, 59, '教育与考试', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (62, 59, '外语学习', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (63, 59, '新闻出版', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (64, 59, '语言文字', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (65, 1, '港台图书', 1, 11, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (66, 65, '艺术/设计/收藏', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (67, 65, '经济管理', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (68, 65, '文化/学术', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (69, 65, '少儿文学/国学', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (70, 1, '其它', 1, 12, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (71, 70, '工具书', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (72, 70, '影印版', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (73, 70, '套装书', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (74, 0, '家用电器', 0, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (75, 74, '大 家 电', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (76, 75, '平板电视', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (77, 75, '空调', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (78, 75, '冰箱', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (79, 75, '洗衣机', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (80, 75, '家庭影院', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (81, 75, 'DVD播放机', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (82, 75, '迷你音响', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (83, 75, '烟机/灶具', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (84, 75, '热水器', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (85, 75, '消毒柜/洗碗机', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (86, 75, '酒柜/冰吧/冷柜', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (87, 75, '家电配件', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (88, 75, '家电下乡', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (89, 74, '生活电器', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (90, 89, '电风扇', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (91, 89, '冷风扇', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (92, 89, '净化器', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (93, 89, '饮水机', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (94, 89, '净水设备', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (95, 89, '挂烫机/熨斗', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (96, 89, '吸尘器', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (97, 89, '电话机', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (98, 89, '插座', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (99, 89, '收录/音机', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (100, 89, '清洁机', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (101, 89, '加湿器', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (102, 89, '除湿机', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (103, 89, '取暖电器', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (104, 89, '其它生活电器', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (105, 89, '扫地机器人', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (106, 89, '干衣机', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (107, 89, '生活电器配件', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (108, 74, '厨房电器', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (109, 108, '料理/榨汁机', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (110, 108, '豆浆机', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (111, 108, '电饭煲', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (112, 108, '电压力锅', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (113, 108, '面包机', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (114, 108, '咖啡机', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (115, 108, '微波炉', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (116, 108, '电烤箱', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (117, 108, '电磁炉', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (118, 108, '电饼铛/烧烤盘', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (119, 108, '煮蛋器', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (120, 108, '酸奶机', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (121, 108, '电炖锅', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (122, 108, '电水壶/热水瓶', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (123, 108, '多用途锅', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (124, 108, '果蔬解毒机', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (125, 108, '其它厨房电器', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (126, 74, '个护健康', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (127, 126, '剃须刀', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (128, 126, '剃/脱毛器', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (129, 126, '口腔护理', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (130, 126, '电吹风', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (131, 126, '美容器', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (132, 126, '美发器', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (133, 126, '按摩椅', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (134, 126, '按摩器', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (135, 126, '足浴盆', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (136, 126, '血压计', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (137, 126, '健康秤/厨房秤', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (138, 126, '血糖仪', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (139, 126, '体温计', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (140, 126, '计步器/脂肪检测仪', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (141, 126, '其它健康电器', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (142, 74, '五金家装', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (143, 142, '电动工具', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (144, 142, '手动工具', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (145, 142, '仪器仪表', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (146, 142, '浴霸/排气扇', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (147, 142, '灯具', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (148, 142, 'LED灯', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (149, 142, '洁身器', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (150, 142, '水槽', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (151, 142, '龙头', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (152, 142, '淋浴花洒', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (153, 142, '厨卫五金', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (154, 142, '家具五金', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (155, 142, '门铃', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (156, 142, '电气开关', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (157, 142, '插座', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (158, 142, '电工电料', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (159, 142, '监控安防', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (160, 142, '电线/线缆', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (161, 0, '电脑、办公', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (162, 161, '电脑整机', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (163, 162, '笔记本', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (164, 162, '超极本', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (165, 162, '游戏本', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (166, 162, '平板电脑', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (167, 162, '平板电脑配件', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (168, 162, '台式机', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (169, 162, '服务器/工作站', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (170, 162, '笔记本配件', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (171, 161, '电脑配件', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (172, 171, 'CPU', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (173, 171, '主板', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (174, 171, '显卡', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (175, 171, '硬盘', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (176, 171, 'SSD固态硬盘', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (177, 171, '内存', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (178, 171, '机箱', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (179, 171, '电源', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (180, 171, '显示器', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (181, 171, '刻录机/光驱', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (182, 171, '散热器', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (183, 171, '声卡/扩展卡', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (184, 171, '装机配件', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (185, 171, '组装电脑', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (186, 161, '外设产品', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (187, 186, '移动硬盘', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (188, 186, 'U盘', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (189, 186, '鼠标', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (190, 186, '键盘', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (191, 186, '鼠标垫', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (192, 186, '摄像头', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (193, 186, '手写板', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (194, 186, '外置盒', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (195, 186, '插座', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (196, 186, '线缆', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (197, 186, 'UPS电源', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (198, 186, '电脑工具', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (199, 186, '游戏设备', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (200, 186, '电玩', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (201, 186, '电脑清洁', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (202, 161, '网络产品', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (203, 202, '路由器', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (204, 202, '网卡', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (205, 202, '交换机', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (206, 202, '网络存储', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (207, 202, '4G/3G上网', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (208, 202, '网络盒子', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (209, 202, '网络配件', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (210, 161, '办公设备', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (211, 210, '投影机', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (212, 210, '投影配件', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (213, 210, '多功能一体机', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (214, 210, '打印机', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (215, 210, '传真设备', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (216, 210, '验钞/点钞机', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (217, 210, '扫描设备', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (218, 210, '复合机', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (219, 210, '碎纸机', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (220, 210, '考勤机', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (221, 210, '墨粉', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (222, 210, '收款/POS机', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (223, 210, '会议音频视频', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (224, 210, '保险柜', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (225, 210, '装订/封装机', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (226, 210, '安防监控', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (227, 210, '办公家具', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (228, 210, '白板', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (229, 161, '文具/耗材', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (230, 229, '硒鼓/墨粉', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (231, 229, '墨盒', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (232, 229, '色带', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (233, 229, '纸类', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (234, 229, '办公文具', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (235, 229, '学生文具', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (236, 229, '文件管理', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (237, 229, '财会用品', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (238, 229, '本册/便签', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (239, 229, '计算器', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (240, 229, '激光笔', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (241, 229, '笔类', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (242, 229, '画具画材', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (243, 229, '刻录碟片/附件', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (244, 161, '服务产品', 1, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (245, 244, '上门服务', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (246, 244, '远程服务', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (247, 244, '电脑软件', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (248, 244, '达内学子服务', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (249, 0, '个护化妆', 0, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (250, 249, '面部护肤', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (251, 250, '清洁', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (252, 250, '护肤', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (253, 250, '面膜', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (254, 250, '剃须', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (255, 250, '套装', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (256, 249, '身体护肤', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (257, 256, '沐浴', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (258, 256, '润肤', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (259, 256, '颈部', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (260, 256, '手足', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (261, 256, '纤体塑形', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (262, 256, '美胸', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (263, 256, '套装', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (264, 249, '口腔护理', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (265, 264, '牙膏/牙粉', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (266, 264, '牙刷/牙线', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (267, 264, '漱口水', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (268, 264, '套装', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (269, 249, '女性护理', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (270, 269, '卫生巾', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (271, 269, '卫生护垫', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (272, 269, '私密护理', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (273, 269, '脱毛膏', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (274, 249, '洗发护发', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (275, 274, '洗发', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (276, 274, '护发', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (277, 274, '染发', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (278, 274, '造型', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (279, 274, '假发', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (280, 274, '套装', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (281, 249, '香水彩妆', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (282, 281, '香水', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (283, 281, '底妆', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (284, 281, '腮红', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (285, 281, '眼部', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (286, 281, '唇部', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (287, 281, '美甲', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (288, 281, '美容工具', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (289, 281, '套装', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (290, 0, '钟表', 0, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (291, 290, '钟表', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (292, 291, '男表', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (293, 291, '女表', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (294, 291, '儿童手表', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (295, 291, '座钟挂钟', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (296, 0, '母婴', 0, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (297, 296, '奶粉', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (298, 297, '婴幼奶粉', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (299, 297, '成人奶粉', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (300, 296, '营养辅食', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (301, 300, '益生菌/初乳', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (302, 300, '米粉/菜粉', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (303, 300, '果泥/果汁', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (304, 300, 'DHA', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (305, 300, '宝宝零食', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (306, 300, '钙铁锌/维生素', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (307, 300, '清火/开胃', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (308, 300, '面条/粥', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (309, 296, '尿裤湿巾', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (310, 309, '婴儿尿裤', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (311, 309, '拉拉裤', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (312, 309, '湿巾', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (313, 309, '成人尿裤', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (314, 296, '喂养用品', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (315, 314, '奶瓶奶嘴', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (316, 314, '吸奶器', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (317, 314, '暖奶消毒', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (318, 314, '碗盘叉勺', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (319, 314, '水壶/水杯', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (320, 314, '牙胶安抚', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (321, 314, '辅食料理机', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (322, 296, '洗护用品', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (323, 322, '宝宝护肤', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (324, 322, '宝宝洗浴', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (325, 322, '奶瓶清洗', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (326, 322, '驱蚊防蚊', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (327, 322, '理发器', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (328, 322, '洗衣液/皂', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (329, 322, '日常护理', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (330, 322, '座便器', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (331, 296, '童车童床', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (332, 331, '婴儿推车', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (333, 331, '餐椅摇椅', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (334, 331, '婴儿床', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (335, 331, '学步车', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (336, 331, '三轮车', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (337, 331, '自行车', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (338, 331, '电动车', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (339, 331, '扭扭车', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (340, 331, '滑板车', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (341, 296, '寝居服饰', 1, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (342, 341, '婴儿外出服', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (343, 341, '婴儿内衣', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (344, 341, '婴儿礼盒', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (345, 341, '婴儿鞋帽袜', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (346, 341, '安全防护', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (347, 341, '家居床品', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (348, 296, '妈妈专区', 1, 8, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (349, 348, '妈咪包/背婴带', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (350, 348, '产后塑身', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (351, 348, '文胸/内裤', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (352, 348, '防辐射服', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (353, 348, '孕妇装', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (354, 348, '孕期营养', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (355, 348, '孕妈美容', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (356, 348, '待产/新生', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (357, 348, '月子装', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (358, 296, '童装童鞋', 1, 9, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (359, 358, '套装', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (360, 358, '上衣', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (361, 358, '裤子', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (362, 358, '裙子', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (363, 358, '内衣/家居服', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (364, 358, '羽绒服/棉服', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (365, 358, '亲子装', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (366, 358, '儿童配饰', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (367, 358, '礼服/演出服', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (368, 358, '运动鞋', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (369, 358, '皮鞋/帆布鞋', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (370, 358, '靴子', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (371, 358, '凉鞋', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (372, 358, '功能鞋', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (373, 358, '户外/运动服', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (374, 296, '安全座椅', 1, 10, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (375, 374, '提篮式', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (376, 374, '安全座椅', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (377, 374, '增高垫', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (378, 0, '食品饮料、保健食品', 0, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (379, 378, '进口食品', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (380, 379, '饼干蛋糕', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (381, 379, '糖果/巧克力', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (382, 379, '休闲零食', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (383, 379, '冲调饮品', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (384, 379, '粮油调味', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (385, 379, '牛奶', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (386, 378, '地方特产', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (387, 386, '其他特产', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (388, 386, '新疆', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (389, 386, '北京', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (390, 386, '山西', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (391, 386, '内蒙古', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (392, 386, '福建', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (393, 386, '湖南', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (394, 386, '四川', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (395, 386, '云南', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (396, 386, '东北', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (397, 378, '休闲食品', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (398, 397, '休闲零食', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (399, 397, '坚果炒货', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (400, 397, '肉干肉脯', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (401, 397, '蜜饯果干', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (402, 397, '糖果/巧克力', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (403, 397, '饼干蛋糕', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (404, 397, '无糖食品', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (405, 378, '粮油调味', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (406, 405, '米面杂粮', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (407, 405, '食用油', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (408, 405, '调味品', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (409, 405, '南北干货', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (410, 405, '方便食品', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (411, 405, '有机食品', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (412, 378, '饮料冲调', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (413, 412, '饮用水', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (414, 412, '饮料', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (415, 412, '牛奶乳品', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (416, 412, '咖啡/奶茶', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (417, 412, '冲饮谷物', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (418, 412, '蜂蜜/柚子茶', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (419, 412, '成人奶粉', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (420, 378, '食品礼券', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (421, 420, '月饼', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (422, 420, '大闸蟹', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (423, 420, '粽子', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (424, 420, '卡券', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (425, 378, '茗茶', 1, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (426, 425, '铁观音', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (427, 425, '普洱', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (428, 425, '龙井', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (429, 425, '绿茶', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (430, 425, '红茶', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (431, 425, '乌龙茶', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (432, 425, '花草茶', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (433, 425, '花果茶', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (434, 425, '养生茶', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (435, 425, '黑茶', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (436, 425, '白茶', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (437, 425, '其它茶', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (438, 0, '汽车用品', 0, 8, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (439, 438, '维修保养', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (440, 439, '润滑油', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (441, 439, '添加剂', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (442, 439, '防冻液', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (443, 439, '滤清器', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (444, 439, '火花塞', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (445, 439, '雨刷', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (446, 439, '车灯', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (447, 439, '后视镜', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (448, 439, '轮胎', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (449, 439, '轮毂', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (450, 439, '刹车片/盘', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (451, 439, '喇叭/皮带', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (452, 439, '蓄电池', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (453, 439, '底盘装甲/护板', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (454, 439, '贴膜', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (455, 439, '汽修工具', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (456, 438, '车载电器', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (457, 456, '导航仪', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (458, 456, '安全预警仪', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (459, 456, '行车记录仪', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (460, 456, '倒车雷达', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (461, 456, '蓝牙设备', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (462, 456, '时尚影音', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (463, 456, '净化器', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (464, 456, '电源', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (465, 456, '冰箱', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (466, 456, '吸尘器', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (467, 438, '美容清洗', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (468, 467, '车蜡', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (469, 467, '补漆笔', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (470, 467, '玻璃水', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (471, 467, '清洁剂', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (472, 467, '洗车工具', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (473, 467, '洗车配件', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (474, 438, '汽车装饰', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (475, 474, '脚垫', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (476, 474, '座垫', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (477, 474, '座套', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (478, 474, '后备箱垫', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (479, 474, '头枕腰靠', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (480, 474, '香水', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (481, 474, '空气净化', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (482, 474, '车内饰品', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (483, 474, '功能小件', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (484, 474, '车身装饰件', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (485, 474, '车衣', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (486, 438, '安全自驾', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (487, 486, '安全座椅', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (488, 486, '胎压充气', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (489, 486, '防盗设备', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (490, 486, '应急救援', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (491, 486, '保温箱', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (492, 486, '储物箱', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (493, 486, '自驾野营', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (494, 486, '摩托车装备', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (495, 0, '玩具乐器', 0, 9, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (496, 495, '适用年龄', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (497, 496, '0-6个月', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (498, 496, '6-12个月', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (499, 496, '1-3岁', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (500, 496, '3-6岁', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (501, 496, '6-14岁', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (502, 496, '14岁以上', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (503, 495, '遥控/电动', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (504, 503, '遥控车', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (505, 503, '遥控飞机', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (506, 503, '遥控船', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (507, 503, '机器人/电动', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (508, 503, '轨道/助力', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (509, 495, '毛绒布艺', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (510, 509, '毛绒/布艺', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (511, 509, '靠垫/抱枕', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (512, 495, '娃娃玩具', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (513, 512, '芭比娃娃', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (514, 512, '卡通娃娃', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (515, 512, '智能娃娃', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (516, 495, '模型玩具', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (517, 516, '仿真模型', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (518, 516, '拼插模型', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (519, 516, '收藏爱好', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (520, 495, '健身玩具', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (521, 520, '炫舞毯', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (522, 520, '爬行垫/毯', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (523, 520, '户外玩具', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (524, 520, '戏水玩具', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (525, 495, '动漫玩具', 1, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (526, 525, '电影周边', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (527, 525, '卡通周边', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (528, 525, '网游周边', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (529, 495, '益智玩具', 1, 8, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (530, 529, '摇铃/床铃', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (531, 529, '健身架', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (532, 529, '早教启智', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (533, 529, '拖拉玩具', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (534, 495, '积木拼插', 1, 9, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (535, 534, '积木', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (536, 534, '拼图', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (537, 534, '磁力棒', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (538, 534, '立体拼插', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (539, 495, 'DIY玩具', 1, 10, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (540, 539, '手工彩泥', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (541, 539, '绘画工具', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (542, 539, '情景玩具', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (543, 495, '创意减压', 1, 11, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (544, 543, '减压玩具', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (545, 543, '创意玩具', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (546, 495, '乐器相关', 1, 12, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (547, 546, '钢琴', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (548, 546, '电子琴', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (549, 546, '手风琴', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (550, 546, '吉他/贝斯', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (551, 546, '民族管弦乐器', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (552, 546, '西洋管弦乐', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (553, 546, '口琴/口风琴/竖笛', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (554, 546, '西洋打击乐器', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (555, 546, '各式乐器配件', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (556, 546, '电脑音乐', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (557, 546, '工艺礼品乐器', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (558, 0, '手机', 0, 10, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (559, 558, '手机通讯', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (560, 559, '手机', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (561, 559, '对讲机', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (562, 558, '运营商', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (563, 562, '购机送费', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (564, 562, '“0”元购机', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (565, 562, '选号中心', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (566, 562, '选号入网', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (567, 558, '手机配件', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (568, 567, '手机电池', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (569, 567, '蓝牙耳机', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (570, 567, '充电器/数据线', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (571, 567, '手机耳机', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (572, 567, '手机贴膜', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (573, 567, '手机存储卡', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (574, 567, '手机保护套', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (575, 567, '车载配件', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (576, 567, 'iPhone 配件', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (577, 567, '创意配件', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (578, 567, '便携/无线音响', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (579, 567, '手机饰品', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (580, 0, '数码', 0, 11, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (581, 580, '摄影摄像', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (582, 581, '数码相机', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (583, 581, '单电/微单相机', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (584, 581, '单反相机', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (585, 581, '摄像机', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (586, 581, '拍立得', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (587, 581, '运动相机', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (588, 581, '镜头', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (589, 581, '户外器材', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (590, 581, '影棚器材', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (591, 580, '数码配件', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (592, 591, '存储卡', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (593, 591, '读卡器', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (594, 591, '滤镜', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (595, 591, '闪光灯/手柄', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (596, 591, '相机包', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (597, 591, '三脚架/云台', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (598, 591, '相机清洁', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (599, 591, '相机贴膜', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (600, 591, '机身附件', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (601, 591, '镜头附件', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (602, 591, '电池/充电器', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (603, 591, '移动电源', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (604, 580, '智能设备', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (605, 604, '智能手环', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (606, 604, '智能手表', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (607, 604, '智能眼镜', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (608, 604, '运动跟踪器', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (609, 604, '健康监测', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (610, 604, '智能配饰', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (611, 604, '智能家居', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (612, 604, '体感车', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (613, 604, '其他配件', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (614, 580, '时尚影音', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (615, 614, 'MP3/MP4', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (616, 614, '智能设备', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (617, 614, '耳机/耳麦', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (618, 614, '音箱', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (619, 614, '高清播放器', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (620, 614, 'MP3/MP4配件', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (621, 614, '麦克风', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (622, 614, '专业音频', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (623, 614, '数码相框', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (624, 614, '苹果配件', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (625, 580, '电子教育', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (626, 625, '电子词典', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (627, 625, '电纸书', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (628, 625, '录音笔', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (629, 625, '复读机', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (630, 625, '点读机/笔', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (631, 625, '学生平板', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (632, 625, '早教机', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (633, 0, '家居家装', 0, 12, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (634, 633, '家纺', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (635, 634, '床品套件', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (636, 634, '被子', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (637, 634, '枕芯', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (638, 634, '床单被罩', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (639, 634, '毯子', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (640, 634, '床垫/床褥', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (641, 634, '蚊帐', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (642, 634, '抱枕靠垫', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (643, 634, '毛巾浴巾', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (644, 634, '电热毯', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (645, 634, '窗帘/窗纱', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (646, 634, '布艺软饰', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (647, 634, '凉席', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (648, 633, '灯具', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (649, 648, '台灯', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (650, 648, '节能灯', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (651, 648, '装饰灯', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (652, 648, '落地灯', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (653, 648, '应急灯/手电', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (654, 648, 'LED灯', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (655, 648, '吸顶灯', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (656, 648, '五金电器', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (657, 648, '筒灯射灯', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (658, 648, '吊灯', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (659, 648, '氛围照明', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (660, 633, '生活日用', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (661, 660, '收纳用品', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (662, 660, '雨伞雨具', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (663, 660, '浴室用品', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (664, 660, '缝纫/针织用品', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (665, 660, '洗晒/熨烫', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (666, 660, '净化除味', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (667, 633, '家装软饰', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (668, 667, '桌布/罩件', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (669, 667, '地毯地垫', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (670, 667, '沙发垫套/椅垫', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (671, 667, '相框/照片墙', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (672, 667, '装饰字画', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (673, 667, '节庆饰品', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (674, 667, '手工/十字绣', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (675, 667, '装饰摆件', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (676, 667, '保暖防护', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (677, 667, '帘艺隔断', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (678, 667, '墙贴/装饰贴', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (679, 667, '钟饰', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (680, 667, '花瓶花艺', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (681, 667, '香薰蜡烛', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (682, 667, '创意家居', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (683, 633, '清洁用品', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (684, 683, '纸品湿巾', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (685, 683, '衣物清洁', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (686, 683, '清洁工具', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (687, 683, '驱虫用品', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (688, 683, '家庭清洁', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (689, 683, '皮具护理', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (690, 683, '一次性用品', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (691, 633, '宠物生活', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (692, 691, '宠物主粮', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (693, 691, '宠物零食', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (694, 691, '医疗保健', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (695, 691, '家居日用', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (696, 691, '宠物玩具', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (697, 691, '出行装备', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (698, 691, '洗护美容', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (699, 0, '厨具', 0, 13, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (700, 699, '烹饪锅具', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (701, 700, '炒锅', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (702, 700, '煎锅', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (703, 700, '压力锅', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (704, 700, '蒸锅', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (705, 700, '汤锅', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (706, 700, '奶锅', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (707, 700, '锅具套装', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (708, 700, '煲类', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (709, 700, '水壶', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (710, 700, '火锅', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (711, 699, '刀剪菜板', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (712, 711, '菜刀', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (713, 711, '剪刀', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (714, 711, '刀具套装', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (715, 711, '砧板', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (716, 711, '瓜果刀/刨', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (717, 711, '多功能刀', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (718, 699, '厨房配件', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (719, 718, '保鲜盒', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (720, 718, '烘焙/烧烤', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (721, 718, '饭盒/提锅', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (722, 718, '储物/置物架', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (723, 718, '厨房DIY/小工具', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (724, 699, '水具酒具', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (725, 724, '塑料杯', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (726, 724, '运动水壶', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (727, 724, '玻璃杯', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (728, 724, '陶瓷/马克杯', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (729, 724, '保温杯', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (730, 724, '保温壶', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (731, 724, '酒杯/酒具', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (732, 724, '杯具套装', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (733, 699, '餐具', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (734, 733, '餐具套装', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (735, 733, '碗/碟/盘', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (736, 733, '筷勺/刀叉', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (737, 733, '一次性用品', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (738, 733, '果盘/果篮', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (739, 699, '茶具/咖啡具', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (740, 739, '整套茶具', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (741, 739, '茶杯', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (742, 739, '茶壶', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (743, 739, '茶盘茶托', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (744, 739, '茶叶罐', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (745, 739, '茶具配件', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (746, 739, '茶宠摆件', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (747, 739, '咖啡具', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (748, 739, '其他', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (749, 0, '服饰内衣', 0, 14, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (750, 749, '女装', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (751, 750, 'T恤', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (752, 750, '衬衫', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (753, 750, '针织衫', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (754, 750, '雪纺衫', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (755, 750, '卫衣', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (756, 750, '马甲', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (757, 750, '连衣裙', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (758, 750, '半身裙', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (759, 750, '牛仔裤', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (760, 750, '休闲裤', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (761, 750, '打底裤', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (762, 750, '正装裤', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (763, 750, '小西装', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (764, 750, '短外套', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (765, 750, '风衣', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (766, 750, '毛呢大衣', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (767, 750, '真皮皮衣', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (768, 750, '棉服', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (769, 750, '羽绒服', 1, 19, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (770, 750, '大码女装', 1, 20, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (771, 750, '中老年女装', 1, 21, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (772, 750, '婚纱', 1, 22, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (773, 750, '打底衫', 1, 23, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (774, 750, '旗袍/唐装', 1, 24, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (775, 750, '加绒裤', 1, 25, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (776, 750, '吊带/背心', 1, 26, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (777, 750, '羊绒衫', 1, 27, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (778, 750, '短裤', 1, 28, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (779, 750, '皮草', 1, 29, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (780, 750, '礼服', 1, 30, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (781, 750, '仿皮皮衣', 1, 31, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (782, 750, '羊毛衫', 1, 32, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (783, 750, '设计师/潮牌', 1, 33, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (784, 749, '男装', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (785, 784, '衬衫', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (786, 784, 'T恤', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (787, 784, 'POLO衫', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (788, 784, '针织衫', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (789, 784, '羊绒衫', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (790, 784, '卫衣', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (791, 784, '马甲/背心', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (792, 784, '夹克', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (793, 784, '风衣', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (794, 784, '毛呢大衣', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (795, 784, '仿皮皮衣', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (796, 784, '西服', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (797, 784, '棉服', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (798, 784, '羽绒服', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (799, 784, '牛仔裤', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (800, 784, '休闲裤', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (801, 784, '西裤', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (802, 784, '西服套装', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (803, 784, '大码男装', 1, 19, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (804, 784, '中老年男装', 1, 20, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (805, 784, '唐装/中山装', 1, 21, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (806, 784, '工装', 1, 22, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (807, 784, '真皮皮衣', 1, 23, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (808, 784, '加绒裤', 1, 24, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (809, 784, '卫裤/运动裤', 1, 25, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (810, 784, '短裤', 1, 26, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (811, 784, '设计师/潮牌', 1, 27, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (812, 784, '羊毛衫', 1, 28, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (813, 749, '内衣', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (814, 813, '文胸', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (815, 813, '女式内裤', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (816, 813, '男式内裤', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (817, 813, '睡衣/家居服', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (818, 813, '塑身美体', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (819, 813, '泳衣', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (820, 813, '吊带/背心', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (821, 813, '抹胸', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (822, 813, '连裤袜/丝袜', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (823, 813, '美腿袜', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (824, 813, '商务男袜', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (825, 813, '保暖内衣', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (826, 813, '情侣睡衣', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (827, 813, '文胸套装', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (828, 813, '少女文胸', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (829, 813, '休闲棉袜', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (830, 813, '大码内衣', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (831, 813, '内衣配件', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (832, 813, '打底裤袜', 1, 19, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (833, 813, '打底衫', 1, 20, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (834, 813, '秋衣秋裤', 1, 21, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (835, 813, '情趣内衣', 1, 22, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (836, 749, '服饰配件', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (837, 836, '太阳镜', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (838, 836, '光学镜架/镜片', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (839, 836, '围巾/手套/帽子套装', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (840, 836, '袖扣', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (841, 836, '棒球帽', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (842, 836, '毛线帽', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (843, 836, '遮阳帽', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (844, 836, '老花镜', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (845, 836, '装饰眼镜', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (846, 836, '防辐射眼镜', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (847, 836, '游泳镜', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (848, 836, '女士丝巾/围巾/披肩', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (849, 836, '男士丝巾/围巾', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (850, 836, '鸭舌帽', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (851, 836, '贝雷帽', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (852, 836, '礼帽', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (853, 836, '真皮手套', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (854, 836, '毛线手套', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (855, 836, '防晒手套', 1, 19, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (856, 836, '男士腰带/礼盒', 1, 20, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (857, 836, '女士腰带/礼盒', 1, 21, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (858, 836, '钥匙扣', 1, 22, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (859, 836, '遮阳伞/雨伞', 1, 23, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (860, 836, '口罩', 1, 24, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (861, 836, '耳罩/耳包', 1, 25, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (862, 836, '假领', 1, 26, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (863, 836, '毛线/布面料', 1, 27, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (864, 836, '领带/领结/领带夹', 1, 28, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (865, 0, '鞋靴', 0, 15, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (866, 865, '流行男鞋', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (867, 866, '商务休闲鞋', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (868, 866, '正装鞋', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (869, 866, '休闲鞋', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (870, 866, '凉鞋/沙滩鞋', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (871, 866, '男靴', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (872, 866, '功能鞋', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (873, 866, '拖鞋/人字拖', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (874, 866, '雨鞋/雨靴', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (875, 866, '传统布鞋', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (876, 866, '鞋配件', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (877, 866, '帆布鞋', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (878, 866, '增高鞋', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (879, 866, '工装鞋', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (880, 866, '定制鞋', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (881, 865, '时尚女鞋', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (882, 881, '高跟鞋', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (883, 881, '单鞋', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (884, 881, '休闲鞋', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (885, 881, '凉鞋', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (886, 881, '女靴', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (887, 881, '雪地靴', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (888, 881, '拖鞋/人字拖', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (889, 881, '踝靴', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (890, 881, '筒靴', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (891, 881, '帆布鞋', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (892, 881, '雨鞋/雨靴', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (893, 881, '妈妈鞋', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (894, 881, '鞋配件', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (895, 881, '特色鞋', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (896, 881, '鱼嘴鞋', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (897, 881, '布鞋/绣花鞋', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (898, 881, '马丁靴', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (899, 881, '坡跟鞋', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (900, 881, '松糕鞋', 1, 19, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (901, 881, '内增高', 1, 20, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (902, 881, '防水台', 1, 21, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (903, 0, '礼品箱包', 1, 16, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (904, 903, '潮流女包', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (905, 904, '钱包', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (906, 904, '手拿包/晚宴包', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (907, 904, '单肩包', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (908, 904, '双肩包', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (909, 904, '手提包', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (910, 904, '斜挎包', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (911, 904, '钥匙包', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (912, 904, '卡包/零钱包', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (913, 903, '精品男包', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (914, 913, '钱包/卡包', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (915, 913, '男士手包', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (916, 913, '商务公文包', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (917, 913, '双肩包', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (918, 913, '单肩/斜挎包', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (919, 913, '钥匙包', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (920, 903, '功能箱包', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (921, 920, '电脑包', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (922, 920, '拉杆箱/拉杆包', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (923, 920, '旅行包', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (924, 920, '旅行配件', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (925, 920, '休闲运动包', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (926, 920, '登山包', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (927, 920, '妈咪包', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (928, 920, '书包', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (929, 920, '相机包', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (930, 920, '腰包/胸包', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (931, 903, '礼品', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (932, 931, '火机烟具', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (933, 931, '礼品文具', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (934, 931, '军刀军具', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (935, 931, '收藏品', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (936, 931, '工艺礼品', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (937, 931, '创意礼品', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (938, 931, '礼盒礼券', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (939, 931, '鲜花绿植', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (940, 931, '婚庆用品', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (941, 931, '达内学子卡', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (942, 931, '美妆礼品', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (943, 931, '地方礼品', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (944, 931, '古董把玩', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (945, 903, '奢侈品', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (946, 945, '箱包', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (947, 945, '钱包', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (948, 945, '服饰', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (949, 945, '腰带', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (950, 945, '太阳镜/眼镜框', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (951, 945, '配件', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (952, 945, '鞋靴', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (953, 945, '饰品', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (954, 945, '名品腕表', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (955, 945, '高档化妆品', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (956, 903, '婚庆', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (957, 956, '婚嫁首饰', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (958, 956, '婚纱摄影', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (959, 956, '婚纱礼服', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (960, 956, '婚庆服务', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (961, 956, '婚庆礼品/用品', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (962, 956, '婚宴', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (963, 0, '珠宝', 0, 17, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (964, 963, '时尚饰品', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (965, 964, '项链', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (966, 964, '手链/脚链', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (967, 964, '戒指', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (968, 964, '耳饰', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (969, 964, '头饰', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (970, 964, '胸针', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (971, 964, '婚庆饰品', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (972, 964, '饰品配件', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (973, 963, '纯金K金饰品', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (974, 973, '吊坠/项链', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (975, 973, '手镯/手链/脚链', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (976, 973, '戒指', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (977, 973, '耳饰', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (978, 963, '金银投资', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (979, 978, '工艺金', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (980, 978, '工艺银', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (981, 963, '银饰', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (982, 981, '吊坠/项链', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (983, 981, '手镯/手链/脚链', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (984, 981, '戒指/耳饰', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (985, 981, '宝宝银饰', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (986, 981, '千足银手镯', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (987, 963, '钻石', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (988, 987, '裸钻', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (989, 987, '戒指', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (990, 987, '项链/吊坠', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (991, 987, '耳饰', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (992, 987, '手镯/手链', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (993, 963, '翡翠玉石', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (994, 993, '项链/吊坠', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (995, 993, '手镯/手串', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (996, 993, '戒指', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (997, 993, '耳饰', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (998, 993, '挂件/摆件/把件', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (999, 993, '高值收藏', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1000, 963, '水晶玛瑙', 1, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1001, 1000, '项链/吊坠', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1002, 1000, '耳饰', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1003, 1000, '手镯/手链/脚链', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1004, 1000, '戒指', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1005, 1000, '头饰/胸针', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1006, 1000, '摆件/挂件', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1007, 963, '彩宝', 1, 8, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1008, 1007, '项链/吊坠', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1009, 1007, '耳饰', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1010, 1007, '手镯/手链', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1011, 1007, '戒指', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1012, 963, '铂金', 1, 9, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1013, 1012, '项链/吊坠', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1014, 1012, '手镯/手链/脚链', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1015, 1012, '戒指', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1016, 1012, '耳饰', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1017, 963, '天然木饰', 1, 10, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1018, 1017, '小叶紫檀', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1019, 1017, '黄花梨', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1020, 1017, '沉香', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1021, 1017, '金丝楠', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1022, 1017, '菩提', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1023, 1017, '其他', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1024, 963, '珍珠', 1, 11, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1025, 1024, '项链', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1026, 1024, '吊坠', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1027, 1024, '耳饰', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1028, 1024, '手链', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1029, 1024, '戒指', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1030, 1024, '胸针', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1031, 0, '运动健康', 0, 18, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1032, 1031, '运动鞋包', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1033, 1032, '休闲鞋', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1034, 1032, '板鞋', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1035, 1032, '帆布鞋', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1036, 1032, '专项运动鞋', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1037, 1032, '跑步鞋', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1038, 1032, '篮球鞋', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1039, 1032, '足球鞋', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1040, 1032, '训练鞋', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1041, 1032, '乒羽网鞋', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1042, 1032, '拖鞋', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1043, 1032, '运动包', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1044, 1031, '运动服饰', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1045, 1044, '运动配饰', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1046, 1044, '羽绒服', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1047, 1044, '毛衫/线衫', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1048, 1044, '乒羽网服', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1049, 1044, '训练服', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1050, 1044, '运动背心', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1051, 1044, '卫衣/套头衫', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1052, 1044, '夹克/风衣', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1053, 1044, 'T恤', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1054, 1044, '棉服', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1055, 1044, '运动裤', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1056, 1044, '套装', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1057, 1031, '骑行运动', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1058, 1057, '折叠车', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1059, 1057, '山地车/公路车', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1060, 1057, '电动车', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1061, 1057, '其他整车', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1062, 1057, '骑行服', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1063, 1057, '骑行装备', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1064, 1031, '垂钓用品', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1065, 1064, '鱼竿鱼线', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1066, 1064, '浮漂鱼饵', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1067, 1064, '钓鱼桌椅', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1068, 1064, '钓鱼配件', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1069, 1064, '钓箱鱼包', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1070, 1064, '其它', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1071, 1031, '游泳用品', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1072, 1071, '泳镜', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1073, 1071, '泳帽', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1074, 1071, '游泳包防水包', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1075, 1071, '女士泳衣', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1076, 1071, '男士泳衣', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1077, 1071, '比基尼', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1078, 1071, '其它', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1079, 1031, '户外鞋服', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1080, 1079, '冲锋衣裤', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1081, 1079, '速干衣裤', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1082, 1079, '滑雪服', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1083, 1079, '羽绒服/棉服', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1084, 1079, '休闲衣裤', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1085, 1079, '抓绒衣裤', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1086, 1079, '软壳衣裤', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1087, 1079, 'T恤', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1088, 1079, '户外风衣', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1089, 1079, '功能内衣', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1090, 1079, '军迷服饰', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1091, 1079, '登山鞋', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1092, 1079, '雪地靴', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1093, 1079, '徒步鞋', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1094, 1079, '越野跑鞋', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1095, 1079, '休闲鞋', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1096, 1079, '工装鞋', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1097, 1079, '溯溪鞋', 1, 18, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1098, 1079, '沙滩/凉拖', 1, 19, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1099, 1079, '户外袜', 1, 20, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1100, 1031, '户外装备', 1, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1101, 1100, '帐篷/垫子', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1102, 1100, '睡袋/吊床', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1103, 1100, '登山攀岩', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1104, 1100, '背包', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1105, 1100, '户外配饰', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1106, 1100, '户外照明', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1107, 1100, '户外仪表', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1108, 1100, '户外工具', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1109, 1100, '望远镜', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1110, 1100, '旅游用品', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1111, 1100, '便携桌椅床', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1112, 1100, '野餐烧烤', 1, 12, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1113, 1100, '军迷用品', 1, 13, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1114, 1100, '救援装备', 1, 14, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1115, 1100, '滑雪装备', 1, 15, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1116, 1100, '极限户外', 1, 16, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1117, 1100, '冲浪潜水', 1, 17, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1118, 1031, '健身训练', 1, 8, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1119, 1118, '综合训练器', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1120, 1118, '其他大型器械', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1121, 1118, '哑铃', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1122, 1118, '仰卧板/收腹机', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1123, 1118, '其他中小型器材', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1124, 1118, '瑜伽舞蹈', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1125, 1118, '武术搏击', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1126, 1118, '健身车/动感单车', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1127, 1118, '跑步机', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1128, 1118, '运动护具', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1129, 1031, '纤体瑜伽', 1, 9, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1130, 1129, '瑜伽垫', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1131, 1129, '瑜伽服', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1132, 1129, '瑜伽配件', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1133, 1129, '瑜伽套装', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1134, 1129, '舞蹈鞋服', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1135, 1031, '体育用品', 1, 10, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1136, 1135, '羽毛球', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1137, 1135, '乒乓球', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1138, 1135, '篮球', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1139, 1135, '足球', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1140, 1135, '网球', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1141, 1135, '排球', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1142, 1135, '高尔夫', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1143, 1135, '台球', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1144, 1135, '棋牌麻将', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1145, 1135, '轮滑滑板', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1146, 1135, '其他', 1, 11, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1147, 0, '彩票、旅行、充值、票务', 0, 19, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1148, 1147, '彩票', 1, 1, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1149, 1148, '双色球', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1150, 1148, '大乐透', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1151, 1148, '福彩3D', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1152, 1148, '排列三', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1153, 1148, '排列五', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1154, 1148, '七星彩', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1155, 1148, '七乐彩', 1, 7, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1156, 1148, '竞彩足球', 1, 8, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1157, 1148, '竞彩篮球', 1, 9, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1158, 1148, '新时时彩', 1, 10, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1159, 1147, '机票', 1, 2, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1160, 1159, '国内机票', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1161, 1147, '酒店', 1, 3, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1162, 1161, '国内酒店', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1163, 1161, '酒店团购', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1164, 1147, '旅行', 1, 4, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1165, 1164, '度假', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1166, 1164, '景点', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1167, 1164, '租车', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1168, 1164, '火车票', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1169, 1164, '旅游团购', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1170, 1147, '充值', 1, 5, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1171, 1170, '手机充值', 1, 1, 0, NULL, NULL, NULL, '2020-03-31 01:37:24');
INSERT INTO `t_goods_category` VALUES (1172, 1147, '游戏', 1, 6, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1173, 1172, '游戏点卡', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1174, 1172, 'QQ充值', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1175, 1147, '票务', 1, 7, 1, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1176, 1175, '电影票', 1, 1, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1177, 1175, '演唱会', 1, 2, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1178, 1175, '话剧歌剧', 1, 3, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1179, 1175, '音乐会', 1, 4, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1180, 1175, '体育赛事', 1, 5, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1181, 1175, '舞蹈芭蕾', 1, 6, 0, 'admin', '2017-10-25 15:00:55', 'admin', '2017-10-25 15:00:55');
INSERT INTO `t_goods_category` VALUES (1182, 1147, '戏曲综艺', 1, 7, 0, NULL, NULL, NULL, '2020-03-31 01:29:27');
COMMIT;

-- ----------------------------
-- Table structure for t_hot_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_hot_goods`;
CREATE TABLE `t_hot_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `salt_goods_num` int(9) DEFAULT 0 COMMENT '热卖商品',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `item_type` varchar(100) DEFAULT NULL COMMENT '商品系列',
  `title` varchar(100) DEFAULT NULL COMMENT '商品标题',
  `sell_point` varchar(150) DEFAULT NULL COMMENT '商品卖点',
  `price` bigint(20) DEFAULT NULL COMMENT '商品单价',
  `num` int(10) DEFAULT NULL COMMENT '库存数量',
  `barcode` varchar(30) DEFAULT NULL COMMENT '条形码',
  `image` varchar(500) DEFAULT NULL COMMENT '图片路径',
  `status` int(1) DEFAULT 1 COMMENT '商品状态：1、上架，2、下架，3、删除',
  `priority` int(10) DEFAULT NULL COMMENT '显示优先级',
  `created_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(50) DEFAULT NULL COMMENT '最后修改人',
  `modified_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000058 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of t_hot_goods
-- ----------------------------
BEGIN;
INSERT INTO `t_hot_goods` VALUES (10000000, 199, 238, '牛皮纸记事本', '广博(GuangBo)10本装40张A5牛皮纸记事本子日记本办公软抄本GBR0731', '经典回顾！超值特惠！', 23, 99999, NULL, '/images/portal/00GuangBo1040A5GBR0731/collect.png', 1, 53, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000001, 23, 238, '牛皮纸记事本', '广博(GuangBo)10本装40张A5牛皮纸记事本子日记本办公软抄本GBR0731', '经典回顾！超值特惠！', 23, 99999, NULL, '/images/portal/00GuangBo1040A5GBR0731/collect.png', 1, 62, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000002, 54, 238, '皮面日程本', '广博(GuangBo)皮面日程本子 计划记事本效率手册米色FB60322', '经典回顾！超值特惠！', 46, 99999, NULL, '/images/portal/001GuangBo)FB60322/collect.png', 1, 49, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000003, 54, 238, '记事本日记本笔记本', '广博(GuangBo)16K115页线圈记事本子日记本文具笔记本图案随机', '经典回顾！超值特惠！', 13, 99999, NULL, '/images/portal/01GuangBo16K115FB60506/collect.png', 1, 58, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000004, 4, 241, '计算器', '得力（deli）1548A商务办公桌面计算器 太阳能双电源', '经典回顾！超值特惠！', 58, 99999, NULL, '/images/portal/002calculator1548A/collect.png', 1, 42, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000005, 52, 241, '圆珠笔', '施耐德（Schneider） K15 经典款圆珠笔 (5支混色装)', '经典回顾！超值特惠！', 29, 99999, NULL, '/images/portal/03SchneiderK15/collect.png', 1, 36, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000006, 54, 236, '票据网格拉链袋', '三木(SUNWOOD) C4523 票据网格拉链袋/文件袋 12个装 颜色随机', '经典回顾！超值特惠！', 28, 99999, NULL, '/images/portal/04_SUNWOODC452312/collect.png', 1, 53, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000007, 52, 163, '燃 7000经典版', '戴尔Dell 燃700金色', '下单赠12000毫安移动电源', 32999, 99999, NULL, '/images/portal/11DELLran7000gold/collect.png', 1, 59, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000008, 524, 163, '燃 7000经典版', '戴尔Dell 燃700R1605银色', '仅上海，广州，沈阳仓有货！预购从速！', 4549, 99999, NULL, '/images/portal/11DELLran7000R1605Ssilvery/collect.png', 1, 32, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000009, 43, 163, '燃 7000学习版', '戴尔Dell 燃700金色', '下单赠12000毫安移动电源', 39929, 99999, NULL, '/images/portal/11DELLran7000gold/collect.png', 1, 84, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000010, 567, 163, '燃 7000学习版', '戴尔Dell 燃700R1605银色', '仅上海，广州，沈阳仓有货！预购从速！', 5559, 99999, NULL, '/images/portal/11DELLran7000R1605Ssilvery/collect.png', 1, 21, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000011, 42, 163, '燃 7000高配版', '戴尔Dell 燃700金色', '下单赠12000毫安移动电源', 3994, 99999, NULL, '/images/portal/11DELLran7000gold/collect.png', 1, 56, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000012, 4, 163, '燃 7000高配版', '戴尔Dell 燃700R1605银色', '仅上海，广州，沈阳仓有货！预购从速！', 6559, 99999, NULL, '/images/portal/11DELLran7000R1605Ssilvery/collect.png', 1, 16, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000013, 25, 238, 'A5优品商务笔记本', '齐心（COMIX）C5902 A5优品商务笔记本子记事本日记本122张', '下单即送10400毫安移动电源！再赠手机魔法盒！', 41, 99999, NULL, '/images/portal/02COMIXC5902A5122blue/collect.png', 1, 10, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000014, 2, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4600, 99999, NULL, '/images/portal/12(DELL)XPS13gold/collect.png', 1, 1, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000015, 52, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4601, 99999, NULL, '/images/portal/12DELLXPS13-silvery/collect.png', 1, 73, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000016, 54, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4602, 99999, NULL, '/images/portal/12(DELL)XPS13gold/collect.png', 1, 64, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000017, 2, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4604, 99992, NULL, '/images/portal/12DELLXPS13-silvery/collect.png', 1, 100, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000018, 452, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4605, 99999, NULL, '/images/portal/12(DELL)XPS13gold/collect.png', 1, 7, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000019, 252, 163, 'XPS13-9360', '戴尔(DELL)XPS13-9360-R1609 13.3', '仅上海，广州，沈阳仓有货！预购从速！', 4899, 99999, NULL, '/images/portal/12DELLXPS13-silvery/collect.png', 1, 34, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000020, 64, 163, 'IdeaPad310低配版', '联想（Lenovo）IdeaPad310低配版', '清仓！仅北京，武汉仓有货！', 5119, 99999, NULL, '/images/portal/13LenovoIdeaPad310_black/collect.png', 1, 50, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000021, 52, 163, 'IdeaPad310低配版', '联想（Lenovo）IdeaPad310低配版', '清仓！仅北京，武汉仓有货！', 5129, 99999, NULL, '/images/portal/13LenovoIdeaPad310_silvery/collect.png', 1, 48, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000022, 76, 163, 'IdeaPad310经典版', '联想（Lenovo）IdeaPad310经典版', '清仓！仅北京，武汉仓有货！', 5119, 99999, NULL, '/images/portal/13LenovoIdeaPad310_black/collect.png', 1, 90, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000023, 4, 163, 'IdeaPad310经典版', '联想（Lenovo）IdeaPad310经典版', '清仓！仅北京，武汉仓有货！', 5129, 99999, NULL, '/images/portal/13LenovoIdeaPad310_silvery/collect.png', 1, 6, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000024, 63, 163, 'IdeaPad310高配版', '联想（Lenovo）IdeaPad310高配版', '清仓！仅北京，武汉仓有货！', 5119, 99999, NULL, '/images/portal/13LenovoIdeaPad310_black/collect.png', 1, 60, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000025, 63, 163, 'IdeaPad310高配版', '联想（Lenovo）IdeaPad310高配版', '清仓！仅北京，武汉仓有货！', 5129, 99999, NULL, '/images/portal/13LenovoIdeaPad310_silvery/collect.png', 1, 80, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000026, 123, 163, 'YOGA710', '联想（Lenovo）YOGA710 14英寸触控笔记本（i7-7500U 8G 256GSSD 2G独显 全高清IPS 360°翻转 正版office）金', '【0元献礼】好评过万，销量传奇！经典蓝光电视，独有自然光技术专利，过大年带最好的回家！【0元白条试用，1001个拜年计划】', 59999, 99999, NULL, '/images/portal/14LenovoYOGA710 _gold/collect.png', 1, 19, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000027, 344, 163, 'YOGA710', '联想（Lenovo）YOGA710 14英寸触控笔记本（i7-7500U 8G 256GSSD 2G独显 全高清IPS 360°翻转 正版office）银', '【0元献礼】好评过万，销量传奇！经典蓝光电视，独有自然光技术专利，过大年带最好的回家！【0元白条试用，1001个拜年计划】', 59999, 99999, NULL, '/images/portal/14LenovoYOGA710 _silvery/collect.png', 1, 55, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000028, 54, 163, '310低配版', '联想（Lenovo）小新310低配版', '清仓！仅北京，武汉仓有货！', 4939, 99997, NULL, '/images/portal/15Lenovo_xiaoxin_310_black/collect.png', 1, 19, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000029, 654, 163, '310低配版', '联想（Lenovo）小新310低配版', '清仓！仅北京，武汉仓有货！', 4839, 99999, NULL, '/images/portal/15Lenovo_xiaoxin_310_silvery/collect.png', 1, 27, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000030, 21, 163, '310经典版', '联想（Lenovo）小新310经典版', '清仓！仅北京，武汉仓有货！', 4739, 99999, NULL, '/images/portal/15Lenovo_xiaoxin_310_black/collect.png', 1, 78, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000031, 45, 163, '310经典版', '联想（Lenovo）小新310经典版', '清仓！仅北京，武汉仓有货！', 4639, 99998, NULL, '/images/portal/15Lenovo_xiaoxin_310_silvery/collect.png', 1, 9, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000032, 42, 163, '310高配版', '联想（Lenovo）小新310高配版', '清仓！仅北京，武汉仓有货！', 4539, 99999, NULL, '/images/portal/15Lenovo_xiaoxin_310_black/collect.png', 1, 9, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000033, 452, 163, '310高配版', '联想（Lenovo）小新310高配版', '清仓！仅北京，武汉仓有货！', 4439, 99999, NULL, '/images/portal/15Lenovo_xiaoxin_310_silvery/collect.png', 1, 18, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000034, 52, 163, 'YOGA900', '联想（Lenovo）YOGA900绿色', '青春的活力 清新漂亮高端大气上档次', 5200, 99999, NULL, '/images/portal/16LenovoYOGA900green/collect.png', 1, 63, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000035, 76, 163, 'YOGA900', '联想（Lenovo）YOGA900粉色', '青春的活力 清新漂亮高端大气上档次', 5200, 99999, NULL, '/images/portal/16LenovoYOGA900pink/collect.png', 1, 62, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000036, 452, 163, 'YOGA900', '联想（Lenovo）YOGA900红色', '青春的活力 清新漂亮高端大气上档次', 5200, 99999, NULL, '/images/portal/16LenovoYOGA900red/collect.png', 1, 21, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000037, 4325, 163, '小新13旗舰版', '联想(Lenovo)小新Air13 Pro 13.3英寸14.8mm超轻薄笔记本电脑', '青春的活力 青年专属', 6439, 99998, NULL, '/images/portal/17Lenovo)xiaoxinAir13Pro_gold/collect.png', 1, 16, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000038, 657, 163, '小新13旗舰版', '联想(Lenovo)小新Air13 Pro 13.3英寸14.8mm超轻薄笔记本电脑', '青春的活力 青年专属', 6439, 99998, NULL, '/images/portal/17Lenovo)xiaoxinAir13Pro_silvery/collect.png', 1, 17, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000039, 767, 163, 'XPS15', '戴尔(DELL) XPS15 银色', '限时特价！好评过万条优秀产品！', 3333, 99999, NULL, '/images/portal/18(DELL)XPS15_silvery/collect.png', 1, 37, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000040, 543, 163, 'DELL 15MF Pro', '戴尔(DELL)魔方15MF Pro-R2505TSS灵越', '15.6英寸二合一翻转笔记本电脑 (i5-7200U 8GB 1TB IPS Win10)触控银', 4443, 99999, NULL, '/images/portal/19DELL15MF Pro/collect.png', 1, 35, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000041, 45, 163, 'DELL XPS15-9550', '戴尔(DELL) XPS15升级版 ', '15.6英寸二合一翻转笔记本电脑 (i5-7200U 8GB 1TGB IPS Win10)触控', 8443, 99999, NULL, '/images/portal/20DellXPS15-9550/collect.png', 1, 61, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000042, 64, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i5 6代 红色', '经典回顾！超值特惠！', 4399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 99, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000043, 524, 917, '书包 bag', '乐尚书包 电脑包 bag黑色', '给你满载而归的喜悦！', 89, 99999, NULL, '/images/portal/22_LEXON_LNE6025B06T/collect.png', 1, 12, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000044, 52, 917, '书包 bag', '乐尚书包 电脑包 bag粉色', '给你满载而归的喜悦！', 89, 99999, NULL, '/images/portal/22_LEXON_LNE6025B06T/collect.png', 1, 62, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000045, 37, 238, '皮面日程本', '广博(GuangBo)皮面日程本子 计划记事本效率手册蓝色FB60321', '经典回顾！超值特惠！', 22, 99999, NULL, '/images/portal/001GuangBo)FB60322/collect.png', 1, 73, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000046, 67, 163, 'XPS15', '戴尔(DELL) XPS15 金色', '限时特价！好评过万条优秀产品！', 3333, 99999, NULL, '/images/portal/18(DELL)XPS15_silvery/collect.png', 1, 81, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000047, 524, 163, 'DELL 15MF Pro', '戴尔(DELL)魔方15MF Pro-R2505TSS灵越', '15.6英寸二合一翻转笔记本电脑 (i5-7200U 8GB 1TB IPS Win10)触控白', 4443, 99997, NULL, '/images/portal/19DELL15MF Pro/collect.png', 1, 86, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000048, 13, 163, 'DELL 15MF Pro', '戴尔(DELL)魔方15MF Pro-R2505TSS灵越', '15.6英寸二合一翻转笔记本电脑 (i7-7200U 8GB 512GB IPS Win10)触控银', 6443, 99999, NULL, '/images/portal/19DELL15MF Pro/collect.png', 1, 84, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000049, 431, 163, 'DELL 15MF Pro', '戴尔(DELL)魔方15MF Pro-R2505TSS灵越', '15.6英寸二合一翻转笔记本电脑 (i7-7200U 8GB 512GB IPS Win10)触控白', 6443, 99999, NULL, '/images/portal/19DELL15MF Pro/collect.png', 1, 63, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000050, 65, 163, 'DELL XPS15-9550', '戴尔(DELL) XPS15升级版 ', '15.6英寸二合一翻转笔记本电脑 (i5-7200U 8GB 256GB IPS Win10)触控', 8443, 99999, NULL, '/images/portal/20DellXPS15-9550/collect.png', 1, 60, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000051, 653, 163, 'DELL XPS15-9550', '戴尔(DELL) XPS15升级版 ', '15.6英寸二合一翻转笔记本电脑 (i7-7200U 8GB 1TB IPS Win10)触控', 8443, 99999, NULL, '/images/portal/20DellXPS15-9550/collect.png', 1, 13, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000052, 245, 163, 'DELL XPS15-9550', '戴尔(DELL) XPS15升级版 ', '15.6英寸二合一翻转笔记本电脑 (i7-7200U 8GB 256GB IPS Win10)触控', 8443, 99999, NULL, '/images/portal/20DellXPS15-9550/collect.png', 1, 83, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000053, 542, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i7 6700 红', '经典回顾！超值特惠！', 6399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 74, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000054, 1341, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i5 6代 黄', '经典回顾！超值特惠！', 4399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 23, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000055, 54, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i5 6代 蓝', '经典回顾！超值特惠！', 4399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 87, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
INSERT INTO `t_hot_goods` VALUES (10000056, 87, 163, 'ThinkPad New s1', '联想ThinkPad New S2（01CD） i7 6700 蓝', '经典回顾！超值特惠！', 6399, 99999, NULL, '/images/portal/21ThinkPad_New_S1/collect.png', 1, 59, 'admin', '2017-10-25 15:08:55', 'admin', '2017-10-25 15:08:55');
COMMIT;

-- ----------------------------
-- Table structure for t_note
-- ----------------------------
DROP TABLE IF EXISTS `t_note`;
CREATE TABLE `t_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` varchar(1000) DEFAULT NULL COMMENT '便签内容',
  `time` varchar(50) DEFAULT NULL COMMENT '保存时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_note
-- ----------------------------
BEGIN;
INSERT INTO `t_note` VALUES (48, 'you see see you, one day day', '2020-三月-27 06:14:007');
INSERT INTO `t_note` VALUES (49, 'try your best', '2020-三月-27 06:21:042');
INSERT INTO `t_note` VALUES (50, 'fff', '2020-三月-27 06:23:013');
INSERT INTO `t_note` VALUES (51, 'super man', '2020-三月-27 06:23:044');
INSERT INTO `t_note` VALUES (52, 'Hello world', '2020-三月-27 06:24:031');
INSERT INTO `t_note` VALUES (53, '', '2020-三月-27 06:26:018');
INSERT INTO `t_note` VALUES (54, 'hhhhh', '2020-三月-27 06:26:023');
INSERT INTO `t_note` VALUES (55, 'Hello world', '2020-三月-27 06:26:035');
INSERT INTO `t_note` VALUES (56, 'Hello world', '2020-三月-27 06:26:038');
INSERT INTO `t_note` VALUES (57, 'Hello world', '2020-三月-27 06:26:040');
INSERT INTO `t_note` VALUES (58, '', '2020-三月-27 06:27:018');
INSERT INTO `t_note` VALUES (59, '', '2020-三月-27 06:27:027');
INSERT INTO `t_note` VALUES (60, '', '2020-三月-27 06:30:058');
INSERT INTO `t_note` VALUES (61, '', '2020-三月-27 06:31:001');
INSERT INTO `t_note` VALUES (62, '', '2020-三月-27 06:34:058');
INSERT INTO `t_note` VALUES (63, '', '2020-三月-27 06:35:001');
INSERT INTO `t_note` VALUES (64, '', '2020-三月-27 06:41:039');
INSERT INTO `t_note` VALUES (65, '', '2020-三月-27 06:41:045');
INSERT INTO `t_note` VALUES (66, 'nihao', '2020-三月-27 06:43:019');
INSERT INTO `t_note` VALUES (67, '06.44', '2020-三月-27 06:45:001');
INSERT INTO `t_note` VALUES (68, 'monday', '2020-三月-27 06:47:057');
INSERT INTO `t_note` VALUES (69, '', '2020-三月-27 06:51:001');
INSERT INTO `t_note` VALUES (70, '', '2020-三月-27 06:51:012');
INSERT INTO `t_note` VALUES (71, '', '2020-三月-27 07:59:032');
INSERT INTO `t_note` VALUES (72, '', '2020-三月-27 07:59:039');
INSERT INTO `t_note` VALUES (73, '', '2020-三月-27 07:59:059');
INSERT INTO `t_note` VALUES (74, '', '2020-三月-27 08:00:029');
INSERT INTO `t_note` VALUES (75, '', '2020-三月-27 08:00:036');
INSERT INTO `t_note` VALUES (76, '', '2020-三月-27 08:44:013');
INSERT INTO `t_note` VALUES (77, '\"1234567\"', '2020-三月-27 10:16:002');
INSERT INTO `t_note` VALUES (78, '111111', '2020-三月-27 10:16:028');
INSERT INTO `t_note` VALUES (79, 'qqqqqqq', '2020-三月-27 10:43:048');
INSERT INTO `t_note` VALUES (80, '1234560', '2020-三月-27 11:06:008');
INSERT INTO `t_note` VALUES (81, '+++++++++', '2020-三月-27 11:06:042');
INSERT INTO `t_note` VALUES (82, '1122333', '2020-三月-27 17:18:052');
INSERT INTO `t_note` VALUES (83, 'wqeqwdfsdfsdf', '2020-三月-27 17:22:000');
INSERT INTO `t_note` VALUES (84, '43654634564', '2020-三月-27 17:22:031');
INSERT INTO `t_note` VALUES (85, 'dshjkwww', '2020-三月-27 17:25:043');
INSERT INTO `t_note` VALUES (86, '43tgegtrfdbdfghb', '2020-三月-27 17:31:004');
INSERT INTO `t_note` VALUES (87, 'gdgfdhgfdghfghjdfjf', '2020-三月-27 17:32:036');
INSERT INTO `t_note` VALUES (88, 'wasdfvhn jytygnhg行哈哈哈哈哈', '2020-三月-27 17:35:036');
INSERT INTO `t_note` VALUES (89, 'dsgdfbhfgnfg ', '2020-三月-27 17:38:007');
INSERT INTO `t_note` VALUES (90, 'bhjgjkhvgfhjk', '2020-三月-27 17:48:030');
INSERT INTO `t_note` VALUES (91, '9876', '2020-三月-27 17:49:031');
INSERT INTO `t_note` VALUES (92, 'pp', '2020-三月-27 17:49:059');
INSERT INTO `t_note` VALUES (93, 'pp', '2020-三月-27 17:50:033');
INSERT INTO `t_note` VALUES (94, '0987', '2020-三月-27 17:50:041');
INSERT INTO `t_note` VALUES (95, '没错', '2020-三月-28 17:41:020');
INSERT INTO `t_note` VALUES (96, '超级管理员', '2020-三月-28 19:00:003');
INSERT INTO `t_note` VALUES (97, '1111', '2020-三月-28 19:01:002');
INSERT INTO `t_note` VALUES (98, 'chifan11', '2020-三月-28 19:02:003');
INSERT INTO `t_note` VALUES (99, '00000000', '2020-三月-28 19:02:013');
INSERT INTO `t_note` VALUES (100, '00000000', '2020-三月-28 20:59:054');
INSERT INTO `t_note` VALUES (101, '00000000', '2020-三月-30 19:54:040');
INSERT INTO `t_note` VALUES (102, 'Hello World ', '2020-三月-30 19:58:026');
COMMIT;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `payment_amount` varchar(50) DEFAULT NULL COMMENT '实付金额。精确到2位小数，单位（元）',
  `payment_type` int(2) DEFAULT NULL COMMENT '支付类型：1、在线支付，2、货到付款',
  `post_fee` varchar(50) DEFAULT NULL COMMENT '邮费：精确到2位小数，单位（元）',
  `status` int(10) DEFAULT NULL COMMENT '状态：1、未付款，2、已付款，3、未发货，4、已发货，5、交易成功，6、交易关闭',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '订单更新时间',
  `payment_time` datetime DEFAULT NULL COMMENT '付款时间',
  `consign_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `shipping_name` varchar(20) DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(20) DEFAULT NULL COMMENT '物流单号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户(买家)id',
  `buyer_message` varchar(100) DEFAULT NULL COMMENT '买家留言',
  `buyer_nick` varchar(50) DEFAULT NULL COMMENT '买家昵称',
  `buyer_rate` int(2) DEFAULT NULL COMMENT '买家是否已经评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of t_order
-- ----------------------------
BEGIN;
INSERT INTO `t_order` VALUES (1, '23', 35, '45', 2, '2019-11-11 20:38:39', '2019-11-14 20:38:17', '2019-11-11 00:00:00', '2020-03-28 20:41:38', '2019-11-17 00:00:00', '2020-03-28 20:41:48', '联想笔记电脑', '432156', 1, '梦想', '蛋蛋', 333);
COMMIT;

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单项id',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品id',
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `title` varchar(200) DEFAULT NULL COMMENT '商品标题',
  `image` varchar(200) DEFAULT NULL COMMENT '商品图片地址',
  `price` bigint(20) DEFAULT NULL COMMENT '商品单价',
  `num` int(10) DEFAULT NULL COMMENT '商品购买数量',
  `total_amount` bigint(20) DEFAULT NULL COMMENT '商品总金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单项表';

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
BEGIN;
INSERT INTO `t_order_item` VALUES (1, 10000001, 1, '广博(GuangBo)10本装40张A5牛皮纸记事本子日记本办公软抄本GBR0731', '/images/portal/00GuangBo1040A5GBR0731/collect.png', 23, 1, 23);
INSERT INTO `t_order_item` VALUES (2, 10000004, 1, '得力（deli）1548A商务办公桌面计算器 太阳能双电源', '/images/portal/002calculator1548A/collect.png', 58, 1, 58);
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码：MD5加密',
  `real_name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `phone` varchar(20) NOT NULL COMMENT '手机号码',
  `email` varchar(50) NOT NULL COMMENT '电子邮箱',
  `image` varchar(100) DEFAULT NULL COMMENT '头像',
  `gender` int(1) DEFAULT NULL COMMENT '性别：1、男，0、女',
  `status` int(1) DEFAULT NULL COMMENT '状态：1、激活，2、冻结，3、删除',
  `created_user` varchar(50) DEFAULT NULL COMMENT '创建者',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modified_user` varchar(50) DEFAULT NULL COMMENT '修改者',
  `modified_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (1, 'tester', 'tester123', '测试用户', '15578894732', 'tester@sa.com', NULL, 1, 0, NULL, '2018-06-07 13:28:06', NULL, '2020-03-30 20:36:03');
INSERT INTO `t_user` VALUES (2, 'caocao', '123456', '曹操', '12345678901', 'caocao@sa.com', NULL, 1, 1, NULL, '2018-06-11 17:23:47', NULL, NULL);
INSERT INTO `t_user` VALUES (3, 'liubei', '123456', '刘备', '12345678902', 'liubei@sa.com', NULL, 1, 1, NULL, '2018-06-11 17:24:29', NULL, NULL);
INSERT INTO `t_user` VALUES (4, 'guanyu', '123456', '关羽', '12345678903', 'guanyu@sa.com', NULL, 1, 1, NULL, '2018-06-11 17:25:36', NULL, NULL);
INSERT INTO `t_user` VALUES (5, 'zhangfei', '123456', '张飞', '12345678904', 'zhangfei@sa.com', NULL, 1, 1, NULL, '2018-06-11 17:26:07', NULL, '2020-04-13 22:46:32');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
