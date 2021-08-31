-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 09:04 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bof_sims`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(13, 'Apple', '2021-08-30 23:08:47', '2021-08-30 23:08:47'),
(14, 'HP', '2021-08-30 23:08:52', '2021-08-30 23:08:52'),
(15, 'Delux', '2021-08-30 23:09:32', '2021-08-30 23:09:32'),
(16, 'General', '2021-08-30 23:09:38', '2021-08-30 23:09:38'),
(17, 'Space', '2021-08-30 23:09:51', '2021-08-30 23:09:51'),
(18, 'Transnet', '2021-08-30 23:09:59', '2021-08-30 23:09:59'),
(19, 'Ultra', '2021-08-30 23:10:20', '2021-08-30 23:10:20'),
(20, 'LG Chasis', '2021-08-30 23:10:33', '2021-08-30 23:10:33'),
(21, 'Segotep', '2021-08-30 23:10:42', '2021-08-30 23:10:42'),
(22, 'Work shop', '2021-08-30 23:10:56', '2021-08-30 23:10:56'),
(23, 'OVO', '2021-08-30 23:11:05', '2021-08-30 23:11:05'),
(24, 'Digital', '2021-08-30 23:11:12', '2021-08-30 23:11:12'),
(25, 'XLAB', '2021-08-30 23:11:26', '2021-08-30 23:11:26'),
(26, 'Pro Desk', '2021-08-30 23:11:49', '2021-08-30 23:11:49'),
(27, 'A0 Tech', '2021-08-30 23:11:58', '2021-08-30 23:11:58'),
(28, 'HP Pro', '2021-08-30 23:13:01', '2021-08-30 23:13:01'),
(29, 'Vallue top', '2021-08-30 23:13:09', '2021-08-30 23:13:09'),
(30, 'Epson', '2021-08-30 23:27:15', '2021-08-30 23:27:15'),
(31, 'LBP', '2021-08-30 23:27:38', '2021-08-30 23:27:38'),
(32, 'Toshiba', '2021-08-30 23:27:56', '2021-08-30 23:27:56'),
(33, 'M402-dn', '2021-08-30 23:29:31', '2021-08-30 23:29:31'),
(34, 'Toshiba-estud', '2021-08-30 23:29:53', '2021-08-30 23:29:53'),
(35, 'Samsung', '2021-08-30 23:30:51', '2021-08-30 23:30:51'),
(36, 'Laser Jet Pro', '2021-08-30 23:31:06', '2021-08-30 23:31:06'),
(37, 'Canon', '2021-08-30 23:31:20', '2021-08-30 23:31:20'),
(38, 'Fuzitsu', '2021-08-30 23:59:53', '2021-08-30 23:59:53'),
(39, 'DELL', '2021-08-31 00:05:11', '2021-08-31 00:05:11'),
(40, 'ASUS', '2021-08-31 00:24:18', '2021-08-31 00:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'Desktop', '2021-08-30 23:07:06', '2021-08-30 23:07:06'),
(9, 'Laptop', '2021-08-30 23:07:11', '2021-08-30 23:07:11'),
(10, 'Printer', '2021-08-30 23:07:16', '2021-08-30 23:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `created_at`, `updated_at`) VALUES
(13, 'Dot Matrix Printer', '2021-08-30 23:37:54', '2021-08-30 23:37:54'),
(14, 'Micro Dry (MD)', '2021-08-30 23:39:56', '2021-08-30 23:39:56');

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
(10, '2021_08_29_034625_create_products_table', 1),
(24, '2014_10_12_000000_create_users_table', 2),
(25, '2014_10_12_100000_create_password_resets_table', 2),
(26, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(27, '2019_08_19_000000_create_failed_jobs_table', 2),
(28, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(29, '2021_08_10_102727_create_sessions_table', 2),
(30, '2021_08_10_122712_create_categories_table', 2),
(31, '2021_08_10_171818_create_brands_table', 2),
(32, '2021_08_29_012557_create_subcategories_table', 2),
(33, '2021_08_29_024729_create_types_table', 2),
(34, '2021_08_29_041702_create_items_table', 2),
(35, '2021_08_29_134625_create_products_table', 2),
(39, '2021_08_29_434625_create_products_table', 3);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`) VALUES
(9, 'D19062', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-30 23:47:20', '2021-08-30 23:47:20'),
(10, 'D19125', 'Desktop', 'Brand Desktop', NULL, NULL, 'Apple', NULL, NULL, 'Bof Hq', '2021-08-30 23:50:46', '2021-08-30 23:50:46'),
(11, 'D19126', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, NULL, NULL, 'Bof Hq', '2021-08-30 23:53:27', '2021-08-30 23:53:27'),
(12, 'D19121', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Canon', NULL, NULL, 'Bof Hq', '2021-08-30 23:54:18', '2021-08-30 23:54:18'),
(13, 'D19103', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Canon', NULL, NULL, 'Bof Hq', '2021-08-30 23:55:24', '2021-08-30 23:55:24'),
(14, 'D19123', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, 'Bof Hq', '2021-08-30 23:56:44', '2021-08-30 23:56:44'),
(15, 'D19124', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, NULL, NULL, 'Bof Hq', '2021-08-30 23:57:21', '2021-08-30 23:57:21'),
(16, 'D19269', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, 'Bof Hq', '2021-08-30 23:58:01', '2021-08-30 23:58:01'),
(17, 'ICT-L-19001', 'Laptop', NULL, 'Core i3', NULL, 'Fuzitsu', NULL, NULL, NULL, '2021-08-30 23:58:53', '2021-08-31 00:00:17'),
(18, 'D19065', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, NULL, NULL, 'Bof Hq', '2021-08-31 00:00:11', '2021-08-31 00:00:11'),
(19, 'D19269', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, 'Bof Hq', '2021-08-31 00:01:04', '2021-08-31 00:01:04'),
(20, 'L-19001', 'Laptop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:01:46', '2021-08-31 00:01:46'),
(21, 'D19004', 'Desktop', NULL, NULL, NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:01:54', '2021-08-31 00:01:54'),
(22, 'D19007', 'Desktop', NULL, NULL, NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:02:24', '2021-08-31 00:02:24'),
(23, 'L-19003', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:03:23', '2021-08-31 00:03:23'),
(24, 'D19009', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:03:23', '2021-08-31 00:03:23'),
(25, 'D19062', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:04:27', '2021-08-31 00:04:27'),
(26, 'D19060', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:05:05', '2021-08-31 00:05:05'),
(27, 'D19059', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:05:48', '2021-08-31 00:05:48'),
(28, 'D19058', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:06:37', '2021-08-31 00:06:37'),
(29, 'L-19004', 'Laptop', NULL, 'Core i5', NULL, 'DELL', NULL, NULL, NULL, '2021-08-31 00:06:52', '2021-08-31 00:06:52'),
(30, 'D19052', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:07:19', '2021-08-31 00:07:19'),
(31, 'L-19005', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:07:42', '2021-08-31 00:07:42'),
(32, 'D19066', 'Desktop', NULL, 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:08:33', '2021-08-31 00:08:33'),
(33, 'L-19006', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:08:59', '2021-08-31 00:08:59'),
(34, 'L-19007', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:10:00', '2021-08-31 00:10:00'),
(35, 'D19063', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:11:10', '2021-08-31 00:11:10'),
(36, 'L-19009', 'Laptop', NULL, 'Core i5', NULL, 'DELL', NULL, NULL, NULL, '2021-08-31 00:11:35', '2021-08-31 00:11:35'),
(37, 'D19056', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:12:07', '2021-08-31 00:12:07'),
(38, 'D19057', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:12:56', '2021-08-31 00:12:56'),
(39, 'D19118', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:13:45', '2021-08-31 00:13:45'),
(40, 'D19028', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:14:43', '2021-08-31 00:14:43'),
(41, 'L-19010', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:15:08', '2021-08-31 00:15:08'),
(42, 'D19027', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:15:26', '2021-08-31 00:15:26'),
(43, 'L-19011', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:16:04', '2021-08-31 00:16:04'),
(44, 'L-19012', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:17:07', '2021-08-31 00:17:07'),
(45, 'D19026', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:17:19', '2021-08-31 00:17:19'),
(46, 'L-19013', 'Laptop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:17:48', '2021-08-31 00:17:48'),
(47, 'D19029', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:18:01', '2021-08-31 00:18:01'),
(48, 'D19030', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:18:24', '2021-08-31 00:18:24'),
(49, 'L-19014', 'Laptop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:18:33', '2021-08-31 00:18:33'),
(50, 'D19031', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:18:50', '2021-08-31 00:18:50'),
(51, 'D19032', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:19:13', '2021-08-31 00:19:13'),
(52, 'L-19015', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:19:19', '2021-08-31 00:19:19'),
(53, 'D19033', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:19:26', '2021-08-31 00:19:26'),
(54, 'D19034', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:19:50', '2021-08-31 00:19:50'),
(55, 'L-19016', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:19:55', '2021-08-31 00:19:55'),
(56, 'D19035', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:20:07', '2021-08-31 00:20:39'),
(57, 'L-19017', 'Laptop', NULL, 'Core i5', NULL, 'DELL', NULL, NULL, NULL, '2021-08-31 00:20:25', '2021-08-31 00:20:25'),
(58, 'D19036', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:20:57', '2021-08-31 00:20:57'),
(59, 'L-19018', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:20:57', '2021-08-31 00:20:57'),
(60, 'D19041', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:21:18', '2021-08-31 00:21:18'),
(61, 'L-19018', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:21:27', '2021-08-31 00:21:27'),
(62, 'D19037', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:21:38', '2021-08-31 00:21:38'),
(63, 'D19038', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:21:55', '2021-08-31 00:21:55'),
(64, 'L-19019', 'Laptop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:22:12', '2021-08-31 00:22:12'),
(65, 'D19029', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:22:13', '2021-08-31 00:22:13'),
(66, 'D19039', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:22:34', '2021-08-31 00:22:34'),
(67, 'L-19020', 'Laptop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:22:49', '2021-08-31 00:22:49'),
(68, 'D19040', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:22:51', '2021-08-31 00:22:51'),
(69, 'D19045', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:23:07', '2021-08-31 00:23:07'),
(70, 'D19040', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:23:31', '2021-08-31 00:23:31'),
(71, 'D19045', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:24:07', '2021-08-31 00:24:07'),
(72, 'D19046', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:24:21', '2021-08-31 00:24:21'),
(73, 'D19042', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:24:34', '2021-08-31 00:24:34'),
(74, 'D19043', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:24:54', '2021-08-31 00:24:54'),
(75, 'L-19021', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:24:57', '2021-08-31 00:24:57'),
(76, 'D19044', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:25:07', '2021-08-31 00:25:07'),
(77, 'D19047', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:25:24', '2021-08-31 00:25:24'),
(78, 'L-19022', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:25:31', '2021-08-31 00:25:31'),
(79, 'D19048', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:25:47', '2021-08-31 00:25:47'),
(80, 'D19049', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:26:01', '2021-08-31 00:26:01'),
(81, 'L-19023', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:26:07', '2021-08-31 00:26:07'),
(82, 'D19050', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:26:17', '2021-08-31 00:26:17'),
(83, 'D19051', 'Desktop', NULL, 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:26:38', '2021-08-31 00:26:38'),
(84, 'L-19024', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:26:58', '2021-08-31 00:26:58'),
(85, 'D19001', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:27:05', '2021-08-31 00:27:05'),
(86, 'D19070', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:27:43', '2021-08-31 00:27:43'),
(87, 'D19071', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:27:52', '2021-08-31 00:27:52'),
(88, 'L-19025', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:27:59', '2021-08-31 00:27:59'),
(89, 'D19072', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:28:08', '2021-08-31 00:28:08'),
(90, 'L-19026', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:28:21', '2021-08-31 00:28:21'),
(91, 'D19073', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:28:25', '2021-08-31 00:28:25'),
(92, 'D19074', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:28:39', '2021-08-31 00:28:39'),
(93, 'L-19027', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:28:48', '2021-08-31 00:28:48'),
(94, 'L-19028', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:30:05', '2021-08-31 00:30:05'),
(95, 'L-19029', 'Laptop', NULL, 'Core i5', NULL, 'DELL', NULL, NULL, NULL, '2021-08-31 00:30:37', '2021-08-31 00:30:37'),
(96, 'L-19030', 'Laptop', NULL, 'Core i5', NULL, 'DELL', NULL, NULL, NULL, '2021-08-31 00:31:21', '2021-08-31 00:31:21'),
(97, 'L-21001', 'Laptop', NULL, 'Core i5', NULL, 'ASUS', NULL, NULL, NULL, '2021-08-31 00:32:15', '2021-08-31 00:32:15'),
(98, 'L-21002', 'Laptop', NULL, 'Core i5', NULL, 'DELL', NULL, NULL, NULL, '2021-08-31 00:32:56', '2021-08-31 00:32:56'),
(99, 'L-', 'Laptop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:34:41', '2021-08-31 00:34:41'),
(100, 'D19076', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:34:58', '2021-08-31 00:34:58'),
(101, 'L-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:35:27', '2021-08-31 00:35:27'),
(102, 'L-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:35:35', '2021-08-31 00:35:35'),
(103, 'L-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:35:44', '2021-08-31 00:35:44'),
(104, 'D19233', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:35:48', '2021-08-31 00:35:48'),
(105, 'D19246', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:36:11', '2021-08-31 00:36:11'),
(106, 'D19155', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:36:30', '2021-08-31 00:36:30'),
(107, 'D19122', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:36:41', '2021-08-31 00:36:41'),
(108, 'D19156', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:36:55', '2021-08-31 00:36:55'),
(109, 'D19069', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:37:09', '2021-08-31 00:37:09'),
(110, 'D19098', 'Desktop', 'Clone Desktop', NULL, NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:39:02', '2021-08-31 00:39:02'),
(111, 'D19099', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:39:52', '2021-08-31 00:39:52'),
(113, 'D1900', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:42:18', '2021-08-31 00:42:18'),
(114, 'D19101', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:43:27', '2021-08-31 00:43:27'),
(115, 'D19102', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:43:41', '2021-08-31 00:43:41'),
(116, 'D19104', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:43:51', '2021-08-31 00:43:51'),
(117, 'D19105', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:44:08', '2021-08-31 00:44:08'),
(118, 'D19106', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:44:19', '2021-08-31 00:44:19'),
(119, 'D19107', 'Desktop', 'Clone Desktop', 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:44:31', '2021-08-31 00:44:31'),
(120, 'D19108', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:44:55', '2021-08-31 00:44:55'),
(121, 'D19241', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:45:06', '2021-08-31 00:45:06'),
(122, 'D19103', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:45:30', '2021-08-31 00:45:30'),
(123, 'D19114', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:45:42', '2021-08-31 00:45:59'),
(124, 'D19109', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:46:20', '2021-08-31 00:46:20'),
(125, 'D19110', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:46:30', '2021-08-31 00:46:30'),
(126, 'D19111', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:46:39', '2021-08-31 00:46:39'),
(127, 'D19112', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:46:49', '2021-08-31 00:46:49'),
(128, 'D19113', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:46:57', '2021-08-31 00:46:57'),
(129, 'D19115', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:47:05', '2021-08-31 00:47:05'),
(130, 'D19115', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:47:24', '2021-08-31 00:47:24'),
(131, 'D19116', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:47:33', '2021-08-31 00:47:47'),
(132, 'D19117', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:48:07', '2021-08-31 00:48:07'),
(133, 'D19119', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:48:17', '2021-08-31 00:48:17'),
(134, 'D19120', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:48:32', '2021-08-31 00:48:32'),
(135, 'D19210', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:48:42', '2021-08-31 00:48:42'),
(136, 'D19209', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:48:52', '2021-08-31 00:48:52'),
(137, 'D19142', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:49:02', '2021-08-31 00:49:02'),
(138, 'D19128', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:49:12', '2021-08-31 00:49:12'),
(139, 'D19127', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:49:21', '2021-08-31 00:49:21'),
(140, 'D19130', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:49:32', '2021-08-31 00:49:32'),
(141, 'D19131', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:49:39', '2021-08-31 00:49:39'),
(142, 'D19132', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:49:52', '2021-08-31 00:49:52'),
(143, 'D19133', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:49:59', '2021-08-31 00:49:59'),
(144, 'D19134', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:50:05', '2021-08-31 00:50:05'),
(145, 'D19135', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:50:12', '2021-08-31 00:50:12'),
(146, 'D19136', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:50:21', '2021-08-31 00:50:21'),
(147, 'D19137', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:50:29', '2021-08-31 00:50:29'),
(148, 'D19143', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:50:39', '2021-08-31 00:50:39'),
(149, 'D19144', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:50:47', '2021-08-31 00:50:47'),
(150, 'D19145', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:50:55', '2021-08-31 00:50:55'),
(151, 'D19146', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:52:53', '2021-08-31 00:52:53'),
(152, 'D19147', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:53:17', '2021-08-31 00:53:17'),
(153, 'D19148', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:53:34', '2021-08-31 00:53:34'),
(154, 'D19149', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:54:11', '2021-08-31 00:54:11'),
(155, 'D19150', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:55:56', '2021-08-31 00:55:56'),
(156, 'D19151', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:56:04', '2021-08-31 00:56:04'),
(157, 'D19152', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:56:16', '2021-08-31 00:56:16'),
(158, 'D19153', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:56:25', '2021-08-31 00:56:25'),
(159, 'D19154', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:56:40', '2021-08-31 00:56:40'),
(160, 'D19235', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:56:53', '2021-08-31 00:56:53'),
(161, 'D19261', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:57:02', '2021-08-31 00:57:02'),
(162, 'D19207', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:57:12', '2021-08-31 00:57:12'),
(163, 'D19205', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:57:19', '2021-08-31 00:57:19'),
(164, 'D19118', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:57:26', '2021-08-31 00:57:26'),
(165, 'D19157', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:57:35', '2021-08-31 00:57:35'),
(166, 'D19206', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:57:42', '2021-08-31 00:57:42'),
(167, 'D19211', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:57:49', '2021-08-31 00:57:49'),
(168, 'D19220', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:57:56', '2021-08-31 00:57:56'),
(169, 'D1921', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:58:05', '2021-08-31 00:58:05'),
(170, 'D19222', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:58:12', '2021-08-31 00:58:12'),
(171, 'W19281', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:58:37', '2021-08-31 00:58:37'),
(172, 'D19002', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:58:47', '2021-08-31 00:58:47'),
(173, 'D19025', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:58:56', '2021-08-31 00:58:56'),
(174, 'D19247', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:59:06', '2021-08-31 00:59:06'),
(175, 'D19102', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:59:17', '2021-08-31 00:59:17'),
(176, 'D19261', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:59:27', '2021-08-31 00:59:27'),
(177, 'W0024', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 00:59:54', '2021-08-31 00:59:54'),
(178, 'W0029', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:00:07', '2021-08-31 01:00:07'),
(179, 'W0030', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:00:21', '2021-08-31 01:00:21'),
(180, 'W0031', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:00:39', '2021-08-31 01:00:39'),
(181, 'W0033', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:00:49', '2021-08-31 01:00:49'),
(182, 'W0034', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:01:02', '2021-08-31 01:01:02'),
(183, 'W0037', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:01:12', '2021-08-31 01:01:12'),
(184, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:01:23', '2021-08-31 01:01:23'),
(185, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:01:33', '2021-08-31 01:01:33'),
(186, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:01:43', '2021-08-31 01:01:43'),
(187, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:01:52', '2021-08-31 01:01:52'),
(188, 'W00', NULL, NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:02:00', '2021-08-31 01:02:00'),
(189, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:02:10', '2021-08-31 01:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3DT7wcVa5IVut8RwuNHvRkONTNEEtzF8133vn9wa', 3, '192.168.101.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMnAzbTRYdlROd2l0MzVkY1dZYzVWTnlsYnRwOUowQ0t2V0hDMWlXNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjEwMS41MC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCR3ZklicjBnM2tWMm8zQnZmUlVJVU9lTWJUSnUxOXl0RTRiVzVlZ0hpMjRhWGRTRHZOUzVTZSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkd2ZJYnIwZzNrVjJvM0J2ZlJVSVVPZU1iVEp1MTl5dEU0Ylc1ZWdIaTI0YVhkU0R2TlM1U2UiO30=', 1630393332),
('4za15QT5WdNHl2M3X1SvmHLiQEfqFT7nr8IOwYW4', 2, '192.168.101.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRGdLUVpDMEhUOE1ENnBBWmlzUHFTNWJhanprZWlqcXR5THN3R2w3MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjEwMS41MC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkbDJ2ODh1RVpoMWNwbzNGdGsuLzNBLklCaUMyRWFlQjR6Ync1VDRJRHRSOE9HWVRqLnZ4Wi4iO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGwydjg4dUVaaDFjcG8zRnRrLi8zQS5JQmlDMkVhZUI0emJ3NVQ0SUR0UjhPR1lUai52eFouIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1630393420),
('7rXDRgwgZFnIggKHl37zrWEsYwhT7IEDQuWlvmLw', 2, '192.168.101.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.19041', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNEg2ck9LNUkzUjUxakdCSHBxbWR1QUk3czlrd080MEJnNDRUZDNlNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xOTIuMTY4LjEwMS41MC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGwydjg4dUVaaDFjcG8zRnRrLi8zQS5JQmlDMkVhZUI0emJ3NVQ0SUR0UjhPR1lUai52eFouIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRsMnY4OHVFWmgxY3BvM0Z0ay4vM0EuSUJpQzJFYWVCNHpidzVUNElEdFI4T0dZVGoudnhaLiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1630393338);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Brand Desktop', '2021-08-30 23:07:54', '2021-08-30 23:07:54'),
(5, 'Clone Desktop', '2021-08-30 23:08:00', '2021-08-30 23:08:00'),
(6, 'Color Printer', '2021-08-30 23:26:19', '2021-08-30 23:26:19'),
(7, 'Black & White Printer', '2021-08-30 23:26:34', '2021-08-30 23:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(11, 'Core i3', '2021-08-30 23:25:03', '2021-08-30 23:25:03'),
(12, 'Core i5', '2021-08-30 23:25:06', '2021-08-30 23:25:06'),
(13, 'Core i7', '2021-08-30 23:25:12', '2021-08-30 23:25:12'),
(14, 'Core i9', '2021-08-30 23:25:18', '2021-08-30 23:25:18'),
(15, 'Ink jet', '2021-08-30 23:32:52', '2021-08-30 23:32:52'),
(16, 'Laser', '2021-08-30 23:32:58', '2021-08-30 23:32:58'),
(17, '2 Duo', '2021-08-30 23:59:28', '2021-08-30 23:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'apon', 'apon@gmail.com', NULL, '$2y$10$aMkh/yXJ9619U/gw.VUjUOD/Kf7EunQjpDyFqo7UJTgvlUYCOyvUa', NULL, NULL, NULL, NULL, NULL, '2021-08-28 23:44:45', '2021-08-28 23:44:45'),
(2, 'Test', 'test@gmail.com', NULL, '$2y$10$l2v88uEZh1cpo3Ftk./3A.IBiC2EaeB4zbw5T4IDtR8OGYTj.vxZ.', NULL, NULL, 'P5UQrYa74hVJsqFkMCRsX0APYyPpgUrhmgk7Kh6lPUmqV6fsTa6DszLBlLkl', NULL, NULL, '2021-08-30 18:53:11', '2021-08-30 18:53:11'),
(3, 'Touhid', 'touhidspi@gmail.com', NULL, '$2y$10$wfIbr0g3kV2o3BvfRUIUOeMbTJu19ytE4bW5egHi24aXdSDvNS5Se', NULL, NULL, NULL, NULL, NULL, '2021-08-30 23:06:22', '2021-08-30 23:06:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
