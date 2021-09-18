-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2021 at 05:01 AM
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
(40, 'ASUS', '2021-08-31 00:24:18', '2021-08-31 00:24:18'),
(41, 'CSM', '2021-08-31 21:05:28', '2021-08-31 21:05:28'),
(47, 'Microtic', '2021-09-15 19:36:30', '2021-09-15 19:36:30'),
(48, 'Cisco', '2021-09-15 19:36:35', '2021-09-15 19:36:35'),
(49, 'Juniper', '2021-09-15 19:36:41', '2021-09-15 19:36:41'),
(51, 'Tenda', '2021-09-15 20:59:26', '2021-09-15 20:59:26'),
(52, 'TP-Link', '2021-09-15 21:08:06', '2021-09-15 21:08:06'),
(53, 'D-Link', '2021-09-15 21:08:11', '2021-09-15 21:08:11'),
(54, 'Vivanco', '2021-09-17 20:30:44', '2021-09-17 20:30:44'),
(55, 'Brother', '2021-09-17 20:43:57', '2021-09-17 20:43:57');

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
(24, 'Rack', '2021-09-17 20:28:48', '2021-09-17 20:28:48');

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
(111, 'Small Arms (SA)', '2021-09-15 23:13:03', '2021-09-15 23:13:03');

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
(52, '2021_09_14_020518_product_productissudes', 11);

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
(33, 'L-19006', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630895141.jpg', NULL, 'Dir Admin & Mat', '2021-08-31 00:08:59', '2021-09-05 20:25:41'),
(34, 'L-19007', 'Laptop', NULL, 'Core i5', NULL, 'HP', '1630810160.jpg', NULL, 'Dy condd', '2021-08-31 00:10:00', '2021-09-04 20:49:20'),
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
(179, 'W0030', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630904728.jpg', NULL, 'ICT', '2021-08-31 01:00:21', '2021-09-05 23:05:28'),
(180, 'W0031', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905260.jpg', NULL, 'ICT', '2021-08-31 01:00:39', '2021-09-05 23:14:20'),
(181, 'W0033', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905237.jpg', NULL, 'ICT', '2021-08-31 01:00:49', '2021-09-05 23:13:57'),
(182, 'W0034', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905215.jpg', NULL, 'ICT', '2021-08-31 01:01:02', '2021-09-05 23:13:35'),
(183, 'W0037', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905195.jpg', NULL, 'ICT', '2021-08-31 01:01:12', '2021-09-05 23:13:15'),
(184, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905175.jpg', NULL, 'ICT', '2021-08-31 01:01:23', '2021-09-05 23:12:55'),
(185, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905136.jpg', NULL, 'ICT', '2021-08-31 01:01:33', '2021-09-05 23:12:16'),
(186, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905111.jpg', NULL, 'ICT', '2021-08-31 01:01:43', '2021-09-05 23:11:51'),
(187, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905062.jpg', NULL, 'ICT', '2021-08-31 01:01:52', '2021-09-05 23:11:02'),
(188, 'W00', NULL, NULL, 'Core i7', NULL, NULL, '1630905028.jpg', NULL, 'ICT', '2021-08-31 01:02:00', '2021-09-05 23:10:28'),
(189, 'W00', 'Desktop', NULL, 'Core i7', NULL, NULL, '1630905006.jpg', NULL, 'ICT', '2021-08-31 01:02:10', '2021-09-05 23:10:06'),
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
(326, 'W0038', 'Workstation PC', NULL, NULL, NULL, NULL, '1630811087.jpg', NULL, 'R & D', '2021-08-31 21:23:05', '2021-09-04 21:04:47'),
(327, 'W00', 'Workstation PC', NULL, NULL, NULL, NULL, '1630811055.jpg', NULL, 'R & D', '2021-08-31 21:23:27', '2021-09-04 21:04:15'),
(328, 'W00', 'Workstation PC', NULL, NULL, NULL, NULL, '1630811023.jpg', NULL, 'R & D', '2021-08-31 21:23:36', '2021-09-04 21:03:43'),
(329, 'W00', 'Workstation PC', NULL, NULL, NULL, NULL, '1630810999.jpg', 'This is a workstation Personal Computer', 'R & D', '2021-08-31 21:23:56', '2021-09-04 21:03:19'),
(330, 'W00', 'Workstation PC', NULL, NULL, NULL, NULL, '1630810969.jpg', NULL, 'R & D', '2021-08-31 21:24:13', '2021-09-04 21:02:49'),
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
(390, 'R200006', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '1-10-20, Entry: 1 pcs', 'Bangabondhu Cornar', '2021-09-15 21:16:23', '2021-09-15 21:16:23');
INSERT INTO `products` (`id`, `name`, `category`, `subcategory`, `type`, `item`, `brand`, `image`, `description`, `department`, `created_at`, `updated_at`) VALUES
(391, 'R20007', 'Router', 'Home Router', NULL, NULL, 'D-Link', NULL, '13-10-20 , Inclusion :3 pcs , from Computer City', 'ICT', '2021-09-15 21:17:51', '2021-09-15 21:18:08'),
(392, 'R20008', 'Router', 'Home Router', NULL, NULL, 'TP-Link', NULL, '13-10-20 , Entry: 1pcs , VIP Room', 'Officers Mess', '2021-09-15 21:19:30', '2021-09-15 21:19:30'),
(393, 'R20009', 'Router', 'Home Router', NULL, NULL, NULL, NULL, '14-10-20 , Entry : 1 pcs', 'Comdt Conference Room', '2021-09-15 21:21:30', '2021-09-15 21:24:43'),
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
(461, 'Printer-0012', 'Printer', NULL, 'Cannon LBP 3300', NULL, 'LBP', NULL, 'MAP', 'MAP', '2021-09-17 20:52:54', '2021-09-17 20:52:54');

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
(184, 47),
(431, 46);

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
('btklIBrvzqbwkhVjQCwnOR2yArpaj2uWMewd4Kff', 13, '192.168.101.50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoiZkkxS3hId3JmUU9JckVyOVJPSkFOOU1ZRkNoWTFSTWVOV1NxeDRqUiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xOTIuMTY4LjEwMS41MC9hZG1pbi9wcm9kdWN0cy80MjkiO31zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJG93Q0ZHLkFRQ2VCRDBUQ1BUa3RCLk9veDF1YXdEWURja3NZWlljcHFEM0FyQnp0cXlvbUEyIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRvd0NGRy5BUUNlQkQwVENQVGt0Qi5Pb3gxdWF3RFlEY2tzWVpZY3BxRDNBckJ6dHF5b21BMiI7czoxNzoiZGV0YWlsc09mVXNlck5hbWUiO3M6MTE6IkFzaHJhZl90ZWNoIjtzOjIxOiJjb21wbGFpbnRzQnlZZWFyTW9udGgiO086Mzk6IklsbHVtaW5hdGVcRGF0YWJhc2VcRWxvcXVlbnRcQ29sbGVjdGlvbiI6MTp7czo4OiIAKgBpdGVtcyI7YTo0OntpOjA7TzozMToiQXBwXE1vZGVsc1xUZWNobmljaWFuXENvbXBsYWludCI6Mjg6e3M6ODoiACoAdGFibGUiO3M6MTA6ImNvbXBsYWludHMiO3M6MTM6IgAqAGNvbm5lY3Rpb24iO3M6NToibXlzcWwiO3M6MTM6IgAqAHByaW1hcnlLZXkiO3M6MjoiaWQiO3M6MTA6IgAqAGtleVR5cGUiO3M6MzoiaW50IjtzOjEyOiJpbmNyZW1lbnRpbmciO2I6MTtzOjc6IgAqAHdpdGgiO2E6MDp7fXM6MTI6IgAqAHdpdGhDb3VudCI7YTowOnt9czoxOToicHJldmVudHNMYXp5TG9hZGluZyI7YjowO3M6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjE2OntzOjI6ImlkIjtpOjE2O3M6MTE6InByb2R1Y3ROYW1lIjtzOjEyOiJURVNULUlDVC0xMDEiO3M6MTA6InByb2R1Y3RfaWQiO2k6MzgwO3M6NDoiZGF0ZSI7czoxMDoiMjAyMS0wOS0wOCI7czo0OiJ0aW1lIjtzOjU6IjEzOjI5IjtzOjEzOiJjb21wbGFpbnROYW1lIjtzOjExOiJTYWtpYiBIYXNhbiI7czoyMDoiY29tcGxhaW50RGVzaWduYXRpb24iO3M6NToiQWRtaW4iO3M6MjA6ImNvbXBsYWludERlc2NyaXB0aW9uIjtzOjMxOiJ3aW5kb3dzIHByb2JsZW0gLCAgcGMgd29yayBzbG93IjtzOjIxOiJjb21wbGFpbnRSZWNlaXZlck5hbWUiO3M6MTA6InRlY2huaWNpYW4iO3M6Mjk6ImNvbXBsYWludFNvbHZlclRlY2huaWNpYW5OYW1lIjtzOjExOiJBc2hyYWZfdGVjaCI7czoyMToiY29tcGxhaW50U29sdXRpb25EYXRlIjtzOjEwOiIyMDIxLTA5LTExIjtzOjI4OiJjb21wbGFpbnRTb2x1dGlvbkRlc2NyaXB0aW9uIjtzOjQ3OiJuZWVkZWQgdG8gYmUgdXBkYXRlZCB0aGUgd2luZG93cyBvcGVyYXRpb24gLyBvayI7czoyOiJpYyI7TjtzOjM6Im9pYyI7TjtzOjEwOiJjcmVhdGVkX2F0IjtzOjE5OiIyMDIxLTA5LTA4IDA3OjMxOjE3IjtzOjEwOiJ1cGRhdGVkX2F0IjtzOjE5OiIyMDIxLTA5LTA4IDA3OjMxOjE3Ijt9czoxMToiACoAb3JpZ2luYWwiO2E6MTY6e3M6MjoiaWQiO2k6MTY7czoxMToicHJvZHVjdE5hbWUiO3M6MTI6IlRFU1QtSUNULTEwMSI7czoxMDoicHJvZHVjdF9pZCI7aTozODA7czo0OiJkYXRlIjtzOjEwOiIyMDIxLTA5LTA4IjtzOjQ6InRpbWUiO3M6NToiMTM6MjkiO3M6MTM6ImNvbXBsYWludE5hbWUiO3M6MTE6IlNha2liIEhhc2FuIjtzOjIwOiJjb21wbGFpbnREZXNpZ25hdGlvbiI7czo1OiJBZG1pbiI7czoyMDoiY29tcGxhaW50RGVzY3JpcHRpb24iO3M6MzE6IndpbmRvd3MgcHJvYmxlbSAsICBwYyB3b3JrIHNsb3ciO3M6MjE6ImNvbXBsYWludFJlY2VpdmVyTmFtZSI7czoxMDoidGVjaG5pY2lhbiI7czoyOToiY29tcGxhaW50U29sdmVyVGVjaG5pY2lhbk5hbWUiO3M6MTE6IkFzaHJhZl90ZWNoIjtzOjIxOiJjb21wbGFpbnRTb2x1dGlvbkRhdGUiO3M6MTA6IjIwMjEtMDktMTEiO3M6Mjg6ImNvbXBsYWludFNvbHV0aW9uRGVzY3JpcHRpb24iO3M6NDc6Im5lZWRlZCB0byBiZSB1cGRhdGVkIHRoZSB3aW5kb3dzIG9wZXJhdGlvbiAvIG9rIjtzOjI6ImljIjtOO3M6Mzoib2ljIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjEtMDktMDggMDc6MzE6MTciO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjEtMDktMDggMDc6MzE6MTciO31zOjEwOiIAKgBjaGFuZ2VzIjthOjA6e31zOjg6IgAqAGNhc3RzIjthOjA6e31zOjE3OiIAKgBjbGFzc0Nhc3RDYWNoZSI7YTowOnt9czo4OiIAKgBkYXRlcyI7YTowOnt9czoxMzoiACoAZGF0ZUZvcm1hdCI7TjtzOjEwOiIAKgBhcHBlbmRzIjthOjA6e31zOjE5OiIAKgBkaXNwYXRjaGVzRXZlbnRzIjthOjA6e31zOjE0OiIAKgBvYnNlcnZhYmxlcyI7YTowOnt9czoxMjoiACoAcmVsYXRpb25zIjthOjA6e31zOjEwOiIAKgB0b3VjaGVzIjthOjA6e31zOjEwOiJ0aW1lc3RhbXBzIjtiOjE7czo5OiIAKgBoaWRkZW4iO2E6MDp7fXM6MTA6IgAqAHZpc2libGUiO2E6MDp7fXM6MTE6IgAqAGZpbGxhYmxlIjthOjA6e31zOjEwOiIAKgBndWFyZGVkIjthOjE6e2k6MDtzOjE6IioiO319aToxO086MzE6IkFwcFxNb2RlbHNcVGVjaG5pY2lhblxDb21wbGFpbnQiOjI4OntzOjg6IgAqAHRhYmxlIjtzOjEwOiJjb21wbGFpbnRzIjtzOjEzOiIAKgBjb25uZWN0aW9uIjtzOjU6Im15c3FsIjtzOjEzOiIAKgBwcmltYXJ5S2V5IjtzOjI6ImlkIjtzOjEwOiIAKgBrZXlUeXBlIjtzOjM6ImludCI7czoxMjoiaW5jcmVtZW50aW5nIjtiOjE7czo3OiIAKgB3aXRoIjthOjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTk6InByZXZlbnRzTGF6eUxvYWRpbmciO2I6MDtzOjEwOiIAKgBwZXJQYWdlIjtpOjE1O3M6NjoiZXhpc3RzIjtiOjE7czoxODoid2FzUmVjZW50bHlDcmVhdGVkIjtiOjA7czoxMzoiACoAYXR0cmlidXRlcyI7YToxNjp7czoyOiJpZCI7aToyMjtzOjExOiJwcm9kdWN0TmFtZSI7czoxMjoiVEVTVC1JQ1QtMTAxIjtzOjEwOiJwcm9kdWN0X2lkIjtpOjM4MDtzOjQ6ImRhdGUiO3M6MTA6IjIwMjEtMDktMTUiO3M6NDoidGltZSI7czo1OiIxMDoxMiI7czoxMzoiY29tcGxhaW50TmFtZSI7czo0OiJBcG9uIjtzOjIwOiJjb21wbGFpbnREZXNpZ25hdGlvbiI7czozMDoiSnVuaW9yIFN5c3RlbSBTdXBwb3J0IEVuZ2luZWVyIjtzOjIwOiJjb21wbGFpbnREZXNjcmlwdGlvbiI7czoxNToid2luZG93cyBwcm9ibGVtIjtzOjIxOiJjb21wbGFpbnRSZWNlaXZlck5hbWUiO3M6NToibWlqYW4iO3M6Mjk6ImNvbXBsYWludFNvbHZlclRlY2huaWNpYW5OYW1lIjtzOjExOiJBc2hyYWZfdGVjaCI7czoyMToiY29tcGxhaW50U29sdXRpb25EYXRlIjtzOjEwOiIyMDIxLTA5LTIxIjtzOjI4OiJjb21wbGFpbnRTb2x1dGlvbkRlc2NyaXB0aW9uIjtzOjc6IndpbmRvd3MiO3M6MjoiaWMiO047czozOiJvaWMiO047czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyMS0wOS0xNSAwMTozNDoxOSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyMS0wOS0xNSAwMTozNTowNyI7fXM6MTE6IgAqAG9yaWdpbmFsIjthOjE2OntzOjI6ImlkIjtpOjIyO3M6MTE6InByb2R1Y3ROYW1lIjtzOjEyOiJURVNULUlDVC0x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ImphaGlkIHZhaSI7czoyOToiY29tcGxhaW50U29sdmVyVGVjaG5pY2lhbk5hbWUiO3M6MTE6IkFzaHJhZl90ZWNoIjtzOjIxOiJjb21wbGFpbnRTb2x1dGlvbkRhdGUiO3M6MTA6IjIwMjEtMDktMjkiO3M6Mjg6ImNvbXBsYWludFNvbHV0aW9uRGVzY3JpcHRpb24iO3M6MzI6IkxvcmVtIElwc3VtIGhhcyBiZWVuIHRoZSBpbmR1c3RyIjtzOjI6ImljIjtOO3M6Mzoib2ljIjtOO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjEtMDktMTYgMDI6MTA6MTEiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjEtMDktMTYgMDI6MTA6MTEiO31zOjExOiIAKgBvcmlnaW5hbCI7YToxNjp7czoyOiJpZCI7aToyNDtzOjExOiJwcm9kdWN0TmFtZSI7czo2OiJEMTkyOTciO3M6MTA6InByb2R1Y3RfaWQiO2k6MzM1O3M6NDoiZGF0ZSI7czoxMDoiMjAyMS0wOS0xOCI7czo0OiJ0aW1lIjtzOjU6IjEwOjIwIjtzOjEzOiJjb21wbGFpbnROYW1lIjtzOjEyOiJBYmR1ciBSYWhtYW4iO3M6MjA6ImNvbXBsYWludERlc2lnbmF0aW9uIjtzOjI2OiJDb21wdXRlciBIYXJkd2FyZSBFbmdpbmVlciI7czoyMDoiY29tcGxhaW50RGVzY3JpcHRpb24iO3M6MjA6IkxvcmVtIElwc3VtIGhhcyBiZWVuIjtzOjIxOiJjb21wbGFpbnRSZWNlaXZlck5hbWUiO3M6OToiamFoaWQgdmFpIjtzOjI5OiJjb21wbGFpbnRTb2x2ZXJUZWNobmljaWFuTmFtZSI7czoxMToiQXNocmFmX3RlY2giO3M6MjE6ImNvbXBsYWludFNvbHV0aW9uRGF0ZSI7czoxMDoiMjAyMS0wOS0yOSI7czoyODoiY29tcGxhaW50U29sdXRpb25EZXNjcmlwdGlvbiI7czozMjoiTG9yZW0gSXBzdW0gaGFzIGJlZW4gdGhlIGluZHVzdHIiO3M6MjoiaWMiO047czozOiJvaWMiO047czoxMDoiY3JlYXRlZF9hdCI7czoxOToiMjAyMS0wOS0xNiAwMjoxMDoxMSI7czoxMDoidXBkYXRlZF9hdCI7czoxOToiMjAyMS0wOS0xNiAwMjoxMDoxMSI7fXM6MTA6IgAqAGNoYW5nZXMiO2E6MDp7fXM6ODoiACoAY2FzdHMiO2E6MDp7fXM6MTc6IgAqAGNsYXNzQ2FzdENhY2hlIjthOjA6e31zOjg6IgAqAGRhdGVzIjthOjA6e31zOjEzOiIAKgBkYXRlRm9ybWF0IjtOO3M6MTA6IgAqAGFwcGVuZHMiO2E6MDp7fXM6MTk6IgAqAGRpc3BhdGNoZXNFdmVudHMiO2E6MDp7fXM6MTQ6IgAqAG9ic2VydmFibGVzIjthOjA6e31zOjEyOiIAKgByZWxhdGlvbnMiO2E6MDp7fXM6MTA6IgAqAHRvdWNoZXMiO2E6MDp7fXM6MTA6InRpbWVzdGFtcHMiO2I6MTtzOjk6IgAqAGhpZGRlbiI7YTowOnt9czoxMDoiACoAdmlzaWJsZSI7YTowOnt9czoxMToiACoAZmlsbGFibGUiO2E6MDp7fXM6MTA6IgAqAGd1YXJkZWQiO2E6MTp7aTowO3M6MToiKiI7fX19fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMzt9', 1631934086),
('lUBjMN5EYeMR02JTlM9YZO8gyWWN2jdbDjdwxdI7', NULL, '192.168.101.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVGRyaU4zNG9VMGlpVEZLY0VXM2x1MkRPYVdFZ3VIY3JOYlFaNUNOWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1631930139),
('N1QJ5IXPZW4yxdgkvQJE4YwHPGU4cQietKdvlWC9', 27, '192.168.101.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36', 'YTo3OntzOjM6InVybCI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xOTIuMTY4LjEwMS41MC9hZG1pbi9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoiX3Rva2VuIjtzOjQwOiJUcnVHdWtidndiT09Fb1NmcXQzZ003ZE5rTGlON084Rk5hN2pOZ0hZIjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFNxTmxmcXBRSFFHM1UuTkxvNEd6TnV4Q2ZRTnl6OE5raXV0dnJwbHFHNUFWRVUyRE9hMTY2IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRTcU5sZnFwUUhRRzNVLk5MbzRHek51eENmUU55ejhOa2l1dHZycGxxRzVBVkVVMkRPYTE2NiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjc7fQ==', 1631933974);

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
(21, 'API Gateway Server', '2021-09-17 20:25:43', '2021-09-17 20:25:43');

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
(68, 'Samsung ML 1640', '2021-09-17 20:20:00', '2021-09-17 20:20:00');

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
(13, 'Admin', '', 'admin', 'admin@gmail.com', NULL, '$2y$10$owCFG.AQCeBD0TCPTktB.Oox1uawDYDcksYZYcpqD3ArBztqyomA2', NULL, NULL, NULL, NULL, NULL, '2021-09-04 18:53:12', '2021-09-04 18:53:12'),
(15, 'technician', '', 'technician', 'technician@gmail.com', NULL, '$2y$10$G6H/YZgvw0GQWbMy1bUtYeO4TcjownMu0dzcoWNPMoLL0IUEjdUOK', NULL, NULL, NULL, NULL, NULL, '2021-09-06 21:22:38', '2021-09-06 21:22:38'),
(16, 'jahid vai', '', 'technician', 'jahidVai@gmail.com', NULL, '12345678', NULL, NULL, NULL, NULL, NULL, '2021-09-08 00:44:05', '2021-09-08 00:48:06'),
(17, 'Ashraf_tech', '', 'technician', 'Ashraf@gmail.com', NULL, '$2y$10$Gc/H.tnDtDA5qLta5JEw4OixjHQTXWyMniHy2ytMrv2NBirJtdIrS', NULL, NULL, NULL, NULL, NULL, '2021-09-08 01:28:06', '2021-09-08 19:55:38'),
(19, 'ict-36', '', 'user', 'ict-36_outsource_16@bof.org', NULL, '$2y$10$KbExR510e8rMwFEzi7ieG.ZXoYWvE39LSDnxVnhXOEOyKAJYsDr/y', NULL, NULL, NULL, NULL, NULL, '2021-09-11 20:49:52', '2021-09-11 20:49:52'),
(20, 'ruhulamin', '', 'admin', 'ruhulamin_softEng_17@bof.org', NULL, '$2y$10$KRWYXRLHLeRSBbU4SwPtxOOt//sgBQ0s2fV/qopD5Xi8lmbWA4Vxa', NULL, NULL, NULL, NULL, NULL, '2021-09-11 20:53:13', '2021-09-11 21:19:14'),
(23, 'abc', NULL, 'user', 'abc@gmail.com', NULL, '$2y$10$nKnML0OpyAd3W71I3k/N7OraYiHqKwfVctK1T36fHMpPzYnBthA4W', NULL, NULL, NULL, NULL, NULL, '2021-09-12 01:06:34', '2021-09-12 01:06:34'),
(24, '12', NULL, 'user', '12@g.com', NULL, '$2y$10$ivzVGB8I32SJP/j6wkuf1eLf.7bBFsFjI1A1fHWJAdObugYtMkekC', NULL, NULL, NULL, NULL, NULL, '2021-09-12 01:20:14', '2021-09-12 01:20:14'),
(25, 'test', NULL, 'user', 'test11@bof.com', NULL, '$2y$10$OXJ5Wuv0ODvu.e99zCk0VO/18KaN0IUFAaNDYW2fVyRqTywZ.ZaA6', NULL, NULL, NULL, NULL, NULL, '2021-09-14 18:56:32', '2021-09-14 18:56:32'),
(26, 'Farhad', NULL, 'admin', 'Farhad@bof.com', NULL, '$2y$10$m20aNIK3ujrJtkodqWnO6emjzuva7r3rlx3mvNQVqlkt0QKZmdiGO', NULL, NULL, NULL, NULL, NULL, '2021-09-15 19:32:50', '2021-09-15 19:33:06'),
(27, 'jubyasayed', NULL, 'admin', 'jubyasayed@gmail.com', NULL, '$2y$10$SqNlfqpQHQG3U.NLo4GzNuxCfQNyz8NkiutvrplqG5AVEU2DOa166', NULL, NULL, NULL, NULL, NULL, '2021-09-17 20:02:14', '2021-09-17 20:02:40');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=462;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
