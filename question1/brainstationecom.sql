-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 05:04 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brainstationecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `product_id`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 7, '5_1698176493.jpg', '2023-10-24 13:41:34', '2023-10-24 13:41:34'),
(2, 7, '2_1698176498.jpg', '2023-10-24 13:41:39', '2023-10-24 13:41:39'),
(3, 8, '10_1698177139.jpg', '2023-10-24 13:52:22', '2023-10-24 13:52:22'),
(4, 9, '10_1698177219.jpg', '2023-10-24 13:53:39', '2023-10-24 13:53:39'),
(5, 10, '12_1698177319.jpg', '2023-10-24 13:55:19', '2023-10-24 13:55:19'),
(6, 11, '11_1698177408.jpg', '2023-10-24 13:56:48', '2023-10-24 13:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `order`, `created_at`, `updated_at`) VALUES
(2, 'Tools', 'tools', 1, '2023-10-22 01:34:21', '2023-10-22 01:34:21'),
(4, 'admin', 'admin', 2, '2023-10-24 01:03:38', '2023-10-24 01:03:38'),
(5, 'Hi bro', 'hi-bro', 5, '2023-10-24 01:15:59', '2023-10-24 01:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'hello', 'hello@gmail.com', 'hello subject', 'sadf', '2023-10-24 11:36:52', '2023-10-23 18:00:00'),
(2, 'Arman', 'arman@gmail.com', 'test aran', 'hello world', '2023-11-05 00:24:31', '2023-11-05 00:24:31'),
(3, 'arman', 'armanagain@gmail.com', 'hello world', 'hey', '2023-11-05 00:26:52', '2023-11-05 00:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `canonical` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_site_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `page_name`, `description`, `keywords`, `author`, `canonical`, `og_title`, `og_site_name`, `og_url`, `og_description`, `og_type`, `og_image`, `created_at`, `updated_at`) VALUES
(1, 'product', 'hello world', 'hello world three', 'hello world', 'hello world', 'hello world', 'hello world', 'hello world', 'hello world', 'hello world', 'hello world', '2023-11-13 08:02:52', '2023-11-13 03:57:38'),
(2, 'checkout', 'hello world three', 'hello world', 'hello world', 'hello world', 'hello world', 'hello world', 'hello world', 'hello world', 'hello world', 'bkash-removebg-preview_1699869439.png', '2023-11-13 08:02:52', '2023-11-13 03:57:19'),
(5, 'contact', 'hello world', 'hello,world', 'hello', 'hello world', 'hello', 'hello', 'hello', 'hello', 'hello', 'hello', '2023-11-13 08:02:52', '2023-11-13 08:02:52'),
(6, 'cart', 'Hello', 'Hello', 'Hello', 'Hello', 'Hello', '', 'Hello', 'Hello', 'Hello', 'Hello', '2023-11-13 10:07:36', '2023-11-13 10:07:36'),
(7, 'subscribe', 'subscribe', 'Hello', 'Hello', 'Hello', 'Hello', 'Hello', 'Hello', 'Hello', 'Hello', 'Hello', '2023-11-13 10:07:36', '2023-11-13 10:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apartment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `email`, `country`, `first_name`, `last_name`, `address`, `apartment`, `city`, `state`, `postal_code`, `phone_number`, `quantity`, `total`, `status`, `created_at`, `updated_at`) VALUES
(2, 'x0VGakmQ1w', 'bangladesh', 'qe3Mupsy1A', 'RXazkbnDdx', '9hxAMqQIqq', NULL, 'rmb0sejAns', 'chittagong', 'xFuNYEuTfA', '45435', 3, '90.00', 0, '2023-10-23 01:19:32', '2023-10-23 01:19:32'),
(3, 'x0VGakmQ1w', 'bangladesh', 'qe3Mupsy1A', 'RXazkbnDdx', '9hxAMqQIqq', NULL, 'rmb0sejAns', 'chittagong', 'xFuNYEuTfA', '45435', 3, '90.00', 0, '2023-10-23 01:32:08', '2023-10-23 01:32:08'),
(4, 'hCAE7gpXgN', 'bangladesh', 'Sl3pxHxNCd', 'IlF8Y5G3lT', 'QqYI4TA4Ps', NULL, 'C75orM1Sq7', 'chittagong', 'c6hxhMmtJZ', '123243', 3, '90.00', 0, '2023-10-23 01:37:23', '2023-10-23 01:37:23'),
(5, 'YfTpnUkU1P', 'bangladesh', 'SMDWjToKo4', 'NH62V3WLvR', 'J4y14ZcFMo', NULL, 'NS6GB3kstd', 'chittagong', 'uubP0it0M2', '4643', 2, '70.00', 0, '2023-10-23 01:39:42', '2023-10-23 01:39:42'),
(8, 'GCfsl4HafZ', 'bangladesh', '3kAllebiO3', 'yePhiSPfHq', 'SuAXJnoasQ', NULL, '3Vu3tV1XSl', 'chittagong', 'cpukgPlYyF', '4643', 1, '600.00', 0, '2023-10-25 01:44:12', '2023-10-25 01:44:12'),
(9, 'fAGW4RuHWh', 'bangladesh', 'OhzKYi6bIz', 'WQZCdC3ydc', 'aMZWmRBEJG', NULL, 'U57mDzONVn', 'chittagong', '1WdyMjHWBG', '4643', 1, '600.00', 0, '2023-10-25 01:47:01', '2023-10-25 01:47:01'),
(10, 'tv8tq89wJ9', 'bangladesh', '9tNyL2shGq', 'PNhm8RJ7Up', 'B8EnB4Jn0e', NULL, 'Qwfj6d3MJY', 'chittagong', 'BFe6lgL7wc', '4643', 1, '600.00', 0, '2023-10-25 02:01:25', '2023-10-25 02:01:25'),
(11, 'Rw8D0UwlJJ', 'bangladesh', '33LxjFLkHW', '87CY6ud3KO', '1PfgF8O0dT', '7KDpWyNUcI', 'qiUfYGSnx9', 'chittagong', 'JLSaGPzcEb', '4643', 1, '600.00', 0, '2023-10-25 02:04:37', '2023-10-25 02:04:37'),
(12, 'admin@gmail.com', 'bangladesh', 'w2Ll1deZpl', 'fn0TNLgomD', '64FpMjCpU9', 'ACGwABDjlM', 'IYcWg9dJWs', 'chittagong', 'k3yoRVdaT5', '4643', 3, '1800.00', 0, '2023-11-02 12:22:29', '2023-11-02 12:22:29'),
(13, 'admin@gmail.com', 'bangladesh', 'w2Ll1deZpl', 'fn0TNLgomD', '64FpMjCpU9', 'ACGwABDjlM', 'IYcWg9dJWs', 'chittagong', 'k3yoRVdaT5', '4643', 3, '1800.00', 0, '2023-11-02 12:23:11', '2023-11-02 12:23:11'),
(14, 'rakibtac@gmail.com', 'bangladesh', 'rakib', 'hossain', 'AWzmSp26oY', 'JPDRMsp6nd', 'ysf6LWWWal', 'chittagong', 'vf3e4GOxhc', '018989898989', 1, '600.00', 0, '2023-11-02 21:58:26', '2023-11-02 21:58:26'),
(15, 'rakibtac@gmail.com', 'bangladesh', 'BU5rNEgDtE', 'WiFHjchDjB', 's0BMQ86rqu', 'MmJIh6CLeh', 'f5IFyu7uvZ', 'chittagong', 'cfvwz4Xf9N', '018989898989', 1, '600.00', 0, '2023-11-02 21:59:06', '2023-11-02 21:59:06'),
(16, 'rakibtac@gmail.com', 'bangladesh', 'PWsVYHAXvO', 'kHondMSiqZ', 'R3a7rqJCmD', '3BDcTsXVU9', 'F016VYHY1S', 'chittagong', 'RG1gUt7LoL', '018989898989', 1, '600.00', 0, '2023-11-02 23:24:24', '2023-11-02 23:24:24'),
(17, 'rakibtac@gmail.com', 'bangladesh', 'PWsVYHAXvO', 'kHondMSiqZ', 'R3a7rqJCmD', '3BDcTsXVU9', 'F016VYHY1S', 'chittagong', 'RG1gUt7LoL', '018989898989', 1, '600.00', 0, '2023-11-02 23:27:22', '2023-11-02 23:27:22'),
(18, 'rakibtac@gmail.com', 'bangladesh', 'PWsVYHAXvO', 'kHondMSiqZ', 'R3a7rqJCmD', '3BDcTsXVU9', 'F016VYHY1S', 'chittagong', 'RG1gUt7LoL', '018989898989', 1, '600.00', 0, '2023-11-02 23:35:48', '2023-11-02 23:35:48'),
(19, 'rakibtac@gmail.com', 'bangladesh', 'PWsVYHAXvO', 'kHondMSiqZ', 'R3a7rqJCmD', '3BDcTsXVU9', 'F016VYHY1S', 'chittagong', 'RG1gUt7LoL', '018989898989', 0, '0.00', 0, '2023-11-02 23:37:52', '2023-11-02 23:37:52'),
(20, 'rakibtac@gmail.com', 'bangladesh', 'Buugiqp2Dt', 'I8AeoXAPkK', 'ftftzDassW', 'jNNVG5QSVg', 'E1UCVRkzMX', 'chittagong', 'v4FVDGdWYq', '018989898989', 0, '0.00', 0, '2023-11-02 23:38:54', '2023-11-02 23:38:54'),
(21, 'rakibtac@gmail.com', 'bangladesh', 'VazLjreI8j', 's7dMhKuqc7', 'xJc1GlZMDw', 'zuc2bDFETp', 'noa91eQSTH', 'chittagong', 'syDZnFdUdt', '018989898989', 0, '0.00', 0, '2023-11-02 23:40:13', '2023-11-02 23:40:13'),
(22, 'arman@rafusoft.com', 'bangladesh', '9n0yNpelg1', 'DxLcq5jT9M', 'KMZq9kAnSR', 'rgqHv0R0k5', 'Q4vYjhrp7e', 'chittagong', 'M1M21LsLu5', '018989898989', 1, '600.00', 0, '2023-11-02 23:45:20', '2023-11-02 23:45:20'),
(23, 'arman@rafusoft.com', 'bangladesh', '9n0yNpelg1', 'DxLcq5jT9M', 'KMZq9kAnSR', 'rgqHv0R0k5', 'Q4vYjhrp7e', 'chittagong', 'M1M21LsLu5', '018989898989', 1, '600.00', 0, '2023-11-02 23:47:25', '2023-11-02 23:47:25'),
(24, 'rakibtac@gmail.com', 'bangladesh', '9n0yNpelg1', 'DxLcq5jT9M', 'KMZq9kAnSR', 'rgqHv0R0k5', 'Q4vYjhrp7e', 'chittagong', 'M1M21LsLu5', '018989898989', 1, '600.00', 0, '2023-11-02 23:47:38', '2023-11-02 23:47:38'),
(25, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 5, '3000.00', 0, '2023-11-03 13:07:23', '2023-11-03 13:07:23'),
(26, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 5, '3000.00', 0, '2023-11-03 13:08:24', '2023-11-03 13:08:24'),
(27, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 5, '3000.00', 0, '2023-11-03 13:09:09', '2023-11-03 13:09:09'),
(28, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 5, '3000.00', 0, '2023-11-03 13:09:51', '2023-11-03 13:09:51'),
(29, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 5, '3000.00', 0, '2023-11-03 13:10:26', '2023-11-03 13:10:26'),
(30, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 5, '3000.00', 0, '2023-11-03 13:11:56', '2023-11-03 13:11:56'),
(31, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 5, '3000.00', 0, '2023-11-03 13:12:16', '2023-11-03 13:12:16'),
(32, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 0, '0.00', 0, '2023-11-03 13:13:24', '2023-11-03 13:13:24'),
(33, 'rakibtac@gmail.com', 'bangladesh', 'UyINVhpVEd', 'qRTMaHhUOe', 'k5dheX2I46', 'G3AUU2WjW8', 'mVHuYzGZqw', 'chittagong', 'N4VFnoBM4V', '018989898989', 0, '0.00', 0, '2023-11-03 13:14:33', '2023-11-03 13:14:33'),
(34, 'rakibtac@gmail.com', 'bangladesh', 'LMs59BEEmj', 'Al7vAQgZah', 'Dxrz9Ok5Nh', 'i0NF92kxUs', 'sWhmmyQZT7', 'chittagong', 'SbvUqYOwHZ', '018989898989', 3, '1800.00', 0, '2023-11-03 13:15:30', '2023-11-03 13:15:30'),
(35, 'rakibtac@gmail.com', 'bangladesh', '0sEO2ANftb', '4to4TJJx3R', 'pRVVy9O6Wh', 'yZnHlxvouw', 'RbsOrTAd1u', 'chittagong', '2SgVr56IT6', '018989898989', 1, '600.00', 0, '2023-11-03 13:16:50', '2023-11-03 13:16:50'),
(36, 'rakibtac@gmail.com', 'bangladesh', 'kwjGd7ssOP', 'BtyGJzIoaN', '7p2f6BojL7', 'DzZEtpquCH', 'oPdoaYBp5s', 'chittagong', 'BjPE3ufplQ', '018989898989', 1, '600.00', 1, '2023-11-03 13:18:48', '2023-11-04 04:05:20'),
(37, 'rakibtac@gmail.com', 'bangladesh', 'kwjGd7ssOP', 'BtyGJzIoaN', '7p2f6BojL7', 'DzZEtpquCH', 'oPdoaYBp5s', 'chittagong', 'BjPE3ufplQ', '018989898989', 1, '600.00', 1, '2023-11-03 13:19:36', '2023-11-04 04:09:13'),
(38, 'rakibtac@gmail.com', 'bangladesh', '5gnkONMh6x', 'ruuuck837O', 'ABsqpo2T3v', '4Wh22q21XW', 'TBhdiPVoWO', 'chittagong', 'SAQDOq6f2V', '018989898989', 1, '600.00', 1, '2023-11-03 13:20:48', '2023-11-04 04:03:11'),
(39, 'rakibtac@gmail.com', 'bangladesh', '4Sv2UtMj0j', 'dSrCzBaPff', 'DC6da09Ac7', 'oDpwmnIgvU', 'svtmJlP0Om', 'chittagong', 'Av6PyTJvF7', '018989898989', 1, '600.00', -1, '2023-11-03 13:22:22', '2023-11-04 03:56:58'),
(40, 'rakibtac@gmail.com', 'bangladesh', 'aA4PmESuTE', 'oQCYhSRxyQ', 'SINAFDH6p9', 'qebeF3FxNq', 'cJ4cKc7Df4', 'chittagong', 'ZRbIerol0C', '018989898989', 1, '600.00', 1, '2023-11-03 13:25:10', '2023-11-04 03:45:34'),
(41, 'rakibtac@gmail.com', 'bangladesh', 'BKSMoEZGgP', 'UA7tBb8xD7', 'VgDYoLCU9Q', 'sccOVfQkbQ', 'W3YZPT5BgN', 'chittagong', 'otZYctCMGk', '018989898989', 1, '600.00', 0, '2023-11-04 04:12:02', '2023-11-04 04:12:02'),
(42, 'rakibtac@gmail.com', 'bangladesh', 'BKSMoEZGgP', 'UA7tBb8xD7', 'VgDYoLCU9Q', 'sccOVfQkbQ', 'W3YZPT5BgN', 'chittagong', 'otZYctCMGk', '018989898989', 1, '600.00', 0, '2023-11-04 04:20:24', '2023-11-04 04:20:24'),
(43, 'rakibtac@gmail.com', 'bangladesh', 'BKSMoEZGgP', 'UA7tBb8xD7', 'VgDYoLCU9Q', 'sccOVfQkbQ', 'W3YZPT5BgN', 'chittagong', 'otZYctCMGk', '018989898989', 1, '600.00', 0, '2023-11-04 04:22:05', '2023-11-04 04:22:05'),
(44, 'rakibtac@gmail.com', 'bangladesh', 'BKSMoEZGgP', 'UA7tBb8xD7', 'VgDYoLCU9Q', 'sccOVfQkbQ', 'W3YZPT5BgN', 'chittagong', 'otZYctCMGk', '018989898989', 1, '600.00', 0, '2023-11-04 04:22:35', '2023-11-04 04:22:35'),
(45, 'rakibtac@gmail.com', 'bangladesh', '7r3kEOBA8i', 'YMn8pt6Sjm', 'g6IztrSQf3', '9zLc3CSfPv', 'jHhzBHbZvc', 'chittagong', 'bm9BHq7N4f', '018989898989', 1, '600.00', 0, '2023-11-04 18:44:10', '2023-11-04 18:44:10'),
(46, 'rakibtac@gmail.com', 'bangladesh', '7r3kEOBA8i', 'YMn8pt6Sjm', 'g6IztrSQf3', '9zLc3CSfPv', 'jHhzBHbZvc', 'chittagong', 'bm9BHq7N4f', '018989898989', 1, '600.00', 0, '2023-11-04 18:45:22', '2023-11-04 18:45:22'),
(47, 'rakibtac@gmail.com', 'bangladesh', 'GpDxgtA26H', 'VZQ9xzbjbw', 'Ayj1SFsW7s', 'yz6TQkq9C0', 'zmOS4kQSf5', 'chittagong', 'mcb5YDixPQ', '018989898989', 4, '2400.00', 0, '2023-11-04 18:56:34', '2023-11-04 18:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `product_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_name`, `quantity`, `price`, `subtotal`, `total`, `status`, `created_at`, `updated_at`, `variant_id`) VALUES
(1, 2, '1', 'Watch', '2', '20.00', '40.00', '40.00', 'pending', '2023-10-23 01:19:32', '2023-10-23 01:19:32', 0),
(2, 2, '2', 'Mobile', '1', '50.00', '50.00', '50.00', 'pending', '2023-10-23 01:19:32', '2023-10-23 01:19:32', 0),
(3, 3, '1', 'Watch', '2', '20.00', '40.00', '40.00', 'pending', '2023-10-23 01:32:08', '2023-10-23 01:32:08', 0),
(4, 3, '2', 'Mobile', '1', '50.00', '50.00', '50.00', 'pending', '2023-10-23 01:32:08', '2023-10-23 01:32:08', 0),
(5, 4, '1', 'Watch', '2', '20.00', '40.00', '40.00', 'pending', '2023-10-23 01:37:23', '2023-10-23 01:37:23', 0),
(6, 4, '2', 'Mobile', '1', '50.00', '50.00', '50.00', 'pending', '2023-10-23 01:37:24', '2023-10-23 01:37:24', 0),
(7, 5, '1', 'Watch', '1', '20.00', '20.00', '20.00', 'pending', '2023-10-23 01:39:42', '2023-10-23 01:39:42', 0),
(8, 5, '2', 'Mobile', '1', '50.00', '50.00', '50.00', 'pending', '2023-10-23 01:39:42', '2023-10-23 01:39:42', 0),
(9, 6, '1', 'Watch', '12', '20.00', '240.00', '240.00', 'pending', '2023-10-23 04:27:27', '2023-10-23 04:27:27', 0),
(10, 7, '1', 'Watch', '6', '20.00', '120.00', '120.00', 'pending', '2023-10-23 04:28:41', '2023-10-23 04:28:41', 0),
(11, 8, '24', 'zcdfcfasdf', '1', '600.00', '600.00', '600.00', 'pending', '2023-10-25 01:44:12', '2023-10-25 01:44:12', 0),
(12, 9, '24', 'zcdfcfasdf', '1', '600.00', '600.00', '600.00', 'pending', '2023-10-25 01:47:01', '2023-10-25 01:47:01', 0),
(13, 10, '24', 'zcdfcfasdf', '1', '600.00', '600.00', '600.00', 'pending', '2023-10-25 02:01:38', '2023-10-25 02:01:38', 1),
(14, 11, '24', 'zcdfcfasdf', '1', '600.00', '600.00', '600.00', 'pending', '2023-10-25 02:04:37', '2023-10-25 02:04:37', 2),
(15, 12, '24', 'zcdfcfasdf', '3', '600.00', '1800.00', '1800.00', 'pending', '2023-11-02 12:22:29', '2023-11-02 12:22:29', 2),
(16, 13, '24', 'zcdfcfasdf', '3', '600.00', '1800.00', '1800.00', 'pending', '2023-11-02 12:23:11', '2023-11-02 12:23:11', 2),
(17, 14, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-02 21:58:26', '2023-11-02 21:58:26', -1),
(18, 15, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-02 21:59:06', '2023-11-02 21:59:06', -1),
(19, 16, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-02 23:24:24', '2023-11-02 23:24:24', -1),
(20, 17, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-02 23:27:23', '2023-11-02 23:27:23', -1),
(21, 18, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-02 23:35:48', '2023-11-02 23:35:48', -1),
(22, 22, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-02 23:45:20', '2023-11-02 23:45:20', -1),
(23, 23, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-02 23:47:25', '2023-11-02 23:47:25', -1),
(24, 24, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-02 23:47:38', '2023-11-02 23:47:38', -1),
(25, 25, '26', 'Hello world', '5', '600.00', '3000.00', '3000.00', 'pending', '2023-11-03 13:07:23', '2023-11-03 13:07:23', -1),
(26, 26, '26', 'Hello world', '5', '600.00', '3000.00', '3000.00', 'pending', '2023-11-03 13:08:24', '2023-11-03 13:08:24', -1),
(27, 27, '26', 'Hello world', '5', '600.00', '3000.00', '3000.00', 'pending', '2023-11-03 13:09:09', '2023-11-03 13:09:09', -1),
(28, 28, '26', 'Hello world', '5', '600.00', '3000.00', '3000.00', 'pending', '2023-11-03 13:09:51', '2023-11-03 13:09:51', -1),
(29, 29, '26', 'Hello world', '5', '600.00', '3000.00', '3000.00', 'pending', '2023-11-03 13:10:26', '2023-11-03 13:10:26', -1),
(30, 30, '26', 'Hello world', '5', '600.00', '3000.00', '3000.00', 'pending', '2023-11-03 13:11:56', '2023-11-03 13:11:56', -1),
(31, 31, '26', 'Hello world', '5', '600.00', '3000.00', '3000.00', 'pending', '2023-11-03 13:12:16', '2023-11-03 13:12:16', -1),
(32, 34, '26', 'Hello world', '3', '600.00', '1800.00', '1800.00', 'pending', '2023-11-03 13:15:30', '2023-11-03 13:15:30', -1),
(33, 35, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-03 13:16:50', '2023-11-03 13:16:50', -1),
(34, 36, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-03 13:18:48', '2023-11-03 13:18:48', -1),
(35, 37, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-03 13:19:36', '2023-11-03 13:19:36', -1),
(36, 38, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-03 13:20:48', '2023-11-03 13:20:48', -1),
(37, 39, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-03 13:22:22', '2023-11-03 13:22:22', -1),
(38, 40, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-03 13:25:10', '2023-11-03 13:25:10', -1),
(39, 41, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-04 04:12:02', '2023-11-04 04:12:02', -1),
(40, 42, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-04 04:20:24', '2023-11-04 04:20:24', -1),
(41, 43, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-04 04:22:05', '2023-11-04 04:22:05', -1),
(42, 44, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-04 04:22:35', '2023-11-04 04:22:35', -1),
(43, 45, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-04 18:44:10', '2023-11-04 18:44:10', -1),
(44, 46, '26', 'Hello world', '1', '600.00', '600.00', '600.00', 'pending', '2023-11-04 18:45:22', '2023-11-04 18:45:22', -1),
(45, 47, '26', 'Hello world', '4', '600.00', '2400.00', '2400.00', 'pending', '2023-11-04 18:56:34', '2023-11-04 18:56:34', -1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `category_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `category_id`, `description`, `created_at`, `updated_at`, `feature_image`) VALUES
(1, 'Watch', '20.00', 1, 'Hello world', '2023-10-22 10:35:54', '2023-10-22 10:35:54', ''),
(2, 'Mobile', '50.00', 1, 'Hello world', '2023-10-22 18:47:46', '2023-10-22 18:47:46', ''),
(3, 'FRzHIggING', '600.00', 4, 'sfds', '2023-10-24 13:31:00', '2023-10-24 13:31:00', 'feature_product_1698175850.png'),
(4, 'scfsObyyLQ', '600.00', 2, 'frwer', '2023-10-24 13:33:30', '2023-10-24 13:33:30', 'feature_product_1698176005.png'),
(5, 'scfsObyyLQsdfsa', '600.00', 2, 'frwer', '2023-10-24 13:34:31', '2023-10-24 13:34:31', 'feature_product_1698176071.png'),
(6, 'fsadf', '600.00', 2, 'dfg', '2023-10-24 13:38:39', '2023-10-24 13:38:39', 'feature_product_1698176311.png'),
(7, 'fsadfgdfdfgdfs', '600.00', 2, 'sdf', '2023-10-24 13:41:33', '2023-10-24 13:41:33', 'feature_product_1698176493.png'),
(8, 'asdfttgghh', '600.00', 2, 'czX', '2023-10-24 13:52:19', '2023-10-24 13:52:19', 'feature_product_1698177139.png'),
(9, 'asdfttgghhsdfsa', '600.00', 2, 'czX', '2023-10-24 13:53:39', '2023-10-24 13:53:39', 'feature_product_1698177219.png'),
(10, 'dfsadf', '600.00', 2, 'sdfsa', '2023-10-24 13:55:19', '2023-10-24 13:55:19', 'feature_product_1698177319.png'),
(11, 'dfsadffsdf', '600.00', 2, 'vxc', '2023-10-24 13:56:48', '2023-10-24 13:56:48', 'feature_product_1698177408.png'),
(12, 'fasdf', '600.00', 2, 'asdf', '2023-10-24 22:36:02', '2023-10-24 22:36:02', 'feature_product_1698208562.png'),
(13, 'sadxcxx', '600.00', 2, 'safdf', '2023-10-24 22:37:47', '2023-10-24 22:37:47', 'feature_product_1698208667.png'),
(14, 'tthhjj', '600.00', 2, 'sdfa', '2023-10-24 22:39:54', '2023-10-24 22:39:54', 'feature_product_1698208794.png'),
(15, 'yhjhjds', '600.00', 2, 'w', '2023-10-24 22:42:49', '2023-10-24 22:42:49', 'feature_product_1698208969.png'),
(16, 'agsdr', '600.00', 2, 'cssa', '2023-10-24 22:47:14', '2023-10-24 22:47:14', 'feature_product_1698209234.png'),
(17, 'sdfs', '677.00', 5, 'sfadf', '2023-10-24 22:49:46', '2023-10-24 22:49:46', 'feature_product_1698209386.png'),
(18, 'ascccc', '600.00', 2, 'sadf', '2023-10-24 23:01:35', '2023-10-24 23:01:35', 'feature_product_1698210095.png'),
(19, 'ascccccccsss', '600.00', 2, 'sdf', '2023-10-24 23:03:15', '2023-10-24 23:03:15', 'feature_product_1698210195.png'),
(20, 'sadcccc', '600.00', 5, 'sfs', '2023-10-25 00:41:45', '2023-10-25 00:41:45', 'feature_product_1698216097.png'),
(21, 'csdfsadf', '600.00', 5, 'sdf', '2023-10-25 00:52:40', '2023-10-25 00:52:40', 'feature_product_1698216760.png'),
(22, 'scsadfszxfsd', '600.00', 5, 'sdf', '2023-10-25 00:53:47', '2023-10-25 00:53:47', 'feature_product_1698216820.png'),
(23, 'zcdf', '600.00', 5, 'sdf', '2023-10-25 00:54:39', '2023-10-25 00:54:39', 'feature_product_1698216879.png'),
(24, 'zcdfcfasdf', '600.00', 5, 'sdf', '2023-10-25 00:56:06', '2023-10-25 00:56:06', 'feature_product_1698216966.png'),
(25, 'zcdfcfasdfczxxc', '600.00', 5, 'sa', '2023-11-02 12:36:31', '2023-11-02 12:36:31', 'feature_product_1698950191.png'),
(26, 'Hello world', '600.00', 4, 'sad', '2023-11-02 12:37:15', '2023-11-02 12:37:15', 'feature_product_1698950235.png'),
(27, 'Iphone', '600.00', 4, 'sdfadf', '2023-11-05 00:56:07', '2023-11-05 00:56:07', 'feature_product_1699167367.png'),
(28, 'Iphone two', '600.00', 4, 'sdfadf', '2023-11-05 00:56:22', '2023-11-05 00:56:22', 'feature_product_1699167382.png'),
(29, 'Iphone again', '600.00', 4, 'sdfadf', '2023-11-05 00:56:46', '2023-11-05 00:56:46', 'feature_product_1699167406.png'),
(30, 'Iphone hjk', '400.00', 5, 'fsadf', '2023-11-05 01:01:19', '2023-11-05 01:01:19', 'feature_product_1699167679.png'),
(31, 'Iphone hjkhh', '400.00', 5, 'fsadf', '2023-11-05 01:01:45', '2023-11-05 01:01:45', 'feature_product_1699167705.png'),
(32, 'Iphone yyh', '400.00', 4, 'fsadf', '2023-11-05 01:03:17', '2023-11-05 01:03:17', 'feature_product_1699167797.png'),
(33, 'Iphonevsd', '400.00', 5, 'dfs', '2023-11-05 01:04:38', '2023-11-05 01:04:38', 'feature_product_1699167878.png'),
(34, 'Iphonevsdvvvv', '400.00', 5, 'dfs', '2023-11-05 01:04:50', '2023-11-05 01:04:50', 'feature_product_1699167890.png'),
(35, 'Iphone yhjkkkl', '400.00', 4, 'zdsfs', '2023-11-05 01:09:40', '2023-11-05 02:11:08', 'feature_product_1699168180.png'),
(36, 'Microtik Keyboard', '600.00', 5, 'sfas', '2023-11-05 01:12:34', '2023-11-05 02:12:15', 'feature_product_1699171935.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `favicon`, `email`, `address`, `city`, `state`, `zip`, `created_at`, `updated_at`) VALUES
(1, 'Sonali', 'bkash-removebg-preview_1698235331.png', 'logo (1)_1698235347.png', 'admin12@gmail.com', 'Soanlipara', 'sonalipur', 'sonali', '23123', '2023-10-25 11:33:19', '2023-11-11 11:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `size_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'hello', 'hello', '2023-10-24 11:49:00', '2023-10-18 11:49:00'),
(2, 'asdf', '', '2023-10-24 07:16:17', '2023-10-24 07:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `first_name`, `last_name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Arman', 'Hossain', 'arman@gmail.com', '2023-11-05 00:01:56', '2023-11-05 00:01:56'),
(2, 'arman', 'hsoaain', 'armanagain@gmail.com', '2023-11-05 00:06:24', '2023-11-05 00:06:24'),
(3, 'rafi', 'hossain', 'rafi@gmail.com', '2023-11-05 00:09:50', '2023-11-05 00:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-23 12:20:34', '2023-11-11 11:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`, `product_id`) VALUES
(1, 'hello', '2023-10-24 11:31:35', '2023-10-24 11:31:35', 0),
(2, 'Pinkish', '2023-10-24 07:12:14', '2023-10-24 07:12:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `variant_products`
--

CREATE TABLE `variant_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int NOT NULL,
  `variant_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant_products`
--

INSERT INTO `variant_products` (`id`, `product_id`, `variant_id`, `created_at`, `updated_at`) VALUES
(1, 24, 1, '2023-10-25 00:56:06', '2023-10-25 00:56:06'),
(2, 24, 2, '2023-10-25 00:56:06', '2023-10-25 00:56:06'),
(7, 35, 1, '2023-11-05 02:11:14', '2023-11-05 02:11:14'),
(8, 35, 2, '2023-11-05 02:11:14', '2023-11-05 02:11:14'),
(10, 36, 1, '2023-11-05 02:12:15', '2023-11-05 02:12:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metas_page_name_unique` (`page_name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_size_name_unique` (`size_name`),
  ADD UNIQUE KEY `sizes_slug_unique` (`slug`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant_products`
--
ALTER TABLE `variant_products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `variant_products`
--
ALTER TABLE `variant_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
