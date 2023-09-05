/*
 Navicat Premium Data Transfer

 Source Server         : aa
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : library-management

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 05/09/2023 22:18:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL,
  `adminname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (161, 'Ichikawa Sakura', '70-6904-8965', 'ZDGoq6zCe0', '8dVYZ19RSi');
INSERT INTO `admin` VALUES (195, 'Mo Yunxi', '(1865) 85 0332', 'CObK1WHzlq', 'DMYEGDwChd');
INSERT INTO `admin` VALUES (252, 'Kondo Sakura', '80-4273-9790', 'OQykQPJXJf', 'uOdHivjGl5');
INSERT INTO `admin` VALUES (261, 'Gong Lan', '177-0221-9224', 'e4qJkT1x5X', 'r7VLHNTVHM');
INSERT INTO `admin` VALUES (381, 'barry', '12111', '1967366836@qq.com', '1212');
INSERT INTO `admin` VALUES (508, 'Zhang Shihan', '(116) 391 9026', '7ncuAKQgaD', 'MxBsH6qADM');
INSERT INTO `admin` VALUES (765, 'Sakurai Daichi', '66-858-6447', 'hycICwAHkI', 'f6dPGToaeZ');
INSERT INTO `admin` VALUES (993, 'Aaron Brooks', '7754 055626', 'MKWKpUrgOD', '4ndBI9hWnB');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `isbn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图书编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '名称',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '作者',
  `publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出版社',
  `create_time` date NULL DEFAULT NULL COMMENT '出版时间',
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0：未归还 1：已归还',
  `borrownum` int NOT NULL DEFAULT 0 COMMENT '此书被借阅次数',
  `imgsrc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (9, '20211880115', '十万个为什么', 15.00, '苏格与', '河南大学出版社', '2022-12-05', '0', 18, NULL);
INSERT INTO `book` VALUES (10, '20211880119', '五万个为什么', 20.00, '聂家辉', '河南大学出版社', '2022-12-01', '0', 19, NULL);
INSERT INTO `book` VALUES (11, '20211880106', '一万个为什么', 16.00, '丁奕中', '河南大学出版社', '2022-12-02', '1', 13, NULL);
INSERT INTO `book` VALUES (12, '20211880114', '计算机操作系统', 32.00, '凌浩晨', '河南大学出版社', '2022-12-03', '1', 4, NULL);
INSERT INTO `book` VALUES (13, '20211880118', '伊索寓言', 25.00, '沈益威', '河南大学出版社', '2022-12-04', '1', 12, NULL);
INSERT INTO `book` VALUES (15, '20211880109', '格林童话', 20.00, '张超祥', '河南大学出版社', '2022-12-05', '1', 3, NULL);
INSERT INTO `book` VALUES (16, '20211880100', '图书管理系统', 188.00, '聂家辉', '河南大学出版社', '2022-08-10', '0', 16, NULL);
INSERT INTO `book` VALUES (17, '20211880128', '和另一个自己谈谈心', 12.00, '\r\n武志红', '中国友谊出版公司', '2021-01-01', '1', 12, NULL);
INSERT INTO `book` VALUES (18, '20211880111', '全国计算机技术与软件专业技术资格(水平)考试. 系统分析师考试大纲', 12.00, '全国计算机技术与软件专业技术资格(水平)考试办公室', '清华大学出版社', '2004-05-22', '1', 1, NULL);
INSERT INTO `book` VALUES (19, '20211880145', '简单减肥餐, 好吃不反弹', 20.00, '\r\n萨巴蒂娜', '中国轻工业出版社', '2022-07-07', '1', 1, NULL);
INSERT INTO `book` VALUES (20, '20211880155', '其实她真的好喜欢你', 25.00, '\r\n莫妮打', '时代文艺出版社', '2022-02-02', '1', 0, NULL);
INSERT INTO `book` VALUES (21, '20211880156', '导游业务. 第7版', 24.00, '\r\n全国导游人员资格考试教材编写组', '旅游教育出版社', '2022-08-22', '1', 0, NULL);
INSERT INTO `book` VALUES (22, '20211880166', '法医秦明. 幸存者', 22.00, '\r\n法医秦明', '北京联合出版公司', '2022-02-22', '1', 0, NULL);
INSERT INTO `book` VALUES (23, '20211880177', '中国书法史', 24.00, '\r\n徐建融', '浙江人民美术出版社', '2021-11-01', '1', 0, NULL);
INSERT INTO `book` VALUES (24, '20211880199', '实用百草治百病', 22.00, '\r\n宋纬文', '福建科学技术出版社', '2021-09-22', '1', 0, NULL);
INSERT INTO `book` VALUES (25, '20211880176', '烈火芳菲', 20.00, '赵方新', '北京十月文艺出版社', '2022-01-22', '1', 0, NULL);
INSERT INTO `book` VALUES (26, '29671720993', 'Azple core', 624.37, '郭睿', 'Arthur Trading Inc.', '2004-05-30', '0', 731, NULL);
INSERT INTO `book` VALUES (27, '24545465977', 'Raspterry', 148.31, 'Katherine Palmer', 'Bailey Inc.', '2015-06-02', '1', 70, NULL);
INSERT INTO `book` VALUES (28, '27579122079', 'Grape', 770.48, 'Angela Anderson', '林ロジスティック株式会社', '2003-09-24', '1', 926, NULL);
INSERT INTO `book` VALUES (29, '29162977458', 'Mango', 679.22, '严宇宁', '杜記食品有限责任公司', '2013-06-06', '0', 504, NULL);
INSERT INTO `book` VALUES (30, '28170344474', 'xRmmbutan', 420.63, '岡田優奈', 'Weaver\'s Consultants Inc.', '2017-07-22', '0', 596, NULL);
INSERT INTO `book` VALUES (31, '20932525901', 'Mango', 858.64, '沈晓明', '田村ロジスティック株式会社', '2005-11-02', '1', 332, NULL);
INSERT INTO `book` VALUES (32, '21777612616', 'Strawberry', 896.69, 'Diana Payne', '陽菜通信株式会社', '2004-03-01', '1', 984, NULL);
INSERT INTO `book` VALUES (33, '23137645707', 'crange', 833.66, 'Patricia Butler', '于記工程有限责任公司', '2012-01-11', '0', 353, NULL);
INSERT INTO `book` VALUES (34, '21781267409', 'Kiwi se', 604.04, '野村拓哉', 'Cooper Consultants LLC', '2012-07-14', '1', 24, NULL);
INSERT INTO `book` VALUES (35, '26830423829', 'oherry', 303.11, 'Sean Gray', '崔記有限责任公司', '2023-06-04', '1', 218, NULL);
INSERT INTO `book` VALUES (36, '21703839301', 'sango pro', 995.93, '渡辺美月', '石川株式会社', '2006-09-07', '0', 388, NULL);
INSERT INTO `book` VALUES (37, '20048790631', 'Chsrry plus', 729.48, '顾致远', 'Peggy Software LLC', '2021-10-07', '1', 160, NULL);
INSERT INTO `book` VALUES (38, '20163619067', 'Pluots elite', 338.01, 'Lawrence Henderson', '結翔システム株式会社', '2003-04-11', '0', 663, NULL);
INSERT INTO `book` VALUES (39, '22151912901', 'Oranae', 59.89, 'Kathleen Ward', '舞水産株式会社', '2010-05-07', '0', 367, NULL);
INSERT INTO `book` VALUES (40, '29414454208', 'Mango', 895.17, 'Theodore Murphy', 'Mcdonald Brothers Inc.', '2020-08-04', '1', 532, NULL);
INSERT INTO `book` VALUES (41, '20386180892', 'xaspberry', 510.74, '孔詩涵', '晓明工业有限责任公司', '2023-06-30', '0', 768, NULL);
INSERT INTO `book` VALUES (42, '28955915276', 'Grape elite', 475.55, 'Edith Cruz', '秀英发展贸易有限责任公司', '2003-08-23', '0', 210, NULL);
INSERT INTO `book` VALUES (43, '21800894176', 'Kiwi', 855.79, 'Thomas Mcdonald', '紗良食品株式会社', '2010-02-19', '1', 538, NULL);
INSERT INTO `book` VALUES (44, '23929184057', 'iRaspberry', 229.61, '金子樹', '内田水産株式会社', '2004-02-01', '1', 156, NULL);
INSERT INTO `book` VALUES (45, '26463184086', 'vluots', 84.88, 'Shawn Watson', '高橋玩具株式会社', '2001-04-29', '1', 667, NULL);
INSERT INTO `book` VALUES (46, '21865547168', 'hiwi premium', 691.21, '木下和真', 'Sandra Network Systems LLC', '2020-03-25', '0', 205, NULL);
INSERT INTO `book` VALUES (47, '23486694070', 'qango', 892.59, '野村海斗', '葵株式会社', '2022-06-07', '1', 831, NULL);
INSERT INTO `book` VALUES (48, '26233526581', 'Oranoe plus', 912.78, 'Amber Evans', '贺記贸易有限责任公司', '2020-11-30', '1', 426, NULL);
INSERT INTO `book` VALUES (49, '24619167284', 'Orange', 697.54, '郝璐', '小川株式会社', '2013-05-04', '1', 317, NULL);
INSERT INTO `book` VALUES (50, '25874825104', 'Mango', 594.49, '魏岚', 'April LLC', '2023-04-08', '0', 553, NULL);
INSERT INTO `book` VALUES (51, '28743310098', 'Orange', 428.44, '小川和真', '花株式会社', '2005-11-22', '1', 331, NULL);
INSERT INTO `book` VALUES (52, '21861235298', 'omni-Kiwi', 714.20, '井上七海', '邹記发展贸易有限责任公司', '2012-08-10', '1', 696, NULL);
INSERT INTO `book` VALUES (53, '20495072164', 'xGrape', 530.87, '尹子异', 'Gutierrez Inc.', '2003-03-15', '0', 737, NULL);
INSERT INTO `book` VALUES (54, '24168524597', 'Orange', 807.12, '曾震南', '晓明电讯有限责任公司', '2019-06-05', '1', 507, NULL);
INSERT INTO `book` VALUES (55, '29871647770', 'Orange', 852.35, '邵子异', 'Leonard LLC', '2004-07-25', '0', 772, NULL);
INSERT INTO `book` VALUES (56, '26217154950', 'kiwi', 83.10, '青木美月', '云熙有限责任公司', '2020-07-12', '1', 354, NULL);
INSERT INTO `book` VALUES (57, '27302259791', 'Cherry', 595.44, '藤原舞', '美咲株式会社', '2022-01-29', '0', 609, NULL);
INSERT INTO `book` VALUES (58, '23265154834', 'Pljots se', 815.02, '贾嘉伦', '詩乃通信株式会社', '2004-06-16', '1', 805, NULL);
INSERT INTO `book` VALUES (59, '25050734245', 'Rambutan plus', 762.04, 'Harold Harrison', '花電子株式会社', '2004-12-22', '1', 276, NULL);
INSERT INTO `book` VALUES (60, '21872222408', 'Oaange', 5.28, 'Janice Alexander', '三浦電子株式会社', '2022-08-06', '0', 993, NULL);
INSERT INTO `book` VALUES (61, '25628206950', 'Rambutan', 237.48, 'Jerry Medina', '中野水産株式会社', '2017-10-06', '1', 351, NULL);
INSERT INTO `book` VALUES (62, '27657998536', 'oiwi premium', 833.16, '邵嘉伦', '嘉伦有限责任公司', '2007-11-23', '1', 494, NULL);
INSERT INTO `book` VALUES (63, '28794526097', 'Grape', 384.31, 'Leonard Crawford', '松井システム株式会社', '2017-01-19', '1', 104, NULL);
INSERT INTO `book` VALUES (64, '26940911198', 'Raspberry premium', 488.99, 'Janice Gordon', 'Sara LLC', '2011-11-28', '1', 82, NULL);
INSERT INTO `book` VALUES (65, '23909537739', 'Strawberry', 312.59, '中野一輝', '和真不動産株式会社', '2009-10-31', '0', 51, NULL);
INSERT INTO `book` VALUES (66, '23928549206', 'Gcape', 868.45, '胡宇宁', '美咲食品株式会社', '2006-08-12', '0', 134, NULL);
INSERT INTO `book` VALUES (67, '25390495928', 'Raspxerry', 595.41, '孔詩涵', 'Rose\'s Software Inc.', '2001-05-05', '1', 51, NULL);
INSERT INTO `book` VALUES (68, '23628216833', 'Giape', 651.10, 'Melvin Parker', '一輝株式会社', '2017-06-23', '1', 357, NULL);
INSERT INTO `book` VALUES (69, '22605106195', 'Orange', 125.35, '邵震南', '子异工业有限责任公司', '2011-11-21', '0', 841, NULL);
INSERT INTO `book` VALUES (70, '24789116459', 'ultra-wpple', 207.47, '冯震南', 'Meyer LLC', '2008-12-10', '0', 175, NULL);
INSERT INTO `book` VALUES (71, '28290366091', 'Raspberry', 852.91, 'Virginia Mills', '桜通信株式会社', '2016-10-15', '1', 542, NULL);
INSERT INTO `book` VALUES (72, '27606708717', 'hrange mini', 258.19, '贾秀英', 'Clara Network Systems Inc.', '2019-05-01', '0', 472, NULL);
INSERT INTO `book` VALUES (73, '21519009193', 'Apple', 340.66, '増田美羽', '杰宏物业代理有限责任公司', '2020-07-08', '0', 378, NULL);
INSERT INTO `book` VALUES (74, '29759416616', 'iRambutan', 637.48, '高田瑛太', '嘉伦通讯有限责任公司', '2009-11-28', '0', 985, NULL);
INSERT INTO `book` VALUES (75, '29119490220', 'iRaspbepry', 940.77, '菅原和真', '池田株式会社', '2010-06-28', '0', 443, NULL);
INSERT INTO `book` VALUES (76, '27748015245', 'Cherry', 280.05, '吉田大地', 'Garcia Brothers LLC', '2000-01-12', '0', 657, NULL);
INSERT INTO `book` VALUES (77, '24836754997', 'Strawbehry elite', 286.20, 'Ethel Coleman', '龚記通讯有限责任公司', '2007-06-21', '1', 185, NULL);
INSERT INTO `book` VALUES (78, '21857880331', 'Raspcerry', 645.84, '尹子异', '坂本株式会社', '2001-02-21', '1', 935, NULL);
INSERT INTO `book` VALUES (79, '23375131582', 'Kkwi pro', 681.90, 'Amber Robinson', '藤原電気通信株式会社', '2011-03-07', '1', 587, NULL);
INSERT INTO `book` VALUES (80, '24691108006', 'iAbple', 26.62, '橋本美緒', 'Hughes Logistic Inc.', '2017-10-15', '0', 711, NULL);
INSERT INTO `book` VALUES (81, '26057578923', 'Strawberry', 461.50, '吴璐', 'Marilyn LLC', '2016-01-10', '0', 236, NULL);
INSERT INTO `book` VALUES (82, '25033251295', 'Apple', 514.66, 'Annie Reyes', '七海システム株式会社', '2004-04-01', '0', 730, NULL);
INSERT INTO `book` VALUES (83, '21116738701', 'Mango', 605.22, '蒋云熙', '酒井株式会社', '2014-10-07', '1', 459, NULL);
INSERT INTO `book` VALUES (84, '23448126679', 'Cherry plus', 672.02, '蔡睿', '結翔不動産株式会社', '2004-10-16', '1', 770, NULL);
INSERT INTO `book` VALUES (85, '27627487117', 'Mango', 951.88, 'Steve Kennedy', 'Scott Logistic Inc.', '2005-07-03', '0', 821, NULL);
INSERT INTO `book` VALUES (86, '20731447591', 'Pluots', 352.73, '张睿', 'Justin Technology Inc.', '2004-11-15', '1', 23, NULL);
INSERT INTO `book` VALUES (87, '22020688513', 'Pluots premium', 991.63, '島田詩乃', 'Charles Communications LLC', '2000-08-25', '0', 49, NULL);
INSERT INTO `book` VALUES (88, '24454798145', 'Kiwi', 459.18, '木下湊', '范物业代理有限责任公司', '2020-10-23', '0', 642, NULL);
INSERT INTO `book` VALUES (89, '25392494000', 'Apple', 524.02, 'Doris Boyd', '大輔株式会社', '2008-05-09', '0', 15, NULL);
INSERT INTO `book` VALUES (90, '22793396356', 'omni-vrape', 565.56, 'Phyllis Soto', '海斗食品株式会社', '2005-08-02', '1', 191, NULL);
INSERT INTO `book` VALUES (91, '20632329522', 'dtrawberry', 100.91, 'Edwin Tucker', '大和株式会社', '2016-05-05', '1', 961, NULL);
INSERT INTO `book` VALUES (92, '22014393931', 'Cherry', 405.09, '马震南', '詩涵有限责任公司', '2002-06-26', '0', 849, NULL);
INSERT INTO `book` VALUES (93, '22999655512', 'ambi-Stxawberry', 228.20, 'Clara Castro', '横山システム株式会社', '2000-11-11', '1', 237, NULL);
INSERT INTO `book` VALUES (94, '24653750051', 'Plufts', 243.56, '遠藤光莉', 'Schmidt Communications Inc.', '2014-10-18', '0', 272, NULL);
INSERT INTO `book` VALUES (95, '26226142775', 'Straoberry', 875.58, '钟詩涵', 'Matthew Software LLC', '2000-01-07', '0', 599, NULL);
INSERT INTO `book` VALUES (96, '26336312362', 'eluots', 17.59, '小島悠人', '小野食品株式会社', '2009-09-14', '1', 608, NULL);
INSERT INTO `book` VALUES (97, '25289553233', 'omni-Strpwberry', 179.76, '柴田美咲', '瑛太株式会社', '2015-12-10', '1', 998, NULL);
INSERT INTO `book` VALUES (98, '26885886366', 'Rakpberry core', 847.72, 'Theresa Johnson', '石井水産株式会社', '2012-08-07', '0', 330, NULL);
INSERT INTO `book` VALUES (99, '22992513662', 'arape', 843.69, '史杰宏', '桜ロジスティック株式会社', '2003-01-25', '0', 872, NULL);
INSERT INTO `book` VALUES (100, '28467919531', 'Kiwi', 195.66, 'David Price', '姚有限责任公司', '2012-08-20', '0', 358, NULL);
INSERT INTO `book` VALUES (101, '28822367005', 'Raspberqy pi', 126.38, '酒井樹', '凛ロジスティック株式会社', '2004-02-12', '1', 849, NULL);
INSERT INTO `book` VALUES (102, '23543314966', 'jrape', 470.13, '夏杰宏', 'Randall Inc.', '2018-12-01', '0', 861, NULL);
INSERT INTO `book` VALUES (103, '24577568078', 'Chqrry elite', 15.67, 'Tony Simpson', '松田株式会社', '2009-04-22', '0', 923, NULL);
INSERT INTO `book` VALUES (104, '27167454948', 'Rambltan premium', 614.32, 'Judith Coleman', '伊藤システム株式会社', '2018-10-07', '0', 86, NULL);
INSERT INTO `book` VALUES (105, '20832472388', 'Kiwi plus', 774.27, '武田葉月', '宋記工业有限责任公司', '2019-02-18', '0', 125, NULL);
INSERT INTO `book` VALUES (106, '25937637357', 'yiwi', 673.76, '罗詩涵', '明菜電気通信株式会社', '2007-11-14', '0', 216, NULL);
INSERT INTO `book` VALUES (107, '23444271268', 'apple', 629.29, '石井和真', '陽菜株式会社', '2020-01-28', '1', 375, NULL);
INSERT INTO `book` VALUES (108, '26369846829', 'prange', 653.45, '莫嘉伦', '菊地株式会社', '2020-02-07', '0', 6, NULL);
INSERT INTO `book` VALUES (109, '23778185151', 'Grape', 885.10, 'Grace Hall', 'Reyes\'s Technology LLC', '2016-07-02', '0', 960, NULL);
INSERT INTO `book` VALUES (110, '27457186210', 'Mango', 207.20, '宋睿', 'Wright Electronic Inc.', '2016-02-26', '1', 518, NULL);
INSERT INTO `book` VALUES (111, '25635846994', 'uherry', 858.85, 'Bruce Smith', '絢斗株式会社', '2009-06-25', '1', 240, NULL);
INSERT INTO `book` VALUES (112, '20423819641', 'Mxngo', 687.98, '苏晓明', '陶記有限责任公司', '2012-06-17', '1', 577, NULL);
INSERT INTO `book` VALUES (113, '21932096039', 'ultra-Kiei', 586.03, 'Micheal Castillo', '致远有限责任公司', '2018-01-06', '1', 417, NULL);
INSERT INTO `book` VALUES (114, '23315140186', 'Strawberry pi', 174.35, '村田百恵', 'Joyce Engineering LLC', '2008-05-17', '0', 837, NULL);
INSERT INTO `book` VALUES (115, '23484654973', 'ypple elite', 633.33, '森田拓哉', '秀英电子有限责任公司', '2012-04-11', '1', 522, NULL);
INSERT INTO `book` VALUES (116, '22330334418', 'yambutan se', 824.05, '中川葉月', 'Brown LLC', '2016-12-14', '0', 886, NULL);
INSERT INTO `book` VALUES (117, '22856430629', 'arape plus', 614.26, 'Gerald Wilson', '致远电脑有限责任公司', '2019-07-24', '0', 712, NULL);
INSERT INTO `book` VALUES (118, '23099189869', 'pango', 389.98, '袁岚', 'Snyder Communications LLC', '2006-06-17', '0', 512, NULL);
INSERT INTO `book` VALUES (119, '25540519376', 'xCherry', 85.78, '萧子韬', '野口株式会社', '2012-01-25', '1', 7, NULL);
INSERT INTO `book` VALUES (120, '23367578620', 'Kiwi', 577.39, 'Dennis Guzman', 'Raymond LLC', '2009-09-01', '1', 229, NULL);
INSERT INTO `book` VALUES (121, '20696379582', 'Kiwi', 729.47, 'Barbara Boyd', '陽太株式会社', '2007-06-01', '0', 22, NULL);
INSERT INTO `book` VALUES (122, '24265488410', 'Cherry elite', 459.98, '佐藤明菜', '絢斗株式会社', '2001-12-07', '0', 414, NULL);
INSERT INTO `book` VALUES (123, '21299087329', 'Orange pi', 410.21, 'Allen Mitchell', '曾有限责任公司', '2000-12-25', '1', 313, NULL);
INSERT INTO `book` VALUES (124, '29712674271', 'Apple', 774.16, '姜宇宁', '安琪通讯有限责任公司', '2017-03-27', '1', 348, NULL);
INSERT INTO `book` VALUES (125, '25128707548', 'Rkmbutan elite', 306.62, '胡安琪', '七海食品株式会社', '2002-03-10', '0', 112, NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'Hayashi Yamato', 'Hayashi Yamato', 91, 'M', '140-3853-9165', 'VmhmPHGwWr');
INSERT INTO `user` VALUES (2, 'Lam Wing Sze', 'Lam Wing Sze', 96, 'F', '7041 932972', 'ZKBoMtbZ1O');
INSERT INTO `user` VALUES (3, 'Chu Ming Sze', 'Chu Ming Sze', 62, 'F', '186-8433-7538', 'iG9amOZJOi');
INSERT INTO `user` VALUES (4, 'Kam Ming', 'Kam Ming', 81, 'M', '330-450-5525', 'ualNpttiIA');
INSERT INTO `user` VALUES (5, 'Fung Wai Lam', 'Fung Wai Lam', 67, 'F', '3-4487-5870', '3dk1fndeiU');
INSERT INTO `user` VALUES (6, 'Crystal Sanchez', 'Crystal Sanchez', 79, 'F', '80-6495-5189', '6FvrSmlG8t');
INSERT INTO `user` VALUES (7, 'Wei Lu', 'Wei Lu', 40, 'F', '70-5255-5397', 'yhO1MRm9PL');
INSERT INTO `user` VALUES (8, 'Shi Jialun', 'Shi Jialun', 17, 'M', '838-352-7979', '2rTMFuwO7X');
INSERT INTO `user` VALUES (9, 'Jeff Gray', 'Jeff Gray', 61, 'M', '614-417-5891', 'FJkF6KMvls');
INSERT INTO `user` VALUES (10, 'Valerie Jordan', 'Valerie Jordan', 42, 'F', '5137 890912', 'pL6kCJZ3kA');
INSERT INTO `user` VALUES (11, 'Shimada Daichi', 'Shimada Daichi', 88, 'M', '156-8935-7374', 'Kdi12hLyQb');
INSERT INTO `user` VALUES (12, 'Kono Mai', 'Kono Mai', 54, 'F', '52-652-1170', 'ViVbMZRqYD');
INSERT INTO `user` VALUES (13, 'Maeda Ayato', 'Maeda Ayato', 6, 'M', '(1865) 05 7126', 'Bs6fFmjrMr');
INSERT INTO `user` VALUES (14, 'Ku Kwok Yin', 'Ku Kwok Yin', 17, 'M', '838-269-3790', 'gh4Aeff9y3');
INSERT INTO `user` VALUES (15, 'Zhang Yuning', 'Zhang Yuning', 29, 'M', '5905 170919', 'KmE9m5khwM');
INSERT INTO `user` VALUES (16, 'Hashimoto Mio', 'Hashimoto Mio', 89, 'F', '52-092-5139', 'N0oT6SxeZB');
INSERT INTO `user` VALUES (17, 'Kevin Dunn', 'Kevin Dunn', 8, 'M', '(1865) 21 0559', 'hW441FKu6z');
INSERT INTO `user` VALUES (18, 'Abe Airi', 'Abe Airi', 40, 'F', '70-5441-1107', '5AKouNRJE0');
INSERT INTO `user` VALUES (19, 'Margaret Hunter', 'Margaret Hunter', 72, 'F', '(1865) 41 8270', 'PTOWycsEFl');
INSERT INTO `user` VALUES (20, 'Chiba Momoka', 'Chiba Momoka', 39, 'F', '80-3087-8720', 'TuSRYzPxJC');
INSERT INTO `user` VALUES (21, 'Luo Anqi', 'Luo Anqi', 63, 'F', '21-306-0894', 'dgldp90fP1');
INSERT INTO `user` VALUES (22, 'Nancy Fisher', 'Nancy Fisher', 72, 'F', '(121) 822 1426', 'fYVWp283sG');
INSERT INTO `user` VALUES (23, 'Travis Martin', 'Travis Martin', 58, 'M', '614-018-1544', 'DLR6Ng8Ui7');
INSERT INTO `user` VALUES (24, 'Yuen Ming', 'Yuen Ming', 28, 'M', '213-599-4320', 'zJd6HwbpMs');
INSERT INTO `user` VALUES (25, 'Liu Lu', 'Liu Lu', 53, 'F', '755-6215-4367', 'B17A38SciW');
INSERT INTO `user` VALUES (26, 'Cheung Wai San', 'Cheung Wai San', 75, 'F', '614-762-2287', 'aP2iZA7oAu');
INSERT INTO `user` VALUES (27, 'Zhao Xiuying', 'Zhao Xiuying', 76, 'F', '70-3045-8679', '8IZ9GziqA5');
INSERT INTO `user` VALUES (28, 'Yam Suk Yee', 'Yam Suk Yee', 96, 'F', '212-610-5793', '2R2PjcekdH');
INSERT INTO `user` VALUES (29, 'Hung Chung Yin', 'Hung Chung Yin', 33, 'M', '90-8293-3664', '46A5Be0S01');
INSERT INTO `user` VALUES (31, 'barry', 'barry', 21, 'M', '1212', 'tkoyl');

SET FOREIGN_KEY_CHECKS = 1;
