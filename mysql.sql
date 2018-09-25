/*
MySQL Data Transfer
Source Host: localhost
Source Database: ykd
Target Host: localhost
Target Database: ykd
Date: 2018/5/7 19:09:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `userAddreessId` int(200) NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `userTelephone` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `userProvince` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `userCity` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `userDistrict` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `userDetailedAddress` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `userIsType` int(3) DEFAULT NULL,
  `userId` int(200) DEFAULT NULL,
  PRIMARY KEY (`userAddreessId`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `classifyPictureUrl` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `classifyId` int(200) DEFAULT NULL,
  `classifyTitle` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `evaluateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `evaluateGrade` int(10) DEFAULT NULL,
  `evaluateContent` varchar(5000) CHARACTER SET utf8 DEFAULT '',
  `evaluatePictureUrl` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `shopId` int(200) DEFAULT NULL,
  `userId` int(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for moneydetail
-- ----------------------------
DROP TABLE IF EXISTS `moneydetail`;
CREATE TABLE `moneydetail` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `detail` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `balance` double(200,2) DEFAULT NULL,
  `money` double(200,2) DEFAULT NULL,
  `type` int(10) DEFAULT NULL,
  `userId` int(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `orderId` int(200) DEFAULT NULL,
  `shopId` int(200) DEFAULT NULL,
  `ProductNum` int(200) DEFAULT NULL,
  `orderNum` varchar(5000) DEFAULT NULL,
  `type` int(20) DEFAULT '1',
  `cancelState` int(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `shopId` int(200) NOT NULL AUTO_INCREMENT,
  `shopTitle` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `shopPrice` double(100,2) unsigned DEFAULT NULL,
  `shopFreight` double(200,2) DEFAULT NULL,
  `shopSalesVolume` int(200) DEFAULT NULL,
  `shopType` int(10) DEFAULT '0',
  `shopPictureUrl` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `shopGraphicDetails` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `classifyId` int(200) DEFAULT NULL,
  `twoClassifyId` int(200) DEFAULT NULL,
  `recommend` int(10) DEFAULT '0',
  `shopCount` int(200) DEFAULT NULL,
  PRIMARY KEY (`shopId`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for returnorder
-- ----------------------------
DROP TABLE IF EXISTS `returnorder`;
CREATE TABLE `returnorder` (
  `returnId` int(200) NOT NULL AUTO_INCREMENT,
  `orderNum` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `shopId` int(200) DEFAULT NULL,
  `salesReturnId` int(200) DEFAULT NULL,
  `refundPrice` double(200,2) DEFAULT NULL,
  `salesReturnExplain` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `salesReturnPictures` varchar(5000) CHARACTER SET utf8 DEFAULT NULL,
  `startTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `endTime` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `returnNum` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `returnCount` int(200) DEFAULT NULL,
  `orderType` int(15) DEFAULT '1' COMMENT '1',
  `cancelState` int(15) unsigned DEFAULT '1',
  PRIMARY KEY (`returnId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for returnreason
-- ----------------------------
DROP TABLE IF EXISTS `returnreason`;
CREATE TABLE `returnreason` (
  `salesReturnId` int(200) NOT NULL AUTO_INCREMENT,
  `returnReason` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`salesReturnId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for second_level
-- ----------------------------
DROP TABLE IF EXISTS `second_level`;
CREATE TABLE `second_level` (
  `secondLevelId` int(200) NOT NULL AUTO_INCREMENT,
  `secondLevelTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `secondLevelPictureUrl` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `classifyId` int(200) DEFAULT NULL,
  PRIMARY KEY (`secondLevelId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for shoporder
-- ----------------------------
DROP TABLE IF EXISTS `shoporder`;
CREATE TABLE `shoporder` (
  `orderId` int(200) NOT NULL AUTO_INCREMENT,
  `userId` int(200) DEFAULT NULL,
  `userAddreessId` int(200) DEFAULT NULL,
  `rentalPrice` double(100,2) DEFAULT NULL,
  `buyerMessage` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `orderNum` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `orderType` int(100) DEFAULT '1',
  `orderTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shopTotalPrices` double(100,2) DEFAULT NULL,
  `expressagePrices` double(100,2) DEFAULT NULL,
  `sumofSalesPrice` double(100,2) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=984 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for slide_pic
-- ----------------------------
DROP TABLE IF EXISTS `slide_pic`;
CREATE TABLE `slide_pic` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `pictureUrl` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `shopId` int(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(200) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `passWord` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `myCode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `phoneNumber` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `identity` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `myUserCount` int(200) DEFAULT NULL,
  `money` double(200,2) DEFAULT NULL,
  `sexType` int(3) DEFAULT NULL,
  `regiTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `invitationCode` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `headPortrait` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `openid` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `userGrade` int(100) DEFAULT NULL,
  `shareType` int(10) DEFAULT NULL,
  `shareLink` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `deduction` double(100,2) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user_product
-- ----------------------------
DROP TABLE IF EXISTS `user_product`;
CREATE TABLE `user_product` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `userId` int(200) DEFAULT NULL,
  `shopId` int(200) DEFAULT NULL,
  `shopNumber` int(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=875 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for usermsg
-- ----------------------------
DROP TABLE IF EXISTS `usermsg`;
CREATE TABLE `usermsg` (
  `userId` int(200) DEFAULT NULL,
  `msg` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `msgtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `messagePictureType` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '1', '1', '1', '1', '1', '0', '1');
INSERT INTO `address` VALUES ('2', '2', '2', '2', '2', '2', '2', '2', '2');
INSERT INTO `address` VALUES ('3', 'aaa', null, null, null, null, null, null, null);
INSERT INTO `address` VALUES ('4', 'aaaaa', '1111', 'aaaa', 'aaa', 'aaaa', 'aaaaaa', '0', '1');
INSERT INTO `address` VALUES ('5', '1', '1', '1', '1', '1', '1', '0', '1');
INSERT INTO `address` VALUES ('6', '点睡', '132232332323', '河北省', '石家庄市', '桥西区', '后启动大街', '0', '1');
INSERT INTO `address` VALUES ('9', '点睡', '132232332323', '安徽省', '合肥市', '庐阳区', '安徽省合肥市庐阳区', '1', '150');
INSERT INTO `address` VALUES ('11', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `address` VALUES ('28', '吧', '图', '北京市', '北京市', '东城区', '太累了', '1', '0');
INSERT INTO `address` VALUES ('33', '回家', '图', '福建省', '福州市', '永泰县', '回老家了', '1', '0');
INSERT INTO `address` VALUES ('35', 'fdsfssa', '11111', '江西省', '南昌市', '东湖区', '江西省南昌市东湖区', '0', '150');
INSERT INTO `address` VALUES ('37', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('38', '2313', '321321', '天津市', '天津市', '和平区', '321321', '0', null);
INSERT INTO `address` VALUES ('39', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('40', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('41', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('42', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('43', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('44', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('45', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('46', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('47', '1', '1', '1', '1', '1', '1', '0', '2');
INSERT INTO `address` VALUES ('48', 'aa', 'aaa', 'aaa', 'aaa', 'aaa', 'aaa', '0', '2');
INSERT INTO `address` VALUES ('49', '2313', '321321', '天津市', '天津市', '和平区', '321321', '0', null);
INSERT INTO `address` VALUES ('50', '32131', '321321', '河北省', '石家庄市', '桥西区', '321321诶我去二无群二', '0', null);
INSERT INTO `address` VALUES ('51', '21212', '212121', '山西省', '太原市', '小店区', '321321321', '0', null);
INSERT INTO `address` VALUES ('52', '321321', '32131', '北京市', '北京市', '东城区', '32132131', '0', null);
INSERT INTO `address` VALUES ('53', '321321', '32131', '北京市', '北京市', '东城区', '32132131', '0', null);
INSERT INTO `address` VALUES ('54', '委屈翁无群', 'ewqe', '北京市', '北京市', '东城区', '得问', '0', null);
INSERT INTO `address` VALUES ('55', '1', '1', '1', '1', '1', '1', '1', '94');
INSERT INTO `address` VALUES ('56', '委屈翁无群', 'ewqe', '北京市', '北京市', '东城区', '得问', '0', null);
INSERT INTO `address` VALUES ('57', '21', '121', '21', '21', '21', '21', '0', '1');
INSERT INTO `address` VALUES ('58', '委屈翁无群', 'ewqe', '北京市', '北京市', '东城区', '得问', '0', null);
INSERT INTO `address` VALUES ('59', '13213', '32131', '北京市', '北京市', '东城区', '321321', '0', null);
INSERT INTO `address` VALUES ('60', '21', '3213', '河北', '石家庄', '桥西', '21', '0', '1');
INSERT INTO `address` VALUES ('61', '321321', '3213213', '3213', '石家庄', '3213', '321', '0', '94');
INSERT INTO `address` VALUES ('62', '13213', '32131', '北京市', '北京市', '东城区', '321321', '0', null);
INSERT INTO `address` VALUES ('63', '13213', '32131', '北京市', '北京市', '东城区', '321321', '0', null);
INSERT INTO `address` VALUES ('64', '3213', '3123', '天津市', '天津市', '和平区', '3213213', '1', null);
INSERT INTO `address` VALUES ('65', '3213', '3123', '天津市', '天津市', '和平区', '3213213', '1', null);
INSERT INTO `address` VALUES ('66', '213', '32131', '北京市', '北京市', '东城区', '3123213', '1', null);
INSERT INTO `address` VALUES ('67', '11', '11', '辽宁省', '沈阳市', '沈河区', 'fddfggdf', '1', null);
INSERT INTO `address` VALUES ('68', 'adf', 'dsd', '黑龙江省', '哈尔滨市', '松北区', 'fefrwedss', '0', null);
INSERT INTO `address` VALUES ('69', '343', '3213', '河北省', '石家庄市', '长安区', '的沙发斯蒂芬', '0', null);
INSERT INTO `address` VALUES ('73', '343', '3213', '河北省', '石家庄市', '长安区', '的沙发斯蒂芬', '0', null);
INSERT INTO `address` VALUES ('74', '阳痿', '18332005563', '河北省', '石家庄市', '桥西区', '红旗大街开元商务301', '1', '93');
INSERT INTO `address` VALUES ('75', '343', '3213', '河北省', '石家庄市', '长安区', '的沙发斯蒂芬', '0', null);
INSERT INTO `address` VALUES ('76', '囧儿子', '3213', '河北省', '石家庄市', '长安区', '的沙发斯蒂芬', '0', null);
INSERT INTO `address` VALUES ('77', '囧儿子', '3213213', '北京市', '北京市', '东城区', '321321321', '0', '94');
INSERT INTO `address` VALUES ('78', 'aaa', '1111', 'aaa', 'aaaa', 'aaa', 'aaaa', '0', '1');
INSERT INTO `address` VALUES ('79', 'hyl', '12345678', '1', '2', '3', '123', '1', '158');
INSERT INTO `address` VALUES ('80', '333', '222', 'rqre', 'rqer', 'rqwerq', 'rqwerq', '0', '1');
INSERT INTO `address` VALUES ('81', 'dfa', '1221', 'fff', 'ff', 'ff', 'ff', '0', '1');
INSERT INTO `address` VALUES ('82', 'kkk', '122', '河北省', '石家庄市', '桥西区', 'ddd', '0', '192');
INSERT INTO `address` VALUES ('83', '斤斤计较', '12445', '河北省', '石家庄市', '赵县', '啊啊啊啊', '0', '192');
INSERT INTO `address` VALUES ('144', '1', '1', '1', '1', '1', '1', '0', '1');
INSERT INTO `address` VALUES ('164', 'zhaoZhao', '321654', '河北省', '石家庄市', '桥西区', '红旗大街', '0', '174');
INSERT INTO `address` VALUES ('185', 'qqq', 'qqqq', 'qq', 'qqq', 'qqq', 'qqqq', '0', '1');
INSERT INTO `address` VALUES ('189', '阿斯顿发生', '是', '北京市', '北京市', '东城区', '阿斯蒂芬1234', '1', '197');
INSERT INTO `address` VALUES ('202', '1', '1', '1', '1', '1', '1', '0', '200');
INSERT INTO `address` VALUES ('204', '七月', '12345654321', '天津市', '天津市', '和平区', '不知道', '0', '200');
INSERT INTO `address` VALUES ('205', '吴越', '12312313123', '河北省', '石家庄市', '长安区', '一号', '0', '200');
INSERT INTO `address` VALUES ('206', 'dfdgf', 'adad', '北京市', '北京市', '东城区', 'dsa', '1', '200');
INSERT INTO `address` VALUES ('208', '1231123', '23', '北京市', '北京市', '东城区', '123', '1', '174');
INSERT INTO `address` VALUES ('212', '小名', '123456', '河北省', '石家庄市', '长安区', '大街小街', '0', '198');
INSERT INTO `address` VALUES ('213', 'hhhhh', '12123123', '北京市', '北京市', '东城区', 'fasdfasdfas', '1', '218');
INSERT INTO `address` VALUES ('214', '精灵', '123456', '北京市', '北京市', '海淀区', '大街想喝', '1', '219');
INSERT INTO `address` VALUES ('216', '我的', '123', '河北省', '石家庄市', '辛集市', '一条大街', '0', '220');
INSERT INTO `address` VALUES ('217', '无人', '111111', '辽宁省', '沈阳市', '和平区', '皓月当空', '0', '220');
INSERT INTO `address` VALUES ('218', '啊啊啊', '1234', '北京市', '北京市', '宣武区', 'accede', '0', '220');
INSERT INTO `address` VALUES ('219', 'hjj', '123', '北京市', '北京市', '房山区', 'hhj', '0', '220');
INSERT INTO `address` VALUES ('220', '他', '1234', '辽宁省', '沈阳市', '新民市', '去我急', '1', '220');
INSERT INTO `address` VALUES ('221', 'jji', '4556', '北京市', '北京市', '丰台区', 'hhj', '0', '220');
INSERT INTO `address` VALUES ('222', 'haoyulong', '123123123', '1', '1', '1', '1', '1', '66');
INSERT INTO `address` VALUES ('223', '1234567', '1234567', '河北', '石家庄', '高新区', '大街', '0', '233');
INSERT INTO `address` VALUES ('224', '1234567', '1234567', '河北', '石家庄', '高新区', '大街', '1', '233');
INSERT INTO `address` VALUES ('227', '我大概', '456321', '吉林省', '长春市', '南关区', '我就能', '0', '198');
INSERT INTO `address` VALUES ('228', '墨迹', '75688', '辽宁省', '沈阳市', '皇姑区', 'logjam', '0', '198');
INSERT INTO `address` VALUES ('229', '销量', '34232', '天津市', '天津市', '和平区', '法师打发第三', '1', '198');
INSERT INTO `address` VALUES ('230', '小亮', '65232', '北京市', '北京市', '海淀区', '发达', '0', '198');
INSERT INTO `address` VALUES ('231', 'haoyulong', '666888', '1', '1', '1', '1', '1', '341');
INSERT INTO `classify` VALUES ('1', 'http://114.215.46.63/Test/images/yiyao.png', '0', '医药保健');
INSERT INTO `classify` VALUES ('2', 'http://114.215.46.63/Test/images/shengxian.png', '1', '食品生鲜');
INSERT INTO `classify` VALUES ('3', 'http://114.215.46.63/Test/images/meizhuang.png', '2', '美妆个护');
INSERT INTO `classify` VALUES ('4', 'http://114.215.46.63/Test/images/jiaju.png', '3', '家居百货');
INSERT INTO `classify` VALUES ('5', 'http://114.215.46.63/Test/images/yinliao.png', '4', '酒水饮料');
INSERT INTO `classify` VALUES ('6', 'http://114.215.46.63/Test/images/tongzhuang.png', '5', '母婴童装');
INSERT INTO `classify` VALUES ('7', 'http://114.215.46.63/Test/images/yundong.png', '6', '运动户外');
INSERT INTO `classify` VALUES ('8', 'http://114.215.46.63/Test/images/1204387.png', '7', '办公用品');
INSERT INTO `classify` VALUES ('9', 'http://114.215.46.63/Test/images/1185182.png', '8', '精品服饰');
INSERT INTO `classify` VALUES ('10', 'http://114.215.46.63/Test/images/1188517.png', '9', '家用电器');
INSERT INTO `classify` VALUES ('11', 'http://114.215.46.63/Test/images/1176886.png', '10', '零食特产');
INSERT INTO `classify` VALUES ('12', 'http://114.215.46.63/Test/images/1114469.png', '11', '运动户外');
INSERT INTO `classify` VALUES ('13', 'http://114.215.46.63/Test/images/jiaju.png', '12', '家具用品');
INSERT INTO `comment` VALUES ('1', '2017-08-26 18:11:08', '2', 'fdjsfdsafdsa', null, '2', '2');
INSERT INTO `comment` VALUES ('2', '2017-08-27 11:47:20', '3', 'fdsfds', null, '2', '2');
INSERT INTO `comment` VALUES ('3', '2017-09-03 09:58:04', '2', 'jfdsfdsl', 'dfsjfdsafd,dksfdsflds,jfdsfdskl', '11', '1');
INSERT INTO `comment` VALUES ('4', '2017-09-03 09:59:26', '2', 'jfdsfdsl', 'dfsjfdsafd,dksfdsflds,jfdsfdskl', '11', '1');
INSERT INTO `comment` VALUES ('5', '2017-09-03 09:59:26', '2', 'jfdsfdsl', 'dfsjfdsafd,dksfdsflds,jfdsfdskl', '11', '1');
INSERT INTO `order_product` VALUES ('4', '12', '123', null, null, null);
INSERT INTO `order_product` VALUES ('6', '12', '123', '1000001794580598', null, null);
INSERT INTO `order_product` VALUES ('25', '9', '1', '1000000812879950', '1', '1');
INSERT INTO `order_product` VALUES ('27', '1', '1', '1000001160683675', '2', '2');
INSERT INTO `order_product` VALUES ('27', '3', '1', '1000001160683675', '2', '3');
INSERT INTO `order_product` VALUES ('28', '1', '1', '1000001696320681', '2', '3');
INSERT INTO `order_product` VALUES ('28', '2', '1', '1000001696320681', '2', '2');
INSERT INTO `order_product` VALUES ('30', '1', '1', '1000001229754718', '2', '2');
INSERT INTO `order_product` VALUES ('30', '2', '1', '1000001229754718', '2', '3');
INSERT INTO `order_product` VALUES ('31', '1', '1', '1000001763422512', '1', '1');
INSERT INTO `order_product` VALUES ('31', '2', '1', '1000001763422512', '1', '1');
INSERT INTO `order_product` VALUES ('32', '1', '1', '1000001266238470', '1', '1');
INSERT INTO `order_product` VALUES ('32', '2', '1', '1000001266238470', '1', '1');
INSERT INTO `order_product` VALUES ('33', '1', '1', '1000001441442465', '1', '1');
INSERT INTO `order_product` VALUES ('33', '2', '1', '1000001441442465', '1', '1');
INSERT INTO `order_product` VALUES ('37', '3', '1', '1000000791115020', '2', '2');
INSERT INTO `order_product` VALUES ('37', '2', '1', '1000000791115020', '2', '2');
INSERT INTO `order_product` VALUES ('38', '3', '1', '1000001064435193', '2', '2');
INSERT INTO `order_product` VALUES ('38', '2', '1', '1000001064435193', '2', '3');
INSERT INTO `order_product` VALUES ('44', '1', '1', '1000001105053335', '1', '1');
INSERT INTO `order_product` VALUES ('45', '1', '1', '1000000769498126', '1', '1');
INSERT INTO `order_product` VALUES ('52', '3', '1', '1000001878672343', '1', '1');
INSERT INTO `order_product` VALUES ('53', '3', '1', '1000001080169005', '1', '1');
INSERT INTO `order_product` VALUES ('54', '3', '1', '1000001161082838', '1', '1');
INSERT INTO `order_product` VALUES ('55', '3', '1', '1000000668815524', '1', '1');
INSERT INTO `order_product` VALUES ('57', '3', '1', '1000000968068226', '1', '1');
INSERT INTO `order_product` VALUES ('58', '3', '1', '1000000468088515', '1', '1');
INSERT INTO `order_product` VALUES ('59', '3', '1', '1000000539724612', '1', '1');
INSERT INTO `order_product` VALUES ('60', '3', '1', '1000000668593867', '1', '1');
INSERT INTO `order_product` VALUES ('61', '3', '1', '1000000544838654', '1', '1');
INSERT INTO `order_product` VALUES ('62', '4', '1', '1000001207798210', '1', '1');
INSERT INTO `order_product` VALUES ('63', '4', '1', '1000000746961326', '1', '1');
INSERT INTO `order_product` VALUES ('64', '4', '1', '1000002090458615', '1', '1');
INSERT INTO `order_product` VALUES ('65', '4', '1', '1000000739994495', '1', '1');
INSERT INTO `order_product` VALUES ('66', '4', '1', '1000001875949968', '1', '1');
INSERT INTO `order_product` VALUES ('68', '12', '1', '1000000411957814', '1', '1');
INSERT INTO `order_product` VALUES ('69', '12', '1', '1000001241027157', '1', '1');
INSERT INTO `order_product` VALUES ('70', '12', '2', '1000001204717851', '1', '1');
INSERT INTO `order_product` VALUES ('71', '6', '2', '1000001877496073', '1', '1');
INSERT INTO `order_product` VALUES ('72', '15', '5', '1000001119630449', '1', '1');
INSERT INTO `order_product` VALUES ('73', '10', '3', '1000001519692869', '1', '1');
INSERT INTO `order_product` VALUES ('74', '16', '2', '1000001599596245', '1', '1');
INSERT INTO `order_product` VALUES ('75', '101', '1', '1000001218980222', '1', '1');
INSERT INTO `order_product` VALUES ('76', '22', '1', '1000001491054961', '1', '1');
INSERT INTO `order_product` VALUES ('77', '15', '1', '1000001820461865', '1', '1');
INSERT INTO `order_product` VALUES ('78', '8', '1', '1000001150747930', '1', '1');
INSERT INTO `order_product` VALUES ('79', '31', '6', '1000000004835790', '1', '1');
INSERT INTO `order_product` VALUES ('80', '12', '1', '1000001910385753', '1', '1');
INSERT INTO `order_product` VALUES ('81', '31', '3', '1000001616715922', '1', '1');
INSERT INTO `order_product` VALUES ('82', '8', '6', '1000000253454927', '1', '1');
INSERT INTO `order_product` VALUES ('83', '1', '1', '1000001352769130', '1', '1');
INSERT INTO `order_product` VALUES ('84', '1', '1', '1000001906453723', '1', '1');
INSERT INTO `order_product` VALUES ('85', '19', '3', '1000001991532903', '1', '1');
INSERT INTO `order_product` VALUES ('86', '22', '2', '1000001932085698', '1', '1');
INSERT INTO `order_product` VALUES ('87', '12', '1', '1000001646824091', '1', '1');
INSERT INTO `order_product` VALUES ('88', '12', '2', '1000000084119251', '1', '1');
INSERT INTO `order_product` VALUES ('89', '78', '1', '1000000879415741', '1', '1');
INSERT INTO `order_product` VALUES ('90', '10', '1', '1000001033134348', '1', '1');
INSERT INTO `order_product` VALUES ('91', '12', '1', '1000001505003478', '1', '1');
INSERT INTO `order_product` VALUES ('92', '13', '1', '1000001563156476', '1', '1');
INSERT INTO `order_product` VALUES ('93', '111', '2', '1000001998543454', '1', '1');
INSERT INTO `order_product` VALUES ('94', '17', '4', '1000002110200367', '1', '1');
INSERT INTO `order_product` VALUES ('97', '1', '1', '1000000042221226', '1', '1');
INSERT INTO `order_product` VALUES ('116', '2', '1', '1000001788668825', '1', '1');
INSERT INTO `order_product` VALUES ('116', '2', '1', '1000001788668825', '1', '1');
INSERT INTO `order_product` VALUES ('117', '8', '1', '1000001941093504', '1', '1');
INSERT INTO `order_product` VALUES ('122', '8', '1', '1000001994865500', '1', '1');
INSERT INTO `order_product` VALUES ('126', '8', '1', '1000001825680681', '1', '1');
INSERT INTO `order_product` VALUES ('127', '9', '1', '1000000753039533', '1', '1');
INSERT INTO `order_product` VALUES ('128', '6', '1', '1000001274061164', '1', '1');
INSERT INTO `order_product` VALUES ('129', '7', '1', '1000001871135975', '1', '1');
INSERT INTO `order_product` VALUES ('130', '7', '1', '1000002115698197', '1', '1');
INSERT INTO `order_product` VALUES ('131', '6', '1', '1000000384847436', '1', '1');
INSERT INTO `order_product` VALUES ('132', '9', '1', '1000000856721626', '1', '1');
INSERT INTO `order_product` VALUES ('133', '9', '1', '1000000010098013', '1', '1');
INSERT INTO `order_product` VALUES ('135', '9', '1', '1000001526681655', '1', '1');
INSERT INTO `order_product` VALUES ('136', '9', '1', '1000000766301381', '1', '1');
INSERT INTO `order_product` VALUES ('137', '9', '1', '1000001994803929', '1', '1');
INSERT INTO `order_product` VALUES ('138', '9', '1', '1000001726479427', '1', '1');
INSERT INTO `order_product` VALUES ('139', '9', '1', '1000000654179799', '1', '1');
INSERT INTO `order_product` VALUES ('140', '9', '1', '1000000344571772', '1', '1');
INSERT INTO `order_product` VALUES ('141', '9', '1', '1000000671709450', '1', '1');
INSERT INTO `order_product` VALUES ('182', '7', '1', '1000000136887525', '1', '1');
INSERT INTO `order_product` VALUES ('186', '7', '1', '1000000417232605', '1', '1');
INSERT INTO `order_product` VALUES ('187', '7', '1', '1000001711866205', '1', '1');
INSERT INTO `order_product` VALUES ('188', '7', '1', '1000001864557987', '1', '1');
INSERT INTO `order_product` VALUES ('190', '7', '1', '1000000419936420', '1', '1');
INSERT INTO `order_product` VALUES ('191', '7', '1', '1000001086082235', '1', '1');
INSERT INTO `order_product` VALUES ('192', '7', '1', '1000000197872823', '1', '1');
INSERT INTO `order_product` VALUES ('194', '7', '1', '1000000140400989', '1', '1');
INSERT INTO `order_product` VALUES ('200', '1', '1', '1000001787188688', '1', '1');
INSERT INTO `order_product` VALUES ('221', '1', '1', '1000000017533503', '1', '1');
INSERT INTO `order_product` VALUES ('243', '1', '1', '1000002106983721', '1', '1');
INSERT INTO `order_product` VALUES ('256', '1', '1', '1000000691502687', '1', '1');
INSERT INTO `order_product` VALUES ('257', '1', '1', '1000001779571725', '1', '1');
INSERT INTO `order_product` VALUES ('258', '1', '1', '1000000716608633', '1', '1');
INSERT INTO `order_product` VALUES ('259', '1', '1', '1000000909261298', '1', '1');
INSERT INTO `order_product` VALUES ('260', '1', '1', '1000001586524946', '1', '1');
INSERT INTO `order_product` VALUES ('261', '119', '1', '1000000360672660', '1', '1');
INSERT INTO `order_product` VALUES ('262', '3', '1', '1000001474477605', '1', '1');
INSERT INTO `order_product` VALUES ('263', '9', '1', '1000000766825451', '1', '1');
INSERT INTO `order_product` VALUES ('264', '10', '1', '1000000951795146', '1', '1');
INSERT INTO `order_product` VALUES ('265', '1', '1', '1000001762821223', '1', '1');
INSERT INTO `order_product` VALUES ('266', '1', '1', '1000001011811424', '1', '1');
INSERT INTO `order_product` VALUES ('267', '1', '1', '1000001214501694', '1', '1');
INSERT INTO `order_product` VALUES ('268', '1', '1', '1000001421002461', '1', '1');
INSERT INTO `order_product` VALUES ('269', '2', '1', '1000001123025547', '1', '1');
INSERT INTO `order_product` VALUES ('270', '6', '1', '1000000816968932', '1', '1');
INSERT INTO `order_product` VALUES ('271', '6', '1', '1000000521807898', '1', '1');
INSERT INTO `order_product` VALUES ('272', '6', '1', '1000001713121327', '1', '1');
INSERT INTO `order_product` VALUES ('273', '2', '1', '1000000955885823', '1', '1');
INSERT INTO `order_product` VALUES ('274', '10', '3', '1000000282591935', '1', '1');
INSERT INTO `order_product` VALUES ('275', '10', '1', '1000000351677660', '1', '1');
INSERT INTO `order_product` VALUES ('279', '10', '1', '1000001275061764', '1', '1');
INSERT INTO `order_product` VALUES ('280', '1', '1', '1000001546976670', '1', '1');
INSERT INTO `order_product` VALUES ('281', '10', '1', '1000000285931885', '1', '1');
INSERT INTO `order_product` VALUES ('283', '2', '1', '1000001871690806', '1', '1');
INSERT INTO `order_product` VALUES ('283', '10', '1', '1000001871690806', '1', '1');
INSERT INTO `order_product` VALUES ('284', '16', '1', '1000002010272565', '1', '1');
INSERT INTO `order_product` VALUES ('284', '2', '1', '1000002010272565', '1', '1');
INSERT INTO `order_product` VALUES ('284', '10', '1', '1000002010272565', '1', '1');
INSERT INTO `order_product` VALUES ('285', '2', '1', '1000001306119108', '1', '1');
INSERT INTO `order_product` VALUES ('286', '2', '1', '1000000243175440', '1', '1');
INSERT INTO `order_product` VALUES ('288', '16', '1', '1000001286244008', '1', '1');
INSERT INTO `order_product` VALUES ('289', '1', '1', '1000001197115924', '1', '1');
INSERT INTO `order_product` VALUES ('290', '12', '1', '1000001831795687', '1', '1');
INSERT INTO `order_product` VALUES ('291', '12', '1', '1000001613039267', '1', '1');
INSERT INTO `order_product` VALUES ('292', '3', '1', '1000001954017506', '1', '1');
INSERT INTO `order_product` VALUES ('293', '4', '10', '1000001812134038', '1', '1');
INSERT INTO `order_product` VALUES ('295', '4', '1', '1000001591026908', '1', '1');
INSERT INTO `order_product` VALUES ('296', '16', '1', '1000001325880464', '1', '1');
INSERT INTO `order_product` VALUES ('296', '2', '1', '1000001325880464', '1', '1');
INSERT INTO `order_product` VALUES ('297', '1', '1', '1000001323735727', '1', '1');
INSERT INTO `order_product` VALUES ('298', '6', '1', '1000001786463819', '1', '1');
INSERT INTO `order_product` VALUES ('299', '2', '1', '1000000010563154', '1', '1');
INSERT INTO `order_product` VALUES ('300', '2', '1', '1000000442530027', '1', '1');
INSERT INTO `order_product` VALUES ('301', '3', '1', '1000000202174118', '1', '1');
INSERT INTO `order_product` VALUES ('303', '2', '1', '1000000947456893', '1', '1');
INSERT INTO `order_product` VALUES ('303', '3', '1', '1000000947456893', '1', '1');
INSERT INTO `order_product` VALUES ('304', '8', '1', '1000000176923826', '1', '1');
INSERT INTO `order_product` VALUES ('304', '2', '1', '1000000176923826', '1', '1');
INSERT INTO `order_product` VALUES ('304', '2', '1', '1000000176923826', '1', '1');
INSERT INTO `order_product` VALUES ('305', '1', '1', '1000002071754792', '1', '1');
INSERT INTO `order_product` VALUES ('306', '4', '1', '1000000044876846', '1', '1');
INSERT INTO `order_product` VALUES ('306', '3', '1', '1000000044876846', '1', '1');
INSERT INTO `order_product` VALUES ('306', '9', '1', '1000000044876846', '1', '1');
INSERT INTO `order_product` VALUES ('307', '2', '1', '1000000170027515', '1', '1');
INSERT INTO `order_product` VALUES ('308', '5', '1', '1000001737920936', '1', '1');
INSERT INTO `order_product` VALUES ('311', '2', '1', '1000000960862649', '1', '1');
INSERT INTO `order_product` VALUES ('312', '2', '1', '1000000256878334', '1', '1');
INSERT INTO `order_product` VALUES ('313', '2', '1', '1000000425694681', '1', '1');
INSERT INTO `order_product` VALUES ('314', '2', '1', '1000000963093451', '1', '1');
INSERT INTO `order_product` VALUES ('315', '2', '1', '1000000358717774', '1', '1');
INSERT INTO `order_product` VALUES ('318', '12', '1', '1000000138046213', '1', '1');
INSERT INTO `order_product` VALUES ('319', '2', '1', '1000001815322940', '1', '1');
INSERT INTO `order_product` VALUES ('320', '1', '1', '1000000994973792', '1', '1');
INSERT INTO `order_product` VALUES ('321', '1', '3', '1000001045480120', '1', '1');
INSERT INTO `order_product` VALUES ('322', '1', '3', '1000000801856963', '1', '1');
INSERT INTO `order_product` VALUES ('323', '1', '1', '1000000856187875', '1', '1');
INSERT INTO `order_product` VALUES ('325', '12', '1', '1000001628737732', '1', '1');
INSERT INTO `order_product` VALUES ('327', '4', '1', '1000000022654642', '1', '1');
INSERT INTO `order_product` VALUES ('327', '3', '1', '1000000022654642', '1', '1');
INSERT INTO `order_product` VALUES ('327', '9', '1', '1000000022654642', '1', '1');
INSERT INTO `order_product` VALUES ('328', '4', '1', '1000001143808877', '1', '1');
INSERT INTO `order_product` VALUES ('328', '3', '1', '1000001143808877', '1', '1');
INSERT INTO `order_product` VALUES ('328', '9', '1', '1000001143808877', '1', '1');
INSERT INTO `order_product` VALUES ('328', '8', '1', '1000001143808877', '1', '1');
INSERT INTO `order_product` VALUES ('329', '1', '1', '1000000771505770', '1', '1');
INSERT INTO `order_product` VALUES ('330', '16', '7', '1000000424714065', '1', '1');
INSERT INTO `order_product` VALUES ('330', '2', '1', '1000000424714065', '1', '1');
INSERT INTO `order_product` VALUES ('330', '3', '1', '1000000424714065', '1', '1');
INSERT INTO `order_product` VALUES ('330', '3', '10', '1000000424714065', '1', '1');
INSERT INTO `order_product` VALUES ('332', '3', '1', '1000001384078213', '1', '1');
INSERT INTO `order_product` VALUES ('333', '3', '1', '1000000438669411', '1', '1');
INSERT INTO `order_product` VALUES ('336', '7', '1', '1000000196130162', '1', '1');
INSERT INTO `order_product` VALUES ('337', '16', '1', '1000000896698592', '1', '1');
INSERT INTO `order_product` VALUES ('338', '12', '1', '1000000797562175', '1', '1');
INSERT INTO `order_product` VALUES ('341', '12', '1', '1000001391144518', '1', '1');
INSERT INTO `order_product` VALUES ('342', '12', '1', '1000000094348059', '1', '1');
INSERT INTO `order_product` VALUES ('343', '12', '1', '1000000652549609', '1', '1');
INSERT INTO `order_product` VALUES ('344', '12', '1', '1000000155656117', '1', '1');
INSERT INTO `order_product` VALUES ('345', '12', '1', '1000000601838793', '1', '1');
INSERT INTO `order_product` VALUES ('346', '12', '2', '1000000362648017', '1', '1');
INSERT INTO `order_product` VALUES ('347', '12', '5', '1000000815535199', '1', '1');
INSERT INTO `order_product` VALUES ('348', '18', '1', '1000000646530789', '1', '1');
INSERT INTO `order_product` VALUES ('349', '12', '1', '1000001438800457', '1', '1');
INSERT INTO `order_product` VALUES ('350', '12', '1', '1000002020111291', '1', '1');
INSERT INTO `order_product` VALUES ('351', '12', '6', '1000000260803851', '1', '1');
INSERT INTO `order_product` VALUES ('356', '12', '5', '1000001671473461', '1', '1');
INSERT INTO `order_product` VALUES ('359', '12', '1', '1000001548031211', '1', '1');
INSERT INTO `order_product` VALUES ('360', '12', '1', '1000001441529732', '1', '1');
INSERT INTO `order_product` VALUES ('361', '12', '12', '1000002119983229', '1', '1');
INSERT INTO `order_product` VALUES ('362', '12', '1', '1000002110570543', '1', '1');
INSERT INTO `order_product` VALUES ('363', '12', '1', '1000001089514205', '1', '1');
INSERT INTO `order_product` VALUES ('364', '12', '12', '1000002120754733', '1', '1');
INSERT INTO `order_product` VALUES ('366', '12', '1', '1000000504395761', '1', '1');
INSERT INTO `order_product` VALUES ('376', '12', '1', '1000001450199796', '1', '1');
INSERT INTO `order_product` VALUES ('377', '12', '3', '1000002064741434', '1', '1');
INSERT INTO `order_product` VALUES ('381', '12', '1', '1000000819025299', '1', '1');
INSERT INTO `order_product` VALUES ('384', '12', '1', '1000000631829821', '1', '1');
INSERT INTO `order_product` VALUES ('386', '12', '1', '1000000580263209', '1', '1');
INSERT INTO `order_product` VALUES ('388', '12', '1', '1000002082597883', '1', '1');
INSERT INTO `order_product` VALUES ('391', '12', '5', '1000000231422720', '1', '1');
INSERT INTO `order_product` VALUES ('392', '12', '5', '1000000293538508', '1', '1');
INSERT INTO `order_product` VALUES ('394', '12', '5', '1000001487550465', '1', '1');
INSERT INTO `order_product` VALUES ('395', '12', '5', '1000000571088879', '1', '1');
INSERT INTO `order_product` VALUES ('396', '12', '5', '1000000669164088', '1', '1');
INSERT INTO `order_product` VALUES ('398', '12', '1', '1000001012966607', '1', '1');
INSERT INTO `order_product` VALUES ('399', '12', '1', '1000001152413961', '1', '1');
INSERT INTO `order_product` VALUES ('408', '12', '1', '1000000296960537', '1', '1');
INSERT INTO `order_product` VALUES ('409', '12', '2', '1000001270628171', '1', '1');
INSERT INTO `order_product` VALUES ('415', '12', '1', '1000000493609219', '1', '1');
INSERT INTO `order_product` VALUES ('425', '12', '1', '1000000993789965', '1', '1');
INSERT INTO `order_product` VALUES ('426', '12', '1', '1000000089268208', '1', '1');
INSERT INTO `order_product` VALUES ('430', '12', '1', '1000000508622845', '1', '1');
INSERT INTO `order_product` VALUES ('434', '12', '1', '1000000054317554', '1', '1');
INSERT INTO `order_product` VALUES ('437', '12', '5', '1000001902168502', '1', '1');
INSERT INTO `order_product` VALUES ('439', '12', '5', '1000001048326737', '1', '1');
INSERT INTO `order_product` VALUES ('441', '12', '1', '1000000702727923', '1', '1');
INSERT INTO `order_product` VALUES ('442', '12', '1', '1000000186594913', '1', '1');
INSERT INTO `order_product` VALUES ('443', '12', '1', '1000000581654879', '1', '1');
INSERT INTO `order_product` VALUES ('444', '12', '1', '1000001430604555', '1', '1');
INSERT INTO `order_product` VALUES ('445', '12', '1', '1000001882811666', '1', '1');
INSERT INTO `order_product` VALUES ('446', '12', '1', '1000000322150901', '1', '1');
INSERT INTO `order_product` VALUES ('447', '12', '1', '1000000399146061', '1', '1');
INSERT INTO `order_product` VALUES ('450', '18', '1', '1000001770805311', '1', '1');
INSERT INTO `order_product` VALUES ('452', '18', '1', '1000001349084875', '1', '1');
INSERT INTO `order_product` VALUES ('454', '12', '1', '1000000985067059', '1', '1');
INSERT INTO `order_product` VALUES ('455', '12', '1', '1000001993977330', '1', '1');
INSERT INTO `order_product` VALUES ('456', '12', '1', '1000000117774593', '1', '1');
INSERT INTO `order_product` VALUES ('457', '12', '1', '1000000542641720', '1', '1');
INSERT INTO `order_product` VALUES ('460', '12', '1', '1000000992209428', '1', '1');
INSERT INTO `order_product` VALUES ('462', '12', '1', '1000001810975532', '1', '1');
INSERT INTO `order_product` VALUES ('463', '12', '1', '1000000495221779', '1', '1');
INSERT INTO `order_product` VALUES ('464', '12', '1', '1000001701169775', '1', '1');
INSERT INTO `order_product` VALUES ('465', '12', '1', '1000000688798843', '1', '1');
INSERT INTO `order_product` VALUES ('467', '12', '5', '1000001015133566', '1', '1');
INSERT INTO `order_product` VALUES ('468', '12', '1', '1000001926035115', '1', '1');
INSERT INTO `order_product` VALUES ('469', '12', '5', '1000000811678038', '1', '1');
INSERT INTO `order_product` VALUES ('470', '12', '1', '1000000044586262', '1', '1');
INSERT INTO `order_product` VALUES ('471', '12', '1', '1000001326234160', '1', '1');
INSERT INTO `order_product` VALUES ('473', '12', '3', '1000001401772041', '1', '1');
INSERT INTO `order_product` VALUES ('474', '12', '1', '1000001770061092', '1', '1');
INSERT INTO `order_product` VALUES ('476', '6', '60', '1000002109338587', '1', '1');
INSERT INTO `order_product` VALUES ('478', '6', '60', '1000000515779502', '1', '1');
INSERT INTO `order_product` VALUES ('489', '12', '12', '1000000270361977', '1', '1');
INSERT INTO `order_product` VALUES ('490', '12', '2', '1000001359518920', '1', '1');
INSERT INTO `order_product` VALUES ('492', '12', '12', '1000001796404488', '1', '1');
INSERT INTO `order_product` VALUES ('493', '19', '1', '1000001593070466', '1', '1');
INSERT INTO `order_product` VALUES ('494', '12', '12', '1000001346492549', '1', '1');
INSERT INTO `order_product` VALUES ('495', '12', '12', '1000001696596296', '1', '1');
INSERT INTO `order_product` VALUES ('510', '12', '2', '1000001529573459', '1', '1');
INSERT INTO `order_product` VALUES ('518', '12', '2', '1000001234207540', '1', '1');
INSERT INTO `order_product` VALUES ('530', '12', '3', '1000001235734199', '1', '1');
INSERT INTO `order_product` VALUES ('535', '12', '3', '1000000633001756', '1', '1');
INSERT INTO `order_product` VALUES ('539', '12', '2', '1000000679015399', '1', '1');
INSERT INTO `order_product` VALUES ('629', '12', '1', '1000000118981457', '1', '1');
INSERT INTO `order_product` VALUES ('654', '12', '3', '1000001281556106', '1', '1');
INSERT INTO `order_product` VALUES ('659', '12', '1', '1000001970473250', '1', '1');
INSERT INTO `order_product` VALUES ('669', '12', '3', '1000002129487691', '1', '1');
INSERT INTO `order_product` VALUES ('675', '12', '1', '1000001614647686', '1', '1');
INSERT INTO `order_product` VALUES ('676', '12', '1', '1000001410242802', '1', '1');
INSERT INTO `order_product` VALUES ('680', '12', '2', '1000002117009239', '1', '1');
INSERT INTO `order_product` VALUES ('682', '12', '1', '1000001193715055', '1', '1');
INSERT INTO `order_product` VALUES ('689', '12', '1', '1000001496196999', '1', '1');
INSERT INTO `order_product` VALUES ('690', '12', '1', '1000000797079301', '1', '1');
INSERT INTO `order_product` VALUES ('691', '12', '1', '1000000376030301', '1', '1');
INSERT INTO `order_product` VALUES ('692', '12', '1', '1000000689395994', '1', '1');
INSERT INTO `order_product` VALUES ('693', '12', '1', '1000001522934169', '1', '1');
INSERT INTO `order_product` VALUES ('694', '12', '1', '1000001821009778', '1', '1');
INSERT INTO `order_product` VALUES ('696', '12', '1', '1000000764638372', '1', '1');
INSERT INTO `order_product` VALUES ('697', '12', '1', '1000000452633625', '1', '1');
INSERT INTO `order_product` VALUES ('698', '12', '1', '1000000865603120', '1', '1');
INSERT INTO `order_product` VALUES ('699', '12', '1', '1000000457457244', '1', '1');
INSERT INTO `order_product` VALUES ('700', '12', '1', '1000001765592743', '1', '1');
INSERT INTO `order_product` VALUES ('701', '12', '1', '1000001605256831', '1', '1');
INSERT INTO `order_product` VALUES ('702', '12', '1', '1000000218719455', '1', '1');
INSERT INTO `order_product` VALUES ('703', '12', '1', '1000000743361995', '1', '1');
INSERT INTO `order_product` VALUES ('704', '12', '1', '1000001400757225', '1', '1');
INSERT INTO `order_product` VALUES ('705', '12', '1', '1000001124044591', '1', '1');
INSERT INTO `order_product` VALUES ('706', '12', '1', '1000001857505560', '1', '1');
INSERT INTO `order_product` VALUES ('707', '12', '1', '1000000009151722', '1', '1');
INSERT INTO `order_product` VALUES ('710', '12', '1', '1000001412543182', '1', '1');
INSERT INTO `order_product` VALUES ('711', '12', '1', '1000000356608676', '1', '1');
INSERT INTO `order_product` VALUES ('719', '12', '3', '1000001568352086', '1', '1');
INSERT INTO `order_product` VALUES ('721', '12', '12', '1000001561435027', '1', '1');
INSERT INTO `order_product` VALUES ('736', '12', '12', '1000001049865469', '1', '1');
INSERT INTO `order_product` VALUES ('740', '12', '1', '1000000555233556', '1', '1');
INSERT INTO `order_product` VALUES ('743', '12', '1', '1000001071800311', '1', '1');
INSERT INTO `order_product` VALUES ('745', '6', '60', '1000000914807902', '1', '1');
INSERT INTO `order_product` VALUES ('747', '12', '1', '1000001868789625', '1', '1');
INSERT INTO `order_product` VALUES ('748', '12', '1', '1000000480848139', '1', '1');
INSERT INTO `order_product` VALUES ('749', '12', '1', '1000001799259009', '1', '1');
INSERT INTO `order_product` VALUES ('750', '12', '12', '1000000973024568', '1', '1');
INSERT INTO `order_product` VALUES ('751', '12', '1', '1000001907553770', '1', '1');
INSERT INTO `order_product` VALUES ('752', '12', '12', '1000001414517017', '1', '1');
INSERT INTO `order_product` VALUES ('753', '12', '1', '1000001588481912', '1', '1');
INSERT INTO `order_product` VALUES ('754', '12', '1', '1000000002242960', '1', '1');
INSERT INTO `order_product` VALUES ('756', '12', '1', '1000001935991042', '1', '1');
INSERT INTO `order_product` VALUES ('758', '12', '1', '1000000441694015', '1', '1');
INSERT INTO `order_product` VALUES ('759', '12', '1', '1000001245121108', '1', '1');
INSERT INTO `order_product` VALUES ('760', '11', '3', '1000001620982646', '1', '1');
INSERT INTO `order_product` VALUES ('761', '12', '4', '1000001368030028', '1', '1');
INSERT INTO `order_product` VALUES ('762', '11', '3', '1000000924336199', '1', '1');
INSERT INTO `order_product` VALUES ('764', '16', '14', '1000000611658599', '1', '1');
INSERT INTO `order_product` VALUES ('765', '2', '1', '1000000291108303', '1', '1');
INSERT INTO `order_product` VALUES ('766', '12', '12', '1000001366986042', '1', '1');
INSERT INTO `order_product` VALUES ('767', '12', '12', '1000000733800125', '1', '1');
INSERT INTO `order_product` VALUES ('768', '8', '2', '1000000177900365', '1', '1');
INSERT INTO `order_product` VALUES ('776', '12', '123', '1000001916068091', '1', '1');
INSERT INTO `order_product` VALUES ('786', '16', '3', '1000001630808073', '1', '1');
INSERT INTO `order_product` VALUES ('787', '8', '1', '1000000606494655', '1', '1');
INSERT INTO `order_product` VALUES ('788', '16', '3', '1000001070766723', '1', '1');
INSERT INTO `order_product` VALUES ('790', '12', '1', '1000001780253405', '1', '1');
INSERT INTO `order_product` VALUES ('791', '12', '1', '1000001712670961', '1', '1');
INSERT INTO `order_product` VALUES ('792', '12', '1', '1000002092856733', '1', '1');
INSERT INTO `order_product` VALUES ('793', '12', '1', '1000000561891021', '1', '1');
INSERT INTO `order_product` VALUES ('794', '12', '1', '1000000189537265', '1', '1');
INSERT INTO `order_product` VALUES ('795', '12', '1', '1000001954595533', '1', '1');
INSERT INTO `order_product` VALUES ('796', '12', '1', '1000001854931717', '1', '1');
INSERT INTO `order_product` VALUES ('797', '12', '1', '1000000739115067', '1', '1');
INSERT INTO `order_product` VALUES ('798', '12', '1', '1000000130438746', '1', '1');
INSERT INTO `order_product` VALUES ('799', '12', '1', '1000001009711219', '1', '1');
INSERT INTO `order_product` VALUES ('800', '12', '1', '1000001983069766', '1', '1');
INSERT INTO `order_product` VALUES ('801', '12', '1', '1000001482164635', '1', '1');
INSERT INTO `order_product` VALUES ('802', '12', '1', '1000000248078922', '1', '1');
INSERT INTO `order_product` VALUES ('803', '12', '1', '1000000458660819', '1', '1');
INSERT INTO `order_product` VALUES ('808', '6', '2', '1000000753042011', '1', '1');
INSERT INTO `order_product` VALUES ('808', '4', '3', '1000000753042011', '1', '1');
INSERT INTO `order_product` VALUES ('808', '4', '4', '1000000753042011', '1', '1');
INSERT INTO `order_product` VALUES ('808', '5', '2', '1000000753042011', '1', '1');
INSERT INTO `order_product` VALUES ('808', '5', '3', '1000000753042011', '1', '1');
INSERT INTO `order_product` VALUES ('809', '12', '1', '1000001011011739', '1', '1');
INSERT INTO `order_product` VALUES ('810', '6', '2', '1000000645689106', '1', '1');
INSERT INTO `order_product` VALUES ('810', '4', '3', '1000000645689106', '1', '1');
INSERT INTO `order_product` VALUES ('810', '4', '4', '1000000645689106', '1', '1');
INSERT INTO `order_product` VALUES ('810', '5', '2', '1000000645689106', '1', '1');
INSERT INTO `order_product` VALUES ('810', '5', '3', '1000000645689106', '1', '1');
INSERT INTO `order_product` VALUES ('811', '16', '3', '1000000120632088', '1', '1');
INSERT INTO `order_product` VALUES ('811', '42', '1', '1000000120632088', '1', '1');
INSERT INTO `order_product` VALUES ('812', '7', '1', '1000002089837207', '1', '1');
INSERT INTO `order_product` VALUES ('813', '8', '1', '1000000568402230', '1', '1');
INSERT INTO `order_product` VALUES ('813', '7', '1', '1000000568402230', '1', '1');
INSERT INTO `order_product` VALUES ('813', '9', '1', '1000000568402230', '1', '1');
INSERT INTO `order_product` VALUES ('814', '8', '1', '1000000649457474', '1', '1');
INSERT INTO `order_product` VALUES ('814', '7', '1', '1000000649457474', '1', '1');
INSERT INTO `order_product` VALUES ('814', '9', '1', '1000000649457474', '1', '1');
INSERT INTO `order_product` VALUES ('814', '7', '1', '1000000649457474', '1', '1');
INSERT INTO `order_product` VALUES ('814', '10', '1', '1000000649457474', '1', '1');
INSERT INTO `order_product` VALUES ('814', '11', '1', '1000000649457474', '1', '1');
INSERT INTO `order_product` VALUES ('815', '4', '3', '1000001431125237', '1', '1');
INSERT INTO `order_product` VALUES ('816', '4', '3', '1000000824096503', '1', '1');
INSERT INTO `order_product` VALUES ('817', '4', '3', '1000000406173984', '1', '1');
INSERT INTO `order_product` VALUES ('818', '5', '3', '1000001355517532', '1', '1');
INSERT INTO `order_product` VALUES ('819', '4', '3', '1000000992981663', '1', '1');
INSERT INTO `order_product` VALUES ('820', '5', '3', '1000001801477403', '1', '1');
INSERT INTO `order_product` VALUES ('821', '4', '3', '1000000068085638', '1', '1');
INSERT INTO `order_product` VALUES ('821', '4', '4', '1000000068085638', '1', '1');
INSERT INTO `order_product` VALUES ('821', '5', '2', '1000000068085638', '1', '1');
INSERT INTO `order_product` VALUES ('822', '4', '3', '1000001122447719', '1', '1');
INSERT INTO `order_product` VALUES ('822', '4', '4', '1000001122447719', '1', '1');
INSERT INTO `order_product` VALUES ('822', '5', '2', '1000001122447719', '1', '1');
INSERT INTO `order_product` VALUES ('823', '2', '2', '1000000087654886', '1', '1');
INSERT INTO `order_product` VALUES ('824', '2', '2', '1000000696178810', '1', '1');
INSERT INTO `order_product` VALUES ('825', '12', '1', '1000001704036921', '1', '1');
INSERT INTO `order_product` VALUES ('827', '8', '1', '1000000352060808', '1', '1');
INSERT INTO `order_product` VALUES ('828', '33', '1', '1000000777134101', '1', '1');
INSERT INTO `order_product` VALUES ('831', '40', '1', '1000002062657604', '1', '1');
INSERT INTO `order_product` VALUES ('831', '44', '1', '1000002062657604', '1', '1');
INSERT INTO `order_product` VALUES ('831', '55', '1', '1000002062657604', '1', '1');
INSERT INTO `order_product` VALUES ('831', '76', '1', '1000002062657604', '1', '1');
INSERT INTO `order_product` VALUES ('832', '40', '1', '1000001197168809', '1', '1');
INSERT INTO `order_product` VALUES ('832', '44', '1', '1000001197168809', '1', '1');
INSERT INTO `order_product` VALUES ('832', '55', '1', '1000001197168809', '1', '1');
INSERT INTO `order_product` VALUES ('832', '76', '1', '1000001197168809', '1', '1');
INSERT INTO `order_product` VALUES ('832', '84', '1', '1000001197168809', '1', '1');
INSERT INTO `order_product` VALUES ('833', '2', '1', '1000001181931126', '1', '1');
INSERT INTO `order_product` VALUES ('835', '3', '1', '1000001953870663', '1', '1');
INSERT INTO `order_product` VALUES ('836', '40', '1', '1000000171691025', '1', '1');
INSERT INTO `order_product` VALUES ('837', '40', '1', '1000000715901905', '1', '1');
INSERT INTO `order_product` VALUES ('838', '55', '1', '1000000229819840', '1', '1');
INSERT INTO `order_product` VALUES ('839', '84', '4', '1000000638203857', '1', '1');
INSERT INTO `order_product` VALUES ('840', '84', '1', '1000001107388567', '1', '1');
INSERT INTO `order_product` VALUES ('841', '7', '6', '1000001094666808', '1', '1');
INSERT INTO `order_product` VALUES ('843', '2', '4', '1000001856808334', '1', '1');
INSERT INTO `order_product` VALUES ('844', '8', '5', '1000001922739740', '1', '1');
INSERT INTO `order_product` VALUES ('847', '2', '1', '1000002052664203', '1', '1');
INSERT INTO `order_product` VALUES ('849', '12', '1', '1000000155390979', '1', '1');
INSERT INTO `order_product` VALUES ('850', '7', '6', '1000001790696142', '1', '1');
INSERT INTO `order_product` VALUES ('851', '7', '6', '1000000040713421', '1', '1');
INSERT INTO `order_product` VALUES ('853', '84', '1', '1000000297359060', '1', '1');
INSERT INTO `order_product` VALUES ('853', '7', '6', '1000000297359060', '1', '1');
INSERT INTO `order_product` VALUES ('855', '7', '6', '1000001291959845', '1', '1');
INSERT INTO `order_product` VALUES ('877', '8', '1', '1000001520095212', '1', '1');
INSERT INTO `order_product` VALUES ('877', '7', '1', '1000001520095212', '1', '1');
INSERT INTO `order_product` VALUES ('878', '12', '1', '1000000595058212', '1', '1');
INSERT INTO `order_product` VALUES ('879', '12', '1', '1000000935444091', '1', '1');
INSERT INTO `order_product` VALUES ('880', '12', '1', '1000000471208475', '1', '1');
INSERT INTO `order_product` VALUES ('881', '12', '2', '1000000593953232', '1', '1');
INSERT INTO `order_product` VALUES ('882', '12', '1', '1000001492309418', '1', '1');
INSERT INTO `order_product` VALUES ('883', '12', '1', '1000000038408702', '1', '1');
INSERT INTO `order_product` VALUES ('884', '12', '1', '1000001675553306', '1', '1');
INSERT INTO `order_product` VALUES ('885', '12', '1', '1000000864441242', '1', '1');
INSERT INTO `order_product` VALUES ('886', '12', '1', '1000001830715810', '1', '1');
INSERT INTO `order_product` VALUES ('887', '11', '8', '1000000514653882', '1', '1');
INSERT INTO `order_product` VALUES ('888', '12', '1', '1000000132679393', '1', '1');
INSERT INTO `order_product` VALUES ('889', '12', '1', '1000001496366835', '1', '1');
INSERT INTO `order_product` VALUES ('890', '12', '1', '1000001350000353', '1', '1');
INSERT INTO `order_product` VALUES ('892', '12', '1', '1000000467006887', '1', '1');
INSERT INTO `order_product` VALUES ('893', '12', '10', '1000002019699033', '1', '1');
INSERT INTO `order_product` VALUES ('895', '12', '1', '1000000340546617', '1', '1');
INSERT INTO `order_product` VALUES ('896', '12', '1', '1000001941010869', '1', '1');
INSERT INTO `order_product` VALUES ('897', '12', '1', '1000000956027265', '1', '1');
INSERT INTO `order_product` VALUES ('900', '12', '1', '1000000888741248', '1', '1');
INSERT INTO `order_product` VALUES ('901', '12', '1', '1000001401265715', '1', '1');
INSERT INTO `order_product` VALUES ('902', '12', '1', '1000000125723415', '1', '1');
INSERT INTO `order_product` VALUES ('903', '12', '1', '1000002083626454', '1', '1');
INSERT INTO `order_product` VALUES ('904', '12', '1', '1000001399757456', '1', '1');
INSERT INTO `order_product` VALUES ('907', '12', '1', '1000000211855601', '1', '1');
INSERT INTO `order_product` VALUES ('914', '12', '1', '1000000027727195', '1', '1');
INSERT INTO `order_product` VALUES ('916', '12', '1', '1000002022917845', '1', '1');
INSERT INTO `order_product` VALUES ('917', '12', '1', '1000000457624969', '1', '1');
INSERT INTO `order_product` VALUES ('918', '12', '1', '1000000030081389', '1', '1');
INSERT INTO `order_product` VALUES ('923', '12', '1', '1000000838021002', '1', '1');
INSERT INTO `order_product` VALUES ('927', '12', '10', '1000000520337355', '1', '1');
INSERT INTO `order_product` VALUES ('928', '12', '1', '1000000954383023', '1', '1');
INSERT INTO `order_product` VALUES ('929', '12', '10', '1000002103382090', '1', '1');
INSERT INTO `order_product` VALUES ('932', '12', '1', '1000001136648043', '1', '1');
INSERT INTO `order_product` VALUES ('933', '12', '1', '1000000296660305', '1', '1');
INSERT INTO `order_product` VALUES ('935', '12', '1', '1000000610578842', '1', '1');
INSERT INTO `order_product` VALUES ('936', '12', '10', '1000001606891148', '1', '1');
INSERT INTO `order_product` VALUES ('939', '11', '10', '1000000712035492', '1', '1');
INSERT INTO `order_product` VALUES ('940', '12', '1', '1000001554835071', '1', '1');
INSERT INTO `order_product` VALUES ('941', '11', '10', '1000000452226456', '1', '1');
INSERT INTO `order_product` VALUES ('946', '11', '10', '1000001775444708', '1', '1');
INSERT INTO `order_product` VALUES ('950', '11', '10', '1000001027698294', '1', '1');
INSERT INTO `order_product` VALUES ('952', '12', '1', '1000001923502618', '1', '1');
INSERT INTO `order_product` VALUES ('956', '11', '10', '1000000099412966', '1', '1');
INSERT INTO `order_product` VALUES ('962', '12', '10', '1000001959230798', '1', '1');
INSERT INTO `order_product` VALUES ('963', '12', '10', '1000001593000117', '1', '1');
INSERT INTO `order_product` VALUES ('964', '12', '10', '1000002141600828', '1', '1');
INSERT INTO `order_product` VALUES ('965', '12', '10', '1000000285442136', '1', '1');
INSERT INTO `order_product` VALUES ('966', '12', '1', '1000000719867615', '1', '1');
INSERT INTO `order_product` VALUES ('967', '12', '1', '1000000253315176', '1', '1');
INSERT INTO `order_product` VALUES ('968', '12', '1', '1000002122859169', '1', '1');
INSERT INTO `order_product` VALUES ('969', '12', '1', '1000001614660550', '1', '1');
INSERT INTO `order_product` VALUES ('970', '12', '1', '1000001580514823', '1', '1');
INSERT INTO `order_product` VALUES ('971', '12', '1', '1000001058987918', '1', '1');
INSERT INTO `order_product` VALUES ('972', '12', '1', '1000000557811229', '1', '1');
INSERT INTO `order_product` VALUES ('973', '12', '1', '1000001554555253', '1', '1');
INSERT INTO `order_product` VALUES ('974', '12', '1', '1000000503620537', '1', '1');
INSERT INTO `order_product` VALUES ('975', '12', '1', '1000000130831793', '1', '1');
INSERT INTO `order_product` VALUES ('976', '12', '1', '1000000182945771', '1', '1');
INSERT INTO `order_product` VALUES ('977', '12', '1', '1000000674379847', '1', '1');
INSERT INTO `order_product` VALUES ('979', '8', '1', '1000000601527216', '1', '1');
INSERT INTO `order_product` VALUES ('979', '7', '1', '1000000601527216', '1', '1');
INSERT INTO `order_product` VALUES ('979', '9', '1', '1000000601527216', '1', '1');
INSERT INTO `order_product` VALUES ('979', '7', '1', '1000000601527216', '1', '1');
INSERT INTO `order_product` VALUES ('979', '10', '1', '1000000601527216', '1', '1');
INSERT INTO `order_product` VALUES ('979', '11', '1', '1000000601527216', '1', '1');
INSERT INTO `order_product` VALUES ('979', '7', '1', '1000000601527216', '1', '1');
INSERT INTO `order_product` VALUES ('980', '10', '1', '1000000001819280', '1', '1');
INSERT INTO `order_product` VALUES ('981', '10', '1', '1000000272818877', '1', '1');
INSERT INTO `order_product` VALUES ('982', '7', '1', '1000000778641538', '1', '1');
INSERT INTO `order_product` VALUES ('983', '7', '1', '1000000375368340', '1', '1');
INSERT INTO `product` VALUES ('1', '优卡丹复方小儿退热栓', '16.00', '5.00', '100', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402692.html', '0', '1', '1', '-18');
INSERT INTO `product` VALUES ('2', '智利奇异果猕猴桃', '39.05', '5.00', '100', '1', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402693.html', '1', '1', '1', '59');
INSERT INTO `product` VALUES ('3', '智利奇异果猕猴桃', '39.05', '2.00', '99', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402694.html', '2', '1', '1', '69');
INSERT INTO `product` VALUES ('4', '优卡丹复方小儿退热栓', '16.00', '4.00', '100', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402695.html', '3', '2', '1', '925');
INSERT INTO `product` VALUES ('5', '优卡丹复方小儿退热栓', '16.00', '3.00', '20', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402696.html', '4', '2', '1', '9975');
INSERT INTO `product` VALUES ('6', '智利奇异果猕猴桃', '10.00', '5.00', '30', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402697.html', '5', '2', '1', '9692');
INSERT INTO `product` VALUES ('7', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '6', '3', '1', '9947');
INSERT INTO `product` VALUES ('8', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '3', '3', '1', '9971');
INSERT INTO `product` VALUES ('9', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '2', '2', '1', '9991');
INSERT INTO `product` VALUES ('10', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '1', '4', '1', '9980');
INSERT INTO `product` VALUES ('11', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '2', '4', '1', '9901');
INSERT INTO `product` VALUES ('12', '优卡丹复方小儿退热栓', '16.00', '5.00', '100', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402692.html', '0', '1', '1', '999999118');
INSERT INTO `product` VALUES ('13', '智利奇异果猕猴桃', '39.05', '5.00', '100', '1', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402693.html', '1', '1', '1', '1000000000');
INSERT INTO `product` VALUES ('14', '智利奇异果猕猴桃', '39.05', '2.00', '99', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402694.html', '2', '1', '1', '8');
INSERT INTO `product` VALUES ('15', '优卡丹复方小儿退热栓', '16.00', '4.00', '100', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402695.html', '3', '2', '1', '2');
INSERT INTO `product` VALUES ('16', '优卡丹复方小儿退热栓', '16.00', '3.00', '20', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402696.html', '4', '2', '1', '9920');
INSERT INTO `product` VALUES ('17', '智利奇异果猕猴桃', '10.00', '5.00', '30', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402697.html', '5', '2', '1', '0');
INSERT INTO `product` VALUES ('18', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '6', '3', '1', '0');
INSERT INTO `product` VALUES ('19', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '3', '3', '1', '0');
INSERT INTO `product` VALUES ('20', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '2', '2', '1', '0');
INSERT INTO `product` VALUES ('21', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '1', '4', '1', '10');
INSERT INTO `product` VALUES ('22', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '2', '4', '1', '7');
INSERT INTO `product` VALUES ('23', '优卡丹复方小儿退热栓', '16.00', '5.00', '100', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402692.html', '0', '1', '1', '1');
INSERT INTO `product` VALUES ('24', '智利奇异果猕猴桃', '39.05', '5.00', '100', '1', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402693.html', '1', '1', '1', '9');
INSERT INTO `product` VALUES ('25', '智利奇异果猕猴桃', '39.05', '2.00', '99', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402694.html', '2', '1', '1', '9');
INSERT INTO `product` VALUES ('26', '优卡丹复方小儿退热栓', '16.00', '4.00', '100', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402695.html', '3', '2', '1', '7');
INSERT INTO `product` VALUES ('27', '优卡丹复方小儿退热栓', '16.00', '3.00', '20', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402696.html', '4', '2', '1', '2');
INSERT INTO `product` VALUES ('28', '智利奇异果猕猴桃', '10.00', '5.00', '30', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402697.html', '5', '2', '1', '8');
INSERT INTO `product` VALUES ('29', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '6', '3', '1', '10');
INSERT INTO `product` VALUES ('30', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '3', '3', '1', '0');
INSERT INTO `product` VALUES ('31', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '2', '2', '1', '1');
INSERT INTO `product` VALUES ('32', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '1', '4', '1', '10');
INSERT INTO `product` VALUES ('33', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '2', '4', '1', '8');
INSERT INTO `product` VALUES ('34', '优卡丹复方小儿退热栓', '16.00', '5.00', '100', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402692.html', '0', '1', '1', '10');
INSERT INTO `product` VALUES ('35', '智利奇异果猕猴桃', '39.05', '5.00', '100', '1', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402693.html', '1', '1', '1', '10');
INSERT INTO `product` VALUES ('36', '智利奇异果猕猴桃', '39.05', '2.00', '99', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402694.html', '2', '1', '1', '10');
INSERT INTO `product` VALUES ('37', '优卡丹复方小儿退热栓', '16.00', '4.00', '100', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402695.html', '3', '2', '1', '10');
INSERT INTO `product` VALUES ('38', '优卡丹复方小儿退热栓', '16.00', '3.00', '20', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402696.html', '4', '2', '1', '10');
INSERT INTO `product` VALUES ('39', '智利奇异果猕猴桃', '10.00', '5.00', '30', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402697.html', '5', '2', '1', '10');
INSERT INTO `product` VALUES ('40', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '11', '10', '1', '0');
INSERT INTO `product` VALUES ('41', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '11', '11', '1', '10');
INSERT INTO `product` VALUES ('42', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '11', '11', '1', '8');
INSERT INTO `product` VALUES ('43', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '12', '11', '1', '10');
INSERT INTO `product` VALUES ('44', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '12', '11', '1', '1');
INSERT INTO `product` VALUES ('45', '优卡丹复方小儿退热栓', '16.00', '5.00', '100', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402692.html', '12', '12', '1', '10');
INSERT INTO `product` VALUES ('46', '智利奇异果猕猴桃', '39.05', '5.00', '100', '1', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402693.html', '12', '12', '1', '10');
INSERT INTO `product` VALUES ('47', '智利奇异果猕猴桃', '39.05', '2.00', '99', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402694.html', '12', '12', '1', '10');
INSERT INTO `product` VALUES ('48', '优卡丹复方小儿退热栓', '16.00', '4.00', '100', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402695.html', '12', '12', '1', '10');
INSERT INTO `product` VALUES ('49', '优卡丹复方小儿退热栓', '16.00', '3.00', '20', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402696.html', '0', '13', '1', '10');
INSERT INTO `product` VALUES ('50', '智利奇异果猕猴桃', '10.00', '5.00', '30', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402697.html', '0', '13', '1', '7');
INSERT INTO `product` VALUES ('51', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '6', '13', '1', '10');
INSERT INTO `product` VALUES ('52', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '3', '14', '1', '10');
INSERT INTO `product` VALUES ('53', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '2', '14', '1', '10');
INSERT INTO `product` VALUES ('54', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '1', '14', '1', '10');
INSERT INTO `product` VALUES ('55', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '2', '14', '1', '7');
INSERT INTO `product` VALUES ('72', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '11', '18', '1', '10');
INSERT INTO `product` VALUES ('73', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '11', '18', '1', '10');
INSERT INTO `product` VALUES ('74', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '11', '19', '1', '10');
INSERT INTO `product` VALUES ('75', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '12', '19', '1', '10');
INSERT INTO `product` VALUES ('76', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '12', '19', '1', '8');
INSERT INTO `product` VALUES ('77', '优卡丹复方小儿退热栓', '16.00', '5.00', '100', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402692.html', '12', '19', '1', '10');
INSERT INTO `product` VALUES ('78', '智利奇异果猕猴桃', '39.05', '5.00', '100', '1', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402693.html', '12', '19', '1', '9');
INSERT INTO `product` VALUES ('79', '智利奇异果猕猴桃', '39.05', '2.00', '99', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402694.html', '12', '1', '1', '10');
INSERT INTO `product` VALUES ('80', '优卡丹复方小儿退热栓', '16.00', '4.00', '100', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402695.html', '12', '1', '1', '10');
INSERT INTO `product` VALUES ('81', '优卡丹复方小儿退热栓', '16.00', '3.00', '20', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402696.html', '0', '1', '1', '10');
INSERT INTO `product` VALUES ('82', '智利奇异果猕猴桃', '10.00', '5.00', '30', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402697.html', '0', '1', '1', '10');
INSERT INTO `product` VALUES ('83', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '6', '1', '1', '10');
INSERT INTO `product` VALUES ('84', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '3', '1', '1', '2');
INSERT INTO `product` VALUES ('85', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '2', '1', '1', '10');
INSERT INTO `product` VALUES ('86', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '1', '1', '1', '10');
INSERT INTO `product` VALUES ('87', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '2', '1', '1', '10');
INSERT INTO `product` VALUES ('88', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '3', '3', '1', '10');
INSERT INTO `product` VALUES ('89', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '2', '2', '1', '10');
INSERT INTO `product` VALUES ('90', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '1', '4', '1', '10');
INSERT INTO `product` VALUES ('91', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '2', '4', '1', '10');
INSERT INTO `product` VALUES ('92', '优卡丹复方小儿退热栓', '16.00', '5.00', '100', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402692.html', '0', '1', '1', '10');
INSERT INTO `product` VALUES ('93', '智利奇异果猕猴桃', '39.05', '5.00', '100', '1', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402693.html', '1', '1', '1', '10');
INSERT INTO `product` VALUES ('94', '智利奇异果猕猴桃', '39.05', '2.00', '99', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402694.html', '2', '1', '1', '10');
INSERT INTO `product` VALUES ('95', '优卡丹复方小儿退热栓', '16.00', '4.00', '100', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402695.html', '3', '2', '1', '10');
INSERT INTO `product` VALUES ('96', '优卡丹复方小儿退热栓', '16.00', '3.00', '20', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402696.html', '4', '2', '1', '10');
INSERT INTO `product` VALUES ('97', '智利奇异果猕猴桃', '10.00', '5.00', '30', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402697.html', '5', '2', '1', '10');
INSERT INTO `product` VALUES ('98', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '6', '3', '1', '10');
INSERT INTO `product` VALUES ('99', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '3', '3', '1', '10');
INSERT INTO `product` VALUES ('100', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '2', '2', '1', '10');
INSERT INTO `product` VALUES ('101', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '1', '4', '1', '9');
INSERT INTO `product` VALUES ('102', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '2', '4', '1', '10');
INSERT INTO `product` VALUES ('103', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '11', '10', '1', '10');
INSERT INTO `product` VALUES ('104', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '11', '11', '1', '10');
INSERT INTO `product` VALUES ('105', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '11', '11', '1', '10');
INSERT INTO `product` VALUES ('106', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '12', '11', '1', '10');
INSERT INTO `product` VALUES ('107', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '12', '11', '1', '10');
INSERT INTO `product` VALUES ('108', '优卡丹复方小儿退热栓', '16.00', '5.00', '100', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402692.html', '12', '12', '1', '10');
INSERT INTO `product` VALUES ('109', '智利奇异果猕猴桃', '39.05', '5.00', '100', '1', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402693.html', '12', '12', '1', '10');
INSERT INTO `product` VALUES ('110', '智利奇异果猕猴桃', '39.05', '2.00', '99', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402694.html', '12', '12', '1', '10');
INSERT INTO `product` VALUES ('111', '优卡丹复方小儿退热栓', '16.00', '4.00', '100', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402695.html', '12', '12', '1', '8');
INSERT INTO `product` VALUES ('112', '优卡丹复方小儿退热栓', '16.00', '3.00', '20', '0', 'http://114.215.46.63/Test/images/ddd.jpg', 'https://in.m.jd.com/product/jieshao/2402696.html', '0', '13', '1', '10');
INSERT INTO `product` VALUES ('113', '智利奇异果猕猴桃', '10.00', '5.00', '30', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402697.html', '0', '13', '1', '10');
INSERT INTO `product` VALUES ('114', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '6', '13', '1', '10');
INSERT INTO `product` VALUES ('115', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/bbb.jpg', 'https://in.m.jd.com/product/jieshao/2402699.html', '3', '14', '1', '10');
INSERT INTO `product` VALUES ('116', '智利奇异果猕猴桃', '10.00', '4.00', '40', '0', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402609.html', '2', '14', '1', '10');
INSERT INTO `product` VALUES ('117', '智利奇异果猕猴桃', '10.00', '3.00', '60', '1', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402619.html', '1', '14', '1', '10');
INSERT INTO `product` VALUES ('118', '智利奇异果猕猴桃', '20.00', '4.00', '80', '1', 'http://114.215.46.63/Test/images/aaa.jpg', 'https://in.m.jd.com/product/jieshao/2402629.html', '2', '14', '1', '10');
INSERT INTO `product` VALUES ('119', '优卡丹复方小儿退热栓', '20.00', '4.00', '20', '0', 'http://114.215.46.63/Test/images/ccc.jpg', 'https://in.m.jd.com/product/jieshao/2402698.html', '6', '3', '1', '9');
INSERT INTO `returnorder` VALUES ('1', '1000001332572439', '1', '1', '10.10', 'fdsflkdslkfds', 'fdslkfjdslfsd', '2017-09-20 17:21:23', null, null, '1', null, null);
INSERT INTO `returnorder` VALUES ('2', '1000001332572431', null, null, null, null, null, '2017-09-20 17:21:24', null, null, '1', null, null);
INSERT INTO `returnorder` VALUES ('3', '1000000225147240', '10', '2', '10.10', 'dsdd', 'fdsfsa', '2017-09-20 17:21:24', null, null, '1', null, null);
INSERT INTO `returnorder` VALUES ('4', '1000000225147240', '9', '2', '100.00', null, null, '2017-09-25 15:47:33', null, null, '1', null, null);
INSERT INTO `returnorder` VALUES ('5', '1000001160683675', '1', '2', '16.00', 'fdsfsasf', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/bbb.jpg', '2017-09-25 15:47:34', null, '0908140316-3264', '1', '2', '2');
INSERT INTO `returnorder` VALUES ('6', '1000001160683675', '3', '2', '39.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-25 15:47:36', null, '0908142533-1605', '1', '2', '3');
INSERT INTO `returnorder` VALUES ('7', '1000001696320681', '1', '1', '16.00', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/ccc.jpg', '2017-09-20 17:21:27', null, '090817154855633', '1', '2', '3');
INSERT INTO `returnorder` VALUES ('10', '1000001696320681', '2', '1', '16.00', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:27', null, '090819013916296', '1', '2', '2');
INSERT INTO `returnorder` VALUES ('11', '1000001229754718', '1', '1', '16.00', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:28', null, '090821032420292', '1', '2', '2');
INSERT INTO `returnorder` VALUES ('12', '1000001229754718', '2', '1', '16.00', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:29', null, '090821101021292', '1', '2', '3');
INSERT INTO `returnorder` VALUES ('13', '1000001229754718', '2', '1', '23.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:31', null, '0908211203-2131', '1', '2', '2');
INSERT INTO `returnorder` VALUES ('14', '1000001229754718', '2', '1', '23.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:32', null, '0908211334-1684', '1', '1', '1');
INSERT INTO `returnorder` VALUES ('15', '1000001229754718', '2', '1', '23.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:32', null, '0908211420-6747', '1', '1', '1');
INSERT INTO `returnorder` VALUES ('16', '1000001229754718', '2', '1', '23.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:33', null, '090821142210930', '1', '1', '1');
INSERT INTO `returnorder` VALUES ('17', '1000000791115020', '2', '1', '39.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:34', null, '0908215057-1170', '1', '2', '2');
INSERT INTO `returnorder` VALUES ('18', '1000000791115020', '3', '1', '39.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:35', null, '090821532935979', '1', '2', '2');
INSERT INTO `returnorder` VALUES ('19', '1000001064435193', '3', '1', '39.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:35', null, '090821594311105', '1', '2', '2');
INSERT INTO `returnorder` VALUES ('20', '1000001064435193', '2', '1', '39.06', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:36', null, '0908220210-1804', '1', '1', '1');
INSERT INTO `returnorder` VALUES ('21', '1000001064435193', '2', '1', '39.05', 'fdsfds', 'http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg,http://114.215.46.63/Test/images/aaa.jpg', '2017-09-20 17:21:38', null, '0908220220-1369', '1', '2', '3');
INSERT INTO `returnreason` VALUES ('1', '7天无理由退货');
INSERT INTO `returnreason` VALUES ('2', '对商品不满意');
INSERT INTO `second_level` VALUES ('1', '唇彩', 'http://114.215.46.63/Test/images/chuncai.png', '0');
INSERT INTO `second_level` VALUES ('2', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '1');
INSERT INTO `second_level` VALUES ('3', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '1');
INSERT INTO `second_level` VALUES ('4', '电脑', 'http://114.215.46.63/Test/images/diannao.png', '1');
INSERT INTO `second_level` VALUES ('5', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '2');
INSERT INTO `second_level` VALUES ('6', '手机', 'http://114.215.46.63/Test/images/shouji.png', '2');
INSERT INTO `second_level` VALUES ('7', '手机', 'http://114.215.46.63/Test/images/shouji.png', '2');
INSERT INTO `second_level` VALUES ('8', '手机', 'http://114.215.46.63/Test/images/shouji.png', '2');
INSERT INTO `second_level` VALUES ('9', '手机', 'http://114.215.46.63/Test/images/shouji.png', '2');
INSERT INTO `second_level` VALUES ('10', '手机', 'http://114.215.46.63/Test/images/shouji.png', '3');
INSERT INTO `second_level` VALUES ('11', '手机', 'http://114.215.46.63/Test/images/shouji.png', '3');
INSERT INTO `second_level` VALUES ('12', '手机', 'http://114.215.46.63/Test/images/shouji.png', '3');
INSERT INTO `second_level` VALUES ('13', '手机', 'http://114.215.46.63/Test/images/shouji.png', '3');
INSERT INTO `second_level` VALUES ('14', '手机', 'http://114.215.46.63/Test/images/shouji.png', '3');
INSERT INTO `second_level` VALUES ('15', '手机', 'http://114.215.46.63/Test/images/shouji.png', '3');
INSERT INTO `second_level` VALUES ('16', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '4');
INSERT INTO `second_level` VALUES ('17', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '4');
INSERT INTO `second_level` VALUES ('18', '洗发水', 'http://114.215.46.63/Test/images/xifashui.png', '4');
INSERT INTO `second_level` VALUES ('19', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '4');
INSERT INTO `second_level` VALUES ('20', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '5');
INSERT INTO `second_level` VALUES ('21', '手机', 'http://114.215.46.63/Test/images/shouji.png', '5');
INSERT INTO `second_level` VALUES ('22', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '5');
INSERT INTO `second_level` VALUES ('23', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '5');
INSERT INTO `second_level` VALUES ('24', '洗发水', 'http://114.215.46.63/Test/images/xifashui.png', '5');
INSERT INTO `second_level` VALUES ('25', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '6');
INSERT INTO `second_level` VALUES ('26', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '6');
INSERT INTO `second_level` VALUES ('27', '手机', 'http://114.215.46.63/Test/images/shouji.png', '6');
INSERT INTO `second_level` VALUES ('28', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '6');
INSERT INTO `second_level` VALUES ('29', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '7');
INSERT INTO `second_level` VALUES ('30', '洗发水', 'http://114.215.46.63/Test/images/xifashui.png', '7');
INSERT INTO `second_level` VALUES ('31', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '7');
INSERT INTO `second_level` VALUES ('32', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '7');
INSERT INTO `second_level` VALUES ('33', '手机', 'http://114.215.46.63/Test/images/shouji.png', '7');
INSERT INTO `second_level` VALUES ('34', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '8');
INSERT INTO `second_level` VALUES ('35', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '8');
INSERT INTO `second_level` VALUES ('36', '洗发水', 'http://114.215.46.63/Test/images/xifashui.png', '8');
INSERT INTO `second_level` VALUES ('37', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '8');
INSERT INTO `second_level` VALUES ('38', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '8');
INSERT INTO `second_level` VALUES ('39', '手机', 'http://114.215.46.63/Test/images/shouji.png', '9');
INSERT INTO `second_level` VALUES ('40', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '9');
INSERT INTO `second_level` VALUES ('41', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '9');
INSERT INTO `second_level` VALUES ('42', '洗发水', 'http://114.215.46.63/Test/images/xifashui.png', '9');
INSERT INTO `second_level` VALUES ('43', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '9');
INSERT INTO `second_level` VALUES ('44', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '9');
INSERT INTO `second_level` VALUES ('45', '手机', 'http://114.215.46.63/Test/images/shouji.png', '10');
INSERT INTO `second_level` VALUES ('46', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '10');
INSERT INTO `second_level` VALUES ('47', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '10');
INSERT INTO `second_level` VALUES ('48', '洗发水', 'http://114.215.46.63/Test/images/xifashui.png', '10');
INSERT INTO `second_level` VALUES ('49', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '10');
INSERT INTO `second_level` VALUES ('50', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '11');
INSERT INTO `second_level` VALUES ('51', '手机', 'http://114.215.46.63/Test/images/shouji.png', '11');
INSERT INTO `second_level` VALUES ('52', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '11');
INSERT INTO `second_level` VALUES ('53', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '11');
INSERT INTO `second_level` VALUES ('54', '洗发水', 'http://114.215.46.63/Test/images/xifashui.png', '12');
INSERT INTO `second_level` VALUES ('55', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '12');
INSERT INTO `second_level` VALUES ('56', '手机', 'http://114.215.46.63/Test/images/shouji.png', '12');
INSERT INTO `second_level` VALUES ('57', '药物', 'http://114.215.46.63/Test/images/yaowu.png', '0');
INSERT INTO `second_level` VALUES ('58', '冰箱', 'http://114.215.46.63/Test/images/bingxiang.png', '0');
INSERT INTO `second_level` VALUES ('59', '洗发水', 'http://114.215.46.63/Test/images/xifashui.png', '0');
INSERT INTO `second_level` VALUES ('60', '电视', 'http://114.215.46.63/Test/images/dianshi.png', '0');
INSERT INTO `shoporder` VALUES ('4', '2', '2', '60.00', 'wanglining', '1000001332572439', '3', '2017-09-25 15:46:20', null, null, '100.00');
INSERT INTO `shoporder` VALUES ('27', '1', '2', '20.95', 'fdsfd', '1000001160683675', '2', '2017-12-10 13:59:55', '20.95', '2.00', '-37.05');
INSERT INTO `shoporder` VALUES ('28', '1', '2', '-99.95', '233', '1000001696320681', '2', '2017-12-10 17:12:55', '7.05', '5.00', '12.05');
INSERT INTO `shoporder` VALUES ('30', '1', '2', '5.00', '233', '1000001229754718', '2', '2017-12-10 21:01:55', '0.00', '5.00', '5.00');
INSERT INTO `shoporder` VALUES ('32', '1', '2', '60.05', '233', '1000001266238470', '3', '2017-09-25 15:46:23', '55.05', '5.00', '60.05');
INSERT INTO `shoporder` VALUES ('33', '1', '2', '60.05', '233', '1000001441442465', '1', '2017-09-25 15:46:24', '55.05', '5.00', '60.05');
INSERT INTO `shoporder` VALUES ('37', '1', '2', '5.00', '233', '1000000791115020', '2', '2017-12-10 21:49:55', '0.00', '5.00', '5.00');
INSERT INTO `shoporder` VALUES ('38', '1', '2', '5.00', '233', '1000001064435193', '2', '2017-12-10 21:58:55', '0.00', '5.00', '5.00');
INSERT INTO `shoporder` VALUES ('44', '93', '74', '21.00', '山东省饭店', '1000001105053335', '1', '2017-09-28 17:47:08', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('45', '93', '74', '21.00', '山东省饭店', '1000000769498126', '1', '2017-09-28 17:51:35', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('52', '93', '74', '41.05', '', '1000001878672343', '1', '2017-09-28 20:02:22', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('53', '93', '74', '41.05', '', '1000001080169005', '1', '2017-09-28 20:18:55', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('54', '93', '74', '41.05', '', '1000001161082838', '1', '2017-09-28 20:26:12', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('55', '93', '74', '41.05', '', '1000000668815524', '1', '2017-09-28 20:41:44', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('57', '93', '74', '41.05', '', '1000000968068226', '1', '2017-09-28 20:48:53', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('58', '93', '74', '41.05', '', '1000000468088515', '1', '2017-09-28 20:50:36', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('59', '93', '74', '41.05', '', '1000000539724612', '1', '2017-09-28 20:51:05', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('60', '93', '74', '41.05', '', '1000000668593867', '1', '2017-09-29 09:14:19', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('61', '93', '74', '41.05', '', '1000000544838654', '1', '2017-09-29 09:16:09', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('62', '93', '74', '20.00', '', '1000001207798210', '1', '2017-09-29 09:33:12', '16.00', '4.00', '20.00');
INSERT INTO `shoporder` VALUES ('63', '93', '74', '20.00', '', '1000000746961326', '1', '2017-09-29 09:59:18', '16.00', '4.00', '20.00');
INSERT INTO `shoporder` VALUES ('64', '93', '74', '20.00', '', '1000002090458615', '1', '2017-09-29 10:04:08', '16.00', '4.00', '20.00');
INSERT INTO `shoporder` VALUES ('65', '93', '74', '20.00', '', '1000000739994495', '2', '2017-09-29 10:23:01', '16.00', '4.00', '20.00');
INSERT INTO `shoporder` VALUES ('66', '93', '74', '20.00', '', '1000001875949968', '2', '2017-09-29 13:15:19', '16.00', '4.00', '20.00');
INSERT INTO `shoporder` VALUES ('68', '1', '1', '21.00', 'aaa', '1000000411957814', '1', '2017-10-02 18:57:08', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('69', '1', '1', '21.00', 'aaa', '1000001241027157', '1', '2017-10-03 13:56:14', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('70', '1', '1', '37.00', 'fdsafdsafsda', '1000001204717851', '2', '2017-10-12 15:35:07', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('71', '1', '123', '25.00', 'wang', '1000001877496073', '1', '2017-10-12 15:42:25', '20.00', '5.00', '25.00');
INSERT INTO `shoporder` VALUES ('72', '1', '1', '84.00', '1233', '1000001119630449', '2', '2017-10-12 17:23:14', '80.00', '4.00', '84.00');
INSERT INTO `shoporder` VALUES ('73', '2', '1', '33.00', '12', '1000001519692869', '2', '2017-10-12 16:30:51', '30.00', '3.00', '33.00');
INSERT INTO `shoporder` VALUES ('74', '1', '1', '35.00', '1111111', '1000001599596245', '2', '2017-10-12 17:13:04', '32.00', '3.00', '35.00');
INSERT INTO `shoporder` VALUES ('75', '1', '1', '13.00', '1', '1000001218980222', '2', '2017-10-12 16:58:09', '10.00', '3.00', '13.00');
INSERT INTO `shoporder` VALUES ('76', '1', '1', '24.00', '34134235', '1000001491054961', '2', '2017-10-12 16:20:13', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('77', '2', '123', '20.00', '666', '1000001820461865', '2', '2017-10-12 16:04:31', '16.00', '4.00', '20.00');
INSERT INTO `shoporder` VALUES ('78', '2', '7', '14.00', 'hello', '1000001150747930', '2', '2017-10-12 16:20:26', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('79', '1', '1', '64.00', 'ewqewq', '1000000004835790', '1', '2017-10-12 15:53:04', '60.00', '4.00', '64.00');
INSERT INTO `shoporder` VALUES ('80', '1', '1', '21.00', 'gdrfhtyjg', '1000001910385753', '2', '2017-10-12 16:08:37', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('81', '1', '1', '34.00', '11111', '1000001616715922', '1', '2017-10-12 15:58:37', '30.00', '4.00', '34.00');
INSERT INTO `shoporder` VALUES ('82', '1', '1', '64.00', '23333', '1000000253454927', '2', '2017-11-14 11:32:23', '60.00', '4.00', '64.00');
INSERT INTO `shoporder` VALUES ('83', '1', '1', '21.00', '1', '1000001352769130', '2', '2017-10-12 16:58:42', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('84', '2', '6', '21.00', '123123', '1000001906453723', '1', '2017-10-12 16:03:44', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('85', '1', '111', '34.00', '1231', '1000001991532903', '2', '2017-10-12 16:16:33', '30.00', '4.00', '34.00');
INSERT INTO `shoporder` VALUES ('86', '1', '1', '44.00', '2wdas', '1000001932085698', '1', '2017-10-12 16:09:26', '40.00', '4.00', '44.00');
INSERT INTO `shoporder` VALUES ('87', '2', '1', '21.00', 'gdrfhtyjg', '1000001646824091', '2', '2017-10-12 16:12:59', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('88', '1', '1', '37.00', 'ewqewq', '1000000084119251', '1', '2017-10-12 16:13:02', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('89', '2', '1', '44.05', 'asdadaf', '1000000879415741', '2', '2017-10-12 16:19:06', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('90', '2', '1', '13.00', '12', '1000001033134348', '1', '2017-10-12 16:32:03', '10.00', '3.00', '13.00');
INSERT INTO `shoporder` VALUES ('91', '2', '2', '21.00', '1', '1000001505003478', '1', '2017-10-12 16:34:28', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('92', '2', '1', '44.05', '11', '1000001563156476', '2', '2017-10-12 16:56:50', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('93', '1', '1', '36.00', '1', '1000001998543454', '2', '2017-10-12 17:09:51', '32.00', '4.00', '36.00');
INSERT INTO `shoporder` VALUES ('94', '1', '1', '45.00', '1', '1000002110200367', '1', '2017-10-12 17:17:23', '40.00', '5.00', '45.00');
INSERT INTO `shoporder` VALUES ('97', '197', '1', '21.00', '12312', '1000000042221226', '1', '2017-11-04 11:41:52', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('116', '197', '189', '83.10', '', '1000001788668825', '1', '2017-11-04 17:47:36', '78.10', '5.00', '83.10');
INSERT INTO `shoporder` VALUES ('117', '197', '189', '14.00', '', '1000001941093504', '1', '2017-11-06 09:38:23', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('122', '197', '189', '14.00', '', '1000001994865500', '2', '2017-11-06 10:45:36', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('126', '197', '189', '14.00', '', '1000001825680681', '2', '2017-11-06 11:05:31', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('127', '197', '189', '14.00', '', '1000000753039533', '2', '2017-11-06 11:07:15', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('128', '197', '189', '15.00', '', '1000001274061164', '2', '2017-11-06 11:15:30', '10.00', '5.00', '15.00');
INSERT INTO `shoporder` VALUES ('129', '197', '189', '24.00', '', '1000001871135975', '2', '2017-11-06 11:20:43', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('130', '197', '189', '24.00', '', '1000002115698197', '2', '2017-11-06 11:25:57', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('131', '197', '189', '15.00', '', '1000000384847436', '2', '2017-11-06 11:32:34', '10.00', '5.00', '15.00');
INSERT INTO `shoporder` VALUES ('132', '197', '189', '14.00', '', '1000000856721626', '2', '2017-11-06 11:33:57', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('133', '197', '189', '14.00', '', '1000000010098013', '2', '2017-11-06 11:40:50', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('135', '197', '189', '14.00', '', '1000001526681655', '2', '2017-11-06 11:47:43', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('136', '197', '189', '14.00', '', '1000000766301381', '2', '2017-11-06 11:49:59', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('137', '197', '189', '14.00', '', '1000001994803929', '2', '2017-11-06 11:52:11', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('138', '197', '189', '14.00', '', '1000001726479427', '2', '2017-11-06 11:55:44', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('139', '197', '189', '14.00', '', '1000000654179799', '2', '2017-11-06 11:59:01', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('140', '197', '189', '14.00', '', '1000000344571772', '2', '2017-11-06 12:00:04', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('141', '197', '189', '14.00', '', '1000000671709450', '2', '2017-11-06 12:57:07', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('182', '208', '0', '24.00', '', '1000000136887525', '2', '2017-11-06 15:32:34', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('186', '208', '0', '24.00', '', '1000000417232605', '2', '2017-11-06 15:42:52', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('187', '208', '0', '24.00', '', '1000001711866205', '2', '2017-11-06 15:45:40', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('188', '208', '0', '24.00', '', '1000001864557987', '2', '2017-11-06 15:46:26', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('190', '208', '0', '24.00', '', '1000000419936420', '2', '2017-11-06 16:01:57', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('191', '208', '0', '24.00', '', '1000001086082235', '2', '2017-11-06 16:04:39', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('192', '208', '0', '24.00', '', '1000000197872823', '2', '2017-11-06 16:06:12', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('194', '208', '0', '24.00', '', '1000000140400989', '2', '2017-11-06 16:09:42', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('200', '202', '0', '21.00', '', '1000001787188688', '1', '2017-11-06 16:58:50', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('221', '174', '164', '21.00', '1', '1000000017533503', '1', '2017-11-06 17:49:48', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('243', '174', '164', '21.00', '1', '1000002106983721', '2', '2017-11-06 18:20:19', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('256', '202', '0', '21.00', '', '1000000691502687', '1', '2017-11-07 08:45:22', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('257', '174', '164', '21.00', '1', '1000001779571725', '2', '2017-11-07 08:56:04', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('258', '174', '164', '21.00', '1', '1000000716608633', '2', '2017-11-07 09:02:07', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('259', '174', '164', '21.00', '1', '1000000909261298', '2', '2017-11-07 09:03:08', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('260', '174', '164', '21.00', '1', '1000001586524946', '2', '2017-11-07 09:04:25', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('261', '208', '0', '24.00', '', '1000000360672660', '2', '2017-11-07 09:31:11', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('262', '208', '0', '41.05', '', '1000001474477605', '2', '2017-11-07 09:50:30', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('263', '208', '0', '14.00', '', '1000000766825451', '2', '2017-11-07 09:52:07', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('264', '202', '0', '13.00', '', '1000000951795146', '2', '2017-11-07 09:57:16', '10.00', '3.00', '13.00');
INSERT INTO `shoporder` VALUES ('265', '208', '0', '21.00', '', '1000001762821223', '2', '2017-11-07 09:58:06', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('266', '202', '0', '21.00', '', '1000001011811424', '2', '2017-11-07 10:07:04', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('267', '202', '0', '21.00', '', '1000001214501694', '2', '2017-11-07 10:11:04', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('268', '202', '0', '21.00', '', '1000001421002461', '2', '2017-11-07 10:13:09', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('269', '208', '0', '44.05', '', '1000001123025547', '2', '2017-11-07 10:19:21', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('270', '202', '0', '15.00', '', '1000000816968932', '2', '2017-11-07 10:23:10', '10.00', '5.00', '15.00');
INSERT INTO `shoporder` VALUES ('271', '202', '0', '15.00', '', '1000000521807898', '2', '2017-11-07 10:28:25', '10.00', '5.00', '15.00');
INSERT INTO `shoporder` VALUES ('272', '202', '0', '15.00', '', '1000001713121327', '2', '2017-11-07 10:31:20', '10.00', '5.00', '15.00');
INSERT INTO `shoporder` VALUES ('273', '208', '0', '44.05', '', '1000000955885823', '2', '2017-11-07 11:08:16', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('274', '208', '0', '33.00', '', '1000000282591935', '2', '2017-11-07 11:14:08', '30.00', '3.00', '33.00');
INSERT INTO `shoporder` VALUES ('275', '198', '201', '13.00', '', '1000000351677660', '1', '2017-11-07 11:24:49', '10.00', '3.00', '13.00');
INSERT INTO `shoporder` VALUES ('279', '198', '201', '13.00', '', '1000001275061764', '1', '2017-11-07 11:58:33', '10.00', '3.00', '13.00');
INSERT INTO `shoporder` VALUES ('280', '174', '164', '21.00', '1', '1000001546976670', '2', '2017-11-07 12:00:35', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('281', '198', '201', '13.00', '', '1000000285931885', '2', '2017-11-07 12:02:53', '10.00', '3.00', '13.00');
INSERT INTO `shoporder` VALUES ('283', '198', '201', '52.05', '', '1000001871690806', '1', '2017-11-07 12:03:56', '49.05', '3.00', '52.05');
INSERT INTO `shoporder` VALUES ('284', '198', '201', '68.05', '', '1000002010272565', '2', '2017-11-07 13:03:57', '65.05', '3.00', '68.05');
INSERT INTO `shoporder` VALUES ('285', '174', '164', '44.05', '1', '1000001306119108', '2', '2017-11-07 15:27:23', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('286', '174', '164', '44.05', '1', '1000000243175440', '2', '2017-11-07 15:28:46', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('288', '198', '203', '19.00', '', '1000001286244008', '1', '2017-11-08 09:22:19', '16.00', '3.00', '19.00');
INSERT INTO `shoporder` VALUES ('289', '188', '1', '21.00', '1', '1000001197115924', '1', '2017-11-08 09:47:09', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('290', '198', '2', '21.00', '1', '1000001831795687', '2', '2017-11-08 14:55:54', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('291', '198', '1', '21.00', '1', '1000001613039267', '2', '2017-11-08 15:40:22', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('292', '198', '211', '41.05', '', '1000001954017506', '2', '2017-11-08 16:17:58', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('293', '198', '211', '164.00', '', '1000001812134038', '1', '2017-11-08 16:20:13', '160.00', '4.00', '164.00');
INSERT INTO `shoporder` VALUES ('295', '198', '211', '20.00', '', '1000001591026908', '2', '2017-11-08 16:21:07', '16.00', '4.00', '20.00');
INSERT INTO `shoporder` VALUES ('296', '198', '211', '60.05', '', '1000001325880464', '2', '2017-11-08 16:22:11', '55.05', '5.00', '60.05');
INSERT INTO `shoporder` VALUES ('297', '198', '211', '21.00', '', '1000001323735727', '2', '2017-11-08 16:23:05', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('298', '198', '211', '15.00', '', '1000001786463819', '2', '2017-11-08 16:23:36', '10.00', '5.00', '15.00');
INSERT INTO `shoporder` VALUES ('299', '198', '211', '44.05', '', '1000000010563154', '2', '2017-11-08 16:30:24', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('301', '198', '211', '41.05', '', '1000000202174118', '2', '2017-11-08 16:36:03', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('303', '198', '212', '80.10', '', '1000000947456893', '2', '2017-11-08 16:38:39', '78.10', '2.00', '80.10');
INSERT INTO `shoporder` VALUES ('304', '208', '0', '93.10', '', '1000000176923826', '2', '2017-11-08 17:15:19', '88.10', '5.00', '93.10');
INSERT INTO `shoporder` VALUES ('305', '218', '213', '21.00', '', '1000002071754792', '1', '2017-11-08 17:16:50', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('306', '208', '0', '69.05', '', '1000000044876846', '2', '2017-11-08 17:17:32', '65.05', '4.00', '69.05');
INSERT INTO `shoporder` VALUES ('307', '219', '214', '44.05', '', '1000000170027515', '2', '2017-11-08 17:21:51', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('308', '221', '0', '19.00', 'ppp', '1000001737920936', '1', '2017-11-08 17:53:19', '16.00', '3.00', '19.00');
INSERT INTO `shoporder` VALUES ('311', '220', '216', '44.05', '', '1000000960862649', '2', '2017-11-08 18:11:42', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('312', '220', '216', '44.05', '', '1000000256878334', '1', '2017-11-08 18:12:02', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('313', '220', '216', '44.05', '', '1000000425694681', '2', '2017-11-08 18:14:38', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('314', '220', '216', '44.05', '', '1000000963093451', '2', '2017-11-08 19:44:16', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('315', '220', '216', '44.05', '', '1000000358717774', '2', '2017-11-08 21:43:15', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('318', '200', '1', '21.00', '1', '1000000138046213', '1', '2017-11-09 11:07:19', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('319', '220', '216', '44.05', '', '1000001815322940', '1', '2017-11-09 11:09:27', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('320', '200', '206', '21.00', '', '1000000994973792', '1', '2017-11-09 11:36:47', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('321', '200', '206', '53.00', '', '1000001045480120', '1', '2017-11-09 11:41:37', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('322', '200', '206', '53.00', '', '1000000801856963', '1', '2017-11-09 11:43:57', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('323', '200', '206', '21.00', '', '1000000856187875', '1', '2017-11-09 11:55:27', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('325', '1', '21', '21.00', '2wqwq', '1000001628737732', '1', '2017-11-09 14:11:00', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('328', '208', '0', '79.05', '', '1000001143808877', '1', '2017-11-09 15:29:01', '75.05', '4.00', '79.05');
INSERT INTO `shoporder` VALUES ('329', '220', '216', '21.00', '', '1000000771505770', '1', '2017-11-09 18:17:26', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('330', '198', '212', '582.60', '', '1000000424714065', '2', '2017-11-10 12:03:11', '580.60', '2.00', '582.60');
INSERT INTO `shoporder` VALUES ('332', '198', '212', '41.05', '', '1000001384078213', '1', '2017-11-10 12:11:33', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('333', '198', '212', '41.05', '', '1000000438669411', '2', '2017-11-10 17:33:30', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('336', '220', '218', '24.00', '', '1000000196130162', '2', '2017-11-11 13:22:44', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('337', '198', '212', '19.00', '', '1000000896698592', '2', '2017-11-12 19:23:34', '16.00', '3.00', '19.00');
INSERT INTO `shoporder` VALUES ('338', '198', '212', '21.00', '发的三大三', '1000000797562175', '2', '2017-11-14 11:53:48', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('341', '198', '212', '21.00', 'asfa', '1000001391144518', '2', '2017-11-14 12:54:54', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('342', '198', '1', '21.00', '11uu', '1000000094348059', '1', '2017-11-14 12:50:27', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('343', '198', '212', '21.00', '11uu', '1000000652549609', '2', '2017-11-14 14:44:00', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('344', '198', '212', '21.00', 'sasd', '1000000155656117', '2', '2017-11-14 13:22:37', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('345', '198', '212', '21.00', '嫁汉嫁汉', '1000000601838793', '1', '2017-11-14 13:55:01', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('346', '198', '212', '37.00', '111', '1000000362648017', '2', '2017-11-14 14:02:39', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('347', '198', '212', '85.00', '34', '1000000815535199', '2', '2017-11-14 14:04:01', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('348', '198', '212', '24.00', '要蓝色', '1000000646530789', '2', '2017-11-14 14:13:10', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('349', '198', '212', '21.00', '111', '1000001438800457', '1', '2017-11-14 14:05:38', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('350', '198', '212', '21.00', '要 42的', '1000002020111291', '2', '2017-11-14 14:15:33', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('351', '198', '212', '101.00', '今天又变冷了', '1000000260803851', '2', '2017-11-14 14:13:02', '96.00', '5.00', '101.00');
INSERT INTO `shoporder` VALUES ('356', '198', '212', '85.00', '今天又变冷了', '1000001671473461', '1', '2017-11-14 14:39:16', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('359', '198', '212', '21.00', '卖家留言', '1000001548031211', '1', '2017-11-14 14:41:05', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('360', '198', '212', '21.00', '地方', '1000001441529732', '2', '2017-11-14 14:58:43', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('361', '198', '212', '197.00', '1111111111111111', '1000002119983229', '2', '2017-11-14 14:46:33', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('362', '198', '212', '21.00', '卖家留言', '1000002110570543', '1', '2017-11-14 14:43:42', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('363', '198', '212', '21.00', '卖家留言', '1000001089514205', '2', '2017-11-14 14:45:45', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('364', '198', '212', '197.00', '546', '1000002120754733', '2', '2017-11-14 14:50:49', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('366', '198', '212', '21.00', '卖家留言', '1000000504395761', '1', '2017-11-14 14:52:16', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('376', '198', '212', '21.00', '买家留言', '1000001450199796', '1', '2017-11-14 15:08:51', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('377', '198', '212', '53.00', '这是练习', '1000002064741434', '2', '2017-11-14 15:12:11', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('381', '198', '212', '21.00', '买家留言', '1000000819025299', '1', '2017-11-14 15:10:23', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('384', '198', '212', '21.00', '买家留言', '1000000631829821', '2', '2017-11-14 15:13:28', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('386', '198', '212', '21.00', '买家留言', '1000000580263209', '2', '2017-11-14 15:15:46', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('388', '198', '212', '21.00', 'wolegequ', '1000002082597883', '1', '2017-11-14 15:22:19', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('391', '198', '212', '85.00', '12345', '1000000231422720', '1', '2017-11-14 15:25:34', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('392', '198', '212', '85.00', '12345', '1000000293538508', '1', '2017-11-14 15:27:48', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('394', '198', '212', '85.00', '12345', '1000001487550465', '1', '2017-11-14 15:28:51', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('395', '198', '212', '85.00', '12345', '1000000571088879', '2', '2017-11-14 15:30:29', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('396', '198', '212', '85.00', '12345', '1000000669164088', '2', '2017-11-14 15:31:00', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('398', '198', '212', '21.00', 'sasd', '1000001012966607', '2', '2017-11-14 15:32:45', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('399', '198', '212', '21.00', 'sasd', '1000001152413961', '2', '2017-11-14 15:33:12', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('408', '198', '212', '21.00', 'sasd', '1000000296960537', '2', '2017-11-14 15:47:36', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('409', '198', '212', '37.00', '111', '1000001270628171', '2', '2017-11-14 16:42:39', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('415', '198', '212', '21.00', '111', '1000000493609219', '1', '2017-11-14 15:54:03', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('425', '198', '212', '21.00', '111', '1000000993789965', '2', '2017-11-14 16:14:14', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('426', '198', '212', '21.00', '111', '1000000089268208', '2', '2017-11-14 16:11:51', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('430', '198', '212', '21.00', '111', '1000000508622845', '1', '2017-11-14 16:11:41', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('434', '198', '212', '21.00', '111', '1000000054317554', '1', '2017-11-14 16:14:11', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('437', '198', '212', '85.00', '12345', '1000001902168502', '2', '2017-11-14 16:17:18', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('439', '198', '212', '85.00', '12345', '1000001048326737', '2', '2017-11-14 16:24:27', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('441', '198', '212', '21.00', 'wolegequ', '1000000702727923', '1', '2017-11-14 16:21:49', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('442', '198', '212', '21.00', 'wolegequ', '1000000186594913', '2', '2017-11-14 16:32:23', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('443', '198', '212', '21.00', '111', '1000000581654879', '1', '2017-11-14 16:27:29', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('444', '198', '212', '21.00', '111', '1000001430604555', '1', '2017-11-14 16:27:33', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('445', '198', '212', '21.00', '111', '1000001882811666', '1', '2017-11-14 16:28:39', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('446', '198', '212', '21.00', '111', '1000000322150901', '1', '2017-11-14 16:28:41', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('447', '198', '212', '21.00', 'wolegequ', '1000000399146061', '1', '2017-11-14 16:32:53', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('450', '198', '212', '24.00', 'nothing', '1000001770805311', '1', '2017-11-14 16:36:00', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('452', '198', '212', '24.00', 'nothing', '1000001349084875', '2', '2017-11-14 16:38:00', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('454', '198', '212', '21.00', 'wolegequ', '1000000985067059', '2', '2017-11-14 16:43:15', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('455', '198', '212', '21.00', 'test', '1000001993977330', '1', '2017-11-14 16:42:42', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('456', '198', '212', '21.00', 'wolegequ', '1000000117774593', '2', '2017-11-14 16:45:23', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('457', '198', '212', '21.00', 'test', '1000000542641720', '2', '2017-11-14 16:47:54', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('460', '198', '212', '21.00', '买家留言', '1000000992209428', '2', '2017-11-14 16:53:55', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('462', '198', '212', '21.00', 'fdsfdsa', '1000001810975532', '1', '2017-11-14 17:02:24', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('463', '198', '212', '21.00', 'fdsfdsa', '1000000495221779', '2', '2017-11-14 17:19:42', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('464', '198', '212', '21.00', 'fdsfdsa', '1000001701169775', '2', '2017-11-14 17:21:46', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('465', '198', '212', '21.00', 'fdsfdsa', '1000000688798843', '2', '2017-11-14 17:22:36', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('467', '198', '212', '85.00', '12345', '1000001015133566', '2', '2017-11-14 17:24:09', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('468', '198', '212', '21.00', 'sasd', '1000001926035115', '2', '2017-11-14 17:24:34', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('469', '198', '212', '85.00', '12345', '1000000811678038', '2', '2017-11-14 17:24:27', '80.00', '5.00', '85.00');
INSERT INTO `shoporder` VALUES ('470', '198', '212', '21.00', '111', '1000000044586262', '2', '2017-11-14 17:27:02', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('471', '198', '212', '21.00', '111', '1000001326234160', '1', '2017-11-14 17:26:35', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('473', '198', '212', '53.00', '今天又变冷了', '1000001401772041', '2', '2017-11-14 18:11:55', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('474', '198', '212', '21.00', '111', '1000001770061092', '2', '2017-11-14 17:30:17', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('476', '198', '212', '610.00', '12345', '1000002109338587', '2', '2017-11-14 17:32:28', '600.00', '10.00', '610.00');
INSERT INTO `shoporder` VALUES ('478', '198', '212', '610.00', '12345', '1000000515779502', '2', '2017-11-14 17:32:45', '600.00', '10.00', '610.00');
INSERT INTO `shoporder` VALUES ('489', '198', '212', '197.00', 'asdasdasda', '1000000270361977', '2', '2017-11-14 17:41:24', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('490', '198', '212', '37.00', '111', '1000001359518920', '2', '2017-11-14 17:43:06', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('492', '198', '212', '197.00', 'asdasdasda', '1000001796404488', '2', '2017-11-14 17:43:04', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('493', '198', '212', '14.00', 'nothing', '1000001593070466', '2', '2017-11-14 17:44:15', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('494', '198', '212', '197.00', 'asdasdasda', '1000001346492549', '2', '2017-11-14 17:46:40', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('495', '198', '212', '197.00', 'asdasdasda', '1000001696596296', '2', '2017-11-14 17:48:36', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('510', '198', '212', '37.00', '111', '1000001529573459', '2', '2017-11-14 18:08:08', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('518', '198', '212', '37.00', '111', '1000001234207540', '2', '2017-11-14 18:13:37', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('530', '198', '212', '53.00', '今天又变冷了222', '1000001235734199', '2', '2017-11-14 18:19:13', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('535', '198', '212', '53.00', '今天又变冷了2221', '1000000633001756', '2', '2017-11-14 18:20:09', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('539', '198', '212', '37.00', '111', '1000000679015399', '2', '2017-11-14 18:21:00', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('629', '198', '212', '21.00', 'test', '1000000118981457', '2', '2017-11-14 18:34:06', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('654', '198', '212', '53.00', '今天又变冷了', '1000001281556106', '1', '2017-11-14 18:32:44', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('659', '198', '212', '21.00', 'we', '1000001970473250', '1', '2017-11-14 18:34:09', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('669', '198', '212', '53.00', '今天又变冷了', '1000002129487691', '1', '2017-11-14 18:36:27', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('675', '198', '212', '21.00', 'we', '1000001614647686', '1', '2017-11-14 18:38:13', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('676', '198', '212', '21.00', 'we', '1000001410242802', '1', '2017-11-14 18:38:26', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('680', '198', '212', '37.00', '111', '1000002117009239', '2', '2017-11-14 18:39:16', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('682', '198', '212', '21.00', 'we', '1000001193715055', '1', '2017-11-14 18:39:36', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('689', '198', '212', '21.00', 'we', '1000001496196999', '1', '2017-11-14 18:45:57', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('690', '198', '212', '21.00', 'we', '1000000797079301', '1', '2017-11-14 18:47:13', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('691', '198', '212', '21.00', 'we', '1000000376030301', '1', '2017-11-14 18:47:29', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('692', '198', '212', '21.00', 'we', '1000000689395994', '1', '2017-11-14 18:48:10', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('693', '198', '212', '21.00', 'test', '1000001522934169', '1', '2017-11-14 18:48:18', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('694', '198', '212', '21.00', 'test', '1000001821009778', '1', '2017-11-14 18:48:18', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('696', '198', '212', '21.00', 'we', '1000000764638372', '1', '2017-11-14 18:49:00', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('697', '198', '212', '21.00', 'we', '1000000452633625', '1', '2017-11-14 18:49:01', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('698', '198', '212', '21.00', 'we', '1000000865603120', '1', '2017-11-14 18:49:04', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('699', '198', '212', '21.00', 'we', '1000000457457244', '1', '2017-11-14 18:49:06', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('700', '198', '212', '21.00', 'we', '1000001765592743', '1', '2017-11-14 18:49:09', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('701', '198', '212', '21.00', 'we', '1000001605256831', '1', '2017-11-14 18:49:47', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('702', '198', '212', '21.00', 'we', '1000000218719455', '1', '2017-11-14 18:52:31', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('703', '198', '212', '21.00', 'we', '1000000743361995', '1', '2017-11-14 18:54:25', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('704', '198', '212', '21.00', 'we', '1000001400757225', '1', '2017-11-14 18:54:40', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('705', '198', '212', '21.00', 'we', '1000001124044591', '1', '2017-11-14 18:54:58', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('706', '198', '212', '21.00', 'we', '1000001857505560', '1', '2017-11-14 18:55:15', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('707', '198', '212', '21.00', 'we', '1000000009151722', '1', '2017-11-14 18:57:02', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('710', '198', '212', '21.00', 'sasd', '1000001412543182', '2', '2017-11-14 19:00:39', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('711', '198', '212', '21.00', 'we', '1000000356608676', '2', '2017-11-14 19:00:59', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('719', '198', '212', '53.00', '今天又变冷了', '1000001568352086', '2', '2017-11-14 19:08:02', '48.00', '5.00', '53.00');
INSERT INTO `shoporder` VALUES ('721', '198', '212', '197.00', '1111111111111111', '1000001561435027', '1', '2017-11-14 19:25:52', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('736', '198', '212', '197.00', '111', '1000001049865469', '1', '2017-11-14 20:04:13', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('740', '198', '220', '21.00', '打死', '1000000555233556', '1', '2017-11-14 20:45:18', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('743', '198', '220', '21.00', '我我我', '1000001071800311', '1', '2017-11-14 21:08:51', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('745', '198', '212', '610.00', '12345', '1000000914807902', '1', '2017-11-14 21:15:03', '600.00', '10.00', '610.00');
INSERT INTO `shoporder` VALUES ('747', '198', '220', '21.00', '我我我', '1000001868789625', '2', '2017-11-14 21:28:30', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('748', '198', '220', '21.00', '我我我', '1000000480848139', '2', '2017-11-14 21:28:45', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('749', '198', '212', '21.00', 'we', '1000001799259009', '2', '2017-11-14 22:43:16', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('750', '198', '212', '197.00', '111', '1000000973024568', '1', '2017-11-15 00:41:55', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('751', '198', '212', '21.00', 'wolegequ', '1000001907553770', '2', '2017-11-15 09:11:01', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('752', '198', '212', '197.00', 'asdasdasda', '1000001414517017', '2', '2017-11-15 09:11:47', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('753', '198', '212', '21.00', '111', '1000001588481912', '1', '2017-11-15 15:59:22', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('754', '198', '212', '21.00', '卖家留言', '1000000002242960', '1', '2017-11-15 18:31:54', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('756', '198', '212', '21.00', '卖家留言', '1000001935991042', '1', '2017-11-16 09:14:52', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('758', '198', '212', '21.00', 'test', '1000000441694015', '2', '2017-11-16 10:48:54', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('759', '220', '219', '21.00', '', '1000001245121108', '2', '2017-11-16 18:42:23', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('760', '220', '219', '64.00', '', '1000001620982646', '2', '2017-11-16 18:43:26', '60.00', '4.00', '64.00');
INSERT INTO `shoporder` VALUES ('761', '220', '219', '69.00', '', '1000001368030028', '2', '2017-11-16 18:44:48', '64.00', '5.00', '69.00');
INSERT INTO `shoporder` VALUES ('762', '220', '217', '64.00', '', '1000000924336199', '2', '2017-11-17 08:48:07', '60.00', '4.00', '64.00');
INSERT INTO `shoporder` VALUES ('764', '220', '216', '227.00', '', '1000000611658599', '2', '2017-11-17 08:50:23', '224.00', '3.00', '227.00');
INSERT INTO `shoporder` VALUES ('765', '220', '221', '44.05', '', '1000000291108303', '2', '2017-11-17 11:36:37', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('766', '198', '212', '197.00', 'asdasdasda', '1000001366986042', '1', '2017-11-22 12:05:33', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('767', '198', '212', '197.00', 'asdasdasda', '1000000733800125', '2', '2017-11-22 17:44:49', '192.00', '5.00', '197.00');
INSERT INTO `shoporder` VALUES ('768', '220', '220', '24.00', '', '1000000177900365', '2', '2017-11-23 01:57:04', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('776', '267', '0', '1978.00', '1', '1000001916068091', '1', '2017-11-25 11:14:08', '1968.00', '10.00', '1978.00');
INSERT INTO `shoporder` VALUES ('786', '267', '0', '51.00', '', '1000001630808073', '2', '2017-11-25 11:55:10', '48.00', '3.00', '51.00');
INSERT INTO `shoporder` VALUES ('787', '198', '225', '14.00', '', '1000000606494655', '2', '2017-11-27 11:18:19', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('788', '267', '0', '51.00', '', '1000001070766723', '2', '2017-11-27 11:37:06', '48.00', '3.00', '51.00');
INSERT INTO `shoporder` VALUES ('790', '198', '212', '21.00', 'wolegequ', '1000001780253405', '1', '2017-11-27 12:00:55', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('791', '198', '212', '21.00', 'wolegequ', '1000001712670961', '1', '2017-11-27 12:00:59', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('792', '198', '212', '21.00', 'wolegequ', '1000002092856733', '1', '2017-11-27 12:01:19', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('793', '198', '212', '21.00', 'wolegequ', '1000000561891021', '1', '2017-11-27 12:01:38', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('794', '198', '212', '21.00', 'wolegequ', '1000000189537265', '1', '2017-11-27 12:01:46', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('795', '198', '212', '21.00', 'wolegequ', '1000001954595533', '1', '2017-11-27 12:01:47', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('796', '198', '212', '21.00', 'wolegequ', '1000001854931717', '1', '2017-11-27 12:04:31', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('797', '198', '212', '21.00', 'wolegequ', '1000000739115067', '1', '2017-11-27 12:52:26', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('798', '198', '212', '21.00', 'wolegequ', '1000000130438746', '1', '2017-11-27 12:52:59', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('799', '198', '212', '21.00', 'wolegequ', '1000001009711219', '1', '2017-11-27 12:55:27', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('800', '198', '212', '21.00', 'wolegequ', '1000001983069766', '1', '2017-11-27 12:57:52', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('801', '198', '212', '21.00', 'wolegequ', '1000001482164635', '1', '2017-11-27 13:04:46', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('802', '198', '212', '21.00', 'wolegequ', '1000000248078922', '1', '2017-11-27 13:06:35', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('803', '198', '212', '21.00', 'wolegequ', '1000000458660819', '2', '2017-11-27 13:14:20', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('808', '233', '224', '215.00', 'weiliuyan!', '1000000753042011', '1', '2017-11-27 14:34:41', '212.00', '3.00', '215.00');
INSERT INTO `shoporder` VALUES ('809', '172', '0', '21.00', '123', '1000001011011739', '1', '2017-11-27 15:03:53', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('810', '233', '224', '215.00', 'weiliuyan!', '1000000645689106', '2', '2017-11-27 15:09:57', '212.00', '3.00', '215.00');
INSERT INTO `shoporder` VALUES ('811', '267', '0', '62.00', '', '1000000120632088', '2', '2017-11-27 15:20:27', '58.00', '4.00', '62.00');
INSERT INTO `shoporder` VALUES ('812', '247', '0', '24.00', '123', '1000002089837207', '2', '2017-11-27 15:42:16', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('813', '247', '0', '44.00', '123', '1000000568402230', '1', '2017-11-27 15:42:31', '40.00', '4.00', '44.00');
INSERT INTO `shoporder` VALUES ('814', '247', '0', '94.00', '123', '1000000649457474', '2', '2017-11-27 15:43:12', '90.00', '4.00', '94.00');
INSERT INTO `shoporder` VALUES ('815', '233', '224', '52.00', 'weiliuyan!', '1000001431125237', '2', '2017-11-27 15:47:59', '48.00', '4.00', '52.00');
INSERT INTO `shoporder` VALUES ('816', '233', '224', '52.00', 'weiliuyan!', '1000000824096503', '2', '2017-11-27 16:05:20', '48.00', '4.00', '52.00');
INSERT INTO `shoporder` VALUES ('817', '233', '224', '52.00', 'weiliuyan!', '1000000406173984', '2', '2017-11-27 16:05:17', '48.00', '4.00', '52.00');
INSERT INTO `shoporder` VALUES ('818', '233', '224', '51.00', 'weiliuyan!', '1000001355517532', '2', '2017-11-27 16:07:54', '48.00', '3.00', '51.00');
INSERT INTO `shoporder` VALUES ('819', '233', '224', '52.00', 'weiliuyan!', '1000000992981663', '2', '2017-11-27 16:10:57', '48.00', '4.00', '52.00');
INSERT INTO `shoporder` VALUES ('820', '233', '224', '51.00', 'weiliuyan!', '1000001801477403', '2', '2017-11-27 16:12:51', '48.00', '3.00', '51.00');
INSERT INTO `shoporder` VALUES ('821', '233', '224', '147.00', 'weiliuyan!', '1000000068085638', '2', '2017-11-27 16:14:00', '144.00', '3.00', '147.00');
INSERT INTO `shoporder` VALUES ('822', '233', '224', '147.00', 'weiliuyan!', '1000001122447719', '2', '2017-11-27 16:16:12', '144.00', '3.00', '147.00');
INSERT INTO `shoporder` VALUES ('823', '233', '224', '83.10', 'weiliuyan!', '1000000087654886', '2', '2017-11-27 16:23:13', '78.10', '5.00', '83.10');
INSERT INTO `shoporder` VALUES ('824', '233', '224', '83.10', 'weiliuyan!', '1000000696178810', '1', '2017-11-27 16:23:18', '78.10', '5.00', '83.10');
INSERT INTO `shoporder` VALUES ('825', '198', '212', '21.00', 'sasd', '1000001704036921', '2', '2017-11-27 18:12:45', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('827', '198', '212', '14.00', '', '1000000352060808', '1', '2017-11-27 23:52:53', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('828', '198', '226', '24.00', '', '1000000777134101', '1', '2017-11-27 23:57:22', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('831', '198', '212', '84.00', '', '1000002062657604', '1', '2017-11-28 00:00:46', '80.00', '4.00', '84.00');
INSERT INTO `shoporder` VALUES ('832', '198', '212', '94.00', '', '1000001197168809', '1', '2017-11-28 00:01:15', '90.00', '4.00', '94.00');
INSERT INTO `shoporder` VALUES ('833', '198', '212', '44.05', '', '1000001181931126', '2', '2017-11-28 09:22:24', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('835', '198', '212', '41.05', '', '1000001953870663', '2', '2017-11-28 09:23:18', '39.05', '2.00', '41.05');
INSERT INTO `shoporder` VALUES ('836', '198', '212', '24.00', '', '1000000171691025', '2', '2017-11-28 13:55:47', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('837', '198', '212', '24.00', '', '1000000715901905', '2', '2017-11-28 13:56:14', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('838', '198', '212', '24.00', '', '1000000229819840', '2', '2017-11-28 13:56:43', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('839', '198', '212', '44.00', '', '1000000638203857', '2', '2017-11-28 13:57:33', '40.00', '4.00', '44.00');
INSERT INTO `shoporder` VALUES ('840', '198', '227', '14.00', '我6爱', '1000001107388567', '2', '2017-11-28 13:59:42', '10.00', '4.00', '14.00');
INSERT INTO `shoporder` VALUES ('841', '198', '227', '124.00', '', '1000001094666808', '2', '2017-11-28 15:44:59', '120.00', '4.00', '124.00');
INSERT INTO `shoporder` VALUES ('843', '198', '226', '161.20', '', '1000001856808334', '2', '2017-11-28 22:15:50', '156.20', '5.00', '161.20');
INSERT INTO `shoporder` VALUES ('844', '198', '226', '54.00', '', '1000001922739740', '2', '2017-11-28 22:16:54', '50.00', '4.00', '54.00');
INSERT INTO `shoporder` VALUES ('847', '198', '226', '44.05', '', '1000002052664203', '2', '2017-11-30 23:03:21', '39.05', '5.00', '44.05');
INSERT INTO `shoporder` VALUES ('849', '198', '212', '21.00', '卖家留言', '1000000155390979', '1', '2017-12-01 19:27:35', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('850', '198', '227', '124.00', '', '1000001790696142', '2', '2017-12-08 15:56:37', '120.00', '4.00', '124.00');
INSERT INTO `shoporder` VALUES ('851', '198', '227', '124.00', '', '1000000040713421', '2', '2017-12-08 20:50:07', '120.00', '4.00', '124.00');
INSERT INTO `shoporder` VALUES ('853', '198', '228', '134.00', '', '1000000297359060', '2', '2017-12-08 20:59:30', '130.00', '4.00', '134.00');
INSERT INTO `shoporder` VALUES ('855', '198', '229', '124.00', '', '1000001291959845', '1', '2017-12-12 15:12:11', '120.00', '4.00', '124.00');
INSERT INTO `shoporder` VALUES ('877', '247', '0', '34.00', '123', '1000001520095212', '2', '2017-12-15 16:02:20', '30.00', '4.00', '34.00');
INSERT INTO `shoporder` VALUES ('878', '198', '212', '21.00', 'we', '1000000595058212', '2', '2017-12-15 16:20:49', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('879', '198', '212', '21.00', 'we', '1000000935444091', '1', '2017-12-15 16:21:03', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('880', '192', '1', '21.00', '111', '1000000471208475', '1', '2017-12-15 16:47:05', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('881', '192', '1', '37.00', '1111111', '1000000593953232', '1', '2017-12-15 16:48:41', '32.00', '5.00', '37.00');
INSERT INTO `shoporder` VALUES ('882', '198', '212', '21.00', '卖家留言', '1000001492309418', '2', '2017-12-15 17:12:08', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('883', '198', '212', '21.00', '卖家留言', '1000000038408702', '2', '2017-12-15 17:12:25', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('884', '198', '212', '21.00', '卖家留言', '1000001675553306', '1', '2017-12-15 17:21:50', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('885', '192', '1', '21.00', '111111', '1000000864441242', '1', '2017-12-15 17:57:38', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('886', '192', '11', '21.00', '11111', '1000001830715810', '2', '2017-12-16 09:58:06', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('887', '192', '1', '164.00', '哈哈哈哈哈', '1000000514653882', '1', '2017-12-16 10:12:34', '160.00', '4.00', '164.00');
INSERT INTO `shoporder` VALUES ('888', '192', '1', '21.00', '111', '1000000132679393', '1', '2017-12-16 10:14:50', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('889', '198', '1', '21.00', '111', '1000001496366835', '1', '2017-12-16 10:19:52', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('890', '12', '12', '21.00', '1111', '1000001350000353', '2', '2017-12-16 10:40:27', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('892', '199', '123', '21.00', 'dfgh', '1000000467006887', '2', '2017-12-16 10:38:00', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('893', '192', '123', '165.00', '121', '1000002019699033', '2', '2017-12-16 10:42:28', '160.00', '5.00', '165.00');
INSERT INTO `shoporder` VALUES ('895', '173', '1', '21.00', '111', '1000000340546617', '1', '2017-12-16 10:42:13', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('896', '198', '212', '21.00', 'we', '1000001941010869', '2', '2017-12-16 10:49:54', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('897', '1', '1', '21.00', '111', '1000000956027265', '1', '2017-12-16 11:18:10', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('900', '192', '111', '21.00', '起晚期群无', '1000000888741248', '1', '2017-12-16 11:29:22', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('901', '192', '111', '21.00', '起晚期群无', '1000001401265715', '2', '2017-12-16 11:39:29', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('902', '192', '111', '21.00', '起晚期群无', '1000000125723415', '1', '2017-12-16 11:39:50', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('903', '192', '111', '21.00', '起晚期群无', '1000002083626454', '1', '2017-12-16 11:40:33', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('904', '192', '111', '21.00', '起晚期群无', '1000001399757456', '2', '2017-12-16 11:41:17', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('907', '192', '111', '21.00', '起晚期群无', '1000000211855601', '1', '2017-12-16 11:47:27', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('914', '198', '1', '21.00', '111', '1000000027727195', '1', '2017-12-16 11:58:39', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('916', '198', '1', '21.00', '111', '1000002022917845', '1', '2017-12-16 12:06:09', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('917', '198', '1', '21.00', '111', '1000000457624969', '1', '2017-12-16 12:50:06', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('918', '198', '1', '21.00', '111', '1000000030081389', '2', '2017-12-16 12:50:53', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('923', '199', '111', '21.00', 'hahah', '1000000838021002', '1', '2017-12-16 13:20:36', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('927', '172', '11', '165.00', '111', '1000000520337355', '1', '2017-12-16 13:29:43', '160.00', '5.00', '165.00');
INSERT INTO `shoporder` VALUES ('928', '119', '11', '21.00', '11111', '1000000954383023', '1', '2017-12-16 13:29:44', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('929', '172', '11', '165.00', '111', '1000002103382090', '1', '2017-12-16 13:33:39', '160.00', '5.00', '165.00');
INSERT INTO `shoporder` VALUES ('932', '119', '11', '21.00', '11111', '1000001136648043', '1', '2017-12-16 13:37:27', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('933', '199', '111', '21.00', 'hahah', '1000000296660305', '2', '2017-12-16 13:38:10', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('935', '119', '11', '21.00', '11111', '1000000610578842', '1', '2017-12-16 13:40:12', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('936', '172', '11', '165.00', '111', '1000001606891148', '2', '2017-12-16 13:42:53', '160.00', '5.00', '165.00');
INSERT INTO `shoporder` VALUES ('939', '192', '1', '204.00', '哈哈哈哈哈', '1000000712035492', '1', '2017-12-16 14:04:45', '200.00', '4.00', '204.00');
INSERT INTO `shoporder` VALUES ('940', '119', '11', '21.00', '11111', '1000001554835071', '2', '2017-12-16 14:08:23', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('941', '192', '1', '204.00', '哈哈哈哈哈', '1000000452226456', '1', '2017-12-16 14:08:47', '200.00', '4.00', '204.00');
INSERT INTO `shoporder` VALUES ('946', '192', '1', '204.00', '哈哈哈哈哈', '1000001775444708', '1', '2017-12-16 14:14:31', '200.00', '4.00', '204.00');
INSERT INTO `shoporder` VALUES ('950', '192', '1', '204.00', '哈哈哈哈哈', '1000001027698294', '1', '2017-12-16 14:20:03', '200.00', '4.00', '204.00');
INSERT INTO `shoporder` VALUES ('952', '123', '192', '21.00', '阿斯达集合', '1000001923502618', '1', '2017-12-16 14:25:01', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('956', '192', '1', '204.00', '哈哈哈哈哈', '1000000099412966', '1', '2017-12-16 14:41:11', '200.00', '4.00', '204.00');
INSERT INTO `shoporder` VALUES ('962', '192', '110', '165.00', '我呵呵了', '1000001959230798', '1', '2017-12-16 15:05:42', '160.00', '5.00', '165.00');
INSERT INTO `shoporder` VALUES ('963', '192', '110', '165.00', '我呵呵了', '1000001593000117', '1', '2017-12-16 15:06:39', '160.00', '5.00', '165.00');
INSERT INTO `shoporder` VALUES ('964', '192', '110', '165.00', '我呵呵了', '1000002141600828', '1', '2017-12-16 15:11:55', '160.00', '5.00', '165.00');
INSERT INTO `shoporder` VALUES ('965', '192', '110', '165.00', '我呵呵了', '1000000285442136', '2', '2017-12-16 15:13:29', '160.00', '5.00', '165.00');
INSERT INTO `shoporder` VALUES ('966', '119', '11', '21.00', '11111', '1000000719867615', '1', '2017-12-16 17:54:25', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('967', '119', '11', '21.00', '11111', '1000000253315176', '2', '2017-12-16 17:55:18', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('968', '279', '1', '21.00', '发的这个', '1000002122859169', '1', '2017-12-16 18:01:53', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('969', '119', '11', '21.00', '11111', '1000001614660550', '2', '2017-12-16 20:44:22', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('970', '198', '212', '21.00', 'sasd', '1000001580514823', '2', '2017-12-16 22:10:18', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('971', '119', '11', '21.00', '11111', '1000001058987918', '1', '2017-12-16 22:29:45', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('972', '191', '1', '21.00', '111', '1000000557811229', '1', '2017-12-17 11:30:54', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('973', '191', '2', '21.00', '111', '1000001554555253', '2', '2017-12-17 11:55:22', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('974', '192', '111', '21.00', '起晚期群无', '1000000503620537', '1', '2017-12-18 19:12:55', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('975', '192', '111', '21.00', '起晚期群无', '1000000130831793', '1', '2017-12-18 19:12:55', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('976', '119', '11', '21.00', '11111', '1000000182945771', '1', '2017-12-19 22:30:00', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('977', '119', '11', '21.00', '11111', '1000000674379847', '2', '2017-12-19 22:30:21', '16.00', '5.00', '21.00');
INSERT INTO `shoporder` VALUES ('979', '247', '0', '114.00', '123', '1000000601527216', '1', '2017-12-24 14:42:54', '110.00', '4.00', '114.00');
INSERT INTO `shoporder` VALUES ('980', '247', '0', '13.00', '123', '1000000001819280', '1', '2017-12-24 14:43:39', '10.00', '3.00', '13.00');
INSERT INTO `shoporder` VALUES ('981', '247', '0', '13.00', '123', '1000000272818877', '1', '2017-12-24 15:58:42', '10.00', '3.00', '13.00');
INSERT INTO `shoporder` VALUES ('982', '247', '0', '24.00', '123', '1000000778641538', '2', '2017-12-25 20:07:13', '20.00', '4.00', '24.00');
INSERT INTO `shoporder` VALUES ('983', '247', '0', '24.00', '123', '1000000375368340', '1', '2017-12-25 20:09:17', '20.00', '4.00', '24.00');
INSERT INTO `slide_pic` VALUES ('1', 'http://114.215.46.63/Test/images/slid1.png', '2');
INSERT INTO `slide_pic` VALUES ('2', 'http://114.215.46.63/Test/images/slid2.png', '6');
INSERT INTO `slide_pic` VALUES ('3', 'http://114.215.46.63/Test/images/slid3.png', '3');
INSERT INTO `slide_pic` VALUES ('4', 'http://114.215.46.63/Test/images/slid4.png', '5');
INSERT INTO `slide_pic` VALUES ('5', 'http://114.215.46.63/Test/images/slid5.png', '7');
INSERT INTO `user` VALUES ('381', null, '111', null, '99999', null, null, null, null, '2018-05-02 16:14:08', '111111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('382', null, '111', null, 'lpz', null, null, null, null, '2018-05-02 16:14:36', '0', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('383', null, '123', null, '1900', null, null, null, null, '2018-05-03 09:47:35', '123', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('384', null, '123', null, '19001', null, null, null, null, '2018-05-02 17:29:22', '123', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('385', null, '123', null, '19002', null, null, null, null, '2018-05-02 17:30:08', '123', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('386', null, '123', null, '134', null, null, null, null, '2018-05-02 18:13:15', '123', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('387', null, '234', null, '182', null, null, null, null, '2018-05-02 18:18:07', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('388', null, '111111111', null, '111111111', null, null, null, null, '2018-05-02 18:23:34', '111111111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('389', null, '888', null, '888', null, null, null, null, '2018-05-02 18:33:06', '888', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('390', null, '111222333', null, '111222333', null, null, null, null, '2018-05-02 18:37:06', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('391', null, '8889', null, '8889', null, null, null, null, '2018-05-02 18:40:56', '8889', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('392', null, '123', null, '12312345123', null, null, null, null, '2018-05-02 18:41:12', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('393', null, '123', null, '19003', null, null, null, null, '2018-05-03 09:23:48', '123', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('394', null, '444', null, '444', null, null, null, null, '2018-05-03 10:21:20', '1', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('395', null, '111', null, 'lpz111', null, null, null, null, '2018-05-03 10:16:08', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('396', null, '111', null, 'lpz333', null, null, null, null, '2018-05-03 10:36:23', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('397', null, '111', null, 'lpz88812', null, null, null, null, '2018-05-03 10:53:57', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('398', null, '111', null, 'lpz8808', null, null, null, null, '2018-05-03 11:05:05', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('399', null, '111', null, 'lpzccc', null, null, null, null, '2018-05-03 11:07:04', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('400', null, '111', null, '1522778', null, null, null, null, '2018-05-03 11:07:39', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('401', null, '111', null, '1522778', null, null, null, null, '2018-05-03 11:07:39', '999', null, 'F86B95476731D802FF77F69940550928', null, null, null, null);
INSERT INTO `user` VALUES ('402', null, '123', null, '13623307393', null, null, null, null, '2018-05-03 11:22:08', '111111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('404', null, '111', null, 'lpz009', null, null, null, null, '2018-05-03 11:54:34', '999', null, 'B697DBF359677CD20B5358CB080EA102', null, null, null, null);
INSERT INTO `user` VALUES ('405', null, '813923', null, '1008611', null, null, null, null, '2018-05-03 14:13:04', '111111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('406', null, '123', null, '19004', null, null, null, null, '2018-05-03 14:43:15', '123', null, 'D596C847EC09864D53E29D04B1951BEC', null, null, null, null);
INSERT INTO `user` VALUES ('407', null, '111111', null, '1234567890', null, null, null, null, '2018-05-03 14:47:41', '111111', null, '0', null, null, null, null);
INSERT INTO `user` VALUES ('408', null, '111111', null, '987654321000', null, null, null, null, '2018-05-03 14:54:35', '111111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('409', null, '111', null, '369852147', null, null, null, null, '2018-05-03 14:56:55', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('410', null, '111', null, '136', null, null, null, null, '2018-05-03 15:00:24', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('411', null, '123', null, '19005', null, null, null, null, '2018-05-03 15:15:42', '123', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('412', null, '123456', null, '123457', null, null, null, null, '2018-05-03 15:28:51', '123456', null, '3D46340C19F09C20D0F787E404C7DD71', null, null, null, null);
INSERT INTO `user` VALUES ('413', null, '111', null, '170', null, null, null, null, '2018-05-03 16:12:48', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('414', null, '111', null, 'a111', null, null, null, null, '2018-05-03 16:39:10', '111', null, 'sdfadcasca', null, null, null, null);
INSERT INTO `user` VALUES ('415', null, '1', null, '1', null, null, null, null, '2018-05-03 16:47:19', '1', null, '1C822FB69A042F32B2D50654F2972508', null, null, null, null);
INSERT INTO `user` VALUES ('416', null, '111', null, '156', null, null, null, null, '2018-05-03 18:42:52', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('417', null, '111', null, '147', null, null, null, null, '2018-05-04 10:00:07', '1', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('418', null, '111', null, '177', null, null, null, null, '2018-05-04 10:02:48', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('419', null, '111111', null, '12332112300', null, null, null, null, '2018-05-04 10:05:01', '111111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('420', null, '111111', null, '000000000', null, null, null, null, '2018-05-04 10:10:25', '111111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('421', null, '111', null, '12344321', null, null, null, null, '2018-05-04 10:20:26', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('422', null, '111', null, '666', null, null, null, null, '2018-05-04 10:31:06', '', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('423', null, '111', null, '111', null, null, null, null, '2018-05-04 11:04:59', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('424', null, '222', null, '222', null, null, null, null, '2018-05-04 11:10:35', '111111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('425', null, '333', null, '333', null, null, null, null, '2018-05-04 11:18:02', '111', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('426', null, '999', null, '999', null, null, null, null, '2018-05-04 11:37:17', '验证码以获得', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('427', null, '777', null, '777', null, null, null, null, '2018-05-04 11:37:47', '验证码未获得', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('428', null, '13', null, '13', null, null, null, null, '2018-05-04 11:47:50', '验证码以获得', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('429', null, '111', null, '110', null, null, null, null, '2018-05-07 14:36:03', '111', null, null, null, null, null, null);
INSERT INTO `user_product` VALUES ('2', '2', '6', '5');
INSERT INTO `user_product` VALUES ('3', '88', '1', '1');
INSERT INTO `user_product` VALUES ('4', '88', '1', '1');
INSERT INTO `user_product` VALUES ('11', '91', '1', '2');
INSERT INTO `user_product` VALUES ('12', '91', '1', '2');
INSERT INTO `user_product` VALUES ('13', '91', '1', '1');
INSERT INTO `user_product` VALUES ('18', '91', '1', '1');
INSERT INTO `user_product` VALUES ('31', '90', '11', '1');
INSERT INTO `user_product` VALUES ('32', '150', '4', '1');
INSERT INTO `user_product` VALUES ('35', '90', '12', '1');
INSERT INTO `user_product` VALUES ('36', '90', '18', '1');
INSERT INTO `user_product` VALUES ('40', '93', '3', '1');
INSERT INTO `user_product` VALUES ('41', '93', '1', '1');
INSERT INTO `user_product` VALUES ('42', '90', '12', '1');
INSERT INTO `user_product` VALUES ('43', '89', '2', '1');
INSERT INTO `user_product` VALUES ('44', '94', '1', '1');
INSERT INTO `user_product` VALUES ('45', '93', '4', '1');
INSERT INTO `user_product` VALUES ('46', '94', '1', '1');
INSERT INTO `user_product` VALUES ('47', '94', '1', '1');
INSERT INTO `user_product` VALUES ('51', '94', '1', '1');
INSERT INTO `user_product` VALUES ('52', '94', '4', '1');
INSERT INTO `user_product` VALUES ('53', '94', '7', '5');
INSERT INTO `user_product` VALUES ('58', '96', '1', '3');
INSERT INTO `user_product` VALUES ('59', '96', '2', '1');
INSERT INTO `user_product` VALUES ('61', '96', '3', '1');
INSERT INTO `user_product` VALUES ('62', '96', '5', '1');
INSERT INTO `user_product` VALUES ('63', '96', '6', '1');
INSERT INTO `user_product` VALUES ('64', '89', '5', '1');
INSERT INTO `user_product` VALUES ('65', '89', '1', '1');
INSERT INTO `user_product` VALUES ('66', '89', '5', '1');
INSERT INTO `user_product` VALUES ('69', '124', '1', '1');
INSERT INTO `user_product` VALUES ('70', '152', '1', '1');
INSERT INTO `user_product` VALUES ('74', '165', '2', '0');
INSERT INTO `user_product` VALUES ('75', '165', '2', '0');
INSERT INTO `user_product` VALUES ('76', '165', '2', '0');
INSERT INTO `user_product` VALUES ('77', '165', '2', '0');
INSERT INTO `user_product` VALUES ('78', '165', '2', '0');
INSERT INTO `user_product` VALUES ('79', '165', '2', '0');
INSERT INTO `user_product` VALUES ('80', '165', '2', '0');
INSERT INTO `user_product` VALUES ('81', '165', '2', '0');
INSERT INTO `user_product` VALUES ('82', '165', '2', '0');
INSERT INTO `user_product` VALUES ('83', '165', '2', '2');
INSERT INTO `user_product` VALUES ('84', '165', '3', '0');
INSERT INTO `user_product` VALUES ('85', '165', '3', '0');
INSERT INTO `user_product` VALUES ('86', '165', '3', '3');
INSERT INTO `user_product` VALUES ('87', '165', '1', '0');
INSERT INTO `user_product` VALUES ('88', '165', '1', '0');
INSERT INTO `user_product` VALUES ('89', '165', '2', '1');
INSERT INTO `user_product` VALUES ('90', '165', '2', '2');
INSERT INTO `user_product` VALUES ('92', '176', '12', '2');
INSERT INTO `user_product` VALUES ('93', '165', '1', '1');
INSERT INTO `user_product` VALUES ('94', '165', '2', '1');
INSERT INTO `user_product` VALUES ('96', '176', '15', '3');
INSERT INTO `user_product` VALUES ('97', '176', '11', '3');
INSERT INTO `user_product` VALUES ('98', '176', '9', '1');
INSERT INTO `user_product` VALUES ('99', '176', '8', '2');
INSERT INTO `user_product` VALUES ('100', '176', '7', '2');
INSERT INTO `user_product` VALUES ('102', '10', '1', '1');
INSERT INTO `user_product` VALUES ('103', '10', '1', '1');
INSERT INTO `user_product` VALUES ('104', '10', '1', '1');
INSERT INTO `user_product` VALUES ('105', '10', '1', '1');
INSERT INTO `user_product` VALUES ('106', '10', '1', '1');
INSERT INTO `user_product` VALUES ('107', '10', '1', '1');
INSERT INTO `user_product` VALUES ('108', '10', '1', '1');
INSERT INTO `user_product` VALUES ('109', '10', '1', '1');
INSERT INTO `user_product` VALUES ('110', '10', '1', '1');
INSERT INTO `user_product` VALUES ('111', '10', '1', '1');
INSERT INTO `user_product` VALUES ('112', '10', '1', '1');
INSERT INTO `user_product` VALUES ('113', '10', '1', '1');
INSERT INTO `user_product` VALUES ('114', '10', '1', '1');
INSERT INTO `user_product` VALUES ('115', '10', '1', '1');
INSERT INTO `user_product` VALUES ('116', '10', '1', '1');
INSERT INTO `user_product` VALUES ('117', '10', '1', '1');
INSERT INTO `user_product` VALUES ('118', '10', '1', '1');
INSERT INTO `user_product` VALUES ('119', '10', '1', '1');
INSERT INTO `user_product` VALUES ('120', '10', '1', '1');
INSERT INTO `user_product` VALUES ('121', '10', '1', '1');
INSERT INTO `user_product` VALUES ('122', '10', '1', '1');
INSERT INTO `user_product` VALUES ('130', '10', '1', '1');
INSERT INTO `user_product` VALUES ('141', '165', '1', '1');
INSERT INTO `user_product` VALUES ('154', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('156', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('168', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('177', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('186', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('188', '-1', '2', '-1');
INSERT INTO `user_product` VALUES ('189', '-1', '4', '0');
INSERT INTO `user_product` VALUES ('190', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('191', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('192', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('193', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('194', '-1', '12', '1');
INSERT INTO `user_product` VALUES ('196', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('197', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('198', '-1', '5', '1');
INSERT INTO `user_product` VALUES ('199', '-1', '5', '1');
INSERT INTO `user_product` VALUES ('200', '-1', '5', '1');
INSERT INTO `user_product` VALUES ('202', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('205', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('207', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('211', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('212', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('213', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('215', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('216', '-1', '6', '1');
INSERT INTO `user_product` VALUES ('217', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('218', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('219', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('220', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('222', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('237', '192', '1', '3');
INSERT INTO `user_product` VALUES ('238', '176', '2', '1');
INSERT INTO `user_product` VALUES ('241', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('242', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('243', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('246', '192', '1', '3');
INSERT INTO `user_product` VALUES ('248', '-1000', '1', '1');
INSERT INTO `user_product` VALUES ('249', '-1000', '1', '1');
INSERT INTO `user_product` VALUES ('251', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('253', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('254', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('255', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('256', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('257', '10', '1', '1');
INSERT INTO `user_product` VALUES ('259', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('261', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('263', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('264', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('265', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('266', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('270', '-1', '8', '1');
INSERT INTO `user_product` VALUES ('273', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('275', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('276', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('277', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('278', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('281', '-1', '8', '1');
INSERT INTO `user_product` VALUES ('282', '-1', '5', '1');
INSERT INTO `user_product` VALUES ('283', '-1', '5', '1');
INSERT INTO `user_product` VALUES ('285', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('286', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('288', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('290', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('291', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('292', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('298', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('300', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('302', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('304', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('306', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('307', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('308', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('310', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('311', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('312', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('314', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('316', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('318', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('320', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('322', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('324', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('325', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('329', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('333', '-1', '10', '1');
INSERT INTO `user_product` VALUES ('334', '-1', '10', '1');
INSERT INTO `user_product` VALUES ('336', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('337', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('338', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('339', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('340', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('344', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('356', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('357', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('359', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('368', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('369', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('371', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('375', '-1', '6', '1');
INSERT INTO `user_product` VALUES ('376', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('377', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('378', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('379', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('380', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('381', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('382', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('384', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('385', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('387', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('388', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('389', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('390', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('391', '-1', '15', '1');
INSERT INTO `user_product` VALUES ('392', '-1', '15', '1');
INSERT INTO `user_product` VALUES ('393', '-1', '15', '1');
INSERT INTO `user_product` VALUES ('395', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('396', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('397', '-1', '6', '1');
INSERT INTO `user_product` VALUES ('398', '-1', '6', '1');
INSERT INTO `user_product` VALUES ('399', '-1', '6', '1');
INSERT INTO `user_product` VALUES ('400', '-1', '6', '1');
INSERT INTO `user_product` VALUES ('401', '-1', '6', '1');
INSERT INTO `user_product` VALUES ('403', '-1', '10', '1');
INSERT INTO `user_product` VALUES ('404', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('405', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('406', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('407', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('413', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('414', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('415', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('434', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('435', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('437', '-1', '3', '1');
INSERT INTO `user_product` VALUES ('438', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('439', '-1', '4', '1');
INSERT INTO `user_product` VALUES ('440', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('447', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('448', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('449', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('450', '-1', '6', '1');
INSERT INTO `user_product` VALUES ('462', '197', '5', '1');
INSERT INTO `user_product` VALUES ('463', '197', '8', '1');
INSERT INTO `user_product` VALUES ('471', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('472', '197', '2', '1');
INSERT INTO `user_product` VALUES ('478', '21', '2', '1');
INSERT INTO `user_product` VALUES ('502', '21', '2', '1');
INSERT INTO `user_product` VALUES ('504', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('505', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('506', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('507', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('508', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('509', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('515', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('527', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('536', '-1', '2', '0');
INSERT INTO `user_product` VALUES ('557', '174', '4', '1');
INSERT INTO `user_product` VALUES ('562', '208', '4', '1');
INSERT INTO `user_product` VALUES ('563', '208', '3', '1');
INSERT INTO `user_product` VALUES ('564', '208', '9', '1');
INSERT INTO `user_product` VALUES ('567', '208', '8', '1');
INSERT INTO `user_product` VALUES ('571', '90', '20', '1');
INSERT INTO `user_product` VALUES ('572', '90', '20', '1');
INSERT INTO `user_product` VALUES ('573', '208', '1', '17');
INSERT INTO `user_product` VALUES ('574', '208', '1', '17');
INSERT INTO `user_product` VALUES ('575', '208', '1', '17');
INSERT INTO `user_product` VALUES ('576', '-1', '2', '2');
INSERT INTO `user_product` VALUES ('577', '-1', '3', '2');
INSERT INTO `user_product` VALUES ('578', '-1', '4', '2');
INSERT INTO `user_product` VALUES ('579', '-1', '2', '5');
INSERT INTO `user_product` VALUES ('580', '-1', '2', '5');
INSERT INTO `user_product` VALUES ('581', '-1', '2', '5');
INSERT INTO `user_product` VALUES ('583', '220', '16', '14');
INSERT INTO `user_product` VALUES ('584', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('585', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('586', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('587', '-1', '2', '1');
INSERT INTO `user_product` VALUES ('588', '192', '5', '2');
INSERT INTO `user_product` VALUES ('589', '192', '8', '3');
INSERT INTO `user_product` VALUES ('590', '192', '6', '2');
INSERT INTO `user_product` VALUES ('591', '192', '5', '3');
INSERT INTO `user_product` VALUES ('596', '200', '1', '5');
INSERT INTO `user_product` VALUES ('597', '200', '2', '5');
INSERT INTO `user_product` VALUES ('598', '200', '3', '1');
INSERT INTO `user_product` VALUES ('599', '1', '0', '10');
INSERT INTO `user_product` VALUES ('632', '233', '12', '10');
INSERT INTO `user_product` VALUES ('633', '238', '1', '1');
INSERT INTO `user_product` VALUES ('638', '367', '15', '10');
INSERT INTO `user_product` VALUES ('639', '213123', '15', '10');
INSERT INTO `user_product` VALUES ('640', '213123', '15', '10');
INSERT INTO `user_product` VALUES ('641', '213123', '15', '10');
INSERT INTO `user_product` VALUES ('642', '343232', '15', '10');
INSERT INTO `user_product` VALUES ('643', '267', '19', '1');
INSERT INTO `user_product` VALUES ('644', '267', '16', '3');
INSERT INTO `user_product` VALUES ('645', '267', '5', '1');
INSERT INTO `user_product` VALUES ('646', '267', '42', '1');
INSERT INTO `user_product` VALUES ('647', '267', '42', '1');
INSERT INTO `user_product` VALUES ('648', '267', '42', '1');
INSERT INTO `user_product` VALUES ('649', '267', '42', '1');
INSERT INTO `user_product` VALUES ('650', '267', '42', '1');
INSERT INTO `user_product` VALUES ('651', '267', '42', '1');
INSERT INTO `user_product` VALUES ('652', '267', '42', '1');
INSERT INTO `user_product` VALUES ('653', '267', '42', '1');
INSERT INTO `user_product` VALUES ('654', '1', '1', '1');
INSERT INTO `user_product` VALUES ('663', '-1', '5', '1');
INSERT INTO `user_product` VALUES ('664', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('665', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('666', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('667', '-1', '7', '-1');
INSERT INTO `user_product` VALUES ('668', '-1', '7', '-1');
INSERT INTO `user_product` VALUES ('669', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('670', '-1', '9', '7');
INSERT INTO `user_product` VALUES ('671', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('672', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('673', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('674', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('675', '-1', '9', '1');
INSERT INTO `user_product` VALUES ('678', '275', '27', '1');
INSERT INTO `user_product` VALUES ('690', '-1', '8', '1');
INSERT INTO `user_product` VALUES ('691', '-1', '8', '1');
INSERT INTO `user_product` VALUES ('692', '235', '10', '1');
INSERT INTO `user_product` VALUES ('695', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('696', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('697', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('702', '111', '1', '1');
INSERT INTO `user_product` VALUES ('703', '111', '1', '1');
INSERT INTO `user_product` VALUES ('704', '207', '12', '1');
INSERT INTO `user_product` VALUES ('705', '0', '2', '2');
INSERT INTO `user_product` VALUES ('706', '0', '1', '2');
INSERT INTO `user_product` VALUES ('709', '0', '7', '1');
INSERT INTO `user_product` VALUES ('711', '0', '10', '1');
INSERT INTO `user_product` VALUES ('739', '0', '5', '1');
INSERT INTO `user_product` VALUES ('748', '0', '5', '1');
INSERT INTO `user_product` VALUES ('749', '0', '7', '2');
INSERT INTO `user_product` VALUES ('768', '1', '1', '1');
INSERT INTO `user_product` VALUES ('775', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('776', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('777', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('785', '-1', '7', '-1');
INSERT INTO `user_product` VALUES ('786', '-1', '7', '-1');
INSERT INTO `user_product` VALUES ('787', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('791', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('792', '-1', '7', '0');
INSERT INTO `user_product` VALUES ('793', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('802', '279', '9', '1');
INSERT INTO `user_product` VALUES ('808', '198', '84', '1');
INSERT INTO `user_product` VALUES ('809', '198', '7', '6');
INSERT INTO `user_product` VALUES ('810', '0', '2', '1');
INSERT INTO `user_product` VALUES ('812', '233', '100000', '2');
INSERT INTO `user_product` VALUES ('813', '233', '1', '2');
INSERT INTO `user_product` VALUES ('814', '233', '2', '3');
INSERT INTO `user_product` VALUES ('815', '233', '3', '3');
INSERT INTO `user_product` VALUES ('816', '233', '3', '5');
INSERT INTO `user_product` VALUES ('817', '233', '5', '5');
INSERT INTO `user_product` VALUES ('818', '233', '5', '2');
INSERT INTO `user_product` VALUES ('819', '-1', '12', '1');
INSERT INTO `user_product` VALUES ('820', '-1', '12', '1');
INSERT INTO `user_product` VALUES ('821', '-1', '12', '1');
INSERT INTO `user_product` VALUES ('822', '0', '2', '1');
INSERT INTO `user_product` VALUES ('823', '0', '2', '1');
INSERT INTO `user_product` VALUES ('824', '-1', '10', '1');
INSERT INTO `user_product` VALUES ('825', '-1', '10', '1');
INSERT INTO `user_product` VALUES ('826', '-1', '10', '1');
INSERT INTO `user_product` VALUES ('827', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('829', '192', '12', '12');
INSERT INTO `user_product` VALUES ('830', '-1', '0', '1');
INSERT INTO `user_product` VALUES ('831', '341', '1', '2');
INSERT INTO `user_product` VALUES ('835', '341', '9', '4');
INSERT INTO `user_product` VALUES ('836', '341', '12', '3');
INSERT INTO `user_product` VALUES ('837', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('838', '-1', '19', '1');
INSERT INTO `user_product` VALUES ('839', '-1', '5', '1');
INSERT INTO `user_product` VALUES ('841', '247', '7', '1');
INSERT INTO `user_product` VALUES ('842', '-1', '0', '1');
INSERT INTO `user_product` VALUES ('843', '-1', '7', '1');
INSERT INTO `user_product` VALUES ('844', '1', '1', '1');
INSERT INTO `user_product` VALUES ('848', '12', '12', '12');
INSERT INTO `user_product` VALUES ('849', '111', '12', '12');
INSERT INTO `user_product` VALUES ('850', '111', '1', '12');
INSERT INTO `user_product` VALUES ('853', '415', '11', '1');
INSERT INTO `user_product` VALUES ('872', '401', '51', '4');
INSERT INTO `user_product` VALUES ('873', '401', '51', '4');
INSERT INTO `user_product` VALUES ('874', '401', '51', '4');
INSERT INTO `usermsg` VALUES ('222', 'dsfdsfdsfds', '2017-09-06 18:23:04', null);
INSERT INTO `usermsg` VALUES ('1', '你购买的商品已经发货请注意查收', '2017-09-13 12:54:32', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-13 13:00:24', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-13 13:02:56', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-13 13:39:26', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-13 13:59:13', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-13 14:21:17', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-13 14:21:26', null);
INSERT INTO `usermsg` VALUES ('1', '你购买的商品已经发货请注意查收', '2017-09-13 14:34:14', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-13 14:54:35', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-13 14:54:54', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-20 15:03:48', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-20 17:22:09', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-20 17:27:56', null);
INSERT INTO `usermsg` VALUES ('1', '退款成功注意查收', '2017-09-20 17:28:11', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-20 17:31:30', null);
INSERT INTO `usermsg` VALUES ('1', '退款成功注意查收', '2017-09-20 17:31:45', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-20 17:36:56', null);
INSERT INTO `usermsg` VALUES ('1', '退款成功注意查收', '2017-09-20 17:38:58', null);
INSERT INTO `usermsg` VALUES ('1', '拒绝退款请求', '2017-09-20 17:39:18', null);
INSERT INTO `usermsg` VALUES ('1', '你购买的商品已经发货请注意查收', '2017-09-21 18:38:24', null);
INSERT INTO `usermsg` VALUES ('1', '234', '2017-11-27 19:32:43', null);
INSERT INTO `usermsg` VALUES ('1', '234', '2017-11-27 19:33:07', null);
INSERT INTO `usermsg` VALUES ('0', '234', '2017-11-27 19:33:13', null);
