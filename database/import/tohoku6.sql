-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2022 at 09:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tohoku6`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `spot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name_user` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `spot_id`, `user_id`, `name_user`, `content`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 'Admin', 'chats qua', '2022-10-04 00:35:13', '2022-10-04 00:35:13'),
(9, 1, 1, 'Admin', 'sdasda', '2022-10-04 00:37:17', '2022-10-04 00:37:17'),
(10, 1, 1, 'Admin', 'đâs', '2022-10-04 00:39:31', '2022-10-04 00:39:31'),
(11, 1, 1, 'Admin', 'đâs', '2022-10-04 00:39:42', '2022-10-04 00:39:42'),
(12, 1, 1, 'Admin', 'ádffdas', '2022-10-04 00:48:43', '2022-10-04 00:48:43'),
(13, 1, 1, 'Admin', 'fsdfsd', '2022-10-04 00:48:48', '2022-10-04 00:48:48'),
(14, 1, 1, 'Admin', 'fsdfdsf', '2022-10-04 00:48:52', '2022-10-04 00:48:52'),
(15, 1, 27, 'Đại Hữu Nguyễn', 'asas', '2022-10-04 02:12:16', '2022-10-04 02:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `time_start` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `intro` text NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `images_id` text DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `favorite` int(11) NOT NULL,
  `count_comment` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `location`, `time_start`, `intro`, `image_id`, `images_id`, `author`, `category`, `favorite`, `count_comment`, `created_at`, `updated_at`) VALUES
(5, '上品な音楽祭', 'tokio', '2022-10-05 07:03:13', '上品な音楽祭', 1, '[\"1\",\"2\",\"3\"]', 27, 1, 1, 0, '2022-10-03 21:46:21', '2022-10-05 00:03:13'),
(6, 'ギフト共有パーティー', 'tokio', '2022-10-04 04:48:29', '上品な音楽祭', 1, '[\"1\",\"2\",\"3\"]', 27, 1, 0, 0, '2022-10-03 21:46:39', '2022-10-03 21:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `exchange_goods`
--

CREATE TABLE `exchange_goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `furigana` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `home_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exchange_goods`
--

INSERT INTO `exchange_goods` (`id`, `name`, `furigana`, `phone`, `zip_code`, `address`, `home_address`, `created_at`, `updated_at`) VALUES
(1, 'huudaddad', 'ssss', '0563064010', '100000', 'thon 1', 'das', '2022-10-04 20:59:33', '2022-10-04 20:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `type_posts` int(11) NOT NULL,
  `user_id` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `posts_id`, `type_posts`, `user_id`, `created_at`, `updated_at`) VALUES
(9, 1, 1, '27,3,4,1', '2022-09-29 08:52:53', '2022-10-04 00:34:42'),
(10, 2, 1, NULL, '2022-09-29 02:08:16', '2022-09-29 02:08:16'),
(12, 1, 2, '27', '2022-09-29 10:08:08', '2022-09-29 03:13:23'),
(13, 3, 2, '27', '2022-10-03 02:49:54', '2022-10-02 19:51:40'),
(14, 3, 1, NULL, '2022-10-03 02:27:50', '2022-10-03 02:27:50'),
(15, 4, 1, NULL, '2022-10-03 02:29:21', '2022-10-03 02:29:21'),
(16, 5, 1, NULL, '2022-10-03 02:30:48', '2022-10-03 02:30:48'),
(17, 6, 1, NULL, '2022-10-03 03:08:33', '2022-10-03 03:08:33'),
(18, 7, 1, NULL, '2022-10-03 03:14:23', '2022-10-03 03:14:23'),
(19, 8, 1, NULL, '2022-10-03 03:15:28', '2022-10-03 03:15:28'),
(20, 9, 1, NULL, '2022-10-03 03:16:48', '2022-10-03 03:16:48'),
(21, 10, 1, NULL, '2022-10-03 03:20:16', '2022-10-03 03:20:16'),
(22, 11, 1, NULL, '2022-10-03 03:24:37', '2022-10-03 03:24:37'),
(23, 1, 1, NULL, '2022-10-03 18:42:53', '2022-10-03 18:42:53'),
(24, 2, 1, NULL, '2022-10-04 21:42:03', '2022-10-04 21:42:03'),
(25, 5, 2, '27', NULL, '2022-10-05 00:03:13');

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `images_id` text DEFAULT NULL,
  `intro` text NOT NULL,
  `point` varchar(30) NOT NULL,
  `author` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `name`, `image_id`, `images_id`, `intro`, `point`, `author`, `created_at`, `updated_at`) VALUES
(2, 'Dai Huu', 1, NULL, 'sss', '222', 27, '2022-10-04 09:20:28', '2022-10-04 09:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sample_terms`
--

CREATE TABLE `sample_terms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `image_id` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_count` int(10) UNSIGNED DEFAULT NULL,
  `fields` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sample_term_map`
--

CREATE TABLE `sample_term_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `object_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `is_primary` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `images_id` text DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `intro` text NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `favorite` int(11) NOT NULL,
  `count_comment` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`id`, `name`, `image_id`, `images_id`, `address`, `location`, `category`, `intro`, `author`, `favorite`, `count_comment`, `created_at`, `updated_at`) VALUES
(1, 'ハノイでのコンサート', 4, '[\"1\",\"2\",\"3\"]', 'hanoi', 'hanoi', '2,3,7', 'とてもかっこいい', '27', 1, 7, '2022-10-03 18:42:53', '2022-10-04 02:12:16'),
(2, '音楽祭ネタ', 11, '[\"8\",\"9\",\"10\"]', 'kawa', 'kawa', '1,2', '音楽祭ネタ', '27', 0, 0, '2022-10-04 21:42:03', '2022-10-04 21:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dai Huu', '2022-09-22 22:00:14', '2022-09-22 22:00:14'),
(2, 'Dai Huu', '2022-09-22 22:00:35', '2022-09-22 22:00:35'),
(3, 'Dai Huu', '2022-09-22 23:31:54', '2022-09-22 23:31:54'),
(4, 'Dai Huu', '2022-09-22 23:41:55', '2022-09-22 23:41:55'),
(5, 'daihuu03', '2022-09-22 23:43:57', '2022-09-22 23:43:57'),
(6, 'ssssss', '2022-09-22 23:47:28', '2022-09-22 23:47:28'),
(7, 'aaa', '2022-09-22 23:50:19', '2022-09-22 23:50:19'),
(8, 'aaa', '2022-09-22 23:51:08', '2022-09-22 23:51:08'),
(9, 'ss', '2022-09-22 23:53:24', '2022-09-22 23:53:24'),
(10, 'ss', '2022-09-22 23:54:07', '2022-09-22 23:54:07'),
(11, 'ss', '2022-09-22 23:54:11', '2022-09-22 23:54:11'),
(12, 'ss', '2022-09-22 23:54:21', '2022-09-22 23:54:21'),
(13, 'ss', '2022-09-22 23:54:33', '2022-09-22 23:54:33'),
(14, 'ss', '2022-09-22 23:55:16', '2022-09-22 23:55:16'),
(15, 'as', '2022-09-22 23:56:50', '2022-09-22 23:56:50'),
(16, 'as', '2022-09-22 23:57:11', '2022-09-22 23:57:11'),
(17, 'as', '2022-09-22 23:58:07', '2022-09-22 23:58:07'),
(18, 'as', '2022-09-22 23:58:20', '2022-09-22 23:58:20'),
(19, 'as', '2022-09-22 23:59:23', '2022-09-22 23:59:23'),
(20, 'dai20010301@gmail.com', '2022-09-22 23:59:55', '2022-09-22 23:59:55'),
(21, 'dai20010301@gmail.com', '2022-09-23 00:00:05', '2022-09-23 00:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `file_info` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `folder_path`, `file_name`, `extension`, `mime_type`, `file_size`, `file_info`, `created_at`, `updated_at`) VALUES
(1, 'Screenshot 2022-08-12 123520', '', 'zzipDnIZLcNkCOEUR6wj94AYPsJXrT5A5bh8NZxi.png', 'png', 'image/png', 327465, '{\"width\":1878,\"height\":894,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":122,\"file_name\":\"zzipDnIZLcNkCOEUR6wj94AYPsJXrT5A5bh8NZxi-thumbnail.png\"},\"small\":{\"width\":1344,\"height\":640,\"file_name\":\"zzipDnIZLcNkCOEUR6wj94AYPsJXrT5A5bh8NZxi-small.png\"}}}', '2022-10-03 18:42:50', '2022-10-03 18:42:50'),
(2, 'anh2', '', 'ToQHuUsXLZyDL1Bbe3WhPZsp48chH1SNXxq3fJTI.png', 'png', 'image/png', 140572, '{\"width\":1672,\"height\":805,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":123,\"file_name\":\"ToQHuUsXLZyDL1Bbe3WhPZsp48chH1SNXxq3fJTI-thumbnail.png\"},\"small\":{\"width\":1329,\"height\":640,\"file_name\":\"ToQHuUsXLZyDL1Bbe3WhPZsp48chH1SNXxq3fJTI-small.png\"}}}', '2022-10-03 18:42:50', '2022-10-03 18:42:50'),
(3, 'Screenshot 2022-08-12 182711', '', 'Th7qdSoVlTY2fiqYu7HJT6FI5baNCwRfTTAGzlaO.png', 'png', 'image/png', 258088, '{\"width\":1399,\"height\":793,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":145,\"file_name\":\"Th7qdSoVlTY2fiqYu7HJT6FI5baNCwRfTTAGzlaO-thumbnail.png\"},\"small\":{\"width\":1129,\"height\":640,\"file_name\":\"Th7qdSoVlTY2fiqYu7HJT6FI5baNCwRfTTAGzlaO-small.png\"}}}', '2022-10-03 18:42:51', '2022-10-03 18:42:51'),
(4, 'Screenshot 2022-05-09 100156', '/', '15lme8pIEMHQULCpHSsWmIwuLmP6xnAuAFCdrKv5.png', 'png', 'image/png', 181017, '{\"width\":913,\"height\":487,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":137,\"file_name\":\"15lme8pIEMHQULCpHSsWmIwuLmP6xnAuAFCdrKv5-thumbnail.png\"}}}', '2022-10-03 18:42:51', '2022-10-03 18:42:51'),
(5, 'anh1', NULL, 'QJhB3RNAgIHbwLfmGW7W23jmpt3KsMhiV7E6OjyP.png', 'png', 'image/png', 140572, '{\"width\":1672,\"height\":805,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":123,\"file_name\":\"QJhB3RNAgIHbwLfmGW7W23jmpt3KsMhiV7E6OjyP-thumbnail.png\"},\"small\":{\"width\":1329,\"height\":640,\"file_name\":\"QJhB3RNAgIHbwLfmGW7W23jmpt3KsMhiV7E6OjyP-small.png\"}}}', '2022-10-03 21:28:27', '2022-10-03 21:28:27'),
(6, 'anh2', NULL, '5Z5LQoOA8yvKi2Lf9Tx8HyiOiE6gG1fOqurH2trH.png', 'png', 'image/png', 140572, '{\"width\":1672,\"height\":805,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":123,\"file_name\":\"5Z5LQoOA8yvKi2Lf9Tx8HyiOiE6gG1fOqurH2trH-thumbnail.png\"},\"small\":{\"width\":1329,\"height\":640,\"file_name\":\"5Z5LQoOA8yvKi2Lf9Tx8HyiOiE6gG1fOqurH2trH-small.png\"}}}', '2022-10-03 21:28:28', '2022-10-03 21:28:28'),
(7, 'Screenshot 2022-08-12 123520', '', '5UMtGY9Euc0N596tgQUlNAofOoYanJrR6FW6ZQ4M.png', 'png', 'image/png', 327465, '{\"width\":1878,\"height\":894,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":122,\"file_name\":\"5UMtGY9Euc0N596tgQUlNAofOoYanJrR6FW6ZQ4M-thumbnail.png\"},\"small\":{\"width\":1344,\"height\":640,\"file_name\":\"5UMtGY9Euc0N596tgQUlNAofOoYanJrR6FW6ZQ4M-small.png\"}}}', '2022-10-04 01:48:45', '2022-10-04 01:48:45'),
(8, 'anh1', '', 'Dw6FehDTlX4WxvShVMnndtwr7XDBWO4Ml2LoqHou.png', 'png', 'image/png', 140572, '{\"width\":1672,\"height\":805,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":123,\"file_name\":\"Dw6FehDTlX4WxvShVMnndtwr7XDBWO4Ml2LoqHou-thumbnail.png\"},\"small\":{\"width\":1329,\"height\":640,\"file_name\":\"Dw6FehDTlX4WxvShVMnndtwr7XDBWO4Ml2LoqHou-small.png\"}}}', '2022-10-04 21:42:00', '2022-10-04 21:42:00'),
(9, 'anh2', '', '8ScSi6wShveQK5qA3KEQcD44ldaTl5if0O2dwruc.png', 'png', 'image/png', 140572, '{\"width\":1672,\"height\":805,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":123,\"file_name\":\"8ScSi6wShveQK5qA3KEQcD44ldaTl5if0O2dwruc-thumbnail.png\"},\"small\":{\"width\":1329,\"height\":640,\"file_name\":\"8ScSi6wShveQK5qA3KEQcD44ldaTl5if0O2dwruc-small.png\"}}}', '2022-10-04 21:42:00', '2022-10-04 21:42:00'),
(10, 'Screenshot 2022-08-12 182711', '', '0YK3G4r1j1Zcdej3SDrlgzo9dhhTZa5oVssItgWA.png', 'png', 'image/png', 258088, '{\"width\":1399,\"height\":793,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":145,\"file_name\":\"0YK3G4r1j1Zcdej3SDrlgzo9dhhTZa5oVssItgWA-thumbnail.png\"},\"small\":{\"width\":1129,\"height\":640,\"file_name\":\"0YK3G4r1j1Zcdej3SDrlgzo9dhhTZa5oVssItgWA-small.png\"}}}', '2022-10-04 21:42:01', '2022-10-04 21:42:01'),
(11, 'Screenshot 2022-05-09 100156', '', 'lXON50e24TtxFDF06xVsRlxMYx9zIwgCBq1P8lAD.png', 'png', 'image/png', 181017, '{\"width\":913,\"height\":487,\"versions\":{\"thumbnail\":{\"width\":256,\"height\":137,\"file_name\":\"lXON50e24TtxFDF06xVsRlxMYx9zIwgCBq1P8lAD-thumbnail.png\"}}}', '2022-10-04 21:42:01', '2022-10-04 21:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_image_id` int(10) UNSIGNED DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_verified_token` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sns_active` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login_name`, `name`, `avatar_image_id`, `role`, `gender`, `birth_day`, `intro`, `email`, `location`, `password`, `email_verified_at`, `email_verified_token`, `remember_token`, `fields`, `point`, `status`, `otp`, `twitter_url`, `tiktok_url`, `instagram_url`, `sns_active`, `google_id`, `facebook_id`, `twitter_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', NULL, 'admin', NULL, NULL, '', 'admin@sample.email', NULL, '$2y$10$HT3qwQXcuh6BZR88auQUt.pfNNslChaKBVFBrkOu1YsYq9Gg5q65e', NULL, NULL, NULL, '[]', NULL, 'active', '', NULL, NULL, NULL, '0', '0', NULL, 0, '2020-12-31 17:00:00', '2022-09-18 23:58:29'),
(7, 'gfdgdg', '6666', NULL, 'admin', NULL, NULL, '', NULL, NULL, '$2y$10$yWs830Yi7fuSpgbZCc/TiOx9yUs81R7sS0fuAF7X/5AqqsbC1KD9C', NULL, NULL, NULL, '[]', NULL, 'active', '', NULL, NULL, NULL, '0', '0', NULL, 0, '2022-04-19 01:44:59', '2022-09-19 02:24:03'),
(9, 'dassad', NULL, NULL, 'admin', NULL, NULL, '', 'se@gmail.com', NULL, '$2y$10$cZOWi58jI0fdZ.0x8IiYBODygn/zu3IeFG/C5i/mpUYjxRJM9aMRm', NULL, NULL, NULL, NULL, NULL, 'active', '', NULL, NULL, NULL, '0', '0', NULL, 0, '2022-09-20 21:32:41', '2022-09-20 21:32:41'),
(11, 'moi', NULL, NULL, 'admin', NULL, NULL, '', 'longpro298@gmail.com', NULL, '$2y$10$m8M7E9drmqvCHQUTiPcVQOwTY6mahU/F9vGldsLjwGA8jpHxIzf.C', NULL, NULL, NULL, NULL, NULL, 'active', '', NULL, NULL, NULL, '0', '0', NULL, 0, '2022-09-20 21:37:19', '2022-09-20 21:37:19'),
(13, 'sasa', NULL, NULL, 'member', NULL, NULL, '', 'sinh@gmail.com', NULL, '$2y$10$w0lOjv55Ejk8/WwvPfuqTuTbztQ2Ls7mjaSBPCenv4CRM7SToW0Oy', NULL, NULL, NULL, NULL, NULL, 'active', '', NULL, NULL, NULL, '0', '0', NULL, 0, '2022-09-21 00:13:30', '2022-09-21 00:13:30'),
(14, 'ssssssssss', NULL, NULL, 'admin', NULL, NULL, '', 'aa@gmail.com', NULL, '$2y$10$s6VtXvq1IXYbxmMo685DMued8egIOhza5QcFEiMYJ4DiarSNgrRVG', NULL, NULL, NULL, NULL, NULL, 'disabled', '', NULL, NULL, NULL, '0', '0', NULL, 0, '2022-09-21 00:15:16', '2022-09-21 19:51:11'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, '', 'huudai001@gmail.com', NULL, '1111', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '0', '0', NULL, 0, '2022-09-21 21:44:00', '2022-09-21 21:44:00'),
(19, NULL, NULL, NULL, NULL, NULL, NULL, '', 'dangm452@gmail.com', NULL, '$2y$10$85t2tSr49WzGYnU5tjabUefDArQP.vGpM.R77gjUmF8GP3DoCgTP2', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '0', NULL, NULL, 0, '2022-09-22 02:38:56', '2022-09-22 02:38:56'),
(27, NULL, 'Đại Hữu Nguyễn', 7, NULL, 3, '2022-09-21', 'hhhss', 'huudai032001@gmail.com', '川崎', '$2y$10$IUk1oNmK8Wjz82VghmVRVOjI5v.tVxAAI/OznEnoYKpcN/5f6/RSW', NULL, NULL, NULL, NULL, '3000', 'active', '', 'https://www.youtube.com/watch?v=XFJ09PqqwU8&list=RDMM&index=6', 'dasd', 'dasdasd', '[\"1\",\"2\"]', '109829984724144315607', '3226743507581614', NULL, '2022-09-22 20:52:43', '2022-10-04 23:49:51'),
(36, NULL, 'da', NULL, 'member', 1, '2022-09-28', 'adada', 'dai20010301@gmail.com', '大沢', '$2y$10$bE5kfO0rtJmJYi8r8Av.g.rNwd5PvszTHoBCp7xYXVSLlUQ7Ik9V6', NULL, NULL, NULL, NULL, NULL, 'active', '52638', NULL, NULL, NULL, '0', '117606606609355028013', NULL, NULL, '2022-09-25 18:26:00', '2022-09-27 00:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `zip_code`
--

CREATE TABLE `zip_code` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange_goods`
--
ALTER TABLE `exchange_goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sample_terms`
--
ALTER TABLE `sample_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sample_term_map`
--
ALTER TABLE `sample_term_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_login_name_unique` (`login_name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zip_code`
--
ALTER TABLE `zip_code`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `exchange_goods`
--
ALTER TABLE `exchange_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sample_terms`
--
ALTER TABLE `sample_terms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sample_term_map`
--
ALTER TABLE `sample_term_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spots`
--
ALTER TABLE `spots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `zip_code`
--
ALTER TABLE `zip_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
