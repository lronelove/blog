-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 01 月 16 日 17:00
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `lronelove`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '标题',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `content` text CHARACTER SET utf8 COMMENT '文章内容',
  `author` varchar(255) CHARACTER SET utf8 DEFAULT 'lronelove' COMMENT '作者',
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '文章图片',
  `status` tinyint(10) NOT NULL DEFAULT '1' COMMENT '0删除，1存在',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `create_time`, `content`, `author`, `image`, `status`) VALUES
(1, '萤火虫', '2019-01-16 09:10:52', '萤火虫', 'lronelove', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3188760330,463914582&fm=27&gp=0.jpg', 1),
(2, '碎忆', '2019-01-16 12:46:15', 'jack', 'lronelove', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3188760330,463914582&fm=27&gp=0.jpg', 1),
(3, '美美', '2018-01-16 09:14:33', '美美', 'lronelove', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3188760330,463914582&fm=27&gp=0.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `year_slogan`
--

CREATE TABLE IF NOT EXISTS `year_slogan` (
  `year` int(5) NOT NULL AUTO_INCREMENT COMMENT '年',
  `slogan` varchar(255) NOT NULL COMMENT '口号',
  PRIMARY KEY (`year`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2020 ;

--
-- 转存表中的数据 `year_slogan`
--

INSERT INTO `year_slogan` (`year`, `slogan`) VALUES
(2018, '流年碎忆，2018'),
(2019, '平淡似水，2019');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
