/*
Navicat MySQL Data Transfer

Source Server         : csh
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : meide

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2019-05-17 19:07:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mideapic_details`
-- ----------------------------
DROP TABLE IF EXISTS `mideapic_details`;
CREATE TABLE `mideapic_details` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `price` float(8,2) NOT NULL,
  `urls` varchar(999) NOT NULL,
  `num` varchar(100) NOT NULL,
  `guige` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mideapic_details
-- ----------------------------
INSERT INTO `mideapic_details` VALUES ('1', 'https://pic.midea.cn/ImageStore/152528/pic/146e1719ef8d5040A2081/146e1719ef8d5040A2081.jpg?x-oss-process=image/format,webp/quality,Q_90&', null, '1999.00', 'https://pic.midea.cn/ImageStore/152528/pic/146e1719ef8d5040A2081/146e1719ef8d5040A2081.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/152528/pic/e9c808e6815dffe7A9386/e9c808e6815dffe7A9386.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/152528/pic/073baccdbc713e8bA19053/073baccdbc713e8bA19053.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/152528/pic/b9be75c2d3691c12A13365/b9be75c2d3691c12A13365.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/152528/pic/7ebd6b42a48554edA14788/7ebd6b42a48554edA14788.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'KFR-35GW/WDBN8A3@', '极地白');
INSERT INTO `mideapic_details` VALUES ('2', 'https://pic.midea.cn/h5/pic/201904/5cb9b53384c73.jpg?x-oss-process=image/format,webp/quality,Q_90&', '布谷风扇  新品首发，智趣生活', '249.00', 'https://pic.midea.cn/ImageStore/167073/pic/dd466f2b017de02bA7649/dd466f2b017de02bA7649.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/83fb6ea40f03279dA8208/83fb6ea40f03279dA8208.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/5eb1e37d312cc0d7A28047/5eb1e37d312cc0d7A28047.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'BG-F2', '白色');
INSERT INTO `mideapic_details` VALUES ('3', 'https://pic.midea.cn/h5/pic/201904/5cb9b73de3a95.jpg?x-oss-process=image/format,webp/quality,Q_90&', '除螨仪  滚刷拍打 三重过滤', '369.99', 'https://pic.midea.cn/ImageStore/150467/pic/05246908125e5b75A21943/05246908125e5b75A21943.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/150467/pic/c343e3d0a4210656A20509/c343e3d0a4210656A20509.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/150467/pic/56495b22047fbd6bA21010/56495b22047fbd6bA21010.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/150467/pic/0d63a31c53c68f11A21819/0d63a31c53c68f11A21819.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/150467/pic/a5dd69a45dec4777A22699/a5dd69a45dec4777A22699.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'VM1711', '粉色');
INSERT INTO `mideapic_details` VALUES ('4', 'https://pic.midea.cn/h5/pic/201904/5cbdb175a59b1.jpg?x-oss-process=image/format,webp/quality,Q_90&', '电饭煲 4L容量 微压焖香煮 聚能釜内胆', '299.99', 'https://pic.midea.cn/ImageStore/155533/pic/5942ce6dc79e9859A32081/5942ce6dc79e9859A32081.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/155533/pic/1785c732d26ff6b6A23423/1785c732d26ff6b6A23423.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/155533/pic/4f38a96657d13ca5A19917/4f38a96657d13ca5A19917.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/155533/pic/7815a04d148ec6a2A2408/7815a04d148ec6a2A2408.png?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/155533/pic/8da1b669feb893b3A1197/8da1b669feb893b3A1197.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'MB-FB40Easy501', '4L');
INSERT INTO `mideapic_details` VALUES ('6', 'https://pic.midea.cn/h5/pic/201811/5bdc1e52c1e76.png?x-oss-process=image/format,webp/quality,Q_90&', '花生净水机 无罐400G大通量 专利双芯', '1234.12', 'https://pic.midea.cn/ImageStore/158920/pic/9f01c99a5832727fA3934/9f01c99a5832727fA3934.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/158920/pic/e671bab975361a3eA26735/e671bab975361a3eA26735.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/158920/pic/a685428d967dadafA5423/a685428d967dadafA5423.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/158920/pic/85b887910373e657A5391/85b887910373e657A5391.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/158920/pic/d7131e637780af87A712/d7131e637780af87A712.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'MRO1791D-400G', '白色语音智能款');
INSERT INTO `mideapic_details` VALUES ('7', 'https://pic.midea.cn/h5/pic/201903/5c9df67d00ee6.jpg?x-oss-process=image/format,webp/quality,Q_90&', '60L小尺寸电热水器', '1199.00', 'https://pic.midea.cn/ImageStore/158209/pic/001a0d314b0de148A14181/001a0d314b0de148A14181_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158209/pic/7b24864f4776fb72A19519/7b24864f4776fb72A19519_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158209/pic/bef8bc9a90f0ae48A19512/bef8bc9a90f0ae48A19512_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158209/pic/af38eabef826a5c4A10334/af38eabef826a5c4A10334_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', '', '');
INSERT INTO `mideapic_details` VALUES ('8', 'https://pic.midea.cn/h5/pic/201904/5cb9b73de3a95.jpg?x-oss-process=image/format,webp/quality,Q_90&', '除螨仪  滚刷拍打 三重过滤', '10110.00', 'https://pic.midea.cn/ImageStore/150467/pic/a5dd69a45dec4777A22699/a5dd69a45dec4777A22699_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', '', '');
INSERT INTO `mideapic_details` VALUES ('9', 'https://pic.midea.cn/h5/pic/201904/5cb9b53384c73.jpg?x-oss-process=image/format,webp/quality,Q_90&', '布谷风扇  新品首发，智趣生活', '0.22', 'https://pic.midea.cn/ImageStore/167073/pic/dd466f2b017de02bA7649/dd466f2b017de02bA7649_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/83fb6ea40f03279dA8208/83fb6ea40f03279dA8208_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/5eb1e37d312cc0d7A28047/5eb1e37d312cc0d7A28047_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/5b7055e4bf6bf4d0A29080/5b7055e4bf6bf4d0A29080_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/756c692d77970dfaA635/756c692d77970dfaA635_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', '', '');

-- ----------------------------
-- Table structure for `mideapic_index`
-- ----------------------------
DROP TABLE IF EXISTS `mideapic_index`;
CREATE TABLE `mideapic_index` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `price` float(8,2) NOT NULL,
  `urls` varchar(999) NOT NULL,
  `num` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mideapic_index
-- ----------------------------
INSERT INTO `mideapic_index` VALUES ('1', 'https://pic.midea.cn/h5/pic/201903/5c8f0e2b0336e.jpg?x-oss-process=image/format,webp/quality,Q_90&', null, '1999.00', 'https://pic.midea.cn/ImageStore/152528/pic/146e1719ef8d5040A2081/146e1719ef8d5040A2081.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/152528/pic/e9c808e6815dffe7A9386/e9c808e6815dffe7A9386.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/152528/pic/073baccdbc713e8bA19053/073baccdbc713e8bA19053.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/152528/pic/b9be75c2d3691c12A13365/b9be75c2d3691c12A13365.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/152528/pic/7ebd6b42a48554edA14788/7ebd6b42a48554edA14788.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'KFR-35GW/WDBN8A3@');
INSERT INTO `mideapic_index` VALUES ('2', 'https://pic.midea.cn/h5/pic/201904/5cb9b53384c73.jpg?x-oss-process=image/format,webp/quality,Q_90&', '布谷风扇  新品首发，智趣生活', '249.00', 'https://pic.midea.cn/ImageStore/167073/pic/dd466f2b017de02bA7649/dd466f2b017de02bA7649_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/83fb6ea40f03279dA8208/83fb6ea40f03279dA8208_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/5eb1e37d312cc0d7A28047/5eb1e37d312cc0d7A28047_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/5b7055e4bf6bf4d0A29080/5b7055e4bf6bf4d0A29080_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/756c692d77970dfaA635/756c692d77970dfaA635_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'BG-F2');
INSERT INTO `mideapic_index` VALUES ('3', 'https://pic.midea.cn/h5/pic/201904/5cb9b73de3a95.jpg?x-oss-process=image/format,webp/quality,Q_90&', '除螨仪  滚刷拍打 三重过滤', '369.99', '\r\nhttps://pic.midea.cn/ImageStore/150467/pic/05246908125e5b75A21943/05246908125e5b75A21943_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/150467/pic/c343e3d0a4210656A20509/c343e3d0a4210656A20509_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/150467/pic/56495b22047fbd6bA21010/56495b22047fbd6bA21010_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/150467/pic/0d63a31c53c68f11A21819/0d63a31c53c68f11A21819_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/150467/pic/a5dd69a45dec4777A22699/a5dd69a45dec4777A22699_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'VM1711');
INSERT INTO `mideapic_index` VALUES ('4', 'https://pic.midea.cn/h5/pic/201904/5cbdb175a59b1.jpg?x-oss-process=image/format,webp/quality,Q_90&', '电饭煲 4L容量 微压焖香煮 聚能釜内胆', '299.99', 'https://pic.midea.cn/ImageStore/155533/pic/5942ce6dc79e9859A32081/5942ce6dc79e9859A32081_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/155533/pic/1785c732d26ff6b6A23423/1785c732d26ff6b6A23423_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/155533/pic/4f38a96657d13ca5A19917/4f38a96657d13ca5A19917_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/155533/pic/7815a04d148ec6a2A2408/7815a04d148ec6a2A2408_120*120.png?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/155533/pic/8da1b669feb893b3A1197/8da1b669feb893b3A1197_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', 'MB-FB40Easy501');
INSERT INTO `mideapic_index` VALUES ('6', 'https://pic.midea.cn/h5/pic/201811/5bdc1e52c1e76.png?x-oss-process=image/format,webp/quality,Q_90&', '花生净水机 无罐400G大通量 专利双芯', '1234.12', 'https://pic.midea.cn/ImageStore/158920/pic/9f01c99a5832727fA3934/9f01c99a5832727fA3934_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158920/pic/e671bab975361a3eA26735/e671bab975361a3eA26735_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158920/pic/a685428d967dadafA5423/a685428d967dadafA5423_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158920/pic/85b887910373e657A5391/85b887910373e657A5391_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158920/pic/d7131e637780af87A712/d7131e637780af87A712_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', '');
INSERT INTO `mideapic_index` VALUES ('7', 'https://pic.midea.cn/h5/pic/201903/5c9df67d00ee6.jpg?x-oss-process=image/format,webp/quality,Q_90&', '60L小尺寸电热水器', '1199.00', 'https://pic.midea.cn/ImageStore/158209/pic/001a0d314b0de148A14181/001a0d314b0de148A14181_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158209/pic/7b24864f4776fb72A19519/7b24864f4776fb72A19519_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158209/pic/bef8bc9a90f0ae48A19512/bef8bc9a90f0ae48A19512_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,https://pic.midea.cn/ImageStore/158209/pic/af38eabef826a5c4A10334/af38eabef826a5c4A10334_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', '');
INSERT INTO `mideapic_index` VALUES ('8', 'https://pic.midea.cn/h5/pic/201904/5cb9b73de3a95.jpg?x-oss-process=image/format,webp/quality,Q_90&', '除螨仪  滚刷拍打 三重过滤', '10110.00', 'https://pic.midea.cn/ImageStore/150467/pic/a5dd69a45dec4777A22699/a5dd69a45dec4777A22699_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', '');
INSERT INTO `mideapic_index` VALUES ('9', 'https://pic.midea.cn/h5/pic/201904/5cb9b53384c73.jpg?x-oss-process=image/format,webp/quality,Q_90&', '布谷风扇  新品首发，智趣生活', '0.22', 'https://pic.midea.cn/ImageStore/167073/pic/dd466f2b017de02bA7649/dd466f2b017de02bA7649_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/83fb6ea40f03279dA8208/83fb6ea40f03279dA8208_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/5eb1e37d312cc0d7A28047/5eb1e37d312cc0d7A28047_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/5b7055e4bf6bf4d0A29080/5b7055e4bf6bf4d0A29080_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&,\r\nhttps://pic.midea.cn/ImageStore/167073/pic/756c692d77970dfaA635/756c692d77970dfaA635_120*120.jpg?x-oss-process=image/format,webp/quality,Q_90&', '');

-- ----------------------------
-- Table structure for `userlist`
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `sid` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `regdate` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES ('1', '13188888888', '123456', '2019-05-09 15:28:52');
INSERT INTO `userlist` VALUES ('2', '13197822345', 'e10adc3949ba59abbe56e057f20f883e', '2019-05-09 15:42:46');
INSERT INTO `userlist` VALUES ('3', '13197810236', '96e79218965eb72c92a549dd5a330112', '2019-05-09 15:44:01');
INSERT INTO `userlist` VALUES ('4', '15122222222', '96e79218965eb72c92a549dd5a330112', '2019-05-09 15:45:46');
INSERT INTO `userlist` VALUES ('5', '15070113317', 'e10adc3949ba59abbe56e057f20f883e', '2019-05-09 16:14:18');
INSERT INTO `userlist` VALUES ('6', '13177777777', 'e10adc3949ba59abbe56e057f20f883e', '2019-05-15 18:00:16');
INSERT INTO `userlist` VALUES ('7', '15012312312', 'e10adc3949ba59abbe56e057f20f883e', '2019-05-17 16:49:23');
