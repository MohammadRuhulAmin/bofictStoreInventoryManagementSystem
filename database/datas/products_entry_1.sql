-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2021 at 08:39 AM
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
(110, 'D19098', 'Desktop', 'Clone Desktop', NULL, NULL, 'HP', NULL, NULL, NULL, '2021-08-31 00:39:02', '2021-08-31 00:39:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
