/*
MySQL Data Transfer
Source Host: localhost
Source Database: telephone
Target Host: localhost
Target Database: telephone
Date: 2017/3/16 23:27:23
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for buser
-- ----------------------------
CREATE TABLE `buser` (
  `buser_id` int(11) NOT NULL AUTO_INCREMENT,
  `busername` char(20) NOT NULL,
  `buserpassword` char(20) NOT NULL,
  `busershenfenzheng` char(20) DEFAULT NULL,
  `busertelephone` char(20) DEFAULT NULL,
  PRIMARY KEY (`buser_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for car
-- ----------------------------
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `car_number` int(11) NOT NULL,
  `car_price` int(11) NOT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for fankui
-- ----------------------------
CREATE TABLE `fankui` (
  `fankui_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `zhuti` char(50) DEFAULT NULL,
  `neirong` char(100) DEFAULT NULL,
  PRIMARY KEY (`fankui_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for phone
-- ----------------------------
CREATE TABLE `phone` (
  `phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `buser_id` int(11) NOT NULL,
  `fenlei` char(11) CHARACTER SET utf8 DEFAULT NULL,
  `phonename` char(20) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `phone_price` int(11) NOT NULL,
  `chicun` char(20) DEFAULT NULL,
  `fenbianlv` char(20) DEFAULT NULL,
  `front` char(20) DEFAULT NULL,
  `behind` char(20) DEFAULT NULL,
  `cpu` char(20) DEFAULT NULL,
  `memery` char(20) DEFAULT NULL,
  `picture` char(20) DEFAULT NULL,
  PRIMARY KEY (`phone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for po
-- ----------------------------
CREATE TABLE `po` (
  `po_id` int(11) NOT NULL AUTO_INCREMENT,
  `po_bianhao` char(20) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `buser_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `po_number` int(11) NOT NULL,
  `po_price` int(11) NOT NULL,
  `fukuan` char(20) NOT NULL,
  `fahuo` char(20) NOT NULL,
  `tuihuo` char(20) NOT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for shoucang
-- ----------------------------
CREATE TABLE `shoucang` (
  `shoucang_id` int(50) NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `phone_id` int(50) NOT NULL,
  PRIMARY KEY (`shoucang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `userpassword` char(50) NOT NULL,
  `telephone` char(20) DEFAULT NULL,
  `address` char(50) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `email` char(20) DEFAULT NULL,
  `realname` char(20) DEFAULT NULL,
  `login` char(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `buser` VALUES ('1', '百度', 'baidu', '32068119921224301X', '18796921336');
INSERT INTO `buser` VALUES ('5', 'admin', '123456', '13775639355', '13775639355');
INSERT INTO `buser` VALUES ('7', '微博', 'weibo', '13075649384', '13075649384');
INSERT INTO `buser` VALUES ('8', '雅虎', 'yahu', '13775639355', '13775639355');
INSERT INTO `buser` VALUES ('9', '新浪', 'xinlang', '13075649384', '13075649384');
INSERT INTO `buser` VALUES ('10', 'ysl', '123456', '320681199212243011', '18896701804');
INSERT INTO `buser` VALUES ('11', 'Kimler', '123456', '320681199212243011', '19876554331');
INSERT INTO `car` VALUES ('18', '2', '10', '1', '2800');
INSERT INTO `car` VALUES ('20', '2', '16', '1', '1288');
INSERT INTO `car` VALUES ('21', '2', '11', '1', '2888');
INSERT INTO `car` VALUES ('33', '12', '6', '1', '1288');
INSERT INTO `car` VALUES ('34', '12', '6', '1', '1288');
INSERT INTO `car` VALUES ('40', '1', '6', '1', '1288');
INSERT INTO `car` VALUES ('41', '1', '6', '1', '1288');
INSERT INTO `car` VALUES ('42', '1', '9', '1', '3288');
INSERT INTO `car` VALUES ('43', '1', '11', '1', '2888');
INSERT INTO `car` VALUES ('44', '1', '13', '1', '2188');
INSERT INTO `car` VALUES ('45', '1', '10', '1', '2800');
INSERT INTO `car` VALUES ('46', '1', '23', '1', '6400');
INSERT INTO `car` VALUES ('47', '15', '10', '1', '2800');
INSERT INTO `car` VALUES ('48', '15', '13', '1', '2188');
INSERT INTO `car` VALUES ('49', '15', '14', '1', '3800');
INSERT INTO `car` VALUES ('50', '15', '6', '1', '1288');
INSERT INTO `car` VALUES ('51', '10', '6', '1', '1288');
INSERT INTO `car` VALUES ('52', '10', '10', '1', '2800');
INSERT INTO `fankui` VALUES ('112', '1', '购买和图片的问题', '购买的时候无法显示价格，还有就是图片太模糊！');
INSERT INTO `fankui` VALUES ('113', '1', 'qweqwe', 'qweqweqwe');
INSERT INTO `fankui` VALUES ('114', '1', 'qweqwe', 'qweqweqwe');
INSERT INTO `fankui` VALUES ('116', '1', 'askdflasdf', 'lksdjflsjdfljsdkfjlsjfdl');
INSERT INTO `fankui` VALUES ('121', '2', '12u1203uiwjo', 'ohowiehfsbdkjbis');
INSERT INTO `fankui` VALUES ('122', '1', '反馈信息的问题', '反馈的信息不能够提交');
INSERT INTO `fankui` VALUES ('123', '1', 'zhajfksldkjflksdflkh', 'hslkdfhklsjhdfkjhsdkfjhaksjdf');
INSERT INTO `fankui` VALUES ('124', '1', '123123123123', '123123123123123123123');
INSERT INTO `fankui` VALUES ('125', '4', '用户体验太差，重做！', '重做！');
INSERT INTO `fankui` VALUES ('126', '6', '页面方面', '页面不美观');
INSERT INTO `fankui` VALUES ('127', '1', '很无聊', '还行吧');
INSERT INTO `phone` VALUES ('6', '1', '1', '酷派8810', '13596', '1288', '4.5', '400*600', '200W', '500W', '酷睿双核', '256MB', '手机1.png');
INSERT INTO `phone` VALUES ('9', '7', '1', 'LG S3', '2099', '3288', '5.0', '400*600', '500W', '1000W', '酷睿四核', '512M', '手机1.png');
INSERT INTO `phone` VALUES ('10', '7', '1', '诺基亚820', '520', '2800', '5.0', '600*800', '500W', '1300W', '酷睿四核', '1GB', '手机1.png');
INSERT INTO `phone` VALUES ('11', '1', '1', '诺基亚920', '1846', '2888', '5.0', '600*800', '500W', '1000W', '酷睿四核', '1GB', '手机1.png');
INSERT INTO `phone` VALUES ('12', '1', '1', '步步高', '1300', '1988', '5.0', '300*400', '200W', '800W', '捷达双核', '512M', '手机1.png');
INSERT INTO `phone` VALUES ('13', '1', '1', 'oppo', '642', '2188', '5.5', '400*600', '500W', '1300W', '捷达双核', '1GB', '手机1.png');
INSERT INTO `phone` VALUES ('14', '1', '1', '联想', '21500', '3800', '5.0', '600*800', '500W', '1300W', '酷睿四核', '1GB', '手机1.png');
INSERT INTO `phone` VALUES ('15', '1', '1', '金立', '210', '1088', '4.5', '300*400', '500W', '800W', '捷达双核', '256MB', '手机1.png');
INSERT INTO `phone` VALUES ('16', '1', '1', '康佳', '423', '1288', '4.5', '300*400', '200W', '800W', '酷睿双核', '512M', '手机1.png');
INSERT INTO `phone` VALUES ('20', '1', '1', 'phone6 plus', '13600', '5400', '5.5', '600*800', '500W', '1300W', '酷睿四核', '2GB', '手机1.png');
INSERT INTO `phone` VALUES ('21', '1', '1', '锤子', '1300', '4288', '5.5', '600*800', '500W', '1300W', '酷睿四核', '1GB', '手机1.png');
INSERT INTO `phone` VALUES ('22', '1', '1', '台电科技', '1300', '1888', '5.0', '600*800', '500W', '800W', '捷达双核', '1GB', '手机1.png');
INSERT INTO `phone` VALUES ('23', '1', '1', 'iphone7', '1300', '6400', '5.5', '600*800', '500W', '1500W', '酷睿四核', '2GB', '手机1.png');
INSERT INTO `phone` VALUES ('25', '1', '1', '华为P9', '200', '5600', '5.5', '500*800', '5000W', '2000W', '酷睿7', '8G', '手机1.png');
INSERT INTO `phone` VALUES ('26', '1', '1', '电水壶', '200', '200', null, null, null, null, null, null, 'shoes302.png');
INSERT INTO `phone` VALUES ('27', '1', '4', '空调', '300', '4300', null, null, null, null, null, null, 'shoes302.png');
INSERT INTO `phone` VALUES ('28', '1', '2', 'Nike', '20', '400', null, null, null, null, null, null, 'shoes302.png');
INSERT INTO `phone` VALUES ('30', '1', '2', '天木兰', '3000', '500', null, null, null, null, null, null, 'shoe4.png');
INSERT INTO `phone` VALUES ('32', '1', '4', '插头', '10000', '10', null, null, null, null, null, null, '电器1.png');
INSERT INTO `phone` VALUES ('33', '1', '4', '台灯', '30000', '200', null, null, null, null, null, null, '电器2.png');
INSERT INTO `phone` VALUES ('34', '1', '5', '伊利斯', '200', '1000', null, null, null, null, null, null, '化妆品1.png');
INSERT INTO `phone` VALUES ('35', '1', '5', '自然堂', '19827', '1229', null, null, null, null, null, null, '化妆品2.png');
INSERT INTO `phone` VALUES ('37', '1', '6', '毛毯', '20000', '3000', null, null, null, null, null, null, '生活用品1.png');
INSERT INTO `po` VALUES ('4', '100105', '5', '1', '2', '3', '3800', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('13', '100106', '6', '1', '2', '1', '1288', '已付款', '未发货', '正在退货');
INSERT INTO `po` VALUES ('14', '100109', '9', '7', '2', '1', '3288', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('26', '1001011', '11', '1', '1', '6', '14440', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('27', '1001016', '16', '1', '1', '2', '2576', '已付款', '已发货', '无退货');
INSERT INTO `po` VALUES ('30', '1001013', '13', '1', '1', '1', '2188', '已付款', '已发货', '正在退货');
INSERT INTO `po` VALUES ('31', '100105', '5', '1', '4', '1', '3800', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('32', '100105', '5', '1', '6', '3', '11400', '已付款', '已发货', '无退货');
INSERT INTO `po` VALUES ('33', '100106', '6', '1', '6', '1', '1288', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('34', '100109', '9', '7', '6', '3', '9864', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('39', '1001010', '10', '7', '1', '1', '2800', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('40', '100109', '9', '7', '1', '1', '3288', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('41', '100106', '6', '1', '1', '3', '3864', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('42', '100105', '5', '1', '8', '1', '3800', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('43', '1001024', '24', '1', '1', '0', '0', '未付款', '未发货', '无退货');
INSERT INTO `po` VALUES ('44', '100106', '6', '1', '1', '1', '1288', '未付款', '未发货', '无退货');
INSERT INTO `shoucang` VALUES ('4', '1', '10');
INSERT INTO `shoucang` VALUES ('5', '1', '11');
INSERT INTO `shoucang` VALUES ('6', '1', '12');
INSERT INTO `shoucang` VALUES ('7', '1', '14');
INSERT INTO `shoucang` VALUES ('8', '1', '9');
INSERT INTO `shoucang` VALUES ('9', '1', '6');
INSERT INTO `user` VALUES ('1', 'ysl', 'E10ADC3949BA59ABBE56E057F20F883E', '18796921336', '江苏省启东市九龙镇菜市场向南第三栋', '男', '985184852@qq.com', '袁赛靓', '1');
INSERT INTO `user` VALUES ('10', 'James', '161EBD7D45089B3446EE4E0D86DBCF92', '19281982', '诚品书店', null, '985184852@qq.ocm', null, '0');
INSERT INTO `user` VALUES ('11', 'jason', '4FE15F757324E82A5460E271BD969ACC', '192837198', 'wehfoiwe', null, 'wioefhiuseh@qq.com', null, '0');
INSERT INTO `user` VALUES ('15', 'niming', '92B517D4C29AA7C477F6CB476A2BD0B8', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('20', 'Johnny', '4FE15F757324E82A5460E271BD969ACC', '18987765435', '121212212', null, '121212121212', null, '0');
