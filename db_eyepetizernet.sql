/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50027
Source Host           : localhost:3306
Source Database       : db_eyepetizernet

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2017-01-10 11:08:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `m_adm`
-- ----------------------------
DROP TABLE IF EXISTS `m_adm`;
CREATE TABLE `m_adm` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '管理员ID，系统自增',
  `account` varchar(50) NOT NULL COMMENT '管理员账号',
  `pass` varchar(100) NOT NULL COMMENT '管理员密码',
  `email` varchar(50) NOT NULL COMMENT '管理员邮箱',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0未审核1正常2管理员锁定',
  `if_system` tinyint(1) unsigned NOT NULL default '0' COMMENT '系统管理员',
  `vpass` varchar(50) NOT NULL COMMENT '二次验证密码，两次MD5加密',
  `fullname` varchar(100) NOT NULL COMMENT '姓名',
  `close_tip` varchar(255) NOT NULL COMMENT '关闭窗口前弹出的提示',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员信息';

-- ----------------------------
-- Records of m_adm
-- ----------------------------
INSERT INTO `m_adm` VALUES ('1', 'admin', '3851247d20d5502a4efae949287a5167:68', 'admin@admin.com', '1', '1', '', '', '');
INSERT INTO `m_adm` VALUES ('2', 'eyepetizer', '3afe054de8d85efc79f4c52806e55bf5:80', 'admin@kaiqi5.com', '1', '0', '', '', '');

-- ----------------------------
-- Table structure for `m_adm_popedom`
-- ----------------------------
DROP TABLE IF EXISTS `m_adm_popedom`;
CREATE TABLE `m_adm_popedom` (
  `id` int(10) unsigned NOT NULL COMMENT '管理员ID',
  `pid` int(10) unsigned NOT NULL default '0' COMMENT '权限ID，对应popedom表里的id',
  PRIMARY KEY  (`id`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员权限分配表';

-- ----------------------------
-- Records of m_adm_popedom
-- ----------------------------
INSERT INTO `m_adm_popedom` VALUES ('2', '2');
INSERT INTO `m_adm_popedom` VALUES ('2', '3');
INSERT INTO `m_adm_popedom` VALUES ('2', '7');
INSERT INTO `m_adm_popedom` VALUES ('2', '8');
INSERT INTO `m_adm_popedom` VALUES ('2', '9');
INSERT INTO `m_adm_popedom` VALUES ('2', '26');
INSERT INTO `m_adm_popedom` VALUES ('2', '37');
INSERT INTO `m_adm_popedom` VALUES ('2', '53');
INSERT INTO `m_adm_popedom` VALUES ('2', '54');
INSERT INTO `m_adm_popedom` VALUES ('2', '81');
INSERT INTO `m_adm_popedom` VALUES ('2', '82');
INSERT INTO `m_adm_popedom` VALUES ('2', '148');
INSERT INTO `m_adm_popedom` VALUES ('2', '149');
INSERT INTO `m_adm_popedom` VALUES ('2', '150');
INSERT INTO `m_adm_popedom` VALUES ('2', '151');
INSERT INTO `m_adm_popedom` VALUES ('2', '152');
INSERT INTO `m_adm_popedom` VALUES ('2', '349');
INSERT INTO `m_adm_popedom` VALUES ('2', '350');
INSERT INTO `m_adm_popedom` VALUES ('2', '351');
INSERT INTO `m_adm_popedom` VALUES ('2', '352');
INSERT INTO `m_adm_popedom` VALUES ('2', '353');
INSERT INTO `m_adm_popedom` VALUES ('2', '704');
INSERT INTO `m_adm_popedom` VALUES ('2', '1307');
INSERT INTO `m_adm_popedom` VALUES ('2', '1348');
INSERT INTO `m_adm_popedom` VALUES ('2', '1349');
INSERT INTO `m_adm_popedom` VALUES ('2', '1350');
INSERT INTO `m_adm_popedom` VALUES ('2', '1351');
INSERT INTO `m_adm_popedom` VALUES ('2', '1352');
INSERT INTO `m_adm_popedom` VALUES ('2', '1353');
INSERT INTO `m_adm_popedom` VALUES ('2', '1354');
INSERT INTO `m_adm_popedom` VALUES ('2', '1355');
INSERT INTO `m_adm_popedom` VALUES ('2', '1356');
INSERT INTO `m_adm_popedom` VALUES ('2', '1357');
INSERT INTO `m_adm_popedom` VALUES ('2', '1358');
INSERT INTO `m_adm_popedom` VALUES ('2', '1359');

-- ----------------------------
-- Table structure for `m_all`
-- ----------------------------
DROP TABLE IF EXISTS `m_all`;
CREATE TABLE `m_all` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '网站ID',
  `identifier` varchar(100) NOT NULL COMMENT '标识串',
  `title` varchar(200) NOT NULL COMMENT '分类名称',
  `ico` varchar(255) NOT NULL COMMENT '图标',
  `is_system` tinyint(1) unsigned NOT NULL default '0' COMMENT '0普通１系统',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否前台调用',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='分类管理';

-- ----------------------------
-- Records of m_all
-- ----------------------------
INSERT INTO `m_all` VALUES ('37', '1', 'share', '分享代码', 'images/ico/share.png', '0', '1');

-- ----------------------------
-- Table structure for `m_attr`
-- ----------------------------
DROP TABLE IF EXISTS `m_attr`;
CREATE TABLE `m_attr` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `site_id` int(10) unsigned NOT NULL default '0' COMMENT '站点ID',
  `title` varchar(100) NOT NULL COMMENT '属性名称',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='产品属性';

-- ----------------------------
-- Records of m_attr
-- ----------------------------
INSERT INTO `m_attr` VALUES ('1', '1', '颜色', '10');
INSERT INTO `m_attr` VALUES ('3', '1', '尺码', '20');
INSERT INTO `m_attr` VALUES ('8', '1', '版本', '30');

-- ----------------------------
-- Table structure for `m_attr_values`
-- ----------------------------
DROP TABLE IF EXISTS `m_attr_values`;
CREATE TABLE `m_attr_values` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `aid` int(10) unsigned NOT NULL default '0' COMMENT '属性ID',
  `title` varchar(200) NOT NULL COMMENT '参数名称',
  `pic` varchar(200) NOT NULL COMMENT '参数图片',
  `taxis` int(10) unsigned NOT NULL default '0' COMMENT '排序',
  `val` varchar(255) NOT NULL COMMENT '值',
  PRIMARY KEY  (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='属性参数管理';

-- ----------------------------
-- Records of m_attr_values
-- ----------------------------
INSERT INTO `m_attr_values` VALUES ('1', '1', '红色', '', '10', 'red');
INSERT INTO `m_attr_values` VALUES ('3', '1', '绿色', '', '20', 'green');
INSERT INTO `m_attr_values` VALUES ('4', '1', '蓝色', '', '30', 'blue');
INSERT INTO `m_attr_values` VALUES ('5', '1', '黑色', '', '40', 'black');
INSERT INTO `m_attr_values` VALUES ('6', '1', '白色', '', '50', 'white');
INSERT INTO `m_attr_values` VALUES ('7', '3', 'M', '', '10', '');
INSERT INTO `m_attr_values` VALUES ('8', '3', 'L', '', '20', '');
INSERT INTO `m_attr_values` VALUES ('9', '3', 'XL', '', '30', '');
INSERT INTO `m_attr_values` VALUES ('10', '3', 'XXL', '', '40', '');
INSERT INTO `m_attr_values` VALUES ('29', '8', '标准版(3G RAM+32G ROM)标配', '', '10', '2499');
INSERT INTO `m_attr_values` VALUES ('30', '8', '标准版(3G RAM+32G ROM)套装', '', '20', '2549');
INSERT INTO `m_attr_values` VALUES ('31', '8', '高配版(3G RAM+64G ROM)标配', '', '30', '3199');
INSERT INTO `m_attr_values` VALUES ('32', '8', '高配版(3G RAM+64G ROM)套装', '', '40', '3249');
INSERT INTO `m_attr_values` VALUES ('33', '1', '金色', '', '60', 'gold');
INSERT INTO `m_attr_values` VALUES ('34', '8', '16G ROM', '', '50', 'MZ16G');
INSERT INTO `m_attr_values` VALUES ('35', '8', '32G ROM', '', '60', 'MZ32G');
INSERT INTO `m_attr_values` VALUES ('36', '1', '灰色', '', '70', 'gray');
INSERT INTO `m_attr_values` VALUES ('37', '8', '64G ROM', '', '70', '64G');

-- ----------------------------
-- Table structure for `m_cart`
-- ----------------------------
DROP TABLE IF EXISTS `m_cart`;
CREATE TABLE `m_cart` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `session_id` varchar(255) NOT NULL COMMENT 'SESSION_ID号',
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT '会员ID号，为0表示游客',
  `addtime` int(10) unsigned NOT NULL default '0' COMMENT '添加时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of m_cart
-- ----------------------------
INSERT INTO `m_cart` VALUES ('1', 'njff9ipd7b07aek9qe3bd8g644', '0', '1445494075');
INSERT INTO `m_cart` VALUES ('16', 'ihcj08bf9m8g0e1e9bp5e3cn14', '0', '1447074126');
INSERT INTO `m_cart` VALUES ('3', 'q0a4vuag4m9jg67h6j9dggfdp0', '0', '1445867009');
INSERT INTO `m_cart` VALUES ('4', '05sl3otfc0u8350lqul95nqva6', '0', '1445920802');
INSERT INTO `m_cart` VALUES ('5', 'grh18m98n2fu88ueiinne3v574', '0', '1445976103');
INSERT INTO `m_cart` VALUES ('6', 'g1lhcgkt0k6kjt7nr573d8pr73', '0', '1446379659');
INSERT INTO `m_cart` VALUES ('7', 'vhgd8av427kg18bk5lcmr7l052', '0', '1446469618');
INSERT INTO `m_cart` VALUES ('8', '9sou2i8ambu3m26regafmhp3m4', '0', '1446531773');
INSERT INTO `m_cart` VALUES ('15', 'tqhj63nh4ms4765rs63diosu96', '0', '1447055260');
INSERT INTO `m_cart` VALUES ('13', 'f0gt8ooa0a3pr5q7lp339dt830', '0', '1446789642');
INSERT INTO `m_cart` VALUES ('17', '655d4nihvpklvsvua49519kpd0', '0', '1447120899');
INSERT INTO `m_cart` VALUES ('21', 'uq7c1pa06c1ikprlr7a5h5h4e4', '0', '1447684466');
INSERT INTO `m_cart` VALUES ('22', 'r556i5l9b8f2n7f3pj6obe4oc7', '0', '1447766194');
INSERT INTO `m_cart` VALUES ('28', 'slqpsio0t18p0gn8859pr4h9l6', '0', '1448070305');
INSERT INTO `m_cart` VALUES ('24', 'f789rmmiutnq6tdjoijj8n0v00', '0', '1447828054');
INSERT INTO `m_cart` VALUES ('29', 'ja3cf5q3rdlg882mr7c40auu33', '0', '1448351456');
INSERT INTO `m_cart` VALUES ('30', 'kqfr85ps2sqsk0ui9cov2fneg5', '0', '1448388044');
INSERT INTO `m_cart` VALUES ('33', '7546f0cf971892efb77fd97811b97d92', '0', '1448811206');
INSERT INTO `m_cart` VALUES ('34', 'd98f814c9fdafe769b2c0eb100041a0f', '0', '1449041996');
INSERT INTO `m_cart` VALUES ('36', '2dc1nufta987gg8uoommc1q2o5', '0', '1449493307');
INSERT INTO `m_cart` VALUES ('37', 'ken9au8srgsebbeq4aatnq6u05', '0', '1449563826');
INSERT INTO `m_cart` VALUES ('38', '84aoq789her493s9e0l17end20', '0', '1449656635');
INSERT INTO `m_cart` VALUES ('41', '1r4pjg6o1modcg1l3ahtsaeo07', '0', '1449739865');
INSERT INTO `m_cart` VALUES ('43', '19l5r8b9rhjr822fkpeme6gag6', '0', '1450602793');
INSERT INTO `m_cart` VALUES ('44', 'ij2t39dq2oblgjvun79a6udd02', '0', '1450972663');
INSERT INTO `m_cart` VALUES ('45', 'k184rcpmp64nt3achvob6ed6e3', '0', '1451280626');
INSERT INTO `m_cart` VALUES ('50', 'ckf9nte2l25vj84jj34eio57m0', '0', '1452560030');
INSERT INTO `m_cart` VALUES ('58', 'nc72auog9j4v4hgchfg9m68m27', '0', '1458112507');
INSERT INTO `m_cart` VALUES ('59', 'fhrqpkvbu90sposp5te50v21f5', '0', '1458112540');
INSERT INTO `m_cart` VALUES ('60', '5t1ida3ge27dno3885ea6t4823', '0', '1458266342');
INSERT INTO `m_cart` VALUES ('61', '1jd0rgp29mnp0eu2lpo6uoljk5', '0', '1458459653');
INSERT INTO `m_cart` VALUES ('62', 'rilmngdhp3k2jhoehohu20s6o3', '0', '1458527466');
INSERT INTO `m_cart` VALUES ('63', 'q9h36s80pdau2igg92d5ap8d41', '0', '1458634173');
INSERT INTO `m_cart` VALUES ('66', 'm1pnl31f052flhn6sil67mn9c3', '0', '1458751074');
INSERT INTO `m_cart` VALUES ('67', 'jpjjcfl0h3buk40qduvaveu092', '0', '1458751299');
INSERT INTO `m_cart` VALUES ('68', '12277931d6c4f8ed9a716cf8ad451089', '0', '1458818698');
INSERT INTO `m_cart` VALUES ('69', '90cf0c9629e3cad7f7938a4d19c2ae19', '0', '1459024302');
INSERT INTO `m_cart` VALUES ('70', '9f57qufa13nvlg37nqmaqodr42', '0', '1459027547');
INSERT INTO `m_cart` VALUES ('71', '07pda6tv7u6ovpeg19l3on03n7', '0', '1459028381');
INSERT INTO `m_cart` VALUES ('72', 'u137ou2kc4c7qhbbko7gsne8g1', '0', '1459074949');
INSERT INTO `m_cart` VALUES ('74', '27rhihclvigfiko2kqqi7t6n96', '0', '1459187789');
INSERT INTO `m_cart` VALUES ('76', 'gjjg4ljpi82nhbrnemvkkske52', '0', '1459189101');
INSERT INTO `m_cart` VALUES ('77', 'pmc2ml0j8167vlkgilm7e9opd1', '0', '1459236184');
INSERT INTO `m_cart` VALUES ('78', 'mnd0fcotllnr0ntcu7t4ou4v66', '0', '1459236417');
INSERT INTO `m_cart` VALUES ('79', 'b87ubnot9r6e542ds3t6m2t6r6', '0', '1459236965');
INSERT INTO `m_cart` VALUES ('87', '6eovjbl123ci6daf8pkjcl0qe0', '0', '1459582984');
INSERT INTO `m_cart` VALUES ('88', 'bh8mr22tmuf2u0qd53rqurpei4', '0', '1459583258');
INSERT INTO `m_cart` VALUES ('89', 'lqd6dvs5ggs64gu6f418flgd61', '0', '1459615652');
INSERT INTO `m_cart` VALUES ('93', 'ecof6b6h07ko22e3vhucoqe4l1', '0', '1459929846');
INSERT INTO `m_cart` VALUES ('91', 'd7f0a9m3ubqbi2peueq6e4chi7', '0', '1459627814');
INSERT INTO `m_cart` VALUES ('99', 'cs6htfhkbff4ug9eovbvv9kbi3', '0', '1461825988');
INSERT INTO `m_cart` VALUES ('96', 'i6aagi35amovsvfticuttu00u2', '0', '1460060080');
INSERT INTO `m_cart` VALUES ('97', '4cofk1d4qgr22efpnnv0gt5kt7', '0', '1461291103');
INSERT INTO `m_cart` VALUES ('100', 'kgg9riptj4ltoinm0rvol04dv6', '0', '1461837549');
INSERT INTO `m_cart` VALUES ('101', 'ujhdnfi5r60v9chh4071otmfq2', '0', '1462375306');
INSERT INTO `m_cart` VALUES ('106', '3s7lm0v87o1oq4k34o3cckeuq1', '0', '1463645096');
INSERT INTO `m_cart` VALUES ('103', '04kise5rk0dpo50eb22japj305', '0', '1463118340');
INSERT INTO `m_cart` VALUES ('104', 'uqtm2dpm9c4cam2n3vkbvnkj52', '0', '1463287707');
INSERT INTO `m_cart` VALUES ('108', '8udiro2k57shogge452aan3fu2', '0', '1464501616');
INSERT INTO `m_cart` VALUES ('110', 'nib7a7pb8ml1rh84341fevvff1', '0', '1465009522');
INSERT INTO `m_cart` VALUES ('115', '2ang2dvnjpjgb449ks2jm9c1c5', '0', '1466948576');
INSERT INTO `m_cart` VALUES ('111', 'ijo0ei1vikmg0k55lrcu8spvg0', '0', '1465122056');
INSERT INTO `m_cart` VALUES ('119', 'o8eb2kvs0t0002r2nhprevs943', '0', '1469627870');
INSERT INTO `m_cart` VALUES ('120', 'vncf4b4m2ao4fe72pf5olqtfp6', '0', '1469678527');
INSERT INTO `m_cart` VALUES ('121', 'vca2kg66b5s2eu7iqstc8sre05', '24', '1469963367');
INSERT INTO `m_cart` VALUES ('127', '6qiduqmh5j5odboa2jdoboggl4', '0', '1471055158');
INSERT INTO `m_cart` VALUES ('135', '1eds0kkftrgnakbt455jo5ia82', '0', '1472959358');
INSERT INTO `m_cart` VALUES ('158', 'lh4ogvbvpde699cq4n42dh5dr1', '0', '1476522945');
INSERT INTO `m_cart` VALUES ('142', 'io77unoc7ahjf3l4prb5i13455', '0', '1473332255');
INSERT INTO `m_cart` VALUES ('154', '2oaofotdp9fdefmflt346kkgn0', '0', '1473747573');
INSERT INTO `m_cart` VALUES ('157', 'ljcb2c0ugmrt9s2ja4b4dfk910', '0', '1475028203');
INSERT INTO `m_cart` VALUES ('156', 'plp2kemekkakgajq1chvutt7g2', '23', '1474273361');

-- ----------------------------
-- Table structure for `m_cart_product`
-- ----------------------------
DROP TABLE IF EXISTS `m_cart_product`;
CREATE TABLE `m_cart_product` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `cart_id` int(10) unsigned NOT NULL default '0' COMMENT '购物车ID号',
  `tid` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `title` varchar(255) NOT NULL COMMENT '产品名称',
  `price` float NOT NULL COMMENT '产品单价',
  `qty` int(11) NOT NULL default '0' COMMENT '产品数量',
  `ext` text NOT NULL COMMENT '扩展属性',
  `weight` float unsigned NOT NULL default '0' COMMENT '重量',
  `volume` float unsigned NOT NULL default '0' COMMENT '体积',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `is_virtual` tinyint(1) unsigned NOT NULL default '0' COMMENT '0实物1虚拟或服务',
  `unit` varchar(50) NOT NULL COMMENT '单位',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='购物车里的产品信息';

-- ----------------------------
-- Records of m_cart_product
-- ----------------------------
INSERT INTO `m_cart_product` VALUES ('1', '1', '1253', '新款男人时尚长袖格子衬衫', '300', '1', '', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('5', '34', '1306', '施华洛世奇（Swarovski） 浅粉蓝色雨滴项链', '179', '3', '10,25', '1', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('11', '77', '1763', 'Apple iPhone 5SE 16G 移动联通电信4G手机', '4088', '1', '47,51', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('12', '78', '1763', 'Apple iPhone 5SE 16G 移动联通电信4G手机', '3288', '1', '48,50', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('13', '78', '1763', 'Apple iPhone 5SE 16G 移动联通电信4G手机', '4088', '1', '48,51', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('18', '121', '1763', 'Apple iPhone 5SE 16G 移动联通电信4G手机', '3288', '1', '47,50', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('19', '121', '1763', 'Apple iPhone 5SE 16G 移动联通电信4G手机', '4088', '1', '48,51', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('20', '121', '1761', '华为 P7 移动4G手机', '1099', '1', '42,45', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('25', '127', '1762', 'vivo Xplay5 全网通4G手机 4GB+128GB 双卡双待', '3698', '1', '46', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('23', '120', '1762', 'vivo Xplay5 全网通4G手机 4GB+128GB 双卡双待', '3698', '2', '46', '0', '0', '', '0', '');
INSERT INTO `m_cart_product` VALUES ('33', '135', '1753', '小米(MI) 小米5 全网通4G手机 双卡双待', '3199', '1', '33,36', '0', '0', 'res/201603/22/6e32b648bf93b490.jpg', '0', '');
INSERT INTO `m_cart_product` VALUES ('39', '156', '1761', '华为 P7 移动4G手机', '999', '1', '42,44', '0', '0', 'res/201603/23/c941c40778124f2c.jpg', '1', '台');
INSERT INTO `m_cart_product` VALUES ('40', '156', '1763', 'Apple iPhone 5SE 16G 移动联通电信4G手机', '4088', '1', '47,51', '0', '0', 'res/201603/23/5b8b8f3f6cfd32b9.jpg', '0', '');

-- ----------------------------
-- Table structure for `m_cate`
-- ----------------------------
DROP TABLE IF EXISTS `m_cate`;
CREATE TABLE `m_cate` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '网站ID',
  `parent_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '父级ID，0为根分类',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0不使用1正常使用',
  `title` varchar(200) NOT NULL COMMENT '分类名称',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '分类排序，值越小越往前靠',
  `tpl_list` varchar(255) NOT NULL COMMENT '列表模板',
  `tpl_content` varchar(255) NOT NULL COMMENT '内容模板',
  `psize` int(10) unsigned NOT NULL default '0' COMMENT '列表每页数量',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` varchar(255) NOT NULL COMMENT 'SEO描述',
  `identifier` varchar(255) NOT NULL COMMENT '分类标识串',
  `tag` varchar(255) NOT NULL COMMENT '自身Tag设置',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `site_id` (`site_id`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=593 DEFAULT CHARSET=utf8 COMMENT='分类管理';

-- ----------------------------
-- Records of m_cate
-- ----------------------------
INSERT INTO `m_cate` VALUES ('588', '1', '0', '1', '音乐', '10', '', '', '0', '', '', '', 'yinle', '');
INSERT INTO `m_cate` VALUES ('589', '1', '588', '1', '流行', '10', '', '', '0', '', '', '', 'liuxing', '');
INSERT INTO `m_cate` VALUES ('590', '1', '588', '1', '抒情', '20', '', '', '0', '', '', '', 'shuqing', '');
INSERT INTO `m_cate` VALUES ('591', '1', '588', '1', '乡村', '30', '', '', '0', '', '', '', 'xiangcun', '');
INSERT INTO `m_cate` VALUES ('592', '1', '588', '1', '民谣', '40', '', '', '0', '', '', '', 'minyao', '');

-- ----------------------------
-- Table structure for `m_currency`
-- ----------------------------
DROP TABLE IF EXISTS `m_currency`;
CREATE TABLE `m_currency` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '货币ID',
  `code` varchar(3) NOT NULL COMMENT '货币标识，仅限三位数的大写字母',
  `val` float(13,8) unsigned NOT NULL COMMENT '货币转化',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序，值越小越往前靠',
  `title` varchar(50) NOT NULL COMMENT '名称',
  `symbol_left` varchar(24) NOT NULL COMMENT '价格左侧',
  `symbol_right` varchar(24) NOT NULL COMMENT '价格右侧',
  `status` tinyint(1) NOT NULL default '0' COMMENT '0不使用1使用',
  `hidden` tinyint(1) unsigned NOT NULL default '0' COMMENT '0不隐藏1隐藏',
  `code_num` varchar(5) NOT NULL COMMENT '币种数值',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='货币管理';

-- ----------------------------
-- Records of m_currency
-- ----------------------------
INSERT INTO `m_currency` VALUES ('1', 'CNY', '6.16989994', '10', '人民币', '', '元', '1', '0', '165');
INSERT INTO `m_currency` VALUES ('2', 'USD', '1.00000000', '20', '美金', 'US$', '', '1', '0', '840');
INSERT INTO `m_currency` VALUES ('3', 'HKD', '7.76350021', '30', '港元', 'HK$', '', '1', '0', '344');
INSERT INTO `m_currency` VALUES ('4', 'EUR', '0.76639998', '40', '欧元', 'EUR', '', '1', '0', '978');
INSERT INTO `m_currency` VALUES ('5', 'GBP', '0.64529997', '50', '英镑', '￡', '', '1', '0', '826');
INSERT INTO `m_currency` VALUES ('7', 'AUD', '1.00000000', '60', '澳币', 'A$', '', '1', '0', '036');

-- ----------------------------
-- Table structure for `m_email`
-- ----------------------------
DROP TABLE IF EXISTS `m_email`;
CREATE TABLE `m_email` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `site_id` int(10) unsigned NOT NULL default '0' COMMENT '网站ID，0表示全部网站',
  `identifier` varchar(255) NOT NULL COMMENT '发送标识',
  `title` varchar(200) NOT NULL COMMENT '邮件主题',
  `content` text NOT NULL COMMENT '邮件内容',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='邮件内容';

-- ----------------------------
-- Records of m_email
-- ----------------------------
INSERT INTO `m_email` VALUES ('4', '1', 'register_code', '获取会员注册资格', '<p>您好，{$email}</p><p>您将注册成为网站【{$config.title} 】会员，请点击下面的地址，进入下一步注册：</p><p><br/></p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p><a href=\"{$link}\" target=\"_blank\">{$link}</a></p><p>（此链接24小时内有效）</p></blockquote><p><br/></p><p><br/></p><p>感谢您对本站的关注，茫茫人海中，能有缘走到一起。</p>');
INSERT INTO `m_email` VALUES ('5', '1', 'getpass', '取回密码操作', '<p>您好，{$user.account}</p><p>您执行了忘记密码操作功能，请点击下面的链接执行下一步：</p><p><br /></p><p><blockquote style=\"margin: 0 0 0 40px; border: none; padding: 0px;\"><p><a href=\"{$link}\" target=\"_blank\">{$link}</a></p></blockquote><br /></p><p>感谢您对本站的支持，有什么问题您在登录后可以咨询我们的客服。</p>');
INSERT INTO `m_email` VALUES ('6', '1', 'project_save', '主题添加通知', '<p>您好，管理员</p><blockquote><p>您的网站（<a href=\"http://{$sys.url}\" target=\"_self\">{$sys.url}</a>）新增了一篇主题，下述是主题的基本信息：<br/></p><p>主题名称：{$rs.title}</p><p>项目类型：{$page_rs.title}</p><p><br/></p><p>请登录网站查询</p></blockquote>');
INSERT INTO `m_email` VALUES ('7', '1', 'order_admin', '网站有新订单【{$order.sn}】', '<p>您好，管理员</p><blockquote><p>您的网站：{$sys.url} 收到一份新的订单，订单号是：{$order.sn}，请登录网站后台进行核验。</p></blockquote>');
INSERT INTO `m_email` VALUES ('8', '1', 'user_order_create', '我们已收到您的订单【{$order.sn}】，欢迎您随时关注订单状态', '<p><strong>尊敬的{$fullname}，您好：</strong><br/></p><p><br/></p><p>感谢您在<span style=\"color: rgb(0, 112, 192);\">{$config.title}</span>（{$sys.url}）购物。</p><p>我们已经收到您的订单<span style=\"color: rgb(0, 112, 192);\">{$order.sn}</span>，建议您选择<span style=\"color: rgb(0, 112, 192);\">在线支付</span>的支付配送方式。订单信息以个人中心里的“<span style=\"color: rgb(0, 112, 192);\"><strong>我的订单</strong></span>”信息为准，您也可以随时进入订单详细进行查看修改等操作。</p><p><br/></p><p><strong>重要说明：</strong></p><p>本邮件仅表明销售方已收到了您提交的订单；销售方收到你的订单信息后，只有在销售方将您的订单中订购的商品从仓库实际直接向您发出时（以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了合同关系；<br/>如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了合同关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品建立了合同关系。<br/>您可以随时登陆您在京东注册的账户，查询您的订单状态。更多内容请见最新的京东网站用户注册协议及京东网站各类购物规则，我们建议您不时地浏览阅读。</p><p><br/></p><p><strong>账户安全提醒：</strong><br/>互联网账号存在被盗风险，为了保障您的账号及资金安全，我们提醒您访问 我的账户- &gt; 修改密码，尽量使用复杂密码，如字母+数字+特殊符号等。</p>');
INSERT INTO `m_email` VALUES ('9', '1', 'sms_order_create', '会员下单成功后，短信通知', '<p>您的订单：{$order.sn} 已成功提交，请您及时完成支付操作。超过24小时未支付订单将会自动删除。感谢您对我们的支持！</p>');
INSERT INTO `m_email` VALUES ('10', '1', 'order_user_paid', '您的订单【{$order.sn}】已支付成功', '<p><strong>尊敬的{$fullname}，您好：</strong></p><p style=\"white-space: normal;\">感谢您在<span style=\"color: rgb(0, 112, 192);\">{$config.title}</span>（{$sys.url}）购物。</p><p style=\"white-space: normal;\">您的订单<span style=\"color: rgb(0, 112, 192);\">{$order.sn}</span>已成功支付，请耐心等候，我们管理员正在核验付款信息。</p><p style=\"white-space: normal;\">订单信息以个人中心里的“<span style=\"color: rgb(0, 112, 192);\"><strong>我的订单</strong></span>”信息为准，您也可以随时进入订单详细进行查看修改等操作。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>重要说明：</strong></p><p style=\"white-space: normal;\">本邮件仅表明销售方已收到了您提交的订单；销售方收到你的订单信息后，只有在销售方将您的订单中订购的商品从仓库实际直接向您发出时（以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了合同关系；<br/>如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了合同关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品建立了合同关系。<br/>您可以随时登陆您在京东注册的账户，查询您的订单状态。更多内容请见最新的京东网站用户注册协议及京东网站各类购物规则，我们建议您不时地浏览阅读。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>账户安全提醒：</strong><br/>互联网账号存在被盗风险，为了保障您的账号及资金安全，我们提醒您访问 我的账户- &gt; 修改密码，尽量使用复杂密码，如字母+数字+特殊符号等。</p><p><br/></p>');
INSERT INTO `m_email` VALUES ('11', '1', 'order_admin_paid', '客户{$user.user}订单【{$orser.sn}】付款成功', '<p>您好，管理员，请登录网站后台 {$sys.url} 核验订单【{$orser.sn}】支付是否成功</p>');
INSERT INTO `m_email` VALUES ('12', '1', 'sms_order_paid', '订单付款成功后的通知', '<p>您的订单：{$order.sn} 已成功付款，我们正在核验中，请耐心等候！</p>');
INSERT INTO `m_email` VALUES ('13', '1', 'order_user_shipped', '您的订单【{$order.sn}】已发货', '<p style=\"white-space: normal;\"><strong>尊敬的{$fullname}，您好：</strong><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\">感谢您在<span style=\"color: rgb(0, 112, 192);\">{$config.title}</span>（{$sys.url}）购物。</p><p style=\"white-space: normal;\">您的订单<span style=\"color: rgb(0, 112, 192);\">{$order.sn}</span>已经发货，请保持您的电话畅通，以方便快递人员能与您取得联系。</p><p style=\"white-space: normal;\">订单信息以个人中心里的“<span style=\"color: rgb(0, 112, 192);\"><strong>我的订单</strong></span>”信息为准，您也可以随时进入订单详细进行查看修改等操作。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>重要说明：</strong></p><p style=\"white-space: normal;\">本邮件仅表明销售方已收到了您提交的订单；销售方收到你的订单信息后，只有在销售方将您的订单中订购的商品从仓库实际直接向您发出时（以商品出库为标志），方视为您与销售方之间就实际直接向您发出的商品建立了合同关系；<br/>如果您在一份订单里订购了多种商品并且销售方只给您发出了部分商品时，您与销售方之间仅就实际直接向您发出的商品建立了合同关系；只有在销售方实际直接向您发出了订单中订购的其他商品时，您和销售方之间就订单中该其他已实际直接向您发出的商品建立了合同关系。<br/>您可以随时登陆您在京东注册的账户，查询您的订单状态。更多内容请见最新的京东网站用户注册协议及京东网站各类购物规则，我们建议您不时地浏览阅读。</p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><strong>账户安全提醒：</strong><br/>互联网账号存在被盗风险，为了保障您的账号及资金安全，我们提醒您访问 我的账户- &gt; 修改密码，尽量使用复杂密码，如字母+数字+特殊符号等。</p><p><br/></p>');
INSERT INTO `m_email` VALUES ('14', '1', 'sms_order_shipped', '订单发货短信通知', '您的订单：{$order.sn} 已经发货，请保持电话畅通，以方便快递人员能与您取得联系。');
INSERT INTO `m_email` VALUES ('15', '1', 'order_admin_recerved', '订单【{$order.sn}】已确认收货', '<p>您好，管理员，客户已对订单【{$order.sn}】执行确认收货操作，请登录后台核验</p>');
INSERT INTO `m_email` VALUES ('16', '1', 'email_code', '【{$config.title}】邮件验证码', '<p>你的验证码是：{$code}，三十分钟内有效，请及时输入</p>');
INSERT INTO `m_email` VALUES ('17', '1', 'sms_code', '短信验证码', '您的验证码：{$code}，请在10分钟内输入');
INSERT INTO `m_email` VALUES ('18', '1', 'sms_paid_admin', '订单成功后管理员', '订单：{$order.sn}，客户已支付成功，请检查');

-- ----------------------------
-- Table structure for `m_express`
-- ----------------------------
DROP TABLE IF EXISTS `m_express`;
CREATE TABLE `m_express` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `site_id` int(11) NOT NULL default '0' COMMENT '站点ID，为0所有站点使用',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `company` varchar(255) NOT NULL COMMENT '公司名称',
  `homepage` varchar(255) NOT NULL COMMENT '官方网站',
  `code` varchar(100) NOT NULL COMMENT '接口标识，用于读取logistics文件夹下的接口文件',
  `rate` int(11) NOT NULL default '6' COMMENT '查询频率，用于减少请求',
  `ext` text NOT NULL COMMENT '扩展数据保存',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='快递平台管理';

-- ----------------------------
-- Records of m_express
-- ----------------------------
INSERT INTO `m_express` VALUES ('1', '1', '宅急送-官方', '北京宅急送快运股份有限公司', 'http://www.zjs.com.cn/', 'zjs', '4', 'a:3:{s:18:\"logisticProviderID\";s:14:\"NanFang_LianHe\";s:7:\"keyseed\";s:36:\"86AF9251-F3A4-40AF-B9CC-7E509B303F9A\";s:12:\"fixed_string\";s:13:\"z宅J急S送g\";}');
INSERT INTO `m_express` VALUES ('4', '1', '顺丰速运', '顺丰速运(集团)有限公司', 'http://www.sf-express.com/', 'showapi', '4', 'a:3:{s:6:\"app_id\";s:4:\"4485\";s:10:\"app_secret\";s:32:\"95a43a307f51416980ff86cae4c70f4e\";s:7:\"app_com\";s:8:\"shunfeng\";}');

-- ----------------------------
-- Table structure for `m_ext`
-- ----------------------------
DROP TABLE IF EXISTS `m_ext`;
CREATE TABLE `m_ext` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '字段ID，自增',
  `module` varchar(100) NOT NULL COMMENT '模块',
  `title` varchar(255) NOT NULL COMMENT '字段名称',
  `identifier` varchar(50) NOT NULL COMMENT '字段标识串',
  `field_type` varchar(255) NOT NULL default '200' COMMENT '字段存储类型',
  `note` varchar(255) NOT NULL COMMENT '字段内容备注',
  `form_type` varchar(100) NOT NULL COMMENT '表单类型',
  `form_style` varchar(255) NOT NULL COMMENT '表单CSS',
  `format` varchar(100) NOT NULL COMMENT '格式化方式',
  `content` text NOT NULL COMMENT '默认值',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  `ext` text NOT NULL COMMENT '扩展内容',
  PRIMARY KEY  (`id`),
  KEY `module` (`module`)
) ENGINE=MyISAM AUTO_INCREMENT=816 DEFAULT CHARSET=utf8 COMMENT='字段管理器';

-- ----------------------------
-- Records of m_ext
-- ----------------------------
INSERT INTO `m_ext` VALUES ('227', 'project-87', '通栏图片', 'banner', 'varchar', '', 'upload', '', 'safe', '', '40', 'a:3:{s:11:\"upload_type\";s:7:\"picture\";s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";}');
INSERT INTO `m_ext` VALUES ('231', 'all-37', '百度分享代码', 'baidu', 'longtext', '', 'code_editor', '', 'html_js', '', '10', 'a:2:{s:5:\"width\";s:3:\"800\";s:6:\"height\";s:3:\"300\";}');
INSERT INTO `m_ext` VALUES ('238', 'cate-204', '摘要', 'note', 'longtext', '简要文字描述', 'textarea', '', 'safe', '', '20', 'a:2:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:2:\"80\";}');
INSERT INTO `m_ext` VALUES ('240', 'cate-205', '摘要', 'note', 'longtext', '简要文字描述', 'textarea', '', 'safe', '', '20', 'a:2:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:2:\"80\";}');
INSERT INTO `m_ext` VALUES ('241', 'cate-206', '摘要', 'note', 'longtext', '简要文字描述', 'textarea', '', 'safe', '', '20', 'a:2:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:2:\"80\";}');
INSERT INTO `m_ext` VALUES ('259', 'cate-207', '摘要', 'note', 'longtext', '简要文字描述', 'textarea', '', 'safe', '', '20', 'a:2:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:2:\"80\";}');
INSERT INTO `m_ext` VALUES ('276', 'cate-70', '英文标题', 'entitle', 'varchar', '设置与主题名称相对应的英文标题', 'text', '', 'safe', '', '255', 'a:4:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"500\";s:15:\"ext_quick_words\";b:0;s:14:\"ext_quick_type\";b:0;}');
INSERT INTO `m_ext` VALUES ('815', 'cate-582', '缩略图', 'thumb', 'varchar', '', 'upload', '', 'safe', '', '30', 'a:3:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"1\";}');

-- ----------------------------
-- Table structure for `m_extc`
-- ----------------------------
DROP TABLE IF EXISTS `m_extc`;
CREATE TABLE `m_extc` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT '内容值ID，对应ext表中的id',
  `content` longtext NOT NULL COMMENT '内容文本',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='扩展字段内容维护';

-- ----------------------------
-- Records of m_extc
-- ----------------------------
INSERT INTO `m_extc` VALUES ('227', '1006');
INSERT INTO `m_extc` VALUES ('231', '<div class=\"bdsharebuttonbox\"><a href=\"#\" class=\"bds_more\" data-cmd=\"more\">分享到：</a><a href=\"#\" class=\"bds_qzone\" data-cmd=\"qzone\" title=\"分享到QQ空间\">QQ空间</a><a href=\"#\" class=\"bds_tsina\" data-cmd=\"tsina\" title=\"分享到新浪微博\">新浪微博</a><a href=\"#\" class=\"bds_tqq\" data-cmd=\"tqq\" title=\"分享到腾讯微博\">腾讯微博</a><a href=\"#\" class=\"bds_weixin\" data-cmd=\"weixin\" title=\"分享到微信\">微信</a></div>\r\n<script>window._bd_share_config={\"common\":{\"bdSnsKey\":{},\"bdText\":\"\",\"bdMini\":\"2\",\"bdMiniList\":false,\"bdPic\":\"\",\"bdStyle\":\"1\",\"bdSize\":\"32\"},\"share\":{\"bdSize\":16}};with(document)0[(getElementsByTagName(\'head\')[0]||body).appendChild(createElement(\'script\')).src=\'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=\'+~(-new Date()/36e5)];</script>');

-- ----------------------------
-- Table structure for `m_fav`
-- ----------------------------
DROP TABLE IF EXISTS `m_fav`;
CREATE TABLE `m_fav` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `user_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `thumb` varchar(255) NOT NULL COMMENT '缩略图',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `note` varchar(255) NOT NULL COMMENT '摘要',
  `addtime` int(10) unsigned NOT NULL default '0' COMMENT '添加时间',
  `lid` int(11) NOT NULL COMMENT '关联主题',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员收藏夹';

-- ----------------------------
-- Records of m_fav
-- ----------------------------
INSERT INTO `m_fav` VALUES ('8', '23', '', 'MySQL出错代码', '1005：创建表失败1006：创建数据库失败1007：数据库已存在，创建数据库失败1008：数据库不存在，删除数据库失败1009：不能删除数据库文件导致删除数据库失败1010：不能删除…', '1459322370', '1370');

-- ----------------------------
-- Table structure for `m_fields`
-- ----------------------------
DROP TABLE IF EXISTS `m_fields`;
CREATE TABLE `m_fields` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '字段ID，自增',
  `title` varchar(255) NOT NULL COMMENT '字段名称',
  `identifier` varchar(50) NOT NULL COMMENT '字段标识串',
  `field_type` varchar(255) NOT NULL default '200' COMMENT '字段存储类型',
  `note` varchar(255) NOT NULL COMMENT '字段内容备注',
  `form_type` varchar(100) NOT NULL COMMENT '表单类型',
  `form_style` varchar(255) NOT NULL COMMENT '表单CSS',
  `format` varchar(100) NOT NULL COMMENT '格式化方式',
  `content` varchar(100) NOT NULL COMMENT '默认值',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  `ext` text NOT NULL COMMENT '扩展内容',
  `area` text NOT NULL COMMENT '使用范围，多个应用范围用英文逗号隔开',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8 COMMENT='字段管理器';

-- ----------------------------
-- Records of m_fields
-- ----------------------------
INSERT INTO `m_fields` VALUES ('6', '内容', 'content', 'longtext', '', 'editor', '', 'html', '', '255', 'a:11:{s:5:\"width\";s:3:\"950\";s:6:\"height\";s:3:\"360\";s:7:\"is_code\";s:0:\"\";s:9:\"btn_image\";s:1:\"1\";s:9:\"btn_video\";s:1:\"1\";s:8:\"btn_file\";s:1:\"1\";s:8:\"btn_page\";s:0:\"\";s:8:\"btn_info\";s:0:\"\";s:7:\"is_read\";s:0:\"\";s:5:\"etype\";s:4:\"full\";s:7:\"btn_map\";s:0:\"\";}', 'all,cate,module,project,user,usergroup');
INSERT INTO `m_fields` VALUES ('7', '图片', 'pictures', 'varchar', '支持多图', 'upload', '', 'safe', '', '50', 'a:3:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"1\";s:11:\"upload_auto\";s:1:\"1\";}', 'all,cate,module,project,user');
INSERT INTO `m_fields` VALUES ('8', '缩略图', 'thumb', 'varchar', '', 'upload', '', 'safe', '', '30', 'a:3:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"1\";}', 'all,cate,module,project,user,usergroup,cart,order,pay');
INSERT INTO `m_fields` VALUES ('128', '附件', 'dfiles', 'varchar', '支持多个附件', 'upload', '', '', '', '255', 'a:3:{s:7:\"cate_id\";s:2:\"11\";s:11:\"is_multiple\";s:1:\"1\";s:11:\"upload_auto\";s:1:\"1\";}', 'all,cate,module,project,user,usergroup');
INSERT INTO `m_fields` VALUES ('11', '链接', 'link', 'longtext', '手动指定外部链接时，伪静态链接可以留空', 'url', '', 'safe', '', '90', 'a:1:{s:5:\"width\";s:3:\"500\";}', 'all,cate,module,project,user');
INSERT INTO `m_fields` VALUES ('12', '摘要', 'note', 'longtext', '简要文字描述', 'textarea', '', 'safe', '', '20', 'a:2:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:2:\"80\";}', 'all,cate,module,project');
INSERT INTO `m_fields` VALUES ('13', '性别', 'gender', 'varchar', '', 'radio', '', 'safe', '女', '120', 'a:3:{s:11:\"option_list\";b:0;s:9:\"put_order\";s:1:\"0\";s:10:\"ext_select\";s:8:\"男\r\n女\";}', 'all,cate,module,project,user');
INSERT INTO `m_fields` VALUES ('14', '邮箱', 'email', 'varchar', '', 'text', '', 'safe', '', '130', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";b:0;}', 'all,cate,module,project,user');
INSERT INTO `m_fields` VALUES ('37', '链接方式', 'target', 'varchar', '设置是否在新窗口打开', 'radio', '', 'safe', '_self', '100', 'a:1:{s:11:\"option_list\";s:5:\"opt:6\";}', 'cate,module,project');
INSERT INTO `m_fields` VALUES ('30', '姓名', 'fullname', 'varchar', '', 'text', '', 'safe', '', '10', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', 'all,cate,module,project,user');
INSERT INTO `m_fields` VALUES ('31', '通栏图片', 'banner', 'varchar', '', 'upload', '', 'safe', '', '40', 'a:3:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"1\";}', 'all,cate,module,project');
INSERT INTO `m_fields` VALUES ('127', '附件', 'dfile', 'varchar', '', 'upload', '', '', '', '255', 'a:3:{s:7:\"cate_id\";s:2:\"11\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"1\";}', 'all,cate,module,project,user,usergroup,cart,order,pay');
INSERT INTO `m_fields` VALUES ('35', '文档', 'doc', 'varchar', '支持在线办公室的文档', 'upload', '', 'safe', '', '80', 'a:3:{s:11:\"upload_type\";s:8:\"document\";s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"1\";}', 'all,cate,module,project');
INSERT INTO `m_fields` VALUES ('36', '视频', 'video', 'varchar', '支持并推荐您使用FlV格式视频', 'upload', '', 'int', '', '110', 'a:3:{s:7:\"cate_id\";s:2:\"16\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"0\";}', 'all,cate,module,project,user,usergroup,cart,order,pay');
INSERT INTO `m_fields` VALUES ('60', '客服QQ', 'qq', 'varchar', '', 'text', '', 'safe', '', '150', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', 'all,cate,module,project,user');
INSERT INTO `m_fields` VALUES ('116', '广告内容', 'ad', 'longtext', '', 'editor', '', 'html_js', '', '255', 'a:12:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"100\";s:7:\"is_code\";i:1;s:9:\"btn_image\";i:1;s:9:\"btn_video\";i:1;s:8:\"btn_file\";b:0;s:8:\"btn_page\";b:0;s:8:\"btn_info\";b:0;s:7:\"is_read\";b:0;s:5:\"etype\";s:6:\"simple\";s:7:\"btn_tpl\";b:0;s:7:\"btn_map\";b:0;}', 'all,cate,module,project');
INSERT INTO `m_fields` VALUES ('75', '联系地址', 'address', 'varchar', '', 'text', '', 'safe', '', '79', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"500\";}', 'all,module,user');
INSERT INTO `m_fields` VALUES ('76', '联系电话', 'tel', 'varchar', '', 'text', '', 'safe', '', '89', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', 'all,module,project,user');
INSERT INTO `m_fields` VALUES ('77', '邮编', 'zipcode', 'varchar', '请填写六位数字的邮编号码', 'text', '', 'safe', '', '30', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', 'all,module,cate');
INSERT INTO `m_fields` VALUES ('79', 'LOGO', 'logo', 'varchar', '网站LOGO，规格：88x31', 'text', '', 'safe', '', '160', 'a:2:{s:8:\"form_btn\";s:5:\"image\";s:5:\"width\";s:3:\"500\";}', 'all,cate,module,project');
INSERT INTO `m_fields` VALUES ('80', '图片', 'pic', 'varchar', '', 'text', '', 'safe', '', '255', 'a:2:{s:8:\"form_btn\";s:5:\"image\";s:5:\"width\";s:3:\"500\";}', 'all,cate,module,project,user');
INSERT INTO `m_fields` VALUES ('81', '统计', 'statjs', 'varchar', '', 'code_editor', '', 'html_js', '', '255', 'a:2:{s:5:\"width\";s:3:\"500\";s:6:\"height\";s:2:\"80\";}', 'all');
INSERT INTO `m_fields` VALUES ('82', '备案号', 'cert', 'varchar', '', 'text', '', 'safe', '', '255', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', 'all');
INSERT INTO `m_fields` VALUES ('95', '发货时间', 'sendtime', 'varchar', '设置发货时间', 'text', '', 'time', '', '255', 'a:2:{s:8:\"form_btn\";s:4:\"date\";s:5:\"width\";s:3:\"300\";}', 'module');
INSERT INTO `m_fields` VALUES ('96', '企业名称', 'company', 'varchar', '', 'text', '', 'safe', '', '255', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"500\";}', 'all,module,project,user');
INSERT INTO `m_fields` VALUES ('106', '管理员回复', 'adm_reply', 'longtext', '', 'editor', '', 'html', '', '255', 'a:12:{s:5:\"width\";s:3:\"800\";s:6:\"height\";s:3:\"180\";s:7:\"is_code\";b:0;s:9:\"btn_image\";i:1;s:9:\"btn_video\";i:1;s:8:\"btn_file\";i:1;s:8:\"btn_page\";b:0;s:8:\"btn_info\";b:0;s:7:\"is_read\";b:0;s:5:\"etype\";s:6:\"simple\";s:7:\"btn_tpl\";b:0;s:7:\"btn_map\";b:0;}', 'module');
INSERT INTO `m_fields` VALUES ('112', '赞', 'good', 'varchar', '设置点赞次数', 'text', '', 'int', '', '20', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"100\";}', 'module');
INSERT INTO `m_fields` VALUES ('113', '省市', 'province_city', 'longtext', '', 'select', '', 'safe', '', '255', 'a:4:{s:11:\"option_list\";s:5:\"opt:2\";s:11:\"is_multiple\";s:1:\"0\";s:5:\"width\";b:0;s:10:\"ext_select\";b:0;}', 'all,cate,module,project,user,usergroup');
INSERT INTO `m_fields` VALUES ('114', '手机号', 'mobile', 'varchar', '', 'text', '', 'safe', '', '255', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', 'all,cate,module,project,user,usergroup');
INSERT INTO `m_fields` VALUES ('117', '规格参数', 'spec', 'longtext', '', 'param', '', '', '', '255', 'a:2:{s:6:\"p_name\";s:30:\"名称\r\n型号\r\n流量\r\n大小\";s:6:\"p_type\";s:1:\"1\";}', 'module');
INSERT INTO `m_fields` VALUES ('118', '产品属性', 'spec_single', 'longtext', '', 'param', '', '', '', '255', 'a:2:{s:6:\"p_name\";s:119:\"型号\r\n推荐用途\r\n平台\r\n显卡类型\r\n网卡\r\n类型\r\n速度\r\n核心数\r\n二级缓存\r\n显示芯片\r\n显存容量\";s:6:\"p_type\";s:1:\"0\";}', 'module');
INSERT INTO `m_fields` VALUES ('119', '页脚版权', 'copyright', 'longtext', '', 'editor', '', 'html', '', '255', 'a:12:{s:5:\"width\";s:3:\"800\";s:6:\"height\";s:3:\"100\";s:7:\"is_code\";b:0;s:9:\"btn_image\";s:1:\"1\";s:9:\"btn_video\";b:0;s:8:\"btn_file\";b:0;s:8:\"btn_page\";b:0;s:8:\"btn_info\";b:0;s:7:\"is_read\";b:0;s:5:\"etype\";s:6:\"simple\";s:7:\"btn_tpl\";b:0;s:7:\"btn_map\";b:0;}', 'all,module');
INSERT INTO `m_fields` VALUES ('120', '英文标题', 'entitle', 'varchar', '设置与主题名称相对应的英文标题', 'text', '', 'safe', '', '255', 'a:4:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"500\";s:15:\"ext_quick_words\";b:0;s:14:\"ext_quick_type\";b:0;}', 'all,cate,module,project,user,usergroup,cart,order,pay');
INSERT INTO `m_fields` VALUES ('129', '二维码', 'qrcode', 'varchar', '上传二维码图片', 'upload', '', '', '', '255', 'a:3:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"1\";}', 'all,cate,module,project,user');
INSERT INTO `m_fields` VALUES ('130', '百度分享代码', 'bdshare', 'longtext', '放置百度分享代码框', 'code_editor', '', 'html_js', '', '255', 'a:2:{s:5:\"width\";s:3:\"800\";s:6:\"height\";s:3:\"300\";}', 'all,cate,module,project,user,usergroup,cart,order,pay');
INSERT INTO `m_fields` VALUES ('122', '子标题', 'subtitle', 'varchar', '', 'text', '', '', '', '20', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', 'all,cate,module,project,user,usergroup,cart,order,pay');
INSERT INTO `m_fields` VALUES ('124', '自定义链接', 'linkurl', 'varchar', '请填写链接地址，外链请输入http://或https://', 'text', '', 'safe', '', '255', 'a:4:{s:8:\"form_btn\";s:3:\"url\";s:5:\"width\";s:3:\"500\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";}', 'all,cate,module,project,user,usergroup,cart,order,pay');
INSERT INTO `m_fields` VALUES ('125', '背景颜色', 'bgcolor', 'varchar', '实现在不支持CSS3的情况与背景融合', 'text', '', '', 'FFFFFF', '255', 'a:4:{s:8:\"form_btn\";s:5:\"color\";s:5:\"width\";s:0:\"\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";}', 'all,cate,module,project,user,usergroup,cart,order,pay');
INSERT INTO `m_fields` VALUES ('126', '省市县', 'pca', 'varchar', '省市县信息调用', 'pca', '', '', '', '255', 'a:1:{s:8:\"savetype\";s:1:\"0\";}', 'module');
INSERT INTO `m_fields` VALUES ('131', '规格参数', 'parameter', 'longtext', '', 'param', '', 'safe', '', '255', 'a:3:{s:6:\"p_name\";s:108:\"网络制式\r\n机身内存\r\n分辨率\r\n摄像头\r\n无线和网络\r\n机身尺寸（mm）\r\n机身重量（g）\";s:6:\"p_type\";s:1:\"0\";s:7:\"p_width\";s:0:\"\";}', 'module');
INSERT INTO `m_fields` VALUES ('132', '包装清单', 'package', 'longtext', '', 'textarea', '', '', '', '255', 'a:2:{s:5:\"width\";s:3:\"500\";s:6:\"height\";s:3:\"100\";}', 'module');
INSERT INTO `m_fields` VALUES ('133', '手机版标题', 'm_title', 'varchar', '标题较短，请根据实际情况使用', 'text', '', '', '', '255', 'a:4:{s:8:\"form_btn\";s:0:\"\";s:5:\"width\";s:3:\"500\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";}', 'all,cate,module,project,user,usergroup,cart,order,pay');

-- ----------------------------
-- Table structure for `m_freight`
-- ----------------------------
DROP TABLE IF EXISTS `m_freight`;
CREATE TABLE `m_freight` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '运费模板ID，自增ID',
  `site_id` int(10) unsigned NOT NULL default '0' COMMENT '网站ID',
  `title` varchar(100) NOT NULL COMMENT '模板名称，便于后台管理',
  `type` enum('weight','volume','number','fixed') NOT NULL default 'weight' COMMENT 'weight重量volume体积number数量fixed固定值',
  `currency_id` int(11) NOT NULL default '0' COMMENT '货币ID',
  `taxis` int(11) NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='物流运费模板管理';

-- ----------------------------
-- Records of m_freight
-- ----------------------------
INSERT INTO `m_freight` VALUES ('1', '1', '计重运费模板', 'weight', '1', '10');
INSERT INTO `m_freight` VALUES ('2', '1', '体积运费模板', 'volume', '1', '20');
INSERT INTO `m_freight` VALUES ('3', '1', '基于数量的运费模板', 'number', '1', '30');
INSERT INTO `m_freight` VALUES ('4', '1', '固定运费模板', 'fixed', '1', '40');

-- ----------------------------
-- Table structure for `m_freight_price`
-- ----------------------------
DROP TABLE IF EXISTS `m_freight_price`;
CREATE TABLE `m_freight_price` (
  `zid` int(10) unsigned NOT NULL default '0' COMMENT '区域ID',
  `unit_val` varchar(20) NOT NULL COMMENT '单位量，如0.5kg，或1个或1立方米，取决于系统设定',
  `price` varchar(50) NOT NULL default '0' COMMENT '运费价格，最低为0，不能为负数',
  PRIMARY KEY  (`zid`,`unit_val`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单位体积价格';

-- ----------------------------
-- Records of m_freight_price
-- ----------------------------
INSERT INTO `m_freight_price` VALUES ('1', '1', '10');
INSERT INTO `m_freight_price` VALUES ('2', '1', '10');
INSERT INTO `m_freight_price` VALUES ('3', '1', '10');
INSERT INTO `m_freight_price` VALUES ('4', '1', '10');
INSERT INTO `m_freight_price` VALUES ('5', '1', '11');
INSERT INTO `m_freight_price` VALUES ('6', '1', '15');
INSERT INTO `m_freight_price` VALUES ('7', '1', '11');
INSERT INTO `m_freight_price` VALUES ('8', '1', '30');
INSERT INTO `m_freight_price` VALUES ('1', '2', '17');
INSERT INTO `m_freight_price` VALUES ('2', '2', '17');
INSERT INTO `m_freight_price` VALUES ('3', '2', '24');
INSERT INTO `m_freight_price` VALUES ('4', '2', '24');
INSERT INTO `m_freight_price` VALUES ('5', '2', '22');
INSERT INTO `m_freight_price` VALUES ('6', '2', '27');
INSERT INTO `m_freight_price` VALUES ('7', '2', '22');
INSERT INTO `m_freight_price` VALUES ('8', '2', '30');
INSERT INTO `m_freight_price` VALUES ('8', '3', '10*N');
INSERT INTO `m_freight_price` VALUES ('7', '3', '10*N');
INSERT INTO `m_freight_price` VALUES ('6', '3', '10*N');
INSERT INTO `m_freight_price` VALUES ('5', '3', '10*N');
INSERT INTO `m_freight_price` VALUES ('4', '3', '10*N');
INSERT INTO `m_freight_price` VALUES ('3', '3', '10*N');
INSERT INTO `m_freight_price` VALUES ('2', '3', '8*N');
INSERT INTO `m_freight_price` VALUES ('1', '3', '7*N');
INSERT INTO `m_freight_price` VALUES ('10', '0.5', '10');
INSERT INTO `m_freight_price` VALUES ('11', '0.5', '20');
INSERT INTO `m_freight_price` VALUES ('10', '1', '12*N');
INSERT INTO `m_freight_price` VALUES ('11', '1', '35');
INSERT INTO `m_freight_price` VALUES ('10', '1.5', '13*N');
INSERT INTO `m_freight_price` VALUES ('11', '1.5', '45');
INSERT INTO `m_freight_price` VALUES ('12', 'fixed', '10');
INSERT INTO `m_freight_price` VALUES ('24', 'fixed', '20');

-- ----------------------------
-- Table structure for `m_freight_zone`
-- ----------------------------
DROP TABLE IF EXISTS `m_freight_zone`;
CREATE TABLE `m_freight_zone` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `fid` int(10) unsigned NOT NULL default '0' COMMENT '运费模板ID',
  `title` varchar(100) NOT NULL COMMENT '名称',
  `taxis` int(10) unsigned NOT NULL default '0' COMMENT '排序',
  `note` varchar(255) NOT NULL COMMENT '简单说明该区域信息',
  `area` longtext NOT NULL COMMENT '省份+城市',
  PRIMARY KEY  (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='运费模板区域设置';

-- ----------------------------
-- Records of m_freight_zone
-- ----------------------------
INSERT INTO `m_freight_zone` VALUES ('1', '3', '华东', '10', '包括省市有上海，江苏，浙江，安徽，江西', 'a:5:{s:9:\"上海市\";a:1:{s:9:\"上海市\";b:1;}s:9:\"江苏省\";a:13:{s:9:\"南京市\";b:1;s:9:\"无锡市\";b:1;s:9:\"徐州市\";b:1;s:9:\"常州市\";b:1;s:9:\"苏州市\";b:1;s:9:\"南通市\";b:1;s:12:\"连云港市\";b:1;s:9:\"淮安市\";b:1;s:9:\"盐城市\";b:1;s:9:\"扬州市\";b:1;s:9:\"镇江市\";b:1;s:9:\"泰州市\";b:1;s:9:\"宿迁市\";b:1;}s:9:\"浙江省\";a:11:{s:9:\"杭州市\";b:1;s:9:\"宁波市\";b:1;s:9:\"温州市\";b:1;s:9:\"嘉兴市\";b:1;s:9:\"湖州市\";b:1;s:9:\"绍兴市\";b:1;s:9:\"金华市\";b:1;s:9:\"衢州市\";b:1;s:9:\"舟山市\";b:1;s:9:\"台州市\";b:1;s:9:\"丽水市\";b:1;}s:9:\"安徽省\";a:17:{s:9:\"合肥市\";b:1;s:9:\"芜湖市\";b:1;s:9:\"蚌埠市\";b:1;s:9:\"淮南市\";b:1;s:12:\"马鞍山市\";b:1;s:9:\"淮北市\";b:1;s:9:\"铜陵市\";b:1;s:9:\"安庆市\";b:1;s:9:\"黄山市\";b:1;s:9:\"滁州市\";b:1;s:9:\"阜阳市\";b:1;s:9:\"宿州市\";b:1;s:9:\"巢湖市\";b:1;s:9:\"六安市\";b:1;s:9:\"亳州市\";b:1;s:9:\"池州市\";b:1;s:9:\"宣城市\";b:1;}s:9:\"江西省\";a:11:{s:9:\"南昌市\";b:1;s:12:\"景德镇市\";b:1;s:9:\"萍乡市\";b:1;s:9:\"九江市\";b:1;s:9:\"新余市\";b:1;s:9:\"鹰潭市\";b:1;s:9:\"赣州市\";b:1;s:9:\"吉安市\";b:1;s:9:\"宜春市\";b:1;s:9:\"抚州市\";b:1;s:9:\"上饶市\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('2', '3', '华北', '20', '包含北京，天津，山西，山东，河北，内蒙古', 'a:6:{s:9:\"北京市\";a:1:{s:9:\"北京市\";b:1;}s:9:\"天津市\";a:1:{s:9:\"天津市\";b:1;}s:9:\"河北省\";a:11:{s:12:\"石家庄市\";b:1;s:9:\"唐山市\";b:1;s:12:\"秦皇岛市\";b:1;s:9:\"邯郸市\";b:1;s:9:\"邢台市\";b:1;s:9:\"保定市\";b:1;s:12:\"张家口市\";b:1;s:9:\"承德市\";b:1;s:9:\"沧州市\";b:1;s:9:\"廊坊市\";b:1;s:9:\"衡水市\";b:1;}s:9:\"山西省\";a:11:{s:9:\"太原市\";b:1;s:9:\"大同市\";b:1;s:9:\"阳泉市\";b:1;s:9:\"长治市\";b:1;s:9:\"晋城市\";b:1;s:9:\"朔州市\";b:1;s:9:\"晋中市\";b:1;s:9:\"运城市\";b:1;s:9:\"忻州市\";b:1;s:9:\"临汾市\";b:1;s:9:\"吕梁市\";b:1;}s:18:\"内蒙古自治区\";a:12:{s:15:\"呼和浩特市\";b:1;s:9:\"包头市\";b:1;s:9:\"乌海市\";b:1;s:9:\"赤峰市\";b:1;s:9:\"通辽市\";b:1;s:15:\"鄂尔多斯市\";b:1;s:15:\"呼伦贝尔市\";b:1;s:15:\"巴彦淖尔市\";b:1;s:15:\"乌兰察布市\";b:1;s:9:\"兴安盟\";b:1;s:15:\"锡林郭勒盟\";b:1;s:12:\"阿拉善盟\";b:1;}s:9:\"山东省\";a:17:{s:9:\"济南市\";b:1;s:9:\"青岛市\";b:1;s:9:\"淄博市\";b:1;s:9:\"枣庄市\";b:1;s:9:\"东营市\";b:1;s:9:\"烟台市\";b:1;s:9:\"潍坊市\";b:1;s:9:\"济宁市\";b:1;s:9:\"泰安市\";b:1;s:9:\"威海市\";b:1;s:9:\"日照市\";b:1;s:9:\"莱芜市\";b:1;s:9:\"临沂市\";b:1;s:9:\"德州市\";b:1;s:9:\"聊城市\";b:1;s:9:\"滨州市\";b:1;s:9:\"荷泽市\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('3', '3', '华中', '30', '包括湖南，湖北，河南', 'a:3:{s:9:\"河南省\";a:17:{s:9:\"郑州市\";b:1;s:9:\"开封市\";b:1;s:9:\"洛阳市\";b:1;s:12:\"平顶山市\";b:1;s:9:\"安阳市\";b:1;s:9:\"鹤壁市\";b:1;s:9:\"新乡市\";b:1;s:9:\"焦作市\";b:1;s:9:\"濮阳市\";b:1;s:9:\"许昌市\";b:1;s:9:\"漯河市\";b:1;s:12:\"三门峡市\";b:1;s:9:\"南阳市\";b:1;s:9:\"商丘市\";b:1;s:9:\"信阳市\";b:1;s:9:\"周口市\";b:1;s:12:\"驻马店市\";b:1;}s:9:\"湖北省\";a:14:{s:9:\"武汉市\";b:1;s:9:\"黄石市\";b:1;s:9:\"十堰市\";b:1;s:9:\"宜昌市\";b:1;s:9:\"襄樊市\";b:1;s:9:\"鄂州市\";b:1;s:9:\"荆门市\";b:1;s:9:\"孝感市\";b:1;s:9:\"荆州市\";b:1;s:9:\"黄冈市\";b:1;s:9:\"咸宁市\";b:1;s:9:\"随州市\";b:1;s:30:\"恩施土家族苗族自治州\";b:1;s:9:\"神农架\";b:1;}s:9:\"湖南省\";a:14:{s:9:\"长沙市\";b:1;s:9:\"株洲市\";b:1;s:9:\"湘潭市\";b:1;s:9:\"衡阳市\";b:1;s:9:\"邵阳市\";b:1;s:9:\"岳阳市\";b:1;s:9:\"常德市\";b:1;s:12:\"张家界市\";b:1;s:9:\"益阳市\";b:1;s:9:\"郴州市\";b:1;s:9:\"永州市\";b:1;s:9:\"怀化市\";b:1;s:9:\"娄底市\";b:1;s:30:\"湘西土家族苗族自治州\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('4', '3', '华南', '40', '包括广东，广西，福建，海南', 'a:4:{s:9:\"福建省\";a:9:{s:9:\"福州市\";b:1;s:9:\"厦门市\";b:1;s:9:\"莆田市\";b:1;s:9:\"三明市\";b:1;s:9:\"泉州市\";b:1;s:9:\"漳州市\";b:1;s:9:\"南平市\";b:1;s:9:\"龙岩市\";b:1;s:9:\"宁德市\";b:1;}s:9:\"广东省\";a:21:{s:9:\"广州市\";b:1;s:9:\"韶关市\";b:1;s:9:\"深圳市\";b:1;s:9:\"珠海市\";b:1;s:9:\"汕头市\";b:1;s:9:\"佛山市\";b:1;s:9:\"江门市\";b:1;s:9:\"湛江市\";b:1;s:9:\"茂名市\";b:1;s:9:\"肇庆市\";b:1;s:9:\"惠州市\";b:1;s:9:\"梅州市\";b:1;s:9:\"汕尾市\";b:1;s:9:\"河源市\";b:1;s:9:\"阳江市\";b:1;s:9:\"清远市\";b:1;s:9:\"东莞市\";b:1;s:9:\"中山市\";b:1;s:9:\"潮州市\";b:1;s:9:\"揭阳市\";b:1;s:9:\"云浮市\";b:1;}s:21:\"广西壮族自治区\";a:14:{s:9:\"南宁市\";b:1;s:9:\"柳州市\";b:1;s:9:\"桂林市\";b:1;s:9:\"梧州市\";b:1;s:9:\"北海市\";b:1;s:12:\"防城港市\";b:1;s:9:\"钦州市\";b:1;s:9:\"贵港市\";b:1;s:9:\"玉林市\";b:1;s:9:\"百色市\";b:1;s:9:\"贺州市\";b:1;s:9:\"河池市\";b:1;s:9:\"来宾市\";b:1;s:9:\"崇左市\";b:1;}s:9:\"海南省\";a:2:{s:9:\"海口市\";b:1;s:9:\"三亚市\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('5', '3', '东北', '50', '包括辽宁，吉林，黑龙江', 'a:3:{s:9:\"辽宁省\";a:14:{s:9:\"沈阳市\";b:1;s:9:\"大连市\";b:1;s:9:\"鞍山市\";b:1;s:9:\"抚顺市\";b:1;s:9:\"本溪市\";b:1;s:9:\"丹东市\";b:1;s:9:\"锦州市\";b:1;s:9:\"营口市\";b:1;s:9:\"阜新市\";b:1;s:9:\"辽阳市\";b:1;s:9:\"盘锦市\";b:1;s:9:\"铁岭市\";b:1;s:9:\"朝阳市\";b:1;s:12:\"葫芦岛市\";b:1;}s:9:\"吉林省\";a:9:{s:9:\"长春市\";b:1;s:9:\"吉林市\";b:1;s:9:\"四平市\";b:1;s:9:\"辽源市\";b:1;s:9:\"通化市\";b:1;s:9:\"白山市\";b:1;s:9:\"松原市\";b:1;s:9:\"白城市\";b:1;s:24:\"延边朝鲜族自治州\";b:1;}s:12:\"黑龙江省\";a:13:{s:12:\"哈尔滨市\";b:1;s:15:\"齐齐哈尔市\";b:1;s:9:\"鸡西市\";b:1;s:9:\"鹤岗市\";b:1;s:12:\"双鸭山市\";b:1;s:9:\"大庆市\";b:1;s:9:\"伊春市\";b:1;s:12:\"佳木斯市\";b:1;s:12:\"七台河市\";b:1;s:12:\"牡丹江市\";b:1;s:9:\"黑河市\";b:1;s:9:\"绥化市\";b:1;s:18:\"大兴安岭地区\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('6', '3', '西北', '60', '包括陕西，甘肃，宁夏，青海，新疆', 'a:5:{s:9:\"陕西省\";a:10:{s:9:\"西安市\";b:1;s:9:\"铜川市\";b:1;s:9:\"宝鸡市\";b:1;s:9:\"咸阳市\";b:1;s:9:\"渭南市\";b:1;s:9:\"延安市\";b:1;s:9:\"汉中市\";b:1;s:9:\"榆林市\";b:1;s:9:\"安康市\";b:1;s:9:\"商洛市\";b:1;}s:9:\"甘肃省\";a:14:{s:9:\"兰州市\";b:1;s:12:\"嘉峪关市\";b:1;s:9:\"金昌市\";b:1;s:9:\"白银市\";b:1;s:9:\"天水市\";b:1;s:9:\"武威市\";b:1;s:9:\"张掖市\";b:1;s:9:\"平凉市\";b:1;s:9:\"酒泉市\";b:1;s:9:\"庆阳市\";b:1;s:9:\"定西市\";b:1;s:9:\"陇南市\";b:1;s:21:\"临夏回族自治州\";b:1;s:21:\"甘南藏族自治州\";b:1;}s:9:\"青海省\";a:8:{s:9:\"西宁市\";b:1;s:12:\"海东地区\";b:1;s:21:\"海北藏族自治州\";b:1;s:21:\"黄南藏族自治州\";b:1;s:21:\"海南藏族自治州\";b:1;s:21:\"果洛藏族自治州\";b:1;s:21:\"玉树藏族自治州\";b:1;s:30:\"海西蒙古族藏族自治州\";b:1;}s:21:\"宁夏回族自治区\";a:5:{s:9:\"银川市\";b:1;s:12:\"石嘴山市\";b:1;s:9:\"吴忠市\";b:1;s:9:\"固原市\";b:1;s:9:\"中卫市\";b:1;}s:24:\"新疆维吾尔自治区\";a:18:{s:15:\"乌鲁木齐市\";b:1;s:15:\"克拉玛依市\";b:1;s:15:\"吐鲁番地区\";b:1;s:12:\"哈密地区\";b:1;s:21:\"昌吉回族自治州\";b:1;s:27:\"博尔塔拉蒙古自治州\";b:1;s:27:\"巴音郭楞蒙古自治州\";b:1;s:15:\"阿克苏地区\";b:1;s:33:\"克孜勒苏柯尔克孜自治州\";b:1;s:12:\"喀什地区\";b:1;s:12:\"和田地区\";b:1;s:24:\"伊犁哈萨克自治州\";b:1;s:12:\"塔城地区\";b:1;s:15:\"阿勒泰地区\";b:1;s:12:\"石河子市\";b:1;s:12:\"阿拉尔市\";b:1;s:15:\"图木舒克市\";b:1;s:12:\"五家渠市\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('7', '3', '西南', '70', '包括重庆，云南，贵州，西藏，四川', 'a:5:{s:9:\"重庆市\";a:1:{s:9:\"重庆市\";b:1;}s:9:\"四川省\";a:21:{s:9:\"成都市\";b:1;s:9:\"自贡市\";b:1;s:12:\"攀枝花市\";b:1;s:9:\"泸州市\";b:1;s:9:\"德阳市\";b:1;s:9:\"绵阳市\";b:1;s:9:\"广元市\";b:1;s:9:\"遂宁市\";b:1;s:9:\"内江市\";b:1;s:9:\"乐山市\";b:1;s:9:\"南充市\";b:1;s:9:\"眉山市\";b:1;s:9:\"宜宾市\";b:1;s:9:\"广安市\";b:1;s:9:\"达州市\";b:1;s:9:\"雅安市\";b:1;s:9:\"巴中市\";b:1;s:9:\"资阳市\";b:1;s:27:\"阿坝藏族羌族自治州\";b:1;s:21:\"甘孜藏族自治州\";b:1;s:21:\"凉山彝族自治州\";b:1;}s:9:\"贵州省\";a:9:{s:9:\"贵阳市\";b:1;s:12:\"六盘水市\";b:1;s:9:\"遵义市\";b:1;s:9:\"安顺市\";b:1;s:12:\"铜仁地区\";b:1;s:33:\"黔西南布依族苗族自治州\";b:1;s:12:\"毕节地区\";b:1;s:30:\"黔东南苗族侗族自治州\";b:1;s:30:\"黔南布依族苗族自治州\";b:1;}s:9:\"云南省\";a:16:{s:9:\"昆明市\";b:1;s:9:\"曲靖市\";b:1;s:9:\"玉溪市\";b:1;s:9:\"保山市\";b:1;s:9:\"昭通市\";b:1;s:9:\"丽江市\";b:1;s:9:\"思茅市\";b:1;s:9:\"临沧市\";b:1;s:21:\"楚雄彝族自治州\";b:1;s:30:\"红河哈尼族彝族自治州\";b:1;s:27:\"文山壮族苗族自治州\";b:1;s:27:\"西双版纳傣族自治州\";b:1;s:21:\"大理白族自治州\";b:1;s:30:\"德宏傣族景颇族自治州\";b:1;s:24:\"怒江傈僳族自治州\";b:1;s:21:\"迪庆藏族自治州\";b:1;}s:15:\"西藏自治区\";a:7:{s:9:\"拉萨市\";b:1;s:12:\"昌都地区\";b:1;s:12:\"山南地区\";b:1;s:15:\"日喀则地区\";b:1;s:12:\"那曲地区\";b:1;s:12:\"阿里地区\";b:1;s:12:\"林芝地区\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('8', '3', '港澳台', '80', '包括包港，澳门，台湾', 'a:3:{s:21:\"香港特别行政区\";a:1:{s:21:\"香港特别行政区\";b:1;}s:21:\"澳门特别行政区\";a:1:{s:21:\"澳门特别行政区\";b:1;}s:9:\"台湾省\";a:1:{s:9:\"台湾省\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('10', '1', 'zoom1', '10', '广东深圳', 'a:1:{s:9:\"广东省\";a:1:{s:9:\"深圳市\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('11', '1', 'zoom2', '20', '福建及广东', 'a:2:{s:9:\"福建省\";a:9:{s:9:\"福州市\";b:1;s:9:\"厦门市\";b:1;s:9:\"莆田市\";b:1;s:9:\"三明市\";b:1;s:9:\"泉州市\";b:1;s:9:\"漳州市\";b:1;s:9:\"南平市\";b:1;s:9:\"龙岩市\";b:1;s:9:\"宁德市\";b:1;}s:9:\"广东省\";a:20:{s:9:\"广州市\";b:1;s:9:\"韶关市\";b:1;s:9:\"珠海市\";b:1;s:9:\"汕头市\";b:1;s:9:\"佛山市\";b:1;s:9:\"江门市\";b:1;s:9:\"湛江市\";b:1;s:9:\"茂名市\";b:1;s:9:\"肇庆市\";b:1;s:9:\"惠州市\";b:1;s:9:\"梅州市\";b:1;s:9:\"汕尾市\";b:1;s:9:\"河源市\";b:1;s:9:\"阳江市\";b:1;s:9:\"清远市\";b:1;s:9:\"东莞市\";b:1;s:9:\"中山市\";b:1;s:9:\"潮州市\";b:1;s:9:\"揭阳市\";b:1;s:9:\"云浮市\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('12', '4', '一线城市', '10', '', 'a:4:{s:9:\"北京市\";a:1:{s:9:\"北京市\";b:1;}s:9:\"天津市\";a:1:{s:9:\"天津市\";b:1;}s:9:\"上海市\";a:1:{s:9:\"上海市\";b:1;}s:9:\"广东省\";a:1:{s:9:\"深圳市\";b:1;}}');
INSERT INTO `m_freight_zone` VALUES ('24', '4', '偏远地区', '20', '', 'a:1:{s:24:\"新疆维吾尔自治区\";a:18:{s:15:\"乌鲁木齐市\";b:1;s:15:\"克拉玛依市\";b:1;s:15:\"吐鲁番地区\";b:1;s:12:\"哈密地区\";b:1;s:21:\"昌吉回族自治州\";b:1;s:27:\"博尔塔拉蒙古自治州\";b:1;s:27:\"巴音郭楞蒙古自治州\";b:1;s:15:\"阿克苏地区\";b:1;s:33:\"克孜勒苏柯尔克孜自治州\";b:1;s:12:\"喀什地区\";b:1;s:12:\"和田地区\";b:1;s:24:\"伊犁哈萨克自治州\";b:1;s:12:\"塔城地区\";b:1;s:15:\"阿勒泰地区\";b:1;s:12:\"石河子市\";b:1;s:12:\"阿拉尔市\";b:1;s:15:\"图木舒克市\";b:1;s:12:\"五家渠市\";b:1;}}');

-- ----------------------------
-- Table structure for `m_gateway`
-- ----------------------------
DROP TABLE IF EXISTS `m_gateway`;
CREATE TABLE `m_gateway` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `site_id` int(10) unsigned NOT NULL default '0' COMMENT '站点ID，为0表示所有站点可用',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0不可用1可用',
  `is_default` tinyint(1) unsigned NOT NULL default '0' COMMENT '1表示默认使用',
  `type` varchar(50) NOT NULL COMMENT '类型，gateway文件夹的子文件夹',
  `code` varchar(50) NOT NULL COMMENT '路由引挈',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  `note` varchar(255) NOT NULL COMMENT '功能备注',
  `ext` text NOT NULL COMMENT '扩展参数',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='第三方网关路由引挈';

-- ----------------------------
-- Records of m_gateway
-- ----------------------------
INSERT INTO `m_gateway` VALUES ('1', '1', '1', '1', 'sms', 'duanxincm', '莫名短信', '10', '', 'a:4:{s:7:\"account\";s:8:\"70206743\";s:8:\"password\";s:8:\"40782502\";s:6:\"server\";s:22:\"http://api.duanxin.cm/\";s:6:\"mobile\";s:0:\"\";}');
INSERT INTO `m_gateway` VALUES ('3', '1', '0', '1', 'email', 'smtp', 'SMTP邮件发送', '10', '', 'a:8:{s:6:\"server\";s:11:\"smtp.qq.com\";s:4:\"port\";s:2:\"25\";s:7:\"account\";s:15:\"admin@phpok.com\";s:8:\"password\";s:0:\"\";s:7:\"charset\";s:4:\"utf8\";s:3:\"ssl\";s:2:\"no\";s:8:\"fullname\";s:9:\"苏相锟\";s:5:\"email\";s:15:\"admin@phpok.com\";}');

-- ----------------------------
-- Table structure for `m_gd`
-- ----------------------------
DROP TABLE IF EXISTS `m_gd`;
CREATE TABLE `m_gd` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `identifier` varchar(100) NOT NULL COMMENT '标识串',
  `width` int(10) unsigned NOT NULL default '0' COMMENT '图片宽度',
  `height` int(10) unsigned NOT NULL default '0' COMMENT '图片高度',
  `mark_picture` varchar(255) NOT NULL COMMENT '水印图片位置',
  `mark_position` varchar(100) NOT NULL COMMENT '水印位置',
  `cut_type` tinyint(1) unsigned NOT NULL default '0' COMMENT '图片生成方式，支持缩放法、裁剪法、等宽、等高及自定义五种，默认使用缩放法',
  `quality` tinyint(3) unsigned NOT NULL default '100' COMMENT '图片生成质量，默认是100',
  `bgcolor` varchar(10) NOT NULL default 'FFFFFF' COMMENT '补白背景色，默认是白色',
  `trans` tinyint(3) unsigned NOT NULL default '65' COMMENT '透明度',
  `editor` tinyint(1) unsigned NOT NULL default '0' COMMENT '0普通1默认插入编辑器',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='上传图片自动生成方案';

-- ----------------------------
-- Records of m_gd
-- ----------------------------
INSERT INTO `m_gd` VALUES ('2', 'thumb', '320', '320', '', 'bottom-right', '1', '80', 'FFFFFF', '0', '0');
INSERT INTO `m_gd` VALUES ('12', 'auto', '0', '0', 'res/201502/26/36afa2d3dfe37cbd.png', 'bottom-right', '0', '80', 'FFFFFF', '0', '1');

-- ----------------------------
-- Table structure for `m_list`
-- ----------------------------
DROP TABLE IF EXISTS `m_list`;
CREATE TABLE `m_list` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT '0为根主题，其他ID对应list表的id字段',
  `cate_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '分类ID',
  `module_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '模块ID',
  `project_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '项目ID',
  `site_id` mediumint(8) unsigned NOT NULL COMMENT '网站ID',
  `title` varchar(255) NOT NULL COMMENT '主题',
  `dateline` int(10) unsigned NOT NULL default '0' COMMENT '发布时间',
  `sort` int(11) NOT NULL default '0' COMMENT '排序',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0未审核，1已审核',
  `hidden` tinyint(1) unsigned NOT NULL default '0' COMMENT '0显示，1隐藏',
  `hits` int(10) unsigned NOT NULL default '0' COMMENT '查看次数',
  `tpl` varchar(255) NOT NULL COMMENT '自定义的模板',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` varchar(255) NOT NULL COMMENT 'SEO描述',
  `tag` varchar(255) NOT NULL COMMENT 'tag标签',
  `attr` varchar(255) NOT NULL COMMENT '主题属性',
  `replydate` int(10) unsigned NOT NULL default '0' COMMENT '最后回复时间',
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT '会员ID号，为0表示管理员发布',
  `identifier` varchar(255) NOT NULL COMMENT '内容标识串',
  `integral` int(10) unsigned NOT NULL default '0' COMMENT '财富基数，此基数可用于财富方案计算',
  PRIMARY KEY  (`id`),
  KEY `project_id` (`project_id`),
  KEY `site_id` (`site_id`,`identifier`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1825 DEFAULT CHARSET=utf8 COMMENT='内容主表';

-- ----------------------------
-- Records of m_list
-- ----------------------------
INSERT INTO `m_list` VALUES ('520', '0', '0', '23', '42', '1', '网站首页', '1380942032', '10', '1', '0', '0', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('712', '0', '0', '23', '42', '1', '关于我们', '1383355821', '20', '1', '0', '0', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('713', '0', '0', '23', '42', '1', '联系我们', '1383355842', '30', '1', '0', '0', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1803', '0', '589', '83', '390', '1', '缺乏', '1483412972', '0', '1', '0', '2', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1804', '0', '590', '83', '390', '1', '勇敢爱', '1483413095', '0', '1', '0', '5', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1805', '0', '589', '83', '390', '1', '小半', '1483413291', '0', '1', '0', '1', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1806', '0', '589', '83', '390', '1', '公主的风筝', '1483413482', '0', '1', '0', '4', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1807', '0', '590', '83', '390', '1', '枪恋', '1483414047', '0', '1', '0', '3', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1808', '0', '592', '83', '390', '1', ' 新娘不是我', '1483414281', '0', '1', '0', '13', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1809', '0', '589', '83', '390', '1', '你还好吗？', '1483414395', '0', '1', '0', '33', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1810', '0', '591', '83', '390', '1', '只是偶尔会想你', '1483414436', '0', '1', '0', '0', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1812', '0', '590', '83', '390', '1', '单飞', '1483414602', '0', '1', '0', '7', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1813', '0', '590', '83', '390', '1', '你的配角', '1483414643', '0', '1', '0', '4', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1814', '0', '591', '83', '390', '1', '柔软的光', '1483414691', '0', '1', '0', '0', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1815', '0', '592', '83', '390', '1', '往南', '1483414734', '0', '1', '0', '6', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1816', '0', '591', '83', '390', '1', '痕迹', '1483414783', '0', '1', '0', '2', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1818', '0', '591', '83', '390', '1', '眼泪的错觉', '1483414946', '0', '1', '0', '3', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1819', '0', '592', '83', '390', '1', '不再联系', '1483414996', '0', '1', '0', '5', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1820', '0', '589', '83', '390', '1', '一个人', '1483415041', '0', '1', '0', '1', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1821', '0', '589', '83', '390', '1', '活多久爱多久', '1483415097', '0', '1', '0', '1', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1822', '0', '589', '83', '390', '1', '最初的温柔', '1483415147', '0', '1', '0', '8', '', '', '', '', '', '', '0', '0', '', '0');
INSERT INTO `m_list` VALUES ('1823', '0', '591', '83', '390', '1', '我不会在老地方等你', '1483415210', '0', '1', '0', '2', '', '', '', '', '', '', '0', '0', '', '0');

-- ----------------------------
-- Table structure for `m_list_21`
-- ----------------------------
DROP TABLE IF EXISTS `m_list_21`;
CREATE TABLE `m_list_21` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '网站ID',
  `project_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '主分类ID',
  `link` longtext NOT NULL COMMENT '链接',
  `target` varchar(255) NOT NULL default '_self' COMMENT '链接方式',
  `pic` varchar(255) NOT NULL default '' COMMENT '图片',
  PRIMARY KEY  (`id`),
  KEY `site_id` (`site_id`,`project_id`,`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图片播放器';

-- ----------------------------
-- Records of m_list_21
-- ----------------------------

-- ----------------------------
-- Table structure for `m_list_23`
-- ----------------------------
DROP TABLE IF EXISTS `m_list_23`;
CREATE TABLE `m_list_23` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '网站ID',
  `project_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '主分类ID',
  `link` longtext NOT NULL COMMENT '链接',
  `target` varchar(255) NOT NULL default '_self' COMMENT '链接方式',
  PRIMARY KEY  (`id`),
  KEY `site_id` (`site_id`,`project_id`,`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航';

-- ----------------------------
-- Records of m_list_23
-- ----------------------------
INSERT INTO `m_list_23` VALUES ('520', '1', '42', '0', 'a:2:{s:7:\"default\";s:9:\"index.php\";s:7:\"rewrite\";s:10:\"index.html\";}', '_self');
INSERT INTO `m_list_23` VALUES ('712', '1', '42', '0', 'a:2:{s:7:\"default\";s:20:\"index.php?id=aboutus\";s:7:\"rewrite\";s:12:\"aboutus.html\";}', '_self');
INSERT INTO `m_list_23` VALUES ('713', '1', '42', '0', 'a:2:{s:7:\"default\";s:20:\"index.php?id=contact\";s:7:\"rewrite\";s:12:\"contact.html\";}', '_self');

-- ----------------------------
-- Table structure for `m_list_40`
-- ----------------------------
DROP TABLE IF EXISTS `m_list_40`;
CREATE TABLE `m_list_40` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '网站ID',
  `project_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '主分类ID',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY  (`id`),
  KEY `site_id` (`site_id`,`project_id`,`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='关于我们';

-- ----------------------------
-- Records of m_list_40
-- ----------------------------

-- ----------------------------
-- Table structure for `m_list_74`
-- ----------------------------
DROP TABLE IF EXISTS `m_list_74`;
CREATE TABLE `m_list_74` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '网站ID',
  `project_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '主分类ID',
  `account` varchar(255) NOT NULL default '' COMMENT '会员账号',
  PRIMARY KEY  (`id`),
  KEY `site_id` (`site_id`,`project_id`,`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='注册审核模块';

-- ----------------------------
-- Records of m_list_74
-- ----------------------------

-- ----------------------------
-- Table structure for `m_list_83`
-- ----------------------------
DROP TABLE IF EXISTS `m_list_83`;
CREATE TABLE `m_list_83` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '网站ID',
  `project_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '项目ID',
  `cate_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '主分类ID',
  `pic` varchar(255) NOT NULL default '' COMMENT '封面图',
  `music_addr` longtext NOT NULL COMMENT '音乐地址',
  `content` longtext NOT NULL COMMENT '歌词',
  `fullname` varchar(255) NOT NULL default '' COMMENT '歌手',
  PRIMARY KEY  (`id`),
  KEY `site_id` (`site_id`,`project_id`,`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='音乐';

-- ----------------------------
-- Records of m_list_83
-- ----------------------------
INSERT INTO `m_list_83` VALUES ('1803', '1', '390', '589', '1056', '1057', '<p>缺乏 - 阿肆</p><p>词：阿肆</p><p>曲：阿肆</p><p>每时每刻都在缺乏</p><p>每时每刻都在缺乏</p><p><br/></p><p>我总在无尽地取舍</p><p>分布在不同的时刻</p><p>没有那所谓的</p><p>游戏规则</p><p>人生就像一场止渴</p><p>重复得不到的曲折</p><p>早已经忽略了</p><p><br/></p><p>是否适合</p><p>我想要的总在变化中</p><p><br/></p><p>像是风 无影踪</p><p>追求无望的梦才最光荣</p><p>短短的几秒钟</p><p>唤醒了 某种冲动</p><p>每时每刻都在缺乏</p><p>上完厕所才觉得口渴</p><p>开了暖气又觉得太热</p><p>每时每刻都在缺乏</p><p>小时候想要快快长大</p><p>长大后又在怀念童话</p><p>每时每刻都在缺乏</p><p>谈恋爱时总说没自由</p><p>单身后又去借酒消愁</p><p>每时每刻都在缺乏</p><p><br/></p><p>我总在无尽地取舍</p><p>分布在不同的时刻</p><p>没有那所谓的</p><p>游戏规则</p><p><br/></p><p>人生就像一场止渴</p><p>重复得不到的曲折</p><p>早已经忽略了</p><p>是否适合</p><p><br/></p><p>我想要的总在变化中</p><p><br/></p><p>像是风 无影踪</p><p>追求无望的梦才最光荣</p><p>短短的几秒钟</p><p>唤醒了 某种冲动</p><p>每时每刻都在缺乏</p><p>上完厕所才觉得口渴</p><p>开了暖气又觉得太热</p><p>每时每刻都在缺乏</p><p>小时候想要快快长大</p><p>长大后又在怀念童话</p><p>每时每刻都在缺乏</p><p>谈恋爱时总说没自由</p><p>单身后又去借酒消愁</p><p>每时每刻都在缺乏</p><p>那你到底想怎样</p><p>我也不知道</p><p>缺乏 缺乏 缺乏 每时每刻都在缺乏</p><p><br/></p>', '阿肆');
INSERT INTO `m_list_83` VALUES ('1804', '1', '390', '590', '1059', '1058', '<p>勇敢爱 - Mi2</p><p>词：张木易</p><p>曲：张木易</p><p><br/></p><p>合：不知不觉我爱上了Ta</p><p>想方法去表达</p><p>勇气你在哪</p><p><br/></p><p>那么多 路人甲</p><p>阻挡不了我对你爱的想法</p><p><br/></p><p>抛开那些最浪漫的话</p><p>我只想为你把所有冰冷融化</p><p>就这样一直走</p><p>我这一生中 每一个冬夏</p><p><br/></p><p>男：那一天遇见你你的与众不同</p><p><br/></p><p>就像一个天使</p><p>难以忘记那个笑容</p><p><br/></p><p>女：你的出现是我唯一的心动</p><p><br/></p><p>我心里对你的想念</p><p>充满每一天</p><p><br/></p><p>男：滴答滴答时间在转动</p><p>滴答滴答我希望你懂</p><p>每当闭上眼</p><p><br/></p><p>脑海都是有你的梦</p><p>女：一起欢笑一起疯</p><p><br/></p><p>越相处越感觉I LOVE YOU</p><p>随着习惯 想独家拥有 有你的快乐</p><p>Oh  </p><p>男：一起欢笑一起疯</p><p><br/></p><p>越相处越感觉I LOVE YOU</p><p><br/></p><p>每分每秒陪伴你的苦乐</p><p><br/></p><p>合：不知不觉我爱上了TA</p><p>想方法去表达</p><p>勇气你在哪</p><p>那么多路人甲</p><p>阻挡不了我对你爱的想法</p><p>抛开那些最浪漫的话</p><p>我只想为你把所有冰冷融化</p><p>就这样一直走</p><p>我这一生中 每一个冬夏</p><p><br/></p><p>男：那一天遇见你 你的与众不同</p><p><br/></p><p>就像一个天使难以忘记那个笑容</p><p><br/></p><p>女：你的出现是我唯一的心动</p><p><br/></p><p>我心里对你的想念</p><p><br/></p><p>充满每一天</p><p><br/></p><p>男：滴答滴答时间在转动</p><p>滴答滴答我希望你懂</p><p>每当闭上眼</p><p><br/></p><p>脑海都是有你的梦</p><p>女：一起欢笑一起疯</p><p><br/></p><p>越相处越感觉I LOVE YOU</p><p>随着习惯想独家拥有有你的快乐</p><p>Oh  </p><p>男：一起欢笑一起疯</p><p><br/></p><p>越相处越感觉I LOVE YOU</p><p>每分每秒陪伴你的苦乐</p><p><br/></p><p>合：不知不觉我爱上了TA</p><p>想方法去表达</p><p>勇气你在哪</p><p>那么多 路人甲</p><p>阻挡不了我对你爱的想法</p><p><br/></p><p>抛开那些最浪漫的话</p><p>我只想为你把所有冰冷融化</p><p>就这样一直走</p><p>我这一生中的每一个冬夏</p><p><br/></p><p>不知不觉我爱上了TA</p><p>想方法去表达</p><p>勇气你在哪</p><p><br/></p><p>那么多路人甲</p><p>阻挡不了我对你爱的想法</p><p><br/></p><p>抛开那些最浪漫的话</p><p>我只想为你把所有冰冷融化</p><p><br/></p><p>就这样一直走</p><p><br/></p><p>我这一生中 的每一个冬夏</p><p><br/></p>', 'Mi2');
INSERT INTO `m_list_83` VALUES ('1805', '1', '390', '589', '1060', '1061', '<p>小半 - 陈粒</p><p>词：涂玲子</p><p>曲：陈粒</p><p>编曲：陈粒/荒井十一/朱家明/宁子达</p><p>不敢回看</p><p><br/></p><p>左顾右盼不自然的暗自喜欢</p><p><br/></p><p>偷偷搭讪总没完地坐立难安</p><p>试探说晚安</p><p>多空泛又心酸</p><p><br/></p><p>低头呢喃</p><p><br/></p><p>对你的偏爱太过于明目张胆</p><p>在原地打转的小丑伤心不断</p><p>空空留遗憾</p><p>多难堪又为难</p><p><br/></p><p>释然 慵懒 尽欢</p><p>时间风干后你与我再无关</p><p><br/></p><p>没答案 怎么办</p><p>看不惯自我欺瞒</p><p><br/></p><p>纵容着 喜欢的 讨厌的</p><p>宠溺的 厌倦的</p><p>一个个慢慢黯淡</p><p>纵容着 任性的 随意的</p><p>放肆的 轻易的</p><p>将所有欢脱倾翻</p><p>不应该 太心软 不大胆</p><p>太死板 不果断</p><p>玩弄着肆无忌惮</p><p>不应该 舍弃了 死心了</p><p>放手了 断念了</p><p>无可奈何不耐烦</p><p><br/></p><p>不算</p><p><br/></p><p>灯火阑珊</p><p>我的心借了你的光是明是暗</p><p>笑自己情绪太泛滥形只影单</p><p>自嘲成习惯</p><p>多敏感又难缠</p><p><br/></p><p>低头呢喃</p><p>对你的偏爱太过于明目张胆</p><p>在原地打转的小丑伤心不断</p><p>空空留遗憾</p><p>多难堪又为难</p><p><br/></p><p>释然 慵懒 尽欢</p><p>时间风干后你与我再无关</p><p><br/></p><p>没答案 怎么办</p><p>看不惯自我欺瞒</p><p><br/></p><p>纵容着 喜欢的 讨厌的</p><p>宠溺的 厌倦的</p><p>一个个慢慢黯淡</p><p>纵容着 任性的 随意的</p><p>放肆的 轻易的</p><p>将所有欢脱倾翻</p><p>不应该 太心软 不大胆</p><p>太死板 不果断</p><p>玩弄着肆无忌惮</p><p>不应该 舍弃了 死心了</p><p>放手了 断念了</p><p>无可奈何不耐烦</p><p><br/></p><p>任由着 你躲闪 我追赶</p><p>你走散 我呼喊</p><p>是谁在泛泛而谈</p><p>任由着 你来了 你笑了</p><p>你走了 不看我</p><p>与理所当然分摊</p><p>不明白 残存的 没用的</p><p>多余的 不必的</p><p>破烂也在手紧攥</p><p>不明白 谁赧然 谁无端</p><p>谁古板 谁极端</p><p>无辜不知所以然</p><p><br/></p><p>不管</p><p>纵容着 喜欢的 讨厌的</p><p>宠溺的 厌倦的</p><p>一个个慢慢黯淡</p><p>纵容着 任性的 随意的</p><p>放肆的 轻易的</p><p>将所有欢脱倾翻</p><p>不应该 太心软 不大胆</p><p>太死板 不果断</p><p>玩弄着肆无忌惮</p><p><br/></p><p>不应该 舍弃了 死心了</p><p>放手了 断念了</p><p>无可奈何不耐烦</p><p><br/></p>', '陈粒');
INSERT INTO `m_list_83` VALUES ('1806', '1', '390', '589', '1062', '1063', '<p>什么是幸福 什么叫相爱</p><p>什么才是永远和未来</p><p>看不到的情 啊 摸不着的爱</p><p>看不见的幸福 甜蜜和期待</p><p>失去了关心 失去了关怀</p><p>失去了就永远回不来</p><p>怎么去挽回 啊 怎么去等待</p><p>怎么改变也不会 让一切再从来</p><p>没了心的爱 就象过了夜的菜</p><p>经不起那风吹和雨晒</p><p>两个人的情 如果出现了意外</p><p>还有什么值得去爱 舍不得分开</p><p>没了心的爱 就象鱼儿离了海</p><p>被迫选择逃离的无奈</p><p>两个人的心 如果走不到一块</p><p>结果最后只会再让彼此受伤害</p><p> </p><p>什么是幸福 什么叫相爱</p><p>什么才是永远和未来</p><p>看不到的情 啊 摸不着的爱</p><p>看不见的幸福 甜蜜和期待</p><p>失去了关心 失去了关怀</p><p>失去了就永远回不来</p><p>怎么去挽回 啊 怎么去等待</p><p>怎么改变也不会 让一切再从来</p><p>没了心的爱 就象过了夜的菜</p><p>经不起那风吹和雨晒</p><p>两个人的情 如果出现了意外</p><p>还有什么值得去爱 舍不得分开</p><p>没了心的爱 就象鱼儿离了海</p><p>被迫选择逃离的无奈</p><p>两个人的心 如果走不到一块</p><p>结果最后只会再让彼此受伤害</p><p>没了心的爱 就象过了夜的菜</p><p>经不起那风吹和雨晒</p><p>两个人的情 如果出现了意外</p><p>还有什么值得去爱 舍不得分开</p><p>没了心的爱 就象鱼儿离了海</p><p>被迫选择逃离的无奈</p><p>两个人的心 如果走不到一块</p><p>结果最后只会再让彼此受伤害</p><p><br/></p>', '陈都灵');
INSERT INTO `m_list_83` VALUES ('1807', '1', '390', '590', '1064', '1065', '<p>枪恋 - 本兮</p><p>词：本兮</p><p>曲：本兮</p><p><br/></p><p>M A T all right</p><p>Let&#39;s play it,fell in love</p><p>M A T so high</p><p>动作要帅 帅 帅</p><p>M A T oh nice</p><p>有你会更精彩</p><p>Oh ~ oh~</p><p><br/></p><p>M A T all right</p><p>Let&#39;s play it,fell in love</p><p>M A T so high</p><p>动作要帅 帅 帅</p><p>M A T oh nice</p><p>有你会更精彩</p><p>Oh ~ oh~</p><p><br/></p><p>最爱的就是打扮 老地方聊天作伴</p><p>“黄埔码头” 求陪伴</p><p><br/></p><p>凌晨喇叭 还不断 倒不如组队来战</p><p>靠实力说话 要赢的痛快</p><p>RAP：</p><p>地图 我都再熟悉不过</p><p>打开语音作战 更有把握</p><p>远程 近身 都有练过</p><p>战绩最好的 一定是我</p><p>配合 走位 绝对perfect</p><p>背景音效越听越陶醉</p><p>One two three 三杀</p><p>无所谓装备 技术好才so easy</p><p>M A T all right</p><p>Let&#39;s play it,fell in love</p><p>M A T so high</p><p>动作要帅 帅 帅</p><p>M A T oh nice</p><p>有你会更精彩</p><p>Oh ~ oh~</p><p><br/></p><p>M A T all right</p><p>Let&#39;s play it,fell in love</p><p>M A T so high</p><p>动作要帅 帅 帅</p><p>M A T oh nice</p><p>有你会更精彩</p><p>Oh ~ oh~</p><p><br/></p><p>爱卖萌就要可爱 宠物是我的最爱</p><p>起名叫“LUCY” oh yeah~</p><p><br/></p><p>血量眼看要掉完 放心这个也好办</p><p>优雅的舞姿 来恢复状态</p><p>我爱做情侣任务 改情侣网名</p><p>泡温泉最浪漫</p><p>只和你 两个人 挂机边谈心</p><p>时间距离都不是问题</p><p>期待更新时装 装备外形</p><p>喜欢打扮自己 搭配萌系</p><p>彩色的武器 彩色的上衣</p><p>风格独特 才是我自己</p><p>M A T all right</p><p>Let&#39;s play it,fell in love</p><p>M A T so high</p><p>动作要帅 帅 帅</p><p>M A T oh nice</p><p>有你会更精彩</p><p>Oh ~ oh~</p><p><br/></p><p>M A T all right</p><p>Let&#39;s play it,fell in love</p><p>M A T so high</p><p>动作要帅 帅 帅</p><p>M A T oh nice</p><p>有你会更精彩</p><p>Oh ~ oh~</p><p><br/></p><p>M A T all right</p><p>Let&#39;s play it,fell in love</p><p>M A T so high</p><p>动作要帅 帅 帅</p><p>M A T oh nice</p><p>有你会更精彩</p><p>Oh ~ oh~</p><p><br/></p><p>M A T all right</p><p>Let&#39;s play it,fell in love</p><p>M A T so high</p><p>动作要帅 帅 帅</p><p>M A T oh nice</p><p>有你会更精彩</p><p>Oh ~ oh~</p><p><br/></p>', '本兮');
INSERT INTO `m_list_83` VALUES ('1808', '1', '390', '592', '1066', '1067', '<p>《新娘不是我》</p><p>词曲：周宏涛</p><p>演唱：程响</p><p>如果不是她钱多 你会不会来娶我</p><p>你为何非走不可 不能留下来陪我</p><p>你对我是真心的 抵不过名利的诱惑</p><p>你难道不担心我 没有你不能活</p><p>男朋友结婚了 新娘却不是我</p><p>就算眼泪再多 也没人心疼我</p><p>我想要的不多 你的爱就够了</p><p>千万别怕养不起我</p><p>男朋友结婚了 新娘却不是我</p><p>所有你想要的 唯独缺我一个</p><p>有手有脚拼搏 总想不劳而获</p><p>没有我要钱干什么</p><p>你对我是真心的 抵不过名利的诱惑</p><p>你难道不担心我 没有你不能活</p><p>男朋友结婚了 新娘却不是我</p><p>就算眼泪再多 也没人心疼我</p><p>我想要的不多 你的爱就够了</p><p>千万别怕养不起我</p><p>男朋友结婚了 新娘却不是我</p><p>所有你想要的 唯独缺我一个</p><p>有手有脚拼搏 总想不劳而获</p><p>没有我要钱干什么</p><p><br/></p>', '程响');
INSERT INTO `m_list_83` VALUES ('1809', '1', '390', '589', '1068', '1069', '<p>你还好吗  - 丁爽</p><p>词：郭顶</p><p>曲：郭顶</p><p>Jane你现在过得好吗</p><p><br/></p><p>是否还在流浪</p><p>是否找到方向</p><p>还会想起我吗</p><p><br/></p><p>Cat你还和他一起吗</p><p><br/></p><p>是否总是微笑</p><p>每次面对自己</p><p>还是最初模样吗</p><p><br/></p><p>看看自己的脸庞</p><p>已不再稚嫩无瑕</p><p>流过泪的都会忘</p><p>不值得不晓得留下</p><p><br/></p><p>只是偶尔会想起你的时光</p><p>那么难忘何必倔强</p><p>放你离开我心上</p><p>你还好吗记得我吗</p><p><br/></p><p>记得那段让我们</p><p>撕心裂肺不肯忘的伤</p><p>还是爱原来就这样</p><p>还是时间改变了它</p><p><br/></p><p>这句话你听到了吗</p><p><br/></p><p>喂他还是很晚回吗</p><p><br/></p><p>你还是常寂寞</p><p>拥抱都没对手</p><p>不要对我说谎</p><p><br/></p><p>看看自己的脸庞</p><p>已不再稚嫩无瑕</p><p>流过泪的都会忘</p><p>不值得不晓得留下</p><p><br/></p><p>只是偶尔会想起你的时光</p><p>那么难忘何必倔强</p><p>放你离开我心上</p><p>你还好吗记得我吗</p><p><br/></p><p>记得那段让我们</p><p>撕心裂肺不肯忘的伤</p><p>还是爱原来就这样</p><p>还是时间改变了它</p><p><br/></p><p>我一个人的时候还是会怕</p><p>你还好吗记得我吗</p><p><br/></p><p>记得那个让我们</p><p>后来都不敢听的笑话</p><p>听他们说你很快乐</p><p>好久不见你还好吗</p><p>这句话你听到了吗</p><p><br/></p><p>他们说你很快乐</p><p>好久不见你还好吗</p><p>这句话你听到了吗</p><p><br/></p>', '丁爽');
INSERT INTO `m_list_83` VALUES ('1810', '1', '390', '591', '1099', '1070', '<p>只是偶尔会想你 - 贺世哲</p><p>词：李守俊</p><p>曲：曹耀明</p><p>公园的长椅上恋人在亲密</p><p>那里曾是我们专有的位置</p><p>想起你的眼神和说话的语气</p><p>有点感伤有点小惋惜</p><p>我试着去努力习惯没有你</p><p>对着镜子练习逗笑自己</p><p>忘不忘记其实有什么关系</p><p>比如爱情比如那一个你</p><p>我只是 偶尔想你</p><p>在某个黄昏忙碌之余</p><p>没有抱任何特殊目的</p><p>我早没了爱你的权利</p><p>我只是 偶尔会想你</p><p>猜想着现在你的样子</p><p>若再相遇我们是逃离</p><p>还是会笑着 致意</p><p>我试着去努力习惯没有你</p><p>对着镜子练习逗笑自己</p><p>忘不忘记其实有什么关系</p><p>比如爱情比如那一个你</p><p>我只是 偶尔想你</p><p>在某个黄昏忙碌之余</p><p>没有抱任何特殊目的</p><p>我早没了爱你的权利</p><p>我只是 偶尔会想你</p><p>猜想着现在你的样子</p><p>若再相遇我们是逃离</p><p>还是会笑着 致意</p><p><br/></p>', '贺世哲');
INSERT INTO `m_list_83` VALUES ('1812', '1', '390', '590', '1074', '1073', '<p>作词：林秋离</p><p>作曲： Emanuel Olsson、Christian Leuzzi、Aldo Nova</p><p>演唱：胡灵</p><p><br/></p><p>Pass 这一次我不想陪你玩</p><p>我和她本来就不一样</p><p>继续下去不会有阳光</p><p>不要再讲</p><p>Trust 面对面是不同的方向</p><p>你的背影整个太黑暗</p><p>无能为力我能怎么办</p><p><br/></p><p>爱 是最美的幻想</p><p>美的太虚伪</p><p>不管结果会如何如何</p><p>我只想要在这里下车</p><p>我还年轻拥有无数可能的抉择</p><p>即使错误也值得</p><p>不管结果的是是非非</p><p>开心的是自己能单飞</p><p>如果因为你我才存在</p><p>不要爱</p><p><br/></p><p>Bye 所有过去终于放下来</p><p>生命还有一大片空白</p><p>等着涂上另一类色彩</p><p>爱 不应该是错误</p><p>无论谁对谁</p><p><br/></p><p>不管结果会如何如何</p><p>我只想要在这里下车</p><p>我还年轻拥有无数可能的抉择</p><p>即使错误也值得</p><p>不管结果的是是非非</p><p>开心的是自己能单飞</p><p>如果因为你我才存在</p><p>不要爱 (不要爱)</p><p><br/></p><p>该如何 做抉择</p><p>是错误 也值得</p><p>我经过 最美的时刻</p><p>唔</p><p>不管结果会如何如何</p><p>我只想要在这里下车</p><p>我还年轻拥有无数可能的抉择</p><p>即使错误也值得</p><p>不管结果的是是非非</p><p>开心的是自己能单飞</p><p>如果因为你我才存在</p><p>不要爱</p><p>唔 不要爱</p><p>唔</p><p><br/></p>', '胡灵');
INSERT INTO `m_list_83` VALUES ('1813', '1', '390', '590', '1076', '1075', '<p>你的配角</p><p><br/></p><p>作词:赖菡,陆思翰</p><p>作曲:陆思翰</p><p>演唱:回音哥</p><p><br/></p><p>怪时间 很不凑巧</p><p>为什么 在他之后才遇到</p><p>你刻意对我的好</p><p>我知道 只是寂寞的解药</p><p><br/></p><p>不经意的玩笑</p><p>把你自己出卖太早</p><p>我慢慢渐渐明了</p><p>这所谓的配角</p><p><br/></p><p>我是 一个配角 不重要</p><p>就算最后会把我的戏份删掉</p><p>我独自躲在墙角 不哭不闹</p><p>撑到最后一秒</p><p><br/></p><p>我只是 一个配角 好可笑</p><p>友情出演的下场会如此煎熬</p><p>最后落幕的代表</p><p>用淡忘作句号</p><p><br/></p><p>灯熄了 人群散了</p><p>找不到 弥漫回忆的街道</p><p>明知道你在说谎</p><p>可是我 仍留恋你的拥抱</p><p><br/></p><p>其实我都知道</p><p>你更熟悉谁的味道</p><p>何不让自己放手</p><p>劝自己都忘掉</p><p><br/></p><p>我是 一个配角 不重要</p><p>就算最后会把我的戏份删掉</p><p>我只会躲在墙角 不哭不闹</p><p>撑到最后一秒</p><p><br/></p><p>我仍是 一个配角 好可笑</p><p>友情出演的下场会如此煎熬</p><p>最后落幕的代表</p><p>用遗忘作句号</p><p><br/></p><p>我是 一个配角 不重要</p><p>就算最后会把我的戏份删掉</p><p>我只会躲在墙角 不哭不闹</p><p>撑到最后一秒</p><p><br/></p><p>我仍是 一个配角 好可笑</p><p>友情出演的下场会如此煎熬</p><p>最后落幕的代表</p><p>用遗忘作句号</p><p><br/></p><p>最后落幕的代表 用遗忘做句号</p><p><br/></p>', '回音哥');
INSERT INTO `m_list_83` VALUES ('1814', '1', '390', '591', '1078', '1077', '<p>《柔软的光》歌词</p><p>词、曲：解征</p><p>演唱：颗粒</p><p>谁的羽毛 轻轻飞过喧嚣</p><p>问候苹果的树 问候街灯</p><p>谁的胡须 在灯光下闪耀</p><p>等待你的拥抱 你的微笑</p><p>如果醒来 没有树在歌唱</p><p>那么我的世界 是真的吗</p><p>繁星飘荡 在遥远的海上</p><p>不知谁的目光 温暖海浪</p><p>回忆里的风 是吉他的弦</p><p>回忆里的诗篇 都是你</p><p>静静地听 总会有些叹息</p><p>来自一片土地 一个影子</p><p>你的名字 是否和我一样</p><p>淋过天空的雨 才会成长</p><p>明天里的路 是光的舞步</p><p>明天里的旋律 都是你</p><p>让我回忆你 让我凝望你</p><p>让我忘记名字 拥抱你</p><p><br/></p>', '颗粒');
INSERT INTO `m_list_83` VALUES ('1815', '1', '390', '592', '1080', '1079', '<p>让我们抓住夏天的尾巴 往南</p><p>让我们抓住今天我爱你 往南</p><p>在末日来临之前 在松开手之前</p><p>在一切成为浮云之前 往南</p><p><br/></p><p>你说了爱 却还是给了平淡</p><p>如果这是热恋</p><p>我怎么相信会有永远</p><p>猜忌怀疑让人迷离</p><p>却又守着最初砰然的心</p><p>猜不透明天以后的交集</p><p><br/></p><p>让我们抓住夏天的尾巴 往南</p><p>让我们抓住今天我爱你 往南</p><p>在末日来临之前 在松开手之前</p><p>在一切成为浮云之前 往南</p><p><br/></p><p>你说了爱 却还是给了平淡</p><p>如果这是热恋</p><p>我怎么相信会有永远</p><p>猜忌怀疑让人迷离</p><p>却又守着最初砰然的心</p><p>就刻意出爱存在的纪念品</p><p>让我们抓住夏天的尾巴 往南</p><p>让我们抓住今天我爱你 往南</p><p>在末日来临之前 在松开手之前</p><p>在一切成为浮云之前 往南</p><p><br/></p><p>让我们抓住夏天的尾巴 往南</p><p>.</p><p><br/></p><p>往南 - 李秋雯</p><p>词：李秋雯</p><p>曲：李秋雯</p><p>.</p><p><br/></p>', '李秋雯');
INSERT INTO `m_list_83` VALUES ('1816', '1', '390', '591', '1082', '1081', '<p>沫筱雪 - 痕迹</p><p>词：单夕</p><p>曲：单夕</p><p>监制：穆迎松</p><p>让我死心之后彻底脱离感情</p><p>在背叛和惋惜中残喘下去</p><p>不能决定</p><p>是我太强势还是你不懂珍惜</p><p>这样的别离剧情</p><p>你还在表演情绪</p><p>爱过的人他在你身上的痕迹</p><p>时间也无法抹去他留下过的印记</p><p>苍白的词语说太多笼统至极</p><p>可能是我要的太多让你无法触及</p><p>尘封的过去变成一道纸皮</p><p>轻轻刮掉的痕迹</p><p>还有你残留的唇印</p><p>落魄的生命里纠葛你曾经</p><p>那段往事是你送给我</p><p>最好的记忆</p><p>让我死心之后彻底脱离感情</p><p>在背叛和惋惜中残喘下去</p><p>不能决定</p><p>是我太强势还是你不懂珍惜</p><p>这样的别离剧情</p><p>你还在表演情绪</p><p>爱过的人他在你身上的痕迹</p><p>时间也无法抹去他留下过的印记</p><p>苍白的词语说太多笼统至极</p><p>可能是我要的太多让你无法触及</p><p>尘封的过去变成一道纸皮</p><p>轻轻刮掉的痕迹</p><p>还有你残留的唇印</p><p>落魄的生命里纠葛你曾经</p><p>那段往事是你送给我</p><p>最好的记忆</p><p>尘封的过去变成一道纸皮</p><p>轻轻刮掉的痕迹</p><p>还有你残留的唇印</p><p>落魄的生命里纠葛你曾经</p><p>那段往事是你送给我</p><p>最好的记忆</p><p><br/></p>', '沫筱雪');
INSERT INTO `m_list_83` VALUES ('1818', '1', '390', '591', '1086', '1085', '<p>眼泪的错觉 哭泣的依恋</p><p>爱在昨天 不停的想念</p><p><br/></p><p>花蕊的凋谢 情感的善变</p><p><br/></p><p>誓言飘过 无所谓语言</p><p><br/></p><p>眼泪的错觉 哭泣的依恋</p><p><br/></p><p>爱在昨天 不停的想念</p><p><br/></p><p>花蕊的凋谢 情感的善变</p><p><br/></p><p>誓言飘过 无所谓语言</p><p><br/></p><p>为什么要分手 为什么抛弃所有</p><p><br/></p><p>为什么剩我一人孤独等候</p><p>能不能再爱我 能不能陪着我</p><p><br/></p><p>能不能永远一生不放弃我</p><p><br/></p><p>为什么要分手 为什么抛弃所有</p><p><br/></p><p>为什么剩我一人孤独等候</p><p>能不能再爱我 能不能陪着我</p><p><br/></p><p>能不能永远一生不放弃我</p><p><br/></p><p>时光已经停留 爱人已经远走</p><p><br/></p><p>花蕊凋谢的接受</p><p><br/></p><p>让寂寞搁浅 挥挥手~~</p><p><br/></p><p>眼泪的错觉 哭泣的依恋</p><p><br/></p><p>爱在昨天 不停的想念</p><p><br/></p><p>花蕊的凋谢 情感的善变</p><p><br/></p><p>誓言飘过 无所谓语言</p><p><br/></p><p>为什么要分手 为什么抛弃所有</p><p><br/></p><p>为什么剩我一人孤独等候</p><p>能不能再爱我 能不能陪着我</p><p><br/></p><p>能不能永远一生不放弃我</p><p><br/></p><p>为什么要分手 为什么抛弃所有</p><p><br/></p><p>为什么剩我一人孤独等候</p><p><br/></p><p>能不能再爱我 能不能陪着我</p><p><br/></p><p>能不能永远一生不放弃我</p><p><br/></p><p>时光已经停留 爱人已经远走</p><p><br/></p><p>花蕊凋谢的接受</p><p><br/></p><p>让寂寞搁浅 挥挥手~~</p><p>眼泪的错觉 哭泣的依恋</p><p><br/></p><p>爱在昨天 不停的想念</p><p><br/></p><p>花蕊的凋谢 情感的善变</p><p><br/></p><p>誓言飘过 无所谓语言</p><p><br/></p>', '王露凝');
INSERT INTO `m_list_83` VALUES ('1819', '1', '390', '592', '1088', '1087', '<p>不再联系</p><p>词曲：夏天Alex</p><p>演唱：夏天Alex</p><p><br/></p><p>也许还能在网上看到你的消息</p><p>也许我唱的歌还存在你的手机</p><p>也许我爱你埋在心底变成秘密</p><p>也许你想我的时候我也在想你</p><p><br/></p><p>多少次我告诉自己</p><p>此情可待已成追忆</p><p>多少次我告诫自己</p><p>不再为你流泪到一败涂地</p><p><br/></p><p>我和你不再联系</p><p>希望你不要介意</p><p>要怪就怪当初没在一起</p><p>而你对现在也比较满意</p><p>所以我留下来也没有道理</p><p><br/></p><p>我和你断了联系</p><p>不代表我不想你</p><p>走到哪里还是会有惦记</p><p>而我也开始试着去忘记</p><p>抹去我们过去的放弃的所有交集</p><p><br/></p><p>也许还能在网上看到你的消息</p><p>也许我唱的歌还存在你的手机</p><p>也许我爱你埋在心底变成秘密</p><p>也许你想我的时候我也在想你</p><p><br/></p><p>多少次我告诉自己</p><p>此情可待已成追忆</p><p>多少次我告诫自己</p><p>不再为你流泪到一败涂地</p><p><br/></p><p>我和你不再联系</p><p>希望你不要介意</p><p>要怪就怪当初没在一起</p><p>而你对现在也比较满意</p><p>所以我留下来也没有道理</p><p><br/></p><p>我和你断了联系</p><p>不代表我不想你</p><p>走到哪里还是会有惦记</p><p>而我也开始试着去忘记</p><p>抹去我们过去的放弃的所有交集</p><p><br/></p><p>我和你不再联系</p><p>希望你不要介意</p><p>要怪就怪当初没在一起</p><p>而你对现在也比较满意</p><p>所以我留下来也没有道理</p><p><br/></p><p>我和你断了联系</p><p>不代表我不想你</p><p>走到哪里还是会有惦记</p><p>而我也开始试着去忘记</p><p>抹去我们过去的放弃的所有交集</p><p><br/></p>', '夏天Alex');
INSERT INTO `m_list_83` VALUES ('1820', '1', '390', '589', '1090', '1089', '<p>《一个人》歌词：</p><p>乌云一层一层的遮住了光</p><p>坚强一层一层卸掉了伪妆</p><p>过往的车辆遮掩了眼神里面的慌张</p><p>脆弱被嘴角的笑无情打伤</p><p><br/></p><p>一颗心里面住着一个人</p><p>一个人却只有着一颗心</p><p>当你来来回回践踏着我心底</p><p>我不怕痛只怕你爱的不坚定</p><p><br/></p><p>一个人吃饭一个人睡</p><p>一个人想念一个人醉</p><p>一个人爱着另一个人</p><p>一个人只流泪好 好伤悲</p><p><br/></p><p>我是一条小鱼儿</p><p>不曾想过要逃离</p><p>我也爱大海</p><p>我也想呼吸</p><p>可是想到舍弃你</p><p>我宁愿干涸在你宽大的掌心里</p><p><br/></p><p>我一个人痛，我一个人走</p><p>我一个人守候到天明</p><p>我一个人梦</p><p>我一个人错</p><p>我一个人或喜或悲不要谁关心我</p><p><br/></p><p>我一个人疯，我一个人懂</p><p>我一个人多想回过头</p><p>可明知道</p><p>你不在身后</p><p>反反复复爱到最后只剩下我</p><p><br/></p><p>我一个人走（让我一个人走）</p><p>别再说爱我（我不想你爱我）</p><p>放手了是吗（真的放你走了）</p><p>从此一个人</p><p><br/></p><p>让我一个人走（我一个人走）</p><p>我不想你爱我（别再说爱我）</p><p>真的放你走了（放手了是吗）</p><p>一个人好好的（Ha.A...)</p><p><br/></p>', '夏婉安');
INSERT INTO `m_list_83` VALUES ('1821', '1', '390', '589', '1092', '1091', '<p>活多久爱多久 - 易欣</p><p>词：余云飞</p><p>曲：路勇</p><p>编曲：关剑</p><p><br/></p><p>一个人走了很久有幸与你相守</p><p><br/></p><p>喜怒哀乐的时候你陪伴左右</p><p><br/></p><p>一路甜蜜的镜头凝固了双手</p><p>约定好今生要风雨同舟</p><p><br/></p><p>两个人没有爱够恨时间不温柔</p><p><br/></p><p>太阳落山了以后黎明后还有</p><p><br/></p><p>那些无聊的步骤何必去遵守</p><p><br/></p><p>爱情也不可能永垂不朽</p><p><br/></p><p>今生能活多久我们就爱多久</p><p><br/></p><p>当春来的时候花自会满枝头</p><p><br/></p><p>就算时间要走也不必再强求</p><p><br/></p><p>用心珍惜眼下就足够</p><p><br/></p><p>今生能活多久我们就爱多久</p><p>明天是走是留别过分去担忧</p><p><br/></p><p>就算还没爱够生命就到尽头</p><p><br/></p><p>至少今生我们一起走</p><p><br/></p><p>两个人没有爱够恨时间不温柔</p><p><br/></p><p>太阳落山了以后黎明后还有</p><p><br/></p><p>那些无聊的步骤何必去遵守</p><p>爱情也不可能永垂不朽</p><p><br/></p><p>今生能活多久我们就爱多久</p><p>当春来的时候花自会满枝头</p><p><br/></p><p>就算时间要走也不必再强求</p><p><br/></p><p>用心珍惜眼下就足够</p><p><br/></p><p>今生能活多久我们就爱多久</p><p>明天是走是留别过分去担忧</p><p><br/></p><p>就算还没爱够生命就到尽头</p><p><br/></p><p>至少今生我们一起走</p><p><br/></p><p>今生能活多久我们就爱多久</p><p>当春来的时候花自会满枝头</p><p><br/></p><p>就算时间要走也不必再强求</p><p><br/></p><p>用心珍惜眼下就足够</p><p><br/></p><p>今生能活多久我们就爱多久</p><p>明天是走是留别过分去担忧</p><p><br/></p><p>就算还没爱够 生命就到尽头</p><p><br/></p><p>至少今生我们一起走</p><p><br/></p><p>至少今生我们一起走</p><p><br/></p>', '易欣');
INSERT INTO `m_list_83` VALUES ('1822', '1', '390', '589', '1094', '1093', '<p>最初的温柔</p><p>演唱;赵乃吉</p><p><br/></p><p>我问世间这么多的背叛</p><p>该怎么去原谅</p><p><br/></p><p>我问永远到底会有多远</p><p>不要给我答案</p><p><br/></p><p>不再奢求在你身边</p><p>陪你去度过每一个瞬间</p><p>我不再去渴望你的关心</p><p><br/></p><p>因为那更加心碎</p><p><br/></p><p>你把所有誓言所有诺言</p><p>藏在手中化成一把火</p><p>燃烧我的真心我的真意</p><p>将我变成一只飞蛾</p><p><br/></p><p>在寂寞萦绕的夜空中</p><p>飞过爱曾停留的角落</p><p>最后折断翅膀跌落在深渊</p><p>竟无处去闪躲</p><p><br/></p><p>你把所有誓言所有诺言</p><p>藏在手中化成一把火</p><p><br/></p><p>燃烧我的认真我的执着</p><p>把我变成一只飞蛾</p><p><br/></p><p>在夜深人静的夜空中</p><p>寻找最初失去的温柔</p><p>别回头 别让自己在原地停留</p><p><br/></p><p>我曾给你那么多的机会</p><p>你总是无所谓</p><p><br/></p><p>我想知道你最爱的是谁</p><p>你最想谁来陪</p><p>如果缘分是两个人</p><p>让彼此的心有一个交汇</p><p>而你若无其事你的眼神</p><p><br/></p><p>它总是那么天真 喔~</p><p><br/></p><p>你把所有誓言所有诺言</p><p>藏在手中化成一把火</p><p>燃烧我的真心我的真意</p><p>将我变成一只飞蛾</p><p><br/></p><p>在寂寞萦绕的夜空中</p><p>飞过爱曾停留的角落</p><p>最后折断翅膀跌落在深渊</p><p>竟无处去闪躲</p><p><br/></p><p>你把所有誓言</p><p>所有诺言藏在手中化成一把火</p><p><br/></p><p>燃烧我的认真我的执着</p><p>把我变成一只飞蛾</p><p><br/></p><p>在夜深人静的夜空中</p><p>寻找最初失去的温柔</p><p>别回头 别让自己在原地停留 喔~</p><p>你把所有誓言所有诺言藏在手中</p><p>化成一把火</p><p>燃烧我的认真我的执着</p><p>把我变成一只飞蛾</p><p><br/></p><p>在夜深人静的夜空中</p><p>寻找最初失去的温柔</p><p>别回头</p><p><br/></p><p>别让自己在原地停留 喔~</p><p>别回头</p><p><br/></p><p>别让自己在原地停留</p><p><br/></p>', '赵乃吉');
INSERT INTO `m_list_83` VALUES ('1823', '1', '390', '591', '1096', '1095', '<p>我不会在老地方等你 - 庄心妍</p><p>词：周兵,卿剑</p><p>曲：李风持</p><p><br/></p><p>花开的时候会想你</p><p><br/></p><p>却不敢告诉我自己</p><p><br/></p><p>一颗心为你打着伞</p><p><br/></p><p>眼睛却为你下过雨</p><p><br/></p><p>飘雪的时候会念你</p><p>任由相思无能为力</p><p><br/></p><p>当岁月掀起爱的潮汐</p><p><br/></p><p>彼此错过了就该放弃</p><p><br/></p><p>我不会在老地方等你</p><p>时光已经消失回不去</p><p>就像当初情在何起</p><p>缘来缘去都是天意</p><p>我不会在老地方等你</p><p><br/></p><p>一切都像在随风听雨</p><p>有些曾经走的很快</p><p>依然清晰虽然很痛</p><p>但却很美丽</p><p><br/></p><p>飘雪的时候会念你</p><p><br/></p><p>任由相思无能为力</p><p>当岁月掀起爱的潮汐</p><p>彼此错过了就该放弃</p><p>我不会在老地方等你</p><p>时光已经消失回不去</p><p>就像当初情在何起</p><p>缘来缘去都是天意</p><p>我不会在老地方等你</p><p><br/></p><p>一切都像在随风听雨</p><p>有些曾经走的很快</p><p>依然清晰虽然很痛</p><p>但却很美丽</p><p><br/></p><p>如果有一天再相遇</p><p>也许问候只有三两句</p><p>当我们用爱交换过经历</p><p>彼此更明白什么是珍惜</p><p><br/></p><p>我不会在老地方等你</p><p>时光已经消失回不去</p><p>就像当初情在何起</p><p>缘来缘去都是天意</p><p>我不会在老地方等你</p><p>一切都像在随风听雨</p><p>有些曾经走的很快</p><p>依然清晰虽然很痛</p><p>但却很美丽</p><p>有些曾经走的很快</p><p>依然清晰虽然很痛</p><p><br/></p><p>但却很美丽</p><p><br/></p>', '庄心妍');

-- ----------------------------
-- Table structure for `m_list_attr`
-- ----------------------------
DROP TABLE IF EXISTS `m_list_attr`;
CREATE TABLE `m_list_attr` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `tid` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `aid` int(10) unsigned NOT NULL default '0' COMMENT '属性组ID',
  `vid` int(10) unsigned NOT NULL default '0' COMMENT '参数ID',
  `price` decimal(10,4) NOT NULL default '0.0000' COMMENT '增减价格值',
  `weight` float NOT NULL default '0' COMMENT '重量增减',
  `volume` float NOT NULL default '0' COMMENT '体积增减值，带-号为减值',
  `taxis` int(10) unsigned NOT NULL default '0' COMMENT '排序',
  PRIMARY KEY  (`id`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='主题属性';

-- ----------------------------
-- Records of m_list_attr
-- ----------------------------
INSERT INTO `m_list_attr` VALUES ('11', '1306', '3', '8', '5.0000', '0', '0', '20');
INSERT INTO `m_list_attr` VALUES ('10', '1306', '3', '7', '5.0000', '0', '0', '10');
INSERT INTO `m_list_attr` VALUES ('26', '1306', '1', '4', '2.0000', '1', '0', '30');
INSERT INTO `m_list_attr` VALUES ('25', '1306', '1', '3', '4.0000', '1', '0', '20');
INSERT INTO `m_list_attr` VALUES ('24', '1306', '1', '1', '3.0000', '1', '0', '10');

-- ----------------------------
-- Table structure for `m_list_biz`
-- ----------------------------
DROP TABLE IF EXISTS `m_list_biz`;
CREATE TABLE `m_list_biz` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT '产品ID',
  `price` decimal(10,4) NOT NULL default '0.0000' COMMENT '价格',
  `currency_id` int(10) unsigned NOT NULL default '0' COMMENT '货币ID',
  `weight` float unsigned NOT NULL default '0' COMMENT '重量，单位是Kg',
  `volume` float unsigned NOT NULL default '0' COMMENT '体积，单位立方米',
  `unit` varchar(50) NOT NULL COMMENT '单位',
  `is_virtual` tinyint(1) NOT NULL default '0' COMMENT '0实物1虚拟产品',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='电子商务';

-- ----------------------------
-- Records of m_list_biz
-- ----------------------------
INSERT INTO `m_list_biz` VALUES ('1306', '170.0000', '1', '0', '0', '条', '0');
INSERT INTO `m_list_biz` VALUES ('1253', '300.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1680', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1681', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1682', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1683', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1684', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1685', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1686', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1687', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1688', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1689', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1690', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1691', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1692', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1693', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1694', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1748', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1749', '8000.0000', '1', '0', '0', '', '0');
INSERT INTO `m_list_biz` VALUES ('1750', '8000.0000', '1', '0', '0', '', '0');

-- ----------------------------
-- Table structure for `m_list_cate`
-- ----------------------------
DROP TABLE IF EXISTS `m_list_cate`;
CREATE TABLE `m_list_cate` (
  `id` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `cate_id` int(10) unsigned NOT NULL default '0' COMMENT '分类ID',
  PRIMARY KEY  (`id`,`cate_id`),
  KEY `id` (`id`),
  KEY `cate_id` (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='主题绑定的分类';

-- ----------------------------
-- Records of m_list_cate
-- ----------------------------
INSERT INTO `m_list_cate` VALUES ('1676', '68');
INSERT INTO `m_list_cate` VALUES ('1677', '68');
INSERT INTO `m_list_cate` VALUES ('1803', '589');
INSERT INTO `m_list_cate` VALUES ('1804', '590');
INSERT INTO `m_list_cate` VALUES ('1805', '589');
INSERT INTO `m_list_cate` VALUES ('1806', '589');
INSERT INTO `m_list_cate` VALUES ('1807', '590');
INSERT INTO `m_list_cate` VALUES ('1808', '592');
INSERT INTO `m_list_cate` VALUES ('1809', '589');
INSERT INTO `m_list_cate` VALUES ('1810', '591');
INSERT INTO `m_list_cate` VALUES ('1812', '590');
INSERT INTO `m_list_cate` VALUES ('1813', '590');
INSERT INTO `m_list_cate` VALUES ('1814', '591');
INSERT INTO `m_list_cate` VALUES ('1815', '592');
INSERT INTO `m_list_cate` VALUES ('1816', '591');
INSERT INTO `m_list_cate` VALUES ('1818', '591');
INSERT INTO `m_list_cate` VALUES ('1819', '592');
INSERT INTO `m_list_cate` VALUES ('1820', '589');
INSERT INTO `m_list_cate` VALUES ('1821', '589');
INSERT INTO `m_list_cate` VALUES ('1822', '589');
INSERT INTO `m_list_cate` VALUES ('1823', '591');

-- ----------------------------
-- Table structure for `m_log`
-- ----------------------------
DROP TABLE IF EXISTS `m_log`;
CREATE TABLE `m_log` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `note` varchar(255) NOT NULL COMMENT '日志摘要',
  `url` varchar(255) NOT NULL COMMENT '请求网址',
  `dateline` int(10) unsigned NOT NULL default '0' COMMENT '执行时间',
  `appid` varchar(30) NOT NULL default 'www' COMMENT '接入APP_ID',
  `admin_id` int(10) unsigned NOT NULL default '0' COMMENT '操作人',
  `tid` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='日志记录';

-- ----------------------------
-- Records of m_log
-- ----------------------------

-- ----------------------------
-- Table structure for `m_module`
-- ----------------------------
DROP TABLE IF EXISTS `m_module`;
CREATE TABLE `m_module` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `title` varchar(255) NOT NULL COMMENT '模块名称',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0不使用1使用',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '模块排序',
  `note` varchar(255) NOT NULL COMMENT '模块说明',
  `layout` text NOT NULL COMMENT '布局',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='模块管理，每创建一个模块自动创建一个表';

-- ----------------------------
-- Records of m_module
-- ----------------------------
INSERT INTO `m_module` VALUES ('21', '图片轮播', '1', '20', '适用于图片播放器，图片友情链接', 'pic,link,target');
INSERT INTO `m_module` VALUES ('23', '自定义链接', '1', '30', '适用于导航，页脚文本导航，文字友情链接', 'link,target');
INSERT INTO `m_module` VALUES ('40', '单页信息', '1', '60', '适用于公司简介，联系我们', 'hits,dateline');
INSERT INTO `m_module` VALUES ('74', '注册审核模块', '1', '130', '用户实现会员自动审核验证', 'dateline,account');
INSERT INTO `m_module` VALUES ('83', '音乐', '1', '140', '', 'hits,dateline');

-- ----------------------------
-- Table structure for `m_module_fields`
-- ----------------------------
DROP TABLE IF EXISTS `m_module_fields`;
CREATE TABLE `m_module_fields` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '字段ID，自增',
  `module_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '模块ID',
  `title` varchar(255) NOT NULL COMMENT '字段名称',
  `identifier` varchar(50) NOT NULL COMMENT '字段标识串',
  `field_type` varchar(255) NOT NULL default '200' COMMENT '字段存储类型',
  `note` varchar(255) NOT NULL COMMENT '字段内容备注',
  `form_type` varchar(100) NOT NULL COMMENT '表单类型',
  `form_style` varchar(255) NOT NULL COMMENT '表单CSS',
  `format` varchar(100) NOT NULL COMMENT '格式化方式',
  `content` varchar(255) NOT NULL COMMENT '默认值',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  `ext` text NOT NULL COMMENT '扩展内容',
  `is_front` tinyint(1) unsigned NOT NULL default '0' COMMENT '0前端不可用1前端可用',
  `search` tinyint(1) NOT NULL default '0' COMMENT '0不支持搜索1完全匹配搜索2模糊匹配搜索3区间搜索',
  `search_separator` varchar(10) NOT NULL COMMENT '分割符，仅限区间搜索时有效',
  PRIMARY KEY  (`id`),
  KEY `module_id` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=319 DEFAULT CHARSET=utf8 COMMENT='字段管理器';

-- ----------------------------
-- Records of m_module_fields
-- ----------------------------
INSERT INTO `m_module_fields` VALUES ('92', '21', '链接', 'link', 'longtext', '', 'text', '', 'safe', '', '90', 'a:2:{s:8:\"form_btn\";s:3:\"url\";s:5:\"width\";s:3:\"500\";}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('84', '23', '链接', 'link', 'longtext', '设置导航链接', 'url', '', 'safe', '', '90', 'a:1:{s:5:\"width\";s:3:\"500\";}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('85', '23', '链接方式', 'target', 'varchar', '设置是否在新窗口打开', 'radio', '', 'safe', '_self', '100', 'a:1:{s:11:\"option_list\";s:5:\"opt:6\";}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('93', '21', '链接方式', 'target', 'varchar', '设置是否在新窗口打开', 'radio', '', 'safe', '_blank', '100', 'a:3:{s:11:\"option_list\";s:5:\"opt:6\";s:9:\"put_order\";s:1:\"0\";s:10:\"ext_select\";b:0;}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('131', '40', '内容', 'content', 'longtext', '', 'editor', '', 'html_js', '', '255', 'a:7:{s:5:\"width\";s:3:\"800\";s:6:\"height\";s:3:\"360\";s:7:\"is_code\";b:0;s:9:\"btn_image\";s:1:\"1\";s:9:\"btn_video\";s:1:\"1\";s:8:\"btn_file\";s:1:\"1\";s:8:\"btn_page\";b:0;}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('200', '21', '图片', 'pic', 'varchar', '统一宽度为980，高度自定义，建议统一高度300', 'upload', '', 'safe', '', '20', 'a:3:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"1\";}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('296', '74', '会员账号', 'account', 'varchar', '验证会员模块的账号', 'text', '', 'safe', '', '10', 'a:4:{s:8:\"form_btn\";s:0:\"\";s:5:\"width\";s:3:\"500\";s:15:\"ext_quick_words\";s:0:\"\";s:14:\"ext_quick_type\";s:0:\"\";}', '1', '0', '');
INSERT INTO `m_module_fields` VALUES ('315', '83', '封面图', 'pic', 'varchar', '', 'upload', '', 'safe', '', '10', 'a:3:{s:7:\"cate_id\";s:1:\"1\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"1\";}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('316', '83', '音乐地址', 'music_addr', 'longtext', '', 'upload', '', 'safe', '', '20', 'a:3:{s:7:\"cate_id\";s:2:\"16\";s:11:\"is_multiple\";s:1:\"0\";s:11:\"upload_auto\";s:1:\"1\";}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('317', '83', '歌词', 'content', 'longtext', '', 'editor', '', 'html', '', '30', 'a:11:{s:5:\"width\";s:3:\"950\";s:6:\"height\";s:3:\"360\";s:7:\"is_code\";s:0:\"\";s:9:\"btn_image\";s:1:\"1\";s:9:\"btn_video\";s:1:\"1\";s:8:\"btn_file\";s:1:\"1\";s:8:\"btn_page\";s:0:\"\";s:8:\"btn_info\";s:0:\"\";s:7:\"is_read\";s:0:\"\";s:5:\"etype\";s:4:\"full\";s:7:\"btn_map\";s:0:\"\";}', '0', '0', '');
INSERT INTO `m_module_fields` VALUES ('318', '83', '歌手', 'fullname', 'varchar', '', 'text', '', 'safe', '', '11', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', '0', '0', '');

-- ----------------------------
-- Table structure for `m_opt`
-- ----------------------------
DROP TABLE IF EXISTS `m_opt`;
CREATE TABLE `m_opt` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `group_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '组ID',
  `parent_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '父级ID',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `val` varchar(255) NOT NULL COMMENT '值',
  `taxis` int(10) unsigned NOT NULL default '255' COMMENT '排序，值越小越往前靠',
  PRIMARY KEY  (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COMMENT='表单列表选项';

-- ----------------------------
-- Records of m_opt
-- ----------------------------
INSERT INTO `m_opt` VALUES ('1', '1', '0', '女', '', '20');
INSERT INTO `m_opt` VALUES ('2', '1', '0', '男', '1', '10');
INSERT INTO `m_opt` VALUES ('5', '2', '0', '福建省', '福建省', '255');
INSERT INTO `m_opt` VALUES ('6', '2', '5', '泉州市', '泉州市', '255');
INSERT INTO `m_opt` VALUES ('7', '2', '6', '永春县', '永春县', '255');
INSERT INTO `m_opt` VALUES ('8', '2', '7', '一都镇', '一都镇', '255');
INSERT INTO `m_opt` VALUES ('9', '2', '8', '美岭村', '美岭村', '255');
INSERT INTO `m_opt` VALUES ('11', '2', '0', '广东省', '广东省', '255');
INSERT INTO `m_opt` VALUES ('12', '2', '11', '深圳市', '深圳市', '255');
INSERT INTO `m_opt` VALUES ('13', '2', '12', '龙岗区', '龙岗区', '10');
INSERT INTO `m_opt` VALUES ('14', '2', '12', '罗湖区', '罗湖区', '20');
INSERT INTO `m_opt` VALUES ('15', '2', '12', '福田区', '福田区', '30');
INSERT INTO `m_opt` VALUES ('16', '2', '12', '龙华区', '龙华区', '40');
INSERT INTO `m_opt` VALUES ('17', '4', '0', '是', '1', '10');
INSERT INTO `m_opt` VALUES ('18', '4', '0', '否', '', '20');
INSERT INTO `m_opt` VALUES ('21', '6', '0', '当前窗口', '_self', '10');
INSERT INTO `m_opt` VALUES ('22', '6', '0', '新窗口', '_blank', '20');
INSERT INTO `m_opt` VALUES ('23', '7', '0', '启用', '1', '10');
INSERT INTO `m_opt` VALUES ('24', '7', '0', '禁用', '', '20');
INSERT INTO `m_opt` VALUES ('25', '8', '0', 'UTF-8', 'utf8', '20');
INSERT INTO `m_opt` VALUES ('26', '8', '0', 'GBK', 'gbk', '10');
INSERT INTO `m_opt` VALUES ('62', '12', '0', '不置顶', '', '10');
INSERT INTO `m_opt` VALUES ('63', '12', '0', '一级置顶', '1', '20');
INSERT INTO `m_opt` VALUES ('64', '12', '0', '二级置顶', '2', '30');
INSERT INTO `m_opt` VALUES ('65', '13', '0', '三分钟', '180', '10');

-- ----------------------------
-- Table structure for `m_opt_group`
-- ----------------------------
DROP TABLE IF EXISTS `m_opt_group`;
CREATE TABLE `m_opt_group` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID ',
  `title` varchar(100) NOT NULL COMMENT '名称，用于后台管理',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='可选菜单管理器';

-- ----------------------------
-- Records of m_opt_group
-- ----------------------------
INSERT INTO `m_opt_group` VALUES ('1', '性别');
INSERT INTO `m_opt_group` VALUES ('2', '省市县多级联动');
INSERT INTO `m_opt_group` VALUES ('4', '是与否');
INSERT INTO `m_opt_group` VALUES ('6', '窗口打开方式');
INSERT INTO `m_opt_group` VALUES ('7', '注册');
INSERT INTO `m_opt_group` VALUES ('8', '邮件编码');
INSERT INTO `m_opt_group` VALUES ('12', '置顶属性');
INSERT INTO `m_opt_group` VALUES ('13', '等候时间');

-- ----------------------------
-- Table structure for `m_order`
-- ----------------------------
DROP TABLE IF EXISTS `m_order`;
CREATE TABLE `m_order` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `sn` varchar(255) NOT NULL COMMENT '订单编号，唯一值',
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT '会员ID号，为0表示游客',
  `addtime` int(10) unsigned NOT NULL default '0' COMMENT '添加时间',
  `price` decimal(10,4) NOT NULL default '0.0000' COMMENT '金额',
  `currency_id` int(10) unsigned NOT NULL default '0' COMMENT '货币类型',
  `currency_rate` decimal(13,8) unsigned NOT NULL default '1.00000000' COMMENT '货币汇率',
  `status` varchar(255) NOT NULL COMMENT '订单的最后状态',
  `status_title` varchar(255) NOT NULL COMMENT '订单状态说明',
  `endtime` int(10) unsigned NOT NULL default '0' COMMENT '结束时间',
  `passwd` varchar(255) NOT NULL COMMENT '密码串',
  `ext` text NOT NULL COMMENT '扩展内容信息，可用于存储一些扩展信息',
  `note` text NOT NULL COMMENT '摘要',
  `email` varchar(255) NOT NULL COMMENT '邮箱，用于接收通知',
  `mobile` varchar(50) NOT NULL COMMENT '手机号，用于短信发送',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `ordersn` (`sn`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='订单中心';

-- ----------------------------
-- Records of m_order
-- ----------------------------
INSERT INTO `m_order` VALUES ('13', 'P2016091173U00023003', '23', '1473581424', '3708.0000', '1', '1.00000000', 'end', '订单完成', '1476352977', '2564ff8f777cef5fb3fce8f47c442ceb', '', 'fasdfasdfsadf', 'admin@phpok.com', '15818533971');
INSERT INTO `m_order` VALUES ('19', 'KF20161013193521BSJ', '24', '1476354952', '2000.0000', '1', '6.16989994', 'shipping', '', '0', 'e117ef9e86f571ff3a9654d4904ce20f', '', '', 'admin@phpok.com', '15818533972');
INSERT INTO `m_order` VALUES ('20', 'KF20161013194849ELH', '25', '1476355746', '999.0000', '1', '6.16989994', 'unpaid', '', '0', '285c4bc42d63f8ad295900a3dfc4cf1b', '', '', 'demo@demo.com', '');
INSERT INTO `m_order` VALUES ('21', 'KF2016101319534OUJ', '27', '1476355996', '999.0000', '1', '6.16989994', 'paid', '', '0', '485009ee449b9a5fa961786d867d1dc1', '', '', 'suxiangkun@126.com', '');

-- ----------------------------
-- Table structure for `m_order_address`
-- ----------------------------
DROP TABLE IF EXISTS `m_order_address`;
CREATE TABLE `m_order_address` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `order_id` int(10) unsigned NOT NULL default '0' COMMENT '订单ID',
  `country` varchar(255) NOT NULL default '中国' COMMENT '国家',
  `province` varchar(255) NOT NULL COMMENT '省信息',
  `city` varchar(255) NOT NULL COMMENT '市',
  `county` varchar(255) NOT NULL COMMENT '县',
  `address` varchar(255) NOT NULL COMMENT '地址信息（不含国家，省市县镇区信息）',
  `mobile` varchar(100) NOT NULL COMMENT '手机号码',
  `tel` varchar(100) NOT NULL COMMENT '电话号码',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `fullname` varchar(100) NOT NULL COMMENT '联系人姓名',
  `zipcode` varchar(50) NOT NULL COMMENT '邮编',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='订单地址库';

-- ----------------------------
-- Records of m_order_address
-- ----------------------------
INSERT INTO `m_order_address` VALUES ('18', '19', '中国', '', '', '', '', '', '', '', '', '');
INSERT INTO `m_order_address` VALUES ('19', '20', '中国', '', '', '', '', '', '', '', '', '');
INSERT INTO `m_order_address` VALUES ('12', '13', '中国', '广东省', '深圳市', '盐田区', '测试地址', '15818533971', '0755-1234657', 'admin@phpok.com', '测试账号', '518000');
INSERT INTO `m_order_address` VALUES ('20', '21', '中国', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `m_order_express`
-- ----------------------------
DROP TABLE IF EXISTS `m_order_express`;
CREATE TABLE `m_order_express` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `order_id` int(10) unsigned NOT NULL default '0' COMMENT '订单ID号',
  `express_id` int(11) NOT NULL default '0' COMMENT '物流ID号',
  `code` varchar(255) NOT NULL COMMENT '物流查询编码，可用于查询快递进度',
  `addtime` int(10) unsigned NOT NULL default '0' COMMENT '登记时间',
  `last_query_time` int(11) NOT NULL default '0' COMMENT '最后一次检索时间',
  `title` varchar(255) NOT NULL COMMENT '快递名称',
  `homepage` varchar(255) NOT NULL COMMENT '快递官网',
  `company` varchar(255) NOT NULL COMMENT '快递的公司全称',
  `is_end` tinyint(1) NOT NULL default '0' COMMENT '0未结束1已结束',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='订单中涉及到的物流分配';

-- ----------------------------
-- Records of m_order_express
-- ----------------------------
INSERT INTO `m_order_express` VALUES ('4', '19', '4', '035652070464', '1476361318', '1476438520', '顺丰速运', 'http://www.sf-express.com/', '顺丰速运(集团)有限公司', '1');

-- ----------------------------
-- Table structure for `m_order_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `m_order_invoice`;
CREATE TABLE `m_order_invoice` (
  `order_id` int(10) unsigned NOT NULL default '0' COMMENT '订单ID号',
  `type` varchar(100) NOT NULL COMMENT '发票类型',
  `title` varchar(255) NOT NULL COMMENT '发票抬头',
  `content` text NOT NULL COMMENT '发票内容',
  `note` text NOT NULL COMMENT '发票的备注信息',
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单发票';

-- ----------------------------
-- Records of m_order_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for `m_order_log`
-- ----------------------------
DROP TABLE IF EXISTS `m_order_log`;
CREATE TABLE `m_order_log` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `order_id` int(10) unsigned NOT NULL default '0' COMMENT '订单ID',
  `order_express_id` int(11) unsigned NOT NULL default '0' COMMENT '定单中的物流ID',
  `addtime` int(10) unsigned NOT NULL default '0' COMMENT '操作时间',
  `who` varchar(255) NOT NULL COMMENT '操作人名称（可以是公司名称，也可以是用户名，可以是物流等）',
  `note` text NOT NULL COMMENT '操作内容',
  PRIMARY KEY  (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COMMENT='订单日志，用于了解当前的订单处理进度';

-- ----------------------------
-- Records of m_order_log
-- ----------------------------
INSERT INTO `m_order_log` VALUES ('114', '19', '4', '1476372011', '顺丰速运', '快件到达 【深圳集散中心】');
INSERT INTO `m_order_log` VALUES ('32', '13', '0', '1473581424', 'admin', '订单创建成功，订单编号：P2016091173U00023003');
INSERT INTO `m_order_log` VALUES ('33', '13', '0', '1473581424', 'admin', '订单（P2016091173U00023003）状态变更为：等待付款');
INSERT INTO `m_order_log` VALUES ('113', '19', '4', '1476376873', '顺丰速运', '快件在【深圳集散中心】已装车，准备发往 【深圳黄田集散中心】');
INSERT INTO `m_order_log` VALUES ('45', '13', '0', '1476352896', '管理员：admin', '订单（P2016091173U00023003）状态变更为：订单完成');
INSERT INTO `m_order_log` VALUES ('46', '13', '0', '1476352904', '管理员：admin', '订单（P2016091173U00023003）状态变更为：订单完成');
INSERT INTO `m_order_log` VALUES ('47', '13', '0', '1476352977', '管理员：admin', '订单（P2016091173U00023003）状态变更为：订单完成');
INSERT INTO `m_order_log` VALUES ('110', '19', '4', '1476385028', '顺丰速运', '快件到达 【深圳五和集散中心】');
INSERT INTO `m_order_log` VALUES ('63', '19', '0', '1476354952', '苏相锟(admin)', '管理员增加产品信息');
INSERT INTO `m_order_log` VALUES ('64', '19', '0', '1476354952', '苏相锟(admin)', '管理员创建订单');
INSERT INTO `m_order_log` VALUES ('65', '20', '0', '1476355746', '苏相锟(admin)', '管理员创建订单');
INSERT INTO `m_order_log` VALUES ('66', '21', '0', '1476355996', '苏相锟(admin)', '管理员创建订单');
INSERT INTO `m_order_log` VALUES ('67', '21', '0', '1476357578', '管理员：admin', '订单（KF2016101319534OUJ）状态变更为：等待付款');
INSERT INTO `m_order_log` VALUES ('68', '21', '0', '1476359734', '管理员：admin', '订单（KF2016101319534OUJ）状态变更为：付款完成');
INSERT INTO `m_order_log` VALUES ('112', '19', '4', '1476378019', '顺丰速运', '快件到达 【深圳黄田集散中心】');
INSERT INTO `m_order_log` VALUES ('70', '19', '0', '1476360719', '管理员：admin', '订单（KF20161013193521BSJ）状态变更为：');
INSERT INTO `m_order_log` VALUES ('109', '19', '4', '1476387532', '顺丰速运', '快件在【深圳五和集散中心】已装车，准备发往 【深圳宝安深圳北站营业部】');
INSERT INTO `m_order_log` VALUES ('108', '19', '4', '1476388813', '顺丰速运', '快件到达 【深圳宝安深圳北站营业部】');
INSERT INTO `m_order_log` VALUES ('99', '19', '0', '1476361318', '管理员：admin', '订单（KF20161013193521BSJ）状态变更为：正在发货');
INSERT INTO `m_order_log` VALUES ('91', '19', '0', '1476361183', '管理员：admin', '订单（KF20161013193521BSJ）状态变更为：');
INSERT INTO `m_order_log` VALUES ('78', '19', '0', '1476360802', '管理员：admin', '订单（KF20161013193521BSJ）状态变更为：');
INSERT INTO `m_order_log` VALUES ('119', '19', '4', '1476333811', '顺丰速运', '快件在【泉州丰泽普明工业区营业点】已装车，准备发往 【泉州清濛集散中心】');
INSERT INTO `m_order_log` VALUES ('118', '19', '4', '1476335404', '顺丰速运', '快件到达 【泉州清濛集散中心】');
INSERT INTO `m_order_log` VALUES ('117', '19', '4', '1476343465', '顺丰速运', '快件在【泉州清濛集散中心】已装车，准备发往 【晋江总集散中心】');
INSERT INTO `m_order_log` VALUES ('116', '19', '4', '1476346107', '顺丰速运', '快件到达 【晋江总集散中心】');
INSERT INTO `m_order_log` VALUES ('115', '19', '4', '1476347623', '顺丰速运', '快件在【晋江总集散中心】已装车，准备发往 【深圳集散中心】');
INSERT INTO `m_order_log` VALUES ('106', '19', '4', '1476408099', '顺丰速运', '已签收,感谢使用顺丰,期待再次为您服务');
INSERT INTO `m_order_log` VALUES ('111', '19', '4', '1476381561', '顺丰速运', '快件在【深圳黄田集散中心】已装车，准备发往 【深圳五和集散中心】');
INSERT INTO `m_order_log` VALUES ('107', '19', '4', '1476398800', '顺丰速运', '正在派送途中(派件人:罗浪平,电话:18307559705)');
INSERT INTO `m_order_log` VALUES ('98', '19', '4', '1476361318', '苏相锟(admin)', '您的订单已经拣货完毕，待出库交付顺丰速运，运单号为：035652070464');
INSERT INTO `m_order_log` VALUES ('120', '19', '4', '1476331847', '顺丰速运', '顺丰速运 已收取快件');
INSERT INTO `m_order_log` VALUES ('121', '21', '0', '1476519512', '苏相锟(admin)', '录入支付信息，支付方式：支付宝快捷支付，支付金额：100.00元');
INSERT INTO `m_order_log` VALUES ('122', '21', '0', '1476519841', '管理员：admin', '订单（KF2016101319534OUJ）状态变更为：创建订单');
INSERT INTO `m_order_log` VALUES ('123', '21', '0', '1476520676', '管理员：admin', '订单（KF2016101319534OUJ）状态变更为：等待付款');
INSERT INTO `m_order_log` VALUES ('124', '21', '0', '1476520676', '苏相锟(admin)', '录入支付信息，支付方式：银联支付，支付金额：200.00元');
INSERT INTO `m_order_log` VALUES ('125', '21', '0', '1476520777', '苏相锟(admin)', '录入支付信息，支付方式：微信支付，支付金额：135.00元');
INSERT INTO `m_order_log` VALUES ('126', '21', '0', '1476520828', '苏相锟(admin)', '录入支付信息，支付方式：支付宝快捷支付，支付金额：465.00元');
INSERT INTO `m_order_log` VALUES ('127', '21', '0', '1476521010', '管理员：admin', '订单（KF2016101319534OUJ）状态变更为：付款完成');
INSERT INTO `m_order_log` VALUES ('128', '21', '0', '1476521010', '苏相锟(admin)', '录入支付信息，支付方式：银行汇款，支付金额：99.00元');
INSERT INTO `m_order_log` VALUES ('129', '21', '0', '1476521773', '苏相锟(admin)', '录入支付信息，支付方式：银行汇款，支付金额：564.00元');
INSERT INTO `m_order_log` VALUES ('130', '20', '0', '1476521841', '管理员：admin', '订单（KF20161013194849ELH）状态变更为：等待付款');
INSERT INTO `m_order_log` VALUES ('131', '20', '0', '1476521841', '苏相锟(admin)', '录入支付信息，支付方式：测试，支付金额：100.00元');

-- ----------------------------
-- Table structure for `m_order_payment`
-- ----------------------------
DROP TABLE IF EXISTS `m_order_payment`;
CREATE TABLE `m_order_payment` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `order_id` int(10) unsigned NOT NULL default '0' COMMENT '订单ID',
  `payment_id` varchar(255) NOT NULL default '0' COMMENT '支付方式ID，数字表示网上业务支付，字母为财富支付',
  `title` varchar(255) NOT NULL COMMENT '支付方式名称',
  `price` decimal(10,4) NOT NULL default '0.0000' COMMENT '支付金额',
  `startdate` int(10) unsigned NOT NULL default '0' COMMENT '开始支付操作',
  `dateline` int(11) NOT NULL default '0' COMMENT '支付时间',
  `ext` text NOT NULL COMMENT '其他常用扩展信息',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='订单支付';

-- ----------------------------
-- Records of m_order_payment
-- ----------------------------
INSERT INTO `m_order_payment` VALUES ('17', '13', '13', '银行汇款', '3708.0000', '1473581424', '0', '');
INSERT INTO `m_order_payment` VALUES ('19', '21', '1', '支付宝快捷支付', '100.0000', '1476519512', '1476519512', 'a:1:{s:6:\"备注\";s:18:\"本地测试录入\";}');
INSERT INTO `m_order_payment` VALUES ('20', '21', '3', '银联支付', '200.0000', '1476520676', '1476520676', 'a:1:{s:6:\"备注\";s:15:\"也是测试的\";}');
INSERT INTO `m_order_payment` VALUES ('21', '21', '4', '微信支付', '135.0000', '1476520777', '1476520777', 'a:1:{s:6:\"备注\";s:12:\"测试刷新\";}');
INSERT INTO `m_order_payment` VALUES ('24', '21', '13', '银行汇款', '564.0000', '1476521773', '1476521773', '');
INSERT INTO `m_order_payment` VALUES ('25', '20', '0', '测试', '100.0000', '1476521841', '1476521841', '');

-- ----------------------------
-- Table structure for `m_order_price`
-- ----------------------------
DROP TABLE IF EXISTS `m_order_price`;
CREATE TABLE `m_order_price` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `order_id` int(10) unsigned NOT NULL default '0' COMMENT '订单ID号',
  `code` varchar(255) NOT NULL COMMENT '编码',
  `price` decimal(10,4) NOT NULL default '0.0000' COMMENT '金额，-号表示优惠',
  PRIMARY KEY  (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COMMENT='订单金额明细清单';

-- ----------------------------
-- Records of m_order_price
-- ----------------------------
INSERT INTO `m_order_price` VALUES ('19', '1', 'discount', '169.0000');
INSERT INTO `m_order_price` VALUES ('18', '1', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('17', '1', 'product', '170.0000');
INSERT INTO `m_order_price` VALUES ('4', '2', 'product', '177.0000');
INSERT INTO `m_order_price` VALUES ('5', '2', 'shipping', '26.0000');
INSERT INTO `m_order_price` VALUES ('6', '2', 'fee', '0.0000');
INSERT INTO `m_order_price` VALUES ('7', '2', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('20', '3', 'product', '177.0000');
INSERT INTO `m_order_price` VALUES ('21', '3', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('22', '3', 'fee', '0.0000');
INSERT INTO `m_order_price` VALUES ('23', '3', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('24', '4', 'product', '100.0000');
INSERT INTO `m_order_price` VALUES ('25', '4', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('26', '4', 'fee', '0.0000');
INSERT INTO `m_order_price` VALUES ('27', '4', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('43', '5', 'discount', '1000.0000');
INSERT INTO `m_order_price` VALUES ('42', '5', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('41', '5', 'product', '1499.0000');
INSERT INTO `m_order_price` VALUES ('44', '6', 'product', '12374.0000');
INSERT INTO `m_order_price` VALUES ('45', '6', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('46', '6', 'fee', '0.0000');
INSERT INTO `m_order_price` VALUES ('47', '6', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('48', '7', 'product', '532.9100');
INSERT INTO `m_order_price` VALUES ('49', '7', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('50', '7', 'fee', '0.0000');
INSERT INTO `m_order_price` VALUES ('51', '7', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('52', '8', 'product', '413.1300');
INSERT INTO `m_order_price` VALUES ('53', '8', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('54', '8', 'fee', '0.0000');
INSERT INTO `m_order_price` VALUES ('55', '8', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('65', '9', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('64', '9', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('63', '9', 'product', '1099.0000');
INSERT INTO `m_order_price` VALUES ('84', '10', 'discount', '-100.0000');
INSERT INTO `m_order_price` VALUES ('83', '10', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('82', '10', 'product', '5184.0000');
INSERT INTO `m_order_price` VALUES ('85', '11', 'product', '4998.0000');
INSERT INTO `m_order_price` VALUES ('86', '11', 'shipping', '10.0000');
INSERT INTO `m_order_price` VALUES ('87', '11', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('88', '13', 'product', '3698.0000');
INSERT INTO `m_order_price` VALUES ('89', '13', 'shipping', '10.0000');
INSERT INTO `m_order_price` VALUES ('90', '13', 'fee', '0.0000');
INSERT INTO `m_order_price` VALUES ('91', '13', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('92', '14', 'product', '3288.0000');
INSERT INTO `m_order_price` VALUES ('93', '14', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('94', '14', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('95', '15', 'product', '3288.0000');
INSERT INTO `m_order_price` VALUES ('96', '15', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('97', '15', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('98', '16', 'product', '3288.0000');
INSERT INTO `m_order_price` VALUES ('99', '16', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('100', '16', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('101', '17', 'product', '3288.0000');
INSERT INTO `m_order_price` VALUES ('102', '17', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('103', '17', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('104', '18', 'product', '3288.0000');
INSERT INTO `m_order_price` VALUES ('105', '18', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('106', '18', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('107', '19', 'product', '2000.0000');
INSERT INTO `m_order_price` VALUES ('108', '19', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('109', '19', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('110', '20', 'product', '999.0000');
INSERT INTO `m_order_price` VALUES ('111', '20', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('112', '20', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('124', '21', 'discount', '0.0000');
INSERT INTO `m_order_price` VALUES ('123', '21', 'shipping', '0.0000');
INSERT INTO `m_order_price` VALUES ('122', '21', 'product', '999.0000');

-- ----------------------------
-- Table structure for `m_order_product`
-- ----------------------------
DROP TABLE IF EXISTS `m_order_product`;
CREATE TABLE `m_order_product` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `order_id` int(10) unsigned NOT NULL default '0' COMMENT '订单ID号',
  `tid` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `title` varchar(255) NOT NULL COMMENT '产品名称',
  `price` decimal(10,4) NOT NULL default '0.0000' COMMENT '产品单价',
  `qty` int(11) NOT NULL default '0' COMMENT '产品数量',
  `thumb` varchar(255) NOT NULL COMMENT '产品图片地址',
  `ext` text NOT NULL COMMENT '产品扩展属性',
  `weight` varchar(50) NOT NULL COMMENT '重量',
  `volume` varchar(50) NOT NULL COMMENT '体积',
  `unit` varchar(50) NOT NULL COMMENT '单位',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `is_virtual` tinyint(1) unsigned NOT NULL default '0' COMMENT '0实物1虚拟或服务',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='订单的产品信息';

-- ----------------------------
-- Records of m_order_product
-- ----------------------------
INSERT INTO `m_order_product` VALUES ('22', '19', '1753', '小米(MI) 小米5 全网通4G手机 双卡双待', '2000.0000', '1', 'res/201603/22/6e32b648bf93b490.jpg', '', '0', '0', '', '', '0');
INSERT INTO `m_order_product` VALUES ('23', '20', '1761', '华为 P7 移动4G手机', '999.0000', '1', 'res/201603/23/c941c40778124f2c.jpg', '', '0', '0', '台', '', '1');
INSERT INTO `m_order_product` VALUES ('24', '21', '1761', '华为 P7 移动4G手机', '999.0000', '1', 'res/201603/23/c941c40778124f2c.jpg', '', '0', '0', '台', '', '1');
INSERT INTO `m_order_product` VALUES ('16', '13', '1762', 'vivo Xplay5 全网通4G手机 4GB+128GB 双卡双待', '3698.0000', '1', 'res/201603/23/fceefc0374ff1ef2.jpg', 'a:1:{i:0;a:3:{s:5:\"title\";s:6:\"颜色\";s:7:\"content\";s:6:\"金色\";s:3:\"val\";s:4:\"gold\";}}', '0', '0', '', '', '0');

-- ----------------------------
-- Table structure for `m_payment`
-- ----------------------------
DROP TABLE IF EXISTS `m_payment`;
CREATE TABLE `m_payment` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `gid` int(10) unsigned NOT NULL default '0' COMMENT '付款组',
  `code` varchar(100) NOT NULL COMMENT '标识ID',
  `title` varchar(255) NOT NULL COMMENT '主题',
  `currency` varchar(30) NOT NULL COMMENT '可使用的货币ID',
  `logo1` varchar(255) NOT NULL COMMENT 'LOGO小图',
  `logo2` varchar(255) NOT NULL COMMENT 'LOGO中图',
  `logo3` varchar(255) NOT NULL COMMENT 'LOGO大图',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '状态0未使用1正在使用中',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序，值越小越往前靠',
  `note` text NOT NULL COMMENT '付款注意事项说明',
  `param` text NOT NULL COMMENT '参数',
  `wap` tinyint(1) NOT NULL default '0' COMMENT '0PC端1手机端',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='支付方案';

-- ----------------------------
-- Records of m_payment
-- ----------------------------
INSERT INTO `m_payment` VALUES ('1', '1', 'alipay', '支付宝快捷支付', 'CNY', '', '', '', '1', '10', '', 'a:4:{s:3:\"pid\";s:16:\"2088002080074890\";s:3:\"key\";s:32:\"980txhi4j8bz5xsdyk94swx3tzvgpq40\";s:5:\"email\";s:15:\"qinggan@188.com\";s:5:\"ptype\";s:25:\"create_direct_pay_by_user\";}', '0');
INSERT INTO `m_payment` VALUES ('3', '1', 'unionpay', '银联支付', 'CNY', '', '', '', '1', '20', '', 'a:12:{s:11:\"cvn2_encode\";s:2:\"no\";s:11:\"date_encode\";s:2:\"no\";s:10:\"pan_encode\";s:2:\"no\";s:14:\"sign_cert_file\";s:29:\"res/bank/6e99144bb14bfdbe.pfx\";s:13:\"sign_cert_pwd\";s:6:\"000000\";s:17:\"encrypt_cert_file\";s:0:\"\";s:16:\"verify_cert_file\";s:29:\"res/bank/2b35f4d4048a70ae.cer\";s:16:\"single_query_url\";s:54:\"https://101.231.204.80:5000/gateway/api/queryTrans.do \";s:14:\"trans_url_type\";s:5:\"front\";s:9:\"trans_url\";s:56:\"https://101.231.204.80:5000/gateway/api/frontTransReq.do\";s:6:\"mer_id\";s:15:\"777290058115989\";s:12:\"channel_type\";s:2:\"pc\";}', '0');
INSERT INTO `m_payment` VALUES ('4', '1', 'wxpay', '微信支付', 'CNY', '', '', '', '1', '30', '', 'a:10:{s:5:\"appid\";s:18:\"wxd61676fe9d7468ed\";s:6:\"mch_id\";s:10:\"1283067101\";s:7:\"app_key\";s:32:\"fa9f9fea5fe60ad17c60de61ab496131\";s:10:\"app_secret\";s:32:\"5239321d1305a4786f23cd106f5ab479\";s:11:\"device_info\";s:3:\"WEB\";s:10:\"trade_type\";s:6:\"native\";s:8:\"pem_cert\";s:29:\"res/bank/2a57f69cb194f85b.pem\";s:7:\"pem_key\";s:29:\"res/bank/4613457a9c419a6b.pem\";s:10:\"proxy_host\";s:7:\"0.0.0.0\";s:10:\"proxy_port\";s:0:\"\";}', '0');
INSERT INTO `m_payment` VALUES ('11', '2', 'alipay', '支付宝支付', 'CNY', '', '', '', '1', '10', '', 'a:4:{s:3:\"pid\";s:0:\"\";s:3:\"key\";s:0:\"\";s:5:\"email\";s:0:\"\";s:5:\"ptype\";s:25:\"create_direct_pay_by_user\";}', '1');
INSERT INTO `m_payment` VALUES ('12', '2', 'wxpay', '微信支付', 'CNY', '', '', '', '1', '20', '', 'a:12:{s:5:\"appid\";s:0:\"\";s:6:\"mch_id\";s:0:\"\";s:7:\"app_key\";s:0:\"\";s:10:\"app_secret\";s:0:\"\";s:11:\"device_info\";s:0:\"\";s:10:\"trade_type\";s:3:\"wap\";s:10:\"jsapi_link\";s:0:\"\";s:8:\"pem_cert\";s:0:\"\";s:7:\"pem_key\";s:0:\"\";s:6:\"pem_ca\";s:0:\"\";s:10:\"proxy_host\";s:7:\"0.0.0.0\";s:10:\"proxy_port\";s:0:\"\";}', '1');
INSERT INTO `m_payment` VALUES ('13', '1', 'offlinepay', '银行汇款', 'CNY', '', '', '', '1', '40', '', 'a:1:{s:7:\"tplfile\";s:14:\"offlinepayment\";}', '0');

-- ----------------------------
-- Table structure for `m_payment_group`
-- ----------------------------
DROP TABLE IF EXISTS `m_payment_group`;
CREATE TABLE `m_payment_group` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `site_id` int(11) NOT NULL default '0' COMMENT '站点ID，为0表示全部',
  `title` varchar(255) NOT NULL COMMENT '付款组名称',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0不启用1启用',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序，值越小越往前靠',
  `is_default` tinyint(1) unsigned NOT NULL default '0' COMMENT '1默认组0普通组',
  `is_wap` tinyint(1) NOT NULL default '0' COMMENT '0是PC端，1是手机端',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='付款组管理';

-- ----------------------------
-- Records of m_payment_group
-- ----------------------------
INSERT INTO `m_payment_group` VALUES ('1', '1', '快捷支付', '1', '10', '0', '0');
INSERT INTO `m_payment_group` VALUES ('2', '1', '快捷支付', '1', '20', '1', '1');

-- ----------------------------
-- Table structure for `m_payment_log`
-- ----------------------------
DROP TABLE IF EXISTS `m_payment_log`;
CREATE TABLE `m_payment_log` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `sn` varchar(255) NOT NULL COMMENT '支付编号',
  `type` varchar(100) NOT NULL COMMENT 'order订单,recharge充值other其他',
  `payment_id` varchar(255) NOT NULL default '0' COMMENT '支付方式，为数字时表示payment表中的主要支付方式，为字母数字混合表示财富付款',
  `title` varchar(255) NOT NULL COMMENT '主题',
  `dateline` int(10) unsigned NOT NULL default '0' COMMENT '记录时间',
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT '会员ID',
  `price` decimal(10,2) unsigned NOT NULL default '0.00' COMMENT '价格',
  `currency_id` int(10) unsigned NOT NULL default '0' COMMENT '货币ID',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `status` tinyint(1) NOT NULL default '0' COMMENT '0未支付成功1已支付成功',
  `ext` text NOT NULL COMMENT '扩展',
  PRIMARY KEY  (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='支付日志';

-- ----------------------------
-- Records of m_payment_log
-- ----------------------------
INSERT INTO `m_payment_log` VALUES ('1', 'P20150928001', 'order', '1', '订单：P20150928001', '1443431348', '23', '1.00', '1', '订单：P20150928001', '1', '');
INSERT INTO `m_payment_log` VALUES ('2', 'P20150928002', 'order', '1', '订单：P20150928002', '1443432620', '23', '1.00', '1', '订单：P20150928002', '1', '');
INSERT INTO `m_payment_log` VALUES ('3', 'P20151104001', 'order', '4', '订单：P20151104001', '1409721340', '23', '203.00', '1', '订单：P20151104001', '1', 'a:7:{s:6:\"openid\";s:28:\"oUpF8uMEb4qRXf22hE3X68TekukE\";s:10:\"trade_type\";s:5:\"JSAPI\";s:9:\"bank_type\";s:3:\"CFT\";s:9:\"total_fee\";s:1:\"1\";s:8:\"fee_type\";s:3:\"CNY\";s:14:\"transaction_id\";s:28:\"1004400740201409030005092168\";s:8:\"time_end\";s:14:\"20140903131540\";}');
INSERT INTO `m_payment_log` VALUES ('4', 'KF20151030115123CWR', 'order', '4', '订单：', '1447821976', '23', '170.00', '1', '订单：', '0', '');
INSERT INTO `m_payment_log` VALUES ('5', 'P2015121051U00023001', '', '4', '订单：', '1449736191', '23', '177.00', '1', '订单：', '0', '');
INSERT INTO `m_payment_log` VALUES ('6', 'P2016022545U00023001', 'order', '12', '订单：', '1459287342', '23', '100.00', '1', '订单：', '0', '');
INSERT INTO `m_payment_log` VALUES ('7', 'P2016033177U00023001', 'order', '13', '订单：P2016033177U00023001', '1473660928', '23', '12372.95', '1', '订单：P2016033177U00023001', '0', '');
INSERT INTO `m_payment_log` VALUES ('8', 'P2016080435U00023001', 'order', '4', '订单：P2016080435U00023001', '1471335239', '23', '1088.00', '1', '订单：P2016080435U00023001', '0', '');
INSERT INTO `m_payment_log` VALUES ('9', 'P2016091116U00023002', 'order', '1', '订单：P2016091116U00023002', '1473581132', '23', '3298.00', '1', '订单：P2016091116U00023002', '0', '');
INSERT INTO `m_payment_log` VALUES ('10', 'P2016091173U00023003', 'order', '13', '订单：P2016091173U00023003', '1473581424', '23', '3708.00', '1', '订单：P2016091173U00023003', '0', '');

-- ----------------------------
-- Table structure for `m_phpok`
-- ----------------------------
DROP TABLE IF EXISTS `m_phpok`;
CREATE TABLE `m_phpok` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL default '0' COMMENT '项目ID',
  `type_id` varchar(255) NOT NULL COMMENT '调用类型',
  `identifier` varchar(100) NOT NULL COMMENT '标识串，同一个站点中只能唯一',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '站点ID',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '状态',
  `cateid` int(10) unsigned NOT NULL default '0' COMMENT '分类ID',
  `ext` text NOT NULL COMMENT '扩展属性',
  `is_api` tinyint(1) unsigned NOT NULL default '0' COMMENT '0不支持API调用，1支持',
  `sqlinfo` text NOT NULL COMMENT 'SQL语句',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `identifier` (`identifier`,`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=288 DEFAULT CHARSET=utf8 COMMENT='数据调用中心';

-- ----------------------------
-- Records of m_phpok
-- ----------------------------
INSERT INTO `m_phpok` VALUES ('19', '头部导航内容', '42', 'arclist', 'menu', '1', '1', '0', 'a:23:{s:5:\"psize\";s:2:\"80\";s:6:\"offset\";i:0;s:7:\"is_list\";s:1:\"1\";s:7:\"in_text\";s:1:\"1\";s:4:\"attr\";b:0;s:11:\"fields_need\";b:0;s:3:\"tag\";b:0;s:8:\"keywords\";b:0;s:7:\"orderby\";b:0;s:4:\"cate\";b:0;s:8:\"cate_ext\";i:0;s:12:\"catelist_ext\";i:0;s:11:\"project_ext\";i:0;s:11:\"sublist_ext\";i:0;s:10:\"parent_ext\";i:0;s:13:\"fields_format\";i:0;s:8:\"user_ext\";i:0;s:4:\"user\";b:0;s:12:\"userlist_ext\";i:0;s:6:\"in_sub\";s:1:\"1\";s:10:\"in_project\";i:0;s:7:\"in_cate\";i:0;s:8:\"title_id\";b:0;}', '0', '');
INSERT INTO `m_phpok` VALUES ('94', '页脚导航', '147', 'arclist', 'footnav', '1', '1', '0', 'a:23:{s:5:\"psize\";s:2:\"10\";s:6:\"offset\";i:0;s:7:\"is_list\";s:1:\"1\";s:7:\"in_text\";s:1:\"1\";s:4:\"attr\";b:0;s:11:\"fields_need\";b:0;s:3:\"tag\";b:0;s:8:\"keywords\";b:0;s:7:\"orderby\";b:0;s:4:\"cate\";b:0;s:8:\"cate_ext\";i:0;s:12:\"catelist_ext\";i:0;s:11:\"project_ext\";i:0;s:11:\"sublist_ext\";i:0;s:10:\"parent_ext\";i:0;s:13:\"fields_format\";i:0;s:8:\"user_ext\";i:0;s:4:\"user\";b:0;s:12:\"userlist_ext\";i:0;s:6:\"in_sub\";i:0;s:10:\"in_project\";i:0;s:7:\"in_cate\";i:0;s:8:\"title_id\";b:0;}', '0', '');
INSERT INTO `m_phpok` VALUES ('287', '热门音乐', '390', 'arclist', 'rmyl', '1', '1', '588', 'a:15:{s:5:\"psize\";s:2:\"10\";s:6:\"offset\";i:0;s:7:\"is_list\";s:1:\"1\";s:4:\"attr\";s:0:\"\";s:11:\"fields_need\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:7:\"orderby\";s:11:\"l.hits DESC\";s:6:\"fields\";s:1:\"*\";s:13:\"fields_format\";i:0;s:4:\"user\";s:0:\"\";s:8:\"user_ext\";i:0;s:9:\"usergroup\";i:0;s:6:\"in_sub\";i:0;s:8:\"title_id\";s:0:\"\";}', '0', '');

-- ----------------------------
-- Table structure for `m_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `m_plugins`;
CREATE TABLE `m_plugins` (
  `id` varchar(100) NOT NULL COMMENT '插件ID，仅限字母，数字及下划线',
  `title` varchar(255) NOT NULL COMMENT '插件名称',
  `author` varchar(255) NOT NULL COMMENT '开发者',
  `version` varchar(50) NOT NULL COMMENT '插件版本号',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0禁用1使用',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '值越小越往前靠',
  `note` varchar(255) NOT NULL COMMENT '摘要说明',
  `param` text NOT NULL COMMENT '参数',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件管理器';

-- ----------------------------
-- Records of m_plugins
-- ----------------------------
INSERT INTO `m_plugins` VALUES ('identifier', '标识串自动生成工具', 'phpok.com', '1.0', '1', '10', '可实现以 title 的表单数据', 'a:3:{s:9:\"is_youdao\";s:0:\"\";s:10:\"is_pingyin\";s:1:\"1\";s:5:\"is_py\";s:1:\"1\";}');

-- ----------------------------
-- Table structure for `m_popedom`
-- ----------------------------
DROP TABLE IF EXISTS `m_popedom`;
CREATE TABLE `m_popedom` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '权限ID，即自增ID',
  `gid` mediumint(8) unsigned NOT NULL default '0' COMMENT '所属组ID，对应sysmenu表中的ID',
  `pid` int(10) unsigned NOT NULL default '0' COMMENT '项目ID，仅在list中有效',
  `title` varchar(255) NOT NULL COMMENT '名称，如：添加，修改等',
  `identifier` varchar(255) NOT NULL COMMENT '字符串，如add，modify等',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  PRIMARY KEY  (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=1360 DEFAULT CHARSET=utf8 COMMENT='权限明细';

-- ----------------------------
-- Records of m_popedom
-- ----------------------------
INSERT INTO `m_popedom` VALUES ('2', '19', '0', '配置全局', 'gset', '10');
INSERT INTO `m_popedom` VALUES ('3', '19', '0', '内容', 'set', '20');
INSERT INTO `m_popedom` VALUES ('4', '29', '0', '添加', 'add', '10');
INSERT INTO `m_popedom` VALUES ('5', '29', '0', '修改', 'modify', '20');
INSERT INTO `m_popedom` VALUES ('6', '29', '0', '删除', 'delete', '30');
INSERT INTO `m_popedom` VALUES ('7', '18', '0', '添加', 'add', '10');
INSERT INTO `m_popedom` VALUES ('8', '18', '0', '编辑', 'modify', '20');
INSERT INTO `m_popedom` VALUES ('9', '18', '0', '删除', 'delete', '30');
INSERT INTO `m_popedom` VALUES ('10', '23', '0', '添加', 'add', '10');
INSERT INTO `m_popedom` VALUES ('11', '23', '0', '编辑', 'modify', '20');
INSERT INTO `m_popedom` VALUES ('12', '23', '0', '删除', 'delete', '30');
INSERT INTO `m_popedom` VALUES ('14', '22', '0', 'GD配置', 'gd', '10');
INSERT INTO `m_popedom` VALUES ('15', '22', '0', '附件分类维护', 'cate', '20');
INSERT INTO `m_popedom` VALUES ('16', '22', '0', '批处理', 'pl', '30');
INSERT INTO `m_popedom` VALUES ('17', '16', '0', '配置', 'config', '10');
INSERT INTO `m_popedom` VALUES ('18', '16', '0', '安装', 'install', '20');
INSERT INTO `m_popedom` VALUES ('19', '16', '0', '卸载', 'uninstall', '30');
INSERT INTO `m_popedom` VALUES ('20', '16', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('21', '17', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('22', '13', '0', '添加', 'add', '10');
INSERT INTO `m_popedom` VALUES ('23', '13', '0', '修改', 'modify', '20');
INSERT INTO `m_popedom` VALUES ('24', '13', '0', '删除', 'delete', '30');
INSERT INTO `m_popedom` VALUES ('25', '13', '0', '查看', 'list', '5');
INSERT INTO `m_popedom` VALUES ('26', '19', '0', '查看', 'list', '5');
INSERT INTO `m_popedom` VALUES ('33', '21', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('34', '21', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('35', '21', '0', '编辑', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('36', '21', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('37', '18', '0', '查看', 'list', '5');
INSERT INTO `m_popedom` VALUES ('38', '23', '0', '查看', 'list', '5');
INSERT INTO `m_popedom` VALUES ('83', '16', '0', '启用/禁用', 'status', '50');
INSERT INTO `m_popedom` VALUES ('40', '16', '0', '查看', 'list', '5');
INSERT INTO `m_popedom` VALUES ('41', '17', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('42', '18', '0', '扩展', 'ext', '40');
INSERT INTO `m_popedom` VALUES ('43', '19', '0', '扩展', 'ext', '30');
INSERT INTO `m_popedom` VALUES ('44', '14', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('45', '14', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('46', '14', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('47', '14', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('48', '25', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('49', '25', '0', '配置', 'set', '20');
INSERT INTO `m_popedom` VALUES ('80', '14', '0', '启用/禁用', 'status', '50');
INSERT INTO `m_popedom` VALUES ('52', '29', '0', '查看', 'list', '5');
INSERT INTO `m_popedom` VALUES ('53', '27', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('54', '27', '0', '配置', 'set', '20');
INSERT INTO `m_popedom` VALUES ('81', '19', '0', '网站', 'site', '40');
INSERT INTO `m_popedom` VALUES ('82', '19', '0', '域名', 'domain', '50');
INSERT INTO `m_popedom` VALUES ('58', '8', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('59', '8', '0', '维护', 'set', '20');
INSERT INTO `m_popedom` VALUES ('63', '6', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('64', '6', '0', '维护', 'set', '20');
INSERT INTO `m_popedom` VALUES ('67', '7', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('68', '7', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('69', '7', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('70', '7', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('71', '28', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('72', '28', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('73', '28', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('74', '28', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('75', '9', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('76', '9', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('77', '9', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('78', '9', '0', '启用/禁用', 'status', '40');
INSERT INTO `m_popedom` VALUES ('79', '29', '0', '启用/禁用', 'status', '40');
INSERT INTO `m_popedom` VALUES ('133', '30', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('134', '30', '0', '设置', 'set', '20');
INSERT INTO `m_popedom` VALUES ('135', '30', '0', '文件管理', 'filelist', '30');
INSERT INTO `m_popedom` VALUES ('136', '30', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('142', '13', '0', '审核', 'status', '40');
INSERT INTO `m_popedom` VALUES ('148', '20', '42', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('149', '20', '42', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('150', '20', '42', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('151', '20', '42', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('152', '20', '42', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('162', '31', '0', '添加站点', 'add', '40');
INSERT INTO `m_popedom` VALUES ('159', '31', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('160', '31', '0', '删除', 'delete', '20');
INSERT INTO `m_popedom` VALUES ('161', '31', '0', '设为默认', 'default', '30');
INSERT INTO `m_popedom` VALUES ('170', '19', '0', '添加站点', 'add', '60');
INSERT INTO `m_popedom` VALUES ('344', '32', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('345', '32', '0', '启用/禁用', 'status', '20');
INSERT INTO `m_popedom` VALUES ('346', '32', '0', '删除', 'delete', '30');
INSERT INTO `m_popedom` VALUES ('347', '32', '0', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('348', '32', '0', '回复', 'reply', '50');
INSERT INTO `m_popedom` VALUES ('349', '20', '87', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('350', '20', '87', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('351', '20', '87', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('352', '20', '87', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('353', '20', '87', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('476', '33', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('477', '33', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('478', '33', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('479', '33', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('480', '33', '0', '启用/禁用', 'status', '50');
INSERT INTO `m_popedom` VALUES ('601', '34', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('602', '34', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('603', '34', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('604', '34', '0', '审核', 'status', '40');
INSERT INTO `m_popedom` VALUES ('605', '34', '0', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('617', '42', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('618', '42', '0', '执行', 'set', '20');
INSERT INTO `m_popedom` VALUES ('619', '43', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('620', '44', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('621', '45', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('622', '45', '0', '升级', 'update', '20');
INSERT INTO `m_popedom` VALUES ('623', '45', '0', '配置升级服务器', 'set', '30');
INSERT INTO `m_popedom` VALUES ('624', '46', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('625', '9', '0', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('626', '52', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('627', '52', '0', '添加组', 'groupadd', '20');
INSERT INTO `m_popedom` VALUES ('628', '52', '0', '修改组', 'groupedit', '30');
INSERT INTO `m_popedom` VALUES ('629', '52', '0', '删除组', 'groupdelete', '40');
INSERT INTO `m_popedom` VALUES ('630', '52', '0', '添加', 'add', '50');
INSERT INTO `m_popedom` VALUES ('631', '52', '0', '修改', 'edit', '60');
INSERT INTO `m_popedom` VALUES ('632', '52', '0', '删除', 'delete', '70');
INSERT INTO `m_popedom` VALUES ('633', '52', '0', '启用/禁用', 'status', '80');
INSERT INTO `m_popedom` VALUES ('634', '52', '0', '组启用/禁用', 'groupstatus', '35');
INSERT INTO `m_popedom` VALUES ('635', '54', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('636', '54', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('637', '54', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('638', '54', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('639', '54', '0', '审核', 'status', '50');
INSERT INTO `m_popedom` VALUES ('640', '54', '0', '排序', 'taxis', '60');
INSERT INTO `m_popedom` VALUES ('647', '55', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('648', '55', '0', '更新HTML', 'create', '20');
INSERT INTO `m_popedom` VALUES ('968', '20', '0', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('967', '20', '0', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('690', '57', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('691', '57', '0', '创建备份', 'create', '20');
INSERT INTO `m_popedom` VALUES ('692', '57', '0', '删除备份', 'delete', '30');
INSERT INTO `m_popedom` VALUES ('693', '57', '0', '恢复备份', 'recover', '40');
INSERT INTO `m_popedom` VALUES ('694', '57', '0', '优化', 'optimize', '50');
INSERT INTO `m_popedom` VALUES ('695', '57', '0', '修复', 'repair', '60');
INSERT INTO `m_popedom` VALUES ('696', '58', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('697', '58', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('698', '58', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('699', '58', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('700', '18', '0', '状态', 'status', '50');
INSERT INTO `m_popedom` VALUES ('701', '59', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('702', '59', '0', '设置', 'set', '20');
INSERT INTO `m_popedom` VALUES ('703', '59', '0', '删除', 'delete', '30');
INSERT INTO `m_popedom` VALUES ('704', '27', '0', '扩展', 'ext', '30');
INSERT INTO `m_popedom` VALUES ('754', '63', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('753', '63', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('752', '63', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('751', '62', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('750', '62', '0', '编辑', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('749', '62', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('748', '62', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('755', '63', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('758', '66', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('759', '66', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('760', '66', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('761', '66', '0', '配置', 'setting', '40');
INSERT INTO `m_popedom` VALUES ('762', '66', '0', '删除', 'delete', '60');
INSERT INTO `m_popedom` VALUES ('763', '66', '0', '状态', 'status', '50');
INSERT INTO `m_popedom` VALUES ('764', '67', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('765', '67', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('766', '67', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('767', '67', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('768', '68', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('769', '68', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('770', '68', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('771', '68', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('772', '77', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('773', '77', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('774', '77', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('775', '77', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('776', '77', '0', '状态', 'status', '50');
INSERT INTO `m_popedom` VALUES ('777', '34', '0', '配置', 'set', '60');
INSERT INTO `m_popedom` VALUES ('778', '31', '0', '订单配置', 'order', '50');
INSERT INTO `m_popedom` VALUES ('779', '78', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('780', '78', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('781', '78', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('782', '78', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('783', '78', '0', '审核', 'status', '50');
INSERT INTO `m_popedom` VALUES ('784', '78', '0', '设为默认', 'isdefault', '60');
INSERT INTO `m_popedom` VALUES ('793', '80', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('794', '80', '0', '添加', 'add', '20');
INSERT INTO `m_popedom` VALUES ('795', '80', '0', '修改', 'modify', '30');
INSERT INTO `m_popedom` VALUES ('796', '80', '0', '删除', 'delete', '40');
INSERT INTO `m_popedom` VALUES ('972', '20', '0', '评论', 'comment', '80');
INSERT INTO `m_popedom` VALUES ('971', '20', '0', '扩展', 'ext', '70');
INSERT INTO `m_popedom` VALUES ('970', '20', '0', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('969', '20', '0', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('966', '20', '0', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('965', '20', '0', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('983', '20', '311', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('984', '20', '311', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('985', '20', '311', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('986', '20', '311', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('987', '20', '311', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('988', '20', '312', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('989', '20', '312', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('990', '20', '312', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('991', '20', '312', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('992', '20', '312', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('993', '20', '313', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('994', '20', '313', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('995', '20', '313', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('996', '20', '313', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('997', '20', '313', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('998', '20', '313', '评论', 'comment', '80');
INSERT INTO `m_popedom` VALUES ('999', '20', '313', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1000', '20', '313', '扩展', 'ext', '70');
INSERT INTO `m_popedom` VALUES ('1001', '20', '314', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1002', '20', '314', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1003', '20', '314', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1004', '20', '314', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1005', '20', '314', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1006', '20', '315', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1007', '20', '315', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1008', '20', '315', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1009', '20', '315', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1010', '20', '315', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1011', '20', '316', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1012', '20', '316', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1013', '20', '317', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1014', '20', '317', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1015', '20', '318', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1016', '20', '318', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1017', '20', '319', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1018', '20', '319', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1019', '20', '320', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1020', '20', '320', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1021', '20', '320', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1022', '20', '320', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1023', '20', '320', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1024', '20', '320', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1025', '20', '321', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1026', '20', '321', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1027', '20', '321', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1028', '20', '321', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1029', '20', '321', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1030', '20', '322', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1031', '20', '322', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1032', '20', '322', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1033', '20', '322', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1034', '20', '322', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1035', '20', '322', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1036', '20', '323', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1037', '20', '323', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1038', '20', '323', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1039', '20', '323', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1040', '20', '323', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1041', '20', '323', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1042', '20', '324', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1043', '20', '324', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1044', '20', '324', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1045', '20', '324', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1046', '20', '324', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1047', '20', '324', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1048', '20', '325', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1049', '20', '325', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1050', '20', '325', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1051', '20', '325', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1052', '20', '325', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1053', '20', '325', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1054', '20', '326', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1055', '20', '326', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1056', '20', '327', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1057', '20', '327', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1058', '20', '328', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1059', '20', '328', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1060', '20', '328', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1061', '20', '328', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1062', '20', '328', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1063', '20', '328', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1064', '20', '329', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1065', '20', '329', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1066', '20', '329', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1067', '20', '329', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1068', '20', '329', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1069', '20', '330', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1070', '20', '330', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1071', '20', '330', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1072', '20', '330', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1073', '20', '330', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1074', '20', '331', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1075', '20', '331', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1076', '20', '331', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1077', '20', '331', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1078', '20', '331', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1079', '20', '331', '评论', 'comment', '80');
INSERT INTO `m_popedom` VALUES ('1080', '20', '331', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1081', '20', '331', '扩展', 'ext', '70');
INSERT INTO `m_popedom` VALUES ('1082', '20', '332', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1083', '20', '332', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1084', '20', '332', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1085', '20', '332', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1086', '20', '332', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1087', '20', '333', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1088', '20', '333', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1089', '20', '333', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1090', '20', '333', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1091', '20', '333', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1092', '20', '334', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1093', '20', '334', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1094', '20', '335', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1095', '20', '335', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1096', '20', '336', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1097', '20', '336', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1098', '20', '337', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1099', '20', '337', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1100', '20', '338', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1101', '20', '338', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1102', '20', '338', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1103', '20', '338', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1104', '20', '338', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1105', '20', '338', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1106', '20', '339', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1107', '20', '339', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1108', '20', '339', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1109', '20', '339', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1110', '20', '339', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1111', '20', '340', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1112', '20', '340', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1113', '20', '340', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1114', '20', '340', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1115', '20', '340', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1116', '20', '340', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1117', '20', '341', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1118', '20', '341', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1119', '20', '341', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1120', '20', '341', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1121', '20', '341', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1122', '20', '341', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1123', '20', '342', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1124', '20', '342', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1125', '20', '342', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1126', '20', '342', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1127', '20', '342', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1128', '20', '342', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1129', '20', '343', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1130', '20', '343', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1131', '20', '343', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1132', '20', '343', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1133', '20', '343', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1134', '20', '343', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1135', '20', '344', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1136', '20', '344', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1137', '20', '345', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1138', '20', '345', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1139', '20', '346', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1140', '20', '346', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1141', '20', '346', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1142', '20', '346', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1143', '20', '346', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1144', '20', '346', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1145', '20', '347', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1146', '20', '347', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1147', '20', '347', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1148', '20', '347', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1149', '20', '347', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1150', '20', '348', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1151', '20', '348', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1152', '20', '348', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1153', '20', '348', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1154', '20', '348', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1155', '20', '349', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1156', '20', '349', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1157', '20', '349', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1158', '20', '349', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1159', '20', '349', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1160', '20', '349', '评论', 'comment', '80');
INSERT INTO `m_popedom` VALUES ('1161', '20', '349', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1162', '20', '349', '扩展', 'ext', '70');
INSERT INTO `m_popedom` VALUES ('1163', '20', '350', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1164', '20', '350', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1165', '20', '350', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1166', '20', '350', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1167', '20', '350', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1168', '20', '351', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1169', '20', '351', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1170', '20', '351', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1171', '20', '351', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1172', '20', '351', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1173', '20', '352', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1174', '20', '352', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1175', '20', '353', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1176', '20', '353', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1177', '20', '354', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1178', '20', '354', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1179', '20', '355', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1180', '20', '355', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1181', '20', '356', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1182', '20', '356', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1183', '20', '356', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1184', '20', '356', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1185', '20', '356', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1186', '20', '356', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1187', '20', '357', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1188', '20', '357', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1189', '20', '357', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1190', '20', '357', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1191', '20', '357', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1192', '20', '358', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1193', '20', '358', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1194', '20', '358', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1195', '20', '358', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1196', '20', '358', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1197', '20', '358', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1198', '20', '359', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1199', '20', '359', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1200', '20', '359', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1201', '20', '359', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1202', '20', '359', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1203', '20', '359', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1204', '20', '360', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1205', '20', '360', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1206', '20', '360', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1207', '20', '360', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1208', '20', '360', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1209', '20', '360', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1210', '20', '361', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1211', '20', '361', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1212', '20', '361', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1213', '20', '361', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1214', '20', '361', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1215', '20', '361', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1216', '20', '362', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1217', '20', '362', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1218', '20', '363', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1219', '20', '363', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1220', '20', '364', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1221', '20', '364', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1222', '20', '364', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1223', '20', '364', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1224', '20', '364', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1225', '20', '364', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1307', '20', '87', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1345', '34', '0', '取消', 'cancel', '70');
INSERT INTO `m_popedom` VALUES ('1346', '34', '0', '结束', 'stop', '80');
INSERT INTO `m_popedom` VALUES ('1347', '34', '0', '完成', 'end', '90');
INSERT INTO `m_popedom` VALUES ('1348', '20', '389', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1349', '20', '389', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1350', '20', '389', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1351', '20', '389', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1352', '20', '389', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1353', '20', '389', '启用/禁用', 'status', '60');
INSERT INTO `m_popedom` VALUES ('1354', '20', '390', '查看', 'list', '10');
INSERT INTO `m_popedom` VALUES ('1355', '20', '390', '编辑', 'set', '20');
INSERT INTO `m_popedom` VALUES ('1356', '20', '390', '添加', 'add', '30');
INSERT INTO `m_popedom` VALUES ('1357', '20', '390', '修改', 'modify', '40');
INSERT INTO `m_popedom` VALUES ('1358', '20', '390', '删除', 'delete', '50');
INSERT INTO `m_popedom` VALUES ('1359', '20', '390', '启用/禁用', 'status', '60');

-- ----------------------------
-- Table structure for `m_project`
-- ----------------------------
DROP TABLE IF EXISTS `m_project`;
CREATE TABLE `m_project` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID，也是应用ID',
  `parent_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '上一级ID',
  `site_id` mediumint(8) unsigned NOT NULL COMMENT '网站ID',
  `module` mediumint(8) unsigned NOT NULL default '0' COMMENT '指定模型ID，为0表页面空白',
  `cate` mediumint(8) unsigned NOT NULL default '0' COMMENT '绑定根分类ID',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `nick_title` varchar(255) NOT NULL COMMENT '后台别称',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序，值越小越往前靠',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0不使用1使用',
  `tpl_index` varchar(255) NOT NULL COMMENT '封面页',
  `tpl_list` varchar(255) NOT NULL COMMENT '列表页',
  `tpl_content` varchar(255) NOT NULL COMMENT '详细页',
  `is_identifier` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否自定义标识',
  `ico` varchar(255) NOT NULL COMMENT '图标',
  `orderby` text NOT NULL COMMENT '排序',
  `alias_title` varchar(255) NOT NULL COMMENT '主题别名',
  `alias_note` varchar(255) NOT NULL COMMENT '主题备注',
  `psize` int(10) unsigned NOT NULL default '0' COMMENT '0表示不限制，每页显示数量',
  `uid` int(10) unsigned NOT NULL default '0' COMMENT '会员ID号，为0表示管理员维护',
  `identifier` varchar(255) NOT NULL COMMENT '标识',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO标题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` varchar(255) NOT NULL COMMENT 'SEO描述',
  `subtopics` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否启用子主题功能',
  `is_search` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否支持搜索',
  `is_tag` tinyint(3) unsigned NOT NULL default '0' COMMENT '必填Tag',
  `is_biz` tinyint(3) unsigned NOT NULL default '0' COMMENT '0不启用电商，1启用电商',
  `is_userid` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否绑定会员',
  `is_tpl_content` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否自定义内容模板',
  `is_seo` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否默认使用seo',
  `currency_id` int(10) unsigned NOT NULL default '0' COMMENT '默认货币ID',
  `admin_note` text NOT NULL COMMENT '管理员备注，给编辑人员使用的',
  `hidden` tinyint(1) unsigned NOT NULL default '0' COMMENT '0显示1隐藏',
  `post_status` tinyint(1) unsigned NOT NULL default '0' COMMENT '发布模式，0不启用1启用',
  `comment_status` tinyint(1) unsigned NOT NULL default '0' COMMENT '启用评论功能',
  `post_tpl` varchar(255) NOT NULL COMMENT '发布页模板',
  `etpl_admin` varchar(255) NOT NULL COMMENT '通知管理员邮件模板',
  `etpl_user` varchar(255) NOT NULL COMMENT '发布邮件通知会员模板',
  `etpl_comment_admin` varchar(255) NOT NULL COMMENT '评论邮件通知管理员模板',
  `etpl_comment_user` varchar(255) NOT NULL COMMENT '评论邮件通知会员',
  `is_attr` tinyint(1) unsigned NOT NULL default '0' COMMENT '1启用主题属性0不启用',
  `tag` varchar(255) NOT NULL COMMENT '自身Tag设置',
  `is_appoint` tinyint(1) unsigned NOT NULL default '0' COMMENT '指定维护',
  `cate_multiple` tinyint(1) unsigned NOT NULL default '0' COMMENT '0分类单选1分类支持多选',
  `biz_attr` tinyint(1) unsigned NOT NULL default '0' COMMENT '产品属性，0不使用1使用',
  `freight` int(10) unsigned NOT NULL default '0' COMMENT '运费模板ID',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `site_id` (`site_id`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=391 DEFAULT CHARSET=utf8 COMMENT='项目管理器';

-- ----------------------------
-- Records of m_project
-- ----------------------------
INSERT INTO `m_project` VALUES ('42', '0', '1', '23', '0', '导航菜单', '', '60', '1', '', '', '', '0', 'images/ico/menu.png', 'l.sort ASC,l.dateline DESC,l.id DESC', '导航名称', '', '30', '0', 'menu', '', '', '', '1', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '0', '', '0', '0', '0', '0');
INSERT INTO `m_project` VALUES ('87', '0', '1', '0', '0', '关于我们', '', '15', '1', '', 'aboutus', 'aboutus', '1', 'images/ico/about.png', 'l.sort ASC,l.dateline DESC,l.id DESC', '', '', '30', '0', 'aboutus', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '0', '', '0', '0', '0', '0');
INSERT INTO `m_project` VALUES ('389', '0', '1', '0', '0', '联系我们', '', '45', '1', 'contact', '', '', '0', '', 'l.sort ASC,l.dateline DESC,l.id DESC', '', '', '30', '0', 'contact', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '0', '', '0', '0', '0', '0');
INSERT INTO `m_project` VALUES ('390', '0', '1', '83', '588', '原创音乐', '', '30', '1', '', '', 'music', '0', '', 'l.sort ASC,l.dateline DESC,l.id DESC', '', '', '30', '0', 'music', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '', '', '', '', '', '1', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `m_reply`
-- ----------------------------
DROP TABLE IF EXISTS `m_reply`;
CREATE TABLE `m_reply` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `tid` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT '父回复ID',
  `vouch` tinyint(1) unsigned NOT NULL default '0' COMMENT '推荐评论',
  `star` tinyint(1) NOT NULL default '3' COMMENT '星级',
  `uid` int(10) unsigned NOT NULL default '0' COMMENT '会员ID',
  `ip` varchar(255) NOT NULL COMMENT '回复人IP',
  `addtime` int(10) unsigned NOT NULL default '0' COMMENT '添加时间',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0未审核1审核',
  `session_id` varchar(255) NOT NULL COMMENT '游客标识',
  `content` text NOT NULL COMMENT '评论内容',
  `admin_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '管理员ID',
  `adm_content` longtext NOT NULL COMMENT '管理员回复内容',
  `adm_time` int(10) unsigned NOT NULL default '0' COMMENT '回复时间',
  `order_id` int(10) unsigned NOT NULL default '0' COMMENT '0为评论，非零绑定订单ID',
  PRIMARY KEY  (`id`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='主题评论表';

-- ----------------------------
-- Records of m_reply
-- ----------------------------
INSERT INTO `m_reply` VALUES ('19', '1348', '0', '0', '0', '3', '127.0.0.1', '1414121370', '1', 'e6imcpgvei5tq0cmm8p7f0fs45', '测试评论！', '0', '', '0', '0');
INSERT INTO `m_reply` VALUES ('20', '1348', '0', '0', '0', '3', '127.0.0.1', '1414121403', '1', 'e6imcpgvei5tq0cmm8p7f0fs45', '测噢！', '0', '', '0', '0');
INSERT INTO `m_reply` VALUES ('23', '1382', '0', '0', '1', '12', '0.0.0.0', '1436057173', '1', '2mu46s1ukr39d8fhe7301ti3m0', '我的评论！\n这是一个牛评噢！9999999999', '0', '<p>管理<span style=\"text-decoration: line-through;\">员回复这个</span>评论！</p><p>管理<strong>员回复支持HTML</strong>噢~</p>', '1436060013', '0');
INSERT INTO `m_reply` VALUES ('26', '1382', '0', '0', '0', '23', '0.0.0.0', '1439555927', '1', 'bq4rc6aml634ucj4de7qdlbeh6', '&lt;p&gt;测试下评论噢&lt;/p&gt;', '0', '', '0', '0');
INSERT INTO `m_reply` VALUES ('27', '1382', '0', '0', '0', '23', '0.0.0.0', '1439556101', '1', 'bq4rc6aml634ucj4de7qdlbeh6', '<p>再来测试下~嘿嘿~</p>', '0', '', '0', '0');
INSERT INTO `m_reply` VALUES ('28', '1382', '0', '0', '0', '23', '0.0.0.0', '1439556119', '1', 'bq4rc6aml634ucj4de7qdlbeh6', '<p>支<strong>持HTML不</strong>~~<span style=\"text-decoration: underline;\">噢 噢</span>~~</p>', '0', '', '0', '0');
INSERT INTO `m_reply` VALUES ('29', '1382', '0', '0', '0', '23', '0.0.0.0', '1439556621', '1', 'bq4rc6aml634ucj4de7qdlbeh6', '<p>栽植</p>', '0', '', '0', '0');
INSERT INTO `m_reply` VALUES ('30', '1382', '0', '0', '0', '23', '0.0.0.0', '1439556659', '1', 'bq4rc6aml634ucj4de7qdlbeh6', '<p>fasdfasdfasdffasdfasd</p>', '0', '', '0', '0');
INSERT INTO `m_reply` VALUES ('31', '1382', '0', '0', '3', '23', '0.0.0.0', '1439556704', '1', 'bq4rc6aml634ucj4de7qdlbeh6', '<p>再来一个评论滴~~~嘎嘎888888809</p>', '0', '<p>好坑啊！</p>', '1439557003', '0');
INSERT INTO `m_reply` VALUES ('32', '1382', '0', '0', '0', '0', '0.0.0.0', '1439556744', '1', 'bq4rc6aml634ucj4de7qdlbeh6', '测试下游客评论功能噢~~支持HTML不\n嘿嘿~', '0', '<p>蛮坑的~</p>', '1439557872', '0');
INSERT INTO `m_reply` VALUES ('33', '1382', '0', '0', '0', '0', '0.0.0.0', '1439556917', '1', 'bq4rc6aml634ucj4de7qdlbeh6', '测试发评论', '0', '<p>看下评论可行不~</p>', '1439557855', '0');
INSERT INTO `m_reply` VALUES ('35', '1679', '0', '0', '0', '23', '0.0.0.0', '1453644174', '1', 'vpvq7t9brv5eahr14v9hhmtkn7', 'ssss', '0', '', '0', '0');
INSERT INTO `m_reply` VALUES ('36', '1373', '0', '0', '0', '0', '0.0.0.0', '1458699466', '1', 'n2mt8526rg4gkjqccet772s5t4', 'fasfasdf', '0', '<p>测试下回复~</p>', '1469939218', '0');

-- ----------------------------
-- Table structure for `m_res`
-- ----------------------------
DROP TABLE IF EXISTS `m_res`;
CREATE TABLE `m_res` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '资源ID',
  `cate_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '分类ID',
  `folder` varchar(255) NOT NULL COMMENT '存储目录',
  `name` varchar(255) NOT NULL COMMENT '资源文件名',
  `ext` varchar(30) NOT NULL COMMENT '资源后缀，如jpg等',
  `filename` varchar(255) NOT NULL COMMENT '文件名带路径',
  `ico` varchar(255) NOT NULL COMMENT 'ICO图标文件',
  `addtime` int(10) unsigned NOT NULL default '0' COMMENT '添加时间',
  `title` varchar(255) NOT NULL COMMENT '内容',
  `attr` text NOT NULL COMMENT '附件属性',
  `note` text NOT NULL COMMENT '备注',
  `session_id` varchar(100) NOT NULL COMMENT '操作者 ID，即会员ID用于检测是否有权限删除 ',
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT '会员ID，当该ID为时检则sesson_id，如不相同则不能删除 ',
  `download` int(10) unsigned NOT NULL default '0' COMMENT '下载次数',
  `admin_id` int(10) unsigned NOT NULL default '0' COMMENT '管理员ID',
  PRIMARY KEY  (`id`),
  KEY `ext` (`ext`)
) ENGINE=MyISAM AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8 COMMENT='资源ID';

-- ----------------------------
-- Records of m_res
-- ----------------------------
INSERT INTO `m_res` VALUES ('624', '1', 'res/201409/01/', '27a6e141c3d265ae.jpg', 'jpg', 'res/201409/01/27a6e141c3d265ae.jpg', 'res/201409/01/_624.jpg', '1409550321', 'logo', 'a:2:{s:5:\"width\";i:219;s:6:\"height\";i:57;}', '', '', '0', '0', '0');
INSERT INTO `m_res` VALUES ('629', '1', 'res/201409/03/', 'e8b2a2815497215c.png', 'png', 'res/201409/03/e8b2a2815497215c.png', 'res/201409/03/_629.png', '1409747220', 'bbs', 'a:2:{s:5:\"width\";i:280;s:6:\"height\";i:280;}', '', '', '0', '0', '0');
INSERT INTO `m_res` VALUES ('630', '1', 'res/201409/03/', '5b0086d14de1bbf2.jpg', 'jpg', 'res/201409/03/5b0086d14de1bbf2.jpg', 'res/201409/03/_630.jpg', '1409749616', 'about-img', 'a:2:{s:5:\"width\";i:129;s:6:\"height\";i:133;}', '', '', '0', '0', '0');
INSERT INTO `m_res` VALUES ('1006', '1', 'res/201603/22/', 'a9c66d15979de244.jpg', 'jpg', 'res/201603/22/a9c66d15979de244.jpg', 'res/201603/22/_1006.jpg', '1458614426', 'banner (1)', 'a:2:{s:5:\"width\";i:980;s:6:\"height\";i:180;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1007', '1', 'res/201603/22/', '5c94d5a5d4729ee2.jpg', 'jpg', 'res/201603/22/5c94d5a5d4729ee2.jpg', 'res/201603/22/_1007.jpg', '1458614426', 'banner (2)', 'a:2:{s:5:\"width\";i:980;s:6:\"height\";i:180;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1008', '1', 'res/201603/22/', '572864921e9b72f0.jpg', 'jpg', 'res/201603/22/572864921e9b72f0.jpg', 'res/201603/22/_1008.jpg', '1458614426', 'banner (3)', 'a:2:{s:5:\"width\";i:980;s:6:\"height\";i:180;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1015', '1', 'res/201603/22/', 'c329c62e183765ad.jpg', 'jpg', 'res/201603/22/c329c62e183765ad.jpg', 'res/201603/22/_1015.jpg', '1458627033', '魅族5', 'a:2:{s:5:\"width\";i:500;s:6:\"height\";i:500;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1010', '1', 'res/201603/22/', '671d21cb49401430.jpg', 'jpg', 'res/201603/22/671d21cb49401430.jpg', 'res/201603/22/_1010.jpg', '1458626175', '小米5-2', 'a:2:{s:5:\"width\";i:720;s:6:\"height\";i:420;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1011', '1', 'res/201603/22/', '6bd0beb0726e32cf.jpg', 'jpg', 'res/201603/22/6bd0beb0726e32cf.jpg', 'res/201603/22/_1011.jpg', '1458626175', '小米5-1', 'a:2:{s:5:\"width\";i:720;s:6:\"height\";i:424;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1012', '1', 'res/201603/22/', '8ec700add8e54d49.jpg', 'jpg', 'res/201603/22/8ec700add8e54d49.jpg', 'res/201603/22/_1012.jpg', '1458626175', '小米5-3', 'a:2:{s:5:\"width\";i:720;s:6:\"height\";i:335;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1013', '1', 'res/201603/22/', '6e32b648bf93b490.jpg', 'jpg', 'res/201603/22/6e32b648bf93b490.jpg', 'res/201603/22/_1013.jpg', '1458626325', '小米5-thumb', 'a:2:{s:5:\"width\";i:350;s:6:\"height\";i:350;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1016', '1', 'res/201603/22/', '9fa4450173e59070.jpg', 'jpg', 'res/201603/22/9fa4450173e59070.jpg', 'res/201603/22/_1016.jpg', '1458627040', '魅族5-1', 'a:2:{s:5:\"width\";i:500;s:6:\"height\";i:500;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1017', '1', 'res/201603/22/', '10f10d8a66069b59.jpg', 'jpg', 'res/201603/22/10f10d8a66069b59.jpg', 'res/201603/22/_1017.jpg', '1458627040', '魅族5-2', 'a:2:{s:5:\"width\";i:500;s:6:\"height\";i:500;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1018', '1', 'res/201603/23/', 'c941c40778124f2c.jpg', 'jpg', 'res/201603/23/c941c40778124f2c.jpg', 'res/201603/23/_1018.jpg', '1458667317', 'P7-2', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1019', '1', 'res/201603/23/', '945b1df945e039f5.jpg', 'jpg', 'res/201603/23/945b1df945e039f5.jpg', 'res/201603/23/_1019.jpg', '1458667317', 'P7-1', 'a:2:{s:5:\"width\";i:532;s:6:\"height\";i:532;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1020', '1', 'res/201603/23/', '281512b3b3f9c5f0.jpg', 'jpg', 'res/201603/23/281512b3b3f9c5f0.jpg', 'res/201603/23/_1020.jpg', '1458667317', 'P7-3', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1021', '1', 'res/201603/23/', 'fceefc0374ff1ef2.jpg', 'jpg', 'res/201603/23/fceefc0374ff1ef2.jpg', 'res/201603/23/_1021.jpg', '1458668292', 'xplay5-b-1', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1022', '1', 'res/201603/23/', '63d31419a3bc3163.jpg', 'jpg', 'res/201603/23/63d31419a3bc3163.jpg', 'res/201603/23/_1022.jpg', '1458668292', 'xplay5-b-3', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1023', '1', 'res/201603/23/', 'c94f7ff8e44ec536.jpg', 'jpg', 'res/201603/23/c94f7ff8e44ec536.jpg', 'res/201603/23/_1023.jpg', '1458668292', 'xplay5-b-2', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1024', '1', 'res/201603/23/', '9470f2408e492d99.jpg', 'jpg', 'res/201603/23/9470f2408e492d99.jpg', 'res/201603/23/_1024.jpg', '1458668293', 'xplay5-b-4', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1025', '1', 'res/201603/23/', '5b8b8f3f6cfd32b9.jpg', 'jpg', 'res/201603/23/5b8b8f3f6cfd32b9.jpg', 'res/201603/23/_1025.jpg', '1458669513', 'iphone5se-1', 'a:2:{s:5:\"width\";i:755;s:6:\"height\";i:755;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1026', '1', 'res/201603/23/', '2e16c80d821beaf0.jpg', 'jpg', 'res/201603/23/2e16c80d821beaf0.jpg', 'res/201603/23/_1026.jpg', '1458669513', 'iphone5se-2', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1027', '1', 'res/201603/23/', '1548d11e0a50ee55.jpg', 'jpg', 'res/201603/23/1548d11e0a50ee55.jpg', 'res/201603/23/_1027.jpg', '1458669513', 'iphone5se-3', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1028', '1', 'res/201603/23/', 'e2bb1c4c3a4bc11b.jpg', 'jpg', 'res/201603/23/e2bb1c4c3a4bc11b.jpg', 'res/201603/23/_1028.jpg', '1458669514', 'iphone5se-4', 'a:2:{s:5:\"width\";i:600;s:6:\"height\";i:600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1029', '11', 'res/soft/2016/', '37e7a0aff81446b8.zip', 'zip', 'res/soft/2016/37e7a0aff81446b8.zip', 'images/filetype-large/zip.jpg', '1458715867', 'copy', '', '', '', '0', '3', '1');
INSERT INTO `m_res` VALUES ('1039', '1', 'res/201603/29/', 'ceb27a213d18f944', 'jpg', 'res/201603/29/ceb27a213d18f944.jpg', 'res/201603/29/_1039.jpg', '1459242200', 'img-2b1ae776ad67a70bcfbc3c72d29c016b', 'a:2:{s:5:\"width\";i:640;s:6:\"height\";i:799;}', '', 'b4mh68kho2b955ntv92r4atqq0', '23', '0', '0');
INSERT INTO `m_res` VALUES ('1040', '1', 'res/201604/03/', '0143658fa7928c1c', 'jpg', 'res/201604/03/0143658fa7928c1c.jpg', 'res/201604/03/_1040.jpg', '1459617276', '160', 'a:2:{s:5:\"width\";i:160;s:6:\"height\";i:160;}', '', 'v8tocibrgebid4pht9ksprfhd1', '23', '0', '0');
INSERT INTO `m_res` VALUES ('1041', '1', 'res/201604/06/', 'b9d7b079c0293b25.jpg', 'jpg', 'res/201604/06/b9d7b079c0293b25.jpg', 'res/201604/06/_1041.jpg', '1459934543', '150', 'a:2:{s:5:\"width\";i:150;s:6:\"height\";i:150;}', '', 'ecof6b6h07ko22e3vhucoqe4l1', '0', '0', '0');
INSERT INTO `m_res` VALUES ('1042', '1', 'res/201604/07/', '10612e23844f60be', 'jpg', 'res/201604/07/10612e23844f60be.jpg', 'res/201604/07/_1042.jpg', '1459971726', 'q2509408566', 'a:2:{s:5:\"width\";i:640;s:6:\"height\";i:640;}', '', '1ha9ei1nukkfot37lfd01u00m6', '23', '0', '0');
INSERT INTO `m_res` VALUES ('1046', '1', 'res/201607/31/', 'd4b5092a81457ee4.jpg', 'jpg', 'res/201607/31/d4b5092a81457ee4.jpg', 'res/201607/31/_1046.jpg', '1469950369', 'wps9017.tmp', 'a:2:{s:5:\"width\";i:374;s:6:\"height\";i:241;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1045', '1', 'res/201607/31/', '84b627c8b6d46017.jpg', 'jpg', 'res/201607/31/84b627c8b6d46017.jpg', 'res/201607/31/_1045.jpg', '1469946107', 'ck', 'a:2:{s:5:\"width\";i:333;s:6:\"height\";i:454;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1047', '1', 'res/201607/31/', '1b8846f2c339fd16.png', 'png', 'res/201607/31/1b8846f2c339fd16.png', 'res/201607/31/_1047.png', '1469951019', 'blob', 'a:2:{s:5:\"width\";i:224;s:6:\"height\";i:162;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1048', '1', 'res/201607/31/', '7fef01b4aace0a7a.png', 'png', 'res/201607/31/7fef01b4aace0a7a.png', 'res/201607/31/_1048.png', '1469951917', 'blob', 'a:2:{s:5:\"width\";i:184;s:6:\"height\";i:169;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1049', '1', 'res/201607/31/', '5f91d29e57a5f031.png', 'png', 'res/201607/31/5f91d29e57a5f031.png', 'res/201607/31/_1049.png', '1469951963', 'blob', 'a:2:{s:5:\"width\";i:201;s:6:\"height\";i:130;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1050', '1', 'res/201607/31/', 'a7a55f6fd29559eb.png', 'png', 'res/201607/31/a7a55f6fd29559eb.png', 'res/201607/31/_1050.png', '1469952233', 'blob', 'a:2:{s:5:\"width\";i:168;s:6:\"height\";i:157;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1051', '1', 'res/201607/31/', 'd60c2f75e6a7485f.png', 'png', 'res/201607/31/d60c2f75e6a7485f.png', 'res/201607/31/_1051.png', '1469952594', 'blob', 'a:2:{s:5:\"width\";i:182;s:6:\"height\";i:149;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1052', '1', 'res/201607/31/', 'a5acc103c4a8cd45_30_0.png', 'png', 'res/201607/31/a5acc103c4a8cd45_30_0.png', 'res/201607/31/_1052.png', '1469961198', 'collect', 'a:2:{s:5:\"width\";i:63;s:6:\"height\";i:40;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1053', '1', 'res/201607/31/', '88a7bf0aaca4ee41.png', 'png', 'res/201607/31/88a7bf0aaca4ee41.png', 'res/201607/31/_1053.png', '1469961712', 'blob', 'a:2:{s:5:\"width\";i:334;s:6:\"height\";i:164;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1054', '1', 'res/201607/31/', '9f054e1324678b84.png', 'png', 'res/201607/31/9f054e1324678b84.png', 'res/201607/31/_1054.png', '1469961758', 'blob', 'a:2:{s:5:\"width\";i:173;s:6:\"height\";i:186;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1055', '1', 'res/201610/17/', 'c810536f62f6d54a.jpg', 'jpg', 'res/201610/17/c810536f62f6d54a.jpg', 'res/201610/17/_1055.jpg', '1476696930', 'banner-1', 'a:2:{s:5:\"width\";i:1200;s:6:\"height\";i:357;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1056', '1', 'res/201701/03/', 'df452792cf821502.jpg', 'jpg', 'res/201701/03/df452792cf821502.jpg', 'res/201701/03/_1056.jpg', '1483412999', '阿肆－缺乏', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1057', '16', 'res/video/201701/03/', '93dfa9aa0a14ce07.mp3', 'mp3', 'res/video/201701/03/93dfa9aa0a14ce07.mp3', 'images/filetype-large/mp3.jpg', '1483413030', '阿肆 - 缺乏', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1058', '16', 'res/video/201701/03/', '080e98753500af7c.mp3', 'mp3', 'res/video/201701/03/080e98753500af7c.mp3', 'images/filetype-large/mp3.jpg', '1483413142', 'Mi2 - 勇敢爱', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1059', '1', 'res/201701/03/', '482a3c2a2d6eda71.jpg', 'jpg', 'res/201701/03/482a3c2a2d6eda71.jpg', 'res/201701/03/_1059.jpg', '1483413244', 'Mi2 勇敢爱', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1060', '1', 'res/201701/03/', 'cb367c07242abe97.jpg', 'jpg', 'res/201701/03/cb367c07242abe97.jpg', 'res/201701/03/_1060.jpg', '1483413370', '陈粒－小半', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1061', '16', 'res/video/201701/03/', '12fb92e706c7f282.mp3', 'mp3', 'res/video/201701/03/12fb92e706c7f282.mp3', 'images/filetype-large/mp3.jpg', '1483413381', '陈粒 - 小半', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1062', '1', 'res/201701/03/', '425f1c9065d823fd.jpg', 'jpg', 'res/201701/03/425f1c9065d823fd.jpg', 'res/201701/03/_1062.jpg', '1483413548', '陈都灵', 'a:2:{s:5:\"width\";i:700;s:6:\"height\";i:1049;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1063', '16', 'res/video/201701/03/', '833899c629a7750f.mp3', 'mp3', 'res/video/201701/03/833899c629a7750f.mp3', 'images/filetype-large/mp3.jpg', '1483413567', '陈都灵 - 公主的风筝', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1064', '1', 'res/201701/03/', 'ab5987b4422338b6.jpg', 'jpg', 'res/201701/03/ab5987b4422338b6.jpg', 'res/201701/03/_1064.jpg', '1483414063', '本兮－枪恋', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1065', '16', 'res/video/201701/03/', '9175dfb08e7c96ab.mp3', 'mp3', 'res/video/201701/03/9175dfb08e7c96ab.mp3', 'images/filetype-large/mp3.jpg', '1483414268', '本兮 - 枪恋', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1066', '1', 'res/201701/03/', '8050ba7add5a6769.jpg', 'jpg', 'res/201701/03/8050ba7add5a6769.jpg', 'res/201701/03/_1066.jpg', '1483414362', '程响 新娘不是我', 'a:2:{s:5:\"width\";i:500;s:6:\"height\";i:500;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1067', '16', 'res/video/201701/03/', '00ae3b737e063208.mp3', 'mp3', 'res/video/201701/03/00ae3b737e063208.mp3', 'images/filetype-large/mp3.jpg', '1483414384', '程响 - 新娘不是我', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1068', '1', 'res/201701/03/', '9f8977ead0ac651a.jpg', 'jpg', 'res/201701/03/9f8977ead0ac651a.jpg', 'res/201701/03/_1068.jpg', '1483414406', '丁爽－你还好吗', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1069', '16', 'res/video/201701/03/', 'c8a350a507c60435.mp3', 'mp3', 'res/video/201701/03/c8a350a507c60435.mp3', 'images/filetype-large/mp3.jpg', '1483414427', '丁爽 - 你还好吗', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1070', '16', 'res/video/201701/03/', 'de6cdb89d486c549.mp3', 'mp3', 'res/video/201701/03/de6cdb89d486c549.mp3', 'images/filetype-large/mp3.jpg', '1483414449', '贺世哲 - 只是偶尔会想你', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1071', '16', 'res/video/201701/03/', 'c8ce8876c3f318c6.mp3', 'mp3', 'res/video/201701/03/c8ce8876c3f318c6.mp3', 'images/filetype-large/mp3.jpg', '1483414574', '黑Girl - 123木头人', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1072', '1', 'res/201701/03/', 'fe522ffcec6c2a92.jpg', 'jpg', 'res/201701/03/fe522ffcec6c2a92.jpg', 'res/201701/03/_1072.jpg', '1483414590', '黑Girl-123木头人', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1073', '16', 'res/video/201701/03/', '566251d195898d8b.mp3', 'mp3', 'res/video/201701/03/566251d195898d8b.mp3', 'images/filetype-large/mp3.jpg', '1483414615', '胡灵 - 单飞', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1074', '1', 'res/201701/03/', '52cc2ddb2bf75485.jpg', 'jpg', 'res/201701/03/52cc2ddb2bf75485.jpg', 'res/201701/03/_1074.jpg', '1483414632', '胡灵－单飞', 'a:2:{s:5:\"width\";i:450;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1075', '16', 'res/video/201701/03/', '271eaba2bc0eb67a.mp3', 'mp3', 'res/video/201701/03/271eaba2bc0eb67a.mp3', 'images/filetype-large/mp3.jpg', '1483414656', '回音哥 - 你的配角', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1076', '1', 'res/201701/03/', 'c1d6e1ce7a352b1c.jpg', 'jpg', 'res/201701/03/c1d6e1ce7a352b1c.jpg', 'res/201701/03/_1076.jpg', '1483414680', '回音哥', 'a:2:{s:5:\"width\";i:333;s:6:\"height\";i:500;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1077', '16', 'res/video/201701/03/', 'bf06426194128f42.mp3', 'mp3', 'res/video/201701/03/bf06426194128f42.mp3', 'images/filetype-large/mp3.jpg', '1483414708', '颗粒 - 柔软的光', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1078', '1', 'res/201701/03/', '6973ef2f696e6cec.jpg', 'jpg', 'res/201701/03/6973ef2f696e6cec.jpg', 'res/201701/03/_1078.jpg', '1483414720', '颗粒－柔软的光', 'a:2:{s:5:\"width\";i:268;s:6:\"height\";i:268;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1079', '16', 'res/video/201701/03/', 'e27b7160c6560e68.mp3', 'mp3', 'res/video/201701/03/e27b7160c6560e68.mp3', 'images/filetype-large/mp3.jpg', '1483414748', '李秋雯 - 往南', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1080', '1', 'res/201701/03/', 'a3d02a836edadb03.jpg', 'jpg', 'res/201701/03/a3d02a836edadb03.jpg', 'res/201701/03/_1080.jpg', '1483414763', '李秋雯-往南', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1081', '16', 'res/video/201701/03/', '407f984de55fd619.mp3', 'mp3', 'res/video/201701/03/407f984de55fd619.mp3', 'images/filetype-large/mp3.jpg', '1483414797', '沫筱雪 - 痕迹', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1082', '1', 'res/201701/03/', '737911d88db25874.jpg', 'jpg', 'res/201701/03/737911d88db25874.jpg', 'res/201701/03/_1082.jpg', '1483414813', '沫筱雪-痕迹', 'a:2:{s:5:\"width\";i:580;s:6:\"height\";i:385;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1083', '16', 'res/video/201701/03/', 'bfeb8655bdcd1d33.mp3', 'mp3', 'res/video/201701/03/bfeb8655bdcd1d33.mp3', 'images/filetype-large/mp3.jpg', '1483414886', '苏盈之 - 别客气', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1084', '1', 'res/201701/03/', '63c1bb8dd334e5ea.jpg', 'jpg', 'res/201701/03/63c1bb8dd334e5ea.jpg', 'res/201701/03/_1084.jpg', '1483414899', '苏盈之－别客气', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1085', '16', 'res/video/201701/03/', 'f8b2505c52b20996.mp3', 'mp3', 'res/video/201701/03/f8b2505c52b20996.mp3', 'images/filetype-large/mp3.jpg', '1483414960', '王露凝 - 眼泪的错觉', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1086', '1', 'res/201701/03/', '27fb24a09739944c.jpg', 'jpg', 'res/201701/03/27fb24a09739944c.jpg', 'res/201701/03/_1086.jpg', '1483414973', '王露凝－眼泪的错觉', 'a:2:{s:5:\"width\";i:409;s:6:\"height\";i:599;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1087', '16', 'res/video/201701/03/', '0f75cab470eb6b64.mp3', 'mp3', 'res/video/201701/03/0f75cab470eb6b64.mp3', 'images/filetype-large/mp3.jpg', '1483415011', '夏天Alex - 不再联系', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1088', '1', 'res/201701/03/', 'd46ebd07812a978c.jpg', 'jpg', 'res/201701/03/d46ebd07812a978c.jpg', 'res/201701/03/_1088.jpg', '1483415029', '夏天Alex 不在联系', 'a:2:{s:5:\"width\";i:500;s:6:\"height\";i:500;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1089', '16', 'res/video/201701/03/', '46482c45a684102b.mp3', 'mp3', 'res/video/201701/03/46482c45a684102b.mp3', 'images/filetype-large/mp3.jpg', '1483415057', '夏婉安 - 一个人', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1090', '1', 'res/201701/03/', '024c558f707d5f5c.jpg', 'jpg', 'res/201701/03/024c558f707d5f5c.jpg', 'res/201701/03/_1090.jpg', '1483415077', '夏婉安－一个人', 'a:2:{s:5:\"width\";i:345;s:6:\"height\";i:240;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1091', '16', 'res/video/201701/03/', '17f33878721c9445.mp3', 'mp3', 'res/video/201701/03/17f33878721c9445.mp3', 'images/filetype-large/mp3.jpg', '1483415111', '易欣 - 活多久爱多久', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1092', '1', 'res/201701/03/', '63a22d23a3542641.jpg', 'jpg', 'res/201701/03/63a22d23a3542641.jpg', 'res/201701/03/_1092.jpg', '1483415131', '活多久爱多久', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1093', '16', 'res/video/201701/03/', '2c31954cd887a527.mp3', 'mp3', 'res/video/201701/03/2c31954cd887a527.mp3', 'images/filetype-large/mp3.jpg', '1483415161', '赵乃吉 - 最初的温柔', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1094', '1', 'res/201701/03/', 'b7ce9c669646af02.jpg', 'jpg', 'res/201701/03/b7ce9c669646af02.jpg', 'res/201701/03/_1094.jpg', '1483415186', '赵乃吉－最初的温柔', 'a:2:{s:5:\"width\";i:910;s:6:\"height\";i:910;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1095', '16', 'res/video/201701/03/', '860f367e42c6749b.mp3', 'mp3', 'res/video/201701/03/860f367e42c6749b.mp3', 'images/filetype-large/mp3.jpg', '1483415223', '庄心妍 - 我不会在老地方等你', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1096', '1', 'res/201701/03/', 'a6e14228145d78b4.jpg', 'jpg', 'res/201701/03/a6e14228145d78b4.jpg', 'res/201701/03/_1096.jpg', '1483415346', '庄心妍 - 我不会在老地方等你', 'a:2:{s:5:\"width\";i:300;s:6:\"height\";i:300;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1097', '16', 'res/video/201701/03/', '78579de9573d7a42.mp3', 'mp3', 'res/video/201701/03/78579de9573d7a42.mp3', 'images/filetype-large/mp3.jpg', '1483415384', '左立 - 小城之远', '', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1098', '1', 'res/201701/03/', 'd705b01a1e4ad675.jpg', 'jpg', 'res/201701/03/d705b01a1e4ad675.jpg', 'res/201701/03/_1098.jpg', '1483415409', '左立－小城之远', 'a:2:{s:5:\"width\";i:1600;s:6:\"height\";i:1600;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1099', '1', 'res/201701/03/', '12fa59262105cdc9.jpg', 'jpg', 'res/201701/03/12fa59262105cdc9.jpg', 'res/201701/03/_1099.jpg', '1483417337', '只是偶尔会想你', 'a:2:{s:5:\"width\";i:800;s:6:\"height\";i:800;}', '', '', '0', '0', '1');
INSERT INTO `m_res` VALUES ('1100', '1', 'res/201701/06/', '5f3432654f9c2a9b.jpg', 'jpg', 'res/201701/06/5f3432654f9c2a9b.jpg', 'res/201701/06/_1100.jpg', '1483701158', 'logo', 'a:2:{s:5:\"width\";i:170;s:6:\"height\";i:60;}', '', '', '0', '0', '1');

-- ----------------------------
-- Table structure for `m_res_cate`
-- ----------------------------
DROP TABLE IF EXISTS `m_res_cate`;
CREATE TABLE `m_res_cate` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '资源分类ID',
  `title` varchar(255) NOT NULL COMMENT '分类名称',
  `root` varchar(255) NOT NULL default '/' COMMENT '存储目录',
  `folder` varchar(255) NOT NULL default 'Ym/d/' COMMENT '存储目录格式',
  `is_default` tinyint(1) unsigned NOT NULL default '0' COMMENT '1默认0非默认',
  `filetypes` varchar(255) NOT NULL COMMENT '附件类型',
  `typeinfo` varchar(200) NOT NULL COMMENT '类型说明',
  `gdtypes` varchar(255) NOT NULL COMMENT '支持的GD方案，多个GD方案用英文ID分开',
  `gdall` tinyint(1) NOT NULL default '0' COMMENT '1支持全部GD方案0仅支持指定的GD方案',
  `ico` tinyint(1) NOT NULL default '0' COMMENT '后台缩略图',
  `filemax` int(10) unsigned NOT NULL default '2' COMMENT '上传文件大小限制',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='资源分类存储';

-- ----------------------------
-- Records of m_res_cate
-- ----------------------------
INSERT INTO `m_res_cate` VALUES ('1', '图片', 'res/', 'Ym/d/', '1', 'png,jpg,gif', '图片', '', '1', '1', '2000');
INSERT INTO `m_res_cate` VALUES ('11', '压缩软件', 'res/soft/', 'Y/', '0', 'rar,zip', '压缩包', '', '0', '0', '2000');
INSERT INTO `m_res_cate` VALUES ('16', '视频', 'res/video/', 'Ym/d/', '0', 'mpg,mpeg,mp3,flv,swf,rmvb', '视频文件', '', '0', '0', '2000');
INSERT INTO `m_res_cate` VALUES ('17', 'Excel', 'res/excel/', '', '0', 'xls,xlsx', 'Excel文件', '', '0', '0', '2048');
INSERT INTO `m_res_cate` VALUES ('19', 'teeee', 'res/test', '', '0', 'mp4', 'MP4文件', '', '0', '0', '18000');

-- ----------------------------
-- Table structure for `m_res_ext`
-- ----------------------------
DROP TABLE IF EXISTS `m_res_ext`;
CREATE TABLE `m_res_ext` (
  `res_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '附件ID',
  `gd_id` mediumint(8) unsigned NOT NULL default '0' COMMENT 'GD库方案ID',
  `filename` varchar(255) NOT NULL COMMENT '文件地址（含路径）',
  `filetime` int(10) unsigned NOT NULL default '0' COMMENT '最后',
  PRIMARY KEY  (`res_id`,`gd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='生成扩展图片';

-- ----------------------------
-- Records of m_res_ext
-- ----------------------------
INSERT INTO `m_res_ext` VALUES ('1006', '12', 'res/201603/22/auto_1006.jpg', '1458649356');
INSERT INTO `m_res_ext` VALUES ('1006', '2', 'res/201603/22/thumb_1006.jpg', '1458649356');
INSERT INTO `m_res_ext` VALUES ('1007', '12', 'res/201603/22/auto_1007.jpg', '1458649354');
INSERT INTO `m_res_ext` VALUES ('1008', '12', 'res/201603/22/auto_1008.jpg', '1458649352');
INSERT INTO `m_res_ext` VALUES ('1007', '2', 'res/201603/22/thumb_1007.jpg', '1458649354');
INSERT INTO `m_res_ext` VALUES ('1008', '2', 'res/201603/22/thumb_1008.jpg', '1458649352');
INSERT INTO `m_res_ext` VALUES ('630', '12', 'res/201409/03/auto_630.jpg', '1458649357');
INSERT INTO `m_res_ext` VALUES ('630', '2', 'res/201409/03/thumb_630.jpg', '1458649357');
INSERT INTO `m_res_ext` VALUES ('629', '12', 'res/201409/03/auto_629.png', '1458649359');
INSERT INTO `m_res_ext` VALUES ('629', '2', 'res/201409/03/thumb_629.png', '1458649359');
INSERT INTO `m_res_ext` VALUES ('624', '12', 'res/201409/01/auto_624.jpg', '1458649361');
INSERT INTO `m_res_ext` VALUES ('624', '2', 'res/201409/01/thumb_624.jpg', '1458649361');
INSERT INTO `m_res_ext` VALUES ('1015', '12', 'res/201603/22/auto_1015.jpg', '1458649343');
INSERT INTO `m_res_ext` VALUES ('1015', '2', 'res/201603/22/thumb_1015.jpg', '1458649343');
INSERT INTO `m_res_ext` VALUES ('1012', '12', 'res/201603/22/auto_1012.jpg', '1458649347');
INSERT INTO `m_res_ext` VALUES ('1010', '12', 'res/201603/22/auto_1010.jpg', '1458649351');
INSERT INTO `m_res_ext` VALUES ('1011', '12', 'res/201603/22/auto_1011.jpg', '1458649349');
INSERT INTO `m_res_ext` VALUES ('1012', '2', 'res/201603/22/thumb_1012.jpg', '1458649347');
INSERT INTO `m_res_ext` VALUES ('1010', '2', 'res/201603/22/thumb_1010.jpg', '1458649351');
INSERT INTO `m_res_ext` VALUES ('1011', '2', 'res/201603/22/thumb_1011.jpg', '1458649349');
INSERT INTO `m_res_ext` VALUES ('1013', '12', 'res/201603/22/auto_1013.jpg', '1458649345');
INSERT INTO `m_res_ext` VALUES ('1013', '2', 'res/201603/22/thumb_1013.jpg', '1458649345');
INSERT INTO `m_res_ext` VALUES ('1016', '12', 'res/201603/22/auto_1016.jpg', '1458649341');
INSERT INTO `m_res_ext` VALUES ('1017', '12', 'res/201603/22/auto_1017.jpg', '1458649340');
INSERT INTO `m_res_ext` VALUES ('1016', '2', 'res/201603/22/thumb_1016.jpg', '1458649341');
INSERT INTO `m_res_ext` VALUES ('1017', '2', 'res/201603/22/thumb_1017.jpg', '1458649340');
INSERT INTO `m_res_ext` VALUES ('1019', '12', 'res/201603/23/auto_1019.jpg', '1458667317');
INSERT INTO `m_res_ext` VALUES ('1018', '12', 'res/201603/23/auto_1018.jpg', '1458667317');
INSERT INTO `m_res_ext` VALUES ('1020', '12', 'res/201603/23/auto_1020.jpg', '1458667317');
INSERT INTO `m_res_ext` VALUES ('1019', '2', 'res/201603/23/thumb_1019.jpg', '1458667317');
INSERT INTO `m_res_ext` VALUES ('1018', '2', 'res/201603/23/thumb_1018.jpg', '1458667317');
INSERT INTO `m_res_ext` VALUES ('1020', '2', 'res/201603/23/thumb_1020.jpg', '1458667317');
INSERT INTO `m_res_ext` VALUES ('1021', '12', 'res/201603/23/auto_1021.jpg', '1458668292');
INSERT INTO `m_res_ext` VALUES ('1022', '12', 'res/201603/23/auto_1022.jpg', '1458668292');
INSERT INTO `m_res_ext` VALUES ('1023', '12', 'res/201603/23/auto_1023.jpg', '1458668292');
INSERT INTO `m_res_ext` VALUES ('1021', '2', 'res/201603/23/thumb_1021.jpg', '1458668292');
INSERT INTO `m_res_ext` VALUES ('1022', '2', 'res/201603/23/thumb_1022.jpg', '1458668292');
INSERT INTO `m_res_ext` VALUES ('1023', '2', 'res/201603/23/thumb_1023.jpg', '1458668292');
INSERT INTO `m_res_ext` VALUES ('1024', '12', 'res/201603/23/auto_1024.jpg', '1458668293');
INSERT INTO `m_res_ext` VALUES ('1024', '2', 'res/201603/23/thumb_1024.jpg', '1458668293');
INSERT INTO `m_res_ext` VALUES ('1026', '12', 'res/201603/23/auto_1026.jpg', '1458669513');
INSERT INTO `m_res_ext` VALUES ('1027', '12', 'res/201603/23/auto_1027.jpg', '1458669513');
INSERT INTO `m_res_ext` VALUES ('1026', '2', 'res/201603/23/thumb_1026.jpg', '1458669513');
INSERT INTO `m_res_ext` VALUES ('1025', '12', 'res/201603/23/auto_1025.jpg', '1458669513');
INSERT INTO `m_res_ext` VALUES ('1027', '2', 'res/201603/23/thumb_1027.jpg', '1458669513');
INSERT INTO `m_res_ext` VALUES ('1025', '2', 'res/201603/23/thumb_1025.jpg', '1458669513');
INSERT INTO `m_res_ext` VALUES ('1028', '12', 'res/201603/23/auto_1028.jpg', '1458669514');
INSERT INTO `m_res_ext` VALUES ('1028', '2', 'res/201603/23/thumb_1028.jpg', '1458669514');
INSERT INTO `m_res_ext` VALUES ('1039', '12', 'res/201603/29/auto_1039.jpg', '1459242200');
INSERT INTO `m_res_ext` VALUES ('1039', '2', 'res/201603/29/thumb_1039.jpg', '1459242200');
INSERT INTO `m_res_ext` VALUES ('1040', '12', 'res/201604/03/auto_1040.jpg', '1459617276');
INSERT INTO `m_res_ext` VALUES ('1040', '2', 'res/201604/03/thumb_1040.jpg', '1459617276');
INSERT INTO `m_res_ext` VALUES ('1041', '12', 'res/201604/06/auto_1041.jpg', '1459934543');
INSERT INTO `m_res_ext` VALUES ('1041', '2', 'res/201604/06/thumb_1041.jpg', '1459934543');
INSERT INTO `m_res_ext` VALUES ('1042', '12', 'res/201604/07/auto_1042.jpg', '1459971726');
INSERT INTO `m_res_ext` VALUES ('1042', '2', 'res/201604/07/thumb_1042.jpg', '1459971726');
INSERT INTO `m_res_ext` VALUES ('1046', '12', 'res/201607/31/auto_1046.jpg', '1469950369');
INSERT INTO `m_res_ext` VALUES ('1046', '2', 'res/201607/31/thumb_1046.jpg', '1469950369');
INSERT INTO `m_res_ext` VALUES ('1045', '12', 'res/201607/31/auto_1045.jpg', '1469946107');
INSERT INTO `m_res_ext` VALUES ('1045', '2', 'res/201607/31/thumb_1045.jpg', '1469946107');
INSERT INTO `m_res_ext` VALUES ('1047', '12', 'res/201607/31/auto_1047.png', '1469951019');
INSERT INTO `m_res_ext` VALUES ('1047', '2', 'res/201607/31/thumb_1047.png', '1469951019');
INSERT INTO `m_res_ext` VALUES ('1048', '12', 'res/201607/31/auto_1048.png', '1469951917');
INSERT INTO `m_res_ext` VALUES ('1048', '2', 'res/201607/31/thumb_1048.png', '1469951917');
INSERT INTO `m_res_ext` VALUES ('1049', '12', 'res/201607/31/auto_1049.png', '1469951963');
INSERT INTO `m_res_ext` VALUES ('1049', '2', 'res/201607/31/thumb_1049.png', '1469951963');
INSERT INTO `m_res_ext` VALUES ('1050', '12', 'res/201607/31/auto_1050.png', '1469952233');
INSERT INTO `m_res_ext` VALUES ('1050', '2', 'res/201607/31/thumb_1050.png', '1469952233');
INSERT INTO `m_res_ext` VALUES ('1051', '12', 'res/201607/31/auto_1051.png', '1469952594');
INSERT INTO `m_res_ext` VALUES ('1051', '2', 'res/201607/31/thumb_1051.png', '1469952594');
INSERT INTO `m_res_ext` VALUES ('1052', '12', 'res/201607/31/auto_1052.png', '1469961198');
INSERT INTO `m_res_ext` VALUES ('1052', '2', 'res/201607/31/thumb_1052.png', '1469961198');
INSERT INTO `m_res_ext` VALUES ('1053', '12', 'res/201607/31/auto_1053.png', '1469961712');
INSERT INTO `m_res_ext` VALUES ('1053', '2', 'res/201607/31/thumb_1053.png', '1469961712');
INSERT INTO `m_res_ext` VALUES ('1054', '12', 'res/201607/31/auto_1054.png', '1469961758');
INSERT INTO `m_res_ext` VALUES ('1054', '2', 'res/201607/31/thumb_1054.png', '1469961758');
INSERT INTO `m_res_ext` VALUES ('1055', '12', 'res/201610/17/auto_1055.jpg', '1476704102');
INSERT INTO `m_res_ext` VALUES ('1055', '2', 'res/201610/17/thumb_1055.jpg', '1476704102');
INSERT INTO `m_res_ext` VALUES ('1056', '12', 'res/201701/03/auto_1056.jpg', '1483412999');
INSERT INTO `m_res_ext` VALUES ('1056', '2', 'res/201701/03/thumb_1056.jpg', '1483412999');
INSERT INTO `m_res_ext` VALUES ('1059', '12', 'res/201701/03/auto_1059.jpg', '1483413244');
INSERT INTO `m_res_ext` VALUES ('1059', '2', 'res/201701/03/thumb_1059.jpg', '1483413244');
INSERT INTO `m_res_ext` VALUES ('1060', '12', 'res/201701/03/auto_1060.jpg', '1483413370');
INSERT INTO `m_res_ext` VALUES ('1060', '2', 'res/201701/03/thumb_1060.jpg', '1483413370');
INSERT INTO `m_res_ext` VALUES ('1062', '12', 'res/201701/03/auto_1062.jpg', '1483413548');
INSERT INTO `m_res_ext` VALUES ('1062', '2', 'res/201701/03/thumb_1062.jpg', '1483413548');
INSERT INTO `m_res_ext` VALUES ('1064', '12', 'res/201701/03/auto_1064.jpg', '1483414063');
INSERT INTO `m_res_ext` VALUES ('1064', '2', 'res/201701/03/thumb_1064.jpg', '1483414063');
INSERT INTO `m_res_ext` VALUES ('1066', '12', 'res/201701/03/auto_1066.jpg', '1483414362');
INSERT INTO `m_res_ext` VALUES ('1066', '2', 'res/201701/03/thumb_1066.jpg', '1483414362');
INSERT INTO `m_res_ext` VALUES ('1068', '12', 'res/201701/03/auto_1068.jpg', '1483414406');
INSERT INTO `m_res_ext` VALUES ('1068', '2', 'res/201701/03/thumb_1068.jpg', '1483414406');
INSERT INTO `m_res_ext` VALUES ('1072', '12', 'res/201701/03/auto_1072.jpg', '1483414590');
INSERT INTO `m_res_ext` VALUES ('1072', '2', 'res/201701/03/thumb_1072.jpg', '1483414590');
INSERT INTO `m_res_ext` VALUES ('1074', '12', 'res/201701/03/auto_1074.jpg', '1483414632');
INSERT INTO `m_res_ext` VALUES ('1074', '2', 'res/201701/03/thumb_1074.jpg', '1483414632');
INSERT INTO `m_res_ext` VALUES ('1076', '12', 'res/201701/03/auto_1076.jpg', '1483414680');
INSERT INTO `m_res_ext` VALUES ('1076', '2', 'res/201701/03/thumb_1076.jpg', '1483414680');
INSERT INTO `m_res_ext` VALUES ('1078', '12', 'res/201701/03/auto_1078.jpg', '1483414720');
INSERT INTO `m_res_ext` VALUES ('1078', '2', 'res/201701/03/thumb_1078.jpg', '1483414720');
INSERT INTO `m_res_ext` VALUES ('1080', '12', 'res/201701/03/auto_1080.jpg', '1483414763');
INSERT INTO `m_res_ext` VALUES ('1080', '2', 'res/201701/03/thumb_1080.jpg', '1483414763');
INSERT INTO `m_res_ext` VALUES ('1082', '12', 'res/201701/03/auto_1082.jpg', '1483414813');
INSERT INTO `m_res_ext` VALUES ('1082', '2', 'res/201701/03/thumb_1082.jpg', '1483414813');
INSERT INTO `m_res_ext` VALUES ('1084', '12', 'res/201701/03/auto_1084.jpg', '1483414899');
INSERT INTO `m_res_ext` VALUES ('1084', '2', 'res/201701/03/thumb_1084.jpg', '1483414899');
INSERT INTO `m_res_ext` VALUES ('1086', '12', 'res/201701/03/auto_1086.jpg', '1483414973');
INSERT INTO `m_res_ext` VALUES ('1086', '2', 'res/201701/03/thumb_1086.jpg', '1483414973');
INSERT INTO `m_res_ext` VALUES ('1088', '12', 'res/201701/03/auto_1088.jpg', '1483415029');
INSERT INTO `m_res_ext` VALUES ('1088', '2', 'res/201701/03/thumb_1088.jpg', '1483415029');
INSERT INTO `m_res_ext` VALUES ('1090', '12', 'res/201701/03/auto_1090.jpg', '1483415077');
INSERT INTO `m_res_ext` VALUES ('1090', '2', 'res/201701/03/thumb_1090.jpg', '1483415077');
INSERT INTO `m_res_ext` VALUES ('1092', '12', 'res/201701/03/auto_1092.jpg', '1483415131');
INSERT INTO `m_res_ext` VALUES ('1092', '2', 'res/201701/03/thumb_1092.jpg', '1483415131');
INSERT INTO `m_res_ext` VALUES ('1094', '12', 'res/201701/03/auto_1094.jpg', '1483415186');
INSERT INTO `m_res_ext` VALUES ('1094', '2', 'res/201701/03/thumb_1094.jpg', '1483415186');
INSERT INTO `m_res_ext` VALUES ('1096', '12', 'res/201701/03/auto_1096.jpg', '1483415346');
INSERT INTO `m_res_ext` VALUES ('1096', '2', 'res/201701/03/thumb_1096.jpg', '1483415346');
INSERT INTO `m_res_ext` VALUES ('1098', '12', 'res/201701/03/auto_1098.jpg', '1483415409');
INSERT INTO `m_res_ext` VALUES ('1098', '2', 'res/201701/03/thumb_1098.jpg', '1483415409');
INSERT INTO `m_res_ext` VALUES ('1099', '12', 'res/201701/03/auto_1099.jpg', '1483417337');
INSERT INTO `m_res_ext` VALUES ('1099', '2', 'res/201701/03/thumb_1099.jpg', '1483417337');
INSERT INTO `m_res_ext` VALUES ('1100', '12', 'res/201701/06/auto_1100.jpg', '1483701158');
INSERT INTO `m_res_ext` VALUES ('1100', '2', 'res/201701/06/thumb_1100.jpg', '1483701158');

-- ----------------------------
-- Table structure for `m_session`
-- ----------------------------
DROP TABLE IF EXISTS `m_session`;
CREATE TABLE `m_session` (
  `id` varchar(32) NOT NULL COMMENT 'session_id',
  `data` varchar(20485) NOT NULL COMMENT 'session 内容，最多只能放20K',
  `lasttime` int(10) unsigned NOT NULL COMMENT '时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SESSION操作';

-- ----------------------------
-- Records of m_session
-- ----------------------------
INSERT INTO `m_session` VALUES ('mjqaa27qn801h5foph1hfk6930', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('qrc96rj3vng5a1bk4eucgnem90', 'vcode_api|s:32:\"07845cd9aefa6cde3f8926d25138a3a2\";user_id|s:2:\"23\";user_gid|s:1:\"2\";user_name|s:5:\"admin\";', '0');
INSERT INTO `m_session` VALUES ('rf0u8s7j0ggjf3u454o6ln73n1', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('s560snmb7t6npeer5rcuhjht67', 'admin_lang_id|s:7:\"default\";vcode_admin|s:32:\"3810b20210601cb47aae3f1380a264d2\";', '0');
INSERT INTO `m_session` VALUES ('04kise5rk0dpo50eb22japj305', '', '0');
INSERT INTO `m_session` VALUES ('uqtm2dpm9c4cam2n3vkbvnkj52', '', '0');
INSERT INTO `m_session` VALUES ('40f12fpkr1bh7chn0um0lql5l6', 'vcode_api|s:32:\"7bb16972da003e87724f048d76b7e0e1\";user_id|s:2:\"23\";user_gid|s:1:\"2\";user_name|s:5:\"admin\";cart|a:3:{s:10:\"totalprice\";d:1195.48;s:10:\"address_id\";s:2:\"12\";s:10:\"invoice_id\";s:1:\"8\";}', '0');
INSERT INTO `m_session` VALUES ('frjsni0sg6socs2tqo8ehj9rs1', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('3s7lm0v87o1oq4k34o3cckeuq1', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('vg0oi1cnhvnmqfdfj9t9rhb7i2', 'vcode_api|s:32:\"83dc55aeb13cc9f621dcbaa80304d506\";user_id|s:2:\"23\";user_gid|s:1:\"2\";user_name|s:5:\"admin\";vcode|s:32:\"83dc55aeb13cc9f621dcbaa80304d506\";cart|a:3:{s:10:\"totalprice\";d:1373.5999999999999;s:10:\"address_id\";s:2:\"12\";s:10:\"invoice_id\";s:1:\"8\";}', '0');
INSERT INTO `m_session` VALUES ('lutcadmq73qmc23bqjhce7etn0', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('gcet93m2i3rm1bgr1o79bbseu4', '', '0');
INSERT INTO `m_session` VALUES ('m2qbtjl0spnvu0ii1h2b6rcoq2', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('8udiro2k57shogge452aan3fu2', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('518lepv8ns2nn28qocglatkiv1', '', '0');
INSERT INTO `m_session` VALUES ('67l8pc5qstsari1kqhn78r5qb7', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('m32sqsdpqg6qp5nn5egqv983i6', '', '0');
INSERT INTO `m_session` VALUES ('7vjouj7vfj2c7jjg8ho5cfnp86', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}vcode_api|s:32:\"0afc436bdd81f35a332093d419f5a4ce\";user_id|s:2:\"23\";user_gid|s:1:\"2\";user_name|s:5:\"admin\";', '0');
INSERT INTO `m_session` VALUES ('ejjskitpj1i4m38bvmq8t8hd83', '', '0');
INSERT INTO `m_session` VALUES ('nib7a7pb8ml1rh84341fevvff1', '', '0');
INSERT INTO `m_session` VALUES ('mmgdcqrsv359ne1op8dvekicm5', '', '0');
INSERT INTO `m_session` VALUES ('ijo0ei1vikmg0k55lrcu8spvg0', '', '0');
INSERT INTO `m_session` VALUES ('ner56g88ipaq0sjcd3caf8pl71', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}vcode_api|s:32:\"55acf8539596d25624059980986aaa78\";user_id|s:2:\"23\";user_gid|s:1:\"2\";user_name|s:5:\"admin\";', '0');
INSERT INTO `m_session` VALUES ('1gtp5r4lhqna07ar0amehl3j13', '', '0');
INSERT INTO `m_session` VALUES ('vsmk1g5kri9m9kve6llqsrjoh4', 'vcode_api|s:32:\"a57ecd54d4df7d999bd9c5e3b973ec75\";user_id|s:2:\"23\";user_gid|s:1:\"2\";user_name|s:5:\"admin\";', '0');
INSERT INTO `m_session` VALUES ('k9t8uogl0ucq9uho712ipinh05', 'vcode_api|s:32:\"691dcb1d65f31967a874d18383b9da75\";user_id|s:2:\"23\";user_gid|s:1:\"2\";user_name|s:5:\"admin\";', '0');
INSERT INTO `m_session` VALUES ('lcgla1i3569urka4va7okvo175', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('p06rqr25iq69iqul219du5a5r3', '', '0');
INSERT INTO `m_session` VALUES ('ul2t18g597v2fl7pjafggdjfb5', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('da1inqqavqtud31uicu0apbhi5', '', '0');
INSERT INTO `m_session` VALUES ('2ang2dvnjpjgb449ks2jm9c1c5', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('ehkq0qo3l04q2coangm658ccb0', '', '0');
INSERT INTO `m_session` VALUES ('qjrntgont80rp8nef6ncktp3s7', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('7gdbh6cdvbcjfuipgqqcug61b5', '', '0');
INSERT INTO `m_session` VALUES ('2jb0jkb03abor727kf5ohpar86', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('tqcvej3kl6rk1nfa34e3dslds2', '', '0');
INSERT INTO `m_session` VALUES ('p9bovaptqi8d20quh5qkd30671', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"c289ffe12a30c94530b7fc4e532e2f42:23\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('mggsmifp11mn0i15brjg5eg7f1', '', '0');
INSERT INTO `m_session` VALUES ('99sp4ctuge51vmik0edru0fdk7', '', '0');
INSERT INTO `m_session` VALUES ('t5d612kvhk8febekg33nl7v191', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"ce05be417280893e054859a841bfb424:0e\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('54oigvqigrkojodk05seo91k80', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"ce05be417280893e054859a841bfb424:0e\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('7jen4meuhtca0g0m0jnjo24ch5', '', '0');
INSERT INTO `m_session` VALUES ('oh45ulvs8ops10r23l8vdis871', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"ce05be417280893e054859a841bfb424:0e\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('7tcmk6kd39q8plmkjgsvufk954', '', '0');
INSERT INTO `m_session` VALUES ('j26njoh7tov1lelubnqqiooj96', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"ce05be417280893e054859a841bfb424:0e\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('kud3mvhf4npkffncf2seqac6t7', '', '0');
INSERT INTO `m_session` VALUES ('kqin8932bfo6it76980l03dkk1', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"ce05be417280893e054859a841bfb424:0e\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('rflh1olc5kdlr2u55fb0irtlh5', '', '0');
INSERT INTO `m_session` VALUES ('eps1dotm35vfrvb061vcsh0nf3', 'admin_lang_id|s:7:\"default\";admin_site_id|s:1:\"1\";admin_id|s:1:\"1\";admin_account|s:5:\"admin\";admin_rs|a:9:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:4:\"pass\";s:35:\"ce05be417280893e054859a841bfb424:0e\";s:5:\"email\";s:15:\"qinggan@188.com\";s:6:\"status\";s:1:\"1\";s:9:\"if_system\";s:1:\"1\";s:5:\"vpass\";s:0:\"\";s:8:\"fullname\";s:9:\"苏相锟\";s:9:\"close_tip\";s:0:\"\";}', '0');
INSERT INTO `m_session` VALUES ('rg0a5hr2elttdj7pj0knub67n0', '', '0');

-- ----------------------------
-- Table structure for `m_site`
-- ----------------------------
DROP TABLE IF EXISTS `m_site`;
CREATE TABLE `m_site` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '应用ID',
  `domain_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '默认域名ID',
  `title` varchar(255) NOT NULL COMMENT '网站名称',
  `dir` varchar(255) NOT NULL default '/' COMMENT '安装目录，以/结尾',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '状态',
  `content` text NOT NULL COMMENT '网站关闭原因',
  `is_default` tinyint(1) unsigned NOT NULL default '0' COMMENT '1默认站点',
  `tpl_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '模板ID',
  `url_type` enum('default','rewrite','html') NOT NULL default 'default' COMMENT '默认，即带?等能数，rewrite是伪静态页，html为生成的静态页',
  `logo` varchar(255) NOT NULL COMMENT '网站 LOGO ',
  `meta` text NOT NULL COMMENT '扩展配置',
  `currency_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '默认货币ID',
  `register_status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0关闭注册1开启注册',
  `register_close` varchar(255) NOT NULL COMMENT '关闭注册说明',
  `login_status` tinyint(1) unsigned NOT NULL default '0' COMMENT '0关闭登录1开启',
  `login_close` varchar(255) NOT NULL COMMENT '关闭登录说明',
  `adm_logo29` varchar(255) NOT NULL COMMENT '在后台左侧LOGO地址',
  `adm_logo180` varchar(255) NOT NULL COMMENT '登录LOGO地址',
  `lang` varchar(255) NOT NULL COMMENT '语言包',
  `api` int(10) unsigned NOT NULL default '0' COMMENT '0不走接口',
  `api_code` varchar(255) NOT NULL COMMENT 'API验证串',
  `seo_title` varchar(255) NOT NULL COMMENT 'SEO主题',
  `seo_keywords` varchar(255) NOT NULL COMMENT 'SEO关键字',
  `seo_desc` text NOT NULL COMMENT 'SEO摘要',
  `biz_sn` varchar(255) NOT NULL COMMENT '订单号生成规则',
  `biz_payment` int(10) unsigned NOT NULL default '0' COMMENT '默认支付方式',
  `upload_guest` tinyint(1) unsigned NOT NULL default '0' COMMENT '游客上传权限',
  `upload_user` tinyint(1) unsigned NOT NULL default '0' COMMENT '会员上传权限',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='网站管理';

-- ----------------------------
-- Records of m_site
-- ----------------------------
INSERT INTO `m_site` VALUES ('1', '1', '北京猴面包树科技有限公司', '/', '1', '网站正在建设中！', '1', '1', 'default', 'res/201409/01/27a6e141c3d265ae.jpg', '', '1', '1', '本系统暂停新会员注册，给您带来不便还请见谅，如需会员服务请联系QQ：40782502', '1', '本系统暂停会员登录，给您带来不便还请见谅！', 'res/201701/06/5f3432654f9c2a9b.jpg', '', 'cn', '0', '', '', '', '', 'prefix[P]-year-month-date-rand-user-number', '1', '1', '1');

-- ----------------------------
-- Table structure for `m_site_domain`
-- ----------------------------
DROP TABLE IF EXISTS `m_site_domain`;
CREATE TABLE `m_site_domain` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `site_id` mediumint(8) unsigned NOT NULL COMMENT '网站ID',
  `domain` varchar(255) NOT NULL COMMENT '域名信息',
  `is_mobile` tinyint(1) unsigned NOT NULL default '0' COMMENT '1此域名强制为手机版',
  PRIMARY KEY  (`id`),
  KEY `site_id` (`site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='网站指定的域名';

-- ----------------------------
-- Records of m_site_domain
-- ----------------------------
INSERT INTO `m_site_domain` VALUES ('1', '1', 'localhost:8080', '0');

-- ----------------------------
-- Table structure for `m_sysmenu`
-- ----------------------------
DROP TABLE IF EXISTS `m_sysmenu`;
CREATE TABLE `m_sysmenu` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID号',
  `parent_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '父级ID，0为根菜单',
  `title` varchar(100) NOT NULL COMMENT '分类名称',
  `status` tinyint(1) unsigned NOT NULL default '0' COMMENT '状态0禁用1正常',
  `appfile` varchar(100) NOT NULL COMMENT '应用文件名，放在phpok/admin/目录下，记录不带.php',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序，值越小越往前靠，可选0-255',
  `func` varchar(100) NOT NULL COMMENT '应用函数，为空使用index',
  `identifier` varchar(100) NOT NULL COMMENT '标识串，用于区分同一应用文件的不同内容',
  `ext` varchar(255) NOT NULL COMMENT '表单扩展',
  `if_system` tinyint(1) unsigned NOT NULL default '0' COMMENT '0常规项目，1系统项目',
  `site_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '0表示全局网站',
  `icon` varchar(255) NOT NULL COMMENT '图标路径',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='PHPOK后台系统菜单';

-- ----------------------------
-- Records of m_sysmenu
-- ----------------------------
INSERT INTO `m_sysmenu` VALUES ('1', '0', '设置', '1', 'setting', '50', '', '', '', '1', '0', '');
INSERT INTO `m_sysmenu` VALUES ('3', '0', '会员', '1', 'user', '30', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('5', '0', '内容', '1', 'index', '10', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('6', '1', '表单选项', '1', 'opt', '30', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('7', '4', '字段维护', '1', 'fields', '20', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('8', '1', '模块管理', '1', 'module', '20', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('9', '1', '核心配置', '1', 'system', '50', '', '', '', '1', '0', '');
INSERT INTO `m_sysmenu` VALUES ('13', '3', '会员列表', '1', 'user', '10', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('14', '3', '会员组', '1', 'usergroup', '20', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('25', '3', '会员字段', '1', 'user', '30', 'fields', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('16', '4', '插件中心', '1', 'plugin', '30', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('18', '5', '分类管理', '1', 'cate', '30', '', '', '', '0', '0', 'stack');
INSERT INTO `m_sysmenu` VALUES ('19', '5', '全局内容', '1', 'all', '10', '', '', '', '0', '0', 'home');
INSERT INTO `m_sysmenu` VALUES ('20', '5', '内容管理', '1', 'list', '20', '', '', '', '0', '0', 'books');
INSERT INTO `m_sysmenu` VALUES ('22', '5', '资源管理', '1', 'res', '60', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('23', '5', '数据调用', '1', 'call', '40', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('27', '1', '项目管理', '1', 'project', '10', '', '', '', '0', '0', 'google-drive');
INSERT INTO `m_sysmenu` VALUES ('28', '4', '通知模板', '1', 'email', '40', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('29', '1', '管理员维护', '1', 'admin', '80', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('30', '1', '风格管理', '1', 'tpl', '60', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('31', '1', '站点管理', '1', 'site', '90', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('32', '5', '评论管理', '1', 'reply', '50', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('33', '2', '货币及汇率', '1', 'currency', '30', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('34', '2', '订单管理', '1', 'order', '10', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('4', '0', '工具', '1', 'tool', '40', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('45', '4', '程序升级', '1', 'update', '10', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('2', '0', '商务', '1', '', '20', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('52', '2', '付款方案', '1', 'payment', '20', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('57', '1', '数据库管理', '1', 'sql', '100', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('58', '5', '标签管理', '1', 'tag', '70', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('59', '1', '伪静态页规则', '1', 'rewrite', '70', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('62', '4', '附件分类管理', '1', 'rescate', '120', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('63', '4', '图片规格方案', '1', 'gd', '130', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('66', '3', '财富方案', '1', 'wealth', '40', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('67', '2', '商品属性', '1', 'options', '40', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('68', '2', '运费模板', '1', 'freight', '50', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('78', '4', '网关路由', '1', 'gateway', '110', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('77', '2', '物流快递', '1', 'express', '50', '', '', '', '0', '0', '');
INSERT INTO `m_sysmenu` VALUES ('80', '4', '计划任务', '1', 'task', '140', '', '', '', '0', '0', '');

-- ----------------------------
-- Table structure for `m_tag`
-- ----------------------------
DROP TABLE IF EXISTS `m_tag`;
CREATE TABLE `m_tag` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT 'id',
  `site_id` int(10) unsigned NOT NULL default '0' COMMENT '站点ID',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `url` varchar(255) NOT NULL COMMENT '关键字网址',
  `target` tinyint(1) NOT NULL default '0' COMMENT '0原窗口打开，1新窗口打开',
  `hits` int(10) unsigned NOT NULL default '0' COMMENT '点击次数',
  `alt` varchar(255) NOT NULL COMMENT '链接里的提示',
  `is_global` tinyint(1) NOT NULL default '0' COMMENT '是否全局状态1是0否',
  `replace_count` tinyint(4) NOT NULL default '3' COMMENT '替换次数',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='关键字管理器';

-- ----------------------------
-- Records of m_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `m_tag_stat`
-- ----------------------------
DROP TABLE IF EXISTS `m_tag_stat`;
CREATE TABLE `m_tag_stat` (
  `title_id` varchar(200) NOT NULL COMMENT '主题ID，以p开头的表示项目ID，以c开头的表示分类ID',
  `tag_id` int(10) unsigned NOT NULL default '0' COMMENT 'TAG标签ID',
  PRIMARY KEY  (`title_id`,`tag_id`),
  KEY `title_id` (`title_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tag主题统计';

-- ----------------------------
-- Records of m_tag_stat
-- ----------------------------

-- ----------------------------
-- Table structure for `m_task`
-- ----------------------------
DROP TABLE IF EXISTS `m_task`;
CREATE TABLE `m_task` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `year` varchar(9) NOT NULL COMMENT '年份',
  `month` varchar(5) NOT NULL COMMENT '月',
  `day` varchar(5) NOT NULL COMMENT '日',
  `hour` varchar(5) NOT NULL COMMENT '时',
  `minute` varchar(5) NOT NULL COMMENT '分',
  `second` varchar(5) NOT NULL COMMENT '秒',
  `exec_time` int(10) unsigned NOT NULL default '0' COMMENT '开始执行时间',
  `stop_time` int(10) unsigned NOT NULL default '0' COMMENT '结束时间',
  `action` varchar(100) NOT NULL COMMENT '执行动作脚本',
  `param` varchar(255) NOT NULL COMMENT '参数',
  `only_once` tinyint(1) NOT NULL default '0' COMMENT '1表示仅执行一次',
  `is_lock` tinyint(1) NOT NULL default '0' COMMENT '0未锁定1已锁定',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='计划任务';

-- ----------------------------
-- Records of m_task
-- ----------------------------
INSERT INTO `m_task` VALUES ('15', '*', '*', '*', '*', '42', '*', '1483786331', '1483786331', 'expired', '', '0', '0');

-- ----------------------------
-- Table structure for `m_tpl`
-- ----------------------------
DROP TABLE IF EXISTS `m_tpl`;
CREATE TABLE `m_tpl` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `title` varchar(100) NOT NULL COMMENT '模板名称',
  `author` varchar(100) NOT NULL COMMENT '开发者名称',
  `folder` varchar(100) NOT NULL default 'www' COMMENT '模板目录',
  `refresh_auto` tinyint(1) NOT NULL default '1' COMMENT '1自动判断更新刷新0不刷新',
  `refresh` tinyint(1) NOT NULL default '0' COMMENT '1强制刷新0普通刷新',
  `ext` varchar(20) NOT NULL default 'html' COMMENT '后缀',
  `folder_change` varchar(255) NOT NULL COMMENT '更改目录',
  `phpfolder` varchar(200) NOT NULL COMMENT 'PHP执行文件目录',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='模板管理';

-- ----------------------------
-- Records of m_tpl
-- ----------------------------
INSERT INTO `m_tpl` VALUES ('1', '默认风格', '开启网络kaiqi5.com', 'www', '1', '0', 'html', 'css,img,js', 'phpinc');
INSERT INTO `m_tpl` VALUES ('18', 'English', 'phpok.com', 'en', '1', '0', 'html', 'css,js,images', 'phpinc');

-- ----------------------------
-- Table structure for `m_user`
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '自增ID，即会员ID',
  `group_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '主要会员组',
  `user` varchar(100) NOT NULL COMMENT '会员账号',
  `pass` varchar(100) NOT NULL COMMENT '会员密码',
  `status` tinyint(3) unsigned NOT NULL default '0' COMMENT '状态ID，0未审核1正常2锁定',
  `regtime` int(10) unsigned NOT NULL default '0' COMMENT '注册时间',
  `email` varchar(200) NOT NULL COMMENT '邮箱，可用于取回密码',
  `mobile` varchar(50) NOT NULL COMMENT '手机或电话',
  `code` varchar(255) NOT NULL COMMENT '验证串，可用于取回密码',
  `avatar` varchar(255) NOT NULL COMMENT '会员头像',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='会员管理';

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES ('23', '2', 'admin', '504a7d1097c015f5fe76f4be7ca627b3:a0', '1', '1438668082', '40782502@qq.com', '15818533971', 'rVkhsQ5a1j1459329645', 'res/201604/03/0143658fa7928c1c.jpg');
INSERT INTO `m_user` VALUES ('24', '2', 'seika', '51e87180975db1b7c59a02b4b6bc3c99:3e', '1', '1439398782', 'admin@phpok.com', '15818533972', '', '');
INSERT INTO `m_user` VALUES ('25', '2', 'demo', 'edd2f2aac34c1bb0c746876bfae9fbf8:ac', '1', '1469963807', 'demo@demo.com', '', '', '');
INSERT INTO `m_user` VALUES ('26', '2', 'd2', 'defe12aad396f90e6b179c239de260d4:ab', '1', '1469963896', 'ddd@ddd.com', '', '', '');
INSERT INTO `m_user` VALUES ('27', '2', 'suxiangkun', 'e8eb7ea7212ace80bbc98aa93a17904e:35', '1', '1470033757', 'suxiangkun@126.com', '', '', '');

-- ----------------------------
-- Table structure for `m_user_ext`
-- ----------------------------
DROP TABLE IF EXISTS `m_user_ext`;
CREATE TABLE `m_user_ext` (
  `id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `fullname` varchar(255) NOT NULL default '' COMMENT '姓名',
  `gender` varchar(255) NOT NULL default '' COMMENT '性别',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员扩展字段';

-- ----------------------------
-- Records of m_user_ext
-- ----------------------------
INSERT INTO `m_user_ext` VALUES ('23', '苏相锟', '1', '');
INSERT INTO `m_user_ext` VALUES ('0', 'demo', '', '');
INSERT INTO `m_user_ext` VALUES ('24', '', '', '');
INSERT INTO `m_user_ext` VALUES ('25', '', '', '');
INSERT INTO `m_user_ext` VALUES ('26', '', '', '');
INSERT INTO `m_user_ext` VALUES ('27', '', '', '');

-- ----------------------------
-- Table structure for `m_user_fields`
-- ----------------------------
DROP TABLE IF EXISTS `m_user_fields`;
CREATE TABLE `m_user_fields` (
  `id` mediumint(8) unsigned NOT NULL auto_increment COMMENT '字段ID，自增',
  `title` varchar(255) NOT NULL COMMENT '字段名称',
  `identifier` varchar(50) NOT NULL COMMENT '字段标识串',
  `field_type` varchar(255) NOT NULL default '200' COMMENT '字段存储类型',
  `note` varchar(255) NOT NULL COMMENT '字段内容备注',
  `form_type` varchar(100) NOT NULL COMMENT '表单类型',
  `form_style` varchar(255) NOT NULL COMMENT '表单CSS',
  `format` varchar(100) NOT NULL COMMENT '格式化方式',
  `content` varchar(255) NOT NULL COMMENT '默认值',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  `ext` text NOT NULL COMMENT '扩展内容',
  `is_edit` tinyint(1) NOT NULL default '0' COMMENT '0不可编辑1可编辑',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字段管理器';

-- ----------------------------
-- Records of m_user_fields
-- ----------------------------
INSERT INTO `m_user_fields` VALUES ('21', '姓名', 'fullname', 'varchar', '', 'text', '', 'safe', '', '10', 'a:2:{s:8:\"form_btn\";b:0;s:5:\"width\";s:3:\"300\";}', '1');
INSERT INTO `m_user_fields` VALUES ('22', '性别', 'gender', 'varchar', '', 'radio', '', 'safe', '', '120', 'a:3:{s:11:\"option_list\";s:5:\"opt:1\";s:9:\"put_order\";s:1:\"0\";s:10:\"ext_select\";b:0;}', '1');
INSERT INTO `m_user_fields` VALUES ('23', '内容', 'content', 'longtext', '', 'editor', '', 'html', '', '255', 'a:12:{s:5:\"width\";s:3:\"900\";s:6:\"height\";s:3:\"360\";s:7:\"is_code\";s:0:\"\";s:9:\"btn_image\";s:1:\"1\";s:9:\"btn_video\";s:1:\"1\";s:8:\"btn_file\";s:1:\"1\";s:8:\"btn_page\";s:0:\"\";s:8:\"btn_info\";s:0:\"\";s:7:\"is_read\";s:0:\"\";s:5:\"etype\";s:4:\"full\";s:7:\"btn_map\";s:0:\"\";s:7:\"inc_tag\";s:0:\"\";}', '0');

-- ----------------------------
-- Table structure for `m_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `m_user_group`;
CREATE TABLE `m_user_group` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '会员组ID',
  `title` varchar(255) NOT NULL COMMENT '会员组名称',
  `status` tinyint(1) unsigned NOT NULL default '1' COMMENT '0不使用1使用',
  `is_default` tinyint(1) unsigned NOT NULL default '0' COMMENT '1为会员注册默认组',
  `is_guest` tinyint(1) NOT NULL default '0' COMMENT '游客组',
  `is_open` tinyint(1) unsigned NOT NULL default '0' COMMENT '1开放供用户选择，0不开放',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  `register_status` varchar(100) NOT NULL COMMENT '1通过0审核email邮件code邀请码mobile手机',
  `tbl_id` mediumint(8) unsigned NOT NULL default '0' COMMENT '关联验证串项目',
  `fields` text NOT NULL COMMENT '会员字段，多个字段用英文逗号隔开',
  `popedom` longtext NOT NULL COMMENT '权限，包括读写及评论审核',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='会员组信息管理';

-- ----------------------------
-- Records of m_user_group
-- ----------------------------
INSERT INTO `m_user_group` VALUES ('2', '普通会员', '1', '1', '0', '0', '10', '', '0', '', 'a:2:{i:1;s:203:\"read:43,read:87,read:41,read:42,read:147,read:45,read:150,read:96,post:96,read:144,read:151,read:152,post:152,post1:152,reply:152,reply1:152,read:142,post:142,read:148,read:386,post:386,read:389,read:390\";i:33;s:57:\"read:384,post:384,reply:384,post1:384,reply1:384,read:385\";}');
INSERT INTO `m_user_group` VALUES ('3', '游客组', '1', '0', '1', '0', '200', '', '0', '', 'a:2:{i:1;s:492:\"read:149,read:87,read:90,read:146,read:92,read:93,read:43,read:41,read:42,read:147,read:45,read:150,read:96,post:96,read:144,read:151,read:152,read:142,post:142,read:148,read:153,read:156,read:157,read:158,post:158,post1:158,read:159,read:160,post:160,reply:160,post1:160,reply1:160,read:161,post:161,reply:161,post1:161,reply1:161,read:162,post:162,reply:162,post1:162,reply1:162,read:163,read:164,post:164,reply:164,post1:164,reply1:164,read:165,read:166,read:386,post:386,read:389,read:390\";i:33;s:57:\"read:384,post:384,reply:384,post1:384,reply1:384,read:385\";}');

-- ----------------------------
-- Table structure for `m_user_relation`
-- ----------------------------
DROP TABLE IF EXISTS `m_user_relation`;
CREATE TABLE `m_user_relation` (
  `uid` int(10) unsigned NOT NULL default '0' COMMENT '用户ID',
  `introducer` int(10) unsigned NOT NULL default '0' COMMENT '介绍人ID',
  `dateline` int(10) unsigned NOT NULL default '0' COMMENT '介绍时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员介绍关系图';

-- ----------------------------
-- Records of m_user_relation
-- ----------------------------
INSERT INTO `m_user_relation` VALUES ('24', '23', '1439398782');
INSERT INTO `m_user_relation` VALUES ('25', '23', '1469963807');
INSERT INTO `m_user_relation` VALUES ('26', '24', '1469963896');

-- ----------------------------
-- Table structure for `m_wealth`
-- ----------------------------
DROP TABLE IF EXISTS `m_wealth`;
CREATE TABLE `m_wealth` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '财富ID',
  `site_id` int(10) unsigned NOT NULL default '0' COMMENT '站点ID',
  `title` varchar(100) NOT NULL COMMENT '财产名称',
  `identifier` varchar(100) NOT NULL COMMENT '标识，仅限英文字符',
  `unit` varchar(100) NOT NULL COMMENT '单位名称',
  `dnum` tinyint(1) NOT NULL default '0' COMMENT '保留几位小数，为0表示只取整数',
  `ifpay` tinyint(1) NOT NULL default '0' COMMENT '是否支持充值',
  `pay_ratio` float unsigned NOT NULL default '0' COMMENT '兑换比例，即1元可以兑换多少，为0不支持充值，为1表示1：1，不支持小数',
  `status` tinyint(1) NOT NULL default '0' COMMENT '0不使用1使用',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序，0-255，越小越往前靠',
  `ifcash` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否抵现，即允许财富当现金使用',
  `cash_ratio` float unsigned NOT NULL default '0' COMMENT '抵现比例，即100财富值可抵用多少元',
  `ifcheck` tinyint(1) NOT NULL default '0' COMMENT '是否审核，为1时表示获取到的财富需要管理员审核后才行',
  `min_val` float unsigned NOT NULL default '0' COMMENT '最低使用值',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='财富类型';

-- ----------------------------
-- Records of m_wealth
-- ----------------------------
INSERT INTO `m_wealth` VALUES ('1', '1', '积分', 'integral', '点', '2', '0', '0', '1', '10', '1', '1', '0', '100');
INSERT INTO `m_wealth` VALUES ('2', '1', '钱包', 'wallet', '元', '2', '1', '1', '1', '20', '1', '100', '1', '0');
INSERT INTO `m_wealth` VALUES ('3', '1', '威望', 'prestige', '星', '0', '0', '0', '1', '20', '0', '0', '0', '0');
INSERT INTO `m_wealth` VALUES ('5', '1', '红包', 'redbao', '个', '0', '0', '0', '1', '30', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `m_wealth_info`
-- ----------------------------
DROP TABLE IF EXISTS `m_wealth_info`;
CREATE TABLE `m_wealth_info` (
  `wid` int(10) unsigned NOT NULL default '0' COMMENT '方案ID',
  `uid` int(10) unsigned NOT NULL default '0' COMMENT '主题ID或会员ID或分类ID或项目ID',
  `lasttime` int(11) NOT NULL default '0' COMMENT '最后一次更新时间',
  `val` float unsigned NOT NULL default '0' COMMENT '最小财富为0，不考虑负数情况',
  PRIMARY KEY  (`wid`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='财富内容';

-- ----------------------------
-- Records of m_wealth_info
-- ----------------------------
INSERT INTO `m_wealth_info` VALUES ('1', '23', '1476354571', '4279.4');
INSERT INTO `m_wealth_info` VALUES ('1', '24', '1476354571', '2002.8');
INSERT INTO `m_wealth_info` VALUES ('1', '25', '1470021972', '55');
INSERT INTO `m_wealth_info` VALUES ('1', '0', '1469963896', '5');
INSERT INTO `m_wealth_info` VALUES ('1', '26', '1476354571', '3338');
INSERT INTO `m_wealth_info` VALUES ('1', '27', '1476354482', '3293');
INSERT INTO `m_wealth_info` VALUES ('2', '23', '1471335239', '0');

-- ----------------------------
-- Table structure for `m_wealth_log`
-- ----------------------------
DROP TABLE IF EXISTS `m_wealth_log`;
CREATE TABLE `m_wealth_log` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `wid` int(10) unsigned NOT NULL default '0' COMMENT '财富ID',
  `rule_id` int(10) unsigned NOT NULL default '0' COMMENT '规则ID',
  `goal_id` int(10) unsigned NOT NULL default '0' COMMENT '目标会员ID',
  `mid` varchar(100) NOT NULL COMMENT '主键ID关联',
  `val` int(11) NOT NULL default '0' COMMENT '不带负号表示增加，带负号表示减去',
  `note` varchar(255) NOT NULL COMMENT '操作摘要',
  `appid` enum('admin','www','api') NOT NULL default 'www' COMMENT '来自哪个接口',
  `dateline` int(11) NOT NULL default '0' COMMENT '写入时间',
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT '会员ID，为0非会员',
  `admin_id` int(10) unsigned NOT NULL default '0' COMMENT '管理员ID，为0非管理员',
  `ctrlid` varchar(100) NOT NULL COMMENT '控制器ID',
  `funcid` varchar(100) NOT NULL COMMENT '方法ID',
  `url` varchar(255) NOT NULL COMMENT '执行的URL',
  `status` tinyint(1) NOT NULL default '0' COMMENT '0未审核1已审核',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='财富获取或消耗日志';

-- ----------------------------
-- Records of m_wealth_log
-- ----------------------------
INSERT INTO `m_wealth_log` VALUES ('1', '1', '5', '23', '', '5', '会员登录', 'www', '1469445274', '23', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('2', '1', '5', '24', '', '5', '会员登录', 'www', '1469445374', '24', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('3', '1', '5', '23', '', '5', '会员登录', 'www', '1469963756', '23', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('4', '1', '2', '25', '', '50', '会员注册', 'api', '1469963807', '0', '1', 'register', 'save', '', '1');
INSERT INTO `m_wealth_log` VALUES ('5', '1', '4', '23', '', '20', '会员注册', 'api', '1469963807', '0', '1', 'register', 'save', '', '1');
INSERT INTO `m_wealth_log` VALUES ('6', '1', '16', '0', '', '10', '会员注册', 'api', '1469963807', '0', '1', 'register', 'save', '', '1');
INSERT INTO `m_wealth_log` VALUES ('7', '1', '17', '0', '', '5', '会员注册', 'api', '1469963807', '0', '1', 'register', 'save', '', '1');
INSERT INTO `m_wealth_log` VALUES ('8', '1', '5', '24', '', '5', '会员登录', 'www', '1469963859', '24', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('9', '1', '2', '26', '', '50', '会员注册', 'api', '1469963896', '0', '1', 'register', 'save', '', '1');
INSERT INTO `m_wealth_log` VALUES ('10', '1', '4', '24', '', '20', '会员注册', 'api', '1469963896', '0', '1', 'register', 'save', '', '1');
INSERT INTO `m_wealth_log` VALUES ('11', '1', '16', '23', '', '10', '会员注册', 'api', '1469963896', '0', '1', 'register', 'save', '', '1');
INSERT INTO `m_wealth_log` VALUES ('12', '1', '17', '0', '', '5', '会员注册', 'api', '1469963896', '0', '1', 'register', 'save', '', '1');
INSERT INTO `m_wealth_log` VALUES ('13', '1', '5', '25', '', '5', '会员登录', 'www', '1470021972', '25', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('14', '1', '5', '27', '', '5', '会员登录', 'www', '1470033786', '27', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('15', '1', '5', '23', '', '5', '会员登录', 'www', '1470033869', '23', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('16', '1', '5', '23', '', '5', '会员登录', 'www', '1470103517', '23', '0', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('17', '2', '0', '23', '0', '10', '管理员操作：充值测试', 'admin', '1470117181', '0', '1', 'wealth', 'val', 'admin.php...', '1');
INSERT INTO `m_wealth_log` VALUES ('18', '1', '5', '23', '', '5', '会员登录', 'www', '1470207495', '23', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('19', '1', '5', '23', '', '5', '会员登录', 'www', '1470292107', '23', '0', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('20', '1', '5', '23', '', '5', '会员登录', 'www', '1471330852', '23', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('21', '2', '0', '23', '0', '-10', '财富抵现', 'www', '1471334587', '23', '0', 'payment', 'create', 'index.php', '1');
INSERT INTO `m_wealth_log` VALUES ('22', '2', '0', '23', '0', '10', '管理员操作：测试', 'admin', '1471334841', '0', '1', 'wealth', 'val', 'admin.php...', '1');
INSERT INTO `m_wealth_log` VALUES ('23', '2', '0', '23', '0', '-10', '财富抵现', 'www', '1471334856', '23', '0', 'payment', 'create', 'index.php', '1');
INSERT INTO `m_wealth_log` VALUES ('24', '2', '0', '23', '0', '15', '管理员操作：充值', 'admin', '1471335089', '0', '1', 'wealth', 'val', 'admin.php...', '1');
INSERT INTO `m_wealth_log` VALUES ('25', '2', '0', '23', '0', '-15', '财富抵现', 'www', '1471335103', '23', '0', 'payment', 'create', 'index.php', '1');
INSERT INTO `m_wealth_log` VALUES ('26', '2', '0', '23', '0', '11', '管理员操作：1111', 'admin', '1471335226', '0', '1', 'wealth', 'val', 'admin.php...', '1');
INSERT INTO `m_wealth_log` VALUES ('27', '2', '0', '23', '0', '-11', '财富抵现', 'www', '1471335239', '23', '0', 'payment', 'create', 'index.php', '1');
INSERT INTO `m_wealth_log` VALUES ('28', '1', '5', '23', '', '5', '会员登录', 'www', '1471405281', '23', '0', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('29', '1', '5', '23', '', '5', '会员登录', 'www', '1471592328', '23', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('30', '1', '5', '23', '', '5', '会员登录', 'www', '1472782400', '23', '0', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('31', '1', '5', '23', '', '5', '会员登录', 'www', '1473056543', '23', '0', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('32', '1', '5', '23', '', '5', '会员登录', 'www', '1473130556', '23', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('33', '1', '5', '23', '', '5', '会员登录', 'www', '1473299105', '23', '0', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('34', '1', '5', '23', '', '5', '会员登录', 'www', '1473553301', '23', '0', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('35', '1', '5', '23', '', '5', '会员登录', 'www', '1473660827', '23', '0', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('36', '1', '0', '23', '0', '-105', '财富抵现', 'www', '1473660928', '23', '0', 'payment', 'create', 'index.php', '1');
INSERT INTO `m_wealth_log` VALUES ('37', '1', '5', '23', '', '5', '会员登录', 'www', '1474273355', '23', '1', 'login', 'ok', '', '1');
INSERT INTO `m_wealth_log` VALUES ('38', '1', '14', '23', '13', '0', '订单完成赚送积分', 'admin', '1476352896', '0', '1', 'order', 'end', '', '1');
INSERT INTO `m_wealth_log` VALUES ('39', '1', '14', '23', '14', '0', '订单完成赚送积分', 'admin', '1476354262', '0', '1', 'order', 'end', '', '1');
INSERT INTO `m_wealth_log` VALUES ('40', '1', '14', '23', '15', '0', '订单完成赚送积分', 'admin', '1476354313', '0', '1', 'order', 'end', '', '1');
INSERT INTO `m_wealth_log` VALUES ('41', '1', '14', '23', '16', '3288', '订单完成赚送积分', 'admin', '1476354424', '0', '1', 'order', 'end', '', '1');
INSERT INTO `m_wealth_log` VALUES ('42', '1', '14', '27', '17', '3288', '订单完成赚送积分', 'admin', '1476354482', '0', '1', 'order', 'end', '', '1');
INSERT INTO `m_wealth_log` VALUES ('43', '1', '14', '26', '18', '3288', '订单完成赚送积分', 'admin', '1476354571', '0', '1', 'order', 'end', '', '1');
INSERT INTO `m_wealth_log` VALUES ('44', '1', '18', '24', '18', '1973', '订单完成赚送积分', 'admin', '1476354571', '0', '1', 'order', 'end', '', '1');
INSERT INTO `m_wealth_log` VALUES ('45', '1', '19', '23', '18', '986', '订单完成赚送积分', 'admin', '1476354571', '0', '1', 'order', 'end', '', '1');

-- ----------------------------
-- Table structure for `m_wealth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `m_wealth_rule`;
CREATE TABLE `m_wealth_rule` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '规则ID',
  `wid` int(10) unsigned NOT NULL COMMENT '财产ID',
  `action` varchar(255) NOT NULL COMMENT '触发动作',
  `val` varchar(255) NOT NULL default '0' COMMENT '值，负值表示减，大于0表示加，支持计算如price*2',
  `goal` varchar(255) NOT NULL default 'user' COMMENT '目标类型user用户，agent1一级代理',
  `taxis` tinyint(3) unsigned NOT NULL default '255' COMMENT '排序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='财富生成规则';

-- ----------------------------
-- Records of m_wealth_rule
-- ----------------------------
INSERT INTO `m_wealth_rule` VALUES ('4', '1', 'register', '20', 'introducer', '20');
INSERT INTO `m_wealth_rule` VALUES ('2', '1', 'register', '50', 'user', '10');
INSERT INTO `m_wealth_rule` VALUES ('5', '1', 'login', '5', 'user', '30');
INSERT INTO `m_wealth_rule` VALUES ('12', '1', 'content', '1', 'user', '40');
INSERT INTO `m_wealth_rule` VALUES ('13', '1', 'comment', '5', 'user', '50');
INSERT INTO `m_wealth_rule` VALUES ('14', '1', 'payment', 'price', 'user', '60');
INSERT INTO `m_wealth_rule` VALUES ('15', '1', 'post', '10', 'user', '70');
INSERT INTO `m_wealth_rule` VALUES ('16', '1', 'register', '10', 'introducer2', '25');
INSERT INTO `m_wealth_rule` VALUES ('17', '1', 'register', '5', 'introducer3', '28');
INSERT INTO `m_wealth_rule` VALUES ('18', '1', 'payment', 'price*0.6', 'introducer', '62');
INSERT INTO `m_wealth_rule` VALUES ('19', '1', 'payment', 'price*0.3', 'introducer2', '65');
INSERT INTO `m_wealth_rule` VALUES ('20', '1', 'payment', 'price*0.1', 'introducer3', '68');

-- ----------------------------
-- Table structure for `m_workflow`
-- ----------------------------
DROP TABLE IF EXISTS `m_workflow`;
CREATE TABLE `m_workflow` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT '自增ID',
  `tid` int(10) unsigned NOT NULL default '0' COMMENT '主题ID',
  `admin_id` int(10) unsigned NOT NULL default '0' COMMENT '指派谁来管理的管理员ID',
  `dateline` int(10) unsigned NOT NULL default '0' COMMENT '创建时间',
  `is_end` tinyint(1) unsigned NOT NULL default '0' COMMENT '是否结束',
  `endtime` int(10) unsigned NOT NULL default '0' COMMENT '结束时间',
  `note` varchar(255) NOT NULL,
  `actting` tinyint(1) unsigned NOT NULL default '0' COMMENT '1正在操作处理中',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='工作流处理';

-- ----------------------------
-- Records of m_workflow
-- ----------------------------
