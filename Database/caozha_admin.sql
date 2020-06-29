-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-06-29 21:12:49
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
(1, 'caozha', '5fd9cd58f4e516bae46557b355c5208a', NULL, 1, 1, '草札', '1320000000', 'dzh188@qq.com', 'wx', 'qq', '127.0.0.1', '2020-06-29 14:43:56', '2020-06-19 14:03:49', 79, NULL);

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
  `tags` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tag标签，多个中间用,分隔',
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

INSERT INTO `cz_article` (`aid`, `catid`, `title`, `content`, `style`, `thumb`, `keywords`, `description`, `tags`, `url`, `listorder`, `status`, `islink`, `inputtime`, `iscomment`, `author`, `copyfrom`, `hits`, `isreco`, `ishot`, `istop`) VALUES
(1, 1, '新冠肺炎权威小贴士', '<p>内容可随意通过数据库添加（此处省略）</p>', '', '', '', NULL, NULL, NULL, 0, 9, 0, '2020-05-23 20:57:40', 1, NULL, NULL, 89, 0, 0, 0),
(2, 1, '必读！关于新冠肺炎的20个知识点', '<p>内容可随意通过数据库添加（此处省略）</p>', '', '', '', NULL, NULL, NULL, 0, 9, 1, '2020-05-23 20:57:33', 1, NULL, NULL, 1, 0, 0, 0),
(3, 1, '你需要知道的新冠肺炎最新知识', '<p>内容可随意通过数据库添加（此处省略）</p>', '', '', '', NULL, NULL, NULL, 0, 9, 0, '2020-05-23 20:57:25', 0, NULL, NULL, 4, 0, 0, 0),
(4, 1, '新冠肺炎患者需要注意哪些心理疏导?', '<p>内容可随意通过数据库添加（此处省略）</p>', '', '', '', NULL, NULL, NULL, 0, 9, 0, '2020-05-23 20:55:29', 1, NULL, NULL, 7, 0, 0, 0),
(5, 1, '新冠肺炎的日常防护知识', '<p><strong>日常防护知识：</strong></p><p>1.最重要的一条：不要到处跑。</p><p>专家始终强调，预防新冠肺炎最有效的方式之一是：减少出行，这不仅关乎自己和家人，也关乎整个社会。一定要外出时不要乘坐比较拥挤的公共交通车，建议步行或开车，逗留时间尽量缩短。宅在家时，应格外注意3个细节：通风：每日打开门窗通风2-3次，每次30分钟左右；天气好时，可以晒晒被子、衣服。洗手：回家后、做菜前、吃饭前、如厕后，应在流动水下用肥皂或洗手液揉搓30秒左右。饮食安全：处理食物时生熟分开，肉类充分做熟再吃；家庭实行分餐制或使用公筷。不要吃野味。</p><p>2.不要参加集会。</p><p>少出门、少聚会，是减少交叉感染的重要方法，尤其应避免去人员密集的公共场所，如商场、公共浴池、棋牌室、医院等。</p><p>3.出门戴口罩，不一定戴N95。</p><p>钟南山院士表示，戴口罩不一定要戴N95，医用外科口罩即可阻止大部分病毒进入呼吸道。普通口罩也能起到一定的隔离作用。如果口罩不够用，普通大众的口罩不必用一次换一次，可根据清洁程度延长使用时间。戴口罩时要把口鼻都完全覆盖住，并与面部贴合严实，尽量减少漏气情况。摘口罩时，不要抓着污染面，用手抓住系带脱离，扔到垃圾桶，不要到处乱扔。</p><p>4.学会正确洗手。</p><p>新型冠状病毒可通过接触传播，如果没有注意使双手沾上病毒，揉眼睛时就可能造成感染，所以一定要勤洗手。暂没有洗手条件时可用消毒湿巾擦拭双手。</p>', '', '', '', NULL, NULL, NULL, 0, 9, 0, '2020-05-23 20:55:41', 1, NULL, NULL, 55, 0, 0, 0),
(6, 1, '我省昨日新冠肺炎疫情公告', '<p>据省卫健委官网公布，5月23日0-24时，我省新增新型冠状病毒肺炎确诊病例<span style=\\\"color: rgb(255, 0, 0);\\\">xx</span>例；新增疑似病例xx例；新增治愈出院病例xx例；新增死亡病例x例。</p>', '风格', '/uploads/image/20200531/1590918832985443.jpg', '关键词', '文章描述', '', '', 11, 9, 0, '2020-06-01 20:57:50', 1, '作者', '文章来源', 16993, 1, 1, 1),
(8, 1, '开源系统caozha-admin正式上线，欢迎使用', '<p style=\\\"text-indent: 2em;\\\">开源系统caozha-admin正式上线，欢迎使用！</p><p style=\\\"text-indent: 2em;\\\"><span style=\\\"\\\\&quot;color:\\\">caozha-admin是一个通用的PHP网站后台管理框架，基于开源的ThinkPHP开发，特点：易上手，零门槛，界面清爽极简，极便于二次开发。</span></p>', '', '', '', '', 'tag', '', 0, 9, 0, '2020-06-02 18:11:40', 1, '', '', 4, 1, 1, 1);

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
(1, 0, 1, 0, '0', 0, '1', '系统公告', NULL, '', '', '', 0, 0, NULL, 1, 1, NULL),
(2, 0, 1, 0, '0', 0, '2', '国内新闻', NULL, '', '', '', 0, 0, NULL, 2, 1, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cz_comment`
--

CREATE TABLE `cz_comment` (
  `id` int(11) NOT NULL,
  `cmtname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论者昵称',
  `userid` int(11) DEFAULT '0' COMMENT '用户ID,0为游客',
  `userpic` int(4) DEFAULT NULL COMMENT '游客用户的头像',
  `cmtip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论IP',
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  `cmtid` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论ID，标识符，用于关联',
  `catid` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '评论分类ID，标识符，用于关联',
  `parentid` int(11) DEFAULT '0' COMMENT '父ID',
  `arrparentid` text COLLATE utf8mb4_unicode_ci COMMENT '所有父ID，多个中间按顺序用逗号,分隔',
  `cmtcontent` text COLLATE utf8mb4_unicode_ci COMMENT '评论内容',
  `like_num` int(11) DEFAULT '0' COMMENT '点赞次数',
  `bad_num` int(11) DEFAULT '0' COMMENT '被踩次数',
  `ischeck` tinyint(1) DEFAULT '0' COMMENT '是否审核通过，1=通过',
  `ishot` tinyint(1) DEFAULT '0' COMMENT '是否热门评论，1=热门'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `cz_comment`
--

INSERT INTO `cz_comment` (`id`, `cmtname`, `userid`, `userpic`, `cmtip`, `addtime`, `cmtid`, `catid`, `parentid`, `arrparentid`, `cmtcontent`, `like_num`, `bad_num`, `ischeck`, `ishot`) VALUES
(1, '草札', 2, NULL, '127.0.0.1', '2020-06-05 19:01:20', 'act_1', '0', 0, NULL, '这篇文章不错啊，很精彩！', 36, 7, 1, 1),
(2, '张峰', 0, 15, '127.0.0.1', '2020-06-05 19:01:20', 'act_1', '0', 0, NULL, '使用有什么诀窍吗？', 1, 0, 1, 1),
(3, '小林', 0, 16, '127.0.0.1', '2020-06-05 19:17:26', 'act_1', '0', 1, '1', '对啊，我也觉得还是不错的！[/呲牙]', 0, 1, 1, 0),
(4, '李露', 0, 22, '127.0.0.1', '2020-06-05 19:17:26', 'act_1', '0', 3, '1,3', '你懂个什么啊！[/憨笑]', 1, 0, 1, 0),
(5, '大黄', 0, 33, '127.0.0.1', '2020-06-09 02:29:54', 'act_1', '0', 0, '', '[/哈欠]有点困了', 1, 0, 1, 0),
(6, '测试', 0, 31, '127.0.0.1', '2020-06-09 02:31:13', 'act_1', '0', 5, '5', '[/斜眼笑]那可以去睡了', 0, 1, 1, 0),
(7, '阿达', 0, 17, '127.0.0.1', '2020-06-09 02:49:56', 'act_1', '0', 0, '', '[/酷]大家好', 2, 1, 1, 0),
(8, '', 0, 25, '127.0.0.1', '2020-06-09 11:33:57', 'act_1', '0', 6, '5,6', '睡得比狗晚，起得比鸡早[/偷笑]', 0, 1, 1, 0),
(9, '', 0, 10, '127.0.0.1', '2020-06-09 16:53:33', 'act_1', '0', 0, '', '[/斜眼笑]', 0, 1, 1, 0),
(10, '', 0, 3, '127.0.0.1', '2020-06-09 17:10:58', 'act_1', '0', 0, '', '你好啊[/酷]', 1, 0, 1, 0),
(11, '', 0, 41, '127.0.0.1', '2020-06-09 17:14:22', 'act_1', '0', 0, '', '[img]https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1332800745,3820435792&fm=11&gp=0.jpg[/img]测试提交图片', 0, 1, 1, 0),
(12, '', 0, 28, '127.0.0.1', '2020-06-09 18:25:13', 'act_1', '0', 0, '', '[/呲牙]测试提交脚本。百度网链接\ndocument.write(\\\'\\\');\n', 1, 0, 1, 0),
(13, '大宝', 0, 39, '127.0.0.1', '2020-06-10 17:11:09', 'act_1', '0', 0, '', '[/哈欠]下午好！', 1, 0, 1, 0),
(14, '', 0, 14, '127.0.0.1', '2020-06-10 23:42:20', 'act_1', '0', 0, '', '测试换行。\r\n大家晚上好啊！\r\n[/调皮]', 1, 0, 1, 0),
(16, '菲尔丁', 0, 37, '127.0.0.1', '2020-06-11 12:01:07', 'act_1', '0', 0, '', '如果你把金钱当成上帝，它便会像魔鬼一样折磨你。', 1, 0, 1, 0),
(17, '', 0, 1, '127.0.0.1', '2020-06-11 14:33:22', 'act_1', '0', 0, '', '每个人心里都有一团火，路过的人只能看到烟。但是我觉得总会有一个人看到这团火，然后走过来，陪我一起。', 1, 0, 1, 0);

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
(1, 'admin', '991cb36dc61b73dd37a385dd4927ce47', '', '管理员', '../../uploads/image/20200531/1590918832985443.jpg', '2020-06-03 18:24:14', '2020-06-03 18:24:14', NULL, NULL, 0, 'dzh188@qq.com', 1, '广西', '8671.00', 0, 0, '8866629', '13286805000', 'wx', '', 0, '', ''),
(2, 'caozha', '5fd9cd58f4e516bae46557b355c5208a', NULL, '草札', '../../uploads/image/20200531/1590918832985443.jpg', '2020-06-03 20:40:50', '2020-06-03 20:40:50', NULL, NULL, 0, 'dzh188@qq.com', 2, '广西贵港市', '0.00', 0, 1, '8866629', '13286805000', 'weixin', '备注', 0, '', '');

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
(1, 'config,roles,admin,log_view,log_del,mine,category,article,member,mbr_group,comment', '超级管理员', '可使用后台所有功能', 1),
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
(164, '删除用户(ID)：3', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 21:28:11'),
(165, '修改用户，ID：2', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-03 21:48:26'),
(166, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 09:37:43'),
(167, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 09:56:19'),
(168, '修改文章，ID：6', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 11:00:24'),
(169, '退出登陆', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 12:35:18'),
(170, '登陆成功', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 12:35:47'),
(171, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 14:04:59'),
(172, '修改权限组：超级管理员，ID：1', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 14:05:30'),
(173, '修改权限组：超级管理员，ID：1(Chrome 78.0.3904.108，Windows 10)', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 15:05:12'),
(174, '修改权限组：内容管理员，ID：2（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 15:06:01'),
(175, '修改文章，ID：8（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-04 16:32:25'),
(176, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-05 16:58:36'),
(177, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-08 11:14:03'),
(178, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-08 16:30:49'),
(179, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-08 23:44:43'),
(180, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-09 13:14:38'),
(181, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-10 15:06:48'),
(182, '修改权限组：超级管理员，ID：1（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-10 16:30:46'),
(183, '修改系统设置（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-10 16:35:51'),
(184, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-10 22:55:16'),
(185, '审核评论(ID)：14,13,12（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:00:38'),
(186, '取消评论审核(ID)：14,13（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:11:39'),
(187, '通过评论审核(ID)：14,13（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:11:55'),
(188, '设为热门评论(ID)：14（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:12:02'),
(189, '取消热门评论(ID)：14（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:12:10'),
(190, '设为热门评论(ID)：14（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:12:23'),
(191, '取消热门评论(ID)：14（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:12:33'),
(192, '删除评论(ID)：15（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:15:57'),
(193, '取消评论审核(ID)：14（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:21:34'),
(194, '通过评论审核(ID)：14（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 01:21:38'),
(195, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 10:50:10'),
(196, '取消热门评论(ID)：1（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 10:59:06'),
(197, '设为热门评论(ID)：1（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 10:59:39'),
(198, '取消热门评论(ID)：1（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 11:00:53'),
(199, '设为热门评论(ID)：1（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 11:01:08'),
(200, '退出登陆（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 11:20:15'),
(201, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 11:29:25'),
(202, '取消热门评论(ID)：5（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 11:32:00'),
(203, '退出登陆（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-11 14:44:19'),
(204, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-12 15:57:18'),
(205, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-12 16:07:28'),
(206, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-12 16:15:33'),
(207, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-12 16:17:07'),
(208, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-12 17:23:42'),
(209, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-17 17:57:19'),
(210, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-18 10:44:21'),
(211, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-18 18:50:03'),
(212, '修改系统设置（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-18 18:52:47'),
(213, '修复分类数据（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-18 18:57:41'),
(214, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 10:17:38'),
(215, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 11:28:51'),
(216, '退出登陆（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 11:30:08'),
(217, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 11:32:37'),
(218, '退出登陆（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 11:34:10'),
(219, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 11:34:39'),
(220, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 12:24:14'),
(221, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 13:54:48'),
(222, '退出登陆（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 14:03:49'),
(223, '登陆成功（Chrome 78.0.3904.108，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-19 14:04:02'),
(224, '登陆成功（Safari 537.36，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-29 11:02:46'),
(225, '登陆成功（Safari 537.36，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-29 14:43:56'),
(226, '新增分类：系统公告，ID：1（Safari 537.36，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-29 15:03:43'),
(227, '新增分类：国内新闻，ID：2（Safari 537.36，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-29 15:04:45'),
(228, '修改文章，ID：8（Safari 537.36，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-29 15:08:10'),
(229, '修改文章，ID：8（Safari 537.36，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-29 15:13:23'),
(230, '修改文章，ID：8（Safari 537.36，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-29 16:40:55'),
(231, '修改文章，ID：6（Safari 537.36，Windows 10）', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-06-29 16:59:48');

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
(1, '{\"site_name\":\"caozha-admin\",\"site_url\":\"http:\\/\\/caozha.com\",\"admin_limit\":\"15\",\"roles_limit\":\"15\",\"syslog_limit\":\"15\",\"article_limit\":\"15\",\"member_limit\":\"10\",\"member_group_limit\":\"10\",\"comment_limit\":\"10\",\"index_title\":\"caozha-admin\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf\",\"index_keywords\":\"\\u8349\\u672d,caozha,caozha-admin\",\"index_description\":\"caozha-admin\\u662f\\u4e00\\u4e2a\\u901a\\u7528\\u7684\\u7f51\\u7ad9\\u540e\\u53f0\\u5f00\\u53d1\\u6846\\u67b6\\uff0c\\u57fa\\u4e8e\\u5f00\\u6e90\\u7684ThinkPHP6.0.2\\u3001layuimini v2\\u3001layui2.5.4\\u4ee5\\u53cafont-awesome-4.7.0\\u5f00\\u53d1\\uff0c\\u7279\\u70b9\\uff1a\\u6613\\u4e0a\\u624b\\uff0c\\u96f6\\u95e8\\u69db\\uff0c\\u754c\\u9762\\u6e05\\u723d\\u6781\\u7b80 \\u3002\",\"site_footer\":\"Copyright \\u00a9 2020 \\u8349\\u672d caozha.com All rights reserved.\"}');

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
-- 表的索引 `cz_comment`
--
ALTER TABLE `cz_comment`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `cz_article`
--
ALTER TABLE `cz_article`
  MODIFY `aid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `cz_category`
--
ALTER TABLE `cz_category`
  MODIFY `catid` smallint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '栏目ID', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `cz_comment`
--
ALTER TABLE `cz_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- 使用表AUTO_INCREMENT `cz_web_config`
--
ALTER TABLE `cz_web_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
