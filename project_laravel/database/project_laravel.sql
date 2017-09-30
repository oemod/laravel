-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2017 at 04:12 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `name`, `alias`, `order`, `parent_id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(44, 'áo', 'ao', 6, 0, 'áo', 'áo', '2017-09-19 08:20:47', '2017-09-19 08:20:47'),
(46, 'áo gió', 'ao gio', 9, 44, 'áo gió', 'áo gió', '2017-09-19 08:35:29', '2017-09-19 08:35:29'),
(48, 'áo thun nam', 'ao thun nam', 13, 44, 'áo thun nam', 'áo thun nam', '2017-09-19 08:37:02', '2017-09-19 08:37:02'),
(49, 'giầy', 'giay', 14, 0, 'giầy', 'giầy', '2017-09-19 08:37:26', '2017-09-19 08:37:26'),
(50, 'giầy lười', 'giay luoi', 15, 49, 'giầy lười', 'giầy lười', '2017-09-19 08:37:50', '2017-09-19 08:37:50'),
(51, 'quần', 'quan', 15, 0, 'quần', 'quần', '2017-09-19 08:39:01', '2017-09-19 08:39:01'),
(52, 'quần jean đẹp', 'quan jean dep', 85, 51, 'quần jean đẹp', 'quần jean đẹp', '2017-09-19 16:12:05', '2017-09-19 09:12:05'),
(53, 'giầy da xịn', 'giay da xin', 52, 49, 'giầy da xịn', 'giầy da xịn', '2017-09-20 08:04:55', '2017-09-20 01:04:55'),
(54, 'dép', 'dep', 2, 0, 'dép', 'dép', '2017-09-21 02:41:47', '2017-09-21 02:41:47'),
(55, 'dép lê', 'dep le', 20, 54, 'dép lê', 'dép lê', '2017-09-21 08:21:32', '2017-09-21 08:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `intro` text NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `alias`, `price`, `intro`, `content`, `image`, `keywords`, `description`, `user_id`, `cate_id`, `created_at`, `updated_at`) VALUES
(33, 'quần gió', 'quan gio', 300000, '<p>quần gi&oacute;</p>', '<p>quần gi&oacute;</p>', '20525478_666035933600970_6189927557908167832_n.jpg', 'quần gió', 'quần gió', 1, 51, '2017-09-20 13:47:49', '2017-09-20 13:47:49'),
(34, 'áo sơ mi', 'ao so mi', 400000, '<p>&aacute;o sơ mi</p>', '<p>&aacute;o sơ mi</p>', '20374679_1421070601304218_6942366591278186288_n.jpg', 'áo sơ mi', 'áo sơ mi', 1, 44, '2017-09-20 14:00:27', '2017-09-20 14:00:27'),
(35, 'áo mưa', 'ao mua', 300000, '<p>&aacute;o mưa</p>', '<p>&aacute;o mưa</p>', '13s_by_wlop-dazyhfw.jpg', 'áo mưa', 'áo mưa', 1, 44, '2017-09-21 00:34:31', '2017-09-21 00:34:31'),
(40, 'áo thun', 'ao thun', 5000000, '<p>&aacute;o thun</p>', '<p>&aacute;o thun</p>', '15726441_694629027363559_8613353044980717868_n.jpg', 'áo thun', 'áo thun', 1, 44, '2017-09-21 02:01:42', '2017-09-21 02:01:42'),
(43, 'tổ ong', 'to ong', 600000, '<p>tổ ong</p>', '<p>tổ ong</p>', '20526265_1382561528459785_1514768519713381520_n.jpg', 'tổ ong', 'tổ ong', 1, 54, '2017-09-21 08:23:07', '2017-09-21 08:23:07'),
(44, 'dép ở nhà', 'dep o nha', 66666, '<p>d&eacute;p ở nh&agrave;</p>', '<p>d&eacute;p ở nh&agrave;</p>', '20374577_1422646231146655_1916537219376421211_n.jpg', 'dép ở nhà', 'dép ở nhà', 1, 54, '2017-09-21 08:29:55', '2017-09-21 08:29:55'),
(45, 'áo thun dài', 'ao thun dai', 77777, '<p>&aacute;o thun d&agrave;i</p>', '<p>&aacute;o thun d&agrave;i</p>', '20882816_1016639231812227_2269705666740723170_n.jpg', 'áo thun dài', 'áo thun dài', 1, 44, '2017-09-21 08:35:40', '2017-09-21 08:35:40'),
(46, 'áo sơ mi nam', 'ao so mi nam', 999999, '<p>&aacute;o sơ mi</p>', '<p>&aacute;o sơ mi</p>', '19959358_1403773279700617_7025670526629483917_n.jpg', 'áo sơ mi', 'áo sơ mi', 5, 44, '2017-09-22 11:37:50', '2017-09-22 11:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(3, 'nxd2152@gmail.com', 'nxd2152@gmail.com', '$2y$10$cNyeKRrpQTuj8QphT6YvDuDeWkaGKga4DEu6K8Y719KAypJfgeZLq', 'mlitahIexASczJKOtYnTg3qzW2GgxHUouy0mdiiMUKlomefwSdo9pAIVoVob', '2017-09-12 17:00:00', '2017-09-11 17:00:00', 1),
(5, 'admin', 'admin@gmail.com', '$2y$10$4ihr5v4R4xsm04Z5eReZQ.s5a37bqQSEGOShAM3r3fi/GXm0AE5v6', 'R0vaIEM8bjM04kB9GgSJsQe6s0pZ9lmGreUGnbe7', '2017-09-22 07:26:35', '2017-09-24 09:45:55', 1),
(10, 'admin21', 'admin21@gmail.com', '$2y$10$5rX0uBBD/1Ni6/DgfXnnhedQf3TdQKt82HpbEHmu6ymiHr10C2WBG', 'YdE0bwMrvh4vsLEx0TDelD4dsNxMttKe2DueMszd', '2017-09-24 08:13:48', '2017-09-27 08:55:11', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
