/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50147
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50147
File Encoding         : 65001

Date: 2011-05-12 16:54:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cw_apptext`
-- ----------------------------
DROP TABLE IF EXISTS `cw_apptext`;
CREATE TABLE `cw_apptext` (
  `apptextUID` varchar(50) DEFAULT NULL,
  `wlog_UID` varchar(50) DEFAULT NULL,
  `user_UID` varchar(50) DEFAULT NULL,
  `aDate` varchar(19) DEFAULT NULL,
  `acontent` text,
  `astatus` varchar(2) DEFAULT NULL,
  `aresult` varchar(32) DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_apptext
-- ----------------------------

-- ----------------------------
-- Table structure for `cw_baoxiaoinfor`
-- ----------------------------
DROP TABLE IF EXISTS `cw_baoxiaoinfor`;
CREATE TABLE `cw_baoxiaoinfor` (
  `BaoxiaoUID` varchar(50) DEFAULT NULL,
  `BaoxiaoID` varchar(50) DEFAULT NULL,
  `BaoXiaoEmpUID` varchar(50) DEFAULT NULL,
  `BaoxiaoType` varchar(50) DEFAULT NULL,
  `BaoxiaoTime` datetime DEFAULT NULL,
  `ProjectUID` varchar(50) DEFAULT NULL,
  `MgrDeptUID` varchar(50) DEFAULT NULL,
  `DeptMgrUID` varchar(50) DEFAULT NULL,
  `CaiWuMgrUID` varchar(50) DEFAULT NULL,
  `TotalMgrUID` varchar(50) DEFAULT NULL,
  `BaoxiaoState` int(10) DEFAULT NULL,
  `UseFeeTotal` decimal(19,4) DEFAULT NULL,
  `FixFeeTotal` decimal(19,4) DEFAULT NULL,
  `FeeTotal` decimal(19,4) DEFAULT NULL,
  `BaoxiaoDesc` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_baoxiaoinfor
-- ----------------------------
INSERT INTO `cw_baoxiaoinfor` VALUES ('402880332a212159012a21634bb503ee', '1', '40288031278ed91501278ed915b30000', '1', '2010-07-30 00:00:00', '1', '1', null, null, null, '1', null, null, '6000.0000', '1');
INSERT INTO `cw_baoxiaoinfor` VALUES ('402880f92cf1e2d9012cf1e4af530002', '1', 'yuanxx', '4028803327bdf14c0127bdf52fde0009', '2010-12-17 09:14:00', '4028803327d71a880127d74b526e000d', '4028803327bdf14c0127be0c6594001a', null, null, null, '0', '224.0000', null, '224.0000', '2');
INSERT INTO `cw_baoxiaoinfor` VALUES ('402880402fd91eac012fd9236eee0005', 'MJ-001', 'wkx', '4028803327bdf14c0127bdf52fde0009', '2011-06-22 17:00:00', '4028803327d71a880127d74b526e000d', '4028803327bdf14c0127be0c3fcd0019', null, null, null, '0', '1111.0000', null, '1111.0000', null);
INSERT INTO `cw_baoxiaoinfor` VALUES ('402880402fd91eac012fd92521bf0008', 'BX0002', 'wkx', '4028803327bdf14c0127bdf54bc3000a', '2011-05-10 17:02:00', '4028803327d71a880127d74b526e000d', '4028803327bdf14c0127be0c3fcd0019', null, null, null, '0', '1333.0000', null, '1333.0000', null);

-- ----------------------------
-- Table structure for `cw_bxfixfeedetail`
-- ----------------------------
DROP TABLE IF EXISTS `cw_bxfixfeedetail`;
CREATE TABLE `cw_bxfixfeedetail` (
  `FixFeeUID` varchar(50) DEFAULT NULL,
  `BaoxiaoUID` varchar(50) DEFAULT NULL,
  `FixFeeIndex` int(10) DEFAULT NULL,
  `BeginTime` datetime DEFAULT NULL,
  `FinishTime` datetime DEFAULT NULL,
  `CityCode` varchar(50) DEFAULT NULL,
  `FixFeeDetail` decimal(19,4) DEFAULT NULL,
  `FixFeeDesc` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_bxfixfeedetail
-- ----------------------------

-- ----------------------------
-- Table structure for `cw_bxusefeedetail`
-- ----------------------------
DROP TABLE IF EXISTS `cw_bxusefeedetail`;
CREATE TABLE `cw_bxusefeedetail` (
  `UseFeeUID` varchar(50) DEFAULT NULL,
  `BaoxiaoUID` varchar(50) DEFAULT NULL,
  `UseFeeIndex` int(10) DEFAULT NULL,
  `ItemCode` varchar(10) DEFAULT NULL,
  `UseFeeDetail` decimal(19,4) DEFAULT NULL,
  `BillCount` int(10) DEFAULT NULL,
  `BeginTime` datetime DEFAULT NULL,
  `FinishTime` datetime DEFAULT NULL,
  `BeginCityCode` varchar(50) DEFAULT NULL,
  `FinishCityCode` varchar(50) DEFAULT NULL,
  `HotelName` varchar(100) DEFAULT NULL,
  `UseFeeDesc` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_bxusefeedetail
-- ----------------------------
INSERT INTO `cw_bxusefeedetail` VALUES ('402880f92cf1e2d9012cf1e58c130004', '402880f92cf1e2d9012cf1e4af530002', '22', '3', '2.0000', '2', '2010-12-17 09:15:00', '2010-12-17 09:15:00', null, null, '222', '222');
INSERT INTO `cw_bxusefeedetail` VALUES ('402880f92cf1e2d9012cf1e55c7a0003', '402880f92cf1e2d9012cf1e4af530002', '11', '1', '222.0000', '2', '2010-12-17 09:15:00', '2010-12-17 09:15:00', '010', '0755', null, '222');
INSERT INTO `cw_bxusefeedetail` VALUES ('402880402fd91eac012fd9242e660006', '402880402fd91eac012fd9236eee0005', '1', '1', '1000.0000', '12', '2011-05-10 17:35:00', '2011-05-11 17:01:00', null, null, null, null);
INSERT INTO `cw_bxusefeedetail` VALUES ('402880402fd91eac012fd92481870007', '402880402fd91eac012fd9236eee0005', '2', '5', '111.0000', '2', '2011-05-08 17:02:00', '2011-05-10 17:02:00', null, null, null, null);
INSERT INTO `cw_bxusefeedetail` VALUES ('402880402fd91eac012fd9256e390009', '402880402fd91eac012fd92521bf0008', '1', '6', '1111.0000', '2', '2011-05-01 17:03:00', '2011-06-02 17:03:00', null, null, null, null);
INSERT INTO `cw_bxusefeedetail` VALUES ('402880402fd91eac012fd92597e9000a', '402880402fd91eac012fd92521bf0008', '2', '7', '222.0000', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `cw_citysubsidy`
-- ----------------------------
DROP TABLE IF EXISTS `cw_citysubsidy`;
CREATE TABLE `cw_citysubsidy` (
  `objuid` varchar(50) DEFAULT NULL,
  `typecode` varchar(50) DEFAULT NULL,
  `typename` varchar(50) DEFAULT NULL,
  `subsidy` decimal(19,4) DEFAULT NULL,
  `ordernum` int(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_citysubsidy
-- ----------------------------
INSERT INTO `cw_citysubsidy` VALUES ('402880f92ccf65fb012ccfc3170d0064', '1', '公司或本地', '0.0000', '1');
INSERT INTO `cw_citysubsidy` VALUES ('402880f92ccf65fb012ccfc353da0065', '2', '出差地A', '80.0000', '2');
INSERT INTO `cw_citysubsidy` VALUES ('402880f92ccf65fb012ccfc380e00066', '3', '出差地B', '60.0000', '3');

-- ----------------------------
-- Table structure for `cw_holidays`
-- ----------------------------
DROP TABLE IF EXISTS `cw_holidays`;
CREATE TABLE `cw_holidays` (
  `objuid` varchar(50) DEFAULT NULL,
  `daytype` varchar(2) DEFAULT NULL,
  `holiday` date DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_holidays
-- ----------------------------

-- ----------------------------
-- Table structure for `cw_modifycity`
-- ----------------------------
DROP TABLE IF EXISTS `cw_modifycity`;
CREATE TABLE `cw_modifycity` (
  `objuid` varchar(50) DEFAULT NULL,
  `wlog_uid` varchar(50) DEFAULT NULL,
  `modifytype` varchar(2) DEFAULT NULL,
  `vacationtype` varchar(3) DEFAULT NULL,
  `modifytime` varchar(16) DEFAULT NULL,
  `modifytime2` varchar(16) DEFAULT NULL,
  `begincitytype` varchar(2) DEFAULT NULL,
  `begincity` varchar(50) DEFAULT NULL,
  `endcitytype` varchar(2) DEFAULT NULL,
  `endcity` varchar(50) DEFAULT NULL,
  `bzbasice` decimal(19,4) DEFAULT NULL,
  `bzbasiceend` decimal(19,4) DEFAULT NULL,
  `note` text,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_modifycity
-- ----------------------------
INSERT INTO `cw_modifycity` VALUES ('402880402fd91eac012fd921f0ab0002', '402880402fd91eac012fd921f7810003', '1', null, '16:00', '16:45', '1', null, '3', '武汉', '0.0000', '60.0000', null, null, null, null);
INSERT INTO `cw_modifycity` VALUES ('402880402fdda896012fddbbc40b0009', '402880402fdda896012fddbbcb6e000a', '1', null, '14:00', '14:59', '1', null, '3', '北京', '0.0000', '60.0000', null, null, null, null);

-- ----------------------------
-- Table structure for `cw_worklog`
-- ----------------------------
DROP TABLE IF EXISTS `cw_worklog`;
CREATE TABLE `cw_worklog` (
  `WorklogUID` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `wdept_uid` varchar(50) DEFAULT NULL,
  `spuser_uid` varchar(50) DEFAULT NULL,
  `appstatus` varchar(2) DEFAULT NULL,
  `cw_type` char(4) DEFAULT NULL,
  `cw_xjsp` char(1) DEFAULT NULL,
  `auto_jlsp` char(1) DEFAULT NULL,
  `xj_type` char(1) DEFAULT NULL,
  `is_xinjia` char(2) DEFAULT NULL,
  `ifhavexc` char(4) DEFAULT NULL,
  `wDate` date DEFAULT NULL,
  `tjdate` varchar(19) DEFAULT NULL,
  `waddress` varchar(50) DEFAULT NULL,
  `wseladdress` varchar(255) DEFAULT NULL,
  `wvacationtype` varchar(3) DEFAULT NULL,
  `wcontent` text,
  `wdifficulties` text,
  `wprogress` varchar(2) DEFAULT NULL,
  `wtomorplan` text,
  `wallowance` decimal(19,4) DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL,
  `backup4` varchar(255) DEFAULT NULL,
  `backup5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_worklog
-- ----------------------------
INSERT INTO `cw_worklog` VALUES ('2c90b0c52f7c3147012f7c31879d0002', 'yuanxx', '4028803327bdf14c0127be0c3fcd0019', 'zzh', '2', 'gs', null, null, null, null, null, '2011-04-22', '2011-04-22 15:51', '1', null, null, 'ffff', null, '1', null, '0.0000', null, null, null, null, null);
INSERT INTO `cw_worklog` VALUES ('402880402fd90d7a012fd91b537e0005', 'wkx', '4028803327bdf14c0127be0c3fcd0019', 'zzh', '2', 'gs', null, null, null, null, null, '2011-05-10', '2011-05-10 16:52', '1', null, null, '控制器对应的问题。', '控制器对应当时设计的归类重拥度太高。', '1', '安全问题。', '0.0000', null, null, null, null, null);
INSERT INTO `cw_worklog` VALUES ('402880402fd91eac012fd921f7810003', 'wkx', '4028803327bdf14c0127be0c3fcd0019', 'zzh', '2', 'cc', null, null, null, null, 'cq', '2011-05-10', '2011-05-10 16:59', '1', null, null, '修改 Fortify SCA 提示的安全漏洞，做到零漏洞。', '无', '1', '修改完成。', '20.0000', null, null, null, null, null);
INSERT INTO `cw_worklog` VALUES ('402880402fdda896012fddbbcb6e000a', 'zzh', '4028803327bdf14c0127be0c3fcd0019', 'zwjia', '2', 'cc', null, null, null, null, 'cq', '2011-05-11', '2011-05-11 14:26', '1', null, null, '规划平板应用研究。', null, '1', '安卓和iOS都要考察', '25.0000', null, null, null, null, null);

-- ----------------------------
-- Table structure for `cw_xiujiaorchuchai`
-- ----------------------------
DROP TABLE IF EXISTS `cw_xiujiaorchuchai`;
CREATE TABLE `cw_xiujiaorchuchai` (
  `Id` varchar(50) NOT NULL DEFAULT '',
  `wlog_uid` varchar(50) DEFAULT NULL,
  `xc_type` char(3) DEFAULT NULL,
  `xc_days` double(3,1) DEFAULT NULL,
  `xc_money` double(5,2) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cw_xiujiaorchuchai
-- ----------------------------

-- ----------------------------
-- Table structure for `do_auth_owner`
-- ----------------------------
DROP TABLE IF EXISTS `do_auth_owner`;
CREATE TABLE `do_auth_owner` (
  `objUid` varchar(32) DEFAULT NULL,
  `whereDOBO` varchar(32) DEFAULT NULL,
  `whereBOInstanceUid` varchar(32) DEFAULT NULL,
  `authorUid` varchar(32) DEFAULT NULL,
  `parterUid` varchar(32) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `creatDate` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `mVersion` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_auth_owner
-- ----------------------------

-- ----------------------------
-- Table structure for `do_auth_suite`
-- ----------------------------
DROP TABLE IF EXISTS `do_auth_suite`;
CREATE TABLE `do_auth_suite` (
  `objuid` varchar(32) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `l10n` varchar(300) DEFAULT NULL,
  `suiteMainMenuUid` varchar(32) DEFAULT NULL,
  `includeAuthTxt` varchar(50) DEFAULT NULL,
  `extendConfig` varchar(500) DEFAULT NULL,
  `includeType` int(11) DEFAULT NULL,
  `includeUid` varchar(32) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `creatDate` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `mVersion` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_auth_suite
-- ----------------------------

-- ----------------------------
-- Table structure for `do_authorization`
-- ----------------------------
DROP TABLE IF EXISTS `do_authorization`;
CREATE TABLE `do_authorization` (
  `objUID` varchar(32) DEFAULT NULL,
  `parterUid` varchar(32) DEFAULT NULL,
  `ouUid` varchar(100) DEFAULT NULL,
  `roleUid` varchar(32) DEFAULT NULL,
  `whereDOBO` varchar(32) DEFAULT NULL,
  `whereBOInstanceUid` varchar(32) DEFAULT NULL,
  `whatType` int(11) DEFAULT NULL,
  `whatUid` varchar(32) DEFAULT NULL,
  `authority` char(1) DEFAULT NULL,
  `isInherit` char(1) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `creatDate` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `mVersion` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_authorization
-- ----------------------------
INSERT INTO `do_authorization` VALUES ('4028803327b2bf700127b2cb4edd0003', '9', '4028803327b1eb4e0127b20eb05d0004', null, null, null, '16', '402880312788b836012788b844730008', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa64281b0023', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327bdc35f0127bdde3d6b02d3', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41daba1000a', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880332839765f0128397b7d80000e', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '40288033282838830128284dfe580116', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880332a26f7f5012a2739d5b20042', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '402880332a26f7f5012a2730317f0020', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f152070127f1700d5c0065', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '4028803327f09ba80127f0a10982008d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa65149e0029', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '4028803327bdc35f0127bdde3d6b02d3', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa63f9e70022', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327bdc35f0127bdddc05b028b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa6443540024', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa64783f0025', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327bdc35f0127bde58dfa0522', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa649ea30026', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d2145e0127d273b43500c5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327d6fa810127d701fdc9000b', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '4028803327d2145e0127d273b43500c5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f425580012', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f435e00013', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f459900014', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f412670011', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa6279de001f', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327bdc35f0127bde515fb04cf', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa63910b0020', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327bdc35f0127bde36fae03d1', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa63b6a40021', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327bdc35f0127bde3fc0f0424', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa6683af0030', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327bdc35f0127bddb1eb600c6', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa6651c1002f', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d2145e0127d237ccf10029', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa662c96002e', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d2145e0127d2379f2a0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa657f8d002c', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d0c8320127d1e70ee50130', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa66db540032', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d2145e0127d23a86d1002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa66b6860031', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d2145e0127d23a3769002c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327d6fa810127d70a5f7a0021', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '40288031278f16d001278f43e525003c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327d6fa810127d70a8fe10023', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '402880312788b836012788ba043401ed', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327d6fa810127d70aa7ce0024', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '40288031278a406e01278a6bb9ce005d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327d6fa810127d70abf3e0025', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '402880312793120d01279318032e0260', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327d6fa810127d70ad18d0026', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '402880312788b836012788b9b77c012c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327d6fa810127d70ae3bd0027', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '40288031278904920127890492720000', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa64f07c0027', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '4028803327bdc35f0127bde58dfa0522', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0f1d47012d0f2bffa70002', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '4028803327bdc35f0127bddb1eb600c6', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff80808128c8245f0128c824d0ad0001', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', null, '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f152070127f17042c40066', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa68b43b003a', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327f09ba80127f0a10982008d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa6893930039', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa6873790038', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '40288031278f16d001278f43e525003c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa6525e4002a', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '4028803327bdc35f0127bdddc05b028b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa655dad002b', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d0c8320127d1e6a52f012f', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa6855900037', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880312793120d01279318032e0260', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa7029690049', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d0a8990127d0aebb930004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803327f9e48a0127fa706b15004a', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '4028803327d0c8320127d1cd02610125', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f4e0b5001a', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '402880f92d91c21d012d91c333b3005e', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f4a8130019', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f49a6a0018', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f483890017', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f477180016', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f400710010', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f3de08000f', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '40288031278f16d001278f43e525003c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f3aa69000e', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '40288031278904920127890492720000', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f38764000d', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '4028803327f09ba80127f0a10982008d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f37431000c', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '4028803327f09ba80127f0a10982008d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f34493000b', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '40288031278904920127890492720000', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f327fe000a', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '402880312793120d01279318032e0260', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803328c8209d0128c822712f0003', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '40288033282838830128284dfe580116', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880332839765f012839779c270005', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880332837d9dd012837e0ab070005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880332839765f0128397b3a3d000c', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880332837d9dd012837e0ab070005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880332839765f0128397ad123000a', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880332828388301282848210000d9', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880332839765f0128397b5e30000d', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880332828388301282848210000d9', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e2eb2fc002b', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e2ed6ff002c', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e2ef0e0002d', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e2f3e06002e', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e2f7e4b0030', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e2f92020031', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e2faf2e0032', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e2fc5270033', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e30c2830035', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '40288033283e131701283e307f8e0034', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('40288033283e131701283e31112f0038', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '40288033283e131701283e307f8e0034', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803328b898c10128b899a62a0003', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '40288031278904920127890492720000', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803328b8ccc70128b8cdc6090002', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880312788b836012788b9b77c012c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803328cd076d0128cd07de910001', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '40288033282838830128284dfe580116', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('4028803328cd9c740128cd9cf7540001', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '40288033283e131701283e2e072c0028', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f466fc0015', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '4028803327f152070127f153ce190001', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f313a10009', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '402880312788b836012788b9b77c012c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880332a26f7f5012a2739f5ec0043', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880332a26f7f5012a2730317f0020', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92c81078e012c810c71b20003', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '40288033283e131701283e307f8e0034', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c027fa0008', '9', '4028803327bdf14c0127be042cb90010', null, null, null, '16', '402880f92cc8a9e8012cc8ad14af0002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c049f90009', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c0ffbe000a', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c11621000b', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c4a7a40025', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c1c152000d', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c1d479000e', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c1ff52000f', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c219b80010', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c234200011', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d83331a000a', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92ccf65fb012ccfbf718c0062', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c285850013', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92ce2b504012ce2b87c1f0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d837352000b', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c2ad1d0015', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92cc8a9e8012cc8ad14af0002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c2c33b0016', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c2d7420017', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c319740019', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c34d7a001a', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c35fee001b', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c37809001c', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c38b7b001d', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c3a987001e', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d82995b0009', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92cc3b69d012cc3ea5fbf0049', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c3d7760020', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92cc4944b012cc4a10fdd0091', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c3f3a20021', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '402880f92cc53c99012cc54c1b9b003c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c4070e0022', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92cc53c99012cc54c1b9b003c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8271df0008', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '402880f92cc3b69d012cc3ea5fbf0049', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c42a9e0024', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92cc53c99012cc54c1b9b003c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c4bd6d0026', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c4d2a60027', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c4ea4b0028', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c4fd6c0029', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c5142b002a', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c52770002b', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c53ce4002c', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c5519a002d', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f6264e001c', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '402880f92cc3b69d012cc3ea5fbf0049', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c576cc002f', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92cc3839e012cc38908220109', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c5d5c40030', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '402880f92cc8a9e8012cc8adaaf80003', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c5f2930031', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92cc8a9e8012cc8adaaf80003', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8263c90007', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92cc3b69d012cc3ea5fbf0049', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92ce2b504012ce2c61ca20033', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92cc8a9e8012cc8adaaf80003', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d6db774012d6dcb63160024', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '402880f92d6db774012d6dbaacd10002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41dbdb5000b', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41dcb0c000c', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41df939000d', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41e0df6000e', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41e1cbb000f', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41e2dba0010', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41e40280011', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41e4ed60012', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812cf414df012cf41e65b40013', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '4028803327bdc35f0127bddec8940326', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8381a1000c', '9', '4028803327bdf14c0127be042cb90010', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d838d77000d', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d839aee000e', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d83b463000f', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d83c3420010', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d83d1940011', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d83e0360012', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d83f2700013', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8402510014', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d841c9f0015', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8429fc0016', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d85ef7b0017', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d85fdf90018', '9', '4028803327bdf14c0127be042cb90010', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8609b10019', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d862305001a', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d862e55001b', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d863c8a001c', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d864d21001d', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8659ac001e', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8669ef001f', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d8678240020', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d86875b0021', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d64d5012d0d869be80022', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d96cf012d0d98527f0002', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '402880f92cc8a9e8012cc8ad14af0002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d96cf012d0d9876a00003', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '402880f92cde2d18012cde53880e0005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d6db774012d6dcc308f0025', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d6db774012d6dbaacd10002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812d0d96cf012d0d99034a0005', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '40288031278ee0f001278f0c2e73002d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b177dfd018b', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b1791cb018c', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b17a17c018d', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b17b1cb018e', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b17c084018f', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b17d3850190', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b17e32b0191', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b17f31a0192', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b18118f0193', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b18205c0194', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d171a78012d171d29500002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b1846db0195', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '402880f92d171a78012d171d802b0003', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d2aa31e012d2b185a120196', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d171a78012d171d802b0003', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505e20400059', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505e3ba4005a', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505e4ebb005b', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505e5b7f005c', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505e692d005d', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505e7c1c005e', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505e8ab2005f', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505e9e3b0060', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505eb8a30061', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f08cf0062', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f1ed50063', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f39580064', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f514e0065', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f5e0b0066', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f6af60067', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f7a210068', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f8cd40069', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505f9da2006a', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505fb274006b', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505fc06d006c', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505fccfe006d', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505fde49006e', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505fea74006f', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d505ff9e40070', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d50605e040075', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d50601a250072', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506030ff0073', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506040060074', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '402880f92d2fb8a7012d300d5761010b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506075c70076', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d4e9a6c012d4f31cd8d00d5', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d50608ee80077', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d2fb8a7012d300d9a2c018a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506e35ba007e', '9', '402880f92d4fdd1d012d501fc4ba0023', null, null, null, '16', '402880f92d4fdd1d012d506adddb007c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d6db774012d6dcafbbf0023', '9', '4028803327bdf14c0127be042cb90010', null, null, null, '16', '402880f92d6db774012d6dbaacd10002', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506e52cc0080', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d4fdd1d012d506adddb007c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d793c1c012d795fe028000a', '9', '402880f92d4fdd1d012d5036d75d0036', null, null, null, '16', '402880f92d4fdd1d012d506adddb007c', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506e83bc0082', '9', '402880f92d4fdd1d012d5036d75d0036', null, null, null, '16', '402880f92d4fdd1d012d506b37b5007d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506e99120083', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d4fdd1d012d506b37b5007d', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506eab160084', '9', '402880f92d4fdd1d012d501fc4ba0023', null, null, null, '16', '402880f92d4fdd1d012d50656143007a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506eb8b00085', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d4fdd1d012d50656143007a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506ed47f0086', '9', '402880f92d4fdd1d012d5036d75d0036', null, null, null, '16', '402880f92d4fdd1d012d5066f695007b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d4fdd1d012d506ee04d0087', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d4fdd1d012d5066f695007b', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92d793c1c012d795ff5f5000b', '9', '402880f92d4fdd1d012d5036d75d0036', null, null, null, '16', '402880f92d4fdd1d012d50656143007a', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('ff8080812f32d8ce012f32f5f57e001b', '9', '402880f92d4fdd1d0122dfce45670008', null, null, null, '16', '402880f92ccf65fb012ccfbf718c0062', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92da0f810012da0f9099c0003', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '402880f92d91c21d012d91c333b3005e', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('402880f92da25d21012da29b184a001a', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '402880f92da25d21012da294c7c40018', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7ba8adc002e', '9', '4028803327bdf14c0127be042cb90010', null, null, null, '16', '2c90b0e72ea4a8f2012ea4ae3bf10003', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bab28a002f', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '2c90b0e72ea4a8f2012ea4ae3bf10003', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bafb250030', '9', '4028803327d6fa810127d70037030005', null, null, null, '16', '2c90b0e72ea4a8f2012ea4ae3bf10003', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bb50240031', '9', '4028803327bdf14c0127be0548e70012', null, null, null, '16', '2c90b0e72ea4a8f2012ea4af4b780005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bb902c0032', '9', '4028803327d2145e0127d26ae2e200ab', null, null, null, '16', '2c90b0e72ea4a8f2012ea4af4b780005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bba81c0033', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '2c90b0e72ea4a8f2012ea4af4b780005', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bbc0240034', '9', '4028803327d2145e0127d26a9df900aa', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bbd0990035', '9', '4028803327d2145e0127d269dd3900a9', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bbe54e0036', '9', '4028803327bdf14c0127be04e1a10011', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bbf4020037', '9', '4028803327d2145e0127d26b26a100ac', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bc01450038', '9', '4028803327d2145e0127d26c2fc400ad', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bc10440039', '9', '4028803327d2145e0127d26c752a00ae', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bc1d4c003a', '9', '4028803327d2145e0127d26cc58c00af', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bc365c003b', '9', 'ff80808128cd1d9b0128cd8a8c1c0048', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);
INSERT INTO `do_authorization` VALUES ('2c90b0bc2ea7ae82012ea7bc4656003c', '9', '4028803327f9e48a0127fa608ee7001d', null, null, null, '16', '2c90b0e72ea4a8f2012ea4aedd780004', '1', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for `do_code_maxsequence`
-- ----------------------------
DROP TABLE IF EXISTS `do_code_maxsequence`;
CREATE TABLE `do_code_maxsequence` (
  `objuid` varchar(32) NOT NULL,
  `sequence_name` varchar(255) DEFAULT NULL,
  `code_itemuid` varchar(32) DEFAULT NULL,
  `propertyuid` varchar(32) DEFAULT NULL,
  `propertyvalue` varchar(255) DEFAULT NULL,
  `yearseq` decimal(10,0) DEFAULT NULL,
  `max_sequence` decimal(19,0) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `creatdate` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifydate` datetime DEFAULT NULL,
  `mversion` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_code_maxsequence
-- ----------------------------
INSERT INTO `do_code_maxsequence` VALUES ('402880f92d78dc62012d78dca5760002', null, '402880F92D786E11012D78C4F46A0003', null, null, '0', '8080024', null, null, null, null, null);

-- ----------------------------
-- Table structure for `do_log`
-- ----------------------------
DROP TABLE IF EXISTS `do_log`;
CREATE TABLE `do_log` (
  `objuid` varchar(32) DEFAULT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `deptName` varchar(255) DEFAULT NULL,
  `loginTime` datetime DEFAULT NULL,
  `logoffTime` datetime DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_log
-- ----------------------------
INSERT INTO `do_log` VALUES ('4028803327acfdf00127acfdf0490000', 'a', null, '2010-03-30 10:54:35', null, '127.0.0.1', 'CD9CD524830E790363BFAB8177FD64E2');
INSERT INTO `do_log` VALUES ('4028803327acfdf00127acff60350011', 'u', null, '2010-03-30 10:56:09', null, '127.0.0.1', 'CD9CD524830E790363BFAB8177FD64E2');
INSERT INTO `do_log` VALUES ('4028803327acfdf00127ad0051e80012', 'u', null, '2010-03-30 10:57:11', null, '127.0.0.1', '6C65D9900ABC9CCFA998BD349403B910');
INSERT INTO `do_log` VALUES ('4028803327acfdf00127ad0a61870013', 'u', null, '2010-03-30 11:08:11', null, '127.0.0.1', 'BCA0AD106024851FCD05B7FEDFDEFDA2');
INSERT INTO `do_log` VALUES ('4028803327acfdf00127ad117f4e0015', 'a', null, '2010-03-30 11:15:57', null, '127.0.0.1', 'CD9CD524830E790363BFAB8177FD64E2');
INSERT INTO `do_log` VALUES ('4028803327ad207b0127ad207b8c0000', 'a', null, '2010-03-30 11:32:19', null, '127.0.0.1', '923F346C990BF8A515604842D76DA927');
INSERT INTO `do_log` VALUES ('4028803327ad207b0127ad20c3730001', 'u', null, '2010-03-30 11:32:37', null, '127.0.0.1', '923F346C990BF8A515604842D76DA927');
INSERT INTO `do_log` VALUES ('4028803327ad207b0127ad253f460002', 'a', null, '2010-03-30 11:37:31', null, '127.0.0.1', '923F346C990BF8A515604842D76DA927');
INSERT INTO `do_log` VALUES ('4028803327ad207b0127ad26f7370003', 'a', null, '2010-03-30 11:39:24', null, '127.0.0.1', '923F346C990BF8A515604842D76DA927');
INSERT INTO `do_log` VALUES ('4028803327ad2aad0127ad2aadb70000', 'a', null, '2010-03-30 11:43:27', '2010-03-30 13:11:18', '127.0.0.1', '1A3A1A1F564F50BB796FC7686E64080D');
INSERT INTO `do_log` VALUES ('4028803327ad2aad0127ad7dc8be0004', 'a', null, '2010-03-30 13:14:14', null, '127.0.0.1', '2470CD89BDFF0BC7043E40EDF315DD8E');
INSERT INTO `do_log` VALUES ('4028803327ad2aad0127ad7e919c0005', 'a', null, '2010-03-30 13:15:05', null, '127.0.0.1', '2470CD89BDFF0BC7043E40EDF315DD8E');
INSERT INTO `do_log` VALUES ('4028803327ad9f740127ad9f74dc0000', 'a', null, '2010-03-30 13:51:00', null, '127.0.0.1', 'C80AE2DD061689C8E4D02CA17DA0703C');
INSERT INTO `do_log` VALUES ('4028803327adae420127adae42590000', 'a', null, '2010-03-30 14:07:11', null, '127.0.0.1', 'FC36B69565804121E386794DA8FF20E9');
INSERT INTO `do_log` VALUES ('4028803327adb1a90127adb1a9ee0000', 'a', null, '2010-03-30 14:10:54', null, '127.0.0.1', 'D4E60FDF7213CA2237AA42B8755FB8C7');
INSERT INTO `do_log` VALUES ('4028803327adb1a90127adb272dc0001', 'u', null, '2010-03-30 14:11:45', null, '127.0.0.1', 'D4E60FDF7213CA2237AA42B8755FB8C7');
INSERT INTO `do_log` VALUES ('4028803327ae18e30127ae18e3c60000', 'a', null, '2010-03-30 16:03:39', null, '127.0.0.1', '74DE7A377D9CF82E12C818AC42B5818D');
INSERT INTO `do_log` VALUES ('4028803327ae18e30127ae191b500001', 'u', null, '2010-03-30 16:03:53', null, '127.0.0.1', '74DE7A377D9CF82E12C818AC42B5818D');
INSERT INTO `do_log` VALUES ('4028803327ae1c4e0127ae1c4ea60000', 'u', null, '2010-03-30 16:07:23', null, '127.0.0.1', 'A115ED8CAD474C31A33ED3E61F3A07A4');
INSERT INTO `do_log` VALUES ('4028803327ae1c4e0127ae22b5ef0003', 'u', null, '2010-03-30 16:14:22', null, '127.0.0.1', 'A115ED8CAD474C31A33ED3E61F3A07A4');
INSERT INTO `do_log` VALUES ('4028803327ae1c4e0127ae22e1250004', 'u', null, '2010-03-30 16:14:33', null, '127.0.0.1', 'A115ED8CAD474C31A33ED3E61F3A07A4');
INSERT INTO `do_log` VALUES ('4028803327ae1c4e0127ae2941c60005', 'u', null, '2010-03-30 16:21:31', null, '127.0.0.1', 'A115ED8CAD474C31A33ED3E61F3A07A4');
INSERT INTO `do_log` VALUES ('4028803327ae1c4e0127ae2c2d070007', 'admin', null, '2010-03-30 16:24:43', null, '127.0.0.1', 'A115ED8CAD474C31A33ED3E61F3A07A4');
INSERT INTO `do_log` VALUES ('4028803327ae1c4e0127ae72fb9d0062', 'admin', null, '2010-03-30 17:42:03', null, '127.0.0.1', 'A115ED8CAD474C31A33ED3E61F3A07A4');
INSERT INTO `do_log` VALUES ('4028803327b1c9f00127b1c9f0440000', 'admin', null, '2010-03-31 09:15:53', null, '127.0.0.1', '2C0D65A4168E8381E774EF2CE3B89CF6');
INSERT INTO `do_log` VALUES ('4028803327b1c9f00127b1d827ac0001', 'a', null, '2010-03-31 09:31:25', null, '127.0.0.1', '2C0D65A4168E8381E774EF2CE3B89CF6');
INSERT INTO `do_log` VALUES ('4028803327b1dc9e0127b1dc9e210000', 'a', null, '2010-03-31 09:36:18', null, '127.0.0.1', 'D56B7DAC366B87B080EFC890CF33C7AC');
INSERT INTO `do_log` VALUES ('4028803327b1eb4e0127b1eb4e140000', 'a', null, '2010-03-31 09:52:20', '2010-03-31 13:03:57', '127.0.0.1', 'E2415D35AEC76819D6176765E01516E7');
INSERT INTO `do_log` VALUES ('4028803327b1eb4e0127b1eba1830001', 'u', null, '2010-03-31 09:52:41', '2010-03-31 13:03:57', '127.0.0.1', 'E2415D35AEC76819D6176765E01516E7');
INSERT INTO `do_log` VALUES ('4028803327b1eb4e0127b2bb850e0089', 'a', null, '2010-03-31 13:39:46', '2010-03-31 13:41:36', '127.0.0.1', '95DF924F35FF640338024BF39CBF1B45');
INSERT INTO `do_log` VALUES ('4028803327b1eb4e0127b2bdc72e008a', 'a', null, '2010-03-31 13:42:14', '2010-03-31 13:42:32', '127.0.0.1', '91A02E5DA0E9E1A8ED4ADB43CA8C7016');
INSERT INTO `do_log` VALUES ('4028803327b2bf700127b2bf70890000', 'a', null, '2010-03-31 13:44:03', null, '127.0.0.1', 'B335ED38F1B694676C98AF45EE3B7B1C');
INSERT INTO `do_log` VALUES ('4028803327b2bf700127b2bf97a80001', 'a', null, '2010-03-31 13:44:12', null, '127.0.0.1', 'B335ED38F1B694676C98AF45EE3B7B1C');
INSERT INTO `do_log` VALUES ('4028803327b2bf700127b2c3120a0002', 'admin', null, '2010-03-31 13:48:00', '2010-03-31 14:35:04', '127.0.0.1', '869DE43CB6E895AA0D7A91F31C0A4D52');
INSERT INTO `do_log` VALUES ('4028803327b2bf700127b2d291ef0004', 'admin', null, '2010-03-31 14:04:56', null, '127.0.0.1', 'B335ED38F1B694676C98AF45EE3B7B1C');
INSERT INTO `do_log` VALUES ('4028803327b334730127b334735e0000', 'a', null, '2010-03-31 15:51:51', null, '127.0.0.1', 'E7DF7A7B708BD689DD2994AA294C6259');
INSERT INTO `do_log` VALUES ('4028803327b334730127b334ba990001', 'u', null, '2010-03-31 15:52:09', null, '127.0.0.1', 'E7DF7A7B708BD689DD2994AA294C6259');
INSERT INTO `do_log` VALUES ('4028803327b33acf0127b33acf8b0000', 'a', null, '2010-03-31 15:58:48', null, '127.0.0.1', '51DFF00D92E24ECD1DC5E9B0076D89FC');
INSERT INTO `do_log` VALUES ('4028803327b343150127b34315860000', 'a', null, '2010-03-31 16:07:50', null, '127.0.0.1', 'D2310B62B8CFB1416266FEBC48DB63D6');
INSERT INTO `do_log` VALUES ('4028803327b343150127b343a1b80001', 'u', null, '2010-03-31 16:08:26', null, '127.0.0.1', 'D2310B62B8CFB1416266FEBC48DB63D6');
INSERT INTO `do_log` VALUES ('4028803327b347550127b347551c0000', 'a', null, '2010-03-31 16:12:28', null, '127.0.0.1', '3B1985B6807030BD14D4C0ABF9523E1C');
INSERT INTO `do_log` VALUES ('4028803327b347550127b34791c70001', 'u', null, '2010-03-31 16:12:44', null, '127.0.0.1', '3B1985B6807030BD14D4C0ABF9523E1C');
INSERT INTO `do_log` VALUES ('4028803327b394c30127b394c3120000', 'a', null, '2010-03-31 17:37:03', null, '127.0.0.1', '7765963FE857827F257BE61164F43E8A');
INSERT INTO `do_log` VALUES ('4028803327b394c30127b39523430001', 'u', null, '2010-03-31 17:37:27', null, '127.0.0.1', '7765963FE857827F257BE61164F43E8A');
INSERT INTO `do_log` VALUES ('4028803327b6f8a60127b6f8a6d10000', 'a', null, '2010-04-01 09:25:01', null, '127.0.0.1', '6A6705AD71B925045C8BF66084B2EAB9');
INSERT INTO `do_log` VALUES ('4028803327b712a50127b712a5e80000', 'a', null, '2010-04-01 09:53:25', null, '127.0.0.1', '3194D630EA152AAC150CB4C661CB828D');
INSERT INTO `do_log` VALUES ('4028803327b712a50127b71347a70001', 'u', null, '2010-04-01 09:54:06', null, '127.0.0.1', '3194D630EA152AAC150CB4C661CB828D');
INSERT INTO `do_log` VALUES ('4028803327b733ce0127b733ce110000', 'a', null, '2010-04-01 10:29:38', '2010-04-01 13:11:20', '127.0.0.1', 'FCB291CA1E9987A32CC4912E3091BC40');
INSERT INTO `do_log` VALUES ('4028803327b837bb0127b837bb440000', 'a', null, '2010-04-01 15:13:32', null, '127.0.0.1', '20C219385E54EFB2485478E9D3012D72');
INSERT INTO `do_log` VALUES ('4028803327b837bb0127b8a087f10086', 'admin', null, '2010-04-01 17:08:00', null, '127.0.0.1', '20C219385E54EFB2485478E9D3012D72');
INSERT INTO `do_log` VALUES ('4028803327b8b5200127b8b520d40000', 'a', null, '2010-04-01 17:30:30', null, '127.0.0.1', 'F265C9CE8C2CAD45AD38DF441F96F003');
INSERT INTO `do_log` VALUES ('4028803327b8e1550127b8e1554c0000', 'a', null, '2010-04-01 18:18:47', null, '127.0.0.1', '51A58099EF14ECA676D42DA56C73FF95');
INSERT INTO `do_log` VALUES ('4028803327bc2ff10127bc3df27f0001', 'u', null, '2010-04-02 09:58:48', null, '127.0.0.1', '69BE73945AFD891F42D2340C0966F30F');
INSERT INTO `do_log` VALUES ('4028803327bc474f0127bc474f680000', 'a', null, '2010-04-02 10:09:02', null, '127.0.0.1', '8451AB9B32D105532E33404674A8F49F');
INSERT INTO `do_log` VALUES ('4028803327bc4a7f0127bc4a7fb10000', 'a', null, '2010-04-02 10:12:31', null, '127.0.0.1', '619B8FF9DEDDEFFDEF23351F64895E7B');
INSERT INTO `do_log` VALUES ('4028803327bc4a7f0127bc4acd350001', 'u', null, '2010-04-02 10:12:51', null, '127.0.0.1', '619B8FF9DEDDEFFDEF23351F64895E7B');
INSERT INTO `do_log` VALUES ('4028803327bc4a7f0127bc4d39910002', 'u', null, '2010-04-02 10:15:30', null, '127.0.0.1', '619B8FF9DEDDEFFDEF23351F64895E7B');
INSERT INTO `do_log` VALUES ('4028803327bc4a7f0127bc4d5e400003', 'u', null, '2010-04-02 10:15:39', null, '127.0.0.1', '619B8FF9DEDDEFFDEF23351F64895E7B');
INSERT INTO `do_log` VALUES ('4028803327bc502f0127bc502fee0000', 'a', null, '2010-04-02 10:18:44', null, '127.0.0.1', 'E44A1B8E31375878BAFA5EEC67C9963F');
INSERT INTO `do_log` VALUES ('4028803327bc55110127bc5511710000', 'a', null, '2010-04-02 10:24:04', null, '127.0.0.1', '0893EEF0C4D23F430BC4265DFD76ED7C');
INSERT INTO `do_log` VALUES ('4028803327bc65ba0127bc65ba260000', 'a', null, '2010-04-02 10:42:15', '2010-04-02 10:44:21', '127.0.0.1', '64FCFD8E2BDA7FE4E385C64CF90974A7');
INSERT INTO `do_log` VALUES ('4028803327bc65ba0127bc6908280001', 'u', null, '2010-04-02 10:45:52', null, '127.0.0.1', '5A939A8DAD644CF91875C92F188695BD');
INSERT INTO `do_log` VALUES ('4028803327bca7660127bca766e50000', 'a', null, '2010-04-02 11:53:59', '2010-04-02 13:10:34', '127.0.0.1', '1A27EA231A865DEF6BDED8474B73B43F');
INSERT INTO `do_log` VALUES ('4028803327bca7660127bd39b1b30001', 'a', null, '2010-04-02 14:33:47', null, '127.0.0.1', '775DBCA49680A5B1E0F1938626345E5D');
INSERT INTO `do_log` VALUES ('4028803327bd77570127bd7757220000', 'a', null, '2010-04-02 15:41:07', '2010-04-02 16:12:57', '127.0.0.1', '0EF359300A42DABC6AA878835FB13B74');
INSERT INTO `do_log` VALUES ('4028803327bd77570127bd7793ec0001', 'u', null, '2010-04-02 15:41:22', '2010-04-02 16:12:57', '127.0.0.1', '0EF359300A42DABC6AA878835FB13B74');
INSERT INTO `do_log` VALUES ('4028803327bd77570127bd9a0a5f0002', 'a', null, '2010-04-02 16:19:01', '2010-04-02 16:52:09', '127.0.0.1', '7C2A0266D6F4E0EA583F3DDBC70ED0D0');
INSERT INTO `do_log` VALUES ('4028803327bd77570127bd9a3cca0003', 'u', null, '2010-04-02 16:19:14', '2010-04-02 16:52:09', '127.0.0.1', '7C2A0266D6F4E0EA583F3DDBC70ED0D0');
INSERT INTO `do_log` VALUES ('4028803327bdc35f0127bdc35f6d0000', 'a', null, '2010-04-02 17:04:10', null, '127.0.0.1', '83C0DB31531AF85FDA55F6B0CCC17761');
INSERT INTO `do_log` VALUES ('4028803327bdc35f0127bdc391e70001', 'a', null, '2010-04-02 17:04:23', null, '127.0.0.1', '83C0DB31531AF85FDA55F6B0CCC17761');
INSERT INTO `do_log` VALUES ('4028803327bdf14c0127bdf14c910000', 'a', null, '2010-04-02 17:54:20', null, '127.0.0.1', '574E0DCF008993AE664AB3825F09B0EE');
INSERT INTO `do_log` VALUES ('4028803327d0a8990127d0a899fe0000', 'a', null, '2010-04-06 09:07:42', null, '127.0.0.1', '76A684B43948AA9AD1242CBCA3777671');
INSERT INTO `do_log` VALUES ('4028803327d0a8990127d0a900d60001', 'u', null, '2010-04-06 09:08:09', null, '127.0.0.1', '76A684B43948AA9AD1242CBCA3777671');
INSERT INTO `do_log` VALUES ('4028803327d0a8990127d0a96acb0002', 'u', null, '2010-04-06 09:08:36', null, '127.0.0.1', '76A684B43948AA9AD1242CBCA3777671');
INSERT INTO `do_log` VALUES ('4028803327d0c6a40127d0c6a49b0000', 'a', null, '2010-04-06 09:40:31', null, '127.0.0.1', '85A03DC045178EA296E45BE4FC91C3C8');
INSERT INTO `do_log` VALUES ('4028803327d0c8320127d0c832cd0000', 'a', null, '2010-04-06 09:42:13', '2010-04-06 13:05:53', '127.0.0.1', '3A3EB126A7C52F1AE5FBF2A362FBCCD7');
INSERT INTO `do_log` VALUES ('4028803327d0c8320127d1a0ccef00d1', 'a', null, '2010-04-06 13:38:48', null, '127.0.0.1', '8999D74835F1B1A861B611C045D0F59F');
INSERT INTO `do_log` VALUES ('4028803327d0c8320127d1eaba1b0139', 'b', null, '2010-04-06 14:59:33', null, '127.0.0.1', '8999D74835F1B1A861B611C045D0F59F');
INSERT INTO `do_log` VALUES ('4028803327d0c8320127d1eb5978013a', 'b', null, '2010-04-06 15:00:14', null, '127.0.0.1', '8999D74835F1B1A861B611C045D0F59F');
INSERT INTO `do_log` VALUES ('4028803327d0c8320127d1ec0410013b', 'admin', null, '2010-04-06 15:00:58', null, '127.0.0.1', '8999D74835F1B1A861B611C045D0F59F');
INSERT INTO `do_log` VALUES ('4028803327d1f8490127d1f8490d0000', 'a', null, '2010-04-06 15:14:22', null, '127.0.0.1', '424A37A9F6BAB2A53233CA25F6D8A4B8');
INSERT INTO `do_log` VALUES ('4028803327d1f8490127d1f89ebf0001', 'admin', null, '2010-04-06 15:14:44', null, '127.0.0.1', '424A37A9F6BAB2A53233CA25F6D8A4B8');
INSERT INTO `do_log` VALUES ('4028803327d1fbb00127d1fbb0640000', 'a', null, '2010-04-06 15:18:05', null, '127.0.0.1', 'DAFA50ADC14946D1EEC333CBD98A4C81');
INSERT INTO `do_log` VALUES ('4028803327d1fbb00127d1fc608a0001', 'u', null, '2010-04-06 15:18:50', null, '127.0.0.1', 'DAFA50ADC14946D1EEC333CBD98A4C81');
INSERT INTO `do_log` VALUES ('4028803327d2088a0127d2088a200000', 'a', null, '2010-04-06 15:32:07', null, '127.0.0.1', 'F5174E4AB12E46260397D04736D8C9D7');
INSERT INTO `do_log` VALUES ('4028803327d2088a0127d2098b440001', 'admin', null, '2010-04-06 15:33:13', null, '127.0.0.1', 'F5174E4AB12E46260397D04736D8C9D7');
INSERT INTO `do_log` VALUES ('4028803327d210fe0127d210fecc0000', 'a', null, '2010-04-06 15:41:21', null, '127.0.0.1', '0C7DCDB6C61790EC4C2DB78D8841C08C');
INSERT INTO `do_log` VALUES ('4028803327d210fe0127d2117d240001', 'u', null, '2010-04-06 15:41:53', null, '127.0.0.1', '0C7DCDB6C61790EC4C2DB78D8841C08C');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d2145eb00000', 'a', null, '2010-04-06 15:45:02', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d215c8230001', 'u', null, '2010-04-06 15:46:35', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d21735020002', 'admin', null, '2010-04-06 15:48:08', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d21baacb0005', 'admin', null, '2010-04-06 15:53:00', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d21bf2720006', 'u', null, '2010-04-06 15:53:19', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d23343cf0022', 'b', null, '2010-04-06 16:18:47', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d235402b0027', 'b', null, '2010-04-06 16:20:57', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d23f77290037', 'admin', null, '2010-04-06 16:32:06', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d2145e0127d26611f900a8', 'c', null, '2010-04-06 17:14:17', null, '127.0.0.1', '242F55649D5EF4D33A00AC0097206813');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d27bce1f0000', 'a', null, '2010-04-06 17:38:01', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d27e4f990001', 'b', null, '2010-04-06 17:40:45', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d27fdb790002', 'u', null, '2010-04-06 17:42:26', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d28059f00003', 'admin', null, '2010-04-06 17:42:59', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d28239bc0004', 'c', null, '2010-04-06 17:45:02', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d2830eee0005', 'admin', null, '2010-04-06 17:45:56', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d2868b050007', 'b', null, '2010-04-06 17:49:45', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d286c58e0008', 'u', null, '2010-04-06 17:50:00', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d286f0090009', 'u', null, '2010-04-06 17:50:10', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d27bce0127d289ed0c000a', '1111', null, '2010-04-06 17:53:26', null, '127.0.0.1', 'D27881A37AD6EADF4241F977537938E4');
INSERT INTO `do_log` VALUES ('4028803327d28e110127d28e11b80000', 'a', null, '2010-04-06 17:57:58', '2010-04-06 18:30:12', '127.0.0.1', 'A4E6FE6718502438EB3A0E259B8A5019');
INSERT INTO `do_log` VALUES ('4028803327d28e110127d28e7d240001', 'admin', null, '2010-04-06 17:58:25', '2010-04-06 18:30:12', '127.0.0.1', 'A4E6FE6718502438EB3A0E259B8A5019');
INSERT INTO `do_log` VALUES ('4028803327d28e110127d2908c2e0002', 'a', null, '2010-04-06 18:00:40', '2010-04-06 18:42:20', '127.0.0.1', '21B75A8A2ECAAD973FD2ACAA68919154');
INSERT INTO `do_log` VALUES ('4028803327d28e110127d290bc650003', 'admin', null, '2010-04-06 18:00:53', '2010-04-06 18:42:20', '127.0.0.1', '21B75A8A2ECAAD973FD2ACAA68919154');
INSERT INTO `do_log` VALUES ('4028803327d28e110127d29ae74d0006', 'a', null, '2010-04-06 18:11:59', null, '127.0.0.1', 'EF5562A2D2A90AAC4BF3A758F86C4137');
INSERT INTO `do_log` VALUES ('4028803327d28e110127d29b7a940007', 'admin', null, '2010-04-06 18:12:37', null, '127.0.0.1', 'EF5562A2D2A90AAC4BF3A758F86C4137');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d5cc85aa0000', 'a', null, '2010-04-07 09:05:02', '2010-04-07 12:56:13', '127.0.0.1', 'DC5ECAD8112C82F92EA218421AD0928E');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d5ec36170038', 'u', null, '2010-04-07 09:39:39', '2010-04-07 12:56:13', '127.0.0.1', 'DC5ECAD8112C82F92EA218421AD0928E');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d5ee9d340039', 'admin', null, '2010-04-07 09:42:17', '2010-04-07 12:56:13', '127.0.0.1', 'DC5ECAD8112C82F92EA218421AD0928E');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d5fbd57b004c', 'admin', null, '2010-04-07 09:56:43', '2010-04-07 12:56:13', '127.0.0.1', 'DC5ECAD8112C82F92EA218421AD0928E');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6a2b7e500b6', 'a', null, '2010-04-07 12:59:00', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6c3dfb000b7', 'admin', null, '2010-04-07 13:35:13', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d0bdd100ba', 'b', null, '2010-04-07 13:49:16', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d10f7b00bb', 'u', null, '2010-04-07 13:49:37', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d1ff2a00bc', 'a', null, '2010-04-07 13:50:38', '2010-04-07 14:22:14', '127.0.0.1', 'FCB64495D81B5515B59D8C0F42FFB204');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d2556800bd', 'u', null, '2010-04-07 13:51:00', '2010-04-07 14:22:14', '127.0.0.1', 'FCB64495D81B5515B59D8C0F42FFB204');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d3370e00be', 'a', null, '2010-04-07 13:51:58', '2010-04-07 14:23:15', '127.0.0.1', '41A2D0CC3E18E2D23AD399BD696368E4');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d376e600bf', 'admin', null, '2010-04-07 13:52:15', '2010-04-07 14:23:15', '127.0.0.1', '41A2D0CC3E18E2D23AD399BD696368E4');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d3f3a700c0', 'a', null, '2010-04-07 13:52:47', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d4260200c1', 'admin', null, '2010-04-07 13:52:59', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6d4c6f500c2', 'admin', null, '2010-04-07 13:53:41', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6de1da500d0', 'yuangong', null, '2010-04-07 14:03:53', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6e72b8400df', 'mgr', null, '2010-04-07 14:13:46', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6e7adf200e0', 'total', null, '2010-04-07 14:14:19', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6e82cb700e1', 'caiwu', null, '2010-04-07 14:14:52', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6e8739400e2', 'admin', null, '2010-04-07 14:15:10', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6eb8da500e3', 'mgr', null, '2010-04-07 14:18:33', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6ed4cda00e6', 'caiwu', null, '2010-04-07 14:20:28', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6efa83e00e9', 'total', null, '2010-04-07 14:23:02', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d5cc850127d6f17b3900ec', 'yuangong', null, '2010-04-07 14:25:02', null, '127.0.0.1', '37FA6E4CC84F3879BFBD40875B4C9FB5');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d6fa81390000', 'a', null, '2010-04-07 14:34:53', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d6facd840001', 'admin', null, '2010-04-07 14:35:13', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d6fb62a00002', 'total', null, '2010-04-07 14:35:51', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d70817cc001e', 'mgr', null, '2010-04-07 14:49:44', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d7089b93001f', 'admin', null, '2010-04-07 14:50:17', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d70a1b5d0020', 'admin', null, '2010-04-07 14:51:56', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d70d9cc30028', 'u', null, '2010-04-07 14:55:45', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d712c12b002d', 'yuangong', null, '2010-04-07 15:01:22', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d713b1b5002e', 'admin', null, '2010-04-07 15:02:24', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d714e498002f', 'admin', null, '2010-04-07 15:03:43', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d7153d760030', 'yuangong', null, '2010-04-07 15:04:05', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d715cc0a0031', 'mgr', null, '2010-04-07 15:04:42', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d7163bea0032', 'total', null, '2010-04-07 15:05:10', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d6fa810127d717137e0033', 'yuangong', null, '2010-04-07 15:06:06', null, '127.0.0.1', 'AA7D1271CBF1EE17C9334595FB57A08F');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d71a88800000', 'a', null, '2010-04-07 15:09:52', '2010-04-07 15:43:44', '127.0.0.1', '66362E6E50E5E79C3721101421339CD8');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d71ac9230001', 'b', null, '2010-04-07 15:10:09', '2010-04-07 15:43:44', '127.0.0.1', '66362E6E50E5E79C3721101421339CD8');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d71b37000002', 'yuangong', null, '2010-04-07 15:10:37', '2010-04-07 15:43:44', '127.0.0.1', '66362E6E50E5E79C3721101421339CD8');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d71c19130003', 'admin', null, '2010-04-07 15:11:35', '2010-04-07 15:43:44', '127.0.0.1', '66362E6E50E5E79C3721101421339CD8');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d71cab700004', 'yuangong', null, '2010-04-07 15:12:12', '2010-04-07 15:43:44', '127.0.0.1', '66362E6E50E5E79C3721101421339CD8');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d71cdbb70005', 'b', null, '2010-04-07 15:12:25', '2010-04-07 15:43:44', '127.0.0.1', '66362E6E50E5E79C3721101421339CD8');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d71f7e760006', 'a', null, '2010-04-07 15:15:17', '2010-04-07 15:46:46', '127.0.0.1', '175F7A04C4EB33F2C4574CBD19B59440');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d720c7320007', 'caiwu', null, '2010-04-07 15:16:41', null, '127.0.0.1', 'AC45FB8328ACB8330206ED5B8808F4B6');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d723e4cd0008', 'a', null, '2010-04-07 15:20:06', null, '127.0.0.1', 'AC45FB8328ACB8330206ED5B8808F4B6');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d7267be30009', 'admin', null, '2010-04-07 15:22:55', null, '127.0.0.1', 'AC45FB8328ACB8330206ED5B8808F4B6');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d76142c30019', 'mgr', null, '2010-04-07 16:27:07', null, '127.0.0.1', 'AC45FB8328ACB8330206ED5B8808F4B6');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d762c4cf001b', 'admin', null, '2010-04-07 16:28:46', null, '127.0.0.1', 'AC45FB8328ACB8330206ED5B8808F4B6');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d762ee9f001c', 'admin', null, '2010-04-07 16:28:57', null, '127.0.0.1', 'AC45FB8328ACB8330206ED5B8808F4B6');
INSERT INTO `do_log` VALUES ('4028803327d71a880127d7750183005a', 'admin', null, '2010-04-07 16:48:41', null, '127.0.0.1', 'AC45FB8328ACB8330206ED5B8808F4B6');
INSERT INTO `do_log` VALUES ('4028803327d77b570127d77b57760000', 'a', null, '2010-04-07 16:55:37', '2010-04-07 17:30:24', '127.0.0.1', '1EF7A261B0478CFEE6DCE22FFD0C5A26');
INSERT INTO `do_log` VALUES ('4028803327daf5ac0127daf5acff0000', 'admin', null, '2010-04-08 09:08:06', null, '127.0.0.1', '7D95964D7BE87460943EA22F43ABA791');
INSERT INTO `do_log` VALUES ('4028803327daf5ac0127daf73f670001', 'yuangong', null, '2010-04-08 09:09:49', null, '127.0.0.1', '7D95964D7BE87460943EA22F43ABA791');
INSERT INTO `do_log` VALUES ('4028803327daf5ac0127daf7b4e50002', 'admin', null, '2010-04-08 09:10:19', null, '127.0.0.1', '7D95964D7BE87460943EA22F43ABA791');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127daf94a2b0000', 'a', null, '2010-04-08 09:12:02', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127daf9b4bc0001', 'yuangong', null, '2010-04-08 09:12:30', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127daf9f0000002', 'admin', null, '2010-04-08 09:12:45', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127dafb38ad0003', 'yuangong', null, '2010-04-08 09:14:09', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127dafb83ee0004', 'admin', null, '2010-04-08 09:14:28', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127dafc00710005', 'admin', null, '2010-04-08 09:15:00', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127dafc4ab90006', 'yuangong', null, '2010-04-08 09:15:19', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127dafcf1590007', 'mgr', null, '2010-04-08 09:16:02', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127dafd8dc80008', 'caiwu', null, '2010-04-08 09:16:42', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127dafe92860009', 'total', null, '2010-04-08 09:17:49', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327daf94a0127daff5f7b000a', 'admin', null, '2010-04-08 09:18:41', '2010-04-08 09:49:38', '127.0.0.1', '0FE1411F50482364BF83B3DEA59CD170');
INSERT INTO `do_log` VALUES ('4028803327db627b0127db627bfa0000', 'a', null, '2010-04-08 11:06:57', '2010-04-08 11:39:15', '127.0.0.1', '8FD9E4ACCE4E50A09B1042F2A063E0FD');
INSERT INTO `do_log` VALUES ('4028803327db627b0127db632dd50001', 'admin', null, '2010-04-08 11:07:42', '2010-04-08 11:39:15', '127.0.0.1', '8FD9E4ACCE4E50A09B1042F2A063E0FD');
INSERT INTO `do_log` VALUES ('4028803327db627b0127db637c720002', 'yuangong', null, '2010-04-08 11:08:02', '2010-04-08 11:39:15', '127.0.0.1', '8FD9E4ACCE4E50A09B1042F2A063E0FD');
INSERT INTO `do_log` VALUES ('4028803327db627b0127db63ef800003', 'caiwu', null, '2010-04-08 11:08:32', '2010-04-08 11:39:15', '127.0.0.1', '8FD9E4ACCE4E50A09B1042F2A063E0FD');
INSERT INTO `do_log` VALUES ('4028803327db627b0127db644cd20004', 'admin', null, '2010-04-08 11:08:55', '2010-04-08 11:39:15', '127.0.0.1', '8FD9E4ACCE4E50A09B1042F2A063E0FD');
INSERT INTO `do_log` VALUES ('4028803327db627b0127dbf5af920005', 'a', null, '2010-04-08 13:47:43', null, '127.0.0.1', '2D65B4F29FC68071971DE87EEC5713A8');
INSERT INTO `do_log` VALUES ('4028803327db627b0127dbf617450006', 'admin', null, '2010-04-08 13:48:10', null, '127.0.0.1', '2D65B4F29FC68071971DE87EEC5713A8');
INSERT INTO `do_log` VALUES ('4028803327ef93040127ef9304730000', 'a', null, '2010-04-12 09:12:21', null, '127.0.0.1', 'C605F633CC746A07C0429EBC74219822');
INSERT INTO `do_log` VALUES ('4028803327ef93040127ef9340620001', 'admin', null, '2010-04-12 09:12:37', null, '127.0.0.1', 'C605F633CC746A07C0429EBC74219822');
INSERT INTO `do_log` VALUES ('4028803327efcc3d0127efcc3dae0000', 'a', null, '2010-04-12 10:14:52', null, '127.0.0.1', '64FF9890C699D417CF7898F225FBE041');
INSERT INTO `do_log` VALUES ('4028803327efda8b0127efda8b1e0000', 'a', null, '2010-04-12 10:30:29', null, '127.0.0.1', '09F5F5B7971929CF681147BD0FCA2F21');
INSERT INTO `do_log` VALUES ('4028803327efda8b0127efdacc7c0001', 'admin', null, '2010-04-12 10:30:46', null, '127.0.0.1', '09F5F5B7971929CF681147BD0FCA2F21');
INSERT INTO `do_log` VALUES ('4028803327efda8b0127efdb3db50002', 'yuangong', null, '2010-04-12 10:31:15', null, '127.0.0.1', '09F5F5B7971929CF681147BD0FCA2F21');
INSERT INTO `do_log` VALUES ('4028803327efda8b0127efdc61840003', 'mgr', null, '2010-04-12 10:32:29', null, '127.0.0.1', '09F5F5B7971929CF681147BD0FCA2F21');
INSERT INTO `do_log` VALUES ('4028803327efda8b0127efde764a0004', 'caiwu', null, '2010-04-12 10:34:46', null, '127.0.0.1', '09F5F5B7971929CF681147BD0FCA2F21');
INSERT INTO `do_log` VALUES ('4028803327efe2e50127efe2e5ba0000', 'a', null, '2010-04-12 10:39:36', '2010-04-12 11:09:04', '127.0.0.1', 'BB37EC1F7D7BF4E210661C7D232F1B74');
INSERT INTO `do_log` VALUES ('4028803327efe2e50127effe169b0010', 'a', null, '2010-04-12 11:09:18', null, '127.0.0.1', '0B0A32097654CF6D2C361B6CDD142539');
INSERT INTO `do_log` VALUES ('4028803327efe2e50127f01eb6790012', 'admin', null, '2010-04-12 11:44:57', null, '127.0.0.1', '0B0A32097654CF6D2C361B6CDD142539');
INSERT INTO `do_log` VALUES ('4028803327efe2e50127f01ed0890013', 'admin', null, '2010-04-12 11:45:03', null, '127.0.0.1', '0B0A32097654CF6D2C361B6CDD142539');
INSERT INTO `do_log` VALUES ('4028803327f028a90127f028a9970000', 'a', null, '2010-04-12 11:55:49', null, '127.0.0.1', 'DC67190FE3D95A05C4AF9AD65D199D00');
INSERT INTO `do_log` VALUES ('4028803327f028a90127f028f3c00001', 'admin', null, '2010-04-12 11:56:08', null, '127.0.0.1', 'DC67190FE3D95A05C4AF9AD65D199D00');
INSERT INTO `do_log` VALUES ('4028803327f02de50127f02de5210000', 'a', null, '2010-04-12 12:01:32', null, '127.0.0.1', '2865C274F478520E6042C42373FAFF9A');
INSERT INTO `do_log` VALUES ('4028803327f02de50127f02e267f0001', 'admin', null, '2010-04-12 12:01:48', null, '127.0.0.1', '2865C274F478520E6042C42373FAFF9A');
INSERT INTO `do_log` VALUES ('4028803327f064860127f06486c90000', 'a', null, '2010-04-12 13:01:12', null, '127.0.0.1', 'B77BBFB90EFECF4A67C9EC9332AD20BB');
INSERT INTO `do_log` VALUES ('4028803327f064860127f064d43d0001', 'admin', null, '2010-04-12 13:01:32', null, '127.0.0.1', 'B77BBFB90EFECF4A67C9EC9332AD20BB');
INSERT INTO `do_log` VALUES ('4028803327f069730127f06973c60000', 'a', null, '2010-04-12 13:06:35', null, '127.0.0.1', 'F69B50A50A0B754F95D059479EAEA41D');
INSERT INTO `do_log` VALUES ('4028803327f069730127f069bca60001', 'admin', null, '2010-04-12 13:06:53', null, '127.0.0.1', 'F69B50A50A0B754F95D059479EAEA41D');
INSERT INTO `do_log` VALUES ('4028803327f078990127f07899e30000', 'a', null, '2010-04-12 13:23:07', null, '127.0.0.1', 'EA58B631223339C86C47BA5E6594A145');
INSERT INTO `do_log` VALUES ('4028803327f078990127f078ed330001', 'admin', null, '2010-04-12 13:23:29', null, '127.0.0.1', 'EA58B631223339C86C47BA5E6594A145');
INSERT INTO `do_log` VALUES ('4028803327f078990127f079ce1d0002', 'yuangong', null, '2010-04-12 13:24:26', null, '127.0.0.1', 'EA58B631223339C86C47BA5E6594A145');
INSERT INTO `do_log` VALUES ('4028803327f078990127f07a337e0003', 'mgr', null, '2010-04-12 13:24:52', null, '127.0.0.1', 'EA58B631223339C86C47BA5E6594A145');
INSERT INTO `do_log` VALUES ('4028803327f078990127f0820d420004', 'admin', null, '2010-04-12 13:33:27', null, '127.0.0.1', 'EA58B631223339C86C47BA5E6594A145');
INSERT INTO `do_log` VALUES ('4028803327f088b60127f088b6b40000', 'a', null, '2010-04-12 13:40:43', null, '127.0.0.1', 'AD9819E90098F9F383573C649BAD5D87');
INSERT INTO `do_log` VALUES ('4028803327f08df50127f08df50c0000', 'a', null, '2010-04-12 13:46:27', null, '127.0.0.1', '7C1C33DBC2F476C5750F588AB8D46AAA');
INSERT INTO `do_log` VALUES ('4028803327f08df50127f08e335d0001', 'admin', null, '2010-04-12 13:46:43', null, '127.0.0.1', '7C1C33DBC2F476C5750F588AB8D46AAA');
INSERT INTO `do_log` VALUES ('4028803327f08df50127f08f28e90002', 'mgr', null, '2010-04-12 13:47:46', null, '127.0.0.1', '7C1C33DBC2F476C5750F588AB8D46AAA');
INSERT INTO `do_log` VALUES ('4028803327f08df50127f08fbb070003', 'caiwu', null, '2010-04-12 13:48:23', null, '127.0.0.1', '7C1C33DBC2F476C5750F588AB8D46AAA');
INSERT INTO `do_log` VALUES ('4028803327f08df50127f0902e240004', 'admin', null, '2010-04-12 13:48:53', null, '127.0.0.1', '7C1C33DBC2F476C5750F588AB8D46AAA');
INSERT INTO `do_log` VALUES ('4028803327f093700127f093709d0000', 'a', null, '2010-04-12 13:52:26', null, '127.0.0.1', '7E1BCC0B814DF2C40DBD17CECBE48744');
INSERT INTO `do_log` VALUES ('4028803327f093700127f093a8560001', 'admin', null, '2010-04-12 13:52:41', null, '127.0.0.1', '7E1BCC0B814DF2C40DBD17CECBE48744');
INSERT INTO `do_log` VALUES ('4028803327f093700127f094364e0002', 'mgr', null, '2010-04-12 13:53:17', null, '127.0.0.1', '7E1BCC0B814DF2C40DBD17CECBE48744');
INSERT INTO `do_log` VALUES ('4028803327f09a1a0127f09a1a1e0000', 'a', null, '2010-04-12 13:59:43', null, '127.0.0.1', '0174398EBF5B988CCB14388695C79D8B');
INSERT INTO `do_log` VALUES ('4028803327f09ba80127f09ba85f0000', 'a', null, '2010-04-12 14:01:25', null, '127.0.0.1', '29FD3E81C53A3B1216F52BAE53045893');
INSERT INTO `do_log` VALUES ('4028803327f09ba80127f09bef1d0001', 'mgr', null, '2010-04-12 14:01:43', null, '127.0.0.1', '29FD3E81C53A3B1216F52BAE53045893');
INSERT INTO `do_log` VALUES ('4028803327f09ba80127f0be2337008e', 'admin', null, '2010-04-12 14:39:05', null, '127.0.0.1', '29FD3E81C53A3B1216F52BAE53045893');
INSERT INTO `do_log` VALUES ('4028803327f0ce540127f0ce545b0000', 'a', null, '2010-04-12 14:56:46', null, '127.0.0.1', 'D5F39BE952E1600C14A3BC9AED5AF821');
INSERT INTO `do_log` VALUES ('4028803327f0d1580127f0d158450000', 'a', null, '2010-04-12 15:00:03', null, '127.0.0.1', '82D76420BEABEAFD0B80ED4704ED81BA');
INSERT INTO `do_log` VALUES ('4028803327f0d1580127f0d1c0a40001', 'admin', null, '2010-04-12 15:00:30', null, '127.0.0.1', '82D76420BEABEAFD0B80ED4704ED81BA');
INSERT INTO `do_log` VALUES ('4028803327f0d1580127f0d1e90b0002', 'admin', null, '2010-04-12 15:00:40', null, '127.0.0.1', '82D76420BEABEAFD0B80ED4704ED81BA');
INSERT INTO `do_log` VALUES ('4028803327f0f7010127f0f701cf0000', 'a', null, '2010-04-12 15:41:12', null, '127.0.0.1', '0AA3065B94907B44FEF490BFD5955D6D');
INSERT INTO `do_log` VALUES ('4028803327f0faca0127f0facafd0000', 'a', null, '2010-04-12 15:45:20', null, '127.0.0.1', 'D46E659A342E9E977D60D39EB079AFDE');
INSERT INTO `do_log` VALUES ('4028803327f0faca0127f0fc75030001', 'admin', null, '2010-04-12 15:47:09', null, '127.0.0.1', 'D46E659A342E9E977D60D39EB079AFDE');
INSERT INTO `do_log` VALUES ('4028803327f116b80127f116b8c40000', 'a', null, '2010-04-12 16:15:50', null, '127.0.0.1', '22D31CDC9ED2BE047588931DAA9AA9D4');
INSERT INTO `do_log` VALUES ('4028803327f116b80127f117703d0001', 'admin', null, '2010-04-12 16:16:37', null, '127.0.0.1', '22D31CDC9ED2BE047588931DAA9AA9D4');
INSERT INTO `do_log` VALUES ('4028803327f11f110127f11f116d0000', 'a', null, '2010-04-12 16:24:57', null, '127.0.0.1', 'A0A43686B7A1972F31B18230488B27B0');
INSERT INTO `do_log` VALUES ('4028803327f11f110127f12dfafe0046', 'admin', null, '2010-04-12 16:41:14', null, '127.0.0.1', 'A0A43686B7A1972F31B18230488B27B0');
INSERT INTO `do_log` VALUES ('4028803327f1477f0127f1477fd40000', 'a', null, '2010-04-12 17:09:07', null, '127.0.0.1', 'C8F261586336DFF5001CAAAA7EB17F64');
INSERT INTO `do_log` VALUES ('4028803327f1477f0127f147cea00001', 'admin', null, '2010-04-12 17:09:27', null, '127.0.0.1', 'C8F261586336DFF5001CAAAA7EB17F64');
INSERT INTO `do_log` VALUES ('4028803327f152070127f15207530000', 'a', null, '2010-04-12 17:20:37', null, '127.0.0.1', '163E78480277D853B22F4DFA9489825E');
INSERT INTO `do_log` VALUES ('4028803327f152070127f16af1ae0060', 'admin', null, '2010-04-12 17:47:50', null, '127.0.0.1', '163E78480277D853B22F4DFA9489825E');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f4b3b6be0000', 'admin', null, '2010-04-13 09:06:10', '2010-04-13 12:37:57', '127.0.0.1', '12E1C86036474D37FDB65A3C1480213B');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f53f1bcd0061', 'admin', null, '2010-04-13 11:38:26', '2010-04-13 12:37:57', '127.0.0.1', '12E1C86036474D37FDB65A3C1480213B');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f543904d0063', 'yuanxx', null, '2010-04-13 11:43:18', '2010-04-13 12:37:57', '127.0.0.1', '12E1C86036474D37FDB65A3C1480213B');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f54564900064', 'yuanxx', null, '2010-04-13 11:45:17', '2010-04-13 12:37:57', '127.0.0.1', '12E1C86036474D37FDB65A3C1480213B');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f54801c10065', 'admin', null, '2010-04-13 11:48:09', '2010-04-13 12:37:57', '127.0.0.1', '12E1C86036474D37FDB65A3C1480213B');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5533c530076', 'yuanxx', null, '2010-04-13 12:00:25', '2010-04-13 12:37:57', '127.0.0.1', '12E1C86036474D37FDB65A3C1480213B');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5a4dcef0077', 'a', null, '2010-04-13 13:29:34', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5b7c43a0078', 'admin', null, '2010-04-13 13:50:13', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5bbb1f7007a', 'yuanxx', null, '2010-04-13 13:54:31', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5bfb270007d', 'yuanxx', null, '2010-04-13 13:58:53', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5c724140090', 'yuanxx', null, '2010-04-13 14:07:01', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5c95b760091', 'yuanxx', null, '2010-04-13 14:09:26', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5ca306a0093', 'yuanxx', null, '2010-04-13 14:10:20', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5cb6a610095', 'yuanxx', null, '2010-04-13 14:11:41', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5d831ae0096', 'yuanxx', null, '2010-04-13 14:25:38', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5d910850098', 'yuanxx', null, '2010-04-13 14:26:35', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f4b3b60127f5f638e0009c', 'yuanxx', null, '2010-04-13 14:58:26', null, '127.0.0.1', 'E5F611132EB96AD0BA0864B95521CAE2');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f5f878600000', 'a', null, '2010-04-13 15:00:54', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f5f950ce0001', 'admin', null, '2010-04-13 15:01:49', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f5f980a80002', 'a', null, '2010-04-13 15:02:01', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f5ff91e10003', 'admin', null, '2010-04-13 15:08:39', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f601c1540004', 'admin', null, '2010-04-13 15:11:02', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f60211d50005', 'mgr', null, '2010-04-13 15:11:23', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f60338a20006', 'caiwu', null, '2010-04-13 15:12:38', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f603cd120007', 'admin', null, '2010-04-13 15:13:16', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f604a5a00008', 'yuangong', null, '2010-04-13 15:14:12', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f604bea60009', 'yuangong', null, '2010-04-13 15:14:18', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f606b3230016', 'mgr', null, '2010-04-13 15:16:26', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f5f8780127f606ca640017', 'mgr', null, '2010-04-13 15:16:32', null, '127.0.0.1', '786699F09106356CED6173A3152E7523');
INSERT INTO `do_log` VALUES ('4028803327f6171a0127f6171a4b0000', 'a', null, '2010-04-13 15:34:21', null, '127.0.0.1', 'DD33AB2AF08856D75BED647A0BE55C2B');
INSERT INTO `do_log` VALUES ('4028803327f619370127f619378e0000', 'a', null, '2010-04-13 15:36:40', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f619370127f61958540001', 'a', null, '2010-04-13 15:36:48', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f619370127f61eec6e0004', 'yuanxx', null, '2010-04-13 15:42:54', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f619370127f66e0872008d', 'yuanxx1', null, '2010-04-13 17:09:18', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f619370127f67372bc0096', 'yuanxx2', null, '2010-04-13 17:15:13', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f619370127f67722b50097', 'yuanxx2', null, '2010-04-13 17:19:15', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f619370127f679d0be009c', 'yuanxx2', null, '2010-04-13 17:22:10', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f619370127f67b6b4300a0', 'yuanxx2', null, '2010-04-13 17:23:55', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f619370127f681e45e00a8', 'yuanxx3', null, '2010-04-13 17:31:00', null, '127.0.0.1', '89CC6A379043A5A8A539A1A54CD8D82D');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f68a8e820000', 'a', null, '2010-04-13 17:40:28', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f68ad02e0001', 'yuanxx', null, '2010-04-13 17:40:44', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f68ed1f00004', 'yuanxx1', null, '2010-04-13 17:45:07', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f690eb6a0005', 'yuanxx', null, '2010-04-13 17:47:24', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f6918a590006', 'yuanxx1', null, '2010-04-13 17:48:05', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f692112d0007', 'yuanxx2', null, '2010-04-13 17:48:40', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f692a7cf0008', 'yuanxx3', null, '2010-04-13 17:49:18', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f695427f000f', 'yuanxx4', null, '2010-04-13 17:52:09', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f68a8e0127f69b501e0010', 'yuanxx4', null, '2010-04-13 17:58:46', null, '127.0.0.1', '5ECC17F5621E7580F39164ECD5F34EF5');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127f9e48adb0000', 'yuanxx1', null, '2010-04-14 09:17:36', '2010-04-14 09:51:51', '127.0.0.1', '65D06A25839450C0C2CF013C19D2FF1A');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127f9e590640001', 'yuanxx', null, '2010-04-14 09:18:43', '2010-04-14 09:51:51', '127.0.0.1', '65D06A25839450C0C2CF013C19D2FF1A');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127f9e6ad4e0002', 'yuanxx2', null, '2010-04-14 09:19:56', '2010-04-14 09:51:51', '127.0.0.1', '65D06A25839450C0C2CF013C19D2FF1A');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127f9e74fe70003', 'yuanxx3', null, '2010-04-14 09:20:38', '2010-04-14 09:51:51', '127.0.0.1', '65D06A25839450C0C2CF013C19D2FF1A');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa1426f70004', 'a', null, '2010-04-14 10:09:37', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa1491d70005', 'yuanxx1', null, '2010-04-14 10:10:04', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa1fb0650009', 'yuanxx', null, '2010-04-14 10:22:13', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa21dac7000b', 'yuanxx2', null, '2010-04-14 10:24:35', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa23b69c000d', 'yuanxx3', null, '2010-04-14 10:26:36', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa28cecf000f', 'yuanxx4', null, '2010-04-14 10:32:10', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa3300db0016', 'yuanxx4', null, '2010-04-14 10:43:18', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa3e217d001a', 'yuanxx', null, '2010-04-14 10:55:28', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa5ef1c1001b', 'yuanxx4', null, '2010-04-14 11:31:18', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa6232f2001e', 'yuanxx4', null, '2010-04-14 11:34:51', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa69e71d003b', 'yuanxx4', null, '2010-04-14 11:43:16', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa6c271a003d', 'yuanxx4', null, '2010-04-14 11:45:44', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fa7735bb0057', 'yuanxx1', null, '2010-04-14 11:57:48', '2010-04-14 12:39:08', '127.0.0.1', '84BAE1D69F575D30584F3679220C9041');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fad32deb005d', 'a', null, '2010-04-14 13:38:16', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fad3698d005e', 'yuanxx1', null, '2010-04-14 13:38:31', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fad4c303005f', 'yuanxx', null, '2010-04-14 13:39:59', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fadaabb50061', 'yuanxx2', null, '2010-04-14 13:46:27', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fadc3b4d0062', 'yuanxx3', null, '2010-04-14 13:48:09', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fadd71d90063', 'yuanxx4', null, '2010-04-14 13:49:28', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fadd8f640064', 'yuanxx4', null, '2010-04-14 13:49:36', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fb02a98f0087', 'yuanxx5', null, '2010-04-14 14:30:08', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fb5ed13c0094', 'yuanxx', null, '2010-04-14 16:10:47', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fb7a0af6009a', 'yuanxx5', null, '2010-04-14 16:40:31', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fb80a97b009c', 'yuanxx', null, '2010-04-14 16:47:45', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fb846d1a009e', 'yuanxx1', null, '2010-04-14 16:51:52', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fb86b3bf009f', 'yuanxx3', null, '2010-04-14 16:54:21', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fb8851de00a0', 'yuanxx4', null, '2010-04-14 16:56:07', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fb8951f900a1', 'yuanxx5', null, '2010-04-14 16:57:12', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbb3808e00b2', 'tsyuanxx', null, '2010-04-14 17:43:17', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbc7b88500b5', 'tszuoch', null, '2010-04-14 18:05:22', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbc9f47b00b9', 'tsyuanxx', null, '2010-04-14 18:07:48', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbd3c56b00ba', 'yuanxx4', null, '2010-04-14 18:18:32', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbd4eae000bc', 'tsyuanxx', null, '2010-04-14 18:19:47', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbd5812500bd', 'tszuoch', null, '2010-04-14 18:20:25', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbd65ea400bf', 'tsyuanxx', null, '2010-04-14 18:21:22', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbda50d600c0', 'tsliwl', null, '2010-04-14 18:25:41', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbdb985900c2', 'tszhangwj', null, '2010-04-14 18:27:05', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbdcb97900c4', 'tsliwl', null, '2010-04-14 18:28:18', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbdd2cb500c5', 'yuanxx4', null, '2010-04-14 18:28:48', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbe3b57f00dc', 'tszhangwj', null, '2010-04-14 18:35:56', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327f9e48a0127fbe4686400dd', 'tsqianyf', null, '2010-04-14 18:36:42', null, '127.0.0.1', '3D16582C5C7B5E1254DA0630B8DFE157');
INSERT INTO `do_log` VALUES ('4028803327ff017f0127ff017fdf0000', 'yuanxx5', null, '2010-04-15 09:07:20', null, '127.0.0.1', '60BC06B1B0E5AC67EE68E238E0E5FD4B');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff07e8020000', 'a', null, '2010-04-15 09:14:20', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff08665a0001', 'yuanxx5', null, '2010-04-15 09:14:52', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff0cb0310002', 'tsyuanxx', null, '2010-04-15 09:19:33', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff0ed6ca0003', 'tsweuhx', null, '2010-04-15 09:21:54', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff14b0e60008', 'tsweuhx', null, '2010-04-15 09:28:18', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff164c27000a', 'yuanxx5', null, '2010-04-15 09:30:03', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff1ad2a9000d', 'tsweikx', null, '2010-04-15 09:35:00', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff1b43f1000e', 'tszuoch', null, '2010-04-15 09:35:29', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff1c64d20010', 'tsqianyf', null, '2010-04-15 09:36:43', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff1dacf20016', 'tszhangwj', null, '2010-04-15 09:38:07', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff1f5311001e', 'tsliwl', null, '2010-04-15 09:39:55', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff1f6e4a001f', 'tsliwl', null, '2010-04-15 09:40:02', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff22be5f0021', 'yuanxx4', null, '2010-04-15 09:43:39', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff4a9c000045', 'tszuoch', null, '2010-04-15 10:27:12', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff505ef90046', 'tsyuanxx', null, '2010-04-15 10:33:29', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff5196fc0047', 'tszhangwj', null, '2010-04-15 10:34:49', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff5a72de004a', 'tsweikx', null, '2010-04-15 10:44:30', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff5a8405004b', 'tsweikx', null, '2010-04-15 10:44:34', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff5dcdc1004f', 'tszuoch', null, '2010-04-15 10:48:09', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff61d6a70053', 'tszuoch', null, '2010-04-15 10:52:34', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff6251e20054', 'tsqianyf', null, '2010-04-15 10:53:05', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff633daa0056', 'tsweikx', null, '2010-04-15 10:54:06', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff63956e0057', 'tszuoch', null, '2010-04-15 10:54:28', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff6489150059', 'tsqianyf', null, '2010-04-15 10:55:31', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127ff64f31a005b', 'tszhangwj', null, '2010-04-15 10:55:58', '2010-04-15 12:44:55', '127.0.0.1', 'B186A7D9FEFB36587D3C0B689FE1B44D');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127fff4990700a3', 'a', null, '2010-04-15 13:32:52', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127fff5199100a4', 'yuanxx5', null, '2010-04-15 13:33:25', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e80127fffd516300a7', 'tsyuanxx', null, '2010-04-15 13:42:23', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e80128000249ca00b2', 'tszuoch', null, '2010-04-15 13:47:49', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e80128000420eb00b5', 'tsqianyf', null, '2010-04-15 13:49:50', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e8012800066d5c00ba', 'tszhangwj', null, '2010-04-15 13:52:20', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e80128000812af00bc', 'tsyuanxx', null, '2010-04-15 13:54:08', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e801280014b6a500bf', 'tszuoch', null, '2010-04-15 14:07:57', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e801280017ea4900c2', 'tsyuanxx', null, '2010-04-15 14:11:26', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803327ff07e80128001a359100c3', 'tszuoch', null, '2010-04-15 14:13:57', null, '127.0.0.1', 'FABFA48A074C06EA11520BC1C2A087E9');
INSERT INTO `do_log` VALUES ('4028803328001d5d0128001d5dcb0000', 'a', null, '2010-04-15 14:17:24', null, '127.0.0.1', 'BFD899D2DF15A425842999DC4269563D');
INSERT INTO `do_log` VALUES ('4028803328001d5d0128001de00b0001', 'tszuoch', null, '2010-04-15 14:17:57', null, '127.0.0.1', 'BFD899D2DF15A425842999DC4269563D');
INSERT INTO `do_log` VALUES ('4028803328001d5d012800304ac40004', 'tsyuanxx', null, '2010-04-15 14:38:04', null, '127.0.0.1', 'BFD899D2DF15A425842999DC4269563D');
INSERT INTO `do_log` VALUES ('4028803328001d5d01280030f3490005', 'tszuoch', null, '2010-04-15 14:38:47', null, '127.0.0.1', 'BFD899D2DF15A425842999DC4269563D');
INSERT INTO `do_log` VALUES ('4028803328001d5d01280037856a0008', 'tsqianyf', null, '2010-04-15 14:45:58', null, '127.0.0.1', 'BFD899D2DF15A425842999DC4269563D');
INSERT INTO `do_log` VALUES ('4028803328003e5a0128003e5a210000', 'a', null, '2010-04-15 14:53:26', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a0128003f304e0001', 'tsyuanxx', null, '2010-04-15 14:54:20', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800400f630002', 'tszuoch', null, '2010-04-15 14:55:17', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800402e550003', 'tszuoch', null, '2010-04-15 14:55:26', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a01280043988a0007', 'tsqianyf', null, '2010-04-15 14:59:09', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800453e0c000a', 'tszhangwj', null, '2010-04-15 15:00:57', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800489277000b', 'tsyuanxx', null, '2010-04-15 15:04:35', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a01280052d367000d', 'tszhangwj', null, '2010-04-15 15:15:47', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a01280059b241000f', 'tsyuanxx', null, '2010-04-15 15:23:18', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a0128005a5a480010', 'tszuoch', null, '2010-04-15 15:24:00', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a0128005c6e920013', 'tsqianyf', null, '2010-04-15 15:26:17', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a01280094fd83001a', 'yuanxx5', null, '2010-04-15 16:28:03', '2010-04-15 16:30:24', '127.0.0.1', '533035071F5C883538BE839711683124');
INSERT INTO `do_log` VALUES ('4028803328003e5a01280097ecfa001b', 'a', null, '2010-04-15 16:31:16', '2010-04-15 16:50:44', '127.0.0.1', '97DD3110E8CA77440FC8B728BD8DF977');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800983667001c', 'yuanxx5', null, '2010-04-15 16:31:35', '2010-04-15 16:50:44', '127.0.0.1', '97DD3110E8CA77440FC8B728BD8DF977');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800a9fd5e001d', 'a', null, '2010-04-15 16:51:00', '2010-04-15 17:05:31', '127.0.0.1', 'BEDCEF55DFC912853827C7983B31BF71');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800acb71f001e', 'yuanxx', null, '2010-04-15 16:53:58', '2010-04-15 17:05:31', '127.0.0.1', 'BEDCEF55DFC912853827C7983B31BF71');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800acdde1001f', 'yuanxx', null, '2010-04-15 16:54:08', '2010-04-15 17:05:31', '127.0.0.1', 'BEDCEF55DFC912853827C7983B31BF71');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800b685600020', 'yuanxx', null, '2010-04-15 17:04:41', '2010-04-15 17:05:31', '127.0.0.1', 'BEDCEF55DFC912853827C7983B31BF71');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800b73c2d0021', 'yuanxx', null, '2010-04-15 17:05:28', '2010-04-15 17:05:31', '127.0.0.1', 'BEDCEF55DFC912853827C7983B31BF71');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800b7dc260022', 'tsyuanxx', null, '2010-04-15 17:06:09', '2010-04-15 17:12:08', '127.0.0.1', '1921C0EA8822791AE8E61D58DED4CBC9');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800b8528f0023', 'tsyuanxx', null, '2010-04-15 17:06:39', '2010-04-15 17:12:08', '127.0.0.1', '1921C0EA8822791AE8E61D58DED4CBC9');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800bc1e5c0024', 'a', null, '2010-04-15 17:10:48', '2010-04-15 17:12:08', '127.0.0.1', '1921C0EA8822791AE8E61D58DED4CBC9');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800bca3f70025', 'yuanxx', null, '2010-04-15 17:11:22', '2010-04-15 17:12:08', '127.0.0.1', '1921C0EA8822791AE8E61D58DED4CBC9');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800beb0de0026', 'yuanxx', null, '2010-04-15 17:13:36', '2010-04-15 17:13:39', '127.0.0.1', '3D6C9C8E5BED7C1F514D96C8DD7973ED');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800c4321c0027', 'a', null, '2010-04-15 17:19:37', '2010-04-15 17:20:39', '127.0.0.1', '138188B43F344BBB6C215E2429C92513');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800c562fa0028', 'yuanxx', null, '2010-04-15 17:20:55', '2010-04-15 17:21:05', '127.0.0.1', '990BCC1E300250ACA03DAD4D6E389796');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800cae8300029', 'a', null, '2010-04-15 17:26:57', '2010-04-15 17:27:26', '127.0.0.1', '8AD7FF5F093DF4FFBFB2CE6708B95A11');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800cba798002a', 'a', null, '2010-04-15 17:27:46', '2010-04-15 18:06:12', '127.0.0.1', 'C21AA8C55C8BE65B4562EAD6006E79EA');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800cc7b05002b', 'tszuoch', null, '2010-04-15 17:28:40', '2010-04-15 18:06:12', '127.0.0.1', 'C21AA8C55C8BE65B4562EAD6006E79EA');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800cc97b4002c', 'tszuoch', null, '2010-04-15 17:28:47', '2010-04-15 18:06:12', '127.0.0.1', 'C21AA8C55C8BE65B4562EAD6006E79EA');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800cdf0ad002d', 'tsqianyf', null, '2010-04-15 17:30:16', '2010-04-15 18:06:12', '127.0.0.1', 'C21AA8C55C8BE65B4562EAD6006E79EA');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800dce4bd002f', 'tszhangwj', null, '2010-04-15 17:46:36', '2010-04-15 18:06:12', '127.0.0.1', 'C21AA8C55C8BE65B4562EAD6006E79EA');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800ef0f9e0032', 'tszhangwj', null, '2010-04-15 18:06:26', null, '127.0.0.1', 'CA8113B1BAD8CD04F552505BAF3FD493');
INSERT INTO `do_log` VALUES ('4028803328003e5a012800f2562e0036', 'tszuoch', null, '2010-04-15 18:10:01', null, '127.0.0.1', 'CA8113B1BAD8CD04F552505BAF3FD493');
INSERT INTO `do_log` VALUES ('402880332800f5ea012800f5ea230000', 'a', null, '2010-04-15 18:13:55', '2010-04-15 18:55:47', '127.0.0.1', 'CC4B71120AC4029D9BDBFCE758C18012');
INSERT INTO `do_log` VALUES ('402880332800f5ea012800f640900001', 'tsqianyf', null, '2010-04-15 18:14:18', '2010-04-15 18:55:47', '127.0.0.1', 'CC4B71120AC4029D9BDBFCE758C18012');
INSERT INTO `do_log` VALUES ('402880332800f5ea012800f89aeb0002', 'tsqianyf', null, '2010-04-15 18:16:52', '2010-04-15 18:55:47', '127.0.0.1', 'CC4B71120AC4029D9BDBFCE758C18012');
INSERT INTO `do_log` VALUES ('402880332804334a012804334a730000', 'a', null, '2010-04-16 09:19:49', '2010-04-16 09:20:29', '127.0.0.1', '4F19CB0280D4EB8BCC48C275CE2376CA');
INSERT INTO `do_log` VALUES ('402880332804334a012804336aad0001', 'a', null, '2010-04-16 09:19:58', '2010-04-16 09:20:29', '127.0.0.1', '4F19CB0280D4EB8BCC48C275CE2376CA');
INSERT INTO `do_log` VALUES ('402880332804334a012804342ff10002', 'yuanxx5', null, '2010-04-16 09:20:48', '2010-04-16 10:36:17', '127.0.0.1', 'F0ED01F4D8733F7C2E9CF10477DAAD64');
INSERT INTO `do_log` VALUES ('402880332804334a0128044a37a60009', 'tsqianyf', null, '2010-04-16 09:44:52', '2010-04-16 10:36:17', '127.0.0.1', 'F0ED01F4D8733F7C2E9CF10477DAAD64');
INSERT INTO `do_log` VALUES ('402880332804334a0128046c37df000e', 'tszhangwj', null, '2010-04-16 10:22:00', '2010-04-16 10:36:17', '127.0.0.1', 'F0ED01F4D8733F7C2E9CF10477DAAD64');
INSERT INTO `do_log` VALUES ('402880332804334a01280478396c0013', 'tsluwl', null, '2010-04-16 10:35:07', '2010-04-16 10:36:17', '127.0.0.1', 'F0ED01F4D8733F7C2E9CF10477DAAD64');
INSERT INTO `do_log` VALUES ('402880332804334a01280479ae1a0015', 'tsyuanxx', null, '2010-04-16 10:36:42', '2010-04-16 10:45:40', '127.0.0.1', '221556CF358E2EDA9170C7A1C9B9CAC3');
INSERT INTO `do_log` VALUES ('40288033280485bc01280485bc580000', 'a', null, '2010-04-16 10:49:53', '2010-04-16 10:50:32', '127.0.0.1', '2B21DD8082CDC5203C6EE9EB97B854C8');
INSERT INTO `do_log` VALUES ('40288033280485bc01280485dce00001', 'a', null, '2010-04-16 10:50:01', '2010-04-16 10:50:32', '127.0.0.1', '2B21DD8082CDC5203C6EE9EB97B854C8');
INSERT INTO `do_log` VALUES ('40288033280485bc01280486b57d0002', 'a', null, '2010-04-16 10:50:56', '2010-04-16 10:51:18', '127.0.0.1', '768372F29F1C667F1EE893E973DCA7CB');
INSERT INTO `do_log` VALUES ('40288033280485bc012804874a7a0003', 'tsyuanxx', null, '2010-04-16 10:51:34', '2010-04-16 10:57:07', '127.0.0.1', '21C2F5344AF76B6F936266B4A8EA3E79');
INSERT INTO `do_log` VALUES ('40288033280485bc012804a21e94000a', 'a', null, '2010-04-16 11:20:53', '2010-04-16 11:44:00', '127.0.0.1', 'A9D2E4C7AABDB7C55D8B3E6A5D4F01A2');
INSERT INTO `do_log` VALUES ('40288033280485bc012804ac513c000b', 'tsyuanxx', null, '2010-04-16 11:32:01', '2010-04-16 11:44:00', '127.0.0.1', 'A9D2E4C7AABDB7C55D8B3E6A5D4F01A2');
INSERT INTO `do_log` VALUES ('40288033280485bc012804b7968d000c', 'tszuoch', null, '2010-04-16 11:44:20', '2010-04-16 12:16:13', '127.0.0.1', 'BADC907EAB9BBB98DB7CB14395EF6282');
INSERT INTO `do_log` VALUES ('40288033280485bc0128051c4b21000d', 'a', null, '2010-04-16 13:34:19', '2010-04-16 14:18:48', '127.0.0.1', '1159335AE5495081F30E306FEB5CC7FE');
INSERT INTO `do_log` VALUES ('40288033280485bc0128051cad17000e', 'yuanxx5', null, '2010-04-16 13:34:45', '2010-04-16 14:18:48', '127.0.0.1', '1159335AE5495081F30E306FEB5CC7FE');
INSERT INTO `do_log` VALUES ('40288033280485bc0128054535500019', 'a', null, '2010-04-16 14:19:01', '2010-04-16 14:39:36', '127.0.0.1', '2E79ED362C818D9C8DE61CB3659FC7CD');
INSERT INTO `do_log` VALUES ('40288033280485bc012805585668001a', 'yuanxx5', null, '2010-04-16 14:39:55', null, '127.0.0.1', '0A7E816894DA827796DB502975C2C138');
INSERT INTO `do_log` VALUES ('40288033280485bc0128055988be001b', 'a', null, '2010-04-16 14:41:13', null, '127.0.0.1', '0A7E816894DA827796DB502975C2C138');
INSERT INTO `do_log` VALUES ('40288033280485bc01280559a31c001c', 'a', null, '2010-04-16 14:41:20', null, '127.0.0.1', '0A7E816894DA827796DB502975C2C138');
INSERT INTO `do_log` VALUES ('40288033280485bc0128058485900023', 'yuanxx5', null, '2010-04-16 15:28:10', null, '127.0.0.1', '0A7E816894DA827796DB502975C2C138');
INSERT INTO `do_log` VALUES ('4028803328059ee70128059ee71a0000', 'a', null, '2010-04-16 15:56:59', null, '127.0.0.1', '01A3C03824A1658E29E77DAB64E5C4DD');
INSERT INTO `do_log` VALUES ('4028803328059ee70128059f643a0001', 'yuanxx5', null, '2010-04-16 15:57:31', null, '127.0.0.1', '01A3C03824A1658E29E77DAB64E5C4DD');
INSERT INTO `do_log` VALUES ('402880332805a737012805a737180000', 'a', null, '2010-04-16 16:06:04', null, '127.0.0.1', '12EE69F3708021FE080CE8546FBC5868');
INSERT INTO `do_log` VALUES ('402880332805a737012805a7b58f0001', 'yuanxx5', null, '2010-04-16 16:06:36', null, '127.0.0.1', '12EE69F3708021FE080CE8546FBC5868');
INSERT INTO `do_log` VALUES ('402880332805bb96012805bb968c0000', 'a', null, '2010-04-16 16:28:19', null, '127.0.0.1', '5EACA69584A35CDF8CA805A75D5B808C');
INSERT INTO `do_log` VALUES ('402880332805bb96012805bbf6600001', 'yuanxx5', null, '2010-04-16 16:28:44', null, '127.0.0.1', '5EACA69584A35CDF8CA805A75D5B808C');
INSERT INTO `do_log` VALUES ('402880332805c10b012805c10ba50000', 'a', null, '2010-04-16 16:34:17', null, '127.0.0.1', 'B4E7F7BBDC755B0A89884AFE886FE4DA');
INSERT INTO `do_log` VALUES ('402880332805c10b012805c161180001', 'yuanxx5', null, '2010-04-16 16:34:39', null, '127.0.0.1', 'B4E7F7BBDC755B0A89884AFE886FE4DA');
INSERT INTO `do_log` VALUES ('402880332805c532012805c5330f0000', 'a', null, '2010-04-16 16:38:49', null, '127.0.0.1', '59DD3CBE594037582B80DC44C75E8CFC');
INSERT INTO `do_log` VALUES ('402880332805c532012805c5eb720001', 'yuanxx5', null, '2010-04-16 16:39:36', null, '127.0.0.1', '59DD3CBE594037582B80DC44C75E8CFC');
INSERT INTO `do_log` VALUES ('402880332805d1e7012805d1e7ed0000', 'a', null, '2010-04-16 16:52:42', null, '127.0.0.1', '763E6FA79AFD8D32F3D2C12E890262E0');
INSERT INTO `do_log` VALUES ('402880332805d1e7012805d22e2e0001', 'yuanxx5', null, '2010-04-16 16:53:00', null, '127.0.0.1', '763E6FA79AFD8D32F3D2C12E890262E0');
INSERT INTO `do_log` VALUES ('402880332805d929012805d9290b0000', 'a', null, '2010-04-16 17:00:37', null, '127.0.0.1', '46F35D47BD1EB2B585EEB2FAD0FC3FBA');
INSERT INTO `do_log` VALUES ('402880332805d929012805dab0090001', 'yuanxx5', null, '2010-04-16 17:02:17', null, '127.0.0.1', '46F35D47BD1EB2B585EEB2FAD0FC3FBA');
INSERT INTO `do_log` VALUES ('402880332805e56a012805e56acd0000', 'a', null, '2010-04-16 17:14:00', null, '127.0.0.1', '79D220C73FD130B90357BB072DF832AD');
INSERT INTO `do_log` VALUES ('402880332805e56a012805e5dd5d0001', 'yuanxx5', null, '2010-04-16 17:14:30', null, '127.0.0.1', '79D220C73FD130B90357BB072DF832AD');
INSERT INTO `do_log` VALUES ('402880332805e925012805e925350000', 'a', null, '2010-04-16 17:18:05', null, '127.0.0.1', '52443FFE1FB1AFE56DA46E1D9E828DAB');
INSERT INTO `do_log` VALUES ('402880332805e925012805e989cb0001', 'yuanxx5', null, '2010-04-16 17:18:30', null, '127.0.0.1', '52443FFE1FB1AFE56DA46E1D9E828DAB');
INSERT INTO `do_log` VALUES ('40288033280605050128060505600000', 'a', null, '2010-04-16 17:48:32', null, '127.0.0.1', '9F611852E3B52B00017931371800B7E5');
INSERT INTO `do_log` VALUES ('402880332806050501280606224a0001', 'yuanxx5', null, '2010-04-16 17:49:44', null, '127.0.0.1', '9F611852E3B52B00017931371800B7E5');
INSERT INTO `do_log` VALUES ('4028803328060d560128060d56a60000', 'a', null, '2010-04-16 17:57:37', null, '127.0.0.1', '14A38A405377B99D644D8E9D6A9D398D');
INSERT INTO `do_log` VALUES ('4028803328060d560128060d995c0001', 'yuanxx5', null, '2010-04-16 17:57:54', null, '127.0.0.1', '14A38A405377B99D644D8E9D6A9D398D');
INSERT INTO `do_log` VALUES ('40288033280612df01280612df560000', 'a', null, '2010-04-16 18:03:39', null, '127.0.0.1', 'E6B13208D22A44EA316FA98EF585C409');
INSERT INTO `do_log` VALUES ('40288033280612df012806131c110001', 'yuanxx5', null, '2010-04-16 18:03:55', null, '127.0.0.1', 'E6B13208D22A44EA316FA98EF585C409');
INSERT INTO `do_log` VALUES ('40288033280619cf01280619cf750000', 'yuanxx5', null, '2010-04-16 18:11:14', null, '127.0.0.1', '25F14BC4D846BC016B299AC4B225F0C7');
INSERT INTO `do_log` VALUES ('402880332813b9e7012813b9e7ea0000', 'yuanxx5', null, '2010-04-19 09:41:10', null, '127.0.0.1', 'CCBB3FCA475B9D68187252B391067916');
INSERT INTO `do_log` VALUES ('402880332813bf0a012813bf0a3e0000', 'yuanxx5', null, '2010-04-19 09:46:46', null, '127.0.0.1', '2F7064E147CF96B85DD7B914779DDB8C');
INSERT INTO `do_log` VALUES ('402880332813da5a012813da5adc0000', 'yuanxx5', null, '2010-04-19 10:16:36', null, '127.0.0.1', 'C44F4A6F60093C80736CF970A8CFF9B3');
INSERT INTO `do_log` VALUES ('402880332813e76f012813e76f3f0000', 'yuanxx5', null, '2010-04-19 10:30:54', null, '127.0.0.1', '4CF5B86159DBDF7555C969EB7F6A38F8');
INSERT INTO `do_log` VALUES ('40288033281405440128140544260000', 'a', null, '2010-04-19 11:03:29', null, '127.0.0.1', '421AA7A6F83ABA6EDDD435902348D0AD');
INSERT INTO `do_log` VALUES ('402880332814054401281405965d0001', 'yuanxx5', null, '2010-04-19 11:03:50', null, '127.0.0.1', '421AA7A6F83ABA6EDDD435902348D0AD');
INSERT INTO `do_log` VALUES ('402880332814085f012814085f410000', 'yuanxx5', null, '2010-04-19 11:06:52', null, '127.0.0.1', '4FF32A97E877F60118F434F77D0DE204');
INSERT INTO `do_log` VALUES ('402880332814981b012814981b460000', 'a', null, '2010-04-19 13:43:52', null, '127.0.0.1', '3FC2DF5B5268181E5DDFFA5035710C5A');
INSERT INTO `do_log` VALUES ('402880332814981b012814a0f45a000b', 'yuanxx5', null, '2010-04-19 13:53:32', null, '127.0.0.1', '3FC2DF5B5268181E5DDFFA5035710C5A');
INSERT INTO `do_log` VALUES ('402880332814adbb012814adbbd60000', 'a', null, '2010-04-19 14:07:29', null, '127.0.0.1', '2BA9610E8128F7B40F8C76924E35CB1F');
INSERT INTO `do_log` VALUES ('402880332814adbb012814b27c820001', 'yuanxx5', null, '2010-04-19 14:12:41', null, '127.0.0.1', '2BA9610E8128F7B40F8C76924E35CB1F');
INSERT INTO `do_log` VALUES ('402880332814adbb012814b5aa0c0002', 'yuanxx5', null, '2010-04-19 14:16:09', null, '127.0.0.1', '2BA9610E8128F7B40F8C76924E35CB1F');
INSERT INTO `do_log` VALUES ('4028803328153ab60128153ab6b70000', 'a', null, '2010-04-19 16:41:29', null, '127.0.0.1', 'D80A8424BFC9778F7F2709DCBE84E4D0');
INSERT INTO `do_log` VALUES ('4028803328153ab60128153b40a80001', 'tsyuanxx', null, '2010-04-19 16:42:04', null, '127.0.0.1', 'D80A8424BFC9778F7F2709DCBE84E4D0');
INSERT INTO `do_log` VALUES ('40288033281543f601281543f6b20000', 'tsyuanxx', null, '2010-04-19 16:51:35', null, '127.0.0.1', 'C907D343921400DC61F62FB9C19E63CA');
INSERT INTO `do_log` VALUES ('4028803328154d530128154d530f0000', 'tsyuanxx', null, '2010-04-19 17:01:48', null, '127.0.0.1', '70277CA22848B7ED1C1C6D74A2D8A702');
INSERT INTO `do_log` VALUES ('402880332815547a012815547a5c0000', 'tsyuanxx', null, '2010-04-19 17:09:37', null, '127.0.0.1', '4914D099B5205E016C8CA99EBA82E2E8');
INSERT INTO `do_log` VALUES ('402880332815583b012815583bc90000', 'tsyuanxx', null, '2010-04-19 17:13:43', null, '127.0.0.1', 'CF33BFE39C690896041EE687C4140D94');
INSERT INTO `do_log` VALUES ('40288033281560df01281560df450000', 'a', null, '2010-04-19 17:23:09', null, '127.0.0.1', 'D77D9959BD1015A1B6EC4396E6F34B56');
INSERT INTO `do_log` VALUES ('40288033281560df012815619b710001', 'tsyuanxx', null, '2010-04-19 17:23:58', null, '127.0.0.1', 'D77D9959BD1015A1B6EC4396E6F34B56');
INSERT INTO `do_log` VALUES ('40288033281570e001281570e0be0000', 'a', null, '2010-04-19 17:40:38', null, '127.0.0.1', '5851522A9900ABE08CC837C8EB8CAFF4');
INSERT INTO `do_log` VALUES ('40288033281570e001281571605e0001', 'tsyuanxx', null, '2010-04-19 17:41:11', null, '127.0.0.1', '5851522A9900ABE08CC837C8EB8CAFF4');
INSERT INTO `do_log` VALUES ('40288033281570e001281586db060011', 'tszuoch', null, '2010-04-19 18:04:39', null, '127.0.0.1', '5851522A9900ABE08CC837C8EB8CAFF4');
INSERT INTO `do_log` VALUES ('402880332815948f012815948f150000', 'tszuoch', null, '2010-04-19 18:19:37', null, '127.0.0.1', '6FAEF32DE3D002E5A3014D09CF34B12B');
INSERT INTO `do_log` VALUES ('402880332815985f012815985f860000', 'tszuoch', null, '2010-04-19 18:23:47', null, '127.0.0.1', '387AF3A21CB1BDF7B58A3CACCE23C251');
INSERT INTO `do_log` VALUES ('402880332815a7a3012815a7a39a0000', 'tszuoch', null, '2010-04-19 18:40:27', '2010-04-19 19:43:25', '127.0.0.1', 'B9A9373CF0F2756A2C395E58DB601009');
INSERT INTO `do_log` VALUES ('402880332819df75012819df75520000', 'a', null, '2010-04-20 14:19:54', null, '127.0.0.1', '6522BA4FB354B75BCC4BFA011E651BF7');
INSERT INTO `do_log` VALUES ('402880332819df75012819e4246a0003', 'tsyuanxx', null, '2010-04-20 14:25:01', null, '127.0.0.1', '6522BA4FB354B75BCC4BFA011E651BF7');
INSERT INTO `do_log` VALUES ('402880332819fa68012819fa686e0000', 'a', null, '2010-04-20 14:49:20', null, '127.0.0.1', '2DFF9DC3AC9CF5BA14C57E551CB391B2');
INSERT INTO `do_log` VALUES ('402880332819fa68012819faa25a0001', 'a', null, '2010-04-20 14:49:35', null, '127.0.0.1', '2DFF9DC3AC9CF5BA14C57E551CB391B2');
INSERT INTO `do_log` VALUES ('40288033281a195901281a1959150000', 'a', null, '2010-04-20 15:23:08', null, '127.0.0.1', '227AE99107C445C7614B656ABDADA9E3');
INSERT INTO `do_log` VALUES ('40288033281a195901281a19a5410001', 'tsyuanxx', null, '2010-04-20 15:23:27', null, '127.0.0.1', '227AE99107C445C7614B656ABDADA9E3');
INSERT INTO `do_log` VALUES ('40288033281a230101281a23019e0000', 'a', null, '2010-04-20 15:33:41', null, '127.0.0.1', '8A16767C3E7C72A1747E646EF8729398');
INSERT INTO `do_log` VALUES ('40288033281a230101281a234f700001', 'tsyuanxx', null, '2010-04-20 15:34:01', null, '127.0.0.1', '8A16767C3E7C72A1747E646EF8729398');
INSERT INTO `do_log` VALUES ('40288033281a322001281a3220390000', 'a', null, '2010-04-20 15:50:12', null, '127.0.0.1', '34A810CB63993022AC3D40E2659911C1');
INSERT INTO `do_log` VALUES ('40288033281a322001281a3266790001', 'tsyuanxx', null, '2010-04-20 15:50:30', null, '127.0.0.1', '34A810CB63993022AC3D40E2659911C1');
INSERT INTO `do_log` VALUES ('40288033281a38d801281a38d8220000', 'tsyuanxx', null, '2010-04-20 15:57:32', null, '127.0.0.1', '7E4E11824338F0BBCB2D49DEB210615C');
INSERT INTO `do_log` VALUES ('40288033281a3ead01281a3eade80000', 'a', null, '2010-04-20 16:03:55', null, '127.0.0.1', '31969B999BFAA51D4A67B22CE004DF74');
INSERT INTO `do_log` VALUES ('40288033281a3ead01281a4782e40001', 'tsyuanxx', null, '2010-04-20 16:13:33', null, '127.0.0.1', '31969B999BFAA51D4A67B22CE004DF74');
INSERT INTO `do_log` VALUES ('40288033281a3ead01281a49a9fb0002', 'tszuoch', null, '2010-04-20 16:15:54', null, '127.0.0.1', '31969B999BFAA51D4A67B22CE004DF74');
INSERT INTO `do_log` VALUES ('40288033281a3ead01281a64a0fe000f', 'tsqianyf', null, '2010-04-20 16:45:22', null, '127.0.0.1', '31969B999BFAA51D4A67B22CE004DF74');
INSERT INTO `do_log` VALUES ('40288033281a3ead01281a6dea6f0017', 'tsyuanxx', null, '2010-04-20 16:55:30', null, '127.0.0.1', '31969B999BFAA51D4A67B22CE004DF74');
INSERT INTO `do_log` VALUES ('40288033281a731a01281a731a9f0000', 'tszuoch', null, '2010-04-20 17:01:10', null, '127.0.0.1', '6F3FFF0A260FDDCEB1543038046A71E7');
INSERT INTO `do_log` VALUES ('40288033281a75fd01281a75fd930000', 'tszuoch', null, '2010-04-20 17:04:19', null, '127.0.0.1', '333B51BCA540BB5147CCD1912F34544A');
INSERT INTO `do_log` VALUES ('40288033281a7d7c01281a7d7ca40000', 'tsyuanxx', null, '2010-04-20 17:12:31', null, '127.0.0.1', '4BDF42330BD52106642EF632DFB777B4');
INSERT INTO `do_log` VALUES ('40288033281a7d7c01281a7e72db0001', 'tszuoch', null, '2010-04-20 17:13:34', null, '127.0.0.1', '4BDF42330BD52106642EF632DFB777B4');
INSERT INTO `do_log` VALUES ('40288033281a80c301281a80c3240000', 'tsyuanxx', null, '2010-04-20 17:16:05', null, '127.0.0.1', '681DCB96801E33291210753C21D21433');
INSERT INTO `do_log` VALUES ('40288033281a80c301281a81acb90001', 'tszuoch', null, '2010-04-20 17:17:05', null, '127.0.0.1', '681DCB96801E33291210753C21D21433');
INSERT INTO `do_log` VALUES ('40288033281a863401281a8634260000', 'tszuoch', null, '2010-04-20 17:22:02', null, '127.0.0.1', 'D51199B2DEF506C93D646CEBF518DB9D');
INSERT INTO `do_log` VALUES ('40288033281a96a901281a96a9f40000', 'tszuoch', null, '2010-04-20 17:40:01', null, '127.0.0.1', 'A1A62E69A75CFC29758A8BCD0CFCDCA0');
INSERT INTO `do_log` VALUES ('40288033281a9ac501281a9ac5870000', 'tszuoch', null, '2010-04-20 17:44:30', null, '127.0.0.1', 'EF37194A514510874C7023D596F5E06A');
INSERT INTO `do_log` VALUES ('40288033281aa4ad01281aa4ad6b0000', 'tsyuanxx', null, '2010-04-20 17:55:19', null, '127.0.0.1', '210D9A59C5DC42AE4D2A71B2E57060FC');
INSERT INTO `do_log` VALUES ('40288033281aa4ad01281aa5df730001', 'tszuoch', null, '2010-04-20 17:56:37', null, '127.0.0.1', '210D9A59C5DC42AE4D2A71B2E57060FC');
INSERT INTO `do_log` VALUES ('40288033281aa4ad01281ab564690003', 'a', null, '2010-04-20 18:13:34', null, '127.0.0.1', '210D9A59C5DC42AE4D2A71B2E57060FC');
INSERT INTO `do_log` VALUES ('40288033281aa4ad01281ac134d3000f', 'tszuoch', null, '2010-04-20 18:26:29', null, '127.0.0.1', '210D9A59C5DC42AE4D2A71B2E57060FC');
INSERT INTO `do_log` VALUES ('40288033281ac4e001281ac4e0760000', 'tsqianyf', null, '2010-04-20 18:30:29', null, '127.0.0.1', '4F8315A605FA20E720B7956ADF551A66');
INSERT INTO `do_log` VALUES ('40288033281ac4e001281ac5c3d10002', 'a', null, '2010-04-20 18:31:27', null, '127.0.0.1', '4F8315A605FA20E720B7956ADF551A66');
INSERT INTO `do_log` VALUES ('40288033281ac4e001281ac5e3400003', 'a', null, '2010-04-20 18:31:36', null, '127.0.0.1', '4F8315A605FA20E720B7956ADF551A66');
INSERT INTO `do_log` VALUES ('40288033281ac4e001281ac80c690006', 'tsqianyf', null, '2010-04-20 18:33:57', null, '127.0.0.1', '4F8315A605FA20E720B7956ADF551A66');
INSERT INTO `do_log` VALUES ('40288033281ad04c01281ad04c690000', 'tsqianyf', null, '2010-04-20 18:42:58', null, '127.0.0.1', 'A689AB8BA3C00690EE73A197EADEEB59');
INSERT INTO `do_log` VALUES ('40288033281e259001281e2590040000', 'tsyuanxx', null, '2010-04-21 10:14:57', null, '127.0.0.1', '31CE48CD6D435977D5F06B1E6744D6B7');
INSERT INTO `do_log` VALUES ('40288033281e3a3901281e3a39a10000', 'tsyuanxx', null, '2010-04-21 10:37:32', null, '127.0.0.1', '62597436BF88949E5E1A6876EB8AD1B7');
INSERT INTO `do_log` VALUES ('40288033281e3eb001281e3eb0060000', 'tsyuanxx', null, '2010-04-21 10:42:24', null, '127.0.0.1', '59EE00B933621293758039E5989347BF');
INSERT INTO `do_log` VALUES ('40288033281e43af01281e43af230000', 'tsyuanxx', null, '2010-04-21 10:47:51', null, '127.0.0.1', '87731C2A57C70F857C9C5838553674F3');
INSERT INTO `do_log` VALUES ('40288033281e46c001281e46c0b90000', 'tsyuanxx', null, '2010-04-21 10:51:13', null, '127.0.0.1', '122FD4293A95D697B42585A77511BCE2');
INSERT INTO `do_log` VALUES ('40288033281e52f601281e52f6e20000', 'tsyuanxx', null, '2010-04-21 11:04:33', null, '127.0.0.1', 'D25F9954DD5E61F6D0D9F26A5925B1A0');
INSERT INTO `do_log` VALUES ('40288033281e69e801281e69e8f70000', 'a', null, '2010-04-21 11:29:37', null, '127.0.0.1', 'A0922E75180EDA3A65118AD557353CF2');
INSERT INTO `do_log` VALUES ('40288033281e69e801281e711b6f0003', 'yuanxx5', null, '2010-04-21 11:37:28', null, '127.0.0.1', 'A0922E75180EDA3A65118AD557353CF2');
INSERT INTO `do_log` VALUES ('40288033281e69e801281e75b9a00004', 'tsyuanxx', null, '2010-04-21 11:42:31', null, '127.0.0.1', 'A0922E75180EDA3A65118AD557353CF2');
INSERT INTO `do_log` VALUES ('40288033281ef1ba01281ef1ba120000', 'a', null, '2010-04-21 13:57:58', null, '127.0.0.1', 'FB58C99DB91DE9ECA3BE93FFCD752894');
INSERT INTO `do_log` VALUES ('40288033281ef1ba01281ef81beb0005', 'tsyuanxx', null, '2010-04-21 14:04:56', null, '127.0.0.1', 'FB58C99DB91DE9ECA3BE93FFCD752894');
INSERT INTO `do_log` VALUES ('40288033281f01c601281f01c6870000', 'tsyuanxx', null, '2010-04-21 14:15:29', null, '127.0.0.1', '97A8312FAE3A5D2323CD0F2A4C0C5760');
INSERT INTO `do_log` VALUES ('40288033281f096401281f0964f80000', 'a', null, '2010-04-21 14:23:49', null, '127.0.0.1', 'A47DCDC8576B0DF09808BDFAAF8A0CE3');
INSERT INTO `do_log` VALUES ('40288033281f096401281f09b8190001', 'tsyuanxx', null, '2010-04-21 14:24:10', null, '127.0.0.1', 'A47DCDC8576B0DF09808BDFAAF8A0CE3');
INSERT INTO `do_log` VALUES ('402880332823222301282322234d0000', 'tsqianyf', null, '2010-04-22 09:29:19', null, '127.0.0.1', '532E69AB04036066DCE51509749C7E8B');
INSERT INTO `do_log` VALUES ('402880332823222301282327a1bc0001', 'tsqianyf', null, '2010-04-22 09:35:19', null, '127.0.0.1', '532E69AB04036066DCE51509749C7E8B');
INSERT INTO `do_log` VALUES ('40288033282477eb01282477eb170000', 'a', null, '2010-04-22 15:42:38', '2010-04-22 16:13:20', '127.0.0.1', '3041027B5BAF4F7CDF74FBAC7A93B9AC');
INSERT INTO `do_log` VALUES ('40288033282838830128283883b00000', 'yuanxx5', null, '2010-04-23 09:11:52', '2010-04-23 10:40:40', '127.0.0.1', '8D5EFACACA45CAC4B237815F1987F2EF');
INSERT INTO `do_log` VALUES ('4028803328283883012829c7e44a011a', 'a', null, '2010-04-23 16:28:05', null, '127.0.0.1', '072FD4D5630A5C7D5E326ABA2729E26D');
INSERT INTO `do_log` VALUES ('4028803328283883012829d9db2a012e', 'yuanxx5', null, '2010-04-23 16:47:42', null, '127.0.0.1', '072FD4D5630A5C7D5E326ABA2729E26D');
INSERT INTO `do_log` VALUES ('402880332829f01e012829f01e140000', 'a', null, '2010-04-23 17:12:01', null, '127.0.0.1', '3D125C62F6F98BB75C8F2CFF9AC6BA29');
INSERT INTO `do_log` VALUES ('402880332829f01e012829f0b0800001', 'yuanxx5', null, '2010-04-23 17:12:39', null, '127.0.0.1', '3D125C62F6F98BB75C8F2CFF9AC6BA29');
INSERT INTO `do_log` VALUES ('402880332829f8a1012829f8a1860000', 'a', null, '2010-04-23 17:21:19', null, '127.0.0.1', '6E17C130D5582460CC15AA6AD2A9D746');
INSERT INTO `do_log` VALUES ('402880332829f8a1012829fc66ac0005', 'yuanxx5', null, '2010-04-23 17:25:26', null, '127.0.0.1', '6E17C130D5582460CC15AA6AD2A9D746');
INSERT INTO `do_log` VALUES ('40288033282a87c201282a87c2640000', 'a', null, '2010-04-23 19:57:39', null, '127.0.0.1', 'D09BA3C2647C8B77E44A6BF85E1F2229');
INSERT INTO `do_log` VALUES ('40288033282aacbc01282aacbc840000', 'a', null, '2010-04-23 20:38:03', null, '127.0.0.1', 'C9E122CF114865B2ECBE832C746D6C34');
INSERT INTO `do_log` VALUES ('40288033282aacbc01282aad424e0001', 'yuanxx5', null, '2010-04-23 20:38:37', null, '127.0.0.1', 'C9E122CF114865B2ECBE832C746D6C34');
INSERT INTO `do_log` VALUES ('40288033282aaffa01282aaffa890000', 'a', null, '2010-04-23 20:41:35', null, '127.0.0.1', '0431CCB8D402CB989BB021890C13198C');
INSERT INTO `do_log` VALUES ('40288033282aaffa01282ab05d2b0001', 'yuanxx5', null, '2010-04-23 20:42:00', null, '127.0.0.1', '0431CCB8D402CB989BB021890C13198C');
INSERT INTO `do_log` VALUES ('40288033282ab2cf01282ab2cf630000', 'a', null, '2010-04-23 20:44:41', null, '127.0.0.1', '3A2D4EE6A598B3745B4556C24A6EB8BA');
INSERT INTO `do_log` VALUES ('40288033282ab2cf01282ab367da0001', 'yuanxx5', null, '2010-04-23 20:45:20', null, '127.0.0.1', '3A2D4EE6A598B3745B4556C24A6EB8BA');
INSERT INTO `do_log` VALUES ('402880332837c973012837c9733e0000', 'a', null, '2010-04-26 09:44:28', null, '127.0.0.1', 'F13F5871D47C253D534224FE9D7D0F13');
INSERT INTO `do_log` VALUES ('402880332837c973012837caa0e10001', 'yuanxx5', null, '2010-04-26 09:45:45', null, '127.0.0.1', 'F13F5871D47C253D534224FE9D7D0F13');
INSERT INTO `do_log` VALUES ('402880332837d9dd012837d9dda20000', 'a', null, '2010-04-26 10:02:24', null, '127.0.0.1', 'DC9998FB83B0D57C2858D514F7F125A9');
INSERT INTO `do_log` VALUES ('402880332837d9dd012837da1e160001', 'yuanxx5', null, '2010-04-26 10:02:41', null, '127.0.0.1', 'DC9998FB83B0D57C2858D514F7F125A9');
INSERT INTO `do_log` VALUES ('4028803328380d8b0128380d8b6f0000', 'a', null, '2010-04-26 10:58:51', null, '127.0.0.1', 'E06C076E3C95898D1DAADB6E06A26C80');
INSERT INTO `do_log` VALUES ('4028803328380d8b0128380dd3640001', 'yuanxx5', null, '2010-04-26 10:59:09', null, '127.0.0.1', 'E06C076E3C95898D1DAADB6E06A26C80');
INSERT INTO `do_log` VALUES ('4028803328381ea90128381ea9a20000', 'a', null, '2010-04-26 11:17:33', null, '127.0.0.1', '0782E416B2B28C4A2C3A9742CB4F1D67');
INSERT INTO `do_log` VALUES ('4028803328381ea90128381eff630001', 'yuanxx5', null, '2010-04-26 11:17:55', null, '127.0.0.1', '0782E416B2B28C4A2C3A9742CB4F1D67');
INSERT INTO `do_log` VALUES ('402880332838314501283831456e0000', 'a', null, '2010-04-26 11:37:52', null, '127.0.0.1', '01C1C22E2BF542C6AB9C1E3E3731A938');
INSERT INTO `do_log` VALUES ('402880332838314501283831865f0001', 'yuanxx5', null, '2010-04-26 11:38:09', null, '127.0.0.1', '01C1C22E2BF542C6AB9C1E3E3731A938');
INSERT INTO `do_log` VALUES ('40288033283833fd01283833fda80000', 'yuanxx5', null, '2010-04-26 11:40:51', null, '127.0.0.1', 'BF358A8A3D44DAB62F7283B986E92C0D');
INSERT INTO `do_log` VALUES ('40288033283833fd0128383412590001', 'yuanxx5', null, '2010-04-26 11:40:56', null, '127.0.0.1', 'BF358A8A3D44DAB62F7283B986E92C0D');
INSERT INTO `do_log` VALUES ('4028803328383a8b0128383a8b250000', 'yuanxx5', null, '2010-04-26 11:48:00', null, '127.0.0.1', '0056EBD66EEB6FF1E1A71E40786AED82');
INSERT INTO `do_log` VALUES ('4028803328383a8b0128383aa3be0001', 'yuanxx5', null, '2010-04-26 11:48:06', null, '127.0.0.1', '0056EBD66EEB6FF1E1A71E40786AED82');
INSERT INTO `do_log` VALUES ('4028803328385cdc0128385cdc3e0000', 'yuanxx5', null, '2010-04-26 12:25:29', null, '127.0.0.1', 'E276A06A4A5C8E653F64A83F8A8159D6');
INSERT INTO `do_log` VALUES ('40288033283862f001283862f0070000', 'yuanxx5', null, '2010-04-26 12:32:07', null, '127.0.0.1', '19CB497B64EB53AFC837623E9AFACC82');
INSERT INTO `do_log` VALUES ('4028803328386a490128386a49410000', 'yuanxx5', null, '2010-04-26 12:40:09', null, '127.0.0.1', '8308ED5F0816F74D08C89CCEF0D5295F');
INSERT INTO `do_log` VALUES ('402880332838a0b0012838a0b0220000', 'yuanxx5', null, '2010-04-26 13:39:34', null, '127.0.0.1', 'B652989EBA7E283EC026E2048E628218');
INSERT INTO `do_log` VALUES ('402880332838abc0012838abc0d60000', 'yuanxx5', null, '2010-04-26 13:51:39', null, '127.0.0.1', '0E2AC527945F0AFEF54D13E8194E9CAB');
INSERT INTO `do_log` VALUES ('402880332839325f012839325faa0000', 'yuanxx5', null, '2010-04-26 16:18:42', null, '127.0.0.1', 'CCB0C8CAEA82EA831E62EFE31FEDECD7');
INSERT INTO `do_log` VALUES ('4028803328393c350128393c35ea0000', 'yuanxx5', null, '2010-04-26 16:29:27', null, '127.0.0.1', 'EA3087116E82B1CEAEC17D250F5A3B7E');
INSERT INTO `do_log` VALUES ('4028803328393c350128394e6ed50001', 'a', null, '2010-04-26 16:49:21', null, '127.0.0.1', 'EA3087116E82B1CEAEC17D250F5A3B7E');
INSERT INTO `do_log` VALUES ('40288033283964a501283964a5990000', 'a', null, '2010-04-26 17:13:37', null, '127.0.0.1', '454C1968C7EDB76A48E4E826BBE90E3C');
INSERT INTO `do_log` VALUES ('40288033283964a501283964f0db0001', 'yuanxx5', null, '2010-04-26 17:13:56', null, '127.0.0.1', '454C1968C7EDB76A48E4E826BBE90E3C');
INSERT INTO `do_log` VALUES ('402880332839765f012839765f900000', 'yuanxx5', null, '2010-04-26 17:32:58', '2010-04-26 17:38:53', '127.0.0.1', 'D44EAA013ABA2A94B356C5FEF899D24F');
INSERT INTO `do_log` VALUES ('402880332839765f01283976b9590001', 'a', null, '2010-04-26 17:33:21', '2010-04-26 17:38:53', '127.0.0.1', 'D44EAA013ABA2A94B356C5FEF899D24F');
INSERT INTO `do_log` VALUES ('402880332839765f0128397a61810009', 'yuanxx4', null, '2010-04-26 17:37:21', '2010-04-26 17:38:53', '127.0.0.1', 'D44EAA013ABA2A94B356C5FEF899D24F');
INSERT INTO `do_log` VALUES ('402880332839765f0128397bf82e000f', 'tsyuanxx', null, '2010-04-26 17:39:05', '2010-04-26 17:39:11', '127.0.0.1', 'A9DFD58100E738E68E6B3B4EE12E56C8');
INSERT INTO `do_log` VALUES ('402880332839765f0128397c445a0010', 'tsqianyf', null, '2010-04-26 17:39:24', null, '127.0.0.1', 'B9668D6F0C34D45C99F4A212ECFEDA58');
INSERT INTO `do_log` VALUES ('40288033283de58a01283de58ad60000', 'a', null, '2010-04-27 14:12:53', null, '127.0.0.1', '7DC59FD34E5E0694CCBAC0383BDA3A8C');
INSERT INTO `do_log` VALUES ('40288033283de58a01283de5a15b0001', 'a', null, '2010-04-27 14:12:58', null, '127.0.0.1', '7DC59FD34E5E0694CCBAC0383BDA3A8C');
INSERT INTO `do_log` VALUES ('40288033283de58a01283de5eb640002', 'tsyuanxx', null, '2010-04-27 14:13:17', null, '127.0.0.1', '7DC59FD34E5E0694CCBAC0383BDA3A8C');
INSERT INTO `do_log` VALUES ('40288033283deb6001283deb601f0000', 'tsyuanxx', null, '2010-04-27 14:19:15', null, '127.0.0.1', '89BF7BE0841170448834DE3FE2729107');
INSERT INTO `do_log` VALUES ('40288033283deb6001283dedde7d0001', 'a', null, '2010-04-27 14:21:58', null, '127.0.0.1', '89BF7BE0841170448834DE3FE2729107');
INSERT INTO `do_log` VALUES ('40288033283deb6001283df02ddb0002', 'tsyuanxx', null, '2010-04-27 14:24:30', null, '127.0.0.1', '89BF7BE0841170448834DE3FE2729107');
INSERT INTO `do_log` VALUES ('40288033283df50f01283df50f5e0000', 'tsyuanxx', null, '2010-04-27 14:29:50', '2010-04-27 14:37:41', '127.0.0.1', 'D5574FD9C8143F913E79998766CEAA8A');
INSERT INTO `do_log` VALUES ('40288033283df50f01283dfc681b0001', 'a', null, '2010-04-27 14:37:51', null, '127.0.0.1', '7036CA104B9252EAA4592E852FB03694');
INSERT INTO `do_log` VALUES ('40288033283df50f01283dfcac680002', 'yuanxx5', null, '2010-04-27 14:38:09', null, '127.0.0.1', '7036CA104B9252EAA4592E852FB03694');
INSERT INTO `do_log` VALUES ('40288033283e131701283e13174c0000', 'a', null, '2010-04-27 15:02:38', '2010-04-27 16:27:46', '127.0.0.1', 'A746D0ACE185419DC89E661C0C7E6482');
INSERT INTO `do_log` VALUES ('40288033283e131701283e13d30a0001', 'yuanxx5', null, '2010-04-27 15:03:26', '2010-04-27 16:27:46', '127.0.0.1', 'A746D0ACE185419DC89E661C0C7E6482');
INSERT INTO `do_log` VALUES ('40288033283e131701283e406f160057', 'tszhangwj', null, '2010-04-27 15:52:09', '2010-04-27 16:27:46', '127.0.0.1', 'A746D0ACE185419DC89E661C0C7E6482');
INSERT INTO `do_log` VALUES ('4028803328431b6f0128431b6f560000', 'a', null, '2010-04-28 14:29:51', '2010-04-28 15:03:09', '127.0.0.1', '553C06DDF63BB76320699074CA8B318C');
INSERT INTO `do_log` VALUES ('4028803328431b6f0128431bb8a40001', 'yuanxx5', null, '2010-04-28 14:30:09', '2010-04-28 15:03:09', '127.0.0.1', '553C06DDF63BB76320699074CA8B318C');
INSERT INTO `do_log` VALUES ('402880332843b6cf012843b6cf950000', 'a', null, '2010-04-28 17:19:33', null, '127.0.0.1', '1CCEDC6D9CCB8F3FB0B3115E22425A1E');
INSERT INTO `do_log` VALUES ('402880332843b6cf012843b85c400001', 'tsyuanxx', null, '2010-04-28 17:21:15', null, '127.0.0.1', '1CCEDC6D9CCB8F3FB0B3115E22425A1E');
INSERT INTO `do_log` VALUES ('402880332843be52012843be52300000', 'a', null, '2010-04-28 17:27:46', null, '127.0.0.1', '01E5C61FC1BF8469F649EF1FD5B4D1F6');
INSERT INTO `do_log` VALUES ('402880332843be52012843bfe0430001', 'tsyuanxx', null, '2010-04-28 17:29:28', null, '127.0.0.1', '01E5C61FC1BF8469F649EF1FD5B4D1F6');
INSERT INTO `do_log` VALUES ('402880332843c6cd012843c6cd550000', 'tsyuanxx', null, '2010-04-28 17:37:01', null, '127.0.0.1', '93511601A238719A32AC2B39B8EF8947');
INSERT INTO `do_log` VALUES ('402880332843ccaa012843ccaa300000', 'tsyuanxx', null, '2010-04-28 17:43:26', null, '127.0.0.1', '44475587A85A0912B0A984691C11DEA7');
INSERT INTO `do_log` VALUES ('402880332843cff1012843cff13c0000', 'tsyuanxx', null, '2010-04-28 17:47:00', null, '127.0.0.1', 'E843F8C3039BED328B72B4EF95307774');
INSERT INTO `do_log` VALUES ('402880332843f0e3012843f0e3130000', 'tsyuanxx', null, '2010-04-28 18:22:59', null, '127.0.0.1', 'FED1E16C16424F46D74F44EA69FC5ED9');
INSERT INTO `do_log` VALUES ('402880332843f718012843f718eb0000', 'tsyuanxx', null, '2010-04-28 18:29:46', null, '127.0.0.1', '1EEEE7ACEC701CF81459F48B7BB96562');
INSERT INTO `do_log` VALUES ('40288033284725ff01284725fff80000', 'tsyuanxx', null, '2010-04-29 09:19:52', null, '127.0.0.1', '0338E321CB48C26583F833945DED8ABD');
INSERT INTO `do_log` VALUES ('40288033284728a901284728a9ea0000', 'tsyuanxx', null, '2010-04-29 09:22:47', '2010-04-29 09:57:27', '127.0.0.1', '07B0721CFC2D77F11B71082761B2471E');
INSERT INTO `do_log` VALUES ('40288033284779d301284779d3fe0000', 'tsqianyf', null, '2010-04-29 10:51:26', null, '127.0.0.1', '42F7A35933A24B15828B9B40E86DB9C3');
INSERT INTO `do_log` VALUES ('4028803328478d480128478d48560000', 'tsqianyf', null, '2010-04-29 11:12:41', null, '127.0.0.1', '1A1AA8BE64B8B7B8A856C09FDC80F77A');
INSERT INTO `do_log` VALUES ('4028803328479f290128479f295d0000', 'a', null, '2010-04-29 11:32:12', null, '127.0.0.1', '5FE44B12F3FCA7416C65D48E0BF23B65');
INSERT INTO `do_log` VALUES ('402880332847bd53012847bd53e60000', 'a', null, '2010-04-29 12:05:09', null, '127.0.0.1', '951B3ED040909F5C0F75443713143D62');
INSERT INTO `do_log` VALUES ('402880332847bd53012847bf420a0001', 'tsqianyf', null, '2010-04-29 12:07:16', null, '127.0.0.1', '951B3ED040909F5C0F75443713143D62');
INSERT INTO `do_log` VALUES ('402880332847c559012847c5590f0000', 'a', null, '2010-04-29 12:13:55', '2010-04-29 13:20:54', '127.0.0.1', 'E5D5FB2F273885186189CBDE515FE747');
INSERT INTO `do_log` VALUES ('402880332847c559012847c691700001', 'tsqianyf', null, '2010-04-29 12:15:15', '2010-04-29 13:20:54', '127.0.0.1', 'E5D5FB2F273885186189CBDE515FE747');
INSERT INTO `do_log` VALUES ('402880332847c559012847e432f30002', 'a', null, '2010-04-29 12:47:37', '2010-04-29 13:20:54', '127.0.0.1', 'E5D5FB2F273885186189CBDE515FE747');
INSERT INTO `do_log` VALUES ('402880332847c559012847e507980003', 'tsqianyf', null, '2010-04-29 12:48:31', '2010-04-29 13:20:54', '127.0.0.1', 'E5D5FB2F273885186189CBDE515FE747');
INSERT INTO `do_log` VALUES ('402880332847c559012848156c730004', 'a', null, '2010-04-29 13:41:23', '2010-04-29 14:19:57', '127.0.0.1', '32DDAA5A5ADAB19189C1C952075118CD');
INSERT INTO `do_log` VALUES ('402880332847c5590128481c48110005', 'tsqianyf', null, '2010-04-29 13:48:52', '2010-04-29 14:19:57', '127.0.0.1', '32DDAA5A5ADAB19189C1C952075118CD');
INSERT INTO `do_log` VALUES ('40288033284841610128484161130000', 'a', null, '2010-04-29 14:29:23', '2010-04-29 14:58:39', '127.0.0.1', '1D591366D68448EA5CAC89EF26E363A7');
INSERT INTO `do_log` VALUES ('402880332848416101284849f8b80002', 'tszuoch', null, '2010-04-29 14:38:46', '2010-04-29 14:58:39', '127.0.0.1', '1D591366D68448EA5CAC89EF26E363A7');
INSERT INTO `do_log` VALUES ('40288033284841610128485c5fa80003', 'tsqianyf', null, '2010-04-29 14:58:53', null, '127.0.0.1', '7F4FCEF720A566A3DABA3BD793869CD9');
INSERT INTO `do_log` VALUES ('402880332848680201284868023c0000', 'a', null, '2010-04-29 15:11:35', null, '127.0.0.1', '443D5ECB9E2D60A05C59FE7137E57506');
INSERT INTO `do_log` VALUES ('40288033284868020128486869fe0001', 'tsqianyf', null, '2010-04-29 15:12:02', null, '127.0.0.1', '443D5ECB9E2D60A05C59FE7137E57506');
INSERT INTO `do_log` VALUES ('40288033284870ca01284870ca380000', 'a', null, '2010-04-29 15:21:11', null, '127.0.0.1', 'E83BF90F96508E20A9FF8BCFB7379C13');
INSERT INTO `do_log` VALUES ('40288033284870ca0128487136be0001', 'tsqianyf', null, '2010-04-29 15:21:38', null, '127.0.0.1', 'E83BF90F96508E20A9FF8BCFB7379C13');
INSERT INTO `do_log` VALUES ('402880332848b0dc012848b0dcde0000', 'a', null, '2010-04-29 16:31:10', null, '127.0.0.1', '14DF06128101B8EF850ADE0C61A3EA43');
INSERT INTO `do_log` VALUES ('402880332848b0dc012848b4432b0002', 'tszuoch', null, '2010-04-29 16:34:52', null, '127.0.0.1', '14DF06128101B8EF850ADE0C61A3EA43');
INSERT INTO `do_log` VALUES ('402880332848c458012848c458d80000', 'tszuoch', null, '2010-04-29 16:52:27', '2010-04-29 16:53:16', '127.0.0.1', 'AB60926A0F251549CF28F169E38DE900');
INSERT INTO `do_log` VALUES ('402880332848c458012848c557ab0001', 'a', null, '2010-04-29 16:53:32', null, '127.0.0.1', '5BD865D60D6EA88798CCF10078971EAE');
INSERT INTO `do_log` VALUES ('402880332848c458012848c663100002', 'tszuoch', null, '2010-04-29 16:54:40', null, '127.0.0.1', '5BD865D60D6EA88798CCF10078971EAE');
INSERT INTO `do_log` VALUES ('402880332848d37e012848d37ec60000', 'a', null, '2010-04-29 17:08:59', null, '127.0.0.1', 'A01581270C324EF80899681A1E36F00B');
INSERT INTO `do_log` VALUES ('402880332848d37e012848d3d1990001', 'tszuoch', null, '2010-04-29 17:09:20', null, '127.0.0.1', 'A01581270C324EF80899681A1E36F00B');
INSERT INTO `do_log` VALUES ('402880332849074c012849074c6f0000', 'tszuoch', null, '2010-04-29 18:05:34', null, '127.0.0.1', 'B2C92995AE399E03B3D48E353075BD8E');
INSERT INTO `do_log` VALUES ('4028803328490bbe0128490bbe6f0000', 'tszuoch', null, '2010-04-29 18:10:26', null, '127.0.0.1', '697B89ADF5F600FC3B8025BEDFF4031D');
INSERT INTO `do_log` VALUES ('40288033284914590128491459ae0000', 'tszuoch', null, '2010-04-29 18:19:50', null, '127.0.0.1', '231C81FC9866A52988B60531833FE004');
INSERT INTO `do_log` VALUES ('4028803328491af80128491af8a00000', 'tszuoch', null, '2010-04-29 18:27:04', null, '127.0.0.1', '38483BB2A9B2D151E9FA3CAFF84840C1');
INSERT INTO `do_log` VALUES ('40288033284c1c4501284c1c452e0000', 'tszuoch', null, '2010-04-30 08:27:20', null, '127.0.0.1', '1DE6838B6F1D1C99D0B267EAA024E615');
INSERT INTO `do_log` VALUES ('40288033284c207101284c2071a90000', 'tszuoch', null, '2010-04-30 08:31:54', null, '127.0.0.1', '3E745008D4C5F84C381410BC988E4C6E');
INSERT INTO `do_log` VALUES ('40288033284c614901284c6149160000', 'tsqianyf', null, '2010-04-30 09:42:43', null, '127.0.0.1', 'E1E7E1F6A4F5939B47A9BACBB83AFD7C');
INSERT INTO `do_log` VALUES ('40288033284c614901284c6262560001', 'a', null, '2010-04-30 09:43:55', null, '127.0.0.1', 'E1E7E1F6A4F5939B47A9BACBB83AFD7C');
INSERT INTO `do_log` VALUES ('40288033284c614901284c63ba450002', 'tsqianyf', null, '2010-04-30 09:45:23', null, '127.0.0.1', 'E1E7E1F6A4F5939B47A9BACBB83AFD7C');
INSERT INTO `do_log` VALUES ('40288033284c6df901284c6df9220000', 'tsqianyf', null, '2010-04-30 09:56:35', null, '127.0.0.1', 'B94F6C7E5856FE0D8DB3600054C7B426');
INSERT INTO `do_log` VALUES ('40288033284c6df901284c6fe5cf0001', 'a', null, '2010-04-30 09:58:41', null, '127.0.0.1', 'B94F6C7E5856FE0D8DB3600054C7B426');
INSERT INTO `do_log` VALUES ('40288033284c6df901284c71e43f0002', 'tsqianyf', null, '2010-04-30 10:00:52', null, '127.0.0.1', 'B94F6C7E5856FE0D8DB3600054C7B426');
INSERT INTO `do_log` VALUES ('40288033284c767b01284c767b2c0000', 'tsqianyf', null, '2010-04-30 10:05:52', '2010-04-30 10:12:10', '127.0.0.1', 'FCB9A886C8E12F32CBA8C853EC3E1F57');
INSERT INTO `do_log` VALUES ('40288033284c767b01284c7c68c00001', 'a', null, '2010-04-30 10:12:21', null, '127.0.0.1', 'C12D84A8E3D71E8296B5573A55D330C9');
INSERT INTO `do_log` VALUES ('40288033284c767b01284c7de0d90002', 'tsqianyf', null, '2010-04-30 10:13:57', null, '127.0.0.1', 'C12D84A8E3D71E8296B5573A55D330C9');
INSERT INTO `do_log` VALUES ('40288033284c767b01284c8323490003', 'tszuoch', null, '2010-04-30 10:19:42', null, '127.0.0.1', 'C12D84A8E3D71E8296B5573A55D330C9');
INSERT INTO `do_log` VALUES ('40288033284c87a601284c87a6120000', 'a', null, '2010-04-30 10:24:38', null, '127.0.0.1', 'C3C41AAC2CED4BD9D5D84F27496163DF');
INSERT INTO `do_log` VALUES ('40288033284c87a601284c8ac8dd0003', 'tszuoch', null, '2010-04-30 10:28:03', null, '127.0.0.1', 'C3C41AAC2CED4BD9D5D84F27496163DF');
INSERT INTO `do_log` VALUES ('40288033284c8f4f01284c8f4f110000', 'a', null, '2010-04-30 10:33:00', null, '127.0.0.1', 'DC5B3BFA849105A434DB4822D10EEBAE');
INSERT INTO `do_log` VALUES ('40288033284c8f4f01284c9034030001', 'tszuoch', null, '2010-04-30 10:33:58', null, '127.0.0.1', 'DC5B3BFA849105A434DB4822D10EEBAE');
INSERT INTO `do_log` VALUES ('40288033284c94a901284c94a9db0000', 'a', null, '2010-04-30 10:38:50', null, '127.0.0.1', 'BED13E8877C0928D40C85F47A63A4EF7');
INSERT INTO `do_log` VALUES ('40288033284c94a901284c9504110001', 'tszuoch', null, '2010-04-30 10:39:13', null, '127.0.0.1', 'BED13E8877C0928D40C85F47A63A4EF7');
INSERT INTO `do_log` VALUES ('40288033284c99f401284c99f44a0000', 'a', null, '2010-04-30 10:44:37', null, '127.0.0.1', '2758F629681C52A31C3C29C4F5F8F06A');
INSERT INTO `do_log` VALUES ('40288033284c99f401284c9ae7930001', 'tszuoch', null, '2010-04-30 10:45:39', null, '127.0.0.1', '2758F629681C52A31C3C29C4F5F8F06A');
INSERT INTO `do_log` VALUES ('40288033284c9f6101284c9f61150000', 'a', null, '2010-04-30 10:50:33', null, '127.0.0.1', 'B562EBDA757DD8C635F19701C87E4080');
INSERT INTO `do_log` VALUES ('40288033284c9f6101284ca0b1d00001', 'tszuoch', null, '2010-04-30 10:51:59', null, '127.0.0.1', 'B562EBDA757DD8C635F19701C87E4080');
INSERT INTO `do_log` VALUES ('40288033284ca46b01284ca46b4e0000', 'tszuoch', null, '2010-04-30 10:56:03', null, '127.0.0.1', '04015A5A9F34388451194CE5A3A3A44D');
INSERT INTO `do_log` VALUES ('40288033284cacd201284cacd22f0000', 'tszuoch', null, '2010-04-30 11:05:14', null, '127.0.0.1', 'AC1670D9E03B309AF214D55DFDD039B1');
INSERT INTO `do_log` VALUES ('40288033284cb40d01284cb40dde0000', 'a', null, '2010-04-30 11:13:08', null, '127.0.0.1', 'F2D2DB387490E19B988B6F70A9DD43AC');
INSERT INTO `do_log` VALUES ('40288033284cb40d01284cb45e8e0001', 'tszuoch', null, '2010-04-30 11:13:28', null, '127.0.0.1', 'F2D2DB387490E19B988B6F70A9DD43AC');
INSERT INTO `do_log` VALUES ('40288033284cc9df01284cc9dfed0000', 'tszuoch', null, '2010-04-30 11:36:58', null, '127.0.0.1', '0B03BF9804EEB35631B5D0FE2075C658');
INSERT INTO `do_log` VALUES ('40288033284cd8bd01284cd8bdc60000', 'tszuoch', null, '2010-04-30 11:53:12', null, '127.0.0.1', '3FB9A1EA6A8AB653B539A2D3F9D10AC6');
INSERT INTO `do_log` VALUES ('40288033284cdc0101284cdc01490000', 'tsqianyf', null, '2010-04-30 11:56:46', '2010-04-30 12:27:34', '127.0.0.1', 'ECF72870AD3E7368ED08D6801235C4DE');
INSERT INTO `do_log` VALUES ('40288033284cdc0101284d3688d20001', 'a', null, '2010-04-30 13:35:39', null, '127.0.0.1', '6FDA800CEEA146283DCAA96D01030C93');
INSERT INTO `do_log` VALUES ('40288033284cdc0101284d36c9170002', 'tszuoch', null, '2010-04-30 13:35:55', null, '127.0.0.1', '6FDA800CEEA146283DCAA96D01030C93');
INSERT INTO `do_log` VALUES ('40288033284cdc0101284d3795410003', 'yuanxx5', null, '2010-04-30 13:36:47', null, '127.0.0.1', '6FDA800CEEA146283DCAA96D01030C93');
INSERT INTO `do_log` VALUES ('40288033284cdc0101284d3a2fd20005', 'tszuoch', null, '2010-04-30 13:39:38', null, '127.0.0.1', '6FDA800CEEA146283DCAA96D01030C93');
INSERT INTO `do_log` VALUES ('40288033284cdc0101284d45009e0006', 'tsqianyf', null, '2010-04-30 13:51:27', null, '127.0.0.1', '6FDA800CEEA146283DCAA96D01030C93');
INSERT INTO `do_log` VALUES ('40288033284d4eeb01284d4eebcd0000', 'tsqianyf', null, '2010-04-30 14:02:17', null, '127.0.0.1', '2CA359A78C02B976388FB5184254BEB1');
INSERT INTO `do_log` VALUES ('40288033284d548001284d5480a30000', 'tsqianyf', null, '2010-04-30 14:08:23', null, '127.0.0.1', '6D06F6028990C42A256EABA20D4C5DE4');
INSERT INTO `do_log` VALUES ('40288033284d576e01284d576e830000', 'tsqianyf', null, '2010-04-30 14:11:35', null, '127.0.0.1', 'B926FBDEED9674D09F277788BB97F4BC');
INSERT INTO `do_log` VALUES ('40288033284d5b2a01284d5b2a630000', 'tsqianyf', null, '2010-04-30 14:15:40', null, '127.0.0.1', '4436FCB84161D028176516571E96B47F');
INSERT INTO `do_log` VALUES ('40288033284d5d9401284d5d948d0000', 'tsqianyf', null, '2010-04-30 14:18:18', '2010-04-30 14:49:18', '127.0.0.1', 'E97861F215905B54B11F27D0BCD2FA0A');
INSERT INTO `do_log` VALUES ('40288033284d5d9401284d805b620001', 'tsqianyf', null, '2010-04-30 14:56:17', null, '127.0.0.1', 'B116AC971723F7A0F28BE21CA800A9B0');
INSERT INTO `do_log` VALUES ('40288033284d86e301284d86e3ed0000', 'tsqianyf', null, '2010-04-30 15:03:25', '2010-04-30 15:35:32', '127.0.0.1', '8A8F77272DB8F669470FC4DF5985787E');
INSERT INTO `do_log` VALUES ('402880332860d8ca012860d8ca030000', 'a', null, '2010-05-04 09:05:39', null, '127.0.0.1', 'ED7943FF2BD79219B6C358E039A95A4D');
INSERT INTO `do_log` VALUES ('40288033286102c301286102c3dd0000', 'a', null, '2010-05-04 09:51:30', null, '127.0.0.1', '8F751C5A103DD35A8AC482E5C3031257');
INSERT INTO `do_log` VALUES ('40288033286102c301286103076e0001', 'yuanxx5', null, '2010-05-04 09:51:48', null, '127.0.0.1', '8F751C5A103DD35A8AC482E5C3031257');
INSERT INTO `do_log` VALUES ('4028803328610bf60128610bf6e70000', 'a', null, '2010-05-04 10:01:33', null, '127.0.0.1', '1A959DAB82DA097E43E4440EBF5EABF1');
INSERT INTO `do_log` VALUES ('4028803328610bf60128610c11360001', 'a', null, '2010-05-04 10:01:40', null, '127.0.0.1', '1A959DAB82DA097E43E4440EBF5EABF1');
INSERT INTO `do_log` VALUES ('4028803328610bf60128610c71b50002', 'yuanxx5', null, '2010-05-04 10:02:05', null, '127.0.0.1', '1A959DAB82DA097E43E4440EBF5EABF1');
INSERT INTO `do_log` VALUES ('40288033286111e801286111e8c10000', 'a', null, '2010-05-04 10:08:03', null, '127.0.0.1', '3E26D9CBA6764AD36CEFD8ADA71CA4C7');
INSERT INTO `do_log` VALUES ('40288033286111e80128611223d60001', 'yuanxx5', null, '2010-05-04 10:08:18', null, '127.0.0.1', '3E26D9CBA6764AD36CEFD8ADA71CA4C7');
INSERT INTO `do_log` VALUES ('40288033286116360128611636900000', 'yuanxx5', null, '2010-05-04 10:12:45', null, '127.0.0.1', 'E559DC25A65280494C93793A0FB40B86');
INSERT INTO `do_log` VALUES ('402880332861163601286118f0120002', 'yuanxx5', null, '2010-05-04 10:15:43', null, '127.0.0.1', 'E559DC25A65280494C93793A0FB40B86');
INSERT INTO `do_log` VALUES ('4028803328616be90128616be9c50000', 'a', null, '2010-05-04 11:46:21', null, '127.0.0.1', 'D381BFB1A76226202C3A1117A33AB1EE');
INSERT INTO `do_log` VALUES ('4028803328616be90128617ddf5e0001', 'tsqianyf', null, '2010-05-04 12:05:58', null, '127.0.0.1', 'D381BFB1A76226202C3A1117A33AB1EE');
INSERT INTO `do_log` VALUES ('40288033286182750128618275700000', 'tsqianyf', null, '2010-05-04 12:10:59', null, '127.0.0.1', '01455A813B11096BDF0D324511BBF23B');
INSERT INTO `do_log` VALUES ('4028803328618275012861828c050001', 'tsqianyf', null, '2010-05-04 12:11:05', null, '127.0.0.1', '01455A813B11096BDF0D324511BBF23B');
INSERT INTO `do_log` VALUES ('402880332861886901286188698c0000', 'tsqianyf', null, '2010-05-04 12:17:29', null, '127.0.0.1', 'BBE0C66E67D3CC7CE161EC27E8698C31');
INSERT INTO `do_log` VALUES ('402880332861d63b012861d63b9b0000', 'tsqianyf', null, '2010-05-04 13:42:29', null, '127.0.0.1', '4D8DA773C81DA4EB8DC57AEED66D4503');
INSERT INTO `do_log` VALUES ('402880332861e68a012861e68ad60000', 'tsqianyf', null, '2010-05-04 14:00:18', null, '127.0.0.1', '6A5AFF136BEA27288F38D6B6C683EAE1');
INSERT INTO `do_log` VALUES ('402880332861e964012861e964060000', 'tsqianyf', null, '2010-05-04 14:03:25', null, '127.0.0.1', '9E146616D829E333E3935C06FD6C6132');
INSERT INTO `do_log` VALUES ('402880332861f1ad012861f1ad9b0000', 'tsqianyf', null, '2010-05-04 14:12:28', null, '127.0.0.1', '4DB73363BBA7C86BB15CC4AC4D4EAAAF');
INSERT INTO `do_log` VALUES ('402880332861f7ae012861f7ae590000', 'tsqianyf', null, '2010-05-04 14:19:01', null, '127.0.0.1', '266ABD0F671BBAB5B141E0DA263CF5D0');
INSERT INTO `do_log` VALUES ('402880332862018901286201899a0000', 'tsqianyf', null, '2010-05-04 14:29:47', null, '127.0.0.1', 'D459CC992BFD930A60EABA314395663B');
INSERT INTO `do_log` VALUES ('40288033286213b701286213b74a0000', 'tsqianyf', null, '2010-05-04 14:49:39', '2010-05-04 15:26:45', '127.0.0.1', '4126D43C44544CBE89BABBE639B2A0CB');
INSERT INTO `do_log` VALUES ('4028803328624d440128624d44040000', 'tsqianyf', null, '2010-05-04 15:52:30', null, '127.0.0.1', '980FE0050D126C2E2C0FBA8EB870A81E');
INSERT INTO `do_log` VALUES ('4028803328625a310128625a31770000', 'tsqianyf', null, '2010-05-04 16:06:37', null, '127.0.0.1', '44FA1CBEA3786E15DD37B3BCB5CA63FB');
INSERT INTO `do_log` VALUES ('40288033286261ec01286261ecc60000', 'tsqianyf', null, '2010-05-04 16:15:04', null, '127.0.0.1', '8427D44261599ABBD17989C7D5559EFC');
INSERT INTO `do_log` VALUES ('40288033286272d401286272d4d70000', 'tsqianyf', null, '2010-05-04 16:33:32', null, '127.0.0.1', '364487D3EFBE4D2034D908A8B004059F');
INSERT INTO `do_log` VALUES ('40288033286284c201286284c2be0000', 'tsqianyf', null, '2010-05-04 16:53:07', null, '127.0.0.1', 'B265B8A6A0B69DE9B5EF0F873426DB7A');
INSERT INTO `do_log` VALUES ('40288033286287b601286287b69a0000', 'tsqianyf', null, '2010-05-04 16:56:21', null, '127.0.0.1', 'EB4EEB46F4D6BCDB033C10A2C348D52A');
INSERT INTO `do_log` VALUES ('4028803328628c650128628c65070000', 'tsqianyf', null, '2010-05-04 17:01:27', null, '127.0.0.1', '0B14523CFA009B6E84569571CA6DD284');
INSERT INTO `do_log` VALUES ('4028803328628ed60128628ed6740000', 'tsqianyf', null, '2010-05-04 17:04:07', null, '127.0.0.1', '9C1A0C86E451CFE1F32600F054B27B40');
INSERT INTO `do_log` VALUES ('4028803328628ed6012862a1fff90001', 'a', null, '2010-05-04 17:25:03', null, '127.0.0.1', '9C1A0C86E451CFE1F32600F054B27B40');
INSERT INTO `do_log` VALUES ('402880332862c232012862c232190000', 'a', null, '2010-05-04 18:00:13', null, '127.0.0.1', 'E8D2C5C632EB4458DC25AB71D0822F56');
INSERT INTO `do_log` VALUES ('402880332862c232012862c287ea0001', 'tsqianyf', null, '2010-05-04 18:00:35', null, '127.0.0.1', 'E8D2C5C632EB4458DC25AB71D0822F56');
INSERT INTO `do_log` VALUES ('402880332862ce94012862ce94920000', 'tsqianyf', null, '2010-05-04 18:13:45', null, '127.0.0.1', 'B32A033D80185B481336FBC0A274F733');
INSERT INTO `do_log` VALUES ('402880332862d2d9012862d2d9870000', 'a', null, '2010-05-04 18:18:25', null, '127.0.0.1', '86E2040F2175428DFDD78F7DCDBD6050');
INSERT INTO `do_log` VALUES ('4028803328661e700128661e70f00000', 'a', null, '2010-05-05 09:39:50', '2010-05-05 10:19:29', '127.0.0.1', 'FD21320125B037F2F72518039047246C');
INSERT INTO `do_log` VALUES ('4028803328661e700128661edf2b0001', 'yuanxx5', null, '2010-05-05 09:40:18', '2010-05-05 10:19:29', '127.0.0.1', 'FD21320125B037F2F72518039047246C');
INSERT INTO `do_log` VALUES ('4028803328661e70012866730b050002', 'a', null, '2010-05-05 11:12:15', null, '127.0.0.1', '7DA8AE83C902B28A36E9888A2F8C6E54');
INSERT INTO `do_log` VALUES ('4028803328669b780128669b78620000', 'yuanxx5', null, '2010-05-05 11:56:24', null, '127.0.0.1', 'F0B155B5B5C7A43DFD8993D4A9B21C7C');
INSERT INTO `do_log` VALUES ('402880332866b5fe012866b5fe0f0000', 'yuanxx5', null, '2010-05-05 12:25:22', '2010-05-05 12:57:04', '127.0.0.1', '10818DA25CDE6FCA2DA5216513A664B3');
INSERT INTO `do_log` VALUES ('40288033286701fc01286701fce40000', 'tsyuanxx', null, '2010-05-05 13:48:23', null, '127.0.0.1', 'D91375F2120131B8F5B880FC43AF4A4E');
INSERT INTO `do_log` VALUES ('4028803328670d0d0128670d0d4a0000', 'tsyuanxx', null, '2010-05-05 14:00:28', '2010-05-05 14:04:52', '127.0.0.1', 'EF341C105443CB58E02C097EDAF4C4E9');
INSERT INTO `do_log` VALUES ('4028803328670d0d01286711507a0005', 'tszuoch', null, '2010-05-05 14:05:07', '2010-05-05 14:08:13', '127.0.0.1', '3D017EC639F165EE3B9CF05691E21F8F');
INSERT INTO `do_log` VALUES ('4028803328670d0d0128671463760008', 'tsqianyf', null, '2010-05-05 14:08:29', null, '127.0.0.1', '2B1FA93D32466725EFD68D6184F4C423');
INSERT INTO `do_log` VALUES ('4028803328671e770128671e773c0000', 'tsqianyf', null, '2010-05-05 14:19:29', null, '127.0.0.1', '202264F098C541EC613749B4096CF4E3');
INSERT INTO `do_log` VALUES ('4028803328672acd0128672acd130000', 'tsqianyf', null, '2010-05-05 14:32:58', null, '127.0.0.1', '4F386A8D6524FF09D808D4F07BE1CFBE');
INSERT INTO `do_log` VALUES ('402880332867331a012867331a510000', 'a', null, '2010-05-05 14:42:02', null, '127.0.0.1', '06397ABB1D1CDCFEDD4D3323C1DCAC7A');
INSERT INTO `do_log` VALUES ('402880332867331a012867335a380001', 'tsqianyf', null, '2010-05-05 14:42:18', null, '127.0.0.1', '06397ABB1D1CDCFEDD4D3323C1DCAC7A');
INSERT INTO `do_log` VALUES ('402880332867331a0128674076f90002', 'yuanxx5', null, '2010-05-05 14:56:37', null, '127.0.0.1', '06397ABB1D1CDCFEDD4D3323C1DCAC7A');
INSERT INTO `do_log` VALUES ('402880332867331a01286779b813001a', 'tszuoch', null, '2010-05-05 15:59:09', null, '127.0.0.1', '06397ABB1D1CDCFEDD4D3323C1DCAC7A');
INSERT INTO `do_log` VALUES ('402880332867331a0128678f2d1e001c', 'tsqianyf', null, '2010-05-05 16:22:36', null, '127.0.0.1', '06397ABB1D1CDCFEDD4D3323C1DCAC7A');
INSERT INTO `do_log` VALUES ('402880332867331a012867912257001d', 'tszuoch', null, '2010-05-05 16:24:44', null, '127.0.0.1', '06397ABB1D1CDCFEDD4D3323C1DCAC7A');
INSERT INTO `do_log` VALUES ('402880332867331a012867b63b3a0020', 'tsqianyf', null, '2010-05-05 17:05:15', null, '127.0.0.1', '06397ABB1D1CDCFEDD4D3323C1DCAC7A');
INSERT INTO `do_log` VALUES ('402880332867cc18012867cc18550000', 'tsqianyf', null, '2010-05-05 17:29:08', null, '127.0.0.1', '9A3D7A63BC1C43ECEEAC13871E01933E');
INSERT INTO `do_log` VALUES ('402880332867d52d012867d52d0a0000', 'tsqianyf', null, '2010-05-05 17:39:03', null, '127.0.0.1', '4FD2EE66B63F246EFBE1F01FB2AF1E7D');
INSERT INTO `do_log` VALUES ('402880332867d7ca012867d7cad70000', 'tsqianyf', null, '2010-05-05 17:41:55', null, '127.0.0.1', 'EA31E41218DA4BF434BF47D341169029');
INSERT INTO `do_log` VALUES ('402880332867d9de012867d9de260000', 'tsqianyf', null, '2010-05-05 17:44:11', null, '127.0.0.1', '98A543786287C767F2988987C757E0CB');
INSERT INTO `do_log` VALUES ('402880332867dcbd012867dcbd130000', 'tsqianyf', null, '2010-05-05 17:47:19', null, '127.0.0.1', '44CC607C93B462BDE576EC999A27AB48');
INSERT INTO `do_log` VALUES ('40288033286b2ad201286b2ad26d0000', 'yuanxx5', null, '2010-05-06 09:11:28', '2010-05-06 10:13:44', '127.0.0.1', '355363595C2AC0B0144737C30E1EF88E');
INSERT INTO `do_log` VALUES ('40288033286d044701286d0447bf0000', 'tsqianyf', null, '2010-05-06 17:48:36', null, '127.0.0.1', 'A1565CF736930D8D4B343EBD16988A04');
INSERT INTO `do_log` VALUES ('40288033286d044701286d047d850001', 'tsqianyf', null, '2010-05-06 17:48:50', null, '127.0.0.1', 'A1565CF736930D8D4B343EBD16988A04');
INSERT INTO `do_log` VALUES ('40288033286d18f301286d18f36f0000', 'tsqianyf', null, '2010-05-06 18:11:11', null, '127.0.0.1', '397B3C564CF1072E3DA0F8C64785ACC7');
INSERT INTO `do_log` VALUES ('40288033286d25cd01286d25cd1c0000', 'tsqianyf', null, '2010-05-06 18:25:13', null, '127.0.0.1', '79D387DA5B2BD531BCB4A41649E25DAB');
INSERT INTO `do_log` VALUES ('40288033286d289001286d2890520000', 'tsqianyf', null, '2010-05-06 18:28:14', null, '127.0.0.1', '62BE0E3AB71922478E014A18470BE17B');
INSERT INTO `do_log` VALUES ('40288033286d2f9b01286d2f9b4d0000', 'tsqianyf', null, '2010-05-06 18:35:56', null, '127.0.0.1', 'FDF2CBAAD50DF87B2CF0A9B386536320');
INSERT INTO `do_log` VALUES ('40288033286d350601286d3506ff0000', 'tsqianyf', null, '2010-05-06 18:41:51', null, '127.0.0.1', 'C74AD8B4050F956A8043D46AE68FCF06');
INSERT INTO `do_log` VALUES ('402880332870542c012870542ca90000', 'a', null, '2010-05-07 09:14:44', '2010-05-07 09:26:21', '127.0.0.1', '9E723F91AD6AF9175319AB5405922036');
INSERT INTO `do_log` VALUES ('402880332870542c0128705c45b80001', 'tszhangwj', null, '2010-05-07 09:23:35', '2010-05-07 09:26:21', '127.0.0.1', '9E723F91AD6AF9175319AB5405922036');
INSERT INTO `do_log` VALUES ('402880332870542c0128705efe120002', 'tsqianyf', null, '2010-05-07 09:26:33', null, '127.0.0.1', '358B8C1500C0CCB28CC382BFB6D4FCD0');
INSERT INTO `do_log` VALUES ('40288033287088880128708888a70000', 'a', null, '2010-05-07 10:11:55', '2010-05-07 10:14:19', '127.0.0.1', 'E821373E8BAC25AD5B25DA42B0665D8A');
INSERT INTO `do_log` VALUES ('402880332870888801287088cf840001', 'tsqianyf', null, '2010-05-07 10:12:13', '2010-05-07 10:14:19', '127.0.0.1', 'E821373E8BAC25AD5B25DA42B0665D8A');
INSERT INTO `do_log` VALUES ('40288033287088880128708ae9a90002', 'tszhangwj', null, '2010-05-07 10:14:31', null, '127.0.0.1', 'AD78CEE7C9D2EAEB8CD6982FCDDE8315');
INSERT INTO `do_log` VALUES ('402880332870998a012870998ae70000', 'a', null, '2010-05-07 10:30:30', null, '127.0.0.1', '0E4D781622AE732DD800CF54771EA5A1');
INSERT INTO `do_log` VALUES ('402880332870998a01287099feaf0001', 'tsqianyf', null, '2010-05-07 10:31:00', null, '127.0.0.1', '0E4D781622AE732DD800CF54771EA5A1');
INSERT INTO `do_log` VALUES ('402880332870998a0128709a6a3a0002', 'tszhangwj', null, '2010-05-07 10:31:27', null, '127.0.0.1', '0E4D781622AE732DD800CF54771EA5A1');
INSERT INTO `do_log` VALUES ('402880332870aee0012870aee0150000', 'a', null, '2010-05-07 10:53:48', null, '127.0.0.1', '6AFF5E072E088FAA4AD7BDD83A1CC63E');
INSERT INTO `do_log` VALUES ('402880332870aee0012870af475b0001', 'tszhangwj', null, '2010-05-07 10:54:14', null, '127.0.0.1', '6AFF5E072E088FAA4AD7BDD83A1CC63E');
INSERT INTO `do_log` VALUES ('402880332870c430012870c430cf0000', 'a', null, '2010-05-07 11:17:05', '2010-05-07 11:48:03', '127.0.0.1', 'EAEA4D97E66DEE6733E73249B1AAB202');
INSERT INTO `do_log` VALUES ('4028803328713f6d0128713f6d740000', 'a', null, '2010-05-07 13:31:41', '2010-05-07 14:11:44', '127.0.0.1', '0EFB617875027F08462B1C9D389B9637');
INSERT INTO `do_log` VALUES ('4028803328713f6d0128713f99280001', 'a', null, '2010-05-07 13:31:53', '2010-05-07 14:11:44', '127.0.0.1', '0EFB617875027F08462B1C9D389B9637');
INSERT INTO `do_log` VALUES ('4028803328713f6d0128714351cb0002', 'tsqianyf', null, '2010-05-07 13:35:56', '2010-05-07 14:11:44', '127.0.0.1', '0EFB617875027F08462B1C9D389B9637');
INSERT INTO `do_log` VALUES ('4028803328713f6d01287144fc4e0003', 'tszhangwj', null, '2010-05-07 13:37:46', '2010-05-07 14:11:44', '127.0.0.1', '0EFB617875027F08462B1C9D389B9637');
INSERT INTO `do_log` VALUES ('4028803328713f6d012871643ecf0004', 'a', null, '2010-05-07 14:11:54', null, '127.0.0.1', 'BD1FCE734EFA1195F37C95A0291E1373');
INSERT INTO `do_log` VALUES ('4028803328713f6d012871654ea80005', 'tszuoch', null, '2010-05-07 14:13:04', null, '127.0.0.1', 'BD1FCE734EFA1195F37C95A0291E1373');
INSERT INTO `do_log` VALUES ('40288033287169de01287169defe0000', 'tszuoch', null, '2010-05-07 14:18:03', null, '127.0.0.1', 'F738B38FF680F9F97EC536A01FAB3819');
INSERT INTO `do_log` VALUES ('402880332871ae1e012871ae1ebc0000', 'tszuoch', null, '2010-05-07 15:32:36', null, '127.0.0.1', '5A4B3B57BD3D29D30A324C2A1B043BD3');
INSERT INTO `do_log` VALUES ('402880332871c836012871c8362d0000', 'tszuoch', null, '2010-05-07 16:01:06', null, '127.0.0.1', '51078829B91C6571D55C5A354180D6E8');
INSERT INTO `do_log` VALUES ('402880332871deeb012871deebb70000', 'tszuoch', null, '2010-05-07 16:25:54', null, '127.0.0.1', '83FB20DA2880E3CE74BA4FC2478DDD94');
INSERT INTO `do_log` VALUES ('402880332871e0bd012871e0bd6a0000', 'tszuoch', null, '2010-05-07 16:27:53', null, '127.0.0.1', '25A7EAF1C73069D1DE42BEDA93452A4E');
INSERT INTO `do_log` VALUES ('402880332871e0bd012871e0d45d0001', 'tszuoch', null, '2010-05-07 16:27:59', null, '127.0.0.1', '25A7EAF1C73069D1DE42BEDA93452A4E');
INSERT INTO `do_log` VALUES ('40288033287234550128723455510000', 'a', null, '2010-05-07 17:59:12', null, '127.0.0.1', 'B8EE14B487C169DC496B704D85F36DE6');
INSERT INTO `do_log` VALUES ('40288033287234550128723750510002', 'tszuoch', null, '2010-05-07 18:02:27', null, '127.0.0.1', 'B8EE14B487C169DC496B704D85F36DE6');
INSERT INTO `do_log` VALUES ('4028803328724cb10128724cb1280000', 'tszuoch', null, '2010-05-07 18:25:48', null, '127.0.0.1', '6AB8700AAA6D6BCA5CEB4DBD9D194455');
INSERT INTO `do_log` VALUES ('402880332880f293012880f2937e0000', 'tszuoch', null, '2010-05-10 14:41:40', null, '127.0.0.1', '2606298B68C215532C67E4149A95EE0D');
INSERT INTO `do_log` VALUES ('402880332880fe1c012880fe1cbd0000', 'tszuoch', null, '2010-05-10 14:54:17', null, '127.0.0.1', '3FAF1C1030F9C67DE65B5AAA794C2D3E');
INSERT INTO `do_log` VALUES ('402880332880fe1c01288104d32f0001', 'tszuoch', null, '2010-05-10 15:01:36', null, '127.0.0.1', '3FAF1C1030F9C67DE65B5AAA794C2D3E');
INSERT INTO `do_log` VALUES ('40288033288115e201288115e2110000', 'tszuoch', null, '2010-05-10 15:20:14', null, '127.0.0.1', '58BE904FF828570C91A2AAAAF95C4FDB');
INSERT INTO `do_log` VALUES ('4028803328812bd30128812bd3ae0000', 'tszuoch', null, '2010-05-10 15:44:12', null, '127.0.0.1', '8E1CDE0E384E65732BD96F1747A28FEB');
INSERT INTO `do_log` VALUES ('40288033288130000128813000e50000', 'tszuoch', null, '2010-05-10 15:48:46', null, '127.0.0.1', '7059EE377B8BCBED8FE91E24ECA9C0E9');
INSERT INTO `do_log` VALUES ('402880332881333c012881333cb70000', 'tszuoch', null, '2010-05-10 15:52:18', '2010-05-10 17:31:54', '127.0.0.1', '62809D9C4E96298B4B74DA34B5C40B19');
INSERT INTO `do_log` VALUES ('402880332881333c01288142cf780001', 'a', null, '2010-05-10 16:09:18', '2010-05-10 17:31:54', '127.0.0.1', '62809D9C4E96298B4B74DA34B5C40B19');
INSERT INTO `do_log` VALUES ('402880332881333c0128814523f70004', 'tszuoch', null, '2010-05-10 16:11:51', '2010-05-10 17:31:54', '127.0.0.1', '62809D9C4E96298B4B74DA34B5C40B19');
INSERT INTO `do_log` VALUES ('402880332881333c0128818ea375001a', 'tsyuanxx', null, '2010-05-10 17:32:08', '2010-05-10 17:43:22', '127.0.0.1', '34F0CC92762090D4E04E8AA45EDF8884');
INSERT INTO `do_log` VALUES ('402880332881333c012881991dd5001b', 'tsqianyf', null, '2010-05-10 17:43:35', '2010-05-10 17:49:13', '127.0.0.1', 'E3FA8D3A34DE060592FFD6EEF1F4E5AC');
INSERT INTO `do_log` VALUES ('402880332881333c0128819e8272001c', 'tsluwl', null, '2010-05-10 17:49:28', '2010-05-10 17:49:53', '127.0.0.1', 'B4E87E741FB1178EF10645003FD85768');
INSERT INTO `do_log` VALUES ('402880332881333c0128819f0eb4001d', 'tszhangwj', null, '2010-05-10 17:50:04', null, '127.0.0.1', '3340B59E55B9A56B3E2584B56A6C224A');
INSERT INTO `do_log` VALUES ('402880332884ee24012884ee24580000', 'tszuoch', null, '2010-05-11 09:15:19', null, '127.0.0.1', '130689388BF3B6A509994EEFE7B46360');
INSERT INTO `do_log` VALUES ('402880332884ee24012884ee3fcf0001', 'tszuoch', null, '2010-05-11 09:15:26', null, '127.0.0.1', '130689388BF3B6A509994EEFE7B46360');
INSERT INTO `do_log` VALUES ('4028803328850bf30128850bf3340000', 'tszhangwj', null, '2010-05-11 09:47:52', null, '127.0.0.1', '11650FBB5F31FAFA5FF93750FA671A46');
INSERT INTO `do_log` VALUES ('40288033288515e901288515e96f0000', 'tsluwl', null, '2010-05-11 09:58:45', null, '127.0.0.1', 'E11279FF8B28D9C2DCF69B4E3F91B429');
INSERT INTO `do_log` VALUES ('402880332885229701288522971a0000', 'tsqianyf', null, '2010-05-11 10:12:36', null, '127.0.0.1', '0FEE881B8ECB34C3650E1477D4376EE1');
INSERT INTO `do_log` VALUES ('402880332885246c012885246cf30000', 'tsqianyf', null, '2010-05-11 10:14:36', null, '127.0.0.1', 'D28D4BB990955EFC1EFFC5067411D8CE');
INSERT INTO `do_log` VALUES ('40288033288527680128852768be0000', 'tsqianyf', null, '2010-05-11 10:17:52', '2010-05-11 10:19:08', '127.0.0.1', '76917EC61693E1D8EEED0BD5791F4733');
INSERT INTO `do_log` VALUES ('402880332885276801288528d1d40002', 'tszhangwj', null, '2010-05-11 10:19:24', null, '127.0.0.1', 'A73ACDBF109C705F1D262DE3397F3FF1');
INSERT INTO `do_log` VALUES ('4028803328852fd10128852fd1450000', 'tszhangwj', null, '2010-05-11 10:27:03', null, '127.0.0.1', '84C3D194539E17B0986B53327BAE04E3');
INSERT INTO `do_log` VALUES ('4028803328854e830128854e837c0000', 'tszhangwj', null, '2010-05-11 11:00:34', null, '127.0.0.1', 'DE2CDB2E6DD09110D9D7785BEF273A65');
INSERT INTO `do_log` VALUES ('4028803328854e8301288555983b0001', 'a', null, '2010-05-11 11:08:18', null, '127.0.0.1', 'DE2CDB2E6DD09110D9D7785BEF273A65');
INSERT INTO `do_log` VALUES ('4028803328855d2f0128855d2fa60000', 'tszhangwj', null, '2010-05-11 11:16:36', '2010-05-11 12:18:54', '127.0.0.1', '0F6CB3A67E6C5A4180682143744A8ABC');
INSERT INTO `do_log` VALUES ('4028803328855d2f012885ee90b10001', 'a', null, '2010-05-11 13:55:23', null, '127.0.0.1', '5A97A9678A21E6D5D8E4A220E20827C6');
INSERT INTO `do_log` VALUES ('4028803328855d2f012885ef528a0002', 'tsqianyf', null, '2010-05-11 13:56:13', null, '127.0.0.1', '5A97A9678A21E6D5D8E4A220E20827C6');
INSERT INTO `do_log` VALUES ('4028803328862b410128862b419e0000', 'a', null, '2010-05-11 15:01:41', '2010-05-11 15:09:22', '127.0.0.1', 'FD50CFC960B54E89800AF7B023220A03');
INSERT INTO `do_log` VALUES ('4028803328862b410128862bab450001', 'tsqianyf', null, '2010-05-11 15:02:08', '2010-05-11 15:09:22', '127.0.0.1', 'FD50CFC960B54E89800AF7B023220A03');
INSERT INTO `do_log` VALUES ('4028803328862b41012886327b490002', 'tsyuanxx', null, '2010-05-11 15:09:34', null, '127.0.0.1', '921CF096E3AA01FF01B22452C7D84477');
INSERT INTO `do_log` VALUES ('402880332886478901288647895d0000', 'tszuoch', null, '2010-05-11 15:32:34', '2010-05-11 15:36:30', '127.0.0.1', 'E4423113DC4253161A88E9AE1EF80F72');
INSERT INTO `do_log` VALUES ('40288033288647890128864b58850002', 'tsqianyf', null, '2010-05-11 15:36:44', '2010-05-11 15:39:44', '127.0.0.1', '84E7C667F56D443E9C714B31AB00F956');
INSERT INTO `do_log` VALUES ('40288033288647890128864e51720004', 'tszhangwj', null, '2010-05-11 15:39:59', null, '127.0.0.1', '40125B8AF1F2C8BF1FB1E2F56BA7E25D');
INSERT INTO `do_log` VALUES ('4028803328864789012886706c480006', 'a', null, '2010-05-11 16:17:14', null, '127.0.0.1', '40125B8AF1F2C8BF1FB1E2F56BA7E25D');
INSERT INTO `do_log` VALUES ('402880332886478901288671b35e0007', 'tsqianyf', null, '2010-05-11 16:18:38', null, '127.0.0.1', '40125B8AF1F2C8BF1FB1E2F56BA7E25D');
INSERT INTO `do_log` VALUES ('4028803328868bc90128868bc9b70000', 'tsqianyf', null, '2010-05-11 16:47:07', null, '127.0.0.1', 'CF25BC6C3C644425709D3C69AEC3DDA8');
INSERT INTO `do_log` VALUES ('402880332886b15c012886b15cdb0000', 'a', null, '2010-05-11 17:28:10', null, '127.0.0.1', '80D3F213F1038D65E6416ECF0C701FC4');
INSERT INTO `do_log` VALUES ('402880332886b15c012886bfe6e6001c', 'tsqianyf', null, '2010-05-11 17:44:03', null, '127.0.0.1', '80D3F213F1038D65E6416ECF0C701FC4');
INSERT INTO `do_log` VALUES ('402880332886cde2012886cde2eb0000', 'tsqianyf', null, '2010-05-11 17:59:19', null, '127.0.0.1', '8B26A9E7A0827D0EDD1490F60D2A9CDF');
INSERT INTO `do_log` VALUES ('402880332886d16b012886d16b750000', 'tsqianyf', null, '2010-05-11 18:03:11', null, '127.0.0.1', '1E94F8AE8385BB1A7578A22B000F7080');
INSERT INTO `do_log` VALUES ('402880332886d7a3012886d7a3de0000', 'tsqianyf', null, '2010-05-11 18:09:58', null, '127.0.0.1', '2B9C1356EC6C7F09EC571F304E6EE9EE');
INSERT INTO `do_log` VALUES ('40288033288a398c01288a398c5a0000', 'a', null, '2010-05-12 09:55:47', '2010-05-12 10:43:28', '127.0.0.1', 'FC5C12E488367471F77C7F388786767C');
INSERT INTO `do_log` VALUES ('40288033288a93fa01288a93fa600000', 'a', null, '2010-05-12 11:34:33', null, '127.0.0.1', '110578D0A45F3874C16CF67A3D6079D7');
INSERT INTO `do_log` VALUES ('40288033288a93fa01288a96acaf0002', 'tsqianyf', null, '2010-05-12 11:37:30', null, '127.0.0.1', '110578D0A45F3874C16CF67A3D6079D7');
INSERT INTO `do_log` VALUES ('40288033288aa47c01288aa47c630000', 'a', null, '2010-05-12 11:52:35', null, '127.0.0.1', 'AB68C961E94151BE9C1760708FEC76BC');
INSERT INTO `do_log` VALUES ('40288033288aa47c01288aa4cf270001', 'tsqianyf', null, '2010-05-12 11:52:56', null, '127.0.0.1', 'AB68C961E94151BE9C1760708FEC76BC');
INSERT INTO `do_log` VALUES ('40288033288aa7cb01288aa7cb7f0000', 'a', null, '2010-05-12 11:56:12', null, '127.0.0.1', 'F3C11CB5570BA2D755272E93E2808F63');
INSERT INTO `do_log` VALUES ('40288033288aa7cb01288aa817ab0001', 'tsqianyf', null, '2010-05-12 11:56:31', null, '127.0.0.1', 'F3C11CB5570BA2D755272E93E2808F63');
INSERT INTO `do_log` VALUES ('40288033288aac7f01288aac7f6a0000', 'tsqianyf', null, '2010-05-12 12:01:20', null, '127.0.0.1', '6D69A698A5BDA620CA94897DF1FB89F2');
INSERT INTO `do_log` VALUES ('40288033288acbf301288acbf3b90000', 'tsqianyf', null, '2010-05-12 12:35:41', '2010-05-12 13:08:52', '127.0.0.1', '938DE26D917C007BA9E1D7CC668C1D59');
INSERT INTO `do_log` VALUES ('40288033288acbf301288b0976bb0001', 'a', null, '2010-05-12 13:42:52', null, '127.0.0.1', '98E64CAE1DC0FD822AF6C038594C4EF3');
INSERT INTO `do_log` VALUES ('40288033288b2f7c01288b2f7c500000', 'a', null, '2010-05-12 14:24:24', null, '127.0.0.1', 'E5812668290CC7C8CBD0988A2A63C443');
INSERT INTO `do_log` VALUES ('40288033288f97d801288f97d84c0000', 'a', null, '2010-05-13 10:56:52', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('40288033288f97d801288f9832910001', 'yuanxx5', null, '2010-05-13 10:57:15', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('40288033288f97d801288fce0be80002', 'tsyuanxx', null, '2010-05-13 11:56:05', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('40288033288f97d801288fd1cfd60003', 'tszuoch', null, '2010-05-13 12:00:11', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('40288033288f97d801288fd4c6fe0004', 'tsyuanxx', null, '2010-05-13 12:03:26', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('40288033288f97d801288fd644470005', 'tszhangwj', null, '2010-05-13 12:05:03', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('40288033288f97d801288fdd20bf0006', 'tsqianyf', null, '2010-05-13 12:12:33', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('40288033288f97d801288fdf21cf0007', 'yuanxx5', null, '2010-05-13 12:14:44', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('40288033288f97d801288fe3bca40009', 'admin', null, '2010-05-13 12:19:46', null, '127.0.0.1', '53DE730AC3F99049DAB992C06CDE5339');
INSERT INTO `do_log` VALUES ('4028803328945bf30128945bf3580000', 'a', null, '2010-05-14 09:09:33', '2010-05-14 09:12:32', '127.0.0.1', '3C6BECDDD326AFE8BA18148B32041FE1');
INSERT INTO `do_log` VALUES ('4028803328945bf30128945d02860001', 'admin', null, '2010-05-14 09:10:43', '2010-05-14 09:12:32', '127.0.0.1', '3C6BECDDD326AFE8BA18148B32041FE1');
INSERT INTO `do_log` VALUES ('40288033289460e801289460e8050000', 'a', null, '2010-05-14 09:14:58', '2010-05-14 11:30:15', '127.0.0.1', '77E54A5AFFB5E1CD7C8094EA95A2071E');
INSERT INTO `do_log` VALUES ('40288033289460e80128946146cf0001', 'tsadmin', null, '2010-05-14 09:15:22', '2010-05-14 11:30:15', '127.0.0.1', '77E54A5AFFB5E1CD7C8094EA95A2071E');
INSERT INTO `do_log` VALUES ('40288033289460e8012894715bb10002', 'tsyuanxx', null, '2010-05-14 09:32:56', '2010-05-14 11:30:15', '127.0.0.1', '77E54A5AFFB5E1CD7C8094EA95A2071E');
INSERT INTO `do_log` VALUES ('40288033289460e8012894dd05f20006', 'tsyuanxx', null, '2010-05-14 11:30:32', '2010-05-14 12:49:31', '127.0.0.1', '20E032F2986E6BAECC0CCE3C87E53059');
INSERT INTO `do_log` VALUES ('40288033289460e8012895578ed80008', 'a', null, '2010-05-14 13:44:23', '2010-05-14 14:59:01', '127.0.0.1', '695DE045D38271A0ED3A22CD88F5FD22');
INSERT INTO `do_log` VALUES ('40288033289460e801289557efd40009', 'tsyuanxx', null, '2010-05-14 13:44:47', '2010-05-14 14:59:01', '127.0.0.1', '695DE045D38271A0ED3A22CD88F5FD22');
INSERT INTO `do_log` VALUES ('40288033289460e80128955da09d000a', 'tszuoch', null, '2010-05-14 13:51:00', '2010-05-14 14:59:01', '127.0.0.1', '695DE045D38271A0ED3A22CD88F5FD22');
INSERT INTO `do_log` VALUES ('40288033289460e80128956d70f4000b', 'tsqianyf', null, '2010-05-14 14:08:17', '2010-05-14 14:59:01', '127.0.0.1', '695DE045D38271A0ED3A22CD88F5FD22');
INSERT INTO `do_log` VALUES ('40288033289460e80128959c9977000c', 'a', null, '2010-05-14 14:59:47', '2010-05-14 17:55:13', '127.0.0.1', '6F6EA9364D2925F3C345EE5FD2604CC4');
INSERT INTO `do_log` VALUES ('40288033289460e80128959cd883000d', 'tsqianyf', null, '2010-05-14 15:00:03', '2010-05-14 17:55:13', '127.0.0.1', '6F6EA9364D2925F3C345EE5FD2604CC4');
INSERT INTO `do_log` VALUES ('40288033289460e8012895cb34ec0011', 'tsadmin', null, '2010-05-14 15:50:42', '2010-05-14 17:55:13', '127.0.0.1', '6F6EA9364D2925F3C345EE5FD2604CC4');
INSERT INTO `do_log` VALUES ('40288033289460e801289632e7bc001b', 'tsqianyf', null, '2010-05-14 17:43:58', '2010-05-14 17:55:13', '127.0.0.1', '6F6EA9364D2925F3C345EE5FD2604CC4');
INSERT INTO `do_log` VALUES ('40288033289460e801289637130f001c', 'yuanxx5', null, '2010-05-14 17:48:31', '2010-05-14 17:55:13', '127.0.0.1', '6F6EA9364D2925F3C345EE5FD2604CC4');
INSERT INTO `do_log` VALUES ('40288033289460e80128963daed4001d', 'a', null, '2010-05-14 17:55:44', null, '127.0.0.1', '5A7ACEF7EAE8CBFACF2C1881ABBEA746');
INSERT INTO `do_log` VALUES ('40288033289460e80128963e0ac0001e', 'yuanxx5', null, '2010-05-14 17:56:08', null, '127.0.0.1', '5A7ACEF7EAE8CBFACF2C1881ABBEA746');
INSERT INTO `do_log` VALUES ('4028803328a3dc760128a3dc76ad0000', 'a', null, '2010-05-17 09:24:14', '2010-05-17 10:14:48', '127.0.0.1', '3A58D6F8944CD907DDE3BA19653C3B0F');
INSERT INTO `do_log` VALUES ('4028803328a3dc760128a3df69dd0001', 'yuanxx5', null, '2010-05-17 09:27:27', '2010-05-17 10:14:48', '127.0.0.1', '3A58D6F8944CD907DDE3BA19653C3B0F');
INSERT INTO `do_log` VALUES ('4028803328a3dc760128a40afe6b0004', 'yuanxx5', null, '2010-05-17 10:15:03', null, '127.0.0.1', '74F411D982C24D5E3D320F2C0AE43B3A');
INSERT INTO `do_log` VALUES ('4028803328a45e240128a45e247d0000', 'a', null, '2010-05-17 11:45:52', null, '127.0.0.1', '875859ABAA2612F195FDD38FEC65C95D');
INSERT INTO `do_log` VALUES ('4028803328a45e240128a45e6b980001', 'yuanxx5', null, '2010-05-17 11:46:11', null, '127.0.0.1', '875859ABAA2612F195FDD38FEC65C95D');
INSERT INTO `do_log` VALUES ('4028803328a516da0128a516da610000', 'a', null, '2010-05-17 15:07:38', '2010-05-17 15:41:47', '127.0.0.1', '39B845E468048D5AE477484D02F1FDB7');
INSERT INTO `do_log` VALUES ('4028803328a516da0128a51804a80001', 'yuanxx5', null, '2010-05-17 15:08:54', '2010-05-17 15:41:47', '127.0.0.1', '39B845E468048D5AE477484D02F1FDB7');
INSERT INTO `do_log` VALUES ('4028803328a516da0128a546482a0002', 'a', null, '2010-05-17 15:59:26', null, '127.0.0.1', '875EDAD05C9A1A29DFCFDA85F86839C0');
INSERT INTO `do_log` VALUES ('4028803328a516da0128a547f3780003', 'yuanxx5', null, '2010-05-17 16:01:15', null, '127.0.0.1', '875EDAD05C9A1A29DFCFDA85F86839C0');
INSERT INTO `do_log` VALUES ('4028803328a516da0128a58d6d5c0008', 'yuanxx1', null, '2010-05-17 17:17:08', null, '127.0.0.1', '875EDAD05C9A1A29DFCFDA85F86839C0');
INSERT INTO `do_log` VALUES ('4028803328a516da0128a592a23e0009', 'tsyuanxx', null, '2010-05-17 17:22:50', null, '127.0.0.1', '875EDAD05C9A1A29DFCFDA85F86839C0');
INSERT INTO `do_log` VALUES ('4028803328a516da0128a593851d000a', 'tszuoch', null, '2010-05-17 17:23:48', null, '127.0.0.1', '875EDAD05C9A1A29DFCFDA85F86839C0');
INSERT INTO `do_log` VALUES ('4028803328a516da0128a5943458000b', 'tsadmin', null, '2010-05-17 17:24:33', null, '127.0.0.1', '875EDAD05C9A1A29DFCFDA85F86839C0');
INSERT INTO `do_log` VALUES ('4028803328a9348c0128a9348c880000', 'tsqianyf', null, '2010-05-18 10:18:33', '2010-05-18 10:19:21', '127.0.0.1', 'FFF5F3693EAFB64A2EABE38B11E39E74');
INSERT INTO `do_log` VALUES ('4028803328a9348c0128a93587b10001', 'tsadmin', null, '2010-05-18 10:19:37', null, '127.0.0.1', '6C2AC62C9A15B4FAF4AA78FD8D0A2A4C');
INSERT INTO `do_log` VALUES ('4028803328a9348c0128a93a4d110002', 'a', null, '2010-05-18 10:24:49', null, '127.0.0.1', '6C2AC62C9A15B4FAF4AA78FD8D0A2A4C');
INSERT INTO `do_log` VALUES ('4028803328a9348c0128a9442c2b000c', 'tsadmin', null, '2010-05-18 10:35:36', null, '127.0.0.1', '6C2AC62C9A15B4FAF4AA78FD8D0A2A4C');
INSERT INTO `do_log` VALUES ('4028803328a955bd0128a955bd3d0000', 'a', null, '2010-05-18 10:54:48', null, '127.0.0.1', '2028FCD0B7A246AC7FA78EF7900BAE6D');
INSERT INTO `do_log` VALUES ('4028803328a955bd0128a95621070001', 'yuanxx5', null, '2010-05-18 10:55:13', null, '127.0.0.1', '2028FCD0B7A246AC7FA78EF7900BAE6D');
INSERT INTO `do_log` VALUES ('4028803328a95c2e0128a95c2e0a0000', 'yuanxx5', null, '2010-05-18 11:01:50', null, '127.0.0.1', '3FB7BA2C75B24DF87F6419A4AC2BFBFD');
INSERT INTO `do_log` VALUES ('4028803328a993f80128a993f8730000', 'yuanxx5', null, '2010-05-18 12:02:46', null, '127.0.0.1', '399CD04B8139F2A1AFEDB10AB82664C1');
INSERT INTO `do_log` VALUES ('4028803328a993f80128a99681fc0001', 'a', null, '2010-05-18 12:05:32', null, '127.0.0.1', '399CD04B8139F2A1AFEDB10AB82664C1');
INSERT INTO `do_log` VALUES ('4028803328a9eb0a0128a9eb0acb0000', 'a', null, '2010-05-18 13:37:52', '2010-05-18 15:09:21', '127.0.0.1', '92B8B5480FCAAF429424ECBCD5E6C208');
INSERT INTO `do_log` VALUES ('4028803328a9eb0a0128a9eb4eca0001', 'yuanxx5', null, '2010-05-18 13:38:10', '2010-05-18 15:09:21', '127.0.0.1', '92B8B5480FCAAF429424ECBCD5E6C208');
INSERT INTO `do_log` VALUES ('4028803328b392790128b39279710000', 'a', null, '2010-05-20 10:37:20', null, '127.0.0.1', '535628B7719D2A19D224430310B2DA6D');
INSERT INTO `do_log` VALUES ('4028803328b392790128b392fc1e0001', 'yuanxx5', null, '2010-05-20 10:37:54', null, '127.0.0.1', '535628B7719D2A19D224430310B2DA6D');
INSERT INTO `do_log` VALUES ('4028803328b39dd50128b39dd5660000', 'a', null, '2010-05-20 10:49:45', null, '127.0.0.1', '0B65EB857C56E1C58C09C2349B04C648');
INSERT INTO `do_log` VALUES ('4028803328b39dd50128b39f4ff00001', 'yuanxx5', null, '2010-05-20 10:51:21', null, '127.0.0.1', '0B65EB857C56E1C58C09C2349B04C648');
INSERT INTO `do_log` VALUES ('4028803328b3a1d50128b3a1d5920000', 'a', null, '2010-05-20 10:54:07', null, '127.0.0.1', '6B97388CDE02EA0209DB94614738C4E0');
INSERT INTO `do_log` VALUES ('4028803328b3a1d50128b3a247d40001', 'yuanxx5', null, '2010-05-20 10:54:36', null, '127.0.0.1', '6B97388CDE02EA0209DB94614738C4E0');
INSERT INTO `do_log` VALUES ('4028803328b3a5960128b3a596140000', 'yuanxx5', null, '2010-05-20 10:58:13', null, '127.0.0.1', '2746C0EB3505E94404E685D2015B2B79');
INSERT INTO `do_log` VALUES ('4028803328b3a8390128b3a8398e0000', 'yuanxx5', null, '2010-05-20 11:01:06', null, '127.0.0.1', '07179F23C06CE4560A4D25778FEBE2A1');
INSERT INTO `do_log` VALUES ('4028803328b3c2cd0128b3c2cdc10000', 'yuanxx5', null, '2010-05-20 11:30:08', null, '127.0.0.1', '59D9443D9F95E0A3D664E0D93497FE76');
INSERT INTO `do_log` VALUES ('4028803328b3d6ef0128b3d6ef900000', 'a', null, '2010-05-20 11:52:07', null, '127.0.0.1', '62D39F1E71361947606B0234EEFCAF54');
INSERT INTO `do_log` VALUES ('4028803328b3d6ef0128b3d772ab0001', 'yuanxx5', null, '2010-05-20 11:52:40', null, '127.0.0.1', '62D39F1E71361947606B0234EEFCAF54');
INSERT INTO `do_log` VALUES ('4028803328b3dc040128b3dc041a0000', 'yuanxx5', null, '2010-05-20 11:57:40', null, '127.0.0.1', '5C317AE8E114A458A755708BE2835A8B');
INSERT INTO `do_log` VALUES ('4028803328b3de770128b3de778b0000', 'yuanxx5', null, '2010-05-20 12:00:21', null, '127.0.0.1', '7962E2F795E59ECD30FCB017C33077C3');
INSERT INTO `do_log` VALUES ('4028803328b3de770128b3e029420001', 'yuanxx5', null, '2010-05-20 12:02:11', null, '127.0.0.1', '7962E2F795E59ECD30FCB017C33077C3');
INSERT INTO `do_log` VALUES ('4028803328b3e98b0128b3e98b6b0000', 'a', null, '2010-05-20 12:12:26', null, '127.0.0.1', '0550FA426C3B3B39197DE74A67DD22E6');
INSERT INTO `do_log` VALUES ('4028803328b3e98b0128b3ec0ae20002', 'yuanxx5', null, '2010-05-20 12:15:10', null, '127.0.0.1', '0550FA426C3B3B39197DE74A67DD22E6');
INSERT INTO `do_log` VALUES ('4028803328b3fb820128b3fb821d0000', 'yuanxx5', null, '2010-05-20 12:32:04', null, '127.0.0.1', '96CEE8F45C99286F031E02293276F228');
INSERT INTO `do_log` VALUES ('4028803328b403fc0128b403fc180000', 'yuanxx5', null, '2010-05-20 12:41:19', null, '127.0.0.1', 'AE9B6349FAD0D221375150BF62288495');
INSERT INTO `do_log` VALUES ('4028803328b407e60128b407e6b80000', 'yuanxx5', null, '2010-05-20 12:45:36', null, '127.0.0.1', '408F5A123165DA82115330C2B2F4CC8F');
INSERT INTO `do_log` VALUES ('4028803328b40fb70128b40fb7250000', 'yuanxx5', null, '2010-05-20 12:54:08', null, '127.0.0.1', 'FF6F54F19DE02A1C1579DC596083615C');
INSERT INTO `do_log` VALUES ('4028803328b436050128b436050e0000', 'yuanxx5', null, '2010-05-20 13:35:58', null, '127.0.0.1', '0135BD2516331994C5C49702190372E2');
INSERT INTO `do_log` VALUES ('4028803328b4494e0128b4494e4f0000', 'a', null, '2010-05-20 13:57:02', null, '127.0.0.1', '9F0AF2C099D648B06114B7B205BCA779');
INSERT INTO `do_log` VALUES ('4028803328b4494e0128b44e15170002', 'yuanxx5', null, '2010-05-20 14:02:15', null, '127.0.0.1', '9F0AF2C099D648B06114B7B205BCA779');
INSERT INTO `do_log` VALUES ('4028803328b4494e0128b451d1440003', 'yuanxx5', null, '2010-05-20 14:06:20', null, '127.0.0.1', '9F0AF2C099D648B06114B7B205BCA779');
INSERT INTO `do_log` VALUES ('4028803328b4a0bc0128b4a0bc060000', 'a', null, '2010-05-20 15:32:32', null, '127.0.0.1', '812A4D5F258EE4C5969712C71E2C641D');
INSERT INTO `do_log` VALUES ('4028803328b4a0bc0128b4a251e80001', 'yuanxx', null, '2010-05-20 15:34:16', null, '127.0.0.1', '812A4D5F258EE4C5969712C71E2C641D');
INSERT INTO `do_log` VALUES ('4028803328b4bef30128b4bef3700000', 'a', null, '2010-05-20 16:05:32', null, '127.0.0.1', 'EAB5E70D4D07C82B380D404D08C301CB');
INSERT INTO `do_log` VALUES ('4028803328b4c7e80128b4c7e8870000', 'yuanxx', null, '2010-05-20 16:15:19', null, '127.0.0.1', '0FE1D79E4C1DCFBC9A93A37F28E38670');
INSERT INTO `do_log` VALUES ('4028803328b4cacd0128b4cacdec0000', 'yuanxx', null, '2010-05-20 16:18:29', null, '127.0.0.1', '936A95B6C3C74B89E18A01F718EDB061');
INSERT INTO `do_log` VALUES ('4028803328b4d0720128b4d072de0000', 'yuanxx', null, '2010-05-20 16:24:39', null, '127.0.0.1', '9F9DF83B2CEC5C28BDFC531BF47F0C77');
INSERT INTO `do_log` VALUES ('4028803328b4d5620128b4d5625b0000', 'yuanxx', null, '2010-05-20 16:30:02', null, '127.0.0.1', '6F4D85971B480B5843A384D6FF8224E6');
INSERT INTO `do_log` VALUES ('4028803328b4dbd10128b4dbd1540000', 'yuanxx', null, '2010-05-20 16:37:04', null, '127.0.0.1', '842D12DB5461E9F0C1171C23C3E67698');
INSERT INTO `do_log` VALUES ('4028803328b4dbd10128b4dcf7170001', 'a', null, '2010-05-20 16:38:19', null, '127.0.0.1', '842D12DB5461E9F0C1171C23C3E67698');
INSERT INTO `do_log` VALUES ('4028803328b4dbd10128b4dd0ec60002', 'a', null, '2010-05-20 16:38:25', null, '127.0.0.1', '842D12DB5461E9F0C1171C23C3E67698');
INSERT INTO `do_log` VALUES ('4028803328b4e1510128b4e1511b0000', 'yuanxx', null, '2010-05-20 16:43:05', null, '127.0.0.1', 'BA7455B95571F428B70AC494575A4D2B');
INSERT INTO `do_log` VALUES ('4028803328b4e3f90128b4e3f9190000', 'yuanxx', null, '2010-05-20 16:45:59', null, '127.0.0.1', '8118572FA7AC07AC59A863D351EAB74D');
INSERT INTO `do_log` VALUES ('4028803328b4e6500128b4e650c50000', 'a', null, '2010-05-20 16:48:32', null, '127.0.0.1', '207F2F9905D8E1AF20FFB4F12B08AAE0');
INSERT INTO `do_log` VALUES ('4028803328b4e6500128b4ea4c2d0001', 'yuanxx', null, '2010-05-20 16:52:53', null, '127.0.0.1', '207F2F9905D8E1AF20FFB4F12B08AAE0');
INSERT INTO `do_log` VALUES ('4028803328b4ef100128b4ef10c20000', 'a', null, '2010-05-20 16:58:06', null, '127.0.0.1', '87156435AF17994D8CE5F7A8AECC0C6C');
INSERT INTO `do_log` VALUES ('4028803328b4ef100128b4ef936f0001', 'yuanxx', null, '2010-05-20 16:58:39', null, '127.0.0.1', '87156435AF17994D8CE5F7A8AECC0C6C');
INSERT INTO `do_log` VALUES ('4028803328b4fed00128b4fed09e0000', 'yuanxx', null, '2010-05-20 17:15:18', null, '127.0.0.1', 'FF24EB858E4A808A26847E02D9123C6C');
INSERT INTO `do_log` VALUES ('4028803328b50cf30128b50cf3550000', 'a', null, '2010-05-20 17:30:44', null, '127.0.0.1', '0B116C7406CEEF1C4A52FD63CB95E732');
INSERT INTO `do_log` VALUES ('4028803328b50cf30128b50fd1770002', 'yuanxx', null, '2010-05-20 17:33:52', null, '127.0.0.1', '0B116C7406CEEF1C4A52FD63CB95E732');
INSERT INTO `do_log` VALUES ('4028803328b519440128b51944690000', 'a', null, '2010-05-20 17:44:11', null, '127.0.0.1', '6B5F3A4E875509A31028886516D7D2DF');
INSERT INTO `do_log` VALUES ('4028803328b519440128b51cc6e80002', 'yuanxx', null, '2010-05-20 17:48:01', null, '127.0.0.1', '6B5F3A4E875509A31028886516D7D2DF');
INSERT INTO `do_log` VALUES ('4028803328b521f20128b521f2450000', 'yuanxx', null, '2010-05-20 17:53:40', null, '127.0.0.1', 'CE8BD5794AF731E883F291E66639C7EF');
INSERT INTO `do_log` VALUES ('4028803328b5271d0128b5271d830000', 'yuanxx', null, '2010-05-20 17:59:19', null, '127.0.0.1', 'B86199CA0439F79011CC396CA8608746');
INSERT INTO `do_log` VALUES ('4028803328b529eb0128b529eb2a0000', 'yuanxx', null, '2010-05-20 18:02:23', null, '127.0.0.1', '83AAC773BB8334D7070D81ECA02D9DE4');
INSERT INTO `do_log` VALUES ('4028803328b52d930128b52d93620000', 'yuanxx', null, '2010-05-20 18:06:22', null, '127.0.0.1', '46904BA16675614A75E68380FC245634');
INSERT INTO `do_log` VALUES ('4028803328b5310a0128b5310a390000', 'yuanxx', null, '2010-05-20 18:10:09', null, '127.0.0.1', '2308EA47BDAF4E8704B41F7714236AC6');
INSERT INTO `do_log` VALUES ('4028803328b53a150128b53a150b0000', 'a', null, '2010-05-20 18:20:02', null, '127.0.0.1', '535ABDEE37E10E70B3B85D73BC5F82D5');
INSERT INTO `do_log` VALUES ('4028803328b53a150128b53b068f0001', 'yuanxx', null, '2010-05-20 18:21:04', null, '127.0.0.1', '535ABDEE37E10E70B3B85D73BC5F82D5');
INSERT INTO `do_log` VALUES ('4028803328b8954f0128b8954f340000', 'a', null, '2010-05-21 09:58:32', '2010-05-21 10:01:35', '127.0.0.1', '4A845CCDFA23D0A6A74E5BF85949B866');
INSERT INTO `do_log` VALUES ('4028803328b8954f0128b8958fe60001', 'yuanxx', null, '2010-05-21 09:58:49', '2010-05-21 10:01:35', '127.0.0.1', '4A845CCDFA23D0A6A74E5BF85949B866');
INSERT INTO `do_log` VALUES ('4028803328b898c10128b898c1770000', 'a', null, '2010-05-21 10:02:18', '2010-05-21 10:06:36', '127.0.0.1', '4E48D1DABBB7820F791FFB3773E351A9');
INSERT INTO `do_log` VALUES ('4028803328b898c10128b898df010001', 'a', null, '2010-05-21 10:02:25', '2010-05-21 10:06:36', '127.0.0.1', '4E48D1DABBB7820F791FFB3773E351A9');
INSERT INTO `do_log` VALUES ('4028803328b898c10128b89930bb0002', 'yuanxx', null, '2010-05-21 10:02:46', '2010-05-21 10:06:36', '127.0.0.1', '4E48D1DABBB7820F791FFB3773E351A9');
INSERT INTO `do_log` VALUES ('4028803328b8c3ac0128b8c3ac290000', 'yuanxx', null, '2010-05-21 10:49:11', null, '127.0.0.1', '1DF1EB01BFD983ED068CDAFF4F53ACB5');
INSERT INTO `do_log` VALUES ('4028803328b8ccc70128b8ccc7850000', 'yuanxx', null, '2010-05-21 10:59:07', null, '127.0.0.1', '44FBFD9E6F81AB52535CB9CD2933ED7F');
INSERT INTO `do_log` VALUES ('4028803328b8d1810128b8d1813c0000', 'a', null, '2010-05-21 11:04:17', null, '127.0.0.1', '67D0272325E15CCD878019490A32F142');
INSERT INTO `do_log` VALUES ('4028803328b8d1810128b8d1baea0001', 'yuanxx', null, '2010-05-21 11:04:32', null, '127.0.0.1', '67D0272325E15CCD878019490A32F142');
INSERT INTO `do_log` VALUES ('4028803328b8d7a50128b8d7a5ce0000', 'yuanxx', null, '2010-05-21 11:11:00', null, '127.0.0.1', 'AF713687BEF9F794DB1B5D7518D579EF');
INSERT INTO `do_log` VALUES ('4028803328b8de340128b8de34d30000', 'a', null, '2010-05-21 11:18:10', null, '127.0.0.1', '9EB43817F6B89C7DD139007F6837AB69');
INSERT INTO `do_log` VALUES ('4028803328b8de340128b8deac740001', 'yuanxx', null, '2010-05-21 11:18:40', null, '127.0.0.1', '9EB43817F6B89C7DD139007F6837AB69');
INSERT INTO `do_log` VALUES ('4028803328b8de340128b8e5a08b0004', 'yuanxx', null, '2010-05-21 11:26:16', null, '127.0.0.1', '9EB43817F6B89C7DD139007F6837AB69');
INSERT INTO `do_log` VALUES ('4028803328b8eb470128b8eb47900000', 'a', null, '2010-05-21 11:32:26', '2010-05-21 11:36:53', '127.0.0.1', '697F42F6FE597D931795F7198B8BA31F');
INSERT INTO `do_log` VALUES ('4028803328b8eb470128b8ec2b880001', 'yuanxx', null, '2010-05-21 11:33:25', '2010-05-21 11:36:53', '127.0.0.1', '697F42F6FE597D931795F7198B8BA31F');
INSERT INTO `do_log` VALUES ('4028803328b8eb470128b8eea8bd0002', 'yuanxx', null, '2010-05-21 11:36:08', null, '127.0.0.1', '33AB183ABF71287C623E9E42E7EC0684');
INSERT INTO `do_log` VALUES ('4028803328b8eb470128b8ef75b10003', 'a', null, '2010-05-21 11:37:00', null, '127.0.0.1', '69F0ECC50631DD3B4F4943ED15802C12');
INSERT INTO `do_log` VALUES ('4028803328b8eb470128b8f2072a0004', 'yuanxx', null, '2010-05-21 11:39:49', null, '127.0.0.1', '69F0ECC50631DD3B4F4943ED15802C12');
INSERT INTO `do_log` VALUES ('4028803328b8eb470128b8f3d93a0007', 'wkx', null, '2010-05-21 11:41:48', null, '127.0.0.1', '33AB183ABF71287C623E9E42E7EC0684');
INSERT INTO `do_log` VALUES ('4028803328b8eb470128b8f40d4a0008', 'wkx', null, '2010-05-21 11:42:01', null, '127.0.0.1', '33AB183ABF71287C623E9E42E7EC0684');
INSERT INTO `do_log` VALUES ('4028803328b8fbf00128b8fbf0840000', 'yuanxx', null, '2010-05-21 11:50:38', null, '127.0.0.1', 'B1659C002BFF33188AD274767FE443B8');
INSERT INTO `do_log` VALUES ('4028803328b906010128b90601ca0000', 'yuanxx', null, '2010-05-21 12:01:38', null, '127.0.0.1', '83953CA1E5784EA04B988489609526AD');
INSERT INTO `do_log` VALUES ('4028803328b909df0128b909df0c0000', 'yuanxx', null, '2010-05-21 12:05:51', null, '127.0.0.1', 'B196085FA456B23536329EC2976A8293');
INSERT INTO `do_log` VALUES ('4028803328b90b050128b90b050d0000', 'a', null, '2010-05-21 12:07:06', '2010-05-21 12:43:11', '127.0.0.1', 'FFE7E2262109AC99DD09CFC4C55A5FFD');
INSERT INTO `do_log` VALUES ('4028803328b90b050128b90b4d510001', 'yuanxx', null, '2010-05-21 12:07:25', '2010-05-21 12:43:11', '127.0.0.1', 'FFE7E2262109AC99DD09CFC4C55A5FFD');
INSERT INTO `do_log` VALUES ('4028803328b90b050128b9599b760002', 'a', null, '2010-05-21 13:32:59', null, '127.0.0.1', '5F36F990E014AD5020339A6F276B2841');
INSERT INTO `do_log` VALUES ('4028803328b90b050128b95a86140003', 'yuanxx', null, '2010-05-21 13:33:57', null, '127.0.0.1', '5F36F990E014AD5020339A6F276B2841');
INSERT INTO `do_log` VALUES ('4028803328b961c00128b961c03d0000', 'a', null, '2010-05-21 13:41:50', null, '127.0.0.1', 'FC48BB9BA2273E2C32E2B966A2FDC801');
INSERT INTO `do_log` VALUES ('4028803328b961c00128b96228da0001', 'yuanxx', null, '2010-05-21 13:42:17', null, '127.0.0.1', 'FC48BB9BA2273E2C32E2B966A2FDC801');
INSERT INTO `do_log` VALUES ('4028803328b96b7b0128b96b7b250000', 'a', null, '2010-05-21 13:52:28', null, '127.0.0.1', 'E1983E218399BA01E0488AA10E91721D');
INSERT INTO `do_log` VALUES ('ff80808128b97b470128b97b47d50000', 'wkx', null, '2010-05-21 14:09:43', null, '192.168.0.179', 'C98EE89752A332313EB5D1B95F35B08A');
INSERT INTO `do_log` VALUES ('ff80808128b97d5a0128b97d5a0f0000', 'wkx', null, '2010-05-21 14:11:59', '2010-05-21 14:22:27', '192.168.0.179', 'DBE3D5CDA043F8B0965C89354C9DE728');
INSERT INTO `do_log` VALUES ('ff80808128b97d5a0128b9871d010001', 'yuanxx', null, '2010-05-21 14:22:39', null, '192.168.0.179', '92AB7AC3E05295D2A7800EDFCAC4CC03');
INSERT INTO `do_log` VALUES ('4028803328b98e510128b98e518a0000', 'yuanxx', null, '2010-05-21 14:30:31', null, '127.0.0.1', '30CCA89F73B3B94DAD8C0F6284450236');
INSERT INTO `do_log` VALUES ('4028803328b98e510128b98e5da00001', 'yuanxx', null, '2010-05-21 14:30:34', null, '127.0.0.1', '30CCA89F73B3B94DAD8C0F6284450236');
INSERT INTO `do_log` VALUES ('4028803328b9990d0128b9990d290000', 'yuanxx', null, '2010-05-21 14:42:15', null, '127.0.0.1', '049E8010D2FD3FF4079E29EECAD07FFF');
INSERT INTO `do_log` VALUES ('4028803328b9990d0128b9a292a90001', 'yuanxx', null, '2010-05-21 14:52:38', null, '127.0.0.1', '049E8010D2FD3FF4079E29EECAD07FFF');
INSERT INTO `do_log` VALUES ('4028803328b9f8fd0128b9f8fda50000', 'a', null, '2010-05-21 16:27:02', null, '127.0.0.1', '5DD99FC0DC9EDB50DC810DBDFCB01BB4');
INSERT INTO `do_log` VALUES ('4028803328b9f8fd0128b9f955f60001', 'yuanxx', null, '2010-05-21 16:27:25', null, '127.0.0.1', '5DD99FC0DC9EDB50DC810DBDFCB01BB4');
INSERT INTO `do_log` VALUES ('ff80808128b9fc090128b9fc09860000', 'yuanxx', null, '2010-05-21 16:30:22', null, '192.168.0.179', '42D355219E1839CCE0B79C1E08E78489');
INSERT INTO `do_log` VALUES ('ff80808128b9fc090128b9feb0e10002', 'a', null, '2010-05-21 16:33:16', null, '192.168.0.179', '42D355219E1839CCE0B79C1E08E78489');
INSERT INTO `do_log` VALUES ('4028803328ba0a0b0128ba0a0bbc0000', 'yuanxx', null, '2010-05-21 16:45:40', null, '127.0.0.1', '0343CC00B47E0D73C0C3819F14E182B4');
INSERT INTO `do_log` VALUES ('ff80808128ba0d260128ba0d269b0000', 'yuanxx', null, '2010-05-21 16:49:03', '2010-05-21 17:10:24', '192.168.0.179', '10675473B31E515410EBA205DBC54936');
INSERT INTO `do_log` VALUES ('ff80808128ba0d260128ba0d4f670001', 'a', null, '2010-05-21 16:49:14', '2010-05-21 17:10:24', '192.168.0.179', '10675473B31E515410EBA205DBC54936');
INSERT INTO `do_log` VALUES ('ff80808128ba0d260128ba0d687b0002', 'a', null, '2010-05-21 16:49:20', '2010-05-21 17:10:24', '192.168.0.179', '10675473B31E515410EBA205DBC54936');
INSERT INTO `do_log` VALUES ('ff80808128ba0d260128ba20d1c30008', '22', null, '2010-05-21 17:10:32', '2010-05-21 17:18:14', '192.168.0.179', 'E98611E83CFE7C1E5BBC6ED8F07CB821');
INSERT INTO `do_log` VALUES ('ff80808128ba0d260128ba28036a000a', 'yuanxx', null, '2010-05-21 17:18:24', null, '192.168.0.179', 'EA74DB692553D10E22FE2FBDD2F2666C');
INSERT INTO `do_log` VALUES ('4028803328ba3dfa0128ba3dfae60000', 'yuanxx', null, '2010-05-21 17:42:23', null, '127.0.0.1', '3BBB2B4D72ABE87C49968AE37AA0DBC2');
INSERT INTO `do_log` VALUES ('4028803328ba49930128ba4993580000', 'a', null, '2010-05-21 17:55:03', null, '127.0.0.1', '141118EEA791122B5B05153744AFEDAF');
INSERT INTO `do_log` VALUES ('4028803328ba49930128ba4af48e0001', 'yuanxx', null, '2010-05-21 17:56:34', null, '127.0.0.1', '141118EEA791122B5B05153744AFEDAF');
INSERT INTO `do_log` VALUES ('4028803328c4574e0128c4574e580000', 'a', null, '2010-05-23 16:46:15', null, '127.0.0.1', '1B0FE2FED14DAC8545AE1CF37F218B98');
INSERT INTO `do_log` VALUES ('4028803328c4574e0128c457a4870001', 'yuanxx', null, '2010-05-23 16:46:37', null, '127.0.0.1', '1B0FE2FED14DAC8545AE1CF37F218B98');
INSERT INTO `do_log` VALUES ('4028803328c45ae50128c45ae51b0000', 'yuanxx', null, '2010-05-23 16:50:10', null, '127.0.0.1', 'C617FEA368359BC61A60D43CCD7F73ED');
INSERT INTO `do_log` VALUES ('4028803328c45cd60128c45cd6e90000', 'yuanxx', null, '2010-05-23 16:52:18', '2010-05-23 17:23:25', '127.0.0.1', '9F77F967838FAE93A4C485C6A112C6B0');
INSERT INTO `do_log` VALUES ('ff80808128c4808a0128c4808ad80000', 'yuanxx', null, '2010-05-23 17:31:18', null, '192.168.0.179', '7EF6E1F4ECBCCD96F2F3DDF525A3F380');
INSERT INTO `do_log` VALUES ('4028803328c45cd60128c48856780001', 'a', null, '2010-05-23 17:39:49', null, '127.0.0.1', 'A2F3E2E2C98D1BC4C9EAABBA471C5C69');
INSERT INTO `do_log` VALUES ('ff80808128c49c950128c49c95da0000', 'yuanxx', null, '2010-05-23 18:01:56', '2010-05-23 18:58:31', '192.168.0.179', 'EA962BDF8D8733462C209D0F257C258E');
INSERT INTO `do_log` VALUES ('4028803328c45cd60128c4a359d00002', 'yuanxx', null, '2010-05-23 18:09:19', null, '127.0.0.1', 'A2F3E2E2C98D1BC4C9EAABBA471C5C69');
INSERT INTO `do_log` VALUES ('4028803328c4a7b30128c4a7b3660000', 'yuanxx', null, '2010-05-23 18:14:04', null, '127.0.0.1', '72D78E7F940F0D4AEF363FAAF82E9010');
INSERT INTO `do_log` VALUES ('4028803328c4a7b30128c4a93e9a0002', 'a', null, '2010-05-23 18:15:45', null, '127.0.0.1', '72D78E7F940F0D4AEF363FAAF82E9010');
INSERT INTO `do_log` VALUES ('ff80808128c49c950128c4b426120003', 'yuanxx', null, '2010-05-23 18:27:40', '2010-05-23 18:58:31', '192.168.0.179', 'EA962BDF8D8733462C209D0F257C258E');
INSERT INTO `do_log` VALUES ('4028803328c4b4dd0128c4b4dde20000', 'yuanxx', null, '2010-05-23 18:28:27', null, '127.0.0.1', 'CD50A8C3072D751063BC6A9DA194902A');
INSERT INTO `do_log` VALUES ('4028803328c4bb550128c4bb55950000', 'yuanxx', null, '2010-05-23 18:35:31', null, '127.0.0.1', 'A20DE4537A4F5245E0423650E2A21921');
INSERT INTO `do_log` VALUES ('4028803328c7b1c20128c7b1c2140000', 'a', null, '2010-05-24 08:23:55', '2010-05-24 08:54:50', '127.0.0.1', 'BFB742A770CC1EE19A0AE02CC49C26A3');
INSERT INTO `do_log` VALUES ('ff80808128c49c950128c7b349530004', 'a', null, '2010-05-24 08:25:35', null, '192.168.0.179', 'C5FA831BD8911F6A62B2C7D8B248EA27');
INSERT INTO `do_log` VALUES ('ff80808128c49c950128c7b3afc90005', 'yuanxx', null, '2010-05-24 08:26:01', null, '192.168.0.179', 'C5FA831BD8911F6A62B2C7D8B248EA27');
INSERT INTO `do_log` VALUES ('ff80808128c7b58c0128c7b58cdd0000', 'a', null, '2010-05-24 08:28:03', null, '192.168.0.179', 'E849F389A40E55F1FBFFD0F3DF4A4149');
INSERT INTO `do_log` VALUES ('ff80808128c7b58c0128c7b5f17d0001', 'yuanxx', null, '2010-05-24 08:28:29', null, '192.168.0.179', 'E849F389A40E55F1FBFFD0F3DF4A4149');
INSERT INTO `do_log` VALUES ('4028803328c7b1c20128c7d7d8a00001', 'a', null, '2010-05-24 09:05:31', null, '127.0.0.1', 'A880BDCDC34DC91D2D677026E15CEE41');
INSERT INTO `do_log` VALUES ('4028803328c7b1c20128c7d83af40002', 'yuanxx', null, '2010-05-24 09:05:56', null, '127.0.0.1', 'A880BDCDC34DC91D2D677026E15CEE41');
INSERT INTO `do_log` VALUES ('ff80808128c7f4460128c7f446a60000', 'yuanxx', null, '2010-05-24 09:36:34', null, '192.168.0.179', 'C203829F49DA09D65ECB0041E963B09B');
INSERT INTO `do_log` VALUES ('ff80808128c802890128c802894b0000', 'yuanxx', null, '2010-05-24 09:52:09', null, '192.168.0.179', '7CF01E3C0149B9DEBC04E5E9CF7DBB63');
INSERT INTO `do_log` VALUES ('ff80808128c8099f0128c8099fa40000', 'yuanxx', null, '2010-05-24 09:59:53', null, '192.168.0.179', '61071BF83826C3F698F5E19EAC3EC653');
INSERT INTO `do_log` VALUES ('ff80808128c819000128c81900f10000', 'yuanxx', null, '2010-05-24 10:16:41', null, '192.168.0.179', '6CB7E85893CAF024DA47935F66B8C100');
INSERT INTO `do_log` VALUES ('ff80808128c819000128c81b9df00001', 'yuanxx', null, '2010-05-24 10:19:32', null, '192.168.0.179', '50273C8DD60094CA6BCB81F8FEC129E8');
INSERT INTO `do_log` VALUES ('ff80808128c819000128c81c22ea0002', 'a', null, '2010-05-24 10:20:06', null, '192.168.0.179', '50273C8DD60094CA6BCB81F8FEC129E8');
INSERT INTO `do_log` VALUES ('ff80808128c81d2f0128c81d2f980000', 'yuanxx', null, '2010-05-24 10:21:15', null, '192.168.0.179', '940E9B4BFB67D2221EEC911AE72860E0');
INSERT INTO `do_log` VALUES ('ff80808128c81d2f0128c81d45150001', 'yuanxx', null, '2010-05-24 10:21:21', null, '192.168.0.179', '940E9B4BFB67D2221EEC911AE72860E0');
INSERT INTO `do_log` VALUES ('ff80808128c81d2f0128c81f36040002', 'a', null, '2010-05-24 10:23:28', null, '192.168.0.179', '3166919D71A79D7E67A20BC834C4E8AE');
INSERT INTO `do_log` VALUES ('ff80808128c81d2f0128c82088db0003', 'yuanxx', null, '2010-05-24 10:24:55', null, '192.168.0.179', '3166919D71A79D7E67A20BC834C4E8AE');
INSERT INTO `do_log` VALUES ('4028803328c8209d0128c8209da80000', 'yuanxx', null, '2010-05-24 10:25:00', null, '127.0.0.1', 'B32AA8F3DB011DD98DF0536B761FFF45');
INSERT INTO `do_log` VALUES ('4028803328c8209d0128c820dcd40001', 'a', null, '2010-05-24 10:25:16', null, '127.0.0.1', 'B32AA8F3DB011DD98DF0536B761FFF45');
INSERT INTO `do_log` VALUES ('4028803328c8209d0128c821b2d10002', 'yuanxx', null, '2010-05-24 10:26:11', null, '127.0.0.1', 'B32AA8F3DB011DD98DF0536B761FFF45');
INSERT INTO `do_log` VALUES ('ff80808128c8245f0128c8245f2a0000', 'yuanxx', null, '2010-05-24 10:29:06', null, '192.168.0.179', '65AF2B38B72152258B0B9AF6D595AC35');
INSERT INTO `do_log` VALUES ('ff80808128c8285a0128c8285a3b0000', 'a', null, '2010-05-24 10:33:27', null, '192.168.0.179', '379D34683D62A2144B1C41457B02E576');
INSERT INTO `do_log` VALUES ('ff80808128c8285a0128c828b3f50001', 'yuanxx', null, '2010-05-24 10:33:50', null, '192.168.0.179', '379D34683D62A2144B1C41457B02E576');
INSERT INTO `do_log` VALUES ('ff80808128c82ab60128c82ab6c50000', 'a', null, '2010-05-24 10:36:02', null, '192.168.0.179', 'C8FA9297E001071A222B6AD3D71FF22D');
INSERT INTO `do_log` VALUES ('ff80808128c82ab60128c82ad2d00001', 'a', null, '2010-05-24 10:36:09', null, '192.168.0.179', 'C8FA9297E001071A222B6AD3D71FF22D');
INSERT INTO `do_log` VALUES ('ff80808128c82ab60128c82b0a8a0002', 'yuanxx', null, '2010-05-24 10:36:23', null, '192.168.0.179', 'C8FA9297E001071A222B6AD3D71FF22D');
INSERT INTO `do_log` VALUES ('ff80808128c83bb10128c83bb1d90000', 'yuanxx', null, '2010-05-24 10:54:35', null, '192.168.0.179', 'BF64F4571081274719583CFC60849BB5');
INSERT INTO `do_log` VALUES ('ff80808128c83bb10128c83d3ead0001', 'a', null, '2010-05-24 10:56:16', null, '192.168.0.179', 'BF64F4571081274719583CFC60849BB5');
INSERT INTO `do_log` VALUES ('ff80808128c83bb10128c83e00720002', 'yuanxx', null, '2010-05-24 10:57:06', null, '192.168.0.179', 'BF64F4571081274719583CFC60849BB5');
INSERT INTO `do_log` VALUES ('ff80808128c83f350128c83f35310000', 'a', null, '2010-05-24 10:58:25', null, '192.168.0.179', '77C8E00ED21878958F51727166F24FC8');
INSERT INTO `do_log` VALUES ('ff80808128c83f350128c83fb1bf0001', 'yuanxx', null, '2010-05-24 10:58:57', null, '192.168.0.179', '77C8E00ED21878958F51727166F24FC8');
INSERT INTO `do_log` VALUES ('ff80808128c840a80128c840a8790000', 'yuanxx', null, '2010-05-24 11:00:00', null, '192.168.0.179', 'E063EE8E581BA865B490A3209B6DEDA7');
INSERT INTO `do_log` VALUES ('ff80808128c840a80128c848a61a0001', 'yuanxx', null, '2010-05-24 11:08:43', null, '192.168.0.179', 'E063EE8E581BA865B490A3209B6DEDA7');
INSERT INTO `do_log` VALUES ('ff80808128c840a80128c84aab850002', 'a', null, '2010-05-24 11:10:56', null, '192.168.0.179', 'E063EE8E581BA865B490A3209B6DEDA7');
INSERT INTO `do_log` VALUES ('ff80808128c840a80128c84b29a20003', 'yuanxx', null, '2010-05-24 11:11:28', null, '192.168.0.179', 'E063EE8E581BA865B490A3209B6DEDA7');
INSERT INTO `do_log` VALUES ('4028803328c84b730128c84b735a0000', 'a', null, '2010-05-24 11:11:47', null, '127.0.0.1', '72B508B72B6F63B9563D02A6AF7C2101');
INSERT INTO `do_log` VALUES ('4028803328c84b730128c84bfc220001', 'yuanxx', null, '2010-05-24 11:12:22', null, '127.0.0.1', '72B508B72B6F63B9563D02A6AF7C2101');
INSERT INTO `do_log` VALUES ('ff80808128c84f570128c84f570e0000', 'a', null, '2010-05-24 11:16:02', null, '192.168.0.179', '36E37F6BD69ADE9B5B2367716E77A983');
INSERT INTO `do_log` VALUES ('ff80808128c84f570128c851d58c0001', 'yuanxx', null, '2010-05-24 11:18:45', null, '192.168.0.179', '36E37F6BD69ADE9B5B2367716E77A983');
INSERT INTO `do_log` VALUES ('ff80808128c86d370128c86d378e0000', 'yuanxx', null, '2010-05-24 11:48:40', null, '192.168.0.179', '6E04A9486870B9AA8F38A5FE9EF29461');
INSERT INTO `do_log` VALUES ('ff80808128c87cdc0128c87cdc660000', 'yuanxx', null, '2010-05-24 12:05:45', '2010-05-24 12:43:29', '192.168.0.179', '94FF105AA7B588E9DE598ED3F3EB5173');
INSERT INTO `do_log` VALUES ('ff80808128c87cdc0128c8a9d8800001', 'yuanxx', null, '2010-05-24 12:54:53', '2010-05-24 15:38:32', '192.168.0.179', '099DEBFF7A12572AEAB77CA4D09DF74B');
INSERT INTO `do_log` VALUES ('ff80808128c87cdc0128c8ea6431000f', 'a', null, '2010-05-24 14:05:23', '2010-05-24 15:38:32', '192.168.0.179', '099DEBFF7A12572AEAB77CA4D09DF74B');
INSERT INTO `do_log` VALUES ('ff80808128c87cdc0128c945e8480010', 'yuanxx', null, '2010-05-24 15:45:21', null, '192.168.0.179', '30409D6E7F14DAED3072A9A7E89E1F2E');
INSERT INTO `do_log` VALUES ('ff80808128c87cdc0128c946758e0011', 'a', null, '2010-05-24 15:45:57', null, '192.168.0.179', '30409D6E7F14DAED3072A9A7E89E1F2E');
INSERT INTO `do_log` VALUES ('4028803328c9777c0128c9777c7f0000', 'a', null, '2010-05-24 16:39:30', '2010-05-24 17:10:11', '127.0.0.1', '4DA97BF7E5C34F88B72B54700C5FFACF');
INSERT INTO `do_log` VALUES ('4028803328c9777c0128c977a5060001', 'a', null, '2010-05-24 16:39:41', '2010-05-24 17:10:11', '127.0.0.1', '4DA97BF7E5C34F88B72B54700C5FFACF');
INSERT INTO `do_log` VALUES ('4028803328c9777c0128c97b3b0e0002', 'a', null, '2010-05-24 16:43:36', null, '127.0.0.1', '0E503E1E05C69FA24578C9F64655C672');
INSERT INTO `do_log` VALUES ('4028803328c9777c0128c97b82f40003', 'yuanxx', null, '2010-05-24 16:43:54', null, '127.0.0.1', '0E503E1E05C69FA24578C9F64655C672');
INSERT INTO `do_log` VALUES ('4028803328c996800128c99680fd0000', 'a', null, '2010-05-24 17:13:23', null, '127.0.0.1', '1C3AC88EF8ECAB8D4C268F8E2033CF47');
INSERT INTO `do_log` VALUES ('4028803328c996800128c996bbe30001', 'yuanxx', null, '2010-05-24 17:13:38', null, '127.0.0.1', '1C3AC88EF8ECAB8D4C268F8E2033CF47');
INSERT INTO `do_log` VALUES ('4028803328c99de10128c99de17a0000', 'a', null, '2010-05-24 17:21:26', null, '127.0.0.1', '968A9BF9B6A46E676F924946022ACF72');
INSERT INTO `do_log` VALUES ('4028803328c99de10128c99e21ee0001', 'yuanxx', null, '2010-05-24 17:21:43', null, '127.0.0.1', '968A9BF9B6A46E676F924946022ACF72');
INSERT INTO `do_log` VALUES ('4028803328c9d72d0128c9d72d620000', 'yuanxx', null, '2010-05-24 18:24:02', null, '127.0.0.1', 'D49E01BECB807B8D0ABF197559E505A6');
INSERT INTO `do_log` VALUES ('ff80808128c9e15a0128c9e15a6d0000', 'zzh', null, '2010-05-24 18:35:08', null, '192.168.0.172', 'F5A217C3132A2F8267812FA94B34F52D');
INSERT INTO `do_log` VALUES ('ff80808128c9e90c0128c9e90c360000', 'yuanxx', null, '2010-05-24 18:43:33', '2010-05-24 19:25:19', '192.168.0.179', '8718D59790FF3C9790378F6B7C6C8225');
INSERT INTO `do_log` VALUES ('ff80808128c9e90c0128c9ee5eea0001', 'a', null, '2010-05-24 18:49:21', '2010-05-24 19:25:19', '192.168.0.179', '8718D59790FF3C9790378F6B7C6C8225');
INSERT INTO `do_log` VALUES ('4028803328c9ee330128c9ee330f0000', 'a', null, '2010-05-24 18:49:10', null, '127.0.0.1', '159E97AAC51423ED509DA80AD0BA0D63');
INSERT INTO `do_log` VALUES ('4028803328c9ee330128c9f40a3d0001', 'yuanxx', null, '2010-05-24 18:55:33', null, '127.0.0.1', '159E97AAC51423ED509DA80AD0BA0D63');
INSERT INTO `do_log` VALUES ('ff80808128c9e90c0128ca078d000002', 'yuanxx', null, '2010-05-24 19:16:52', '2010-05-24 19:49:20', '192.168.0.179', '2FD38BF01DBBF62DAF9CB2177E6AB3EE');
INSERT INTO `do_log` VALUES ('ff80808128c9e90c0128ccdd4fa40003', 'a', null, '2010-05-25 08:29:35', null, '192.168.0.179', 'D6A449915F31FAC60E9B0119D3A970AA');
INSERT INTO `do_log` VALUES ('ff80808128c9e90c0128ccdea2860004', 'yuanxx', null, '2010-05-25 08:31:02', null, '192.168.0.179', 'D6A449915F31FAC60E9B0119D3A970AA');
INSERT INTO `do_log` VALUES ('ff80808128c9e90c0128ccdebc570005', 'yuanxx', null, '2010-05-25 08:31:08', null, '192.168.0.179', 'D6A449915F31FAC60E9B0119D3A970AA');
INSERT INTO `do_log` VALUES ('ff80808128cce0750128cce075860000', 'yuanxx', null, '2010-05-25 08:33:01', null, '192.168.0.179', '7A98C846DDADB54B8A45F53AA4C41DCD');
INSERT INTO `do_log` VALUES ('4028803328cce45f0128cce45f870000', 'yuanxx', null, '2010-05-25 08:37:18', null, '127.0.0.1', 'A1324C7390FA1BD0F9F0FF10F15EA64B');
INSERT INTO `do_log` VALUES ('ff80808128ccf4550128ccf455050000', 'yuanxx', null, '2010-05-25 08:54:44', '2010-05-25 08:57:37', '192.168.0.179', '8E483A4BA87BE7E482CFF1E60EC327E0');
INSERT INTO `do_log` VALUES ('ff80808128ccf7b00128ccf7b0f30000', 'yuanxx', null, '2010-05-25 08:58:24', null, '192.168.0.179', '32ADD33030B7BCFA0C87995BAAF345A3');
INSERT INTO `do_log` VALUES ('ff80808128ccf7b00128ccf8b5650001', 'a', null, '2010-05-25 08:59:31', null, '192.168.0.179', '32ADD33030B7BCFA0C87995BAAF345A3');
INSERT INTO `do_log` VALUES ('ff80808128ccfb070128ccfb07160000', '11', null, '2010-05-25 09:02:03', null, '192.168.0.179', 'D4AC7C243BB32B8493D2C2B84A4838D2');
INSERT INTO `do_log` VALUES ('ff80808128ccfd200128ccfd20920000', 'yuanxx', null, '2010-05-25 09:04:20', null, '192.168.0.179', 'DB2E8EDD5FCE85C446D3178CFD3533D5');
INSERT INTO `do_log` VALUES ('ff80808128ccfd200128ccfdfd560001', '11', null, '2010-05-25 09:05:17', null, '192.168.0.179', 'DB2E8EDD5FCE85C446D3178CFD3533D5');
INSERT INTO `do_log` VALUES ('ff80808128ccfff40128ccfff4230000', 'yuanxx', null, '2010-05-25 09:07:25', '2010-05-25 09:08:39', '192.168.0.179', '247E091C084C57AE4A2053A8DBCF2634');
INSERT INTO `do_log` VALUES ('ff80808128ccfff40128cd0135800001', '11', null, '2010-05-25 09:08:48', null, '192.168.0.179', 'CF30EB5BB80F6D072D38B96967AD47D3');
INSERT INTO `do_log` VALUES ('ff80808128cd02920128cd02924e0000', 'yuanxx', null, '2010-05-25 09:10:17', '2010-05-25 09:12:11', '192.168.0.179', '3D708AC9D7D14655886D835BEA04B3BE');
INSERT INTO `do_log` VALUES ('ff80808128cd02920128cd03ead30001', 'a', null, '2010-05-25 09:11:45', '2010-05-25 09:12:11', '192.168.0.179', '3D708AC9D7D14655886D835BEA04B3BE');
INSERT INTO `do_log` VALUES ('ff80808128cd02920128cd04628a0002', '11', null, '2010-05-25 09:12:16', null, '192.168.0.179', '39B7E0D94BB8298563DDE6A4EF2448B1');
INSERT INTO `do_log` VALUES ('ff80808128cd05ee0128cd05ee8e0000', 'yuanxx', null, '2010-05-25 09:13:57', null, '192.168.0.179', '8D8A2499B961E69112EFAD4616F7B33A');
INSERT INTO `do_log` VALUES ('4028803328cd076d0128cd076dc60000', '11', null, '2010-05-25 09:15:35', '2010-05-25 09:16:34', '127.0.0.1', 'DAC1D5525C1CE0A9ADC301358E9A5562');
INSERT INTO `do_log` VALUES ('ff80808128cd09d30128cd09d3120000', 'yuanxx', null, '2010-05-25 09:18:12', null, '192.168.0.179', 'BB0546108278309CED33E7A241CE412E');
INSERT INTO `do_log` VALUES ('ff80808128cd09d30128cd0aa2790001', 'a', null, '2010-05-25 09:19:05', null, '192.168.0.179', 'BB0546108278309CED33E7A241CE412E');
INSERT INTO `do_log` VALUES ('ff80808128cd09d30128cd180daf001d', 'yuanxx', null, '2010-05-25 09:33:45', null, '192.168.0.179', 'BB0546108278309CED33E7A241CE412E');
INSERT INTO `do_log` VALUES ('ff80808128cd1c7b0128cd1c7b540000', '11', null, '2010-05-25 09:38:35', null, '192.168.0.179', 'B9980D7FED62659E4F30BAB1C8A886C1');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd1d9bb00000', 'yuanxx', null, '2010-05-25 09:39:49', '2010-05-25 10:10:34', '192.168.0.179', 'D4BD48A787C2470A9D36FA42455FAE20');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd67de1a0001', '11', null, '2010-05-25 11:00:55', '2010-05-25 11:15:14', '192.168.0.179', 'DF94220A27967665C64FCA3DF60BE5D3');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd7525ad0010', 'yuanxx', null, '2010-05-25 11:15:26', '2010-05-25 11:17:33', '192.168.0.179', '5231B5D76F4C32495AF2236C94FE6A23');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd7735230011', '11', null, '2010-05-25 11:17:41', '2010-05-25 11:23:35', '192.168.0.179', '34326F7FDCBF80A61D785B34981B8D34');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd77afa20012', 'a', null, '2010-05-25 11:18:12', '2010-05-25 11:23:35', '192.168.0.179', '34326F7FDCBF80A61D785B34981B8D34');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd796e6a0013', '11', null, '2010-05-25 11:20:07', '2010-05-25 11:23:35', '192.168.0.179', '34326F7FDCBF80A61D785B34981B8D34');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd7ccb49001d', 'yuanxx', null, '2010-05-25 11:23:47', '2010-05-25 11:24:31', '192.168.0.179', '5796B4D49611A5D15E2A8FC5EE0D8295');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd7d8fbc001e', '11', null, '2010-05-25 11:24:37', '2010-05-25 11:46:17', '192.168.0.179', 'A132F8AE68973D1DAEA1E9B196E314BD');
INSERT INTO `do_log` VALUES ('4028803328cd9c740128cd9c74580000', 'yuanxx', null, '2010-05-25 11:58:22', null, '127.0.0.1', '1FEDA5B6EB1096AD3BCDCE139DEA53F0');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cd9ffec5004e', 'yuanxx', null, '2010-05-25 12:02:14', null, '192.168.0.179', '87FC4997DB7536754845636107D00E8F');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cda0cf95004f', 'yuanxx', null, '2010-05-25 12:03:07', null, '192.168.0.179', '87FC4997DB7536754845636107D00E8F');
INSERT INTO `do_log` VALUES ('ff80808128cd1d9b0128cda2ae230050', 'a', null, '2010-05-25 12:05:10', null, '192.168.0.179', '87FC4997DB7536754845636107D00E8F');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128cda787470000', 'yuanxx', null, '2010-05-25 12:10:28', '2010-05-25 12:43:06', '192.168.0.179', 'C81723156233A067891F322C7B454698');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128cda7ce370001', '11', null, '2010-05-25 12:10:46', '2010-05-25 12:43:06', '192.168.0.179', 'C81723156233A067891F322C7B454698');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128cda8f8070004', '11', null, '2010-05-25 12:12:02', '2010-05-25 12:43:06', '192.168.0.179', 'C81723156233A067891F322C7B454698');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128cda9a3490006', '11', null, '2010-05-25 12:12:46', '2010-05-25 12:43:06', '192.168.0.179', 'C81723156233A067891F322C7B454698');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128cdf79d480007', 'yuanxx', null, '2010-05-25 13:37:56', '2010-05-25 13:38:11', '192.168.0.179', '92F8E8710F9252689F6E1C5DAFDC7B41');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128cdf7ed170008', '11', null, '2010-05-25 13:38:16', '2010-05-25 15:14:13', '192.168.0.179', 'C7CCFC632CECA082B36A665534ADFE7B');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128cdf99ebf000a', 'a', null, '2010-05-25 13:40:08', '2010-05-25 15:14:13', '192.168.0.179', 'C7CCFC632CECA082B36A665534ADFE7B');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128ce2224c9000e', 'yuanxx', null, '2010-05-25 14:24:23', '2010-05-25 15:14:13', '192.168.0.179', 'C7CCFC632CECA082B36A665534ADFE7B');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128ce4fe96d000f', '11', null, '2010-05-25 15:14:23', '2010-05-25 15:15:14', '192.168.0.179', '2FA4F5FA0FAA2A688720F2E83B15B186');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128ce50e0020011', 'yuanxx', null, '2010-05-25 15:15:26', '2010-05-25 15:37:33', '192.168.0.179', '1CD2CD54378146E6846D0D95232F6023');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128ce525dc60013', 'a', null, '2010-05-25 15:17:04', '2010-05-25 15:37:33', '192.168.0.179', '1CD2CD54378146E6846D0D95232F6023');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128ce54a4a70014', 'yuanxx', null, '2010-05-25 15:19:33', '2010-05-25 15:37:33', '192.168.0.179', '1CD2CD54378146E6846D0D95232F6023');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128ce639ce50016', 'a', null, '2010-05-25 15:35:54', '2010-05-25 15:37:33', '192.168.0.179', '1CD2CD54378146E6846D0D95232F6023');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128ce654ecf0017', 'yuanxx', null, '2010-05-25 15:37:45', null, '192.168.0.179', 'AF145884C0718860C254FA9799610965');
INSERT INTO `do_log` VALUES ('ff80808128cda7870128ce6a2da80018', 'qyf', null, '2010-05-25 15:43:04', null, '192.168.0.179', 'AF145884C0718860C254FA9799610965');
INSERT INTO `do_log` VALUES ('4028803328ce8b6f0128ce8b6f5d0000', '11', null, '2010-05-25 16:19:24', null, '127.0.0.1', 'BF166A4CCFAE8496234CDF21AC79745F');
INSERT INTO `do_log` VALUES ('ff80808128ce95870128ce9587520000', '11', null, '2010-05-25 16:30:25', null, '192.168.0.179', 'BEBA8CB8B35F5135D00DFCD61491408F');
INSERT INTO `do_log` VALUES ('ff80808128ce95870128ce9a651b0001', 'zzh', null, '2010-05-25 16:35:44', null, '192.168.0.172', 'D106BE26E6F550C901F2628779DB845F');
INSERT INTO `do_log` VALUES ('ff80808128ce95870128ce9b7ca70002', 'zzh', null, '2010-05-25 16:36:56', null, '192.168.0.172', 'FE5B937A7CCEBA9F99708320180BE7C6');
INSERT INTO `do_log` VALUES ('ff80808128ce9d9d0128ce9d9d0a0000', '11', null, '2010-05-25 16:39:15', null, '192.168.0.179', 'F3DBDFA88D0D9A2104374A1FD73E836B');
INSERT INTO `do_log` VALUES ('ff80808128ce9d9d0128ce9da6ab0001', 'zzh', null, '2010-05-25 16:39:17', null, '192.168.0.172', 'D0FB7640BE2A79EEB35B548C642ECBA9');
INSERT INTO `do_log` VALUES ('ff80808128ce9d9d0128ce9f74c60002', 'a', null, '2010-05-25 16:41:16', null, '192.168.0.179', 'F3DBDFA88D0D9A2104374A1FD73E836B');
INSERT INTO `do_log` VALUES ('ff80808128cea4fd0128cea4fd580000', '11', null, '2010-05-25 16:47:18', '2010-05-25 17:35:44', '192.168.0.179', '41465BBD890659A0D2210C4D66431976');
INSERT INTO `do_log` VALUES ('ff80808128cea4fd0128cea5cd710001', 'qyf', null, '2010-05-25 16:48:12', '2010-05-25 17:35:44', '192.168.0.168', '33FF6818C54A02E345DA2174DC7B04A8');
INSERT INTO `do_log` VALUES ('ff80808128cea4fd0128cea70a4b0003', 'a', null, '2010-05-25 16:49:33', '2010-05-25 17:35:44', '192.168.0.179', '41465BBD890659A0D2210C4D66431976');
INSERT INTO `do_log` VALUES ('ff80808128cea4fd0128ceaaa3ee0008', 'zwjia', null, '2010-05-25 16:53:29', '2010-05-25 17:05:49', '192.168.0.167', '0A77DF0995EB3DE150C53F3790B8C125');
INSERT INTO `do_log` VALUES ('ff80808128cea4fd0128ceb62333000a', 'admin', null, '2010-05-25 17:06:02', '2010-05-25 17:07:18', '192.168.0.167', 'A3637938E80FE8F0C2177786664D850F');
INSERT INTO `do_log` VALUES ('ff80808128cea4fd0128ceb79adc000b', 'faq', null, '2010-05-25 17:07:38', '2010-05-25 17:08:39', '192.168.0.167', 'A4EF0D1BB12A672555EF8A17512704BE');
INSERT INTO `do_log` VALUES ('ff80808128cea4fd0128ceb9e747000c', 'zwjia', null, '2010-05-25 17:10:09', '2010-05-25 17:42:44', '192.168.0.167', '676908D5C3C7233B7BC3D3A6D90C6497');
INSERT INTO `do_log` VALUES ('ff80808128cea4fd0128ceec37b7000d', 'zzh', null, '2010-05-25 18:05:06', null, '192.168.0.172', '50A62C9813E00B7ADC09418CC6710A04');
INSERT INTO `do_log` VALUES ('ff80808128ceeea60128ceeea6f50000', '11', null, '2010-05-25 18:07:46', null, '192.168.0.179', '9BDE7022FF8A7F9157B5315A4EACDA9A');
INSERT INTO `do_log` VALUES ('ff80808128cef7390128cef739ea0000', 'a', null, '2010-05-25 18:17:08', null, '192.168.0.179', 'AE0A97487F8D469FC8EDAC48D2F27D29');
INSERT INTO `do_log` VALUES ('ff80808128cefb610128cefb61410000', 'a', null, '2010-05-25 18:21:40', '2010-05-25 18:58:31', '192.168.0.179', '9680140500520CF2B7023556D25F000E');
INSERT INTO `do_log` VALUES ('ff80808128cefb610128cefb78100001', 'a', null, '2010-05-25 18:21:46', '2010-05-25 18:58:31', '192.168.0.179', '9680140500520CF2B7023556D25F000E');
INSERT INTO `do_log` VALUES ('ff80808128cefb610128cefd75a80002', '11', null, '2010-05-25 18:23:56', '2010-05-25 18:58:31', '192.168.0.179', '9680140500520CF2B7023556D25F000E');
INSERT INTO `do_log` VALUES ('ff80808128dcb5770128dcb577480000', 'wkx', null, '2010-05-28 10:19:59', null, '192.168.0.164', 'F87E7D2A7681714992CE1511A56B6230');
INSERT INTO `do_log` VALUES ('ff80808128dcb5770128dcb8153b0001', 'qyf', null, '2010-05-28 10:22:51', null, '192.168.0.168', '09191EC30CC2F674440CEFAAD011C510');
INSERT INTO `do_log` VALUES ('4028803328e1d7430128e1d7438e0000', 'a', null, '2010-05-29 10:15:00', null, '127.0.0.1', 'DF0539298DE82EA104E8B223CE9EDF4A');
INSERT INTO `do_log` VALUES ('4028803328e1d7430128e1d842120001', 'yuanxx', null, '2010-05-29 10:16:05', null, '127.0.0.1', 'DF0539298DE82EA104E8B223CE9EDF4A');
INSERT INTO `do_log` VALUES ('4028803328e1eda90128e1eda9800000', 'a', null, '2010-05-29 10:39:28', '2010-05-29 10:43:04', '127.0.0.1', 'D95A4A4F32ADAB7D7406FCC45132C7CF');
INSERT INTO `do_log` VALUES ('4028803328e1eda90128e1ef92f10002', 'yuanxx', null, '2010-05-29 10:41:34', '2010-05-29 10:43:04', '127.0.0.1', 'D95A4A4F32ADAB7D7406FCC45132C7CF');
INSERT INTO `do_log` VALUES ('4028803328e1eda90128e1f155ee0003', 'yuanxx', null, '2010-05-29 10:43:29', '2010-05-29 10:45:19', '127.0.0.1', '7B541D9BADE06A70B098020B1FE6B6D2');
INSERT INTO `do_log` VALUES ('ff80808128e1f8610128e1f861d20000', 'yuanxx', null, '2010-05-29 10:51:11', '2010-05-29 10:51:59', '192.168.0.179', 'E5FECDB48130A8493498AAF8A7239CE3');
INSERT INTO `do_log` VALUES ('ff80808128e1f8610128e1f9386f0001', '11', null, '2010-05-29 10:52:06', null, '192.168.0.179', '36F65EF984CAAF447382060B2795EA69');
INSERT INTO `do_log` VALUES ('ff80808128e1f8610128e1fbca850003', 'a', null, '2010-05-29 10:54:54', null, '192.168.0.179', '36F65EF984CAAF447382060B2795EA69');
INSERT INTO `do_log` VALUES ('4028803328e1ffc50128e1ffc54e0000', 'a', null, '2010-05-29 10:59:15', null, '127.0.0.1', '9F811CFCD36967B46424F0B061BE4F2A');
INSERT INTO `do_log` VALUES ('4028803328e1ffc50128e2023c2a0002', 'yuanxx', null, '2010-05-29 11:01:57', null, '127.0.0.1', '9F811CFCD36967B46424F0B061BE4F2A');
INSERT INTO `do_log` VALUES ('ff80808128e1f8610128e20540170004', 'yuanxx', null, '2010-05-29 11:05:14', null, '192.168.0.179', '36F65EF984CAAF447382060B2795EA69');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128e207b0f70000', 'yuanxx', null, '2010-05-29 11:07:55', '2010-05-29 11:39:33', '192.168.0.179', '9AAB85ACDEAA1FABF5BDC281B09B33CA');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128e213cd9d0001', 'yuanxx', null, '2010-05-29 11:21:08', '2010-05-29 11:51:34', '192.168.0.179', 'FA4209AEB260116CC32FA04D6D060090');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128e213df000002', 'yuanxx', null, '2010-05-29 11:21:12', '2010-05-29 11:51:34', '192.168.0.179', 'FA4209AEB260116CC32FA04D6D060090');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128ec372c880003', 'zwjia', null, '2010-05-31 10:35:58', '2010-05-31 11:20:11', '192.168.0.30', 'B7EF95FF94A88099DD9BCB73A527F769');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128ed4f8c6e0004', 'qyf', null, '2010-05-31 15:42:13', '2010-05-31 16:19:14', '192.168.0.171', 'D05ADBCBAAD5AE228F06414D453DC38E');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128f715c6be0005', 'qyf', null, '2010-06-02 13:15:19', '2010-06-02 13:54:52', '192.168.0.171', '51C4987AC6B8237D64D947E442C78EB8');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128f715d6f60006', 'qyf', null, '2010-06-02 13:15:23', '2010-06-02 13:54:52', '192.168.0.171', '51C4987AC6B8237D64D947E442C78EB8');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128f74c3e730007', 'qyf', null, '2010-06-02 14:14:48', '2010-06-02 14:44:53', '192.168.0.171', '5F476507A046702F7AF049EFC8E64751');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128f75803290008', 'qyf', null, '2010-06-02 14:27:39', '2010-06-02 15:04:53', '192.168.0.171', '8E94BE0C6EF672B04F14D7D59F065D37');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128f78cbe0b0009', 'qyf', null, '2010-06-02 15:25:15', '2010-06-02 16:04:54', '192.168.0.171', '429D8223913978A39775B48DF361FB94');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128fb7a9e47000a', 'qyf', null, '2010-06-03 09:43:56', '2010-06-03 10:32:08', '192.168.0.171', '1195752E920D9978ED523CD1364FE093');
INSERT INTO `do_log` VALUES ('ff80808128e207b00128fbdf2b1b000b', 'qyf', null, '2010-06-03 11:33:46', '2010-06-03 12:31:09', '192.168.0.171', 'BA533A595C3B3FE006E54ECC7F29AA96');
INSERT INTO `do_log` VALUES ('ff80808128e207b0012908af497f000c', 'qyf', null, '2010-06-05 23:16:32', '2010-06-05 23:54:54', '192.168.0.173', '781361812AE621E73226A4572DE95C5E');
INSERT INTO `do_log` VALUES ('ff80808128e207b0012908af64ee000d', 'qyf', null, '2010-06-05 23:16:39', '2010-06-05 23:54:54', '192.168.0.173', '781361812AE621E73226A4572DE95C5E');
INSERT INTO `do_log` VALUES ('ff80808128e207b001290bdcdc55000e', 'qyf', null, '2010-06-06 14:05:10', '2010-06-06 15:12:06', '192.168.0.173', 'B4C1D49F78A0D02C502FAAEE07881E82');
INSERT INTO `do_log` VALUES ('ff80808128e207b001290bdd0b35000f', 'qyf', null, '2010-06-06 14:05:22', '2010-06-06 15:12:06', '192.168.0.173', 'B4C1D49F78A0D02C502FAAEE07881E82');
INSERT INTO `do_log` VALUES ('ff80808128e207b001290c5895f30010', 'qyf', null, '2010-06-06 16:20:19', '2010-06-06 18:27:08', '192.168.0.173', '50FA051920B27EECF89D498D8AC406AC');
INSERT INTO `do_log` VALUES ('4028803329107b180129107b18a90000', 'a', null, '2010-06-07 11:36:29', null, '127.0.0.1', 'C18129409225DF9C308295097C41E7F7');
INSERT INTO `do_log` VALUES ('402880332911ea06012911ea06410000', 'a', null, '2010-06-07 18:17:16', null, '127.0.0.1', 'CE38A1EC215BD239AE7BBF5CABB43CD1');
INSERT INTO `do_log` VALUES ('402880332911ea06012911ea97560001', 'yuanxx', null, '2010-06-07 18:17:53', null, '127.0.0.1', 'CE38A1EC215BD239AE7BBF5CABB43CD1');
INSERT INTO `do_log` VALUES ('40288033292691b901292691b9220000', 'a', null, '2010-06-11 18:32:51', null, '127.0.0.1', '6E71C5B390822D65C94065841DDE7A33');
INSERT INTO `do_log` VALUES ('40288033292691b90129269254390001', 'yuanxx', null, '2010-06-11 18:33:30', null, '127.0.0.1', '6E71C5B390822D65C94065841DDE7A33');
INSERT INTO `do_log` VALUES ('40288033292699880129269988660000', 'a', null, '2010-06-11 18:41:23', null, '127.0.0.1', 'F54EC2D83A244A493F44E1857A21BAC8');
INSERT INTO `do_log` VALUES ('ff808081292a4af701292a4af76a0000', 'qyf', null, '2010-06-12 11:54:03', '2010-06-12 11:55:19', '192.168.0.171', '99916A6DADCCB75FAE404B0F9B0B3166');
INSERT INTO `do_log` VALUES ('402880332a0c4984012a0c49847b0000', 'a', null, '2010-07-26 09:06:38', '2010-07-26 09:08:45', '127.0.0.1', 'DADE30DAD23C647A101619903E7243B5');
INSERT INTO `do_log` VALUES ('402880332a0c4984012a0c4b95790001', 'a', null, '2010-07-26 09:08:54', null, '127.0.0.1', '32D1AD00A20E4C00BC1A9F4260BD70C5');
INSERT INTO `do_log` VALUES ('402880332a0c594f012a0c594f830000', 'a', null, '2010-07-26 09:23:53', null, '127.0.0.1', 'BBA416001D4D6FCAD7630FB02DD6900E');
INSERT INTO `do_log` VALUES ('402880332a0c627c012a0c627c540000', 'a', null, '2010-07-26 09:33:55', null, '127.0.0.1', '0667367F4F9DD5AEE154159BAA58035A');
INSERT INTO `do_log` VALUES ('402880332a0c6da7012a0c6da7c30000', 'a', null, '2010-07-26 09:46:07', '2010-07-26 10:03:29', '127.0.0.1', 'B42E574750DC307C743E65455EE0847C');
INSERT INTO `do_log` VALUES ('ff8080812a0c71c3012a0c71c3730000', 'yuanxx', null, '2010-07-26 09:50:36', '2010-07-26 10:30:27', '192.168.0.179', 'DA7A5C9E00078101882EA22FB4B198C3');
INSERT INTO `do_log` VALUES ('402880332a0c6da7012a0c7da7c60001', 'a', null, '2010-07-26 10:03:35', null, '127.0.0.1', 'A46C3EAC2459B864239C663C302C2DA7');
INSERT INTO `do_log` VALUES ('402880332a0c81a5012a0c81a5bf0000', 'a', null, '2010-07-26 10:07:57', null, '127.0.0.1', '87AAD5E8867C97C21740857D81ADADBB');
INSERT INTO `do_log` VALUES ('402880332a0c8757012a0c8757340000', 'yuanxx', null, '2010-07-26 10:14:10', null, '127.0.0.1', '9AA1D73F3478E8A45A1B510D679E8218');
INSERT INTO `do_log` VALUES ('402880332a0c9e43012a0c9e436e0000', 'a', null, '2010-07-26 10:39:12', null, '127.0.0.1', 'F0FE45E7F33B8F3BC1C8C75A5253608C');
INSERT INTO `do_log` VALUES ('402880332a0c9e43012a0c9e5deb0001', 'a', null, '2010-07-26 10:39:19', null, '127.0.0.1', 'F0FE45E7F33B8F3BC1C8C75A5253608C');
INSERT INTO `do_log` VALUES ('402880332a0c9e43012a0c9ea17c0002', 'yuanxx', null, '2010-07-26 10:39:36', null, '127.0.0.1', 'F0FE45E7F33B8F3BC1C8C75A5253608C');
INSERT INTO `do_log` VALUES ('402880332a0ca627012a0ca627e00000', 'yuanxx', null, '2010-07-26 10:47:50', null, '127.0.0.1', '15A3658B7A299866FF3AAA25A6D75072');
INSERT INTO `do_log` VALUES ('402880332a0caf8b012a0caf8bce0000', 'yuanxx', null, '2010-07-26 10:58:05', null, '127.0.0.1', 'E2D5BA82F139883E378E9D41FECCC948');
INSERT INTO `do_log` VALUES ('402880332a0cb47e012a0cb47e2a0000', 'yuanxx', null, '2010-07-26 11:03:29', null, '127.0.0.1', '48668BBC05E45E124F8692CF553FF60D');
INSERT INTO `do_log` VALUES ('402880332a0cb60e012a0cb60e400000', 'yuanxx', null, '2010-07-26 11:05:12', null, '127.0.0.1', '51488739F4109DF763F5D519D149F140');
INSERT INTO `do_log` VALUES ('402880332a0cc04d012a0cc04d2c0000', 'yuanxx', null, '2010-07-26 11:16:23', null, '127.0.0.1', 'ED1449EFD3D52540C2B68EF6BBD02310');
INSERT INTO `do_log` VALUES ('402880332a0ccc2a012a0ccc2ad50000', 'yuanxx', null, '2010-07-26 11:29:21', null, '127.0.0.1', 'EBA9E1F9B917175D17ACD261A1417964');
INSERT INTO `do_log` VALUES ('402880332a0d0338012a0d0338850000', 'a', null, '2010-07-26 12:29:29', '2010-07-26 13:00:19', '127.0.0.1', 'FB9A94BF65CE2661A4B2644868799D77');
INSERT INTO `do_log` VALUES ('402880332a0d0338012a0d0394ee0001', 'yuanxx', null, '2010-07-26 12:29:52', '2010-07-26 13:00:19', '127.0.0.1', 'FB9A94BF65CE2661A4B2644868799D77');
INSERT INTO `do_log` VALUES ('402880332a0d0338012a0d3ed0420002', 'a', null, '2010-07-26 13:34:34', null, '127.0.0.1', 'A41EB18DA767499AED4422681197E9E0');
INSERT INTO `do_log` VALUES ('402880332a0d0338012a0d3f46d90003', 'yuanxx', null, '2010-07-26 13:35:04', null, '127.0.0.1', 'A41EB18DA767499AED4422681197E9E0');
INSERT INTO `do_log` VALUES ('ff8080812a0c71c3012a0d46abd80001', 'a', null, '2010-07-26 13:43:09', null, '192.168.0.179', '97B503948A4F77D0F60A14C545E573F5');
INSERT INTO `do_log` VALUES ('ff8080812a0c71c3012a0d4f560e0002', 'yuanxx', null, '2010-07-26 13:52:37', null, '192.168.0.179', '97B503948A4F77D0F60A14C545E573F5');
INSERT INTO `do_log` VALUES ('402880332a0d5bd3012a0d5bd3710000', 'a', null, '2010-07-26 14:06:16', null, '127.0.0.1', '7212B1A59AEB27E05E631467995D3D52');
INSERT INTO `do_log` VALUES ('402880332a0d5bd3012a0d5c22ba0001', 'yuanxx', null, '2010-07-26 14:06:36', null, '127.0.0.1', '7212B1A59AEB27E05E631467995D3D52');
INSERT INTO `do_log` VALUES ('402880332a0db4e3012a0db4e3dc0000', 'yuanxx', null, '2010-07-26 15:43:32', null, '127.0.0.1', 'FC2339AA2AA713B9B9F185EFF6FF174E');
INSERT INTO `do_log` VALUES ('402880332a0dc81a012a0dc81abe0000', 'yuanxx', null, '2010-07-26 16:04:32', null, '127.0.0.1', 'D9840904E890523AA9F417416FFDC2E8');
INSERT INTO `do_log` VALUES ('402880332a0dd48d012a0dd48db10000', 'yuanxx', null, '2010-07-26 16:18:08', null, '127.0.0.1', '7BE4DAA696873F7059DBBA5164CCB804');
INSERT INTO `do_log` VALUES ('402880332a0ddb4c012a0ddb4c510000', 'yuanxx', null, '2010-07-26 16:25:30', null, '127.0.0.1', '77BF2D7CF9DD33178B4F474AB0DB8491');
INSERT INTO `do_log` VALUES ('402880332a0de34c012a0de34cf60000', 'a', null, '2010-07-26 16:34:14', null, '127.0.0.1', '8EBA761FE2508D1D62386038D3F9933C');
INSERT INTO `do_log` VALUES ('402880332a0de793012a0de793520000', 'yuanxx', null, '2010-07-26 16:38:54', null, '127.0.0.1', '2733AD76E697D19861DECA4EDE7606C8');
INSERT INTO `do_log` VALUES ('402880332a0dffb8012a0dffb8990000', 'a', null, '2010-07-26 17:05:17', null, '127.0.0.1', '062B5CA94882F4E28630EAE8E3E08626');
INSERT INTO `do_log` VALUES ('402880332a0dffb8012a0e00c40d0001', 'yuanxx', null, '2010-07-26 17:06:25', null, '127.0.0.1', '062B5CA94882F4E28630EAE8E3E08626');
INSERT INTO `do_log` VALUES ('402880332a0e03eb012a0e03ebbb0000', 'yuanxx', null, '2010-07-26 17:09:52', null, '127.0.0.1', '1A3F05E16103FD0DD3A0AEDA1C6D3153');
INSERT INTO `do_log` VALUES ('402880332a0e09f6012a0e09f6f90000', 'yuanxx', null, '2010-07-26 17:16:28', null, '127.0.0.1', 'E86C35B75272F055ADC159ED2FB4882F');
INSERT INTO `do_log` VALUES ('402880332a0e0f5e012a0e0f5e550000', 'yuanxx', null, '2010-07-26 17:22:22', null, '127.0.0.1', '55F956C414683ED10B23B9BEE00A23D3');
INSERT INTO `do_log` VALUES ('402880332a0e1603012a0e1603b00000', 'yuanxx', null, '2010-07-26 17:29:38', null, '127.0.0.1', '0E4ABD9851E60751DC741A19D8551655');
INSERT INTO `do_log` VALUES ('402880332a0e1815012a0e18151c0000', 'yuanxx', null, '2010-07-26 17:31:53', null, '127.0.0.1', '2BB78DACDA4DF57B8B673B7D3BEFDEA7');
INSERT INTO `do_log` VALUES ('402880332a0e2548012a0e2548710000', 'yuanxx', null, '2010-07-26 17:46:18', null, '127.0.0.1', 'C89D55B286C3C94A1817C52D54F141D1');
INSERT INTO `do_log` VALUES ('402880332a11736d012a11736d3c0000', 'a', null, '2010-07-27 09:10:31', '2010-07-27 12:59:45', '127.0.0.1', '7A41BB1891FD9C193ABC2C82F4590AD8');
INSERT INTO `do_log` VALUES ('402880332a11736d012a1193f2200032', 'yuanxx', null, '2010-07-27 09:46:02', '2010-07-27 12:59:45', '127.0.0.1', '7A41BB1891FD9C193ABC2C82F4590AD8');
INSERT INTO `do_log` VALUES ('402880332a11736d012a126d41d7007a', 'yuanxx', null, '2010-07-27 13:43:24', null, '127.0.0.1', 'ACB172533C430147856AA969085AC811');
INSERT INTO `do_log` VALUES ('402880332a128f0e012a128f0e5d0000', 'yuanxx', null, '2010-07-27 14:20:19', null, '127.0.0.1', 'B7EADB07055CB8A27E2C3C9C2CEF1385');
INSERT INTO `do_log` VALUES ('402880332a1296c7012a1296c70d0000', 'yuanxx', null, '2010-07-27 14:28:45', null, '127.0.0.1', 'DD987DA9AC6882145AA1E8A0C7425758');
INSERT INTO `do_log` VALUES ('402880332a129a9b012a129a9b170000', 'yuanxx', null, '2010-07-27 14:32:56', null, '127.0.0.1', 'A60FDC774D6C7DE14926FCF14DE2D038');
INSERT INTO `do_log` VALUES ('402880332a129e0e012a129e0e450000', 'yuanxx', null, '2010-07-27 14:36:42', null, '127.0.0.1', '115FFC1994BBCD131C4C7827E1A9D246');
INSERT INTO `do_log` VALUES ('402880332a12a386012a12a3862c0000', 'yuanxx', null, '2010-07-27 14:42:40', null, '127.0.0.1', '53C8EF3DDCD0ECE0FA82A9064835379E');
INSERT INTO `do_log` VALUES ('402880332a12a8d2012a12a8d2110000', 'yuanxx', null, '2010-07-27 14:48:28', null, '127.0.0.1', '914D5E1D80EAC3584F0710984655C1C9');
INSERT INTO `do_log` VALUES ('402880332a12ba70012a12ba70a10000', 'yuanxx', null, '2010-07-27 15:07:42', null, '127.0.0.1', 'D384759F9E89AFF3244F59C82652C2F8');
INSERT INTO `do_log` VALUES ('402880332a12bffa012a12bffa1c0000', 'yuanxx', null, '2010-07-27 15:13:45', null, '127.0.0.1', '37ED689A99C62AC0AB87A7054DB0EC93');
INSERT INTO `do_log` VALUES ('402880332a12c4de012a12c4dedb0000', 'yuanxx', null, '2010-07-27 15:19:06', null, '127.0.0.1', 'DB2DBF04CBE88074D273A4E9BA45572C');
INSERT INTO `do_log` VALUES ('402880332a132eca012a132eca940000', 'yuanxx', null, '2010-07-27 17:14:47', null, '127.0.0.1', 'E01AB9660AE487C7BB2FE05BBE7CBC47');
INSERT INTO `do_log` VALUES ('402880332a13318b012a13318bb70000', 'yuanxx', null, '2010-07-27 17:17:48', null, '127.0.0.1', 'BA3EBF84E954276BBD51DB4A8652DE36');
INSERT INTO `do_log` VALUES ('402880332a1337bf012a1337bf8c0000', 'yuanxx', null, '2010-07-27 17:24:34', null, '127.0.0.1', '96C4A3794CBD120D067F33C07231D87E');
INSERT INTO `do_log` VALUES ('402880332a169f4b012a169f4bb20000', 'a', null, '2010-07-28 09:16:32', '2010-07-28 10:55:10', '127.0.0.1', 'A98130F4E751EB3B0A47F158485C86B3');
INSERT INTO `do_log` VALUES ('402880332a169f4b012a169fb1ee0001', 'yuanxx', null, '2010-07-28 09:16:58', '2010-07-28 10:55:10', '127.0.0.1', 'A98130F4E751EB3B0A47F158485C86B3');
INSERT INTO `do_log` VALUES ('ff8080812a173dcb012a173dcb210000', 'yuanxx', null, '2010-07-28 12:09:40', '2010-07-28 13:10:29', '192.168.0.179', '026B1AAB8715E4B40C6967AE28A99584');
INSERT INTO `do_log` VALUES ('402880332a17ab69012a17ab69d10000', 'a', null, '2010-07-28 14:09:24', null, '127.0.0.1', 'AEE5D6BC93282F350C3E3C642C91C70D');
INSERT INTO `do_log` VALUES ('402880332a17ab69012a17abc7ff0001', 'yuanxx', null, '2010-07-28 14:09:48', null, '127.0.0.1', 'AEE5D6BC93282F350C3E3C642C91C70D');
INSERT INTO `do_log` VALUES ('402880332a17b732012a17b732c90000', 'yuanxx', null, '2010-07-28 14:22:16', null, '127.0.0.1', '7B18749030485FBF173639B280CBF9EA');
INSERT INTO `do_log` VALUES ('402880332a17d3e8012a17d3e8e20000', 'yuanxx', null, '2010-07-28 14:53:38', null, '127.0.0.1', 'F0239E09C13F4003E212825B2C603438');
INSERT INTO `do_log` VALUES ('402880332a17d7c0012a17d7c0480000', 'yuanxx', null, '2010-07-28 14:57:49', null, '127.0.0.1', '33F57D9F2C218C80B5D9D56511A74B3C');
INSERT INTO `do_log` VALUES ('402880332a17eab5012a17eab5010000', 'yuanxx', null, '2010-07-28 15:18:32', null, '127.0.0.1', 'B04C7AA2E69BEADCF4A6ABCD79923783');
INSERT INTO `do_log` VALUES ('402880332a17f753012a17f753f60000', 'yuanxx', null, '2010-07-28 15:32:19', null, '127.0.0.1', '7D2128802F709F408BC37EEB4ECB9972');
INSERT INTO `do_log` VALUES ('402880332a17fe17012a17fe17e50000', 'yuanxx', null, '2010-07-28 15:39:42', null, '127.0.0.1', '2A9215747834422F6396E1C9519ADC50');
INSERT INTO `do_log` VALUES ('ff8080812a173dcb012a180b574c0005', 'a', null, '2010-07-28 15:54:10', null, '192.168.0.179', 'FF33237B05F8F648E98BE595F77CB769');
INSERT INTO `do_log` VALUES ('402880332a181090012a181090c70000', 'yuanxx', null, '2010-07-28 15:59:53', null, '127.0.0.1', '80F4AF49414E49682C4B50818CFFAF50');
INSERT INTO `do_log` VALUES ('ff8080812a18292a012a18292ac30000', 'yuanxx', null, '2010-07-28 16:26:45', '2010-07-28 16:57:27', '192.168.0.179', '8B9F10BC7F34DEECE475D88F592B62BB');
INSERT INTO `do_log` VALUES ('402880332a18514f012a18514fca0000', 'a', null, '2010-07-28 17:10:36', null, '127.0.0.1', 'BB1B2EF760B1C7C108480398E3F0463C');
INSERT INTO `do_log` VALUES ('402880332a18514f012a1851670b0001', 'a', null, '2010-07-28 17:10:42', null, '127.0.0.1', 'BB1B2EF760B1C7C108480398E3F0463C');
INSERT INTO `do_log` VALUES ('402880332a2262c5012a2262c5800000', 'a', null, '2010-07-30 16:05:52', null, '127.0.0.1', '306A7F486B4E25F2ED095F1BC38BBC2F');
INSERT INTO `do_log` VALUES ('402880332a22c71e012a22c71e290000', 'a', null, '2010-07-30 17:55:29', null, '127.0.0.1', '47DD17DD1B74A9C0472773B4CE994136');
INSERT INTO `do_log` VALUES ('402880332a22c71e012a22c772830001', 'yuanxx', null, '2010-07-30 17:55:50', null, '127.0.0.1', '47DD17DD1B74A9C0472773B4CE994136');
INSERT INTO `do_log` VALUES ('402880332a26f40d012a26f40d220000', 'a', null, '2010-07-31 13:23:02', null, '127.0.0.1', 'A48397E3E909F648D7933189EC3197B5');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a26f7f58f0000', 'hepeng', null, '2010-07-31 13:27:18', '2010-07-31 13:36:52', '127.0.0.1', '17200E481498AFC4D7F96D3B82EE5CAC');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a2700f2480006', 'tyl', null, '2010-07-31 13:37:07', '2010-07-31 13:38:21', '127.0.0.1', 'CDA7474DFBE4006AF0928A244B471D36');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a270345ec0008', 'hepeng', null, '2010-07-31 13:39:40', '2010-07-31 13:40:29', '127.0.0.1', 'F8E470640BE194AC0734CDD51963201E');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a270431080009', 'qyf', null, '2010-07-31 13:40:40', '2010-07-31 13:41:17', '127.0.0.1', 'DF9E85C259C74652A318344E3762778F');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a2704f969000a', 'tyl', null, '2010-07-31 13:41:31', '2010-07-31 13:42:03', '127.0.0.1', '6C028FEA7288F7844F095EA8EB141E98');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a27059338000d', 'qyf', null, '2010-07-31 13:42:11', '2010-07-31 13:43:28', '127.0.0.1', 'E24EC893C9F079791971DA36CE90EA87');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a270717d40011', 'zwjia', null, '2010-07-31 13:43:50', '2010-07-31 14:07:53', '127.0.0.1', '678EE817263CDF43860798CFC639AA52');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a271d54a30014', 'qyf', null, '2010-07-31 14:08:07', '2010-07-31 14:38:22', '127.0.0.1', '51D9CCAD3EDA264666ABA6B9B266D5C8');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a27392a4f0041', 'yuanxx', null, '2010-07-31 14:38:32', '2010-07-31 14:39:39', '127.0.0.1', '418A82D375A23C5801930D17C7B2655E');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a273a8a6c0044', 'a', null, '2010-07-31 14:40:02', '2010-07-31 14:40:07', '127.0.0.1', '881D926ABE4BB9D56DD43F33A33E1A39');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a273abe9b0045', 'qyf', null, '2010-07-31 14:40:15', '2010-07-31 14:40:50', '127.0.0.1', 'A0A1289DF17F1BFAF6F751019392067D');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a273b69430046', 'zwjia', null, '2010-07-31 14:40:59', '2010-07-31 14:41:18', '127.0.0.1', '629F039584BAEA59777B8B1E8A97413B');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a273bd8c60047', 'tyl', null, '2010-07-31 14:41:27', '2010-07-31 14:41:46', '127.0.0.1', '8EE82BE9BC4012574DC6F4939C403D5A');
INSERT INTO `do_log` VALUES ('402880332a26f7f5012a273dcfb40048', 'yuanxx', null, '2010-07-31 14:43:36', null, '127.0.0.1', 'BF1452FD24FE27FBBF819B340240081D');
INSERT INTO `do_log` VALUES ('402880332a276a8d012a276a8d020000', 'yuanxx', null, '2010-07-31 15:32:28', null, '127.0.0.1', '2DA85F4AC91C66215945DBE8A1435541');
INSERT INTO `do_log` VALUES ('402880332a2777df012a2777dfd60000', 'yuanxx', null, '2010-07-31 15:47:01', null, '127.0.0.1', '9F757DB7E714CD10F2BF6747025118B7');
INSERT INTO `do_log` VALUES ('402880332a277abc012a277abc620000', 'yuanxx', null, '2010-07-31 15:50:09', null, '127.0.0.1', 'AA9152E560DB2176FF955CA922D0B258');
INSERT INTO `do_log` VALUES ('ff8080812a2785cd012a2785cdc50000', 'a', null, '2010-07-31 16:02:14', '2010-07-31 16:33:21', '192.168.0.179', '7188A089A837A52D273C32E3B1CAE94E');
INSERT INTO `do_log` VALUES ('ff8080812a2785cd012a27860cdf0001', 'yuanxx', null, '2010-07-31 16:02:30', '2010-07-31 16:33:21', '192.168.0.179', '7188A089A837A52D273C32E3B1CAE94E');
INSERT INTO `do_log` VALUES ('402880f92c77c2b8012c77c2b8b30000', 'a', null, '2010-11-23 16:03:58', null, '127.0.0.1', '6C0AF7BDA9BE6D82F6E4C08A30F49863');
INSERT INTO `do_log` VALUES ('402880f92c77c2b8012c77c2c2500001', 'a', null, '2010-11-23 16:04:01', null, '127.0.0.1', '6C0AF7BDA9BE6D82F6E4C08A30F49863');
INSERT INTO `do_log` VALUES ('402880f92c77c2b8012c77c4073a0002', 'yuanxx', null, '2010-11-23 16:05:24', null, '127.0.0.1', '6C0AF7BDA9BE6D82F6E4C08A30F49863');
INSERT INTO `do_log` VALUES ('402880f92c77f287012c77f287480000', 'yuanxx', null, '2010-11-23 16:56:11', null, '127.0.0.1', 'EF6D7652D433621B2EA76F6011A5F175');
INSERT INTO `do_log` VALUES ('402880f92c77fe15012c77fe15730000', 'yuanxx', null, '2010-11-23 17:08:49', null, '127.0.0.1', '5281EEC92CF33CCDBE9A6CB9C4DCD9D8');
INSERT INTO `do_log` VALUES ('402880f92c780170012c780170000000', 'yuanxx', null, '2010-11-23 17:12:28', null, '127.0.0.1', 'FEEFEE806DF83114941F7E072DC69252');
INSERT INTO `do_log` VALUES ('402880f92c78135b012c78135bbd0000', 'yuanxx', null, '2010-11-23 17:32:03', null, '127.0.0.1', '4825505AF94B58184370EC85B34A9DD6');
INSERT INTO `do_log` VALUES ('402880f92c78223f012c78223f200000', 'yuanxx', null, '2010-11-23 17:48:19', null, '127.0.0.1', '0B7B8217E2CD14F6D29FF7F13C557ED2');
INSERT INTO `do_log` VALUES ('402880f92c7829df012c7829dfe10000', 'yuanxx', null, '2010-11-23 17:56:39', null, '127.0.0.1', '65351B01E62BC45EDCC74A70E5375FE4');
INSERT INTO `do_log` VALUES ('402880f92c7b8396012c7b83a10c0001', 'yuanxx', null, '2010-11-24 09:33:32', null, '127.0.0.1', 'CFCD73C7885515B3ADEE9AD96BBC03A1');
INSERT INTO `do_log` VALUES ('402880f92c7b8396012c7b8396730000', 'yuanxx', null, '2010-11-24 09:33:30', null, '127.0.0.1', 'CFCD73C7885515B3ADEE9AD96BBC03A1');
INSERT INTO `do_log` VALUES ('402880f92c7b8396012c7ba3f987001b', 'yuanxx', null, '2010-11-24 10:08:52', null, '127.0.0.1', 'CFCD73C7885515B3ADEE9AD96BBC03A1');
INSERT INTO `do_log` VALUES ('402880f92c7bbd3d012c7bbd3d940000', 'yuanxx', null, '2010-11-24 10:36:28', null, '127.0.0.1', '4F9B2EBC6A64E3A23E4244F34B0E55EE');
INSERT INTO `do_log` VALUES ('402880f92c7bbd3d012c7bbd4ed20001', 'yuanxx', null, '2010-11-24 10:36:32', null, '127.0.0.1', '4F9B2EBC6A64E3A23E4244F34B0E55EE');
INSERT INTO `do_log` VALUES ('402880f92c7bd70d012c7bd70d060000', 'yuanxx', null, '2010-11-24 11:04:39', null, '127.0.0.1', 'BCC0040A75F823A86C77CBF3DC0E4955');
INSERT INTO `do_log` VALUES ('402880f92c7bd9a5012c7bd9a51b0000', 'yuanxx', null, '2010-11-24 11:07:29', null, '127.0.0.1', '1DED4307F9A6E996221F70019B6415F5');
INSERT INTO `do_log` VALUES ('402880f92c7c104e012c7c104ecd0000', 'yuanxx', null, '2010-11-24 12:07:12', null, '127.0.0.1', '91273220F8816E294EDAEAB09EC9D65C');
INSERT INTO `do_log` VALUES ('402880f92c7c65e9012c7c65e98f0000', 'yuanxx', null, '2010-11-24 13:40:42', null, '127.0.0.1', '32207C65DD42EB2353DD0BD9E41638B6');
INSERT INTO `do_log` VALUES ('402880f92c7c7610012c7c7610040000', 'yuanxx', null, '2010-11-24 13:58:20', null, '127.0.0.1', '902F9F12D5FE65FC0D61E89C0CC78AC6');
INSERT INTO `do_log` VALUES ('402880f92c7c7a14012c7c7a14ca0000', 'yuanxx', null, '2010-11-24 14:02:44', null, '127.0.0.1', 'A0FD63CB9E49ED51F69E2EE4D9A558A4');
INSERT INTO `do_log` VALUES ('402880f92c7c8000012c7c8000ed0000', 'yuanxx', null, '2010-11-24 14:09:12', null, '127.0.0.1', '82E60AAE569C3EF587EFBFDF46D79455');
INSERT INTO `do_log` VALUES ('402880f92c7c8bf5012c7c8bf5020000', 'yuanxx', null, '2010-11-24 14:22:15', null, '127.0.0.1', '7178A475005E806A58B22F21475CB59F');
INSERT INTO `do_log` VALUES ('402880f92c7c92c4012c7c92c47d0000', 'yuanxx', null, '2010-11-24 14:29:42', null, '127.0.0.1', 'DFA082EADEF797E77E2E1F6151413195');
INSERT INTO `do_log` VALUES ('402880f92c7cc045012c7cc045f80000', 'yuanxx', null, '2010-11-24 15:19:24', null, '127.0.0.1', 'EFE20075EE246AE5195E6222E848A795');
INSERT INTO `do_log` VALUES ('402880f92c7d02fe012c7d02feda0000', 'yuanxx', null, '2010-11-24 16:32:17', null, '127.0.0.1', 'B1F1F6C01C9EB692CFEB23D0B0EE62DC');
INSERT INTO `do_log` VALUES ('402880f92c7d0911012c7d0911aa0000', 'a', null, '2010-11-24 16:38:55', null, '127.0.0.1', '4899C5F571CF1990B61C4BFD72F45DDB');
INSERT INTO `do_log` VALUES ('402880f92c7d20bb012c7d20bba20000', 'yuanxx', null, '2010-11-24 17:04:46', null, '127.0.0.1', '784AA5E5B29E9208D4EBD46501173026');
INSERT INTO `do_log` VALUES ('402880f92c7d299d012c7d299da70000', 'yuanxx', null, '2010-11-24 17:14:28', null, '127.0.0.1', '13DCD6DAB71AD756AA5C3C202563B1B0');
INSERT INTO `do_log` VALUES ('402880f92c7d58ef012c7d58ef450000', 'yuanxx', null, '2010-11-24 18:06:09', null, '127.0.0.1', '1E2B6EFEFFF777E52EE7B82317B30E7B');
INSERT INTO `do_log` VALUES ('402880f92c80c3a7012c80c3a7e50000', 'yuanxx', null, '2010-11-25 10:01:34', null, '127.0.0.1', '0514B6085D3CE21F1FE29F1C7B303F56');
INSERT INTO `do_log` VALUES ('402880f92c80ce41012c80ce41580000', 'yuanxx', null, '2010-11-25 10:13:09', null, '127.0.0.1', '26E7C6778E40C4A2EC0837DFD197B7BD');
INSERT INTO `do_log` VALUES ('402880f92c80d69c012c80d69c650000', 'yuanxx', null, '2010-11-25 10:22:17', null, '127.0.0.1', '8BB44D2170DB6E21010741F8A246FD2D');
INSERT INTO `do_log` VALUES ('402880f92c80ee2b012c80ee2b5c0000', 'yuanxx', null, '2010-11-25 10:48:01', null, '127.0.0.1', '05EC999F8F4ED019A8A61C946D427219');
INSERT INTO `do_log` VALUES ('402880f92c80ee2b012c80f42a5c0001', 'yuanxx', null, '2010-11-25 10:54:34', null, '127.0.0.1', '05EC999F8F4ED019A8A61C946D427219');
INSERT INTO `do_log` VALUES ('402880f92c81078e012c81078edf0000', 'yuanxx', null, '2010-11-25 11:15:45', '2010-11-25 11:17:31', '127.0.0.1', '2BCBED66CFF9230D22EC891A3D5B65AF');
INSERT INTO `do_log` VALUES ('402880f92c81078e012c8109eaf80001', 'qyf', null, '2010-11-25 11:18:19', '2010-11-25 11:21:18', '127.0.0.1', '9DEB2864A4123C27C8FC7C83E06DCC4F');
INSERT INTO `do_log` VALUES ('402880f92c81078e012c810c1bdc0002', 'yuanxx', null, '2010-11-25 11:20:43', '2010-11-25 11:21:18', '127.0.0.1', '9DEB2864A4123C27C8FC7C83E06DCC4F');
INSERT INTO `do_log` VALUES ('402880f92c81078e012c810cc73c0004', 'qyf', null, '2010-11-25 11:21:27', null, '127.0.0.1', 'FC06F8AF8DAD150D093A4CF9FB7C0293');
INSERT INTO `do_log` VALUES ('402880f92c8119ac012c8119ac490000', 'qyf', null, '2010-11-25 11:35:32', null, '127.0.0.1', '4E4E0EBAD0DF4D30B10668794B9F7483');
INSERT INTO `do_log` VALUES ('402880f92c811cae012c811cae360000', 'qyf', null, '2010-11-25 11:38:49', null, '127.0.0.1', 'BBEE9214C77519F0D9E9777EAD61EA57');
INSERT INTO `do_log` VALUES ('402880f92c8121d9012c8121d9e70000', 'qyf', null, '2010-11-25 11:44:28', null, '127.0.0.1', 'EE9273F38F10F5A7E5FFE78F700C4D8C');
INSERT INTO `do_log` VALUES ('402880f92c812682012c812682df0000', 'qyf', null, '2010-11-25 11:49:33', null, '127.0.0.1', '78269740009157AC2BD9905417C438F0');
INSERT INTO `do_log` VALUES ('402880f92c81a14c012c81a14c9c0000', 'yuanxx', null, '2010-11-25 14:03:40', null, '127.0.0.1', '22B5F628DAE256A3A1F61337DB489490');
INSERT INTO `do_log` VALUES ('402880f92c81a5b3012c81a5b3e60000', 'yuanxx', null, '2010-11-25 14:08:29', null, '127.0.0.1', 'D7B1907C0E6592EC837EF86AF0A853FB');
INSERT INTO `do_log` VALUES ('402880f92c81a944012c81a944550000', 'qyf', null, '2010-11-25 14:12:22', null, '127.0.0.1', 'C41FD2163F453F82FFD35FA8E6D06670');
INSERT INTO `do_log` VALUES ('402880f92c81c284012c81c2841d0000', 'qyf', null, '2010-11-25 14:39:57', '2010-11-25 15:11:47', '127.0.0.1', '1F753769608F18D18212C77AF1B2A2FA');
INSERT INTO `do_log` VALUES ('402880f92c8278e6012c8278e6f30000', 'qyf', null, '2010-11-25 17:59:10', null, '127.0.0.1', '284D52AF1F2E7844ADBA23D122A5F6A3');
INSERT INTO `do_log` VALUES ('402880f92cba27fd012cba27fd0b0000', 'a', null, '2010-12-06 13:29:31', '2010-12-06 14:00:09', '127.0.0.1', '6D7C965E4DE151785123DD710D099758');
INSERT INTO `do_log` VALUES ('402880f92cba27fd012cba28c1e10001', 'a', null, '2010-12-06 13:30:22', null, '127.0.0.1', 'FB99F86D16DAD0C2A347BDF5BDEE6A8C');
INSERT INTO `do_log` VALUES ('402880f92cba27fd012cba44332a0003', 'a', null, '2010-12-06 14:00:20', null, '127.0.0.1', '38B122833A03088BB8B53B5D1C9DE9F2');
INSERT INTO `do_log` VALUES ('402880f92cba5096012cba5096ec0000', 'a', null, '2010-12-06 14:13:52', null, '127.0.0.1', '705F448472E0A008480DCA326F92D853');
INSERT INTO `do_log` VALUES ('ff8080812cc10c20012cc10c205c0000', 'yuanxx', null, '2010-12-07 21:36:26', null, '192.168.0.121', 'F3A0693C0B90E40129F32196CBA41AD7');
INSERT INTO `do_log` VALUES ('402880f92cc043b8012cc043b8370000', 'a', null, '2010-12-07 17:57:32', '2010-12-07 18:04:58', '127.0.0.1', '3898131C25D1099E9BF1534846937BB3');
INSERT INTO `do_log` VALUES ('402880f92cc043b8012cc04aa0240001', 'a', null, '2010-12-07 18:05:04', null, '127.0.0.1', '24375D081766BC108B21AC6B6E095960');
INSERT INTO `do_log` VALUES ('402880f92cc3839e012cc3839e380000', 'a', null, '2010-12-08 09:06:11', null, '127.0.0.1', '850C10F2AB0938358197849B7B24EF83');
INSERT INTO `do_log` VALUES ('402880f92cc3839e012cc38b2249010a', 'yuanxx', null, '2010-12-08 09:14:24', null, '127.0.0.1', '850C10F2AB0938358197849B7B24EF83');
INSERT INTO `do_log` VALUES ('402880f92cc3b69d012cc3b69d850000', 'a', null, '2010-12-08 10:01:53', null, '127.0.0.1', 'A9369655ADAAB40E7A8C2FF7F91CF5AA');
INSERT INTO `do_log` VALUES ('402880f92cc3b69d012cc3bcd5c50001', 'yuanxx', null, '2010-12-08 10:08:41', null, '127.0.0.1', 'A9369655ADAAB40E7A8C2FF7F91CF5AA');
INSERT INTO `do_log` VALUES ('402880f92cc3f9cc012cc3f9cc9e0000', 'a', null, '2010-12-08 11:15:16', null, '127.0.0.1', '974264642E759C85B26CE5D24C769633');
INSERT INTO `do_log` VALUES ('402880f92cc3f9cc012cc410b2500036', 'yuanxx', null, '2010-12-08 11:40:17', null, '127.0.0.1', '974264642E759C85B26CE5D24C769633');
INSERT INTO `do_log` VALUES ('402880f92cc45d49012cc45d49150000', 'a', null, '2010-12-08 13:03:56', null, '127.0.0.1', '0F5D40442A2D7D582EC48E8AD02FB588');
INSERT INTO `do_log` VALUES ('402880f92cc45d49012cc45d818e0001', 'yuanxx', null, '2010-12-08 13:04:11', null, '127.0.0.1', '0F5D40442A2D7D582EC48E8AD02FB588');
INSERT INTO `do_log` VALUES ('402880f92cc48400012cc48400e50000', 'a', null, '2010-12-08 13:46:14', null, '127.0.0.1', 'C603D4FA4854E93740C18B32FF581347');
INSERT INTO `do_log` VALUES ('402880f92cc48936012cc48936150000', 'yuanxx', null, '2010-12-08 13:51:55', null, '127.0.0.1', '5EA4BE75D992FDCFEA1C821AC5FB4224');
INSERT INTO `do_log` VALUES ('402880f92cc48e7d012cc48e7d6f0000', 'a', null, '2010-12-08 13:57:41', null, '127.0.0.1', '22FF1D798A9C094A463578B3068A4001');
INSERT INTO `do_log` VALUES ('402880f92cc48e7d012cc48ebdbd0001', 'yuanxx', null, '2010-12-08 13:57:57', null, '127.0.0.1', '22FF1D798A9C094A463578B3068A4001');
INSERT INTO `do_log` VALUES ('402880f92cc4944b012cc4944bd10000', 'a', null, '2010-12-08 14:04:01', null, '127.0.0.1', 'D0B92F9C566B375B9DF952D6855EBD73');
INSERT INTO `do_log` VALUES ('402880f92cc4944b012cc49480960001', 'yuanxx', null, '2010-12-08 14:04:15', null, '127.0.0.1', 'D0B92F9C566B375B9DF952D6855EBD73');
INSERT INTO `do_log` VALUES ('402880f92cc53c99012cc53c990a0000', 'a', null, '2010-12-08 17:07:51', null, '127.0.0.1', '81607986BCA8631C9A3F18F3EA35C93D');
INSERT INTO `do_log` VALUES ('402880f92cc53c99012cc54cae2c003d', 'yuanxx', null, '2010-12-08 17:25:25', null, '127.0.0.1', '81607986BCA8631C9A3F18F3EA35C93D');
INSERT INTO `do_log` VALUES ('402880f92cc8a9e8012cc8a9e8040000', 'a', null, '2010-12-09 09:06:07', null, '127.0.0.1', 'FDC0824377CB47BB44FFAC1319215551');
INSERT INTO `do_log` VALUES ('402880f92cc8a9e8012cc8aa34e00001', 'yuanxx', null, '2010-12-09 09:06:26', null, '127.0.0.1', 'FDC0824377CB47BB44FFAC1319215551');
INSERT INTO `do_log` VALUES ('402880f92cc90100012cc90100270000', 'a', null, '2010-12-09 10:41:14', null, '127.0.0.1', '1D9AC4304D652F98C08FB3A6E920563C');
INSERT INTO `do_log` VALUES ('402880f92cc90949012cc90949570000', 'a', null, '2010-12-09 10:50:17', null, '127.0.0.1', '92971D35F575B93481F06D59A6F4C9B8');
INSERT INTO `do_log` VALUES ('402880f92cc90949012cc90c70680002', 'yuanxx', null, '2010-12-09 10:53:44', null, '127.0.0.1', '92971D35F575B93481F06D59A6F4C9B8');
INSERT INTO `do_log` VALUES ('402880f92cc91209012cc91209560000', 'a', null, '2010-12-09 10:59:51', null, '127.0.0.1', 'B62424C2F7E21C96EDEDF6F5C6409182');
INSERT INTO `do_log` VALUES ('402880f92cc91209012cc913e36f0005', 'yuanxx', null, '2010-12-09 11:01:52', null, '127.0.0.1', 'B62424C2F7E21C96EDEDF6F5C6409182');
INSERT INTO `do_log` VALUES ('402880f92cc92e86012cc92e86be0000', 'yuanxx', null, '2010-12-09 11:30:58', null, '127.0.0.1', '5F2BA8199E91BBF95A7703AA0B9A8695');
INSERT INTO `do_log` VALUES ('402880f92cc939fc012cc939fc580000', 'a', null, '2010-12-09 11:43:29', null, '127.0.0.1', 'C8EA4BC4C61E278C251651D3315F279F');
INSERT INTO `do_log` VALUES ('402880f92cc93c98012cc93c989b0000', 'yuanxx', null, '2010-12-09 11:46:20', null, '127.0.0.1', '2ABCC16643E8A36DFD5A5815B1A7B968');
INSERT INTO `do_log` VALUES ('402880f92cc944b8012cc944b8f20000', 'yuanxx', null, '2010-12-09 11:55:13', null, '127.0.0.1', 'FBD43788947738EB7BC59027BE22A057');
INSERT INTO `do_log` VALUES ('402880f92cc94af0012cc94af0470000', 'a', null, '2010-12-09 12:02:00', null, '127.0.0.1', '65E7CA6B729190442D64BFFC87F3005E');
INSERT INTO `do_log` VALUES ('402880f92cc94af0012cc94d9f430002', 'yuanxx', null, '2010-12-09 12:04:56', null, '127.0.0.1', '65E7CA6B729190442D64BFFC87F3005E');
INSERT INTO `do_log` VALUES ('402880f92cc95212012cc95212a70000', 'yuanxx', null, '2010-12-09 12:09:47', '2010-12-09 12:43:47', '127.0.0.1', '50681E3D8890A3EFF696A4812B01C3BA');
INSERT INTO `do_log` VALUES ('402880f92cc991c3012cc991c3550000', 'a', null, '2010-12-09 13:19:21', null, '127.0.0.1', 'FF885F99889332A1413FE012DE364B13');
INSERT INTO `do_log` VALUES ('402880f92cc998ba012cc998ba100000', 'a', null, '2010-12-09 13:26:58', null, '127.0.0.1', '399E83A21C098CF50507DACF2DE0562A');
INSERT INTO `do_log` VALUES ('402880f92cc998ba012cc99903fb0001', 'yuanxx', null, '2010-12-09 13:27:17', null, '127.0.0.1', '399E83A21C098CF50507DACF2DE0562A');
INSERT INTO `do_log` VALUES ('402880f92cc99f98012cc99f98aa0000', 'a', null, '2010-12-09 13:34:28', null, '127.0.0.1', '804F9E135AE1F1C324713B325044EE7F');
INSERT INTO `do_log` VALUES ('402880f92cc99f98012cc99fb6610001', 'yuanxx', null, '2010-12-09 13:34:36', null, '127.0.0.1', '804F9E135AE1F1C324713B325044EE7F');
INSERT INTO `do_log` VALUES ('402880f92cc9a790012cc9a790540000', 'yuanxx', null, '2010-12-09 13:43:10', null, '127.0.0.1', '5D7DFF62AF68A18A4380B32289418A64');
INSERT INTO `do_log` VALUES ('402880f92cc9aef1012cc9aef10b0000', 'yuanxx', null, '2010-12-09 13:51:14', null, '127.0.0.1', '99C19F69CD7EA8D3AE3E1C01A7A599B4');
INSERT INTO `do_log` VALUES ('402880f92cc9b9a2012cc9b9a28b0000', 'a', null, '2010-12-09 14:02:55', null, '127.0.0.1', 'ACECC55024CCD5AC5D52AA916E03966F');
INSERT INTO `do_log` VALUES ('402880f92cc9b9a2012cc9c29417000c', 'yuanxx', null, '2010-12-09 14:12:41', null, '127.0.0.1', 'ACECC55024CCD5AC5D52AA916E03966F');
INSERT INTO `do_log` VALUES ('402880f92cc9c8a3012cc9c8a3b70000', 'yuanxx', null, '2010-12-09 14:19:18', null, '127.0.0.1', 'F221D867A53D67FF20AA3BD8B14FB53A');
INSERT INTO `do_log` VALUES ('402880f92cc9c8a3012cc9c9d69d0001', 'a', null, '2010-12-09 14:20:36', null, '127.0.0.1', 'F221D867A53D67FF20AA3BD8B14FB53A');
INSERT INTO `do_log` VALUES ('402880f92cc9c8a3012cc9d0c5590005', 'yuanxx', null, '2010-12-09 14:28:11', null, '127.0.0.1', 'F221D867A53D67FF20AA3BD8B14FB53A');
INSERT INTO `do_log` VALUES ('402880f92cca120b012cca120b210000', 'a', null, '2010-12-09 15:39:28', null, '127.0.0.1', '2086EAA7445C586DA2A8A07246D9D740');
INSERT INTO `do_log` VALUES ('402880f92cca120b012cca13993d0002', 'yuanxx', null, '2010-12-09 15:41:10', null, '127.0.0.1', '2086EAA7445C586DA2A8A07246D9D740');
INSERT INTO `do_log` VALUES ('402880f92cca1840012cca1840550000', 'yuanxx', null, '2010-12-09 15:46:15', null, '127.0.0.1', 'C01069F6B4D8768B539D4C9754F92773');
INSERT INTO `do_log` VALUES ('402880f92cca222d012cca222dd40000', 'a', null, '2010-12-09 15:57:06', null, '127.0.0.1', '0795E474CD5267C512D234C388533A22');
INSERT INTO `do_log` VALUES ('402880f92cca222d012cca257e730007', 'yuanxx', null, '2010-12-09 16:00:43', null, '127.0.0.1', '0795E474CD5267C512D234C388533A22');
INSERT INTO `do_log` VALUES ('402880f92cca2955012cca2955190000', 'yuanxx', null, '2010-12-09 16:04:55', null, '127.0.0.1', '704815D1AE3B4B826CA55F476DA87996');
INSERT INTO `do_log` VALUES ('402880f92cca4c20012cca4c206a0000', 'yuanxx', null, '2010-12-09 16:42:55', null, '127.0.0.1', 'E935C20322F086995AC4F916A1602698');
INSERT INTO `do_log` VALUES ('402880f92cca5d89012cca5d89d80000', 'yuanxx', null, '2010-12-09 17:01:56', null, '127.0.0.1', '4A6E9E594B3FB9A4B85CB4FBD078CE88');
INSERT INTO `do_log` VALUES ('402880f92cca5f97012cca5f97120000', 'yuanxx', null, '2010-12-09 17:04:11', '2010-12-09 17:35:50', '127.0.0.1', 'AFB9A33CC443DF0BA6C037215FBBDF69');
INSERT INTO `do_log` VALUES ('402880f92cca5f97012cca7cb0c80009', 'qyf', null, '2010-12-09 17:35:58', null, '127.0.0.1', 'F57D938EFD5C48D95A8BF38FD4BD5058');
INSERT INTO `do_log` VALUES ('402880f92cca8590012cca85907c0000', 'qyf', null, '2010-12-09 17:45:39', null, '127.0.0.1', '01CE8DD616CDB523A495D660D77BEA1F');
INSERT INTO `do_log` VALUES ('402880f92cca8770012cca8770bd0000', 'qyf', null, '2010-12-09 17:47:42', null, '127.0.0.1', 'AB0E9EDD44700D9BE58137684373CE5B');
INSERT INTO `do_log` VALUES ('402880f92ccdfcb5012ccdfcb5000000', 'a', null, '2010-12-10 09:54:39', null, '127.0.0.1', 'ED006C93393C20EEC6570B0ED2B39DFE');
INSERT INTO `do_log` VALUES ('402880f92ccdfcb5012cce0039400009', 'yuanxx', null, '2010-12-10 09:58:29', null, '127.0.0.1', 'ED006C93393C20EEC6570B0ED2B39DFE');
INSERT INTO `do_log` VALUES ('402880f92ccdfcb5012cce107c93000a', 'yuanxx', null, '2010-12-10 10:16:15', null, '127.0.0.1', 'ED006C93393C20EEC6570B0ED2B39DFE');
INSERT INTO `do_log` VALUES ('402880f92cce15d9012cce15d9ae0000', 'yuanxx', null, '2010-12-10 10:22:07', null, '127.0.0.1', '9E2A607AE357F3AE0EFCF2214283E200');
INSERT INTO `do_log` VALUES ('402880f92cce1b71012cce1b713b0000', 'yuanxx', null, '2010-12-10 10:28:13', null, '127.0.0.1', '8B087D974C94FCF488AB21C5744AC897');
INSERT INTO `do_log` VALUES ('402880f92cce2feb012cce2feb750000', 'yuanxx', null, '2010-12-10 10:50:35', null, '127.0.0.1', 'A51A7E24187B02DAF1207719F4ACBD0F');
INSERT INTO `do_log` VALUES ('402880f92cce3325012cce3325300000', 'yuanxx', null, '2010-12-10 10:54:07', null, '127.0.0.1', 'A1BDE0D3BA6BA6E0F1AD2014F478A9A2');
INSERT INTO `do_log` VALUES ('402880f92cce35b0012cce35b0030000', 'yuanxx', null, '2010-12-10 10:56:53', null, '127.0.0.1', '09A308B9D77C3A0A377AA2AA38A135D2');
INSERT INTO `do_log` VALUES ('402880f92cce3b64012cce3b642d0000', 'yuanxx', null, '2010-12-10 11:03:07', null, '127.0.0.1', 'A076F7AC7FACD6C9494B0F937F5D9599');
INSERT INTO `do_log` VALUES ('402880f92cce3eff012cce3eff9f0000', 'yuanxx', null, '2010-12-10 11:07:04', null, '127.0.0.1', 'ED15C2E83A629F5EBB38461FF4648E4B');
INSERT INTO `do_log` VALUES ('402880f92cce484d012cce484d2f0000', 'yuanxx', null, '2010-12-10 11:17:13', null, '127.0.0.1', '2C19B4FBD0F5DAAC1C63640ACE8F12EC');
INSERT INTO `do_log` VALUES ('402880f92cce5a18012cce5a18830000', 'yuanxx', null, '2010-12-10 11:36:39', null, '127.0.0.1', 'D7B17CA9433B4C16799393E57420D24A');
INSERT INTO `do_log` VALUES ('402880f92cce6419012cce6419500000', 'yuanxx', null, '2010-12-10 11:47:35', null, '127.0.0.1', '34DD07CE6B825191D8D4E74806C78C82');
INSERT INTO `do_log` VALUES ('402880f92cce6771012cce6771930000', 'yuanxx', null, '2010-12-10 11:51:14', null, '127.0.0.1', 'EDB907F8DCC8FFA789553CEC0A34239B');
INSERT INTO `do_log` VALUES ('402880f92cceab84012cceab84c40000', 'a', null, '2010-12-10 13:05:35', null, '127.0.0.1', '9D3F6CE792CB1017F2E51618D5BFE45C');
INSERT INTO `do_log` VALUES ('402880f92cceab84012cceabeb250001', 'yuanxx', null, '2010-12-10 13:06:02', null, '127.0.0.1', '9D3F6CE792CB1017F2E51618D5BFE45C');
INSERT INTO `do_log` VALUES ('402880f92ccf2285012ccf2285600000', 'yuanxx', null, '2010-12-10 15:15:34', null, '127.0.0.1', '2C3450DFD8EC98071A7651DE455EA02E');
INSERT INTO `do_log` VALUES ('402880f92ccf2526012ccf25260b0000', 'a', null, '2010-12-10 15:18:27', '2010-12-10 15:21:45', '127.0.0.1', 'BEC1F3B49E8FA129904DEB66183E32D1');
INSERT INTO `do_log` VALUES ('402880f92ccf2526012ccf2574b80001', 'yuanxx', null, '2010-12-10 15:18:47', '2010-12-10 15:21:45', '127.0.0.1', 'BEC1F3B49E8FA129904DEB66183E32D1');
INSERT INTO `do_log` VALUES ('402880f92ccf2bbb012ccf2bbbf80000', 'a', null, '2010-12-10 15:25:38', null, '127.0.0.1', 'D2D0F7B91BA87473AE21332A95B95B8E');
INSERT INTO `do_log` VALUES ('402880f92ccf2bbb012ccf2bdbd00001', 'yuanxx', null, '2010-12-10 15:25:46', null, '127.0.0.1', 'D2D0F7B91BA87473AE21332A95B95B8E');
INSERT INTO `do_log` VALUES ('402880f92ccf493d012ccf493d550000', 'a', null, '2010-12-10 15:57:52', null, '127.0.0.1', 'C6F7E2368F5187D58D9C8E29B27116D4');
INSERT INTO `do_log` VALUES ('402880f92ccf493d012ccf496df30001', 'yuanxx', null, '2010-12-10 15:58:04', null, '127.0.0.1', 'C6F7E2368F5187D58D9C8E29B27116D4');
INSERT INTO `do_log` VALUES ('402880f92ccf4cbc012ccf4cbc190000', 'yuanxx', null, '2010-12-10 16:01:41', null, '127.0.0.1', 'FBC62CC7A1BDF72AD6EE5C73841021F3');
INSERT INTO `do_log` VALUES ('402880f92ccf4f30012ccf4f306a0000', 'yuanxx', null, '2010-12-10 16:04:22', null, '127.0.0.1', '507708320FA057E5029C7B3C7C0D6943');
INSERT INTO `do_log` VALUES ('402880f92ccf50d7012ccf50d7270000', 'yuanxx', null, '2010-12-10 16:06:10', null, '127.0.0.1', '4027407DB1E617324E9130906872BAA8');
INSERT INTO `do_log` VALUES ('402880f92ccf52cc012ccf52ccdb0000', 'yuanxx', null, '2010-12-10 16:08:18', null, '127.0.0.1', 'A7EAC5659193CBE17C3BC9CB4559988B');
INSERT INTO `do_log` VALUES ('402880f92ccf54f7012ccf54f7c90000', 'yuanxx', null, '2010-12-10 16:10:41', null, '127.0.0.1', 'F0413ABC8736C09B2F1D1F31057740D9');
INSERT INTO `do_log` VALUES ('402880f92ccf6434012ccf6434790000', 'yuanxx', null, '2010-12-10 16:27:19', null, '127.0.0.1', '8477DA8905D88ED44826951E67CD0E8A');
INSERT INTO `do_log` VALUES ('402880f92ccf6434012ccf644cc60001', 'yuanxx', null, '2010-12-10 16:27:25', null, '127.0.0.1', '8477DA8905D88ED44826951E67CD0E8A');
INSERT INTO `do_log` VALUES ('402880f92ccf65fb012ccf65fbd60000', 'yuanxx', null, '2010-12-10 16:29:16', null, '127.0.0.1', '313C9CBC3B97D509603AE95654D50549');
INSERT INTO `do_log` VALUES ('402880f92ccf65fb012ccfa9e027000b', 'yuanxx', null, '2010-12-10 17:43:25', null, '127.0.0.1', '313C9CBC3B97D509603AE95654D50549');
INSERT INTO `do_log` VALUES ('402880f92cdd4ef9012cdd4ef9000000', 'a', null, '2010-12-13 09:18:49', null, '127.0.0.1', '93AA4A2BC19E3764E9904ADC381B3F83');
INSERT INTO `do_log` VALUES ('402880f92cdd4ef9012cdd5533270001', 'yuanxx', null, '2010-12-13 09:25:37', null, '127.0.0.1', '93AA4A2BC19E3764E9904ADC381B3F83');
INSERT INTO `do_log` VALUES ('402880f92cdd6579012cdd6579310000', 'a', null, '2010-12-13 09:43:23', null, '127.0.0.1', '34274B08AC2DA6677075A8EB9275093F');
INSERT INTO `do_log` VALUES ('402880f92cdd6579012cdd6803ff0001', 'yuanxx', null, '2010-12-13 09:46:10', null, '127.0.0.1', '34274B08AC2DA6677075A8EB9275093F');
INSERT INTO `do_log` VALUES ('402880f92cdd950a012cdd950a190000', 'a', null, '2010-12-13 10:35:21', null, '127.0.0.1', 'D028C1F531E54F25253427F51FAFF908');
INSERT INTO `do_log` VALUES ('402880f92cdd950a012cdd955c780001', 'yuanxx', null, '2010-12-13 10:35:42', null, '127.0.0.1', 'D028C1F531E54F25253427F51FAFF908');
INSERT INTO `do_log` VALUES ('402880f92cdda2cc012cdda2cc430000', 'a', null, '2010-12-13 10:50:22', null, '127.0.0.1', 'A4CA232F619DED6719E482FB9207D3D2');
INSERT INTO `do_log` VALUES ('402880f92cdda2cc012cdda3b9cc0001', 'yuanxx', null, '2010-12-13 10:51:23', null, '127.0.0.1', 'A4CA232F619DED6719E482FB9207D3D2');
INSERT INTO `do_log` VALUES ('402880f92cddab9f012cddab9fc10000', 'a', null, '2010-12-13 11:00:01', null, '127.0.0.1', '1B1103A26CA60BAF6338E2537F702C02');
INSERT INTO `do_log` VALUES ('402880f92cddab9f012cddabd9230001', 'yuanxx', null, '2010-12-13 11:00:15', null, '127.0.0.1', '1B1103A26CA60BAF6338E2537F702C02');
INSERT INTO `do_log` VALUES ('402880f92cddb038012cddb038500000', 'yuanxx', null, '2010-12-13 11:05:02', null, '127.0.0.1', '060CD2D8A3E2A3E75CDBF36321AA4610');
INSERT INTO `do_log` VALUES ('402880f92cddb2e0012cddb2e0e70000', 'a', null, '2010-12-13 11:07:56', '2010-12-13 12:37:18', '127.0.0.1', '071AAC149351DB77579E34023A0AE381');
INSERT INTO `do_log` VALUES ('402880f92cddb2e0012cddb306020001', 'yuanxx', null, '2010-12-13 11:08:06', '2010-12-13 12:37:18', '127.0.0.1', '071AAC149351DB77579E34023A0AE381');
INSERT INTO `do_log` VALUES ('402880f92cde2d18012cde2d18db0000', 'a', null, '2010-12-13 13:21:26', null, '127.0.0.1', '11343AB272D27769100D69016294A858');
INSERT INTO `do_log` VALUES ('402880f92cde2d18012cde2d50570001', 'yuanxx', null, '2010-12-13 13:21:40', null, '127.0.0.1', '11343AB272D27769100D69016294A858');
INSERT INTO `do_log` VALUES ('402880f92cde2d18012cde7526a20021', 'yuanxx', null, '2010-12-13 14:40:08', null, '127.0.0.1', '11343AB272D27769100D69016294A858');
INSERT INTO `do_log` VALUES ('402880f92cde8361012cde8361fa0000', 'a', null, '2010-12-13 14:55:41', null, '127.0.0.1', 'D827FF4B7189D77633DA3E4F881E2969');
INSERT INTO `do_log` VALUES ('402880f92cde8ebc012cde8ebc860000', 'a', null, '2010-12-13 15:08:05', null, '127.0.0.1', '61481EFC4E7F6E93B141FDC87DFC1C86');
INSERT INTO `do_log` VALUES ('402880f92cde8f88012cde8f886a0000', 'a', null, '2010-12-13 15:08:57', null, '127.0.0.1', 'CC42F92278A3DA5DBED531B8656865DE');
INSERT INTO `do_log` VALUES ('402880f92cde8f88012cde96390e0002', 'yuanxx', null, '2010-12-13 15:16:15', null, '127.0.0.1', 'CC42F92278A3DA5DBED531B8656865DE');
INSERT INTO `do_log` VALUES ('402880f92cdebc76012cdebc76860000', 'a', null, '2010-12-13 15:58:01', null, '127.0.0.1', '7A7A26867CA865FB4B008FCE1279642B');
INSERT INTO `do_log` VALUES ('402880f92cdebc76012cdec56a370003', 'yuanxx', null, '2010-12-13 16:07:48', null, '127.0.0.1', '7A7A26867CA865FB4B008FCE1279642B');
INSERT INTO `do_log` VALUES ('402880f92cdf0d8e012cdf0d8ecc0000', 'yuanxx', null, '2010-12-13 17:26:36', null, '127.0.0.1', '1AE5FD8A119D8B44AC2D6BD4FD2925D2');
INSERT INTO `do_log` VALUES ('402880f92cdf24f1012cdf24f1610000', 'a', null, '2010-12-13 17:52:09', null, '127.0.0.1', 'EF161F5F0EC51C518B5B00BDBB5A0FAB');
INSERT INTO `do_log` VALUES ('402880f92cdf24f1012cdf2517590001', 'yuanxx', null, '2010-12-13 17:52:18', null, '127.0.0.1', 'EF161F5F0EC51C518B5B00BDBB5A0FAB');
INSERT INTO `do_log` VALUES ('402880f92cdf328d012cdf328d260000', 'yuanxx', null, '2010-12-13 18:07:00', null, '127.0.0.1', '3EC1AA222F8AD0F012D9901D7FEA6031');
INSERT INTO `do_log` VALUES ('402880f92cdf3a82012cdf3a82160000', 'yuanxx', null, '2010-12-13 18:15:42', null, '127.0.0.1', '11B06C55EA5AAD027AD72D6ECBD76E92');
INSERT INTO `do_log` VALUES ('402880f92ce26941012ce26941220000', 'a', null, '2010-12-14 09:05:37', null, '127.0.0.1', '835B10D183C41419A45ECDDB2C4DA227');
INSERT INTO `do_log` VALUES ('402880f92ce26941012ce26b10470002', 'yuanxx', null, '2010-12-14 09:07:36', null, '127.0.0.1', '835B10D183C41419A45ECDDB2C4DA227');
INSERT INTO `do_log` VALUES ('402880f92ce2b0b1012ce2b0b1eb0000', 'a', null, '2010-12-14 10:23:39', null, '127.0.0.1', '4ADF67E0A27B77CD8D810A5EFD8F8AF3');
INSERT INTO `do_log` VALUES ('402880f92ce2b504012ce2b504100000', 'a', null, '2010-12-14 10:28:22', null, '127.0.0.1', '1B5D737B5BB6D2CA661CC474A9BCE25E');
INSERT INTO `do_log` VALUES ('402880f92ce2b504012ce2b8c1f90006', 'yuanxx', null, '2010-12-14 10:32:27', null, '127.0.0.1', '1B5D737B5BB6D2CA661CC474A9BCE25E');
INSERT INTO `do_log` VALUES ('402880f92ce2c9a7012ce2c9a7910000', 'a', null, '2010-12-14 10:50:55', null, '127.0.0.1', 'DF01E0A5A265E95AA3C78138E26B2E5E');
INSERT INTO `do_log` VALUES ('402880f92ce2c9a7012ce2ca03510001', 'yuanxx', null, '2010-12-14 10:51:18', null, '127.0.0.1', 'DF01E0A5A265E95AA3C78138E26B2E5E');
INSERT INTO `do_log` VALUES ('402880f92ce2e091012ce2e091410000', 'a', null, '2010-12-14 11:15:56', null, '127.0.0.1', 'E67D3EDE7D897ECC54B4047047FEA600');
INSERT INTO `do_log` VALUES ('402880f92ce2e091012ce2e1d8d30001', 'yuanxx', null, '2010-12-14 11:17:20', null, '127.0.0.1', 'E67D3EDE7D897ECC54B4047047FEA600');
INSERT INTO `do_log` VALUES ('402880f92ce2eb60012ce2eb60940000', 'a', null, '2010-12-14 11:27:45', null, '127.0.0.1', '7615B7BC901EF4371960FA22045327E1');
INSERT INTO `do_log` VALUES ('402880f92ce2f689012ce2f689fa0000', 'a', null, '2010-12-14 11:39:56', null, '127.0.0.1', 'EDFE4141B64727D6FF1E19AAAC603A56');
INSERT INTO `do_log` VALUES ('402880f92ce2fbf2012ce2fbf2e00000', 'a', null, '2010-12-14 11:45:51', null, '127.0.0.1', 'E7C793E2F395E3909C21A38A088F1468');
INSERT INTO `do_log` VALUES ('402880f92ce30609012ce30609390000', 'a', null, '2010-12-14 11:56:52', '2010-12-14 12:38:46', '127.0.0.1', '5D1C995C16A93B7A9C61C7F6C5422C52');
INSERT INTO `do_log` VALUES ('402880f92ce30609012ce306e66e0001', 'yuanxx', null, '2010-12-14 11:57:49', '2010-12-14 12:38:46', '127.0.0.1', '5D1C995C16A93B7A9C61C7F6C5422C52');
INSERT INTO `do_log` VALUES ('402880f92ce30609012ce34fb6750007', 'a', null, '2010-12-14 13:17:20', '2010-12-14 13:33:51', '127.0.0.1', '71CBC063A56620B1B598BC0063056B33');
INSERT INTO `do_log` VALUES ('402880f92ce30609012ce35efae30010', 'a', null, '2010-12-14 13:34:01', null, '127.0.0.1', 'A3EF883ECCD033CBBABA17C0A7F29015');
INSERT INTO `do_log` VALUES ('402880f92ce360a2012ce360a27c0000', 'yuanxx', null, '2010-12-14 13:35:49', null, '127.0.0.1', 'FB9DD5B4F9A687EC53DECD8E72143E58');
INSERT INTO `do_log` VALUES ('402880f92ce360a2012ce3694c720001', 'qyf', null, '2010-12-14 13:45:17', null, '127.0.0.1', 'FB9DD5B4F9A687EC53DECD8E72143E58');
INSERT INTO `do_log` VALUES ('402880f92ce360a2012ce36ac0a20002', 'wkx', null, '2010-12-14 13:46:52', null, '127.0.0.1', 'FB9DD5B4F9A687EC53DECD8E72143E58');
INSERT INTO `do_log` VALUES ('402880f92ce360a2012ce36ad7de0003', 'wkx', null, '2010-12-14 13:46:58', null, '127.0.0.1', 'FB9DD5B4F9A687EC53DECD8E72143E58');
INSERT INTO `do_log` VALUES ('402880f92ce360a2012ce36bcaaa0004', 'zzh', null, '2010-12-14 13:48:01', null, '127.0.0.1', 'FB9DD5B4F9A687EC53DECD8E72143E58');
INSERT INTO `do_log` VALUES ('402880f92ce360a2012ce36c94ee0005', 'yuanxx', null, '2010-12-14 13:48:52', null, '127.0.0.1', 'FB9DD5B4F9A687EC53DECD8E72143E58');
INSERT INTO `do_log` VALUES ('402880f92ce37bbe012ce37bbedd0000', 'a', null, '2010-12-14 14:05:26', null, '127.0.0.1', 'BE410F85098A1B092589913CF79765B8');
INSERT INTO `do_log` VALUES ('402880f92ce37bbe012ce37c00ab0001', 'yuanxx', null, '2010-12-14 14:05:43', null, '127.0.0.1', 'BE410F85098A1B092589913CF79765B8');
INSERT INTO `do_log` VALUES ('402880f92ce3ebe2012ce3ebe28b0000', 'yuanxx', null, '2010-12-14 16:07:55', '2010-12-14 16:11:26', '127.0.0.1', '2465277F2BA15975EAB1695B9388F7D4');
INSERT INTO `do_log` VALUES ('402880f92ce3eff5012ce3eff53b0000', 'yuanxx', null, '2010-12-14 16:12:22', '2010-12-14 16:14:00', '127.0.0.1', '6E2EE3540EBC5CCAEBC5264BD012B3E7');
INSERT INTO `do_log` VALUES ('402880f92ce3f4da012ce3f4da760000', 'yuanxx', null, '2010-12-14 16:17:43', '2010-12-14 16:25:54', '127.0.0.1', '4DF0B9AFAE5EB7A0C09BAEDDD2F6634E');
INSERT INTO `do_log` VALUES ('402880f92ce3fd08012ce3fd08bf0000', 'yuanxx', null, '2010-12-14 16:26:39', '2010-12-14 16:29:12', '127.0.0.1', '7261DAA02FEAF6BEE403E02E37ECA064');
INSERT INTO `do_log` VALUES ('402880f92ce400fb012ce400fb9e0000', 'yuanxx', null, '2010-12-14 16:30:58', '2010-12-14 16:37:49', '127.0.0.1', '1DD6FE6A219E27D14ECAC38D9B831BFC');
INSERT INTO `do_log` VALUES ('402880f92ce40dd7012ce40dd7450000', 'a', null, '2010-12-14 16:45:01', null, '127.0.0.1', 'E49C7971B5F727515621BCA0999B90B4');
INSERT INTO `do_log` VALUES ('402880f92ce40dd7012ce40df67a0001', 'a', null, '2010-12-14 16:45:09', null, '127.0.0.1', 'E49C7971B5F727515621BCA0999B90B4');
INSERT INTO `do_log` VALUES ('402880f92ce41526012ce41526f80000', 'yuanxx', null, '2010-12-14 16:53:00', null, '127.0.0.1', 'C7BC447CEBAB2A88DDD4322DD4351216');
INSERT INTO `do_log` VALUES ('402880f92ce41526012ce4154a540001', 'yuanxx', null, '2010-12-14 16:53:09', null, '127.0.0.1', 'C7BC447CEBAB2A88DDD4322DD4351216');
INSERT INTO `do_log` VALUES ('402880f92ce41bbc012ce41bbcfb0000', 'yuanxx', null, '2010-12-14 17:00:11', '2010-12-14 17:08:25', '127.0.0.1', '5078CD82A03ACE92CA0C2061F3E4863D');
INSERT INTO `do_log` VALUES ('402880f92ce4242d012ce4242dea0000', 'a', null, '2010-12-14 17:09:25', '2010-12-14 17:10:50', '127.0.0.1', 'BAE75CD3E20DD6816562C42DF13D594B');
INSERT INTO `do_log` VALUES ('402880f92ce4242d012ce4244deb0001', 'a', null, '2010-12-14 17:09:33', '2010-12-14 17:10:50', '127.0.0.1', 'BAE75CD3E20DD6816562C42DF13D594B');
INSERT INTO `do_log` VALUES ('402880f92ce427a9012ce427a97f0000', 'yuanxx', null, '2010-12-14 17:13:13', '2010-12-14 17:16:19', '127.0.0.1', '2A11347AE7CA35A4089FF58FA263DDBF');
INSERT INTO `do_log` VALUES ('402880f92ce427a9012ce427c65c0001', 'yuanxx', null, '2010-12-14 17:13:20', '2010-12-14 17:16:19', '127.0.0.1', '2A11347AE7CA35A4089FF58FA263DDBF');
INSERT INTO `do_log` VALUES ('402880f92ce4351d012ce4351d650000', 'a', null, '2010-12-14 17:27:55', null, '127.0.0.1', 'E5C742465175FEB63CEBB7CCAD2557D8');
INSERT INTO `do_log` VALUES ('402880f92ce4351d012ce4355fe60001', 'yuanxx', null, '2010-12-14 17:28:12', null, '127.0.0.1', 'E5C742465175FEB63CEBB7CCAD2557D8');
INSERT INTO `do_log` VALUES ('402880f92ce4381e012ce4381e500000', 'a', null, '2010-12-14 17:31:11', '2010-12-14 17:41:33', '127.0.0.1', 'B24135ECAFD10EF69261BC187A330D91');
INSERT INTO `do_log` VALUES ('402880f92ce4381e012ce43d78fb0001', 'yuanxx', null, '2010-12-14 17:37:02', '2010-12-14 17:41:33', '127.0.0.1', 'B24135ECAFD10EF69261BC187A330D91');
INSERT INTO `do_log` VALUES ('402880f92ce44ae2012ce44ae2870000', 'a', null, '2010-12-14 17:51:41', null, '127.0.0.1', '609C9ED7100DF6B565595416FBDA924E');
INSERT INTO `do_log` VALUES ('402880f92ce44ae2012ce44f9de30004', 'yuanxx', null, '2010-12-14 17:56:51', null, '127.0.0.1', '609C9ED7100DF6B565595416FBDA924E');
INSERT INTO `do_log` VALUES ('402880f92ce456c7012ce456c7b40000', 'yuanxx', null, '2010-12-14 18:04:41', null, '127.0.0.1', 'DE466533E324172B19852E5FB52985EB');
INSERT INTO `do_log` VALUES ('402880f92ce79502012ce795026f0000', 'a', null, '2010-12-15 09:11:31', null, '127.0.0.1', 'A9A270FB096DA8C30C7723B8EE2CB27D');
INSERT INTO `do_log` VALUES ('402880f92ce79502012ce795da6f0001', 'yuanxx', null, '2010-12-15 09:12:26', null, '127.0.0.1', 'A9A270FB096DA8C30C7723B8EE2CB27D');
INSERT INTO `do_log` VALUES ('402880f92ce79c71012ce79c715e0000', 'yuanxx', null, '2010-12-15 09:19:38', null, '127.0.0.1', 'A2E429D31D334F062F85063399130573');
INSERT INTO `do_log` VALUES ('402880f92ce7a270012ce7a2702d0000', 'yuanxx', null, '2010-12-15 09:26:11', null, '127.0.0.1', '43911B405C20C337A2EEFD991CC396FD');
INSERT INTO `do_log` VALUES ('402880f92ce7a614012ce7a614780000', 'yuanxx', null, '2010-12-15 09:30:09', null, '127.0.0.1', 'C9D5285D4D5E87B563F9E7BA1C4104FA');
INSERT INTO `do_log` VALUES ('402880f92ce7ac75012ce7ac75b60000', 'yuanxx', null, '2010-12-15 09:37:08', null, '127.0.0.1', '0E21227A3C3B52A94C5C97187A214AD0');
INSERT INTO `do_log` VALUES ('402880f92ce7b1ba012ce7b1ba810000', 'yuanxx', null, '2010-12-15 09:42:53', null, '127.0.0.1', '8ED1350E1954CD903DBFE441FE5F412C');
INSERT INTO `do_log` VALUES ('402880f92ce7c82e012ce7c82e7a0000', 'yuanxx', null, '2010-12-15 10:07:24', null, '127.0.0.1', '1C19CED54EDCA268CB8BFC7CE66972F9');
INSERT INTO `do_log` VALUES ('402880f92ce7e11f012ce7e11f100000', 'a', null, '2010-12-15 10:34:39', null, '127.0.0.1', 'BFBFFEE3D8D8412DD58BCB72D062E5DD');
INSERT INTO `do_log` VALUES ('402880f92ce7e11f012ce7e41a9e0002', 'yuanxx', null, '2010-12-15 10:37:54', null, '127.0.0.1', 'BFBFFEE3D8D8412DD58BCB72D062E5DD');
INSERT INTO `do_log` VALUES ('402880f92ce814b4012ce814b4b90000', 'a', null, '2010-12-15 11:30:59', null, '127.0.0.1', '79374E06504BCCFF95875A2BE70FABFC');
INSERT INTO `do_log` VALUES ('402880f92ce82ade012ce82ade220000', 'a', null, '2010-12-15 11:55:12', null, '127.0.0.1', 'B62E689F529AAC0BD3749C47DDE9FD48');
INSERT INTO `do_log` VALUES ('402880f92ce82ade012ce82c178e0001', 'yuanxx', null, '2010-12-15 11:56:32', null, '127.0.0.1', 'B62E689F529AAC0BD3749C47DDE9FD48');
INSERT INTO `do_log` VALUES ('402880f92ce831a1012ce831a1eb0000', 'yuanxx', null, '2010-12-15 12:02:35', null, '127.0.0.1', '26820FF90F792165BE315FA40840B630');
INSERT INTO `do_log` VALUES ('402880f92ce833d6012ce833d6a70000', 'yuanxx', null, '2010-12-15 12:05:00', '2010-12-15 12:38:54', '127.0.0.1', '91963033759A2DA04FF1F63C6E607162');
INSERT INTO `do_log` VALUES ('402880f92ce833d6012ce86d22b20001', 'a', null, '2010-12-15 13:07:35', null, '127.0.0.1', '69829F7C603DEF666CDF0B5159916A43');
INSERT INTO `do_log` VALUES ('402880f92ce833d6012ce87312710003', 'yuanxx', null, '2010-12-15 13:14:04', null, '127.0.0.1', '69829F7C603DEF666CDF0B5159916A43');
INSERT INTO `do_log` VALUES ('402880f92ce8914d012ce8914dcc0000', 'a', null, '2010-12-15 13:47:05', null, '127.0.0.1', 'DE23F1339AC94CCAE4E8CBD202820238');
INSERT INTO `do_log` VALUES ('402880f92ce8914d012ce892c77d0003', 'yuanxx', null, '2010-12-15 13:48:42', null, '127.0.0.1', 'DE23F1339AC94CCAE4E8CBD202820238');
INSERT INTO `do_log` VALUES ('402880f92ce8b660012ce8b660f50000', 'a', null, '2010-12-15 14:27:35', null, '127.0.0.1', '0E35E8E6639ED1FC8033D6B61FF4C04B');
INSERT INTO `do_log` VALUES ('402880f92ce8bbb8012ce8bbb8960000', 'a', null, '2010-12-15 14:33:25', '2010-12-15 14:37:01', '127.0.0.1', '3683E3AA0CECFED3CF277DAE80DF8B73');
INSERT INTO `do_log` VALUES ('402880f92ce8bbb8012ce8bbcbe10001', 'a', null, '2010-12-15 14:33:30', '2010-12-15 14:37:01', '127.0.0.1', '3683E3AA0CECFED3CF277DAE80DF8B73');
INSERT INTO `do_log` VALUES ('402880f92ce8bbb8012ce8bc55d40002', 'yuanxx', null, '2010-12-15 14:34:05', '2010-12-15 14:37:01', '127.0.0.1', '3683E3AA0CECFED3CF277DAE80DF8B73');
INSERT INTO `do_log` VALUES ('402880f92ce8bbb8012ce8bf2ca90004', 'yuanxx', null, '2010-12-15 14:37:11', '2010-12-15 14:38:34', '127.0.0.1', '17159CB72F4DC6E4C8D62756552796FF');
INSERT INTO `do_log` VALUES ('402880f92ce8bbb8012ce8c097540005', 'yuanxx', null, '2010-12-15 14:38:44', '2010-12-15 14:39:48', '127.0.0.1', 'D69B1A66273E874F522D9E309A46BBBE');
INSERT INTO `do_log` VALUES ('402880f92ce8bbb8012ce8c1bb330006', 'yuanxx', null, '2010-12-15 14:39:59', '2010-12-15 14:43:24', '127.0.0.1', 'B263FE54163A52921D02BF8B4BE3AF0C');
INSERT INTO `do_log` VALUES ('402880f92ce8bbb8012ce8c504da0009', 'yuanxx', null, '2010-12-15 14:43:34', null, '127.0.0.1', '360E2BBA18B8DA0E9CFC785E7AD16B8B');
INSERT INTO `do_log` VALUES ('402880f92ce8e86b012ce8e86b3b0000', 'a', null, '2010-12-15 15:22:14', null, '127.0.0.1', 'DD54E665BB9D158952E8AF9191518F41');
INSERT INTO `do_log` VALUES ('402880f92ce8e86b012ce8e9812c0001', 'yuanxx', null, '2010-12-15 15:23:25', null, '127.0.0.1', 'DD54E665BB9D158952E8AF9191518F41');
INSERT INTO `do_log` VALUES ('402880f92ce8ea3a012ce8ea3a0f0000', 'yuanxx', null, '2010-12-15 15:24:13', null, '127.0.0.1', 'F96262648F79FBCA3663435EAE503A86');
INSERT INTO `do_log` VALUES ('402880f92ce904e8012ce904e8e40000', 'a', null, '2010-12-15 15:53:21', null, '127.0.0.1', 'B0381F45BE00F4317E6A45D09552EA90');
INSERT INTO `do_log` VALUES ('402880f92ce904e8012ce90709e20002', 'yuanxx', null, '2010-12-15 15:55:41', null, '127.0.0.1', 'B0381F45BE00F4317E6A45D09552EA90');
INSERT INTO `do_log` VALUES ('402880f92ce91265012ce91265420000', 'a', null, '2010-12-15 16:08:05', null, '127.0.0.1', '9B627D6CFF6D373402689D04A802D907');
INSERT INTO `do_log` VALUES ('402880f92ce91265012ce91421ba0001', 'yuanxx', null, '2010-12-15 16:09:59', null, '127.0.0.1', '9B627D6CFF6D373402689D04A802D907');
INSERT INTO `do_log` VALUES ('402880f92ce92666012ce92666930000', 'yuanxx', null, '2010-12-15 16:29:56', null, '127.0.0.1', '46DEBA3C7DCA87451744E82D73C1B81D');
INSERT INTO `do_log` VALUES ('402880f92ce92ba5012ce92ba5ab0000', 'yuanxx', null, '2010-12-15 16:35:40', null, '127.0.0.1', '801816BD49CA9849BE809DF6F15D0B45');
INSERT INTO `do_log` VALUES ('402880f92ce92fcc012ce92fcc350000', 'yuanxx', null, '2010-12-15 16:40:12', '2010-12-15 16:55:17', '127.0.0.1', '72EFD9E45C8FE582DB86F133AAAFFA33');
INSERT INTO `do_log` VALUES ('402880f92ce92fcc012ce93dc1fb0003', 'yuanxx', null, '2010-12-15 16:55:27', '2010-12-15 17:00:01', '127.0.0.1', 'E4E5425307C389A8CD3103E797B189CC');
INSERT INTO `do_log` VALUES ('402880f92ce92fcc012ce94222710004', 'yuanxx', null, '2010-12-15 17:00:14', null, '127.0.0.1', 'E533FF419B1DF727D650F8460DD97CA6');
INSERT INTO `do_log` VALUES ('402880f92ce946e4012ce946e4610000', 'yuanxx', null, '2010-12-15 17:05:26', null, '127.0.0.1', '29C82A6F5E57BF77E45FCE5ACFD5F3E0');
INSERT INTO `do_log` VALUES ('402880f92ce94aba012ce94aba350000', 'yuanxx', null, '2010-12-15 17:09:37', null, '127.0.0.1', 'FD866CDBF118FF4DD69DA8211C7D0EE5');
INSERT INTO `do_log` VALUES ('402880f92ce94fc0012ce94fc0f50000', 'yuanxx', null, '2010-12-15 17:15:06', null, '127.0.0.1', 'C7E490367DE2F7F171DAA84BC0612057');
INSERT INTO `do_log` VALUES ('402880f92ce95181012ce95181e10000', 'yuanxx', null, '2010-12-15 17:17:01', '2010-12-15 17:18:28', '127.0.0.1', 'BCC7B72DBB1EBA57744933FA05283489');
INSERT INTO `do_log` VALUES ('402880f92ce95181012ce95305340002', 'yuanxx', null, '2010-12-15 17:18:40', '2010-12-15 17:18:57', '127.0.0.1', 'CEFB5E5F6EA47AA4DD20A6DC8B8D964D');
INSERT INTO `do_log` VALUES ('402880f92ce95913012ce959136b0000', 'a', null, '2010-12-15 17:25:17', '2010-12-15 18:00:19', '127.0.0.1', 'B17E66EE286DA226CE3C6A07D80A8386');
INSERT INTO `do_log` VALUES ('402880f92ce95913012ce95d5e060002', 'yuanxx', null, '2010-12-15 17:29:59', '2010-12-15 18:00:19', '127.0.0.1', 'B17E66EE286DA226CE3C6A07D80A8386');
INSERT INTO `do_log` VALUES ('402880f92ce95913012ce95d5e010001', 'yuanxx', null, '2010-12-15 17:29:59', '2010-12-15 18:00:19', '127.0.0.1', 'B17E66EE286DA226CE3C6A07D80A8386');
INSERT INTO `do_log` VALUES ('402880f92cecdcb3012cecdcb3300000', 'a', null, '2010-12-16 09:47:55', null, '127.0.0.1', '25F90C7C37716DDD7D3C38F0E993A7B5');
INSERT INTO `do_log` VALUES ('402880f92ceced06012ceced06d90000', 'yuanxx', null, '2010-12-16 10:05:45', null, '127.0.0.1', 'F6524F509A0C7794D8AF4498C6879CD1');
INSERT INTO `do_log` VALUES ('402880f92cecfbca012cecfbcaa10000', 'a', null, '2010-12-16 10:21:53', '2010-12-16 10:22:24', '127.0.0.1', '9F7F69CF09CCA7AF12B3561982A3FEEC');
INSERT INTO `do_log` VALUES ('402880f92cecfbca012cecfc70660001', 'a', null, '2010-12-16 10:22:35', null, '127.0.0.1', '77CCEC5DC49896EF23D69EDDB8BB8FEA');
INSERT INTO `do_log` VALUES ('402880f92cecffc1012cecffc1be0000', 'a', null, '2010-12-16 10:26:13', '2010-12-16 10:31:04', '127.0.0.1', '4977BC530EB1B6610BBD8E1E61145DC1');
INSERT INTO `do_log` VALUES ('402880f92cecffc1012cecfffd710001', 'yuanxx', null, '2010-12-16 10:26:28', '2010-12-16 10:31:04', '127.0.0.1', '4977BC530EB1B6610BBD8E1E61145DC1');
INSERT INTO `do_log` VALUES ('402880f92cecffc1012ced0d8a1d0005', 'a', null, '2010-12-16 10:41:16', '2010-12-16 11:12:09', '127.0.0.1', '0570A59B6AFCDAE4AE6B324723B8D5A9');
INSERT INTO `do_log` VALUES ('ff8080812cef8764012cef8764660000', 'yuanxx', null, '2010-12-16 22:13:36', null, '192.168.0.121', '3832F13FBC35BE06352C2CDC68DE9D59');
INSERT INTO `do_log` VALUES ('ff8080812cef8ef0012cef8ef0670000', 'yuanxx', null, '2010-12-16 22:21:51', null, '192.168.0.121', 'B72BD208FF897458D85E9BA9E87CA838');
INSERT INTO `do_log` VALUES ('ff8080812cef8ef0012cef94bb140001', 'a', null, '2010-12-16 22:28:10', null, '192.168.0.121', 'B72BD208FF897458D85E9BA9E87CA838');
INSERT INTO `do_log` VALUES ('ff8080812cef8ef0012cef9bbec80002', 'yuanxx', null, '2010-12-16 22:35:50', null, '192.168.0.121', 'B72BD208FF897458D85E9BA9E87CA838');
INSERT INTO `do_log` VALUES ('ff8080812cef9ecc012cef9ecc180000', 'yuanxx', null, '2010-12-16 22:39:10', null, '192.168.0.121', '0F0BC5BBE64B1AA841540F291F49FBC1');
INSERT INTO `do_log` VALUES ('ff8080812cefb26f012cefb26f850000', 'a', null, '2010-12-16 23:00:37', null, '192.168.0.121', '704515EC0C1F3CA85D9FE70E211F0AA4');
INSERT INTO `do_log` VALUES ('ff8080812cefb26f012cefb289ed0001', 'a', null, '2010-12-16 23:00:44', null, '192.168.0.121', '704515EC0C1F3CA85D9FE70E211F0AA4');
INSERT INTO `do_log` VALUES ('ff8080812cefb26f012cefb2f8330002', 'yuanxx', null, '2010-12-16 23:01:12', null, '192.168.0.121', '704515EC0C1F3CA85D9FE70E211F0AA4');
INSERT INTO `do_log` VALUES ('ff8080812cefb26f012cefb75b0b0003', 'yuanxx', null, '2010-12-16 23:05:59', null, '192.168.0.121', 'EC49A156A618A0010AD67696A67D2B3F');
INSERT INTO `do_log` VALUES ('402880f92cee0c82012cee0c82050000', 'a', null, '2010-12-16 15:19:45', null, '127.0.0.1', '8A77987B39248B87A1123747049C8C89');
INSERT INTO `do_log` VALUES ('402880f92cee1077012cee10777e0000', 'a', null, '2010-12-16 15:24:05', null, '127.0.0.1', '8DF91B4BADAB92CCE26A58D57DBFA1B1');
INSERT INTO `do_log` VALUES ('ff8080812cefc206012cefc206750000', 'a', null, '2010-12-16 23:17:39', null, '192.168.0.121', 'C5C5205DD5E3D3EB8339174F76593305');
INSERT INTO `do_log` VALUES ('ff8080812cefc206012cefc2e03f0001', 'yuanxx', null, '2010-12-16 23:18:34', null, '192.168.0.121', 'C5C5205DD5E3D3EB8339174F76593305');
INSERT INTO `do_log` VALUES ('ff8080812cefc206012cefd073cb0007', 'yuanxx', null, '2010-12-16 23:33:24', '2010-12-17 00:15:19', '192.168.0.121', '2A378303E026A465BBEF783DC1C8D2B6');
INSERT INTO `do_log` VALUES ('402880f92cee1077012cee2292530001', 'yuanxx', null, '2010-12-16 15:43:51', null, '127.0.0.1', '8DF91B4BADAB92CCE26A58D57DBFA1B1');
INSERT INTO `do_log` VALUES ('402880f92cee5464012cee5464170000', 'a', null, '2010-12-16 16:38:16', null, '127.0.0.1', '4F86EA37D18FAB1487A80C6D2B5E639C');
INSERT INTO `do_log` VALUES ('ff8080812cf00313012cf00313680000', 'a', null, '2010-12-17 00:28:42', '2010-12-17 01:20:29', '192.168.0.121', '5D58B1D5371AAC825E1BB771A21C7444');
INSERT INTO `do_log` VALUES ('402880f92cee5464012cee54fadc0001', 'a', null, '2010-12-16 16:38:55', null, '127.0.0.1', '4F86EA37D18FAB1487A80C6D2B5E639C');
INSERT INTO `do_log` VALUES ('402880f92cee5464012cee5577200002', 'yuanxx', null, '2010-12-16 16:39:27', null, '127.0.0.1', '4F86EA37D18FAB1487A80C6D2B5E639C');
INSERT INTO `do_log` VALUES ('402880f92cee75dd012cee75dd250000', 'yuanxx', null, '2010-12-16 17:14:50', null, '127.0.0.1', '0DD2F4B94BAB968BA497611FF1C161A6');
INSERT INTO `do_log` VALUES ('402880f92cee75dd012cee77b3320001', 'yuanxx', null, '2010-12-16 17:16:50', null, '127.0.0.1', '7259968FA91D08D72FB3DBAA130E5783');
INSERT INTO `do_log` VALUES ('402880f92cee7d10012cee7d103b0000', 'yuanxx', null, '2010-12-16 17:22:42', null, '127.0.0.1', '97CB4B9C701C4BB671582D2BAD43F34A');
INSERT INTO `do_log` VALUES ('402880f92cee83c1012cee83c1aa0000', 'yuanxx', null, '2010-12-16 17:30:01', null, '127.0.0.1', '5D24D195FDBD4D161E68680CB7E71992');
INSERT INTO `do_log` VALUES ('402880f92cee86a8012cee86a8ac0000', 'yuanxx', null, '2010-12-16 17:33:11', null, '127.0.0.1', 'D34FC86B8F50C958E38C7CC7323C623F');
INSERT INTO `do_log` VALUES ('402880f92cee8c65012cee8c656b0000', 'yuanxx', null, '2010-12-16 17:39:27', null, '127.0.0.1', 'FAB03312FFFBF64CC4754ADF152BE87C');
INSERT INTO `do_log` VALUES ('402880f92cee902c012cee902c7b0000', 'yuanxx', null, '2010-12-16 17:43:34', null, '127.0.0.1', '175978C19577E74E5BA78900FFD8F6DB');
INSERT INTO `do_log` VALUES ('ff8080812cf04157012cf04157780000', 'yuanxx', null, '2010-12-17 01:36:42', null, '192.168.0.121', '851813AF25E62FE19648492D8D167E84');
INSERT INTO `do_log` VALUES ('ff8080812cf04157012cf0421f5e0001', 'a', null, '2010-12-17 01:37:34', null, '192.168.0.121', '851813AF25E62FE19648492D8D167E84');
INSERT INTO `do_log` VALUES ('ff8080812cf04157012cf0461fc30002', 'yuanxx', null, '2010-12-17 01:41:56', null, '192.168.0.121', 'CD004023DF993B2DB39661DDFDBC1FB7');
INSERT INTO `do_log` VALUES ('402880f92cee902c012cee99b8d10001', 'yuanxx', null, '2010-12-16 17:54:00', null, '127.0.0.1', 'FB9AFEB4919BC4FBA26F4F082CEC778D');
INSERT INTO `do_log` VALUES ('ff8080812cf04157012cf04bac700005', 'yuanxx', null, '2010-12-17 01:47:59', null, '192.168.0.121', '851813AF25E62FE19648492D8D167E84');
INSERT INTO `do_log` VALUES ('ff8080812cf04157012cf05600de0009', 'a', null, '2010-12-17 01:59:16', null, '192.168.0.121', '851813AF25E62FE19648492D8D167E84');
INSERT INTO `do_log` VALUES ('ff8080812cf04157012cf056fb04000a', 'yuanxx', null, '2010-12-17 02:00:20', null, '192.168.0.121', '851813AF25E62FE19648492D8D167E84');
INSERT INTO `do_log` VALUES ('402880f92cf1e2d9012cf1e2d9200000', 'a', null, '2010-12-17 09:12:44', null, '127.0.0.1', '540940835E7B17ACBFEBEB3F84110294');
INSERT INTO `do_log` VALUES ('402880f92cf1e2d9012cf1e474070001', 'yuanxx', null, '2010-12-17 09:14:29', null, '127.0.0.1', '540940835E7B17ACBFEBEB3F84110294');
INSERT INTO `do_log` VALUES ('ff8080812cf39a8e012cf39a8ed60000', 'a', null, '2010-12-17 17:13:01', '2010-12-17 17:38:13', '192.168.0.121', 'C8808D0F6A26BE1D53FAEE44F8006768');
INSERT INTO `do_log` VALUES ('ff8080812cf39a8e012cf39db1420002', 'yuanxx', null, '2010-12-17 17:16:26', '2010-12-17 17:38:13', '192.168.0.121', 'C8808D0F6A26BE1D53FAEE44F8006768');
INSERT INTO `do_log` VALUES ('402880f92cf20581012cf20581e80000', 'a', null, '2010-12-17 09:50:36', null, '127.0.0.1', '9F8EBE87FCCCC2A0F408BB71E7802E3C');
INSERT INTO `do_log` VALUES ('ff8080812cf39a8e012cf3b3e15b0019', 'yuanxx', null, '2010-12-17 17:40:41', '2010-12-17 18:11:07', '192.168.0.121', '52D19FE417CCF5798B6542BA4D40FD33');
INSERT INTO `do_log` VALUES ('402880f92cf20581012cf2062eb20001', 'yuanxx', null, '2010-12-17 09:51:20', null, '127.0.0.1', '9F8EBE87FCCCC2A0F408BB71E7802E3C');
INSERT INTO `do_log` VALUES ('402880f92cf218fd012cf218fde30000', 'yuanxx', null, '2010-12-17 10:11:52', null, '127.0.0.1', 'A7E3CD6515B8F05239B7623E4FD62308');
INSERT INTO `do_log` VALUES ('402880f92cf2458b012cf2458b1c0000', 'a', null, '2010-12-17 11:00:32', null, '127.0.0.1', '41EAAB777C794007832C3BF57B6D7CF2');
INSERT INTO `do_log` VALUES ('402880f92cf2458b012cf249e4640001', 'yuanxx', null, '2010-12-17 11:05:17', null, '127.0.0.1', '41EAAB777C794007832C3BF57B6D7CF2');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf414df5f0000', 'yuanxx', null, '2010-12-17 19:26:37', '2010-12-17 19:30:12', '192.168.0.121', 'EF44DE8AA2A071E9E93610B0CAC528D6');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf41859330002', 'yuanxx', null, '2010-12-17 19:30:25', '2010-12-17 19:32:12', '192.168.0.121', '2C1F14B6C44F73A3103024B45441736D');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf41a2a450004', 'yuanxx', null, '2010-12-17 19:32:24', '2010-12-17 19:33:49', '192.168.0.121', 'D27E31AB08162D9C6B141C9786E90334');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf41b9f2a0006', 'yuanxx', null, '2010-12-17 19:33:59', '2010-12-17 19:34:51', '192.168.0.121', 'E482AF00B674EB0B1A81580F6F5962A4');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf41c99a80007', 'yuanxx', null, '2010-12-17 19:35:03', '2010-12-17 19:35:41', '192.168.0.121', '3F47809412F93FBFED6FDB662B3539FA');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf41d57110009', 'yuanxx', null, '2010-12-17 19:35:52', '2010-12-17 19:38:10', '192.168.0.121', '234E4FDA28270FC70699BDCB3C06FCA9');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf41faafc0015', 'a', null, '2010-12-17 19:38:24', '2010-12-17 19:39:32', '192.168.0.121', '8B7C849FF954457E720E701DC0378DB5');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf420da620016', 'yuanxx', null, '2010-12-17 19:39:42', '2010-12-17 20:25:25', '192.168.0.121', '646328AEE007E9496C2EEFA8E8472D31');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf42725800017', 'yuanxx', null, '2010-12-17 19:46:35', '2010-12-17 20:32:25', '192.168.0.122', '949AA30E11CDC736C5BF33525D4BDC60');
INSERT INTO `do_log` VALUES ('402880f92cf27ac2012cf27ac2890000', 'yuanxx', null, '2010-12-17 11:58:40', '2010-12-17 12:34:10', '127.0.0.1', '3E72E842BFEF5BAED4685F7EF6071B8E');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf42dfee20019', 'a', null, '2010-12-17 19:54:03', '2010-12-17 20:25:25', '192.168.0.121', '646328AEE007E9496C2EEFA8E8472D31');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf4fcbd14001a', 'yuanxx', null, '2010-12-17 23:39:53', '2010-12-17 23:46:39', '192.168.0.121', '5CAB63C872F3416EC148E3F23034C863');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf50275da001b', 'a', null, '2010-12-17 23:46:07', '2010-12-18 00:21:14', '192.168.0.121', 'FC55FA0EDBDD9E130E144B2A3F6DB75F');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf5031bc2001c', 'yuanxx', null, '2010-12-17 23:46:50', '2010-12-18 00:28:15', '192.168.0.121', '473C14A558F92DED15921ABEE62DACC4');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf5047bb8001d', 'yuanxx', null, '2010-12-17 23:48:20', '2010-12-17 23:48:51', '192.168.0.121', '5BFAEAACB7FE088398A0D2BA75BD6D4E');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf5053081001f', 'yuanxx', null, '2010-12-17 23:49:06', '2010-12-17 23:49:46', '192.168.0.121', 'D486B7C654AF3AAFE81C02C8513AFCB0');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf505f32a0021', 'yuanxx', null, '2010-12-17 23:49:56', '2010-12-17 23:59:16', '192.168.0.121', '13C167D9F7C422FE12346EF744AE6BC6');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf50a2f330022', 'a', null, '2010-12-17 23:54:34', '2010-12-17 23:59:16', '192.168.0.121', '13C167D9F7C422FE12346EF744AE6BC6');
INSERT INTO `do_log` VALUES ('ff8080812cf414df012cf50ead410023', 'yuanxx', null, '2010-12-17 23:59:28', '2010-12-18 01:05:17', '192.168.0.121', 'A65214ED16C10E834541EEFCD7B7E439');
INSERT INTO `do_log` VALUES ('402880f92cf3c8f1012cf3c8f1820000', 'a', null, '2010-12-17 18:03:41', null, '127.0.0.1', '3406A4550B7300F4FC746E9AAFD5F1D7');
INSERT INTO `do_log` VALUES ('402880f92d013f4c012d013f4c730000', 'a', null, '2010-12-20 08:48:01', '2010-12-20 08:50:12', '127.0.0.1', 'A47252DBA0D57CD9ED3D96956FAEF8FF');
INSERT INTO `do_log` VALUES ('402880f92d013f4c012d014164bc0001', 'a', null, '2010-12-20 08:50:18', null, '127.0.0.1', '3852DF693639284400E6A1B5AA883E64');
INSERT INTO `do_log` VALUES ('402880f92d013f4c012d0142e3370002', 'yuanxx', null, '2010-12-20 08:51:56', null, '127.0.0.1', '3852DF693639284400E6A1B5AA883E64');
INSERT INTO `do_log` VALUES ('402880f92d014797012d014797510000', 'a', null, '2010-12-20 08:57:05', null, '127.0.0.1', 'AE683F4854EEE896B656DC4D0C756D76');
INSERT INTO `do_log` VALUES ('402880f92d014797012d01488e030001', 'yuanxx', null, '2010-12-20 08:58:08', null, '127.0.0.1', 'AE683F4854EEE896B656DC4D0C756D76');
INSERT INTO `do_log` VALUES ('402880f92d017bcc012d017bcc090000', 'yuanxx', null, '2010-12-20 09:54:06', null, '127.0.0.1', 'B74AF05B454D4713F6D649D68A247AE1');
INSERT INTO `do_log` VALUES ('402880f92d018e21012d018e211f0000', 'yuanxx', null, '2010-12-20 10:14:07', null, '127.0.0.1', '74AD16703069B9382E14430BEBE0AE15');
INSERT INTO `do_log` VALUES ('402880f92d0190ae012d0190aedb0000', 'yuanxx', null, '2010-12-20 10:16:55', null, '127.0.0.1', 'F68CDA06DFF060C18CB1427D2579B044');
INSERT INTO `do_log` VALUES ('402880f92d019a06012d019a06700000', 'yuanxx', null, '2010-12-20 10:27:07', null, '127.0.0.1', '4CC9A81CAE97B215856DDD896ED8DAFD');
INSERT INTO `do_log` VALUES ('402880f92d019bc0012d019bc0310000', 'yuanxx', null, '2010-12-20 10:29:00', null, '127.0.0.1', '8F045F9E55770E6D61A4E5382F6B6CA6');
INSERT INTO `do_log` VALUES ('402880f92d01a526012d01a526450000', 'yuanxx', null, '2010-12-20 10:39:16', null, '127.0.0.1', '97E09A7CFD35294A0A38C2C5417F39DF');
INSERT INTO `do_log` VALUES ('402880f92d01e2a2012d01e2a22c0000', 'yuanxx', null, '2010-12-20 11:46:26', null, '127.0.0.1', 'FF41789924AE5528BFEDBD7D98317B94');
INSERT INTO `do_log` VALUES ('402880f92d01eaa9012d01eaa94d0000', 'a', null, '2010-12-20 11:55:12', null, '127.0.0.1', '486DF5E2E877BE2A07AF042AAC450C9B');
INSERT INTO `do_log` VALUES ('402880f92d01eaa9012d01f0bc360003', 'yuanxx', null, '2010-12-20 12:01:50', null, '127.0.0.1', '486DF5E2E877BE2A07AF042AAC450C9B');
INSERT INTO `do_log` VALUES ('402880f92d01f394012d01f3940b0000', 'yuanxx', null, '2010-12-20 12:04:56', '2010-12-20 12:35:59', '127.0.0.1', '2D09C77E7DFF273A456D0E401C705A07');
INSERT INTO `do_log` VALUES ('402880f92d022fcc012d022fcc6d0000', 'yuanxx', null, '2010-12-20 13:10:43', null, '127.0.0.1', '5390BC7896B60884191BEDB0B5768D4F');
INSERT INTO `do_log` VALUES ('402880f92d02484c012d02484c310000', 'yuanxx', null, '2010-12-20 13:37:28', null, '127.0.0.1', '6F4CCE30FBA2CA38D3E9220325D4713A');
INSERT INTO `do_log` VALUES ('402880f92d0263b2012d0263b2360000', 'yuanxx', null, '2010-12-20 14:07:24', null, '127.0.0.1', 'E87A04B2CB8085984FE09603177A426A');
INSERT INTO `do_log` VALUES ('402880f92d026f0e012d026f0e6d0000', 'yuanxx', null, '2010-12-20 14:19:48', null, '127.0.0.1', '5A497E486991AE4C418111E805BD2575');
INSERT INTO `do_log` VALUES ('402880f92d027a1b012d027a1bd60000', 'yuanxx', null, '2010-12-20 14:31:53', null, '127.0.0.1', 'CFFF08A8A5E4F8DFD8DA4518F39C4BAD');
INSERT INTO `do_log` VALUES ('402880f92d0287db012d0287dbe50000', 'yuanxx', null, '2010-12-20 14:46:54', null, '127.0.0.1', 'C89ED104CCAB8AA34B1D723CE14DFFC0');
INSERT INTO `do_log` VALUES ('402880f92d029551012d029551a40000', 'yuanxx', null, '2010-12-20 15:01:36', null, '127.0.0.1', '61CAF000E661BF31E937A2ED83E44FE2');
INSERT INTO `do_log` VALUES ('402880f92d029b7e012d029b7e9f0000', 'yuanxx', null, '2010-12-20 15:08:21', null, '127.0.0.1', '28D46A67E4C8A8DB593E59AB20455562');
INSERT INTO `do_log` VALUES ('402880f92d029b7e012d029be0530001', 'yuanxx', null, '2010-12-20 15:08:46', null, '127.0.0.1', '28D46A67E4C8A8DB593E59AB20455562');
INSERT INTO `do_log` VALUES ('402880f92d029de2012d029de24d0000', 'yuanxx', null, '2010-12-20 15:10:57', null, '127.0.0.1', 'BF3EE114F026DF6F41A31FE6E9F94D81');
INSERT INTO `do_log` VALUES ('402880f92d02a309012d02a3092d0000', 'yuanxx', null, '2010-12-20 15:16:35', null, '127.0.0.1', '54E9C2E66E96BE4E8DB0D4AB9FF28B93');
INSERT INTO `do_log` VALUES ('402880f92d02a5ac012d02a5acb90000', 'yuanxx', null, '2010-12-20 15:19:28', null, '127.0.0.1', '1EB8686D1435E41B8F9BEEF6F9B1B06D');
INSERT INTO `do_log` VALUES ('402880f92d02accb012d02accbaf0000', 'yuanxx', null, '2010-12-20 15:27:14', null, '127.0.0.1', '48904BCD8DEAC568084F38D9AA4EEBED');
INSERT INTO `do_log` VALUES ('402880f92d02c4ca012d02c4ca9a0000', 'yuanxx', null, '2010-12-20 15:53:27', null, '127.0.0.1', 'A3F76CD425DCF6222BD56FE5EBC72FA1');
INSERT INTO `do_log` VALUES ('402880f92d02d217012d02d217b00000', 'yuanxx', null, '2010-12-20 16:07:59', null, '127.0.0.1', 'EFD89EB33D6814FB6F6E9495981AE0F6');
INSERT INTO `do_log` VALUES ('402880f92d02e643012d02e6435e0000', 'a', null, '2010-12-20 16:30:01', null, '127.0.0.1', '354ED13C81FAEAE34B51B5F1D86B5363');
INSERT INTO `do_log` VALUES ('402880f92d02e643012d02e825770003', 'yuanxx', null, '2010-12-20 16:32:04', null, '127.0.0.1', '354ED13C81FAEAE34B51B5F1D86B5363');
INSERT INTO `do_log` VALUES ('402880f92d02ee02012d02ee02ba0000', 'yuanxx', null, '2010-12-20 16:38:28', '2010-12-20 16:40:08', '127.0.0.1', 'CB9F1E127878F6DCD05AEA59F3D4EE8F');
INSERT INTO `do_log` VALUES ('402880f92d02ee02012d02efa19d0001', '4', null, '2010-12-20 16:40:15', '2010-12-20 16:40:26', '127.0.0.1', '8D36A9E3B0BBC03E88C8FCAFE8387B36');
INSERT INTO `do_log` VALUES ('402880f92d02ee02012d02efec780002', '3', null, '2010-12-20 16:40:34', '2010-12-20 16:40:43', '127.0.0.1', '13E48D6D73DD3A42ECFE72A7488A90B5');
INSERT INTO `do_log` VALUES ('402880f92d02ee02012d02f039fa0003', 'yuanxx', null, '2010-12-20 16:40:54', null, '127.0.0.1', '557320B14142D2BB7058A699B1F7AD54');
INSERT INTO `do_log` VALUES ('402880f92d0308c8012d0308c8f60000', 'yuanxx', null, '2010-12-20 17:07:43', null, '127.0.0.1', '9E44600ACF91B2263FB52C710E4C6445');
INSERT INTO `do_log` VALUES ('402880f92d030b63012d030b63f00000', 'yuanxx', null, '2010-12-20 17:10:34', null, '127.0.0.1', '7D76EEE3AC0DE36231960989AC2EB794');
INSERT INTO `do_log` VALUES ('402880f92d030e59012d030e59770000', 'yuanxx', null, '2010-12-20 17:13:48', '2010-12-20 17:22:44', '127.0.0.1', '49B918D05CA7A29EAAC84F43C9CAEA86');
INSERT INTO `do_log` VALUES ('402880f92d030e59012d0316bffc0001', 'yuanxx', null, '2010-12-20 17:22:58', null, '127.0.0.1', 'D986B82BF12ECB5A318155B2C4D51907');
INSERT INTO `do_log` VALUES ('402880f92d031f72012d031f72520000', 'yuanxx', null, '2010-12-20 17:32:28', '2010-12-20 17:36:40', '127.0.0.1', '46B08CF502342EF8D9E7F9FC3AAF2337');
INSERT INTO `do_log` VALUES ('402880f92d031f72012d03237cd60005', 'yuanxx', null, '2010-12-20 17:36:53', null, '127.0.0.1', '0CC0F7BBDAD37646F85B74FDB2208B9A');
INSERT INTO `do_log` VALUES ('402880f92d0328a7012d0328a7f80000', 'a', null, '2010-12-20 17:42:32', null, '127.0.0.1', '445AACD50F69E4BE574EA221917E3CD6');
INSERT INTO `do_log` VALUES ('402880f92d0334ae012d0334ae640000', 'yuanxx', null, '2010-12-20 17:55:40', null, '127.0.0.1', 'AAD3464F711E98629D6D74D37DC84063');
INSERT INTO `do_log` VALUES ('402880f92d033d7e012d033d7e620000', 'a', null, '2010-12-20 18:05:17', '2010-12-20 18:08:15', '127.0.0.1', '4F10308C17F7BCAC6456C25B33326AD4');
INSERT INTO `do_log` VALUES ('402880f92d033d7e012d033e1a540001', 'yuanxx', null, '2010-12-20 18:05:57', '2010-12-20 18:08:15', '127.0.0.1', '4F10308C17F7BCAC6456C25B33326AD4');
INSERT INTO `do_log` VALUES ('402880f92d068a4c012d068a4c450000', 'a', null, '2010-12-21 09:28:02', null, '127.0.0.1', 'A59130144170F31FECF00D8C5D5BC67B');
INSERT INTO `do_log` VALUES ('402880f92d068a4c012d068b78f50001', 'yuanxx', null, '2010-12-21 09:29:19', null, '127.0.0.1', 'A59130144170F31FECF00D8C5D5BC67B');
INSERT INTO `do_log` VALUES ('402880f92d06997f012d06997f5b0000', 'a', null, '2010-12-21 09:44:39', null, '127.0.0.1', '3FFE307538528805ABD6FC179506B29E');
INSERT INTO `do_log` VALUES ('402880f92d06a81d012d06a81d470000', 'a', null, '2010-12-21 10:00:36', '2010-12-21 11:00:26', '127.0.0.1', '6154C66619968754462A4DF9BEA985DA');
INSERT INTO `do_log` VALUES ('402880f92d06a81d012d06b0fcaa0013', 'yuanxx', null, '2010-12-21 10:10:18', '2010-12-21 11:00:26', '127.0.0.1', '6154C66619968754462A4DF9BEA985DA');
INSERT INTO `do_log` VALUES ('402880f92d06a81d012d06df199b0021', '1', null, '2010-12-21 11:00:40', '2010-12-21 11:01:15', '127.0.0.1', 'F949FED89F47F2C7FAD838FF851B9BFF');
INSERT INTO `do_log` VALUES ('402880f92d06a81d012d06dfc56b0022', 'yuanxx', null, '2010-12-21 11:01:24', null, '127.0.0.1', '4B442375706C13DEDD618D0D2B67960F');
INSERT INTO `do_log` VALUES ('402880f92d06f6e3012d06f6e3b80000', 'a', null, '2010-12-21 11:26:39', '2010-12-21 11:44:45', '127.0.0.1', '1818CD89119A350C3EAA4AD5C816667F');
INSERT INTO `do_log` VALUES ('402880f92d06f6e3012d06fb1f8f0001', 'yuanxx', null, '2010-12-21 11:31:17', '2010-12-21 11:44:45', '127.0.0.1', '1818CD89119A350C3EAA4AD5C816667F');
INSERT INTO `do_log` VALUES ('402880f92d06f6e3012d07080cf40009', 'yuanxx', null, '2010-12-21 11:45:24', '2010-12-21 11:53:07', '127.0.0.1', 'A3C20F18F28BE0D2C9485C0D2E062488');
INSERT INTO `do_log` VALUES ('402880f92d071679012d071679610000', 'gly', null, '2010-12-21 12:01:09', '2010-12-21 12:03:11', '127.0.0.1', '64B6C8BC8623D73334C23DEA96267E5B');
INSERT INTO `do_log` VALUES ('402880f92d071679012d071874110001', 'yuanxx', null, '2010-12-21 12:03:19', '2010-12-21 12:04:46', '127.0.0.1', 'F6941039ECAAC9322AC9CB0CB9D8FF96');
INSERT INTO `do_log` VALUES ('402880f92d075bdf012d075bdf3a0000', 'gly', null, '2010-12-21 13:16:57', null, '127.0.0.1', '05E90565631B1C694EE328D573053B8E');
INSERT INTO `do_log` VALUES ('402880f92d075bdf012d075cc0010001', 'a', null, '2010-12-21 13:17:55', null, '127.0.0.1', '05E90565631B1C694EE328D573053B8E');
INSERT INTO `do_log` VALUES ('402880f92d076333012d076333ac0000', 'gly', null, '2010-12-21 13:24:57', null, '127.0.0.1', '30E572E1380899BC2F41B7C986B53849');
INSERT INTO `do_log` VALUES ('402880f92d076859012d0768594a0000', 'gly', null, '2010-12-21 13:30:35', '2010-12-21 13:31:35', '127.0.0.1', 'DADDB6B8213C43235EED166F3BD070E8');
INSERT INTO `do_log` VALUES ('402880f92d076859012d076963040001', 'yg1', null, '2010-12-21 13:31:43', null, '127.0.0.1', 'A11AFB42A7BC6568B9B8CA7F7522BF69');
INSERT INTO `do_log` VALUES ('402880f92d078a73012d078a73930000', 'yuanxx', null, '2010-12-21 14:07:50', '2010-12-21 14:08:32', '127.0.0.1', '5BD548BC28F9A98C03EB53FCE26D830C');
INSERT INTO `do_log` VALUES ('402880f92d078a73012d078b45450002', 'yuanxx', null, '2010-12-21 14:08:43', '2010-12-21 17:41:25', '127.0.0.1', 'BFA99A4DAAEBAE246158DC3441CA00F1');
INSERT INTO `do_log` VALUES ('ff8080812d0a1723012d0a1813dc0002', 'yuanxx', null, '2010-12-22 02:01:50', '2010-12-22 02:22:54', '192.168.0.121', '0DE8296C3C9BEE451FDB48A2ED1687C3');
INSERT INTO `do_log` VALUES ('ff8080812d0a1723012d0a17231b0000', 'a', null, '2010-12-22 02:01:00', '2010-12-22 02:22:54', '192.168.0.121', '0DE8296C3C9BEE451FDB48A2ED1687C3');
INSERT INTO `do_log` VALUES ('ff8080812d0a1723012d0a174cab0001', 'gly', null, '2010-12-22 02:01:00', '2010-12-22 02:22:54', '192.168.0.121', '0DE8296C3C9BEE451FDB48A2ED1687C3');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d64d58d0000', 'yuanxx', null, '2010-12-22 17:24:28', '2010-12-22 17:26:54', '192.168.0.121', 'F12C7B841D2FD88E905B554A622879B7');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d67438d0001', 'gly', null, '2010-12-22 17:27:07', '2010-12-22 17:27:50', '192.168.0.121', 'D3B4FD78F319C92C884B5A61F44ADC4C');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bbcaf650000', 'a', null, '2010-12-22 09:41:11', '2010-12-22 09:43:03', '127.0.0.1', 'A6CBFD417771DA23D477B2298DB9B80B');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bbcf5d40001', 'yg1', null, '2010-12-22 09:41:29', '2010-12-22 09:43:03', '127.0.0.1', 'A6CBFD417771DA23D477B2298DB9B80B');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bbe881f0002', 'yuanxx', null, '2010-12-22 09:43:12', '2010-12-22 09:47:27', '127.0.0.1', 'CFE61CDB2505F7EFFC32801B247DC0C8');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bc2a54a0003', 'yg1', null, '2010-12-22 09:47:41', '2010-12-22 09:49:01', '127.0.0.1', '55038CE7F1D0D017293AD68953CF4AA8');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bc30ad70004', 'yuanxx', null, '2010-12-22 09:48:07', '2010-12-22 09:49:01', '127.0.0.1', '55038CE7F1D0D017293AD68953CF4AA8');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bc401c20006', 'yg1', null, '2010-12-22 09:49:10', '2010-12-22 09:49:21', '127.0.0.1', '65683510F6DD6590F0AE9D0B3D8B59CE');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bc4ae120007', 'yg1', null, '2010-12-22 09:49:55', '2010-12-22 09:51:20', '127.0.0.1', '1B08884A5F8265C628F6D27E7F743C57');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bc5338e0008', 'yuanxx', null, '2010-12-22 09:50:29', '2010-12-22 09:51:20', '127.0.0.1', '1B08884A5F8265C628F6D27E7F743C57');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bc557750009', 'yuanxx', null, '2010-12-22 09:50:38', '2010-12-22 09:51:20', '127.0.0.1', '1B08884A5F8265C628F6D27E7F743C57');
INSERT INTO `do_log` VALUES ('402880f92d0bbcaf012d0bc61db2000b', 'yg1', null, '2010-12-22 09:51:29', null, '127.0.0.1', '1B1BF4CCA689F515F8DC9014DCB6421A');
INSERT INTO `do_log` VALUES ('402880f92d0bc6c2012d0bc6c24a0000', 'yg1', null, '2010-12-22 09:52:11', '2010-12-22 09:55:13', '127.0.0.1', '3590146B2E61977926DC59987639A984');
INSERT INTO `do_log` VALUES ('402880f92d0bc6c2012d0bc7663b0001', 'yuanxx', null, '2010-12-22 09:52:53', '2010-12-22 09:55:13', '127.0.0.1', '3590146B2E61977926DC59987639A984');
INSERT INTO `do_log` VALUES ('402880f92d0bc6c2012d0bc77caa0002', 'yuanxx', null, '2010-12-22 09:52:59', '2010-12-22 09:55:13', '127.0.0.1', '3590146B2E61977926DC59987639A984');
INSERT INTO `do_log` VALUES ('402880f92d0bc6c2012d0bc9c0820003', 'yg2', null, '2010-12-22 09:55:27', '2010-12-22 09:56:19', '127.0.0.1', 'F42FDC5D9FC3CA8D8F242C13BD62D244');
INSERT INTO `do_log` VALUES ('402880f92d0bc6c2012d0bcab9ee0004', 'yg1', null, '2010-12-22 09:56:31', null, '127.0.0.1', 'AB7C9C9A423685B8167D07EF6A063E0F');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d7e68590002', 'a', null, '2010-12-22 17:52:24', '2010-12-22 17:54:05', '192.168.0.121', '09B6758ADE037F83B1322D35BDEF197C');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d7e87c20003', 'a', null, '2010-12-22 17:52:32', '2010-12-22 17:54:05', '192.168.0.121', '09B6758ADE037F83B1322D35BDEF197C');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d7f44180004', 'yg1', null, '2010-12-22 17:53:20', '2010-12-22 17:54:05', '192.168.0.121', '09B6758ADE037F83B1322D35BDEF197C');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d80131b0005', 'yuanxx', null, '2010-12-22 17:54:13', '2010-12-22 18:02:02', '192.168.0.121', 'AB318ECD6626F9A47EC60A969CE6C5CA');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d8773a40023', 'gly', null, '2010-12-22 18:02:16', '2010-12-22 18:04:37', '192.168.0.121', '1681941D85EAC6C545C0D662222C22F1');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d89b4eb0024', 'yg1', null, '2010-12-22 18:04:44', '2010-12-22 18:04:55', '192.168.0.121', 'A9F94ABC34C7F69703B4F54B7E810D84');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d8a02660025', 'ptjl', null, '2010-12-22 18:05:04', '2010-12-22 18:05:32', '192.168.0.121', '08767BD2F1CB88CD1D2A45AF18E8AF58');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d8a8d6e0026', 'zjl', null, '2010-12-22 18:05:40', '2010-12-22 18:06:48', '192.168.0.121', 'CDEB6A0418542E51B4BD80C144AD7995');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d8bbc1e0027', 'cwjl', null, '2010-12-22 18:06:57', '2010-12-22 18:10:46', '192.168.0.121', 'B233953F31496631AD6146A22DC23C00');
INSERT INTO `do_log` VALUES ('ff8080812d0d64d5012d0d8f844e0028', 'cwjl', null, '2010-12-22 18:11:05', '2010-12-22 18:13:54', '192.168.0.121', '1DBF6016A3B9E6A428E3D9360195EB38');
INSERT INTO `do_log` VALUES ('402880f92d0be7be012d0be7beb60000', 'a', null, '2010-12-22 10:28:13', '2010-12-22 10:55:24', '127.0.0.1', '84FA85217B842EA49BC16591581D2890');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0d96cf2b0000', 'a', null, '2010-12-22 18:19:03', '2010-12-22 18:20:16', '192.168.0.121', '9DCC7EFC309E9B0E64951E3F79D5B8D4');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0d980d6b0001', 'yuanxx', null, '2010-12-22 18:20:24', '2010-12-22 18:21:50', '192.168.0.121', 'E2661838590DBCDAAF72E303C714BFF8');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0d997b8d0006', 'gly', null, '2010-12-22 18:21:58', '2010-12-22 18:22:47', '192.168.0.121', 'FA9E43D8931C893674A9981E541AE880');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0d9a70610007', 'gly', null, '2010-12-22 18:23:01', '2010-12-22 18:23:29', '192.168.0.121', '2B7001BB5922BF245E756BE003C19124');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0d9b07c20008', 'gly', null, '2010-12-22 18:23:39', '2010-12-22 18:26:10', '192.168.0.121', 'EF1753162A5E662E734DE17F9CB260B2');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0d9d79960009', 'cwjl', null, '2010-12-22 18:26:20', '2010-12-22 18:27:06', '192.168.0.121', '079A068A12293504DA59B55378382EE4');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0d9f1160000a', 'yg1', null, '2010-12-22 18:28:04', '2010-12-22 18:34:50', '192.168.0.121', '2460C52F5E953B10EE7B965393218071');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0da499a70010', 'a', null, '2010-12-22 18:34:07', '2010-12-22 18:34:50', '192.168.0.121', '2460C52F5E953B10EE7B965393218071');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0da587a90011', 'yg2', null, '2010-12-22 18:35:08', '2010-12-22 18:38:18', '192.168.0.121', 'EE222F3737DF9B10F18C48FA01D957B3');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0da88d520015', 'yg3', null, '2010-12-22 18:38:26', '2010-12-22 18:39:45', '192.168.0.121', '2D902BF186A19F8225CC51C07DFE14A2');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0da9e59c0019', 'ptjl', null, '2010-12-22 18:39:54', '2010-12-22 19:01:28', '192.168.0.121', 'A8BA30E55541A804FA772B56AB976B40');
INSERT INTO `do_log` VALUES ('402880f92d0be7be012d0c00c90f0001', 'ptjl', null, '2010-12-22 10:55:34', null, '127.0.0.1', '839B8263E479FEC8D7E21A0E74DA43AE');
INSERT INTO `do_log` VALUES ('402880f92d0be7be012d0c07ff6a0002', 'a', null, '2010-12-22 11:03:26', null, '127.0.0.1', '839B8263E479FEC8D7E21A0E74DA43AE');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0dbdc309001a', 'yuanxx', null, '2010-12-22 19:01:36', '2010-12-22 19:35:31', '192.168.0.121', '879B7981CEF5397D3AF18FE6B4451D9D');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0dbdde48001b', 'yuanxx', null, '2010-12-22 19:01:43', '2010-12-22 19:35:31', '192.168.0.121', '879B7981CEF5397D3AF18FE6B4451D9D');
INSERT INTO `do_log` VALUES ('402880f92d0c1b1d012d0c1b1dd60000', 'ptjl', null, '2010-12-22 11:24:19', '2010-12-22 11:54:55', '127.0.0.1', '00BDDFBC6EA04E0BFE1A45812B457E76');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0ddcf46c0023', 'ptjl', null, '2010-12-22 19:35:40', '2010-12-22 19:40:29', '192.168.0.121', '670575832258560229EF476C0080F69C');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0de181e40028', 'cwjl', null, '2010-12-22 19:40:38', '2010-12-22 19:41:20', '192.168.0.121', '7DCC225195F685843A2069885C43C567');
INSERT INTO `do_log` VALUES ('ff8080812d0d96cf012d0de246e9002c', 'zjl', null, '2010-12-22 19:41:29', '2010-12-22 19:41:51', '192.168.0.121', 'BBCDB5002B6C5749156F860A651F919C');
INSERT INTO `do_log` VALUES ('ff8080812d0e26c3012d0e26c3a10000', 'yg1', null, '2010-12-22 20:56:17', '2010-12-22 21:28:03', '192.168.0.121', '9C936E075B3A42A789B567C879FE1362');
INSERT INTO `do_log` VALUES ('402880f92d0d10d7012d0d10d7560000', 'a', null, '2010-12-22 15:52:43', null, '127.0.0.1', '70617757FD4553F0C4CFED8D54BF0063');
INSERT INTO `do_log` VALUES ('402880f92d0d10d7012d0d1122020001', 'gly', null, '2010-12-22 15:53:02', null, '127.0.0.1', '70617757FD4553F0C4CFED8D54BF0063');
INSERT INTO `do_log` VALUES ('402880f92d0d10d7012d0d1231c00002', 'gly', null, '2010-12-22 15:54:12', null, '127.0.0.1', '81E5089D866FAABD7DEBB06C1F3B32AB');
INSERT INTO `do_log` VALUES ('402880f92d0d14d6012d0d14d6fe0000', 'gly', null, '2010-12-22 15:57:05', null, '127.0.0.1', '913A541B8D0BE86003A71BEBAC044DAE');
INSERT INTO `do_log` VALUES ('402880f92d0d1744012d0d1744970000', 'gly', null, '2010-12-22 15:59:44', null, '127.0.0.1', '84177173FFE0CC7A0E67B0D398D5BA97');
INSERT INTO `do_log` VALUES ('402880f92d0d1744012d0d178b360001', 'gly', null, '2010-12-22 16:00:02', null, '127.0.0.1', 'F2D6AAB3C261EFD8D5F966D181DF2931');
INSERT INTO `do_log` VALUES ('402880f92d0d1dc6012d0d1dc6820000', 'gly', null, '2010-12-22 16:06:51', null, '127.0.0.1', 'FE81AE184C450AE94D6F00D5A9FE1D01');
INSERT INTO `do_log` VALUES ('402880f92d0d1dc6012d0d1e0d670001', 'gly', null, '2010-12-22 16:07:09', null, '127.0.0.1', 'A0622223864BB19023D6B5721165910B');
INSERT INTO `do_log` VALUES ('402880f92d0d2092012d0d20926d0000', 'gly', null, '2010-12-22 16:09:54', '2010-12-22 17:12:09', '127.0.0.1', 'CD6291E984747ADE50F8DD4B835C9F61');
INSERT INTO `do_log` VALUES ('402880f92d0d2092012d0d20bbca0001', 'gly', null, '2010-12-22 16:10:05', '2010-12-22 16:40:54', '127.0.0.1', 'BB6259A1AD23B8314B560686DEEF8068');
INSERT INTO `do_log` VALUES ('402880f92d0d5dde012d0d5dde6f0000', 'gly', null, '2010-12-22 17:16:51', null, '127.0.0.1', 'F477CB8887D4FD38BA670E0D4869B953');
INSERT INTO `do_log` VALUES ('402880f92d0d5fc1012d0d5fc1ab0000', 'gly', null, '2010-12-22 17:18:55', null, '127.0.0.1', '46FA08A80A902E417D1DB49A4DD8B506');
INSERT INTO `do_log` VALUES ('ff8080812d0f0f9b012d0f0f9b3a0000', 'a', null, '2010-12-23 01:10:37', '2010-12-23 01:22:31', '192.168.0.121', 'C79FF88DCA4C5C4467E9DBFB1859823A');
INSERT INTO `do_log` VALUES ('ff8080812d0f0f9b012d0f12fd6c0002', 'gly', null, '2010-12-23 01:14:18', '2010-12-23 01:22:31', '192.168.0.121', 'C79FF88DCA4C5C4467E9DBFB1859823A');
INSERT INTO `do_log` VALUES ('ff8080812d0f0f9b012d0f1ab33a0003', 'yg1', null, '2010-12-23 01:22:44', '2010-12-23 01:23:10', '192.168.0.121', '1EB221262461A42459B18790DE3AA2A2');
INSERT INTO `do_log` VALUES ('ff8080812d0f1d47012d0f1d47e70000', 'gly', null, '2010-12-23 01:25:33', '2010-12-23 01:25:51', '192.168.0.121', '60C0A13868ED523DC31887CFCC3CEA5E');
INSERT INTO `do_log` VALUES ('ff8080812d0f1d47012d0f2b47660001', 'gly', null, '2010-12-23 01:40:50', '2010-12-23 01:42:16', '192.168.0.121', '51277C308600B345F1EB4C491E1EEF1E');
INSERT INTO `do_log` VALUES ('402880f92d0d8034012d0d8034480000', 'gly', null, '2010-12-22 17:54:21', null, '127.0.0.1', 'F2C3E5BF6DD6A400C20D8EF699B7332C');
INSERT INTO `do_log` VALUES ('ff8080812d0f1d47012d0f2cbd0a0005', 'gly', null, '2010-12-23 01:42:26', '2010-12-23 01:42:54', '192.168.0.121', 'ED8AFA837C087D1FF68DA38B977491E1');
INSERT INTO `do_log` VALUES ('ff8080812d0f1d47012d126d29490006', 'a', null, '2010-12-23 16:51:39', '2010-12-23 16:56:07', '192.168.0.121', '610BEB791E9058E2BCDE7CD5F587B088');
INSERT INTO `do_log` VALUES ('ff8080812d0f1d47012d12705a55000a', 'gly', null, '2010-12-23 16:55:09', '2010-12-23 16:56:07', '192.168.0.121', '610BEB791E9058E2BCDE7CD5F587B088');
INSERT INTO `do_log` VALUES ('ff8080812d1273a3012d1273a3780000', 'yuanxx', null, '2010-12-23 16:58:44', '2010-12-23 17:35:57', '192.168.0.121', 'E3C1EEF138FD8AF6185E0DFE2C5E80B5');
INSERT INTO `do_log` VALUES ('402880f92d10cea6012d10cea6e90000', 'a', null, '2010-12-23 09:18:54', '2010-12-23 09:37:44', '127.0.0.1', '7CD0F3112BC977E7CD6A6A4A863DCCCF');
INSERT INTO `do_log` VALUES ('402880f92d10cea6012d10d441a80002', 'gly', null, '2010-12-23 09:25:02', '2010-12-23 09:37:44', '127.0.0.1', '7CD0F3112BC977E7CD6A6A4A863DCCCF');
INSERT INTO `do_log` VALUES ('402880f92d10cea6012d10dffed30009', 'yg1', null, '2010-12-23 09:37:51', '2010-12-23 09:38:01', '127.0.0.1', '8334CED235681899BD9857AD5265E2EA');
INSERT INTO `do_log` VALUES ('402880f92d10cea6012d10e1a62c000a', 'gly', null, '2010-12-23 09:39:39', null, '127.0.0.1', 'D71944B0E330B7C8619DACE712581E88');
INSERT INTO `do_log` VALUES ('402880f92d10e6f9012d10e6f9410000', 'a', null, '2010-12-23 09:45:28', '2010-12-23 09:53:34', '127.0.0.1', '196FF57CBD1BFEEF3EABE83CED9AF339');
INSERT INTO `do_log` VALUES ('402880f92d10e6f9012d10e801790001', 'gly', null, '2010-12-23 09:46:36', '2010-12-23 09:53:34', '127.0.0.1', '196FF57CBD1BFEEF3EABE83CED9AF339');
INSERT INTO `do_log` VALUES ('402880f92d10e6f9012d10e8c18c0002', 'gly', null, '2010-12-23 09:47:25', '2010-12-23 09:53:34', '127.0.0.1', '196FF57CBD1BFEEF3EABE83CED9AF339');
INSERT INTO `do_log` VALUES ('402880f92d10eff2012d10eff2740000', 'a', null, '2010-12-23 09:55:16', null, '127.0.0.1', '067C1EBE9A62ED84AC9177DEDEE73876');
INSERT INTO `do_log` VALUES ('402880f92d10f847012d10f8477e0000', 'yg4', null, '2010-12-23 10:04:22', null, '127.0.0.1', '53ABC6F3B3A58E2B7599AFB77F8DC893');
INSERT INTO `do_log` VALUES ('402880f92d110844012d1108440d0000', 'yg4', null, '2010-12-23 10:21:50', null, '127.0.0.1', '14A7B16A17797A08F1F37F1E66F366D5');
INSERT INTO `do_log` VALUES ('402880f92d110b40012d110b406e0000', 'yg4', null, '2010-12-23 10:25:06', null, '127.0.0.1', '9016DBAA53B193092123C5083D6E1EFB');
INSERT INTO `do_log` VALUES ('402880f92d110de4012d110de4840000', 'yg4', null, '2010-12-23 10:27:59', '2010-12-23 10:29:14', '127.0.0.1', '3808EF8DE16A915C4EFF8A4F66EF8096');
INSERT INTO `do_log` VALUES ('402880f92d110de4012d110f23f70001', 'yg4', null, '2010-12-23 10:29:21', null, '127.0.0.1', 'BA1B70DA1AD8F1A9DEB39010A5B2D3CB');
INSERT INTO `do_log` VALUES ('ff8080812d12c54b012d12c54b0c0000', 'gly', null, '2010-12-23 18:27:55', '2010-12-23 19:06:38', '192.168.0.121', '28E4DF166E75B587FC0111EF65A47B75');
INSERT INTO `do_log` VALUES ('402880f92d111bfa012d111bfaee0000', 'a', null, '2010-12-23 10:43:22', null, '127.0.0.1', 'D426C0BA7CAF301EC0FB7E058913D426');
INSERT INTO `do_log` VALUES ('402880f92d112c16012d112c16160000', 'a', null, '2010-12-23 11:00:58', '2010-12-23 11:05:34', '127.0.0.1', 'E4BA0FBF977020CD9D95816B24300413');
INSERT INTO `do_log` VALUES ('402880f92d112c16012d112f15bd0001', 'gly', null, '2010-12-23 11:04:14', '2010-12-23 11:05:34', '127.0.0.1', 'E4BA0FBF977020CD9D95816B24300413');
INSERT INTO `do_log` VALUES ('402880f92d112c16012d113069ec0003', 'gly', null, '2010-12-23 11:05:41', null, '127.0.0.1', 'F743CE99699A17236D5659783F5105A9');
INSERT INTO `do_log` VALUES ('402880f92d1132e5012d1132e5220000', 'gly', null, '2010-12-23 11:08:24', null, '127.0.0.1', '6E29E191EFE58635C9F29BA981514712');
INSERT INTO `do_log` VALUES ('402880f92d113e7d012d113e7dc50000', 'a', null, '2010-12-23 11:21:04', null, '127.0.0.1', '07364A8492D6F6BC952DCC44AB392763');
INSERT INTO `do_log` VALUES ('402880f92d113e7d012d1140e61a0002', 'gly', null, '2010-12-23 11:23:41', null, '127.0.0.1', '07364A8492D6F6BC952DCC44AB392763');
INSERT INTO `do_log` VALUES ('402880f92d11456e012d11456e5f0000', 'gly', null, '2010-12-23 11:28:39', null, '127.0.0.1', '81DABC694FB067C50B866B9F89532188');
INSERT INTO `do_log` VALUES ('402880f92d1147d7012d1147d7890000', 'gly', null, '2010-12-23 11:31:17', null, '127.0.0.1', '40B565BA9297A9D46A348BC3AA05992F');
INSERT INTO `do_log` VALUES ('ff8080812d12c54b012d13018cee0002', 'a', null, '2010-12-23 19:33:44', '2010-12-23 19:36:02', '192.168.0.121', '42B29F53346AEC8868C17EAA166CB115');
INSERT INTO `do_log` VALUES ('ff8080812d12c54b012d13019fe60003', 'a', null, '2010-12-23 19:33:49', '2010-12-23 19:36:02', '192.168.0.121', '42B29F53346AEC8868C17EAA166CB115');
INSERT INTO `do_log` VALUES ('ff8080812d12c54b012d1303c9630004', 'gly', null, '2010-12-23 19:36:11', '2010-12-23 20:07:39', '192.168.0.121', '0BA30A1D45DEE062AE750AFF71455D76');
INSERT INTO `do_log` VALUES ('402880f92d1161d2012d1161d27e0000', 'a', null, '2010-12-23 11:59:39', null, '127.0.0.1', '1370C39CA53F2BF13E1AB3D8DE07F40F');
INSERT INTO `do_log` VALUES ('402880f92d11639d012d11639dc60000', 'a', null, '2010-12-23 12:01:37', '2010-12-23 12:35:43', '127.0.0.1', 'D3AAB193B55BC593ACA445C89D13787F');
INSERT INTO `do_log` VALUES ('402880f92d11639d012d1164fff90001', 'gly', null, '2010-12-23 12:03:07', '2010-12-23 12:35:43', '127.0.0.1', 'D3AAB193B55BC593ACA445C89D13787F');
INSERT INTO `do_log` VALUES ('402880f92d11639d012d11a262810002', 'a', null, '2010-12-23 13:10:10', '2010-12-23 13:12:51', '127.0.0.1', '977F281AA5FDC3DF63C33AF596D73E9C');
INSERT INTO `do_log` VALUES ('402880f92d11639d012d11a4f4c60004', 'gly', null, '2010-12-23 13:12:59', '2010-12-23 13:14:25', '127.0.0.1', '0CEAE17E9376D9C5AB8460579D088BCF');
INSERT INTO `do_log` VALUES ('402880f92d11639d012d11a663740005', 'gly', null, '2010-12-23 13:14:33', '2010-12-23 13:18:01', '127.0.0.1', 'D08FE2DE6A5228B7052FA6AF097115BC');
INSERT INTO `do_log` VALUES ('402880f92d11639d012d11a9a9e30006', 'gly', null, '2010-12-23 13:18:07', null, '127.0.0.1', '143079E80169540E8A9635DDD6A06817');
INSERT INTO `do_log` VALUES ('402880f92d11b10f012d11b10fcc0000', 'a', null, '2010-12-23 13:26:12', null, '127.0.0.1', '56971140EB86A43A0A36DC3870358134');
INSERT INTO `do_log` VALUES ('402880f92d11b10f012d11b1b2790001', 'gly', null, '2010-12-23 13:26:54', null, '127.0.0.1', '56971140EB86A43A0A36DC3870358134');
INSERT INTO `do_log` VALUES ('402880f92d11b73b012d11b73b7c0000', 'gly', null, '2010-12-23 13:32:57', null, '127.0.0.1', '3C214ED41A37A2D7A3CE5FFCC5560B81');
INSERT INTO `do_log` VALUES ('402880f92d11c799012d11c799770000', 'gly', null, '2010-12-23 13:50:49', null, '127.0.0.1', '20891E189057ABF86621BDDF4812C8E3');
INSERT INTO `do_log` VALUES ('402880f92d11c9a0012d11c9a0f50000', 'gly', null, '2010-12-23 13:53:02', '2010-12-23 13:59:01', '127.0.0.1', '21B31CE9B6559186C08F419DDA996858');
INSERT INTO `do_log` VALUES ('402880f92d11c9a0012d11cf46cd0006', 'gly', null, '2010-12-23 13:59:12', null, '127.0.0.1', '2B054A717E8339D6F3A270414F29E2B5');
INSERT INTO `do_log` VALUES ('402880f92d11c9a0012d11d0b5340008', 'a', null, '2010-12-23 14:00:46', null, '127.0.0.1', '2B054A717E8339D6F3A270414F29E2B5');
INSERT INTO `do_log` VALUES ('402880f92d11e00b012d11e00b6b0000', 'gly', null, '2010-12-23 14:17:31', null, '127.0.0.1', '3F6620572DEC6980D6879403CE4CF20C');
INSERT INTO `do_log` VALUES ('402880f92d11e926012d11e926e40000', 'gly', null, '2010-12-23 14:27:28', null, '127.0.0.1', '205086A3608CFADE2306BFC959BE787C');
INSERT INTO `do_log` VALUES ('402880f92d11eebe012d11eebeaa0000', 'gly', null, '2010-12-23 14:33:35', null, '127.0.0.1', 'E6633A352C7DEA4FAAE8899FA3861A19');
INSERT INTO `do_log` VALUES ('402880f92d11f5d6012d11f5d6600000', 'gly', null, '2010-12-23 14:41:20', null, '127.0.0.1', '7C115F4CB9FEA68FEB45763A9CBDF5C8');
INSERT INTO `do_log` VALUES ('402880f92d11fe38012d11fe38780000', 'a', null, '2010-12-23 14:50:29', null, '127.0.0.1', '384034013F812760D0E0F71C8CFAC4D2');
INSERT INTO `do_log` VALUES ('402880f92d120c38012d120c38f10000', 'gly', null, '2010-12-23 15:05:47', '2010-12-23 15:07:00', '127.0.0.1', '603D52DC8B4889D4BCC5204CE0B0B061');
INSERT INTO `do_log` VALUES ('402880f92d120c38012d120d87880001', 'cwjl', null, '2010-12-23 15:07:12', '2010-12-23 15:08:15', '127.0.0.1', '2625A0C5C64AD084E1F7604E7F2F07C0');
INSERT INTO `do_log` VALUES ('402880f92d120c38012d120e9a840003', 'yg1', null, '2010-12-23 15:08:23', '2010-12-23 15:10:17', '127.0.0.1', '163B3395C2999BE4FFF1B390E702DBC4');
INSERT INTO `do_log` VALUES ('402880f92d120c38012d12107ae70006', 'yg2', null, '2010-12-23 15:10:26', '2010-12-23 15:11:27', '127.0.0.1', '92D2DCED1C140E77B1C053A57C6C6959');
INSERT INTO `do_log` VALUES ('402880f92d120c38012d12118d1e0009', 'ptjl', null, '2010-12-23 15:11:36', '2010-12-23 15:16:04', '127.0.0.1', '0ADFAB80C69B01D446F399413174E57E');
INSERT INTO `do_log` VALUES ('ff8080812d13c812012d13c812890000', 'yg1', null, '2010-12-23 23:10:35', '2010-12-23 23:11:32', '192.168.0.121', '9864DF7C07D4A7DD664B0E3E9C89EEFC');
INSERT INTO `do_log` VALUES ('ff8080812d13c812012d13c90c8e0001', 'gly', null, '2010-12-23 23:11:39', '2010-12-23 23:16:59', '192.168.0.121', '2F089CD0BBE2EF794326B4715F6BD880');
INSERT INTO `do_log` VALUES ('402880f92d124b76012d124b76db0000', 'a', null, '2010-12-23 16:14:51', '2010-12-23 16:17:40', '127.0.0.1', '72AE7313B7B4DA0F784D4B8FC95855E0');
INSERT INTO `do_log` VALUES ('402880f92d124b76012d124df7f50005', 'tsgly', null, '2010-12-23 16:17:35', '2010-12-23 16:17:40', '127.0.0.1', '72AE7313B7B4DA0F784D4B8FC95855E0');
INSERT INTO `do_log` VALUES ('402880f92d124b76012d124e2d710006', 'tscwjl', null, '2010-12-23 16:17:49', '2010-12-23 16:18:35', '127.0.0.1', '8CB26EFA5BF7C52F9C7AEB7FDED459F5');
INSERT INTO `do_log` VALUES ('ff8080812d13c812012d13fad4f30002', 'a', null, '2010-12-24 00:06:01', '2010-12-24 00:07:24', '192.168.0.121', 'B99E7247D8B8BAD6D6CDD8C55FC9D0A8');
INSERT INTO `do_log` VALUES ('ff8080812d140c6f012d140c6ffb0000', 'tsyg1', null, '2010-12-24 00:25:15', '2010-12-24 00:55:56', '192.168.0.121', '77398E7C5F47A5726A804BA771C59A25');
INSERT INTO `do_log` VALUES ('402880f92d16f64f012d16f64f6d0000', 'a', null, '2010-12-24 13:59:57', null, '127.0.0.1', 'D4974CA29C0E12AEA5BF36D8AA9588CB');
INSERT INTO `do_log` VALUES ('402880f92d170959012d170959340000', 'a', null, '2010-12-24 14:20:44', null, '127.0.0.1', '5888C16BD66A70775CA5D0F71A8092B4');
INSERT INTO `do_log` VALUES ('402880f92d170c23012d170c23890000', 'yuanxx', null, '2010-12-24 14:23:47', null, '127.0.0.1', '5888C16BD66A70775CA5D0F71A8092B4');
INSERT INTO `do_log` VALUES ('402880f92d170d05012d170d05f80000', 'tsgly', null, '2010-12-24 14:24:45', null, '127.0.0.1', 'FF5039D61076ECED0B06B8C55FEC4493');
INSERT INTO `do_log` VALUES ('402880f92d171a78012d171a78ec0000', 'a', null, '2010-12-24 14:39:26', '2010-12-24 18:00:16', '127.0.0.1', 'BCA132DB2A304AAC49369ACD34728667');
INSERT INTO `do_log` VALUES ('402880f92d171a78012d171e58690004', 'yuanxx', null, '2010-12-24 14:43:40', '2010-12-24 18:00:16', '127.0.0.1', 'BCA132DB2A304AAC49369ACD34728667');
INSERT INTO `do_log` VALUES ('402880f92d171a78012d17d2816d0095', 'tsgly', null, '2010-12-24 18:00:27', '2010-12-24 18:01:18', '127.0.0.1', '61C99620165C330D58E98CCA3C4A1747');
INSERT INTO `do_log` VALUES ('402880f92d171a78012d17d377fc0096', 'tsgly', null, '2010-12-24 18:01:30', null, '127.0.0.1', 'F3F12B821092860EA6BA4DC08A9EFC28');
INSERT INTO `do_log` VALUES ('402880f92d258293012d258293060000', 'a', null, '2010-12-27 09:47:50', '2010-12-27 09:59:19', '127.0.0.1', '7B82B67A8F9CCA640EEC7A676629AD21');
INSERT INTO `do_log` VALUES ('402880f92d258293012d2582f3330001', 'yuanxx', null, '2010-12-27 09:48:15', '2010-12-27 09:59:19', '127.0.0.1', '7B82B67A8F9CCA640EEC7A676629AD21');
INSERT INTO `do_log` VALUES ('402880f92d258293012d258d3f980002', 'tsgly', null, '2010-12-27 09:59:29', '2010-12-27 12:37:17', '127.0.0.1', 'A163CC672EEAA5E16C33B0E9A7C242A9');
INSERT INTO `do_log` VALUES ('402880f92d258293012d2669ca760083', 'tsgly', null, '2010-12-27 14:00:23', '2010-12-27 15:27:57', '127.0.0.1', '18E5002C76BE88E7239512F9CBFDB66B');
INSERT INTO `do_log` VALUES ('402880f92d26c055012d26c055230000', 'tsgly', null, '2010-12-27 15:34:55', null, '127.0.0.1', 'DA3F3C696C17372260F558A0F0DF8BA7');
INSERT INTO `do_log` VALUES ('402880f92d26c65f012d26c65fd60000', 'tsgly', null, '2010-12-27 15:41:31', null, '127.0.0.1', '335EA8D3374B5D17D4250032B7F716DB');
INSERT INTO `do_log` VALUES ('402880f92d26ce08012d26ce08c20000', 'tsgly', null, '2010-12-27 15:49:53', '2010-12-27 17:12:40', '127.0.0.1', '9EE2FB8FB00A0FC8FB4CBA19A1C066A2');
INSERT INTO `do_log` VALUES ('402880f92d271ac0012d271ac0bc0000', 'tsgly', null, '2010-12-27 17:13:40', null, '127.0.0.1', '086AFB4AA45F7B381189E1AC2A4D86A9');
INSERT INTO `do_log` VALUES ('402880f92d271ac0012d27278d700001', 'tsgly', null, '2010-12-27 17:27:39', null, '127.0.0.1', '086AFB4AA45F7B381189E1AC2A4D86A9');
INSERT INTO `do_log` VALUES ('402880f92d2738fb012d2738fb2a0000', 'tsgly', null, '2010-12-27 17:46:41', null, '127.0.0.1', '0938A8DABA001EDC8674D513484A75FF');
INSERT INTO `do_log` VALUES ('402880f92d2740e2012d2740e20f0000', 'tsgly', null, '2010-12-27 17:55:19', null, '127.0.0.1', '1A90694647CE371E6847C016EDD9DA33');
INSERT INTO `do_log` VALUES ('402880f92d2740e2012d274293ed0001', 'a', null, '2010-12-27 17:57:10', null, '127.0.0.1', '1A90694647CE371E6847C016EDD9DA33');
INSERT INTO `do_log` VALUES ('402880f92d2740e2012d2742a9f60002', 'a', null, '2010-12-27 17:57:16', null, '127.0.0.1', '1A90694647CE371E6847C016EDD9DA33');
INSERT INTO `do_log` VALUES ('402880f92d2aa31e012d2aa31e770000', 'tsgly', null, '2010-12-28 09:41:29', '2010-12-28 11:04:07', '127.0.0.1', '227677B907A52DEA8C99802891DF81DA');
INSERT INTO `do_log` VALUES ('402880f92d2aa31e012d2adfeae40010', 'tsgly', null, '2010-12-28 10:47:53', '2010-12-28 11:20:01', '127.0.0.1', '62836B8582CBB5B0762E485FF9F8A7B9');
INSERT INTO `do_log` VALUES ('402880f92d2aa31e012d2aeef7110011', 'tsyg1', null, '2010-12-28 11:04:20', '2010-12-28 11:41:22', '127.0.0.1', '30648AD6DB23F549F4F27BB58C363472');
INSERT INTO `do_log` VALUES ('402880f92d2aa31e012d2b1107ba0188', 'tsgly', null, '2010-12-28 11:41:32', '2010-12-28 11:50:13', '127.0.0.1', 'B7E98E9DB860BF83F9FAF38DDD8589B3');
INSERT INTO `do_log` VALUES ('402880f92d2aa31e012d2b193e740197', 'tsyg2', null, '2010-12-28 11:50:30', '2010-12-28 11:58:01', '127.0.0.1', '9F075FE59FFCCBCB94A5ECBAB44D589D');
INSERT INTO `do_log` VALUES ('402880f92d2aa31e012d2b2044d601a0', 'tsptjl', null, '2010-12-28 11:58:11', null, '127.0.0.1', 'AB3A49F48DFF1A81BEE9479B1F8054CE');
INSERT INTO `do_log` VALUES ('402880f92d2b2473012d2b2473f50000', 'tsptjl', null, '2010-12-28 12:02:45', null, '127.0.0.1', '710151948BCA6FFC105BB7B19519AAF7');
INSERT INTO `do_log` VALUES ('402880f92d2b25f9012d2b25f9910000', 'tsptjl', null, '2010-12-28 12:04:25', null, '127.0.0.1', '0082A054E8881F5FBD724411A458651E');
INSERT INTO `do_log` VALUES ('402880f92d2b27b6012d2b27b6520000', 'tsptjl', null, '2010-12-28 12:06:19', '2010-12-28 12:37:10', '127.0.0.1', 'F101045EF987533E9E951AA04590A2A1');
INSERT INTO `do_log` VALUES ('ff8080812d2d42ec012d2d42ec8c0000', 'tsyg1', null, '2010-12-28 21:55:16', '2010-12-28 21:58:57', '192.168.0.121', 'C954F8170AAA715CECDC913B1A773D50');
INSERT INTO `do_log` VALUES ('ff8080812d2d42ec012d2d466ea60001', 'tsgly', null, '2010-12-28 21:59:06', '2010-12-28 22:02:39', '192.168.0.121', '37E5E7A1C5F85095CE5414C3148067E1');
INSERT INTO `do_log` VALUES ('ff8080812d2d42ec012d2d49eb030002', 'tsyg1', null, '2010-12-28 22:02:55', '2010-12-28 22:34:22', '192.168.0.121', '96CD8AA1A5A76C8340E8E950B7AB5CE1');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2ba224540000', 'a', null, '2010-12-28 14:20:02', '2010-12-28 14:28:33', '127.0.0.1', '6F9E428DD9519D2DA1ACC767F46476FB');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2ba374ca0001', 'yuanxx', null, '2010-12-28 14:21:28', '2010-12-28 14:28:33', '127.0.0.1', '6F9E428DD9519D2DA1ACC767F46476FB');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2ba38b1a0002', 'yuanxx', null, '2010-12-28 14:21:34', '2010-12-28 14:28:33', '127.0.0.1', '6F9E428DD9519D2DA1ACC767F46476FB');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2baa217f000a', 'yuanxx', null, '2010-12-28 14:28:46', '2010-12-28 15:14:21', '127.0.0.1', 'BFA438545BCB6988CAF542590D279369');
INSERT INTO `do_log` VALUES ('ff8080812d2d42ec012d2d7256a50003', 'tsyg1', null, '2010-12-28 22:47:04', null, '192.168.0.121', '8E1EAC3C008E7E99930CDE8411E5C432');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2bd3fcec000b', 'tsyg1', null, '2010-12-28 15:14:29', '2010-12-28 15:22:46', '127.0.0.1', '730F40C60BEDC643640A141951B16F9C');
INSERT INTO `do_log` VALUES ('ff8080812d2d7e36012d2d7e369d0000', 'tsyg1', null, '2010-12-28 23:00:02', '2010-12-28 23:31:09', '192.168.0.121', 'A09AA550CE3DEE3F815B44D446ED9694');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2bdbb9c7000c', 'tsyg2', null, '2010-12-28 15:22:56', '2010-12-28 15:27:21', '127.0.0.1', '93CBD35F865B71419F01146FBF17C168');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2bdfeb1c000d', 'tsptjl', null, '2010-12-28 15:27:31', '2010-12-28 15:29:03', '127.0.0.1', '3E58613F35355545B8EA15803E309937');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2be184a6000f', 'tscwjl', null, '2010-12-28 15:29:15', '2010-12-28 15:29:42', '127.0.0.1', 'F5879784A00031998F9E9061B14C4B17');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2be217b60010', 'tsptjl', null, '2010-12-28 15:29:53', '2010-12-28 15:33:17', '127.0.0.1', '5B9AB166A8B8FEBE66D66EBA83972B9D');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2be9685c0015', 'tsgly', null, '2010-12-28 15:37:53', '2010-12-28 15:38:50', '127.0.0.1', 'B0072980C242205D9CCBCE7DE5BD7FF5');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2c28c9c70016', 'tsyg2', null, '2010-12-28 16:47:06', '2010-12-28 17:20:32', '127.0.0.1', 'AFC798AD6B974BC59290F4CFAC6BC618');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2c478f900019', 'tsptjl', null, '2010-12-28 17:20:43', '2010-12-28 17:36:26', '127.0.0.1', '683638F38FB28287F7140C952FA22B9B');
INSERT INTO `do_log` VALUES ('402880f92d2ba224012d2c5624e9001b', 'tsgly', null, '2010-12-28 17:36:39', null, '127.0.0.1', '180AB0A9CC199F4549C6BCC85665EDDE');
INSERT INTO `do_log` VALUES ('402880f92d2fb8a7012d2fb8a7160000', 'a', null, '2010-12-29 09:23:06', '2010-12-29 09:58:58', '127.0.0.1', 'D5514922982277911F1788755BAAF6D7');
INSERT INTO `do_log` VALUES ('402880f92d2fb8a7012d2fb9c3a10001', 'tsgly', null, '2010-12-29 09:24:19', '2010-12-29 09:58:58', '127.0.0.1', 'D5514922982277911F1788755BAAF6D7');
INSERT INTO `do_log` VALUES ('402880f92d2fb8a7012d300b369a0002', 'a', null, '2010-12-29 10:53:17', null, '127.0.0.1', '7B57C60EC4C580D7594642F7DA693470');
INSERT INTO `do_log` VALUES ('402880f92d2fb8a7012d302dca3e01ec', 'tsgly', null, '2010-12-29 11:31:03', null, '127.0.0.1', '7B57C60EC4C580D7594642F7DA693470');
INSERT INTO `do_log` VALUES ('402880f92d309afe012d309afe890000', 'a', null, '2010-12-29 13:30:20', null, '127.0.0.1', '3A219B6B70E5B5C907F9F3CBE4EAC986');
INSERT INTO `do_log` VALUES ('402880f92d30ad9e012d30ad9ecc0000', 'a', null, '2010-12-29 13:50:40', null, '127.0.0.1', '8BE44BB542C6013C1ED3D71EE59627DF');
INSERT INTO `do_log` VALUES ('402880f92d30ad9e012d30b1ce030003', 'tsgly', null, '2010-12-29 13:55:15', null, '127.0.0.1', '8BE44BB542C6013C1ED3D71EE59627DF');
INSERT INTO `do_log` VALUES ('402880f92d30beeb012d30beeb8b0000', 'a', null, '2010-12-29 14:09:34', null, '127.0.0.1', '0D7F848CF909318DE6EDB80DC2AFA1D4');
INSERT INTO `do_log` VALUES ('402880f92d30beeb012d30c418340006', 'tsgly', null, '2010-12-29 14:15:13', null, '127.0.0.1', '0D7F848CF909318DE6EDB80DC2AFA1D4');
INSERT INTO `do_log` VALUES ('402880f92d30c6a1012d30c6a1140000', 'tsgly', null, '2010-12-29 14:17:59', null, '127.0.0.1', '3E73BE0F49289C5E6782C02DEECB5F97');
INSERT INTO `do_log` VALUES ('402880f92d30cd96012d30cd96d70000', 'a', null, '2010-12-29 14:25:36', null, '127.0.0.1', '4F24BA9DBB47E3C9CFD849E344BE7AD9');
INSERT INTO `do_log` VALUES ('402880f92d30cd96012d30cf74b70001', 'tsgly', null, '2010-12-29 14:27:38', null, '127.0.0.1', '4F24BA9DBB47E3C9CFD849E344BE7AD9');
INSERT INTO `do_log` VALUES ('402880f92d30d83a012d30d83a8a0000', 'tsgly', null, '2010-12-29 14:37:13', null, '127.0.0.1', '89D67A5E48EECA7E943890C363605044');
INSERT INTO `do_log` VALUES ('402880f92d30e1a3012d30e1a39b0000', 'a', null, '2010-12-29 14:47:29', null, '127.0.0.1', '080AA263A5A8A953D363A5800CB7F3C0');
INSERT INTO `do_log` VALUES ('402880f92d30e1a3012d30e1f7330001', 'tsgly', null, '2010-12-29 14:47:51', null, '127.0.0.1', '080AA263A5A8A953D363A5800CB7F3C0');
INSERT INTO `do_log` VALUES ('402880f92d30ed36012d30ed361d0000', 'a', null, '2010-12-29 15:00:08', null, '127.0.0.1', '953EA216B2C47F302CA4061698FB030C');
INSERT INTO `do_log` VALUES ('402880f92d30ed36012d30f71e040002', 'tsgly', null, '2010-12-29 15:10:57', null, '127.0.0.1', '953EA216B2C47F302CA4061698FB030C');
INSERT INTO `do_log` VALUES ('402880f92d3109d0012d3109d0a30000', 'tsgly', null, '2010-12-29 15:31:22', null, '127.0.0.1', 'D6118A5B208358F8C28E9D352FA7B044');
INSERT INTO `do_log` VALUES ('402880f92d31185c012d31185c3b0000', 'tsgly', null, '2010-12-29 15:47:16', null, '127.0.0.1', '18C97C0E167A961B8B1AED9A3817FA00');
INSERT INTO `do_log` VALUES ('402880f92d31185c012d311871a10001', 'tsgly', null, '2010-12-29 15:47:21', null, '127.0.0.1', '18C97C0E167A961B8B1AED9A3817FA00');
INSERT INTO `do_log` VALUES ('402880f92d315769012d315769560000', 'tsgly', null, '2010-12-29 16:56:08', null, '127.0.0.1', '92025EE00991FC055B0A8208EE9603E0');
INSERT INTO `do_log` VALUES ('402880f92d3167b6012d3167b6220000', 'tsgly', null, '2010-12-29 17:13:56', '2010-12-29 17:52:52', '127.0.0.1', '4D4A9C336182F1E85914C2ED651469D4');
INSERT INTO `do_log` VALUES ('402880f92d3167b6012d3191061d0010', 'a', null, '2010-12-29 17:59:04', null, '127.0.0.1', 'BB3654D5E7EF13CCAC3EEF4BEFFD25B8');
INSERT INTO `do_log` VALUES ('402880f92d3167b6012d3193d088001c', 'tsgly', null, '2010-12-29 18:02:06', null, '127.0.0.1', 'BB3654D5E7EF13CCAC3EEF4BEFFD25B8');
INSERT INTO `do_log` VALUES ('402880f92d34de62012d34de62ad0000', 'a', null, '2010-12-30 09:22:25', '2010-12-30 10:11:29', '127.0.0.1', '7A0FF87F7B338AAB56661CC485BAC0C9');
INSERT INTO `do_log` VALUES ('402880f92d353ef0012d353ef0930000', 'a', null, '2010-12-30 11:07:53', '2010-12-30 11:46:48', '127.0.0.1', '8CC9D2FACB1E1B20C2681610D8A291A7');
INSERT INTO `do_log` VALUES ('402880f92d35efca012d35efca620000', 'a', null, '2010-12-30 14:21:03', '2010-12-30 14:54:55', '127.0.0.1', 'F928D6513685936C6F0556E2AB837184');
INSERT INTO `do_log` VALUES ('402880f92d35efca012d360f33560004', 'a', null, '2010-12-30 14:55:21', null, '127.0.0.1', '4DBE6BC3AFD6BBF9D47FED5F02F9A086');
INSERT INTO `do_log` VALUES ('402880f92d35efca012d36129d0a0005', 'tsgly', null, '2010-12-30 14:59:05', null, '127.0.0.1', '4DBE6BC3AFD6BBF9D47FED5F02F9A086');
INSERT INTO `do_log` VALUES ('402880f92d363b62012d363b626c0000', 'tsgly', null, '2010-12-30 15:43:37', null, '127.0.0.1', 'D6E9ECB9CB589C9B57D7B276640F1E31');
INSERT INTO `do_log` VALUES ('402880f92d36464d012d36464dcb0000', 'tsgly', null, '2010-12-30 15:55:33', null, '127.0.0.1', 'EC111984A4B0F5007A3602DEE319DD5A');
INSERT INTO `do_log` VALUES ('402880f92d364e0b012d364e0b790000', 'tsgly', null, '2010-12-30 16:04:00', null, '127.0.0.1', '40552BFC4C1617C51604E640442E7FAD');
INSERT INTO `do_log` VALUES ('402880f92d3685a6012d3685a61d0000', 'a', null, '2010-12-30 17:04:44', '2010-12-30 17:34:47', '127.0.0.1', '7307475D0859C0EB3C2BBCE616BF8579');
INSERT INTO `do_log` VALUES ('402880f92d3adc01012d3adc01ce0000', 'a', null, '2010-12-31 13:17:33', null, '127.0.0.1', '3E9C466CBA7D3C8C8D683D8D32747009');
INSERT INTO `do_log` VALUES ('402880f92d3adc01012d3ae0ddfe0005', 'tsgly', null, '2010-12-31 13:22:51', null, '127.0.0.1', '3E9C466CBA7D3C8C8D683D8D32747009');
INSERT INTO `do_log` VALUES ('402880f92d3ae40f012d3ae40f690000', 'tsgly', null, '2010-12-31 13:26:20', null, '127.0.0.1', '1260D63F416541714D4FD91D24FD07B6');
INSERT INTO `do_log` VALUES ('402880f92d3aedd6012d3aedd6160000', 'tsgly', null, '2010-12-31 13:37:01', null, '127.0.0.1', '4CBD4855B739B32CA6DB030F5787648D');
INSERT INTO `do_log` VALUES ('402880f92d3af4e9012d3af4e97f0000', 'tsgly', null, '2010-12-31 13:44:45', null, '127.0.0.1', '710834B855D2C95C60374F6D6466E4C2');
INSERT INTO `do_log` VALUES ('402880f92d3af765012d3af765d40000', 'tsgly', null, '2010-12-31 13:47:28', null, '127.0.0.1', 'D99372278982864EB02FE6192BDCD02B');
INSERT INTO `do_log` VALUES ('402880f92d3affd4012d3affd4cb0000', 'tsgly', null, '2010-12-31 13:56:40', null, '127.0.0.1', '1B501CE74171927CBBFEA68028D517B8');
INSERT INTO `do_log` VALUES ('402880f92d3b3263012d3b3263540000', 'tsgly', null, '2010-12-31 14:51:54', null, '127.0.0.1', 'B8021AFF9F1F5B6BDC1CDE95C0529B75');
INSERT INTO `do_log` VALUES ('402880f92d3b5577012d3b55775f0000', 'tsgly', null, '2010-12-31 15:30:13', null, '127.0.0.1', '67A3EACECADE45C0BDCFF95F46212B7D');
INSERT INTO `do_log` VALUES ('402880f92d3b5577012d3b628b210001', 'tsgly', null, '2010-12-31 15:44:29', null, '127.0.0.1', '67A3EACECADE45C0BDCFF95F46212B7D');
INSERT INTO `do_log` VALUES ('402880f92d3b6d8a012d3b6d8aca0000', 'tsgly', null, '2010-12-31 15:56:30', null, '127.0.0.1', '0BD8B5D25EC9A4BCD2AFB4B5366DFCD2');
INSERT INTO `do_log` VALUES ('402880f92d3b703f012d3b703f7c0000', 'tsgly', null, '2010-12-31 15:59:28', null, '127.0.0.1', '35499B733750923DFB4396FE06B217D1');
INSERT INTO `do_log` VALUES ('402880f92d3b7aa0012d3b7aa0ed0000', 'tsgly', null, '2010-12-31 16:10:48', null, '127.0.0.1', 'A0EB3BB76B07AC1669B90A7C05AD6C1A');
INSERT INTO `do_log` VALUES ('402880f92d3b8829012d3b88293c0000', 'tsgly', null, '2010-12-31 16:25:35', null, '127.0.0.1', 'E93D4C0B32BE7BD75C8783A595D39C00');
INSERT INTO `do_log` VALUES ('402880f92d3b8e1f012d3b8e1ff20000', 'tsgly', null, '2010-12-31 16:32:06', null, '127.0.0.1', '3683869BEFD1124595E8089349D45264');
INSERT INTO `do_log` VALUES ('402880f92d4e9a6c012d4e9a6c0a0000', 'a', null, '2011-01-04 09:18:19', '2011-01-04 10:04:20', '127.0.0.1', 'AC6B276BCB9FF25490DA55D9ECBAF748');
INSERT INTO `do_log` VALUES ('402880f92d4e9a6c012d4eacfd300006', 'tsgly', null, '2011-01-04 09:38:35', '2011-01-04 10:04:20', '127.0.0.1', 'AC6B276BCB9FF25490DA55D9ECBAF748');
INSERT INTO `do_log` VALUES ('402880f92d4e9a6c012d4ec4aa280031', 'tsgly', null, '2011-01-04 10:04:27', '2011-01-04 12:35:39', '127.0.0.1', 'A76AB94E29A48F4F626BDF125E9B241A');
INSERT INTO `do_log` VALUES ('402880f92d4f8813012d4f8813ff0000', 'a', null, '2011-01-04 13:37:54', '2011-01-04 13:39:22', '127.0.0.1', 'CA2A5D54232F124371060B1BEC8ED61E');
INSERT INTO `do_log` VALUES ('402880f92d4f8d12012d4f8d121f0000', 'a', null, '2011-01-04 13:43:21', '2011-01-04 13:57:39', '127.0.0.1', '8160140D49CB89B5BBF82D5BD574516B');
INSERT INTO `do_log` VALUES ('402880f92d4f8d12012d4f99c5270031', 'tsgly', null, '2011-01-04 13:57:13', '2011-01-04 13:57:39', '127.0.0.1', '8160140D49CB89B5BBF82D5BD574516B');
INSERT INTO `do_log` VALUES ('402880f92d4f8d12012d4f9a45b10032', 'yuanxx', null, '2011-01-04 13:57:46', null, '127.0.0.1', 'AC632C977664BD2BF74C7E0F927CB6B9');
INSERT INTO `do_log` VALUES ('402880f92d4f8d12012d4f9a49a90033', 'yuanxx', null, '2011-01-04 13:57:47', null, '127.0.0.1', 'AC632C977664BD2BF74C7E0F927CB6B9');
INSERT INTO `do_log` VALUES ('402880f92d4fdd1d012d4fdd1da80000', 'a', null, '2011-01-04 15:10:47', '2011-01-04 15:10:49', '127.0.0.1', '3C94C9C006A1D5FDBF3BB8D2D3D878B1');
INSERT INTO `do_log` VALUES ('402880f92d4fdd1d012d4fdd55910001', 'tsgly', null, '2011-01-04 15:11:01', '2011-01-04 15:28:27', '127.0.0.1', '09F14F4F6A08E27E110D30EAEEAE6CE7');
INSERT INTO `do_log` VALUES ('402880f92d4fdd1d012d4fed8605001c', 'tsptjl', null, '2011-01-04 15:28:42', '2011-01-04 16:21:02', '127.0.0.1', 'BC7213FFDC8FCFA8AF2F817F7ED7C116');
INSERT INTO `do_log` VALUES ('402880f92d4fdd1d012d501d8ef10022', 'tsgly', null, '2011-01-04 16:21:10', '2011-01-04 17:34:26', '127.0.0.1', 'C034F9C52347E4D04F89BBAB3D3446F6');
INSERT INTO `do_log` VALUES ('402880f92d4fdd1d012d5060f98f0078', 'tsgly', null, '2011-01-04 17:34:48', '2011-01-04 17:54:43', '127.0.0.1', 'C67FFADDA918538F72D4EACC7C3E0AFC');
INSERT INTO `do_log` VALUES ('402880f92d5074df012d5074df010000', 'a', null, '2011-01-04 17:56:32', '2011-01-04 17:56:54', '127.0.0.1', '05EF414588FCB90CF954D959DCEDF8C3');
INSERT INTO `do_log` VALUES ('402880f92d53b545012d53b545bc0000', 'a', null, '2011-01-05 09:05:44', '2011-01-05 09:31:15', '127.0.0.1', '409DE966CE28D91A2B73EF49339A5904');
INSERT INTO `do_log` VALUES ('402880f92d53b545012d53cc21e40011', 'yuanxx', null, '2011-01-05 09:30:43', '2011-01-05 09:31:15', '127.0.0.1', '409DE966CE28D91A2B73EF49339A5904');
INSERT INTO `do_log` VALUES ('402880f92d53b545012d53cc41760012', 'yuanxx', null, '2011-01-05 09:30:51', '2011-01-05 09:31:15', '127.0.0.1', '409DE966CE28D91A2B73EF49339A5904');
INSERT INTO `do_log` VALUES ('402880f92d53b545012d53cd81640013', 'tsptjl', null, '2011-01-05 09:32:13', '2011-01-05 09:38:41', '127.0.0.1', '9913E5721C5C60D27272E25FACC5D1A4');
INSERT INTO `do_log` VALUES ('402880f92d53b545012d53d396140019', 'tsyg1', null, '2011-01-05 09:38:51', '2011-01-05 09:44:48', '127.0.0.1', 'B7AFF2D314A58D45395A0AE0D87E6307');
INSERT INTO `do_log` VALUES ('402880f92d53b545012d53d96ef90023', 'tsptjl', null, '2011-01-05 09:45:14', '2011-01-05 09:47:25', '127.0.0.1', 'DEF0EAF8DDD9992D305408160461F71D');
INSERT INTO `do_log` VALUES ('402880f92d53b545012d53dbb137002a', 'tsyg1', null, '2011-01-05 09:47:42', null, '127.0.0.1', 'B38A135AF59192E65777586E4093ED93');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d53e587dd0000', 'a', null, '2011-01-05 09:58:27', '2011-01-05 10:07:19', '127.0.0.1', '043B91766915890BD476BC776D75926C');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d53eb10610002', 'tsptjl', null, '2011-01-05 10:04:30', '2011-01-05 10:07:19', '127.0.0.1', '043B91766915890BD476BC776D75926C');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d53edccfe0006', 'tsyg1', null, '2011-01-05 10:07:29', '2011-01-05 11:04:55', '127.0.0.1', '34A998843FBE4402D81417B48D53E758');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d54228e510075', 'tsyg1', null, '2011-01-05 11:05:06', '2011-01-05 11:25:19', '127.0.0.1', '86051E202402137B3ED06DA6FC4E0D82');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d54354cf00078', 'tsyg1', null, '2011-01-05 11:25:35', '2011-01-05 11:25:39', '127.0.0.1', '29468C3007C5B66B8727523B92FEDAAD');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d54359b770079', 'tsptjl', null, '2011-01-05 11:25:55', '2011-01-05 11:45:53', '127.0.0.1', '4C34452E78E55B55EEC1A4380889D6B0');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d5435accb007a', 'tsptjl', null, '2011-01-05 11:25:59', '2011-01-05 11:45:53', '127.0.0.1', '4C34452E78E55B55EEC1A4380889D6B0');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d544808ad0088', 'tsyg1', null, '2011-01-05 11:46:03', '2011-01-05 11:46:58', '127.0.0.1', '1D0F4934B548C98B0451C79096E2954D');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d544908b60089', 'tsgly', null, '2011-01-05 11:47:08', '2011-01-05 11:47:27', '127.0.0.1', 'C30C66381720DF590C39DEDF6A9A3677');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d54496e5f008a', 'tsyg1', null, '2011-01-05 11:47:34', '2011-01-05 11:49:43', '127.0.0.1', 'E0A9735A2BE89340D40DADAC2F46549A');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d544b8614008b', 'tsyg2', null, '2011-01-05 11:49:51', '2011-01-05 11:50:24', '127.0.0.1', 'C47EC8D54AD0DDB3880D0F04BA7470F1');
INSERT INTO `do_log` VALUES ('402880f92d53e587012d544c23b9008c', 'tsgly', null, '2011-01-05 11:50:32', null, '127.0.0.1', '62F51C655A5CF654BBC95815491C2236');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d5453c5510000', 'a', null, '2011-01-05 11:58:52', '2011-01-05 12:31:05', '127.0.0.1', '9A56F92A809F1BF4545B116D00332086');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d54bf23950001', 'a', null, '2011-01-05 13:56:08', '2011-01-05 14:17:16', '127.0.0.1', '8B03FB49AEDBB0CA519A281AA5171C3A');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d54d29a6d0023', 'a', null, '2011-01-05 14:17:24', '2011-01-05 14:39:16', '127.0.0.1', 'E5AA8E9BE9D607A8097362097546A382');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d54e6cf290041', 'tsyg2', null, '2011-01-05 14:39:28', '2011-01-05 14:48:53', '127.0.0.1', 'CF425C3A67BA0ADE77E33F124AC2B22C');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d54ef91c70044', 'tsptjl', null, '2011-01-05 14:49:02', '2011-01-05 15:16:19', '127.0.0.1', 'BEB59AC4D4238EDBAB2A8ED7C78E31A7');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d5508a896004b', 'tsyg1', null, '2011-01-05 15:16:26', '2011-01-05 15:34:44', '127.0.0.1', '757B334E45F516297BCDE4D37788ED15');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d55198752004e', 'tsptjl', null, '2011-01-05 15:34:52', '2011-01-05 16:32:22', '127.0.0.1', 'B39546E8C1D44081F772E7402C01A37C');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d554e4ea70053', 'tsptjl', null, '2011-01-05 16:32:31', '2011-01-05 16:34:32', '127.0.0.1', '0DEF3A47EBA0BEEB6C8305BD23169BFA');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d5550562e0054', 'tsptjl', null, '2011-01-05 16:34:44', '2011-01-05 17:22:59', '127.0.0.1', '8F4F4551D4E607A3A64D24A0F40B1C32');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d557cab180060', 'tsyg2', null, '2011-01-05 17:23:09', '2011-01-05 17:24:04', '127.0.0.1', 'E428A9F5EF614B24983B05CAFF919EF9');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d557daf780061', 'tsptjl', null, '2011-01-05 17:24:16', '2011-01-05 17:25:48', '127.0.0.1', '75695B377B306937729BF0B047C5249B');
INSERT INTO `do_log` VALUES ('402880f92d5453c5012d557f40ec0062', 'tsyg2', null, '2011-01-05 17:25:59', '2011-01-05 18:10:07', '127.0.0.1', '00801EE809D16AEB492BCCEF2E5C417F');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5955a7950000', 'a', null, '2011-01-06 11:19:01', '2011-01-06 12:31:08', '127.0.0.1', 'DC3C07589BF3E355D5B4D33573F3AA6B');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d59789c55000d', 'tsptjl', null, '2011-01-06 11:57:12', '2011-01-06 12:31:08', '127.0.0.1', 'DC3C07589BF3E355D5B4D33573F3AA6B');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d59f5ee90000e', 'a', null, '2011-01-06 14:14:05', '2011-01-06 14:47:07', '127.0.0.1', 'B60BD0247B670FAE17ACBCD84D33E06F');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a16b853000f', 'a', null, '2011-01-06 14:49:54', '2011-01-06 14:57:28', '127.0.0.1', 'ADF6DBAD049218A04E81637CBDDAAD81');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a1dd9430022', 'tsyg2', null, '2011-01-06 14:57:41', '2011-01-06 15:55:39', '127.0.0.1', '0BCCFAB26DAD49CBFCB6C797728BE0B8');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a61d1120024', 'a', null, '2011-01-06 16:11:56', '2011-01-06 16:12:40', '127.0.0.1', '3B8FAE78C9858971443C5094DD54F1FD');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a62a9b10025', 'tsyg2', null, '2011-01-06 16:12:51', '2011-01-06 16:13:47', '127.0.0.1', 'BF734C40FE453F2C00FD8FFB54E46C74');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a63a8ae0027', 'tsptjl', null, '2011-01-06 16:13:56', '2011-01-06 16:32:36', '127.0.0.1', 'BA530D746B125663B631D1D9B6DC06BB');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a74f0be002a', 'tsyg1', null, '2011-01-06 16:32:49', '2011-01-06 16:32:54', '127.0.0.1', 'AE797C91B019B848D4F1C09E8D1F9C20');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a752630002b', 'tsgly', null, '2011-01-06 16:33:03', '2011-01-06 16:33:53', '127.0.0.1', '76237F21AD893E7BD9CA9B5B9F6E89AF');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a761887002d', 'tsptjl', null, '2011-01-06 16:34:05', '2011-01-06 16:37:09', '127.0.0.1', '1ADEEC6D86FB9C3B3E9F8CC481DE9E7B');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a7916620032', 'tsyg3', null, '2011-01-06 16:37:21', '2011-01-06 16:38:14', '127.0.0.1', 'EAC6BBE833D744486522C35F3E4DD651');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a7a0b0b0034', 'tsyg2', null, '2011-01-06 16:38:23', '2011-01-06 16:38:47', '127.0.0.1', 'F38669EA45905ED91A7F09BEF6A2B8CF');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a7a91c30035', 'tsyg1', null, '2011-01-06 16:38:58', '2011-01-06 16:40:19', '127.0.0.1', 'FD3BF5873B1A7800B5EC9A64FEC059B8');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a7c23010036', 'tscwjl', null, '2011-01-06 16:40:40', '2011-01-06 17:09:25', '127.0.0.1', '499D659EE8B4441C65B369EC4FC09B5F');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5a96c3000049', 'tsyg3', null, '2011-01-06 17:09:45', '2011-01-06 17:23:15', '127.0.0.1', '022272E72637916C14F8A20272BC6BA0');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5aa34ab2004c', 'tscwjl', null, '2011-01-06 17:23:27', '2011-01-06 17:23:43', '127.0.0.1', 'FED648B5F374144DE1B1202E7CBC9802');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5aa3b97f004d', 'tsyg3', null, '2011-01-06 17:23:55', '2011-01-06 17:25:55', '127.0.0.1', 'F54AFF7A03C23180D6B6B25C850D5C16');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5aa5b765004f', 'tscwjl', null, '2011-01-06 17:26:05', '2011-01-06 17:27:34', '127.0.0.1', '45F3A4B7658F09FAE34F9A4C52E450A3');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5aa734720050', 'tsyg1', null, '2011-01-06 17:27:43', '2011-01-06 17:28:52', '127.0.0.1', 'FD47A233A87C49048CBBB3B36E7BF1E5');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5aa86fd70051', 'tsyg2', null, '2011-01-06 17:29:04', '2011-01-06 17:31:11', '127.0.0.1', 'ED1CA5F3B3BB8634CEB0449E33C1F83F');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5aaa8b1d0055', 'tsptjl', null, '2011-01-06 17:31:22', '2011-01-06 17:37:36', '127.0.0.1', 'DE5F5A10F77620B04FB1F5153B98C49F');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5ab0621d0056', 'tsyg1', null, '2011-01-06 17:37:45', '2011-01-06 17:45:12', '127.0.0.1', '0F9AF0894861BF106CDC8CC635F69E1E');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5ab754770057', 'yuanxx', null, '2011-01-06 17:45:20', '2011-01-06 17:53:51', '127.0.0.1', '5F819A7FB675A23AF6BE2D33C418EBBE');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5abf47290058', 'tsyg1', null, '2011-01-06 17:54:01', '2011-01-06 17:54:34', '127.0.0.1', '1CF3E4FEDC7BBFD9477C9167BE0BD609');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5ac005b10059', 'a', null, '2011-01-06 17:54:49', '2011-01-06 17:59:46', '127.0.0.1', '04D3F61DD8E3C08DF71B4F98C933B6C8');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5ac4d8be005a', 'tsyg2', null, '2011-01-06 18:00:06', '2011-01-06 18:03:15', '127.0.0.1', '351A59AED8EAA5A723CA3BB7E9DF4EAB');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5ac594a8005b', 'a', null, '2011-01-06 18:00:54', '2011-01-06 18:03:15', '127.0.0.1', '351A59AED8EAA5A723CA3BB7E9DF4EAB');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5ac5a7c4005c', 'a', null, '2011-01-06 18:00:59', '2011-01-06 18:03:15', '127.0.0.1', '351A59AED8EAA5A723CA3BB7E9DF4EAB');
INSERT INTO `do_log` VALUES ('402880f92d5955a7012d5ac7f52b005d', 'tsyg2', null, '2011-01-06 18:03:29', '2011-01-06 18:12:22', '127.0.0.1', '68973B050B4E86C6028076456E9CC16F');
INSERT INTO `do_log` VALUES ('402880f92d5e111a012d5e111af10000', 'a', null, '2011-01-07 09:22:15', '2011-01-07 10:20:57', '127.0.0.1', '5CE1E34EDFDBBA502E08DC645CE51742');
INSERT INTO `do_log` VALUES ('402880f92d5e111a012d5e12e6240001', 'tsyg2', null, '2011-01-07 09:24:12', '2011-01-07 10:20:57', '127.0.0.1', '5CE1E34EDFDBBA502E08DC645CE51742');
INSERT INTO `do_log` VALUES ('402880f92d5e111a012d5e46fe930008', 'tsptjl', null, '2011-01-07 10:21:07', '2011-01-07 10:28:33', '127.0.0.1', 'EC8312BB0140719E2456118E8283A66D');
INSERT INTO `do_log` VALUES ('402880f92d5e111a012d5e4defc5000e', 'tscwjl', null, '2011-01-07 10:28:42', '2011-01-07 10:54:53', '127.0.0.1', '2B79E8B06F6F217E23E9010F93FC5FB4');
INSERT INTO `do_log` VALUES ('402880f92d5e111a012d5e6611df0010', 'tsyg3', null, '2011-01-07 10:55:03', null, '127.0.0.1', '67575C0D3870FD1FA4CF76551F34F82C');
INSERT INTO `do_log` VALUES ('402880f92d5e72d8012d5e72d80e0000', 'tsyg3', null, '2011-01-07 11:09:00', null, '127.0.0.1', '7509693A0CF419702D613DC5DD93CFE3');
INSERT INTO `do_log` VALUES ('402880f92d5e7f06012d5e7f06520000', 'tsyg3', null, '2011-01-07 11:22:19', null, '127.0.0.1', '34C8E447468BE42F6D1EA7BDD86620AA');
INSERT INTO `do_log` VALUES ('402880f92d5e85df012d5e85dffa0000', 'tsyg3', null, '2011-01-07 11:29:48', '2011-01-07 12:01:39', '127.0.0.1', 'A220C766CF39AEF27E3E014B4A2CF2FD');
INSERT INTO `do_log` VALUES ('402880f92d5e85df012d5ea331a8002f', 'tsyg2', null, '2011-01-07 12:01:49', '2011-01-07 12:02:38', '127.0.0.1', '2595483A79EB5BC52DD19E64C3361502');
INSERT INTO `do_log` VALUES ('402880f92d5f0317012d5f0317060000', 'tscwjl', null, '2011-01-07 13:46:34', null, '127.0.0.1', '4773855BD5CA187D36107EEF1A1BF603');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f22bfc10000', 'a', null, '2011-01-07 14:21:08', '2011-01-07 14:26:09', '127.0.0.1', 'DC2652060C1BDE9A9A887B57FE6A8564');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f27a9fe0002', 'tscwjl', null, '2011-01-07 14:26:31', '2011-01-07 14:54:01', '127.0.0.1', '264A8736CE43647F3D7CC0AB27D2C6B8');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f4112020003', 'a', null, '2011-01-07 14:54:16', '2011-01-07 15:13:28', '127.0.0.1', '096DA54FF9240EF0E18F4948A2FDF4DE');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f41a72f0004', 'tsyg1', null, '2011-01-07 14:54:54', '2011-01-07 15:13:28', '127.0.0.1', '096DA54FF9240EF0E18F4948A2FDF4DE');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f52deef000b', 'tsyg2', null, '2011-01-07 15:13:42', '2011-01-07 15:20:28', '127.0.0.1', '6D9D642502B3B115F10AE9A4CCA619B9');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f5929e4000e', 'tsyg1', null, '2011-01-07 15:20:35', '2011-01-07 15:26:23', '127.0.0.1', '6B6FAA77B98926644DE579F27D71E5C7');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f5f2a2c0013', 'tsyg2', null, '2011-01-07 15:27:08', '2011-01-07 15:32:42', '127.0.0.1', 'C8964E28773A163B78A21EECF2651EB3');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f64a9860014', 'tsptjl', null, '2011-01-07 15:33:08', '2011-01-07 15:34:15', '127.0.0.1', 'F7CE47A8138E01C97AD667F160BD0694');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f65cd9f0015', 'tszjl', null, '2011-01-07 15:34:23', '2011-01-07 15:36:58', '127.0.0.1', '4594434F44A10E89F641C642ABE84C87');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f685d350016', 'tsyg3', null, '2011-01-07 15:37:11', '2011-01-07 15:37:17', '127.0.0.1', '343355072DA59C339A715C78A59C6534');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f689bf60017', 'tsyg2', null, '2011-01-07 15:37:27', '2011-01-07 15:48:39', '127.0.0.1', 'F815721072AFEE198F1A525AC1992FD0');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f7306330019', 'tsyg2', null, '2011-01-07 15:48:49', '2011-01-07 15:49:00', '127.0.0.1', 'B416CCEE31E77D7B988AF1E32DB6B70A');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f735373001a', 'tsyg1', null, '2011-01-07 15:49:09', '2011-01-07 15:52:49', '127.0.0.1', '0E7782376AEA9C1AA9AC3E9C782EEFB5');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f76d89e001b', 'tsyg2', null, '2011-01-07 15:53:00', '2011-01-07 15:53:30', '127.0.0.1', '93C090F2341FA2C451F6BA427DDEC4D3');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f777650001e', 'tsyg1', null, '2011-01-07 15:53:40', '2011-01-07 16:05:19', '127.0.0.1', '5ED95B00E97AD00F42D96462107E727B');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f823cee001f', 'tsptjl', null, '2011-01-07 16:05:26', '2011-01-07 16:06:12', '127.0.0.1', '9C1E95A39494A2242683E032F248C779');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f8317450020', 'tsyg1', null, '2011-01-07 16:06:22', '2011-01-07 16:06:43', '127.0.0.1', 'C78D4CB0C691F27ED04C62D92795D798');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f8388ee0022', 'tsptjl', null, '2011-01-07 16:06:51', '2011-01-07 16:21:40', '127.0.0.1', '9368C7FA93781E308A8DC0ABFE24059B');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f9143eb002f', 'tsptjl', null, '2011-01-07 16:21:51', '2011-01-07 16:26:39', '127.0.0.1', 'D008D01C508D46DE39DA54DB3DFAF2C0');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f95cbdf0034', 'tsptjl', null, '2011-01-07 16:26:48', '2011-01-07 16:28:02', '127.0.0.1', '2198DBB5B69A074364008C4A43C225A6');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f9751010035', 'tsyg1', null, '2011-01-07 16:28:28', '2011-01-07 16:28:51', '127.0.0.1', 'C150A717C61304CEC1174E31A42426CF');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f97cf660036', 'tsptjl', null, '2011-01-07 16:29:00', '2011-01-07 16:32:31', '127.0.0.1', '9E8A2754DD421F70059BDF1C03088F68');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f9b288d0037', 'tsyg1', null, '2011-01-07 16:32:40', '2011-01-07 17:30:48', '127.0.0.1', 'B84321B79E8ABAFF74D777E6955D7077');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5f9bf3730038', 'tsptjl', null, '2011-01-07 16:33:32', '2011-01-07 17:30:48', '127.0.0.1', 'B84321B79E8ABAFF74D777E6955D7077');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fd09bb3007b', 'tsyg1', null, '2011-01-07 17:31:02', '2011-01-07 17:34:57', '127.0.0.1', '193DC02431C086632E60E54DBC173304');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fd45738007c', 'tsyg2', null, '2011-01-07 17:35:07', '2011-01-07 17:36:41', '127.0.0.1', '3E6A3C844B00BEFBA66D697B2B4F71AB');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fd5e659007d', 'tsptjl', null, '2011-01-07 17:36:49', '2011-01-07 17:50:43', '127.0.0.1', 'C545AC71EFE5420645280730C951D222');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fe2ce500081', 'tscwjl', null, '2011-01-07 17:50:55', '2011-01-07 17:52:25', '127.0.0.1', '4A1787214E9F1A8050DEF4AB12EC3B43');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fe4511d0084', 'tsgly', null, '2011-01-07 17:52:34', '2011-01-07 17:53:13', '127.0.0.1', 'C1CAAE21D9CF6D5D2F74B68FEE40971C');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fe510d40087', 'tsyg2', null, '2011-01-07 17:53:23', '2011-01-07 17:55:09', '127.0.0.1', '62266D424813BBEA4B8D2261216D7472');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fe6d48f0088', 'tsptjl', null, '2011-01-07 17:55:19', '2011-01-07 17:55:48', '127.0.0.1', '1A2F84DE618C8E48B8F9829434E7532E');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fe76a420089', 'tsyg1', null, '2011-01-07 17:55:57', '2011-01-07 17:56:40', '127.0.0.1', 'CD9149BE513D70174C5C0EF61CE1BFA3');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fe84489008a', 'tsptjl', null, '2011-01-07 17:56:53', '2011-01-07 17:59:09', '127.0.0.1', '657D72778356F8E8B071B586DB9BC8F6');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5fea8c3b008b', 'tsyg1', null, '2011-01-07 17:59:22', '2011-01-07 18:05:24', '127.0.0.1', 'D73C19E4E824ACCAD9726D9AD3BFFE41');
INSERT INTO `do_log` VALUES ('402880f92d5f22bf012d5ff03382008f', 'tsptjl', null, '2011-01-07 18:05:33', '2011-01-07 18:11:39', '127.0.0.1', '947CD7BE5C1CF3FA563300547BE55149');
INSERT INTO `do_log` VALUES ('ff8080812d2d7e36012d6f3e89630001', 'yuanxx', null, '2011-01-10 17:25:25', '2011-01-10 17:25:49', '192.168.0.121', '1EA2A0A63AC891D3F377407976A6252F');
INSERT INTO `do_log` VALUES ('ff8080812d6f501f012d6f501fd90000', 'tsgly', null, '2011-01-10 17:44:38', '2011-01-10 17:47:39', '192.168.0.121', 'B96099295240CF517B5A9033960F16AC');
INSERT INTO `do_log` VALUES ('ff8080812d6f501f012d6f531fb60001', 'tsyg1', null, '2011-01-10 17:47:54', '2011-01-10 17:54:49', '192.168.0.121', 'A513C0CF25E25EED2406E5B62D57C4DB');
INSERT INTO `do_log` VALUES ('402880f92d6db774012d6db7742b0000', 'a', null, '2011-01-10 10:18:15', '2011-01-10 10:39:08', '127.0.0.1', '0611E751DFB8ED937C04CE43763098B7');
INSERT INTO `do_log` VALUES ('402880f92d6db774012d6db9a0310001', 'tsptjl', null, '2011-01-10 10:20:37', '2011-01-10 10:39:08', '127.0.0.1', '0611E751DFB8ED937C04CE43763098B7');
INSERT INTO `do_log` VALUES ('402880f92d6db774012d6dcab0290022', 'tsgly', null, '2011-01-10 10:39:16', '2011-01-10 10:41:09', '127.0.0.1', '64B3137A0D16735A9BA55150653AE4AC');
INSERT INTO `do_log` VALUES ('402880f92d6db774012d6dcc98730026', 'tsyg1', null, '2011-01-10 10:41:21', '2011-01-10 10:48:50', '127.0.0.1', '554804BB7E9645C8354D8511851EAD23');
INSERT INTO `do_log` VALUES ('402880f92d6db774012d6dd39593002d', 'tsptjl', null, '2011-01-10 10:48:59', '2011-01-10 11:08:48', '127.0.0.1', '59683887AFEC8AC538334348F5129F79');
INSERT INTO `do_log` VALUES ('ff8080812d6f501f012d6f94144c0004', 'a', null, '2011-01-10 18:58:53', null, '192.168.0.121', 'AE2D1F4CABBCD3F96CB59F9857B475D2');
INSERT INTO `do_log` VALUES ('ff8080812d7102d3012d7102d32a0000', 'a', null, '2011-01-11 01:39:26', '2011-01-11 02:10:20', '192.168.0.121', '13B4980283505733920B3D1CE134F712');
INSERT INTO `do_log` VALUES ('402880f92d73ac56012d73ac56300000', 'a', null, '2011-01-11 14:03:50', null, '127.0.0.1', 'A091D983A53ECD07CEFF11F213DB63A4');
INSERT INTO `do_log` VALUES ('402880f92d73ac56012d73aca6340001', 'tsgly', null, '2011-01-11 14:04:10', null, '127.0.0.1', 'A091D983A53ECD07CEFF11F213DB63A4');
INSERT INTO `do_log` VALUES ('402880f92d785ada012d785ada840000', 'a', null, '2011-01-12 11:52:56', null, '127.0.0.1', '6441AC3EDE3F139F5008C5003C8DA78A');
INSERT INTO `do_log` VALUES ('402880f92d786109012d7861093b0000', 'a', null, '2011-01-12 11:59:41', null, '127.0.0.1', 'E181D321A905599917E63E6F4B704EDA');
INSERT INTO `do_log` VALUES ('402880f92d786e11012d786e11250000', 'a', null, '2011-01-12 12:13:55', '2011-01-12 12:53:02', '127.0.0.1', 'F02AE7D4D8CC7ADCF1476958440E2EE7');
INSERT INTO `do_log` VALUES ('402880f92d786e11012d786e943c0001', 'tsgly', null, '2011-01-12 12:14:28', '2011-01-12 12:53:02', '127.0.0.1', 'F02AE7D4D8CC7ADCF1476958440E2EE7');
INSERT INTO `do_log` VALUES ('402880f92d786e11012d78c3013d0002', 'a', null, '2011-01-12 13:46:41', '2011-01-12 13:49:20', '127.0.0.1', '38E94004A7CF560A00254887857F2CC3');
INSERT INTO `do_log` VALUES ('402880f92d786e11012d78c5a6ae0004', 'tsgly', null, '2011-01-12 13:49:35', null, '127.0.0.1', '53D4864917F18C21101369E49E506026');
INSERT INTO `do_log` VALUES ('402880f92d78d918012d78d918760000', 'a', null, '2011-01-12 14:10:49', null, '127.0.0.1', '3E9D24D0BA6E23E14D91BDD31A094587');
INSERT INTO `do_log` VALUES ('402880f92d78d918012d78d976060001', 'tsgly', null, '2011-01-12 14:11:13', null, '127.0.0.1', '3E9D24D0BA6E23E14D91BDD31A094587');
INSERT INTO `do_log` VALUES ('402880f92d78dc62012d78dc62b10000', 'tsgly', null, '2011-01-12 14:14:25', '2011-01-12 14:55:26', '127.0.0.1', 'ED347F3F21583E28AE07671A367E56B3');
INSERT INTO `do_log` VALUES ('402880f92d78dc62012d7902211f000e', 'tsyg1', null, '2011-01-12 14:55:38', '2011-01-12 15:02:47', '127.0.0.1', '1544DA85737ABE45C8A7576E977C2A1D');
INSERT INTO `do_log` VALUES ('402880f92d78dc62012d790910ef0011', 'tsptjl', null, '2011-01-12 15:03:13', '2011-01-12 15:05:44', '127.0.0.1', 'C788C877101C64DE1835FAEB2C4EFFAC');
INSERT INTO `do_log` VALUES ('402880f92d78dc62012d790b8dda0012', 'tsyg2', null, '2011-01-12 15:05:56', null, '127.0.0.1', 'EAED5116E30C9CF0200B6BA33C06FD46');
INSERT INTO `do_log` VALUES ('402880f92d791d01012d791d01fa0000', 'tsyg2', null, '2011-01-12 15:25:00', null, '127.0.0.1', '93ECB91D912E9586838531A4326EE1EC');
INSERT INTO `do_log` VALUES ('402880f92d791e37012d791e37710000', 'tsyg2', null, '2011-01-12 15:26:19', null, '127.0.0.1', '31D449AA561FE8AA1BB4B6E524A70A8C');
INSERT INTO `do_log` VALUES ('402880f92d792182012d792182900000', 'tsyg2', null, '2011-01-12 15:29:55', null, '127.0.0.1', 'B98F4C68E069579ECF805CA382F4C684');
INSERT INTO `do_log` VALUES ('402880f92d792472012d792472440000', 'tsyg2', null, '2011-01-12 15:33:07', null, '127.0.0.1', 'F98C0D9F38E4947491E96FB7BD5AAE95');
INSERT INTO `do_log` VALUES ('402880f92d792761012d7927619e0000', 'tsyg2', null, '2011-01-12 15:36:20', null, '127.0.0.1', 'D5B68147CF17DD65BC7861377E126877');
INSERT INTO `do_log` VALUES ('402880f92d792edb012d792edb4d0000', 'tsyg2', null, '2011-01-12 15:44:30', null, '127.0.0.1', 'DDFFFDFBF3B7F2A7FC74E2DAB675FED8');
INSERT INTO `do_log` VALUES ('402880f92d7931f2012d7931f2840000', 'tsyg2', null, '2011-01-12 15:47:52', null, '127.0.0.1', '646C682B9E4E0944C5E690632A363DA2');
INSERT INTO `do_log` VALUES ('402880f92d7931f2012d793212fb0001', 'tsyg2', null, '2011-01-12 15:48:00', null, '127.0.0.1', '646C682B9E4E0944C5E690632A363DA2');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d793c1caf0000', 'tsyg2', null, '2011-01-12 15:58:58', '2011-01-12 16:06:44', '127.0.0.1', 'E00EDCD4349B59A005A072EE99F763B8');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d79435d3a0001', 'tsyg3', null, '2011-01-12 16:06:54', '2011-01-12 16:37:27', '127.0.0.1', 'DCAE305258A6ECAC9A36A8B6236C1F9B');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d794589770002', 'tsyg1', null, '2011-01-12 16:09:16', '2011-01-12 16:42:03', '127.0.0.1', '9BD42CD771EC957DA9C6E70549F0D62B');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d795f85930009', 'tsgly', null, '2011-01-12 16:37:39', '2011-01-12 16:38:12', '127.0.0.1', '7BC9F38681945B39C8CA843D44C1244A');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d796027da000c', 'tscwjl', null, '2011-01-12 16:38:20', '2011-01-12 16:43:05', '127.0.0.1', '3AE8EE59684D0D207A54091F36A67416');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d7964a1a6000e', 'yuanxx', null, '2011-01-12 16:43:14', '2011-01-12 16:43:40', '127.0.0.1', '504B20EAE7CEE0293E65968BF4C21394');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d796530d0000f', 'tsyg1', null, '2011-01-12 16:43:50', '2011-01-12 16:45:27', '127.0.0.1', 'FB6760741F68465563BB07C3982F7A6F');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d7966d0d50010', 'tsyg2', null, '2011-01-12 16:45:37', '2011-01-12 16:47:32', '127.0.0.1', 'E7ECDEAF19152519620A16D37FA06E93');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d7968bc4b0011', 'tsptjl', null, '2011-01-12 16:47:43', '2011-01-12 16:56:36', '127.0.0.1', '1108F7869CB095BEBEFEABD1E4F8D3C6');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d797124a10013', 'tsyg1', null, '2011-01-12 16:56:54', '2011-01-12 16:57:39', '127.0.0.1', '6D0DF32D93BCAE28126BE8E034ED80AF');
INSERT INTO `do_log` VALUES ('402880f92d793c1c012d7971fc420014', 'tsyg2', null, '2011-01-12 16:57:49', '2011-01-12 16:59:10', '127.0.0.1', '03B81ED42395D1250B039986BD2C38C5');
INSERT INTO `do_log` VALUES ('ff8080812d7102d3012d7b3a1d0f0001', 'tsgly', null, '2011-01-13 01:16:02', '2011-01-13 01:32:11', '192.168.0.121', '1AAEC081D8DC80DCC2A5682C03A11812');
INSERT INTO `do_log` VALUES ('ff8080812d7edb75012d7edb75110000', 'tsgly', null, '2011-01-13 18:11:07', '2011-01-13 19:18:51', '192.168.0.121', '40A244F85ABAB27AFA7E7036A08DBFDB');
INSERT INTO `do_log` VALUES ('402880f92d7d4b6b012d7d4b6b980000', 'a', null, '2011-01-13 10:54:10', null, '127.0.0.1', '7BEABA5EF8F49F1ABC7D39C59B23F1D4');
INSERT INTO `do_log` VALUES ('402880f92d7d4b6b012d7d4bd15e0001', 'tsgly', null, '2011-01-13 10:54:36', null, '127.0.0.1', '7BEABA5EF8F49F1ABC7D39C59B23F1D4');
INSERT INTO `do_log` VALUES ('402880f92d7d5367012d7d5367f40000', 'tsgly', null, '2011-01-13 11:02:54', null, '127.0.0.1', 'DF5DBD6D62B434697FE0428E64A98928');
INSERT INTO `do_log` VALUES ('402880f92d7d6fe6012d7d6fe6ea0000', 'tsgly', null, '2011-01-13 11:34:01', null, '127.0.0.1', '3A986512ED94A2B500ABFC0890B56EB1');
INSERT INTO `do_log` VALUES ('402880f92d7d7f09012d7d7f090e0000', 'tsgly', null, '2011-01-13 11:50:33', null, '127.0.0.1', '09683526D729D3FB518DB18DB751BA2E');
INSERT INTO `do_log` VALUES ('402880f92d7d8048012d7d8048cb0000', 'tsgly', null, '2011-01-13 11:51:55', '2011-01-13 12:22:55', '127.0.0.1', '67E1D0A59A0BB668D7A49CBCDCCC2ABA');
INSERT INTO `do_log` VALUES ('ff8080812d7edb75012d7f27edfb0002', 'tsgly', null, '2011-01-13 19:34:40', '2011-01-13 19:35:31', '192.168.0.121', '1BB9DBF27470679F6BE151214289B6D7');
INSERT INTO `do_log` VALUES ('ff8080812d7edb75012d7f2a83fd0003', 'tsgly', null, '2011-01-13 19:37:33', null, '192.168.0.121', '3286E41D90851FA528B1C62F2EC531B4');
INSERT INTO `do_log` VALUES ('ff8080812d7f8b77012d7f8b77d00000', 'tsgly', null, '2011-01-13 21:23:22', null, '192.168.0.121', '69A63796338024481DDADB19FDC852C2');
INSERT INTO `do_log` VALUES ('ff8080812d7f935e012d7f935e7b0000', 'tsgly', null, '2011-01-13 21:32:00', '2011-01-13 22:02:44', '192.168.0.121', 'DEE01E52002981A32A5AD92E60BB044A');
INSERT INTO `do_log` VALUES ('ff8080812d7f935e012d805650220001', 'tsptjl', null, '2011-01-14 01:04:56', '2011-01-14 02:26:48', '192.168.0.121', '44B2F7739EBC642CB3CB6EAFFBB54137');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d8219a5f30000', 'a', null, '2011-01-14 09:17:55', '2011-01-14 11:21:47', '127.0.0.1', '3C6F69F9F614F6EBE9751C28DCA00C8E');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d8221f1e50002', 'tsptjl', null, '2011-01-14 09:26:58', '2011-01-14 11:21:47', '127.0.0.1', '3C6F69F9F614F6EBE9751C28DCA00C8E');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d828b2ead0069', 'tsyg1', null, '2011-01-14 11:21:55', '2011-01-14 12:31:00', '127.0.0.1', '4DB0AA7F7204EB23FFE750D4C6964E93');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d82ed81fa006f', 'a', null, '2011-01-14 13:09:19', '2011-01-14 14:02:48', '127.0.0.1', 'EF5C81FD0C6B34EFA5C1563F1468E3AA');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d831db85a0079', 'tsyg1', null, '2011-01-14 14:01:59', '2011-01-14 14:02:48', '127.0.0.1', 'EF5C81FD0C6B34EFA5C1563F1468E3AA');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d8322b676007a', 'a', null, '2011-01-14 14:07:26', '2011-01-14 14:45:21', '127.0.0.1', '65BE245AE22A6C63EA82D21D5E3923DB');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d832a4b5e0084', 'tsptjl', null, '2011-01-14 14:15:43', '2011-01-14 14:45:21', '127.0.0.1', '65BE245AE22A6C63EA82D21D5E3923DB');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d83459013008b', 'tscwjl', null, '2011-01-14 14:45:30', '2011-01-14 14:54:32', '127.0.0.1', '5DF3D6A7B9484EE136919EF396E2309C');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d834df8f4008c', 'tsptjl', null, '2011-01-14 14:54:41', '2011-01-14 14:56:15', '127.0.0.1', 'A89F8031BF6A9813AD51FCA79E23C621');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d834f8899008e', 'tscwjl', null, '2011-01-14 14:56:23', '2011-01-14 15:03:22', '127.0.0.1', '1562E200B716B28B3B1F835E59F6021F');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d83561c9f008f', 'tsptjl', null, '2011-01-14 15:03:34', '2011-01-14 15:06:43', '127.0.0.1', '2F06E6CDE838B52373CEC06E6C534D93');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d835922f40090', 'tscwjl', null, '2011-01-14 15:06:53', '2011-01-14 15:37:28', '127.0.0.1', 'E6306D8B2EFEABDD315E5A17C3D1BBB1');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d8375422b0091', 'a', null, '2011-01-14 15:37:36', '2011-01-14 16:28:15', '127.0.0.1', '194208816E20D396DF7C42944599C208');
INSERT INTO `do_log` VALUES ('402880f92d8219a5012d83852dd20092', 'tscwjl', null, '2011-01-14 15:54:59', '2011-01-14 16:28:15', '127.0.0.1', '194208816E20D396DF7C42944599C208');
INSERT INTO `do_log` VALUES ('402880f92d919914012d9199145e0000', 'a', null, '2011-01-17 09:31:24', '2011-01-17 10:02:13', '127.0.0.1', '330AFDEE25C84FD3A05475EAA645C1DA');
INSERT INTO `do_log` VALUES ('402880f92d919914012d91b1c0c80003', 'tsptjl', null, '2011-01-17 09:58:21', '2011-01-17 10:02:13', '127.0.0.1', '330AFDEE25C84FD3A05475EAA645C1DA');
INSERT INTO `do_log` VALUES ('402880f92d91c21d012d91c21d630000', 'a', null, '2011-01-17 10:16:13', '2011-01-17 11:05:01', '127.0.0.1', '0F7C483B15CE1EA970B84519E9A8A7B2');
INSERT INTO `do_log` VALUES ('402880f92d91c21d012d91ccc0820063', 'tsgly', null, '2011-01-17 10:27:51', '2011-01-17 11:05:01', '127.0.0.1', '0F7C483B15CE1EA970B84519E9A8A7B2');
INSERT INTO `do_log` VALUES ('402880f92d91c21d012d91ccd59d0064', 'tsgly', null, '2011-01-17 10:27:56', '2011-01-17 11:05:01', '127.0.0.1', '0F7C483B15CE1EA970B84519E9A8A7B2');
INSERT INTO `do_log` VALUES ('402880f92d91c21d012d9200239f0069', 'a', null, '2011-01-17 11:23:58', null, '127.0.0.1', 'AAE76CA4E982A84F80EE62A3A069CD2A');
INSERT INTO `do_log` VALUES ('402880f92d9202ce012d9202cec20000', 'tsgly', null, '2011-01-17 11:26:53', null, '127.0.0.1', '8282056D9584342F4890462A39DD0E86');
INSERT INTO `do_log` VALUES ('402880f92d92080e012d92080e7a0000', 'tsgly', null, '2011-01-17 11:32:37', null, '127.0.0.1', '992420FF0DD9000036224010AB2D284F');
INSERT INTO `do_log` VALUES ('402880f92d9212f6012d9212f6fd0000', 'tsgly', null, '2011-01-17 11:44:32', null, '127.0.0.1', '6D0F5ABC9388552F6D3C6EB47B635ED6');
INSERT INTO `do_log` VALUES ('402880f92d9215d1012d9215d1800000', 'tsgly', null, '2011-01-17 11:47:39', null, '127.0.0.1', '2C318E9EC9AC2FB8FD5125917E76635A');
INSERT INTO `do_log` VALUES ('402880f92d921830012d921830f50000', 'tsgly', null, '2011-01-17 11:50:15', null, '127.0.0.1', 'AE6E9F68D547D550F98E22CBBFC71866');
INSERT INTO `do_log` VALUES ('402880f92d921830012d921848da0001', 'tsgly', null, '2011-01-17 11:50:21', null, '127.0.0.1', 'AE6E9F68D547D550F98E22CBBFC71866');
INSERT INTO `do_log` VALUES ('402880f92d921830012d921a13400002', 'tsgly', null, '2011-01-17 11:52:18', null, '127.0.0.1', '11B4976CD4D759D48384A647F9DD4214');
INSERT INTO `do_log` VALUES ('402880f92d921bf4012d921bf4480000', 'tsgly', null, '2011-01-17 11:54:21', null, '127.0.0.1', 'B2A7226C49517BA714EFC0C0B2FFB675');
INSERT INTO `do_log` VALUES ('402880f92d921d50012d921d507f0000', 'tsgly', null, '2011-01-17 11:55:50', null, '127.0.0.1', 'C22660ED8E805F669C6349713AD68175');
INSERT INTO `do_log` VALUES ('402880f92d921f41012d921f417f0000', 'tsgly', null, '2011-01-17 11:57:58', null, '127.0.0.1', '6BFDE81AE22E6CDCDCEFBD2DB22EFD54');
INSERT INTO `do_log` VALUES ('402880f92d921f41012d921fcceb0001', 'tsgly', null, '2011-01-17 11:58:33', null, '127.0.0.1', '980A310732568E128F92C6C9A51A05C5');
INSERT INTO `do_log` VALUES ('402880f92d9224f4012d9224f4a30000', 'tsgly', null, '2011-01-17 12:04:11', '2011-01-17 12:35:14', '127.0.0.1', 'B0223A5545D18368A4FA1A1A42530E95');
INSERT INTO `do_log` VALUES ('402880f92d9224f4012d9299d6070001', 'tsgly', null, '2011-01-17 14:11:51', null, '127.0.0.1', 'A48694504DEA4B2EF1368BE86ED4A380');
INSERT INTO `do_log` VALUES ('402880f92d92d6d4012d92d6d4e50000', 'tsgly', null, '2011-01-17 15:18:28', null, '127.0.0.1', '16090A4D256AD5C29BC1168492268EEB');
INSERT INTO `do_log` VALUES ('402880f92d92fbe8012d92fbe8280000', 'tsgly', null, '2011-01-17 15:58:58', null, '127.0.0.1', '746187310FB0495A042A841642D2FEFB');
INSERT INTO `do_log` VALUES ('402880f92d935e1e012d935e1e690000', 'tsgly', null, '2011-01-17 17:46:15', null, '127.0.0.1', '4002B184E511B5BABC6AE5325BB6CC61');
INSERT INTO `do_log` VALUES ('402880f92d93600a012d93600a810000', 'tsgly', null, '2011-01-17 17:48:21', null, '127.0.0.1', '0B9229F4DE9C38C2A9BD6E45E81F6D8E');
INSERT INTO `do_log` VALUES ('402880f92d9368ac012d9368ac4e0000', 'tsgly', null, '2011-01-17 17:57:46', '2011-01-17 18:03:06', '127.0.0.1', '90619A9092EEE24C1166D1633840BEBB');
INSERT INTO `do_log` VALUES ('402880f92d96cd35012d96cd35af0000', 'a', null, '2011-01-18 09:46:27', '2011-01-18 10:18:00', '127.0.0.1', '2C13BD76C415ABFC9D75F276014CB9E0');
INSERT INTO `do_log` VALUES ('402880f92d96cd35012d96cd4df80001', 'a', null, '2011-01-18 09:46:33', '2011-01-18 10:18:00', '127.0.0.1', '2C13BD76C415ABFC9D75F276014CB9E0');
INSERT INTO `do_log` VALUES ('402880f92d983f11012d983f11190000', 'tsgly', null, '2011-01-18 16:30:26', null, '127.0.0.1', 'FFF683624F4154DDC7386546A9943B4D');
INSERT INTO `do_log` VALUES ('402880f92d985189012d985189cd0000', 'tsgly', null, '2011-01-18 16:50:36', null, '127.0.0.1', '8B785AFC8A621E14F142F517896FA20D');
INSERT INTO `do_log` VALUES ('402880f92d985daa012d985daa6b0000', 'tsgly', null, '2011-01-18 17:03:51', null, '127.0.0.1', '923448DF44E8CFB6EDE8382222FA61FE');
INSERT INTO `do_log` VALUES ('402880f92d987130012d987130410000', 'tsgly', null, '2011-01-18 17:25:10', '2011-01-18 18:01:06', '127.0.0.1', 'A6F13427C8FC52F35BC854D88B7BB03F');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9bdbcc410000', 'a', null, '2011-01-19 09:20:29', '2011-01-19 09:26:54', '127.0.0.1', '653E18F91490B37FA3D9C156C34D910C');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9be099af0001', 'tsgly', null, '2011-01-19 09:25:44', '2011-01-19 09:26:54', '127.0.0.1', '653E18F91490B37FA3D9C156C34D910C');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9be0ad790002', 'tsgly', null, '2011-01-19 09:25:49', '2011-01-19 09:26:54', '127.0.0.1', '653E18F91490B37FA3D9C156C34D910C');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9be1c93f0003', 'tsptjl', null, '2011-01-19 09:27:01', '2011-01-19 09:29:46', '127.0.0.1', 'BFC651266C5CC563F68F15F0ED26E9CA');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9be46acf0004', 'tscwjl', null, '2011-01-19 09:29:54', '2011-01-19 09:30:50', '127.0.0.1', '8871F760075092B8636D181835C5A9B9');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9be564de0005', 'tsptjl', null, '2011-01-19 09:30:58', '2011-01-19 09:33:03', '127.0.0.1', '51352B772390032F5CD5F0EB37D56C1E');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9be770c70006', 'tscwjl', null, '2011-01-19 09:33:12', '2011-01-19 09:36:39', '127.0.0.1', '34A8112AC652DCE8FA0352453E0FAF56');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9beace3e0007', 'tsgly', null, '2011-01-19 09:36:52', '2011-01-19 09:37:17', '127.0.0.1', '66AB7C1E78DC85798CF7DFCF61E17017');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9beb5a3f0008', 'tsyg2', null, '2011-01-19 09:37:28', '2011-01-19 09:52:46', '127.0.0.1', 'A611805C28D821EDE4B975C858D35C94');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9bf98c9a0009', 'tsyg2', null, '2011-01-19 09:52:59', '2011-01-19 09:55:01', '127.0.0.1', 'FE526E18AF336858F12275A8C893D852');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9bfb8e63000b', 'tsyg1', null, '2011-01-19 09:55:10', '2011-01-19 10:17:30', '127.0.0.1', '553A36B66FFD4AB6F96FFCE08474DA0F');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9c103073000c', 'tscwjl', null, '2011-01-19 10:17:42', '2011-01-19 10:22:38', '127.0.0.1', 'E3A881A561983C41651592F6DFDCA8FB');
INSERT INTO `do_log` VALUES ('402880f92d9bdbcc012d9c14d5df000d', 'tsgly', null, '2011-01-19 10:22:47', null, '127.0.0.1', 'A184DA84AD616785921B41BC302FBBD1');
INSERT INTO `do_log` VALUES ('402880f92d9c5ad7012d9c5ad7110000', 'a', null, '2011-01-19 11:39:15', null, '127.0.0.1', 'ADE6437FA32E838808B5950A12C93BA9');
INSERT INTO `do_log` VALUES ('402880f92d9c5ad7012d9c5af2990001', 'a', null, '2011-01-19 11:39:22', null, '127.0.0.1', 'ADE6437FA32E838808B5950A12C93BA9');
INSERT INTO `do_log` VALUES ('402880f92d9c6a6c012d9c6a6cef0000', 'tsgly', null, '2011-01-19 11:56:16', null, '127.0.0.1', '2EFFF4AB1F7997E31D4A213CBB1DFFC6');
INSERT INTO `do_log` VALUES ('402880f92d9c72b4012d9c72b4640000', 'tsgly', null, '2011-01-19 12:05:19', '2011-01-19 12:36:15', '127.0.0.1', '03D1C9C5845AA66F47F8BD001AC3F334');
INSERT INTO `do_log` VALUES ('402880f92d9cafd0012d9cafd0e80000', 'tsgly', null, '2011-01-19 13:12:04', '2011-01-19 13:42:47', '127.0.0.1', '5EE647993EA1AC1804165266B06F461B');
INSERT INTO `do_log` VALUES ('402880f92d9cda24012d9cda24ac0000', 'tsgly', null, '2011-01-19 13:58:18', null, '127.0.0.1', '3900ADCC5C4C25A0354BE23D81BCF3C9');
INSERT INTO `do_log` VALUES ('402880f92d9cdeb9012d9cdeb9590000', 'tsgly', null, '2011-01-19 14:03:18', '2011-01-19 14:04:53', '127.0.0.1', 'AAC2DB5372C39A966A9203EC11D14F38');
INSERT INTO `do_log` VALUES ('402880f92d9cdeb9012d9ce05fb50001', 'tscwjl', null, '2011-01-19 14:05:06', null, '127.0.0.1', '6FCD8951CDB308A14C7C24FEEFC4CE59');
INSERT INTO `do_log` VALUES ('402880f92d9ced61012d9ced61820000', 'tscwjl', null, '2011-01-19 14:19:18', null, '127.0.0.1', 'EA7451810735AB1505731A300F4321A3');
INSERT INTO `do_log` VALUES ('402880f92d9cf20c012d9cf20ca60000', 'tscwjl', null, '2011-01-19 14:24:24', null, '127.0.0.1', '31D02B5C38ED20284AF3B203E46C1971');
INSERT INTO `do_log` VALUES ('402880f92d9cf590012d9cf5909a0000', 'tscwjl', null, '2011-01-19 14:28:15', null, '127.0.0.1', '188F0471E266F38F2DC544154AF9844C');
INSERT INTO `do_log` VALUES ('402880f92d9cfa2f012d9cfa2fdf0000', 'tscwjl', null, '2011-01-19 14:33:18', null, '127.0.0.1', '8E689AD50B8329C4F528D07980DA1CBA');
INSERT INTO `do_log` VALUES ('402880f92d9cffdc012d9cffdc680000', 'tscwjl', null, '2011-01-19 14:39:29', null, '127.0.0.1', 'EA1AAC3ED4A0459A49B623D851C046AE');
INSERT INTO `do_log` VALUES ('402880f92d9d05d9012d9d05d9e10000', 'tscwjl', null, '2011-01-19 14:46:02', null, '127.0.0.1', '01CE02F5CC746C1016681EEFDC931B6A');
INSERT INTO `do_log` VALUES ('402880f92d9d129e012d9d129eb50000', 'tsgly', null, '2011-01-19 14:59:59', null, '127.0.0.1', '53883B9F54A210BCCFE8AD9A02B557F4');
INSERT INTO `do_log` VALUES ('402880f92d9d175c012d9d175ce10000', 'tsgly', null, '2011-01-19 15:05:10', null, '127.0.0.1', '15A3FAE5E5C2CF9EFDF3DD47EC12B14D');
INSERT INTO `do_log` VALUES ('402880f92d9d1b1b012d9d1b1b410000', 'tsgly', null, '2011-01-19 15:09:15', '2011-01-19 15:19:28', '127.0.0.1', 'ED2B8F617368CFED51C530BD04880061');
INSERT INTO `do_log` VALUES ('402880f92d9d1b1b012d9d2498b00001', 'tscwjl', null, '2011-01-19 15:19:37', null, '127.0.0.1', '97D8C3320D25E45E50C3220741425E0C');
INSERT INTO `do_log` VALUES ('402880f92d9d327e012d9d327e960000', 'tscwjl', null, '2011-01-19 15:34:48', null, '127.0.0.1', '319FECAD164810793BA1986B6442AE69');
INSERT INTO `do_log` VALUES ('402880f92d9d46ce012d9d46ce620000', 'tscwjl', null, '2011-01-19 15:56:59', null, '127.0.0.1', '046C58BE4D1CBA3424BC6B8E22EC4229');
INSERT INTO `do_log` VALUES ('402880f92d9d4be2012d9d4be2e60000', 'tscwjl', null, '2011-01-19 16:02:32', null, '127.0.0.1', 'F65514AAAEA6A51DA9BBDD87362B95F6');
INSERT INTO `do_log` VALUES ('402880f92d9d4fcb012d9d4fcb1e0000', 'tscwjl', null, '2011-01-19 16:06:48', null, '127.0.0.1', '535C73A38DD08981AE9141BDE3FFE77B');
INSERT INTO `do_log` VALUES ('402880f92d9d876b012d9d876be30000', 'tscwjl', null, '2011-01-19 17:07:34', '2011-01-19 17:11:14', '127.0.0.1', 'F1317F339E88E24FE40229DF9069D7AC');
INSERT INTO `do_log` VALUES ('402880f92d9d876b012d9d8b0ed50001', 'tsgly', null, '2011-01-19 17:11:32', null, '127.0.0.1', 'AA20FD37F80FB2CBF2B90F79DBBED688');
INSERT INTO `do_log` VALUES ('402880f92d9d90c3012d9d90c3f40000', 'tsgly', null, '2011-01-19 17:17:46', null, '127.0.0.1', '79898C7E45EB6F478D4EA74F77B00106');
INSERT INTO `do_log` VALUES ('402880f92d9d9302012d9d93021f0000', 'tsgly', null, '2011-01-19 17:20:13', null, '127.0.0.1', '459236BFB6C100689967F9A3AE1B5447');
INSERT INTO `do_log` VALUES ('402880f92da0f810012da0f8104f0000', 'a', null, '2011-01-20 09:09:27', '2011-01-20 09:10:35', '127.0.0.1', '87FB719530071E5D18B7E85CC9EBF38D');
INSERT INTO `do_log` VALUES ('402880f92da0f810012da0f82cb00001', 'a', null, '2011-01-20 09:09:35', '2011-01-20 09:10:35', '127.0.0.1', '87FB719530071E5D18B7E85CC9EBF38D');
INSERT INTO `do_log` VALUES ('402880f92da0f810012da0f8a4150002', 'tsgly', null, '2011-01-20 09:10:05', '2011-01-20 09:10:35', '127.0.0.1', '87FB719530071E5D18B7E85CC9EBF38D');
INSERT INTO `do_log` VALUES ('402880f92da0f810012da0f93c490004', 'tscwjl', null, '2011-01-20 09:10:44', null, '127.0.0.1', '5FD5C9E000D6FD31A935C42BE4E782F4');
INSERT INTO `do_log` VALUES ('402880f92da12737012da127377d0000', 'tscwjl', null, '2011-01-20 10:00:58', null, '127.0.0.1', 'CFE8A5CEA8A7EAA47669DE5DF58E9379');
INSERT INTO `do_log` VALUES ('402880f92da13640012da13640bb0000', 'tscwjl', null, '2011-01-20 10:17:23', '2011-01-20 10:29:27', '127.0.0.1', '0D047836A16F7B0C2BCA6C3AB7E4659E');
INSERT INTO `do_log` VALUES ('402880f92da13640012da14178030005', 'tsptjl', null, '2011-01-20 10:29:38', null, '127.0.0.1', '141F2EBFB0D101733C7529FF592AAB73');
INSERT INTO `do_log` VALUES ('402880f92da16250012da162500c0000', 'tsptjl', null, '2011-01-20 11:05:30', '2011-01-20 11:17:27', '127.0.0.1', '246E35382AB9AFD4BC63E0B5D07A3E18');
INSERT INTO `do_log` VALUES ('402880f92da16f6b012da16f6b8a0000', 'tsptjl', null, '2011-01-20 11:19:49', null, '127.0.0.1', '590A7D1F9BD7B215DB53187098444CA9');
INSERT INTO `do_log` VALUES ('402880f92da1793d012da1793d0e0000', 'tsptjl', null, '2011-01-20 11:30:33', null, '127.0.0.1', '77BAF47B8F4BA24B6A0346B7788E5047');
INSERT INTO `do_log` VALUES ('402880f92da17f3e012da17f3e340000', 'tsptjl', null, '2011-01-20 11:37:06', null, '127.0.0.1', '90930D531E89BE7998AE59D5F73605E0');
INSERT INTO `do_log` VALUES ('402880f92da1854c012da1854c6a0000', 'tsptjl', null, '2011-01-20 11:43:43', null, '127.0.0.1', '295928528B4E994574E894977D8F320F');
INSERT INTO `do_log` VALUES ('402880f92da18762012da18762d10000', 'tsptjl', null, '2011-01-20 11:46:00', null, '127.0.0.1', 'E05FEB01746C98FD8CBF036A55517ED7');
INSERT INTO `do_log` VALUES ('402880f92da18c59012da18c59830000', 'tsptjl', null, '2011-01-20 11:51:25', null, '127.0.0.1', 'B44F88EB5C98B19BE8EA03C26CB0C9E9');
INSERT INTO `do_log` VALUES ('402880f92da19226012da19226980000', 'tsptjl', null, '2011-01-20 11:57:46', null, '127.0.0.1', '96DD3EFDE42CFCF60B0E4749ABA0617F');
INSERT INTO `do_log` VALUES ('402880f92da19696012da19696670000', 'tsptjl', null, '2011-01-20 12:02:36', '2011-01-20 12:35:23', '127.0.0.1', '881A1DB0FCA2B3E6FC92DCA892A49FD8');
INSERT INTO `do_log` VALUES ('402880f92da19696012da1d2da6c0001', 'a', null, '2011-01-20 13:08:26', null, '127.0.0.1', 'DF583AB68898D45F03E88EC6B2BBB350');
INSERT INTO `do_log` VALUES ('402880f92da19696012da1db180b0002', 'tsptjl', null, '2011-01-20 13:17:26', null, '127.0.0.1', 'DF583AB68898D45F03E88EC6B2BBB350');
INSERT INTO `do_log` VALUES ('402880f92da1e6ba012da1e6ba690000', 'tsptjl', null, '2011-01-20 13:30:08', null, '127.0.0.1', 'B7059DCE891A7F736D6CE278E3915A26');
INSERT INTO `do_log` VALUES ('402880f92da1f59d012da1f59d9d0000', 'tsptjl', null, '2011-01-20 13:46:24', null, '127.0.0.1', '8A53F66E2BB85539CD362BB1114C6510');
INSERT INTO `do_log` VALUES ('402880f92da20012012da20012780000', 'tsptjl', null, '2011-01-20 13:57:49', null, '127.0.0.1', '32FC1FBF050ACFBE67B31A7E0EF4BB6C');
INSERT INTO `do_log` VALUES ('402880f92da204a0012da204a08e0000', 'tsptjl', null, '2011-01-20 14:02:48', null, '127.0.0.1', '289191A541012C96DF23FC37ACD7A712');
INSERT INTO `do_log` VALUES ('402880f92da20702012da207025a0000', 'tsptjl', null, '2011-01-20 14:05:24', null, '127.0.0.1', 'D37EA29E0894EBB9CF4DE86D251F2B4A');
INSERT INTO `do_log` VALUES ('402880f92da20bc8012da20bc8e40000', 'tsptjl', null, '2011-01-20 14:10:37', null, '127.0.0.1', 'CE66DE6EDFF6374A629071290E0DE12F');
INSERT INTO `do_log` VALUES ('402880f92da2129f012da2129f8f0000', 'tsptjl', null, '2011-01-20 14:18:05', null, '127.0.0.1', 'D19D0E33B0F3530801AED0A072E2538F');
INSERT INTO `do_log` VALUES ('402880f92da21686012da21686e60000', 'tsptjl', null, '2011-01-20 14:22:21', null, '127.0.0.1', '2D3B423654D86EE7D0B5C33CA32D6F96');
INSERT INTO `do_log` VALUES ('402880f92da22794012da22794100000', 'a', null, '2011-01-20 14:40:58', null, '127.0.0.1', 'A863298037F680F09D1B8BDC25BFF549');
INSERT INTO `do_log` VALUES ('402880f92da22794012da227ddb40001', 'tsptjl', null, '2011-01-20 14:41:17', null, '127.0.0.1', 'A863298037F680F09D1B8BDC25BFF549');
INSERT INTO `do_log` VALUES ('402880f92da229ed012da229ed980000', 'tsptjl', null, '2011-01-20 14:43:32', null, '127.0.0.1', '1EB1DC8377A22C663D982F27D6027B45');
INSERT INTO `do_log` VALUES ('402880f92da22d4b012da22d4bef0000', 'tsptjl', null, '2011-01-20 14:47:13', null, '127.0.0.1', '37CBFF51243F5EB2B83CAFB2103001B8');
INSERT INTO `do_log` VALUES ('402880f92da2537d012da2537dec0000', 'tsptjl', null, '2011-01-20 15:28:56', null, '127.0.0.1', '5AC537D48FCEB38514FA448AEB0BD0A9');
INSERT INTO `do_log` VALUES ('402880f92da25d21012da25d21800000', 'tsptjl', null, '2011-01-20 15:39:28', '2011-01-20 16:17:42', '127.0.0.1', 'ECF3597863A2DCEE7245ADF2460BE709');
INSERT INTO `do_log` VALUES ('402880f92da25d21012da2806a370015', 'tszjl', null, '2011-01-20 16:18:00', '2011-01-20 16:46:35', '127.0.0.1', 'E83116E2EECE555A497DED17229EC056');
INSERT INTO `do_log` VALUES ('402880f92da25d21012da293e45e0017', 'a', null, '2011-01-20 16:39:17', '2011-01-20 16:46:35', '127.0.0.1', 'E83116E2EECE555A497DED17229EC056');
INSERT INTO `do_log` VALUES ('402880f92da25d21012da29ab8f80019', 'tsgly', null, '2011-01-20 16:46:45', '2011-01-20 16:47:20', '127.0.0.1', 'B5A3326014AFA0F8EFEE5F13EF9ACFE3');
INSERT INTO `do_log` VALUES ('402880f92da25d21012da29b6154001b', 'tszjl', null, '2011-01-20 16:47:28', null, '127.0.0.1', '7D44E0751E0493D059C9223EFD46F3B5');
INSERT INTO `do_log` VALUES ('402880f92da2a233012da2a233670000', 'tszjl', null, '2011-01-20 16:54:55', '2011-01-20 16:58:07', '127.0.0.1', 'C798F0B8DB0CBB00AB78A97935BF8651');
INSERT INTO `do_log` VALUES ('402880f92da2a233012da2a542d30002', 'tsyg3', null, '2011-01-20 16:58:15', '2011-01-20 16:58:32', '127.0.0.1', 'A469C891FCA218E950BC82871090C836');
INSERT INTO `do_log` VALUES ('402880f92da2a233012da2a59efe0003', 'tsgly', null, '2011-01-20 16:58:39', '2011-01-20 17:24:49', '127.0.0.1', '23CF818306383E3F9FC1B01CD2F8FC8B');
INSERT INTO `do_log` VALUES ('402880f92da2a233012da2bdb6810007', 'tsptjl', null, '2011-01-20 17:24:58', null, '127.0.0.1', '58D8E27D9448686C15C790381B9ED805');
INSERT INTO `do_log` VALUES ('402880f92da2d3f9012da2d3f9700000', 'tsptjl', null, '2011-01-20 17:49:17', null, '127.0.0.1', '141438B0BE9D013841A4FC77F9262D0A');
INSERT INTO `do_log` VALUES ('402880f92da2ddab012da2ddab150000', 'tsptjl', null, '2011-01-20 17:59:52', '2011-01-20 18:11:55', '127.0.0.1', 'D8DC0D8298CCE16E8A95A9611A6AD0B3');
INSERT INTO `do_log` VALUES ('402880f92da60a57012da60a57680000', 'tsgly', null, '2011-01-21 08:47:31', '2011-01-21 09:39:58', '127.0.0.1', '15DC0AA7287D2A262567F0365FFB0925');
INSERT INTO `do_log` VALUES ('402880f92da60a57012da63a77000001', 'tsptjl', null, '2011-01-21 09:40:05', '2011-01-21 12:37:27', '127.0.0.1', 'E2C303ED02920571C2F72A0354DB2717');
INSERT INTO `do_log` VALUES ('402880f92da60a57012da73128330034', 'tsptjl', null, '2011-01-21 14:09:32', '2011-01-21 17:53:17', '127.0.0.1', '6450FB637689F1E6A9B3433AFF964454');
INSERT INTO `do_log` VALUES ('402880f92da60a57012da7fe29cc003c', 'tsgly', null, '2011-01-21 17:53:28', '2011-01-21 18:18:14', '127.0.0.1', '1EE5851FC1F30E3C14F7E03F22BB1B8F');
INSERT INTO `do_log` VALUES ('402880f92db5a662012db5a662e50000', 'a', null, '2011-01-24 09:32:16', null, '127.0.0.1', '4D2FAB9F1BD3ACE59E292BD8949E4E95');
INSERT INTO `do_log` VALUES ('402880f92db5a662012db5a797e20001', 'tsgly', null, '2011-01-24 09:33:35', null, '127.0.0.1', '4D2FAB9F1BD3ACE59E292BD8949E4E95');
INSERT INTO `do_log` VALUES ('402880f92db5a662012db5a7ac840002', 'tsgly', null, '2011-01-24 09:33:40', null, '127.0.0.1', '4D2FAB9F1BD3ACE59E292BD8949E4E95');
INSERT INTO `do_log` VALUES ('402880f92db5d1b6012db5d1b66b0000', 'tsgly', null, '2011-01-24 10:19:35', null, '127.0.0.1', '3E9C33F8D905A5FD9249F7B60C5BB5B3');
INSERT INTO `do_log` VALUES ('402880f92db5d337012db5d3370f0000', 'tsgly', null, '2011-01-24 10:21:14', null, '127.0.0.1', 'AABC93691059AA80F7551BB534983838');
INSERT INTO `do_log` VALUES ('402880f92db5dd46012db5dd46070000', 'tsgly', null, '2011-01-24 10:32:13', '2011-01-24 10:33:50', '127.0.0.1', '72CC171D98B32CE95A37F07CD3D3323E');
INSERT INTO `do_log` VALUES ('402880f92db5dd46012db5dedcc80003', 'tsptjl', null, '2011-01-24 10:33:57', '2011-01-24 10:34:44', '127.0.0.1', '6B6A2F8CCE3E75418A665E49C5B03823');
INSERT INTO `do_log` VALUES ('402880f92db5dd46012db5e0882e0004', 'tsgly', null, '2011-01-24 10:35:47', '2011-01-24 12:32:49', '127.0.0.1', '606F48CCA327BAC9C23552B543C6F971');
INSERT INTO `do_log` VALUES ('402880f92db5dd46012db67a36960046', 'a', null, '2011-01-24 13:23:38', null, '127.0.0.1', 'AC94B067EB057065756BF301C5AEDF6B');
INSERT INTO `do_log` VALUES ('402880f92db5dd46012db680c87b004e', 'tsgly', null, '2011-01-24 13:30:49', null, '127.0.0.1', 'AC94B067EB057065756BF301C5AEDF6B');
INSERT INTO `do_log` VALUES ('402880f92db6911b012db6911b310000', 'tsgly', null, '2011-01-24 13:48:39', null, '127.0.0.1', '1018F1FEE0BDE3656AA608DF861660FC');
INSERT INTO `do_log` VALUES ('402880f92db6afdb012db6afdb930000', 'tsgly', null, '2011-01-24 14:22:14', null, '127.0.0.1', 'AAF969F0DF3F20A0858BAACA6AA05F07');
INSERT INTO `do_log` VALUES ('402880f92db6b492012db6b4929e0000', 'tsgly', null, '2011-01-24 14:27:23', null, '127.0.0.1', 'FAD811636CF44DC1472CE790AE5B271B');
INSERT INTO `do_log` VALUES ('402880f92db6e809012db6e809120000', 'tsgly', null, '2011-01-24 15:23:36', null, '127.0.0.1', '179746A8892433ACC2FB2A790015B4D0');
INSERT INTO `do_log` VALUES ('402880f92db70acb012db70acb2e0000', 'tsgly', null, '2011-01-24 16:01:34', null, '127.0.0.1', 'AA789D6DF61FD5D0588D42603A325927');
INSERT INTO `do_log` VALUES ('402880f92db70ee4012db70ee4360000', 'tsgly', null, '2011-01-24 16:06:02', null, '127.0.0.1', '236AEC9DC71591AED93B924567A03AFA');
INSERT INTO `do_log` VALUES ('402880f92db717c4012db717c4470000', 'tsgly', null, '2011-01-24 16:15:44', null, '127.0.0.1', 'EEABCFC4F136C11444F36E46BBEAAB7B');
INSERT INTO `do_log` VALUES ('402880f92db71b08012db71b08920000', 'tsgly', null, '2011-01-24 16:19:18', null, '127.0.0.1', '99CC5AE7E56EE21B5A6A72F9B7C32DEE');
INSERT INTO `do_log` VALUES ('402880f92db71fe6012db71fe6470000', 'tsgly', null, '2011-01-24 16:24:37', null, '127.0.0.1', '41AAACE681BC1DD22E183C98A1EC1A4A');
INSERT INTO `do_log` VALUES ('402880f92db727f1012db727f1320000', 'tsgly', null, '2011-01-24 16:33:24', null, '127.0.0.1', '50B267DD467B3359D91829BC3DCA348A');
INSERT INTO `do_log` VALUES ('402880f92db7365f012db7365f030000', 'tsgly', null, '2011-01-24 16:49:09', null, '127.0.0.1', '2DA4224A4C04747DE22367202AD49932');
INSERT INTO `do_log` VALUES ('402880f92db73a14012db73a14760000', 'tsgly', null, '2011-01-24 16:53:13', null, '127.0.0.1', '03295A1F1F26864E5E8D8C2ABFF19251');
INSERT INTO `do_log` VALUES ('402880f92db73a14012db73a322d0001', 'tsgly', null, '2011-01-24 16:53:20', null, '127.0.0.1', '03295A1F1F26864E5E8D8C2ABFF19251');
INSERT INTO `do_log` VALUES ('402880f92db74627012db74627970000', 'tsgly', null, '2011-01-24 17:06:24', null, '127.0.0.1', '94ECEE7EFE8FFE150C11E5E28E8F4655');
INSERT INTO `do_log` VALUES ('402880f92db7491e012db7491e570000', 'tsgly', null, '2011-01-24 17:09:38', null, '127.0.0.1', '830222294362C6A4BB71B9D31CE1D880');
INSERT INTO `do_log` VALUES ('402880f92db74a64012db74a64d90000', 'tsgly', null, '2011-01-24 17:11:02', null, '127.0.0.1', '5A2CF967FACEAA6475849CE65E736090');
INSERT INTO `do_log` VALUES ('402880f92db75579012db75579280000', 'tsgly', null, '2011-01-24 17:23:08', null, '127.0.0.1', '185D6991B7D361DCCC7947B60D33C17F');
INSERT INTO `do_log` VALUES ('402880f92db75bbf012db75bbfeb0000', 'tsgly', null, '2011-01-24 17:29:59', null, '127.0.0.1', '0D23F5F500BD23977481ED135035C22D');
INSERT INTO `do_log` VALUES ('402880f92db75d58012db75d588c0000', 'tsgly', null, '2011-01-24 17:31:44', null, '127.0.0.1', '89586C5A9318B504433AB3D3344F41E5');
INSERT INTO `do_log` VALUES ('402880f92db760cb012db760cb500000', 'tsgly', null, '2011-01-24 17:35:30', null, '127.0.0.1', 'E736C9A750EC10BC79F04E85BC8985D2');
INSERT INTO `do_log` VALUES ('402880f92db762a3012db762a3ac0000', 'tsgly', null, '2011-01-24 17:37:31', null, '127.0.0.1', 'CD56B546E32014EDD60FD79C9118268D');
INSERT INTO `do_log` VALUES ('402880f92db7653a012db7653a7d0000', 'tsgly', null, '2011-01-24 17:40:20', null, '127.0.0.1', '87D860EEE4F5A33B09CA076312E3B5E5');
INSERT INTO `do_log` VALUES ('402880f92db76ba8012db76ba88b0000', 'tsgly', null, '2011-01-24 17:47:22', null, '127.0.0.1', '7471B3118D5F9DC743CE3127E8E28272');
INSERT INTO `do_log` VALUES ('402880f92db76e3b012db76e3b840000', 'tsgly', null, '2011-01-24 17:50:10', null, '127.0.0.1', 'F2CC6EC346F79D5A593B910EEAEB5C92');
INSERT INTO `do_log` VALUES ('402880f92db77601012db776015c0000', 'tsgly', null, '2011-01-24 17:58:40', '2011-01-24 18:03:53', '127.0.0.1', '3A5FF1435784A585249A4D47AB903F0C');
INSERT INTO `do_log` VALUES ('402880f92dbabb9d012dbabb9df60000', 'tsgly', null, '2011-01-25 09:13:33', null, '127.0.0.1', '3FB182DFFAE77550FA18F2FDC1A733B9');
INSERT INTO `do_log` VALUES ('402880f92dbae656012dbae656bd0000', 'tsgly', null, '2011-01-25 10:00:13', null, '127.0.0.1', '720823DA5B7B9D0048B37467DE21D3C9');
INSERT INTO `do_log` VALUES ('402880f92dbb2f15012dbb2f150f0000', 'tsgly', null, '2011-01-25 11:19:41', null, '127.0.0.1', '1962F817FA46E7465A71803F370BE27F');
INSERT INTO `do_log` VALUES ('402880f92dbb3123012dbb3123450000', 'tsgly', null, '2011-01-25 11:21:55', '2011-01-25 11:28:04', '127.0.0.1', 'B12BEE18C37AF9B6AB50F9A9F16CC77F');
INSERT INTO `do_log` VALUES ('402880f92dbb3123012dbb36ecab0004', 'tsyg1', null, '2011-01-25 11:28:15', '2011-01-25 11:40:55', '127.0.0.1', 'F11139F05095D61655C29FB4B86475ED');
INSERT INTO `do_log` VALUES ('402880f92dbb3123012dbb42a3470008', 'tsptjl', null, '2011-01-25 11:41:02', '2011-01-25 12:34:24', '127.0.0.1', 'FFD8B0178FC7B0072C2908E849F0DEB8');
INSERT INTO `do_log` VALUES ('402880f92dbb3123012dbbbc7aea000a', 'tsptjl', null, '2011-01-25 13:54:08', '2011-01-25 13:58:18', '127.0.0.1', 'C00969ACF8A98AEF2B0047127DBC372F');
INSERT INTO `do_log` VALUES ('402880f92dbb3123012dbbbd9a4a000b', 'a', null, '2011-01-25 13:55:21', '2011-01-25 13:58:18', '127.0.0.1', 'C00969ACF8A98AEF2B0047127DBC372F');
INSERT INTO `do_log` VALUES ('402880f92dbb3123012dbbbd9ca0000c', 'a', null, '2011-01-25 13:55:21', '2011-01-25 13:58:18', '127.0.0.1', 'C00969ACF8A98AEF2B0047127DBC372F');
INSERT INTO `do_log` VALUES ('402880f92dbb3123012dbbbdb833000d', 'a', null, '2011-01-25 13:55:29', '2011-01-25 13:58:18', '127.0.0.1', 'C00969ACF8A98AEF2B0047127DBC372F');
INSERT INTO `do_log` VALUES ('402880f92dbb3123012dbbc06c5d000e', 'tsptjl', null, '2011-01-25 13:58:26', null, '127.0.0.1', 'C2568413C8F0AE00ECFD94352BA60BEC');
INSERT INTO `do_log` VALUES ('402880f92dbc01e3012dbc01e3480000', 'tsptjl', null, '2011-01-25 15:09:56', '2011-01-25 15:32:52', '127.0.0.1', '206B1D1BC655662F425891E785D8D65F');
INSERT INTO `do_log` VALUES ('402880f92dbc01e3012dbc01fc540001', 'tsptjl', null, '2011-01-25 15:10:02', '2011-01-25 15:32:52', '127.0.0.1', '206B1D1BC655662F425891E785D8D65F');
INSERT INTO `do_log` VALUES ('402880f92dbc01e3012dbc1709d00002', 'tscwjl', null, '2011-01-25 15:33:02', '2011-01-25 15:50:47', '127.0.0.1', '1EED8A701F44A519BF2A120B40705F68');
INSERT INTO `do_log` VALUES ('ff8080812dbdd922012dbdd922c40000', 'tsptjl', null, '2011-01-25 23:44:40', null, '192.168.0.121', 'BC6492227F6BB81E722ABE1EB4438BD5');
INSERT INTO `do_log` VALUES ('402880f92dbc42bb012dbc42bba90000', 'a', null, '2011-01-25 16:20:46', null, '127.0.0.1', '46DF9DE93BACE02698311843197B10C1');
INSERT INTO `do_log` VALUES ('402880f92dbc4ff6012dbc4ff67b0000', 'a', null, '2011-01-25 16:35:13', null, '127.0.0.1', 'A5FB9082B0FB06B49D521DF1B2F5A11B');
INSERT INTO `do_log` VALUES ('402880f92dbc5e32012dbc5e32f80000', 'a', null, '2011-01-25 16:50:46', null, '127.0.0.1', '864A555D95289B21BAE429DBE8DE6DF1');
INSERT INTO `do_log` VALUES ('402880f92dc007c2012dc007c26d0000', 'yuanxx', null, '2011-01-26 09:54:50', null, '127.0.0.1', '5732F21F273083064217E347806CA699');
INSERT INTO `do_log` VALUES ('402880f92dc00a47012dc00a47360000', 'yuanxx', null, '2011-01-26 09:57:35', null, '127.0.0.1', '6272A50B31C4D8A911E8D4DF58DF1806');
INSERT INTO `do_log` VALUES ('402880f92dc0ecf9012dc0ecf9100000', 'a', null, '2011-01-26 14:05:11', '2011-01-26 14:36:12', '127.0.0.1', 'F1A9C944C3EAC84D89F057523FBA9F48');
INSERT INTO `do_log` VALUES ('402880f92dc0ecf9012dc11b78ab0001', 'yuanxx', null, '2011-01-26 14:55:59', '2011-01-26 14:56:23', '127.0.0.1', '8CC786DCBE6159CFF5CAA0B573F13105');
INSERT INTO `do_log` VALUES ('402880f92dc15dd8012dc15dd8770000', 'tsgly', null, '2011-01-26 16:08:29', '2011-01-26 16:09:16', '127.0.0.1', '07B3A358C4A7FA515FAC6F446F1DB60D');
INSERT INTO `do_log` VALUES ('402880f92dc17d86012dc17d86270000', 'yuanxx', null, '2011-01-26 16:43:05', null, '127.0.0.1', 'FEA363FDEE7641CA92F669D2EA882FDB');
INSERT INTO `do_log` VALUES ('402880f92dc64405012dc64405450000', 'yxx', null, '2011-01-27 14:58:22', '2011-01-27 15:12:20', '127.0.0.1', '1519136171AB33919F6DFFFE002CC52B');
INSERT INTO `do_log` VALUES ('402880f92dc64405012dc650fd470002', 'yxx', null, '2011-01-27 15:12:32', null, '127.0.0.1', 'D39E0C92033D40C017398C4174FE424E');
INSERT INTO `do_log` VALUES ('402880f92dc671c9012dc671c9570000', 'yxx', null, '2011-01-27 15:48:22', null, '127.0.0.1', 'FF5A56656533892591F5C594C0A6BA0C');
INSERT INTO `do_log` VALUES ('402880f92dc673bf012dc673bf110000', 'yxx', null, '2011-01-27 15:50:30', null, '127.0.0.1', '3B27C1E0E78AF8A62A88439B0B9CABD5');
INSERT INTO `do_log` VALUES ('402880f92dc67635012dc67635080000', 'yxx', null, '2011-01-27 15:53:11', '2011-01-27 16:30:15', '127.0.0.1', 'B9AA7D16A9091707189E24E0206BFAEA');
INSERT INTO `do_log` VALUES ('402880f92dc67635012dc6a3ba840001', 'yxx', null, '2011-01-27 16:42:55', '2011-01-27 16:43:17', '127.0.0.1', '3A133F335082DCAC829EB9E446CDC261');
INSERT INTO `do_log` VALUES ('402880f92dc67635012dc6a44dfd0002', 'yxx', null, '2011-01-27 16:43:32', '2011-01-27 18:02:56', '127.0.0.1', '13DF4FA6D1A4C60235A1D775FDA746F3');
INSERT INTO `do_log` VALUES ('402880f92dc67635012dc6ed2e62002d', 'pjl', null, '2011-01-27 18:03:08', null, '127.0.0.1', 'CA0D71F930BCE663958A457205B8B317');
INSERT INTO `do_log` VALUES ('402880f92dca56b6012dca56b69a0000', 'pyg2', null, '2011-01-28 09:57:16', null, '127.0.0.1', '56D87F46E1EA1F4CC71779FA0D64751C');
INSERT INTO `do_log` VALUES ('402880f92dca76ac012dca76acec0000', 'pyg2', null, '2011-01-28 10:32:11', null, '127.0.0.1', 'BB95940F5F7B6FFCEBBC3C8CA27FA794');
INSERT INTO `do_log` VALUES ('402880f92dca82e7012dca82e7570000', 'pyg2', null, '2011-01-28 10:45:32', null, '127.0.0.1', '8DD48599C9DE8A5367B50D7C7B7D9285');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dca953db20000', 'pyg2', null, '2011-01-28 11:05:34', '2011-01-28 11:07:43', '127.0.0.1', 'E047E5211E23F6621336C09AB3F2BE7F');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dca977c4f0001', 'yxx', null, '2011-01-28 11:08:01', '2011-01-28 11:08:14', '127.0.0.1', 'B5CB974F1B96DFB3D88FA7598CEE7001');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dca97f8ea0002', 'yxx', null, '2011-01-28 11:08:33', '2011-01-28 11:08:50', '127.0.0.1', '5145291C698B09BECDE4B20E85E1FCB3');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dca986aaf0003', 'pgly', null, '2011-01-28 11:09:02', '2011-01-28 11:23:41', '127.0.0.1', '93F961304DDD6EFC8FFE3155477CB048');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dcaa5f5e2000b', 'pjl', null, '2011-01-28 11:23:50', '2011-01-28 11:25:16', '127.0.0.1', '46A888A974A233BC6AE854FFA92318DE');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dcaa77820000d', 'pgly', null, '2011-01-28 11:25:29', '2011-01-28 11:32:19', '127.0.0.1', 'F638574F66E1A6FFE0DDD819981BB2D3');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dcaade551000e', 'pyg2', null, '2011-01-28 11:32:30', '2011-01-28 11:36:38', '127.0.0.1', '3BD75346D9E783B54D6C870834C30C0A');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dcab1ce60000f', 'pjl', null, '2011-01-28 11:36:46', '2011-01-28 11:39:54', '127.0.0.1', 'FD0F32C6FACD426E9FBDB4A92306E487');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dcab5044a0015', 'zjl', null, '2011-01-28 11:40:16', '2011-01-28 11:43:38', '127.0.0.1', '638CE9EE1DE11E282347F803D55B006D');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dcab83e1b001b', 'zzjl', null, '2011-01-28 11:43:48', '2011-01-28 11:50:21', '127.0.0.1', 'B920F591DB59E5C77F91A6CC2F44D331');
INSERT INTO `do_log` VALUES ('402880f92dca953d012dcabe80410020', 'zyg2', null, '2011-01-28 11:50:38', '2011-01-28 12:23:41', '127.0.0.1', '1644098598D738DFF8637F4E6B68ECF6');
INSERT INTO `do_log` VALUES ('402880f92dcb7e0d012dcb7e0d1a0000', 'a', null, '2011-01-28 15:19:51', '2011-01-28 16:01:54', '127.0.0.1', 'B396FBB06DBB8F6BB49DF1A7C3A60087');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcba5ae4f0000', 'cjl', null, '2011-01-28 16:03:09', '2011-01-28 17:10:35', '127.0.0.1', '565C62143D0271D71726D7F6420F16D5');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcbac9d490001', 'a', null, '2011-01-28 16:10:43', '2011-01-28 17:10:35', '127.0.0.1', '565C62143D0271D71726D7F6420F16D5');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcbb2cf8a0007', 'cjl', null, '2011-01-28 16:17:29', '2011-01-28 17:10:35', '127.0.0.1', '565C62143D0271D71726D7F6420F16D5');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcbe426b40015', 'zjl', null, '2011-01-28 17:11:23', '2011-01-28 17:11:33', '127.0.0.1', 'BFA5F034A08EB1907DB5D736DCD9BA2F');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcbe478030016', 'zyg2', null, '2011-01-28 17:11:43', '2011-01-28 17:17:06', '127.0.0.1', '1E18BAB4DE3309718DACA54C86EC782D');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcbe996010018', 'zjl', null, '2011-01-28 17:17:19', '2011-01-28 17:22:33', '127.0.0.1', '46165E6D8C87C4BE22A464265ED90E63');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcbee9c790019', 'zjl', null, '2011-01-28 17:22:48', '2011-01-28 17:25:14', '127.0.0.1', '64A420B77030C7B6EF25D6B901D1FD87');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcc01afc7001b', 'a', null, '2011-01-28 17:43:38', null, '127.0.0.1', '7449D47BAE1250181E30E8BBD2F37BC0');
INSERT INTO `do_log` VALUES ('402880f92dcba5ae012dcc0263c7001c', 'zjl', null, '2011-01-28 17:44:24', null, '127.0.0.1', '7449D47BAE1250181E30E8BBD2F37BC0');
INSERT INTO `do_log` VALUES ('402880f92e126edb012e126edb970000', 'a', null, '2011-02-11 09:56:18', '2011-02-11 10:29:01', '127.0.0.1', 'E779EF5B153893D18368854F821CAEA6');
INSERT INTO `do_log` VALUES ('2c90b1c42e18d247012e18d247f90000', 'a', null, '2011-02-12 15:42:37', null, '127.0.0.1', '10F8A9D56E034A357E81258558E7F489');
INSERT INTO `do_log` VALUES ('2c90b1c42e18d247012e18d5efcf0001', 'yxx', null, '2011-02-12 15:46:37', null, '127.0.0.1', '10F8A9D56E034A357E81258558E7F489');
INSERT INTO `do_log` VALUES ('2c90b1c42e190b6e012e190b6e840000', 'yxx', null, '2011-02-12 16:45:03', '2011-02-12 16:46:10', '127.0.0.1', '73A3BC8EE486385F2836CE20F2C7926D');
INSERT INTO `do_log` VALUES ('2c90b1c42e190b6e012e190e02610002', 'yxx', null, '2011-02-12 16:47:51', '2011-02-12 16:48:35', '127.0.0.1', '8DF4F78295BEEA663EF402D9A1D6EC4E');
INSERT INTO `do_log` VALUES ('2c90b1c42e192552012e192552560000', 'yxx', null, '2011-02-12 17:13:19', null, '127.0.0.1', '94880145B02B6D5F56FC3E0B7EE2751C');
INSERT INTO `do_log` VALUES ('2c90b0e42e325185012e3251855f0000', 'a', null, '2011-02-17 14:32:06', '2011-02-17 14:34:43', '127.0.0.1', 'E80B2804F31527F17BD2718A059BFD21');
INSERT INTO `do_log` VALUES ('2c90b0e42e325185012e3253fe870001', 'a', null, '2011-02-17 14:34:48', '2011-02-17 15:34:52', '127.0.0.1', '5DBF7ED9F8B0B35AEF07D98EA671A6EA');
INSERT INTO `do_log` VALUES ('2c90b0e42e325185012e32f28e680002', 'a', null, '2011-02-17 17:28:00', '2011-02-17 18:00:43', '127.0.0.1', 'CD345450DA24C547DD9A349162A68303');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3cb8f1012e3cb8f1360000', 'a', null, '2011-02-19 15:01:16', '2011-02-19 15:36:41', '127.0.0.1', 'A212F115E664F5ACC1D94332668ED470');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3cb8f1012e3cf4d47c0001', 'a', null, '2011-02-19 16:06:41', null, '127.0.0.1', '399679DEF1D053C4E13FD539E2FF10A7');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3d192b012e3d192b310000', 'a', null, '2011-02-19 16:46:23', null, '127.0.0.1', '3C4A85E026B6BE999F56CACD8E153F63');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3d1eb5012e3d1eb5c20000', 'a', null, '2011-02-19 16:52:26', null, '127.0.0.1', 'ED116307C06DCBF3C3A40EB2ACCC8758');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3d1eb5012e3d1eda940001', 'a', null, '2011-02-19 16:52:35', null, '127.0.0.1', 'ED116307C06DCBF3C3A40EB2ACCC8758');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3d2c67012e3d2c67580000', 'a', null, '2011-02-19 17:07:23', null, '127.0.0.1', '1FBDA0F10AEA83A151F1843BE4B54359');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3d3143012e3d3143b20000', 'a', null, '2011-02-19 17:12:42', null, '127.0.0.1', 'EFDE8F3F9A3F4494E2A8DD2863A998C6');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3d3dbb012e3d3dbbef0000', 'a', null, '2011-02-19 17:26:19', null, '127.0.0.1', '86538EEB4FF15B2D1B29C6368170F315');
INSERT INTO `do_log` VALUES ('2c90b0ed2e3d5291012e3d5291880000', 'yxx', null, '2011-02-19 17:49:04', '2011-02-19 18:00:18', '127.0.0.1', '942BCE02F72E50CF45F1CE8D98FE137F');
INSERT INTO `do_log` VALUES ('2c90b0072e4c4723012e4c4723550000', 'yxx', null, '2011-02-22 15:30:53', '2011-02-22 16:38:28', '127.0.0.1', 'ECE34D4B2B7872094BF09F9F9E96E2DF');
INSERT INTO `do_log` VALUES ('2c90b0072e4c4723012e4cab1c9d0002', 'yxx', null, '2011-02-22 17:20:05', '2011-02-22 17:51:27', '127.0.0.1', '42E63E240E41504228811A03E4649E5E');
INSERT INTO `do_log` VALUES ('2c90b1c02e5172a6012e5172a6680000', 'a', null, '2011-02-23 15:36:31', '2011-02-23 16:08:35', '127.0.0.1', 'B45DAC1112F06EB97033AD8F481963C8');
INSERT INTO `do_log` VALUES ('2c90b1c02e5172a6012e5173d3d80001', 'yxx', null, '2011-02-23 15:37:48', '2011-02-23 16:08:35', '127.0.0.1', 'B45DAC1112F06EB97033AD8F481963C8');
INSERT INTO `do_log` VALUES ('2c90b0f72e556214012e556214ac0000', 'a', null, '2011-02-24 09:56:54', '2011-02-24 09:58:22', '127.0.0.1', '374A4E90AA073192933CC7D0283B4C72');
INSERT INTO `do_log` VALUES ('2c90b0f42e5a8fb3012e5a8fb3150000', 'a', null, '2011-02-25 10:04:50', null, '127.0.0.1', '0AD2352E58E2B7C0ACD05DDB870725D0');
INSERT INTO `do_log` VALUES ('2c90b0ec2e5fd917012e5fd917840000', 'a', null, '2011-02-26 10:43:06', null, '127.0.0.1', '87216CD9AB57AB3147159AA4C21955B1');
INSERT INTO `do_log` VALUES ('2c90b0ec2e5fd917012e5fda02370001', 'a', null, '2011-02-26 10:44:06', null, '127.0.0.1', '988B01B467BA4ED7215E4CF4559925FA');
INSERT INTO `do_log` VALUES ('2c90b0042e69e1cc012e69e1ccf40000', 'a', null, '2011-02-28 09:28:49', null, '127.0.0.1', '69B4D7B13C3511B2596189FFA95618BB');
INSERT INTO `do_log` VALUES ('2c90b0042e6a0887012e6a0887210000', 'a', null, '2011-02-28 10:11:07', null, '127.0.0.1', '91423EA921B85A23D65FA56DBE97845A');
INSERT INTO `do_log` VALUES ('2c90b0042e6aea34012e6aea34840000', 'yxx', null, '2011-02-28 14:17:37', null, '127.0.0.1', '5B2E34728252100D85190D9BEA9F454D');
INSERT INTO `do_log` VALUES ('2c90b0042e6aea34012e6af324240001', 'a', null, '2011-02-28 14:27:22', null, '127.0.0.1', '5B2E34728252100D85190D9BEA9F454D');
INSERT INTO `do_log` VALUES ('2c90b0042e6af7ec012e6af7ec850000', 'yxx', null, '2011-02-28 14:32:36', null, '127.0.0.1', '3AA204D30ED1C126FF418AC89C592434');
INSERT INTO `do_log` VALUES ('2c90b0042e6af7ec012e6afc7f030001', 'a', null, '2011-02-28 14:37:35', null, '127.0.0.1', '3AA204D30ED1C126FF418AC89C592434');
INSERT INTO `do_log` VALUES ('2c90b0042e6b0211012e6b02112f0000', 'yxx', null, '2011-02-28 14:43:41', null, '127.0.0.1', '490C3987600AF7FA76F70C76BE3C9D26');
INSERT INTO `do_log` VALUES ('2c90b0042e6b0510012e6b0510640000', 'yxx', null, '2011-02-28 14:46:57', null, '127.0.0.1', '363B4FCE24ADE70E2527D549A75BFA44');
INSERT INTO `do_log` VALUES ('2c90b0042e6b2dc3012e6b2dc3b60000', 'yxx', null, '2011-02-28 15:31:24', null, '127.0.0.1', '6636907A3EFCA4F0B93579F74BBC3FC5');
INSERT INTO `do_log` VALUES ('2c90b0042e6b33b2012e6b33b2c70000', 'yxx', null, '2011-02-28 15:37:53', null, '127.0.0.1', '3EBB51C1885723585D49EAD2971B5F9A');
INSERT INTO `do_log` VALUES ('2c90b0042e6b3572012e6b3572aa0000', 'yxx', null, '2011-02-28 15:39:48', null, '127.0.0.1', 'DF29D82DFE3E1E58221D8357DDD63031');
INSERT INTO `do_log` VALUES ('2c90b0042e6b390b012e6b390bbc0000', 'yxx', null, '2011-02-28 15:43:44', null, '127.0.0.1', '65618E11D25857D4AF6C575575DD7A5C');
INSERT INTO `do_log` VALUES ('2c90b0042e6b3b2b012e6b3b2bfa0000', 'yxx', null, '2011-02-28 15:46:03', null, '127.0.0.1', '068620E2398921DB450194743432DAC7');
INSERT INTO `do_log` VALUES ('2c90b0042e6b40c1012e6b40c1710000', 'yxx', null, '2011-02-28 15:52:09', '2011-02-28 16:42:13', '127.0.0.1', '088ADB8732D70BC41315369D2E9EE843');
INSERT INTO `do_log` VALUES ('2c90b0042e6b71ef012e6b71ef6f0000', 'yxx', null, '2011-02-28 16:45:52', '2011-02-28 17:04:08', '127.0.0.1', '052DD5895A5E4D259FD3B3C45CFDF8FA');
INSERT INTO `do_log` VALUES ('2c90b0042e6b8483012e6b84835a0000', 'yxx', null, '2011-02-28 17:06:09', '2011-02-28 17:12:49', '127.0.0.1', 'A21F2B7BC2F9434648C053D9B5A28237');
INSERT INTO `do_log` VALUES ('2c90b0042e6b8b27012e6b8b27d40000', 'yxx', null, '2011-02-28 17:13:25', '2011-02-28 17:33:22', '127.0.0.1', '18C1222AB865424E6B64CA78111F3A5A');
INSERT INTO `do_log` VALUES ('2c90b0042e6b8b27012e6b9e342d0005', 'yxx', null, '2011-02-28 17:34:13', '2011-02-28 17:35:14', '127.0.0.1', '97E81BC399C89F42F9B9AF26DB522E7D');
INSERT INTO `do_log` VALUES ('2c90b0042e6be6d7012e6be6d7a60000', 'yxx', null, '2011-02-28 18:53:34', null, '127.0.0.1', '2824D00F340579E6056A73C0435F935F');
INSERT INTO `do_log` VALUES ('2c90b0042e6beed0012e6beed0730000', 'yxx', null, '2011-02-28 19:02:16', null, '127.0.0.1', 'EDFD007918A3953FEDFB4DE33AB93CC1');
INSERT INTO `do_log` VALUES ('2c90b0042e6beed0012e6beeef230001', 'yxx', null, '2011-02-28 19:02:24', null, '127.0.0.1', 'EDFD007918A3953FEDFB4DE33AB93CC1');
INSERT INTO `do_log` VALUES ('2c90b0042e6bffb3012e6bffb3ee0000', 'yxx', null, '2011-02-28 19:20:43', null, '127.0.0.1', '3571BC3AA8590402C8B41560C95E32B6');
INSERT INTO `do_log` VALUES ('2c90b0042e6c0198012e6c01985f0000', 'yxx', null, '2011-02-28 19:22:47', '2011-02-28 20:03:26', '127.0.0.1', 'B4BB65E68C2A2AF3FEEA2185F6B0C42A');
INSERT INTO `do_log` VALUES ('2c90b0042e6c0198012e6c27813b0001', 'cjl', null, '2011-02-28 20:04:11', null, '127.0.0.1', '49314A91A4D88CE787A718CEAA811BBC');
INSERT INTO `do_log` VALUES ('2c90b0ef2e6ff520012e6ff520040000', 'a', null, '2011-03-01 13:47:38', null, '127.0.0.1', '93D7ABBABBF87D2CEEF18173BC0E45BC');
INSERT INTO `do_log` VALUES ('2c90b0ef2e703461012e7034616c0000', 'yxx', null, '2011-03-01 14:56:44', null, '127.0.0.1', '30AB6476F9319E142CABF8695D56E421');
INSERT INTO `do_log` VALUES ('2c90b0ef2e703461012e703629010001', 'a', null, '2011-03-01 14:58:41', null, '127.0.0.1', '30AB6476F9319E142CABF8695D56E421');
INSERT INTO `do_log` VALUES ('2c90b0ef2e703461012e7036875e0002', 'yxx', null, '2011-03-01 14:59:05', null, '127.0.0.1', '30AB6476F9319E142CABF8695D56E421');
INSERT INTO `do_log` VALUES ('2c90b0ef2e70468f012e70468f790000', 'yxx', null, '2011-03-01 15:16:35', null, '127.0.0.1', '80B9B27D6FA202F9116EEA8729A89E37');
INSERT INTO `do_log` VALUES ('2c90b0ef2e704d50012e704d50650000', 'yxx', null, '2011-03-01 15:23:58', null, '127.0.0.1', '8E39F28D8E20CCB3D853B6699B0EC3C0');
INSERT INTO `do_log` VALUES ('2c90b0ef2e705698012e7056986e0000', 'yxx', null, '2011-03-01 15:34:06', null, '127.0.0.1', 'A6665A3A31843926F7426C0A3CF3F38E');
INSERT INTO `do_log` VALUES ('2c90b0ef2e7066ab012e7066abcb0000', 'yxx', null, '2011-03-01 15:51:40', null, '127.0.0.1', '9C5336B95B4AF17537F9FCDAC6C1EEDB');
INSERT INTO `do_log` VALUES ('2c90b0ef2e7068c0012e7068c0cf0000', 'yxx', null, '2011-03-01 15:53:56', null, '127.0.0.1', '28579B4422F6454C8F571B1D3ED0A040');
INSERT INTO `do_log` VALUES ('2c90b0ef2e706e5d012e706e5d900000', 'yxx', null, '2011-03-01 16:00:04', null, '127.0.0.1', '639DCBA5DC998C16799D63C9AF8F2541');
INSERT INTO `do_log` VALUES ('2c90b0ef2e706e5d012e706ed5680001', 'yxx', null, '2011-03-01 16:00:35', null, '127.0.0.1', '639DCBA5DC998C16799D63C9AF8F2541');
INSERT INTO `do_log` VALUES ('2c90b0ef2e70736d012e70736d170000', 'yxx', null, '2011-03-01 16:05:36', null, '127.0.0.1', '12425FD6B104613C25717144A474809D');
INSERT INTO `do_log` VALUES ('2c90b0ef2e707939012e707939080000', 'yxx', null, '2011-03-01 16:11:56', '2011-03-01 16:46:47', '127.0.0.1', 'C637B3E1132F8D52B8C0B9F2C6CF9A7A');
INSERT INTO `do_log` VALUES ('2c90b0ef2e707939012e70993d540003', 'zjl', null, '2011-03-01 16:46:54', '2011-03-01 16:47:29', '127.0.0.1', '488F630BB9EE034AC2D85C1AE2C4E9A4');
INSERT INTO `do_log` VALUES ('2c90b0ef2e707939012e7099e46b0004', 'zzjl', null, '2011-03-01 16:47:37', null, '127.0.0.1', 'D1FE0E260BC5E97FCD82A40CF60AA430');
INSERT INTO `do_log` VALUES ('2c90b0fe2e709f94012e709f944a0000', 'a', null, '2011-03-01 16:53:49', null, '127.0.0.1', 'B47C25F3A6670083380914AD0C6EBD71');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e70b7701c0000', 'a', null, '2011-03-01 17:19:53', '2011-03-01 18:05:40', '127.0.0.1', '7F41246E3E586B7708C788533D730ED7');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e70c512290002', 'zjl', null, '2011-03-01 17:34:46', '2011-03-01 18:05:40', '127.0.0.1', '7F41246E3E586B7708C788533D730ED7');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e710fa3430003', 'zjl', null, '2011-03-01 18:56:13', '2011-03-01 18:57:36', '127.0.0.1', 'C715609021B5636C3F5B88C77DF8959C');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e7111815d0006', 'jjl', null, '2011-03-01 18:58:16', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e711235060009', 'jyg1', null, '2011-03-01 18:59:02', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e7112c6e1000c', 'jyg2', null, '2011-03-01 18:59:39', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e71136f0c000f', 'yjl', null, '2011-03-01 19:00:22', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e711548810012', 'yyg1', null, '2011-03-01 19:02:23', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e7115c2410014', 'yyg2', null, '2011-03-01 19:02:54', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e71167a7e0017', 'xjl', null, '2011-03-01 19:03:41', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e7117902f001b', 'xyg1', null, '2011-03-01 19:04:53', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e71182698001e', 'xyg2', null, '2011-03-01 19:05:31', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e7118f0130021', 'cjl', null, '2011-03-01 19:06:23', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e711e78750024', 'cyg1', null, '2011-03-01 19:12:25', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e711f8cd90027', 'cyg2', null, '2011-03-01 19:13:36', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e712017e6002a', 'zjl', null, '2011-03-01 19:14:12', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e712044cf002b', 'zzjl', null, '2011-03-01 19:14:23', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e7120cf46002e', 'zyg2', null, '2011-03-01 19:14:59', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e712180ae0031', 'pjl', null, '2011-03-01 19:15:44', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e7122216c0034', 'pgly', null, '2011-03-01 19:16:25', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e70b770012e7122d5710037', 'pyg2', null, '2011-03-01 19:17:11', null, '127.0.0.1', 'D99F5BD0D6F7ABC2FD9645D05EF21CA2');
INSERT INTO `do_log` VALUES ('2c90b0092e7144a1012e7144a1790000', 'pyg2', null, '2011-03-01 19:54:06', null, '127.0.0.1', '9D1286995E20A90BC3B7C85E9193145B');
INSERT INTO `do_log` VALUES ('2c90b0092e714a6c012e714a6c680000', 'pyg2', null, '2011-03-01 20:00:26', null, '127.0.0.1', '1E1100809FB187CE7CF9172FE92D88E0');
INSERT INTO `do_log` VALUES ('2c90b0092e714cfd012e714cfd850000', 'pyg2', null, '2011-03-01 20:03:14', null, '127.0.0.1', '953B8B6EE52BB8C687463A7DFA3F8843');
INSERT INTO `do_log` VALUES ('2c90b0092e714e9e012e714e9e000000', 'pyg2', null, '2011-03-01 20:05:01', null, '127.0.0.1', '8DA7FC60A37C4B95FB0596D113668B51');
INSERT INTO `do_log` VALUES ('2c90b0092e715d09012e715d09250000', 'pyg2', null, '2011-03-01 20:20:46', null, '127.0.0.1', '1305CDE9BF877AD83EFD88859AAA5458');
INSERT INTO `do_log` VALUES ('2c90b0092e715e64012e715e64ee0000', 'pyg2', null, '2011-03-01 20:22:15', null, '127.0.0.1', '0721B5D04343A6D85C8EAFFB7924C82E');
INSERT INTO `do_log` VALUES ('2c90b0092e715fe2012e715fe2900000', 'pyg2', null, '2011-03-01 20:23:52', null, '127.0.0.1', 'DAF35A7252795C202E377F5F585EFF3D');
INSERT INTO `do_log` VALUES ('2c90b0092e716578012e716578ea0000', 'pyg2', null, '2011-03-01 20:29:58', null, '127.0.0.1', 'A6D00D53D94A1E6F19F115605C262FB3');
INSERT INTO `do_log` VALUES ('2c90b0092e7179cb012e7179cb5f0000', 'pyg2', null, '2011-03-01 20:52:10', null, '127.0.0.1', '8504801A64B009B45EA2A965ADE351C1');
INSERT INTO `do_log` VALUES ('2c90b0092e7179cb012e717a8ccb0001', 'pjl', null, '2011-03-01 20:53:00', null, '127.0.0.1', '8504801A64B009B45EA2A965ADE351C1');
INSERT INTO `do_log` VALUES ('2c90b0092e7179cb012e717b98e00002', 'zzjl', null, '2011-03-01 20:54:08', null, '127.0.0.1', '8504801A64B009B45EA2A965ADE351C1');
INSERT INTO `do_log` VALUES ('2c90b0092e717e6c012e717e6c3d0000', 'zzjl', null, '2011-03-01 20:57:14', '2011-03-01 20:57:58', '127.0.0.1', '8CB9A01ADE0E539AD748EFBDCCCFB666');
INSERT INTO `do_log` VALUES ('2c90b0fa2e742511012e742511490000', 'pgly', null, '2011-03-02 09:18:29', null, '127.0.0.1', 'A5BF64B9996BF260CA835A10E19E3419');
INSERT INTO `do_log` VALUES ('2c90b0fa2e742511012e742b89ec0001', 'pgly', null, '2011-03-02 09:25:33', null, '127.0.0.1', 'A5BF64B9996BF260CA835A10E19E3419');
INSERT INTO `do_log` VALUES ('2c90b0fa2e742511012e74309afd0002', 'zzjl', null, '2011-03-02 09:31:05', null, '127.0.0.1', 'A5BF64B9996BF260CA835A10E19E3419');
INSERT INTO `do_log` VALUES ('2c90b0fa2e742511012e7431180d0003', 'pgly', null, '2011-03-02 09:31:37', null, '127.0.0.1', 'A5BF64B9996BF260CA835A10E19E3419');
INSERT INTO `do_log` VALUES ('2c90b0fa2e742511012e74312f450004', 'pgly', null, '2011-03-02 09:31:43', null, '127.0.0.1', 'A5BF64B9996BF260CA835A10E19E3419');
INSERT INTO `do_log` VALUES ('2c90b0fa2e742511012e7432727b0005', 'pgly', null, '2011-03-02 09:33:06', null, '127.0.0.1', 'A5BF64B9996BF260CA835A10E19E3419');
INSERT INTO `do_log` VALUES ('2c90b0fa2e742511012e74510bb90007', 'pgly', null, '2011-03-02 10:06:31', null, '127.0.0.1', 'A5BF64B9996BF260CA835A10E19E3419');
INSERT INTO `do_log` VALUES ('2c90b0fa2e745909012e745909ed0000', 'pgly', null, '2011-03-02 10:15:15', null, '127.0.0.1', '0EBAC29A654B6C37C686A431D8F77FB5');
INSERT INTO `do_log` VALUES ('2c90b0fa2e74662a012e74662a4f0000', 'pgly', null, '2011-03-02 10:29:36', null, '127.0.0.1', '659C6DF5FFEC0899BC6B991F63B93629');
INSERT INTO `do_log` VALUES ('2c90b0fa2e746965012e746965de0000', 'pgly', null, '2011-03-02 10:33:07', null, '127.0.0.1', 'DDB6FCF80273977BC462484886C15C31');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e753337fc0001', 'a', null, '2011-03-02 14:13:34', '2011-03-02 14:44:00', '127.0.0.1', '935339F4B0DE9E3AF2D76E896612C5D7');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e753337fd0005', 'a', null, '2011-03-02 14:13:34', '2011-03-02 14:44:00', '127.0.0.1', '935339F4B0DE9E3AF2D76E896612C5D7');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e753337fc0004', 'a', null, '2011-03-02 14:13:34', '2011-03-02 14:44:00', '127.0.0.1', '935339F4B0DE9E3AF2D76E896612C5D7');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e753337fc0002', 'a', null, '2011-03-02 14:13:34', '2011-03-02 14:44:00', '127.0.0.1', '935339F4B0DE9E3AF2D76E896612C5D7');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e753337fc0003', 'a', null, '2011-03-02 14:13:34', '2011-03-02 14:44:00', '127.0.0.1', '935339F4B0DE9E3AF2D76E896612C5D7');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e753337fc0000', 'a', null, '2011-03-02 14:13:34', '2011-03-02 14:44:00', '127.0.0.1', '935339F4B0DE9E3AF2D76E896612C5D7');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e75333bcb0006', 'a', null, '2011-03-02 14:13:35', '2011-03-02 14:44:00', '127.0.0.1', '935339F4B0DE9E3AF2D76E896612C5D7');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e75333bef0007', 'a', null, '2011-03-02 14:13:35', '2011-03-02 14:44:00', '127.0.0.1', '935339F4B0DE9E3AF2D76E896612C5D7');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e7557840b0008', 'a', null, '2011-03-02 14:53:13', '2011-03-02 16:04:39', '127.0.0.1', 'DF0DC60AA3402A7F7FEC8F2EBCBAB96C');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e75699b960009', 'yxx', null, '2011-03-02 15:12:58', '2011-03-02 16:04:39', '127.0.0.1', 'DF0DC60AA3402A7F7FEC8F2EBCBAB96C');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e75a1e9b8000d', 'a', null, '2011-03-02 16:14:28', null, '127.0.0.1', 'C9E0EA23220A868A30754AACBF6ABC75');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e75a240e2000e', 'pjl', null, '2011-03-02 16:14:51', null, '127.0.0.1', 'C9E0EA23220A868A30754AACBF6ABC75');
INSERT INTO `do_log` VALUES ('2c90b0fa2e753337012e75a25435000f', 'pjl', null, '2011-03-02 16:14:56', null, '127.0.0.1', 'C9E0EA23220A868A30754AACBF6ABC75');
INSERT INTO `do_log` VALUES ('2c90b0fa2e75c8b7012e75c8b7480000', 'pjl', null, '2011-03-02 16:56:51', null, '127.0.0.1', '0493DCAF8C51880DBED45726FA97B030');
INSERT INTO `do_log` VALUES ('2c90b0fa2e75d0dc012e75d0dc560000', 'pjl', null, '2011-03-02 17:05:45', null, '127.0.0.1', '4055847F63B0345E290104B9C16A608F');
INSERT INTO `do_log` VALUES ('2c90b0fa2e75d421012e75d4217d0000', 'pjl', null, '2011-03-02 17:09:19', '2011-03-02 17:43:35', '127.0.0.1', 'B3C39AAD45EE9B489EF3F52ECB3FE485');
INSERT INTO `do_log` VALUES ('2c90b0fa2e75d421012e75ecbf730010', 'xjl', null, '2011-03-02 17:36:13', '2011-03-02 17:43:35', '127.0.0.1', 'B3C39AAD45EE9B489EF3F52ECB3FE485');
INSERT INTO `do_log` VALUES ('2c90b0fa2e75d421012e75ef2d0f0012', 'pjl', null, '2011-03-02 17:38:52', '2011-03-02 17:43:35', '127.0.0.1', 'B3C39AAD45EE9B489EF3F52ECB3FE485');
INSERT INTO `do_log` VALUES ('2c90b0fa2e763ee6012e763ee6fa0000', 'a', null, '2011-03-02 19:05:57', null, '127.0.0.1', '78E7CD0A78EF147EC3DC6CBA3B56E40A');
INSERT INTO `do_log` VALUES ('2c90b0fa2e763ee6012e763f36820001', 'pjl', null, '2011-03-02 19:06:17', null, '127.0.0.1', '78E7CD0A78EF147EC3DC6CBA3B56E40A');
INSERT INTO `do_log` VALUES ('2c90b0fa2e765039012e765039fa0000', 'pjl', null, '2011-03-02 19:24:52', null, '127.0.0.1', 'DADC3991BC655D9E9B3D9E46A72E3CD3');
INSERT INTO `do_log` VALUES ('2c90b0fa2e765039012e765059f00001', 'pjl', null, '2011-03-02 19:25:00', null, '127.0.0.1', 'DADC3991BC655D9E9B3D9E46A72E3CD3');
INSERT INTO `do_log` VALUES ('2c90b0fa2e765165012e765165fb0000', 'pjl', null, '2011-03-02 19:26:09', null, '127.0.0.1', 'B172F4C7F165042B846ECBC30FB4B446');
INSERT INTO `do_log` VALUES ('2c90b0fa2e765949012e765949de0000', 'pjl', null, '2011-03-02 19:34:46', null, '127.0.0.1', '4067661DA45BC4374A26FB4ADB8A8D97');
INSERT INTO `do_log` VALUES ('2c90b0fa2e765cdd012e765cddfd0000', 'pjl', null, '2011-03-02 19:38:41', null, '127.0.0.1', '49CEA12F14A3994BF2186C169E731B21');
INSERT INTO `do_log` VALUES ('2c90b0fa2e7667fb012e7667fb930000', 'pjl', null, '2011-03-02 19:50:49', null, '127.0.0.1', '170CBE266428041BEB6CF09903FE15DF');
INSERT INTO `do_log` VALUES ('2c90b0fa2e766f10012e766f10880000', 'pjl', null, '2011-03-02 19:58:33', null, '127.0.0.1', 'BD33B5272F5F68B10B0F43D26DA88C74');
INSERT INTO `do_log` VALUES ('2c90b0fa2e767444012e767444ea0000', 'pjl', null, '2011-03-02 20:04:14', null, '127.0.0.1', '2BAC6B8F940C0E88A1701152E8E3375B');
INSERT INTO `do_log` VALUES ('2c90b0fa2e7678c8012e7678c84b0000', 'pjl', null, '2011-03-02 20:09:10', null, '127.0.0.1', 'CE9562D04E652A18F545E64926F46D54');
INSERT INTO `do_log` VALUES ('2c90b0fa2e768520012e768520710000', 'pjl', null, '2011-03-02 20:22:39', null, '127.0.0.1', '891AD2BB0C7BCBC8A94AD3C6F650E3BC');
INSERT INTO `do_log` VALUES ('2c90b0fa2e7690ea012e7690ea8a0000', 'pjl', null, '2011-03-02 20:35:32', null, '127.0.0.1', '4A69BDBD83E7305A6345BB7AC2814D16');
INSERT INTO `do_log` VALUES ('2c90b0fa2e7691f8012e7691f8b80000', 'pjl', null, '2011-03-02 20:36:41', null, '127.0.0.1', 'E5E17772AE1F4760BB45AC0F01C48BC3');
INSERT INTO `do_log` VALUES ('2c90b0fa2e7691f8012e76920d960001', 'pjl', null, '2011-03-02 20:36:46', null, '127.0.0.1', 'E5E17772AE1F4760BB45AC0F01C48BC3');
INSERT INTO `do_log` VALUES ('2c90b0fa2e769749012e769749e20000', 'pjl', null, '2011-03-02 20:42:29', null, '127.0.0.1', '8E94A29CAE9FCCA83FC482AE6CE5F991');
INSERT INTO `do_log` VALUES ('2c90b0fa2e7944eb012e7944eb9a0000', 'a', null, '2011-03-03 09:11:23', null, '127.0.0.1', 'F63C6489FC54CD59F05504F5EFC5B7B1');
INSERT INTO `do_log` VALUES ('434cd5072e79952a012e79952a360000', 'a', null, '2011-03-03 10:39:02', '2011-03-03 11:10:03', '127.0.0.1', '22AA6A192AA5988248695C4F4505ECD7');
INSERT INTO `do_log` VALUES ('434cd5072e79952a012e7a508c330001', 'a', null, '2011-03-03 14:03:42', '2011-03-03 14:06:05', '127.0.0.1', '66B54E543EC162B0742B2CB2D0982048');
INSERT INTO `do_log` VALUES ('2c90b2a82e7a53a7012e7a53a7a10000', 'a', null, '2011-03-03 14:07:06', null, '127.0.0.1', '8F0FA7B0AFB232B38263C867D245F6E5');
INSERT INTO `do_log` VALUES ('434cd5072e7a9f85012e7a9f853a0000', 'a', null, '2011-03-03 15:29:58', '2011-03-03 16:00:18', '127.0.0.1', '79619FC472B52BC3155C99B11E977DF6');
INSERT INTO `do_log` VALUES ('434cd5072e7a9f85012e7aa01d2f0001', 'a', null, '2011-03-03 15:30:36', '2011-03-03 16:19:42', '127.0.0.1', 'A417E9BB7394360BC5BE7328F31271BB');
INSERT INTO `do_log` VALUES ('434cd5072e7a9f85012e7acf46e90002', 'a', null, '2011-03-03 16:22:07', null, '127.0.0.1', 'AEBA579406B5AF34D9506CDE7237C474');
INSERT INTO `do_log` VALUES ('434cd5072e7a9f85012e7af3f8b9012b', 'a', null, '2011-03-03 17:02:12', null, '127.0.0.1', 'AEBA579406B5AF34D9506CDE7237C474');
INSERT INTO `do_log` VALUES ('434cd5072e7a9f85012e7af5131e012c', 'a', null, '2011-03-03 17:03:24', null, '127.0.0.1', '280821F45EFE2696D143612D822884A7');
INSERT INTO `do_log` VALUES ('434cd5072e7af8f0012e7af8f04e0000', 'a', null, '2011-03-03 17:07:38', '2011-03-03 17:42:04', '127.0.0.1', '5F45855EB4BD15C4CC4C23DA9A24D87E');
INSERT INTO `do_log` VALUES ('434cd5072e7af8f0012e7b21dd0c0001', 'a', null, '2011-03-03 17:52:20', '2011-03-03 18:22:48', '127.0.0.1', '7ED927876FE71FBDB0115D3DE27972CC');
INSERT INTO `do_log` VALUES ('434cd5072e7af8f0012e7b8ec11f0002', 'a', null, '2011-03-03 19:51:16', '2011-03-03 20:57:05', '127.0.0.1', '5840121EA52BF1BC89FE78D78B283249');
INSERT INTO `do_log` VALUES ('434cd5072e7eb11c012e7eb11cd10000', 'a', null, '2011-03-04 10:27:39', '2011-03-04 10:28:26', '127.0.0.1', 'E64F3C27F43C653B0914E39D02AB5A8B');
INSERT INTO `do_log` VALUES ('434cd5072e7eb5e7012e7eb5e7290000', 'a', null, '2011-03-04 10:32:53', null, '127.0.0.1', '5093D76CEC972E6B70952EAA83CB3234');
INSERT INTO `do_log` VALUES ('2c90b0fa2e7f812d012e7f812d970000', 'a', null, '2011-03-04 14:14:55', null, '127.0.0.1', 'D0455939DDE36D68879D385DC987276F');
INSERT INTO `do_log` VALUES ('434cd5072e7f8f4d012e7f8f4d680000', 'a', null, '2011-03-04 14:30:21', null, '127.0.0.1', '292EA1EBC1419F55E423377FF31998E3');
INSERT INTO `do_log` VALUES ('434cd5072e7fb3ea012e7fb3eafc0000', 'a', null, '2011-03-04 15:10:20', null, '127.0.0.1', '6AAC435FE4C2A9D027FC4FE895400C7A');
INSERT INTO `do_log` VALUES ('434cd5072e7fb3ea012e7fb430460001', 'a', null, '2011-03-04 15:10:38', null, '127.0.0.1', '6AAC435FE4C2A9D027FC4FE895400C7A');
INSERT INTO `do_log` VALUES ('434cd5072e7fc5d3012e7fc5d31b0000', 'a', null, '2011-03-04 15:29:54', null, '127.0.0.1', 'F182D786004C35DA746B5264C1119CBC');
INSERT INTO `do_log` VALUES ('434cd5072e7fee41012e7fee41f40000', 'a', null, '2011-03-04 16:14:04', null, '127.0.0.1', '34919855ECA598670D6F01EA10205C91');
INSERT INTO `do_log` VALUES ('434cd5072e80028f012e80028f000000', 'a', null, '2011-03-04 16:36:14', null, '127.0.0.1', '7B7FF1A1C98BAA1AB6C7ADB08C8ECA79');
INSERT INTO `do_log` VALUES ('434cd5072e801803012e801803590000', 'a', null, '2011-03-04 16:59:40', null, '127.0.0.1', '502F3EF148D34AFF6889D9FDCC9D9144');
INSERT INTO `do_log` VALUES ('434cd5072e8036aa012e8036aa020000', 'a', null, '2011-03-04 17:33:09', '2011-03-04 18:07:17', '127.0.0.1', '6629585F01E8BA7F243319A0E42821AA');
INSERT INTO `do_log` VALUES ('2c90b1c22e807ddb012e807ddb7a0000', 'a', null, '2011-03-04 18:50:55', null, '127.0.0.1', '2FB4260DE7B3897499D85732D4903B87');
INSERT INTO `do_log` VALUES ('434cd5072e80806b012e80806b460000', 'a', null, '2011-03-04 18:53:43', '2011-03-04 19:24:37', '127.0.0.1', '22BA6B94D438D3EC461B730E3C63ED64');
INSERT INTO `do_log` VALUES ('434cd5072e80806b012e80e39a560001', 'a', null, '2011-03-04 20:42:03', null, '127.0.0.1', '79404C1670462B6969818913103301BA');
INSERT INTO `do_log` VALUES ('434cd5072e80ec4c012e80ec4c8c0000', 'a', null, '2011-03-04 20:51:33', null, '127.0.0.1', '754B72461C721B1789A05B464B9F604F');
INSERT INTO `do_log` VALUES ('2c90b0df2e8391e7012e8391e72d0000', 'a', null, '2011-03-05 09:11:40', null, '127.0.0.1', '23C7BDBA498C1663C1A59CDB90EF98A3');
INSERT INTO `do_log` VALUES ('434cd5072e839885012e839885e80000', 'a', null, '2011-03-05 09:18:54', null, '127.0.0.1', '33D562ED0BA1D93BD10587F5BD46026F');
INSERT INTO `do_log` VALUES ('434cd5072e83a12f012e83a12f4f0000', 'a', null, '2011-03-05 09:28:22', null, '127.0.0.1', '58419B77CEDA581B1492BA5B415E8462');
INSERT INTO `do_log` VALUES ('434cd5072e83acdc012e83acdcfe0000', 'a', null, '2011-03-05 09:41:07', null, '127.0.0.1', '088AE74D6A55589621E8E1CF1955B849');
INSERT INTO `do_log` VALUES ('434cd5072e83b0c4012e83b0c4940000', 'a', null, '2011-03-05 09:45:23', null, '127.0.0.1', 'BAA273C45A253CBAAF858F5141F73338');
INSERT INTO `do_log` VALUES ('434cd5072e83b650012e83b6508d0000', 'a', null, '2011-03-05 09:51:26', null, '127.0.0.1', '0B8447E0F556A45A717C85639FFA60FA');
INSERT INTO `do_log` VALUES ('434cd5072e83c321012e83c3214b0000', 'a', null, '2011-03-05 10:05:26', null, '127.0.0.1', 'C342825FCF431EAAA1FFF04495CC0EA0');
INSERT INTO `do_log` VALUES ('434cd5072e83c8f7012e83c8f7a80000', 'a', null, '2011-03-05 10:11:49', '2011-03-05 10:49:13', '127.0.0.1', 'EA7405053DBC3D5C35A7648C0D71D272');
INSERT INTO `do_log` VALUES ('434cd5072e83c8f7012e83f9b20b0001', 'a', null, '2011-03-05 11:05:02', '2011-03-05 12:06:19', '127.0.0.1', 'EE5614DCB96AD1A50334FC15677EA9C5');
INSERT INTO `do_log` VALUES ('434cd5072e83c8f7012e8439c7140005', 'a', null, '2011-03-05 12:15:02', '2011-03-05 12:45:59', '127.0.0.1', '2F782091254F63C134EC276BB4F23800');
INSERT INTO `do_log` VALUES ('434cd5072e83c8f7012e849ebe7d0006', 'a', null, '2011-03-05 14:05:19', null, '127.0.0.1', 'D54EF28A6850D96B92F25DC08ED14CEE');
INSERT INTO `do_log` VALUES ('434cd5072e84af18012e84af18d80000', 'a', null, '2011-03-05 14:23:11', null, '127.0.0.1', '2BA58B4AD64073E428489DDA8095C2F2');
INSERT INTO `do_log` VALUES ('434cd5072e84b2c3012e84b2c33d0000', 'a', null, '2011-03-05 14:27:11', null, '127.0.0.1', '2B4C6D0202F7F11D2841402E1F7CC5D0');
INSERT INTO `do_log` VALUES ('297e3c942e84c8ea012e84c8eabb0000', 'a', null, '2011-03-05 14:51:23', null, '127.0.0.1', 'B6B52D4DDE85AEF5AA7FAB723566345D');
INSERT INTO `do_log` VALUES ('434cd5072e84cc3f012e84cc3f920000', 'a', null, '2011-03-05 14:55:01', null, '127.0.0.1', 'A55FB9D02DB179FC837FB07F7699F99F');
INSERT INTO `do_log` VALUES ('434cd5072e850e4c012e850e4cc20000', 'a', null, '2011-03-05 16:07:10', null, '127.0.0.1', '75630BCCF413EFE0FBD836AC0AA42C36');
INSERT INTO `do_log` VALUES ('434cd5072e8514a0012e8514a0470000', 'a', null, '2011-03-05 16:14:04', null, '127.0.0.1', '9CD3C1CB63B7297E3E9D18E6BC5B3DF5');
INSERT INTO `do_log` VALUES ('434cd5072e851d73012e851d73ea0000', 'a', null, '2011-03-05 16:23:43', null, '127.0.0.1', 'EC4F484B0E67529CF4717A997EF84CDC');
INSERT INTO `do_log` VALUES ('434cd5072e851d73012e851d92fd0001', 'a', null, '2011-03-05 16:23:51', null, '127.0.0.1', 'EC4F484B0E67529CF4717A997EF84CDC');
INSERT INTO `do_log` VALUES ('434cd5072e852077012e852077fa0000', 'a', null, '2011-03-05 16:27:01', null, '127.0.0.1', '889CD7966417FB35710C98B7DD0C82E9');
INSERT INTO `do_log` VALUES ('434cd5072e8525f2012e8525f24e0000', 'a', null, '2011-03-05 16:33:00', null, '127.0.0.1', '8A3B4B4A095EEA4AC7193133980391C3');
INSERT INTO `do_log` VALUES ('434cd5072e852a75012e852a75630000', 'a', null, '2011-03-05 16:37:55', null, '127.0.0.1', 'FB746B4F9CDC28F2CAA23FA4BA4D9A17');
INSERT INTO `do_log` VALUES ('434cd5072e852e14012e852e14960000', 'a', null, '2011-03-05 16:41:53', null, '127.0.0.1', 'E1F3776CF3C3D6E728E27CB33208870E');
INSERT INTO `do_log` VALUES ('434cd5072e856efa012e856efa030000', 'a', null, '2011-03-05 17:52:46', null, '127.0.0.1', 'A030341CA48F57CEEABF94095D323178');
INSERT INTO `do_log` VALUES ('434cd5072e8dd7fe012e8dd7fe510000', 'a', null, '2011-03-07 09:04:26', '2011-03-07 09:50:31', '127.0.0.1', '62BA94581103887B3512FAFFA9DC4FFE');
INSERT INTO `do_log` VALUES ('434cd5072e8dd7fe012e8e3d9b390077', 'a', null, '2011-03-07 10:55:25', '2011-03-07 12:06:36', '127.0.0.1', '33131F73A7D77B7BD054559A8A8E20E7');
INSERT INTO `do_log` VALUES ('2c90b29f2e8ee6b2012e8ee6b2620000', 'a', null, '2011-03-07 14:00:07', null, '127.0.0.1', '93A9DB3C6673176BF45B7805C66BD4F7');
INSERT INTO `do_log` VALUES ('2c90b29f2e8ee6b2012e8ee8eac50001', 'pjl', null, '2011-03-07 14:02:32', null, '127.0.0.1', '93A9DB3C6673176BF45B7805C66BD4F7');
INSERT INTO `do_log` VALUES ('2c90b29f2e8eeda6012e8eeda64c0000', 'pjl', null, '2011-03-07 14:07:42', null, '127.0.0.1', 'A4899099B04F84E8A9EFF2ED4581E767');
INSERT INTO `do_log` VALUES ('2c90b29f2e8ef5a6012e8ef5a63d0000', 'pjl', null, '2011-03-07 14:16:26', null, '127.0.0.1', 'D38FF2747F2CFFFAFA8ABDF7032C220A');
INSERT INTO `do_log` VALUES ('2c90b29f2e8ef96b012e8ef96be00000', 'a', null, '2011-03-07 14:20:34', null, '127.0.0.1', '19AFB4F3606656BB4D59D9638BFB407A');
INSERT INTO `do_log` VALUES ('2c90b29f2e8ef96b012e8ef985a60001', 'a', null, '2011-03-07 14:20:40', null, '127.0.0.1', '19AFB4F3606656BB4D59D9638BFB407A');
INSERT INTO `do_log` VALUES ('2c90b29f2e8ef96b012e8ef9c2950002', 'pjl', null, '2011-03-07 14:20:56', null, '127.0.0.1', '19AFB4F3606656BB4D59D9638BFB407A');
INSERT INTO `do_log` VALUES ('2c90b29f2e8eff0c012e8eff0cd60000', 'pjl', null, '2011-03-07 14:26:43', null, '127.0.0.1', '7D0D7C5B3C6350CADD50A935AF0BA8EB');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f01a7012e8f01a7750000', 'pjl', null, '2011-03-07 14:29:33', null, '127.0.0.1', 'B40C9742A8F217C0D1A33A96A893D503');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f01a7012e8f01c4cf0001', 'pjl', null, '2011-03-07 14:29:41', null, '127.0.0.1', 'B40C9742A8F217C0D1A33A96A893D503');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f0729012e8f0729180000', 'pjl', null, '2011-03-07 14:35:34', null, '127.0.0.1', '7443F4E18EA2259067026726DCAF3679');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f0729012e8f08b87f0001', 'pjl', null, '2011-03-07 14:37:16', null, '127.0.0.1', '7443F4E18EA2259067026726DCAF3679');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f1345012e8f13450b0000', 'pjl', null, '2011-03-07 14:48:48', '2011-03-07 15:21:33', '127.0.0.1', '912FB63EE715176CA97B2CFA4B8CB571');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f32c2230000', 'yxx', null, '2011-03-07 15:23:11', '2011-03-07 15:25:31', '127.0.0.1', '16CF6729BEEE41D12075CACDB4882BCC');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f3519e80001', 'pjl', null, '2011-03-07 15:25:45', '2011-03-07 15:30:48', '127.0.0.1', '91115FB83B601140CDD6A78EDE279D0A');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f35e2410002', 'a', null, '2011-03-07 15:26:36', '2011-03-07 15:30:48', '127.0.0.1', '91115FB83B601140CDD6A78EDE279D0A');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f39d8100003', 'pjl', null, '2011-03-07 15:30:56', '2011-03-07 16:14:10', '127.0.0.1', '9D79255448E248AF23FBDC65F33A0523');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f61983e0004', 'yjl', null, '2011-03-07 16:14:21', '2011-03-07 16:20:10', '127.0.0.1', 'E60862812C1F64BC4484B952A2A2A239');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f6707060005', 'yyg1', null, '2011-03-07 16:20:17', '2011-03-07 16:20:56', '127.0.0.1', '259A8FE87062CD6D56BD44F29A3B0B5A');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f67c7470007', 'yjl', null, '2011-03-07 16:21:06', '2011-03-07 16:21:29', '127.0.0.1', 'AE1E9527010ACC6EEAB5DC59D1F94F57');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f683a570008', 'pyg2', null, '2011-03-07 16:21:35', '2011-03-07 16:22:27', '127.0.0.1', '47E1B911B6C1691BFC6496809E1EE6D7');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f69238c0009', 'pjl', null, '2011-03-07 16:22:35', '2011-03-07 16:31:02', '127.0.0.1', 'D09C6A9169C6E0A625828EE00A50372A');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f7129a9000a', 'yxx', null, '2011-03-07 16:31:21', '2011-03-07 16:32:00', '127.0.0.1', '9D7EE78572F308FAC9E7DA512309D997');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f71f1ad000b', 'pyg2', null, '2011-03-07 16:32:12', '2011-03-07 16:33:40', '127.0.0.1', '22424AA805D76EEF7F205178FA529239');
INSERT INTO `do_log` VALUES ('2c90b29f2e8f32c2012e8f737029000c', 'pjl', null, '2011-03-07 16:33:50', null, '127.0.0.1', 'C4642D1EF47A55AA983348A397492EEB');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fa26f012e8fa26f950000', 'pjl', null, '2011-03-07 17:25:10', null, '127.0.0.1', '85A6334A2161E174E4F499DEBE5EB5DF');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fa8a8012e8fa8a8bb0000', 'pjl', null, '2011-03-07 17:31:58', null, '127.0.0.1', '587368AC0C772803E4B816C88629323D');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e8fdcdff70000', 'pjl', null, '2011-03-07 18:29:00', '2011-03-07 19:29:04', '127.0.0.1', '55C40B769810532AB99E8979B18FAE54');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e8fdcf6be0001', 'pjl', null, '2011-03-07 18:29:06', '2011-03-07 19:29:04', '127.0.0.1', '55C40B769810532AB99E8979B18FAE54');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e901420a5001a', 'pyg2', null, '2011-03-07 19:29:21', '2011-03-07 19:30:12', '127.0.0.1', '448BDB7354F519D7FF5D65723456A56C');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e901507d2001b', 'pjl', null, '2011-03-07 19:30:20', '2011-03-07 19:30:57', '127.0.0.1', '6AF15A66238E1BA7771E252D8B1FA607');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e9015bbf7001c', 'yjl', null, '2011-03-07 19:31:06', '2011-03-07 19:31:18', '127.0.0.1', 'EADA049EDDDB1742FEEF7923FAEDDA66');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e90161bd2001d', 'yyg2', null, '2011-03-07 19:31:31', '2011-03-07 19:31:50', '127.0.0.1', 'E82A4FA3D7389238724E5CE6DF452A10');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e90168c8d001f', 'yyg1', null, '2011-03-07 19:32:00', '2011-03-07 19:32:34', '127.0.0.1', 'B2C5BBCB9CE70A34D0F04205B63212EB');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e90172b2d0021', 'yjl', null, '2011-03-07 19:32:40', '2011-03-07 19:32:55', '127.0.0.1', '040D9090819E3879454BF0A363D807DB');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e901789d90022', 'pyg2', null, '2011-03-07 19:33:05', '2011-03-07 19:35:46', '127.0.0.1', '80D1765AD70353E97E634B242C940DB7');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e901a1b070023', 'pjl', null, '2011-03-07 19:35:53', '2011-03-07 19:36:49', '127.0.0.1', 'FBD82E8987B552A76B1138546AB49295');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e901b1af90024', 'pgly', null, '2011-03-07 19:36:58', '2011-03-07 19:37:34', '127.0.0.1', '643A79DCCAF94B6C318372AB56E0E8EF');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e901bc35d0025', 'pjl', null, '2011-03-07 19:37:41', '2011-03-07 20:11:17', '127.0.0.1', 'F21C25939E981122ED3C46E11A85A190');
INSERT INTO `do_log` VALUES ('2c90b29f2e8fdcdf012e9050af010026', 'pjl', null, '2011-03-07 20:35:30', '2011-03-07 20:36:05', '127.0.0.1', '1EF86FE83E988620F12183F2C0B6C28E');
INSERT INTO `do_log` VALUES ('2c90b0132e906354012e906354560000', 'a', null, '2011-03-07 20:55:52', null, '127.0.0.1', '49FFFBB2A190463A6869A1C7A695CD5A');
INSERT INTO `do_log` VALUES ('2c90b0132e906354012e9063b3560001', 'a', null, '2011-03-07 20:56:16', null, '127.0.0.1', '49FFFBB2A190463A6869A1C7A695CD5A');
INSERT INTO `do_log` VALUES ('2c90b0f02e92fc75012e92fc75ee0000', 'a', null, '2011-03-08 09:02:22', null, '127.0.0.1', '237762256D7DC37D793F33A7DB5BE606');
INSERT INTO `do_log` VALUES ('434cd5072e937c8f012e937c8fa60000', 'a', null, '2011-03-08 11:22:17', '2011-03-08 12:04:26', '127.0.0.1', '3E9F3A255B60E7F5A07532A8850A7FBB');
INSERT INTO `do_log` VALUES ('2c90b1372e93d66a012e93d66a750000', 'a', null, '2011-03-08 13:00:26', null, '127.0.0.1', 'C531938D6CE8E082DF3F1A132E17ED44');
INSERT INTO `do_log` VALUES ('2c90b1372e93d85c012e93d85c5b0000', 'a', null, '2011-03-08 13:02:33', null, '127.0.0.1', 'ACAB89BD82732E0C2EE3AC1605B78BD2');
INSERT INTO `do_log` VALUES ('2c90b1372e93dadb012e93dadb530000', 'a', null, '2011-03-08 13:05:17', '2011-03-08 13:36:29', '127.0.0.1', '22FD7A45FC47ABB36EE0B8FE7262AA2A');
INSERT INTO `do_log` VALUES ('2c90b1372e93dadb012e940e21480001', 'a', null, '2011-03-08 14:01:17', '2011-03-08 14:32:16', '127.0.0.1', 'A9739E3C5F2CCF8998A3817DADB9EADE');
INSERT INTO `do_log` VALUES ('2c90b1372e93dadb012e943bd10f0002', 'a', null, '2011-03-08 14:51:11', null, '127.0.0.1', '232685382D3CEA7CC57704EB32C8D24C');
INSERT INTO `do_log` VALUES ('434cd5072e943cf9012e943cf9cd0000', 'a', null, '2011-03-08 14:52:27', null, '127.0.0.1', 'F1FD47F63B1FE0D9B784BD87CCE1E6BF');
INSERT INTO `do_log` VALUES ('434cd5072e94421e012e94421ece0000', 'a', null, '2011-03-08 14:58:04', null, '127.0.0.1', '21F3AC3F06A06B5D123504CBC5950242');
INSERT INTO `do_log` VALUES ('434cd5072e944a63012e944a63800000', 'a', null, '2011-03-08 15:07:06', null, '127.0.0.1', 'A691361FBCC5B5A4833B9041EF5677F4');
INSERT INTO `do_log` VALUES ('434cd5072e944c5e012e944c5ed60000', 'a', null, '2011-03-08 15:09:16', null, '127.0.0.1', '395FF0CF6528B513906E912EC1DFCF3D');
INSERT INTO `do_log` VALUES ('2c90b0342e945292012e945292320000', 'a', null, '2011-03-08 15:16:02', null, '127.0.0.1', 'A1C43DC6E6B65BA7CD2FF3237E6ED456');
INSERT INTO `do_log` VALUES ('2c90b0342e945493012e945493910000', 'a', null, '2011-03-08 15:18:14', null, '127.0.0.1', 'A8B3520F44A5BB66F9A62AB7BAAC7A04');
INSERT INTO `do_log` VALUES ('2c90b0342e9456f5012e9456f5610000', 'a', null, '2011-03-08 15:20:50', null, '127.0.0.1', '6C4EC8E2644F404D894E35081D347205');
INSERT INTO `do_log` VALUES ('2c90b0342e946059012e946059c40000', 'a', null, '2011-03-08 15:31:05', '2011-03-08 16:02:15', '127.0.0.1', '32D50BC7DF52D06ABD277059E87BE59C');
INSERT INTO `do_log` VALUES ('2c90b0342e94839a012e94839a030000', 'a', null, '2011-03-08 16:09:36', null, '127.0.0.1', '9F3B75622B0CAA04602E4AAE14DBAE2C');
INSERT INTO `do_log` VALUES ('2c90b0342e948c7f012e948c7ff90000', 'a', null, '2011-03-08 16:19:19', null, '127.0.0.1', '3B4E2B8D265244A074F8A8CF2121D27B');
INSERT INTO `do_log` VALUES ('2c90b0342e949605012e9496056e0000', 'a', null, '2011-03-08 16:29:43', null, '127.0.0.1', '39811DCA7C51BAB7B96B8A9C0ED6E47D');
INSERT INTO `do_log` VALUES ('2c90b0342e94a608012e94a6084f0000', 'a', null, '2011-03-08 16:47:12', null, '127.0.0.1', '5827FE2B6674A9DA3CD2C9855A6D66CA');
INSERT INTO `do_log` VALUES ('2c90b0342e94aa32012e94aa32860000', 'a', null, '2011-03-08 16:51:45', null, '127.0.0.1', '9954A10B0D264B8CDA5E96ADE96E3C4B');
INSERT INTO `do_log` VALUES ('2c90b0342e94ae76012e94ae76f60000', 'a', null, '2011-03-08 16:56:25', null, '127.0.0.1', 'A61D78E1067497EEE6D78B42E642C403');
INSERT INTO `do_log` VALUES ('2c90b0342e94b0e6012e94b0e64c0000', 'a', null, '2011-03-08 16:59:04', '2011-03-08 17:01:10', '127.0.0.1', 'D4160B8ED926C3CFF4916186CB288022');
INSERT INTO `do_log` VALUES ('2c90b0342e94bc7c012e94bc7cbc0000', 'a', null, '2011-03-08 17:11:44', null, '127.0.0.1', '89FE0E556C0618262DFD56C02B4FF75A');
INSERT INTO `do_log` VALUES ('2c90b0342e94c0f8012e94c0f86c0000', 'a', null, '2011-03-08 17:16:37', null, '127.0.0.1', '03FCC9EB021B605CAD8EB5D3684177AA');
INSERT INTO `do_log` VALUES ('2c90b0342e94d085012e94d085c60000', 'a', null, '2011-03-08 17:33:37', null, '127.0.0.1', 'DF2990354DBFB1ABC505B1EB1B2B48DB');
INSERT INTO `do_log` VALUES ('402880072e984f4f012e984f4f510000', 'a', null, '2011-03-09 09:50:57', null, '127.0.0.1', '9D50BA0EE8B6F7AE869C73552E91F91A');
INSERT INTO `do_log` VALUES ('402880072e994b13012e994b13ab0000', 'a', null, '2011-03-09 14:25:57', '2011-03-09 14:27:43', '127.0.0.1', 'DB6391970E62F2F66CA6629573A1CD09');
INSERT INTO `do_log` VALUES ('402880072e99545f012e99545f150000', 'yxx', null, '2011-03-09 14:36:06', null, '127.0.0.1', 'E74F44A120B52603DF9A40053D09489B');
INSERT INTO `do_log` VALUES ('402880072e99545f012e9954a4550001', 'a', null, '2011-03-09 14:36:24', null, '127.0.0.1', 'E74F44A120B52603DF9A40053D09489B');
INSERT INTO `do_log` VALUES ('402880072e99545f012e9990d1350010', 'a', null, '2011-03-09 15:42:08', null, '127.0.0.1', 'E74F44A120B52603DF9A40053D09489B');
INSERT INTO `do_log` VALUES ('ff8080812e9d7866012e9d7866200000', 'a', null, '2011-03-10 09:53:56', null, '127.0.0.1', 'CB14F6BA33464E2FBCCE1244668B31ED');
INSERT INTO `do_log` VALUES ('ff8080812e9d7866012e9d7b5c760001', 'pjl', null, '2011-03-10 09:57:10', null, '127.0.0.1', 'CB14F6BA33464E2FBCCE1244668B31ED');
INSERT INTO `do_log` VALUES ('ff8080812e9d936e012e9d936ed50000', 'pjl', null, '2011-03-10 10:23:28', '2011-03-10 10:25:04', '127.0.0.1', 'DA96EA7EB5771501AC5BB76EAC16840B');
INSERT INTO `do_log` VALUES ('ff8080812e9db512012e9db5127e0000', 'pyg2', null, '2011-03-10 11:00:13', null, '127.0.0.1', 'D9AC249EE0BD43D63B4CAB35BB746865');
INSERT INTO `do_log` VALUES ('ff8080812e9dbd88012e9dbd887e0000', 'pyg2', null, '2011-03-10 11:09:27', null, '127.0.0.1', 'E1C4210D63F744BAB078E1EBDEB9816E');
INSERT INTO `do_log` VALUES ('ff8080812e9dc0a6012e9dc0a69b0000', 'pyg2', null, '2011-03-10 11:12:51', null, '127.0.0.1', '37C6249C2A1A1EAF4F36DF71BF3E0B7D');
INSERT INTO `do_log` VALUES ('ff8080812e9dc374012e9dc374810000', 'pyg2', null, '2011-03-10 11:15:55', null, '127.0.0.1', '6E6ED203A4FB26F2D56D748F67B43E4F');
INSERT INTO `do_log` VALUES ('ff8080812e9dca03012e9dca03ff0000', 'pyg2', null, '2011-03-10 11:23:05', null, '127.0.0.1', 'C1A59D9E5C7C35EA4FB7404899413553');
INSERT INTO `do_log` VALUES ('ff8080812e9dd4c0012e9dd4c0e70000', 'pyg2', null, '2011-03-10 11:34:49', null, '127.0.0.1', '12293588BF482175E26C19336CFEFDB7');
INSERT INTO `do_log` VALUES ('ff8080812e9e01c2012e9e01c2000000', 'a', null, '2011-03-10 12:23:58', null, '127.0.0.1', 'C27EC59DE6856450B7F6987E8D9F8403');
INSERT INTO `do_log` VALUES ('ff8080812e9e01c2012e9e0283510001', 'pyg2', null, '2011-03-10 12:24:48', null, '127.0.0.1', 'C27EC59DE6856450B7F6987E8D9F8403');
INSERT INTO `do_log` VALUES ('ff8080812e9e13a1012e9e13a1ad0000', 'pyg2', null, '2011-03-10 12:43:30', null, '127.0.0.1', '092696BC0DA37DF169A49FC5175C2520');
INSERT INTO `do_log` VALUES ('ff8080812e9e18fd012e9e18fd8b0000', 'pyg2', null, '2011-03-10 12:49:21', null, '127.0.0.1', 'F9B046C414385EF8EB454EAB5903A6A7');
INSERT INTO `do_log` VALUES ('ff8080812e9e24c1012e9e24c1de0000', 'pyg2', null, '2011-03-10 13:02:12', null, '127.0.0.1', 'DBBC5563976951547E364198A31DDE25');
INSERT INTO `do_log` VALUES ('ff8080812e9e27e9012e9e27e9fe0000', 'pyg2', null, '2011-03-10 13:05:39', null, '127.0.0.1', '15AECF85AD979EBFA61B9D15A1090546');
INSERT INTO `do_log` VALUES ('ff8080812e9e2d9f012e9e2d9f170000', 'pyg2', null, '2011-03-10 13:11:53', null, '127.0.0.1', '5C88F8C41291B86A32588EBE6C1535E7');
INSERT INTO `do_log` VALUES ('ff8080812e9e4f4a012e9e4f4ac00000', 'cjl', null, '2011-03-10 13:48:40', null, '127.0.0.1', '88A498C2CB7C9B1FD795856F2B7BF130');
INSERT INTO `do_log` VALUES ('ff8080812e9e6093012e9e60938e0000', 'cjl', null, '2011-03-10 14:07:32', null, '127.0.0.1', '40AD216D321B7EBB45680ABC9D8AEDA7');
INSERT INTO `do_log` VALUES ('ff8080812e9e6574012e9e65747e0000', 'cjl', null, '2011-03-10 14:12:52', null, '127.0.0.1', 'B6FCB84CFCB236C3F47CEF8B9B4521DC');
INSERT INTO `do_log` VALUES ('ff8080812e9e6574012e9e658f950001', 'cjl', null, '2011-03-10 14:12:59', null, '127.0.0.1', 'B6FCB84CFCB236C3F47CEF8B9B4521DC');
INSERT INTO `do_log` VALUES ('ff8080812e9e836f012e9e836faa0000', 'cjl', null, '2011-03-10 14:45:37', null, '127.0.0.1', '192169C79784AEEE3382B69B4FEDE0B9');
INSERT INTO `do_log` VALUES ('ff8080812e9e86e7012e9e86e7bd0000', 'cjl', null, '2011-03-10 14:49:24', null, '127.0.0.1', '3F03580EDEE3C7E5020E32E048C6C7F3');
INSERT INTO `do_log` VALUES ('ff8080812e9ea543012e9ea5430c0000', 'cjl', null, '2011-03-10 15:22:34', null, '127.0.0.1', '1C740720DF549C722DCB11686D48BDD5');
INSERT INTO `do_log` VALUES ('ff8080812e9eb624012e9eb624d60000', 'cjl', null, '2011-03-10 15:41:00', null, '127.0.0.1', 'BB6C9D60259D719AA539C4F5DF513D51');
INSERT INTO `do_log` VALUES ('ff8080812e9eba69012e9eba69120000', 'cjl', null, '2011-03-10 15:45:40', null, '127.0.0.1', 'C463D110B6C9E777633199C452DF1680');
INSERT INTO `do_log` VALUES ('ff8080812e9ec1a0012e9ec1a0820000', 'cjl', null, '2011-03-10 15:53:33', '2011-03-10 16:57:04', '127.0.0.1', '9D3AF24CDC61E2C8C5679E0EABD1CE1F');
INSERT INTO `do_log` VALUES ('ff8080812e9f7730012e9f77306e0000', 'cjl', null, '2011-03-10 19:11:51', null, '127.0.0.1', '9FBCC9CA4E57640786AC552CAD343634');
INSERT INTO `do_log` VALUES ('ff8080812e9f7efa012e9f7efa870000', 'cjl', null, '2011-03-10 19:20:22', null, '127.0.0.1', '6319B280DA8AC45BAF634CE5FC7FAAC9');
INSERT INTO `do_log` VALUES ('ff8080812e9f8043012e9f8043820000', 'cjl', null, '2011-03-10 19:21:46', null, '127.0.0.1', '93C213C5ACA99557B88200604C4A228C');
INSERT INTO `do_log` VALUES ('ff8080812e9f99e6012e9f99e6ae0000', 'cjl', null, '2011-03-10 19:49:46', null, '127.0.0.1', '979D4E12676342903140343B5023ED77');
INSERT INTO `do_log` VALUES ('ff8080812e9f9ed6012e9f9ed65d0000', 'cjl', null, '2011-03-10 19:55:10', null, '127.0.0.1', 'B577B9E1DBB46610EFBD9664815FE9D3');
INSERT INTO `do_log` VALUES ('ff8080812e9fab9c012e9fab9c5d0000', 'cjl', null, '2011-03-10 20:09:07', null, '127.0.0.1', '9C7D3755AE9B70887C78BD0022208BED');
INSERT INTO `do_log` VALUES ('ff8080812e9fb174012e9fb174370000', 'cjl', null, '2011-03-10 20:15:30', null, '127.0.0.1', '773B8868B188F982137B5CCAD6DF7314');
INSERT INTO `do_log` VALUES ('ff8080812e9fbc3c012e9fbc3c810000', 'cjl', null, '2011-03-10 20:27:17', null, '127.0.0.1', 'E83853176093FFF23579802641412A37');
INSERT INTO `do_log` VALUES ('ff8080812e9fbde6012e9fbde6750000', 'cjl', null, '2011-03-10 20:29:06', null, '127.0.0.1', '39FE1EDBA2D813BFF768C082FC9433D0');
INSERT INTO `do_log` VALUES ('ff8080812e9fce94012e9fce94860000', 'cjl', null, '2011-03-10 20:47:19', '2011-03-10 20:49:47', '127.0.0.1', 'D1044A4654C9A1DF30D91A6B149D66BC');
INSERT INTO `do_log` VALUES ('ff8080812e9fce94012e9fd14c9a0001', 'pyg2', null, '2011-03-10 20:50:17', '2011-03-10 20:58:36', '127.0.0.1', '7C93A2E1DA4DAF87C97B6BF23BB9136E');
INSERT INTO `do_log` VALUES ('297e3c942ea27fb2012ea27fb2650000', 'pyg2', null, '2011-03-11 09:20:01', null, '127.0.0.1', '0D78E8228366C402418210B2423FC63F');
INSERT INTO `do_log` VALUES ('297e3c942ea2813c012ea2813ce40000', 'pyg2', null, '2011-03-11 09:21:42', null, '127.0.0.1', '062CCE02033A57BA2A888A650D5B7548');
INSERT INTO `do_log` VALUES ('297e3c942ea283ff012ea283ffdc0000', 'pyg2', null, '2011-03-11 09:24:43', null, '127.0.0.1', 'C3679879CB07D58B2B7A1DF7A3A0A273');
INSERT INTO `do_log` VALUES ('297e3c942ea286ee012ea286eefd0000', 'pyg2', null, '2011-03-11 09:27:55', null, '127.0.0.1', '65DF291E96F1EE249F8831139D4DBD48');
INSERT INTO `do_log` VALUES ('2c90b0e72ea2e28f012ea2e28f130000', 'pyg2', null, '2011-03-11 11:08:00', null, '127.0.0.1', 'E4932F6FFDFA41000414A0ADC660FC16');
INSERT INTO `do_log` VALUES ('2c90b0e72ea2f2cc012ea2f2cc490000', 'pyg2', null, '2011-03-11 11:25:44', null, '127.0.0.1', '073A8A858E473A00EFD565B3435712DD');
INSERT INTO `do_log` VALUES ('2c90b0e72ea3005f012ea3005f980000', 'pyg2', null, '2011-03-11 11:40:34', '2011-03-11 12:10:43', '127.0.0.1', 'D00525FF9639CBA6396D74361BB5DD4A');
INSERT INTO `do_log` VALUES ('2c90b0e72ea3005f012ea32b8b420001', 'a', null, '2011-03-11 12:27:43', '2011-03-11 12:59:59', '127.0.0.1', '4BB7C78A301A604AD711E467116740C6');
INSERT INTO `do_log` VALUES ('2c90b0e72ea3005f012ea35a21700002', 'pyg2', null, '2011-03-11 13:18:36', null, '127.0.0.1', '0F3FB568E4686850277107899CD90B26');
INSERT INTO `do_log` VALUES ('2c90b0e72ea35b0f012ea35b0f320000', 'pyg2', null, '2011-03-11 13:19:37', null, '127.0.0.1', 'B8106439270BDA34666C3B7EA5F5DEDD');
INSERT INTO `do_log` VALUES ('2c90b0e72ea35e17012ea35e171f0000', 'pyg2', null, '2011-03-11 13:22:55', null, '127.0.0.1', 'C53947EC96366DA807CB0D72936E81FD');
INSERT INTO `do_log` VALUES ('2c90b0e72ea360b1012ea360b1ed0000', 'pyg2', null, '2011-03-11 13:25:46', null, '127.0.0.1', '05182205874F8D85DC588219B301F851');
INSERT INTO `do_log` VALUES ('2c90b0e72ea396f9012ea396f9f90000', 'pyg2', null, '2011-03-11 14:25:04', null, '127.0.0.1', 'FCF3C11CBA396D311CBAF38C92470179');
INSERT INTO `do_log` VALUES ('2c90b0e72ea396f9012ea39840540001', 'a', null, '2011-03-11 14:26:27', null, '127.0.0.1', 'FCF3C11CBA396D311CBAF38C92470179');
INSERT INTO `do_log` VALUES ('2c90b0e72ea39a62012ea39a62a50000', 'pyg2', null, '2011-03-11 14:28:47', null, '127.0.0.1', 'EB9ECCB09A972989A7CE92D8F317DA6F');
INSERT INTO `do_log` VALUES ('2c90b0e72ea39bbb012ea39bbb370000', 'pyg2', null, '2011-03-11 14:30:15', null, '127.0.0.1', 'DACE4CFD3CCACEC888E964F6C9BD3B20');
INSERT INTO `do_log` VALUES ('2c90b0e72ea3a789012ea3a7894b0000', 'pyg2', null, '2011-03-11 14:43:09', '2011-03-11 14:48:36', '127.0.0.1', '9F726E25D470BCEDF8D1AE190C0C926B');
INSERT INTO `do_log` VALUES ('2c90b0e72ea3a789012ea3aca4390001', 'pjl', null, '2011-03-11 14:48:43', null, '127.0.0.1', 'E60B190197AD6E42F7588D023D1B84CD');
INSERT INTO `do_log` VALUES ('2c90b0e72ea3a789012ea3baf9490005', 'pjl', null, '2011-03-11 15:04:23', null, '127.0.0.1', 'E60B190197AD6E42F7588D023D1B84CD');
INSERT INTO `do_log` VALUES ('2c90b0e72ea3a789012ea3c0bcc20007', 'pjl', null, '2011-03-11 15:10:40', null, '127.0.0.1', 'E60B190197AD6E42F7588D023D1B84CD');
INSERT INTO `do_log` VALUES ('2c90b0e72ea41396012ea41396660000', 'pjl', null, '2011-03-11 16:41:10', null, '127.0.0.1', 'A8CF000BFB615789717810E49A84ED38');
INSERT INTO `do_log` VALUES ('2c90b0e72ea429e1012ea429e17d0000', 'pjl', null, '2011-03-11 17:05:31', null, '127.0.0.1', '21E91C513FE1A3C8AD147C0CEEE573AB');
INSERT INTO `do_log` VALUES ('2c90b0e72ea431c2012ea431c2230000', 'pjl', null, '2011-03-11 17:14:07', null, '127.0.0.1', '22A37A1B544D7F6EEDC63E71D3CB50C3');
INSERT INTO `do_log` VALUES ('2c90b0e72ea47984012ea47984d50000', 'pyg2', null, '2011-03-11 18:32:30', null, '127.0.0.1', 'F66F1CE7C4C103DAED0DEA7EE9D97185');
INSERT INTO `do_log` VALUES ('2c90b0e72ea47e5b012ea47e5b180000', 'pyg2', null, '2011-03-11 18:37:47', null, '127.0.0.1', 'C89FD958DFF11106B31ABCBA92F9B97E');
INSERT INTO `do_log` VALUES ('2c90b0e72ea49526012ea495269a0000', 'pyg2', null, '2011-03-11 19:02:41', null, '127.0.0.1', '5EB05C741AB2AC74AD68784B8AEC9F49');
INSERT INTO `do_log` VALUES ('2c90b0e72ea4a22e012ea4a22e8b0000', 'pyg2', null, '2011-03-11 19:16:55', null, '127.0.0.1', '15EFBF528F273E4FC5BF14F5362B80DF');
INSERT INTO `do_log` VALUES ('2c90b0e72ea4a8f2012ea4a8f2890000', 'pyg2', null, '2011-03-11 19:24:19', '2011-03-11 20:03:58', '127.0.0.1', '9E07E9F809F7B568B71DECAE1AF0EB4E');
INSERT INTO `do_log` VALUES ('2c90b0e72ea4d82f012ea4d82f190000', 'pyg2', null, '2011-03-11 20:15:54', null, '127.0.0.1', 'F27E81C293DA380DA21EFB5144D1D5BB');
INSERT INTO `do_log` VALUES ('2c90b0e72ea4dd64012ea4dd64f40000', 'pyg2', null, '2011-03-11 20:21:36', null, '127.0.0.1', '793288E96B5AAC9E3CA068B2103B6E96');
INSERT INTO `do_log` VALUES ('2c90b0e72ea4e3eb012ea4e3eb500000', 'pyg2', null, '2011-03-11 20:28:43', null, '127.0.0.1', '45A0EFA552944DBB4AC41B35799AB45E');
INSERT INTO `do_log` VALUES ('2c90b0e72ea4f4b0012ea4f4b0590000', 'pyg2', null, '2011-03-11 20:47:02', null, '127.0.0.1', 'AC48FAA7CF148D4D517A0AB137E882F8');
INSERT INTO `do_log` VALUES ('2c90b0e72ea4fd42012ea4fd425a0000', 'pyg2', null, '2011-03-11 20:56:24', '2011-03-11 20:58:42', '127.0.0.1', 'FEEAD2CAAAF8AFFB0683C193248D312E');
INSERT INTO `do_log` VALUES ('2c90b0bc2ea797cb012ea797cb590000', 'pyg2', null, '2011-03-12 09:04:26', null, '127.0.0.1', 'D61B9E213C879F108EF2BA13C8E3C1FC');
INSERT INTO `do_log` VALUES ('2c90b0bc2ea7ae82012ea7ae82ed0000', 'pyg2', null, '2011-03-12 09:29:15', '2011-03-12 09:41:14', '127.0.0.1', '84D48BC9B6ECB35A579070C3D4F28AD9');
INSERT INTO `do_log` VALUES ('2c90b0bc2ea7ae82012ea7b9911e002c', 'yxx', null, '2011-03-12 09:41:19', '2011-03-12 09:44:42', '127.0.0.1', 'DD1C257759BFE825CDFEB25ECECA3074');
INSERT INTO `do_log` VALUES ('2c90b0bc2ea7ae82012ea7b9b759002d', 'yxx', null, '2011-03-12 09:41:29', '2011-03-12 09:44:42', '127.0.0.1', 'DD1C257759BFE825CDFEB25ECECA3074');
INSERT INTO `do_log` VALUES ('2c90b0bc2ea7ae82012ea7bcd6f8003d', 'pjl', null, '2011-03-12 09:44:54', '2011-03-12 09:45:23', '127.0.0.1', '25ACE20625899B6D658A7144D90515D7');
INSERT INTO `do_log` VALUES ('2c90b0bc2ea7c266012ea7c266b80000', 'pyg2', null, '2011-03-12 09:50:58', '2011-03-12 10:26:21', '127.0.0.1', '294CD39C7527E95815BC3ABCC8ECDFB9');
INSERT INTO `do_log` VALUES ('434cd5072ea8e13e012ea8e13ec10000', 'pyg2', null, '2011-03-12 15:04:17', '2011-03-12 15:35:05', '127.0.0.1', '59960614D4D7E146A44EB8693B0CC404');
INSERT INTO `do_log` VALUES ('434cd5072ea9697a012ea9697a4b0000', 'pyg2', null, '2011-03-12 17:33:05', null, '127.0.0.1', '4345890BB86A8CBC78F534F727541F03');
INSERT INTO `do_log` VALUES ('434cd5072ea96e98012ea96e98000000', 'pyg2', null, '2011-03-12 17:38:40', null, '127.0.0.1', '29D069217C4A0771356249F3C1CBC5D5');
INSERT INTO `do_log` VALUES ('434cd5072ea9746d012ea9746d5e0000', 'pyg2', null, '2011-03-12 17:45:03', null, '127.0.0.1', '24ACA442A29017243039AECC8B5C2414');
INSERT INTO `do_log` VALUES ('434cd5072ea9791e012ea9791e7a0000', 'pyg2', null, '2011-03-12 17:50:10', null, '127.0.0.1', '6F4F3514E175D39ED5BA97B76A9597CD');
INSERT INTO `do_log` VALUES ('434cd5072ea979da012ea979dac60000', 'pyg2', null, '2011-03-12 17:50:58', null, '127.0.0.1', '87B11F39BF7C1770ACFDFD858FD49F75');
INSERT INTO `do_log` VALUES ('434cd5072ea97d97012ea97d97150000', 'pyg2', null, '2011-03-12 17:55:03', '2011-03-12 17:59:18', '127.0.0.1', '16388436C8289213C1B3894935EDF724');
INSERT INTO `do_log` VALUES ('ff8080812eacdee1012eacdee13f0000', 'a', null, '2011-03-13 09:40:11', '2011-03-13 10:22:16', '127.0.0.1', '8B367C5B06B3FD478F1D404141ED8D3F');
INSERT INTO `do_log` VALUES ('ff8080812ead51af012ead51af350000', 'pyg2', null, '2011-03-13 11:45:35', null, '127.0.0.1', '42036ACAE9BAD554FEE05BD697622B1E');
INSERT INTO `do_log` VALUES ('ff8080812ead5bb7012ead5bb7190000', 'pyg2', null, '2011-03-13 11:56:32', null, '127.0.0.1', 'E3AEFE1A8485AB7DADB21EAC6E1AC98E');
INSERT INTO `do_log` VALUES ('ff8080812ead68e4012ead68e44a0000', 'pyg2', null, '2011-03-13 12:10:55', null, '127.0.0.1', 'C3E30D63DBE648289CE613C46570E10E');
INSERT INTO `do_log` VALUES ('ff8080812ead7dc3012ead7dc3f80000', 'pyg2', null, '2011-03-13 12:33:43', null, '127.0.0.1', 'CDFDE66C28FEFE04564E9737B6DC77D6');
INSERT INTO `do_log` VALUES ('ff8080812ead7e92012ead7e92810000', 'pyg2', null, '2011-03-13 12:34:36', '2011-03-13 13:05:37', '127.0.0.1', '3FAB18FAFACA08AB2CB9857EF46E317B');
INSERT INTO `do_log` VALUES ('ff8080812eada242012eada242fd0000', 'pyg2', null, '2011-03-13 13:13:35', '2011-03-13 13:44:37', '127.0.0.1', '306C4A0D3280ECCA790A86DFFA357740');
INSERT INTO `do_log` VALUES ('ff8080812eadf765012eadf765730000', 'pyg2', null, '2011-03-13 14:46:35', null, '127.0.0.1', 'E169892EB4E8C47A6CE3F5213C3BA565');
INSERT INTO `do_log` VALUES ('ff8080812eae001c012eae001cad0000', 'pyg2', null, '2011-03-13 14:56:06', null, '127.0.0.1', 'B925EE5A8DFF116F21A665247F1607E9');
INSERT INTO `do_log` VALUES ('ff8080812eae0ae7012eae0ae7830000', 'pyg2', null, '2011-03-13 15:07:53', null, '127.0.0.1', '360661BD9E6A76B48F00E4B47E4748B7');
INSERT INTO `do_log` VALUES ('ff8080812eae260b012eae260bd40000', 'pyg2', null, '2011-03-13 15:37:32', null, '127.0.0.1', 'DE16B29841D7C6F1D8E50C1A24CE2913');
INSERT INTO `do_log` VALUES ('ff8080812eae3f7a012eae3f7aae0000', 'pyg2', null, '2011-03-13 16:05:19', null, '127.0.0.1', '2AD188C5620217D1A47912ECA4CA186E');
INSERT INTO `do_log` VALUES ('ff8080812eae4e09012eae4e09d30000', 'pyg2', null, '2011-03-13 16:21:13', null, '127.0.0.1', '7B390E62690D98B41FAC4B5D37B1AD91');
INSERT INTO `do_log` VALUES ('ff8080812eae542b012eae542b4d0000', 'pyg2', null, '2011-03-13 16:27:55', '2011-03-13 16:31:12', '127.0.0.1', 'A907AC6E9D8DFDBED582E5497818E29C');
INSERT INTO `do_log` VALUES ('ff8080812eae5b14012eae5b14730000', 'pyg2', null, '2011-03-13 16:35:28', null, '127.0.0.1', '471D9A136D11BF9E675C6EE5AFD28237');
INSERT INTO `do_log` VALUES ('ff8080812eae618b012eae618b440000', 'pyg2', null, '2011-03-13 16:42:31', '2011-03-13 16:43:06', '127.0.0.1', '8DEF3877B589526E89FB7C5EEBDAC68B');
INSERT INTO `do_log` VALUES ('402880072eb2048d012eb2048df70000', 'pyg2', null, '2011-03-14 09:39:26', '2011-03-14 10:01:36', '127.0.0.1', 'E79B78167B7EEDE5288CA40B44A79F94');
INSERT INTO `do_log` VALUES ('402880072eb2048d012eb207e25e0002', 'a', null, '2011-03-14 09:43:04', '2011-03-14 10:01:36', '127.0.0.1', 'E79B78167B7EEDE5288CA40B44A79F94');
INSERT INTO `do_log` VALUES ('402880072eb2048d012eb20b43c10003', 'pyg2', null, '2011-03-14 09:46:46', '2011-03-14 10:01:36', '127.0.0.1', 'E79B78167B7EEDE5288CA40B44A79F94');
INSERT INTO `do_log` VALUES ('402880072eb2048d012eb21905fb0009', 'pjl', null, '2011-03-14 10:01:47', '2011-03-14 10:03:27', '127.0.0.1', '5B0DE657C3135823EC51A51A9746FE36');
INSERT INTO `do_log` VALUES ('402880072eb2048d012eb21b6304000b', 'cjl', null, '2011-03-14 10:04:22', '2011-03-14 10:13:41', '127.0.0.1', '798357FF49F7756BD18EE6CC5D98E67E');
INSERT INTO `do_log` VALUES ('402880072eb2048d012eb22410e7000d', 'pyg2', null, '2011-03-14 10:13:51', null, '127.0.0.1', '38E352B26031D24D7552B57811786782');
INSERT INTO `do_log` VALUES ('402880072eb238c2012eb238c2500000', 'pyg2', null, '2011-03-14 10:36:27', null, '127.0.0.1', '2B77E42CF7867A454B0ED7F468677EBF');
INSERT INTO `do_log` VALUES ('402880072eb23e1e012eb23e1ea20000', 'pyg2', null, '2011-03-14 10:42:18', null, '127.0.0.1', 'E79710E4C2FFBF1077E6CB6A15CD8235');
INSERT INTO `do_log` VALUES ('402880072eb24116012eb24116ee0000', 'pyg2', null, '2011-03-14 10:45:33', null, '127.0.0.1', 'C1239B8B2BFAD8FDB1B085F10DE2FD4F');
INSERT INTO `do_log` VALUES ('402880072eb245b6012eb245b6b10000', 'pyg2', null, '2011-03-14 10:50:36', '2011-03-14 10:55:24', '127.0.0.1', '7FEFC8963AF6A7013FCE4A8CE0D86B97');
INSERT INTO `do_log` VALUES ('402880072eb245b6012eb24a3f100002', 'cjl', null, '2011-03-14 10:55:33', null, '127.0.0.1', '31668B728020024A1B5677995E861428');
INSERT INTO `do_log` VALUES ('402880072eb2555a012eb2555a8d0000', 'cjl', null, '2011-03-14 11:07:41', null, '127.0.0.1', 'EA331460234B0A59FC97402C0A7A33EB');
INSERT INTO `do_log` VALUES ('402880072eb25ac8012eb25ac8ab0000', 'cjl', null, '2011-03-14 11:13:37', null, '127.0.0.1', '9F793B6A36DAE9EBA66773AA6073B869');
INSERT INTO `do_log` VALUES ('402880072eb25c92012eb25c92020000', 'cjl', null, '2011-03-14 11:15:34', null, '127.0.0.1', '549BBD54BEADB9D04760EF759767F5C2');
INSERT INTO `do_log` VALUES ('402880072eb26258012eb26258a30000', 'cjl', null, '2011-03-14 11:21:53', null, '127.0.0.1', '678D227A4B313A1EBA6CF5F40D80AD4D');
INSERT INTO `do_log` VALUES ('402880072eb26f37012eb26f37b20000', 'cjl', null, '2011-03-14 11:35:56', null, '127.0.0.1', '994744B7121B3B62188BACF66B494D62');
INSERT INTO `do_log` VALUES ('402880072eb274a9012eb274a9f30000', 'cjl', null, '2011-03-14 11:41:53', null, '127.0.0.1', '114152B6299DB5F46F486E3DC241ADB3');
INSERT INTO `do_log` VALUES ('402880072eb28088012eb280882a0000', 'cjl', null, '2011-03-14 11:54:51', null, '127.0.0.1', '8749CB087DFEC7726497618F9ED8EBDB');
INSERT INTO `do_log` VALUES ('402880072eb28928012eb28928a30000', 'cjl', null, '2011-03-14 12:04:16', null, '127.0.0.1', 'F1E9CE14F7B29C3618CA9335754E457C');
INSERT INTO `do_log` VALUES ('402880072eb28d8e012eb28d8efc0000', 'cjl', null, '2011-03-14 12:09:05', '2011-03-14 12:44:50', '127.0.0.1', 'A3475258F0BB1FD2FB3574F61B1CF076');
INSERT INTO `do_log` VALUES ('402880072eb28d8e012eb292a5be0001', 'cjl', null, '2011-03-14 12:14:38', '2011-03-14 12:46:51', '127.0.0.1', 'E060CBA738976BFE31F3A05CF9D77BB0');
INSERT INTO `do_log` VALUES ('402880072eb28d8e012eb2cf25520002', 'cjl', null, '2011-03-14 13:20:43', null, '127.0.0.1', 'CE65BB7A7DE7B76140F776D0D3C1EB73');
INSERT INTO `do_log` VALUES ('402880072eb2d7e3012eb2d7e3500000', 'cjl', null, '2011-03-14 13:30:16', null, '127.0.0.1', '2A4116B3CCF1AE499F42A628DB3B4CD2');
INSERT INTO `do_log` VALUES ('402880072eb2dc27012eb2dc279d0000', 'cjl', null, '2011-03-14 13:34:55', null, '127.0.0.1', 'DFD0B222A120C08D4DA66E20EF60B13B');
INSERT INTO `do_log` VALUES ('297ece8a2eb3b873012eb3b873a70000', 'pyg2', null, '2011-03-14 17:35:33', '2011-03-14 18:08:25', '127.0.0.1', '4C0AD8F1D1C14941D9542408F123FB60');
INSERT INTO `do_log` VALUES ('297ece8a2eb3b873012eb3e552c50002', 'pyg2', null, '2011-03-14 18:24:33', null, '127.0.0.1', '02551F893A4DA49E19C8D8B924A66860');
INSERT INTO `do_log` VALUES ('297ece8a2eb3b873012eb3e5c0430003', 'pyg2', null, '2011-03-14 18:25:02', null, '127.0.0.1', 'B216BBB75FDE99C25632556EBC15F037');
INSERT INTO `do_log` VALUES ('297ece8a2eb4033c012eb4033cab0000', 'pyg2', null, '2011-03-14 18:57:14', null, '127.0.0.1', 'E886176CBE716753A81D54B9E2CD9FF5');
INSERT INTO `do_log` VALUES ('297ece8a2eb4033c012eb403c7a60001', 'a', null, '2011-03-14 18:57:49', null, '127.0.0.1', 'E886176CBE716753A81D54B9E2CD9FF5');
INSERT INTO `do_log` VALUES ('297ece8a2eb40651012eb40651ec0000', 'pyg2', null, '2011-03-14 19:00:36', '2011-03-14 19:17:20', '127.0.0.1', '3800EDFF0C984EAA9C3D01E47D8A3E1E');
INSERT INTO `do_log` VALUES ('297ece8a2eb40651012eb40668180001', 'pyg2', null, '2011-03-14 19:00:42', '2011-03-14 19:17:20', '127.0.0.1', '3800EDFF0C984EAA9C3D01E47D8A3E1E');
INSERT INTO `do_log` VALUES ('297ece8a2eb40651012eb415c0150019', 'cjl', null, '2011-03-14 19:17:27', null, '127.0.0.1', 'E6D935EFB9B9398A704FF65328DE2A43');
INSERT INTO `do_log` VALUES ('297ece8a2eb41ac3012eb41ac3880000', 'cjl', null, '2011-03-14 19:22:56', null, '127.0.0.1', '2B93C3D4BB315FFFE837D4FBB1E2E148');
INSERT INTO `do_log` VALUES ('297ece8a2eb41bbb012eb41bbba20000', 'cjl', null, '2011-03-14 19:23:59', null, '127.0.0.1', '5797249123695839C837685A7122FC6B');
INSERT INTO `do_log` VALUES ('297ece8a2eb42b48012eb42b483e0000', 'cjl', null, '2011-03-14 19:40:58', null, '127.0.0.1', '67DAA5DF8B9930413AC40D0D004E6474');
INSERT INTO `do_log` VALUES ('297ece8a2eb44f0b012eb44f0b300000', 'pyg2', null, '2011-03-14 20:20:02', null, '127.0.0.1', '119593304691E407CF7253176034E646');
INSERT INTO `do_log` VALUES ('402880072eb7236f012eb7236f180000', 'pyg2', null, '2011-03-15 09:31:16', '2011-03-15 11:02:05', '127.0.0.1', '5DBEC6C888DE7AEADC0C6F51B10D37CE');
INSERT INTO `do_log` VALUES ('402880072eb7ae0b012eb7ae0b1e0000', 'pyg2', null, '2011-03-15 12:02:40', null, '127.0.0.1', '788A87A4D680CF842F2128FAB60B29B3');
INSERT INTO `do_log` VALUES ('402880072eb7b9d5012eb7b9d5730000', 'pyg2', null, '2011-03-15 12:15:32', null, '127.0.0.1', '8AF2B367B67187A4BCD3498700107253');
INSERT INTO `do_log` VALUES ('402880072eb7bf9f012eb7bf9fef0000', 'pyg2', null, '2011-03-15 12:21:52', '2011-03-15 12:52:48', '127.0.0.1', '66401F8E9E750F0EC4FAA730D556AF72');
INSERT INTO `do_log` VALUES ('402880072eb81cd6012eb81cd6d40000', 'pyg2', null, '2011-03-15 14:03:41', '2011-03-15 14:06:02', '127.0.0.1', '7A544DA4927B9476BC122D741CC7C971');
INSERT INTO `do_log` VALUES ('402880072eb81cd6012eb81f1f160002', 'cjl', null, '2011-03-15 14:06:10', null, '127.0.0.1', '46DF2EFF6EBD1A62BE6F532D0AEB9AC7');
INSERT INTO `do_log` VALUES ('402880072eb852ba012eb852ba8d0000', 'cjl', null, '2011-03-15 15:02:32', null, '127.0.0.1', '7F930918FB81BEA8E1713E5C85299D77');
INSERT INTO `do_log` VALUES ('402880072eb86a3b012eb86a3bf60000', 'a', null, '2011-03-15 15:28:13', null, '127.0.0.1', 'D8815627A4AB7B7342B17911C2006898');
INSERT INTO `do_log` VALUES ('402880072eb86a3b012eb86b78510001', 'pyg2', null, '2011-03-15 15:29:34', null, '127.0.0.1', 'D8815627A4AB7B7342B17911C2006898');
INSERT INTO `do_log` VALUES ('402880072f18cc8a012f18cc8a020000', 'a', null, '2011-04-03 08:39:08', '2011-04-03 09:50:53', '127.0.0.1', 'C48889F15E5AB99842F356189C8EA547');
INSERT INTO `do_log` VALUES ('402880072f18cc8a012f18f40bb800fc', 'yuanxx', null, '2011-04-03 09:22:17', '2011-04-03 09:50:53', '127.0.0.1', 'C48889F15E5AB99842F356189C8EA547');
INSERT INTO `do_log` VALUES ('402880072f18cc8a012f19000c1b0102', 'yuanxx', null, '2011-04-03 09:35:24', '2011-04-03 09:50:53', '127.0.0.1', 'C48889F15E5AB99842F356189C8EA547');
INSERT INTO `do_log` VALUES ('402880072f190ee0012f190ee0dc0000', 'a', null, '2011-04-03 09:51:36', '2011-04-03 09:51:57', '127.0.0.1', '0783795CBE04CA32A91E5BA856517CE8');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f3330f38a0033', 'hanmin', null, '2011-04-08 11:38:56', '2011-04-08 12:09:44', '192.168.0.7', '150D3A95ACF011F64913C8EC081A878E');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f333137b50034', 'hanmin', null, '2011-04-08 11:39:14', '2011-04-08 12:09:44', '192.168.0.7', '150D3A95ACF011F64913C8EC081A878E');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f33380d010035', 'xutao', null, '2011-04-08 11:46:42', '2011-04-08 12:44:47', '192.168.0.7', 'CF1A099DC4D2565122164149E86E8FDD');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f33fc1cf30036', 'yuanxx', null, '2011-04-08 15:20:51', '2011-04-08 15:58:02', '192.168.0.7', '82F28C87D205CD7EC600FDFED9C38407');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f33fe1bb70037', 'hanmin', null, '2011-04-08 15:23:01', null, '192.168.0.7', 'D3059B54906BC8432F93BDA6BB1AB26A');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f33fe85f10038', 'a', null, '2011-04-08 15:23:29', '2011-04-08 15:47:16', '192.168.0.7', 'F8A2847AFB55ED246EF0C3336AB27B54');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f34032a4e0039', 'liuyanjing', null, '2011-04-08 15:28:33', null, '192.168.0.7', 'CDC856BF8F19DE4C05E5A1729E34A19E');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f3403ca4d003a', 'yuanxx', null, '2011-04-08 15:29:14', '2011-04-08 15:47:16', '192.168.0.7', 'F8A2847AFB55ED246EF0C3336AB27B54');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f3406609f003b', 'hanmin', null, '2011-04-08 15:32:03', null, '192.168.0.7', 'D3059B54906BC8432F93BDA6BB1AB26A');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f34089a09003c', 'hanmin', null, '2011-04-08 15:34:29', null, '192.168.0.7', 'D3059B54906BC8432F93BDA6BB1AB26A');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f34089d80003d', 'yangning', null, '2011-04-08 15:34:30', '2011-04-08 16:16:04', '192.168.0.7', 'D82EB2D6D519FB75C864D3C712615EE0');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f34147d1f0048', 'yuanxx', null, '2011-04-08 15:47:28', '2011-04-08 15:49:45', '192.168.0.7', 'C9B587EB72CFA39FA63DF77BB3683CE4');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f3416c41f004b', 'yuanxx', null, '2011-04-08 15:49:57', '2011-04-08 16:00:06', '192.168.0.7', '4718DEB8445B14C28B4751229EB7F768');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f34183234004c', 'yangning', null, '2011-04-08 15:51:31', '2011-04-08 16:22:04', '192.168.0.7', '70955E7805535C6919A4C2E2B2EFC2E2');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f342038f4004d', 'yuanxx', null, '2011-04-08 16:00:17', null, '192.168.0.7', '493CBBF43E54733602F3ABA2DB040600');
INSERT INTO `do_log` VALUES ('402881e92f342093012f342093f90000', 'yuanxx', null, '2011-04-08 16:00:41', null, '127.0.0.1', '60B1D1CA870DCB6A744A2383CEB621F0');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f3434e206004e', 'yangning', null, '2011-04-08 16:22:51', null, '192.168.0.7', 'E6FFF5DFA9C760C617D655BBEFF4BCEF');
INSERT INTO `do_log` VALUES ('402881e92f34314f012f34314f5c0000', 'yuanxx', null, '2011-04-08 16:18:57', '2011-04-08 16:52:43', '127.0.0.1', '84D6B399688CEED7DEA3F1A1570EE4EA');
INSERT INTO `do_log` VALUES ('402881e92f34314f012f34374d5b0001', 'yuanxx', null, '2011-04-08 16:25:30', '2011-04-08 16:58:47', '127.0.0.1', '303482EB5750AD9B947DBBB47BBC9883');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f344a8ea20051', 'yuanxx', null, '2011-04-08 16:46:32', null, '192.168.0.7', 'FA333A5820F1598C0C1260D47FF68701');
INSERT INTO `do_log` VALUES ('ff8080812f32d8ce012f344d02e20052', 'yuanxx', null, '2011-04-08 16:49:12', null, '192.168.0.7', '46A28568AA7D2BE42F33D94E94281CFD');
INSERT INTO `do_log` VALUES ('ff8080812f345419012f345419ec0000', 'yuanxx', null, '2011-04-08 16:56:57', null, '192.168.0.7', 'F7FF73CC7F69CA9EF7DC97012F1B7E3A');
INSERT INTO `do_log` VALUES ('ff8080812f345419012f345a9ece0001', 'liuyanjing', null, '2011-04-08 17:04:04', '2011-04-08 17:34:43', '192.168.0.7', 'D53FEFC1AFD25C3FC92C5C331327D6E5');
INSERT INTO `do_log` VALUES ('ff8080812f345419012f3469214b0002', 'hanmin', null, '2011-04-08 17:19:55', null, '192.168.0.7', 'F47E608F35F79509B1E11D097285E390');
INSERT INTO `do_log` VALUES ('ff8080812f345419012f346986970003', 'liuyanjing', null, '2011-04-08 17:20:21', null, '192.168.0.7', '861791E1E2EB7387BAA3A58407630DD1');
INSERT INTO `do_log` VALUES ('ff8080812f345419012f346da0ce0005', 'yuanxx', null, '2011-04-08 17:24:50', null, '192.168.0.7', 'C286C6CF3B63EB426B339B885ED6ADA9');
INSERT INTO `do_log` VALUES ('402881e92f34314f012f346ccbe00002', 'yuanxx', null, '2011-04-08 17:23:56', null, '127.0.0.1', '3C2516AF934492DD5CB5598F3D6FB2CD');
INSERT INTO `do_log` VALUES ('ff8080812f348d65012f348d65930000', 'yuanxx', null, '2011-04-08 17:59:32', null, '192.168.0.7', '2D0647F3854FCB76223F01D214AEB168');
INSERT INTO `do_log` VALUES ('ff8080812f348d65012f349406c20001', 'yuanxx', null, '2011-04-08 18:06:46', null, '192.168.0.7', '2D0647F3854FCB76223F01D214AEB168');
INSERT INTO `do_log` VALUES ('ff8080812f349f8d012f349f8d250000', 'yuanxx', null, '2011-04-08 18:19:22', null, '192.168.0.7', 'B2CDBCFEC80AD4EC093DBD1A82E11E9A');
INSERT INTO `do_log` VALUES ('ff8080812f349f8d012f34a03d780001', 'yuanxx', null, '2011-04-08 18:20:07', '2011-04-08 18:53:31', '192.168.0.7', 'E87DA8C5DED1011CEE3DE79F77F3D71D');
INSERT INTO `do_log` VALUES ('ff8080812f349f8d012f34f288140002', 'lwl', null, '2011-04-08 19:50:00', null, '192.168.0.7', '49A69F8A1706341F76A3B467AA4B3A63');
INSERT INTO `do_log` VALUES ('ff8080812f349f8d012f34f2d9ce0003', 'lwl', null, '2011-04-08 19:50:21', null, '192.168.0.7', '49A69F8A1706341F76A3B467AA4B3A63');
INSERT INTO `do_log` VALUES ('ff8080812f349f8d012f34f4dd970004', 'lwl', null, '2011-04-08 19:52:33', null, '192.168.0.7', '6051F4D9AA9EC89C119E47D21C2135DA');
INSERT INTO `do_log` VALUES ('ff8080812f350476012f350476bf0000', 'yuanxx', null, '2011-04-08 20:09:35', '2011-04-08 20:43:16', '192.168.0.7', '322C4CB004C48516780A0827E20A5240');
INSERT INTO `do_log` VALUES ('ff8080812f350476012f3505b9860001', 'yuanxx', null, '2011-04-08 20:10:58', '2011-04-08 20:43:16', '192.168.0.7', '322C4CB004C48516780A0827E20A5240');
INSERT INTO `do_log` VALUES ('402881e92f3cd59d012f3cd59db30001', 'a', null, '2011-04-10 08:35:23', '2011-04-10 10:09:50', '127.0.0.1', '94ADDDC451241F0146ADF654883B3CCA');
INSERT INTO `do_log` VALUES ('402881e92f3cd59d012f3cd59db30002', 'a', null, '2011-04-10 08:35:23', '2011-04-10 10:09:50', '127.0.0.1', '94ADDDC451241F0146ADF654883B3CCA');
INSERT INTO `do_log` VALUES ('402881e92f3cd59d012f3cd59db30000', 'a', null, '2011-04-10 08:35:23', '2011-04-10 10:09:50', '127.0.0.1', '94ADDDC451241F0146ADF654883B3CCA');
INSERT INTO `do_log` VALUES ('402881e92f3cd59d012f3d164db20062', 'yuanxx', null, '2011-04-10 09:46:02', '2011-04-10 10:09:50', '127.0.0.1', '94ADDDC451241F0146ADF654883B3CCA');
INSERT INTO `do_log` VALUES ('402881e92f3de97e012f3de97f010001', 'yuanxx', null, '2011-04-10 13:36:43', null, '127.0.0.1', '2A1B26806D8C296DB7676222B36001D9');
INSERT INTO `do_log` VALUES ('402881e92f3de97e012f3de97ec30000', 'a', null, '2011-04-10 13:36:43', null, '127.0.0.1', '2A1B26806D8C296DB7676222B36001D9');
INSERT INTO `do_log` VALUES ('402881e92f3de97e012f3de99db50002', 'a', null, '2011-04-10 13:36:51', '2011-04-10 13:37:08', '127.0.0.1', 'D86B63768AA0697AF7A52D6DBD220675');
INSERT INTO `do_log` VALUES ('402881e92f3debe8012f3debe8120000', 'a', null, '2011-04-10 13:39:21', null, '127.0.0.1', '8B72185C107FF8892F089CD8DC793EC8');
INSERT INTO `do_log` VALUES ('402881e92f3debe8012f3dec5d320001', 'yuanxx', null, '2011-04-10 13:39:51', null, '127.0.0.1', '8B72185C107FF8892F089CD8DC793EC8');
INSERT INTO `do_log` VALUES ('ff8080812f42384e012f42384e3e0000', 'yuanxx', null, '2011-04-11 09:41:17', null, '192.168.0.7', '82171A701BEF52E09DC88AD97804A2A2');
INSERT INTO `do_log` VALUES ('ff8080812f4244ba012f4244bad70000', 'a', null, '2011-04-11 09:54:51', null, '192.168.0.7', '82171A701BEF52E09DC88AD97804A2A2');
INSERT INTO `do_log` VALUES ('ff8080812f4244ba012f4244bb350002', 'yuanxx', null, '2011-04-11 09:54:51', null, '192.168.0.7', '82171A701BEF52E09DC88AD97804A2A2');
INSERT INTO `do_log` VALUES ('ff8080812f4244ba012f4244bad80001', 'a', null, '2011-04-11 09:54:51', null, '192.168.0.7', '82171A701BEF52E09DC88AD97804A2A2');
INSERT INTO `do_log` VALUES ('402881e92f423802012f423802b80000', 'a', null, '2011-04-11 09:40:57', '2011-04-11 09:41:48', '127.0.0.1', '1F1875E53E3D779075B22BE459DAE128');
INSERT INTO `do_log` VALUES ('ff8080812f4244ba012f42489b3c0003', 'a', null, '2011-04-11 09:59:05', null, '192.168.0.7', '82171A701BEF52E09DC88AD97804A2A2');
INSERT INTO `do_log` VALUES ('ff8080812f4244ba012f4248a0200004', 'a', null, '2011-04-11 09:59:06', null, '192.168.0.7', '82171A701BEF52E09DC88AD97804A2A2');
INSERT INTO `do_log` VALUES ('ff8080812f4244ba012f4248add80005', 'a', null, '2011-04-11 09:59:10', null, '192.168.0.7', '82171A701BEF52E09DC88AD97804A2A2');
INSERT INTO `do_log` VALUES ('ff8080812f4244ba012f42492d220006', 'yuanxx', null, '2011-04-11 09:59:42', null, '192.168.0.7', '82171A701BEF52E09DC88AD97804A2A2');
INSERT INTO `do_log` VALUES ('402881e92f423927012f423f80810002', 'yuanxx', null, '2011-04-11 09:49:08', null, '127.0.0.1', '08594319F02FF98AA427E30ACA9E1AD7');
INSERT INTO `do_log` VALUES ('402881e92f428854012f4288545d0000', 'a', null, '2011-04-11 11:08:41', null, '127.0.0.1', 'B3A84C492E48C98B022C8CD5D31C9C71');
INSERT INTO `do_log` VALUES ('402881e92f428854012f42888f620001', 'yuanxx', null, '2011-04-11 11:08:56', null, '127.0.0.1', 'B3A84C492E48C98B022C8CD5D31C9C71');
INSERT INTO `do_log` VALUES ('402881e92f428ba3012f428ba3e60000', 'yuanxx', null, '2011-04-11 11:12:18', null, '127.0.0.1', '0F4C71DD208291B60CFFEE0E6EA1C2F4');
INSERT INTO `do_log` VALUES ('402881e92f42a749012f42a7490c0000', 'a', null, '2011-04-11 11:42:30', null, '127.0.0.1', '47C849C785B112540FA46BEA39201E8B');
INSERT INTO `do_log` VALUES ('402881e62f75a295012f75a295fb0000', 'a', null, '2011-04-21 09:18:00', null, '127.0.0.1', 'D3A13A0B5BFED5D226C8B0EB3375FAE3');
INSERT INTO `do_log` VALUES ('402881e62f75a295012f75b1365e0001', 'a', null, '2011-04-21 09:33:58', null, '127.0.0.1', '1D8B01BC6DE2542D77BCD247AED68FC3');
INSERT INTO `do_log` VALUES ('402880072f75bc33012f75bc335b0000', 'a', null, '2011-04-21 09:45:58', null, '127.0.0.1', '25C5DFD4A904A6920C7C89749AE2ACE7');
INSERT INTO `do_log` VALUES ('402880072f75c7da012f75c7da720000', 'a', null, '2011-04-21 09:58:42', '2011-04-21 10:01:27', '127.0.0.1', 'A93C17150C82B88B5D20758BA02122CF');
INSERT INTO `do_log` VALUES ('402880072f75c7da012f75ca79f50001', 'a', null, '2011-04-21 10:01:34', null, '127.0.0.1', '30D870A8A87C2F2F3501518E0446AB34');
INSERT INTO `do_log` VALUES ('402880072f75c7da012f75cb9f0c0002', '袁谐祥', null, '2011-04-21 10:02:49', null, '127.0.0.1', '30D870A8A87C2F2F3501518E0446AB34');
INSERT INTO `do_log` VALUES ('2c90b0c52f7c3147012f7c3147090000', '袁谐祥', null, '2011-04-22 15:51:34', null, '127.0.0.1', '3A563DB371B8646259F2A0AB6BED71B4');
INSERT INTO `do_log` VALUES ('2c90b0c52f7c3147012f7c3148800001', '袁谐祥', null, '2011-04-22 15:51:35', null, '127.0.0.1', '3A563DB371B8646259F2A0AB6BED71B4');
INSERT INTO `do_log` VALUES ('402880402fd2d786012fd2d786cc0000', 'a', null, '2011-05-09 11:40:30', '2011-05-09 11:41:32', '127.0.0.1', 'E96696455BBB9079FA918C3BFBA8FF5E');
INSERT INTO `do_log` VALUES ('402880402fd2e001012fd2e001550000', 'u', null, '2011-05-09 11:49:46', null, '127.0.0.1', '1F23B227CEE44C3C0AA00BBFA097E88A');
INSERT INTO `do_log` VALUES ('402880402fd2e001012fd2efab380001', 'u', null, '2011-05-09 12:06:53', null, '192.168.0.120', '2772707622365D5BB27C73F85526012C');
INSERT INTO `do_log` VALUES ('402880402fd2fbaf012fd2fbafa20000', 'u', null, '2011-05-09 12:20:00', '2011-05-09 12:50:35', '127.0.0.1', '37CCDC249A2D02E77BD82AB7846CD8C3');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd2fbffc60000', 'a', null, '2011-05-09 12:20:21', '2011-05-09 12:50:35', '127.0.0.1', 'ED264CA1EC3920E4536152580A09139B');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd2fc792c0001', '魏可鑫', null, '2011-05-09 12:20:52', '2011-05-09 12:24:42', '127.0.0.1', '4034C2DD4CAF0483210029611E8ECB8D');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd2fc796b0002', '魏可鑫', null, '2011-05-09 12:20:52', '2011-05-09 12:24:42', '127.0.0.1', '4034C2DD4CAF0483210029611E8ECB8D');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd2ff2d8e0003', '袁谐祥', null, '2011-05-09 12:23:49', '2011-05-09 12:24:42', '127.0.0.1', '4034C2DD4CAF0483210029611E8ECB8D');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd2ff2d9e0004', '袁谐祥', null, '2011-05-09 12:23:49', '2011-05-09 12:24:42', '127.0.0.1', '4034C2DD4CAF0483210029611E8ECB8D');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd30022cb0006', '魏可鑫', null, '2011-05-09 12:24:52', '2011-05-09 12:55:45', '127.0.0.1', 'B31B3835ABFC4FD501494C7FCA338B7F');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd30022eb0007', '魏可鑫', null, '2011-05-09 12:24:52', '2011-05-09 12:55:45', '127.0.0.1', 'B31B3835ABFC4FD501494C7FCA338B7F');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd32e75030009', '魏可鑫', null, '2011-05-09 13:15:27', null, '127.0.0.1', 'F2DD31EA78FB2D3ED6ED2EE4BC6EECBB');
INSERT INTO `do_log` VALUES ('402880402fd2fbff012fd32e7512000a', '魏可鑫', null, '2011-05-09 13:15:27', null, '127.0.0.1', 'F2DD31EA78FB2D3ED6ED2EE4BC6EECBB');
INSERT INTO `do_log` VALUES ('402880402fd34377012fd343771f0000', '魏可鑫', null, '2011-05-09 13:38:24', null, '127.0.0.1', '09642303AA560ABBA4D992DB97E83FF0');
INSERT INTO `do_log` VALUES ('402880402fd34377012fd34377fa0001', '魏可鑫', null, '2011-05-09 13:38:24', null, '127.0.0.1', '09642303AA560ABBA4D992DB97E83FF0');
INSERT INTO `do_log` VALUES ('402880402fd34377012fd344196a0002', 'a', null, '2011-05-09 13:39:06', null, '127.0.0.1', '138BA1F961ACB1B4EB3B71D1F1A512F5');
INSERT INTO `do_log` VALUES ('402880402fd34b9e012fd34b9e290000', 'a', null, '2011-05-09 13:47:18', null, '127.0.0.1', 'FAEA1279D24EFF150372971B54A4284A');
INSERT INTO `do_log` VALUES ('402880402fd34b9e012fd34d15580001', 'u', null, '2011-05-09 13:48:55', null, '192.168.0.120', 'B6D315E81189C41DD01747F8D9C3725E');
INSERT INTO `do_log` VALUES ('402880402fd34b9e012fd35824b40002', 'u', null, '2011-05-09 14:00:59', null, '127.0.0.1', 'FAEA1279D24EFF150372971B54A4284A');
INSERT INTO `do_log` VALUES ('402880402fd34b9e012fd35841250003', 'u', null, '2011-05-09 14:01:07', null, '127.0.0.1', 'FAEA1279D24EFF150372971B54A4284A');
INSERT INTO `do_log` VALUES ('402880402fd358a4012fd358a4630000', 'u', null, '2011-05-09 14:01:32', null, '127.0.0.1', '3128C9B47A17132C8AC00ACDDBAAFCAA');
INSERT INTO `do_log` VALUES ('402880402fd358a4012fd35921ff0001', 'u', null, '2011-05-09 14:02:04', '2011-05-09 14:33:04', '192.168.0.120', 'D20C5EA7BCA8E51D7B60FAB0EAC87430');
INSERT INTO `do_log` VALUES ('402880402fd358a4012fd35c185c0002', 'a', null, '2011-05-09 14:05:18', null, '127.0.0.1', '3128C9B47A17132C8AC00ACDDBAAFCAA');
INSERT INTO `do_log` VALUES ('402880402fd38b76012fd38b76180000', 'a', null, '2011-05-09 14:57:03', null, '127.0.0.1', 'D2C16C387597A5197C12327220C46F65');
INSERT INTO `do_log` VALUES ('402880402fd3c196012fd3c196e70000', '魏可鑫', null, '2011-05-09 15:56:10', null, '127.0.0.1', '5CC24226742512318DAB28D97F32D5A3');
INSERT INTO `do_log` VALUES ('402880402fd3c196012fd3c197c20001', '魏可鑫', null, '2011-05-09 15:56:10', null, '127.0.0.1', '5CC24226742512318DAB28D97F32D5A3');
INSERT INTO `do_log` VALUES ('402880402fd3c982012fd3c982ad0000', '魏可鑫', null, '2011-05-09 16:04:49', null, '127.0.0.1', 'C433CD11F4A330D5811ECFA4977DF6B1');
INSERT INTO `do_log` VALUES ('402880402fd3c982012fd3c983870001', '魏可鑫', null, '2011-05-09 16:04:49', null, '127.0.0.1', 'C433CD11F4A330D5811ECFA4977DF6B1');
INSERT INTO `do_log` VALUES ('402880402fd3d392012fd3d3928b0000', '魏可鑫', null, '2011-05-09 16:15:48', null, '127.0.0.1', '0094A4080274643B361C9226EF6616D8');
INSERT INTO `do_log` VALUES ('402880402fd3d392012fd3d393650001', '魏可鑫', null, '2011-05-09 16:15:49', null, '127.0.0.1', '0094A4080274643B361C9226EF6616D8');
INSERT INTO `do_log` VALUES ('402880402fd3dcf2012fd3dcf2ef0000', 'a', null, '2011-05-09 16:26:03', null, '127.0.0.1', '5BF8E37673782259BD28F3A39C0939AE');
INSERT INTO `do_log` VALUES ('402880402fd3e185012fd3e185290000', 'a', null, '2011-05-09 16:31:02', null, '127.0.0.1', '54AB941B61216D2545C2D831087CB524');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3e40b180000', 'a', null, '2011-05-09 16:33:48', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3e648c30002', '魏可鑫', null, '2011-05-09 16:36:15', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3e648f20003', '魏可鑫', null, '2011-05-09 16:36:15', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3e76aed0004', '魏可鑫', null, '2011-05-09 16:37:29', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3e76b0c0005', '魏可鑫', null, '2011-05-09 16:37:29', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3ee0b460006', '魏可鑫', null, '2011-05-09 16:44:43', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3ee0b660007', '魏可鑫', null, '2011-05-09 16:44:43', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3f6e64e0008', 'a', null, '2011-05-09 16:54:24', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3fa8a01000a', '魏可鑫', null, '2011-05-09 16:58:22', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3fa8a6f000b', '魏可鑫', null, '2011-05-09 16:58:22', null, '127.0.0.1', 'AAE2FB27F1E81135EBA267BF701CD4EF');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3fae8db000c', '魏可鑫', null, '2011-05-09 16:58:46', null, '127.0.0.1', 'BC8D0D921ADEBF8AB502AC4A29C475B4');
INSERT INTO `do_log` VALUES ('402880402fd3e40b012fd3fae8ea000d', '魏可鑫', null, '2011-05-09 16:58:46', null, '127.0.0.1', 'BC8D0D921ADEBF8AB502AC4A29C475B4');
INSERT INTO `do_log` VALUES ('402880402fd78ac0012fd78ac05f0000', 'u', null, '2011-05-10 09:34:45', '2011-05-10 10:08:47', '127.0.0.1', '65F14B999920C91D1DBAD8163C577739');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd78b90bf0000', '魏可鑫', null, '2011-05-10 09:35:38', null, '127.0.0.1', 'A7A5BEC40FE2A99FBB01F07525F10796');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd78b918a0001', '魏可鑫', null, '2011-05-10 09:35:38', null, '127.0.0.1', 'A7A5BEC40FE2A99FBB01F07525F10796');
INSERT INTO `do_log` VALUES ('402880402fd78ac0012fd78ce92b0001', 'u', null, '2011-05-10 09:37:06', '2011-05-10 10:10:51', '192.168.0.120', '1EEB5C0699BC3BC9C5A6634FE6C5ADC8');
INSERT INTO `do_log` VALUES ('402880402fd78ac0012fd78d19a10002', 'u', null, '2011-05-10 09:37:19', '2011-05-10 10:08:47', '127.0.0.1', '65F14B999920C91D1DBAD8163C577739');
INSERT INTO `do_log` VALUES ('402880402fd78ac0012fd78da8e10003', 'a', null, '2011-05-10 09:37:55', '2011-05-10 10:08:47', '127.0.0.1', '65F14B999920C91D1DBAD8163C577739');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd7927d060002', '魏可鑫', null, '2011-05-10 09:43:12', null, '127.0.0.1', 'A7A5BEC40FE2A99FBB01F07525F10796');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd7927d250003', '魏可鑫', null, '2011-05-10 09:43:12', null, '127.0.0.1', 'A7A5BEC40FE2A99FBB01F07525F10796');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd79368be0004', '魏可鑫', null, '2011-05-10 09:44:12', '2011-05-10 10:15:59', '192.168.0.120', '8905E3017657EE24BE6FF6F6B1445E66');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd79368dd0005', '魏可鑫', null, '2011-05-10 09:44:12', '2011-05-10 10:15:59', '192.168.0.120', '8905E3017657EE24BE6FF6F6B1445E66');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd79445c00006', '魏可鑫', null, '2011-05-10 09:45:09', '2011-05-10 10:15:59', '192.168.0.120', '8905E3017657EE24BE6FF6F6B1445E66');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd79445d00007', '魏可鑫', null, '2011-05-10 09:45:09', '2011-05-10 10:15:59', '192.168.0.120', '8905E3017657EE24BE6FF6F6B1445E66');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd794b2160008', '魏可鑫', null, '2011-05-10 09:45:37', null, '127.0.0.1', 'A7A5BEC40FE2A99FBB01F07525F10796');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd794b2260009', '魏可鑫', null, '2011-05-10 09:45:37', null, '127.0.0.1', 'A7A5BEC40FE2A99FBB01F07525F10796');
INSERT INTO `do_log` VALUES ('402880402fd78ac0012fd7965c9a0004', 'u', null, '2011-05-10 09:47:26', '2011-05-10 10:18:02', '192.168.0.120', '2CE7EFE8B42D35B4B2E428E7113C90AB');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd7c237d6000a', '魏可鑫', null, '2011-05-10 10:35:20', '2011-05-10 11:06:24', '127.0.0.1', '2C1F64C0202C57ED1E3908E1EEBA0791');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd7c237e5000b', '魏可鑫', null, '2011-05-10 10:35:20', '2011-05-10 11:06:24', '127.0.0.1', '2C1F64C0202C57ED1E3908E1EEBA0791');
INSERT INTO `do_log` VALUES ('402880402fd78ac0012fd7cefd4e0005', 'a', null, '2011-05-10 10:49:17', null, '127.0.0.1', '4FF619E6504492FEF6977F82678CCA2B');
INSERT INTO `do_log` VALUES ('402880402fd78b90012fd7d18c65000c', 'a', null, '2011-05-10 10:52:05', null, '127.0.0.1', 'D6334A0D2FA65A7619F242DAF3534D74');
INSERT INTO `do_log` VALUES ('402880402fd812bf012fd812bfbe0000', 'a', null, '2011-05-10 12:03:18', '2011-05-10 12:35:41', '127.0.0.1', 'B8E1C7C3C14AB07ACD04700D318800B3');
INSERT INTO `do_log` VALUES ('402880402fd812bf012fd812d29a0001', 'a', null, '2011-05-10 12:03:22', '2011-05-10 12:35:41', '127.0.0.1', 'B8E1C7C3C14AB07ACD04700D318800B3');
INSERT INTO `do_log` VALUES ('402880402fd8804d012fd8804d560000', 'a', null, '2011-05-10 14:02:57', null, '127.0.0.1', '7DA82BAC89736CBEDA503F6C0C29B4CF');
INSERT INTO `do_log` VALUES ('402880402fd880d0012fd880d0320000', 'a', null, '2011-05-10 14:03:31', null, '127.0.0.1', '1FC9802BE6B18F15B9EFEFA5DCCA82C5');
INSERT INTO `do_log` VALUES ('402880402fd880d0012fd88234360001', 'a', null, '2011-05-10 14:05:02', null, '127.0.0.1', 'E68B73BDFEB4F9C3C9B1F7BBA442B99A');
INSERT INTO `do_log` VALUES ('402880402fd8804d012fd88788a70001', 'a', null, '2011-05-10 14:10:51', null, '127.0.0.1', '7DA82BAC89736CBEDA503F6C0C29B4CF');
INSERT INTO `do_log` VALUES ('402880402fd8a68b012fd8a68b600000', 'a', null, '2011-05-10 14:44:44', null, '127.0.0.1', '7ECE96D93BD38ADB48063A4866556BA8');
INSERT INTO `do_log` VALUES ('402880402fd8bb7b012fd8bb7b2d0000', 'a', null, '2011-05-10 15:07:36', null, '127.0.0.1', '2399A0ED287D1F5240F388A4237C7459');
INSERT INTO `do_log` VALUES ('402880402fd8cafd012fd8cafdc20000', 'a', null, '2011-05-10 15:24:32', null, '127.0.0.1', 'DF53A5E886A4570EAA2F187AB74A6608');
INSERT INTO `do_log` VALUES ('402880402fd8dd5e012fd8dd5e390000', 'a', null, '2011-05-10 15:44:36', null, '127.0.0.1', '75870290ADFFB1A29D198CADF6C82327');
INSERT INTO `do_log` VALUES ('402880402fd8df66012fd8df66000000', 'a', null, '2011-05-10 15:46:50', null, '127.0.0.1', '2CC26E82AF4115BBEFD1380076395861');
INSERT INTO `do_log` VALUES ('402880402fd8ed83012fd8ed83b50000', 'a', null, '2011-05-10 16:02:15', null, '127.0.0.1', '8D18B7509585AF26C0E22A0B91470FE0');
INSERT INTO `do_log` VALUES ('402880402fd8f0bc012fd8f0bc3b0000', 'a', null, '2011-05-10 16:05:46', null, '127.0.0.1', '2E1AF4F1B8C34842D2EF1A2D88026BF3');
INSERT INTO `do_log` VALUES ('402880402fd90d7a012fd90d7a820000', 'a', null, '2011-05-10 16:37:09', null, '127.0.0.1', 'CBB6380DAFA0DBF7686215F016429CD5');
INSERT INTO `do_log` VALUES ('402880402fd90d7a012fd91395020001', '魏可鑫', null, '2011-05-10 16:43:49', null, '127.0.0.1', 'CE71C1D5E899414A9A21AC65B2225C71');
INSERT INTO `do_log` VALUES ('402880402fd90d7a012fd91395600002', '魏可鑫', null, '2011-05-10 16:43:49', null, '127.0.0.1', 'CE71C1D5E899414A9A21AC65B2225C71');
INSERT INTO `do_log` VALUES ('402880402fd90d7a012fd918be8b0003', '魏可鑫', null, '2011-05-10 16:49:28', null, '127.0.0.1', 'F2D8DDBB7CB2FBF7C6F9033DCBBD629C');
INSERT INTO `do_log` VALUES ('402880402fd90d7a012fd918beaa0004', '魏可鑫', null, '2011-05-10 16:49:28', null, '127.0.0.1', 'F2D8DDBB7CB2FBF7C6F9033DCBBD629C');
INSERT INTO `do_log` VALUES ('402880402fd91eac012fd91eacda0000', '魏可鑫', null, '2011-05-10 16:55:56', null, '127.0.0.1', '5823943FA1D124A37D3C0F3B7B318D82');
INSERT INTO `do_log` VALUES ('402880402fd91eac012fd91ead960001', '魏可鑫', null, '2011-05-10 16:55:57', null, '127.0.0.1', '5823943FA1D124A37D3C0F3B7B318D82');
INSERT INTO `do_log` VALUES ('402880402fd91eac012fd92973e3000c', '魏可鑫', null, '2011-05-10 17:07:43', null, '127.0.0.1', 'FAF7CE76678768C0DA9CCB6B48E1DF1A');
INSERT INTO `do_log` VALUES ('402880402fd91eac012fd9297440000d', '魏可鑫', null, '2011-05-10 17:07:43', null, '127.0.0.1', 'FAF7CE76678768C0DA9CCB6B48E1DF1A');
INSERT INTO `do_log` VALUES ('402880402fd91eac012fd92aa01e000e', '魏可鑫', null, '2011-05-10 17:09:00', null, '127.0.0.1', 'FAF7CE76678768C0DA9CCB6B48E1DF1A');
INSERT INTO `do_log` VALUES ('402880402fd91eac012fd92aa03d000f', '魏可鑫', null, '2011-05-10 17:09:00', null, '127.0.0.1', 'FAF7CE76678768C0DA9CCB6B48E1DF1A');
INSERT INTO `do_log` VALUES ('402880402fd91eac012fd92d9dce0010', '魏可鑫', null, '2011-05-10 17:12:16', null, '127.0.0.1', 'FAF7CE76678768C0DA9CCB6B48E1DF1A');
INSERT INTO `do_log` VALUES ('402880402fd91eac012fd92d9ddd0011', '魏可鑫', null, '2011-05-10 17:12:16', null, '127.0.0.1', 'FAF7CE76678768C0DA9CCB6B48E1DF1A');
INSERT INTO `do_log` VALUES ('402880402fd92fd9012fd92fd9370000', '魏可鑫', null, '2011-05-10 17:14:42', '2011-05-10 17:45:03', '127.0.0.1', '2038FD9A3DD12E8C3AF7C8389D6DF367');
INSERT INTO `do_log` VALUES ('402880402fd92fd9012fd92fda120001', '魏可鑫', null, '2011-05-10 17:14:42', '2011-05-10 17:45:03', '127.0.0.1', '2038FD9A3DD12E8C3AF7C8389D6DF367');
INSERT INTO `do_log` VALUES ('402880402fd92fd9012fd930676d0002', '魏可鑫', null, '2011-05-10 17:15:18', null, '127.0.0.1', 'EC738D2783D989AB9358EA52D458EA0D');
INSERT INTO `do_log` VALUES ('402880402fd92fd9012fd930677d0003', '魏可鑫', null, '2011-05-10 17:15:18', null, '127.0.0.1', 'EC738D2783D989AB9358EA52D458EA0D');
INSERT INTO `do_log` VALUES ('402880402fd92fd9012fd9315b620004', 'a', null, '2011-05-10 17:16:21', null, '127.0.0.1', '6CCE73A9A1C4890AE612E53B93192CE3');
INSERT INTO `do_log` VALUES ('402880402fd95baf012fd95baf620000', '魏可鑫', null, '2011-05-10 18:02:35', '2011-05-10 18:35:02', '127.0.0.1', '2C780B48ED8A4EB93B1C7DE2628524C2');
INSERT INTO `do_log` VALUES ('402880402fd95baf012fd95bb02d0001', '魏可鑫', null, '2011-05-10 18:02:35', '2011-05-10 18:35:02', '127.0.0.1', '2C780B48ED8A4EB93B1C7DE2628524C2');
INSERT INTO `do_log` VALUES ('402880402fd95baf012fd9606ce20002', '魏可鑫', null, '2011-05-10 18:07:45', '2011-05-10 18:38:05', '127.0.0.1', '563BCA15E535294A566B5AA208B292F9');
INSERT INTO `do_log` VALUES ('402880402fd95baf012fd9606d010003', '魏可鑫', null, '2011-05-10 18:07:45', '2011-05-10 18:38:05', '127.0.0.1', '563BCA15E535294A566B5AA208B292F9');
INSERT INTO `do_log` VALUES ('402880402fd95baf012fdd1a62d00004', '魏可鑫', null, '2011-05-11 11:29:44', null, '192.168.0.120', '19587C695E42FAFA9A57528D5D450B35');
INSERT INTO `do_log` VALUES ('402880402fd95baf012fdd1a62ef0005', '魏可鑫', null, '2011-05-11 11:29:44', null, '192.168.0.120', '19587C695E42FAFA9A57528D5D450B35');
INSERT INTO `do_log` VALUES ('402880402fd95baf012fdd216ca10006', '魏可鑫', null, '2011-05-11 11:37:25', null, '127.0.0.1', '3EF8AF13D9358B0C4B3C35B7A00C8913');
INSERT INTO `do_log` VALUES ('402880402fd95baf012fdd216cc10007', '魏可鑫', null, '2011-05-11 11:37:25', null, '127.0.0.1', '3EF8AF13D9358B0C4B3C35B7A00C8913');
INSERT INTO `do_log` VALUES ('402880402fdd2e7b012fdd2e7b870000', '魏可鑫', null, '2011-05-11 11:51:41', null, '127.0.0.1', '0BB4DB82A707726725EDCDC801B72785');
INSERT INTO `do_log` VALUES ('402880402fdd2e7b012fdd2e7c520001', '魏可鑫', null, '2011-05-11 11:51:41', null, '127.0.0.1', '0BB4DB82A707726725EDCDC801B72785');
INSERT INTO `do_log` VALUES ('402880402fdd37ae012fdd37ae530000', 'a', null, '2011-05-11 12:01:44', null, '127.0.0.1', '9317BAE0B6A29CD2ADB20D0720055E73');
INSERT INTO `do_log` VALUES ('402880402fdd402a012fdd402aa00000', '魏可鑫', null, '2011-05-11 12:11:00', null, '127.0.0.1', '699F219DA1054EB58F50F1987FC13C38');
INSERT INTO `do_log` VALUES ('402880402fdd402a012fdd402b7b0001', '魏可鑫', null, '2011-05-11 12:11:00', null, '127.0.0.1', '699F219DA1054EB58F50F1987FC13C38');
INSERT INTO `do_log` VALUES ('402880402fdd4242012fdd4242640000', '魏可鑫', null, '2011-05-11 12:13:17', '2011-05-11 12:45:24', '127.0.0.1', 'B9944672DE748138E84441DAEC36D448');
INSERT INTO `do_log` VALUES ('402880402fdd4242012fdd42433f0001', '魏可鑫', null, '2011-05-11 12:13:18', '2011-05-11 12:45:24', '127.0.0.1', 'B9944672DE748138E84441DAEC36D448');
INSERT INTO `do_log` VALUES ('402880402fdd4242012fdd9a4b130002', '魏可鑫', null, '2011-05-11 13:49:27', null, '127.0.0.1', '657C439C90FCBA8E1EDE14A0C034D3C2');
INSERT INTO `do_log` VALUES ('402880402fdd4242012fdd9a4b320003', '魏可鑫', null, '2011-05-11 13:49:27', null, '127.0.0.1', '657C439C90FCBA8E1EDE14A0C034D3C2');
INSERT INTO `do_log` VALUES ('402880402fdda177012fdda177800000', '魏可鑫', null, '2011-05-11 13:57:17', null, '127.0.0.1', '1A93E6D459877D86A6D1CD66B65F8266');
INSERT INTO `do_log` VALUES ('402880402fdda177012fdda1785b0001', '魏可鑫', null, '2011-05-11 13:57:17', null, '127.0.0.1', '1A93E6D459877D86A6D1CD66B65F8266');
INSERT INTO `do_log` VALUES ('402880402fdda177012fdda2cf5f0002', '魏可鑫', null, '2011-05-11 13:58:45', null, '127.0.0.1', '1A93E6D459877D86A6D1CD66B65F8266');
INSERT INTO `do_log` VALUES ('402880402fdda177012fdda2cf7f0003', '魏可鑫', null, '2011-05-11 13:58:45', null, '127.0.0.1', '1A93E6D459877D86A6D1CD66B65F8266');
INSERT INTO `do_log` VALUES ('402880402fdda4d3012fdda4d3da0000', '魏可鑫', null, '2011-05-11 14:00:57', null, '127.0.0.1', '8E8A6124D500296C9A0549A10EED94DB');
INSERT INTO `do_log` VALUES ('402880402fdda4d3012fdda4d4a50001', '魏可鑫', null, '2011-05-11 14:00:57', null, '127.0.0.1', '8E8A6124D500296C9A0549A10EED94DB');
INSERT INTO `do_log` VALUES ('402880402fdda4d3012fdda617950002', 'a', null, '2011-05-11 14:02:20', null, '127.0.0.1', '6345ABDEE42FBA287D6AC0C8C9226914');
INSERT INTO `do_log` VALUES ('402880402fdda896012fdda896510000', '魏可鑫', null, '2011-05-11 14:05:03', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fdda8971c0001', '魏可鑫', null, '2011-05-11 14:05:04', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddac5f5f0002', '魏可鑫', null, '2011-05-11 14:09:12', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddac5f6e0003', '魏可鑫', null, '2011-05-11 14:09:12', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddb4b43e0004', '左朝晖', null, '2011-05-11 14:18:18', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddb4b45e0005', '左朝晖', null, '2011-05-11 14:18:18', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddba99950006', 'a', null, '2011-05-11 14:24:44', null, '127.0.0.1', 'B94234D493B183E3010B4BD2444104DC');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddbaf30f0007', '左朝晖', null, '2011-05-11 14:25:07', null, '127.0.0.1', 'B94234D493B183E3010B4BD2444104DC');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddbaf32f0008', '左朝晖', null, '2011-05-11 14:25:07', null, '127.0.0.1', 'B94234D493B183E3010B4BD2444104DC');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddc20ef2000c', '魏可鑫', null, '2011-05-11 14:32:53', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddc20f02000d', '魏可鑫', null, '2011-05-11 14:32:53', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddc8e31d000e', '魏可鑫', null, '2011-05-11 14:40:20', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddc8e33c000f', '魏可鑫', null, '2011-05-11 14:40:20', null, '127.0.0.1', 'CF53AEB4EB36748D138704594AE80A1A');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddc9fc5d0010', '魏可鑫', null, '2011-05-11 14:41:32', null, '127.0.0.1', 'EE6F77F048C91F929FED9CA79188327F');
INSERT INTO `do_log` VALUES ('402880402fdda896012fddc9fc7c0011', '魏可鑫', null, '2011-05-11 14:41:32', null, '127.0.0.1', 'EE6F77F048C91F929FED9CA79188327F');
INSERT INTO `do_log` VALUES ('402880402fdde91c012fdde91ca00000', '魏可鑫', null, '2011-05-11 15:15:32', null, '127.0.0.1', '2DC2C0F6A9C6154B2BD53DCE55E8163A');
INSERT INTO `do_log` VALUES ('402880402fdde91c012fdde91d6b0001', '魏可鑫', null, '2011-05-11 15:15:32', null, '127.0.0.1', '2DC2C0F6A9C6154B2BD53DCE55E8163A');
INSERT INTO `do_log` VALUES ('402880402fdde91c012fddef862b0002', 'a', null, '2011-05-11 15:22:32', null, '127.0.0.1', '15EB7AF016181549A6DF32D30B86A95C');
INSERT INTO `do_log` VALUES ('402880402fdde91c012fddf430130003', '魏可鑫', null, '2011-05-11 15:27:38', null, '127.0.0.1', '15EB7AF016181549A6DF32D30B86A95C');
INSERT INTO `do_log` VALUES ('402880402fdde91c012fddf430320004', '魏可鑫', null, '2011-05-11 15:27:38', null, '127.0.0.1', '15EB7AF016181549A6DF32D30B86A95C');
INSERT INTO `do_log` VALUES ('402880402fdde91c012fddf5fe8a0005', '袁谐祥', null, '2011-05-11 15:29:36', null, '127.0.0.1', '2954927C0A8B6DC3234CE2A920984A14');
INSERT INTO `do_log` VALUES ('402880402fdde91c012fddf5fe990006', '袁谐祥', null, '2011-05-11 15:29:36', null, '127.0.0.1', '2954927C0A8B6DC3234CE2A920984A14');
INSERT INTO `do_log` VALUES ('402880402fddf7cf012fddf7cf710000', '魏可鑫', null, '2011-05-11 15:31:35', null, '127.0.0.1', '87E59FF209C7D9EE7680AC49BAAD07C4');
INSERT INTO `do_log` VALUES ('402880402fddf7cf012fddf7d04c0001', '魏可鑫', null, '2011-05-11 15:31:36', null, '127.0.0.1', '87E59FF209C7D9EE7680AC49BAAD07C4');
INSERT INTO `do_log` VALUES ('402880402fddf7cf012fde013b8d0002', 'a', null, '2011-05-11 15:41:53', null, '127.0.0.1', '9EC0E3908A4A9937CB1B827EEE4DEC49');
INSERT INTO `do_log` VALUES ('402880402fde18d5012fde18d5ca0000', '魏可鑫', null, '2011-05-11 16:07:40', null, '127.0.0.1', 'AE4817D63858F4EF76D97CB42E2AA49E');
INSERT INTO `do_log` VALUES ('402880402fde18d5012fde18d6a50001', '魏可鑫', null, '2011-05-11 16:07:40', null, '127.0.0.1', 'AE4817D63858F4EF76D97CB42E2AA49E');
INSERT INTO `do_log` VALUES ('402880402fde18d5012fde1a2c800002', 'a', null, '2011-05-11 16:09:07', null, '127.0.0.1', '34595F36F5E04C4EA5410503ACAFD10E');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde1f3a430000', '魏可鑫', null, '2011-05-11 16:14:39', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde1f3b0f0001', '魏可鑫', null, '2011-05-11 16:14:39', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde2055290002', '魏可鑫', null, '2011-05-11 16:15:51', null, '127.0.0.1', '29AC9B6D90CEF5638799899C87F7AA3E');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde2055490003', '魏可鑫', null, '2011-05-11 16:15:51', null, '127.0.0.1', '29AC9B6D90CEF5638799899C87F7AA3E');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde2ed2c20004', '魏可鑫', null, '2011-05-11 16:31:41', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde2ed2e10005', '魏可鑫', null, '2011-05-11 16:31:41', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde3feeb30006', '魏可鑫', null, '2011-05-11 16:50:22', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde3feed20007', '魏可鑫', null, '2011-05-11 16:50:22', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde46051c0008', '魏可鑫', null, '2011-05-11 16:57:01', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde46053c0009', '魏可鑫', null, '2011-05-11 16:57:01', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde596d5f000a', '魏可鑫', null, '2011-05-11 17:18:13', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde1f3a012fde596d6f000b', '魏可鑫', null, '2011-05-11 17:18:13', null, '127.0.0.1', 'F0415A291D6FA70B801430BCFD259575');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde71fe9e0000', '魏可鑫', null, '2011-05-11 17:45:03', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde71ff890001', '魏可鑫', null, '2011-05-11 17:45:03', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde7b59a30002', '魏可鑫', null, '2011-05-11 17:55:16', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde7b59b30003', '魏可鑫', null, '2011-05-11 17:55:16', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde7bd6d20004', '魏可鑫', null, '2011-05-11 17:55:48', '2011-05-11 18:52:25', '127.0.0.1', 'D3CEABA8ACC90123CCCF3BF6226D9FC4');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde7bd6f10005', '魏可鑫', null, '2011-05-11 17:55:48', '2011-05-11 18:52:25', '127.0.0.1', 'D3CEABA8ACC90123CCCF3BF6226D9FC4');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde908fa10006', '魏可鑫', null, '2011-05-11 18:18:26', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde908fc10007', '魏可鑫', null, '2011-05-11 18:18:26', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde93e4790008', '魏可鑫', null, '2011-05-11 18:22:04', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde93e4e70009', '魏可鑫', null, '2011-05-11 18:22:05', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde948240000a', '魏可鑫', null, '2011-05-11 18:22:45', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');
INSERT INTO `do_log` VALUES ('402880402fde71fe012fde94825f000b', '魏可鑫', null, '2011-05-11 18:22:45', '2011-05-11 18:55:29', '127.0.0.1', '7A4B60B1806DE6C7B661E59673528A71');

-- ----------------------------
-- Table structure for `do_log_data`
-- ----------------------------
DROP TABLE IF EXISTS `do_log_data`;
CREATE TABLE `do_log_data` (
  `OBJUID` varchar(32) DEFAULT NULL,
  `TABLE_NAME` varchar(100) DEFAULT NULL,
  `COL_NAME` varchar(100) DEFAULT NULL,
  `WHO_UID` varchar(32) DEFAULT NULL,
  `BO_UID` varchar(32) DEFAULT NULL,
  `COL_UID` varchar(32) DEFAULT NULL,
  `OPER_TYPE` varchar(50) DEFAULT NULL,
  `OPER_DATA` varchar(100) DEFAULT NULL,
  `OPER_TIME` datetime DEFAULT NULL,
  `OPER_DATA_UID` varchar(32) DEFAULT NULL,
  `OPER_PANE_UID` varchar(32) DEFAULT NULL,
  `OLD_VALUE` varchar(2000) DEFAULT NULL,
  `NEW_VALUE` varchar(2000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_log_data
-- ----------------------------

-- ----------------------------
-- Table structure for `do_org_dept`
-- ----------------------------
DROP TABLE IF EXISTS `do_org_dept`;
CREATE TABLE `do_org_dept` (
  `objUid` varchar(32) NOT NULL,
  `dept_code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `leader` varchar(32) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `parentUid` varchar(32) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_org_dept
-- ----------------------------
INSERT INTO `do_org_dept` VALUES ('4028803327bdf14c0127be0c6594001a', '006', '金融产品部', 'tyl', '2', null, null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('4028803327bdf14c0127be0c85a0001b', '007', '银行项目部', 'huangbing', '2', null, null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('4028803327bdf14c0127be0bf6500018', '004', '销售部', 'liuyanjing', '2', null, null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('4028803327bdf14c0127be0bbcf10017', '003', '财务部', 'qyf', '2', null, null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('4028803327bdf14c0127be0abf370014', '002', '总经办', 'lwl', '1', null, null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('4028803327bdf14c0127be0a45930013', '001', '董事会', 'songhp', '1', null, null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('4028803327bdf14c0127be0c3fcd0019', '005', '敏捷平台部', 'zzh', '2', null, null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('4028803327bdf14c0127be0cb21e001c', '008', '业务拓展部', 'hanmin', '1', null, null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('ff80808128c84f570128c853bca90002', '1000', '管理部门', 'advice', '1', '11', null, null, null, null);
INSERT INTO `do_org_dept` VALUES ('ff80808128cd1d9b0128cd6c90e00002', '010', '算法部', 'songbin', '1', '10', null, null, null, null);

-- ----------------------------
-- Table structure for `do_org_role`
-- ----------------------------
DROP TABLE IF EXISTS `do_org_role`;
CREATE TABLE `do_org_role` (
  `objUid` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleId` varchar(50) DEFAULT NULL,
  `parentUid` bigint(20) DEFAULT NULL,
  `degree` int(11) DEFAULT NULL,
  `description` text,
  `creator` varchar(255) DEFAULT NULL,
  `creatDate` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `mVersion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objUid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_org_role
-- ----------------------------
INSERT INTO `do_org_role` VALUES ('4028803327bdf14c0127be042cb90010', '普通员工', '000', null, '1', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327bdf14c0127be04e1a10011', '董事会经理', '002', null, '5', 'f', null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327bdf14c0127be0548e70012', '总经理', '001', null, '2', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327d2145e0127d269dd3900a9', '总经办经理', '003', null, '2', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327d2145e0127d26a9df900aa', '销售部经理', '004', null, '2', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327d2145e0127d26ae2e200ab', '财务部经理', '005', null, '3', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327d2145e0127d26b26a100ac', '敏捷平台部经理', '006', null, '4', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327d2145e0127d26c2fc400ad', '金融产品部经理', '008', null, '2', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327d2145e0127d26c752a00ae', '银行项目部经理', '007', null, '1', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327d2145e0127d26cc58c00af', '业务拓展部经理', '009', null, '3', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327d6fa810127d70037030005', '管理员', '100', null, '4', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('4028803327f9e48a0127fa608ee7001d', '超级管理员', '1000', null, '5', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('402880f92d4fdd1d0122dfce45670008', '行政管理', '014', null, '1', null, null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('402880f92d4fdd1d012d501fc4ba0023', '组领导', '011', null, '1', '日志审批用', null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('402880f92d4fdd1d012d5036d75d0036', '组长', '012', null, '1', '日志审批用', null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('402880f92d4fdd1d012d5039d4c30038', '普通组员', '013', null, '1', '组', null, null, null, null, null);
INSERT INTO `do_org_role` VALUES ('ff80808128cd1d9b0128cd8a8c1c0048', '算法部经理', '010', null, '2', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `do_org_role_conflict`
-- ----------------------------
DROP TABLE IF EXISTS `do_org_role_conflict`;
CREATE TABLE `do_org_role_conflict` (
  `objUid` varchar(32) NOT NULL DEFAULT '',
  `roleUid` varchar(32) DEFAULT NULL,
  `roleConflictUid` varchar(32) DEFAULT NULL,
  `staticType` char(1) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `creatDate` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `mVersion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objUid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of do_org_role_conflict
-- ----------------------------

-- ----------------------------
-- Table structure for `do_org_timespan`
-- ----------------------------
DROP TABLE IF EXISTS `do_org_timespan`;
CREATE TABLE `do_org_timespan` (
  `objUid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `beginTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `creatDate` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `mVersion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objUid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_org_timespan
-- ----------------------------

-- ----------------------------
-- Table structure for `do_org_user`
-- ----------------------------
DROP TABLE IF EXISTS `do_org_user`;
CREATE TABLE `do_org_user` (
  `objuid` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `deptuid` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `mVersion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of do_org_user
-- ----------------------------
INSERT INTO `do_org_user` VALUES ('40288031278ed91501278ed915b30000', 'u', '0005', 'b59c67bf196a4758191e42f76670ceba', '4028803127b6f15a0127b7294a7a0004', null, null, 'u@u.com', null, null, null, null, null, null, null);
INSERT INTO `do_org_user` VALUES ('40288031287fd27f012880415d96006c', 'xz', null, 'c4ca4238a0b923820dcc509a6f75849b', '4028803127b6f15a0127b7294a7a0004', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `do_org_user` VALUES ('40288031287fd27f01288045ecd3006e', 'xw', null, 'c4ca4238a0b923820dcc509a6f75849b', '4028803127b6f15a0127b7294a7a0004', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `do_org_user` VALUES ('40288031287fd27f012880469c2d006f', 'hz', null, 'c4ca4238a0b923820dcc509a6f75849b', '4028803127b6f15a0127b7294a7a0004', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `do_org_user` VALUES ('40288031287fd27f012880472b4e0070', 'wz', null, 'c4ca4238a0b923820dcc509a6f75849b', '4028803127b6f15a0127b7294a7a0004', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `do_org_user` VALUES ('40288031288a2b8501288a3704e00005', 'lz', 'lz', 'd41d8cd98f00b204e9800998ecf8427e', '4028803127b6f15a0127b7294a7a0004', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `do_org_user_delegate`
-- ----------------------------
DROP TABLE IF EXISTS `do_org_user_delegate`;
CREATE TABLE `do_org_user_delegate` (
  `objuid` varchar(32) NOT NULL,
  `user_uid` varchar(50) DEFAULT NULL,
  `delegate_uid` varchar(50) DEFAULT NULL,
  `isValid` char(1) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `note` text,
  `creator` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  `mVersion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_org_user_delegate
-- ----------------------------

-- ----------------------------
-- Table structure for `do_org_user_link`
-- ----------------------------
DROP TABLE IF EXISTS `do_org_user_link`;
CREATE TABLE `do_org_user_link` (
  `objuid` varchar(32) NOT NULL DEFAULT '',
  `dept_uid` varchar(32) NOT NULL DEFAULT '',
  `user_uid` varchar(32) NOT NULL DEFAULT '',
  `user_cn` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_org_user_link
-- ----------------------------
INSERT INTO `do_org_user_link` VALUES ('402881e92f428ba3012f428d16040003', '4028803327bdf14c0127be0c3fcd0019', 'wanghongliang', null);
INSERT INTO `do_org_user_link` VALUES ('402881e92f428ba3012f428d16230004', '4028803327bdf14c0127be0c3fcd0019', 'wkx', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f32faf519001d', '4028803327bdf14c0127be0bbcf10017', 'litr', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f32fc2bd0001f', '4028803327bdf14c0127be0bbcf10017', 'qyf', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f33068459002b', '4028803327bdf14c0127be0c6594001a', 'tyl', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f3307829f002c', '4028803327bdf14c0127be0c85a0001b', 'huangbing', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f330ea6c4002d', '4028803327bdf14c0127be0bf6500018', 'liuyanjing', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f331a4454002f', '4028803327bdf14c0127be0a45930013', 'songhp', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f331b01190030', '4028803327bdf14c0127be0c3fcd0019', 'zzh', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f3325923a0031', '4028803327bdf14c0127be0abf370014', 'lwl', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f332f26390032', '4028803327bdf14c0127be0cb21e001c', 'hanmin', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f340c7211003f', '4028803327bdf14c0127be0bf6500018', 'liangshuang', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f340de4280040', '4028803327bdf14c0127be0bf6500018', 'zhangwei', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f340fa9960041', '4028803327bdf14c0127be0bf6500018', 'wujiang', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f3410bc7f0043', '4028803327bdf14c0127be0bf6500018', 'yangning', null);
INSERT INTO `do_org_user_link` VALUES ('ff8080812f32d8ce012f34162fc10049', '4028803327bdf14c0127be0c3fcd0019', 'yuanxx', null);

-- ----------------------------
-- Table structure for `do_org_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `do_org_user_role`;
CREATE TABLE `do_org_user_role` (
  `OBJUID` varchar(32) NOT NULL,
  `USER_UID` varchar(32) DEFAULT NULL,
  `ROLE_UID` varchar(50) DEFAULT NULL,
  `group_uid` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_org_user_role
-- ----------------------------
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f32fb1963001e', 'litr', '4028803327bdf14c0127be042cb90010', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f32fc566c0020', 'qyf', '4028803327d2145e0127d26ae2e200ab', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f32ffae910021', 'wanghongliang', '4028803327bdf14c0127be042cb90010', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f32ffdcbf0022', 'hanmin', '402880f92d4fdd1d0122dfce45670008', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f330214990023', 'liuyanjing', '4028803327d2145e0127d26a9df900aa', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f330277cb0024', 'huangbing', '4028803327d2145e0127d26c752a00ae', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f3302ab930025', 'songhp', '4028803327bdf14c0127be04e1a10011', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f3302e2b60026', 'zwjia', '4028803327bdf14c0127be0548e70012', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f330310fd0027', 'lwl', '4028803327d2145e0127d269dd3900a9', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f33034bd40028', 'zzh', '4028803327d2145e0127d26b26a100ac', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f3303f05b0029', 'tyl', '4028803327d2145e0127d26c2fc400ad', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f33052bd9002a', 'hanmin', '4028803327d2145e0127d269dd3900a9', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f3410b4010042', 'wujiang', '4028803327bdf14c0127be042cb90010', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f341142780044', 'liangshuang', '4028803327bdf14c0127be042cb90010', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f341155d30045', 'yangning', '4028803327bdf14c0127be042cb90010', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f34116dd80046', 'zhangwei', '4028803327bdf14c0127be042cb90010', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f341410d20047', 'yuanxx', '4028803327bdf14c0127be042cb90010', null);
INSERT INTO `do_org_user_role` VALUES ('ff8080812f32d8ce012f34165937004a', 'yuanxx', '4028803327f9e48a0127fa608ee7001d', null);
INSERT INTO `do_org_user_role` VALUES ('402880402fdda896012fddca5c6f0012', 'wkx', '4028803327bdf14c0127be042cb90010', null);
INSERT INTO `do_org_user_role` VALUES ('402880402fdda896012fddcb32e90013', 'zzh', '4028803327bdf14c0127be042cb90010', null);

-- ----------------------------
-- Table structure for `do_wfi_his_ni_dependency`
-- ----------------------------
DROP TABLE IF EXISTS `do_wfi_his_ni_dependency`;
CREATE TABLE `do_wfi_his_ni_dependency` (
  `objuid` varchar(32) NOT NULL,
  `Pre_NID_UID` varchar(32) DEFAULT NULL,
  `Post_NID_UID` varchar(32) DEFAULT NULL,
  `do_condition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_wfi_his_ni_dependency
-- ----------------------------

-- ----------------------------
-- Table structure for `do_wfi_his_nodeinstance`
-- ----------------------------
DROP TABLE IF EXISTS `do_wfi_his_nodeinstance`;
CREATE TABLE `do_wfi_his_nodeinstance` (
  `OBJUID` varchar(32) NOT NULL,
  `NodeName` varchar(255) NOT NULL,
  `NodeDesc` varchar(1000) DEFAULT NULL,
  `nodeDate` datetime DEFAULT NULL,
  `NodeType` tinyint(4) DEFAULT NULL,
  `authType` int(11) DEFAULT NULL,
  `nodeStateShow` varchar(255) DEFAULT NULL,
  `nodeStateShowBack` varchar(255) DEFAULT NULL,
  `spec_Name` varchar(255) DEFAULT NULL,
  `ExeStatus` tinyint(4) DEFAULT NULL,
  `DecisionExpression` varchar(500) DEFAULT NULL,
  `PI_UID` varchar(50) NOT NULL,
  `scheduleOUUid` varchar(50) DEFAULT NULL,
  `performerUid` varchar(50) DEFAULT NULL,
  `node_uid` varchar(50) DEFAULT NULL,
  `backType` tinyint(4) DEFAULT NULL,
  `pass_txt` varchar(500) DEFAULT NULL,
  `reject_txt` varchar(500) DEFAULT NULL,
  `node_ext1` varchar(500) DEFAULT NULL,
  `node_ext2` varchar(500) DEFAULT NULL,
  `retNodeUID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OBJUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_wfi_his_nodeinstance
-- ----------------------------

-- ----------------------------
-- Table structure for `do_wfi_his_processinstance`
-- ----------------------------
DROP TABLE IF EXISTS `do_wfi_his_processinstance`;
CREATE TABLE `do_wfi_his_processinstance` (
  `OBJUID` varchar(32) NOT NULL,
  `WFI_Name` varchar(255) NOT NULL,
  `PT_Name` varchar(255) NOT NULL,
  `WFI_Desc` varchar(2000) DEFAULT NULL,
  `ExeStatus` tinyint(4) DEFAULT NULL,
  `PT_UID` varchar(50) NOT NULL,
  `startUser` varchar(50) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `curState` varchar(255) DEFAULT NULL,
  `curStateTime` datetime DEFAULT NULL,
  `curStateUser` varchar(50) DEFAULT NULL,
  `rejectTxt` varchar(2000) DEFAULT NULL,
  `instance_uid` varchar(50) DEFAULT NULL,
  `instance2_uid` varchar(32) DEFAULT NULL,
  `instance3_uid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`OBJUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_wfi_his_processinstance
-- ----------------------------

-- ----------------------------
-- Table structure for `do_wfi_his_varinstance`
-- ----------------------------
DROP TABLE IF EXISTS `do_wfi_his_varinstance`;
CREATE TABLE `do_wfi_his_varinstance` (
  `objuid` varchar(32) NOT NULL,
  `varName` varchar(255) NOT NULL,
  `varValue` varchar(255) DEFAULT NULL,
  `pt_var_uid` varchar(32) DEFAULT NULL,
  `PI_UID` varchar(32) NOT NULL,
  `bo_property_uid` varchar(32) DEFAULT NULL,
  `instance_uid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_wfi_his_varinstance
-- ----------------------------

-- ----------------------------
-- Table structure for `do_wfi_ni_dependency`
-- ----------------------------
DROP TABLE IF EXISTS `do_wfi_ni_dependency`;
CREATE TABLE `do_wfi_ni_dependency` (
  `objuid` varchar(32) NOT NULL,
  `Pre_NID_UID` varchar(32) DEFAULT NULL,
  `Post_NID_UID` varchar(32) DEFAULT NULL,
  `do_condition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_wfi_ni_dependency
-- ----------------------------

-- ----------------------------
-- Table structure for `do_wfi_nodeinstance`
-- ----------------------------
DROP TABLE IF EXISTS `do_wfi_nodeinstance`;
CREATE TABLE `do_wfi_nodeinstance` (
  `OBJUID` varchar(32) NOT NULL,
  `NodeName` varchar(255) NOT NULL,
  `NodeDesc` varchar(1000) DEFAULT NULL,
  `nodeDate` datetime DEFAULT NULL,
  `NodeType` tinyint(4) DEFAULT NULL,
  `authType` int(11) DEFAULT NULL,
  `nodeStateShow` varchar(255) DEFAULT NULL,
  `nodeStateShowBack` varchar(255) DEFAULT NULL,
  `spec_Name` varchar(255) DEFAULT NULL,
  `ExeStatus` tinyint(4) DEFAULT NULL,
  `DecisionExpression` varchar(500) DEFAULT NULL,
  `PI_UID` varchar(50) NOT NULL,
  `scheduleOUUid` varchar(50) DEFAULT NULL,
  `performerUid` varchar(50) DEFAULT NULL,
  `node_uid` varchar(50) DEFAULT NULL,
  `backType` tinyint(4) DEFAULT NULL,
  `pass_txt` varchar(500) DEFAULT NULL,
  `reject_txt` varchar(500) DEFAULT NULL,
  `node_ext1` varchar(500) DEFAULT NULL,
  `node_ext2` varchar(500) DEFAULT NULL,
  `retNodeUID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`OBJUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_wfi_nodeinstance
-- ----------------------------

-- ----------------------------
-- Table structure for `do_wfi_processinstance`
-- ----------------------------
DROP TABLE IF EXISTS `do_wfi_processinstance`;
CREATE TABLE `do_wfi_processinstance` (
  `OBJUID` varchar(32) NOT NULL,
  `WFI_Name` varchar(255) NOT NULL,
  `PT_Name` varchar(255) NOT NULL,
  `WFI_Desc` varchar(2000) DEFAULT NULL,
  `ExeStatus` tinyint(4) DEFAULT NULL,
  `PT_UID` varchar(50) NOT NULL,
  `startUser` varchar(50) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `curState` varchar(255) DEFAULT NULL,
  `curStateTime` datetime DEFAULT NULL,
  `curStateUser` varchar(50) DEFAULT NULL,
  `rejectTxt` varchar(2000) DEFAULT NULL,
  `instance_uid` varchar(50) DEFAULT NULL,
  `instance2_uid` varchar(32) DEFAULT NULL,
  `instance3_uid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`OBJUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_wfi_processinstance
-- ----------------------------

-- ----------------------------
-- Table structure for `do_wfi_varinstance`
-- ----------------------------
DROP TABLE IF EXISTS `do_wfi_varinstance`;
CREATE TABLE `do_wfi_varinstance` (
  `objuid` varchar(32) NOT NULL,
  `varName` varchar(255) NOT NULL,
  `varValue` varchar(255) DEFAULT NULL,
  `pt_var_uid` varchar(32) DEFAULT NULL,
  `PI_UID` varchar(32) NOT NULL,
  `bo_property_uid` varchar(32) DEFAULT NULL,
  `instance_uid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of do_wfi_varinstance
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_crew`
-- ----------------------------
DROP TABLE IF EXISTS `emp_crew`;
CREATE TABLE `emp_crew` (
  `objuid` varchar(50) DEFAULT NULL,
  `group_uid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `dept_uid` varchar(50) DEFAULT NULL,
  `role_uid` varchar(50) DEFAULT NULL,
  `isconfirm` varchar(2) DEFAULT NULL,
  `sqtext` text,
  `appdate` varchar(16) DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_crew
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_degree`
-- ----------------------------
DROP TABLE IF EXISTS `emp_degree`;
CREATE TABLE `emp_degree` (
  `objuid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `begindate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `xueli` varchar(50) DEFAULT NULL,
  `xuewei` varchar(50) DEFAULT NULL,
  `note` text,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_degree
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_grouping`
-- ----------------------------
DROP TABLE IF EXISTS `emp_grouping`;
CREATE TABLE `emp_grouping` (
  `objuid` varchar(50) DEFAULT NULL,
  `deptmag_uid` varchar(50) DEFAULT NULL,
  `parentuid` varchar(50) DEFAULT NULL,
  `gdesc` text,
  `gleader_uid` varchar(50) DEFAULT NULL,
  `gsuper_uid` varchar(50) DEFAULT NULL,
  `gproject` varchar(255) DEFAULT NULL,
  `groupstatus` char(1) DEFAULT NULL,
  `effedate` date DEFAULT NULL,
  `creatdate` varchar(16) DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_grouping
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_image`
-- ----------------------------
DROP TABLE IF EXISTS `emp_image`;
CREATE TABLE `emp_image` (
  `objuid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `imgtype` varchar(2) DEFAULT NULL,
  `imgcode` varchar(50) DEFAULT NULL,
  `imgnum` varchar(3) DEFAULT NULL,
  `imgname` varchar(50) DEFAULT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `issuedept` varchar(255) DEFAULT NULL,
  `imgbegindate` date DEFAULT NULL,
  `imgenddate` date DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `note` text,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_image
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_information`
-- ----------------------------
DROP TABLE IF EXISTS `emp_information`;
CREATE TABLE `emp_information` (
  `objuid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pinyin` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `englishname` varchar(50) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL,
  `birthplace` varchar(255) DEFAULT NULL,
  `certtype` varchar(2) DEFAULT NULL,
  `certcode` varchar(50) DEFAULT NULL,
  `banktype` varchar(50) DEFAULT NULL,
  `bankaccount` varchar(50) DEFAULT NULL,
  `zzmm` varchar(50) DEFAULT NULL,
  `zzmm_date` varchar(10) DEFAULT NULL,
  `marrstatus` varchar(2) DEFAULT NULL,
  `huk_type` varchar(2) DEFAULT NULL,
  `huk_addre` varchar(255) DEFAULT NULL,
  `arch_addre` varchar(255) DEFAULT NULL,
  `ifexchange` varchar(255) DEFAULT NULL,
  `often_addre` varchar(255) DEFAULT NULL,
  `often_code` varchar(6) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `heal_height` varchar(10) DEFAULT NULL,
  `heal_weight` varchar(10) DEFAULT NULL,
  `heal_blood` varchar(4) DEFAULT NULL,
  `heal_history` text,
  `rel_name` varchar(50) DEFAULT NULL,
  `rel_deptpos` varchar(255) DEFAULT NULL,
  `rel_self` varchar(50) DEFAULT NULL,
  `hobbies` text,
  `mynote` text,
  `filldate` datetime DEFAULT NULL,
  `joindate` varchar(10) DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_information
-- ----------------------------
INSERT INTO `emp_information` VALUES ('402880f92d171a78012d17d071ab0094', 'yuanxx', '袁谐翔', 'yuanxiexiang', '中国', null, '1', '2010-12-24', '汉族', '广西', '1', '123456789', '1', '1', '团员', '2010-12-24', '1', '2', '1111111111', '111111111', null, '111111111111111', null, null, null, null, '1111', '1111', null, null, null, null, null, null, null, '2010-12-24 17:58:12', '2010-12-24', null, null, null);

-- ----------------------------
-- Table structure for `emp_relations`
-- ----------------------------
DROP TABLE IF EXISTS `emp_relations`;
CREATE TABLE `emp_relations` (
  `objuid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `rel_self` varchar(50) DEFAULT NULL,
  `rel_name` varchar(50) DEFAULT NULL,
  `rel_birthday` date DEFAULT NULL,
  `rel_working` varchar(255) DEFAULT NULL,
  `rel_contact` varchar(50) DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_relations
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_training`
-- ----------------------------
DROP TABLE IF EXISTS `emp_training`;
CREATE TABLE `emp_training` (
  `objuid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `begindate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_training
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_wontitles`
-- ----------------------------
DROP TABLE IF EXISTS `emp_wontitles`;
CREATE TABLE `emp_wontitles` (
  `objuid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `assesstime` date DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_wontitles
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_workexp`
-- ----------------------------
DROP TABLE IF EXISTS `emp_workexp`;
CREATE TABLE `emp_workexp` (
  `objuid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `begindate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `inpost` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `proofuser` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `achievement` text,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_workexp
-- ----------------------------

-- ----------------------------
-- Table structure for `gz_salarymessage`
-- ----------------------------
DROP TABLE IF EXISTS `gz_salarymessage`;
CREATE TABLE `gz_salarymessage` (
  `objuid` varchar(255) NOT NULL DEFAULT '',
  `month` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `basesalary` double(10,2) DEFAULT NULL,
  `buckshee` double(10,2) DEFAULT NULL,
  `rentdeduct` double(10,2) DEFAULT NULL,
  `leavededuct` double(10,2) DEFAULT NULL,
  `factsalary` double(10,2) DEFAULT NULL,
  `payyanglaoinsure` double(10,2) DEFAULT NULL,
  `payshiyeinsure` double(10,2) DEFAULT NULL,
  `payyilaioinsure` double(10,2) DEFAULT NULL,
  `payshebaofee` double(10,2) DEFAULT NULL,
  `payhousingsurplus` double(10,2) DEFAULT NULL,
  `taxbefore` double(10,2) DEFAULT NULL,
  `taxget` double(10,2) DEFAULT NULL,
  `taxlv` varchar(50) DEFAULT NULL,
  `taxrm` double(10,2) DEFAULT NULL,
  `tax` double(10,2) DEFAULT NULL,
  `taxafter` double(10,2) DEFAULT NULL,
  `remark` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of gz_salarymessage
-- ----------------------------

-- ----------------------------
-- Table structure for `gz_sendemail`
-- ----------------------------
DROP TABLE IF EXISTS `gz_sendemail`;
CREATE TABLE `gz_sendemail` (
  `objuid` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `toname` varchar(255) DEFAULT NULL,
  `emailself` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gz_sendemail
-- ----------------------------
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a99fb2770002', '???', 'xutao', null);
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a99fdd9e0003', '???', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a027e50004', '???', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a0463b0005', '??', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a0874b0006', '???', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a0a8700007', '???', 'hanmin', null);
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a0dc030008', '???', 'yuyingjie', 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a0f8550009', '??', 'yuyingjie', null);
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a12ddc000a', '???', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a152b9000b', '???', 'zwjia', null);
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a17cf6000c', '??', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a19689000d', '??', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a1d42e000e', '??', 'zwjia', 'zwjia@zephyr.com.cn');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a1f09f000f', '??', 'zwjia', null);
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a220890010', '???', 'zwjia', null);
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a23c4e0011', '???', 'zwjia', null);
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a26c280012', '????', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a29ed10013', '???', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a2b8060014', '???', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a2ed4f0015', '???', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a993f80128a9a305f70016', '???', null, 'test@test.com');
INSERT INTO `gz_sendemail` VALUES ('4028803328a9eb0a0128a9f7fe390002', '??', 'hanmin', null);
INSERT INTO `gz_sendemail` VALUES ('402880332926f2aa01292b6e45710013', '??', 'zwjia', 'zwjia@zephyr.com.cn');
INSERT INTO `gz_sendemail` VALUES ('402880332926f2aa01292b70a6830014', '???', 'zwjia', 'zwjia@zephyr.com.cn');

-- ----------------------------
-- Table structure for `hr_empappraise`
-- ----------------------------
DROP TABLE IF EXISTS `hr_empappraise`;
CREATE TABLE `hr_empappraise` (
  `EmpAppraiseUID` varchar(50) DEFAULT NULL,
  `EmpUID` varchar(50) DEFAULT NULL,
  `AppraiseType` varchar(20) DEFAULT NULL,
  `AppraiseEmpUID` varchar(50) DEFAULT NULL,
  `AppraiseTime` datetime DEFAULT NULL,
  `AppraiseDesc` text,
  `AppraiseSelfDesc` text,
  `AppraiseFlag` int(10) DEFAULT NULL,
  `AppraiseNotes` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hr_empappraise
-- ----------------------------

-- ----------------------------
-- Table structure for `kh_custominfor`
-- ----------------------------
DROP TABLE IF EXISTS `kh_custominfor`;
CREATE TABLE `kh_custominfor` (
  `CustomUID` varchar(50) DEFAULT NULL,
  `CustomID` varchar(50) DEFAULT NULL,
  `MainSalerUID` varchar(50) DEFAULT NULL,
  `CustomName` varchar(200) DEFAULT NULL,
  `MainLinkManUID` varchar(50) DEFAULT NULL,
  `TelePhone` varchar(50) DEFAULT NULL,
  `CustomState` varchar(20) DEFAULT NULL,
  `AeraCode` varchar(50) DEFAULT NULL,
  `CityCode` varchar(50) DEFAULT NULL,
  `Address` text,
  `ZipCode` varchar(10) DEFAULT NULL,
  `CustomDesc` text,
  `CustNotes` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kh_custominfor
-- ----------------------------
INSERT INTO `kh_custominfor` VALUES ('402880402fd91eac012fd926d347000b', 'NO.1', 'fanlei', '民生银行', '民生银行', '88888', '正常', '华北', null, null, null, null, null);

-- ----------------------------
-- Table structure for `link_app_emp`
-- ----------------------------
DROP TABLE IF EXISTS `link_app_emp`;
CREATE TABLE `link_app_emp` (
  `appempUID` varchar(50) DEFAULT NULL,
  `manage_uid` varchar(50) DEFAULT NULL,
  `emp_uid` varchar(50) DEFAULT NULL,
  `backup1` varchar(255) DEFAULT NULL,
  `backup2` varchar(255) DEFAULT NULL,
  `backup3` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of link_app_emp
-- ----------------------------

-- ----------------------------
-- Table structure for `nwp_comments`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_comments`;
CREATE TABLE `nwp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` int(11) NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_comments
-- ----------------------------
INSERT INTO `nwp_comments` VALUES ('1', '1', 'Mr nWordPress', '', 'http://wordpress.org/', '', '2011-01-07 15:25:07', '2011-01-07 07:25:07', 'Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', '0', '1', '', '', '0', '0');

-- ----------------------------
-- Table structure for `nwp_links`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_links`;
CREATE TABLE `nwp_links` (
  `link_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_category` bigint(20) NOT NULL DEFAULT '0',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` int(11) NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_category` (`link_category`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_links
-- ----------------------------
INSERT INTO `nwp_links` VALUES ('1', 'http://codex.wordpress.org/', 'WordPress Docs', '', '', '0', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `nwp_links` VALUES ('2', 'http://wordpress.org/support/', 'Support Forum', '', '', '0', '', 'Y', '1', '0', '0000-00-00 00:00:00', '', '', '');

-- ----------------------------
-- Table structure for `nwp_options`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_options`;
CREATE TABLE `nwp_options` (
  `option_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`,`blog_id`,`option_name`),
  KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_options
-- ----------------------------
INSERT INTO `nwp_options` VALUES ('1', '0', 'siteurl', 'http://127.0.0.1:8080/nwp', 'yes');
INSERT INTO `nwp_options` VALUES ('2', '0', 'blogname', 'hello kitty', 'yes');
INSERT INTO `nwp_options` VALUES ('3', '0', 'blogdescription', 'Just another nWordPress weblog', 'yes');
INSERT INTO `nwp_options` VALUES ('4', '0', 'users_can_register', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('5', '0', 'admin_email', 'toweikexin@126.com', 'yes');
INSERT INTO `nwp_options` VALUES ('6', '0', 'start_of_week', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('7', '0', 'use_balanceTags', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('8', '0', 'use_smilies', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('9', '0', 'require_name_email', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('10', '0', 'comments_notify', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('11', '0', 'posts_per_rss', '10', 'yes');
INSERT INTO `nwp_options` VALUES ('12', '0', 'rss_excerpt_length', '50', 'yes');
INSERT INTO `nwp_options` VALUES ('13', '0', 'rss_use_excerpt', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('14', '0', 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `nwp_options` VALUES ('15', '0', 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `nwp_options` VALUES ('16', '0', 'mailserver_pass', 'password', 'yes');
INSERT INTO `nwp_options` VALUES ('17', '0', 'mailserver_port', '110', 'yes');
INSERT INTO `nwp_options` VALUES ('18', '0', 'default_category', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('19', '0', 'default_comment_status', 'open', 'yes');
INSERT INTO `nwp_options` VALUES ('20', '0', 'default_ping_status', 'open', 'yes');
INSERT INTO `nwp_options` VALUES ('21', '0', 'default_pingback_flag', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('22', '0', 'default_post_edit_rows', '10', 'yes');
INSERT INTO `nwp_options` VALUES ('23', '0', 'posts_per_page', '10', 'yes');
INSERT INTO `nwp_options` VALUES ('24', '0', 'what_to_show', 'posts', 'yes');
INSERT INTO `nwp_options` VALUES ('25', '0', 'date_format', 'F j, Y', 'yes');
INSERT INTO `nwp_options` VALUES ('26', '0', 'time_format', 'g:i a', 'yes');
INSERT INTO `nwp_options` VALUES ('27', '0', 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `nwp_options` VALUES ('28', '0', 'links_recently_updated_prepend', '<em>', 'yes');
INSERT INTO `nwp_options` VALUES ('29', '0', 'links_recently_updated_append', '</em>', 'yes');
INSERT INTO `nwp_options` VALUES ('30', '0', 'links_recently_updated_time', '120', 'yes');
INSERT INTO `nwp_options` VALUES ('31', '0', 'comment_moderation', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('32', '0', 'moderation_notify', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('33', '0', 'permalink_structure', '', 'yes');
INSERT INTO `nwp_options` VALUES ('34', '0', 'gzipcompression', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('35', '0', 'hack_file', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('36', '0', 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `nwp_options` VALUES ('37', '0', 'moderation_keys', '', 'no');
INSERT INTO `nwp_options` VALUES ('38', '0', 'active_plugins', '', 'yes');
INSERT INTO `nwp_options` VALUES ('39', '0', 'home', 'http://127.0.0.1:8080/nwp', 'yes');
INSERT INTO `nwp_options` VALUES ('40', '0', 'category_base', '', 'yes');
INSERT INTO `nwp_options` VALUES ('41', '0', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `nwp_options` VALUES ('42', '0', 'advanced_edit', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('43', '0', 'comment_max_links', '2', 'yes');
INSERT INTO `nwp_options` VALUES ('44', '0', 'gmt_offset', '8.0', 'yes');
INSERT INTO `nwp_options` VALUES ('45', '0', 'default_email_category', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('46', '0', 'recently_edited', '', 'no');
INSERT INTO `nwp_options` VALUES ('47', '0', 'use_linksupdate', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('48', '0', 'template', 'classic', 'yes');
INSERT INTO `nwp_options` VALUES ('49', '0', 'stylesheet', 'classic', 'yes');
INSERT INTO `nwp_options` VALUES ('50', '0', 'comment_whitelist', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('51', '0', 'page_uris', '', 'yes');
INSERT INTO `nwp_options` VALUES ('52', '0', 'blacklist_keys', '', 'no');
INSERT INTO `nwp_options` VALUES ('53', '0', 'comment_registration', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('54', '0', 'rss_language', 'en', 'yes');
INSERT INTO `nwp_options` VALUES ('55', '0', 'html_type', 'text/html', 'yes');
INSERT INTO `nwp_options` VALUES ('56', '0', 'use_trackback', '0', 'yes');
INSERT INTO `nwp_options` VALUES ('57', '0', 'default_role', 'subscriber', 'yes');
INSERT INTO `nwp_options` VALUES ('58', '0', 'db_version', '7796', 'yes');
INSERT INTO `nwp_options` VALUES ('59', '0', 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('60', '0', 'upload_path', 'wp-content/uploads', 'yes');
INSERT INTO `nwp_options` VALUES ('61', '0', 'secret', 'dhuKF5VjXHJYDOGMf9cpSLwvYkm9WuXwp7KkPh2LqJmr5iFlPh6cwVbDzTHyx9Oh', 'yes');
INSERT INTO `nwp_options` VALUES ('62', '0', 'blog_public', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('63', '0', 'default_link_category', '2', 'yes');
INSERT INTO `nwp_options` VALUES ('64', '0', 'show_on_front', 'posts', 'yes');
INSERT INTO `nwp_options` VALUES ('65', '0', 'tag_base', '', 'yes');
INSERT INTO `nwp_options` VALUES ('66', '0', 'show_avatars', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('67', '0', 'avatar_rating', 'G', 'yes');
INSERT INTO `nwp_options` VALUES ('68', '0', 'upload_url_path', '', 'yes');
INSERT INTO `nwp_options` VALUES ('69', '0', 'thumbnail_size_w', '150', 'yes');
INSERT INTO `nwp_options` VALUES ('70', '0', 'thumbnail_size_h', '150', 'yes');
INSERT INTO `nwp_options` VALUES ('71', '0', 'thumbnail_crop', '1', 'yes');
INSERT INTO `nwp_options` VALUES ('72', '0', 'medium_size_w', '300', 'yes');
INSERT INTO `nwp_options` VALUES ('73', '0', 'medium_size_h', '300', 'yes');
INSERT INTO `nwp_options` VALUES ('74', '0', 'nwp_user_roles', 'rO0ABXNyABdjb20ubnVtaXRvbi5hcnJheS5BcnJheaIE3/hmVZ9ZAgADSQAKY3VycmVudFBvc0kACmtleUNvdW50ZXJMAANtYXB0ABlMamF2YS91dGlsL0xpbmtlZEhhc2hNYXA7eHAAAAAA/////3NyABdqYXZhLnV0aWwuTGlua2VkSGFzaE1hcDTATlwQbMD7AgABWgALYWNjZXNzT3JkZXJ4cgARamF2YS51dGlsLkhhc2hNYXAFB9rBwxZg0QMAAkYACmxvYWRGYWN0b3JJAAl0aHJlc2hvbGR4cD9AAAAAAAAMdwgAAAAQAAAABXQADWFkbWluaXN0cmF0b3JzcgAXY29tLm51bWl0b24uZ2VuZXJpYy5SZWaDyWpW1J4oYwIAAUwABXZhbHVldAASTGphdmEvbGFuZy9PYmplY3Q7eHBzcQB+AAAAAAAA/////3NxAH4AAz9AAAAAAAAMdwgAAAAQAAAAAnQABG5hbWVzcQB+AAd0ABdBZG1pbmlzdHJhdG9yfFVzZXIgcm9sZXQADGNhcGFiaWxpdGllc3NxAH4AB3NxAH4AAAAAAAD/////c3EAfgADP0AAAAAAAGB3CAAAAIAAAAAxdAANc3dpdGNoX3RoZW1lc3NxAH4AB3NyABFqYXZhLmxhbmcuQm9vbGVhbs0gcoDVnPruAgABWgAFdmFsdWV4cAF0AAtlZGl0X3RoZW1lc3NxAH4AB3EAfgAWdAAQYWN0aXZhdGVfcGx1Z2luc3NxAH4AB3EAfgAWdAAMZWRpdF9wbHVnaW5zc3EAfgAHcQB+ABZ0AAplZGl0X3VzZXJzc3EAfgAHcQB+ABZ0AAplZGl0X2ZpbGVzc3EAfgAHcQB+ABZ0AA5tYW5hZ2Vfb3B0aW9uc3NxAH4AB3EAfgAWdAARbW9kZXJhdGVfY29tbWVudHNzcQB+AAdxAH4AFnQAEW1hbmFnZV9jYXRlZ29yaWVzc3EAfgAHcQB+ABZ0AAxtYW5hZ2VfbGlua3NzcQB+AAdxAH4AFnQADHVwbG9hZF9maWxlc3NxAH4AB3EAfgAWdAAGaW1wb3J0c3EAfgAHcQB+ABZ0AA91bmZpbHRlcmVkX2h0bWxzcQB+AAdxAH4AFnQACmVkaXRfcG9zdHNzcQB+AAdxAH4AFnQAEWVkaXRfb3RoZXJzX3Bvc3Rzc3EAfgAHcQB+ABZ0ABRlZGl0X3B1Ymxpc2hlZF9wb3N0c3NxAH4AB3EAfgAWdAANcHVibGlzaF9wb3N0c3NxAH4AB3EAfgAWdAAKZWRpdF9wYWdlc3NxAH4AB3EAfgAWdAAEcmVhZHNxAH4AB3EAfgAWdAAIbGV2ZWxfMTBzcQB+AAdxAH4AFnQAB2xldmVsXzlzcQB+AAdxAH4AFnQAB2xldmVsXzhzcQB+AAdxAH4AFnQAB2xldmVsXzdzcQB+AAdxAH4AFnQAB2xldmVsXzZzcQB+AAdxAH4AFnQAB2xldmVsXzVzcQB+AAdxAH4AFnQAB2xldmVsXzRzcQB+AAdxAH4AFnQAB2xldmVsXzNzcQB+AAdxAH4AFnQAB2xldmVsXzJzcQB+AAdxAH4AFnQAB2xldmVsXzFzcQB+AAdxAH4AFnQAB2xldmVsXzBzcQB+AAdxAH4AFnQAEWVkaXRfb3RoZXJzX3BhZ2Vzc3EAfgAHcQB+ABZ0ABRlZGl0X3B1Ymxpc2hlZF9wYWdlc3NxAH4AB3EAfgAWdAANcHVibGlzaF9wYWdlc3NxAH4AB3EAfgAWdAAMZGVsZXRlX3BhZ2Vzc3EAfgAHcQB+ABZ0ABNkZWxldGVfb3RoZXJzX3BhZ2Vzc3EAfgAHcQB+ABZ0ABZkZWxldGVfcHVibGlzaGVkX3BhZ2Vzc3EAfgAHcQB+ABZ0AAxkZWxldGVfcG9zdHNzcQB+AAdxAH4AFnQAE2RlbGV0ZV9vdGhlcnNfcG9zdHNzcQB+AAdxAH4AFnQAFmRlbGV0ZV9wdWJsaXNoZWRfcG9zdHNzcQB+AAdxAH4AFnQAFGRlbGV0ZV9wcml2YXRlX3Bvc3Rzc3EAfgAHcQB+ABZ0ABJlZGl0X3ByaXZhdGVfcG9zdHNzcQB+AAdxAH4AFnQAEnJlYWRfcHJpdmF0ZV9wb3N0c3NxAH4AB3EAfgAWdAAUZGVsZXRlX3ByaXZhdGVfcGFnZXNzcQB+AAdxAH4AFnQAEmVkaXRfcHJpdmF0ZV9wYWdlc3NxAH4AB3EAfgAWdAAScmVhZF9wcml2YXRlX3BhZ2Vzc3EAfgAHcQB+ABZ0AAxkZWxldGVfdXNlcnNzcQB+AAdxAH4AFnQADGNyZWF0ZV91c2Vyc3NxAH4AB3EAfgAWdAARdW5maWx0ZXJlZF91cGxvYWRzcQB+AAdxAH4AFnQADmVkaXRfZGFzaGJvYXJkc3EAfgAHcQB+ABZ4AHgAdAAGZWRpdG9yc3EAfgAHc3EAfgAAAAAAAP////9zcQB+AAM/QAAAAAAADHcIAAAAEAAAAAJxAH4ADHNxAH4AB3QAEEVkaXRvcnxVc2VyIHJvbGVxAH4AD3NxAH4AB3NxAH4AAAAAAAD/////c3EAfgADP0AAAAAAADB3CAAAAEAAAAAicQB+ACNzcQB+AAdxAH4AFnEAfgAlc3EAfgAHcQB+ABZxAH4AJ3NxAH4AB3EAfgAWcQB+AClzcQB+AAdxAH4AFnEAfgAtc3EAfgAHcQB+ABZxAH4AL3NxAH4AB3EAfgAWcQB+ADFzcQB+AAdxAH4AFnEAfgAzc3EAfgAHcQB+ABZxAH4ANXNxAH4AB3EAfgAWcQB+ADdzcQB+AAdxAH4AFnEAfgA5c3EAfgAHcQB+ABZxAH4AQXNxAH4AB3EAfgAWcQB+AENzcQB+AAdxAH4AFnEAfgBFc3EAfgAHcQB+ABZxAH4AR3NxAH4AB3EAfgAWcQB+AElzcQB+AAdxAH4AFnEAfgBLc3EAfgAHcQB+ABZxAH4ATXNxAH4AB3EAfgAWcQB+AE9zcQB+AAdxAH4AFnEAfgBRc3EAfgAHcQB+ABZxAH4AU3NxAH4AB3EAfgAWcQB+AFVzcQB+AAdxAH4AFnEAfgBXc3EAfgAHcQB+ABZxAH4AWXNxAH4AB3EAfgAWcQB+AFtzcQB+AAdxAH4AFnEAfgBdc3EAfgAHcQB+ABZxAH4AX3NxAH4AB3EAfgAWcQB+AGFzcQB+AAdxAH4AFnEAfgBjc3EAfgAHcQB+ABZxAH4AZXNxAH4AB3EAfgAWcQB+AGdzcQB+AAdxAH4AFnEAfgBpc3EAfgAHcQB+ABZxAH4Aa3NxAH4AB3EAfgAWcQB+AG1zcQB+AAdxAH4AFngAeAB0AAZhdXRob3JzcQB+AAdzcQB+AAAAAAAA/////3NxAH4AAz9AAAAAAAAMdwgAAAAQAAAAAnEAfgAMc3EAfgAHdAAQQXV0aG9yfFVzZXIgcm9sZXEAfgAPc3EAfgAHc3EAfgAAAAAAAP////9zcQB+AAM/QAAAAAAADHcIAAAAEAAAAApxAH4AKXNxAH4AB3EAfgAWcQB+AC9zcQB+AAdxAH4AFnEAfgAzc3EAfgAHcQB+ABZxAH4ANXNxAH4AB3EAfgAWcQB+ADlzcQB+AAdxAH4AFnEAfgBLc3EAfgAHcQB+ABZxAH4ATXNxAH4AB3EAfgAWcQB+AE9zcQB+AAdxAH4AFnEAfgBdc3EAfgAHcQB+ABZxAH4AYXNxAH4AB3EAfgAWeAB4AHQAC2NvbnRyaWJ1dG9yc3EAfgAHc3EAfgAAAAAAAP////9zcQB+AAM/QAAAAAAADHcIAAAAEAAAAAJxAH4ADHNxAH4AB3QAFUNvbnRyaWJ1dG9yfFVzZXIgcm9sZXEAfgAPc3EAfgAHc3EAfgAAAAAAAP////9zcQB+AAM/QAAAAAAADHcIAAAAEAAAAAVxAH4AL3NxAH4AB3EAfgAWcQB+ADlzcQB+AAdxAH4AFnEAfgBNc3EAfgAHcQB+ABZxAH4AT3NxAH4AB3EAfgAWcQB+AF1zcQB+AAdxAH4AFngAeAB0AApzdWJzY3JpYmVyc3EAfgAHc3EAfgAAAAAAAP////9zcQB+AAM/QAAAAAAADHcIAAAAEAAAAAJxAH4ADHNxAH4AB3QAFFN1YnNjcmliZXJ8VXNlciByb2xlcQB+AA9zcQB+AAdzcQB+AAAAAAAA/////3NxAH4AAz9AAAAAAAAMdwgAAAAQAAAAAnEAfgA5c3EAfgAHcQB+ABZxAH4AT3NxAH4AB3EAfgAWeAB4AHgA', 'yes');
INSERT INTO `nwp_options` VALUES ('75', '0', 'rewrite_rules', 'rO0ABXNyABdjb20ubnVtaXRvbi5hcnJheS5BcnJheaIE3/hmVZ9ZAgADSQAKY3VycmVudFBvc0kACmtleUNvdW50ZXJMAANtYXB0ABlMamF2YS91dGlsL0xpbmtlZEhhc2hNYXA7eHAAAAAA/////3NyABdqYXZhLnV0aWwuTGlua2VkSGFzaE1hcDTATlwQbMD7AgABWgALYWNjZXNzT3JkZXJ4cgARamF2YS51dGlsLkhhc2hNYXAFB9rBwxZg0QMAAkYACmxvYWRGYWN0b3JJAAl0aHJlc2hvbGR4cD9AAAAAAAAMdwgAAAAQAAAAAHgA', 'yes');
INSERT INTO `nwp_options` VALUES ('76', '0', 'update_core', 'rO0ABXNyABxjb20ubnVtaXRvbi5nZW5lcmljLlN0ZENsYXNzz4DgayhtfMoCAAFMAAZmaWVsZHN0ABlMY29tL251bWl0b24vYXJyYXkvQXJyYXk7eHBzcgAXY29tLm51bWl0b24uYXJyYXkuQXJyYXmiBN/4ZlWfWQIAA0kACmN1cnJlbnRQb3NJAAprZXlDb3VudGVyTAADbWFwdAAZTGphdmEvdXRpbC9MaW5rZWRIYXNoTWFwO3hwAAAAAP////9zcgAXamF2YS51dGlsLkxpbmtlZEhhc2hNYXA0wE5cEGzA+wIAAVoAC2FjY2Vzc09yZGVyeHIAEWphdmEudXRpbC5IYXNoTWFwBQfawcMWYNEDAAJGAApsb2FkRmFjdG9ySQAJdGhyZXNob2xkeHA/QAAAAAAADHcIAAAAEAAAAAV0AAxsYXN0X2NoZWNrZWRzcgAXY29tLm51bWl0b24uZ2VuZXJpYy5SZWaDyWpW1J4oYwIAAUwABXZhbHVldAASTGphdmEvbGFuZy9PYmplY3Q7eHBzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwTSa/4nQAD3ZlcnNpb25fY2hlY2tlZHNxAH4ACnQABTIuNS4xdAAIcmVzcG9uc2VzcQB+AAp0AAd1cGdyYWRldAADdXJsc3EAfgAKdAAeaHR0cDovL3dvcmRwcmVzcy5vcmcvZG93bmxvYWQvdAAHY3VycmVudHNxAH4ACnQABTMuMC40eAA=', 'yes');
INSERT INTO `nwp_options` VALUES ('77', '0', 'dashboard_widget_options', 'rO0ABXNyABdjb20ubnVtaXRvbi5hcnJheS5BcnJheaIE3/hmVZ9ZAgADSQAKY3VycmVudFBvc0kACmtleUNvdW50ZXJMAANtYXB0ABlMamF2YS91dGlsL0xpbmtlZEhhc2hNYXA7eHAAAAAA/////3NyABdqYXZhLnV0aWwuTGlua2VkSGFzaE1hcDTATlwQbMD7AgABWgALYWNjZXNzT3JkZXJ4cgARamF2YS51dGlsLkhhc2hNYXAFB9rBwxZg0QMAAkYACmxvYWRGYWN0b3JJAAl0aHJlc2hvbGR4cD9AAAAAAAAMdwgAAAAQAAAAA3QAGGRhc2hib2FyZF9pbmNvbWluZ19saW5rc3NyABdjb20ubnVtaXRvbi5nZW5lcmljLlJlZoPJalbUnihjAgABTAAFdmFsdWV0ABJMamF2YS9sYW5nL09iamVjdDt4cHNxAH4AAAAAAAD/////c3EAfgADP0AAAAAAAAx3CAAAABAAAAAEdAAEbGlua3NxAH4AB3QAa2h0dHA6Ly9ibG9nc2VhcmNoLmdvb2dsZS5jb20vYmxvZ3NlYXJjaD9obD1lbiZzY29yaW5nPWQmcGFydG5lcj13b3JkcHJlc3MmcT1saW5rOmh0dHA6Ly8xMjcuMC4wLjE6ODA4MC9ud3AvdAADdXJsc3EAfgAHdACMaHR0cDovL2Jsb2dzZWFyY2guZ29vZ2xlLmNvbS9ibG9nc2VhcmNoX2ZlZWRzP2hsPWVuJnNjb3Jpbmc9ZCZpZT11dGYtOCZudW09MTAmb3V0cHV0PXJzcyZwYXJ0bmVyPXdvcmRwcmVzcyZxPWxpbms6aHR0cDovLzEyNy4wLjAuMTo4MDgwL253cC90AAVpdGVtc3NxAH4AB3NyABFqYXZhLmxhbmcuSW50ZWdlchLioKT3gYc4AgABSQAFdmFsdWV4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHAAAAAFdAAJc2hvd19kYXRlc3EAfgAHc3EAfgAUAAAAAHgAdAARZGFzaGJvYXJkX3ByaW1hcnlzcQB+AAdzcQB+AAAAAAAA/////3NxAH4AAz9AAAAAAAAMdwgAAAAQAAAAB3EAfgAMc3EAfgAHdAAhaHR0cDovL3dvcmRwcmVzcy5vcmcvZGV2ZWxvcG1lbnQvcQB+AA9zcQB+AAd0ACZodHRwOi8vd29yZHByZXNzLm9yZy9kZXZlbG9wbWVudC9mZWVkL3QABXRpdGxlc3EAfgAHdAAaV29yZFByZXNzIERldmVsb3BtZW50IEJsb2dxAH4AEnNxAH4AB3NxAH4AFAAAAAJ0AAxzaG93X3N1bW1hcnlzcQB+AAdzcQB+ABQAAAABdAALc2hvd19hdXRob3JzcQB+AAdxAH4AGXEAfgAXc3EAfgAHcQB+ACl4AHQAE2Rhc2hib2FyZF9zZWNvbmRhcnlzcQB+AAdzcQB+AAAAAAAA/////3NxAH4AAz9AAAAAAAAMdwgAAAAQAAAABHEAfgAMc3EAfgAHdAAcaHR0cDovL3BsYW5ldC53b3JkcHJlc3Mub3JnL3EAfgAPc3EAfgAHdAAhaHR0cDovL3BsYW5ldC53b3JkcHJlc3Mub3JnL2ZlZWQvcQB+ACJzcQB+AAd0ABRPdGhlciBXb3JkUHJlc3MgTmV3c3EAfgASc3EAfgAHc3EAfgAUAAAAD3gAeAA=', 'yes');
INSERT INTO `nwp_options` VALUES ('79', '0', 'sidebars_widgets', 'rO0ABXNyABdjb20ubnVtaXRvbi5hcnJheS5BcnJheaIE3/hmVZ9ZAgADSQAKY3VycmVudFBvc0kACmtleUNvdW50ZXJMAANtYXB0ABlMamF2YS91dGlsL0xpbmtlZEhhc2hNYXA7eHAAAAAA/////3NyABdqYXZhLnV0aWwuTGlua2VkSGFzaE1hcDTATlwQbMD7AgABWgALYWNjZXNzT3JkZXJ4cgARamF2YS51dGlsLkhhc2hNYXAFB9rBwxZg0QMAAkYACmxvYWRGYWN0b3JJAAl0aHJlc2hvbGR4cD9AAAAAAAAMdwgAAAAQAAAAAXQADWFycmF5X3ZlcnNpb25zcgAXY29tLm51bWl0b24uZ2VuZXJpYy5SZWaDyWpW1J4oYwIAAUwABXZhbHVldAASTGphdmEvbGFuZy9PYmplY3Q7eHBzcgARamF2YS5sYW5nLkludGVnZXIS4qCk94GHOAIAAUkABXZhbHVleHIAEGphdmEubGFuZy5OdW1iZXKGrJUdC5TgiwIAAHhwAAAAA3gA', 'yes');
INSERT INTO `nwp_options` VALUES ('80', '0', 'rss_011bc9197acac28ce03640b60250d7ec', 'rO0ABXNyACVvcmcubnVtaXRvbi5ud3Aud3BfaW5jbHVkZXMuTWFncGllUlNTK6X9PMVTR84CABdJAApmcm9tX2NhY2hlWgAJaW5jaGFubmVsWgAHaW5pbWFnZVoABmluaXRlbVoAC2ludGV4dGlucHV0SQAGcGFyc2VyTAAFRVJST1J0ABJMamF2YS9sYW5nL09iamVjdDtMABNfQ09OVEVOVF9DT05TVFJVQ1RTdAAZTGNvbS9udW1pdG9uL2FycmF5L0FycmF5O0wAB2NoYW5uZWxxAH4AAkwADWN1cnJlbnRfZmllbGR0ABJMamF2YS9sYW5nL1N0cmluZztMAAxjdXJyZW50X2l0ZW1xAH4AAkwAEWN1cnJlbnRfbmFtZXNwYWNlcQB+AANMAARldGFncQB+AANMABVmZWVkX3N0YXJ0X2VsZW1lbnRfZWxxAH4AA0wAFWZlZWRfc3RhcnRfZWxlbWVudF9uc3EAfgADTAAJZmVlZF90eXBlcQB+AAFMAAxmZWVkX3ZlcnNpb25xAH4AA0wABWltYWdlcQB+AAJMAAlpbmNvbnRlbnRxAH4AA0wABWl0ZW1zcQB+AAJMAA1sYXN0X21vZGlmaWVkcQB+AANMAAVzdGFja3EAfgACTAAJdGV4dGlucHV0cQB+AAJ4cAAAAAAAAAAAAAAAEnBzcgAXY29tLm51bWl0b24uYXJyYXkuQXJyYXmiBN/4ZlWfWQIAA0kACmN1cnJlbnRQb3NJAAprZXlDb3VudGVyTAADbWFwdAAZTGphdmEvdXRpbC9MaW5rZWRIYXNoTWFwO3hwAAAAAAAAAAVzcgAXamF2YS51dGlsLkxpbmtlZEhhc2hNYXA0wE5cEGzA+wIAAVoAC2FjY2Vzc09yZGVyeHIAEWphdmEudXRpbC5IYXNoTWFwBQfawcMWYNEDAAJGAApsb2FkRmFjdG9ySQAJdGhyZXNob2xkeHA/QAAAAAAADHcIAAAAEAAAAAZ0AAEwc3IAF2NvbS5udW1pdG9uLmdlbmVyaWMuUmVmg8lqVtSeKGMCAAFMAAV2YWx1ZXEAfgABeHB0AAdjb250ZW50dAABMXNxAH4ADHQAB3N1bW1hcnl0AAEyc3EAfgAMdAAEaW5mb3QAATNzcQB+AAx0AAV0aXRsZXQAATRzcQB+AAx0AAd0YWdsaW5ldAABNXNxAH4ADHQACWNvcHlyaWdodHgAc3EAfgAFAAAAAP////9zcQB+AAg/QAAAAAAADHcIAAAAEAAAAAV0AAV0aXRsZXNxAH4ADHQANGxpbms6aHR0cDovLzEyNy4wLjAuMTo4MDgwL253cC8gLSBHb29nbGUgQmxvZyBTZWFyY2h0AARsaW5rc3EAfgAMdABuaHR0cDovL2Jsb2dzZWFyY2guZ29vZ2xlLmNvbS9ibG9nc2VhcmNoP2hsPWVuJnNjb3Jpbmc9ZCZpZT1JU08tODg1OS0xJm51bT0xMCZxPWxpbms6aHR0cDovLzEyNy4wLjAuMTo4MDgwL253cC90AAtkZXNjcmlwdGlvbnNxAH4ADHQAVllvdXIgc2VhcmNoIC0gPGI+bGluazpodHRwOi8vMTI3LjAuMC4xOjgwODAvbndwLzwvYj4gLSBkaWQgbm90IG1hdGNoIGFueSBkb2N1bWVudHMuICAgdAAKb3BlbnNlYXJjaHNxAH4ADHNxAH4ABQAAAAD/////c3EAfgAIP0AAAAAAAAx3CAAAABAAAAADdAAMdG90YWxyZXN1bHRzc3EAfgAMdAABMHQACnN0YXJ0aW5kZXhzcQB+AAx0AAExdAAMaXRlbXNwZXJwYWdlc3EAfgAMdAACMTB4AHEAfgAac3EAfgAMcQB+ACh4AHQAAHNxAH4ABQAAAAD/////c3EAfgAIP0AAAAAAAAx3CAAAABAAAAAAeABxAH4AN3B0AAxpdGVtc3BlcnBhZ2V0AApvcGVuc2VhcmNodAADUlNTdAADMi4wc3EAfgAFAAAAAP////9zcQB+AAg/QAAAAAAADHcIAAAAEAAAAAB4AHBzcQB+AAUAAAAA/////3NxAH4ACD9AAAAAAAAMdwgAAAAQAAAAAHgAcHNxAH4ABQAAAAD/////c3EAfgAIP0AAAAAAAAx3CAAAABAAAAAAeABzcQB+AAUAAAAA/////3NxAH4ACD9AAAAAAAAMdwgAAAAQAAAAAHgA', 'no');
INSERT INTO `nwp_options` VALUES ('81', '0', 'rss_011bc9197acac28ce03640b60250d7ec_ts', '1294385142', 'no');
INSERT INTO `nwp_options` VALUES ('82', '0', 'category_children', 'rO0ABXNyABdjb20ubnVtaXRvbi5hcnJheS5BcnJheaIE3/hmVZ9ZAgADSQAKY3VycmVudFBvc0kACmtleUNvdW50ZXJMAANtYXB0ABlMamF2YS91dGlsL0xpbmtlZEhhc2hNYXA7eHAAAAAA/////3NyABdqYXZhLnV0aWwuTGlua2VkSGFzaE1hcDTATlwQbMD7AgABWgALYWNjZXNzT3JkZXJ4cgARamF2YS51dGlsLkhhc2hNYXAFB9rBwxZg0QMAAkYACmxvYWRGYWN0b3JJAAl0aHJlc2hvbGR4cD9AAAAAAAAMdwgAAAAQAAAAAHgA', 'yes');
INSERT INTO `nwp_options` VALUES ('83', '0', 'current_theme', 'WordPress Classic', 'yes');

-- ----------------------------
-- Table structure for `nwp_postmeta`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_postmeta`;
CREATE TABLE `nwp_postmeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_postmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `nwp_posts`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_posts`;
CREATE TABLE `nwp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_category` int(4) NOT NULL DEFAULT '0',
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_posts
-- ----------------------------
INSERT INTO `nwp_posts` VALUES ('1', '1', '2011-01-07 15:25:07', '2011-01-07 07:25:07', 'Welcome to nWordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '0', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2011-01-07 15:25:07', '2011-01-07 07:25:07', '', '0', 'http://127.0.0.1:8080/nwp/?p=1', '0', 'post', '', '1');
INSERT INTO `nwp_posts` VALUES ('2', '1', '2011-01-07 15:25:07', '2011-01-07 07:25:07', 'This is an example of a nWordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of nWordPress.', 'About', '0', '', 'publish', 'open', 'open', '', 'about', '', '', '2011-01-07 15:25:07', '2011-01-07 07:25:07', '', '0', 'http://127.0.0.1:8080/nwp/?page_id=2', '0', 'page', '', '0');

-- ----------------------------
-- Table structure for `nwp_term_relationships`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_term_relationships`;
CREATE TABLE `nwp_term_relationships` (
  `object_id` bigint(20) NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_term_relationships
-- ----------------------------
INSERT INTO `nwp_term_relationships` VALUES ('1', '1', '0');
INSERT INTO `nwp_term_relationships` VALUES ('1', '2', '0');
INSERT INTO `nwp_term_relationships` VALUES ('2', '2', '0');

-- ----------------------------
-- Table structure for `nwp_term_taxonomy`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_term_taxonomy`;
CREATE TABLE `nwp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_term_taxonomy
-- ----------------------------
INSERT INTO `nwp_term_taxonomy` VALUES ('1', '1', 'category', '', '0', '1');
INSERT INTO `nwp_term_taxonomy` VALUES ('2', '2', 'link_category', '', '0', '7');

-- ----------------------------
-- Table structure for `nwp_terms`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_terms`;
CREATE TABLE `nwp_terms` (
  `term_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_terms
-- ----------------------------
INSERT INTO `nwp_terms` VALUES ('1', 'Uncategorized', 'uncategorized', '0');
INSERT INTO `nwp_terms` VALUES ('2', 'Blogroll', 'blogroll', '0');

-- ----------------------------
-- Table structure for `nwp_usermeta`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_usermeta`;
CREATE TABLE `nwp_usermeta` (
  `umeta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_usermeta
-- ----------------------------
INSERT INTO `nwp_usermeta` VALUES ('1', '1', 'nickname', 'admin');
INSERT INTO `nwp_usermeta` VALUES ('2', '1', 'rich_editing', 'true');
INSERT INTO `nwp_usermeta` VALUES ('3', '1', 'admin_color', 'fresh');
INSERT INTO `nwp_usermeta` VALUES ('4', '1', 'nwp_capabilities', 'rO0ABXNyABdjb20ubnVtaXRvbi5hcnJheS5BcnJheaIE3/hmVZ9ZAgADSQAKY3VycmVudFBvc0kACmtleUNvdW50ZXJMAANtYXB0ABlMamF2YS91dGlsL0xpbmtlZEhhc2hNYXA7eHAAAAAA/////3NyABdqYXZhLnV0aWwuTGlua2VkSGFzaE1hcDTATlwQbMD7AgABWgALYWNjZXNzT3JkZXJ4cgARamF2YS51dGlsLkhhc2hNYXAFB9rBwxZg0QMAAkYACmxvYWRGYWN0b3JJAAl0aHJlc2hvbGR4cD9AAAAAAAAMdwgAAAAQAAAAAXQADWFkbWluaXN0cmF0b3JzcgAXY29tLm51bWl0b24uZ2VuZXJpYy5SZWaDyWpW1J4oYwIAAUwABXZhbHVldAASTGphdmEvbGFuZy9PYmplY3Q7eHBzcgARamF2YS5sYW5nLkJvb2xlYW7NIHKA1Zz67gIAAVoABXZhbHVleHABeAA=');
INSERT INTO `nwp_usermeta` VALUES ('5', '1', 'nwp_user_level', '10');

-- ----------------------------
-- Table structure for `nwp_users`
-- ----------------------------
DROP TABLE IF EXISTS `nwp_users`;
CREATE TABLE `nwp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nwp_users
-- ----------------------------
INSERT INTO `nwp_users` VALUES ('1', 'admin', '$P$9XzzzMkuzLzzzawyzFyzztzDQB2xzvy', 'admin', 'toweikexin@126.com', '', '2011-01-07 07:25:07', '', '0', 'admin');

-- ----------------------------
-- Table structure for `pm_custominfor`
-- ----------------------------
DROP TABLE IF EXISTS `pm_custominfor`;
CREATE TABLE `pm_custominfor` (
  `CustomUID` varchar(50) DEFAULT NULL,
  `CustomID` varchar(50) DEFAULT NULL,
  `CustomName` varchar(200) DEFAULT NULL,
  `TelePhone` varchar(50) DEFAULT NULL,
  `CustomState` varchar(20) DEFAULT NULL,
  `CityCode` varchar(50) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL,
  `CustomDesc` text,
  `CustNotes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_custominfor
-- ----------------------------
INSERT INTO `pm_custominfor` VALUES ('402880402c1a6119012c2977b94b0134', '111', '全球通', '10086', '发财', '北京', '北京全球通公司', '1000000', '北京全球通公司', '全球通，月球也通。');
INSERT INTO `pm_custominfor` VALUES ('402880402e3258ac012e32afd0860002', '222', '动感地带', '10036', '未激活', '北京', '动感地带', '100000', '我的地盘我做主', 'yes，你的地盘我做主');

-- ----------------------------
-- Table structure for `pm_projectcustom`
-- ----------------------------
DROP TABLE IF EXISTS `pm_projectcustom`;
CREATE TABLE `pm_projectcustom` (
  `ProjectCustomUID` varchar(50) DEFAULT NULL,
  `ProjectUID` varchar(50) DEFAULT NULL,
  `CustomUID` varchar(50) DEFAULT NULL,
  `CostPercent` double(53,0) DEFAULT NULL,
  `ProjectCustomDesc` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_projectcustom
-- ----------------------------

-- ----------------------------
-- Table structure for `pm_projectinfor`
-- ----------------------------
DROP TABLE IF EXISTS `pm_projectinfor`;
CREATE TABLE `pm_projectinfor` (
  `ProjectUID` varchar(50) DEFAULT NULL,
  `ProjectID` varchar(50) DEFAULT NULL,
  `ProjectName` varchar(100) DEFAULT NULL,
  `ProjectType` varchar(50) DEFAULT NULL,
  `AcceptDeptUID` varchar(50) DEFAULT NULL,
  `ProjectManagerUID` varchar(50) DEFAULT NULL,
  `ProjectState` int(10) DEFAULT NULL,
  `PlanBeginTime` datetime DEFAULT NULL,
  `PlanFinishTime` datetime DEFAULT NULL,
  `ActBeginTime` datetime DEFAULT NULL,
  `ActFinishTime` datetime DEFAULT NULL,
  `ProjectDesc` text,
  `ProjectNotes` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pm_projectinfor
-- ----------------------------
INSERT INTO `pm_projectinfor` VALUES ('4028803327d71a880127d74b526e000d', '001', '票据查询', '4028803327d71a880127d729ded5000a', '4028803327bdf14c0127be0c85a0001b', 'wanghongliang', null, null, null, null, null, null, null);
INSERT INTO `pm_projectinfor` VALUES ('4028803327d71a880127d74c2a5f000e', '002', '网上银行', '4028803327d71a880127d72a5b58000b', '4028803327bdf14c0127be0c3fcd0019', 'lujiangyong', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `sp_shenpibaoxiaoinfor`
-- ----------------------------
DROP TABLE IF EXISTS `sp_shenpibaoxiaoinfor`;
CREATE TABLE `sp_shenpibaoxiaoinfor` (
  `ShenpiBxUID` varchar(50) DEFAULT NULL,
  `BaoxiaoUID` varchar(50) DEFAULT NULL,
  `PlanSpUID` varchar(50) DEFAULT NULL,
  `ActSpUID` varchar(50) DEFAULT NULL,
  `SpResult` int(10) DEFAULT NULL,
  `SpDesc` text,
  `SpTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_shenpibaoxiaoinfor
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `town` varchar(255) DEFAULT NULL COMMENT '县',
  `chinese` decimal(4,0) DEFAULT NULL,
  `math` decimal(4,0) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `t_expense`
-- ----------------------------
DROP TABLE IF EXISTS `t_expense`;
CREATE TABLE `t_expense` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `expense_man` varchar(32) NOT NULL DEFAULT '',
  `expense_date` date DEFAULT NULL,
  `expense_money` float NOT NULL DEFAULT '0',
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_expense
-- ----------------------------
INSERT INTO `t_expense` VALUES ('1', 'credentials\\\\IDCard.jpg', '111', '2009-11-11', '0', '2');
INSERT INTO `t_expense` VALUES ('2', 'credentials\\\\IDCard.jpg', '222', '2009-12-12', '0', '2');
INSERT INTO `t_expense` VALUES ('3', 'credentials\\\\IDCard.jpg', '333', '2010-01-01', '0', '2');

-- ----------------------------
-- Table structure for `zd_baoxiaostate`
-- ----------------------------
DROP TABLE IF EXISTS `zd_baoxiaostate`;
CREATE TABLE `zd_baoxiaostate` (
  `objuid` varchar(50) DEFAULT NULL,
  `BaoxiaoState` int(10) DEFAULT NULL,
  `BaoxiaoStateName` varchar(50) DEFAULT NULL,
  `BaoxiaoStateDesc` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zd_baoxiaostate
-- ----------------------------
INSERT INTO `zd_baoxiaostate` VALUES ('4028803327bdf14c0127bdf8afdd000b', '0', '草稿状态', '未提交前');
INSERT INTO `zd_baoxiaostate` VALUES ('4028803327bdf14c0127bdf92079000c', '1', '提交状态', '待部门审批');
INSERT INTO `zd_baoxiaostate` VALUES ('4028803327bdf14c0127bdfa600e000d', '2', '部门已审批', '待财务审批');
INSERT INTO `zd_baoxiaostate` VALUES ('4028803327bdf14c0127bdfae73f000e', '3', '财务已审批', '待总经理审批');
INSERT INTO `zd_baoxiaostate` VALUES ('4028803327bdf14c0127bdfb7e7e000f', '4', '总经理审批通过', '可以发放报销金额');
INSERT INTO `zd_baoxiaostate` VALUES ('4028803327f9e48a0127fbd48a4200bb', '5', '部门退回状态', '部门审批没有通过');
INSERT INTO `zd_baoxiaostate` VALUES ('4028803327ff07e80127fff601af00a5', '6', '财务退回状态', '财务审批不通过');
INSERT INTO `zd_baoxiaostate` VALUES ('4028803327ff07e80127fff6561800a6', '7', '总经理退回状态', '总经理审批不通过');

-- ----------------------------
-- Table structure for `zd_baoxiaotype`
-- ----------------------------
DROP TABLE IF EXISTS `zd_baoxiaotype`;
CREATE TABLE `zd_baoxiaotype` (
  `objuid` varchar(50) DEFAULT NULL,
  `BaoxiaoType` varchar(50) DEFAULT NULL,
  `BaoxiaoTypeDesc` text,
  `OrderNum` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zd_baoxiaotype
-- ----------------------------
INSERT INTO `zd_baoxiaotype` VALUES ('4028803327bdf14c0127bdf52fde0009', '旅差报销', '1111', '1');
INSERT INTO `zd_baoxiaotype` VALUES ('4028803327bdf14c0127bdf54bc3000a', '综合报销', null, '2');

-- ----------------------------
-- Table structure for `zd_cityfixstand`
-- ----------------------------
DROP TABLE IF EXISTS `zd_cityfixstand`;
CREATE TABLE `zd_cityfixstand` (
  `objuid` varchar(50) DEFAULT NULL,
  `CityCode` varchar(50) DEFAULT NULL,
  `CityName` varchar(50) DEFAULT NULL,
  `FixFee` int(10) DEFAULT NULL,
  `OrderNum` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zd_cityfixstand
-- ----------------------------

-- ----------------------------
-- Table structure for `zd_itemtype`
-- ----------------------------
DROP TABLE IF EXISTS `zd_itemtype`;
CREATE TABLE `zd_itemtype` (
  `objuid` varchar(50) DEFAULT NULL,
  `ItemCode` varchar(10) DEFAULT NULL,
  `ItemName` varchar(50) DEFAULT NULL,
  `ItemDesc` text,
  `OrderNum` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zd_itemtype
-- ----------------------------
INSERT INTO `zd_itemtype` VALUES ('4028803327bdf14c0127bdf28e2a0001', '1', '飞机票', null, '1');
INSERT INTO `zd_itemtype` VALUES ('4028803327bdf14c0127bdf2c3ef0002', '2', '火车票', null, '2');
INSERT INTO `zd_itemtype` VALUES ('4028803327bdf14c0127bdf2f4650003', '3', '住宿费', null, '3');
INSERT INTO `zd_itemtype` VALUES ('4028803327bdf14c0127bdf34fb40004', '4', '市内交通费', null, '4');
INSERT INTO `zd_itemtype` VALUES ('4028803327bdf14c0127bdf38b660005', '5', '办公用品费', null, '5');
INSERT INTO `zd_itemtype` VALUES ('4028803327bdf14c0127bdf3d33c0006', '6', '招待费', null, '6');
INSERT INTO `zd_itemtype` VALUES ('4028803327bdf14c0127bdf405c60007', '7', '内部活动费', null, '7');
INSERT INTO `zd_itemtype` VALUES ('4028803327bdf14c0127bdf437170008', '8', '其他费用', null, '8');

-- ----------------------------
-- Table structure for `zd_projecttype`
-- ----------------------------
DROP TABLE IF EXISTS `zd_projecttype`;
CREATE TABLE `zd_projecttype` (
  `objuid` varchar(50) DEFAULT NULL,
  `ProjectType` varchar(50) DEFAULT NULL,
  `ProjectTypeDesc` text,
  `OrderNum` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zd_projecttype
-- ----------------------------
INSERT INTO `zd_projecttype` VALUES ('4028803327d71a880127d729ded5000a', '银行票据', '\n', '1');
INSERT INTO `zd_projecttype` VALUES ('4028803327d71a880127d72a5b58000b', '银行网络', '\n', '3');
INSERT INTO `zd_projecttype` VALUES ('4028803327d71a880127d72ae856000c', '银行存取', null, '2');

-- ----------------------------
-- Table structure for `zf_bugfree`
-- ----------------------------
DROP TABLE IF EXISTS `zf_bugfree`;
CREATE TABLE `zf_bugfree` (
  `objuid` varchar(32) NOT NULL DEFAULT '',
  `serialnumber` int(11) DEFAULT NULL,
  `bugtype` char(4) DEFAULT NULL,
  `write_user` varchar(32) DEFAULT NULL,
  `user_uid` varchar(32) DEFAULT NULL,
  `dept_uid` varchar(32) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `bgtime` datetime DEFAULT NULL,
  `ifrectify` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`objuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='改进意见';

-- ----------------------------
-- Records of zf_bugfree
-- ----------------------------

-- ----------------------------
-- Table structure for `zf_employee`
-- ----------------------------
DROP TABLE IF EXISTS `zf_employee`;
CREATE TABLE `zf_employee` (
  `sn` varchar(255) DEFAULT NULL,
  `cn` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `telephonenumber` varchar(255) DEFAULT NULL,
  `mailmessagestore` varchar(255) DEFAULT NULL,
  `uid` varchar(255) NOT NULL DEFAULT '',
  `mail` varchar(255) DEFAULT NULL,
  `mailquotacount` varchar(255) DEFAULT NULL,
  `mailquotasize` varchar(255) DEFAULT NULL,
  `mailhost` varchar(255) DEFAULT NULL,
  `userpassword` varchar(50) DEFAULT NULL,
  `employeenumber` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zf_employee
-- ----------------------------
INSERT INTO `zf_employee` VALUES ('yuanxx', '袁谐祥', null, null, '/home/vmail/zephyr.com.cn/yuanxx', 'yuanxx', 'yuanxx@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', '{SHA}QL0AFWMIX8NRZTKeof9cXsvbvu8=', null);
INSERT INTO `zf_employee` VALUES ('wanghongliang', '王宏亮', '13488669242', '0', '/home/vmail/zephyr.com.cn/wanghongliang', 'wanghongliang', 'wanghongliang@zephyr.com.cn', '1001', '500000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('hanmin', '韩敏', '13601238430', '8032', '/home/vmail/zephyr.com.cn/hanmin', 'hanmin', 'hanmin@zephyr.com.cn', '1000', '500000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('fanlei', '范雷', '13366937472', '8303', '/home/vmail/zephyr.com.cn/fanlei', 'fanlei', 'fanlei@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('advices', '紫枫信使', null, null, '/home/vmail/zephyr.com.cn/advices', 'advices', 'advices@zephyr.com.cn', '10', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('xutao', '许涛', '13661343097', '8301', '/home/vmail/zephyr.com.cn/xutao', 'xutao', 'xutao@zephyr.com.cn', '1001', '2000000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('liuyanjing', '刘延京', '13910096353', null, '/home/vmail/zephyr.com.cn/liuyanjing', 'liuyanjing', 'liuyanjing@zephyr.com.cn', '1000', '1000000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('huangweimin', '黄卫民', null, null, '/home/vmail/zephyr.com.cn/huangweimin', 'huangweimin', 'huangweimin@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('liningjun', '李宁俊', '13810734307', null, '/home/vmail/zephyr.com.cn/liningjun', 'liningjun', 'liningjun@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('lujiangyong', '陆江勇', '13512726982', null, '/home/vmail/zephyr.com.cn/lujiangyong', 'lujiangyong', 'lujiangyong@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('beizou', '邹贝', '13901317020', null, '/home/vmail/zephyr.com.cn/beizou', 'beizou', 'beizou@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('tyl', '田燕雷', '13651237700', null, '/home/vmail/zephyr.com.cn/tyl', 'tyl', 'tyl@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('job', '紫枫使者', null, null, '/home/vmail/zephyr.com.cn/job', 'job', 'job@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('suntao', '孙涛', '13264297595', null, '/home/vmail/zephyr.com.cn/suntao', 'suntao', 'suntao@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('sjfei', '苏建飞', '13811330319', null, '/home/vmail/zephyr.com.cn/sjfei', 'sjfei', 'sjfei@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('huangbing', '黄兵', '13683111623', '8310', '/home/vmail/zephyr.com.cn/huangbing', 'huangbing', 'huangbing@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('songhp', '宋和平', null, null, '/home/vmail/zephyr.com.cn/songhp', 'songhp', 'songhp@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('jizhengzheng', '冀征征', null, null, '/home/vmail/zephyr.com.cn/jizhengzheng', 'jizhengzheng', 'jizhengzheng@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('litr', '李陶然', null, null, '/home/vmail/zephyr.com.cn/litr', 'litr', 'litr@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('songbin', '宋斌', '15810052032', null, '/home/vmail/zephyr.com.cn/songbin', 'songbin', 'songbin@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('zwjia', '张维佳', '13501248855', '8102', '/home/vmail/zephyr.com.cn/zwjia', 'zwjia', 'zwjia@zephyr.com.cn', '1001', '1000000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('faq', 'faq', null, null, '/home/vmail/zephyr.com.cn/faq', 'faq', 'faq@zephyr.com.cn', '100', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('cjl', '蔡骏亮', '13817390997', '021', '/home/vmail/zephyr.com.cn/cjl', 'cjl', 'cjl@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('lwl', '陆伟良', '13601611176', '021', '/home/vmail/zephyr.com.cn/lwl', 'lwl', 'lwl@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('xuxiao', '徐潇', '13011041293 ', '8308', '/home/vmail/zephyr.com.cn/xuxiao', 'xuxiao', 'xuxiao@zephyr.com.cn', '1001', '1000000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('zhaoyunxiao', '赵云霄', null, null, '/home/vmail/zephyr.com.cn/zhaoyunxiao', 'zhaoyunxiao', 'zhaoyunxiao@zephyr.com.cn', '1001', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('yuyingjie', '于英杰', '13810704664', '8502', '/home/vmail/zephyr.com.cn/yuyingjie', 'yuyingjie', 'yuyingjie@zephyr.com.cn', '1000', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('zhangyunhe', '章云鹤', null, null, '/home/vmail/zephyr.com.cn/zhangyunhe', 'zhangyunhe', 'zhangyunhe@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('hepeng', '何鹏', null, null, '/home/vmail/zephyr.com.cn/hepeng', 'hepeng', 'hepeng@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('liangshuang', '梁爽', null, null, '/home/vmail/zephyr.com.cn/liangshuang', 'liangshuang', 'liangshuang@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('huangsiwei', '黄思伟', null, null, '/home/vmail/zephyr.com.cn/huangsiwei', 'huangsiwei', 'huangsiwei@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('shangguan', '上官', null, null, '/home/vmail/zephyr.com.cn/shangguan', 'shangguan', 'shangguan@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('guojueyu', '郭爵玉', null, null, '/home/vmail/zephyr.com.cn/guojueyu', 'guojueyu', 'guojueyu@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('zzh', '左朝晖', null, null, '/home/vmail/zephyr.com.cn/zzh', 'zzh', 'zzh@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', '{SHA}QL0AFWMIX8NRZTKeof9cXsvbvu8=', null);
INSERT INTO `zf_employee` VALUES ('wkx', '魏可鑫', null, null, '/home/vmail/zephyr.com.cn/wkx', 'wkx', 'wkx@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', '{SHA}QL0AFWMIX8NRZTKeof9cXsvbvu8=', null);
INSERT INTO `zf_employee` VALUES ('zhangcj', '张成进', null, null, '/home/vmail/zephyr.com.cn/zhangcj', 'zhangcj', 'zhangcj@zephyr.com.cn', '1000', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('administrator', 'administrator', null, null, '/home/vmail/zephyr.com.cn/admin', 'admin', 'admin@zephyr.com.cn', '100000', '1000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('cuijinshan', '崔金山', '13661995027', null, '/home/vmail/zephyr.com.cn/cuijinshan', 'cuijinshan', 'cuijinshan@zephyr.com.cn', '1001', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('lipeng', '李鹏', '13661995027', null, '/home/vmail/zephyr.com.cn/lipeng', 'lipeng', 'lipeng@zephyr.com.cn', '1001', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('yangning', '杨宁', '13911011353', '8007', '/home/vmail/zephyr.com.cn/yangning', 'yangning', 'yangning@zephyr.com.cn', '1001', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('zhangwei', '张炜', '13161337788', '8004', '/home/vmail/zephyr.com.cn/zhangwei', 'zhangwei', 'zhangwei@zephyr.com.cn', '1001', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('luwei', '芦苇', '13661995027', null, '/home/vmail/zephyr.com.cn/luwei', 'luwei', 'luwei@zephyr.com.cn', '1001', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('qyf', '钱一飞', '00', null, '/home/vmail/zephyr.com.cn/qyf', 'qyf', 'qyf@zephyr.com.cn', '1001', '100000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('herui', '何锐', '00', null, '/home/vmail/zephyr.com.cn/herui', 'herui', 'herui@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('pangpeng', '庞鹏', '00', null, '/home/vmail/zephyr.com.cn/pangpeng', 'pangpeng', 'pangpeng@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('wangwenqian', '王文谦', '00', null, '/home/vmail/zephyr.com.cn/wangwenqian', 'wangwenqian', 'wangwenqian@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('zhaopengwei', '赵鹏伟', '00', null, '/home/vmail/zephyr.com.cn/zhaopengwei', 'zhaopengwei', 'zhaopengwei@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('lihongyang', '李洪洋', '00', null, '/home/vmail/zephyr.com.cn/lihongyang', 'lihongyang', 'lihongyang@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('zhuweigang', '朱伟刚', '00', null, '/home/vmail/zephyr.com.cn/zhuweigang', 'zhuweigang', 'zhuweigang@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('yangxuan', '杨轩', '00', null, '/home/vmail/zephyr.com.cn/yangxuan', 'yangxuan', 'yangxuan@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('ganxintong', '甘信通', '00', null, '/home/vmail/zephyr.com.cn/ganxintong', 'ganxintong', 'ganxintong@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('lili', '李莉', '00', null, '/home/vmail/zephyr.com.cn/lili', 'lili', 'lili@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('dongyadong', '董亚东', '00', null, '/home/vmail/zephyr.com.cn/dongyadong', 'dongyadong', 'dongyadong@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('fanzelong', '樊泽龙', '00', null, '/home/vmail/zephyr.com.cn/fanzelong', 'fanzelong', 'fanzelong@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('wujiang', '吴江', '13701125372', '8012', '/home/vmail/zephyr.com.cn/wujiang', 'wujiang', 'wujiang@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('liangxiaochen', '梁效臣', '00', null, '/home/vmail/zephyr.com.cn/liangxiaochen', 'liangxiaochen', 'liangxiaochen@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);
INSERT INTO `zf_employee` VALUES ('liujiatian', '刘家田', '00', null, '/home/vmail/zephyr.com.cn/liujiatian', 'liujiatian', 'liujiatian@zephyr.com.cn', '1001', '200000000', 'zephyr.com.cn', null, null);

-- ----------------------------
-- Table structure for `zf_employee_ldap`
-- ----------------------------
DROP TABLE IF EXISTS `zf_employee_ldap`;
CREATE TABLE `zf_employee_ldap` (
  `sn` varchar(255) DEFAULT NULL,
  `cn` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `telephonenumber` varchar(255) DEFAULT NULL,
  `mailmessagestore` varchar(255) DEFAULT NULL,
  `uid` varchar(255) NOT NULL DEFAULT '',
  `mail` varchar(255) DEFAULT NULL,
  `mailquotacount` varchar(255) DEFAULT NULL,
  `mailquotasize` varchar(255) DEFAULT NULL,
  `mailhost` varchar(255) DEFAULT NULL,
  `userpassword` varchar(50) DEFAULT NULL,
  `employeenumber` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zf_employee_ldap
-- ----------------------------

-- ----------------------------
-- Table structure for `zf_service`
-- ----------------------------
DROP TABLE IF EXISTS `zf_service`;
CREATE TABLE `zf_service` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `serviceType` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `paras` varchar(2000) DEFAULT NULL,
  `script` text,
  `bundle` text,
  `note` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zf_service
-- ----------------------------
INSERT INTO `zf_service` VALUES ('1', 'crop', null, '剪切', 'crop', 'convert', '', null, null, null);
INSERT INTO `zf_service` VALUES ('2', 'rotate', null, '旋转', 'rotate', 'convert', null, null, null, null);
INSERT INTO `zf_service` VALUES ('3', 'resize', null, '缩放', 'resize', 'convert', null, null, null, null);
INSERT INTO `zf_service` VALUES ('4', 'convert', null, '通用变换', 'convert', 'convert', null, null, null, null);
INSERT INTO `zf_service` VALUES ('402880402ca06a9d012ca0eb35c60003', 'qqq', null, 'qqq', 'qqq', 'qq', null, null, null, null);
INSERT INTO `zf_service` VALUES ('5', 'simple_suite', null, '简单组合', null, null, null, null, '<bundle><service name=\'crop\'  paras=\'200X200+200+100\'  infile=\'a.jpg\' outfile=\'outfile.jpg\'></service>\n<service name=\'rotate\'  paras=\'90\'  infile=\'outfile.jpg\' outfile=\'outfile.jpg\'></service></bundle>', null);
INSERT INTO `zf_service` VALUES ('6', 'de_barcode', 'de_barcode', '条形码识别', null, null, null, null, null, null);
INSERT INTO `zf_service` VALUES ('7', 'en_barcode', 'en_barcode', '条形码生成', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `zhujie`
-- ----------------------------
DROP TABLE IF EXISTS `zhujie`;
CREATE TABLE `zhujie` (
  `id` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `guige` varchar(255) DEFAULT NULL,
  `changdu` int(11) DEFAULT NULL,
  `zhongliang` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhujie
-- ----------------------------
INSERT INTO `zhujie` VALUES ('402880402e987a38012e98816e31006f', '螺帽', 'TS-1', '111', '22', '22');

-- ----------------------------
-- View structure for `wf_bj`
-- ----------------------------
DROP VIEW IF EXISTS `wf_bj`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `wf_bj` AS select distinct `wpi`.`WFI_Desc` AS `wfi_desc`,`wpi`.`startUser` AS `startuser`,`wpi`.`startTime` AS `starttime`,`ni`.`OBJUID` AS `contextNiUid`,`wpi`.`OBJUID` AS `contextPIUid`,`wpi`.`curState` AS `curState`,`wpi`.`instance_uid` AS `instance_uid`,`ni`.`performerUid` AS `USER_UID`,`ni`.`nodeDate` AS `nodeDate` from (`do_wfi_his_nodeinstance` `ni` join `do_wfi_his_processinstance` `wpi` on((`ni`.`PI_UID` = `wpi`.`OBJUID`))) where ((`ni`.`ExeStatus` = 3) and (`wpi`.`ExeStatus` = 3));

-- ----------------------------
-- View structure for `wf_db`
-- ----------------------------
DROP VIEW IF EXISTS `wf_db`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `wf_db` AS select distinct `wpi`.`curState` AS `curstate`,`ni`.`node_uid` AS `node_uid`,`ni`.`nodeDate` AS `nodeDate`,`ni`.`OBJUID` AS `contextNIUid`,`wpi`.`OBJUID` AS `contextPIUid`,`wpi`.`instance_uid` AS `instance_uid`,`ni`.`pass_txt` AS `pass_txt`,`ni`.`reject_txt` AS `reject_txt`,`ur`.`USER_UID` AS `user_uid`,`wpi`.`WFI_Desc` AS `WFI_Desc`,`wpi`.`startUser` AS `startUser`,`wpi`.`startTime` AS `startTime` from (((`do_wfi_nodeinstance` `ni` join `do_wfi_processinstance` `wpi`) join `do_org_user_role` `ur`) join `do_authorization` `a`) where ((`wpi`.`OBJUID` = `ni`.`PI_UID`) and (`a`.`parterUid` = _utf8'9') and (`a`.`ouUid` = `ur`.`ROLE_UID`) and (`ni`.`node_uid` = `a`.`whatUid`) and (`ni`.`ExeStatus` = 2) and (`wpi`.`ExeStatus` = 2));

-- ----------------------------
-- View structure for `wf_yb`
-- ----------------------------
DROP VIEW IF EXISTS `wf_yb`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`127.0.0.1` SQL SECURITY DEFINER VIEW `wf_yb` AS select distinct `wpi`.`WFI_Desc` AS `wfi_desc`,`wpi`.`startUser` AS `startuser`,`wpi`.`startTime` AS `starttime`,`ni`.`OBJUID` AS `contextNIUid`,`wpi`.`OBJUID` AS `contextPIUid`,`wpi`.`curState` AS `curState`,`wpi`.`instance_uid` AS `instance_uid`,`ni`.`performerUid` AS `USER_UID`,`ni`.`nodeDate` AS `nodeDate` from (`do_wfi_nodeinstance` `ni` join `do_wfi_processinstance` `wpi` on((`ni`.`PI_UID` = `wpi`.`OBJUID`))) where ((`ni`.`ExeStatus` = 3) and (`wpi`.`ExeStatus` = 2));
