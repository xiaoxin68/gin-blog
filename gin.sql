/*
Navicat MySQL Data Transfer

Source Server         : zhang
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : gin

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-06-16 10:50:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned DEFAULT '0' COMMENT '标签ID',
  `title` varchar(100) DEFAULT '' COMMENT '文章标题',
  `desc` varchar(255) DEFAULT '' COMMENT '简述',
  `content` text,
  `created_on` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(255) DEFAULT '' COMMENT '修改人',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用1为启用',
  `deleted_on` int(10) unsigned DEFAULT '0' COMMENT '删除时间',
  `cover_image_url` varchar(255) DEFAULT NULL COMMENT '封面图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='文章管理';

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('1', '1', 'test1', 'test-desc', 'test-content', '1589463902', 'test-created', '0', '', '1', '1589547699', null);
INSERT INTO `blog_article` VALUES ('3', '1', 'test2', 'test-desc2', 'test-content2', '1589537081', 'test-created', '1589537081', '', '1', '1589686503', null);
INSERT INTO `blog_article` VALUES ('4', '1', 'test3', 'test-desc3', 'test-content3', '1589537108', 'test-created3', '1589537108', '', '1', '0', null);
INSERT INTO `blog_article` VALUES ('5', '6', 'rew312', '描述123', '详情31', '1589686301', '张三', '1589686463', '张三321', '1', '0', 'www.daibu.com23');

-- ----------------------------
-- Table structure for blog_auth
-- ----------------------------
DROP TABLE IF EXISTS `blog_auth`;
CREATE TABLE `blog_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '账号',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_auth
-- ----------------------------
INSERT INTO `blog_auth` VALUES ('1', 'test', 'test123456');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '标签名称',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用、1为启用',
  `deleted_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='文章标签管理';

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES ('1', 'edit1', '0', 'test', '1589459495', 'edit1', '0', '1589685769');
INSERT INTO `blog_tag` VALUES ('2', '1', '0', 'test', '0', '', '1', '1589546132');
INSERT INTO `blog_tag` VALUES ('3', '2', '1589458216', 'test2', '0', '', '1', '1589684666');
INSERT INTO `blog_tag` VALUES ('4', 'test2', '0', 'test2', '0', '', '1', '1589684682');
INSERT INTO `blog_tag` VALUES ('5', 'das', '0', 'test3', '1589685401', 'testdas', '1', '1589685802');
INSERT INTO `blog_tag` VALUES ('6', '2231', '0', 'test4', '1589685702', 'testdas', '1', '0');
INSERT INTO `blog_tag` VALUES ('7', 'test5', '1589684407', 'test5', '0', '', '1', '0');
INSERT INTO `blog_tag` VALUES ('8', 'test65', '1589684734', 'test6', '1589684734', '', '1', '0');
INSERT INTO `blog_tag` VALUES ('9', 'test7', '1589684781', 'test7', '1589684781', '', '1', '0');
INSERT INTO `blog_tag` VALUES ('10', 'test8', '1589684899', 'test8', '1589684899', '', '0', '0');
INSERT INTO `blog_tag` VALUES ('11', 'test9', '1589684919', 'test9', '1589684919', '', '1', '0');
INSERT INTO `blog_tag` VALUES ('12', 'test91', '1589684957', 'test91', '1589684957', '', '1', '0');
INSERT INTO `blog_tag` VALUES ('13', '123', '1589684988', 'test91', '1589684988', '', '1', '0');
INSERT INTO `blog_tag` VALUES ('14', '2231我确认群翁人', '1589703574', 'test4', '1589703574', '', '1', '0');
