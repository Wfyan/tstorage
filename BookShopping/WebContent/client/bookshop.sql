-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2018 at 11:30 AM
-- Server version: 5.7.13-log
-- PHP Version: 5.6.22


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8mb4 */;


--
-- Database: `bookshop`
--
CREATE DATABASE IF NOT EXISTS `bookshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bookshop`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(40) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category` varchar(40) DEFAULT NULL,
  `pnum` int(11) DEFAULT NULL,
  `imgurl` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `pnum`, `imgurl`, `description`) VALUES
('26ddd0c6-d7f2-4a83-b01b-286bb8c38420', '山川岁月长', 49.8, '小说', 16, '/images/5043602_160.jpg', ''),
('3a0196b2-71c1-4d4d-a4e8-d1f875096f00', '九州飘零书/商博良', 43, '小说', 15, '/images/5073998_160.jpg', ''),
('3cdd01d2-95d4-4077-b512-ff4c3b340d6b', '简·爱', 25, '文学', 5, '/productImg/6/5/a2da626c-c72d-4972-83de-cf48405c5563.jpg', '该书阐述了宽容是一种智慧和力量，是对生命的洞悉，是成长的绿荫，更是家庭幸福的秘诀。常用宽容的眼光看世界，事业、家庭和友谊才能稳固和长久。'),
('4dbac6bb-ac2a-4ea0-a62f-ea5a2fc2b3c2', '宋徽宗', 118, '原版', 198, '/images/5020249_270.jpg', '历史'),
('67a44950-935a-4dac-953d-515fd92d8174', '正阳门下', 25, '童书', 200, '/images/default.jpg', ''),
('72c52302-cd1e-4a22-8ac8-dc300a915be5', 'Sphero可编程机器人sprk+教育入门编程遥控机器球儿童益智玩具巨齿鲨同款', 49.8, '电子教育', 94, 'images/180_949ec0aea8fc4777a673b8f08fee87bc.jpg', ''),
('79bbe618-d2f8-4081-b35a-62ebbe938b64', '程小奔 可编程益智机器人 Codey Rocky', 49.8, '电子教育', 7, 'images/180_1633f1c67845412c8375b12c824d60f8.jpg', ''),
('84c842da-16b6-4e87-953e-859a1ca62bab', 'Sphero BB-9E机器人Star Wars智能玩具手机APP遥控机器人', 49.8, '电子教育', 47, 'images/180_bc7708ea6dff44a6960f8ec914a12682.jpg', ''),
('8740bee0-bfb8-4ba1-8f6e-b69310617db9', 'Sphero BB-8机器人 Star Wars智能手机APP遥控益智小球', 49.8, '电子教育', 100, 'images/180_c944675f1b6e4d8c8885c5a14ef9c251.jpg', ''),
('880fdb00-6798-4302-962b-f337f3393802', '乐客派 挑战者书包电脑包【包邮 深圳本地品牌发货 闪电到达】', 49.8, '书包', 100, 'images/180_1ed9f577d2894ba7b392ccc0f7f0c8ae.jpg', ''),
('8c19d2e2-1020-425d-aeeb-56d3c1bc0a81', '乐客派 阳光小学生书包双肩背包【包邮 深圳本地品牌发货 闪电到达】', 49.8, '书包', 100, 'images/180_428c521bb2a24723a82008b5cb970683.jpg', ''),
('968df3a0-be4d-473e-85a8-d3466b4ca7c2', '乐同贝贝网椅 深度可多段调节学生升降学习椅子 台湾原装进口 WR-89', 49.8, '桌椅', 100, 'images/180_6ff257c22bbf427ab3eae34928c4c769.jpg', ''),
('9a7af97e-deea-417e-ad66-23ea755d2a51', '松木儿童学习桌椅【包邮 闪电发货】', 49.8, '桌椅', 8, 'images/180_e08ca3a42ad24f99be971e3f71e46876.jpg', ''),
('adc06981-0dc9-4006-b763-e6413ee93ac1', 'Helezu七彩安抚硅胶灯蛋壳小鸡', 49.8, '儿童礼物', 20, 'images/180_d0f0c50f704944c3b3be8c6fef896351.png', ''),
('bdb32537-8f2c-4ba2-a752-94fdc0e9a250', '正品托马斯芭比防蚊手环儿童卡通驱蚊拍拍圈(户外防蚊手环)', 49.8, '儿童礼物', 98, 'images/180_e11f0ed3fde04642955d91d637fd2492.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `activeCode` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  `role` varchar(10) DEFAULT '普通用户',
  `registTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `PASSWORD`, `gender`, `phone`, `email`, `introduce`, `activeCode`, `state`, `role`, `registTime`) VALUES
(1, 'ad', '3', '男', '13041019968', 'huan9yun@163.com', '我是超级管理员，我可以登录后台管理系统', '49338fdc-d8c9-46fa-8391-0fac7bf09707', 1, '超级用户', '2018-11-24 08:29:38'),
(2, 'madan', '123456', '女', '13269219270', 'huan9yun@163.com', '我是一个课程设计师', 'c1cc1229-f0ac-41b4-920c-dfef9f8a96a3', 1, '普通用户', '2015-03-19 10:12:36'),
(3, 'huangyun', '123456', '男', '13041019968', 'huan9yun@163.com', '大家好，我是黄云', 'd0827d1d-dc0d-4cdc-8710-678ce917880e', 1, '普通用户', '2015-03-20 09:36:38'),
(4, 'hanyongmeng', '123456', '男', '15207545526', 'itcast_hym@163.com', '课程设计师', 'da483412-1e34-43cf-aef2-4925748c811d', 1, '普通用户', '2016-01-21 07:19:32'),
(5, 'tianjiao', '123456', '男', '', 'hanyongmeng@126.cn', '', 'f8173f4f-debe-4d32-8117-b228d555d822', 0, '普通用户', '2016-02-18 07:32:01'),
(7, 'aaa', '1', NULL, '2', '3', NULL, NULL, 0, '普通用户', '2018-11-23 17:38:11'),
(8, 'www', '123', NULL, '123', '123', NULL, NULL, 0, '普通用户', '2018-11-24 01:28:07'),
(9, 'abc', '12345', NULL, '13408016669', '1@qq.com', NULL, NULL, 0, '普通用户', '2018-11-24 09:24:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
