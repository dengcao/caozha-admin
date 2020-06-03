-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-06-03 21:40:46
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `caozha_admin`
--

-- --------------------------------------------------------

--
-- 表的结构 `cz_administrators`
--

CREATE TABLE `cz_administrators` (
  `admin_id` int(11) NOT NULL COMMENT '管理员ID',
  `admin_name` varchar(255) DEFAULT NULL COMMENT '用户帐号',
  `admin_password` varchar(255) DEFAULT NULL COMMENT '密码',
  `admin_password_rnd` varchar(255) DEFAULT NULL COMMENT '登陆随机密码',
  `role_id` int(11) DEFAULT '0' COMMENT '权限组ID',
  `is_enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用，1为启用',
  `real_name` varchar(255) DEFAULT NULL COMMENT '真实姓名',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话，手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `wechat` varchar(255) DEFAULT NULL COMMENT '微信号',
  `qq` varchar(255) DEFAULT NULL COMMENT 'QQ号',
  `last_login_ip` varchar(50) DEFAULT NULL COMMENT '最后登陆IP',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `last_logout_time` datetime DEFAULT NULL COMMENT '最后退出时间',
  `login_times` int(11) DEFAULT NULL COMMENT '登陆次数',
  `admin_remarks` text COMMENT '备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cz_administrators`
--

INSERT INTO `cz_administrators` (`admin_id`, `admin_name`, `admin_password`, `admin_password_rnd`, `role_id`, `is_enabled`, `real_name`, `tel`, `email`, `wechat`, `qq`, `last_login_ip`, `last_login_time`, `last_logout_time`, `login_times`, `admin_remarks`) VALUES
(1, 'caozha', '5fd9cd58f4e516bae46557b355c5208a', NULL, 1, 1, '草札', '1320000000', 'dzh188@qq.com', 'wx', 'qq', '127.0.0.1', '2020-06-03 14:09:21', '2020-06-03 14:09:10', 50, NULL),
(2, 'dd78', 'ee04ddc4fea36f4ce797766b6c4f66a4', NULL, 2, 1, '查订单', '', '', NULL, NULL, '223.74.103.196', '2018-10-27 19:56:03', '2018-10-27 17:59:46', 4, NULL),
(3, 'xgd', '0b9c6913e2cc2a29571cdf8d5b590baf', NULL, 2, 1, '小谢', '', '', NULL, NULL, '113.65.207.15', '2018-10-27 18:15:00', '2017-05-26 17:11:30', 113, NULL),
(4, 'lb', 'f49c5286a10a22228c79793732acf431', NULL, 2, 0, '邱总', '', '', '', '', '14.145.253.14', '2015-11-04 10:20:05', '2015-10-21 17:54:09', 12, ''),
(5, 'tongji', '97891b84c4370e99661b1aed0047f054', NULL, 2, 1, '统计', '', '', NULL, NULL, '113.109.41.79', '2017-09-07 14:01:35', '2017-04-21 11:05:56', 84, NULL),
(6, 'ebjs', 'ca48d8526924b7c385d13db9f0415be3', NULL, 2, 1, '技术', '', '', '', '', '14.23.122.114', '2018-04-27 08:23:01', '2014-04-01 13:46:44', 714, ''),
(7, 'gg2', '887416f73c49ff6729dd5ea7c68c36aa', NULL, 2, 0, '广告', '', '', '', '', '14.145.252.199', '2015-11-03 10:56:28', '2014-02-14 14:38:09', 1263, ''),
(8, 'wqs', '733b96c977ea5568757c01c578e6fe64', NULL, 2, 1, '小王', '', '', NULL, NULL, '113.65.207.203', '2018-10-29 09:31:33', '2014-02-27 17:55:44', 658, NULL),
(9, 'md', 'ade5c0caf8444c3dedc18b7366368053', NULL, 2, 0, '陈光', '', '', NULL, NULL, '113.119.205.125', '2015-10-21 15:49:25', '2015-03-13 17:20:37', 34, NULL),
(10, 'xhm', '8f8cf8b32d5022ca4ed7fa7e739d4f99', NULL, 2, 0, '许总', '', '', NULL, NULL, '58.62.93.40', '2016-08-10 16:50:58', '2014-11-22 11:04:33', 79, NULL),
(11, 'hedan', '5aca2c7cb35fe3210b25e6acf56fca1d', NULL, 2, 1, '核单', '', '', '', '', '14.23.122.114', '2017-05-11 11:59:40', '2014-12-03 09:52:39', 4505, ''),
(12, 'weixin', '8cdec0532ce92d9e43556d14a52ce87a', NULL, 3, 1, '微信运营', '', '', '', '', '113.111.8.55', '2018-10-18 10:32:47', '2017-09-23 19:40:22', 520, ''),
(14, 'weixin3', '5fd9cd58f4e516bae46557b355c5208a', NULL, 2, 0, '微信客服', '', '', '', '', '113.65.207.203', '2018-10-29 09:38:36', '2018-10-27 18:11:30', 8, ''),
(24, 'test1', '5fd9cd58f4e516bae46557b355c5208a', NULL, 2, 1, '凤2', '', '', '', '', NULL, NULL, NULL, NULL, ''),
(25, 'test2', '5fd9cd58f4e516bae46557b355c5208a', NULL, 2, 1, '', '', '', '', '', NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `cz_article`
--

CREATE TABLE `cz_article` (
  `aid` int(11) UNSIGNED NOT NULL,
  `catid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `content` longtext COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `style` char(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '风格',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '关键词',
  `description` mediumtext COLLATE utf8mb4_unicode_ci COMMENT '描述',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '打开链接',
  `listorder` int(11) UNSIGNED DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '状态：0无效，1正在审核，2退稿，9通过',
  `islink` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否外部链接，1=外部链接',
  `inputtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `iscomment` tinyint(1) DEFAULT '1' COMMENT '是否允许评论',
  `author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `copyfrom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文章来源',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `isreco` tinyint(1) DEFAULT '0' COMMENT '是否推荐，1=推荐',
  `ishot` tinyint(1) DEFAULT '0' COMMENT '是否热点，1=热点',
  `istop` tinyint(1) DEFAULT '0' COMMENT '是否置顶，1=置顶'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `cz_article`
--

INSERT INTO `cz_article` (`aid`, `catid`, `title`, `content`, `style`, `thumb`, `keywords`, `description`, `url`, `listorder`, `status`, `islink`, `inputtime`, `iscomment`, `author`, `copyfrom`, `hits`, `isreco`, `ishot`, `istop`) VALUES
(1, 67, '新冠肺炎权威小贴士', '<p>内容可随意通过数据库添加（此处省略）</p>', '', '', '', NULL, NULL, 0, 1, 0, '2020-05-23 20:57:40', 1, NULL, NULL, 89, 0, 0, 0),
(2, 67, '必读！关于新冠肺炎的20个知识点', '<p>内容可随意通过数据库添加（此处省略）</p>', '', '', '', NULL, NULL, 0, 1, 1, '2020-05-23 20:57:33', 1, NULL, NULL, 1, 0, 0, 0),
(3, 67, '你需要知道的新冠肺炎最新知识', '<p>内容可随意通过数据库添加（此处省略）</p>', '', '', '', NULL, NULL, 0, 1, 0, '2020-05-23 20:57:25', 0, NULL, NULL, 4, 0, 0, 0),
(4, 67, '新冠肺炎患者需要注意哪些心理疏导?', '<p>内容可随意通过数据库添加（此处省略）</p>', '', '', '', NULL, NULL, 0, 1, 0, '2020-05-23 20:55:29', 1, NULL, NULL, 7, 0, 0, 0),
(5, 67, '新冠肺炎的日常防护知识', '<p><strong>日常防护知识：</strong></p><p>1.最重要的一条：不要到处跑。</p><p>专家始终强调，预防新冠肺炎最有效的方式之一是：减少出行，这不仅关乎自己和家人，也关乎整个社会。一定要外出时不要乘坐比较拥挤的公共交通车，建议步行或开车，逗留时间尽量缩短。宅在家时，应格外注意3个细节：通风：每日打开门窗通风2-3次，每次30分钟左右；天气好时，可以晒晒被子、衣服。洗手：回家后、做菜前、吃饭前、如厕后，应在流动水下用肥皂或洗手液揉搓30秒左右。饮食安全：处理食物时生熟分开，肉类充分做熟再吃；家庭实行分餐制或使用公筷。不要吃野味。</p><p>2.不要参加集会。</p><p>少出门、少聚会，是减少交叉感染的重要方法，尤其应避免去人员密集的公共场所，如商场、公共浴池、棋牌室、医院等。</p><p>3.出门戴口罩，不一定戴N95。</p><p>钟南山院士表示，戴口罩不一定要戴N95，医用外科口罩即可阻止大部分病毒进入呼吸道。普通口罩也能起到一定的隔离作用。如果口罩不够用，普通大众的口罩不必用一次换一次，可根据清洁程度延长使用时间。戴口罩时要把口鼻都完全覆盖住，并与面部贴合严实，尽量减少漏气情况。摘口罩时，不要抓着污染面，用手抓住系带脱离，扔到垃圾桶，不要到处乱扔。</p><p>4.学会正确洗手。</p><p>新型冠状病毒可通过接触传播，如果没有注意使双手沾上病毒，揉眼睛时就可能造成感染，所以一定要勤洗手。暂没有洗手条件时可用消毒湿巾擦拭双手。</p>', '', '', '', NULL, NULL, 0, 1, 0, '2020-05-23 20:55:41', 1, NULL, NULL, 53, 0, 0, 0),
(6, 67, '我省昨日新冠肺炎疫情公告', '<p>据省卫健委官网公布，5月23日0-24时，我省新增新型冠状病毒肺炎确诊病例xx例；新增疑似病例xx例；新增治愈出院病例xx例；新增死亡病例x例。</p>', '风格', '/uploads/image/20200531/1590918832985443.jpg', '关键词', '文章描述', 'URL', 11, 9, 1, '2020-06-01 20:57:50', 1, '作者', '文章来源', 16988, 1, 1, 1),
(8, 67, '开源系统caozha-admin正式上线，欢迎使用', '<p>开源系统caozha-admin正式上线，欢迎使用！</p>', '', '', '', '', '', 0, 9, 0, '2020-06-02 18:11:40', 1, '', '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cz_category`
--

CREATE TABLE `cz_category` (
  `catid` smallint(11) UNSIGNED NOT NULL COMMENT '栏目ID',
  `type` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '栏目类型ID',
  `modelid` smallint(5) UNSIGNED DEFAULT '0' COMMENT '模型ID，0=系统，1=文章，2=下载，3=图片，可自定义',
  `parentid` smallint(11) UNSIGNED DEFAULT '0' COMMENT '上级父栏目',
  `arrparentid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有父栏目',
  `child` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否存在子栏目，1，存在',
  `arrchildid` mediumtext COLLATE utf8_unicode_ci COMMENT '所有子栏目',
  `catname` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '栏目名称',
  `style` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '风格',
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '栏目图片',
  `description` mediumtext COLLATE utf8_unicode_ci COMMENT '栏目描述',
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '栏目链接',
  `items` mediumint(8) UNSIGNED DEFAULT '0' COMMENT '栏目内容数',
  `hits` int(11) UNSIGNED DEFAULT '0' COMMENT '点击数',
  `setting` mediumtext COLLATE utf8_unicode_ci COMMENT '栏目相关配置信息',
  `listorder` smallint(11) UNSIGNED DEFAULT '0' COMMENT '排序',
  `ismenu` tinyint(1) UNSIGNED DEFAULT '1' COMMENT '是否显示，1 显示',
  `letter` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '栏目拼音'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `cz_category`
--

INSERT INTO `cz_category` (`catid`, `type`, `modelid`, `parentid`, `arrparentid`, `child`, `arrchildid`, `catname`, `style`, `image`, `description`, `url`, `items`, `hits`, `setting`, `listorder`, `ismenu`, `letter`) VALUES
(1, 1, 0, 0, '0', 1, '1,2,3,4,413', '网站介绍', '', '', '', '//about/', 0, 0, NULL, 1, 0, 'wangzhanjieshao'),
(2, 1, 0, 1, '0,1', 0, '2,431,432,433,434,435', '关于我们', '', '', '', 'https://diannao.wang/aboutus/', 0, 0, NULL, 1, 1, 'guanyuwomen'),
(3, 1, 0, 1, '0,1', 0, '3', '联系方式', '', '', '', 'https://diannao.wang/contactus/', 0, 0, NULL, 2, 1, 'lianxifangshi'),
(4, 1, 0, 1, '0,1', 0, '4', '版权声明', '', '', '', 'https://diannao.wang/copyright/', 0, 0, NULL, 3, 1, 'banquanshengming'),
(6, 0, 1, 0, '0', 1, '6,19,17,18,20,21,22,427,69,70,426,24', 'Windows', '', '', '', 'https://diannao.wang/windows_all/', 0, 0, NULL, 101, 1, 'windows'),
(11, 0, 1, 0, '0', 0, '11', '苹果', '', '', '', 'https://diannao.wang/apple/', 298, 0, NULL, 107, 0, 'pingguo'),
(12, 0, 1, 0, '0', 1, '12,54,55,56,57,105,428', '手机', '', '', '', 'https://diannao.wang/shouji/', 0, 0, NULL, 105, 1, 'shouji'),
(9, 0, 1, 0, '0', 1, '9,27,85,86,87,88,89,90,91,92,93,28,29,30,31,32,33,34,35,36,78,79,80,81,82,83,107,37,38,39,40,41,42,43', '设计', '', '', '', 'https://diannao.wang/sheji/', 0, 0, NULL, 103, 1, 'sheji'),
(10, 0, 1, 0, '0', 1, '10,67,68,414', '信息', '', '', '', 'https://diannao.wang/xinwen/', 0, 0, NULL, 119, 0, 'xinxi'),
(13, 0, 1, 0, '0', 1, '13,58,59,60,118', '平板', '', '', '', 'https://diannao.wang/pingban/', 0, 0, NULL, 106, 1, 'pingban'),
(62, 0, 1, 61, '0,61', 0, '62', '剑灵', '', '', '', 'https://diannao.wang/bns/', 985, 0, NULL, 62, 1, 'jianling'),
(61, 0, 1, 0, '0', 1, '61,62,63,64,65,66,106', '游戏', '', '', '', 'https://diannao.wang/games/', 0, 0, NULL, 108, 1, 'youxi'),
(17, 0, 1, 6, '0,6', 0, '17', 'Windows8', '', '', '', 'https://diannao.wang/windows8/', 3309, 0, NULL, 18, 1, 'windows8'),
(14, 0, 1, 0, '0', 1, '14,46,47,48,49,44,45,94,95,50,51,96,97,98,99,100,101,102,103,104,52,53,108,109,110,111,112,113,114,115,116,117,120,121,122,123,124,347,415,125,429,430', '技术', '', '', '', 'https://diannao.wang/jishu/', 0, 0, NULL, 104, 1, 'jishu'),
(18, 0, 1, 6, '0,6', 0, '18', 'Windows7', '', '', '', 'https://diannao.wang/windows7/', 4004, 0, NULL, 19, 1, 'windows7'),
(19, 0, 1, 6, '0,6', 0, '19', 'windows10', '', '', '', 'https://diannao.wang/windows10/', 8164, 0, NULL, 17, 1, 'windows10'),
(20, 0, 1, 6, '0,6', 0, '20', 'Windows XP', '', '', '', 'https://diannao.wang/windowsxp/', 1164, 0, NULL, 20, 1, 'windows xp'),
(21, 0, 1, 6, '0,6', 0, '21', 'Windows Vista', '', '', '', 'https://diannao.wang/windowsvista/', 295, 0, NULL, 21, 1, 'windows vista'),
(22, 0, 1, 6, '0,6', 1, '22,427,69,70,426', 'Windows服务器', '', '', '', 'https://diannao.wang/windowsserver/', 0, 0, NULL, 22, 1, 'windowsfuwuqi'),
(23, 0, 1, 0, '0', 1, '23,71,72,73,74,75,76,77,84,126', 'Linux', '', '', '', 'https://diannao.wang/linux/', 0, 0, NULL, 102, 1, 'linux'),
(24, 0, 1, 6, '0,6', 0, '24', 'Windows', '', '', '', 'https://diannao.wang/windows/', 98, 0, NULL, 24, 1, 'windows'),
(106, 0, 1, 61, '0,61', 0, '106', '逆战', '', '', '', 'https://diannao.wang/nizhan/', 1063, 0, NULL, 106, 1, 'nizhan'),
(107, 0, 1, 36, '0,9,36', 0, '107', '网页配色', '', '', '', 'https://diannao.wang/wyps/', 19, 0, NULL, 107, 1, 'wangyepeise'),
(27, 0, 1, 9, '0,9', 1, '27,85,86,87,88,89,90,91,92,93', 'Photoshop教程', '', '', '', 'https://diannao.wang/photoshop/', 0, 0, NULL, 27, 1, 'photoshopjiaocheng'),
(28, 0, 1, 9, '0,9', 0, '28', 'Illustrator教程', '', '', '', 'https://diannao.wang/illustrator/', 1431, 0, NULL, 28, 1, 'illustratorjiaocheng'),
(29, 0, 1, 9, '0,9', 0, '29', 'CorelDraw教程', '', '', '', 'https://diannao.wang/coreldraw/', 1615, 0, NULL, 29, 1, 'coreldrawjiaocheng'),
(30, 0, 1, 9, '0,9', 0, '30', 'Painter教程', '', '', '', 'https://diannao.wang/painter/', 227, 0, NULL, 30, 1, 'painterjiaocheng'),
(31, 0, 1, 9, '0,9', 0, '31', 'Fireworks教程', '', '', '', 'https://diannao.wang/fireworks/', 374, 0, NULL, 31, 1, 'fireworksjiaocheng'),
(32, 0, 1, 9, '0,9', 0, '32', 'Flash教程', '', '', '', 'https://diannao.wang/flash/', 1076, 0, NULL, 32, 1, 'flashjiaocheng'),
(33, 0, 1, 9, '0,9', 0, '33', 'CAD教程', '', '', '', 'https://diannao.wang/cad/', 1373, 0, NULL, 33, 1, 'cadjiaocheng'),
(34, 0, 1, 9, '0,9', 0, '34', '3Dmax教程', '', '', '', 'https://diannao.wang/3dmax/', 1264, 0, NULL, 34, 1, '3dmaxjiaocheng'),
(35, 0, 1, 9, '0,9', 0, '35', 'Maya教程', '', '', '', 'https://diannao.wang/maya/', 550, 0, NULL, 35, 1, 'mayajiaocheng'),
(36, 0, 1, 9, '0,9', 1, '36,78,79,80,81,82,83,107', '网页设计教程', '', '', '', 'https://diannao.wang/wangyesheji/', 0, 0, NULL, 36, 1, 'wangyeshejijiaocheng'),
(37, 0, 1, 9, '0,9', 0, '37', '图标设计教程', '', '', '', 'https://diannao.wang/tubiaosheji/', 225, 0, NULL, 37, 1, 'tubiaoshejijiaocheng'),
(38, 0, 1, 9, '0,9', 0, '38', '平面设计理论', '', '', '', 'https://diannao.wang/pingmiansheji/', 2222, 0, NULL, 38, 1, 'pingmianshejililun'),
(39, 0, 1, 9, '0,9', 0, '39', '插画教程', '', '', '', 'https://diannao.wang/chahua/', 182, 0, NULL, 39, 1, 'chahuajiaocheng'),
(40, 0, 1, 9, '0,9', 0, '40', '艺术理论', '', '', '', 'https://diannao.wang/yishulilun/', 51, 0, NULL, 40, 1, 'yishulilun'),
(41, 0, 1, 9, '0,9', 0, '41', '装修知识', '', '', '', 'https://diannao.wang/zhuangxiu/', 3913, 0, NULL, 41, 1, 'zhuangxiuzhishi'),
(42, 0, 1, 9, '0,9', 0, '42', '摄影技巧', '', '', '', 'https://diannao.wang/sheying/', 1115, 0, NULL, 42, 1, 'sheyingjiqiao'),
(43, 0, 1, 9, '0,9', 0, '43', '广告文案', '', '', '', 'https://diannao.wang/wenan/', 1650, 0, NULL, 43, 1, 'guanggaowenan'),
(54, 0, 1, 12, '0,12', 0, '54', 'Android手机教程', '', '', '', 'https://diannao.wang/android/', 12467, 0, NULL, 54, 1, 'androidshoujijiaocheng'),
(44, 0, 1, 14, '0,14', 0, '44', 'ASP教程', '', '', '', 'https://diannao.wang/asp/', 1785, 0, NULL, 52, 1, 'aspjiaocheng'),
(45, 0, 1, 14, '0,14', 0, '45', 'ASP.NET教程', '', '', '', 'https://diannao.wang/aspnet/', 3113, 0, NULL, 53, 1, 'asp.netjiaocheng'),
(46, 0, 1, 14, '0,14', 0, '46', 'PHP教程', '', '', '', 'https://diannao.wang/php/', 9359, 0, NULL, 46, 1, 'phpjiaocheng'),
(47, 0, 1, 14, '0,14', 0, '47', 'JSP教程', '', '', '', 'https://diannao.wang/jsp/', 1017, 0, NULL, 47, 1, 'jspjiaocheng'),
(48, 0, 1, 14, '0,14', 0, '48', 'CSS教程', '', '', '', 'https://diannao.wang/css/', 4978, 0, NULL, 48, 1, 'cssjiaocheng'),
(49, 0, 1, 14, '0,14', 0, '49', 'JavaScript教程', '', '', '', 'https://diannao.wang/javascript/', 17893, 0, NULL, 49, 1, 'javascriptjiaocheng'),
(50, 0, 1, 95, '0,14,95', 0, '50', 'MSSQL教程', '', '', '', 'https://diannao.wang/mssql/', 1990, 0, NULL, 50, 1, 'mssqljiaocheng'),
(51, 0, 1, 95, '0,14,95', 0, '51', 'MYSQL教程', '', '', '', 'https://diannao.wang/mysql/', 3411, 0, NULL, 51, 1, 'mysqljiaocheng'),
(52, 0, 1, 14, '0,14', 0, '52', 'Android开发教程', '', '', '', 'https://diannao.wang/anzhuo/', 7076, 0, NULL, 96, 1, 'androidkaifajiaocheng'),
(53, 0, 1, 14, '0,14', 0, '53', 'iOS开发教程', '', '', '', 'https://diannao.wang/ios/', 1384, 0, NULL, 97, 1, 'ioskaifajiaocheng'),
(55, 0, 1, 12, '0,12', 0, '55', 'iPhone手机教程', '', '', '', 'https://diannao.wang/iphone/', 7095, 0, NULL, 55, 1, 'iphoneshoujijiaocheng'),
(56, 0, 1, 12, '0,12', 0, '56', '刷机教程', '', '', '', 'https://diannao.wang/shuaji/', 631, 0, NULL, 56, 1, 'shuajijiaocheng'),
(57, 0, 1, 12, '0,12', 0, '57', 'ROM刷机包', '', '', '', 'https://diannao.wang/rom/', 1041, 0, NULL, 57, 1, 'romshuajibao'),
(58, 0, 1, 13, '0,13', 0, '58', 'iPad教程', '', '', '', 'https://diannao.wang/ipad/', 153, 0, NULL, 58, 1, 'ipadjiaocheng'),
(59, 0, 1, 13, '0,13', 0, '59', 'Android 平板电脑', '', '', '', 'https://diannao.wang/azpb/', 41, 0, NULL, 59, 1, 'android pingbandiannao'),
(60, 0, 1, 13, '0,13', 0, '60', 'Windows 平板电脑', '', '', '', 'https://diannao.wang/windowspad/', 14, 0, NULL, 60, 1, 'windows pingbandiannao'),
(63, 0, 1, 61, '0,61', 0, '63', '英雄联盟', '', '', '', 'https://diannao.wang/lol/', 2758, 0, NULL, 63, 1, 'yingxionglianmeng'),
(64, 0, 1, 61, '0,61', 0, '64', '穿越火线', '', '', '', 'https://diannao.wang/cf/', 1810, 0, NULL, 64, 1, 'chuanyuehuoxian'),
(65, 0, 1, 61, '0,61', 0, '65', '魔兽世界', '', '', '', 'https://diannao.wang/wow/', 1043, 0, NULL, 65, 1, 'moshoushijie'),
(66, 0, 1, 61, '0,61', 0, '66', '地下城与勇士', '', '', '', 'https://diannao.wang/dnf/', 922, 0, NULL, 66, 1, 'dixiachengyuyongshi'),
(67, 0, 1, 10, '0,10', 0, '67', '行业新闻', '', '', '', 'https://diannao.wang/news/', 5549, 0, NULL, 67, 1, 'xingyexinwen'),
(68, 0, 1, 10, '0,10', 0, '68', '趣科技', '', '', '', 'https://diannao.wang/qukeji/', 91, 0, NULL, 68, 1, 'qukeji'),
(69, 0, 1, 22, '0,6,22', 0, '69', 'Windows Server 2008', '', '', '', 'https://diannao.wang/windows2008/', 248, 0, NULL, 69, 1, 'windows server 2008'),
(70, 0, 1, 22, '0,6,22', 0, '70', 'Windows Server 2003', '', '', '', 'https://diannao.wang/windows2003/', 233, 0, NULL, 70, 1, 'windows server 2003'),
(71, 0, 1, 23, '0,23', 0, '71', 'RedHat/Centos', '', '', '', 'https://diannao.wang/redhat/', 1179, 0, NULL, 71, 1, 'redhat/centos'),
(72, 0, 1, 23, '0,23', 0, '72', 'Ubuntu/Debian', '', '', '', 'https://diannao.wang/ubuntu/', 731, 0, NULL, 72, 1, 'ubuntu/debian'),
(73, 0, 1, 23, '0,23', 0, '73', 'Fedora', '', '', '', 'https://diannao.wang/fedora/', 110, 0, NULL, 73, 1, 'fedora'),
(74, 0, 1, 23, '0,23', 0, '74', 'Solaris', '', '', '', 'https://diannao.wang/solaris/', 90, 0, NULL, 74, 1, 'solaris'),
(75, 0, 1, 23, '0,23', 0, '75', '麒麟系统', '', '', '', 'https://diannao.wang/qilin/', 17, 0, NULL, 75, 1, 'zuozuoxitong'),
(76, 0, 1, 23, '0,23', 0, '76', '红旗Linux', '', '', '', 'https://diannao.wang/hongqi/', 34, 0, NULL, 76, 1, 'hongqilinux'),
(77, 0, 1, 23, '0,23', 0, '77', 'Unix/BSD', '', '', '', 'https://diannao.wang/unix/', 190, 0, NULL, 77, 1, 'unix/bsd'),
(78, 0, 1, 36, '0,9,36', 0, '78', 'HTML/Xhtml', '', '', '', 'https://diannao.wang/html/', 1059, 0, NULL, 78, 1, 'html/xhtml'),
(79, 0, 1, 36, '0,9,36', 0, '79', 'html5', '', '', '', 'https://diannao.wang/html5/', 771, 0, NULL, 79, 1, 'html5'),
(80, 0, 1, 36, '0,9,36', 0, '80', 'XML/XSLT', '', '', '', 'https://diannao.wang/xml/', 289, 0, NULL, 80, 1, 'xml/xslt'),
(81, 0, 1, 36, '0,9,36', 0, '81', 'Dreamweaver教程', '', '', '', 'https://diannao.wang/dreamweaver/', 221, 0, NULL, 81, 1, 'dreamweaverjiaocheng'),
(82, 0, 1, 36, '0,9,36', 0, '82', 'Frontpage教程', '', '', '', 'https://diannao.wang/frontpage/', 15, 0, NULL, 82, 1, 'frontpagejiaocheng'),
(83, 0, 1, 36, '0,9,36', 0, '83', '网页设计其他', '', '', '', 'https://diannao.wang/wangyezhizuo/', 797, 0, NULL, 83, 1, 'wangyeshejiqita'),
(84, 0, 1, 23, '0,23', 0, '84', 'linux shell', '', '', '', 'https://diannao.wang/linux_shell/', 967, 0, NULL, 84, 1, 'linux shell'),
(85, 0, 1, 27, '0,9,27', 0, '85', '入门实例', '', '', '', 'https://diannao.wang/rumen/', 3481, 0, NULL, 85, 1, 'rumenshili'),
(86, 0, 1, 27, '0,9,27', 0, '86', 'photoshop视频教程', '', '', '', 'https://diannao.wang/psspjc/', 0, 0, NULL, 86, 1, 'photoshopshipinjiaocheng'),
(87, 0, 1, 27, '0,9,27', 0, '87', '标志logo', '', '', '', 'https://diannao.wang/ps_logo/', 363, 0, NULL, 87, 1, 'biaozhilogo'),
(88, 0, 1, 27, '0,9,27', 0, '88', '按钮制作', '', '', '', 'https://diannao.wang/ps_anniu/', 166, 0, NULL, 88, 1, 'anniuzhizuo'),
(89, 0, 1, 27, '0,9,27', 0, '89', '合成特效', '', '', '', 'https://diannao.wang/ps_texiao/', 1124, 0, NULL, 89, 1, 'hechengtexiao'),
(90, 0, 1, 27, '0,9,27', 0, '90', '矢量手绘', '', '', '', 'https://diannao.wang/ps_shiliang/', 1088, 0, NULL, 90, 1, 'shiliangshouhui'),
(91, 0, 1, 27, '0,9,27', 0, '91', '照片处理', '', '', '', 'https://diannao.wang/ps_chuli/', 6228, 0, NULL, 91, 1, 'zhaopianchuli'),
(92, 0, 1, 27, '0,9,27', 0, '92', '文字特效', '', '', '', 'https://diannao.wang/ps_texiao/', 1736, 0, NULL, 92, 1, 'wenzitexiao'),
(93, 0, 1, 27, '0,9,27', 0, '93', '其它综合', '', '', '', 'https://diannao.wang/ps_zonghe/', 1880, 0, NULL, 93, 1, 'qitazonghe'),
(94, 0, 1, 14, '0,14', 0, '94', '正则表达式', '', '', '', 'https://diannao.wang/regex/', 802, 0, NULL, 94, 1, 'zhengzebiaodashi'),
(95, 0, 1, 14, '0,14', 1, '95,50,51,96,97,98,99,100,101,102,103,104', '数据库', '', '', '', 'https://diannao.wang/shujuku/', 0, 0, NULL, 95, 1, 'shujuku'),
(96, 0, 1, 95, '0,14,95', 0, '96', 'Access', '', '', '', 'https://diannao.wang/access/', 80, 0, NULL, 96, 1, 'access'),
(97, 0, 1, 95, '0,14,95', 0, '97', 'oracle', '', '', '', 'https://diannao.wang/oracle/', 1113, 0, NULL, 97, 1, 'oracle'),
(98, 0, 1, 95, '0,14,95', 0, '98', 'DB2', '', '', '', 'https://diannao.wang/db2/', 73, 0, NULL, 98, 1, 'db2'),
(99, 0, 1, 95, '0,14,95', 0, '99', 'mssql2008', '', '', '', 'https://diannao.wang/mssql2008/', 164, 0, NULL, 99, 1, 'mssql2008'),
(100, 0, 1, 95, '0,14,95', 0, '100', 'mssql2005', '', '', '', 'https://diannao.wang/mssql2005/', 252, 0, NULL, 100, 1, 'mssql2005'),
(101, 0, 1, 95, '0,14,95', 0, '101', 'SQLite', '', '', '', 'https://diannao.wang/sqlite/', 53, 0, NULL, 101, 1, 'sqlite'),
(102, 0, 1, 95, '0,14,95', 0, '102', 'PostgreSQL', '', '', '', 'https://diannao.wang/postgresql/', 64, 0, NULL, 102, 1, 'postgresql'),
(103, 0, 1, 95, '0,14,95', 0, '103', 'MongoDB', '', '', '', 'https://diannao.wang/mongodb/', 239, 0, NULL, 103, 1, 'mongodb'),
(104, 0, 1, 95, '0,14,95', 0, '104', 'Redis', '', '', '', 'https://diannao.wang/redis/', 61, 0, NULL, 104, 1, 'redis'),
(105, 0, 1, 12, '0,12', 0, '105', '刷机工具', '', '', '', 'https://diannao.wang/mtools/', 41, 0, NULL, 105, 1, 'shuajigongju'),
(108, 0, 1, 14, '0,14', 0, '108', '易语言教程', '', '', '', 'https://diannao.wang/yiyuyan/', 44, 0, NULL, 108, 1, 'yiyuyanjiaocheng'),
(109, 0, 1, 14, '0,14', 0, '109', 'C#教程', '', '', '', 'https://diannao.wang/csharp/', 2267, 0, NULL, 109, 1, 'c#jiaocheng'),
(110, 0, 1, 14, '0,14', 0, '110', 'VB教程', '', '', '', 'https://diannao.wang/vb/', 25, 0, NULL, 110, 1, 'vbjiaocheng'),
(111, 0, 1, 14, '0,14', 0, '111', 'VB.NET教程', '', '', '', 'https://diannao.wang/vbnet/', 9, 0, NULL, 111, 1, 'vb.netjiaocheng'),
(112, 0, 1, 14, '0,14', 0, '112', 'C语言教程', '', '', '', 'https://diannao.wang/cyy/', 1733, 0, NULL, 112, 1, 'cyuyanjiaocheng'),
(113, 0, 1, 14, '0,14', 0, '113', 'Java教程', '', '', '', 'https://diannao.wang/java/', 1814, 0, NULL, 113, 1, 'javajiaocheng'),
(114, 0, 1, 14, '0,14', 0, '114', 'Delphi教程', '', '', '', 'https://diannao.wang/delphi/', 63, 0, NULL, 114, 1, 'delphijiaocheng'),
(115, 0, 1, 14, '0,14', 0, '115', 'Swift教程', '', '', '', 'https://diannao.wang/swift/', 38, 0, NULL, 115, 1, 'swiftjiaocheng'),
(116, 0, 1, 14, '0,14', 0, '116', 'AJAX教程', '', '', '', 'https://diannao.wang/ajax/', 477, 0, NULL, 116, 1, 'ajaxjiaocheng'),
(117, 0, 1, 14, '0,14', 0, '117', 'VBscript教程', '', '', '', 'https://diannao.wang/vbscript/', 1032, 0, NULL, 117, 1, 'vbscriptjiaocheng'),
(118, 0, 1, 13, '0,13', 0, '118', '笔记本电脑教程', '', '', '', 'https://diannao.wang/bijiben/', 69, 0, NULL, 118, 1, 'bijibendiannaojiaocheng'),
(119, 0, 1, 0, '0', 0, '119', '安全', '', '', '', 'https://diannao.wang/anquan/', 688, 0, NULL, 120, 1, 'anquan'),
(429, 0, 1, 125, '0,14,125', 0, '429', 'Excel教程', '', '', '', 'https://diannao.wang/excel/', 2, 0, NULL, 429, 1, 'exceljiaocheng'),
(120, 0, 1, 14, '0,14', 1, '120,121,122,123,124,347,415', '站长技术教程', '', '', '', 'https://diannao.wang/zhanzhang/', 0, 0, NULL, 120, 1, 'zhanchangjishujiaocheng'),
(121, 0, 1, 120, '0,14,120', 0, '121', '网站源码', '', '', '', 'https://diannao.wang/yuanma/', 19, 0, NULL, 121, 1, 'wangzhanyuanma'),
(122, 0, 1, 120, '0,14,120', 0, '122', '网站模板', '', '', '', 'https://diannao.wang/moban/', 4, 0, NULL, 122, 1, 'wangzhanmoban'),
(123, 0, 1, 120, '0,14,120', 0, '123', '网站优化（SEO）', '', '', '', 'https://diannao.wang/seo/', 6, 0, NULL, 123, 1, 'wangzhanyouhuaseo'),
(124, 0, 1, 120, '0,14,120', 0, '124', '网站安全', '', '', '', 'https://diannao.wang/websafe/', 4, 0, NULL, 124, 1, 'wangzhananquan'),
(125, 0, 1, 14, '0,14', 1, '125,429,430', '软件教程', '', '', '', 'https://diannao.wang/ruanjian/', 0, 0, NULL, 125, 1, 'ruanjianjiaocheng'),
(126, 0, 1, 23, '0,23', 0, '126', 'Apache教程', '', '', '', 'https://diannao.wang/apache/', 14, 0, NULL, 126, 1, 'apachejiaocheng'),
(127, 2, 0, 0, '0', 0, '127', '工具', '', '', '', 'https://diannao.wang/tool/', 0, 0, NULL, 999, 1, 'gongju'),
(128, 0, 1, 0, '0', 1, '128,129,130,131,132,412', '科技名博', '', '', '', 'https://diannao.wang/kejiboke/', 0, 0, NULL, 128, 0, 'kejimingbo'),
(129, 0, 1, 128, '0,128', 0, '129', '月光博客', '', '', '', 'https://diannao.wang/ygbk/', 1824, 0, NULL, 129, 1, 'yueguangboke'),
(130, 0, 1, 128, '0,128', 0, '130', '卢松松博客', '', '', '', 'https://diannao.wang/lusongsong/', 2837, 0, NULL, 130, 1, 'lusongsongboke'),
(131, 0, 1, 128, '0,128', 0, '131', '于斌博客', '', '', '', 'https://diannao.wang/yubin/', 614, 0, NULL, 131, 1, 'yubinboke'),
(134, 0, 2, 133, '0,133', 1, '134,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177', '网络工具', '', '', '', 'https://diannao.wang/soft/134/', 0, 0, NULL, 134, 1, 'wangluogongju'),
(132, 0, 1, 128, '0,128', 0, '132', '互联网的那点事', '', '', '', 'https://diannao.wang/hlwnds/', 331, 0, NULL, 132, 1, 'hulianwangdenadianshi'),
(133, 0, 2, 0, '0', 1, '133,134,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,135,178,179,180,181,182,183,184,186,187,136,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,137,213,214,215,216,217,218,219,220,221,222,140,253,254,255,256,257,258,259,260,261,262,263,264,141,265,266,267,268,269,270,271,272,273,274,275,276,142,277,278,279,280,281,143,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,144,305,306,307,308,309,310,311,312,313,314,315,316,348,354,355,356,357,358,359,360,351,381,382,383,384,385,386,387,352,388,389,390,391,392,393,394,395,396,397,353,398,399,400,401,402,403,404,405,406,407,408,409,410,411', '软件', '', '', '', 'https://diannao.wang/soft/', 0, 0, NULL, 133, 1, 'ruanjian'),
(135, 0, 2, 133, '0,133', 1, '135,178,179,180,181,182,183,184,186,187', '媒体工具', '', '', '', 'https://diannao.wang/soft/135/', 0, 0, NULL, 135, 1, 'meitigongju'),
(136, 0, 2, 133, '0,133', 1, '136,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212', '系统软件', '', '', '', 'https://diannao.wang/soft/136/', 0, 0, NULL, 136, 1, 'xitongruanjian'),
(137, 0, 2, 133, '0,133', 1, '137,213,214,215,216,217,218,219,220,221,222', '安全相关', '', '', '', 'https://diannao.wang/soft/137/', 0, 0, NULL, 137, 1, 'anquanxiangguan'),
(138, 0, 2, 317, '0,317', 1, '138,224,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346', '安卓应用', '', '', '', 'https://diannao.wang/app/138/', 0, 0, NULL, 138, 1, 'anzhuoyingyong'),
(139, 0, 2, 317, '0,317', 1, '139,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252', '苹果应用', '', '', '', 'https://diannao.wang/app/139/', 0, 0, NULL, 139, 1, 'pingguoyingyong'),
(140, 0, 2, 133, '0,133', 1, '140,253,254,255,256,257,258,259,260,261,262,263,264', '游戏娱乐', '', '', '', 'https://diannao.wang/soft/140/', 0, 0, NULL, 140, 1, 'youxiyule'),
(141, 0, 2, 133, '0,133', 1, '141,265,266,267,268,269,270,271,272,273,274,275,276', '图形图像', '', '', '', 'https://diannao.wang/soft/141/', 0, 0, NULL, 141, 1, 'tuxingtuxiang'),
(142, 0, 2, 133, '0,133', 1, '142,277,278,279,280,281', 'MAC软件', '', '', '', 'https://diannao.wang/soft/142/', 0, 0, NULL, 142, 1, 'macruanjian'),
(143, 0, 2, 133, '0,133', 1, '143,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304', '管理软件', '', '', '', 'https://diannao.wang/soft/143/', 0, 0, NULL, 143, 1, 'guanliruanjian'),
(144, 0, 2, 133, '0,133', 1, '144,305,306,307,308,309,310,311,312,313,314,315,316', '编程开发', '', '', '', 'https://diannao.wang/soft/144/', 0, 0, NULL, 144, 1, 'bianchengkaifa'),
(145, 0, 2, 134, '0,133,134', 0, '145', 'QQ专区', '', '', '', 'https://diannao.wang/soft/145/', 524, 0, NULL, 145, 1, 'qqzhuanqu'),
(416, 0, 1, 0, '0', 1, '416,418', '家电', '', '', '', 'https://diannao.wang/jiadian/', 0, 0, NULL, 416, 1, 'jiadian'),
(146, 0, 2, 134, '0,133,134', 0, '146', 'MSN专区', '', '', '', 'https://diannao.wang/soft/146/', 102, 0, NULL, 146, 1, 'msnzhuanqu'),
(147, 0, 2, 134, '0,133,134', 0, '147', '联络聊天', '', '', '', 'https://diannao.wang/soft/147/', 2373, 0, NULL, 147, 1, 'lianluoliaotian'),
(148, 0, 2, 134, '0,133,134', 0, '148', '网络语音', '', '', '', 'https://diannao.wang/soft/148/', 414, 0, NULL, 148, 1, 'wangluoyuyin'),
(149, 0, 2, 134, '0,133,134', 0, '149', '聊天工具', '', '', '', 'https://diannao.wang/soft/149/', 848, 0, NULL, 149, 1, 'liaotiangongju'),
(150, 0, 2, 134, '0,133,134', 0, '150', '短信工具', '', '', '', 'https://diannao.wang/soft/150/', 177, 0, NULL, 150, 1, 'duanxingongju'),
(151, 0, 2, 134, '0,133,134', 0, '151', '其它IM', '', '', '', 'https://diannao.wang/soft/151/', 246, 0, NULL, 151, 1, 'qitaim'),
(152, 0, 2, 134, '0,133,134', 0, '152', '主页浏览', '', '', '', 'https://diannao.wang/soft/152/', 1344, 0, NULL, 152, 1, 'zhuyezuolan'),
(153, 0, 2, 134, '0,133,134', 0, '153', '浏览过滤', '', '', '', 'https://diannao.wang/soft/153/', 457, 0, NULL, 153, 1, 'zuolanguolv'),
(154, 0, 2, 134, '0,133,134', 0, '154', '网站推广', '', '', '', 'https://diannao.wang/soft/154/', 710, 0, NULL, 154, 1, 'wangzhantuiguang'),
(155, 0, 2, 134, '0,133,134', 0, '155', '下载工具', '', '', '', 'https://diannao.wang/soft/155/', 1285, 0, NULL, 155, 1, 'xiazaigongju'),
(156, 0, 2, 134, '0,133,134', 0, '156', '书签工具', '', '', '', 'https://diannao.wang/soft/156/', 299, 0, NULL, 156, 1, 'shuqiangongju'),
(157, 0, 2, 134, '0,133,134', 0, '157', '离线浏览', '', '', '', 'https://diannao.wang/soft/157/', 111, 0, NULL, 157, 1, 'lixianzuolan'),
(158, 0, 2, 134, '0,133,134', 0, '158', 'FTP工具', '', '', '', 'https://diannao.wang/soft/158/', 474, 0, NULL, 158, 1, 'ftpgongju'),
(159, 0, 2, 134, '0,133,134', 0, '159', '邮件处理', '', '', '', 'https://diannao.wang/soft/159/', 1459, 0, NULL, 159, 1, 'youjianchuli'),
(160, 0, 2, 134, '0,133,134', 0, '160', '邮件检查', '', '', '', 'https://diannao.wang/soft/160/', 280, 0, NULL, 160, 1, 'youjianjiancha'),
(161, 0, 2, 134, '0,133,134', 0, '161', '网络加速', '', '', '', 'https://diannao.wang/soft/161/', 375, 0, NULL, 161, 1, 'wangluojiasu'),
(162, 0, 2, 134, '0,133,134', 0, '162', '新闻阅读', '', '', '', 'https://diannao.wang/soft/162/', 244, 0, NULL, 162, 1, 'xinwenyuedu'),
(163, 0, 2, 134, '0,133,134', 0, '163', '远程登录', '', '', '', 'https://diannao.wang/soft/163/', 160, 0, NULL, 163, 1, 'yuanchengdenglu'),
(164, 0, 2, 134, '0,133,134', 0, '164', '服务器类', '', '', '', 'https://diannao.wang/soft/164/', 1053, 0, NULL, 164, 1, 'fuwuqilei'),
(165, 0, 2, 134, '0,133,134', 0, '165', 'JAVA程序', '', '', '', 'https://diannao.wang/soft/165/', 183, 0, NULL, 165, 1, 'javachengxu'),
(166, 0, 2, 134, '0,133,134', 0, '166', '传真软件', '', '', '', 'https://diannao.wang/soft/166/', 154, 0, NULL, 166, 1, 'chuanzhenruanjian'),
(167, 0, 2, 134, '0,133,134', 0, '167', '搜寻引擎', '', '', '', 'https://diannao.wang/soft/167/', 903, 0, NULL, 167, 1, 'souxunyinqing'),
(168, 0, 2, 134, '0,133,134', 0, '168', '网络计时', '', '', '', 'https://diannao.wang/soft/168/', 124, 0, NULL, 168, 1, 'wangluojishi'),
(169, 0, 2, 134, '0,133,134', 0, '169', '拨号工具', '', '', '', 'https://diannao.wang/soft/169/', 106, 0, NULL, 169, 1, 'bohaogongju'),
(170, 0, 2, 134, '0,133,134', 0, '170', 'IP工具', '', '', '', 'https://diannao.wang/soft/170/', 493, 0, NULL, 170, 1, 'ipgongju'),
(171, 0, 2, 134, '0,133,134', 0, '171', '远程控制', '', '', '', 'https://diannao.wang/soft/171/', 483, 0, NULL, 171, 1, 'yuanchengkongzhi'),
(172, 0, 2, 134, '0,133,134', 0, '172', '网络共享', '', '', '', 'https://diannao.wang/soft/172/', 595, 0, NULL, 172, 1, 'wangluogongxiang'),
(173, 0, 2, 134, '0,133,134', 0, '173', '主页制作', '', '', '', 'https://diannao.wang/soft/173/', 549, 0, NULL, 173, 1, 'zhuyezhizuo'),
(174, 0, 2, 134, '0,133,134', 0, '174', '制作辅助', '', '', '', 'https://diannao.wang/soft/174/', 807, 0, NULL, 174, 1, 'zhizuofuzhu'),
(175, 0, 2, 134, '0,133,134', 0, '175', '网络检测', '', '', '', 'https://diannao.wang/soft/175/', 914, 0, NULL, 175, 1, 'wangluojiance'),
(176, 0, 2, 134, '0,133,134', 0, '176', '网络辅助', '', '', '', 'https://diannao.wang/soft/176/', 3266, 0, NULL, 176, 1, 'wangluofuzhu'),
(177, 0, 2, 134, '0,133,134', 0, '177', '网站工具', '', '', '', 'https://diannao.wang/soft/177/', 1588, 0, NULL, 177, 1, 'wangzhangongju'),
(178, 0, 2, 135, '0,133,135', 0, '178', '音频播放', '', '', '', 'https://diannao.wang/soft/178/', 1106, 0, NULL, 178, 1, 'yinpinbofang'),
(179, 0, 2, 135, '0,133,135', 0, '179', '音频处理', '', '', '', 'https://diannao.wang/soft/179/', 2934, 0, NULL, 179, 1, 'yinpinchuli'),
(180, 0, 2, 135, '0,133,135', 0, '180', '音频视频转换', '', '', '', 'https://diannao.wang/soft/180/', 1036, 0, NULL, 180, 1, 'yinpinshipinzhuanhuan'),
(181, 0, 2, 135, '0,133,135', 0, '181', 'MIDI工具', '', '', '', 'https://diannao.wang/soft/181/', 307, 0, NULL, 181, 1, 'midigongju'),
(182, 0, 2, 135, '0,133,135', 0, '182', '网络音视', '', '', '', 'https://diannao.wang/soft/182/', 1040, 0, NULL, 182, 1, 'wangluoyinshi'),
(183, 0, 2, 135, '0,133,135', 0, '183', '视频播放', '', '', '', 'https://diannao.wang/soft/183/', 1217, 0, NULL, 183, 1, 'shipinbofang'),
(184, 0, 2, 135, '0,133,135', 0, '184', '视频处理', '', '', '', 'https://diannao.wang/soft/184/', 1787, 0, NULL, 184, 1, 'shipinchuli'),
(186, 0, 2, 135, '0,133,135', 0, '186', '编解码器', '', '', '', 'https://diannao.wang/soft/186/', 187, 0, NULL, 186, 1, 'bianjiemaqi'),
(187, 0, 2, 135, '0,133,135', 0, '187', '媒体管理', '', '', '', 'https://diannao.wang/soft/187/', 1045, 0, NULL, 187, 1, 'meitiguanli'),
(188, 0, 2, 136, '0,133,136', 0, '188', '系统辅助', '', '', '', 'https://diannao.wang/soft/188/', 2806, 0, NULL, 188, 1, 'xitongfuzhu'),
(189, 0, 2, 136, '0,133,136', 0, '189', '系统测试', '', '', '', 'https://diannao.wang/soft/189/', 565, 0, NULL, 189, 1, 'xitongceshi'),
(190, 0, 2, 136, '0,133,136', 0, '190', '卸载工具', '', '', '', 'https://diannao.wang/soft/190/', 620, 0, NULL, 190, 1, 'xiezaigongju'),
(191, 0, 2, 136, '0,133,136', 0, '191', '数据恢复', '', '', '', 'https://diannao.wang/soft/191/', 926, 0, NULL, 191, 1, 'shujuhuifu'),
(192, 0, 2, 136, '0,133,136', 0, '192', '剪贴工具', '', '', '', 'https://diannao.wang/soft/192/', 234, 0, NULL, 192, 1, 'jiantiegongju'),
(193, 0, 2, 136, '0,133,136', 0, '193', '鼠标键盘', '', '', '', 'https://diannao.wang/soft/193/', 575, 0, NULL, 193, 1, 'shubiaojianpan'),
(194, 0, 2, 136, '0,133,136', 0, '194', '转换翻译', '', '', '', 'https://diannao.wang/soft/194/', 614, 0, NULL, 194, 1, 'zhuanhuanfanyi'),
(195, 0, 2, 136, '0,133,136', 0, '195', '磁盘工具', '', '', '', 'https://diannao.wang/soft/195/', 1038, 0, NULL, 195, 1, 'cipangongju'),
(196, 0, 2, 136, '0,133,136', 0, '196', '文件管理', '', '', '', 'https://diannao.wang/soft/196/', 2416, 0, NULL, 196, 1, 'wenjianguanli'),
(197, 0, 2, 136, '0,133,136', 0, '197', '文件分割', '', '', '', 'https://diannao.wang/soft/197/', 264, 0, NULL, 197, 1, 'wenjianfenge'),
(198, 0, 2, 136, '0,133,136', 0, '198', '开关定时', '', '', '', 'https://diannao.wang/soft/198/', 551, 0, NULL, 198, 1, 'kaiguandingshi'),
(199, 0, 2, 136, '0,133,136', 0, '199', '备份工具', '', '', '', 'https://diannao.wang/soft/199/', 1342, 0, NULL, 199, 1, 'beifengongju'),
(200, 0, 2, 136, '0,133,136', 0, '200', '字体工具', '', '', '', 'https://diannao.wang/soft/200/', 344, 0, NULL, 200, 1, 'zitigongju'),
(201, 0, 2, 136, '0,133,136', 0, '201', '内存工具', '', '', '', 'https://diannao.wang/soft/201/', 0, 0, NULL, 201, 1, 'neicungongju'),
(202, 0, 2, 136, '0,133,136', 0, '202', '压缩工具', '', '', '', 'https://diannao.wang/soft/202/', 442, 0, NULL, 202, 1, 'yasuogongju'),
(203, 0, 2, 136, '0,133,136', 0, '203', '更名工具', '', '', '', 'https://diannao.wang/soft/203/', 238, 0, NULL, 203, 1, 'gengminggongju'),
(204, 0, 2, 136, '0,133,136', 0, '204', '系统设置', '', '', '', 'https://diannao.wang/soft/204/', 676, 0, NULL, 204, 1, 'xitongshezhi'),
(205, 0, 2, 136, '0,133,136', 0, '205', '编辑软件', '', '', '', 'https://diannao.wang/soft/205/', 2229, 0, NULL, 205, 1, 'bianjiruanjian'),
(206, 0, 2, 136, '0,133,136', 0, '206', '中文输入', '', '', '', 'https://diannao.wang/soft/206/', 823, 0, NULL, 206, 1, 'zhongwenshuru'),
(207, 0, 2, 136, '0,133,136', 0, '207', '降温程序', '', '', '', 'https://diannao.wang/soft/207/', 22, 0, NULL, 207, 1, 'jiangwenchengxu'),
(208, 0, 2, 136, '0,133,136', 0, '208', '电子阅读', '', '', '', 'https://diannao.wang/soft/208/', 632, 0, NULL, 208, 1, 'dianziyuedu'),
(209, 0, 2, 136, '0,133,136', 0, '209', 'DOS工具', '', '', '', 'https://diannao.wang/soft/209/', 35, 0, NULL, 209, 1, 'dosgongju'),
(210, 0, 2, 136, '0,133,136', 0, '210', '打印工具', '', '', '', 'https://diannao.wang/soft/210/', 1170, 0, NULL, 210, 1, 'dayingongju'),
(211, 0, 2, 136, '0,133,136', 0, '211', '光碟工具', '', '', '', 'https://diannao.wang/soft/211/', 972, 0, NULL, 211, 1, 'guangdiegongju'),
(212, 0, 2, 136, '0,133,136', 0, '212', '优化工具', '', '', '', 'https://diannao.wang/soft/212/', 97, 0, NULL, 212, 1, 'youhuagongju'),
(213, 0, 2, 137, '0,133,137', 0, '213', '加密解密', '', '', '', 'https://diannao.wang/soft/213/', 929, 0, NULL, 213, 1, 'jiamijiemi'),
(214, 0, 2, 137, '0,133,137', 0, '214', '密码恢复', '', '', '', 'https://diannao.wang/soft/214/', 149, 0, NULL, 214, 1, 'mimahuifu'),
(215, 0, 2, 137, '0,133,137', 0, '215', '密码管理', '', '', '', 'https://diannao.wang/soft/215/', 173, 0, NULL, 215, 1, 'mimaguanli'),
(216, 0, 2, 137, '0,133,137', 0, '216', '系统监视', '', '', '', 'https://diannao.wang/soft/216/', 200, 0, NULL, 216, 1, 'xitongjianshi'),
(217, 0, 2, 137, '0,133,137', 0, '217', '网吧管理', '', '', '', 'https://diannao.wang/soft/217/', 398, 0, NULL, 217, 1, 'wangbaguanli'),
(218, 0, 2, 137, '0,133,137', 0, '218', '系统安全', '', '', '', 'https://diannao.wang/soft/218/', 0, 0, NULL, 218, 1, 'xitonganquan'),
(219, 0, 2, 137, '0,133,137', 0, '219', '病毒防治', '', '', '', 'https://diannao.wang/soft/219/', 698, 0, NULL, 219, 1, 'bingdufangzhi'),
(220, 0, 2, 137, '0,133,137', 0, '220', '浏览安全', '', '', '', 'https://diannao.wang/soft/220/', 82, 0, NULL, 220, 1, 'zuolananquan'),
(221, 0, 2, 137, '0,133,137', 0, '221', '反黑防马', '', '', '', 'https://diannao.wang/soft/221/', 201, 0, NULL, 221, 1, 'fanheifangma'),
(222, 0, 2, 137, '0,133,137', 0, '222', '防火墙类', '', '', '', 'https://diannao.wang/soft/222/', 611, 0, NULL, 222, 1, 'fanghuoqianglei'),
(318, 0, 2, 224, '0,317,138,224', 0, '318', '休闲益智', '', '', '', 'https://diannao.wang/app/318/', 25, 0, NULL, 318, 1, 'xiuxianyizhi'),
(347, 0, 1, 120, '0,14,120', 0, '347', '站长经验', '', '', '', 'https://diannao.wang/zzjy/', 11, 0, NULL, 347, 1, 'zhanchangjingyan'),
(224, 0, 2, 138, '0,317,138', 1, '224,318,319,320,321,322,323,324,325', '游戏', '', '', '', 'https://diannao.wang/app/224/', 0, 0, NULL, 224, 1, 'youxi'),
(326, 0, 2, 138, '0,317,138', 0, '326', '娱乐', '', '', '', 'https://diannao.wang/app/326/', 124, 0, NULL, 326, 1, 'yule'),
(325, 0, 2, 224, '0,317,138,224', 0, '325', '其他游戏', '', '', '', 'https://diannao.wang/app/325/', 0, 0, NULL, 325, 1, 'qitayouxi'),
(324, 0, 2, 224, '0,317,138,224', 0, '324', '网络游戏', '', '', '', 'https://diannao.wang/app/324/', 42, 0, NULL, 324, 1, 'wangluoyouxi'),
(323, 0, 2, 224, '0,317,138,224', 0, '323', '棋牌游戏', '', '', '', 'https://diannao.wang/app/323/', 17, 0, NULL, 323, 1, 'qipaiyouxi'),
(322, 0, 2, 224, '0,317,138,224', 0, '322', '竞速游戏', '', '', '', 'https://diannao.wang/app/322/', 3, 0, NULL, 322, 1, 'jingsuyouxi'),
(321, 0, 2, 224, '0,317,138,224', 0, '321', '体育游戏', '', '', '', 'https://diannao.wang/app/321/', 2, 0, NULL, 321, 1, 'tiyuyouxi'),
(320, 0, 2, 224, '0,317,138,224', 0, '320', '动作射击', '', '', '', 'https://diannao.wang/app/320/', 5, 0, NULL, 320, 1, 'dongzuosheji'),
(319, 0, 2, 224, '0,317,138,224', 0, '319', '角色冒险', '', '', '', 'https://diannao.wang/app/319/', 12, 0, NULL, 319, 1, 'jiaosemaoxian'),
(254, 0, 2, 140, '0,133,140', 0, '254', '动作射击', '', '', '', 'https://diannao.wang/soft/254/', 1676, 0, NULL, 254, 1, 'dongzuosheji'),
(233, 0, 2, 139, '0,317,139', 0, '233', '实用工具', '', '', '', 'https://diannao.wang/app/233/', 308, 0, NULL, 233, 1, 'shiyonggongju'),
(234, 0, 2, 139, '0,317,139', 0, '234', '休闲娱乐', '', '', '', 'https://diannao.wang/app/234/', 486, 0, NULL, 234, 1, 'xiuxianyule'),
(235, 0, 2, 139, '0,317,139', 0, '235', '地图导航', '', '', '', 'https://diannao.wang/app/235/', 49, 0, NULL, 235, 1, 'ditudaohang'),
(236, 0, 2, 139, '0,317,139', 0, '236', '摄影软件', '', '', '', 'https://diannao.wang/app/236/', 58, 0, NULL, 236, 1, 'sheyingruanjian'),
(237, 0, 2, 139, '0,317,139', 0, '237', '交友社区', '', '', '', 'https://diannao.wang/app/237/', 170, 0, NULL, 237, 1, 'jiaoyoushequ'),
(238, 0, 2, 139, '0,317,139', 0, '238', '健康保健', '', '', '', 'https://diannao.wang/app/238/', 94, 0, NULL, 238, 1, 'jiankangbaojian'),
(239, 0, 2, 139, '0,317,139', 0, '239', '参考软件', '', '', '', 'https://diannao.wang/app/239/', 12, 0, NULL, 239, 1, 'cankaoruanjian'),
(240, 0, 2, 139, '0,317,139', 0, '240', '体育竞技', '', '', '', 'https://diannao.wang/app/240/', 24, 0, NULL, 240, 1, 'tiyujingji'),
(241, 0, 2, 139, '0,317,139', 0, '241', '音乐软件', '', '', '', 'https://diannao.wang/app/241/', 42, 0, NULL, 241, 1, 'yinleruanjian'),
(242, 0, 2, 139, '0,317,139', 0, '242', '金融财务', '', '', '', 'https://diannao.wang/app/242/', 174, 0, NULL, 242, 1, 'jinrongcaiwu'),
(243, 0, 2, 139, '0,317,139', 0, '243', '其它软件', '', '', '', 'https://diannao.wang/app/243/', 3, 0, NULL, 243, 1, 'qitaruanjian'),
(244, 0, 2, 139, '0,317,139', 0, '244', '新闻资讯', '', '', '', 'https://diannao.wang/app/244/', 106, 0, NULL, 244, 1, 'xinwenzixun'),
(245, 0, 2, 139, '0,317,139', 0, '245', '图书杂志', '', '', '', 'https://diannao.wang/app/245/', 64, 0, NULL, 245, 1, 'tushuzazhi'),
(246, 0, 2, 139, '0,317,139', 0, '246', '商业软件', '', '', '', 'https://diannao.wang/app/246/', 80, 0, NULL, 246, 1, 'shangyeruanjian'),
(247, 0, 2, 139, '0,317,139', 0, '247', '效率工具', '', '', '', 'https://diannao.wang/app/247/', 81, 0, NULL, 247, 1, 'xiaolvgongju'),
(248, 0, 2, 139, '0,317,139', 0, '248', '教育教学', '', '', '', 'https://diannao.wang/app/248/', 111, 0, NULL, 248, 1, 'jiaoyujiaoxue'),
(249, 0, 2, 139, '0,317,139', 0, '249', '天气软件', '', '', '', 'https://diannao.wang/app/249/', 15, 0, NULL, 249, 1, 'tianqiruanjian'),
(250, 0, 2, 139, '0,317,139', 0, '250', '卫生医疗', '', '', '', 'https://diannao.wang/app/250/', 17, 0, NULL, 250, 1, 'weishengyiliao'),
(251, 0, 2, 139, '0,317,139', 0, '251', '旅行软件', '', '', '', 'https://diannao.wang/app/251/', 139, 0, NULL, 251, 1, 'lvxingruanjian'),
(252, 0, 2, 139, '0,317,139', 0, '252', '游戏娱乐', '', '', '', 'https://diannao.wang/app/252/', 209, 0, NULL, 252, 1, 'youxiyule'),
(253, 0, 2, 140, '0,133,140', 0, '253', '棋牌游戏', '', '', '', 'https://diannao.wang/soft/253/', 1260, 0, NULL, 253, 1, 'qipaiyouxi'),
(255, 0, 2, 140, '0,133,140', 0, '255', '智力游戏', '', '', '', 'https://diannao.wang/soft/255/', 4948, 0, NULL, 255, 1, 'zhiliyouxi'),
(256, 0, 2, 140, '0,133,140', 0, '256', '方块游戏', '', '', '', 'https://diannao.wang/soft/256/', 323, 0, NULL, 256, 1, 'fangkuaiyouxi'),
(257, 0, 2, 140, '0,133,140', 0, '257', '赛车竞速', '', '', '', 'https://diannao.wang/soft/257/', 399, 0, NULL, 257, 1, 'saichejingsu'),
(258, 0, 2, 140, '0,133,140', 0, '258', 'Flash游戏', '', '', '', 'https://diannao.wang/soft/258/', 48674, 0, NULL, 258, 1, 'flashyouxi'),
(259, 0, 2, 140, '0,133,140', 0, '259', '其他游戏', '', '', '', 'https://diannao.wang/soft/259/', 1351, 0, NULL, 259, 1, 'qitayouxi'),
(260, 0, 2, 140, '0,133,140', 0, '260', 'WEB游戏', '', '', '', 'https://diannao.wang/soft/260/', 770, 0, NULL, 260, 1, 'webyouxi'),
(261, 0, 2, 140, '0,133,140', 0, '261', '游戏工具', '', '', '', 'https://diannao.wang/soft/261/', 6051, 0, NULL, 261, 1, 'youxigongju'),
(262, 0, 2, 140, '0,133,140', 0, '262', '起名工具', '', '', '', 'https://diannao.wang/soft/262/', 807, 0, NULL, 262, 1, 'qiminggongju'),
(263, 0, 2, 140, '0,133,140', 0, '263', '网络游戏', '', '', '', 'https://diannao.wang/soft/263/', 1182, 0, NULL, 263, 1, 'wangluoyouxi'),
(264, 0, 2, 140, '0,133,140', 0, '264', 'PC模拟器', '', '', '', 'https://diannao.wang/soft/264/', 167, 0, NULL, 264, 1, 'pcmoniqi'),
(265, 0, 2, 141, '0,133,141', 0, '265', 'CAD图形', '', '', '', 'https://diannao.wang/soft/265/', 516, 0, NULL, 265, 1, 'cadtuxing'),
(266, 0, 2, 141, '0,133,141', 0, '266', '图像处理', '', '', '', 'https://diannao.wang/soft/266/', 3688, 0, NULL, 266, 1, 'tuxiangchuli'),
(267, 0, 2, 141, '0,133,141', 0, '267', '图片压缩', '', '', '', 'https://diannao.wang/soft/267/', 99, 0, NULL, 267, 1, 'tupianyasuo'),
(268, 0, 2, 141, '0,133,141', 0, '268', '图像浏览', '', '', '', 'https://diannao.wang/soft/268/', 872, 0, NULL, 268, 1, 'tuxiangzuolan'),
(269, 0, 2, 141, '0,133,141', 0, '269', '图像管理', '', '', '', 'https://diannao.wang/soft/269/', 194, 0, NULL, 269, 1, 'tuxiangguanli'),
(270, 0, 2, 141, '0,133,141', 0, '270', '图像捕捉', '', '', '', 'https://diannao.wang/soft/270/', 750, 0, NULL, 270, 1, 'tuxiangbozhuo'),
(271, 0, 2, 141, '0,133,141', 0, '271', '动画制作', '', '', '', 'https://diannao.wang/soft/271/', 419, 0, NULL, 271, 1, 'donghuazhizuo'),
(272, 0, 2, 141, '0,133,141', 0, '272', '图标图库', '', '', '', 'https://diannao.wang/soft/272/', 3916, 0, NULL, 272, 1, 'tubiaotuku'),
(273, 0, 2, 141, '0,133,141', 0, '273', 'Flash工具', '', '', '', 'https://diannao.wang/soft/273/', 165, 0, NULL, 273, 1, 'flashgongju'),
(274, 0, 2, 141, '0,133,141', 0, '274', '矢量图库', '', '', '', 'https://diannao.wang/soft/274/', 9779, 0, NULL, 274, 1, 'shiliangtuku'),
(275, 0, 2, 141, '0,133,141', 0, '275', 'PSD素材', '', '', '', 'https://diannao.wang/soft/275/', 2174, 0, NULL, 275, 1, 'psdsucai'),
(276, 0, 2, 141, '0,133,141', 0, '276', 'PPT模板', '', '', '', 'https://diannao.wang/soft/276/', 1285, 0, NULL, 276, 1, 'pptmoban'),
(277, 0, 2, 142, '0,133,142', 0, '277', '系统工具', '', '', '', 'https://diannao.wang/soft/277/', 1086, 0, NULL, 277, 1, 'xitonggongju'),
(278, 0, 2, 142, '0,133,142', 0, '278', '网络工具', '', '', '', 'https://diannao.wang/soft/278/', 1074, 0, NULL, 278, 1, 'wangluogongju'),
(279, 0, 2, 142, '0,133,142', 0, '279', '媒体工具', '', '', '', 'https://diannao.wang/soft/279/', 2937, 0, NULL, 279, 1, 'meitigongju'),
(280, 0, 2, 142, '0,133,142', 0, '280', '游戏娱乐', '', '', '', 'https://diannao.wang/soft/280/', 472, 0, NULL, 280, 1, 'youxiyule'),
(281, 0, 2, 142, '0,133,142', 0, '281', '应用程序', '', '', '', 'https://diannao.wang/soft/281/', 2874, 0, NULL, 281, 1, 'yingyongchengxu'),
(282, 0, 2, 143, '0,133,143', 0, '282', '办公软件', '', '', '', 'https://diannao.wang/soft/282/', 3336, 0, NULL, 282, 1, 'bangongruanjian'),
(283, 0, 2, 143, '0,133,143', 0, '283', '记事管理', '', '', '', 'https://diannao.wang/soft/283/', 1535, 0, NULL, 283, 1, 'jishiguanli'),
(284, 0, 2, 143, '0,133,143', 0, '284', '财务管理', '', '', '', 'https://diannao.wang/soft/284/', 3189, 0, NULL, 284, 1, 'caiwuguanli'),
(285, 0, 2, 143, '0,133,143', 0, '285', '行政管理', '', '', '', 'https://diannao.wang/soft/285/', 1189, 0, NULL, 285, 1, 'xingzhengguanli'),
(286, 0, 2, 143, '0,133,143', 0, '286', '客户管理', '', '', '', 'https://diannao.wang/soft/286/', 1227, 0, NULL, 286, 1, 'kehuguanli'),
(287, 0, 2, 143, '0,133,143', 0, '287', '法律法规', '', '', '', 'https://diannao.wang/soft/287/', 162, 0, NULL, 287, 1, 'falvfagui'),
(288, 0, 2, 143, '0,133,143', 0, '288', '辅助设计', '', '', '', 'https://diannao.wang/soft/288/', 335, 0, NULL, 288, 1, 'fuzhusheji'),
(289, 0, 2, 143, '0,133,143', 0, '289', '农业相关', '', '', '', 'https://diannao.wang/soft/289/', 146, 0, NULL, 289, 1, 'nongyexiangguan'),
(290, 0, 2, 143, '0,133,143', 0, '290', '机械电子', '', '', '', 'https://diannao.wang/soft/290/', 586, 0, NULL, 290, 1, 'jixiedianzi'),
(291, 0, 2, 143, '0,133,143', 0, '291', '工程建筑', '', '', '', 'https://diannao.wang/soft/291/', 2003, 0, NULL, 291, 1, 'gongchengjianzhu'),
(292, 0, 2, 143, '0,133,143', 0, '292', '纺织服装', '', '', '', 'https://diannao.wang/soft/292/', 669, 0, NULL, 292, 1, 'fangzhifuzhuang'),
(293, 0, 2, 143, '0,133,143', 0, '293', '股票证券', '', '', '', 'https://diannao.wang/soft/293/', 1690, 0, NULL, 293, 1, 'gupiaozhengquan'),
(294, 0, 2, 143, '0,133,143', 0, '294', '保险行业', '', '', '', 'https://diannao.wang/soft/294/', 102, 0, NULL, 294, 1, 'baoxianxingye'),
(295, 0, 2, 143, '0,133,143', 0, '295', '审计评估', '', '', '', 'https://diannao.wang/soft/295/', 92, 0, NULL, 295, 1, 'shenjipinggu'),
(296, 0, 2, 143, '0,133,143', 0, '296', '旅游餐饮', '', '', '', 'https://diannao.wang/soft/296/', 1707, 0, NULL, 296, 1, 'lvyoucanyin'),
(297, 0, 2, 143, '0,133,143', 0, '297', '美容美发', '', '', '', 'https://diannao.wang/soft/297/', 369, 0, NULL, 297, 1, 'meirongmeifa'),
(298, 0, 2, 143, '0,133,143', 0, '298', '健康医药', '', '', '', 'https://diannao.wang/soft/298/', 2099, 0, NULL, 298, 1, 'jiankangyiyao'),
(299, 0, 2, 143, '0,133,143', 0, '299', '出版印刷', '', '', '', 'https://diannao.wang/soft/299/', 222, 0, NULL, 299, 1, 'chubanyinshua'),
(300, 0, 2, 143, '0,133,143', 0, '300', '商业贸易', '', '', '', 'https://diannao.wang/soft/300/', 6814, 0, NULL, 300, 1, 'shangyemaoyi'),
(301, 0, 2, 143, '0,133,143', 0, '301', '交通运输', '', '', '', 'https://diannao.wang/soft/301/', 1259, 0, NULL, 301, 1, 'jiaotongyunshu'),
(302, 0, 2, 143, '0,133,143', 0, '302', '其他行业', '', '', '', 'https://diannao.wang/soft/302/', 2493, 0, NULL, 302, 1, 'qitaxingye'),
(303, 0, 2, 143, '0,133,143', 0, '303', '仓储租借', '', '', '', 'https://diannao.wang/soft/303/', 768, 0, NULL, 303, 1, 'cangchuzujie'),
(304, 0, 2, 143, '0,133,143', 0, '304', '彩票工具', '', '', '', 'https://diannao.wang/soft/304/', 1416, 0, NULL, 304, 1, 'caipiaogongju'),
(317, 0, 2, 0, '0', 1, '317,138,224,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,139,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,349,361,362,363,364,365,366,367,368,369,370,350,371,372,373,374,375,376,377,378,379,380', '应用', '', '', '', 'https://diannao.wang/app/', 0, 0, NULL, 317, 1, 'yingyong'),
(305, 0, 2, 144, '0,133,144', 0, '305', '编程控件', '', '', '', 'https://diannao.wang/soft/305/', 685, 0, NULL, 305, 1, 'bianchengkongjian'),
(306, 0, 2, 144, '0,133,144', 0, '306', '安装制作', '', '', '', 'https://diannao.wang/soft/306/', 315, 0, NULL, 306, 1, 'anzhuangzhizuo'),
(307, 0, 2, 144, '0,133,144', 0, '307', '编程工具', '', '', '', 'https://diannao.wang/soft/307/', 2250, 0, NULL, 307, 1, 'bianchenggongju'),
(308, 0, 2, 144, '0,133,144', 0, '308', '数据库类', '', '', '', 'https://diannao.wang/soft/308/', 909, 0, NULL, 308, 1, 'shujukulei'),
(309, 0, 2, 144, '0,133,144', 0, '309', '源码下载', '', '', '', 'https://diannao.wang/soft/309/', 12806, 0, NULL, 309, 1, 'yuanmaxiazai'),
(310, 0, 2, 144, '0,133,144', 0, '310', 'ASP源码', '', '', '', 'https://diannao.wang/soft/310/', 5762, 0, NULL, 310, 1, 'aspyuanma'),
(311, 0, 2, 144, '0,133,144', 0, '311', 'PHP源码', '', '', '', 'https://diannao.wang/soft/311/', 4551, 0, NULL, 311, 1, 'phpyuanma'),
(312, 0, 2, 144, '0,133,144', 0, '312', '.NET源码', '', '', '', 'https://diannao.wang/soft/312/', 1632, 0, NULL, 312, 1, '.netyuanma'),
(313, 0, 2, 144, '0,133,144', 0, '313', 'JSP源码', '', '', '', 'https://diannao.wang/soft/313/', 269, 0, NULL, 313, 1, 'jspyuanma'),
(314, 0, 2, 144, '0,133,144', 0, '314', '其他源码', '', '', '', 'https://diannao.wang/soft/314/', 567, 0, NULL, 314, 1, 'qitayuanma'),
(315, 0, 2, 144, '0,133,144', 0, '315', '网页模板', '', '', '', 'https://diannao.wang/soft/315/', 5, 0, NULL, 315, 1, 'wangyemoban'),
(316, 0, 2, 144, '0,133,144', 0, '316', '程序模板', '', '', '', 'https://diannao.wang/soft/316/', 2, 0, NULL, 316, 1, 'chengxumoban'),
(327, 0, 2, 138, '0,317,138', 0, '327', '社交', '', '', '', 'https://diannao.wang/app/327/', 338, 0, NULL, 327, 1, 'shejiao'),
(328, 0, 2, 138, '0,317,138', 0, '328', '工具', '', '', '', 'https://diannao.wang/app/328/', 397, 0, NULL, 328, 1, 'gongju'),
(329, 0, 2, 138, '0,317,138', 0, '329', '影音', '', '', '', 'https://diannao.wang/app/329/', 206, 0, NULL, 329, 1, 'yingyin'),
(330, 0, 2, 138, '0,317,138', 0, '330', '阅读', '', '', '', 'https://diannao.wang/app/330/', 186, 0, NULL, 330, 1, 'yuedu'),
(331, 0, 2, 138, '0,317,138', 0, '331', '生活', '', '', '', 'https://diannao.wang/app/331/', 622, 0, NULL, 331, 1, 'shenghuo'),
(332, 0, 2, 138, '0,317,138', 0, '332', '导航', '', '', '', 'https://diannao.wang/app/332/', 55, 0, NULL, 332, 1, 'daohang'),
(333, 0, 2, 138, '0,317,138', 0, '333', '摄影', '', '', '', 'https://diannao.wang/app/333/', 54, 0, NULL, 333, 1, 'sheying'),
(334, 0, 2, 138, '0,317,138', 0, '334', '输入法', '', '', '', 'https://diannao.wang/app/334/', 14, 0, NULL, 334, 1, 'shurufa'),
(335, 0, 2, 138, '0,317,138', 0, '335', '浏览器', '', '', '', 'https://diannao.wang/app/335/', 34, 0, NULL, 335, 1, 'zuolanqi'),
(336, 0, 2, 138, '0,317,138', 0, '336', '健康', '', '', '', 'https://diannao.wang/app/336/', 95, 0, NULL, 336, 1, 'jiankang'),
(337, 0, 2, 138, '0,317,138', 0, '337', '旅游', '', '', '', 'https://diannao.wang/app/337/', 113, 0, NULL, 337, 1, 'lvyou'),
(338, 0, 2, 138, '0,317,138', 0, '338', '购物', '', '', '', 'https://diannao.wang/app/338/', 176, 0, NULL, 338, 1, 'gouwu'),
(339, 0, 2, 138, '0,317,138', 0, '339', '理财', '', '', '', 'https://diannao.wang/app/339/', 218, 0, NULL, 339, 1, 'licai'),
(340, 0, 2, 138, '0,317,138', 0, '340', '办公', '', '', '', 'https://diannao.wang/app/340/', 81, 0, NULL, 340, 1, 'bangong'),
(341, 0, 2, 138, '0,317,138', 0, '341', '教育', '', '', '', 'https://diannao.wang/app/341/', 115, 0, NULL, 341, 1, 'jiaoyu'),
(342, 0, 2, 138, '0,317,138', 0, '342', '系统', '', '', '', 'https://diannao.wang/app/342/', 70, 0, NULL, 342, 1, 'xitong'),
(343, 0, 2, 138, '0,317,138', 0, '343', '壁纸美化', '', '', '', 'https://diannao.wang/app/343/', 37, 0, NULL, 343, 1, 'bizhimeihua'),
(344, 0, 2, 138, '0,317,138', 0, '344', '其它', '', '', '', 'https://diannao.wang/app/344/', 10, 0, NULL, 344, 1, 'qita'),
(345, 0, 2, 138, '0,317,138', 0, '345', '新闻', '', '', '', 'https://diannao.wang/app/345/', 73, 0, NULL, 345, 1, 'xinwen'),
(346, 0, 2, 138, '0,317,138', 0, '346', '安全', '', '', '', 'https://diannao.wang/app/346/', 42, 0, NULL, 346, 1, 'anquan'),
(348, 0, 2, 133, '0,133', 1, '348,354,355,356,357,358,359,360', '硬件驱动', '', '', '', 'https://diannao.wang/soft/348/', 0, 0, NULL, 348, 1, 'yingjianqudong'),
(349, 0, 2, 317, '0,317', 1, '349,361,362,363,364,365,366,367,368,369,370', 'windows phone软件', '', '', '', 'https://diannao.wang/soft/349/', 0, 0, NULL, 349, 1, 'windows phoneruanjian'),
(350, 0, 2, 317, '0,317', 1, '350,371,372,373,374,375,376,377,378,379,380', 'Symbian软件', '', '', '', 'https://diannao.wang/soft/350/', 0, 0, NULL, 350, 1, 'symbianruanjian'),
(351, 0, 2, 133, '0,133', 1, '351,381,382,383,384,385,386,387', 'Linux软件', '', '', '', 'https://diannao.wang/soft/351/', 0, 0, NULL, 351, 1, 'linuxruanjian'),
(352, 0, 2, 133, '0,133', 1, '352,388,389,390,391,392,393,394,395,396,397', '其他系统平台', '', '', '', 'https://diannao.wang/soft/352/', 0, 0, NULL, 352, 1, 'qitaxitongpingtai'),
(353, 0, 2, 133, '0,133', 1, '353,398,399,400,401', '其他类别', '', '', '', 'https://diannao.wang/soft/353/', 0, 0, NULL, 353, 1, 'qitaleibie'),
(354, 0, 2, 348, '0,133,348', 0, '354', '显卡驱动', '', '', '', 'https://diannao.wang/soft/354/', 6350, 0, NULL, 354, 1, 'xiankaqudong'),
(355, 0, 2, 348, '0,133,348', 0, '355', '声卡驱动', '', '', '', 'https://diannao.wang/soft/355/', 2086, 0, NULL, 355, 1, 'shengkaqudong'),
(356, 0, 2, 348, '0,133,348', 0, '356', '网卡驱动', '', '', '', 'https://diannao.wang/soft/356/', 3615, 0, NULL, 356, 1, 'wangkaqudong'),
(357, 0, 2, 348, '0,133,348', 0, '357', '主板驱动', '', '', '', 'https://diannao.wang/soft/357/', 16133, 0, NULL, 357, 1, 'zhubanqudong'),
(358, 0, 2, 348, '0,133,348', 0, '358', '外设驱动', '', '', '', 'https://diannao.wang/soft/358/', 40008, 0, NULL, 358, 1, 'waishequdong'),
(359, 0, 2, 348, '0,133,348', 0, '359', '手机驱动', '', '', '', 'https://diannao.wang/soft/359/', 400, 0, NULL, 359, 1, 'shoujiqudong'),
(360, 0, 2, 348, '0,133,348', 0, '360', '硬件工具', '', '', '', 'https://diannao.wang/soft/360/', 14987, 0, NULL, 360, 1, 'yingjiangongju'),
(361, 0, 2, 349, '0,317,349', 0, '361', '系统工具', '', '', '', 'https://diannao.wang/soft/361/', 969, 0, NULL, 361, 1, 'xitonggongju'),
(362, 0, 2, 349, '0,317,349', 0, '362', '通讯网络', '', '', '', 'https://diannao.wang/soft/362/', 828, 0, NULL, 362, 1, 'tongxunwangluo'),
(363, 0, 2, 349, '0,317,349', 0, '363', '办公应用', '', '', '', 'https://diannao.wang/soft/363/', 552, 0, NULL, 363, 1, 'bangongyingyong'),
(364, 0, 2, 349, '0,317,349', 0, '364', '安全相关', '', '', '', 'https://diannao.wang/soft/364/', 105, 0, NULL, 364, 1, 'anquanxiangguan'),
(365, 0, 2, 349, '0,317,349', 0, '365', '图像媒体', '', '', '', 'https://diannao.wang/soft/365/', 552, 0, NULL, 365, 1, 'tuxiangmeiti'),
(366, 0, 2, 349, '0,317,349', 0, '366', '游戏娱乐', '', '', '', 'https://diannao.wang/soft/366/', 1674, 0, NULL, 366, 1, 'youxiyule'),
(367, 0, 2, 349, '0,317,349', 0, '367', 'GPS/地图', '', '', '', 'https://diannao.wang/soft/367/', 235, 0, NULL, 367, 1, 'gps/ditu'),
(368, 0, 2, 349, '0,317,349', 0, '368', '金融商务', '', '', '', 'https://diannao.wang/soft/368/', 158, 0, NULL, 368, 1, 'jinrongshangwu'),
(369, 0, 2, 349, '0,317,349', 0, '369', '阅读工具', '', '', '', 'https://diannao.wang/soft/369/', 150, 0, NULL, 369, 1, 'yuedugongju'),
(370, 0, 2, 349, '0,317,349', 0, '370', '手机主题', '', '', '', 'https://diannao.wang/soft/370/', 1269, 0, NULL, 370, 1, 'shoujizhuti'),
(371, 0, 2, 350, '0,317,350', 0, '371', '手机主题', '', '', '', 'https://diannao.wang/soft/371/', 2718, 0, NULL, 371, 1, 'shoujizhuti'),
(372, 0, 2, 350, '0,317,350', 0, '372', '阅读工具', '', '', '', 'https://diannao.wang/soft/372/', 174, 0, NULL, 372, 1, 'yuedugongju'),
(373, 0, 2, 350, '0,317,350', 0, '373', '系统工具', '', '', '', 'https://diannao.wang/soft/373/', 1188, 0, NULL, 373, 1, 'xitonggongju'),
(374, 0, 2, 350, '0,317,350', 0, '374', '通讯网络', '', '', '', 'https://diannao.wang/soft/374/', 968, 0, NULL, 374, 1, 'tongxunwangluo'),
(375, 0, 2, 350, '0,317,350', 0, '375', '办公应用', '', '', '', 'https://diannao.wang/soft/375/', 501, 0, NULL, 375, 1, 'bangongyingyong'),
(376, 0, 2, 350, '0,317,350', 0, '376', '安全相关', '', '', '', 'https://diannao.wang/soft/376/', 213, 0, NULL, 376, 1, 'anquanxiangguan'),
(377, 0, 2, 350, '0,317,350', 0, '377', '图像媒体', '', '', '', 'https://diannao.wang/soft/377/', 844, 0, NULL, 377, 1, 'tuxiangmeiti'),
(378, 0, 2, 350, '0,317,350', 0, '378', '游戏娱乐', '', '', '', 'https://diannao.wang/soft/378/', 2453, 0, NULL, 378, 1, 'youxiyule'),
(379, 0, 2, 350, '0,317,350', 0, '379', 'GPS/地图', '', '', '', 'https://diannao.wang/soft/379/', 197, 0, NULL, 379, 1, 'gps/ditu'),
(380, 0, 2, 350, '0,317,350', 0, '380', '金融商务', '', '', '', 'https://diannao.wang/soft/380/', 102, 0, NULL, 380, 1, 'jinrongshangwu'),
(381, 0, 2, 351, '0,133,351', 0, '381', '操作系统', '', '', '', 'https://diannao.wang/soft/381/', 325, 0, NULL, 381, 1, 'caozuoxitong'),
(382, 0, 2, 351, '0,133,351', 0, '382', '媒体工具', '', '', '', 'https://diannao.wang/soft/382/', 510, 0, NULL, 382, 1, 'meitigongju'),
(383, 0, 2, 351, '0,133,351', 0, '383', '网络工具', '', '', '', 'https://diannao.wang/soft/383/', 1248, 0, NULL, 383, 1, 'wangluogongju');
INSERT INTO `cz_category` (`catid`, `type`, `modelid`, `parentid`, `arrparentid`, `child`, `arrchildid`, `catname`, `style`, `image`, `description`, `url`, `items`, `hits`, `setting`, `listorder`, `ismenu`, `letter`) VALUES
(384, 0, 2, 351, '0,133,351', 0, '384', '编程开发', '', '', '', 'https://diannao.wang/soft/384/', 1212, 0, NULL, 384, 1, 'bianchengkaifa'),
(385, 0, 2, 351, '0,133,351', 0, '385', '系统工具', '', '', '', 'https://diannao.wang/soft/385/', 716, 0, NULL, 385, 1, 'xitonggongju'),
(386, 0, 2, 351, '0,133,351', 0, '386', '应用程序', '', '', '', 'https://diannao.wang/soft/386/', 898, 0, NULL, 386, 1, 'yingyongchengxu'),
(387, 0, 2, 351, '0,133,351', 0, '387', '游戏娱乐', '', '', '', 'https://diannao.wang/soft/387/', 186, 0, NULL, 387, 1, 'youxiyule'),
(388, 0, 2, 352, '0,133,352', 0, '388', '系统工具', '', '', '', 'https://diannao.wang/soft/388/', 292, 0, NULL, 388, 1, 'xitonggongju'),
(389, 0, 2, 352, '0,133,352', 0, '389', '通讯网络', '', '', '', 'https://diannao.wang/soft/389/', 2343, 0, NULL, 389, 1, 'tongxunwangluo'),
(390, 0, 2, 352, '0,133,352', 0, '390', '办公应用', '', '', '', 'https://diannao.wang/soft/390/', 142, 0, NULL, 390, 1, 'bangongyingyong'),
(391, 0, 2, 352, '0,133,352', 0, '391', '安全相关', '', '', '', 'https://diannao.wang/soft/391/', 28, 0, NULL, 391, 1, 'anquanxiangguan'),
(392, 0, 2, 352, '0,133,352', 0, '392', '图像媒体', '', '', '', 'https://diannao.wang/soft/392/', 107, 0, NULL, 392, 1, 'tuxiangmeiti'),
(393, 0, 2, 352, '0,133,352', 0, '393', '游戏娱乐', '', '', '', 'https://diannao.wang/soft/393/', 488, 0, NULL, 393, 1, 'youxiyule'),
(394, 0, 2, 352, '0,133,352', 0, '394', 'GPS/地图', '', '', '', 'https://diannao.wang/soft/394/', 24, 0, NULL, 394, 1, 'gps/ditu'),
(395, 0, 2, 352, '0,133,352', 0, '395', '金融商务', '', '', '', 'https://diannao.wang/soft/395/', 65, 0, NULL, 395, 1, 'jinrongshangwu'),
(396, 0, 2, 352, '0,133,352', 0, '396', '阅读工具', '', '', '', 'https://diannao.wang/soft/396/', 33, 0, NULL, 396, 1, 'yuedugongju'),
(397, 0, 2, 352, '0,133,352', 0, '397', '手机主题', '', '', '', 'https://diannao.wang/soft/397/', 7, 0, NULL, 397, 1, 'shoujizhuti'),
(398, 0, 2, 353, '0,133,353', 0, '398', '数码工具', '', '', '', 'https://diannao.wang/soft/398/', 263, 0, NULL, 398, 1, 'shumagongju'),
(399, 0, 2, 353, '0,133,353', 0, '399', '电子杂志', '', '', '', 'https://diannao.wang/soft/399/', 407, 0, NULL, 399, 1, 'dianzizazhi'),
(400, 0, 2, 353, '0,133,353', 0, '400', '软件教程', '', '', '', 'https://diannao.wang/soft/400/', 2815, 0, NULL, 400, 1, 'ruanjianjiaocheng'),
(401, 0, 2, 353, '0,133,353', 0, '401', '其它工具', '', '', '', 'https://diannao.wang/soft/401/', 2651, 0, NULL, 401, 1, 'qitagongju'),
(413, 1, 0, 1, '0,1', 0, '413', '我要投稿', '', '', '', 'https://diannao.wang/tougao/', 0, 0, NULL, 413, 1, 'woyaotougao'),
(402, 0, 2, 133, '0,133', 1, '402,403,404,405,406,407,408,409,410,411', '教育教学', '', '', '', 'https://diannao.wang/soft/402/', 0, 0, NULL, 402, 1, 'jiaoyujiaoxue'),
(403, 0, 2, 402, '0,133,402', 0, '403', '文科工具', '', '', '', 'https://diannao.wang/soft/403/', 558, 0, NULL, 403, 1, 'wenkegongju'),
(404, 0, 2, 402, '0,133,402', 0, '404', '理科工具', '', '', '', 'https://diannao.wang/soft/404/', 987, 0, NULL, 404, 1, 'likegongju'),
(405, 0, 2, 402, '0,133,402', 0, '405', '外语工具', '', '', '', 'https://diannao.wang/soft/405/', 2145, 0, NULL, 405, 1, 'waiyugongju'),
(406, 0, 2, 402, '0,133,402', 0, '406', '天文地理', '', '', '', 'https://diannao.wang/soft/406/', 214, 0, NULL, 406, 1, 'tianwendili'),
(407, 0, 2, 402, '0,133,402', 0, '407', '电脑学习', '', '', '', 'https://diannao.wang/soft/407/', 621, 0, NULL, 407, 1, 'diannaoxuexi'),
(408, 0, 2, 402, '0,133,402', 0, '408', '教育管理', '', '', '', 'https://diannao.wang/soft/408/', 1668, 0, NULL, 408, 1, 'jiaoyuguanli'),
(409, 0, 2, 402, '0,133,402', 0, '409', '考试系统', '', '', '', 'https://diannao.wang/soft/409/', 4188, 0, NULL, 409, 1, 'kaoshixitong'),
(410, 0, 2, 402, '0,133,402', 0, '410', '电子教室', '', '', '', 'https://diannao.wang/soft/410/', 247, 0, NULL, 410, 1, 'dianzijiaoshi'),
(411, 0, 2, 402, '0,133,402', 0, '411', '学前教育', '', '', '', 'https://diannao.wang/soft/411/', 484, 0, NULL, 411, 1, 'xueqianjiaoyu'),
(412, 0, 1, 128, '0,128', 0, '412', '冯东阳博客', '', '', '', 'https://diannao.wang/fengdongyang/', 1137, 0, NULL, 412, 1, 'fengdongyangboke'),
(414, 0, 1, 10, '0,10', 0, '414', '产品运营', '', '', '', 'https://diannao.wang/yunying/', 157, 0, NULL, 414, 1, 'chanpinyunying'),
(415, 0, 1, 120, '0,14,120', 0, '415', '域名', '', '', '', 'https://diannao.wang/domain/', 15, 0, NULL, 415, 1, 'yuming'),
(417, 0, 1, 0, '0', 1, '417,419,420,421,422,423,424,425', '汽车', '', '', '', 'https://diannao.wang/qiche/', 0, 0, NULL, 417, 1, 'qiche'),
(418, 0, 1, 416, '0,416', 0, '418', '家电维修知识', '', '', '', 'https://diannao.wang/jdwx/', 308, 0, NULL, 418, 1, 'jiadianweixiuzhishi'),
(419, 0, 1, 417, '0,417', 0, '419', '汽车新手上路', '', '', '', 'https://diannao.wang/qcxssl/', 139, 0, NULL, 419, 1, 'qichexinshoushanglu'),
(420, 0, 1, 417, '0,417', 0, '420', '汽车知识', '', '', '', 'https://diannao.wang/qczs/', 39, 0, NULL, 420, 1, 'qichezhishi'),
(421, 0, 1, 417, '0,417', 0, '421', '驾驶常识', '', '', '', 'https://diannao.wang/jscs/', 206, 0, NULL, 421, 1, 'jiashichangshi'),
(422, 0, 1, 417, '0,417', 0, '422', '驾照场地考试', '', '', '', 'https://diannao.wang/cdks/', 237, 0, NULL, 422, 1, 'jiazhaochangdikaoshi'),
(423, 0, 1, 417, '0,417', 0, '423', '汽车维修', '', '', '', 'https://diannao.wang/qcwx/', 44, 0, NULL, 423, 1, 'qicheweixiu'),
(424, 0, 1, 417, '0,417', 0, '424', '汽车保养', '', '', '', 'https://diannao.wang/qcby/', 1744, 0, NULL, 424, 1, 'qichebaoyang'),
(425, 0, 1, 417, '0,417', 0, '425', '汽车经验交流', '', '', '', 'https://diannao.wang/qcjyjl/', 994, 0, NULL, 425, 1, 'qichejingyanjiaoliu'),
(426, 0, 1, 22, '0,6,22', 0, '426', 'Windows服务器', '', '', '', 'https://diannao.wang/windows_server/', 9, 0, NULL, 426, 1, 'windowsfuwuqi'),
(427, 0, 1, 22, '0,6,22', 0, '427', 'Windows Server 2012', '', '', '', 'https://diannao.wang/windows2012/', 37, 0, NULL, 68, 1, 'windows server 2012'),
(428, 0, 1, 12, '0,12', 0, '428', '手机知识', '', '', '', 'https://diannao.wang/sjzs/', 3655, 0, NULL, 428, 1, 'shoujizhishi'),
(430, 0, 1, 125, '0,14,125', 0, '430', '其他软件教程', '', '', '', 'https://diannao.wang/rjjc/', 10, 0, NULL, 430, 1, 'qitaruanjianjiaocheng');

-- --------------------------------------------------------

--
-- 表的结构 `cz_member`
--

CREATE TABLE `cz_member` (
  `userid` mediumint(11) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `encrypt` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '随机码',
  `nickname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `regtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `lasttime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后登录时间',
  `regip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '注册ip',
  `lastip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上次登录ip',
  `loginnum` smallint(8) UNSIGNED DEFAULT '0' COMMENT '登陆次数',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '电子邮箱',
  `groupid` int(8) UNSIGNED DEFAULT '0' COMMENT '用户组id',
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户地址',
  `amount` decimal(8,2) UNSIGNED DEFAULT '0.00' COMMENT '金钱总额',
  `point` smallint(8) UNSIGNED DEFAULT '0' COMMENT '积分',
  `islock` tinyint(1) UNSIGNED DEFAULT '0' COMMENT '是否锁定，1=锁定',
  `qq` varchar(50) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'QQ',
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `weixin` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微信号',
  `remarks` text COLLATE utf8_unicode_ci COMMENT '备注',
  `isrn` tinyint(1) DEFAULT '0' COMMENT '是否已实名，0=未实名，1=实名，2=正在审核',
  `realname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `id_card` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证号'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='会员表';

--
-- 转存表中的数据 `cz_member`
--

INSERT INTO `cz_member` (`userid`, `username`, `password`, `encrypt`, `nickname`, `avatar`, `regtime`, `lasttime`, `regip`, `lastip`, `loginnum`, `email`, `groupid`, `address`, `amount`, `point`, `islock`, `qq`, `mobile`, `weixin`, `remarks`, `isrn`, `realname`, `id_card`) VALUES
(1, 'admin', '991cb36dc61b73dd37a385dd4927ce47', '', '管理员', '/uploads/image/20200531/1590918832985443.jpg', '2020-06-03 18:24:14', '2020-06-03 18:24:14', NULL, NULL, 0, 'dzh188@qq.com', 1, '广西', '8671.00', 0, 0, '8866629', '13286805000', 'wx', '', 0, '', ''),
(2, 'caozha', '5fd9cd58f4e516bae46557b355c5208a', NULL, '草札', '/uploads/image/20200531/1590918832985443.jpg', '2020-06-03 20:40:50', '2020-06-03 20:40:50', NULL, NULL, 0, 'dzh188@qq.com', 2, '广西贵港市', '0.00', 0, 1, '8866629', '13286805000', 'weixin', '备注', 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `cz_member_group`
--

CREATE TABLE `cz_member_group` (
  `groupid` int(11) NOT NULL COMMENT '用户组ID',
  `roles` text COLLATE utf8mb4_unicode_ci COMMENT '权限标识符，多个中间用,分隔',
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户组名称',
  `group_remarks` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `is_enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用，1为启用',
  `listorder` int(11) DEFAULT '0' COMMENT '排序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `cz_member_group`
--

INSERT INTO `cz_member_group` (`groupid`, `roles`, `group_name`, `group_remarks`, `is_enabled`, `listorder`) VALUES
(1, 'mine,cmt', '普通会员', '', 1, 100),
(2, 'mine,cmt', '高级会员', '', 1, 90);

-- --------------------------------------------------------

--
-- 表的结构 `cz_roles`
--

CREATE TABLE `cz_roles` (
  `role_id` int(11) NOT NULL COMMENT '权限组ID',
  `roles` text COLLATE utf8mb4_unicode_ci COMMENT '权限标识符，多个中间用,分隔',
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限组名称',
  `role_remarks` text COLLATE utf8mb4_unicode_ci COMMENT '备注',
  `is_enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用，1为启用'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `cz_roles`
--

INSERT INTO `cz_roles` (`role_id`, `roles`, `role_name`, `role_remarks`, `is_enabled`) VALUES
(1, 'config,roles,admin,log_view,log_del,mine,category,article,member,mbr_group', '超级管理员', '可使用后台所有功能', 1),
(2, 'article', '内容管理员', '测试停用', 0),
(3, 'article', '编辑', '只管理文章', 1);

-- --------------------------------------------------------

--
-- 表的结构 `cz_syslog`
--

CREATE TABLE `cz_syslog` (
  `log_id` int(11) NOT NULL,
  `log_content` text COMMENT '系统日志内容',
  `log_user` varchar(255) DEFAULT NULL COMMENT '操作管理员',
  `log_ip` varchar(50) DEFAULT NULL COMMENT 'IP',
  `log_datetime` datetime DEFAULT NULL COMMENT '操作时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统日志';

--
-- 转存表中的数据 `cz_syslog`
--

INSERT INTO `cz_syslog` (`log_id`, `log_content`, `log_user`, `log_ip`, `log_datetime`) VALUES
(1, '尝试使用管理员账号[admin]登陆失败，可能原因：账号或密码错误。', '未知', '127.0.0.1', '2020-05-19 20:50:59'),
(2, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-19 20:51:16'),
(3, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-19 20:53:44'),
(4, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-19 23:42:28'),
(5, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 01:24:28'),
(6, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 01:24:39'),
(8, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 11:14:03'),
(9, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 11:14:15'),
(15, '删除系统日志(ID)：10（共1条）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 11:44:03'),
(11, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 11:33:37'),
(12, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 11:34:13'),
(13, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 11:34:21'),
(14, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 11:34:40'),
(16, '修改管理员账号：weixin，ID：12', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 11:52:05'),
(17, '新增管理员账号：test1，ID：24', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 14:50:28'),
(18, '新增管理员账号：test2，ID：25', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 14:51:25'),
(19, '修改管理员账号：test1，ID：24', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 15:08:01'),
(20, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 15:26:53'),
(21, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 15:30:53'),
(22, '修改权限组：内容管理员，ID：2', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 15:31:00'),
(23, '修改权限组：编辑，ID：3', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 15:31:04'),
(24, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 17:47:03'),
(25, '修改管理员账号：lb，ID：4', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 18:24:50'),
(26, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 18:24:59'),
(27, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 18:29:54'),
(28, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 20:16:04'),
(29, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 20:16:16'),
(30, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 20:17:23'),
(31, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 20:45:00'),
(32, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 20:47:15'),
(33, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 20:49:27'),
(34, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 20:50:10'),
(35, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 21:14:09'),
(36, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 21:18:14'),
(37, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 21:22:27'),
(38, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 23:49:14'),
(39, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-20 23:55:13'),
(40, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 00:02:42'),
(41, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 00:16:45'),
(42, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 00:22:55'),
(43, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 00:27:42'),
(44, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 00:37:08'),
(45, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 00:46:18'),
(46, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 00:52:49'),
(47, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 00:56:56'),
(48, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 01:00:54'),
(49, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 01:00:57'),
(50, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 01:01:12'),
(51, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 01:37:37'),
(52, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 01:37:51'),
(53, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 01:38:07'),
(54, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:00:22'),
(55, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:19:45'),
(56, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:20:47'),
(57, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:20:51'),
(58, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:21:02'),
(59, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:24:09'),
(60, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:27:48'),
(61, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:29:07'),
(62, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:29:19'),
(63, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:36:46'),
(64, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:49:46'),
(65, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 10:50:04'),
(66, '修改我的资料或密码', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 11:26:22'),
(67, '修改我的资料或密码', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 11:27:20'),
(68, '修改我的资料或密码', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 11:29:31'),
(69, '修改我的资料或密码', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 11:30:55'),
(70, '修改管理员账号：test1，ID：24', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 11:32:47'),
(71, '修改我的资料或密码', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 11:33:21'),
(72, '修改我的资料或密码', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 15:01:59'),
(73, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-21 17:53:41'),
(74, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-25 18:06:52'),
(75, '修改管理员账号：test1，ID：24', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-25 18:07:14'),
(76, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-28 18:42:21'),
(77, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-28 18:49:53'),
(78, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-28 18:49:56'),
(79, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-28 18:50:14'),
(80, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-29 09:44:07'),
(81, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-29 14:35:10'),
(82, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 09:40:42'),
(83, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 14:32:08'),
(84, '新增子分类：测试2，ID：436', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 19:24:26'),
(85, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 19:44:21'),
(86, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 19:58:59'),
(87, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 20:01:19'),
(88, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 20:01:47'),
(89, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 20:01:50'),
(90, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 20:06:20'),
(91, '新增子分类：测试4，ID：471', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 20:06:38'),
(92, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 20:08:49'),
(93, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 20:24:45'),
(94, '新增子分类：测试0，ID：472', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-30 20:25:15'),
(95, '批量删除单页，分类ID：472', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:07:39'),
(96, '删除分类，catid：472，分类名：测试0', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:07:39'),
(97, '删除子分类，catid：469，分类名：测试3', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:08:35'),
(98, '批量删除单页内容，分类ID：469', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:08:35'),
(99, '删除子分类，catid：470，分类名：测试3', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:08:35'),
(100, '批量删除单页内容，分类ID：470', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:08:35'),
(101, '删除子分类，catid：471，分类名：测试4', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:08:35'),
(102, '批量删除单页内容，分类ID：471', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:08:35'),
(103, '批量删除文章内容，分类ID：436', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:08:35'),
(104, '删除分类，catid：436，分类名：测试2', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:08:35'),
(105, '修复栏目数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:12:02'),
(106, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:21:48'),
(107, '批量删除单页内容，分类ID：431', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:38'),
(108, '删除分类，catid：431，分类名：测试', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:38'),
(109, '批量删除单页内容，分类ID：432', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:41'),
(110, '删除分类，catid：432，分类名：测试', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:41'),
(111, '批量删除单页内容，分类ID：433', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:43'),
(112, '删除分类，catid：433，分类名：测试', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:43'),
(113, '批量删除文章内容，分类ID：434', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:46'),
(114, '删除分类，catid：434，分类名：测试2', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:46'),
(115, '批量删除文章内容，分类ID：435', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:49'),
(116, '删除分类，catid：435，分类名：测试2', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-31 21:31:49'),
(117, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 01:32:17'),
(118, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:19:26'),
(119, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:29:53'),
(120, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:29:56'),
(121, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:30:20'),
(122, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:40:01'),
(123, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:40:03'),
(124, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:40:13'),
(125, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:40:15'),
(126, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:40:16'),
(127, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:40:34'),
(128, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:40:37'),
(129, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 10:40:47'),
(130, '修复分类数据', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 11:20:29'),
(131, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 14:03:38'),
(132, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 18:15:49'),
(133, '修改文章，ID：6', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 20:57:53'),
(134, '新增文章，ID：7', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 21:15:10'),
(135, '删除文章(ID)：7', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 21:16:26'),
(136, '修改文章，ID：6', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 21:35:35'),
(137, '修改文章，ID：6', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-01 21:39:52'),
(138, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-02 10:16:49'),
(139, '修改文章，ID：6', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-02 14:21:25'),
(140, '修改文章，ID：6', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-02 14:21:37'),
(141, '新增文章，ID：8', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-02 18:12:41'),
(142, '修改文章，ID：8', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-02 18:12:58'),
(143, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 11:50:54'),
(144, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 14:07:43'),
(145, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 14:09:06'),
(146, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 14:09:10'),
(147, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 14:09:21'),
(148, '修改系统设置', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 14:24:06'),
(149, '新增用户组：普通会员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:06:31'),
(150, '修改会员组：普通会员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:49:20'),
(151, '修改会员组：普通会员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:49:47'),
(152, '删除用户组(ID)：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:54:58'),
(153, '新增用户组：测试，ID：2', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:55:05'),
(154, '新增用户组：测试22，ID：3', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:55:16'),
(155, '删除用户组(ID)：2,3', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:55:55'),
(156, '新增用户组：普通会员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:58:01'),
(157, '新增用户组：高级会员，ID：2', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:58:18'),
(158, '修改会员组：普通会员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:59:07'),
(159, '修改会员组：普通会员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 17:59:13'),
(160, '新增用户，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 20:40:50'),
(161, '修改用户，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 21:06:22'),
(162, '修改用户，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 21:07:03'),
(163, '修改用户，ID：2', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 21:07:45'),
(164, '删除用户(ID)：3', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 21:28:11');

-- --------------------------------------------------------

--
-- 表的结构 `cz_web_config`
--

CREATE TABLE `cz_web_config` (
  `id` int(11) NOT NULL,
  `web_config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `cz_web_config`
--

INSERT INTO `cz_web_config` (`id`, `web_config`) VALUES
(1, '{\"site_name\":\"caozha-admin\",\"site_url\":\"http:\\/\\/caozha.com\",\"admin_limit\":\"15\",\"roles_limit\":\"15\",\"syslog_limit\":\"15\",\"article_limit\":\"15\",\"member_limit\":\"15\",\"member_group_limit\":\"15\",\"index_title\":\"caozha-admin\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf\",\"index_keywords\":\"\\u8349\\u672d,caozha,caozha-admin\",\"index_description\":\"caozha-admin\\u662f\\u4e00\\u4e2a\\u901a\\u7528\\u7684\\u7f51\\u7ad9\\u540e\\u53f0\\u5f00\\u53d1\\u6846\\u67b6\\uff0c\\u57fa\\u4e8e\\u5f00\\u6e90\\u7684ThinkPHP6.0.2\\u3001layuimini v2\\u3001layui2.5.4\\u4ee5\\u53cafont-awesome-4.7.0\\u5f00\\u53d1\\uff0c\\u7279\\u70b9\\uff1a\\u6613\\u4e0a\\u624b\\uff0c\\u96f6\\u95e8\\u69db\\uff0c\\u754c\\u9762\\u6e05\\u723d\\u6781\\u7b80 \\u3002\",\"site_footer\":\"Copyright \\u00a9 2020 \\u8349\\u672d caozha.com All rights reserved.\"}');

--
-- 转储表的索引
--

--
-- 表的索引 `cz_administrators`
--
ALTER TABLE `cz_administrators`
  ADD PRIMARY KEY (`admin_id`);

--
-- 表的索引 `cz_article`
--
ALTER TABLE `cz_article`
  ADD PRIMARY KEY (`aid`) USING BTREE,
  ADD KEY `status` (`status`,`listorder`,`aid`),
  ADD KEY `listorder` (`catid`,`status`,`listorder`,`aid`),
  ADD KEY `catid` (`catid`,`status`,`aid`);

--
-- 表的索引 `cz_category`
--
ALTER TABLE `cz_category`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `module` (`parentid`,`listorder`,`catid`),
  ADD KEY `siteid` (`type`);

--
-- 表的索引 `cz_member`
--
ALTER TABLE `cz_member`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `email` (`email`(20));

--
-- 表的索引 `cz_member_group`
--
ALTER TABLE `cz_member_group`
  ADD PRIMARY KEY (`groupid`);

--
-- 表的索引 `cz_roles`
--
ALTER TABLE `cz_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- 表的索引 `cz_syslog`
--
ALTER TABLE `cz_syslog`
  ADD PRIMARY KEY (`log_id`);

--
-- 表的索引 `cz_web_config`
--
ALTER TABLE `cz_web_config`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cz_administrators`
--
ALTER TABLE `cz_administrators`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `cz_article`
--
ALTER TABLE `cz_article`
  MODIFY `aid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `cz_category`
--
ALTER TABLE `cz_category`
  MODIFY `catid` smallint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '栏目ID', AUTO_INCREMENT=473;

--
-- 使用表AUTO_INCREMENT `cz_member`
--
ALTER TABLE `cz_member`
  MODIFY `userid` mediumint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `cz_member_group`
--
ALTER TABLE `cz_member_group`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户组ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `cz_roles`
--
ALTER TABLE `cz_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限组ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `cz_syslog`
--
ALTER TABLE `cz_syslog`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- 使用表AUTO_INCREMENT `cz_web_config`
--
ALTER TABLE `cz_web_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
