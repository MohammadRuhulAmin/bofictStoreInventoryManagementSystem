-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2021 at 04:49 AM
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
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'SA purchase', '2021-08-31 20:39:17', '2021-08-31 20:39:17'),
(5, 'PKS', '2021-08-31 20:39:29', '2021-08-31 20:39:29'),
(6, 'SAE Purchase', '2021-08-31 20:39:33', '2021-08-31 20:39:33'),
(7, 'OA Purchase', '2021-08-31 20:39:45', '2021-08-31 20:39:45'),
(8, 'Man main store', '2021-08-31 20:40:00', '2021-08-31 20:40:00'),
(9, 'Am main store', '2021-08-31 20:40:08', '2021-08-31 20:40:08'),
(10, 'Dir Admin & Mat', '2021-08-31 20:40:10', '2021-08-31 20:40:10'),
(11, 'PO Receive Control', '2021-08-31 20:40:21', '2021-08-31 20:40:21'),
(12, 'DD Admin & Mat', '2021-08-31 20:40:30', '2021-08-31 20:40:30'),
(13, 'APO main store', '2021-08-31 20:40:31', '2021-08-31 20:40:31'),
(14, 'GK main store', '2021-08-31 20:40:38', '2021-08-31 20:40:38'),
(15, 'OA officers mess', '2021-08-31 20:40:45', '2021-08-31 20:40:45'),
(16, 'SA MT', '2021-08-31 20:40:51', '2021-08-31 20:40:51'),
(17, 'OS MT', '2021-08-31 20:40:56', '2021-08-31 20:40:56'),
(18, 'DD Admin', '2021-08-31 20:40:57', '2021-08-31 20:40:57'),
(19, 'OIC ICT cell', '2021-08-31 20:41:05', '2021-08-31 20:41:05'),
(20, 'SAE ICT cell', '2021-08-31 20:41:12', '2021-08-31 20:41:12'),
(21, 'MAP', '2021-08-31 20:41:17', '2021-08-31 20:41:17'),
(22, 'OA ICT cell', '2021-08-31 20:41:20', '2021-08-31 20:41:20'),
(23, 'Server Room', '2021-08-31 20:41:27', '2021-08-31 20:41:27'),
(24, 'NOC', '2021-08-31 20:41:31', '2021-08-31 20:41:31'),
(25, 'R & T', '2021-08-31 20:41:37', '2021-08-31 20:41:37'),
(26, 'AD server', '2021-08-31 20:41:38', '2021-08-31 20:41:38'),
(27, 'ERP Server', '2021-08-31 20:41:47', '2021-08-31 20:41:47'),
(28, 'CR', '2021-08-31 20:41:52', '2021-08-31 20:41:52'),
(29, 'APO Finance', '2021-08-31 20:41:54', '2021-08-31 20:41:54'),
(30, 'Sy. Camera', '2021-08-31 20:42:05', '2021-08-31 20:42:05'),
(31, 'MT.', '2021-08-31 20:42:09', '2021-08-31 20:42:09'),
(32, 'DIR production Office', '2021-08-31 20:42:21', '2021-08-31 20:42:21'),
(33, 'Workman Record', '2021-08-31 20:42:23', '2021-08-31 20:42:23'),
(34, 'Production C-cordiant Cell', '2021-08-31 20:42:36', '2021-08-31 20:42:36'),
(35, 'Stuff Record', '2021-08-31 20:42:37', '2021-08-31 20:42:37'),
(36, 'Small Arms Ammo (SAA)', '2021-08-31 20:42:51', '2021-08-31 20:42:51'),
(37, 'DD HAG', '2021-08-31 20:42:59', '2021-08-31 20:42:59'),
(38, 'DD HAG Office', '2021-08-31 20:43:07', '2021-08-31 20:43:07'),
(39, 'GP-3 Office', '2021-08-31 20:43:19', '2021-08-31 20:43:19'),
(40, 'Budget & Cash', '2021-08-31 20:43:28', '2021-08-31 20:43:28'),
(41, 'Dir PLG & maint Office', '2021-08-31 20:43:48', '2021-08-31 20:43:48'),
(42, 'Budget', '2021-08-31 20:43:54', '2021-08-31 20:43:54'),
(43, 'Cash', '2021-08-31 20:44:01', '2021-08-31 20:44:01'),
(44, 'DD PlG office', '2021-08-31 20:44:02', '2021-08-31 20:44:02'),
(45, 'P & P', '2021-08-31 20:44:09', '2021-08-31 20:44:09'),
(46, 'Finance', '2021-08-31 20:44:12', '2021-08-31 20:44:12'),
(47, 'PSI', '2021-08-31 20:44:13', '2021-08-31 20:44:13'),
(48, 'WISA', '2021-08-31 20:44:18', '2021-08-31 20:44:18'),
(49, 'MC', '2021-08-31 20:44:21', '2021-08-31 20:44:21'),
(50, 'CC R & R', '2021-08-31 20:44:33', '2021-08-31 20:44:33'),
(51, 'Billing', '2021-08-31 20:44:34', '2021-08-31 20:44:34'),
(52, 'CC R & Office', '2021-08-31 20:44:46', '2021-08-31 20:44:46'),
(53, 'Drawing', '2021-08-31 20:45:00', '2021-08-31 20:45:00'),
(54, 'Matlab', '2021-08-31 20:45:05', '2021-08-31 20:45:05'),
(55, 'ISI', '2021-08-31 20:45:22', '2021-08-31 20:45:22'),
(56, 'CTM', '2021-08-31 20:45:30', '2021-08-31 20:45:30'),
(57, 'Person', '2021-08-31 20:45:31', '2021-08-31 20:45:31'),
(58, 'CTG', '2021-08-31 20:45:34', '2021-08-31 20:45:34'),
(59, 'Man MM', '2021-08-31 20:45:40', '2021-08-31 20:45:40'),
(60, 'Service Office', '2021-08-31 20:45:47', '2021-08-31 20:45:47'),
(61, 'MRO', '2021-08-31 20:45:51', '2021-08-31 20:45:51'),
(62, 'ME', '2021-08-31 20:45:54', '2021-08-31 20:45:54'),
(63, 'Exchange', '2021-08-31 20:46:07', '2021-08-31 20:46:07'),
(64, 'Officer Record', '2021-08-31 20:46:13', '2021-08-31 20:46:13'),
(65, 'Medical', '2021-08-31 20:46:29', '2021-08-31 20:46:29'),
(66, 'Security', '2021-08-31 20:46:30', '2021-08-31 20:46:30'),
(67, 'MAG', '2021-08-31 20:46:39', '2021-08-31 20:46:39'),
(68, 'Miscellaneous', '2021-08-31 20:46:48', '2021-08-31 20:46:48'),
(69, 'Welfare', '2021-08-31 20:46:55', '2021-08-31 20:46:55'),
(70, 'Recident', '2021-08-31 20:47:00', '2021-08-31 20:47:00'),
(71, 'Ration', '2021-08-31 20:47:10', '2021-08-31 20:47:10'),
(72, 'Fire', '2021-08-31 20:47:14', '2021-08-31 20:47:14'),
(73, 'Purchase', '2021-08-31 20:47:25', '2021-08-31 20:47:25');

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
(39, '2021_08_29_434625_create_products_table', 3),
(40, '2021_09_01_020206_create_departments_table', 4);

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
(189, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:02:10', '2021-08-31 01:02:10'),
(190, '19278', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 01:52:51', '2021-08-31 01:52:51'),
(191, '19278', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 01:53:47', '2021-08-31 01:53:47'),
(192, 'NILL', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:56:54', '2021-08-31 01:56:54'),
(194, 'NILL', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 01:58:00', '2021-08-31 01:58:00'),
(195, '19275', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 01:58:50', '2021-08-31 01:58:50'),
(196, '19291', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 01:59:36', '2021-08-31 01:59:36'),
(197, '19294', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 02:00:23', '2021-08-31 02:00:23'),
(198, '19240', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 02:00:52', '2021-08-31 02:00:52'),
(199, '19286', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 02:01:55', '2021-08-31 02:01:55'),
(200, '19287', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 02:03:39', '2021-08-31 02:03:39'),
(201, '19071', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, 'Admin', '2021-08-31 02:07:26', '2021-08-31 02:07:26'),
(202, '19285', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, 'purchase', '2021-08-31 19:02:15', '2021-08-31 19:02:15'),
(203, '19289', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, 'Admin', '2021-08-31 19:03:38', '2021-08-31 19:03:38'),
(204, '19220', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, 'Admin', '2021-08-31 19:04:27', '2021-08-31 19:04:27'),
(205, 'D19055', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:06:14', '2021-08-31 19:06:14'),
(206, 'D19054', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:08:00', '2021-08-31 19:08:00'),
(207, 'D19270', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:08:51', '2021-08-31 19:08:51'),
(208, 'D19264', 'Desktop', NULL, 'Core i5', NULL, 'Space', NULL, NULL, NULL, '2021-08-31 19:09:17', '2021-08-31 19:09:17'),
(209, 'D19053', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:09:29', '2021-08-31 19:09:29'),
(210, 'D19265', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:09:52', '2021-08-31 19:09:52'),
(211, 'D190', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:09:56', '2021-08-31 19:09:56'),
(212, 'D19262', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:10:28', '2021-08-31 19:10:28'),
(213, 'D19080', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:10:51', '2021-08-31 19:10:51'),
(214, 'D19097', 'Desktop', NULL, 'Core i3', NULL, 'Ultra', NULL, NULL, NULL, '2021-08-31 19:11:20', '2021-08-31 19:11:20'),
(215, 'D19078', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:11:30', '2021-08-31 19:11:30'),
(216, 'D19096', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:11:51', '2021-08-31 19:11:51'),
(217, 'D19079', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:12:10', '2021-08-31 19:12:10'),
(218, 'D19272', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:12:20', '2021-08-31 19:12:20'),
(219, 'D19081', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:12:44', '2021-08-31 19:12:44'),
(220, 'D19095', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:13:04', '2021-08-31 19:13:04'),
(221, 'D19082', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:13:18', '2021-08-31 19:13:18'),
(222, 'D19091', 'Desktop', NULL, 'Core i5', NULL, 'Ultra', NULL, NULL, NULL, '2021-08-31 19:13:39', '2021-08-31 19:13:39'),
(223, 'D19083', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:13:56', '2021-08-31 19:13:56'),
(224, 'D19092', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:14:05', '2021-08-31 19:14:05'),
(225, 'D19084', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:14:34', '2021-08-31 19:14:34'),
(226, 'D19093', NULL, NULL, 'Core i7', NULL, 'LG Chasis', NULL, NULL, NULL, '2021-08-31 19:14:36', '2021-08-31 19:14:36'),
(227, 'D19238', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:15:00', '2021-08-31 19:15:00'),
(228, 'D19090', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:15:10', '2021-08-31 19:15:10'),
(229, 'D19248', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:15:28', '2021-08-31 19:15:28'),
(230, 'D19085', 'Desktop', NULL, 'Core i5', NULL, 'Delux', NULL, NULL, NULL, '2021-08-31 19:15:54', '2021-08-31 19:15:54'),
(231, 'D19179', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:15:55', '2021-08-31 19:15:55'),
(232, 'D19190', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:16:26', '2021-08-31 19:16:26'),
(233, 'D19182', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:16:46', '2021-08-31 19:16:46'),
(234, 'D19089', 'Desktop', NULL, '2 Duo', NULL, 'General', NULL, NULL, NULL, '2021-08-31 19:16:46', '2021-08-31 19:16:46'),
(235, 'D19183', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:17:10', '2021-08-31 19:17:10'),
(236, 'D19086', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:17:16', '2021-08-31 19:17:16'),
(237, 'D19184', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:17:32', '2021-08-31 19:17:32'),
(238, 'D19185', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:17:59', '2021-08-31 19:17:59'),
(239, 'D19087', 'Desktop', NULL, 'Core i5', NULL, 'Space', NULL, NULL, NULL, '2021-08-31 19:17:59', '2021-08-31 19:17:59'),
(240, 'D19186', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:18:14', '2021-08-31 19:18:14'),
(241, 'D19187', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:18:40', '2021-08-31 19:18:40'),
(242, 'D19189', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:19:05', '2021-08-31 19:19:05'),
(243, 'D19171', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:19:26', '2021-08-31 19:19:26'),
(244, 'D19276', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:19:46', '2021-08-31 19:19:46'),
(245, 'D19088', 'Desktop', NULL, 'Intel Pentium', NULL, 'Transnet', NULL, NULL, NULL, '2021-08-31 19:20:04', '2021-08-31 19:20:04'),
(246, 'D19188', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:20:18', '2021-08-31 19:20:18'),
(247, 'D19260', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:20:30', '2021-08-31 19:20:30'),
(248, 'D19266', 'Desktop', NULL, 'Core i7', NULL, 'Segotep', NULL, NULL, NULL, '2021-08-31 19:20:54', '2021-08-31 19:20:54'),
(249, 'D19261', 'Desktop', 'Clone Desktop', 'Core i7', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:21:15', '2021-08-31 19:21:15'),
(250, 'D19267', 'Desktop', NULL, 'Core i7', NULL, 'Work shop', NULL, NULL, NULL, '2021-08-31 19:21:28', '2021-08-31 19:21:28'),
(251, 'D19168', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:21:51', '2021-08-31 19:21:51'),
(252, 'D19180', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:22:00', '2021-08-31 19:22:00'),
(253, 'D19169', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:22:13', '2021-08-31 19:22:13'),
(254, 'NILL', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:22:36', '2021-08-31 19:22:36'),
(255, 'D19268', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:22:38', '2021-08-31 19:22:38'),
(256, 'D19299', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:23:02', '2021-08-31 19:23:02'),
(257, 'D19296', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:23:24', '2021-08-31 19:23:24'),
(258, 'D19295', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:23:35', '2021-08-31 19:23:35'),
(259, 'D19274', 'Desktop', NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:23:56', '2021-08-31 19:23:56'),
(260, 'D19113', NULL, NULL, 'Core i5', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:24:11', '2021-08-31 19:24:11'),
(261, 'D19293', 'Desktop', NULL, 'Core i7', NULL, 'HP', NULL, NULL, NULL, '2021-08-31 19:24:18', '2021-08-31 19:24:18'),
(262, 'W19284', 'Desktop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:25:06', '2021-08-31 19:25:06'),
(263, 'D19181', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:25:40', '2021-08-31 19:25:40'),
(264, 'D19298', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, NULL, NULL, NULL, '2021-08-31 19:26:33', '2021-08-31 19:26:33'),
(265, 'D19225', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630464484.jpg', NULL, NULL, '2021-08-31 19:27:22', '2021-08-31 20:48:04'),
(268, 'D19067', 'Desktop', NULL, 'Core i3', NULL, 'HP', NULL, NULL, 'Dir PLG & maint Office', '2021-08-31 20:49:04', '2021-08-31 20:49:04');

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
('Sgltji4lg8DFhU60pmBuwLgmQAm6Biw8l8fRMEKH', 3, '192.168.101.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidFFJaldEZFdWTlNkRklDcDhwWUtBSzVQaWdQcXFBNFR2UFczck53dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xOTIuMTY4LjEwMS41MC9wcm9kdWN0cy9jcmVhdGUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkd2ZJYnIwZzNrVjJvM0J2ZlJVSVVPZU1iVEp1MTl5dEU0Ylc1ZWdIaTI0YVhkU0R2TlM1U2UiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHdmSWJyMGcza1YybzNCdmZSVUlVT2VNYlRKdTE5eXRFNGJXNWVnSGkyNGFYZFNEdk5TNVNlIjt9', 1630464531),
('t99oEY5bJjIdgyOBoz3DQFvm4vKmvq8xJNyDRJ6b', 5, '192.168.101.56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZG83ZXNyVTN3ZVhGbUY5UU9adWRwSHVVZ1BpUk5iSFVLTXpRVUxTQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xOTIuMTY4LjEwMS41MC9wcm9kdWN0cy9jcmVhdGUiO31zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDZldGtrOHBYcmUudkNNRnZHTlRkYWUuQ1NJbEtIbGxkQ1BoRkdjejVwN1NNcWlxZ1JtUWpXIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ2ZXRrazhwWHJlLnZDTUZ2R05UZGFlLkNTSWxLSGxsZENQaEZHY3o1cDdTTXFpcWdSbVFqVyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTt9', 1630464544),
('zaHMEBsTUnu7EJxxTvQcxFucw3J0EDdmKpjnaVeA', 2, '192.168.101.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOUJaRWxaam43SEVMNDJ0ZDdVMUFxWnVvTnFIVUYxRjJUREd1cWNQNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjEwMS41MC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRsMnY4OHVFWmgxY3BvM0Z0ay4vM0EuSUJpQzJFYWVCNHpidzVUNElEdFI4T0dZVGoudnhaLiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkbDJ2ODh1RVpoMWNwbzNGdGsuLzNBLklCaUMyRWFlQjR6Ync1VDRJRHRSOE9HWVRqLnZ4Wi4iO30=', 1630464533);

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
(17, '2 Duo', '2021-08-30 23:59:28', '2021-08-30 23:59:28'),
(18, 'Intel Pentium', '2021-08-31 19:19:32', '2021-08-31 19:19:32');

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
(3, 'Touhid', 'touhidspi@gmail.com', NULL, '$2y$10$wfIbr0g3kV2o3BvfRUIUOeMbTJu19ytE4bW5egHi24aXdSDvNS5Se', NULL, NULL, NULL, NULL, NULL, '2021-08-30 23:06:22', '2021-08-30 23:06:22'),
(5, 'jubyasayed', 'jubyasayed@gmail.com', NULL, '$2y$10$6etkk8pXre.vCMFvGNTdae.CSIlKHlldCPhFGcz5p7SMqiqgRmQjW', NULL, NULL, NULL, NULL, NULL, '2021-08-31 01:41:29', '2021-08-31 01:41:29');

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
-- Indexes for table `departments`
--
ALTER TABLE `departments`
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
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
