-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2021 at 11:11 AM
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
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accessoryName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessoryFirstProperty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessorySecondProperty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoryThirdProperty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`id`, `accessoryName`, `accessoryFirstProperty`, `accessorySecondProperty`, `accessoryThirdProperty`, `created_at`, `updated_at`) VALUES
(16, 'Router(TP Link)', NULL, NULL, NULL, '2021-09-19 01:40:15', '2021-09-19 01:40:15'),
(17, 'Router(D-Link)', NULL, NULL, NULL, '2021-09-19 01:40:26', '2021-09-19 01:40:26'),
(18, 'Pendrive(Transent)', '64GB', NULL, NULL, '2021-09-19 01:44:35', '2021-09-19 22:35:56');

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
(40, 'ASUS', '2021-08-31 00:24:18', '2021-08-31 00:24:18'),
(41, 'CSM', '2021-08-31 21:05:28', '2021-08-31 21:05:28'),
(47, 'Microtic', '2021-09-15 19:36:30', '2021-09-15 19:36:30'),
(48, 'Cisco', '2021-09-15 19:36:35', '2021-09-15 19:36:35'),
(49, 'Juniper', '2021-09-15 19:36:41', '2021-09-15 19:36:41'),
(51, 'Tenda', '2021-09-15 20:59:26', '2021-09-15 20:59:26'),
(52, 'TP-Link', '2021-09-15 21:08:06', '2021-09-15 21:08:06'),
(53, 'D-Link', '2021-09-15 21:08:11', '2021-09-15 21:08:11'),
(54, 'Vivanco', '2021-09-17 20:30:44', '2021-09-17 20:30:44'),
(55, 'Brother', '2021-09-17 20:43:57', '2021-09-17 20:43:57'),
(56, 'Intel', '2021-09-18 20:06:43', '2021-09-18 20:06:43'),
(57, 'Towinmos', '2021-09-20 20:24:34', '2021-09-20 20:24:34'),
(58, 'ADATA', '2021-09-20 20:26:51', '2021-09-20 20:26:51'),
(59, 'Transtic', '2021-09-20 20:27:05', '2021-09-20 20:27:05'),
(60, 'Targus', '2021-09-20 23:53:21', '2021-09-20 23:53:21'),
(61, 'Baseus', '2021-09-20 23:53:28', '2021-09-20 23:53:28'),
(62, 'Logitech', '2021-09-21 00:25:18', '2021-09-21 00:25:18'),
(63, 'Micropack', '2021-09-21 19:39:42', '2021-09-21 19:39:42'),
(64, 'HDMI', '2021-09-21 23:01:27', '2021-09-21 23:01:27'),
(65, 'A4 Tech', '2021-09-22 19:36:53', '2021-09-22 19:36:53');

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
(10, 'Printer', '2021-08-30 23:07:16', '2021-08-30 23:07:16'),
(11, 'Workstation PC', '2021-08-31 21:22:14', '2021-08-31 21:22:14'),
(17, 'Router', '2021-09-15 19:34:53', '2021-09-15 19:34:53'),
(18, 'test Category', '2021-09-15 19:49:13', '2021-09-15 19:49:13'),
(19, 'Portable Hard Disk', '2021-09-15 22:37:59', '2021-09-15 22:37:59'),
(20, 'Internal Hard Disk', '2021-09-15 23:07:45', '2021-09-15 23:07:45'),
(21, 'Firewall', '2021-09-17 19:39:25', '2021-09-17 19:39:25'),
(22, 'Switch', '2021-09-17 19:42:56', '2021-09-17 19:42:56'),
(23, 'Server', '2021-09-17 20:20:11', '2021-09-17 20:20:11'),
(24, 'Rack', '2021-09-17 20:28:48', '2021-09-17 20:28:48'),
(26, 'Monitor', '2021-09-19 22:34:20', '2021-09-19 22:34:20'),
(27, 'Pendrive', '2021-09-20 20:21:39', '2021-09-20 20:21:39'),
(28, 'Pointer', '2021-09-20 23:49:10', '2021-09-20 23:49:10'),
(29, 'Webcamera', '2021-09-21 00:22:54', '2021-09-21 00:25:00'),
(30, 'Mouse', '2021-09-21 19:37:37', '2021-09-21 19:37:37'),
(31, 'SSD', '2021-09-21 21:26:48', '2021-09-21 21:26:48'),
(32, 'HDD Inclosoure', '2021-09-21 21:55:05', '2021-09-21 21:55:05'),
(33, 'Microsoft Office (Licensed)', '2021-09-21 22:06:29', '2021-09-21 22:06:29'),
(34, 'Mother Board', '2021-09-21 22:22:40', '2021-09-21 22:22:40'),
(35, 'Projector', '2021-09-21 23:00:31', '2021-09-21 23:00:31'),
(36, 'Projector-Screen', '2021-09-21 23:09:18', '2021-09-21 23:09:18'),
(37, 'RAM', '2021-09-21 23:18:45', '2021-09-21 23:18:45'),
(40, 'Keyboard', '2021-09-22 19:39:03', '2021-09-22 19:39:03'),
(41, 'Mouse Pad', '2021-09-22 22:39:40', '2021-09-22 22:39:40'),
(42, 'DVD/CD Disk', '2021-09-23 01:35:09', '2021-09-23 01:35:09'),
(43, 'UPS', '2021-09-24 19:18:47', '2021-09-24 19:18:47'),
(44, 'Multi Socket', '2021-09-24 21:27:21', '2021-09-24 21:27:21'),
(45, 'Power Supply', '2021-09-24 22:38:08', '2021-09-24 22:38:08'),
(46, 'CC Camera (High Resolution)', '2021-09-25 01:37:06', '2021-09-25 01:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintDesignation` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintReceiverName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintSolverTechnicianName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintSolutionDate` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaintSolutionDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `productName`, `product_id`, `date`, `time`, `complaintName`, `complaintDesignation`, `complaintDescription`, `complaintReceiverName`, `complaintSolverTechnicianName`, `complaintSolutionDate`, `complaintSolutionDescription`, `ic`, `oic`, `created_at`, `updated_at`) VALUES
(3, 'D19261', 161, '2021-09-08', '23:29', 'Abdur Rahman', 'DD Admin', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Apon', 'Apon', '2021-09-08', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, '2021-09-07 20:29:59', '2021-09-07 20:29:59'),
(4, 'D19150', 155, '2021-09-08', '09:31', 'Abdur Rahman', 'super', 'Lorem Ipsum has been the industry\'s sta', 'Apon', 'Apon', '2021-09-08', 'Lorem Ipsum has been the industr', NULL, NULL, '2021-09-07 20:31:32', '2021-09-07 21:31:40'),
(10, 'D19150', 155, '2021-09-08', '11:08', 'Abdur Rahman', 'DD Admin', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Apon', 'jahid vai', '2021-09-09', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, '2021-09-07 22:08:18', '2021-09-07 22:08:18'),
(11, 'D19150', 155, '2021-09-09', '11:21', 'Abdur Rahman', 'Admin', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'jahid vai', 'Apon', '2021-09-09', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, '2021-09-07 22:21:31', '2021-09-07 22:21:31'),
(12, 'D19150', 155, '2021-09-08', '01:57', 'Md Ruhul AMin', 'Software Engineer', 'printer Problem', 'Abdur Rahman', 'Ashraf Vai', '2021-09-25', 'Lorem Ipsum has been the industry\'s standard du', NULL, NULL, '2022-09-07 22:58:43', '2021-09-14 00:43:20'),
(13, 'D19151', 156, '2021-09-08', '11:13', 'admin', 'officer', 'pc windows', 'imam', 'a rahman', '2021-09-08', 'nothing', NULL, NULL, '2021-09-07 23:15:18', '2021-09-07 23:15:18'),
(14, 'D19147', 152, '2021-09-09', '00:40', 'Abdur Rahman', 'Computer Hardware Engineer', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'jahid vai', 'jahid vai', '2021-09-09', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, wh Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, wh', NULL, NULL, '2021-09-07 23:40:59', '2021-09-07 23:40:59'),
(15, 'D19149', 154, '2021-09-08', '13:13', 'Md Ruhul Amin', 'Software Engineer', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Mizan', 'jahid vai', '2021-09-08', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', NULL, NULL, '2021-09-08 01:14:21', '2021-09-08 01:14:21'),
(16, 'TEST-ICT-101', 380, '2021-09-08', '13:29', 'Sakib Hasan', 'Admin', 'windows problem ,  pc work slow', 'technician', 'Ashraf_tech', '2021-09-11', 'needed to be updated the windows operation / ok', NULL, NULL, '2021-09-08 01:31:17', '2021-09-08 01:31:17'),
(17, 'TEST-ICT-101', 380, '2021-09-17', '09:15', 'asg', 'Computer Hardware Engineer', 'Lorem Ipsum has been the i', 'as', 'Ashraf Vai', '2021-09-09', '2022 shal er information', NULL, NULL, '2022-09-08 20:16:11', '2021-09-14 00:43:02'),
(18, 'TEST-ICT-101', 380, '2021-09-09', '08:21', 'Md Ruhul Amin', 'Software Engineer', 'Lorem Ipsum has been the industry\'s standard', 'jahid vai', 'Ashraf_tech', '2021-09-10', 'Lorem Ipsum has been the industry\'s\n2022-08-09 02:21:44', NULL, NULL, '2022-08-08 20:21:44', '2021-09-08 20:39:50'),
(19, 'TEST-ICT-101', 380, '2021-09-10', '10:34', 'Abdur Rahman', 'Computer Hardware Engineer', 'Lorem Ipsum has been', 'Apon', 'Ashraf_tech', '2021-09-09', ' test', NULL, NULL, '2022-09-08 20:34:48', '2021-09-08 20:39:16'),
(20, 'TEST-ICT-101', 380, '2021-09-09', '09:45', 'Abdur Rahman', 'Admin', 'Lorem Ipsum has been the industry\'s standard dummy', 'jahid vai', 'Ashraf_tech', '2021-09-09', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, wh', NULL, NULL, '2022-09-08 20:46:06', '2021-09-08 20:46:06'),
(21, 'TEST-ICT-101', 380, '2021-09-14', '00:22', 'Imam', 'Engineer', 'network problem', 'Abdur Rahman', 'Ashraf_tech', '2021-09-16', 'network problem solved', NULL, NULL, '2020-01-14 01:18:09', '2021-09-14 01:18:09'),
(22, 'TEST-ICT-101', 380, '2021-09-15', '10:12', 'Apon', 'Junior System Support Engineer', 'windows problem', 'mijan', 'Ashraf_tech', '2021-09-21', 'windows', NULL, NULL, '2021-09-14 19:34:19', '2021-09-14 19:35:07'),
(23, 'D19297', 335, '2021-08-29', '10:20', 'Md Ruhul Amin', 'Software Engineer', 'Lorem Ipsum has been the industry', 'Mizan', 'Ashraf_tech', '2021-09-25', 'Lorem Ipsum has been', NULL, NULL, '2021-09-15 20:08:53', '2021-09-15 20:08:53'),
(24, 'D19297', 335, '2021-09-18', '10:20', 'Abdur Rahman', 'Computer Hardware Engineer', 'Lorem Ipsum has been', 'jahid vai', 'Ashraf_tech', '2021-09-29', 'Lorem Ipsum has been the industr', NULL, NULL, '2021-09-15 20:10:11', '2021-09-15 20:10:11');

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
(35, 'Staff Record', '2021-08-31 20:42:37', '2021-09-17 21:41:54'),
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
(57, 'Pension', '2021-08-31 20:45:31', '2021-09-17 21:45:57'),
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
(73, 'Purchase', '2021-08-31 20:47:25', '2021-08-31 20:47:25'),
(74, 'Man Plg Office', '2021-08-31 20:53:26', '2021-08-31 20:53:26'),
(75, 'CM', '2021-08-31 21:01:58', '2021-08-31 21:01:58'),
(76, 'Service', '2021-08-31 21:12:59', '2021-08-31 21:12:59'),
(77, 'R & D', '2021-08-31 21:22:53', '2021-08-31 21:22:53'),
(78, 'CC R & D', '2021-08-31 21:27:55', '2021-08-31 21:27:55'),
(79, 'Man service', '2021-08-31 21:41:28', '2021-08-31 21:41:28'),
(80, 'MM', '2021-08-31 21:42:27', '2021-08-31 21:42:27'),
(81, 'HAG', '2021-08-31 22:13:46', '2021-08-31 22:13:46'),
(82, 'ICT', '2021-08-31 22:36:30', '2021-08-31 22:36:30'),
(83, 'Officers Mess', '2021-08-31 22:57:36', '2021-08-31 22:57:36'),
(84, 'Maint Store', '2021-08-31 22:58:49', '2021-08-31 22:58:49'),
(85, 'Main store', '2021-08-31 22:59:47', '2021-08-31 22:59:47'),
(86, 'Receive Control', '2021-08-31 23:01:02', '2021-08-31 23:01:02'),
(87, 'Comdt', '2021-08-31 23:43:52', '2021-08-31 23:43:52'),
(88, 'GE Army', '2021-08-31 23:51:58', '2021-08-31 23:51:58'),
(89, 'DD SA', '2021-08-31 23:54:03', '2021-08-31 23:54:03'),
(90, 'Comdt C Room', '2021-08-31 23:57:18', '2021-08-31 23:57:18'),
(91, 'Mosque', '2021-09-01 00:10:15', '2021-09-01 00:10:15'),
(92, 'OPS Room', '2021-09-01 00:11:59', '2021-09-01 00:11:59'),
(93, 'Golf Club', '2021-09-01 00:16:38', '2021-09-01 00:16:38'),
(94, 'Conference Room', '2021-09-01 00:16:58', '2021-09-01 00:16:58'),
(95, 'DD PLG', '2021-09-01 00:17:21', '2021-09-01 00:17:21'),
(96, 'Comdt BOF', '2021-09-01 00:17:34', '2021-09-01 00:17:34'),
(97, 'Dy condd', '2021-09-01 00:24:44', '2021-09-01 00:24:44'),
(98, 'GSO-2', '2021-09-01 00:27:52', '2021-09-01 00:27:52'),
(99, 'Planning', '2021-09-01 23:02:10', '2021-09-01 23:02:10'),
(105, 'ICT-Office', '2021-09-15 21:11:00', '2021-09-15 21:11:00'),
(106, 'Bangabondhu Cornar', '2021-09-15 21:15:06', '2021-09-15 21:15:06'),
(107, 'Comdt Conference Room', '2021-09-15 21:21:55', '2021-09-15 21:21:55'),
(108, 'Deputy Comdt Bhabon', '2021-09-15 21:27:31', '2021-09-15 21:27:31'),
(109, 'Admin', '2021-09-15 22:14:45', '2021-09-15 22:14:45'),
(110, 'Deputy Comdt Office', '2021-09-15 22:58:15', '2021-09-15 22:58:15'),
(111, 'Small Arms (SA)', '2021-09-15 23:13:03', '2021-09-15 23:13:03'),
(112, 'Central Record', '2021-09-19 00:15:32', '2021-09-19 00:15:32'),
(113, 'IA & E', '2021-09-20 00:02:05', '2021-09-20 00:02:05'),
(114, 'DD Maintenance', '2021-09-20 20:51:25', '2021-09-20 20:51:25'),
(115, 'TPT', '2021-09-21 23:46:33', '2021-09-21 23:46:33'),
(116, 'PLG', '2021-09-21 23:56:50', '2021-09-21 23:56:50'),
(117, 'QCL', '2021-09-22 20:02:32', '2021-09-22 20:02:32'),
(118, 'Residential', '2021-09-22 21:02:36', '2021-09-22 21:02:36'),
(119, 'Telephone Exchange', '2021-09-22 21:35:32', '2021-09-22 21:35:32'),
(120, 'CC-01', '2021-09-23 00:25:38', '2021-09-23 00:25:38'),
(121, 'RM-2', '2021-09-24 20:07:15', '2021-09-24 20:07:15'),
(122, 'RM-1', '2021-09-24 20:48:18', '2021-09-24 20:48:18');

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
(14, 'Micro Dry (MD)', '2021-08-30 23:39:56', '2021-08-30 23:39:56'),
(20, 'CR1016-12S-1S+', '2021-09-15 19:38:19', '2021-09-15 19:38:19'),
(21, 'Cisco ASA 5520 Serise', '2021-09-17 19:40:58', '2021-09-17 19:40:58'),
(22, 'SG350-28SFP', '2021-09-17 19:54:45', '2021-09-17 19:54:45'),
(23, 'SG350-24SP', '2021-09-17 19:56:06', '2021-09-17 19:56:06'),
(24, 'SF 350-24p', '2021-09-17 19:56:18', '2021-09-17 19:56:18'),
(25, '2960XR series', '2021-09-17 19:56:49', '2021-09-17 19:56:49'),
(26, 'SFP +', '2021-09-17 20:08:32', '2021-09-17 20:08:32'),
(27, 'UCS C240 M5', '2021-09-17 20:20:51', '2021-09-17 20:22:07'),
(28, 'VE:6042.56.100', '2021-09-17 20:29:54', '2021-09-17 20:29:54'),
(29, 'VA 561501100', '2021-09-17 20:30:07', '2021-09-17 20:30:07'),
(30, 'VSA 6609.01.100', '2021-09-17 20:30:20', '2021-09-17 20:30:20');

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
(40, '2021_09_01_020206_create_departments_table', 4),
(41, '2021_09_04_021435_add_role_to_users_table', 5),
(45, '2021_09_07_030255_create_complaints_table', 6),
(46, '2021_09_12_023921_add_designation_to_users_table', 7),
(48, '2021_09_12_072704_create_productissueds_table', 8),
(49, '2021_09_13_054508_add_bofid_to_productissueds', 9),
(50, '2021_09_12_0121112_create_productissueds_table', 10),
(52, '2021_09_14_020518_product_productissudes', 11),
(53, '2021_09_18_061113_create_stocks_table', 12),
(54, '2021_09_19_011421_create_accessories_table', 13),
(55, '2021_09_18_191113_create_stocks_table', 14),
(56, '2021_09_18_191223_create_stocks_table', 15),
(57, '2021_09_18_201223_create_stocks_table', 16),
(58, '2021_09_18_271223_create_stocks_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$72E.5NsI4SrQm2Ml6pKH.e0XcM4clv8zWU6nhp3kE937AaP7q9L.O', '2021-09-17 22:14:41');

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
-- Table structure for table `productissueds`
--

CREATE TABLE `productissueds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bofid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productissueds`
--

INSERT INTO `productissueds` (`id`, `bofid`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(40, 'Test-id', 'Test User', 'test designation', '2021-09-13 19:37:26', '2021-09-13 22:45:07'),
(41, 'BA-3534', 'KAZI MOHAMMAD KAISER HOSSAIN', 'Brig General', '2021-09-13 19:37:26', '2021-09-13 19:37:26'),
(42, 'BA-4146', 'MD MAHBOOB KARIM', 'Brig General', '2021-09-13 19:37:26', '2021-09-13 19:37:26'),
(43, 'BA-4903', 'MD MAHBUBUR RASEL', 'Director', '2021-09-13 19:37:26', '2021-09-13 19:37:26'),
(44, 'BA-5031', 'MD MIZANUZZAMAN', 'Deputy Director', '2021-09-13 19:37:26', '2021-09-13 19:37:26'),
(45, 'BA-4282', 'MD SHAHINOOR ALAM', 'Deputy Director', '2021-09-13 19:37:26', '2021-09-13 19:37:26'),
(46, 'outsorcing-35', 'Apon', 'Junior System Support Engineer', '2021-09-14 19:06:21', '2021-09-14 19:06:21'),
(47, 'Tesat id', 'test name', 'test dd admin', '2021-09-15 20:01:30', '2021-09-15 20:01:30');

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
(9, 'D19062', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'HP', '1630894920.jpg', NULL, 'Dir Admin & Mat', '2021-08-30 23:47:20', '2021-09-05 20:22:00'),
(10, 'D19125', 'Desktop', 'Brand Desktop', NULL, NULL, 'Apple', '1630894906.jpg', NULL, 'Bof Hq', '2021-08-30 23:50:46', '2021-09-05 20:21:46'),
(11, 'D19126', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1630894888.jpg', NULL, 'Bof Hq', '2021-08-30 23:53:27', '2021-09-05 20:21:28'),
(12, 'D19121', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Canon', '1630894876.jpg', NULL, 'Bof Hq', '2021-08-30 23:54:18', '2021-09-05 20:21:16'),
(13, 'D19103', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Canon', '1630894863.jpg', NULL, 'Bof Hq', '2021-08-30 23:55:24', '2021-09-05 20:21:03'),
(14, 'D19123', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630894848.jpg', NULL, 'Bof Hq', '2021-08-30 23:56:44', '2021-09-05 20:20:48'),
(15, 'D19124', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1630894833.jpg', NULL, 'Bof Hq', '2021-08-30 23:57:21', '2021-09-05 20:20:33'),
(16, 'D19269', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630894818.jpg', NULL, 'Bof Hq', '2021-08-30 23:58:01', '2021-09-05 20:20:18'),
(17, 'ICT-L-19001', 'Laptop', NULL, 'Core i3', NULL, 'Fuzitsu', '1630894802.jpg', NULL, 'R & D', '2021-08-30 23:58:53', '2021-09-05 20:20:02'),
(18, 'D19065', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1630895092.jpg', NULL, 'Bof Hq', '2021-08-31 00:00:11', '2021-09-05 20:24:52'),
(19, 'D19269', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895078.jpg', NULL, 'Bof Hq', '2021-08-31 00:01:04', '2021-09-05 20:24:38'),
(20, 'L-19001', 'Laptop', NULL, 'Core i7', NULL, 'HP', '1630895062.jpg', NULL, 'Comdt BOF', '2021-08-31 00:01:46', '2021-09-05 20:24:22'),
(21, 'D19004', 'Desktop', NULL, NULL, NULL, 'HP', '1630895039.jpg', NULL, 'PKS', '2021-08-31 00:01:54', '2021-09-05 20:23:59'),
(22, 'D19007', 'Desktop', NULL, NULL, NULL, 'HP', '1630895023.jpg', NULL, 'PKS', '2021-08-31 00:02:24', '2021-09-05 20:23:43'),
(23, 'L-19003', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630894989.jpg', NULL, 'Comdt C Room', '2021-08-31 00:03:23', '2021-09-05 20:23:09'),
(24, 'D19009', 'Desktop', NULL, NULL, NULL, NULL, '1630895009.jpg', NULL, 'PKS', '2021-08-31 00:03:23', '2021-09-05 20:23:29'),
(25, 'D19062', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630894969.jpg', NULL, 'DD Admin & Mat', '2021-08-31 00:04:27', '2021-09-05 20:22:49'),
(26, 'D19060', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630894956.jpg', NULL, 'DD Admin & Mat', '2021-08-31 00:05:05', '2021-09-05 20:22:36'),
(27, 'D19059', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630894940.jpg', NULL, 'DD Admin & Mat', '2021-08-31 00:05:48', '2021-09-05 20:22:20'),
(28, 'D19058', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630895226.jpg', NULL, 'DD Admin', '2021-08-31 00:06:37', '2021-09-05 20:27:06'),
(29, 'L-19004', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630895209.jpg', NULL, 'GSO-2', '2021-08-31 00:06:52', '2021-09-05 20:26:49'),
(30, 'D19052', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630895192.jpg', NULL, 'DD Admin', '2021-08-31 00:07:19', '2021-09-05 20:26:32'),
(31, 'L-19005', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630895174.jpg', NULL, 'DIR production Office', '2021-08-31 00:07:42', '2021-09-05 20:26:14'),
(32, 'D19066', 'Desktop', NULL, 'Core i5', NULL, NULL, '1630895157.jpg', NULL, 'MAP', '2021-08-31 00:08:33', '2021-09-05 20:25:57'),
(33, 'L-21003', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630895141.jpg', 'Entry Date: 18/19/2021, 01 pc. Dir Admin & Mat Sir.', 'Dir Admin & Mat', '2021-08-31 00:08:59', '2021-09-19 00:58:51'),
(34, 'L-19007', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630810160.jpg', NULL, 'Comdt', '2021-08-31 00:10:00', '2021-09-19 00:52:17'),
(35, 'D19063', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895125.jpg', NULL, 'R & T', '2021-08-31 00:11:10', '2021-09-05 20:25:25'),
(36, 'L-19009', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630810130.jpg', NULL, 'ICT', '2021-08-31 00:11:35', '2021-09-04 20:48:50'),
(37, 'D19056', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630895112.jpg', NULL, 'R & T', '2021-08-31 00:12:07', '2021-09-05 20:25:12'),
(38, 'D19057', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630895315.jpg', NULL, 'R & T', '2021-08-31 00:12:56', '2021-09-05 20:28:35'),
(39, 'D19118', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895298.jpg', NULL, 'CR', '2021-08-31 00:13:45', '2021-09-05 20:28:18'),
(40, 'D19028', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895284.jpg', NULL, 'Workman Record', '2021-08-31 00:14:43', '2021-09-05 20:28:04'),
(41, 'L-19010', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630810101.jpg', NULL, 'DD SA', '2021-08-31 00:15:08', '2021-09-04 20:48:21'),
(42, 'D19027', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630895272.jpg', NULL, 'Workman Record', '2021-08-31 00:15:26', '2021-09-05 20:27:52'),
(43, 'L-19011', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630810075.jpg', NULL, 'DD PLG', '2021-08-31 00:16:04', '2021-09-04 20:47:55'),
(44, 'L-19012', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630810045.jpg', NULL, 'Dir PLG & maint Office', '2021-08-31 00:17:07', '2021-09-04 20:47:25'),
(45, 'D19026', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895255.jpg', NULL, 'Workman Record', '2021-08-31 00:17:19', '2021-09-05 20:27:35'),
(46, 'L-19013', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630810014.jpg', NULL, 'Conference Room', '2021-08-31 00:17:48', '2021-09-04 20:46:54'),
(47, 'D19029', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630895241.jpg', NULL, 'Workman Record', '2021-08-31 00:18:01', '2021-09-05 20:27:21'),
(48, 'D19030', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630895415.jpg', NULL, 'Workman Record', '2021-08-31 00:18:24', '2021-09-05 20:30:15'),
(49, 'L-19014', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630809983.jpg', NULL, 'Conference Room', '2021-08-31 00:18:33', '2021-09-04 20:46:23'),
(50, 'D19031', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895396.jpg', NULL, 'Stuff Record', '2021-08-31 00:18:50', '2021-09-05 20:29:56'),
(51, 'D19032', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1630895381.jpg', NULL, 'Stuff Record', '2021-08-31 00:19:13', '2021-09-05 20:29:41'),
(52, 'L-19015', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630809950.jpg', NULL, 'Golf Club', '2021-08-31 00:19:19', '2021-09-04 20:45:50'),
(53, 'D19033', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895368.jpg', NULL, 'Stuff Record', '2021-08-31 00:19:26', '2021-09-05 20:29:28'),
(54, 'D19034', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1630895355.jpg', NULL, 'Stuff Record', '2021-08-31 00:19:50', '2021-09-05 20:29:15'),
(55, 'L-19016', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630809924.jpg', NULL, 'CC R & D', '2021-08-31 00:19:55', '2021-09-04 20:45:24'),
(56, 'D19035', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895337.jpg', NULL, 'Stuff Record', '2021-08-31 00:20:07', '2021-09-05 20:28:57'),
(57, 'L-19017', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630809892.jpg', NULL, 'DD HAG', '2021-08-31 00:20:25', '2021-09-04 20:44:52'),
(58, 'D19036', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630895627.jpg', NULL, 'MAP', '2021-08-31 00:20:57', '2021-09-05 20:33:47'),
(59, 'L-19018', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630808444.jpg', NULL, 'OPS Room', '2021-08-31 00:20:57', '2021-09-04 20:20:44'),
(60, 'D19041', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895507.jpg', NULL, 'Budget & Cash', '2021-08-31 00:21:18', '2021-09-05 20:31:47'),
(61, 'L-19018', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630808375.jpg', NULL, 'OPS Room', '2021-08-31 00:21:27', '2021-09-04 20:19:35'),
(62, 'D19037', 'Desktop', NULL, NULL, NULL, NULL, '1630895491.jpg', NULL, 'Budget', '2021-08-31 00:21:38', '2021-09-05 20:31:31'),
(63, 'D19038', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630895473.jpg', NULL, 'Budget', '2021-08-31 00:21:55', '2021-09-05 20:31:13'),
(64, 'L-19019', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630808351.jpg', NULL, 'Mosque', '2021-08-31 00:22:12', '2021-09-04 20:19:11'),
(65, 'D19029', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630895459.jpg', NULL, 'Cash', '2021-08-31 00:22:13', '2021-09-05 20:30:59'),
(66, 'D19039', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630895443.jpg', NULL, 'Finance', '2021-08-31 00:22:34', '2021-09-05 20:30:43'),
(67, 'L-19020', 'Laptop', NULL, 'Core i3', NULL, 'HP', '1630808324.jpg', NULL, 'Purchase', '2021-08-31 00:22:49', '2021-09-04 20:18:44'),
(68, 'D19040', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630895778.jpg', NULL, 'Finance', '2021-08-31 00:22:51', '2021-09-05 20:36:18'),
(69, 'D19045', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630895755.jpg', NULL, 'Finance', '2021-08-31 00:23:07', '2021-09-05 20:35:55'),
(70, 'D19040', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630895738.jpg', NULL, 'Finance', '2021-08-31 00:23:31', '2021-09-05 20:35:38'),
(71, 'D19045', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630895721.jpg', NULL, 'Finance', '2021-08-31 00:24:07', '2021-09-05 20:35:21'),
(72, 'D19046', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895705.jpg', NULL, 'Finance', '2021-08-31 00:24:21', '2021-09-05 20:35:05'),
(73, 'D19042', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895688.jpg', NULL, 'Billing', '2021-08-31 00:24:34', '2021-09-05 20:34:48'),
(74, 'D19043', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630895672.jpg', NULL, 'Billing', '2021-08-31 00:24:54', '2021-09-05 20:34:32'),
(75, 'L-19021', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808299.jpg', NULL, 'DIR production Office', '2021-08-31 00:24:57', '2021-09-04 20:18:19'),
(76, 'D19044', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630895658.jpg', NULL, 'Billing', '2021-08-31 00:25:07', '2021-09-05 20:34:18'),
(77, 'D19047', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630895644.jpg', NULL, 'Person', '2021-08-31 00:25:24', '2021-09-05 20:34:04'),
(78, 'L-19022', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808268.jpg', NULL, 'Dir PLG & maint Office', '2021-08-31 00:25:31', '2021-09-04 20:17:48'),
(79, 'D19048', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895914.jpg', NULL, 'Person', '2021-08-31 00:25:47', '2021-09-05 20:38:34'),
(80, 'D19049', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630895885.jpg', NULL, 'Officer Record', '2021-08-31 00:26:01', '2021-09-05 20:38:05'),
(81, 'L-19023', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808243.jpg', NULL, 'DD HAG', '2021-08-31 00:26:07', '2021-09-04 20:17:23'),
(82, 'D19050', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895868.jpg', NULL, 'Officer Record', '2021-08-31 00:26:17', '2021-09-05 20:37:48'),
(83, 'D19051', 'Desktop', NULL, 'Core i3', NULL, NULL, '1630895842.jpg', NULL, 'Officer Record', '2021-08-31 00:26:38', '2021-09-05 20:37:22'),
(84, 'L-19024', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808219.jpg', NULL, 'DD Admin', '2021-08-31 00:26:58', '2021-09-04 20:16:59'),
(85, 'D19001', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630895826.jpg', NULL, 'Security', '2021-08-31 00:27:05', '2021-09-05 20:37:06'),
(86, 'D19070', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895811.jpg', NULL, 'Security', '2021-08-31 00:27:43', '2021-09-05 20:36:51'),
(87, 'D19071', 'Desktop', NULL, NULL, NULL, NULL, '1630895796.jpg', NULL, 'Security', '2021-08-31 00:27:52', '2021-09-05 20:36:36'),
(88, 'L-19025', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808194.jpg', NULL, 'DD Admin & Mat', '2021-08-31 00:27:59', '2021-09-04 20:16:34'),
(89, 'D19072', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630895984.jpg', NULL, 'Security', '2021-08-31 00:28:08', '2021-09-05 20:39:44'),
(90, 'L-19026', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808171.jpg', NULL, 'Comdt C Room', '2021-08-31 00:28:21', '2021-09-04 20:16:11'),
(91, 'D19073', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1630895965.jpg', NULL, 'Security', '2021-08-31 00:28:25', '2021-09-05 20:39:25'),
(92, 'D19074', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630895937.jpg', NULL, 'Security', '2021-08-31 00:28:39', '2021-09-05 20:38:57'),
(93, 'L-19027', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808135.jpg', NULL, 'R & D', '2021-08-31 00:28:48', '2021-09-04 20:15:35'),
(94, 'L-19028', 'Laptop', NULL, 'Core i7', NULL, 'ASUS', '1630808103.jpg', NULL, 'DD SA', '2021-08-31 00:30:05', '2021-09-04 20:15:03'),
(95, 'L-19029', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630808082.jpg', NULL, 'ICT', '2021-08-31 00:30:37', '2021-09-04 20:14:42'),
(96, 'L-19030', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630808059.jpg', NULL, 'GE Army', '2021-08-31 00:31:21', '2021-09-04 20:14:19'),
(97, 'L-21001', 'Laptop', NULL, 'Core i5', NULL, 'ASUS', '1630808036.jpg', NULL, 'Security', '2021-08-31 00:32:15', '2021-09-04 20:13:56'),
(98, 'L-21002', 'Laptop', NULL, 'Core i5', NULL, 'DELL', '1630808014.jpg', NULL, 'DD Admin & Mat', '2021-08-31 00:32:56', '2021-09-04 20:13:34'),
(99, 'L-', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630807988.jpg', NULL, 'ICT', '2021-08-31 00:34:41', '2021-09-04 20:13:08'),
(100, 'D19076', 'Desktop', NULL, NULL, NULL, NULL, '1630899296.jpg', NULL, 'Security', '2021-08-31 00:34:58', '2021-09-05 21:34:56'),
(101, 'L-', 'Laptop', NULL, NULL, NULL, NULL, '1630807963.jpg', NULL, 'DIR production Office', '2021-08-31 00:35:27', '2021-09-04 20:12:43'),
(102, 'L-', 'Laptop', NULL, NULL, NULL, NULL, '1630807941.jpg', NULL, 'Comdt', '2021-08-31 00:35:35', '2021-09-04 20:12:21'),
(103, 'L-tt', 'Laptop', NULL, NULL, NULL, NULL, '1630807916.jpg', NULL, 'ICT', '2021-08-31 00:35:44', '2021-09-16 01:47:59'),
(104, 'D19233', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630899267.jpg', NULL, 'Security', '2021-08-31 00:35:48', '2021-09-05 21:34:27'),
(105, 'D19246', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630899249.jpg', NULL, 'Security', '2021-08-31 00:36:11', '2021-09-05 21:34:09'),
(106, 'D19155', 'Desktop', NULL, NULL, NULL, NULL, '1630899233.jpg', NULL, 'Security', '2021-08-31 00:36:30', '2021-09-05 21:33:53'),
(107, 'D19122', 'Desktop', NULL, NULL, NULL, NULL, '1630899217.jpg', NULL, 'Security', '2021-08-31 00:36:41', '2021-09-05 21:33:37'),
(108, 'D19156', 'Desktop', NULL, NULL, NULL, NULL, '1630900447.jpg', NULL, 'Security', '2021-08-31 00:36:55', '2021-09-05 21:54:07'),
(109, 'D19069', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630900415.jpg', NULL, 'Security', '2021-08-31 00:37:09', '2021-09-05 21:53:35'),
(110, 'D19098', 'Desktop', 'Clone Desktop', NULL, NULL, 'HP', '1630900394.jpg', NULL, 'Medical', '2021-08-31 00:39:02', '2021-09-05 21:53:14'),
(111, 'D19099', 'Desktop', NULL, NULL, NULL, NULL, '1630900369.jpg', NULL, 'Medical', '2021-08-31 00:39:52', '2021-09-05 21:52:49'),
(113, 'D19100', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630900349.jpg', NULL, 'Medical', '2021-08-31 00:42:18', '2021-09-05 21:52:29'),
(114, 'D19101', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1630900332.jpg', NULL, 'Medical', '2021-08-31 00:43:27', '2021-09-05 21:52:12'),
(115, 'D19102', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630900314.jpg', NULL, 'Medical', '2021-08-31 00:43:41', '2021-09-05 21:51:54'),
(116, 'D19104', 'Desktop', NULL, NULL, NULL, NULL, '1630900294.jpg', NULL, 'Medical', '2021-08-31 00:43:51', '2021-09-05 21:51:34'),
(117, 'D19105', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630899332.jpg', NULL, 'Medical', '2021-08-31 00:44:08', '2021-09-05 21:35:32'),
(118, 'D19106', 'Desktop', NULL, NULL, NULL, NULL, '1630899315.jpg', NULL, 'Medical', '2021-08-31 00:44:19', '2021-09-05 21:35:15'),
(119, 'D19107', 'Desktop', 'Clone Desktop', 'Core i7', NULL, NULL, '1630900818.jpg', NULL, 'Medical', '2021-08-31 00:44:31', '2021-09-05 22:00:18'),
(120, 'D19108', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630900796.jpg', NULL, 'Welfare', '2021-08-31 00:44:55', '2021-09-05 21:59:56'),
(121, 'D19241', 'Desktop', NULL, NULL, NULL, NULL, '1630900774.jpg', NULL, 'Medical', '2021-08-31 00:45:06', '2021-09-05 21:59:34'),
(122, 'D19103', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1630900754.jpg', NULL, 'Medical', '2021-08-31 00:45:30', '2021-09-05 21:59:14'),
(123, 'D19114', 'Desktop', NULL, NULL, NULL, NULL, '1630900728.jpg', NULL, 'MAG', '2021-08-31 00:45:42', '2021-09-05 21:58:48'),
(124, 'D19109', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630900700.jpg', NULL, 'Miscellaneous', '2021-08-31 00:46:20', '2021-09-05 21:58:20'),
(125, 'D19110', 'Desktop', NULL, NULL, NULL, NULL, '1630900676.jpg', NULL, 'Miscellaneous', '2021-08-31 00:46:30', '2021-09-05 21:57:56'),
(126, 'D19111', 'Desktop', NULL, NULL, NULL, NULL, '1630900649.jpg', NULL, 'Welfare', '2021-08-31 00:46:39', '2021-09-05 21:57:29'),
(127, 'D19112', 'Desktop', NULL, NULL, NULL, NULL, '1630900631.jpg', NULL, 'Welfare', '2021-08-31 00:46:49', '2021-09-05 21:57:11'),
(128, 'D19113', 'Desktop', NULL, NULL, NULL, NULL, '1630900612.jpg', NULL, 'Welfare', '2021-08-31 00:46:57', '2021-09-05 21:56:52'),
(129, 'D19115', 'Desktop', NULL, NULL, NULL, NULL, '1630902812.jpg', NULL, 'Recident', '2021-08-31 00:47:05', '2021-09-05 22:33:32'),
(130, 'D19115', 'Desktop', NULL, NULL, NULL, NULL, '1630902790.jpg', NULL, 'Recident', '2021-08-31 00:47:24', '2021-09-05 22:33:10'),
(131, 'D19116', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630902766.jpg', NULL, 'Recident', '2021-08-31 00:47:33', '2021-09-05 22:32:46'),
(132, 'D19117', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630902738.jpg', NULL, 'Recident', '2021-08-31 00:48:07', '2021-09-05 22:32:18'),
(133, 'D19119', 'Desktop', NULL, NULL, NULL, NULL, '1630902716.jpg', NULL, 'Recident', '2021-08-31 00:48:17', '2021-09-05 22:31:56'),
(134, 'D19120', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630902693.jpg', NULL, 'Ration', '2021-08-31 00:48:32', '2021-09-05 22:31:33'),
(135, 'D19210', 'Desktop', NULL, NULL, NULL, NULL, '1630902671.jpg', NULL, 'Fire', '2021-08-31 00:48:42', '2021-09-05 22:31:11'),
(136, 'D19209', 'Desktop', NULL, NULL, NULL, NULL, '1630902650.jpg', NULL, 'Fire', '2021-08-31 00:48:52', '2021-09-05 22:30:50'),
(137, 'D19142', 'Desktop', NULL, NULL, NULL, NULL, '1630902628.jpg', NULL, 'Purchase', '2021-08-31 00:49:02', '2021-09-05 22:30:28'),
(139, 'D19127', 'Desktop', NULL, NULL, NULL, NULL, '1630902602.jpg', NULL, 'Purchase', '2021-08-31 00:49:21', '2021-09-05 22:30:02'),
(140, 'D19130', 'Desktop', NULL, NULL, NULL, NULL, '1630903735.jpg', NULL, 'Purchase', '2021-08-31 00:49:32', '2021-09-05 22:48:55'),
(141, 'D19131', 'Desktop', NULL, NULL, NULL, NULL, '1630903703.jpg', NULL, 'Purchase', '2021-08-31 00:49:39', '2021-09-05 22:48:23'),
(142, 'D19132', 'Desktop', NULL, NULL, NULL, NULL, '1630903683.jpg', NULL, 'Purchase', '2021-08-31 00:49:52', '2021-09-05 22:48:03'),
(143, 'D19133', 'Desktop', NULL, NULL, NULL, NULL, '1630903651.jpg', NULL, 'Purchase', '2021-08-31 00:49:59', '2021-09-05 22:47:31'),
(144, 'D19134', 'Desktop', NULL, NULL, NULL, NULL, '1630903620.jpg', NULL, 'Purchase', '2021-08-31 00:50:05', '2021-09-05 22:47:00'),
(145, 'D19135', 'Desktop', NULL, NULL, NULL, NULL, '1630903601.jpg', NULL, 'Purchase', '2021-08-31 00:50:12', '2021-09-05 22:46:41'),
(146, 'D19136', 'Desktop', NULL, NULL, NULL, NULL, '1630903574.jpg', NULL, 'Purchase', '2021-08-31 00:50:21', '2021-09-05 22:46:14'),
(148, 'D19143', 'Desktop', NULL, NULL, NULL, NULL, '1630903518.jpg', NULL, 'Purchase', '2021-08-31 00:50:39', '2021-09-05 22:45:18'),
(149, 'D19144', 'Desktop', NULL, NULL, NULL, NULL, '1630903499.jpg', NULL, 'Purchase', '2021-08-31 00:50:47', '2021-09-05 22:44:59'),
(150, 'D19145', 'Desktop', NULL, NULL, NULL, NULL, '1630904064.jpg', NULL, 'Purchase', '2021-08-31 00:50:55', '2021-09-05 22:54:24'),
(151, 'D19146', 'Desktop', NULL, NULL, NULL, NULL, '1630904031.jpg', NULL, 'Purchase', '2021-08-31 00:52:53', '2021-09-05 22:53:51'),
(152, 'D19147', 'Desktop', NULL, NULL, NULL, NULL, '1630904009.jpg', NULL, 'Purchase', '2021-08-31 00:53:17', '2021-09-05 22:53:29'),
(153, 'D19148', 'Desktop', NULL, NULL, NULL, NULL, '1630903940.jpg', NULL, 'Purchase', '2021-08-31 00:53:34', '2021-09-05 22:52:20'),
(154, 'D19149', 'Desktop', NULL, NULL, NULL, NULL, '1630903905.jpg', NULL, 'Purchase', '2021-08-31 00:54:11', '2021-09-05 22:51:45'),
(155, 'D19150', 'Desktop', NULL, NULL, NULL, NULL, '1630903876.jpg', NULL, 'Purchase', '2021-08-31 00:55:56', '2021-09-05 22:51:16'),
(156, 'D19151', 'Desktop', NULL, NULL, NULL, NULL, '1630903852.jpg', NULL, 'Purchase', '2021-08-31 00:56:04', '2021-09-05 22:50:52'),
(157, 'D19152', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630903825.jpg', NULL, 'Purchase', '2021-08-31 00:56:16', '2021-09-05 22:50:25'),
(158, 'D19153', 'Desktop', NULL, NULL, NULL, NULL, '1630903803.jpg', NULL, 'Purchase', '2021-08-31 00:56:25', '2021-09-05 22:50:03'),
(159, 'D19154', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630903766.jpg', NULL, 'Purchase', '2021-08-31 00:56:40', '2021-09-05 22:49:26'),
(160, 'D19235', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630904355.jpg', NULL, 'Purchase', '2021-08-31 00:56:53', '2021-09-05 22:59:15'),
(161, 'D19261', 'Desktop', NULL, NULL, NULL, NULL, '1630904326.jpg', NULL, 'Purchase', '2021-08-31 00:57:02', '2021-09-05 22:58:46'),
(162, 'D19207', 'Desktop', NULL, NULL, NULL, NULL, '1630904300.jpg', NULL, 'Main store', '2021-08-31 00:57:12', '2021-09-05 22:58:20'),
(163, 'D19205', 'Desktop', NULL, NULL, NULL, NULL, '1630904275.jpg', NULL, 'Main store', '2021-08-31 00:57:19', '2021-09-05 22:57:55'),
(164, 'D19118', 'Desktop', NULL, NULL, NULL, NULL, '1630904250.jpg', NULL, 'CR', '2021-08-31 00:57:26', '2021-09-05 22:57:30'),
(165, 'D19157', 'Desktop', NULL, NULL, NULL, NULL, '1630904225.jpg', NULL, 'Receive Control', '2021-08-31 00:57:35', '2021-09-05 22:57:05'),
(166, 'D19206', 'Desktop', NULL, NULL, NULL, NULL, '1630904194.jpg', NULL, 'Main store', '2021-08-31 00:57:42', '2021-09-05 22:56:34'),
(167, 'D19211', 'Desktop', NULL, NULL, NULL, NULL, '1630904170.jpg', NULL, 'Main store', '2021-08-31 00:57:49', '2021-09-05 22:56:10'),
(168, 'D19220', 'Desktop', NULL, NULL, NULL, NULL, '1630904130.jpg', NULL, 'Officers Mess', '2021-08-31 00:57:56', '2021-09-05 22:55:30'),
(169, 'D19221', 'Desktop', NULL, NULL, NULL, NULL, '1630904099.jpg', NULL, 'MT.', '2021-08-31 00:58:05', '2021-09-05 22:54:59'),
(170, 'D19222', 'Desktop', NULL, NULL, NULL, NULL, '1630904949.jpg', NULL, 'MT.', '2021-08-31 00:58:12', '2021-09-05 23:09:09'),
(171, 'W19281', 'Desktop', NULL, NULL, NULL, NULL, '1630904923.jpg', NULL, 'ICT', '2021-08-31 00:58:37', '2021-09-05 23:08:43'),
(172, 'D19002', 'Desktop', NULL, NULL, NULL, NULL, '1630904895.jpg', NULL, NULL, '2021-08-31 00:58:47', '2021-09-05 23:08:15'),
(173, 'D19025', 'Desktop', NULL, NULL, NULL, NULL, '1630904875.jpg', NULL, 'ICT', '2021-08-31 00:58:56', '2021-09-05 23:07:55'),
(174, 'D19247', 'Desktop', NULL, NULL, NULL, NULL, '1630904852.jpg', NULL, 'ICT', '2021-08-31 00:59:06', '2021-09-05 23:07:32'),
(175, 'D19102', 'Desktop', NULL, NULL, NULL, NULL, '1630904830.jpg', NULL, 'Medical', '2021-08-31 00:59:17', '2021-09-05 23:07:10'),
(176, 'D19261', 'Desktop', NULL, NULL, NULL, NULL, '1630904804.jpg', NULL, 'ICT', '2021-08-31 00:59:27', '2021-09-05 23:06:44'),
(177, 'W0024', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630904779.jpg', NULL, 'ICT', '2021-08-31 00:59:54', '2021-09-05 23:06:19'),
(178, 'W0029', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630904750.jpg', NULL, 'ICT', '2021-08-31 01:00:07', '2021-09-05 23:05:50'),
(179, 'W0030', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630904728.jpg', NULL, 'ICT', '2021-08-31 01:00:21', '2021-09-18 23:45:09'),
(180, 'W0031', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630905260.jpg', NULL, 'ICT', '2021-08-31 01:00:39', '2021-09-18 23:44:51'),
(181, 'W0033', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630905237.jpg', NULL, 'ICT', '2021-08-31 01:00:49', '2021-09-18 23:44:35'),
(182, 'W0034', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630905215.jpg', NULL, 'ICT', '2021-08-31 01:01:02', '2021-09-18 23:44:00'),
(183, 'W0037', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630905195.jpg', NULL, 'ICT', '2021-08-31 01:01:12', '2021-09-18 23:43:33'),
(189, 'W0035', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630905006.jpg', 'MAN Sahina Madam Auto CAD Purpose Ullas', 'R & D', '2021-08-31 01:02:10', '2021-09-18 23:20:10'),
(190, '19278', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906129.jpg', NULL, 'Finance', '2021-08-31 01:52:51', '2021-09-05 23:28:49'),
(191, '19278', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906102.jpg', NULL, 'APO Finance', '2021-08-31 01:53:47', '2021-09-05 23:28:22'),
(192, 'NILL', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630906079.jpg', NULL, 'Finance', '2021-08-31 01:56:54', '2021-09-05 23:27:59'),
(194, 'NILL', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906055.jpg', NULL, 'Finance', '2021-08-31 01:58:00', '2021-09-05 23:27:35'),
(195, '19275', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906010.jpg', NULL, 'Recident', '2021-08-31 01:58:50', '2021-09-05 23:26:50'),
(196, '19291', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630905919.jpg', NULL, 'Welfare', '2021-08-31 01:59:36', '2021-09-05 23:25:19'),
(197, '19294', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630905888.jpg', NULL, 'Miscellaneous', '2021-08-31 02:00:23', '2021-09-05 23:24:48'),
(198, '19240', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630905861.jpg', NULL, 'Miscellaneous', '2021-08-31 02:00:52', '2021-09-05 23:24:21'),
(199, '19286', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630905835.jpg', NULL, 'Medical', '2021-08-31 02:01:55', '2021-09-05 23:23:55'),
(200, '19287', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630905809.jpg', NULL, 'Sy. Camera', '2021-08-31 02:03:39', '2021-09-05 23:23:29'),
(201, '19071', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906668.jpg', NULL, 'Admin', '2021-08-31 02:07:26', '2021-09-05 23:37:48'),
(202, '19285', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630906647.jpg', NULL, 'purchase', '2021-08-31 19:02:15', '2021-09-05 23:37:27'),
(203, '19289', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630906627.jpg', NULL, 'Admin', '2021-08-31 19:03:38', '2021-09-05 23:37:07'),
(204, '19220', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906606.jpg', NULL, 'Admin', '2021-08-31 19:04:27', '2021-09-05 23:36:46'),
(205, 'D19055', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906585.jpg', NULL, 'DIR production Office', '2021-08-31 19:06:14', '2021-09-05 23:36:25'),
(206, 'D19054', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906565.jpg', NULL, 'DIR production Office', '2021-08-31 19:08:00', '2021-09-05 23:36:05'),
(207, 'D19270', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906529.jpg', NULL, 'Production C-cordiant Cell', '2021-08-31 19:08:51', '2021-09-05 23:35:29'),
(208, 'D19264', 'Desktop', NULL, 'Core i5', NULL, 'Space', '1630906508.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:09:17', '2021-09-05 23:35:08'),
(209, 'D19053', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906490.jpg', NULL, 'Production C-cordiant Cell', '2021-08-31 19:09:29', '2021-09-05 23:34:50'),
(210, 'D19265', 'Desktop', NULL, NULL, NULL, NULL, '1630906471.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:09:52', '2021-09-05 23:34:31'),
(211, 'D190', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630906447.jpg', NULL, 'Production C-cordiant Cell', '2021-08-31 19:09:56', '2021-09-05 23:34:07'),
(212, 'D19262', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630906426.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:10:28', '2021-09-05 23:33:46'),
(213, 'D19080', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630906407.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:10:51', '2021-09-05 23:33:27'),
(214, 'D19097', 'Desktop', NULL, 'Core i3', NULL, 'Ultra', '1630906385.jpg', NULL, 'DD HAG', '2021-08-31 19:11:20', '2021-09-05 23:33:05'),
(215, 'D19078', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1630906364.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:11:30', '2021-09-05 23:32:44'),
(216, 'D19096', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630906344.jpg', NULL, 'DD HAG Office', '2021-08-31 19:11:51', '2021-09-05 23:32:24'),
(217, 'D19079', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906314.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:12:10', '2021-09-05 23:31:54'),
(218, 'D19272', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630906288.jpg', NULL, 'DD HAG Office', '2021-08-31 19:12:20', '2021-09-05 23:31:28'),
(219, 'D19081', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630906155.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:12:44', '2021-09-05 23:29:15'),
(220, 'D19095', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630817188.jpg', NULL, 'DD HAG', '2021-08-31 19:13:04', '2021-09-04 22:46:28'),
(221, 'D19082', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630817079.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:13:18', '2021-09-04 22:44:39'),
(222, 'D19091', 'Desktop', NULL, 'Core i5', NULL, 'Ultra', '1630816993.jpg', NULL, 'GP-3 Office', '2021-08-31 19:13:39', '2021-09-04 22:43:13'),
(223, 'D19083', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630816918.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:13:56', '2021-09-04 22:41:58'),
(224, 'D19092', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630816854.jpg', NULL, 'GP-3 Office', '2021-08-31 19:14:05', '2021-09-04 22:40:54'),
(225, 'D19084', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630816819.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:14:34', '2021-09-04 22:40:19'),
(226, 'D19093', NULL, NULL, 'Core i7', NULL, 'LG Chasis', '1630816770.jpg', NULL, 'HAG', '2021-08-31 19:14:36', '2021-09-04 22:39:30'),
(227, 'D19238', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630816733.jpg', NULL, 'HAG', '2021-08-31 19:15:00', '2021-09-04 22:38:53'),
(228, 'D19090', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630816652.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:15:10', '2021-09-04 22:37:32'),
(229, 'D19248', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630816611.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:15:28', '2021-09-04 22:36:51'),
(230, 'D19085', 'Desktop', NULL, 'Core i5', NULL, 'Delux', '1630816571.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:15:54', '2021-09-04 22:36:11'),
(231, 'D19179', 'Desktop', NULL, NULL, NULL, NULL, '1630816530.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:15:55', '2021-09-04 22:35:30'),
(232, 'D19190', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630816494.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:16:26', '2021-09-04 22:34:54'),
(233, 'D19182', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630816408.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:16:46', '2021-09-04 22:33:28'),
(234, 'D19089', 'Desktop', NULL, '2 Duo', NULL, 'General', '1630816450.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:16:46', '2021-09-04 22:34:10'),
(235, 'D19183', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630816371.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:17:10', '2021-09-04 22:32:51'),
(236, 'D19086', 'Desktop', NULL, NULL, NULL, NULL, '1630816333.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:17:16', '2021-09-04 22:32:13'),
(237, 'D19184', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630816293.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:17:32', '2021-09-04 22:31:33'),
(238, 'D19185', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630816206.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:17:59', '2021-09-04 22:30:06'),
(239, 'D19087', 'Desktop', NULL, 'Core i5', NULL, 'Space', '1630816252.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:17:59', '2021-09-04 22:30:52'),
(240, 'D19186', 'Desktop', NULL, NULL, NULL, NULL, '1630816176.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:18:14', '2021-09-04 22:29:36'),
(241, 'D19187', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630815986.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:18:40', '2021-09-04 22:26:26'),
(242, 'D19189', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630815956.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:19:05', '2021-09-04 22:25:56'),
(243, 'D19171', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630815875.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:19:26', '2021-09-04 22:24:35'),
(244, 'D19276', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630815801.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:19:46', '2021-09-04 22:23:21'),
(245, 'D19088', 'Desktop', NULL, 'Intel Pentium', NULL, 'Transnet', '1630815769.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:20:04', '2021-09-04 22:22:49'),
(246, 'D19188', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630815734.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:20:18', '2021-09-04 22:22:14'),
(247, 'D19260', 'Desktop', NULL, NULL, NULL, NULL, '1630815692.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:20:30', '2021-09-04 22:21:32'),
(248, 'D19266', 'Desktop', NULL, 'Core i7', NULL, 'Segotep', '1630815650.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:20:54', '2021-09-04 22:20:50'),
(249, 'D19261', 'Desktop', 'Clone Desktop', 'Core i7', NULL, NULL, '1630815583.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:21:15', '2021-09-04 22:19:43'),
(250, 'D19267', 'Desktop', NULL, 'Core i7', NULL, 'Work shop', '1630815488.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:21:28', '2021-09-04 22:18:08'),
(251, 'D19168', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630815451.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:21:51', '2021-09-04 22:17:31'),
(252, 'D19180', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1630815418.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:22:00', '2021-09-04 22:16:58'),
(253, 'D19169', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630815382.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:22:13', '2021-09-04 22:16:22'),
(254, 'NILL', 'Desktop', 'Clone Desktop', '2 Duo', NULL, NULL, '1630815347.jpg', NULL, NULL, '2021-08-31 19:22:36', '2021-09-04 22:15:47'),
(255, 'D19268', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630815311.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:22:38', '2021-09-04 22:15:11'),
(256, 'D19299', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630815271.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:23:02', '2021-09-04 22:14:31'),
(257, 'D19296', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630815238.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:23:24', '2021-09-04 22:13:58'),
(258, 'D19295', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630815205.jpg', NULL, 'ME', '2021-08-31 19:23:35', '2021-09-04 22:13:25'),
(259, 'D19274', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630815174.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:23:56', '2021-09-04 22:12:54'),
(260, 'D19113', NULL, NULL, 'Core i5', NULL, 'HP', '1630815144.jpg', NULL, 'Welfare', '2021-08-31 19:24:11', '2021-09-04 22:12:24'),
(261, 'D19293', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630815111.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:24:18', '2021-09-04 22:11:51'),
(262, 'W19284', 'Desktop', NULL, NULL, NULL, NULL, '1630815083.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:25:06', '2021-09-04 22:11:23'),
(263, 'D19181', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630815049.jpg', NULL, NULL, '2021-08-31 19:25:40', '2021-09-04 22:10:49'),
(264, 'D19298', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630815028.jpg', NULL, 'Small Arms Ammo (SAA)', '2021-08-31 19:26:33', '2021-09-04 22:10:28'),
(265, 'D19225', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630464484.jpg', NULL, 'R & D', '2021-08-31 19:27:22', '2021-08-31 21:45:02'),
(268, 'D19067', 'Desktop', NULL, 'Core i3', NULL, 'HP', '1630814999.jpg', NULL, 'Dir PLG & maint Office', '2021-08-31 20:49:04', '2021-09-04 22:09:59'),
(269, 'D19068', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814979.jpg', NULL, 'Dir PLG & maint Office', '2021-08-31 20:50:05', '2021-09-04 22:09:39'),
(270, 'D19230', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814944.jpg', NULL, 'R & D', '2021-08-31 20:50:19', '2021-09-04 22:09:04'),
(271, 'D19223', 'Desktop', NULL, NULL, NULL, NULL, '1630814913.jpg', NULL, 'DD PlG office', '2021-08-31 20:50:56', '2021-09-04 22:08:33'),
(272, 'D19203', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814884.jpg', NULL, 'Drawing', '2021-08-31 20:51:10', '2021-09-04 22:08:04'),
(273, 'D192107', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814845.jpg', NULL, 'R & D', '2021-08-31 20:51:56', '2021-09-04 22:07:25'),
(274, 'D19005', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630814819.jpg', NULL, 'Drawing', '2021-08-31 20:52:43', '2021-09-04 22:06:59'),
(275, 'D19262', 'Desktop', NULL, NULL, NULL, NULL, '1630814791.jpg', NULL, 'Drawing', '2021-08-31 20:53:30', '2021-09-04 22:06:31'),
(276, 'W19281', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1630814757.jpg', NULL, 'Man Plg Office', '2021-08-31 20:54:14', '2021-09-04 22:05:57'),
(277, 'D19290', 'Desktop', NULL, 'Core i5', NULL, 'Segotep', '1630814688.jpg', NULL, 'Matlab', '2021-08-31 20:54:22', '2021-09-04 22:04:48'),
(278, 'D19003', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814652.jpg', NULL, 'Man Plg Office', '2021-08-31 20:55:10', '2021-09-04 22:04:12'),
(279, 'D19201', 'Desktop', NULL, NULL, NULL, 'Delux', '1630814619.jpg', NULL, 'Matlab', '2021-08-31 20:55:14', '2021-09-04 22:03:39'),
(280, 'W20014', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, '1630814585.jpg', NULL, 'Man Plg Office', '2021-08-31 20:55:54', '2021-09-04 22:03:05'),
(281, 'D19229', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814555.jpg', NULL, 'Matlab', '2021-08-31 20:55:55', '2021-09-04 22:02:35'),
(282, 'D19234', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814529.jpg', NULL, 'ISI', '2021-08-31 20:56:33', '2021-09-04 22:02:09'),
(283, 'D19204', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630814493.jpg', NULL, 'ISI', '2021-08-31 20:57:06', '2021-09-04 22:01:33'),
(284, 'D19217', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814462.jpg', NULL, 'P & P', '2021-08-31 20:57:25', '2021-09-04 22:01:02'),
(285, 'D19176', 'Desktop', NULL, 'Core i5', NULL, 'Delux', '1630814432.jpg', NULL, 'CTM', '2021-08-31 20:57:45', '2021-09-04 22:00:32'),
(286, 'NILL', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814404.jpg', NULL, 'P & P', '2021-08-31 20:58:24', '2021-09-04 22:00:04'),
(287, 'D19178', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814372.jpg', NULL, 'CTM', '2021-08-31 20:59:04', '2021-09-04 21:59:32'),
(288, 'D19273', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814346.jpg', NULL, 'CTM', '2021-08-31 20:59:57', '2021-09-04 21:59:06'),
(289, 'D19011', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814317.jpg', NULL, 'P & P', '2021-08-31 21:00:15', '2021-09-04 21:58:37'),
(290, 'D19147', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814295.jpg', NULL, 'CTM', '2021-08-31 21:00:41', '2021-09-04 21:58:15'),
(291, 'D19177', 'Desktop', NULL, NULL, NULL, NULL, '1630814267.jpg', NULL, 'CTG', '2021-08-31 21:01:06', '2021-09-04 21:57:47'),
(292, 'D19012', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814237.jpg', NULL, 'P & P', '2021-08-31 21:01:35', '2021-09-04 21:57:17'),
(293, 'D19198', 'Desktop', NULL, 'Core i5', NULL, 'Ultra', '1630814187.jpg', NULL, 'CM', '2021-08-31 21:02:26', '2021-09-04 21:56:27'),
(294, 'D19013', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630814159.jpg', NULL, 'P & P', '2021-08-31 21:02:27', '2021-09-04 21:55:59'),
(295, 'D19197', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630814126.jpg', NULL, 'CM', '2021-08-31 21:03:01', '2021-09-04 21:55:26'),
(296, 'D19196', 'Desktop', NULL, NULL, NULL, 'General', '1630814088.jpg', NULL, 'CM', '2021-08-31 21:03:33', '2021-09-04 21:54:48'),
(297, 'D19288', 'Desktop', NULL, 'Core i5', NULL, 'Segotep', '1630814063.jpg', NULL, 'CM', '2021-08-31 21:04:32', '2021-09-04 21:54:23'),
(298, 'D19014', 'Desktop', NULL, 'Core i5', NULL, 'OVO', '1630814037.jpg', NULL, 'P & P', '2021-08-31 21:05:02', '2021-09-04 21:53:57'),
(299, 'D19245', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630814003.jpg', NULL, 'PSI', '2021-08-31 21:05:58', '2021-09-04 21:53:23'),
(300, 'D19193', 'Desktop', NULL, 'Intel i3', NULL, 'CSM', '1630813963.jpg', NULL, 'Man MM', '2021-08-31 21:06:41', '2021-09-04 21:52:43'),
(301, 'D19268', 'Desktop', NULL, NULL, NULL, NULL, '1630812483.jpg', NULL, 'WISA', '2021-08-31 21:06:45', '2021-09-04 21:28:03'),
(302, 'D19015', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812443.jpg', NULL, 'MC', '2021-08-31 21:07:30', '2021-09-04 21:27:23'),
(303, 'D19116', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812417.jpg', NULL, 'MM', '2021-08-31 21:07:33', '2021-09-04 21:26:57'),
(304, 'D19192', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812388.jpg', NULL, 'Man service', '2021-08-31 21:08:14', '2021-09-04 21:26:28'),
(305, 'D19016', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630812362.jpg', NULL, 'MC', '2021-08-31 21:09:16', '2021-09-04 21:26:02'),
(306, 'D19194', 'Desktop', NULL, 'Duel Core', NULL, 'Delux', '1630812338.jpg', NULL, 'Service Office', '2021-08-31 21:10:12', '2021-09-04 21:25:38'),
(307, 'D19195', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812311.jpg', NULL, 'Service Office', '2021-08-31 21:10:48', '2021-09-04 21:25:11'),
(308, 'D19164', 'Desktop', NULL, 'Core i5', NULL, 'Pro Desk', '1630812282.jpg', NULL, 'Service Office', '2021-08-31 21:11:42', '2021-09-04 21:24:42'),
(309, 'D19200', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812253.jpg', NULL, 'ME', '2021-08-31 21:14:33', '2021-09-04 21:24:13'),
(310, 'D19199', 'Desktop', NULL, 'Core i3', NULL, 'A0 Tech', '1630812231.jpg', NULL, 'ME', '2021-08-31 21:15:54', '2021-09-04 21:23:51'),
(311, 'D19165', 'Desktop', NULL, 'Core i3', NULL, 'Ultra', '1630812208.jpg', NULL, 'ME', '2021-08-31 21:16:30', '2021-09-04 21:23:28'),
(312, 'D19295', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630812184.jpg', NULL, 'ME', '2021-08-31 21:17:01', '2021-09-04 21:23:04'),
(313, 'D19138', 'Desktop', NULL, NULL, NULL, NULL, '1630811529.jpg', NULL, 'MRO', '2021-08-31 21:17:26', '2021-09-04 21:12:09'),
(314, 'D1939', 'Desktop', NULL, NULL, NULL, NULL, '1630811482.jpg', NULL, 'MRO', '2021-08-31 21:17:40', '2021-09-04 21:11:22'),
(315, 'D19140', 'Desktop', NULL, NULL, NULL, NULL, '1630811459.jpg', NULL, 'MRO', '2021-08-31 21:17:55', '2021-09-04 21:10:59'),
(316, 'D19141', 'Desktop', NULL, NULL, NULL, NULL, '1630811405.jpg', NULL, 'MRO', '2021-08-31 21:18:07', '2021-09-04 21:10:05'),
(317, 'D19017', 'Desktop', NULL, 'Pentium', NULL, 'Digital', '1630811370.jpg', NULL, 'MC', '2021-08-31 21:18:13', '2021-09-04 21:09:30'),
(318, 'D19159', 'Desktop', NULL, 'Core i5', NULL, 'DELL', '1630811323.jpg', NULL, 'Exchange', '2021-08-31 21:18:30', '2021-09-04 21:08:43'),
(319, 'D19018', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630811303.jpg', NULL, 'MC', '2021-08-31 21:18:57', '2021-09-04 21:08:23'),
(320, 'D19161', 'Desktop', NULL, 'Core i3', NULL, 'HP Pro', '1630811281.jpg', 'This is HP pro', 'Exchange', '2021-08-31 21:18:59', '2021-09-04 21:08:01'),
(321, 'D19160', 'Desktop', NULL, 'Pentium', NULL, 'Space', '1630811265.jpg', 'Exchange', 'Exchange', '2021-08-31 21:19:28', '2021-09-04 21:07:45'),
(322, 'D19162', 'Desktop', NULL, NULL, NULL, NULL, '1630811202.jpg', NULL, 'Exchange', '2021-08-31 21:19:59', '2021-09-04 21:06:42'),
(323, 'D19218', 'Desktop', NULL, 'Core i5', NULL, 'DELL', '1630811170.jpg', NULL, 'Exchange', '2021-08-31 21:20:52', '2021-09-04 21:06:10'),
(324, 'D19019', 'Desktop', NULL, 'Duel Core', NULL, 'Delux', '1630811142.jpg', NULL, 'MC', '2021-08-31 21:21:10', '2021-09-04 21:05:42'),
(325, 'D19238', 'Desktop', NULL, NULL, NULL, NULL, '1630811114.jpg', NULL, 'Exchange', '2021-08-31 21:21:17', '2021-09-04 21:05:14'),
(327, 'W0039', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630811055.jpg', 'MAN Sahina Madam Auto CAD Purpose Ullas', 'R & D', '2021-08-31 21:23:27', '2021-09-18 23:40:18'),
(328, 'W0038', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630811023.jpg', 'MAN Sahina Madam Auto CAD Purpose Ullas', 'R & D', '2021-08-31 21:23:36', '2021-09-18 23:39:24'),
(329, 'W0037', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630810999.jpg', 'MAN Sahina Madam Auto CAD Purpose Ullas', 'R & D', '2021-08-31 21:23:56', '2021-09-18 23:38:54'),
(330, 'W0036', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', '1630810969.jpg', 'MAN Sahina Madam Auto CAD Purpose Ullas', 'R & D', '2021-08-31 21:24:13', '2021-09-18 23:37:28'),
(331, 'D19020', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630810942.jpg', 'test', 'MC', '2021-08-31 21:24:24', '2021-09-04 21:02:22'),
(332, 'D19172', 'Desktop', NULL, 'Core i3', NULL, 'OVO', '1630810914.jpg', NULL, 'R & D', '2021-08-31 21:24:50', '2021-09-04 21:01:54'),
(333, 'D19021', 'Desktop', NULL, 'Core i3', NULL, 'Delux', '1630809824.jpg', NULL, 'MC', '2021-08-31 21:25:22', '2021-09-04 20:43:44'),
(334, 'D19244', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630809801.jpg', NULL, 'Drawing', '2021-08-31 21:25:28', '2021-09-04 20:43:21'),
(335, 'D19297', 'Desktop', NULL, 'Core i5', NULL, 'Vallue top', '1630809777.jpg', NULL, 'ISI', '2021-08-31 21:25:58', '2021-09-04 20:42:57'),
(336, 'D19233', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630809755.jpg', NULL, 'MC', '2021-08-31 21:26:09', '2021-09-04 20:42:35'),
(337, 'D19023', 'Desktop', NULL, 'Core i7', NULL, 'HP', '1630809734.jpg', NULL, 'MC', '2021-08-31 21:26:51', '2021-09-04 20:42:14'),
(338, 'D19173', 'Desktop', NULL, NULL, NULL, NULL, '1630809704.jpg', NULL, 'CC R & D', '2021-08-31 21:29:27', '2021-09-04 20:41:44'),
(339, 'D19173', 'Desktop', NULL, NULL, NULL, NULL, '1630809670.jpg', NULL, 'CC R & D', '2021-08-31 21:30:07', '2021-09-04 20:41:10'),
(340, 'D19116', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630809648.jpg', NULL, 'Recident', '2021-09-01 22:16:00', '2021-09-04 20:40:48'),
(341, 'D19142', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630809627.jpg', NULL, 'Purchase', '2021-09-01 22:47:15', '2021-09-04 20:40:27'),
(342, 'D19128', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630809606.jpg', NULL, 'Purchase', '2021-09-01 22:48:10', '2021-09-04 20:40:06'),
(343, 'D19127', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630807798.jpg', NULL, 'Purchase', '2021-09-01 22:48:45', '2021-09-04 20:09:58'),
(344, 'D19130', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630807776.jpg', NULL, 'Purchase', '2021-09-01 22:49:13', '2021-09-04 20:09:36'),
(345, 'D19131', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630807755.jpg', NULL, 'Purchase', '2021-09-01 22:49:46', '2021-09-04 20:09:15'),
(346, 'D19132', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630807736.jpg', NULL, 'Purchase', '2021-09-01 22:50:18', '2021-09-04 20:08:56'),
(347, 'D19133', 'Desktop', 'Clone Desktop', 'Pentium', NULL, NULL, '1630807862.jpg', NULL, 'Purchase', '2021-09-01 22:50:54', '2021-09-04 20:11:02'),
(348, 'D19134', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630807683.jpg', NULL, 'Purchase', '2021-09-01 22:51:37', '2021-09-04 20:08:03'),
(349, 'D19135', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630807663.jpg', NULL, 'Purchase', '2021-09-01 22:52:18', '2021-09-04 20:07:43'),
(350, 'D19136', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630806539.jpg', NULL, 'Purchase', '2021-09-01 22:52:53', '2021-09-04 19:48:59'),
(351, 'D19137', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630806516.jpg', NULL, 'Purchase', '2021-09-01 22:53:29', '2021-09-04 19:48:36'),
(352, 'D19143', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630806492.jpg', NULL, 'Purchase', '2021-09-01 22:53:53', '2021-09-04 19:48:12'),
(353, 'D19144', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630806467.jpg', NULL, 'Purchase', '2021-09-01 22:54:18', '2021-09-04 19:47:47'),
(354, 'D19145', 'Desktop', NULL, NULL, NULL, NULL, '1630806443.jpg', NULL, 'Purchase', '2021-09-01 22:54:44', '2021-09-04 19:47:23'),
(355, 'D19146', 'Desktop', 'Clone Desktop', 'Intel i3', NULL, NULL, '1630806424.jpg', NULL, 'Purchase', '2021-09-01 22:55:18', '2021-09-04 19:47:04'),
(356, 'D19147', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630806402.jpg', 'test Edit', 'Purchase', '2021-09-01 22:55:46', '2021-09-07 23:38:29'),
(357, 'D19148', 'Desktop', NULL, NULL, NULL, NULL, '1630806378.jpg', NULL, 'Purchase', '2021-09-01 22:56:09', '2021-09-04 19:46:18'),
(358, 'D19149', 'Desktop', 'Clone Desktop', 'Core i3', NULL, NULL, '1630806360.jpg', NULL, 'Purchase', '2021-09-01 22:57:36', '2021-09-04 19:46:00'),
(361, 'D19261', 'Desktop', 'Clone Desktop', 'Core i5', NULL, NULL, '1630806301.jpg', NULL, 'Purchase', '2021-09-01 23:00:02', '2021-09-04 19:45:01'),
(362, 'D19067', 'Desktop', NULL, 'Core i5', NULL, 'HP', '1630742186.jpg', NULL, 'Planning', '2021-09-01 23:02:44', '2021-09-04 01:56:26'),
(380, 'TEST-ICT-101', 'Desktop', 'Brand Desktop', 'Intel i3', NULL, 'DELL', '1631086028.jpg', 'Test Product for working', 'ICT', '2021-09-08 01:26:51', '2021-09-08 01:27:08'),
(382, 'Test Pro', 'test Category', 'test Sub category', 'Test type', 'CR1016-12S-1S+', 'Test brand', NULL, 'test discription', 'Planning', '2021-09-15 19:55:13', '2021-09-15 19:55:13'),
(384, 'ABC', 'test Category', 'test Sub category', 'Test type', 'CR1016-12S-1S+', 'Test brand', NULL, 'product 70 , issued to ruhul , taka 5000', 'ICT', '2021-09-15 20:36:37', '2021-09-15 20:36:37'),
(385, 'R20001', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, '20-7-20 , Entry :   01', 'Dir PLG & maint Office', '2021-09-15 21:01:05', '2021-09-15 21:01:05'),
(386, 'R20002', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, '22-8-20 , Entry :01 pcs', 'GSO-2', '2021-09-15 21:02:02', '2021-09-15 21:02:02'),
(387, 'R20003', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, '24-8-20 ,Inclusion : 05 pcs  , from Jeba Enterprice', NULL, '2021-09-15 21:03:33', '2021-09-15 21:03:33'),
(388, 'R20004', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, '7-9-20 , Entry: 01 pcs , \r\nHouse of Director Production Sir', NULL, '2021-09-15 21:05:42', '2021-09-15 21:05:42'),
(389, 'R20005', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '10-9-20 , Entry :01 pcs', 'ICT-Office', '2021-09-15 21:12:06', '2021-09-15 21:12:06'),
(390, 'R20006', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '1-10-20, Entry: 1 pcs', 'Bangabondhu Cornar', '2021-09-15 21:16:23', '2021-09-19 23:52:07'),
(391, 'R20007', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '13-10-20 , Inclusion :3 pcs , from Computer City', 'ICT', '2021-09-15 21:17:51', '2021-09-15 21:18:08'),
(392, 'R20008', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '13-10-20 , Entry: 1pcs , VIP Room', 'Officers Mess', '2021-09-15 21:19:30', '2021-09-15 21:19:30'),
(393, 'R20009', 'Router', 'Home Router', NULL, NULL, NULL, NULL, '14-10-20 , Entry : 1 pcs', 'Comdt Conference Room', '2021-09-15 21:21:30', '2021-09-15 21:24:43');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`) VALUES
(394, 'R20010', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '17-10-20 ; Entry: 01 pcs , Medical MI Room', 'Medical', '2021-09-15 21:25:45', '2021-09-15 21:25:45'),
(395, 'R20011', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, '24-10-20 ; Entry : 02 pcs ; Deputy Comdt Bhabon', 'Deputy Comdt Bhabon', '2021-09-15 21:27:10', '2021-09-15 21:28:00'),
(396, 'R20012', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, '23-10-20 ; Entry:01 pcs', 'Bangabondhu Cornar', '2021-09-15 21:28:59', '2021-09-15 21:28:59'),
(397, 'R20013', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, '25-10-20 : Entry : 1pcs ,', 'Comdt Conference Room', '2021-09-15 21:29:53', '2021-09-15 21:29:53'),
(398, 'R20014', 'Router', 'Home Router', NULL, NULL, 'Tenda', NULL, '10-11-20 ; Entry : 01 pcs ; Manager Bari  , MRO', 'ME', '2021-09-15 21:31:25', '2021-09-15 21:31:25'),
(399, 'R20015', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '25-11-20 ; Inclusion : 05 pcs ; From Suppler Referrence ISI', 'ICT', '2021-09-15 21:32:42', '2021-09-15 21:32:42'),
(400, 'R20016', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '26-11-20 ; Entry : 01 pcs , DD Rezaul Karim Sir', 'DD SA', '2021-09-15 21:33:59', '2021-09-15 21:33:59'),
(401, 'R20017', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '2-12-20 ; Entry : 01 ; VVIP Room', 'Officers Mess', '2021-09-15 21:34:57', '2021-09-15 21:34:57'),
(402, 'R20018', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '10/12/20 Entry: 01 pc. Ullas', 'Admin', '2021-09-15 22:15:51', '2021-09-15 22:15:51'),
(403, 'R21019', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '4/01/21 Entry: 01 pc. TPT', 'MT.', '2021-09-15 22:17:07', '2021-09-15 22:17:07'),
(404, 'R21020', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '4/01/21 Entry: 02 pcs. Officers Mess 204 Room, Major Abdus Salam Sir.', 'ICT', '2021-09-15 22:18:47', '2021-09-15 22:18:47'),
(405, 'R21021', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '23/01/21 Entry: 01 pc. Officers Mess , Manager Security', 'Security', '2021-09-15 22:20:12', '2021-09-15 22:20:12'),
(406, 'R21022', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '27/01/21 Entry: 01 pc. Officers mess VIP room 5, Dir Admin Sir', 'Dir Admin & Mat', '2021-09-15 22:21:48', '2021-09-15 22:21:48'),
(407, 'R21023', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '02/02/21  Inclusion:  01 pc. From Major Abdus Salam Sir. Officers mess room 204.', 'ICT', '2021-09-15 22:23:41', '2021-09-15 22:23:41'),
(408, 'R21024', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '21/03/21 Inclusion: 01 pc. From Residential House No: D-11.', NULL, '2021-09-15 22:25:26', '2021-09-15 22:25:26'),
(409, 'R21025', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '26/08/21 Inclusion: 01 pc.  From Computer Archives.', NULL, '2021-09-15 22:27:10', '2021-09-15 22:27:10'),
(410, 'R21026', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '26/08/21 Entry: 01 pc. Major Rakib Sir OIC ICT.', 'ICT', '2021-09-15 22:28:36', '2021-09-15 22:28:36'),
(411, 'PHD20001', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', NULL, '21/09/20 Entry: 1 pc. ICT repair maintenance work', 'ICT', '2021-09-15 22:41:19', '2021-09-15 22:41:19'),
(412, 'PHD20002', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', NULL, '04/10/20 Entry: 01 pc. Comdt Office', 'Comdt', '2021-09-15 22:42:52', '2021-09-15 22:42:52'),
(413, 'PHD20003', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', NULL, '10/10/20 Entry: 01 pc. server work purpose', 'ICT', '2021-09-15 22:43:59', '2021-09-15 22:43:59'),
(414, 'PHD20004', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', NULL, '21/10/20 Entry: 01 pc Manager Sahina Madam R & D', 'R & D', '2021-09-15 22:45:25', '2021-09-15 22:45:25'),
(415, 'PHD21005', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', NULL, '02/03/21 Entry: 01 pc Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-15 22:46:47', '2021-09-15 22:46:47'),
(416, 'PHD21006', 'Portable Hard Disk', NULL, NULL, NULL, 'Toshiba', NULL, '24/03/21 Entry: 01 pc, DD Admin & Mat', 'DD Admin & Mat', '2021-09-15 22:47:40', '2021-09-15 22:47:40'),
(417, 'PHD21007', 'Portable Hard Disk', NULL, NULL, NULL, NULL, NULL, '12/08/21 Inclusion: 01 pc, Star Tech & Engineering Ltd.', 'ICT', '2021-09-15 22:56:35', '2021-09-15 22:56:35'),
(418, 'PHD21008', 'Portable Hard Disk', NULL, NULL, NULL, NULL, NULL, '12/08/21 Entry: 01 pc, Deputy Comdt Sir', 'Deputy Comdt Office', '2021-09-15 22:59:12', '2021-09-15 22:59:12'),
(419, 'IHDD20001', 'Internal Hard Disk', NULL, NULL, NULL, 'Toshiba', NULL, '08/07/20 Entry: 01 pc. AM Billal Sir, CPU Repair Purpose.', 'R & T', '2021-09-15 23:09:21', '2021-09-15 23:09:21'),
(420, 'IHD20002', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '22/07/20 Entry: 01 pc, Man Bari (SA) CPU Repair Purpose Use.', 'Small Arms (SA)', '2021-09-15 23:14:14', '2021-09-15 23:14:14'),
(421, 'IHD20003', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '18/08/20 Entry: 01 pc, Major Mijanur Rahman Mondol ( RM-4)', 'Small Arms (SA)', '2021-09-15 23:15:21', '2021-09-15 23:15:21'),
(422, 'IHD20004', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '13/09/20 Entry: 01 pc, ICT Cell Office , CPU Repair Purpose Use.', 'ICT', '2021-09-15 23:16:22', '2021-09-15 23:16:22'),
(423, 'IHD20005', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '21/09/20 Entry: 01 pc, ICT CPU Repair Purpose Use.', 'ICT', '2021-09-15 23:17:28', '2021-09-15 23:17:28'),
(424, 'IHD20006', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '29/11/20 Entry: 01 pc, SAE Asad ( RM-3) CPU Repair Purpose use', 'Small Arms (SA)', '2021-09-15 23:18:50', '2021-09-15 23:18:50'),
(425, 'IHD21007', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '14/01/21 Inclusion: 03 pcs. M/S Jeba Enterprise', 'ICT', '2021-09-15 23:20:09', '2021-09-15 23:20:09'),
(426, 'IHD21008', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '18/01/21 Entry:  01 pc, ICT Old CPU Repair Purpose Use', 'ICT', '2021-09-15 23:21:29', '2021-09-15 23:21:29'),
(427, 'IHD21009', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '23/01/21 Entry: 01 pc, TPT CPU Repair Purpose Use.', 'MT.', '2021-09-15 23:22:32', '2021-09-15 23:22:32'),
(428, 'IHD210010', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '02/03/21 Entry: 01 pc, Major Salauddin Sir Medical CPU Repair purpose use', 'Medical', '2021-09-15 23:27:23', '2021-09-15 23:27:23'),
(429, 'IHD210011', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '16/03/21 Entry: 01 pc, SAE Shahidul Islam sir CPU Repair  Purpose Use.', 'ICT', '2021-09-16 00:38:37', '2021-09-16 00:38:37'),
(430, 'IHD210012', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '17/03/21 Entry: 01 pc, Not workable Wastage board.', 'Maint Store', '2021-09-16 00:40:10', '2021-09-16 01:48:31'),
(431, 'IHD210013', 'Internal Hard Disk', NULL, '1TB', NULL, 'Toshiba', NULL, '12/09/21 Entry: 01 pc, OA Uttpol , Purchase', 'Purchase', '2021-09-16 00:41:51', '2021-09-16 00:41:51'),
(432, 'Laptop-1', 'Laptop', 'Tablet PC With Keyboard', '16 Gb', NULL, 'HP', '1631779097.jpg', '30/06/21 Entry: 01 pc, From ERP Goods. ( 10th Ge Intel Corei7 Processor 256 GB, RAM 16 GB) Major Khondokar Rakib Sir OIC ICT', 'OIC ICT cell', '2021-09-16 01:57:40', '2021-09-16 01:58:17'),
(433, 'Test Cisco', 'Firewall', 'Sophos', NULL, 'Cisco ASA 5520 Serise', 'Cisco', NULL, NULL, NULL, '2021-09-17 19:42:23', '2021-09-17 19:42:23'),
(434, 'R21001', 'Router', NULL, NULL, NULL, 'Cisco', NULL, 'Entry Date : 15-09-2021', 'ICT', '2021-09-17 19:47:46', '2021-09-17 19:47:46'),
(435, 'F21001', 'Firewall', NULL, 'Hardware Firewall', 'Cisco ASA 5520 Serise', 'Cisco', NULL, '0ld 01', 'ICT', '2021-09-17 19:51:11', '2021-09-17 19:51:11'),
(436, 'S21002', 'Switch', NULL, 'Non POE', 'SG350-28SFP', 'Cisco', NULL, '8 pcs', 'ICT', '2021-09-17 19:53:46', '2021-09-17 20:13:37'),
(437, 'S21001', 'Switch', NULL, 'Non POE', 'SG350-24SP', 'Cisco', NULL, '1 pcs', 'ICT', '2021-09-17 20:11:59', '2021-09-17 20:12:54'),
(438, 'S21003', 'Switch', 'Cisco', 'POE', 'SF 350-24p', 'Cisco', NULL, '7 pcs', 'ICT', '2021-09-17 20:14:48', '2021-09-17 20:14:48'),
(439, 'S21004', 'Switch', 'Cisco', NULL, '2960XR series', 'Cisco', NULL, '24 port  with SFP module', 'ICT', '2021-09-17 20:16:08', '2021-09-17 20:16:08'),
(440, 'S21005', 'Switch', 'Cisco', 'POE', '2960XR series', 'Cisco', NULL, '16 port switch , 6 pcs', 'ICT', '2021-09-17 20:16:53', '2021-09-17 20:16:53'),
(441, 'S21009', 'Switch', 'Cisco', 'POE', '2960XR series', 'Cisco', NULL, '8 port cisco POE Switch', 'ICT', '2021-09-17 20:19:45', '2021-09-17 20:19:45'),
(442, 'Server - 001', 'Server', 'Database Server', NULL, 'UCS C240 M5', 'Cisco', NULL, '3 pcs', 'ICT', '2021-09-17 20:23:07', '2021-09-17 20:26:28'),
(443, 'Printer-0001', 'Printer', NULL, 'Epson L3110', NULL, 'Epson', NULL, 'Commandant sir use', 'Comdt BOF', '2021-09-17 20:24:21', '2021-09-17 20:33:55'),
(444, 'Printer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-17 20:24:31', '2021-09-17 20:24:31'),
(445, 'Server - 002', 'Server', 'Data recovery Server', NULL, NULL, 'Cisco', NULL, NULL, 'ICT', '2021-09-17 20:25:04', '2021-09-17 20:26:39'),
(446, 'Sever-003', 'Server', 'API Gateway Server', NULL, 'UCS C240 M5', 'Cisco', NULL, '1 pcs', 'ICT', '2021-09-17 20:27:27', '2021-09-17 20:27:27'),
(447, '42 U', 'Rack', NULL, NULL, NULL, 'Vivanco', NULL, '01 pc-02', 'ICT', '2021-09-17 20:32:12', '2021-09-17 20:32:12'),
(448, '15 U', 'Rack', NULL, NULL, 'VA 561501100', 'Vivanco', NULL, '15 pcs', 'ICT', '2021-09-17 20:33:16', '2021-09-17 20:33:16'),
(449, '9 U', 'Rack', NULL, NULL, 'VSA 6609.01.100', NULL, NULL, '20 pcs', 'ICT', '2021-09-17 20:33:58', '2021-09-17 20:33:58'),
(450, 'Printer-0002', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'Office Asst, BOF HQ', 'Comdt BOF', '2021-09-17 20:37:12', '2021-09-17 20:37:12'),
(451, 'Printer-0003', 'Printer', NULL, 'HP P 2035', NULL, 'HP', NULL, 'Office Asst, BOF HQ', 'Comdt BOF', '2021-09-17 20:38:31', '2021-09-17 20:38:31'),
(452, 'Printer-0004', 'Printer', NULL, 'HP M 252n', NULL, 'HP', NULL, 'DY Comdt, BOF HQ', 'Deputy Comdt Office', '2021-09-17 20:39:52', '2021-09-17 20:39:52'),
(453, 'Printer-0005', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'Office Asst, BOF HQ', 'Comdt BOF', '2021-09-17 20:41:03', '2021-09-17 20:41:03'),
(454, 'S21008', 'Switch', 'Cisco', NULL, 'SFP +', 'Cisco', NULL, 'Cisco S class 10 GB SFP + Module SOSS 116521348', 'ICT', '2021-09-17 20:43:34', '2021-09-17 20:43:34'),
(455, 'Printer-0006', 'Printer', NULL, 'Brother- T510W', NULL, 'Brother', NULL, 'Dir Admin & Mat sir', 'Dir Admin & Mat', '2021-09-17 20:45:19', '2021-09-17 20:45:19'),
(456, 'Printer-0007', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'PA to Dir Admin & Mat', 'DD Admin & Mat', '2021-09-17 20:47:07', '2021-09-17 20:47:07'),
(457, 'Printer-0008', 'Printer', NULL, 'Epson-430', NULL, 'Epson', NULL, 'DD Admin & Mat', 'DD Admin & Mat', '2021-09-17 20:48:20', '2021-09-17 20:48:20'),
(458, 'Printer-0009', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'PA to DD Admin & Mat', 'DD Admin & Mat', '2021-09-17 20:49:20', '2021-09-17 20:49:20'),
(459, 'Printer-0010', 'Printer', NULL, 'LBP 3008A', NULL, 'LBP', NULL, 'PA to DD Admin & Mat', 'DD Admin & Mat', '2021-09-17 20:50:29', '2021-09-17 20:50:29'),
(460, 'Printer-0011', 'Printer', NULL, 'HP P 1120', NULL, 'HP', NULL, 'DD Admin', 'DD Admin', '2021-09-17 20:51:59', '2021-09-17 20:51:59'),
(461, 'Printer-0012', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'MAP', 'MAP', '2021-09-17 20:52:54', '2021-09-17 20:52:54'),
(462, 'Printer-0013', 'Printer', NULL, 'Epson L-130', NULL, 'Epson', NULL, 'OS, R & T', 'R & T', '2021-09-17 21:34:46', '2021-09-17 21:34:46'),
(463, 'Printer-0014', 'Printer', NULL, 'TOS-4518A', NULL, 'Toshiba', NULL, 'OA R & T', 'R & T', '2021-09-17 21:35:43', '2021-09-17 21:35:43'),
(464, 'Printer-0015', 'Printer', NULL, 'HP P 1102', NULL, 'HP', NULL, 'SA CR', 'MAP', '2021-09-17 21:37:54', '2021-09-17 21:37:54'),
(465, 'Printer-0016', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'OS Workman Record', 'Workman Record', '2021-09-17 21:38:43', '2021-09-17 21:38:43'),
(466, 'Printer-0017', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'SA workman record.', 'Workman Record', '2021-09-17 21:39:50', '2021-09-17 21:39:50'),
(467, 'Printer-0018', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA workman record.', 'Workman Record', '2021-09-17 21:40:48', '2021-09-17 21:40:48'),
(468, 'printer-0019', 'Printer', NULL, 'HP P 1102', NULL, 'HP', NULL, 'OA staff record.', 'Stuff Record', '2021-09-17 21:41:41', '2021-09-17 21:41:41'),
(469, 'Printer-0020', 'Printer', NULL, 'HP M 201n', NULL, 'HP', NULL, 'OA Staff record.', 'Staff Record', '2021-09-17 21:42:48', '2021-09-17 21:42:48'),
(470, 'Printer-0021', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'OA Finance', 'Finance', '2021-09-17 21:43:32', '2021-09-17 21:43:32'),
(471, 'Printer-0022', 'Printer', NULL, 'TOS-4518A', NULL, 'Toshiba', NULL, 'SA Billing', 'Billing', '2021-09-17 21:44:26', '2021-09-17 21:44:26'),
(472, 'printer-0023', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SA Penson', 'Person', '2021-09-17 21:45:14', '2021-09-17 21:45:14'),
(473, 'Printer-0024', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'APO, Officers Record.', 'Officer Record', '2021-09-17 21:46:55', '2021-09-17 21:46:55'),
(474, 'D-19024', 'Desktop', 'Clone Desktop', NULL, NULL, 'HP', '1631938651.jpg', 'Office super, Rini Madam. Welfare', 'Welfare', '2021-09-17 22:17:01', '2021-09-17 22:17:31'),
(475, 'D-19025', 'Desktop', 'Clone Desktop', NULL, NULL, 'HP', '1631939568.jpg', 'Office Assistant Najrul Islam ,ICT.', 'ICT', '2021-09-17 22:32:29', '2021-09-17 22:32:48'),
(476, 'Printer-0025', 'Printer', NULL, 'HP P 1102', NULL, 'HP', NULL, 'SA Officers Record.', 'Officer Record', '2021-09-18 00:05:50', '2021-09-18 00:05:50'),
(477, 'Printer-0026', 'Printer', NULL, 'HP P 1102', NULL, 'HP', NULL, 'SA Officers Record.', 'Officer Record', '2021-09-18 00:06:59', '2021-09-18 00:06:59'),
(478, 'Printer-0027', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'Man Security.', 'Security', '2021-09-18 00:07:48', '2021-09-18 00:07:48'),
(479, 'Printer-0028', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'Man Security.', 'Security', '2021-09-18 00:08:21', '2021-09-18 00:08:21'),
(480, 'printer-0029', 'Printer', NULL, 'LBP 6230dn', NULL, 'LBP', NULL, 'OA Security.', 'Security', '2021-09-18 00:09:02', '2021-09-18 00:09:02'),
(481, 'Printer-0030', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'OS Security', 'Security', '2021-09-18 00:09:40', '2021-09-18 00:09:40'),
(482, 'Printer-0031', 'Printer', NULL, 'LBP 6230dn', NULL, 'LBP', NULL, 'SGT Security.', 'Security', '2021-09-18 00:40:30', '2021-09-18 00:40:30'),
(483, 'Printer-0032', 'Printer', NULL, 'Epson-430', NULL, 'Epson', NULL, 'Monitoring Cell.', 'Security', '2021-09-18 00:41:15', '2021-09-18 00:41:15'),
(484, 'printer-0033', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'CPL Medical', 'Medical', '2021-09-18 00:42:53', '2021-09-18 00:42:53'),
(485, 'printer-0034', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'Medical', 'Medical', '2021-09-18 00:44:33', '2021-09-18 00:44:33'),
(486, 'printer-0035', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'Dental Medical', 'Medical', '2021-09-18 00:45:11', '2021-09-18 00:45:11'),
(487, 'printer-0036', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'GK Medical', 'Medical', '2021-09-18 00:45:52', '2021-09-18 00:45:52'),
(488, 'printer-0037', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'Store Medical', 'Medical', '2021-09-18 00:51:10', '2021-09-18 00:51:10'),
(489, 'printer-0038', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'OA Resident', 'Recident', '2021-09-18 00:53:19', '2021-09-18 00:53:19'),
(490, 'printer-0039', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', NULL, 'OS Ration Office.', 'Ration', '2021-09-18 00:54:54', '2021-09-18 00:54:54'),
(491, 'printer-0040', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP', NULL, 'OA Purchase.', 'Purchase', '2021-09-18 01:19:57', '2021-09-18 01:19:57'),
(492, 'printer-0041', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'OS Recident.', 'Recident', '2021-09-18 01:20:44', '2021-09-18 01:20:44'),
(493, 'printer-0042', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP', NULL, 'SA Welfare', 'Welfare', '2021-09-18 01:21:37', '2021-09-18 01:21:37'),
(494, 'printer-0043', 'Printer', NULL, 'HP- P1005', NULL, 'HP', NULL, 'OA Miscellaneous', 'Miscellaneous', '2021-09-18 01:23:42', '2021-09-18 01:23:42'),
(495, 'printer-0044', 'Printer', NULL, 'Cannon LBP 3300', NULL, NULL, NULL, 'SA MT', 'MT.', '2021-09-18 01:24:16', '2021-09-18 01:24:16'),
(496, 'printer-0045', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'OA MT', 'MT.', '2021-09-18 01:24:50', '2021-09-18 01:24:50'),
(497, 'printer-0046', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', NULL, 'Dir production sir.', 'DIR production Office', '2021-09-18 01:25:34', '2021-09-18 01:25:34'),
(498, 'printer-0047', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'PA to Dir Production.', 'DIR production Office', '2021-09-18 01:26:17', '2021-09-18 01:26:17'),
(499, 'printer-0048', 'Printer', NULL, 'HP-402', NULL, 'HP', NULL, 'AM pro co-cordiant cell.', 'Production C-cordiant Cell', '2021-09-18 01:27:40', '2021-09-18 01:27:40'),
(500, 'printer-0049', 'Printer', NULL, 'TOS-STD-4518A', NULL, 'Toshiba-estud', NULL, 'SAE Production  Cell.', 'Production C-cordiant Cell', '2021-09-18 01:30:19', '2021-09-18 01:30:19'),
(501, 'printer-0050', 'Printer', NULL, 'TOS-STD-4518A', NULL, 'Toshiba-estud', NULL, 'TH Pro c-cordiant cell.', 'Production C-cordiant Cell', '2021-09-18 01:31:15', '2021-09-18 01:31:15'),
(502, 'Printer-0051', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'SA CC-1 ( SAA)', 'Small Arms Ammo (SAA)', '2021-09-18 01:34:16', '2021-09-18 01:34:16'),
(503, 'printer-0052', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'Man SAA (CC-1)', 'Small Arms Ammo (SAA)', '2021-09-18 01:35:11', '2021-09-18 01:35:11'),
(504, 'printer-0053', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'AE SAA ( CC-1)', 'Small Arms Ammo (SAA)', '2021-09-18 01:36:19', '2021-09-18 01:36:19'),
(505, 'printer-0054', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'CA-1 (SAA) office', 'Small Arms Ammo (SAA)', '2021-09-18 01:37:12', '2021-09-18 01:37:12'),
(506, 'printer-0055', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'CA-1 (SAA) Office.', 'Small Arms Ammo (SAA)', '2021-09-18 01:39:44', '2021-09-18 01:39:44'),
(507, 'printer-0056', 'Printer', NULL, 'Epson-LQ-310', NULL, 'Epson', NULL, 'CA-1 ( FP-2). (SAA) Office', 'Small Arms Ammo (SAA)', '2021-09-18 01:40:51', '2021-09-18 01:40:51'),
(508, 'D21003', 'Desktop', 'Clone Desktop', 'Core i5', NULL, 'Intel', NULL, 'ICT Office Use for Asraf vai', 'ICT', '2021-09-18 20:08:12', '2021-09-18 20:08:12'),
(509, 'Printer-0057', 'Printer', NULL, 'Epson-LQ-310', NULL, 'Epson', NULL, 'CA-1 (FP-2)', 'Small Arms Ammo (SAA)', '2021-09-18 20:11:42', '2021-09-18 20:11:42'),
(510, 'printer-0058', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'DD HAG.', 'DD HAG', '2021-09-18 20:12:32', '2021-09-18 20:12:32'),
(511, 'printer-0059', 'Printer', NULL, 'TOS-STD', NULL, 'Toshiba-estud', NULL, 'SAE HAG Office', 'DD HAG Office', '2021-09-18 20:13:25', '2021-09-18 20:13:25'),
(512, 'printer-0060', 'Printer', NULL, 'HP P 1102', NULL, 'HP', NULL, 'AM Fuse Assembly', 'DD HAG Office', '2021-09-18 20:14:18', '2021-09-18 20:14:18'),
(513, 'printer-0061', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'MAN HAG', 'DD HAG', '2021-09-18 20:15:16', '2021-09-18 20:15:16'),
(514, 'printer-0062', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'MAN HAG ,GP-3 Office.', 'DD HAG Office', '2021-09-18 20:17:22', '2021-09-18 20:17:22'),
(515, 'printer-0063', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'SAE Fuse Assembly, Gp-3 Office', 'DD HAG Office', '2021-09-18 20:18:37', '2021-09-18 20:18:37'),
(516, 'printer-0064', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'MAN TNT', 'HAG', '2021-09-18 20:19:30', '2021-09-18 20:19:30'),
(517, 'printer-0065', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', NULL, 'AE RM-1', 'Small Arms (SA)', '2021-09-18 20:20:17', '2021-09-18 20:20:17'),
(518, 'printer-0066', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SAE RM-1', 'Small Arms (SA)', '2021-09-18 20:20:53', '2021-09-18 20:20:53'),
(519, 'printer-0067', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'RM-2 (SA-2) Office', 'Small Arms (SA)', '2021-09-18 20:24:51', '2021-09-18 20:24:51'),
(520, 'printer-0068', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP', NULL, 'MAN HT', 'Small Arms (SA)', '2021-09-18 20:25:38', '2021-09-18 20:25:38'),
(521, 'printer-0069', 'Printer', NULL, 'HP P 1102', NULL, 'HP', NULL, 'MAN HT', 'Small Arms (SA)', '2021-09-18 20:26:15', '2021-09-18 20:26:15'),
(522, 'printer-0070', 'Printer', NULL, 'HP P 1102', NULL, 'HP', NULL, 'RM-4 Office ( DN-5)', 'Small Arms (SA)', '2021-09-18 20:27:08', '2021-09-18 20:27:08'),
(523, 'printer-0071', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'WISA', 'Small Arms (SA)', '2021-09-18 20:28:25', '2021-09-18 20:28:25'),
(524, 'printer-0072', 'Printer', NULL, 'HP-402', NULL, 'HP', NULL, 'RM-1', 'Small Arms (SA)', '2021-09-18 20:30:27', '2021-09-18 20:30:27'),
(525, 'printer-0073', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'RM-1', 'Small Arms (SA)', '2021-09-18 20:32:02', '2021-09-18 20:32:02'),
(526, 'printer-0074', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'RM-4', 'Small Arms (SA)', '2021-09-18 20:32:45', '2021-09-18 20:32:45'),
(527, 'printer-0075', 'Printer', NULL, 'Samsung-ML-1866', NULL, 'Samsung', NULL, 'RM-1', 'Small Arms (SA)', '2021-09-18 20:33:34', '2021-09-18 20:33:34'),
(528, 'printer-0076', NULL, NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SA Office', 'Small Arms (SA)', '2021-09-18 20:34:48', '2021-09-18 20:34:48'),
(529, 'printer-0077', 'Printer', NULL, 'Hp-1102W', NULL, 'HP', NULL, 'RM-1', 'Small Arms (SA)', '2021-09-18 20:35:33', '2021-09-18 20:35:33'),
(530, 'printer-0078', 'Printer', NULL, 'Epson-L220', NULL, 'Epson', NULL, 'Dir plg & maint sir', 'Dir PLG & maint Office', '2021-09-18 20:36:30', '2021-09-18 20:36:30'),
(531, 'printer-0079', 'Printer', NULL, 'Samsung ML-1660', NULL, 'Samsung', NULL, 'PA To DA Plg & Maint', 'Dir PLG & maint Office', '2021-09-18 20:38:20', '2021-09-18 20:38:20'),
(532, 'printer-0080', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'PA To Dir Plg & Maint', 'Dir PLG & maint Office', '2021-09-18 20:39:02', '2021-09-18 20:39:02'),
(533, 'printer-0081', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA MAN Plg Office', 'Man Plg Office', '2021-09-18 20:39:58', '2021-09-18 20:39:58'),
(534, 'printer-0082', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'SAE P&P Office', 'P & P', '2021-09-18 20:41:06', '2021-09-18 20:41:06'),
(535, 'printer-0083', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SAE P&P', 'P & P', '2021-09-18 20:41:54', '2021-09-18 20:41:54'),
(536, 'printer-0084', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'AE PSI', 'PSI', '2021-09-18 20:42:35', '2021-09-18 20:42:35'),
(537, 'printer-0085', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'AE Selim', 'MC', '2021-09-18 20:43:36', '2021-09-18 20:43:36'),
(538, 'printer-0086', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SAE Abdur Razzak', 'MC', '2021-09-18 20:44:24', '2021-09-18 20:44:24'),
(539, 'printer-0087', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA Kaniz Fatema', 'MC', '2021-09-18 20:45:22', '2021-09-18 20:45:22'),
(540, 'printer-0088', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SAE R & D', 'R & D', '2021-09-18 21:38:33', '2021-09-18 21:38:33'),
(541, 'printer-0089', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'R & D office', 'R & D', '2021-09-18 21:39:45', '2021-09-18 21:39:45'),
(542, 'printer-0090', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'Progress Office Mat Lab', 'Matlab', '2021-09-18 21:40:32', '2021-09-18 21:40:32'),
(543, 'printer-0091', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'AC Matlab', 'Matlab', '2021-09-18 21:41:40', '2021-09-18 21:41:40'),
(544, 'printer-0092', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'AM ISI', 'ISI', '2021-09-18 21:42:31', '2021-09-18 21:42:31'),
(545, 'printer-0093', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'ISI Office', 'ISI', '2021-09-18 21:45:33', '2021-09-18 21:45:33'),
(546, 'printer-0094', 'Printer', NULL, 'Samsung ML 1640', NULL, 'Samsung', NULL, 'AM CTM', 'CTM', '2021-09-18 21:46:27', '2021-09-18 21:46:27'),
(547, 'printer-0095', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'Canon', NULL, 'AE CTM', 'CTM', '2021-09-18 21:47:09', '2021-09-18 21:47:09'),
(548, 'printer-0096', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'SAE CTM', 'CTM', '2021-09-18 21:47:53', '2021-09-18 21:47:53'),
(549, 'printer-0097', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA Maint Office', 'CM', '2021-09-18 21:48:42', '2021-09-18 21:48:42'),
(550, 'printer-0098', 'Printer', NULL, 'Epson L-130', NULL, 'Epson', NULL, 'TH Maint Office', 'CM', '2021-09-18 21:49:25', '2021-09-18 21:49:25'),
(551, 'printer-0099', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'Maint Office, CM', 'CM', '2021-09-18 21:51:12', '2021-09-18 21:51:12'),
(552, 'printer-0100', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'AE MM', 'MM', '2021-09-18 22:15:10', '2021-09-18 22:15:10'),
(553, 'printer-0101', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'AM Service', 'Man service', '2021-09-18 22:15:53', '2021-09-18 22:15:53'),
(554, 'printer-0102', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA Service', 'Man service', '2021-09-18 22:16:28', '2021-09-18 22:16:28'),
(555, 'printer-0103', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'MAN ME', 'ME', '2021-09-18 22:17:16', '2021-09-18 22:17:16'),
(556, 'printer-0104', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'GK ME Store', 'ME', '2021-09-18 22:18:15', '2021-09-18 22:18:15'),
(557, 'printer-0105', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'Exchange Server', 'Exchange', '2021-09-18 22:18:54', '2021-09-18 22:18:54'),
(558, 'printer-0108', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'Progress office', 'R & D', '2021-09-18 22:19:43', '2021-09-18 22:19:43'),
(559, 'printer-0109', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'DD Purchase', 'Purchase', '2021-09-18 22:29:13', '2021-09-18 22:29:13'),
(560, 'printer-0110', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'MAN Purchase', 'Purchase', '2021-09-18 22:29:55', '2021-09-18 22:29:55'),
(561, 'printer-0112', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'PO Purchase', 'Purchase', '2021-09-18 22:30:37', '2021-09-18 22:30:37'),
(562, 'printer-0113', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OS Purchase', 'Purchase', '2021-09-18 22:31:12', '2021-09-18 22:31:12'),
(563, 'printer-0114', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SA Purchase', 'Purchase', '2021-09-18 22:32:08', '2021-09-18 22:32:08'),
(564, 'printer-0115', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'SA Purchase', 'Purchase', '2021-09-18 22:32:41', '2021-09-18 22:32:41'),
(565, 'printer-0116', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'SA Purchase', 'Purchase', '2021-09-18 22:33:13', '2021-09-18 22:33:13'),
(566, 'printer-0117', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA Purchase', 'Purchase', '2021-09-18 22:33:46', '2021-09-18 22:33:46'),
(567, 'printer-0118', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'APO Purchase', 'Purchase', '2021-09-18 22:34:15', '2021-09-18 22:34:15'),
(568, 'printer-0119', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'PO Purchase', 'Purchase', '2021-09-18 22:35:58', '2021-09-18 22:35:58'),
(569, 'printer-0120', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA Purchase', 'Purchase', '2021-09-18 22:36:25', '2021-09-18 22:36:25'),
(570, 'printer-0121', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OS Purchase', 'Purchase', '2021-09-18 22:36:49', '2021-09-18 22:36:49'),
(571, 'printer-0122', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'APO Purchase', 'Purchase', '2021-09-18 22:37:17', '2021-09-18 22:37:17'),
(572, 'printer-0123', 'Printer', NULL, 'HP P 1102', NULL, 'HP', NULL, 'SA Purchase', 'Purchase', '2021-09-18 22:37:56', '2021-09-18 22:37:56'),
(573, 'printer-0124', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SA Purchase', 'Purchase', '2021-09-18 22:38:39', '2021-09-18 22:38:39'),
(574, 'printer-0125', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', NULL, 'OA Purchase', 'Purchase', '2021-09-18 22:39:26', '2021-09-18 22:39:26'),
(575, 'printer-0126', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'SA Purchase', 'Purchase', '2021-09-18 22:40:25', '2021-09-18 22:40:25'),
(576, 'printer-0127', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA Purchase', 'Purchase', '2021-09-18 22:41:06', '2021-09-18 22:41:06'),
(577, 'printer-0128', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'OA Purchase', 'Purchase', '2021-09-18 22:41:36', '2021-09-18 22:41:36'),
(578, 'printer-0129', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, NULL, 'Purchase', '2021-09-18 22:49:43', '2021-09-18 22:49:43'),
(579, 'printer-0130', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', NULL, NULL, 'Purchase', '2021-09-18 22:53:38', '2021-09-18 22:53:38'),
(580, 'printer-0131', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'OA ICT Cell', 'ICT', '2021-09-18 22:57:25', '2021-09-18 22:57:25'),
(581, 'Printer-0132', 'Printer', NULL, 'TOS-STD-4518A', NULL, 'Toshiba-estud', NULL, 'ICT Office Use', 'ICT', '2021-09-18 23:01:15', '2021-09-18 23:01:15'),
(582, 'D-19308', 'Desktop', 'Clone Desktop', NULL, NULL, NULL, NULL, 'HAG TNT , Felling Shop.', 'HAG', '2021-09-18 23:48:11', '2021-09-18 23:49:05'),
(583, 'D-21001', 'Desktop', 'Clone Desktop', NULL, NULL, 'HP', NULL, 'HT Shop, AE Nuri Madam.', 'Small Arms (SA)', '2021-09-18 23:50:16', '2021-09-18 23:50:16'),
(584, 'w-21002', 'Workstation PC', NULL, 'Core i7', NULL, 'Intel', NULL, 'ETL Project, MAN Sahina Madam.', 'R & D', '2021-09-18 23:52:13', '2021-09-18 23:52:13'),
(585, 'D-21003', 'Desktop', NULL, 'Core i5', NULL, 'Intel', NULL, 'ICT Office Use For Asraf Vai.', 'ICT', '2021-09-18 23:54:24', '2021-09-18 23:54:24'),
(586, 'printer-0134', 'Printer', NULL, 'HP M 402 dn', NULL, 'HP Pro', NULL, 'Central Record, Entry Date: 19/08/2021, 01 pc.', 'Central Record', '2021-09-19 00:16:00', '2021-09-19 00:28:43'),
(587, 'printer-0133', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', NULL, 'ETL Project, MAN Sahina Madam. Entry Date: 29/08/2021 , 01 pc.', 'R & D', '2021-09-19 00:19:15', '2021-09-19 00:28:53'),
(588, 'printer-0135', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', NULL, 'Entry Date: 29/08/2021 , 01 pc. CTG', 'CTG', '2021-09-19 00:30:54', '2021-09-19 00:30:54'),
(589, 'printer-0136', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', NULL, 'Entry Date: 29/08/2021 , 01 pc. OIC ICT.', 'OIC ICT cell', '2021-09-19 00:33:12', '2021-09-19 00:33:12'),
(590, 'printer-0137', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', NULL, 'Entry Date: 013/09/2021 HT Shop', 'Small Arms (SA)', '2021-09-19 00:37:23', '2021-09-19 00:37:23'),
(591, 'printer-0138', 'Printer', NULL, 'Epson -M 2140', NULL, 'Epson', NULL, 'AM Main store.', 'Main store', '2021-09-19 22:28:16', '2021-09-19 22:28:16'),
(592, 'printer-0139', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', NULL, 'Receive Control Office.', 'Receive Control', '2021-09-19 22:29:39', '2021-09-19 22:29:39'),
(593, 'printer-0140', 'Printer', NULL, 'HP -M 404dn', NULL, 'HP Pro', NULL, 'APO Main Store.', 'Main store', '2021-09-19 22:30:25', '2021-09-19 22:30:25'),
(594, 'monitor-20001', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Inclusion: 01 pc, Major Jahid Sir. ( Monitor Not Workable).', 'Small Arms (SA)', '2021-09-19 22:38:10', '2021-09-19 22:38:44'),
(595, 'monitor-20002', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Inclusion: 01 pc, From Welfare office. ( Not workable).', 'Welfare', '2021-09-19 22:40:07', '2021-09-19 22:40:07'),
(596, 'monitor-20003', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Inclusion: 01 pc from Welfare. ( Not workable)', 'Welfare', '2021-09-19 22:40:52', '2021-09-19 22:40:52'),
(597, 'monitor-20004', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Inclusion: 01 pc, From Fawkal Tranning Center ( Not workable)', 'Planning', '2021-09-19 22:42:21', '2021-09-19 22:42:21'),
(598, 'monitor-20005', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Inclusion: 01 pc From  Arra Technology Ltd.', NULL, '2021-09-19 22:44:38', '2021-09-19 22:44:38'),
(599, 'montior-20006', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Entry: 01 pc, AM Urmi Mostofa Madam', 'Main store', '2021-09-19 22:46:35', '2021-09-19 22:46:35'),
(600, 'monitor-20007', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Entry: 01 pc, Camara man Rasel Vai.', 'Security', '2021-09-19 22:47:29', '2021-09-19 22:47:29'),
(601, 'monitor-20008', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Inclusion: 01 pc, From Camara  Man Rasel vai,', 'Security', '2021-09-19 22:48:14', '2021-09-19 22:48:14'),
(602, 'monitor-20009', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Entry: 01 pc, AE Selim Sir (MC)', 'MC', '2021-09-19 22:49:05', '2021-09-19 22:49:05'),
(603, 'monitor-20010', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Inclusion: 01 pc, Purchase Office, Room No 55.', 'Purchase', '2021-09-19 22:50:02', '2021-09-19 22:50:02'),
(604, 'monitor-20011', 'Monitor', NULL, NULL, NULL, 'DELL', NULL, 'Inclusion: 01 pc, From Purchase Office , Room No 56', 'Purchase', '2021-09-19 22:51:14', '2021-09-19 22:51:14'),
(605, 'monitor-20012', 'Monitor', NULL, NULL, NULL, 'DELL', NULL, 'Date: 27/12/2020 , Entry: 01 pc,  Production Co-ordinator Cell', 'Production C-cordiant Cell', '2021-09-19 22:52:56', '2021-09-19 22:52:56'),
(606, 'monitor-21013', 'Monitor', NULL, NULL, NULL, 'DELL', NULL, 'Date: 06/01/2021, Entry: 01 pc, DD SAA Office', 'Small Arms Ammo (SAA)', '2021-09-19 22:56:49', '2021-09-19 22:56:49'),
(607, 'monitor-21014', 'Monitor', NULL, NULL, NULL, NULL, NULL, 'Date: 14/02/2021, Entry: 01 pc, Major Rakib Sir. Officer Mess Room 205', 'OIC ICT cell', '2021-09-19 23:12:13', '2021-09-19 23:12:13'),
(608, 'monitor-21015', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Date: 02/03/2021 Entry: 01 pc, Chemist Abbas ALi Sir QCL.', 'R & D', '2021-09-19 23:14:46', '2021-09-19 23:14:46'),
(609, 'monitor-21016', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Date: 04/03/2021 Entry: 01 pc, AE Oliour Rahman Sir ISI', 'ISI', '2021-09-19 23:15:58', '2021-09-19 23:15:58'),
(610, 'monitor-21017', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Date: 29/08/2021 Entry: 01 pc, MODC Office', 'Security', '2021-09-19 23:25:42', '2021-09-19 23:25:42'),
(611, 'monitor-21018', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Date: 09/08/2021 Entry: 01 pc,  From ERP lab to Deputy Comdt Sir.', 'Deputy Comdt Office', '2021-09-19 23:29:32', '2021-09-19 23:29:32'),
(612, 'monitor-21019', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Date: 18/08/2021, Inclusion: ( 10+10)=20 pcs. Techno Test From ( MRO).', 'ICT', '2021-09-19 23:32:08', '2021-09-19 23:32:08'),
(613, 'monitor-21020', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Date: 06/09/2021 Entry: 01 pc,  OA Aziz , TPT', 'MT.', '2021-09-19 23:33:31', '2021-09-19 23:33:31'),
(614, 'monitor-21021', 'Monitor', NULL, NULL, NULL, 'HP', NULL, 'Date: 14/09/2021. Inclusion: 01 pc, From Deputy Comdt To ERP Lab', 'ICT', '2021-09-19 23:35:39', '2021-09-19 23:35:39'),
(615, 'Router-21027', 'Router', NULL, NULL, NULL, 'D-Link', NULL, 'Date: 13/01/2021, Entry: 01 pc, Officer Mess VIP Room', 'Officers Mess', '2021-09-19 23:54:04', '2021-09-19 23:54:04'),
(616, 'Router-21028', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 28/01/2021, Entry: 01 pc, Officers Mess, Room NO ( 7,8,9)', 'Officers Mess', '2021-09-19 23:55:19', '2021-09-19 23:55:19'),
(617, 'Router-21029', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 08/02.2021 , Entry: 01 pc, Medical.', 'Medical', '2021-09-19 23:55:54', '2021-09-19 23:55:54'),
(618, 'Router-21030', 'Router', NULL, NULL, NULL, 'Tenda', NULL, 'Date: 11/02/2021, Entry: 01 pc, Major Rakib Sir, Officer Mess, Room 205', 'OIC ICT cell', '2021-09-19 23:59:18', '2021-09-20 00:05:13'),
(619, 'Router-21031', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 07/03/21 Entry: 01 pc, Deputy Comdt', 'Deputy Comdt Office', '2021-09-20 00:04:12', '2021-09-20 00:04:12'),
(620, 'Router-21032', 'Router', NULL, NULL, NULL, NULL, NULL, 'Date: 23/03/21, Entry: 01 pc,  Director Production', 'DIR production Office', '2021-09-20 00:07:17', '2021-09-20 00:07:17'),
(621, 'Router-21033', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 02/03/21, Entry: 02 pcs.  IA & E', 'IA & E', '2021-09-20 00:09:59', '2021-09-20 00:09:59'),
(622, 'Router-21034', 'Router', NULL, NULL, NULL, NULL, NULL, 'Date: 21/03/21 Entry: 02 pcs. Deputy Comdt House: B-3', 'Deputy Comdt Bhabon', '2021-09-20 00:11:34', '2021-09-20 00:11:34'),
(623, 'Router-21035', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 07/04/21, Entry: 01pc. Manager Security.', 'Security', '2021-09-20 00:13:15', '2021-09-20 00:13:15'),
(624, 'Router-21036', 'Router', NULL, NULL, NULL, 'D-Link', NULL, 'Date: 22/04/21, Entry: 01 pc.  Deputy Comdt Recident.', 'Deputy Comdt Bhabon', '2021-09-20 00:14:53', '2021-09-20 00:14:53'),
(625, 'Router-21037', 'Router', NULL, NULL, NULL, 'Tenda', NULL, 'Date:  16/06/21 Entry: 01 pc, DD Admin & Mat.', 'DD Admin & Mat', '2021-09-20 00:16:06', '2021-09-20 00:16:06'),
(626, 'Router-21038', 'Router', NULL, NULL, NULL, 'D-Link', NULL, 'Date: 05/07/21. Entry: 01 pc.  TPT', 'MT.', '2021-09-20 00:16:45', '2021-09-20 00:16:45'),
(627, 'Router-21039', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 07/06/21 Entry: 01 pc,  DD HAG.', 'DD HAG', '2021-09-20 00:17:29', '2021-09-20 00:17:29'),
(628, 'Router-21040', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 15/07/21 , Entry: 01 pc,  ICT Office.', 'ICT-Office', '2021-09-20 00:18:11', '2021-09-20 00:18:11'),
(629, 'Router-21041', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 17/07/21 Entry: 02 pc, Dir Planning & Mat, House: B-5', 'Dir PLG & maint Office', '2021-09-20 00:19:42', '2021-09-20 00:19:42'),
(630, 'Router-21042', 'Router', NULL, NULL, NULL, 'TP-Link', NULL, 'Date: 02/08/21, Entry: 01, Major Rakib Sir, House: D-9', 'OIC ICT cell', '2021-09-20 00:21:14', '2021-09-20 00:21:14'),
(631, 'Pendrive-20001', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '08/07/2021, entry-01pcs, DD Plg, Lt col Arman', 'DD PLG', '2021-09-20 20:28:56', '2021-09-20 20:31:22'),
(632, 'Pendrive-20002', 'Pendrive', NULL, '32 GB', NULL, 'Transtic', NULL, '12/07/2020, Inclusion 10 Pcs, From Computer City', 'ICT-Office', '2021-09-20 20:34:02', '2021-09-20 20:34:02'),
(633, 'Pendrive-20003', 'Pendrive', NULL, '32 GB', NULL, 'Transtic', NULL, '14/07/2020, Entry 01 Pcs, AM Belal Sir, R & T', 'R & T', '2021-09-20 20:36:02', '2021-09-20 20:36:02'),
(634, 'Pendrive-20004', 'Pendrive', NULL, '32 GB', NULL, 'Transtic', NULL, '05/08/2020, MC Office SAE Abdur Razzak, 01 Pcs', 'MC', '2021-09-20 20:38:02', '2021-09-20 20:38:02'),
(635, 'Pendrive-20005', 'Pendrive', NULL, '32 GB', NULL, 'Transtic', NULL, '17/08/2020, Entry 08 Pcs, Official use ICT Cell', 'ICT-Office', '2021-09-20 20:39:19', '2021-09-20 20:39:19'),
(636, 'Pendrive-20006', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '24/08/2020, Inclusion 05 Pcs, From JEBA Enterprise', 'ICT-Office', '2021-09-20 20:40:47', '2021-09-20 20:40:47'),
(637, 'Pendrive-20007', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '19/08/2020, Entry 01 pcs, Maj Ahsan, MODC', 'Security', '2021-09-20 20:42:19', '2021-09-20 20:42:19'),
(638, 'Pendrive-20008', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '23/08/2020, Entry 01 pcs, AM Molla Arif , CTM', 'CTM', '2021-09-20 20:44:03', '2021-09-20 20:44:03'),
(639, 'Pendrive-20009', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, '27/08/2020, Inclusion 05 pcs, Form JEBA Enterprise', 'ICT-Office', '2021-09-20 20:45:26', '2021-09-20 20:45:26'),
(640, 'Pendrive-20010', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, '29/08/2020, Entry 02 pcs, AE Masum Billah, MRO', 'MRO', '2021-09-20 20:47:39', '2021-09-20 20:47:39'),
(641, 'Pendrive-20011', NULL, NULL, '32 GB', NULL, 'Towinmos', NULL, '01/09/2020, 01 Pcs, Lt Col Aziz, Maintenance', 'DD Maintenance', '2021-09-20 20:53:41', '2021-09-20 20:53:41'),
(642, 'Pendrive-20012', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, '08/09/2020, 03 Pcs, DD (SA) Office, RM-01, 02,03', 'Small Arms (SA)', '2021-09-20 20:56:36', '2021-09-20 20:56:36'),
(643, 'Pendrive-20013', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, '05/10/2020, 01 Pcs, Maj Jahid Sir RM-02', 'Small Arms (SA)', '2021-09-20 20:57:46', '2021-09-20 20:57:46'),
(644, 'Pendrive-20014', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, '08/10/2020, 02 Pcs, Maj Mizan Sir, SA-02', 'Small Arms (SA)', '2021-09-20 20:59:18', '2021-09-20 20:59:18'),
(645, 'Pendrive-20015', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '08/10/2020, 01 Pcs, Jr Tech Forhad Ahamed,', 'ICT', '2021-09-20 21:00:38', '2021-09-20 21:00:38'),
(646, 'Pendrive-20016', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '21/10/2020, 01 Pcs, Manager Shahina Sir, R&D', 'R & D', '2021-09-20 21:02:04', '2021-09-20 21:02:04'),
(647, 'Pendrive-20017', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '24/10/2020, 01 Pcs, DD Iqbal Sir, Admin', 'DD Admin', '2021-09-20 21:03:33', '2021-09-20 21:03:33'),
(648, 'Pendrive-20018', 'Pendrive', NULL, '32 GB', NULL, 'Towinmos', NULL, '25/10/2020, 01 Pcs, Office Super Monir state Management', 'MAP', '2021-09-20 21:15:46', '2021-09-20 21:15:46'),
(649, 'Pendrive-20019', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '28/10/2020, 01 Pcs, DD Iqbal Sir, Admin', 'DD Admin', '2021-09-20 21:17:11', '2021-09-20 21:17:11'),
(650, 'Pendrive-20020', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '05/11/2020, Inclusion 10 Pcs, from JEBA Enterprise,', 'ICT-Office', '2021-09-20 21:18:49', '2021-09-20 21:18:49'),
(651, 'Pendrive-20021', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '07/11/2020, 01 Pcs, Sr Asst Habib, TPT', 'MT.', '2021-09-20 21:19:51', '2021-09-20 21:19:51'),
(652, 'Pendrive-20022', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '09/11/2020, 01 Pcs, DD Aziz Sir, Maintenance', 'DD Maintenance', '2021-09-20 21:21:28', '2021-09-20 21:21:28'),
(653, 'Pendrive-20023', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '16/11/2020, Pcs 01, OS Mohadev, Workmen Record,', 'Workman Record', '2021-09-20 21:27:27', '2021-09-20 21:27:27'),
(654, 'Pendrive-20024', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '19/11/2020, 03 Pcs, SAE Noor Ahamed, P&P', 'P & P', '2021-09-20 21:29:03', '2021-09-20 21:29:03'),
(655, 'Pendrive-20025', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '24/11/2020, Pcs 01, Dir Production Sir,', 'DIR production Office', '2021-09-20 21:32:29', '2021-09-20 21:32:29'),
(656, 'Pendrive20034', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '30/11/2020, 01 Pcs, Tech Mahedi Hasan, ICT', 'ICT', '2021-09-20 21:34:33', '2021-09-20 22:37:55'),
(657, 'Pendrive-20026', 'Pendrive', NULL, '32 GB', NULL, 'ADATA', NULL, '01/12/2020, 01 Pcs, TDL Shiblu, ICT', 'ICT', '2021-09-20 21:36:04', '2021-09-20 21:36:04'),
(658, 'Pendrive-20027', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '01/12/2020, Inclusion 10 Pcs, MS JEBA Enterprise,', 'ICT-Office', '2021-09-20 21:37:17', '2021-09-20 21:37:17'),
(659, 'Pendrive-20028', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '02/12/2020, 01 Pcs, OIC ICT Office,', 'OIC ICT cell', '2021-09-20 21:38:12', '2021-09-20 21:38:12'),
(660, 'Pendrive-20029', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '23/12/2020, 01 Pcs, Dir Admin & Mat Sir,', 'Dir Admin & Mat', '2021-09-20 21:39:21', '2021-09-20 21:39:21'),
(661, 'Pendrive-20030', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '23/12/2020, 01 Pcs, M. Tech Quddus, CTG', 'CTG', '2021-09-20 21:40:44', '2021-09-20 21:40:44'),
(662, 'Pendrive-20031', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '27/12/2020, 01 Pcs, Dir PLG,', 'Dir PLG & maint Office', '2021-09-20 21:41:48', '2021-09-20 21:41:48'),
(663, 'Pendrive21032', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '11/01/2021, 01 pcs, Jr. Tech Forhad Ahamed', 'ICT', '2021-09-20 21:43:37', '2021-09-20 21:43:37'),
(664, 'Pendrive-21033', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '12/01/2021, 01 Pcs, Maj Mizan Sir, SA-02', 'Small Arms (SA)', '2021-09-20 21:44:44', '2021-09-20 21:44:44'),
(665, 'Pendrive-21035', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '12/01/2021, 01 Pcs, Artilary Shell Project, Nurnobi Sir,', 'DIR production Office', '2021-09-20 22:41:26', '2021-09-20 22:41:26'),
(666, 'Pendrive-21036', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '13/01/2021, Inclusion 03 pcs, Rainbow tread International,', 'ICT-Office', '2021-09-20 22:43:10', '2021-09-20 22:43:10'),
(667, 'Pendrive-21037', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '13/01/2021, 03 Pcs, AE Abu Shaleha Muhammod Mamun, SA', 'Small Arms (SA)', '2021-09-20 22:44:43', '2021-09-20 22:44:43'),
(668, 'Pendrive-21038', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '20/01/2021, Inclusion 10 Pcs, From MS Jeba Enterprise,', 'ICT-Office', '2021-09-20 22:46:21', '2021-09-20 22:46:21'),
(669, 'Pendrive-21039', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '20/01/2021, 01 Pcs, Chemist Abbus Ali, QCL', 'R & D', '2021-09-20 22:48:41', '2021-09-20 22:48:41'),
(670, 'Pendrive-21040', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '26/01/2021, 01 Pcs, Dir PLG Sir,', 'Dir PLG & maint Office', '2021-09-20 22:49:40', '2021-09-20 22:49:40'),
(671, 'Pendrive-21041', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '28/01/2021, 04 Pcs, PO Ripon Purchase', 'Purchase', '2021-09-20 22:50:41', '2021-09-20 22:50:41'),
(672, 'Pendrive-21042', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '28/01/2021, 01 Pcs, Manager Iftekhar Alam Sir,', 'MAG', '2021-09-20 22:51:53', '2021-09-20 22:51:53'),
(673, 'Pendrive-21043', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '28/01/2021, 01 Pcs, DD PLG Shahina Sir, R&D', 'R & D', '2021-09-20 22:53:10', '2021-09-20 22:53:10'),
(674, 'Pendrive-21044', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '03/02/2021, 01 Pcs, Tech Asraf Ali, ICT', 'ICT', '2021-09-20 22:54:18', '2021-09-20 22:54:18'),
(675, 'Pendrive-21045', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '08/02/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-20 22:56:26', '2021-09-20 22:56:26'),
(676, 'Pendrive-21046', 'Pendrive', NULL, NULL, NULL, NULL, NULL, '16/02/2021, 01 Pcs, Maj Rakib Sir, OIC', 'OIC ICT cell', '2021-09-20 22:58:40', '2021-09-20 22:58:40'),
(677, 'Pendrive-21047', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '16/02/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-20 22:59:51', '2021-09-20 22:59:51'),
(678, 'Pendrive-21048', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '27/02/2021, 01 Pcs, Security Manager', 'Security', '2021-09-20 23:00:44', '2021-09-20 23:00:44'),
(679, 'Pendrive-21049', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '15/03/2021, 01 pcs, Jr. Tech Forhad Ahamed, ICT', 'ICT', '2021-09-20 23:02:01', '2021-09-20 23:02:01'),
(680, 'Pendrive-21050', 'Pendrive', NULL, '16 Gb', NULL, NULL, NULL, '25/03/2021, Inclusion 02 Pcs, ICT Bootable OS Purpose, Tech Mehedi', 'ICT', '2021-09-20 23:05:42', '2021-09-20 23:05:42'),
(681, 'Pendrive-21051', 'Pendrive', NULL, '16 Gb', NULL, NULL, NULL, '04/04/2021, 01 Pcs, Bootable OS Purpose, Tech Mehedi', 'ICT', '2021-09-20 23:07:51', '2021-09-20 23:07:51'),
(682, 'Pendrive-21052', 'Pendrive', NULL, '32 GB', NULL, NULL, NULL, '18/08/2021, Inclusion 20 Pcs, From Techno Test, MRO', 'ICT-Office', '2021-09-20 23:10:05', '2021-09-20 23:10:05'),
(683, 'pointer-20001', 'Pointer', NULL, NULL, NULL, 'Targus', NULL, 'Date: 14.12.2020, Inclusion: 01 pc, From M/S Enterprise.', 'ICT', '2021-09-20 23:55:10', '2021-09-20 23:55:10'),
(684, 'pointer-21002', 'Pointer', NULL, NULL, NULL, 'Targus', NULL, 'Date: 18/02/21, Inclusion: 01 pc, From Computer City.', 'ICT', '2021-09-20 23:56:19', '2021-09-20 23:56:19'),
(685, 'pointer-21003', 'Pointer', NULL, NULL, NULL, 'Targus', NULL, 'Date: 22/02/21, Entry: 01 pc, DIR Admin & Mat.', 'Dir Admin & Mat', '2021-09-20 23:57:19', '2021-09-20 23:57:19'),
(686, 'pointer-21004', 'Pointer', NULL, NULL, NULL, 'Targus', NULL, 'Date: 23/02/21, Entry: 01 pc, Not Workable,', 'ICT', '2021-09-20 23:58:02', '2021-09-20 23:58:02'),
(687, 'pointer-21005', 'Pointer', NULL, NULL, NULL, 'Baseus', NULL, 'Date: 26/08/21, Entry: 02 pcs. From Multi Smart .', 'ICT', '2021-09-21 00:00:35', '2021-09-21 00:00:35'),
(688, 'pointer-21006', 'Pointer', NULL, NULL, NULL, 'Baseus', NULL, 'Date: 26/08/21, Entry: 01 pc, Major Rakib Sir.', 'OIC ICT cell', '2021-09-21 00:02:10', '2021-09-21 00:02:10'),
(689, 'pointer-21007', 'Pointer', NULL, NULL, NULL, 'Baseus', NULL, 'Date: 26/08/21, Entry: 01 pc, ICT Office Use.', 'ICT-Office', '2021-09-21 00:03:10', '2021-09-21 00:03:10'),
(690, 'Webcam-20001', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', NULL, 'Date:  27/08/20, Inclusion: 05 pcs. From Jeba Enterprise', 'ICT-Office', '2021-09-21 00:28:44', '2021-09-21 00:28:44'),
(691, 'Webcam-20002', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', NULL, 'Date: 08/09/20, Entry: 01 pc, Major Abdus Salam Sir, OIC ICT.', 'OIC ICT cell', '2021-09-21 00:29:41', '2021-09-21 00:29:41'),
(692, 'Webcam-20003', 'Webcamera', NULL, 'C270 HD WebCam', 'VSA 6609.01.100', 'Logitech', NULL, 'Date: 18/10/20, Inclusion: 01 pc, From Major Abdus Salam Sir.', 'OIC ICT cell', '2021-09-21 00:31:04', '2021-09-21 00:31:04'),
(693, 'Webcam-21004', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', NULL, 'Date:  13.01.21 Entry: 01 pc, SAE Nurul Bari Sir', 'ICT', '2021-09-21 00:32:19', '2021-09-21 00:32:19'),
(694, 'Webcam-21006', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', NULL, 'Date:  13/01/21, Entry:  01 pc, SAE Shahidul Islam, ICT', 'ICT', '2021-09-21 00:34:45', '2021-09-21 00:34:45');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`) VALUES
(695, 'Webcam-21007', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', NULL, 'Date:  13/01/21, Entry: 01 pc, Office Assist Nazrul.', 'ICT', '2021-09-21 00:36:14', '2021-09-21 00:36:14'),
(696, 'Webcam-21008', 'Webcamera', NULL, 'C270 HD WebCam', NULL, 'Logitech', NULL, 'Date: 15/01/21 Entry: 01 pc, OIC ICT CELl', 'OIC ICT cell', '2021-09-21 00:37:07', '2021-09-21 00:37:07'),
(697, 'Mouse-21001', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', NULL, '08/03/2021, 02 pcs, Maj Mahfuzer Rahman, CMC Security', 'Security', '2021-09-21 19:54:48', '2021-09-21 19:54:48'),
(698, 'Mouse-21002', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', NULL, '11/03/2021, 01pcs, OIC ICT Cell,', 'ICT-Office', '2021-09-21 19:56:41', '2021-09-21 19:56:41'),
(699, 'Mouse-21003', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', NULL, '12/05/2021, 01 pcs, Comdt Bhaban', 'Comdt BOF', '2021-09-21 19:58:37', '2021-09-21 19:58:37'),
(700, 'Mouse-21004', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Micropack', NULL, '18/08/2021, Inclusion 02 pcs, Star Tech Engineering LTD', 'ICT-Office', '2021-09-21 20:00:51', '2021-09-21 20:00:51'),
(701, 'Mouse-21005', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', NULL, '18/08/2021, 01 pcs, Comdt sir', 'Comdt BOF', '2021-09-21 20:38:16', '2021-09-21 20:57:51'),
(702, 'Mouse-21006', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Logitech', NULL, '18/08/2021, 01 pcs, Comdt Sir', 'Comdt BOF', '2021-09-21 20:39:24', '2021-09-21 20:54:08'),
(703, 'Mouse-21007', 'Mouse', 'Wireless Mouse', NULL, NULL, 'Micropack', NULL, '26/08/2021, Inclusion 05 pcs, Computer Archives', 'ICT-Office', '2021-09-21 20:41:36', '2021-09-21 20:41:36'),
(704, 'Mouse-21008', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '26/08/2021, 01pcs, Maj Rakib Sir, OIC ICT Cell', 'OIC ICT cell', '2021-09-21 20:43:42', '2021-09-21 20:43:42'),
(705, 'Mouse-21009', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '18/09/2021, 01 pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-21 20:47:31', '2021-09-21 20:47:31'),
(706, 'SSD-20001', 'SSD', NULL, NULL, NULL, NULL, NULL, '02/12/2020, Inclusion 01 Pcs, From jeba Enterprise', 'ICT-Office', '2021-09-21 21:28:34', '2021-09-21 21:28:34'),
(707, 'SSD20002', 'SSD', NULL, NULL, NULL, NULL, NULL, '02/12/2020, 01 pcs, ICT use Old Laptop Purpose', 'ICT-Office', '2021-09-21 21:29:39', '2021-09-21 21:29:39'),
(708, 'SSD-21003', 'SSD', NULL, '480GB', NULL, NULL, NULL, '18/08/2021, Inclusion 20 Pcs, From Techno Test (MRO)', 'ICT-Office', '2021-09-21 21:31:43', '2021-09-21 21:31:43'),
(709, 'SSD-21004', 'SSD', NULL, '480GB', NULL, NULL, NULL, '28/08/2021, 01 Pcs, ICT Office Laptop Use', 'ICT-Office', '2021-09-21 21:32:57', '2021-09-21 21:32:57'),
(710, 'SSD-21005', 'SSD', NULL, '480GB', NULL, NULL, NULL, '02/09/2021, 01 Pcs, DD Admin & Mat Sir', 'DD Admin & Mat', '2021-09-21 21:34:37', '2021-09-21 21:34:37'),
(711, 'SSD-21006', 'SSD', NULL, '480GB', NULL, NULL, NULL, '18/09/2021, 01 Pcs, OIC ICT Cell', 'OIC ICT cell', '2021-09-21 21:35:38', '2021-09-21 21:35:38'),
(712, 'SSD-21007', 'SSD', NULL, '480GB', NULL, NULL, NULL, '21/09/21, 01 Pcs, GSO-2 Laptop Use', 'GSO-2', '2021-09-21 21:36:51', '2021-09-21 21:36:51'),
(713, 'HDD Inclosoure-21001', 'HDD Inclosoure', NULL, 'USB 3.0', NULL, NULL, NULL, '26/08/2021, Inclusion 05 Pcs, 2.5 Inch, From Excel Technologic LTD,', 'ICT-Office', '2021-09-21 21:58:11', '2021-09-21 21:58:11'),
(714, 'HDD Inclosoure-21002', 'HDD Inclosoure', NULL, 'USB 3.0', NULL, NULL, NULL, '18/09/2021, 01 Pcs, 2.5 Inch, OIC ICT Cell', 'OIC ICT cell', '2021-09-21 21:59:13', '2021-09-21 21:59:13'),
(715, 'HDD Inclosoure-20003', 'HDD Inclosoure', NULL, NULL, NULL, NULL, NULL, '02/12/2020, Inclusion 01 Pcs, From M/S Jeba Enterprise', 'ICT-Office', '2021-09-21 22:02:22', '2021-09-21 22:02:22'),
(716, 'HDD Inclosoure-20004', 'HDD Inclosoure', NULL, NULL, NULL, NULL, NULL, '02/12/2020, 01 Pcs, ICT Office Use', 'ICT-Office', '2021-09-21 22:03:41', '2021-09-21 22:03:41'),
(717, 'Microsoft Office (Licensed)-21001', 'Microsoft Office (Licensed)', 'Professional Plus-2019', NULL, NULL, NULL, NULL, '05/02/2021, 01 pcs, ICT Office Use', 'ICT-Office', '2021-09-21 22:14:29', '2021-09-21 22:14:29'),
(718, 'Microsoft Office (Licensed)-21002', 'Microsoft Office (Licensed)', 'Professional Plus-2019', NULL, NULL, NULL, NULL, '10/06/2021, Inclusion 07 Pcs, From Smart Technologies BD Ltd', 'ICT-Office', '2021-09-21 22:15:48', '2021-09-21 22:15:48'),
(719, 'Microsoft Office (Licensed)-21003', 'Microsoft Office (Licensed)', 'Professional Plus-2019', NULL, NULL, NULL, NULL, '12/09/2021, 01 Pcs, Dir Admin & Mat Sir,', 'Dir Admin & Mat', '2021-09-21 22:16:59', '2021-09-21 22:16:59'),
(720, 'Microsoft Office (Licensed)-21004', 'Microsoft Office (Licensed)', 'Professional Plus-2019', NULL, NULL, NULL, NULL, '18/09/2021, 01 Pcs, Dir admin & Mat , Laptop Use', 'Dir Admin & Mat', '2021-09-21 22:18:45', '2021-09-21 22:18:45'),
(721, 'Mother Board20001', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '05/07/2020, 01 Pcs, OS Monir State Management , CPU Repair Purpose', 'MAP', '2021-09-21 22:28:03', '2021-09-21 22:28:03'),
(722, 'Mother Board20002', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, '20/07/2020, 01 pcs, OS Rini Begum, welfare ,CPU Repair Purpose', 'Welfare', '2021-09-21 22:29:51', '2021-09-21 22:29:51'),
(723, 'Mother Board-20003', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, '05/08/2020, Inclusion 01 pcs, Return From Welfare Office,', 'Welfare', '2021-09-21 22:31:35', '2021-09-21 22:31:35'),
(724, 'Mother Board-20004', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '18/08/2020, 01 Pcs, Maj Mizan , RM -04, CPU Repair Purpose', 'Small Arms (SA)', '2021-09-21 22:32:38', '2021-09-21 22:32:38'),
(725, 'Mother Board-20005', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, '20/08/2020, 01 Pcs, Po Ripon Sir, CPU Repair Purpose', 'Purchase', '2021-09-21 22:33:38', '2021-09-21 22:33:38'),
(726, 'Mother Board-20006', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, '24/08/2020, Inclusion 02 pcs, From M/S Jeba Enterprise,', 'ICT-Office', '2021-09-21 22:38:57', '2021-09-21 22:38:57'),
(727, 'Mother Board-20007', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '24/08/20, Inclusion : 02 pcs,  From M/S Jeba Enterprise. CPU Repair Purpose.', 'ICT-Office', '2021-09-21 22:40:48', '2021-09-21 22:40:48'),
(728, 'Mother Board-20008', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '21/08/20, Entry: 01 pc, ICT Office, CPU Repair Purpose.', 'ICT-Office', '2021-09-21 22:40:53', '2021-09-21 22:44:48'),
(729, 'Mother Board-20009', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, '17/10/20, Entry: 01 pc, Proyash School. CPU Repair Purpose.', 'Recident', '2021-09-21 22:46:16', '2021-09-21 22:46:16'),
(730, 'Mother Board-20010', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '28/10/20, Entry: 01 pc, Fire Office, CPU Repair Purpose', 'Fire', '2021-09-21 22:47:10', '2021-09-21 22:47:10'),
(731, 'Mother Board-20011', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '28/10/20, Entry: 01 pc, Mainstore , CPU Repair Purpose.', 'Main store', '2021-09-21 22:47:53', '2021-09-21 22:47:53'),
(732, 'Mother Board-20012', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, '31/10/20, Entry: 01 pc, Security Main Gate. CPU Repair Purpose.', 'Security', '2021-09-21 22:48:46', '2021-09-21 22:48:46'),
(733, 'Mother Board-21013', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '04/02/21, Entry: 01 pc, AE Mahmudur Rahman, CA-2. CPU Repair Purpose.', 'Small Arms Ammo (SAA)', '2021-09-21 22:50:29', '2021-09-21 22:50:29'),
(734, 'Mother Board-21014', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '22/02/21, Entry: 01 pc, AE Oliur Rahman , ISI', 'ISI', '2021-09-21 22:51:08', '2021-09-21 22:51:08'),
(735, 'Mother Board-21015', 'Mother Board', NULL, 'M 61', NULL, NULL, NULL, '24/02/21, Entry: 01pc, Manager Aminur Rahman, HAG', 'HAG', '2021-09-21 22:51:42', '2021-09-21 22:51:42'),
(736, 'Mother Board-21016', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '22/04/21, Entry: 01 pc, Received Control Office, Main Store.', 'Receive Control', '2021-09-21 22:52:32', '2021-09-21 22:52:32'),
(737, 'Mother Board-21017', 'Mother Board', NULL, 'M41', NULL, NULL, NULL, '27/05/21, Entry: 01 pc, Abdur Razzak, MC.', 'MC', '2021-09-21 22:53:16', '2021-09-21 22:53:16'),
(738, 'projector-20001', 'Projector', NULL, NULL, NULL, 'HDMI', NULL, '10/09/20, Entry: 01 pc, ICT Office.', 'ICT-Office', '2021-09-21 23:03:04', '2021-09-21 23:03:04'),
(739, 'projector-21002', 'Projector', NULL, NULL, NULL, 'Epson', NULL, '20/01/21, Inclusion: 01 pc (Old), From Fawkal Training Center.', 'ICT', '2021-09-21 23:05:05', '2021-09-21 23:05:05'),
(740, 'projector-20003', 'Projector', NULL, NULL, NULL, 'HDMI', NULL, '22/03/21, Entry: 02 pcs, Not Workable.', 'ICT-Office', '2021-09-21 23:06:20', '2021-09-21 23:06:20'),
(741, 'Projector-Screen-20001', 'Projector-Screen', NULL, NULL, NULL, NULL, NULL, '21/09/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-09-21 23:14:04', '2021-09-21 23:14:04'),
(742, 'Projector-Screen-20002', 'Projector-Screen', NULL, NULL, NULL, NULL, NULL, '27/10/2020, 02 Pcs, Wastage Board', 'GK main store', '2021-09-21 23:15:32', '2021-09-21 23:15:32'),
(743, 'Projector-Screen-20003', 'Projector-Screen', NULL, NULL, NULL, NULL, NULL, '20/11/2020, 01 Pcs, Damage (Not Workable)', 'ICT-Office', '2021-09-21 23:16:33', '2021-09-21 23:16:33'),
(744, 'RAM-20001', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '17/08/2020, 01 pcs, ME Store, SAE Basher Rahman, CPU Repair Purpose', 'ME', '2021-09-21 23:25:40', '2021-09-21 23:26:30'),
(745, 'RAM-20003', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '29/08/2020,01 Pcs, Cashier Alamgir, CPU Repair Purpose', 'Cash', '2021-09-21 23:39:45', '2021-09-21 23:39:45'),
(746, 'RAM-20004', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '01/09/2020, 01 Pcs, SAE Shohidul Islam, ICT Cell, CPU Repair Purpose', 'ICT-Office', '2021-09-21 23:42:41', '2021-09-21 23:47:56'),
(747, 'RAM-20005', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '22/11/2020, 01 pcs, SR Asst Habib, CPU Repair Purpose', 'TPT', '2021-09-21 23:46:14', '2021-09-21 23:46:57'),
(748, 'RAM-20006', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '28/11/2020, 01 pcs, DD HAg Habib Sir, CPU Repair Purpose', 'DD HAG Office', '2021-09-21 23:50:08', '2021-09-21 23:50:08'),
(749, 'RAM-20007', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '30/11/2020, 01 pcs, DD HAG Office, AD Purpose, CPU Repair Purpose', 'HAG', '2021-09-21 23:53:19', '2021-09-21 23:53:19'),
(750, 'RAM-20008', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '06/12/2020, Inclusion 05 pcs, From M/S Jeba Enterprise,', 'ICT-Office', '2021-09-21 23:54:45', '2021-09-21 23:54:45'),
(751, 'RAM20009', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '23/12/2020, 01 Pcs, AE Anisur Rahman Sir, CPU Repair Purpose', 'PLG', '2021-09-21 23:56:29', '2021-09-21 23:57:14'),
(752, 'RAM-21010', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '11/01/2021, 02 pcs, Office Super Zia,CPU Repair Purpose', 'Purchase', '2021-09-22 00:00:00', '2021-09-22 00:00:00'),
(753, 'RAM-21011', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '14/01/2021, Inclusion 04 Pcs, From  M/S Jeba Enterprise,', 'ICT-Office', '2021-09-22 00:01:23', '2021-09-22 00:01:23'),
(754, 'RAM21012', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '18/01/2020, 02 pcs, ICT Old CPU Repair Purpose', 'ICT-Office', '2021-09-22 00:02:52', '2021-09-22 00:02:52'),
(755, 'RAM-21013', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '19/01/2021, 01 pcs, AE Oliur Rahman Sir, CPU Repair Purpose', 'ISI', '2021-09-22 00:04:56', '2021-09-22 00:04:56'),
(756, 'RAM-21014', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '23/01/2021, TPT, CPU Repair Purpose', 'TPT', '2021-09-22 00:06:09', '2021-09-22 00:06:09'),
(757, 'RAM-21016', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '24/02/2021, 01 Pcs, Manager Alamgir Rahman, CPU Repair Purpose', 'HAG', '2021-09-22 00:07:31', '2021-09-22 00:07:31'),
(758, 'RAM-21017', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '05/05/2021, 01 pcs, Reception Office , CPU Repair Purpose', 'Security', '2021-09-22 00:11:21', '2021-09-22 00:11:21'),
(759, 'RAM-21018', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '07/05/2021, 01 pcs, Office Asst  Atik, CPU Repair Purpose', 'CTM', '2021-09-22 00:12:59', '2021-09-22 00:12:59'),
(760, 'RAM-21015', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '02/06/2021, 01 pcs, Received Control, CPU Repair Purpose', 'Receive Control', '2021-09-22 00:23:31', '2021-09-22 00:23:31'),
(761, 'RAM-21019', 'RAM', 'DDR-04', NULL, NULL, NULL, NULL, '15/07/2021, 01 pcs, RAM Damage,', 'ICT-Office', '2021-09-22 00:24:55', '2021-09-22 00:24:55'),
(762, 'RAM-20020', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '20/07/2020, 01 pcs, OS Rini Begum,', 'Welfare', '2021-09-22 00:27:41', '2021-09-22 00:36:29'),
(763, 'RAM-20022', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '18/08/2021, Inclusion 01 Pcs, Computer City', 'ICT-Office', '2021-09-22 00:37:57', '2021-09-22 00:38:38'),
(764, 'RAM-20023', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '20/08/2020, 01 Pcs, PO Ripon, CPU Repair Purpose', 'Purchase', '2021-09-22 00:40:44', '2021-09-22 00:40:44'),
(765, 'RAM-20024', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '21/09/2020, 01 Pcs, Tech, Mehedi, CPU Repair purpose', 'ICT-Office', '2021-09-22 00:42:52', '2021-09-22 00:42:52'),
(766, 'RAM-20021', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '17/10/2020, 01 Pcs, Praysh School, CPU Repair purpose', 'Recident', '2021-09-22 00:45:58', '2021-09-22 00:45:58'),
(767, 'RAM-20025', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '02/12/2020, 01 Pcs, HAG Office, CPU Repair purpose', 'HAG', '2021-09-22 00:47:40', '2021-09-22 00:47:40'),
(768, 'RAM-20026', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '23/12/2020, 01 Pcs, Medical Pc, CPU Repair purpose', 'Medical', '2021-09-22 00:49:13', '2021-09-22 00:49:13'),
(770, 'RAM-21028', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '10/04/2021, 01 Pcs, PO Ripon Sir, CPU Repair purpose', 'Purchase', '2021-09-22 00:51:54', '2021-09-22 00:55:31'),
(771, 'RAM-21029', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '13/06/2021, 01 pcs, AE Selim Sir, CPU Repair purpose', 'MC', '2021-09-22 00:56:36', '2021-09-22 00:56:36'),
(772, 'RAM-21030', 'RAM', 'DDR-03', NULL, NULL, NULL, NULL, '14/06/2021, 01 Pcs, Main Store, CPU Repair purpose', 'Main store', '2021-09-22 00:57:58', '2021-09-22 00:57:58'),
(773, 'Mouse-20010', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '14/07/2020, 01 Pcs, DD PLG Office,', 'DD PlG office', '2021-09-22 01:10:40', '2021-09-22 01:10:40'),
(774, 'Mouse-20011', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '10/08/2020, 01 Pcs, Maj Ahsan (GSO-02),', 'Comdt BOF', '2021-09-22 01:13:07', '2021-09-22 01:13:07'),
(775, 'Mouse-20012', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '24/08/2020, Inclusion 05 Pcs, From Jeba Enterprise LTD,', 'ICT-Office', '2021-09-22 01:15:44', '2021-09-22 01:15:44'),
(776, 'Mouse-20013', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '23/08/2020, 02 Pcs, DD Admin', 'DD Admin', '2021-09-22 01:17:16', '2021-09-22 01:17:16'),
(777, 'Mouse-20014', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '27/08/2020, Inclusion 05 pcs, Jeba Enterprise', 'ICT-Office', '2021-09-22 01:18:59', '2021-09-22 01:18:59'),
(778, 'Mouse-20015', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '27/08/2020, 02 pcs, Dir Admin Office', 'Dir Admin & Mat', '2021-09-22 01:20:21', '2021-09-22 01:20:21'),
(779, 'Mouse-20016', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '07/09/2020, 01 pcs, OIC ICT Office', 'OIC ICT cell', '2021-09-22 01:21:40', '2021-09-22 01:21:40'),
(780, 'Mouse-20017', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '26/09/2020, 01 Pcs, Comdt Office (Rojob)', 'Comdt BOF', '2021-09-22 01:25:10', '2021-09-22 01:25:10'),
(781, 'Mouse-20018', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '28/10/2020, 01 Pcs,  3rd floor Conference Room,', 'Conference Room', '2021-09-22 01:26:45', '2021-09-22 01:26:45'),
(782, 'Mouse-20019', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '17/10/2020,01 Pcs, Dir Admin Sir', 'Dir Admin & Mat', '2021-09-22 01:28:21', '2021-09-22 01:28:21'),
(783, 'Mouse-20020', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '19/11/2020, 01 pcs, Dir Production Sir', 'DIR production Office', '2021-09-22 01:32:40', '2021-09-22 01:32:40'),
(784, 'Mouse-21021', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '04/01/2021, 01 pcs, 3rd floor Conference Room', 'Conference Room', '2021-09-22 01:46:04', '2021-09-22 01:46:04'),
(785, 'Mouse-21022', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '20/01/2021, Inclusion 01 pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-22 01:48:25', '2021-09-22 01:48:25'),
(786, 'Mouse-21023', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '21/01/2021, 01 Pcs, Comdt Sir', 'Comdt BOF', '2021-09-22 01:49:16', '2021-09-22 01:49:16'),
(787, 'Mouse-21024', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '23/01/2021, 01 Pcs, Comdt Madam', 'Comdt BOF', '2021-09-22 01:50:43', '2021-09-22 01:50:43'),
(788, 'Mouse-21025', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '31/01/2021, 01 Pcs, Manager Security Sir', 'Security', '2021-09-22 01:52:02', '2021-09-22 01:52:02'),
(789, 'Mouse-21026', 'Mouse', 'Wireless Mouse', NULL, NULL, NULL, NULL, '28/01/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-22 01:53:31', '2021-09-22 01:53:31'),
(790, 'Keyboard-20001', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '05/07/2020, Inclusion 02 Pcs, IT Place', 'ICT-Office', '2021-09-22 19:41:25', '2021-09-22 19:41:25'),
(791, 'Keyboard-20002', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '18/07/2020, 01 Pcs, CLK/ Monir, Officer Mess', 'Officers Mess', '2021-09-22 19:43:04', '2021-09-22 19:43:04'),
(792, 'Keyboard-20003', 'Keyboard', NULL, NULL, NULL, 'Micropack', NULL, '06/08/2020, 01 Pcs, AM Mehedi (SVC)', 'DD Maintenance', '2021-09-22 19:45:21', '2021-09-22 19:45:21'),
(793, 'Keyboard-20004', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '12/08/2020, 05 Pcs, Workstation PC Accessories', NULL, '2021-09-22 19:47:24', '2021-09-22 19:47:24'),
(794, 'Keyboard-20005', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '16/09/2020, Inclusion 10 Pcs, Jeba Enterprise LTD', 'ICT-Office', '2021-09-22 19:50:30', '2021-09-22 19:50:30'),
(795, 'Keyboard-20006', 'Keyboard', NULL, NULL, NULL, 'HP', NULL, '16/09/2020, 16 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-22 19:51:58', '2021-09-22 19:51:58'),
(796, 'Keyboard-20007', 'Keyboard', NULL, NULL, NULL, 'HP', NULL, '21/09/2020, Inclusion 05 Pcs, From Computer City', 'ICT-Office', '2021-09-22 19:53:35', '2021-09-22 19:53:35'),
(797, 'Keyboard-20008', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '21/09/2020, 05 Pcs, Workstations PC Clone PC', 'ICT-Office', '2021-09-22 19:55:32', '2021-09-22 19:55:32'),
(798, 'Keyboard-20009', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '21/09/2020, Inclusion 03 Pcs, Not workable (ICT-1020)', 'GK main store', '2021-09-22 19:57:28', '2021-09-22 19:57:28'),
(799, 'Keyboard-20010', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '26/09/2020, 01 Pcs, Telephone Exchange,', 'ME', '2021-09-22 19:58:49', '2021-09-22 19:58:49'),
(800, 'Keyboard-20011', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '05/10/2020, 01 Pcs, Chemist Abbas Ali', 'QCL', '2021-09-22 20:00:46', '2021-09-22 20:02:59'),
(801, 'Keyboard-20012', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '05/10/2020,01 Pcs, AE Tofayel Sir', 'CTG', '2021-09-22 20:06:47', '2021-09-22 20:06:47'),
(802, 'Keyboard-20013', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '08/10/2020, Inclusion 05 Pcs, M/S Jeba  Enterprise LTD', 'ICT-Office', '2021-09-22 20:10:38', '2021-09-22 20:10:38'),
(803, 'Keyboard-20014', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '21/10/2020,01 Pcs, AE Oliur Rahman Sir', 'ISI', '2021-09-22 20:12:09', '2021-09-22 20:12:09'),
(804, 'Keyboard-20015', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '22/10/2020,01 Pcs, AM Iftekhirul Sir', 'Central Record', '2021-09-22 20:14:28', '2021-09-22 20:14:28'),
(805, 'Keyboard-20016', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '27/10/2020, 03 Pcs, Wastage Board', 'GK main store', '2021-09-22 20:15:57', '2021-09-22 20:15:57'),
(806, 'Keyboard-20017', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '07/11/2020, 01 Pcs, Manager sir Shahidulla (Officer Record)', 'MAP', '2021-09-22 20:18:29', '2021-09-22 20:18:29'),
(807, 'Keyboard-20018', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '07/11/2020, 02 Pcs, Sir Asst Habib', 'TPT', '2021-09-22 20:20:24', '2021-09-22 20:20:24'),
(808, 'Keyboard-20019', 'Keyboard', NULL, NULL, NULL, 'Pro Desk', NULL, '11/11/2020, Inclusion 10 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-22 20:24:06', '2021-09-22 20:24:06'),
(809, 'Keyboard-20020', 'Keyboard', NULL, NULL, NULL, 'HP', NULL, '21/11/2020, 04 Pcs, SAE Noor Ahamed', 'P & P', '2021-09-22 20:26:21', '2021-09-22 20:26:21'),
(810, 'Keyboard-20021', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '22/11/2020, 01 Pcs, RM-02, Progress Office', 'Small Arms (SA)', '2021-09-22 20:29:52', '2021-09-22 20:29:52'),
(811, 'Keyboard-20022', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '24/11/2020,04 Pcs, SR Asst Nazma', 'Medical', '2021-09-22 20:33:04', '2021-09-22 20:33:04'),
(812, 'Keyboard-20023', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '30/11/2020, Inclusion 20 pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-22 20:34:45', '2021-09-22 20:34:45'),
(813, 'Keyboard-20024', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '03/12/2020, 01 pcs, Office Asst Abaid', 'Purchase', '2021-09-22 20:36:25', '2021-09-22 20:36:25'),
(814, 'Keyboard-20025', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '03/12/2020, 01 pcs, PO Ripon Sir', 'Purchase', '2021-09-22 20:39:18', '2021-09-22 20:39:18'),
(815, 'Keyboard-20026', 'Keyboard', NULL, NULL, NULL, 'HP', NULL, '05/12/2020,01 pcs, Office Asst Nazrul Islam, RM -01', 'Small Arms (SA)', '2021-09-22 20:41:22', '2021-09-22 20:41:22'),
(816, 'Keyboard-20027', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '06/12/2020, 02 pcs, AM Bilal Sir,', 'Purchase', '2021-09-22 20:42:56', '2021-09-22 20:42:56'),
(817, 'Keyboard-20028', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '21/12/2020, 01 pcs, Chemist Abbas Ali Sir', 'QCL', '2021-09-22 20:47:34', '2021-09-22 20:47:34'),
(818, 'Keyboard-20029', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '28/12/2020, 01 pcs, SKDT Maksud', 'MRO', '2021-09-22 20:48:51', '2021-09-22 20:48:51'),
(819, 'Keyboard-21030', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '09/01/2021,01 pcs OS Nasrin', 'Staff Record', '2021-09-22 20:50:51', '2021-09-22 20:50:51'),
(820, 'Keyboard-21031', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '16/02/2021, Inclusion 01 (Wire) Pcs, Computer City', 'ICT-Office', '2021-09-22 20:57:48', '2021-09-22 20:57:48'),
(821, 'Keyboard-21032', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '09/03/2021, 02 pcs, AE Anisur Rahman Sir', 'PLG', '2021-09-22 20:59:14', '2021-09-22 20:59:14'),
(822, 'Keyboard-21033', 'Keyboard', NULL, NULL, NULL, 'HP', NULL, '10/03/2021,01 Pcs, Residential NOC Room', 'Residential', '2021-09-22 21:01:45', '2021-09-22 21:02:55'),
(823, 'Keyboard-21034', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '11/03/2021, 01 Pcs, OIC ICT Cell', 'OIC ICT cell', '2021-09-22 21:17:16', '2021-09-22 21:17:16'),
(824, 'Keyboard-21035', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '15/03/2021, Inclusion 01 Pcs, Masud Electronic', 'ICT-Office', '2021-09-22 21:19:13', '2021-09-22 21:19:13'),
(825, 'Keyboard-21036', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '15/03/2021, 01 pcs, VTC Use Purpose', 'ICT-Office', '2021-09-22 21:20:37', '2021-09-22 21:20:37'),
(826, 'Keyboard-21037', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '15/03/2021, 01 Pcs, OIC ICT Office', 'OIC ICT cell', '2021-09-22 21:23:02', '2021-09-22 21:23:02'),
(827, 'Keyboard-21038', 'Keyboard', NULL, NULL, NULL, 'HP', NULL, '29/03/2021, 01 pcs, Office Asst Atik', 'CTM', '2021-09-22 21:24:32', '2021-09-22 21:24:32'),
(828, 'Keyboard-21039', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '27/05/2021,01 Pcs, DD Office Momin', 'Small Arms (SA)', '2021-09-22 21:27:03', '2021-09-22 21:27:03'),
(829, 'Keyboard-21040', 'Keyboard', NULL, NULL, NULL, 'A4 Tech', NULL, '06/06/2021, 01 pcs, Manager Purchase', 'Purchase', '2021-09-22 21:28:03', '2021-09-22 21:28:03'),
(830, 'Keyboard-21041', 'Keyboard', NULL, NULL, NULL, NULL, NULL, '21/06/2021, 01 pcs, Tech Jahangir', 'ME', '2021-09-22 21:29:55', '2021-09-22 21:29:55'),
(831, 'Keyboard-21042', 'Keyboard', NULL, NULL, NULL, 'HP', NULL, '25/08/2021,01 pcs, SAE Monjurul Islam', 'Telephone Exchange', '2021-09-22 21:34:10', '2021-09-22 21:35:50'),
(832, 'Keyboard-21043', 'Keyboard', NULL, NULL, NULL, 'Logitech', NULL, '12/08/2021, 01 Pcs, SAE Sujon', 'MRO', '2021-09-22 21:38:27', '2021-09-22 21:38:27'),
(833, 'Mouse Pad-20001', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '09/07/2020, 01 Pcs, Maj A Salam', 'OIC ICT cell', '2021-09-22 22:41:36', '2021-09-22 22:41:36'),
(834, 'Mouse Pad-20002', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '12/07/2020, Inclusion 05 Pcs, Computer City', 'ICT-Office', '2021-09-22 22:42:29', '2021-09-22 22:42:29'),
(835, 'Mouse Pad-20003', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '13/07/2020, 01 DD PLG Office', 'DD PlG office', '2021-09-22 22:43:28', '2021-09-22 22:43:28'),
(836, 'Mouse Pad-20004', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '05/08/2020, 08 Pcs, SAE A Razzak , MC Office', 'PLG', '2021-09-22 22:45:05', '2021-09-22 22:45:05'),
(837, 'Mouse Pad-20005', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '23/08/2020, 02 Pcs, PA, Dy Comdt Office', 'Deputy Comdt Office', '2021-09-22 22:47:06', '2021-09-22 22:47:06'),
(838, 'Mouse Pad-20006', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '24/08/2020, Inclusion 20 Pcs, Jeba Enterprise,', 'ICT-Office', '2021-09-22 22:49:19', '2021-09-22 22:49:19'),
(839, 'Mouse Pad-20007', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '26/08/2020, Inclusion 05 Pcs, Jeba Enterprise', 'ICT-Office', '2021-09-22 22:50:14', '2021-09-22 22:50:14'),
(840, 'Mouse Pad-20008', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '27/08/2020, Inclusion 05 Pcs, From Jeba Enterprise Ltd', 'ICT-Office', '2021-09-22 22:51:45', '2021-09-22 22:51:45'),
(841, 'Mouse Pad-20009', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '07/09/2020, 01 Pcs, Dir Planning Office', 'Dir PLG & maint Office', '2021-09-22 22:53:15', '2021-09-22 22:53:15'),
(842, 'Mouse Pad-20010', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '16/09/2020, 16 pcs, ICT Cell Office', 'ICT-Office', '2021-09-22 22:54:33', '2021-09-22 22:54:33'),
(843, 'Mouse Pad-20011', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '17/09/2020, 05 pcs, ICT & CMC Office', 'ICT-Office', '2021-09-22 22:56:28', '2021-09-22 22:56:28'),
(844, 'Mouse Pad-20012', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '21/09/2020, 06 pcs, V SKD Shawon', 'ICT-Office', '2021-09-22 22:58:30', '2021-09-22 22:58:30'),
(845, 'Mouse Pad-20013', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '05/10/2020, 02 AE Tofayel Sir', 'CTG', '2021-09-22 23:06:49', '2021-09-22 23:06:49'),
(846, 'Mouse Pad-20014', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '08/10/2020, Inclusion 20 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-22 23:14:25', '2021-09-22 23:14:25'),
(847, 'Mouse Pad-20015', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '11/10/2020, 01 pcs, Dir production Sir', 'DIR production Office', '2021-09-22 23:21:20', '2021-09-22 23:21:20'),
(848, 'Mouse Pad-20016', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '22/10/2020, 02 pcs, AM Iftekharul Alam Sir', 'Central Record', '2021-09-22 23:23:20', '2021-09-22 23:23:20'),
(849, 'Mouse Pad-20017', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '02/11/2020, 17 Pcs, Desktop PC Set Use Purpose', 'ICT-Office', '2021-09-22 23:28:20', '2021-09-22 23:40:19'),
(850, 'Mouse Pad-20018', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '05/11/2020, Inclusion 20 pcs, M/S jeba Enterprise Ltd', 'ICT-Office', '2021-09-22 23:33:20', '2021-09-22 23:33:20'),
(851, 'Mouse Pad-20019', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '07/11/2020, 01 pcs, Manager Shahidulla,', 'MAP', '2021-09-22 23:35:04', '2021-09-22 23:35:04'),
(852, 'Mouse Pad-20020', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '16/11/2020, 05 Pcs, OS Mohadev Workman Record', 'Workman Record', '2021-09-22 23:36:57', '2021-09-22 23:36:57'),
(853, 'Mouse Pad-20021', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '18/11/2020, 03 Pcs, PO Ripon', 'Purchase', '2021-09-22 23:38:24', '2021-09-22 23:38:24'),
(854, 'Mouse Pad-20022', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '21/11/2020, 06 Pcs, SAE Noor Ahamed', 'P & P', '2021-09-22 23:42:42', '2021-09-22 23:42:42'),
(855, 'Mouse Pad-20023', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '26/11/2020, 03 Pcs, SR Asst Nazma', 'Medical', '2021-09-22 23:43:45', '2021-09-22 23:43:45'),
(856, 'Mouse Pad-20024', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '30/11/2020, Inclusion 20 Pcs, M/S Jeba Enterprise Ltd', 'ICT-Office', '2021-09-22 23:44:59', '2021-09-22 23:44:59'),
(857, 'Mouse Pad-20025', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '03/12/2020,01 Pcs, Office Asst Obaid', 'Purchase', '2021-09-22 23:47:29', '2021-09-22 23:47:29'),
(858, 'Mouse Pad-20026', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '03/12/2020, 01 Pcs, PO Ripon Sir', 'Purchase', '2021-09-22 23:51:56', '2021-09-22 23:51:56'),
(859, 'Mouse Pad-20027', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '05/12/2020, 03 Pcs, Mojib, Purchase', 'Purchase', '2021-09-22 23:54:07', '2021-09-22 23:54:07'),
(860, 'Mouse Pad-20028', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '06/12/2020, 03 Pcs, AM Bilal', 'Purchase', '2021-09-22 23:56:27', '2021-09-22 23:56:27'),
(861, 'Mouse Pad-20029', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '21/12/2020, 01 Pcs, Maj Mizanur Rahman, SA-2', 'Small Arms (SA)', '2021-09-23 00:01:07', '2021-09-23 00:01:07'),
(862, 'Mouse Pad-20030', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '28/12/2020, 01 pcs, SKDT Maksud', 'MRO', '2021-09-23 00:03:02', '2021-09-23 00:03:02'),
(863, 'Mouse Pad-21031', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '04/01/2021, 02 pcs, SM Maj Salaudden', 'Medical', '2021-09-23 00:05:43', '2021-09-23 00:05:43'),
(864, 'Mouse Pad-21032', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '30/11/20, Inclusion 20 Pcs, M/S Jeba Enterprise', 'ICT-Office', '2021-09-23 00:07:48', '2021-09-23 00:08:33'),
(865, 'Mouse Pad-21033', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '18/01/2021, 01 pcs, ICT ERP Room', 'ICT-Office', '2021-09-23 00:11:45', '2021-09-23 00:11:45'),
(866, 'Mouse Pad-21034', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '23/01/2021, 01 Pcs, AE Humayn Kabir', 'CC-01', '2021-09-23 00:25:01', '2021-09-23 00:28:13'),
(867, 'Mouse Pad-21035', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '31/01/2021, 01 pcs, Manager Security', 'Security', '2021-09-23 00:27:24', '2021-09-23 00:28:36'),
(868, 'Mouse Pad-21036', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '04/02/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-23 00:35:27', '2021-09-23 00:35:27'),
(869, 'Mouse Pad-21037', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '14/02/2021, 01 Pcs, DD Admin & Mat Sir', 'DD Admin & Mat', '2021-09-23 00:37:29', '2021-09-23 00:37:29'),
(870, 'Mouse Pad-21038', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '28/02/2021, Inclusion 10 Pcs, Computer City', 'ICT-Office', '2021-09-23 00:40:41', '2021-09-23 00:40:41'),
(871, 'Mouse Pad-21039', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '28/02/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-23 00:42:19', '2021-09-23 00:42:19'),
(872, 'Mouse Pad-21040', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '01/03/2021, 01 Pcs, Main Gate, Zinna', 'Security', '2021-09-23 00:47:30', '2021-09-23 00:47:30'),
(873, 'Mouse Pad-21041', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '01/03/2021, 01 Pcs, 3rd Floor Conference Room', 'Conference Room', '2021-09-23 00:59:37', '2021-09-23 00:59:37'),
(874, 'Mouse Pad-21042', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '17/01/2021, Inclusion 02Pcs, Mohona telecom Mobile Servicing', 'ICT-Office', '2021-09-23 01:02:22', '2021-09-23 01:02:22'),
(875, 'Mouse Pad-21043', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '17/01/2021, 02 Pcs, DD SA Lt Col. Shahinur Alam', 'DD SA', '2021-09-23 01:05:16', '2021-09-23 01:05:16'),
(876, 'Mouse Pad-21044', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '28/03/2021, 01 Pcs, SAE Noorul Bari', 'ICT-Office', '2021-09-23 01:06:25', '2021-09-23 01:06:25'),
(877, 'Mouse Pad-21045', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '29/03/2021, 01 Pcs, Office Asst Atik,', 'CTM', '2021-09-23 01:07:07', '2021-09-23 01:07:07'),
(878, 'Mouse Pad-21046', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '09/06/2021, 01 Pcs, Master Tech Kuddos', 'CTG', '2021-09-23 01:08:20', '2021-09-23 01:08:20'),
(879, 'Mouse Pad-21047', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '19/06/2021, 01 Pcs, Officer Record,', 'Officer Record', '2021-09-23 01:09:23', '2021-09-23 01:09:23'),
(880, 'Mouse Pad-21049', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '25/07/2021, 01 Pcs, GSO-02', 'GSO-2', '2021-09-23 01:10:29', '2021-09-23 01:10:29'),
(881, 'Mouse Pad-21050', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '28/08/2021, Inclusion 200 Pcs, From Techno Test', 'ICT-Office', '2021-09-23 01:12:01', '2021-09-23 01:12:01'),
(882, 'Mouse Pad-21051', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '30/08/2021, 01 Pcs, GSO-02', 'GSO-2', '2021-09-23 01:13:37', '2021-09-23 01:13:37'),
(883, 'Mouse Pad-21053', 'Mouse Pad', NULL, NULL, NULL, NULL, NULL, '18/09/2021, 01 Pcs, Dir Admin & Mat', 'Dir Admin & Mat', '2021-09-23 01:14:48', '2021-09-23 01:14:48'),
(884, 'DVD/CD Disk-20001', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '27/08/2020, 18 Pcs, Jeba Enterprise Ltd', 'ICT-Office', '2021-09-23 01:37:27', '2021-09-23 01:40:26'),
(885, 'DVD/CD Disk-20002', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '08/09/2020, 02 Pcs, L/C Aziz', NULL, '2021-09-23 01:37:39', '2021-09-23 01:43:02'),
(886, 'DVD/CD Disk-20003', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '21/09/2020,10 Pcs, Tech Mehedi Repair Purpose', 'ICT-Office', '2021-09-23 01:46:12', '2021-09-23 01:46:12'),
(887, 'DVD/CD Disk-20004', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '26/09/2020, 01 Pcs, SAE Samsul Alam', 'PLG', '2021-09-23 01:49:24', '2021-09-23 01:49:24'),
(888, 'DVD/CD Disk-20005', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '24/10/2020, 030Pcs, Comdt BOF', 'Comdt BOF', '2021-09-23 01:55:49', '2021-09-23 01:55:49'),
(889, 'DVD/CD Disk-20006', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '18/11/2020,03 pcs, Sr Asst Habib', 'TPT', '2021-09-23 01:57:06', '2021-09-23 01:57:06'),
(890, 'DVD/CD Disk-20007', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '31/12/2020,02 pcs, AE Masum Billa', 'MRO', '2021-09-23 01:58:10', '2021-09-23 01:58:10'),
(891, 'DVD/CD Disk-21008', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '09/01/2021, 08 pcs, AE Masum  Billah', 'MRO', '2021-09-23 01:59:21', '2021-09-23 01:59:21'),
(892, 'DVD/CD Disk-20009', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '27/01/2021, 02 Pcs, DD Aziz', 'DD Maintenance', '2021-09-23 02:00:37', '2021-09-23 02:00:37'),
(893, 'DVD/CD Disk-21010', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '09/08/2021, 02 pcs, Tech Asraf', 'ICT-Office', '2021-09-23 02:01:55', '2021-09-23 02:01:55'),
(894, 'DVD/CD Disk-21011', 'DVD/CD Disk', NULL, NULL, NULL, NULL, NULL, '11/08/2021, 01 Pcs, Security Office Selim', 'Security', '2021-09-23 02:02:59', '2021-09-23 02:02:59'),
(895, 'UPS-20001', 'UPS', NULL, NULL, NULL, NULL, NULL, '14/07/2020, 01 pcs, PO Ripon', 'Purchase', '2021-09-24 19:20:45', '2021-09-24 19:20:45'),
(896, 'UPS-20002', 'UPS', NULL, NULL, NULL, NULL, NULL, '19/07/2020,01 Pcs, Col Shihab', 'DD Admin & Mat', '2021-09-24 19:22:29', '2021-09-24 19:22:29'),
(897, 'UPS-20003', 'UPS', NULL, NULL, NULL, NULL, NULL, '22/07/2020, 01 Pcs, OA Humayaun', 'Security', '2021-09-24 19:24:46', '2021-09-24 19:24:46'),
(898, 'UPS-20004', 'UPS', NULL, NULL, NULL, NULL, NULL, '23/07/2020, 01 Pcs, DD Admin', 'DD Admin', '2021-09-24 19:26:17', '2021-09-24 19:26:17'),
(899, 'UPS-20005', 'UPS', NULL, NULL, NULL, NULL, NULL, '23/07/2020, 01 Pcs, OIC ICT Cell', 'OIC ICT cell', '2021-09-24 19:27:37', '2021-09-24 19:27:37'),
(900, 'UPS-20006', 'UPS', NULL, NULL, NULL, NULL, NULL, '23/07/2020, 02 Pcs, OS Selim', 'Security', '2021-09-24 19:30:26', '2021-09-24 19:30:26'),
(901, 'UPS-20007', 'UPS', NULL, NULL, NULL, NULL, NULL, '12/08/2020, 01 Pcs, AM Mehedi (SV-Mant)', 'Service', '2021-09-24 19:33:39', '2021-09-24 19:33:39'),
(902, 'UPS-20008', 'UPS', NULL, NULL, NULL, NULL, NULL, '23/08/2020, 01 Pcs, Manager Bari Maintenance', 'Small Arms (SA)', '2021-09-24 19:36:17', '2021-09-24 19:36:17'),
(903, 'UPS-20009', 'UPS', NULL, NULL, NULL, NULL, NULL, '24/08/2020, 01 Pcs, Lt Col Aziz', 'DD Maintenance', '2021-09-24 19:38:05', '2021-09-24 19:38:05'),
(904, 'UPS-20010', 'UPS', NULL, NULL, NULL, NULL, NULL, '31/08/2020, 01 Pcs, Conference Room 3rd floor', 'Conference Room', '2021-09-24 19:39:38', '2021-09-24 19:39:38'),
(905, 'UPS-20011', 'UPS', NULL, NULL, NULL, NULL, NULL, '07/09/2020, Inclusion 01 Pcs, From Fawkal Training Center', 'ICT-Office', '2021-09-24 19:41:43', '2021-09-24 19:41:43'),
(906, 'UPS-20012', 'UPS', NULL, NULL, NULL, NULL, NULL, '08/09/2020,01 Pcs, DD (SA)', 'Small Arms (SA)', '2021-09-24 19:47:12', '2021-09-24 19:47:12'),
(907, 'UPS-20013', 'UPS', NULL, NULL, NULL, NULL, NULL, '09/09/2020, 02 Pcs, A/M Molla Arif', 'CTG', '2021-09-24 19:48:22', '2021-09-24 19:48:22'),
(908, 'UPS-20014', 'UPS', NULL, NULL, NULL, NULL, NULL, '12/09/2020, 01 Pcs, ICT Cell Office', 'ICT-Office', '2021-09-24 19:49:29', '2021-09-24 19:49:29'),
(909, 'UPS-20015', 'UPS', NULL, NULL, NULL, NULL, NULL, '21/09/2020, Inclusion 34 Pcs, Not Workable', 'ICT-Office', '2021-09-24 19:55:43', '2021-09-24 19:55:43'),
(910, 'UPS-20016', 'UPS', NULL, NULL, NULL, NULL, NULL, '27/09/2020, Office Asst Joynal', 'MC', '2021-09-24 19:58:04', '2021-09-24 19:58:04'),
(911, 'UPS-20017', 'UPS', NULL, NULL, NULL, NULL, NULL, '01/10/2020, 01 Pcs, PO Ripon', 'Purchase', '2021-09-24 20:00:55', '2021-09-24 20:00:55'),
(912, 'UPS-20018', 'UPS', NULL, NULL, NULL, NULL, NULL, '05/10/2020, 02 Pcs, Maj Jahid', NULL, '2021-09-24 20:04:54', '2021-09-24 20:04:54'),
(913, 'UPS-20019', 'UPS', NULL, NULL, NULL, NULL, NULL, '05/10/2020, 02 Pcs, AE Tofayel', 'CTG', '2021-09-24 20:10:11', '2021-09-24 20:10:11'),
(914, 'UPS-20020', 'UPS', NULL, NULL, NULL, NULL, NULL, '27/10/2020, 34 Pcs, Wastage Board', 'ICT-Office', '2021-09-24 20:13:37', '2021-09-24 20:13:37'),
(915, 'UPS-20021', 'UPS', NULL, NULL, NULL, NULL, NULL, '2710/2020, Inclusion 27 Pcs, Repair &Return From Wastage Board', 'ICT-Office', '2021-09-24 20:15:18', '2021-09-24 20:15:18'),
(916, 'UPS-20022', 'UPS', NULL, NULL, NULL, NULL, NULL, '01/11/2020, 02 Pcs, Dy Comdt Office', 'Deputy Comdt Office', '2021-09-24 20:21:33', '2021-09-24 20:21:33'),
(917, 'UPS-20023', 'UPS', NULL, NULL, NULL, NULL, NULL, '01/11/2020, 01 Pcs, APO Mamun', 'APO Finance', '2021-09-24 20:22:58', '2021-09-24 20:22:58'),
(918, 'UPS-20025', 'UPS', NULL, NULL, NULL, NULL, NULL, '02/11/2020, 24 Pcs, Desktop Set purpose', NULL, '2021-09-24 20:24:55', '2021-09-24 20:24:55'),
(919, 'UPS-20026', 'UPS', NULL, NULL, NULL, NULL, NULL, '08/11/2020, 01 Pcs, DD Aziz', 'DD Maintenance', '2021-09-24 20:26:10', '2021-09-24 20:26:10'),
(920, 'UPS-20027', 'UPS', NULL, NULL, NULL, NULL, NULL, '18/11/2020,01 pcs, Office Asst Aziz', 'Purchase', '2021-09-24 20:28:25', '2021-09-24 20:28:25'),
(921, 'UPS-20028', 'UPS', NULL, NULL, NULL, NULL, NULL, '18/11/2020, 01 Pcs, Office Asst Utpol', 'Purchase', '2021-09-24 20:32:27', '2021-09-24 20:32:27'),
(922, 'UPS-20029', 'UPS', NULL, NULL, NULL, NULL, NULL, '25/11/2020, 01 pcs, Asst Razia', 'Purchase', '2021-09-24 20:40:09', '2021-09-24 20:40:09'),
(923, 'UPS-20030', 'UPS', NULL, NULL, NULL, NULL, NULL, '29/11/2020,08 Pcs, From Repair  Mamun Computer', 'ICT-Office', '2021-09-24 20:41:26', '2021-09-24 20:41:26'),
(924, 'UPS-20031', 'UPS', NULL, NULL, NULL, NULL, NULL, '03/12/2020, 01 Pcs, Office Asst Obayid', 'Purchase', '2021-09-24 20:43:13', '2021-09-24 20:45:50'),
(925, 'UPS-20032', 'UPS', NULL, NULL, NULL, NULL, NULL, '05/12/2020, 01 Pcs, Office Asst Nazrul (Store)', 'RM-1', '2021-09-24 20:48:02', '2021-09-24 20:51:22'),
(926, 'UPS-20033', 'UPS', NULL, NULL, NULL, NULL, NULL, '21/12/2020,01 Pcs, AM Iftakhrul Alam', 'Workman Record', '2021-09-24 20:53:24', '2021-09-24 20:53:24'),
(927, 'UPS-20034', 'UPS', NULL, NULL, NULL, NULL, NULL, '21/12/2020, 01 pcs, AE Oliour Rahman', 'ISI', '2021-09-24 21:04:14', '2021-09-24 21:04:14'),
(928, 'UPS-20035', 'UPS', NULL, NULL, NULL, NULL, NULL, '22/12/2020, 01 Pcs, AM Mollah Arif', 'CTG', '2021-09-24 21:05:39', '2021-09-24 21:05:39'),
(929, 'UPS-20036', 'UPS', NULL, NULL, NULL, NULL, NULL, '30/12/2020, 02 pcs, Chemist Abbas Ali', 'QCL', '2021-09-24 21:09:31', '2021-09-24 21:09:31'),
(930, 'UPS-21037', 'UPS', NULL, NULL, NULL, NULL, NULL, '03/01/2021, 01 Pcs,  AE Mostafegur Rahman', 'Small Arms (SA)', '2021-09-24 21:11:39', '2021-09-24 21:11:39'),
(931, 'UPS-21038', 'UPS', NULL, NULL, NULL, NULL, NULL, '07/01/2021,01 Pcs, Camera Purpose ICT Office', 'ICT-Office', '2021-09-24 21:13:05', '2021-09-24 21:13:05'),
(932, 'UPS-21039', 'UPS', NULL, NULL, NULL, NULL, NULL, '21/01/2021, 01 Pcs, AE Hasanur Raahman', 'QCL', '2021-09-24 21:14:11', '2021-09-24 21:14:11'),
(933, 'UPS-21040', 'UPS', NULL, NULL, NULL, NULL, NULL, '21/01/2021, 01 Pcs, Manager Bari', 'ME', '2021-09-24 21:25:08', '2021-09-24 21:25:08'),
(934, 'UPS-21041', 'UPS', NULL, NULL, NULL, NULL, NULL, '08/02/2021, 01 Pcs, Manager MAP', 'MAP', '2021-09-24 21:26:29', '2021-09-24 21:26:29'),
(935, 'Multi Socket-20001', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '11/08/2020, BOF Conference Room', 'Admin', '2021-09-24 21:35:43', '2021-09-24 21:35:43'),
(936, 'Multi Socket-20002', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '24/08/2020, Inclusion 02 Pcs, From Jeba Enterprise', 'ICT-Office', '2021-09-24 21:36:54', '2021-09-24 21:36:54'),
(937, 'Multi Socket-20003', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '22/08/2020, 01 Pcs, OIC ICT Office', 'OIC ICT cell', '2021-09-24 21:37:46', '2021-09-24 21:37:46'),
(938, 'Multi Socket-20004', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '10/09/2020, 01 Pcs, New ICT Cell', 'ICT-Office', '2021-09-24 21:38:32', '2021-09-24 21:38:32'),
(939, 'Multi Socket-20005', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '12/09/2020, 01 Pcs, Dir Admin ( Home)', 'Dir Admin & Mat', '2021-09-24 21:40:08', '2021-09-24 21:40:08'),
(940, 'Multi Socket-20006', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '15/09/2020,02 Pcs, Conference Room', 'Conference Room', '2021-09-24 21:41:32', '2021-09-24 21:41:32'),
(941, 'Multi Socket-20007', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '21/09/2020, Inclusion, 04 Pcs, Not Workable', 'Main store', '2021-09-24 21:43:55', '2021-09-24 21:43:55'),
(942, 'Multi Socket-20008', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '23/09/2020, 01 pcs, 3rd Floor Confarance Room', 'Conference Room', '2021-09-24 21:46:02', '2021-09-24 21:46:02'),
(943, 'Multi Socket-20009', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '27/09/2020, 02 Pcs, Dir Admin, Plg, Production', 'Dir Admin & Mat', '2021-09-24 21:54:56', '2021-09-24 21:54:56'),
(944, 'Multi Socket-20010', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '30/11/20, Inclusion 10 Pcs, M/S Jeba Enterprise,', 'ICT-Office', '2021-09-24 21:56:12', '2021-09-24 21:56:12'),
(945, 'Multi Socket-20011', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '02/12/2020, 01 Pcs, TTC Training Center', 'Planning', '2021-09-24 22:03:08', '2021-09-24 22:03:08'),
(946, 'Multi Socket-20012', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '10/12/2020, 01 Pcs, Ullash  For VTC Purpose', 'Residential', '2021-09-24 22:05:42', '2021-09-24 22:05:42'),
(947, 'Multi Socket-21013', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '13/01/2021, 01 Pcs, Condt Conference Room', 'Conference Room', '2021-09-24 22:07:02', '2021-09-24 22:07:02'),
(948, 'Multi Socket-21014', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '01/02/2021, 01 Pcs, Dy Comdt Office', 'Deputy Comdt Office', '2021-09-24 22:08:44', '2021-09-24 22:08:44'),
(949, 'Multi Socket-21015', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '13/02/2021, 02 Pcs, Johorul Islam Gate, Lan Purpose', 'Security', '2021-09-24 22:16:03', '2021-09-24 22:16:03'),
(950, 'Multi Socket-21016', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '01/04/2021, 01 Pcs, OIC ICT Cell', 'OIC ICT cell', '2021-09-24 22:21:42', '2021-09-24 22:21:42'),
(951, 'Multi Socket-21017', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '03/05/2021, 01 Pcs, Ullas Use Purpose', 'Residential', '2021-09-24 22:23:17', '2021-09-24 22:23:17'),
(952, 'Multi Socket-21018', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '14/06/2021, 01 Pcs, Central Monitoring Cell', 'Security', '2021-09-24 22:29:37', '2021-09-24 22:29:37'),
(953, 'Multi Socket-21019', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '16/06/2021, Inclusion 04 Pcs, Ryans IT Ltd', 'ICT-Office', '2021-09-24 22:31:29', '2021-09-24 22:31:29'),
(954, 'Multi Socket-21020', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '24/06/2021, 01 Pcs, Office Asst Nazrul', 'ICT-Office', '2021-09-24 22:34:36', '2021-09-24 22:34:36'),
(955, 'Multi Socket-21021', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '04/07/2021, 01 Pcs, Server Room', 'ICT-Office', '2021-09-24 22:35:16', '2021-09-24 22:35:16'),
(956, 'Multi Socket-21022', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '25/07/2021, 01 Pcs, use for NOC Room', 'Residential', '2021-09-24 22:36:22', '2021-09-24 22:36:22'),
(957, 'Multi Socket-21023', 'Multi Socket', NULL, NULL, NULL, NULL, NULL, '07/08/2021, 01 Pcs, New Server Room (cisco)', 'ICT-Office', '2021-09-24 22:37:17', '2021-09-24 22:37:17'),
(958, 'Power Supply-20001', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '13/07/2020, 01 Pcs, DD SA Rejaul Karim', 'Small Arms (SA)', '2021-09-24 23:32:27', '2021-09-24 23:32:27'),
(959, 'Power Supply-20002', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '20/07/2020, 01 Pcs, WO Najim', 'TPT', '2021-09-24 23:33:23', '2021-09-24 23:33:23'),
(960, 'Power Supply-20003', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '22/07/2020,01 Pcs, APO Mamun', 'Budget & Cash', '2021-09-24 23:42:45', '2021-09-24 23:42:45'),
(961, 'Power Supply-20004', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '05/08/2020, 01 Pcs, AM Store (AM Urmi)', 'Am main store', '2021-09-24 23:47:26', '2021-09-24 23:47:26'),
(962, 'Power Supply-20005', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '19/08/2020, 01 Pcs, AE Anisur Rahman (PSI)', 'Planning', '2021-09-24 23:50:38', '2021-09-24 23:50:38'),
(963, 'Power Supply-20006', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '12/09/2020, 01 Pcs, ICT Cell office', 'ICT-Office', '2021-09-24 23:54:20', '2021-09-24 23:54:20'),
(964, 'Power Supply-20007', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '17/10/2020, 01 pcs, Tech Mehedi Hasan', 'ICT-Office', '2021-09-24 23:55:14', '2021-09-24 23:55:14'),
(965, 'Power Supply-20008', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '24/11/2020, 01 Pcs, Ali Foraji (GK)', 'Main store', '2021-09-24 23:57:36', '2021-09-24 23:57:36'),
(966, 'Power Supply-21009', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '18/01/2021, 01 Pcs, AE Selim (MC)', 'PLG', '2021-09-25 00:07:56', '2021-09-25 00:07:56'),
(967, 'Power Supply-21010', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '02/02/2021, 01 pcs, Manager Jakaria', 'ME', '2021-09-25 00:15:41', '2021-09-25 00:15:41'),
(968, 'Power Supply-21011', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '08/02/2021, 01 Pcs, Manager MAP', 'MAP', '2021-09-25 00:17:20', '2021-09-25 00:17:20'),
(969, 'Power Supply-21012', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '28/03/2021, 01 Pcs, SAE Ali Farazi', 'MM', '2021-09-25 00:19:05', '2021-09-25 00:19:05'),
(970, 'Power Supply-21013', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '25/05/2021,01 Pcs, Manager Mizan', 'Main store', '2021-09-25 00:20:25', '2021-09-25 00:20:25'),
(971, 'Power Supply-21014', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '28/05/2021, 02 Pcs, Internet Work purpose', 'Small Arms Ammo (SAA)', '2021-09-25 00:26:30', '2021-09-25 00:26:30'),
(972, 'Power Supply-21015', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '30/05/2021, 01 Pcs, Budget & Cash', 'Budget & Cash', '2021-09-25 00:41:52', '2021-09-25 00:41:52'),
(973, 'Power Supply-21016', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '05/06/2021, SAE Monjurul Islam', 'Telephone Exchange', '2021-09-25 00:43:40', '2021-09-25 00:43:40'),
(974, 'Power Supply-21017', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '16/06/2021, 01 Pcs, DD HAG Office CPU', 'DD HAG Office', '2021-09-25 00:44:41', '2021-09-25 00:44:41'),
(975, 'Power Supply-21018', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '07/07/2021, 01 Pcs, CPU Repair Purpose', 'RM-1', '2021-09-25 01:07:19', '2021-09-25 01:07:19'),
(976, 'Power Supply-21019', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '17/07/2021, 01 pcs, CPU Repair Purpose', 'Small Arms Ammo (SAA)', '2021-09-25 01:09:21', '2021-09-25 01:09:21'),
(977, 'Power Supply-21020', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '06/07/2021, 01 Pcs, Progress Office', 'RM-1', '2021-09-25 01:12:55', '2021-09-25 01:12:55'),
(978, 'Power Supply-21022', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '18/07/2021, 02 pcs, Manager CTM 2 CPU Repair', 'CTM', '2021-09-25 01:16:18', '2021-09-25 01:16:18'),
(979, 'Power Supply-21023', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '15/08/2021, 01 PCS, Main Store Repair Purpose', 'Main store', '2021-09-25 01:33:55', '2021-09-25 01:33:55'),
(980, 'CC Camera (High Resolution)-20001', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, NULL, '17/07/2020, 02 Pcs, Barier Gate CC TV', 'Security', '2021-09-25 01:40:05', '2021-09-25 01:40:05'),
(981, 'CC Camera (High Resolution)-20002', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, NULL, '18/07/2020,02 Pcs, Barrier Gate CC TV Camera', 'Security', '2021-09-25 01:41:34', '2021-09-25 01:41:34'),
(982, 'CC Camera (High Resolution)-20003', 'CC Camera (High Resolution)', NULL, NULL, NULL, NULL, NULL, '23/07/2020, 01 Pcs, Barrier Gate CC TV Camera', 'Security', '2021-09-25 01:45:55', '2021-09-25 01:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_productissudes`
--

CREATE TABLE `product_productissudes` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `productissued_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_productissudes`
--

INSERT INTO `product_productissudes` (`product_id`, `productissued_id`) VALUES
(380, 40),
(268, 40),
(161, 40),
(141, 40),
(143, 41),
(295, 45),
(161, 43),
(161, 43),
(268, 40),
(154, 40),
(380, 41),
(380, 43),
(380, 45),
(335, 40),
(380, 46),
(268, 40),
(342, 41),
(251, 41),
(335, 47),
(313, 47),
(313, 47),
(431, 46),
(578, 46);

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
('8LeouQe3WeHNNPx80dN2VBO2qciiwU7RPTMYFnmQ', NULL, '192.168.101.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaGNMMVZtOEZmYlhvS284MmpEMVcxdmFIMnB0UmZ0QWtWTU5wMTBPciI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTkyLjE2OC4xMDEuNTAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJC5JNy5UZXBEZnlmNVl4RWpBM2tBVmVNNWZ3QWlXRi9hUVBpQWE0VnFtRWs5aUV0VnVvV0lTIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQuSTcuVGVwRGZ5ZjVZeEVqQTNrQVZlTTVmd0FpV0YvYVFQaUFhNFZxbUVrOWlFdFZ1b1dJUyI7fQ==', 1632557406),
('lHuNdCMWugbwy0qHmb4qvzJePKZOl1DM9LikO92s', 13, '192.168.101.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidU05UHZrOEZKYmRSa3dzdzZGMXU1UEJ1TlAwaVlBYWg0SDZwNEpxdiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTkyLjE2OC4xMDEuNTAvYWRtaW4vZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTM7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRvd0NGRy5BUUNlQkQwVENQVGt0Qi5Pb3gxdWF3RFlEY2tzWVpZY3BxRDNBckJ6dHF5b21BMiI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkb3dDRkcuQVFDZUJEMFRDUFRrdEIuT294MXVhd0RZRGNrc1laWWNwcUQzQXJCenRxeW9tQTIiO30=', 1632561087);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accessoryName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoryFirstProperty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessorySecondProperty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessoryThirdProperty` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `inclusion` bigint(20) DEFAULT NULL,
  `exclusion` bigint(20) DEFAULT NULL,
  `stockBalance` bigint(20) DEFAULT NULL,
  `maintanance` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issueNo` bigint(20) DEFAULT NULL,
  `issuedTo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `accessoryName`, `accessoryFirstProperty`, `accessorySecondProperty`, `accessoryThirdProperty`, `date`, `inclusion`, `exclusion`, `stockBalance`, `maintanance`, `issueNo`, `issuedTo`, `branch`, `remarks`, `created_at`, `updated_at`) VALUES
(22, 'Router(TP Link)', NULL, NULL, NULL, '2021-09-14', 500, NULL, 500, NULL, NULL, NULL, NULL, NULL, '2021-09-19 01:41:25', '2021-09-19 01:41:25'),
(23, 'Router(TP Link)', NULL, NULL, NULL, '2021-09-25', NULL, 30, 470, NULL, NULL, NULL, NULL, NULL, '2021-09-19 01:42:21', '2021-09-19 01:42:21'),
(24, 'Pendrive(Transent)', '64GB', NULL, NULL, '2021-09-23', 800, NULL, 800, NULL, NULL, NULL, NULL, NULL, '2021-09-19 01:46:16', '2021-09-19 01:46:16'),
(25, 'Pendrive(Transent)', '64GB', NULL, NULL, '2021-09-15', NULL, 60, 740, NULL, NULL, 'DD Admin', 'Admin', 'Pendrive is sent to admin branch', '2021-09-19 01:46:58', '2021-09-19 01:47:33'),
(26, 'Router(D-Link)', NULL, NULL, NULL, '2021-09-08', 300, NULL, 300, NULL, NULL, NULL, NULL, NULL, '2021-09-19 01:58:00', '2021-09-19 01:58:00');

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
(7, 'Black & White Printer', '2021-08-30 23:26:34', '2021-08-30 23:26:34'),
(13, 'Core Router', '2021-09-15 19:35:31', '2021-09-15 19:35:31'),
(14, 'Home Router', '2021-09-15 19:35:36', '2021-09-15 19:35:36'),
(15, 'test Sub category', '2021-09-15 19:50:02', '2021-09-15 19:50:02'),
(16, 'Tablet PC With Keyboard', '2021-09-16 01:53:07', '2021-09-16 01:53:07'),
(17, 'Cisco', '2021-09-17 19:39:55', '2021-09-17 19:39:55'),
(18, 'Sophos', '2021-09-17 19:40:10', '2021-09-17 19:40:10'),
(19, 'Database Server', '2021-09-17 20:25:24', '2021-09-17 20:25:24'),
(20, 'Data recovery Server', '2021-09-17 20:25:34', '2021-09-17 20:25:34'),
(21, 'API Gateway Server', '2021-09-17 20:25:43', '2021-09-17 20:25:43'),
(22, 'Wireless Mouse', '2021-09-21 19:49:50', '2021-09-21 19:49:50'),
(23, 'Professional Plus-2019', '2021-09-21 22:08:06', '2021-09-21 22:12:50'),
(24, 'DDR-04', '2021-09-21 23:18:59', '2021-09-21 23:18:59'),
(25, 'DDR-03', '2021-09-21 23:19:29', '2021-09-21 23:19:29');

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
(18, 'Intel Pentium', '2021-08-31 19:19:32', '2021-08-31 19:19:32'),
(19, 'Intel i3', '2021-08-31 21:05:45', '2021-08-31 21:05:45'),
(20, 'Duel Core', '2021-08-31 21:09:10', '2021-08-31 21:09:10'),
(21, 'Pentium', '2021-08-31 21:09:21', '2021-08-31 21:09:21'),
(27, 'CCR', '2021-09-15 19:37:20', '2021-09-15 19:37:20'),
(28, 'RB', '2021-09-15 19:37:28', '2021-09-15 19:37:28'),
(29, 'HEX', '2021-09-15 19:37:36', '2021-09-15 19:37:36'),
(30, 'Test type', '2021-09-15 19:50:54', '2021-09-15 19:50:54'),
(31, '1TB', '2021-09-15 23:10:04', '2021-09-15 23:10:04'),
(32, '500 GB', '2021-09-15 23:10:12', '2021-09-15 23:10:12'),
(33, '2TB', '2021-09-15 23:10:19', '2021-09-15 23:10:19'),
(34, '4TB', '2021-09-15 23:10:32', '2021-09-15 23:10:32'),
(35, '16 Gb', '2021-09-16 01:49:36', '2021-09-16 01:49:36'),
(36, 'Software Firewall', '2021-09-17 19:49:28', '2021-09-17 19:49:28'),
(37, 'Hardware Firewall', '2021-09-17 19:49:39', '2021-09-17 19:49:39'),
(38, 'Epson L3110', '2021-09-17 20:06:42', '2021-09-17 20:06:42'),
(39, 'HP M 402 dn', '2021-09-17 20:07:57', '2021-09-17 20:07:57'),
(40, 'HP P 2035', '2021-09-17 20:08:15', '2021-09-17 20:08:15'),
(41, 'HP M 252n', '2021-09-17 20:08:29', '2021-09-17 20:08:29'),
(42, 'Brother- T510W', '2021-09-17 20:09:21', '2021-09-17 20:09:21'),
(43, 'Cannon LBP 3300', '2021-09-17 20:09:42', '2021-09-17 20:09:42'),
(44, 'Epson-3300', '2021-09-17 20:09:57', '2021-09-17 20:09:57'),
(45, 'Epson -430', '2021-09-17 20:10:22', '2021-09-17 20:10:22'),
(46, 'LBP 3008A', '2021-09-17 20:10:50', '2021-09-17 20:10:50'),
(47, 'HP P 1120', '2021-09-17 20:11:02', '2021-09-17 20:11:02'),
(48, 'Epson L-130', '2021-09-17 20:11:26', '2021-09-17 20:11:26'),
(49, 'TOS-4518A', '2021-09-17 20:11:44', '2021-09-17 20:11:44'),
(50, 'POE', '2021-09-17 20:12:16', '2021-09-17 20:12:16'),
(51, 'HP P 1102', '2021-09-17 20:12:26', '2021-09-17 20:12:26'),
(52, 'Non POE', '2021-09-17 20:12:27', '2021-09-17 20:12:27'),
(53, 'HP M 201n', '2021-09-17 20:12:44', '2021-09-17 20:12:44'),
(54, 'LBP 6230dn', '2021-09-17 20:13:11', '2021-09-17 20:13:11'),
(55, 'Epson-430', '2021-09-17 20:13:30', '2021-09-17 20:13:30'),
(56, 'Epson -M 2140', '2021-09-17 20:14:06', '2021-09-17 20:14:06'),
(57, 'HP -M 404dn', '2021-09-17 20:14:51', '2021-09-17 20:14:51'),
(58, 'HP-P 1005', '2021-09-17 20:15:15', '2021-09-17 20:15:15'),
(59, 'HP-402', '2021-09-17 20:15:48', '2021-09-17 20:15:48'),
(60, 'TOS-STD-4518A', '2021-09-17 20:16:17', '2021-09-17 20:16:17'),
(61, 'Epson-LQ-310', '2021-09-17 20:17:02', '2021-09-17 20:17:02'),
(62, 'TOS-STD', '2021-09-17 20:17:34', '2021-09-17 20:17:34'),
(63, 'HP-Laser-P1102', '2021-09-17 20:17:58', '2021-09-17 20:17:58'),
(64, 'Samsung-ML-1866', '2021-09-17 20:18:32', '2021-09-17 20:18:32'),
(65, 'Hp-1102W', '2021-09-17 20:18:42', '2021-09-17 20:18:42'),
(66, 'Epson-L220', '2021-09-17 20:19:06', '2021-09-17 20:19:06'),
(67, 'Samsung ML-1660', '2021-09-17 20:19:31', '2021-09-17 20:19:31'),
(68, 'Samsung ML 1640', '2021-09-17 20:20:00', '2021-09-17 20:20:00'),
(69, 'HP- P1005', '2021-09-18 01:22:37', '2021-09-18 01:22:37'),
(70, '32 GB', '2021-09-20 20:22:42', '2021-09-20 20:22:42'),
(71, '64 GB', '2021-09-20 20:23:00', '2021-09-20 20:23:00'),
(72, '128 GB', '2021-09-20 20:23:08', '2021-09-20 20:23:08'),
(73, 'C270 HD WebCam', '2021-09-21 00:26:33', '2021-09-21 00:26:33'),
(74, 'Logitech M171', '2021-09-21 19:42:10', '2021-09-21 19:42:10'),
(75, 'Speedy Lite', '2021-09-21 19:47:00', '2021-09-21 19:47:00'),
(76, '480GB', '2021-09-21 21:25:29', '2021-09-21 21:25:29'),
(77, 'USB 3.0', '2021-09-21 21:55:26', '2021-09-21 21:55:26'),
(78, 'M41', '2021-09-21 22:23:51', '2021-09-21 22:23:51'),
(79, 'M 61', '2021-09-21 22:23:57', '2021-09-21 22:23:57'),
(80, 'M110', '2021-09-21 22:24:11', '2021-09-21 22:24:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
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

INSERT INTO `users` (`id`, `name`, `designation`, `role`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'apon', '', 'user', 'apon@gmail.com', NULL, '$2y$10$aMkh/yXJ9619U/gw.VUjUOD/Kf7EunQjpDyFqo7UJTgvlUYCOyvUa', NULL, NULL, NULL, NULL, NULL, '2021-08-28 23:44:45', '2021-08-28 23:44:45'),
(2, 'Test', '', 'user', 'test@gmail.com', NULL, '$2y$10$l2v88uEZh1cpo3Ftk./3A.IBiC2EaeB4zbw5T4IDtR8OGYTj.vxZ.', NULL, NULL, 'P5UQrYa74hVJsqFkMCRsX0APYyPpgUrhmgk7Kh6lPUmqV6fsTa6DszLBlLkl', NULL, NULL, '2021-08-30 18:53:11', '2021-08-30 18:53:11'),
(3, 'Touhid', '', 'admin', 'touhidspi@gmail.com', NULL, '$2y$10$wfIbr0g3kV2o3BvfRUIUOeMbTJu19ytE4bW5egHi24aXdSDvNS5Se', NULL, NULL, NULL, NULL, NULL, '2021-08-30 23:06:22', '2021-08-30 23:06:22'),
(6, 'test', '', 'user', 'test_2@gmail.com', NULL, '$2y$10$RY5n1VdiUgMNhOMbuX10OespbGZ4fTvX1QxbRlNEJh2HgquD7JoP2', NULL, NULL, NULL, NULL, NULL, '2021-09-02 05:06:17', '2021-09-02 05:06:17'),
(7, 'tea', '', 'technician', 'tea@gmail.com', NULL, '$2y$10$TeCXMdb.kahNu9Fjq.WHmeTxLupgaBx1OM3qSAJZcijYoC5Y5L18.', NULL, NULL, NULL, NULL, NULL, '2021-09-03 01:01:19', '2021-09-08 00:19:04'),
(8, 'testAdmin', '', 'admin', 'testAdmin@gmail.com', NULL, '$2y$10$5raNNJWAUPxn2ltMya8ubOxu0HEzWg2.GU1E.F.YA899B220bGlCm', NULL, NULL, NULL, NULL, NULL, '2021-09-03 19:05:40', '2021-09-03 19:05:40'),
(9, 'test_user', '', 'technician', 'test_user@gmail.com', NULL, '$2y$10$zgGV1A7bOhvxraGk.TlH8.VMkJ/b3yiazGkbQQhmpetXznR0HN/au', NULL, NULL, NULL, NULL, NULL, '2021-09-03 20:51:08', '2021-09-08 00:19:55'),
(10, 'Shiplu vai', '', 'user', 'vai@gmail.com', NULL, '$2y$10$6Jie/uuw3p07Pj3o5AGJR.iCZ2gsNbNURkVieW2YrQBvSrsSe0c2K', NULL, NULL, NULL, NULL, NULL, '2021-09-03 22:08:57', '2021-09-03 22:08:57'),
(11, 'sakib', '', 'user', 'sakib@gmail.com', NULL, '$2y$10$0Ko5xUtUKhWx04vmr.x/KOBz7e6G4z3ukRD93/1m34aakHwm/1APG', NULL, NULL, NULL, NULL, NULL, '2021-09-04 01:37:42', '2021-09-04 01:37:42'),
(12, 'user', '', 'user', 'user@gmail.com', NULL, '$2y$10$YEgJZv0r5eX2R.xzUllTjuzBPGc37GfFiFZLvriRoMOHFbv/AYHAe', NULL, NULL, NULL, NULL, NULL, '2021-09-04 18:50:33', '2021-09-08 00:23:03'),
(13, 'Admin', '', 'admin', 'admin@gmail.com', NULL, '$2y$10$owCFG.AQCeBD0TCPTktB.Oox1uawDYDcksYZYcpqD3ArBztqyomA2', NULL, NULL, 'U8p33mvqEhAxIkonHXOQ0x8PfNKe3TNABDMmEX8l2UxEPSd7JKleVtCt5v7a', NULL, NULL, '2021-09-04 18:53:12', '2021-09-04 18:53:12'),
(15, 'technician', '', 'technician', 'technician@gmail.com', NULL, '$2y$10$G6H/YZgvw0GQWbMy1bUtYeO4TcjownMu0dzcoWNPMoLL0IUEjdUOK', NULL, NULL, NULL, NULL, NULL, '2021-09-06 21:22:38', '2021-09-06 21:22:38'),
(16, 'jahid vai', '', 'user', 'jahidVai@gmail.com', NULL, '12345678', NULL, NULL, NULL, NULL, NULL, '2021-09-08 00:44:05', '2021-09-20 19:11:08'),
(17, 'Ashraf_tech', '', 'technician', 'Ashraf@gmail.com', NULL, '$2y$10$Gc/H.tnDtDA5qLta5JEw4OixjHQTXWyMniHy2ytMrv2NBirJtdIrS', NULL, NULL, NULL, NULL, NULL, '2021-09-08 01:28:06', '2021-09-08 19:55:38'),
(19, 'ict-36', '', 'user', 'ict-36_outsource_16@bof.org', NULL, '$2y$10$KbExR510e8rMwFEzi7ieG.ZXoYWvE39LSDnxVnhXOEOyKAJYsDr/y', NULL, NULL, NULL, NULL, NULL, '2021-09-11 20:49:52', '2021-09-11 20:49:52'),
(20, 'ruhulamin', '', 'admin', 'ruhulamin_softEng_17@bof.org', NULL, '$2y$10$KRWYXRLHLeRSBbU4SwPtxOOt//sgBQ0s2fV/qopD5Xi8lmbWA4Vxa', NULL, NULL, NULL, NULL, NULL, '2021-09-11 20:53:13', '2021-09-11 21:19:14'),
(23, 'abc', NULL, 'user', 'abc@gmail.com', NULL, '$2y$10$nKnML0OpyAd3W71I3k/N7OraYiHqKwfVctK1T36fHMpPzYnBthA4W', NULL, NULL, NULL, NULL, NULL, '2021-09-12 01:06:34', '2021-09-12 01:06:34'),
(24, '12', NULL, 'user', '12@g.com', NULL, '$2y$10$ivzVGB8I32SJP/j6wkuf1eLf.7bBFsFjI1A1fHWJAdObugYtMkekC', NULL, NULL, NULL, NULL, NULL, '2021-09-12 01:20:14', '2021-09-12 01:20:14'),
(25, 'test', NULL, 'user', 'test11@bof.com', NULL, '$2y$10$OXJ5Wuv0ODvu.e99zCk0VO/18KaN0IUFAaNDYW2fVyRqTywZ.ZaA6', NULL, NULL, NULL, NULL, NULL, '2021-09-14 18:56:32', '2021-09-14 18:56:32'),
(26, 'Farhad', NULL, 'admin', 'Farhad@bof.com', NULL, '$2y$10$m20aNIK3ujrJtkodqWnO6emjzuva7r3rlx3mvNQVqlkt0QKZmdiGO', NULL, NULL, NULL, NULL, NULL, '2021-09-15 19:32:50', '2021-09-15 19:33:06'),
(28, 'Jubya', NULL, 'admin', 'jubyasayed@gmail.com', NULL, '$2y$10$.I7.TepDfyf5YxEjA3kAVeM5fwAiWF/aQPiAa4VqmEk9iEtVuoWIS', NULL, NULL, NULL, NULL, NULL, '2021-09-20 19:10:17', '2021-09-20 19:10:59'),
(29, 'tawhid', NULL, 'user', 'touhid1spi@gmail.com', NULL, '$2y$10$VyyLn5VWBk5UhKQbqyd/4eVBhcqUDqflPBznQtu.n84u9aJhefUhS', NULL, NULL, NULL, NULL, NULL, '2021-09-22 01:17:15', '2021-09-22 01:17:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_product_id_foreign` (`product_id`);

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
-- Indexes for table `productissueds`
--
ALTER TABLE `productissueds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_productissudes`
--
ALTER TABLE `product_productissudes`
  ADD KEY `product_productissudes_product_id_foreign` (`product_id`),
  ADD KEY `product_productissudes_productissued_id_foreign` (`productissued_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productissueds`
--
ALTER TABLE `productissueds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=983;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_productissudes`
--
ALTER TABLE `product_productissudes`
  ADD CONSTRAINT `product_productissudes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_productissudes_productissued_id_foreign` FOREIGN KEY (`productissued_id`) REFERENCES `productissueds` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
