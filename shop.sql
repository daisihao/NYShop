/*
Navicat MySQL Data Transfer

Source Server         : NY
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : ny

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2016-05-21 20:08:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `ADMIN_ID` int(11) NOT NULL COMMENT '管理员ID',
  `USERNAME` varchar(30) default NULL COMMENT '用户名',
  `PWD` varchar(45) default NULL COMMENT '用户密码',
  `MOBILE` varchar(20) default NULL COMMENT '用户手机号',
  `LOGINDATE` datetime default NULL COMMENT '最后一次登录时间',
  `ADMIN_BAK1` int(20) default NULL,
  `ADMIN_BAK2` varchar(45) default NULL,
  `ADMIN_BAK3` datetime default NULL,
  PRIMARY KEY  (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'weibeisha', 'wbs123', '13986556183', '2015-07-08 09:41:04', '0', '', '0000-00-00 00:00:00');
INSERT INTO `admin` VALUES ('2', 'fanzhixin', 'fzx123', '13986556281', '2015-07-30 09:40:59', '0', '', '0000-00-00 00:00:00');
INSERT INTO `admin` VALUES ('3', 'guoyongchao', 'gyc123', '18171758839', '2015-07-31 09:40:54', '0', '', '0000-00-00 00:00:00');
INSERT INTO `admin` VALUES ('4', 'wulinzi', 'wlz123', '13986536030', '2015-07-15 09:40:46', '0', '', '0000-00-00 00:00:00');
INSERT INTO `admin` VALUES ('5', '熊晶', 'xj123', '18671305157', '2015-07-08 09:40:42', '0', '', '0000-00-00 00:00:00');
INSERT INTO `admin` VALUES ('6', 'youjiahui', 'youjiahui', null, null, null, null, null);

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `ARTICLE_ID` int(11) NOT NULL auto_increment,
  `ADMIN_ID` int(11) NOT NULL,
  `ARTICLE_TITLE` varchar(100) default NULL,
  `ARTICLE_AUTHOR` varchar(40) default NULL,
  `ARTICLE_DATE` datetime default NULL,
  `ARTICLE_CONTENT` longtext,
  `ARTICLE_BAK1` int(20) default NULL,
  `ARTICLE_BAK2` varchar(45) default NULL,
  `ARTICLE_BAK3` datetime default NULL,
  PRIMARY KEY  (`ARTICLE_ID`),
  KEY `FK_ADMIN_AID` USING BTREE (`ADMIN_ID`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('197', '4', 'Comment', '伍琳仔', '2015-07-25 20:28:30', '\n	        package edu.hgsf.nanyu.service.impl;<br><br>import java.lang.reflect.InvocationTargetException;<br>import java.util.List;<br><br>import org.apache.commons.beanutils.BeanUtils;<br><br>import edu.hgsf.nanyu.dao.ProductCommentDAO;<br>import edu.hgs', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article` VALUES ('230', '5', '一个人', '梦白', '2015-07-26 15:23:14', '<p style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article` VALUES ('231', '2', '再叫！', '法正', '2015-07-26 15:23:32', '在公元2014年，一个风花雪月的夜半一位叫做落叶的酱油小哥盖了个楼，然而此楼中入住了两位大神，神魔和法正,一个要镇压另一个，一个要收拾另一个，从\n2014年战到二零一五年，一年的时间，已经使每天两句的咒语变成习惯使然，目前二位大神在楼内已经过招八千多回合，各路仙友魔友都来此吧参观，二位战神\n已经成为了秦游吧的活字招牌......\n	    ', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article` VALUES ('239', '5', '你还在', '醉卧美人膝', '2015-07-26 15:34:48', '<span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: justif', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article` VALUES ('241', '5', '记忆', '溺水的呼救者', '2015-07-26 15:36:32', '<span style=\"color: rgb(51, 51, 51); font-family: \'Microsoft YaHei\', Arial, Helvetica, sans-serif; font-size: 15px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 24px; orphans: auto; text-align: justif', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article` VALUES ('262', '5', 'dsf', 'sadfsd', '2015-07-30 19:39:31', 'sadfsadfsdfd\r\n	    ', null, null, null);
INSERT INTO `article` VALUES ('263', '1', '111', '222', '2015-07-30 19:52:21', '2333\r\n	    ', null, null, null);
INSERT INTO `article` VALUES ('264', '5', '2222222', 'wqqwa', '2015-07-30 20:12:49', 'q21e32\r\n	    ', null, null, null);
INSERT INTO `article` VALUES ('268', '1', 'sdf', 'sdf', '2015-07-31 08:41:08', 'fdg\r\n	    ', null, null, null);
INSERT INTO `article` VALUES ('269', '5', 'fdsdfsdf', 'dfg', '2015-07-31 08:41:57', 'wer\r\n	    ', null, null, null);
INSERT INTO `article` VALUES ('270', '5', '111111111111111', 'zvza', '2015-07-31 08:42:57', 'asfasdfad\r\n	    ', null, null, null);
INSERT INTO `article` VALUES ('271', '1', '113333', '22', '2015-07-31 09:44:58', '333\r\n	    ', null, null, null);
INSERT INTO `article` VALUES ('272', '1', '111111111111', '222', '2015-07-31 09:49:09', '2222\r\n	    ', null, null, null);

-- ----------------------------
-- Table structure for `article_bak`
-- ----------------------------
DROP TABLE IF EXISTS `article_bak`;
CREATE TABLE `article_bak` (
  `ARTICLE_ID` int(11) NOT NULL,
  `ADMIN_ID` int(11) default NULL,
  `ARTICLE_TITLE` varchar(50) default NULL,
  `ARTICLE_AUTHOR` varchar(40) default NULL,
  `ARTICLE_DATE` datetime default NULL,
  `ARTICLE_CONTENT` text,
  `ARTICLE_BAK1` int(20) default NULL,
  `ARTICLE_BAK2` varchar(45) default NULL,
  `ARTICLE_BAK3` datetime default NULL,
  PRIMARY KEY  (`ARTICLE_ID`),
  KEY `FK_ADMIN_BID` USING BTREE (`ADMIN_ID`),
  CONSTRAINT `article_bak_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_bak
-- ----------------------------
INSERT INTO `article_bak` VALUES ('62', '5', '3G知识普及', '春香', '2015-07-25 10:32:22', '<p align=\"center\">&nbsp;3G知识普及</p>\n<div id=\"postmessage_8792145\" class=\"t_msgfont\"><font color=\"black\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3G，全称为3rd Generation，中文含义就是指第三代数字通信。</font><font color=\"black\">1995年问世的第一代<span href=\"http://mbbs.enet.com.cn/tag.php?nam', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article_bak` VALUES ('197', '4', 'Comment', '伍琳仔', '2015-07-25 20:28:30', '\n	        package edu.hgsf.nanyu.service.impl;<br><br>import java.lang.reflect.InvocationTargetException;<br>import java.util.List;<br><br>import org.apache.commons.beanutils.BeanUtils;<br><br>import edu.hgsf.nanyu.dao.ProductCommentDAO;<br>import edu.hgs', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article_bak` VALUES ('226', '5', '乐视超级手机', '陈', '2015-07-26 15:20:11', '\n&nbsp;&nbsp;&nbsp;&nbsp; <h1 class=\"title maintitle\"><span class=\"lemmaTitleH1\">乐视手机</span></h1><div class=\"mod-top\" id=\"card-container\"><div class=\"card-summary nslog-area clearfix\" data-nslog-type=\"72\"><div class=\"card-summary-content\"><div class=\"para', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article_bak` VALUES ('228', '5', '初见', '程', '2015-07-26 15:19:03', '<p style=\"font: 14px/28px Simsun; margin: 0px 0px 1em; padding: 0px; color: rgb(68, 68, 68); text-transform: none; text-indent: 2em; letter-spacing: normal; word-spacing: 0px; white-space: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article_bak` VALUES ('230', '5', '一个人', '梦白', '2015-07-26 15:23:14', '<p style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article_bak` VALUES ('231', '2', '再叫！', '法正', '2015-07-26 15:23:32', '在公元2014年，一个风花雪月的夜半一位叫做落叶的酱油小哥盖了个楼，然而此楼中入住了两位大神，神魔和法正,一个要镇压另一个，一个要收拾另一个，从\n2014年战到二零一五年，一年的时间，已经使每天两句的咒语变成习惯使然，目前二位大神在楼内已经过招八千多回合，各路仙友魔友都来此吧参观，二位战神\n已经成为了秦游吧的活字招牌......\n	    ', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article_bak` VALUES ('232', '5', '格力手机', '大牛', '2015-07-26 15:24:57', '\n&nbsp;&nbsp;&nbsp;&nbsp; <h1 class=\"title maintitle\" id=\"true\"><span class=\"lemmaTitleH1\">格力手机</span></h1><div class=\"mod-top\" id=\"card-container\"><div class=\"card-summary nslog-area clearfix\" data-nslog-type=\"72\"><div class=\"card-summary-content\"><div c', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article_bak` VALUES ('234', '2', '华为代工新Nexus手机', '驱动之家', '2015-07-26 15:26:20', '<p><strong>全新Nexus手机要由华为代工已经传闻多次，据悉今年年底谷歌和华为将成为亲密合作伙伴</strong>。可能有人会问，为何谷歌会让华为代工Nexus手机，而不用LG和大摩托呢？其实背后是有道理的——互相利用资源，利益最大化。</p>\n<p>据外媒最新报道，<strong>谷歌将帮助华为打开美国市场，其实华为早就想让自己的高端手机在美国与iPhone一较高下，但受限于种种原因，一直未能如愿</strong>。一但华为高端被老美接受，知名度一上来，其它中低端手机也就不愁卖了。</p>\n<', '0', '', '0000-00-00 00:00:00');
INSERT INTO `article_bak` VALUES ('235', '5', '黑莓Dallas', '唐伯虎', '2015-07-26 15:34:21', '<div class=\"post_title\">                        <h1 align=\"center\">黑莓Dallas送检美国FCC：骁龙801+4.5英寸方形屏幕</h1>                        <span class=\"pt_info pre1\"> <a href=\"http://www.ithome.com/html/digi/165284.htm#commentDiv\" class=\"pti_comm\"><span id=\"false\"></', '0', '', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `article_comment`
-- ----------------------------
DROP TABLE IF EXISTS `article_comment`;
CREATE TABLE `article_comment` (
  `ARTICLE_COMMENT_ID` int(11) NOT NULL auto_increment,
  `CUSTOMER_ID` int(11) default NULL,
  `ARTICLE_ID` int(11) default NULL,
  `ARTICLE_COMMENT_CONTENT` text,
  `ARTICLE_COMMENT_TIME` varchar(45) default NULL,
  PRIMARY KEY  (`ARTICLE_COMMENT_ID`),
  KEY `FK_CUSTOMER_ACID` USING BTREE (`CUSTOMER_ID`),
  CONSTRAINT `article_comment_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_comment
-- ----------------------------
INSERT INTO `article_comment` VALUES ('11', '10049', '41', 'vvvvvvvvvvvvvvvvvvvvvvvvvv', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('13', '10049', '41', '111111111111111111111111111111111111', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('18', '10049', '41', 'ccccccccccccccccccccccccccc', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('26', '10049', '41', 'cccccccccccccccccccccccccccccccccccccccccc', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('31', '10049', '41', 'cccccccccccccccccccccccccccccccccccccccccc', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('32', '10049', '41', 'cccccccccccccccccccccccccccccccccccccccccc', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('42', '10049', '41', 'cccccccccccccc', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('44', '10049', '41', '3333333333333', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('45', '10049', '41', 'ooooooooooooooooo', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('46', '10049', '41', '123', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('48', '10049', '41', '11111111111', '2015-07-23 00:00:00');
INSERT INTO `article_comment` VALUES ('121', '10049', '62', '22', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('125', '10049', '41', '2', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('127', '10049', '41', '7878', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('129', '10049', '41', '66', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('135', '10049', '41', '7878', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('137', '10049', '41', '啊哈哈哈哈哈哈啊啊哈', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('154', '10006', '41', '8686', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('155', '10006', '41', '33333', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('156', '10006', '41', '222222222222222222222222222', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('157', '10006', '41', '8686', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('159', '10049', '198', '987654321', '2015-07-25 00:00:00');
INSERT INTO `article_comment` VALUES ('161', '10049', '198', '', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('162', '10049', '198', '987', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('163', '10049', '198', '987', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('166', '10049', '198', '', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('167', '10049', '198', '123', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('168', '10049', '198', '533333333333', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('169', '10049', '198', '888888888', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('170', '10049', '198', '098u7i675', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('171', '10049', '198', '42354253', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('172', '10049', '198', '123456789', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('173', '10049', '198', '23456', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('174', '10049', '198', '98654', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('175', '10049', '198', '113414', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('179', '10049', '198', '', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('180', '10049', '198', 'q2123', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('181', '10000', '197', 'choubaole', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('182', '10000', '197', 'choubaole123', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('183', '10000', '197', 'choubaole123', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('184', '10049', '198', 'q2123', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('185', '10049', '198', '123456', '2015-07-26 00:00:00');
INSERT INTO `article_comment` VALUES ('186', '10000', '197', 'weibeisha123', '2015-07-26 00:00:00');

-- ----------------------------
-- Table structure for `catalog`
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `CATALOG_ID` int(11) NOT NULL auto_increment,
  `CATALOG_PID` int(11) default NULL,
  `CATALOG_NAME` varchar(45) default NULL,
  `CATALOG_BAK1` int(255) default NULL,
  `CATALOG_BAK2` varchar(45) default NULL,
  `CATALOG_BAK3` datetime default NULL,
  PRIMARY KEY  (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of catalog
-- ----------------------------
INSERT INTO `catalog` VALUES ('100', '0', '产品', '0', '', '0000-00-00 00:00:00');
INSERT INTO `catalog` VALUES ('101', '100', '智能手机', '0', '', '0000-00-00 00:00:00');
INSERT INTO `catalog` VALUES ('102', '100', '时尚手表', '0', '', '0000-00-00 00:00:00');
INSERT INTO `catalog` VALUES ('103', '100', '平板电脑', '0', '', '0000-00-00 00:00:00');
INSERT INTO `catalog` VALUES ('104', '101', '苹果', '0', '', '0000-00-00 00:00:00');
INSERT INTO `catalog` VALUES ('105', '101', '三星', '0', '', '0000-00-00 00:00:00');
INSERT INTO `catalog` VALUES ('106', '101', '华为', '0', '', '0000-00-00 00:00:00');
INSERT INTO `catalog` VALUES ('107', '101', '小米', '0', '', '0000-00-00 00:00:00');
INSERT INTO `catalog` VALUES ('120', '101', '魅族', '0', '', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `consignee`
-- ----------------------------
DROP TABLE IF EXISTS `consignee`;
CREATE TABLE `consignee` (
  `CONSIGNEE_ID` int(11) NOT NULL auto_increment,
  `CUSTOMER_ID` int(11) default NULL,
  `NAME` varchar(45) default NULL,
  `ADDRESS` varchar(100) default NULL,
  `EMAIL` varchar(45) default NULL,
  `ZIPCODE` varchar(10) default NULL,
  `MOBILENUM` varchar(13) default NULL,
  `PHONENUM` varchar(15) default NULL,
  `SIGNBUILDING` varchar(300) default NULL,
  `BESTTIME` varchar(50) default NULL,
  `CONSIGNEE_BAK1` int(11) default NULL,
  `CONSIGNEE_BAK2` varchar(45) default NULL,
  `CONSIGNEE_BAK3` datetime default NULL,
  PRIMARY KEY  (`CONSIGNEE_ID`),
  KEY `FK_CUSTOMER_CID` USING BTREE (`CUSTOMER_ID`),
  CONSTRAINT `consignee_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consignee
-- ----------------------------
INSERT INTO `consignee` VALUES ('5', '10005', '张宇阳', '湖北省黄冈市黄州区黄冈师范学院', 'kkk@163.com', '438000', '13956665457', '13956665457', '黄冈师范学院', '星期五', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('23', '10002', '伍琳仔', '黄冈师范学院', '', '438000', '13986568561', '13986568561', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('41', '10020', '代思豪', '黄冈师范学院', 'daisihao@126.com', '001001', '13277418168', '13277418168', '央视大裤衩', '周末', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('61', '10006', '熊晶', '湖北省黄冈市黄州区新港二路黄冈师范学院', 'xj@163.com', '420000', '13339964957', '0713-8034545', '黄冈师范学院', '星期天', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('81', '10001', '范志新', '北京市西城区xxxxx', 'fzx@qq.com', '430000', '13339964957', '11111', 'ssss', 'ssssss', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('84', '10000', '魏贝莎', '湖北省武汉市新洲区汪集街', '', '', '13986556183', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('104', '10049', '徐子明', '北京市东城区黄', '', '', '12312312355', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('105', '10004', '程胜', '湖北省黄冈市黄州区湖北黄冈', '11936', '44204', '18171686424', '1398', '放荡', '中午', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('106', '10060', '张宇阳', '北京市东城区北京', '1234', '1234', '13143242344', '1234', '1234', '1234', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('109', '10093', '啊发生的', '北京市西城区sadfasdsadf', '3453', '23412', '12345678909', '534', '435', '345', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('110', '10094', '撕逼', '北京市东城区散射', '', '', '12312312355', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('111', '10095', '魏贝莎', '重庆市渝中区南屿', '', '', '12345667890', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('112', '10097', '神手速', '天津市河西区sss', '', '', '12312312333', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('114', '10101', '发给', '上海市静安区sdfasd ', '41234123', '1234', '11111111111', '2134234', '1324123', '12341234', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('115', '10102', '张宇阳', '内蒙古呼伦贝尔市额尔古纳市sadfasdfasd ', '12341234123', '11234', '11111111111', '234123', '2341234', '12341234', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('117', '10002', '伍琳', '山西省大同市矿区dsbjsdbgjasgjifhg', '2277699873@qq.com', '438000', '13986536030', '13986536030', '黄冈师范学院', '7月16', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('118', '10104', '魏蓓莎', '天津市和平区yuyu', '', '', '12345678911', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('188', '10170', '范志新', '湖北省黄冈市黄州区新港二路146号', '', '438000', '13986556281', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('189', '10170', '魏贝莎', '天津市和平区发掘和房价', '', '', '13986551234', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee` VALUES ('190', '10001', 'fzx', '新港二路', 'ss', '430000', '11111111111', '123123', '123132', '123123', null, null, null);
INSERT INTO `consignee` VALUES ('193', '10170', 'fanzhixin', '新港二路', '', '', '', '', '', '', null, null, null);
INSERT INTO `consignee` VALUES ('194', '10176', '代思豪', '上海市徐汇区啦啦啦', '', '', '13211111111', '', '', '', null, null, null);
INSERT INTO `consignee` VALUES ('195', '10177', '高超', '湖北省黄冈市黄州区132456', '43800', '43800', '13697145036', '123456798', '', '', null, null, null);
INSERT INTO `consignee` VALUES ('197', '10181', '游佳慧', '湖北省黄冈市黄州区新港2路146号', '', '', '15807223868', '', '', '', null, null, null);

-- ----------------------------
-- Table structure for `consignee_bak`
-- ----------------------------
DROP TABLE IF EXISTS `consignee_bak`;
CREATE TABLE `consignee_bak` (
  `CONSIGNEE_ID` int(11) NOT NULL auto_increment,
  `CUSTOMER_ID` int(11) default NULL,
  `NAME` varchar(45) default NULL,
  `ADDRESS` varchar(100) default NULL,
  `EMAIL` varchar(45) default NULL,
  `ZIPCODE` varchar(10) default NULL,
  `MOBILENUM` varchar(13) default NULL,
  `PHONENUM` varchar(15) default NULL,
  `SIGNBUILDING` varchar(300) default NULL,
  `BESTTIME` varchar(50) default NULL,
  `CONSIGNEE_BAK1` int(11) default NULL,
  `CONSIGNEE_BAK2` varchar(45) default NULL,
  `CONSIGNEE_BAK3` datetime default NULL,
  PRIMARY KEY  (`CONSIGNEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consignee_bak
-- ----------------------------
INSERT INTO `consignee_bak` VALUES ('4', '10003', '郭永超', '黄冈师范学院', '', '438000', '13986665766', '13986665766', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('5', '10005', '张宇阳', '湖北省黄冈市黄州区黄冈师范学院', 'kkk@163.com', '438000', '13956665457', '13956665457', '黄冈师范学院', '星期五', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('23', '10002', '伍琳仔', '黄冈师范学院', '', '438000', '13986568561', '13986568561', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('41', '10020', '代思豪', '黄冈师范学院', 'daisihao@126.com', '001001', '13277418168', '13277418168', '央视大裤衩', '周末', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('61', '10006', '熊晶', '湖北省黄冈市黄州区新港二路黄冈师范学院', 'xj@163.com', '420000', '13339964957', '0713-8034545', '黄冈师范学院', '星期天', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('81', '10001', '范志新', '北京市西城区xxxxx', 'fzx@qq.com', '430000', '13339964957', '11111', 'ssss', 'ssssss', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('84', '10000', '魏贝莎', '湖北省武汉市新洲区汪集街', '', '', '13986556183', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('104', '10049', '徐子明', '北京市东城区黄', '', '', '12312312355', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('105', '10004', '程胜', '湖北省黄冈市黄州区湖北黄冈', '11936', '44204', '18171686424', '1398', '放荡', '中午', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('106', '10060', '张宇阳', '北京市东城区北京', '1234', '1234', '13143242344', '1234', '1234', '1234', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('109', '10093', '啊发生的', '北京市西城区sadfasdsadf', '3453', '23412', '12345678909', '534', '435', '345', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('110', '10094', '撕逼', '北京市东城区散射', '', '', '12312312355', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('111', '10095', '魏贝莎', '重庆市渝中区南屿', '', '', '12345667890', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('112', '10097', '神手速', '天津市河西区sss', '', '', '12312312333', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('114', '10101', '发给', '上海市静安区sdfasd ', '41234123', '1234', '11111111111', '2134234', '1324123', '12341234', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('115', '10102', '张宇阳', '内蒙古呼伦贝尔市额尔古纳市sadfasdfasd ', '12341234123', '11234', '11111111111', '234123', '2341234', '12341234', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('117', '10002', '伍琳', '山西省大同市矿区dsbjsdbgjasgjifhg', '2277699873@qq.com', '438000', '13986536030', '13986536030', '黄冈师范学院', '7月16', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('118', '10104', '魏蓓莎', '天津市和平区yuyu', '', '', '12345678911', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('188', '10170', '范志新', '湖北省黄冈市黄州区新港二路146号', '', '438000', '13986556281', '', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `consignee_bak` VALUES ('189', '10170', '魏贝莎', '天津市和平区发掘和房价', '', '', '13986551234', '', '', '', '0', '', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `CUSTOMER_ID` int(11) NOT NULL auto_increment,
  `ACCOUNT` varchar(45) default NULL,
  `PWD` varchar(64) default NULL,
  `PWD_QUES` varchar(127) default NULL,
  `PWD_ANS` varchar(127) default NULL,
  `REALNAME` varchar(45) default NULL,
  `SEX` varchar(4) default NULL,
  `BIRTH` datetime default NULL,
  `PIC` varchar(127) default NULL,
  `MOBILE` varchar(45) default NULL,
  `TELPHONE` varchar(45) default NULL,
  `QQ` varchar(45) default NULL,
  `EMAIL` varchar(45) default NULL,
  `SCORE` int(10) default NULL,
  `STATUS` varchar(4) default NULL,
  `REGDATE` datetime default NULL,
  `LOGINDATE` datetime default NULL,
  `LAST_IP` varchar(45) default NULL,
  `CUSTOMER_BAK1` int(11) default NULL,
  `CUSTOMER_BAK2` varchar(45) default NULL,
  `CUSTOMER_BAK3` datetime default NULL,
  PRIMARY KEY  (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('10000', 'weibeisha123', '123456', '我是谁？', '魏贝莎', '魏贝莎', '女', '1994-04-03 00:00:00', '0da388630a164b2eb375504ba6e49532.jpg', '13986556183', '', '', '920797988@qq.com', '8000', '0', '0000-00-00 00:00:00', '2015-07-20 11:20:01', '192.168.66.76', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10001', 'fanzhixin123', 'fanzhixin123', '我是谁？', '范志新', '范志新', '男', '0000-00-00 00:00:00', 'd70d6e4b8af242889f6c81aa51e37c7c.jpg', '13986556281', '89356283', '1032347893', '1032347893@qq.com', '5000', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10002', 'wulinzi123', 'wulinzi123', '我是谁？', '伍琳仔', '伍琳仔', '女', '0000-00-00 00:00:00', '3a2b599369f34fc6add7b09cf754c918.jpg', '13986536030', '0713-2977490', '2277699873', '2277699873@qq.com', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10003', 'guoyongchao123', 'guoyongchao123', '我是谁？', '郭永超', '郭永超', '男', '1993-01-01 00:00:00', '87eab33a940740b78bc3771dc2509e4e.jpg', '11122233344', '', '', '88888@qq.com', '7000', '0', '0000-00-00 00:00:00', '2015-07-20 11:22:28', '192.168.66.77', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10004', 'chengsheng123', '128456', '我是谁？', '程胜', '程胜', '男', '0000-00-00 00:00:00', '', '', '', '', '', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10005', 'zhangyuyang123', 'zhangyuyang123', '我是谁？', '张宇阳', '张宇阳', '男', '0000-00-00 00:00:00', '', '', '', '', '', '0', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10006', 'xiongjing123', 'xiongjing123', '我是谁？', '熊晶', '熊晶', '男', '1992-06-06 00:00:00', '/upload/user/xj.jpg', '12345678', '18671305157', '873294453', '873294453@qq.com', '6000', '0', '0000-00-00 00:00:00', '2015-07-19 11:24:35', '192.168.66.87', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10020', 'daisihao123', 'daisihao', '我是谁？', '代思豪', '代思豪', '男', '0000-00-00 00:00:00', '9e9d5636404e45c99c6d938422091d36.jpg', '13277418168', '13277418168', '798814330', '798814330@qq.com', '8888', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '192.168.66.88', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10049', 'xuziming123', 'xuziming123', '我是谁？', '徐子明', '徐子明', '男', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10060', 'ss123456', '123456', '', '', '', '男', '0000-00-00 00:00:00', '3915532cd0324dbc95ced4a332c2c1c4.png', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10081', '10029', 'qwerty', 'qwerty', 'qwerty', '', '男', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10083', '10039', 'qwerty', 'qwerty', 'qwerty', '代思豪', '男', '0000-00-00 00:00:00', '', '112312312', '341235', '213421', '234123@qq.com', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10086', '333333333333333', '333333', 'wwwwww', 'wwwwww', '', '男', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10087', '111111111111', '111111', '111111', '111111', '', '男', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10088', 'chengshe789', '123456', 'SAAB的颠倒是非478', '阿大的风', '', '男', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10090', 'chengsheng789', '789456', '我的撒', '753', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10091', '123456789', '123456789', '123456789', '123456789', '', '男', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10092', 'jjjjjjjj', 'jjjjjjjj', 'jjjjjjjj', 'jjjjjjjj', '代思豪', '0', '0000-00-00 00:00:00', '', '1313412', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10093', 'zzz1111', 'zzz1111', 'zzz1111', 'zzz1111', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10094', 'zxc123', 'zxc123', 'zxc123', 'zxc123', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10095', 'qazqaz', 'qqqqqq', 'weiweiwei', 'werwer', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10096', 'lllllll', 'lllllll', 'lllllll', 'lllllll', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10097', 'test001', 'test001', 'test001', 'test001', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10098', 'asdfffdsa', 'asdfffdsa', 'asdfffdsa', 'asdfffdsa', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10099', '213412344123', '213412344123', '213412344123', '213412344123', '134123421341', '0', '0000-00-00 00:00:00', '', '1234123412', '1234123412341234', '123412341234', '123412341234', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10100', 'qwerqwerqwe', 'qwerqwerqwe', 'qwerqwerqwe', 'qwerqwerqwe', '345234', '0', '0000-00-00 00:00:00', '', 'ewrqre', 'qewrqwerqw', 'r', 'wqerqw', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10101', 'zhenwentao', 'zhenwentao', 'zhenwentao', 'zhenwentao', '企鹅温柔温柔', '0', '0000-00-00 00:00:00', '', '额外人情味', '轻武器额外人情味人', '热情为热情温柔', '围绕区委热情', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10102', 'sadfasdf', 'sadfasdf', 'sadfasdf', 'sadfasdf', '请问请问', '0', '0000-00-00 00:00:00', '', '热情二', 'qwertyqwerty', 'qwerty请问', 'qwerty请问', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10103', '123456qwe', '123456', 'ww', 'ww', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10104', '123456qwerty', '123456', 'qqq', 'qqq', '备课', '0', '0000-00-00 00:00:00', '', '1234567891', '123456789', '123456789', '123456789@qq.com', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10120', 'qewrqwer', 'qewrqwer', 'qewrqwer', 'qewrqwer', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10121', 'werqwe', 'werqwe', 'werqwe', 'werqwe', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10122', 'asdfasdfs', 'asdfasdfs', 'asdfasdfs', 'asdfasdfs', 'sdfasdfasdf', '0', '0000-00-00 00:00:00', '', 'asdfasdfasfd', 'asdfasdfasdf', 'asdfasdfasdf', 'sadfasdfasf', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10123', 'asdfasdfasdf', 'asdfasdfasdf', 'asdfasdfasdf', 'asdfasdfasdf', '代思豪', '0', '0000-00-00 00:00:00', '', '123412341234', '1341234', '2352345', '345345', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10124', 'qwerwe', 'qwerwe', 'qwerwe', 'qwerwe', '代思豪', '0', '0000-00-00 00:00:00', '', '21341234123', '13241234', '342534534', '34345324', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10125', 'qwerqwetqwet', 'qwerqwetqwet', 'qwerqwetqwet', 'qwerqwetqwet', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10126', '13241234', '13241234', '13241234', '13241234', '23452345', '0', '0000-00-00 00:00:00', '94cca2429b3d46a1ae2fe4f3548c2713.jpg', '324532452', '23453245', '23452345', '234532452', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10128', 'fgdfsgdfs', 'fgdfsgdfs', 'fgdfsgdfs', 'fgdfsgdfs', 'sdfasd ', '0', '0000-00-00 00:00:00', 'a495aa1e002648219dfdfcb52bf0ef83.jpg', 'asdfasd sdfas', 'asdfas ', 'asdf', 'asdfa sd ', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10129', 'asdgadgh', 'asdgadgh', 'asdgadgh', 'asdgadgh', '', '0', '0000-00-00 00:00:00', 'c43fd9c597a942d7b35f94b0249728a2.jpg', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10130', 'asdfasdfasdfasdf', 'asdfasdfasdfasdf', 'asdfasdfasdfasdf', 'asdfasdfasdfas', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10131', 'asdasdfasdfasdf', 'asdasdfasdfasdf', 'asdasdfasdfasdf', 'asdasdfasdfasdf', '', '0', '0000-00-00 00:00:00', '528bec63085f4f0b8db8b9d4579da8f6.jpg', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10132', 'asdfasdd', 'asdfasdd', 'asdfasdd', 'asdfasdd', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10133', '2134eee', '2134eee', '2134eee', '2134eee', '', '0', '0000-00-00 00:00:00', '45a9669b3eb1403b92b2141da38cd123.jpg', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10134', 'll', 'll', '●●', '●●', '', '0', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10135', 'jjjjkj', 'jjjjkj', 'jjjjkj', 'jjjjkj', 'sdfasdf', '0', '0000-00-00 00:00:00', 'b544b84b5db14ce8b32eb3bfc6b54fd7.jpg', 'asdfasdf', 'asfasdfa', 'afasdfasdf', 'asdfasdfas', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10136', 'asdfghjkl', 'asdfghjkl;\'', 'asdfghjkl;\'', 'asdfghjkl;\'', '+.2416341', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10137', 'asdfee', 'asdfee', 'asdfee', 'asdfee', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10138', '2432rr', '2432rr', '2432rr', '2432rr', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10140', 'fasdfasdf', 'fasdfasdf', 'fasdfasdf', 'fasdfasdf', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10141', 'sadfasd', 'sadfasd', 'sadfasd', 'sadfasd', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10142', 'asdfasd', 'asdfasd', 'asdfasd', 'asdfasd', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10143', 'zxcfdd', 'zxcfdd', 'zxcfdd', 'zxcfdd', '', '', '0000-00-00 00:00:00', 'f2ee4805704e47a2937dc8841f0700da.jpg', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10144', 'vvsdds', 'vvsdds', 'vvsdds', 'vvsdds', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10145', 'bsdfas', 'bsdfas', 'bsdfas', 'bsdfas', '', '', '0000-00-00 00:00:00', '2a4b54261bdb4e5ab52dcea80fec7877.jpg', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10146', 'fgwergweg', 'fgwergweg', 'fgwergweg', 'fgwergweg', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10147', 'bdsfgsa', 'bdsfgsa', 'bdsfgsa', 'bdsfgsa', '', '', '0000-00-00 00:00:00', '9c3858de4e0d421d8ef6c0b5515921ea.jpg', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10160', 'vdsgf2', 'vdsgf2', 'vdsgf2', 'vdsgf2', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10161', 'asdfasdfsa', 'asdfasdfsa', 'asdfasdfsa', 'asdfasdfsa', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10162', 'sdfasdf', 'sdfasdf', 'sdfasdf', 'sdfasdf', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10163', 'chengsheng', 'cs123456', '我是?', '程胜', '', '', '0000-00-00 00:00:00', '', '', '', '', '1193607684@qq.com', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10164', 'vasdfas', 'vasdfas', 'vasdfas', 'vasdfas', '', '', '0000-00-00 00:00:00', '6eac240b4bf44f34b116910edbdfa535.jpg', '', '', '', 'vasdfas', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10165', 'asdfasdfasd', 'asdfasdfasd', 'asdfasdfasd', 'asdfasdfasd', '', '', '0000-00-00 00:00:00', '286161e80f4f4761be88fca534e31e37.jpg', '', '', '', 'asdfasdfasd', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10166', '12v3hfgh', '12v3hfgh', '12v3hfgh', '12v3hfgh', '', '', '0000-00-00 00:00:00', '32d66ab06ea94916849df2651d6a87a4.jpg', '', '', '', '12v3hfgh', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10170', 'demo123456', '123456', '我是谁', '呵呵', '范志新', '', '0000-00-00 00:00:00', 'bed58a06114844559db21fbc680f301b.jpg', '13986556281', '89356281', '1032347893', '1032347893@qq.com', '0', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `customer` VALUES ('10174', 'csg456789', '123456', 'who are you?', 'I', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10175', 'ttyyuo', '789456', 'who are you?', 'my', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10176', 'qwerrer', 'qwerrer', 'qwerrer', 'qwerrer', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10177', 'gaochao', '123456', 'gaochao', '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10178', 'fg123456', '123456', 'who are you?', 'i', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10179', '13986536030', '123456', 'aa', 'aa', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10180', '15807223868', '123456', '123', '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10181', 'yyyyyy', '123456', '123', '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10182', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10183', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10184', 'qwerty', 'qwerty', 'qwerty', 'qwerty', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `customer` VALUES ('10185', 'jjjjjj', '123456', '12', '12', '游佳慧', null, null, null, '15807223868', '123456', '', '2294647307@qq.com', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `customer_bak`
-- ----------------------------
DROP TABLE IF EXISTS `customer_bak`;
CREATE TABLE `customer_bak` (
  `select t.*, t.rowid from CUSTOMER t` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_bak
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ORDERS_ID` int(11) NOT NULL auto_increment,
  `CONSIGNEE_ID` int(11) NOT NULL,
  `CUSTOMER_ID` int(11) NOT NULL,
  `ORDERS_NUM` varchar(20) default NULL,
  `ORDERS_TIME` datetime default NULL,
  `STATUS` varchar(10) default NULL,
  `PAYTYPE` varchar(45) default NULL,
  `ORDERS_PAY` double(11,1) default NULL,
  `ORDERS_BAK1` int(20) default NULL,
  `ORDERS_BAK2` varchar(45) default NULL,
  `ORDERS_BAK3` datetime default NULL,
  PRIMARY KEY  (`ORDERS_ID`),
  KEY `FK_CUSTOMER_OID` USING BTREE (`CUSTOMER_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('17', '4', '10003', '201507211501373777', '2015-07-21 15:01:50', '未支付', '支付宝', '4580.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('18', '4', '10003', '201507211504188775', '2015-07-21 15:04:31', '未支付', '支付宝', '4580.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('24', '4', '10003', '201507211607447732', '2015-07-21 16:07:57', '已支付', '支付宝', '4580.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('25', '4', '10003', '201507211609198377', '2015-07-21 16:09:32', '已支付', '支付宝', '4580.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('27', '4', '10003', '201507211706153342', '2015-07-21 17:06:28', '未支付', '支付宝', '4580.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('29', '4', '10003', '201507211844216645', '2015-07-21 18:44:34', '已支付', '支付宝', '4580.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('61', '4', '10003', '201507221133588549', '2015-07-22 11:34:11', '未支付', '支付宝', '7222.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('63', '4', '10003', '201507221148074359', '2015-07-22 11:48:04', '已支付', '支付宝', '14936.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('64', '4', '10003', '201507221150131491', '2015-07-22 11:50:10', '未支付', '货到付款', '14936.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('67', '4', '10003', '201507221150209163', '2015-07-22 11:50:22', '未支付', '支付宝', '666.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('70', '4', '10003', '201507221302298368', '2015-07-22 13:02:42', '已支付', '支付宝', '4754.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('71', '4', '10003', '201507221317506560', '2015-07-22 13:18:02', '已支付', '支付宝', '3660.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('72', '4', '10003', '201507221319538977', '2015-07-22 13:20:05', '已支付', '支付宝', '2642.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('74', '4', '10003', '201507221323508774', '2015-07-22 13:24:03', '已支付', '支付宝', '36742.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('76', '4', '10003', '201507221327476310', '2015-07-22 13:28:00', '已支付', '支付宝', '998.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('79', '61', '10006', '201507221405396160', '2015-07-22 14:05:52', '已支付', '支付宝', '6196.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('85', '23', '10002', '201507221721191533', '2015-07-22 17:20:39', '已支付', '支付宝', '10764.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('86', '4', '10003', '201507221725168602', '2015-07-22 17:24:36', '已支付', '支付宝', '10764.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('96', '84', '10000', '201507222018366262', '2015-07-22 20:18:33', '已支付', '支付宝', '5654.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('101', '23', '10002', '201507230756417089', '2015-07-23 07:55:59', '未支付', '支付宝', '5654.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('109', '84', '10000', '201507231359322594', '2015-07-23 13:59:28', '已支付', '支付宝', '5746.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('115', '110', '10094', '201507231647012638', '2015-07-23 16:47:12', '已支付', '支付宝', '998.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('116', '110', '10094', '201507231652317639', '2015-07-23 16:52:42', '未支付', '货到付款', '998.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('118', '110', '10094', '201507231655061091', '2015-07-23 16:55:17', '未支付', '货到付款', '998.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('119', '110', '10094', '201507231655194288', '2015-07-23 16:55:31', '已支付', '支付宝', '998.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('121', '111', '10095', '201507231758327122', '2015-07-23 17:58:28', '已支付', '支付宝', '5988.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('124', '112', '10097', '201507231834521288', '2015-07-23 18:35:03', '已支付', '支付宝', '998.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('125', '112', '10097', '201507231835011418', '2015-07-23 18:35:12', '未支付', '货到付款', '998.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('126', '111', '10095', '201507231917252868', '2015-07-23 19:17:20', '未支付', '货到付款', '5198.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('128', '114', '10101', '201507231950596834', '2015-07-23 19:50:42', '已支付', '支付宝', '998.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('132', '117', '10002', '201507232041598485', '2015-07-23 20:41:17', '已支付', '支付宝', '6934.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('135', '118', '10104', '201507262124496352', '2015-07-23 21:24:07', '已支付', '支付宝', '3086.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('141', '41', '10020', '201507232336291233', '2015-07-23 23:36:13', '已支付', '支付宝', '456.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('143', '41', '10020', '201507232343552025', '2015-07-23 23:43:39', '已支付', '支付宝', '1824.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('144', '41', '10020', '201507232344122198', '2015-07-23 23:43:55', '已支付', '支付宝', '456.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('147', '41', '10020', '201507240029537327', '2015-07-24 00:29:36', '已支付', '支付宝', '343.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('161', '121', '10001', '201507241716177707', '2015-07-24 17:16:28', '未支付', '支付宝', '5187.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('162', '121', '10001', '201507241724048201', '2015-07-24 17:24:14', '已支付', '支付宝', '399.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('163', '81', '10001', '201507241726462875', '2015-07-24 17:26:57', '未支付', '货到付款', '399.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('181', '84', '10000', '201507250815283038', '2015-07-25 08:14:42', '已支付', '支付宝', '2793.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('184', '121', '10001', '201507251005054167', '2015-07-25 10:05:16', '已支付', '支付宝', '399.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('185', '121', '10001', '201507251133567487', '2015-07-25 11:34:07', '已支付', '支付宝', '20781.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('186', '121', '10001', '201507251421221760', '2015-07-25 14:21:33', '已支付', '支付宝', '2013.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('188', '41', '10020', '201507252117487102', '2015-07-25 21:17:43', '未支付', '货到付款', '5643.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('201', '81', '10001', '201507261409451445', '2015-07-26 14:09:55', '已支付', '支付宝', '10187.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('202', '81', '10001', '201507261409517691', '2015-07-26 14:10:02', '未支付', '货到付款', '10187.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('206', '84', '10000', '201507261434168501', '2015-07-26 14:34:27', '已支付', '支付宝', '10586.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('207', '121', '10001', '201507261436428312', '2015-07-26 14:36:53', '未支付', '支付宝', '5187.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('208', '121', '10001', '201507261448175069', '2015-07-26 14:48:27', '未支付', '支付宝', '1964.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('209', '121', '10001', '201507261450471180', '2015-07-26 14:50:58', '未支付', '支付宝', '11172.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('210', '121', '10001', '201507261452582409', '2015-07-26 14:53:09', '未支付', '支付宝', '5586.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('212', '117', '10002', '201507261504282978', '2015-07-26 15:03:39', '已支付', '支付宝', '1995.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('213', '23', '10002', '201507261532077102', '2015-07-26 15:31:18', '已支付', '支付宝', '798.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('214', '188', '10170', '201507261547209843', '2015-07-26 15:47:17', '未支付', '货到付款', '756.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('215', '188', '10170', '201507261547479507', '2015-07-26 15:47:43', '已支付', '支付宝', '399.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('216', '189', '10170', '201507261552583136', '2015-07-26 15:52:54', '未支付', '支付宝', '666.0', '0', '', '0000-00-00 00:00:00');
INSERT INTO `orders` VALUES ('217', '4', '10003', '201500001025331234', null, '已支付', '货到付款', '1096.0', null, null, null);
INSERT INTO `orders` VALUES ('218', '4', '10003', '201507300030083139', null, '已支付', '货到付款', '1096.0', null, null, null);
INSERT INTO `orders` VALUES ('219', '194', '10176', '201507300144286087', null, '未支付', '支付宝', '998.0', null, null, null);
INSERT INTO `orders` VALUES ('232', '192', '10001', '201507301911099642', null, '已支付', '支付宝', '1996.0', null, null, null);
INSERT INTO `orders` VALUES ('233', '195', '10177', '201507302011573352', null, '未支付', '支付宝', '492.0', null, null, null);
INSERT INTO `orders` VALUES ('234', '195', '10177', '201507302014094680', null, '未支付', '支付宝', '5198.0', null, null, null);
INSERT INTO `orders` VALUES ('235', '195', '10177', '201507302014127459', null, '未支付', '支付宝', '5198.0', null, null, null);
INSERT INTO `orders` VALUES ('236', '195', '10177', '201507302016006985', null, '未支付', '支付宝', '998.0', null, null, null);
INSERT INTO `orders` VALUES ('237', '195', '10177', '201507302016085784', null, '未支付', '货到付款', '998.0', null, null, null);
INSERT INTO `orders` VALUES ('239', '84', '10000', '201605131043259370', null, '已支付', '支付宝', '56.0', null, null, null);
INSERT INTO `orders` VALUES ('240', '196', '10180', '201605191628444573', null, '已支付', '支付宝', '60.0', null, null, null);
INSERT INTO `orders` VALUES ('241', '196', '10180', '201605191724156719', null, '已支付', '支付宝', '60.0', null, null, null);
INSERT INTO `orders` VALUES ('242', '197', '10181', '201605201259469958', null, '已支付', '支付宝', '60.0', null, null, null);
INSERT INTO `orders` VALUES ('243', '84', '10000', '201605201527559277', null, '已支付', '支付宝', '35.0', null, null, null);
INSERT INTO `orders` VALUES ('244', '197', '10181', '201605201537104872', null, '已支付', '支付宝', '60.0', null, null, null);
INSERT INTO `orders` VALUES ('245', '197', '10181', '201605201602203220', null, '已支付', '支付宝', '90.0', null, null, null);

-- ----------------------------
-- Table structure for `orders_bak`
-- ----------------------------
DROP TABLE IF EXISTS `orders_bak`;
CREATE TABLE `orders_bak` (
  `select t.*, t.rowid from ORDERS t` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_bak
-- ----------------------------

-- ----------------------------
-- Table structure for `orders_detail`
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail` (
  `ORDER_DATAIL_ID` int(11) NOT NULL auto_increment,
  `PRODUCT_ID` int(11) default NULL,
  `PRODUCT_COUNT` int(5) default NULL,
  `ORDER_NUM` varchar(20) default NULL,
  PRIMARY KEY  (`ORDER_DATAIL_ID`),
  KEY `FK_PRODUCT_OID` USING BTREE (`PRODUCT_ID`),
  CONSTRAINT `orders_detail_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------
INSERT INTO `orders_detail` VALUES ('1', '3', '1', '123');
INSERT INTO `orders_detail` VALUES ('2', '4', '1', '444');
INSERT INTO `orders_detail` VALUES ('3', '3', '1', '2222');
INSERT INTO `orders_detail` VALUES ('4', '3', '1', '2123');
INSERT INTO `orders_detail` VALUES ('5', '3', '1', '201507211402146324');
INSERT INTO `orders_detail` VALUES ('6', '3', '1', '201507211405556672');
INSERT INTO `orders_detail` VALUES ('7', '3', '1', '201507211501373777');
INSERT INTO `orders_detail` VALUES ('8', '3', '1', '201507211504188775');
INSERT INTO `orders_detail` VALUES ('9', '3', '1', '201507211505122036');
INSERT INTO `orders_detail` VALUES ('10', '3', '1', '201507211505517837');
INSERT INTO `orders_detail` VALUES ('11', '3', '1', '201507211507173826');
INSERT INTO `orders_detail` VALUES ('12', '3', '1', '201507211531312468');
INSERT INTO `orders_detail` VALUES ('13', '3', '1', '201507211532101690');
INSERT INTO `orders_detail` VALUES ('14', '3', '1', '201507211607447732');
INSERT INTO `orders_detail` VALUES ('15', '3', '1', '201507211609198377');
INSERT INTO `orders_detail` VALUES ('16', '3', '1', '201507211623558753');
INSERT INTO `orders_detail` VALUES ('17', '3', '1', '201507211706153342');
INSERT INTO `orders_detail` VALUES ('18', '3', '1', '201507211716354735');
INSERT INTO `orders_detail` VALUES ('19', '3', '1', '201507211844216645');
INSERT INTO `orders_detail` VALUES ('21', '4', '3', '201507221133588549');
INSERT INTO `orders_detail` VALUES ('22', '4', '3', '201507221133588549');
INSERT INTO `orders_detail` VALUES ('23', '4', '3', '201507221133588549');
INSERT INTO `orders_detail` VALUES ('24', '3', '3', '201507221143223168');
INSERT INTO `orders_detail` VALUES ('25', '3', '3', '201507221143223168');
INSERT INTO `orders_detail` VALUES ('26', '3', '3', '201507221143223168');
INSERT INTO `orders_detail` VALUES ('27', '3', '3', '201507221143223168');
INSERT INTO `orders_detail` VALUES ('28', '3', '2', '201507221148074359');
INSERT INTO `orders_detail` VALUES ('29', '3', '2', '201507221148074359');
INSERT INTO `orders_detail` VALUES ('30', '3', '2', '201507221148074359');
INSERT INTO `orders_detail` VALUES ('31', '3', '2', '201507221150131491');
INSERT INTO `orders_detail` VALUES ('32', '3', '2', '201507221150131491');
INSERT INTO `orders_detail` VALUES ('33', '3', '2', '201507221150131491');
INSERT INTO `orders_detail` VALUES ('34', '3', '2', '201507221150229727');
INSERT INTO `orders_detail` VALUES ('35', '3', '2', '201507221150229727');
INSERT INTO `orders_detail` VALUES ('36', '3', '2', '201507221150229727');
INSERT INTO `orders_detail` VALUES ('37', '4', '3', '201507221251561876');
INSERT INTO `orders_detail` VALUES ('38', '4', '3', '201507221251561876');
INSERT INTO `orders_detail` VALUES ('39', '4', '3', '201507221251561876');
INSERT INTO `orders_detail` VALUES ('40', '11', '1', '201507221255472157');
INSERT INTO `orders_detail` VALUES ('41', '11', '1', '201507221255472157');
INSERT INTO `orders_detail` VALUES ('42', '11', '1', '201507221255472157');
INSERT INTO `orders_detail` VALUES ('43', '1', '2', '201507221302298368');
INSERT INTO `orders_detail` VALUES ('44', '6', '1', '201507221302298368');
INSERT INTO `orders_detail` VALUES ('45', '7', '2', '201507221302298368');
INSERT INTO `orders_detail` VALUES ('46', '4', '1', '201507221302298368');
INSERT INTO `orders_detail` VALUES ('47', '1', '3', '201507221317506560');
INSERT INTO `orders_detail` VALUES ('48', '5', '1', '201507221317506560');
INSERT INTO `orders_detail` VALUES ('49', '1', '1', '201507221319538977');
INSERT INTO `orders_detail` VALUES ('50', '6', '3', '201507221319538977');
INSERT INTO `orders_detail` VALUES ('51', '1', '1', '201507221320256187');
INSERT INTO `orders_detail` VALUES ('52', '1', '2', '201507221323508774');
INSERT INTO `orders_detail` VALUES ('53', '2', '3', '201507221323508774');
INSERT INTO `orders_detail` VALUES ('54', '3', '4', '201507221323508774');
INSERT INTO `orders_detail` VALUES ('55', '1', '1', '201507221327444474');
INSERT INTO `orders_detail` VALUES ('56', '1', '1', '201507221327476310');
INSERT INTO `orders_detail` VALUES ('57', '1', '3', '201507221341194763');
INSERT INTO `orders_detail` VALUES ('58', '3', '3', '201507221341194763');
INSERT INTO `orders_detail` VALUES ('59', '1', '1', '201507221405396160');
INSERT INTO `orders_detail` VALUES ('60', '2', '1', '201507221405396160');
INSERT INTO `orders_detail` VALUES ('61', '1', '2', '201507221508467105');
INSERT INTO `orders_detail` VALUES ('62', '2', '3', '201507221508467105');
INSERT INTO `orders_detail` VALUES ('63', '1', '3', '201507221513115296');
INSERT INTO `orders_detail` VALUES ('64', '2', '5', '201507221513115296');
INSERT INTO `orders_detail` VALUES ('65', '1', '5', '201507221529134739');
INSERT INTO `orders_detail` VALUES ('66', '2', '2', '201507221529134739');
INSERT INTO `orders_detail` VALUES ('67', '8', '1', '201507221612554352');
INSERT INTO `orders_detail` VALUES ('68', '2', '1', '201507221721191533');
INSERT INTO `orders_detail` VALUES ('69', '3', '1', '201507221721191533');
INSERT INTO `orders_detail` VALUES ('70', '8', '1', '201507221721191533');
INSERT INTO `orders_detail` VALUES ('71', '2', '1', '201507221725168602');
INSERT INTO `orders_detail` VALUES ('72', '3', '1', '201507221725168602');
INSERT INTO `orders_detail` VALUES ('73', '8', '1', '201507221725168602');
INSERT INTO `orders_detail` VALUES ('74', '6', '1', '201507221858201141');
INSERT INTO `orders_detail` VALUES ('75', '2', '1', '201507221904028677');
INSERT INTO `orders_detail` VALUES ('76', '1', '1', '201507221925092365');
INSERT INTO `orders_detail` VALUES ('77', '1', '1', '201507221926247253');
INSERT INTO `orders_detail` VALUES ('78', '3', '1', '201507221926247253');
INSERT INTO `orders_detail` VALUES ('79', '2', '1', '201507221926247253');
INSERT INTO `orders_detail` VALUES ('80', '7', '1', '201507221928464008');
INSERT INTO `orders_detail` VALUES ('81', '2', '1', '201507221928464008');
INSERT INTO `orders_detail` VALUES ('82', '5', '1', '201507221929587292');
INSERT INTO `orders_detail` VALUES ('83', '5', '1', '201507221930224014');
INSERT INTO `orders_detail` VALUES ('84', '2', '1', '201507221930224014');
INSERT INTO `orders_detail` VALUES ('85', '1', '1', '201507221942328445');
INSERT INTO `orders_detail` VALUES ('86', '1', '1', '201507221946008302');
INSERT INTO `orders_detail` VALUES ('87', '7', '1', '201507222018366262');
INSERT INTO `orders_detail` VALUES ('88', '2', '1', '201507222018366262');
INSERT INTO `orders_detail` VALUES ('101', '2', '1', '201507230756417089');
INSERT INTO `orders_detail` VALUES ('102', '7', '1', '201507230756417089');
INSERT INTO `orders_detail` VALUES ('103', '1', '1', '201507230757354561');
INSERT INTO `orders_detail` VALUES ('104', '1', '1', '201507230840377519');
INSERT INTO `orders_detail` VALUES ('105', '2', '1', '201507230840377519');
INSERT INTO `orders_detail` VALUES ('106', '6', '1', '201507230840377519');
INSERT INTO `orders_detail` VALUES ('107', '2', '1', '201507231016567854');
INSERT INTO `orders_detail` VALUES ('108', '1', '1', '201507231016567854');
INSERT INTO `orders_detail` VALUES ('109', '1', '1', '201507231019564496');
INSERT INTO `orders_detail` VALUES ('110', '5', '1', '201507231201224037');
INSERT INTO `orders_detail` VALUES ('111', '1', '2', '201507231210173320');
INSERT INTO `orders_detail` VALUES ('112', '1', '3', '201507231317349282');
INSERT INTO `orders_detail` VALUES ('113', '6', '1', '201507231359322594');
INSERT INTO `orders_detail` VALUES ('114', '2', '1', '201507231359322594');
INSERT INTO `orders_detail` VALUES ('115', '1', '1', '201507231423333041');
INSERT INTO `orders_detail` VALUES ('116', '1', '2', '201507231427273057');
INSERT INTO `orders_detail` VALUES ('117', '1', '1', '201507231429368724');
INSERT INTO `orders_detail` VALUES ('118', '6', '1', '201507231430458788');
INSERT INTO `orders_detail` VALUES ('119', '1', '1', '201507231641058103');
INSERT INTO `orders_detail` VALUES ('120', '1', '1', '201507231647012638');
INSERT INTO `orders_detail` VALUES ('121', '1', '1', '201507231652317639');
INSERT INTO `orders_detail` VALUES ('122', '1', '1', '201507231654163836');
INSERT INTO `orders_detail` VALUES ('123', '1', '1', '201507231655061091');
INSERT INTO `orders_detail` VALUES ('124', '1', '1', '201507231655194288');
INSERT INTO `orders_detail` VALUES ('125', '1', '12', '201507231707269914');
INSERT INTO `orders_detail` VALUES ('126', '8', '4', '201507231707269914');
INSERT INTO `orders_detail` VALUES ('127', '10', '4', '201507231707269914');
INSERT INTO `orders_detail` VALUES ('128', '1', '6', '201507231758327122');
INSERT INTO `orders_detail` VALUES ('129', '1', '2', '201507231800598836');
INSERT INTO `orders_detail` VALUES ('130', '1', '1', '201507231801288340');
INSERT INTO `orders_detail` VALUES ('131', '1', '1', '201507231834521288');
INSERT INTO `orders_detail` VALUES ('132', '2', '1', '201507231917252868');
INSERT INTO `orders_detail` VALUES ('133', '1', '1', '201507231948145142');
INSERT INTO `orders_detail` VALUES ('134', '1', '1', '201507231950596834');
INSERT INTO `orders_detail` VALUES ('135', '1', '1', '201507232006532500');
INSERT INTO `orders_detail` VALUES ('136', '8', '1', '201507232011107893');
INSERT INTO `orders_detail` VALUES ('137', '3', '9', '201507232016016718');
INSERT INTO `orders_detail` VALUES ('138', '6', '10', '201507232041598485');
INSERT INTO `orders_detail` VALUES ('139', '7', '1', '201507232041598485');
INSERT INTO `orders_detail` VALUES ('140', '1', '1', '201507232041598485');
INSERT INTO `orders_detail` VALUES ('141', '1', '10', '201507232048128242');
INSERT INTO `orders_detail` VALUES ('142', '2', '1', '201507232111574464');
INSERT INTO `orders_detail` VALUES ('143', '1', '2', '201507262124496352');
INSERT INTO `orders_detail` VALUES ('144', '10', '2', '201507262124496352');
INSERT INTO `orders_detail` VALUES ('161', '7', '1', '201507232336291233');
INSERT INTO `orders_detail` VALUES ('162', '7', '1', '201507232343366754');
INSERT INTO `orders_detail` VALUES ('163', '7', '4', '201507232343552025');
INSERT INTO `orders_detail` VALUES ('164', '7', '1', '201507232344122198');
INSERT INTO `orders_detail` VALUES ('165', '10', '1', '201507232344248423');
INSERT INTO `orders_detail` VALUES ('166', '7', '1', '201507240029375314');
INSERT INTO `orders_detail` VALUES ('167', '11', '1', '201507240029537327');
INSERT INTO `orders_detail` VALUES ('168', '10', '1', '201507240030124318');
INSERT INTO `orders_detail` VALUES ('181', '23', '1', '201507241716177707');
INSERT INTO `orders_detail` VALUES ('182', '3', '1', '201507241716177707');
INSERT INTO `orders_detail` VALUES ('183', '23', '1', '201507241724048201');
INSERT INTO `orders_detail` VALUES ('184', '23', '1', '201507241726462875');
INSERT INTO `orders_detail` VALUES ('185', '23', '1', '201507242024078375');
INSERT INTO `orders_detail` VALUES ('201', '23', '7', '201507250815283038');
INSERT INTO `orders_detail` VALUES ('202', '23', '1', '201507250958511578');
INSERT INTO `orders_detail` VALUES ('203', '23', '1', '201507251005054167');
INSERT INTO `orders_detail` VALUES ('204', '23', '1', '201507251133567487');
INSERT INTO `orders_detail` VALUES ('205', '3', '1', '201507251133567487');
INSERT INTO `orders_detail` VALUES ('206', '2', '3', '201507251133567487');
INSERT INTO `orders_detail` VALUES ('207', '24', '1', '201507251421221760');
INSERT INTO `orders_detail` VALUES ('208', '10', '3', '201507251421221760');
INSERT INTO `orders_detail` VALUES ('209', '24', '1', '201507251717057495');
INSERT INTO `orders_detail` VALUES ('210', '23', '9', '201507251717057495');
INSERT INTO `orders_detail` VALUES ('211', '23', '1', '201507252117487102');
INSERT INTO `orders_detail` VALUES ('212', '3', '1', '201507252117487102');
INSERT INTO `orders_detail` VALUES ('213', '7', '1', '201507252117487102');
INSERT INTO `orders_detail` VALUES ('221', '21', '3', '201507261409451445');
INSERT INTO `orders_detail` VALUES ('222', '1', '1', '201507261409451445');
INSERT INTO `orders_detail` VALUES ('223', '23', '8', '201507261409451445');
INSERT INTO `orders_detail` VALUES ('224', '23', '1', '201507261431384917');
INSERT INTO `orders_detail` VALUES ('225', '24', '2', '201507261431384917');
INSERT INTO `orders_detail` VALUES ('226', '23', '1', '201507261432273771');
INSERT INTO `orders_detail` VALUES ('227', '61', '1', '201507261432273771');
INSERT INTO `orders_detail` VALUES ('228', '24', '2', '201507261432273771');
INSERT INTO `orders_detail` VALUES ('229', '23', '1', '201507261432514310');
INSERT INTO `orders_detail` VALUES ('230', '2', '1', '201507261432514310');
INSERT INTO `orders_detail` VALUES ('231', '61', '1', '201507261432514310');
INSERT INTO `orders_detail` VALUES ('232', '24', '2', '201507261432514310');
INSERT INTO `orders_detail` VALUES ('233', '21', '3', '201507261434168501');
INSERT INTO `orders_detail` VALUES ('234', '1', '1', '201507261434168501');
INSERT INTO `orders_detail` VALUES ('235', '23', '9', '201507261434168501');
INSERT INTO `orders_detail` VALUES ('236', '23', '1', '201507261436428312');
INSERT INTO `orders_detail` VALUES ('237', '3', '1', '201507261436428312');
INSERT INTO `orders_detail` VALUES ('238', '4', '1', '201507261448175069');
INSERT INTO `orders_detail` VALUES ('239', '5', '1', '201507261448175069');
INSERT INTO `orders_detail` VALUES ('240', '3', '2', '201507261450471180');
INSERT INTO `orders_detail` VALUES ('241', '23', '4', '201507261450471180');
INSERT INTO `orders_detail` VALUES ('242', '23', '2', '201507261452582409');
INSERT INTO `orders_detail` VALUES ('243', '3', '1', '201507261452582409');
INSERT INTO `orders_detail` VALUES ('244', '4', '1', '201507261453131412');
INSERT INTO `orders_detail` VALUES ('245', '23', '5', '201507261504282978');
INSERT INTO `orders_detail` VALUES ('246', '23', '2', '201507261532077102');
INSERT INTO `orders_detail` VALUES ('247', '24', '2', '201507261547209843');
INSERT INTO `orders_detail` VALUES ('248', '23', '1', '201507261547479507');
INSERT INTO `orders_detail` VALUES ('249', '5', '1', '201507261552583136');
INSERT INTO `orders_detail` VALUES ('250', '3', '1', '2123');
INSERT INTO `orders_detail` VALUES ('251', '1', '2', '201507301911099642');
INSERT INTO `orders_detail` VALUES ('252', '1', '1', '201605122109172707');
INSERT INTO `orders_detail` VALUES ('253', '3', '2', '201605131043259370');
INSERT INTO `orders_detail` VALUES ('254', '1', '1', '201605191628444573');
INSERT INTO `orders_detail` VALUES ('255', '2', '1', '201605191628444573');
INSERT INTO `orders_detail` VALUES ('256', '2', '2', '201605191724156719');
INSERT INTO `orders_detail` VALUES ('257', '1', '2', '201605201259469958');
INSERT INTO `orders_detail` VALUES ('258', '6', '1', '201605201527559277');
INSERT INTO `orders_detail` VALUES ('259', '1', '2', '201605201537104872');
INSERT INTO `orders_detail` VALUES ('260', '1', '3', '201605201602203220');
INSERT INTO `orders_detail` VALUES ('261', '1', '1', '201605211612351210');

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `PRODUCT_ID` int(25) NOT NULL auto_increment,
  `CATALOG_ID` int(25) NOT NULL,
  `ADMIN_ID` int(25) default NULL,
  `CODE` varchar(64) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PRICE` float(10,1) NOT NULL,
  `IMG` varchar(255) default NULL,
  `STORE` int(20) default NULL,
  `PRODUCT_UP` varchar(45) default NULL,
  `MADE` varchar(100) default NULL,
  `SUPPLIER` varchar(100) default NULL,
  `PROFILE` varchar(255) default NULL,
  `COLOR` float(10,1) default NULL,
  `TITLE` varchar(255) default NULL,
  `CHARACTER1` varchar(255) default NULL,
  `CHARACTER2` varchar(255) default NULL,
  `PRODUCT_BAK1` int(45) default NULL,
  `PRODUCT_BAK2` varchar(255) default NULL,
  `PRODUCT_BAK3` datetime default NULL,
  PRIMARY KEY  (`PRODUCT_ID`),
  KEY `FK_CATALOG_ID` USING BTREE (`CATALOG_ID`),
  KEY `FK_ADMIN_ID` USING BTREE (`ADMIN_ID`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`ADMIN_ID`) REFERENCES `admin` (`ADMIN_ID`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`CATALOG_ID`) REFERENCES `catalog` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '106', '5', '10010001', '林徽因', '30.0', 'upload/product/huawei', '321', '1', '中国', '游佳慧', '著名诗人、作家、建筑学家。游历过世界，经历过战乱，丰富的人生经历，使她的诗文，篇篇透彻洞明，句句清新开朗，自然天成，带给人对人生无限的感悟和启迪', '45.0', '林徽因', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('2', '105', '4', '10010002', '多谢自己够勇敢', '30.0', 'upload/product/sanxing', '56', '1', '中国', '游佳慧', '90后百万畅销书作家张皓宸，与创意VJ杨杨跨界打造够勇敢的走心故事集，随书附赠张皓宸手绘Best Q版立体勇气卡', '45.0', '多谢自己够勇敢', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('3', '104', '1', '10010003', '你若安好，便是晴天', '28.0', 'upload/product/iphone', '67', '1', '中国', '游佳慧', '林徽因，一代风华的绝世佳人，才华横溢倾倒众生；让徐志摩、梁思成、金岳霖三大才子痴迷钟爱一生。就是这个走在人间四月天的女子，让众男子“渴望仰慕爱”，让众女子“羡慕嫉妒恨”。', '42.0', '你若安好，便是晴天', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('4', '107', '2', '10010004', '一起长大，慢慢变老', '30.0', 'upload/product/xiaomi', '45', '1', '中国', '游佳慧', '最温暖的故事给所有勇敢面对孤独生活的单身狗，爱情没有早晚，你终究会等到陪你一起长大，慢慢变老的那个人。平凡生活中的浪漫梦想，唤醒爱情的荷尔蒙唯愿岁月中，陪你黑发变成白首与你相遇，是我这一生最幸运的事', '45.0', '一起长大，慢慢变老', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('5', '103', '3', '10010005', '摆渡人', '34.0', 'upload/product/bubugao', '454', '1', '中国', '游佳慧', '★《摆渡人》畅销欧美33个国家的心灵治愈小说，令千万读者灵魂震颤的人性救赎之作。一个史诗般动人的温情故事，回归人性，引人深思', '51.0', '摆渡人', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('6', '103', '3', '10010006', '穿越人海拥抱你', '35.0', 'upload/product/dushulang', '343', '1', '中国', '游佳慧', '北大励志双胞胎、备受年轻人追捧的90后青春文学作家苑子文、苑子豪2016年全新作品，导演张一白监制，张德芬、刘亦菲感动推荐，12个温暖治愈的晚安故事，愿你在今后的日子里即使单枪匹马，也能勇敢无畏', '52.5', '穿越人海拥抱你', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('7', '103', '2', '10010007', '大唐明月', '21.0', 'upload/product/haojixing', '353', '1', '中国', '游佳慧', '看完《大唐明月》，再无唐穿可看。一读《明月》误终身，不看《明月》悔终生!!全六册完结首度公开，带你领略*忠于历史的穿越超500万条百度网络搜索**指向结果', '31.5', '大唐明月', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('8', '103', '3', '10010008', '天才在左，疯子在右', '14.0', 'upload/product/jinzheng', '566', '1', '中国', '游佳慧', '美国副总统约瑟夫拜登、英国军情六处处长倾情推荐！入选《金融时报》2015年夏季推荐书目！蝉联美国亚马逊“政治与社会科学”畅销书排行榜榜首长达1年', '21.0', '天才在左，疯子在右', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('9', '102', '2', '10010009', '货币金融学', '47.0', 'upload/product/fengli', '54', '1', '中国', '游佳慧', '本书适用于货币金融学课程，同时，作为一部经典著作，它也可以作为很多渴望了解货币金融知识的人的学习用书和参考读物。', '70.5', '货币金融学', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('10', '102', '3', '10010010', '经济学原理', '12.0', 'upload/product/youzhe', '64', '1', '中国', '游佳慧', '曼昆的《经济学原理》是一本享誉全球的经济学经典教科书。该书简明的内容、贴近生活和时代的案例，以及生动、诙谐的语言风格，都是其他教材所不能具其一的', '18.0', '经济学原理', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('11', '102', '3', '10010011', '考研英语', '13.0', 'upload/product/xiyue', '87', '1', '中国', '游佳慧', '《考研英语词汇词根+联想记忆法(乱序版)》是新东方创始人俞敏洪老师编著的辅导考研英语词汇学习的知名力作，为经典的“词根+联想”记忆法系列词汇书之一', '19.5', '考研英语', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('12', '102', '3', '10010012', '素描基础教程', '35.0', 'upload/product/tangmao', '565', '1', '中国', '游佳慧', '《素描基础教程》是一本绘画爱好者的入门教材，从*简单的工具及绘画姿式讲起，用清楚的分步讲解，带着你尽快学会绘画基础。', '52.5', '素描基础教程', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('21', '101', '3', '10010013', '我与世界只差一个你', '34.0', 'upload/product/rongyaoX2', '232', '1', '中国', '游佳慧', '1、「一个」app人气冠军，90后实力写作者，继年度畅销书《你是**的自己》后，张皓宸全新力作，带来温暖人心的个人故事集。12个温馨治愈的情感故事，给年轻人爱的正能量和信心', '51.0', '我与世界只差一个你', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('22', '101', '3', '10010014', '我不喜欢这世界，我只喜欢你', '23.0', 'upload/product/meizu', '232', '1', '中国', '游佳慧', '◆暖！萌！甜！几乎每一段都令人笑出声来，但也不乏泪点。◆真实恋爱成长回忆录，*萌*暖のLove story。◆8张超萌爱心动全彩插图，随书赠送4张F君情怀卡', '34.5', '我不喜欢这世界，我只喜欢你', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('23', '103', '3', '10010015', '孙子兵法', '23.0', 'upload/product/kubimofang', '111', '1', '中国', '游佳慧', '这回真正读懂《孙子兵法》！ ◆ 通俗通透解读经典战例！ ◆ 逐字逐句讲透兵法原意！ ◆ 在本书中，华杉抓住兵法根本思想，通过155个经典战例，将《孙子兵法》的原意剖析得详尽透彻', '34.5', '孙子兵法', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('24', '103', '3', '10010016', '追风筝的人', '26.0', 'upload/product/yidali', '123', '1', '中国', '游佳慧', '从《追风筝的人》、《灿烂千阳》到《群山回唱》，胡赛尼小说中的主人公都生活在内外焦灼的恶劣环境下：阿富汗的革命、战争令主人公家庭破碎', '39.0', '追风筝的人', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('61', '102', '3', '10010017', '算法导论', '27.0', 'upload/product/luoxini', '333', '1', '中国', '游佳慧', 'MIT四大名师联手铸就，被誉为“计算机算法的圣经”！全球1000余所大学作为教材或教学参考书使用', '40.5', '算法导论', '', '', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product` VALUES ('62', '102', '3', '10010018', '西方经济学', '25.0', 'upload/product/jieteheng', '544', '1', '中国', '游佳慧', '高鸿业版《西方经济学》系列教科书，是国家教育部组织统编的高校经典教科书。由中国人民大学高鸿业教授和吴汉洪教授、北京大学刘文忻教授、上海财经大学冯金华教授以及复旦大学尹伯成教授，共五名教学人员组成编写组，高鸿业教授任主编。', '37.5', '西方经济学', '', '', '0', '', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `product_comment`
-- ----------------------------
DROP TABLE IF EXISTS `product_comment`;
CREATE TABLE `product_comment` (
  `COMMENT_ID` int(11) NOT NULL auto_increment,
  `PRODUCT_ID` int(11) default NULL,
  `CUSTOMER_ID` int(11) default NULL,
  `COMMENT_NUM` varchar(45) default NULL,
  `COMMENT_DATE` datetime default NULL,
  `COMMENT_TYPE` varchar(45) default NULL,
  `COMMENT_PRODUTE` varchar(2000) default NULL,
  `COMMENT_BAK1` int(11) default NULL,
  `COMMENT_BAK2` varchar(45) default NULL,
  `COMMENT_BAK3` datetime default NULL,
  PRIMARY KEY  (`COMMENT_ID`),
  KEY `FK_PRODUCT_ID` USING BTREE (`PRODUCT_ID`),
  KEY `FK_CUSTOMER_ID` USING BTREE (`CUSTOMER_ID`),
  CONSTRAINT `product_comment_ibfk_1` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`CUSTOMER_ID`),
  CONSTRAINT `product_comment_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_comment
-- ----------------------------
INSERT INTO `product_comment` VALUES ('162', '23', '10002', '', '2015-07-24 12:11:12', '', 'sadhuashfdusahhhhhhhhhhhhhhh', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product_comment` VALUES ('163', '23', '10002', '', '2015-07-24 12:11:25', '', '很好，物流也很快。', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product_comment` VALUES ('164', '11', '10170', '', '2015-07-29 23:11:41', '', '测试', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product_comment` VALUES ('165', '24', '10049', '', '2015-07-30 09:11:56', '', '123', '0', '', '0000-00-00 00:00:00');
INSERT INTO `product_comment` VALUES ('177', '23', '10002', null, '2015-07-30 10:48:26', null, '再次测试一下', null, null, null);
INSERT INTO `product_comment` VALUES ('178', '1', '10020', null, '2015-07-30 10:48:34', null, 'sfsfsfs', null, null, null);
INSERT INTO `product_comment` VALUES ('179', '23', '10002', null, '2015-07-30 10:50:34', null, '再次测试一下下', null, null, null);
INSERT INTO `product_comment` VALUES ('180', '23', '10002', null, '2015-07-30 10:51:26', null, '再次测试一下下下', null, null, null);
INSERT INTO `product_comment` VALUES ('181', '23', '10003', null, '2015-07-30 10:52:17', null, '再次测试一下下下', null, null, null);
INSERT INTO `product_comment` VALUES ('182', '23', '10003', null, '2015-07-30 10:54:13', null, '再次测试一下下下', null, null, null);
INSERT INTO `product_comment` VALUES ('183', '23', '10001', null, '2015-07-30 10:58:34', null, '再次测试一下下下', null, null, null);
INSERT INTO `product_comment` VALUES ('184', '23', '10001', null, '2015-07-30 11:52:50', null, '测试时间', null, null, null);
INSERT INTO `product_comment` VALUES ('193', '1', '10002', null, '2015-07-30 16:41:54', null, 'WUZAI', null, null, null);
INSERT INTO `product_comment` VALUES ('194', '2', '10002', null, '2015-07-30 16:46:37', null, 'WUZAIWUZAI', null, null, null);
INSERT INTO `product_comment` VALUES ('195', '1', '10002', null, '2015-07-30 16:47:29', null, '111111111111111111111111111', null, null, null);
INSERT INTO `product_comment` VALUES ('196', '1', '10002', null, '2015-07-30 16:47:58', null, '很好很好', null, null, null);
INSERT INTO `product_comment` VALUES ('197', '1', '10002', null, '2015-07-30 16:48:23', null, '很好，物流快', null, null, null);
INSERT INTO `product_comment` VALUES ('198', '1', '10002', null, '2015-07-30 16:48:55', null, '很好，价格好，性价比高', null, null, null);
INSERT INTO `product_comment` VALUES ('199', '1', '10002', null, '2015-07-30 16:49:21', null, '很好，价格好，性价比高很好，物流快很好，物流快', null, null, null);
INSERT INTO `product_comment` VALUES ('200', '1', '10002', null, '2015-07-30 16:49:45', null, '222222222222222222222222222222222222不错', null, null, null);
INSERT INTO `product_comment` VALUES ('201', '1', '10002', null, '2015-07-30 16:52:23', null, '再测试一次', null, null, null);
INSERT INTO `product_comment` VALUES ('202', '2', '10001', null, null, null, '测试类容', null, null, null);
INSERT INTO `product_comment` VALUES ('203', '24', '10178', null, null, null, 'ajkfahjfdshalksdaljs;dfasdjjds好棒啊！', null, null, null);
INSERT INTO `product_comment` VALUES ('204', '7', '10177', null, null, null, 'gaohcao', null, null, null);
INSERT INTO `product_comment` VALUES ('205', '7', '10177', null, null, null, 'gaohcaojsdjfoiasdm', null, null, null);
INSERT INTO `product_comment` VALUES ('206', '1', '10177', null, null, null, 'gaohcaoksdf', null, null, null);
INSERT INTO `product_comment` VALUES ('207', '21', '10177', null, null, null, 'kjigbi', null, null, null);
INSERT INTO `product_comment` VALUES ('208', '10', '10003', null, null, null, '还哈皮！', null, null, null);
INSERT INTO `product_comment` VALUES ('209', '10', '10003', null, null, null, '说好的评价了？', null, null, null);
INSERT INTO `product_comment` VALUES ('210', '1', '10179', null, '2016-05-11 13:06:56', null, 'aaa', null, null, null);
INSERT INTO `product_comment` VALUES ('211', '1', '10180', null, '2016-05-12 21:04:55', null, 'wweerr', null, null, null);
