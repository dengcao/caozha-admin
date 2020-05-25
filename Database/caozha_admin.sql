-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-05-25 18:09:23
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
(1, 'caozha', '5fd9cd58f4e516bae46557b355c5208a', NULL, 1, 1, '草札', '1320000000', 'dzh188@qq.com', 'wx', 'qq', '127.0.0.1', '2020-05-25 18:06:52', '2020-05-21 10:49:46', 37, NULL),
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
(1, 'config,roles,admin,log_view,log_del,mine,article', '超级管理员', '可使用后台所有功能', 1),
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
(75, '修改管理员账号：test1，ID：24', 'caozha（ID:1，姓名:草札）', '127.0.0.1', '2020-05-25 18:07:14');

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
(1, '{\"site_name\":\"caozha-admin\",\"site_url\":\"http:\\/\\/caozha.com\",\"admin_limit\":\"15\",\"roles_limit\":\"15\",\"syslog_limit\":\"15\",\"article_limit\":\"50\",\"index_title\":\"caozha-admin\\u540e\\u53f0\\u7ba1\\u7406\\u7cfb\\u7edf\",\"index_keywords\":\"\\u8349\\u672d,caozha,caozha-admin\",\"index_description\":\"caozha-admin\\u662f\\u4e00\\u4e2a\\u901a\\u7528\\u7684\\u7f51\\u7ad9\\u540e\\u53f0\\u5f00\\u53d1\\u6846\\u67b6\\uff0c\\u57fa\\u4e8e\\u5f00\\u6e90\\u7684ThinkPHP6.0.2\\u3001layuimini v2\\u3001layui2.5.4\\u4ee5\\u53cafont-awesome-4.7.0\\u5f00\\u53d1\\uff0c\\u7279\\u70b9\\uff1a\\u6613\\u4e0a\\u624b\\uff0c\\u96f6\\u95e8\\u69db\\uff0c\\u754c\\u9762\\u6e05\\u723d\\u6781\\u7b80 \\u3002\",\"site_footer\":\"Copyright \\u00a9 2020 \\u8349\\u672d caozha.com All rights reserved.\"}');

--
-- 转储表的索引
--

--
-- 表的索引 `cz_administrators`
--
ALTER TABLE `cz_administrators`
  ADD PRIMARY KEY (`admin_id`);

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
-- 使用表AUTO_INCREMENT `cz_roles`
--
ALTER TABLE `cz_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限组ID', AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `cz_syslog`
--
ALTER TABLE `cz_syslog`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- 使用表AUTO_INCREMENT `cz_web_config`
--
ALTER TABLE `cz_web_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
