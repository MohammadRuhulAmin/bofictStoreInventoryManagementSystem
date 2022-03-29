-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 09:41 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boficttaskscheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigntasks`
--

CREATE TABLE `assigntasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employeeName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startTime` time DEFAULT NULL,
  `endTime` time DEFAULT NULL,
  `totalTime` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigntasks`
--

INSERT INTO `assigntasks` (`id`, `employeeName`, `task`, `date`, `location`, `shift`, `startTime`, `endTime`, `totalTime`, `created_at`, `updated_at`) VALUES
(6, 'Mizanur Rahman', 'NOC Duty', '2021-10-16', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 22:07:37', '2021-10-20 22:07:37'),
(7, 'Mizanur Rahman', 'NOC Duty', '2021-10-18', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 22:07:37', '2021-10-20 22:07:37'),
(8, 'Mizanur Rahman', 'NOC Duty', '2021-10-19', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 22:07:37', '2021-10-20 22:07:37'),
(9, 'Mizanur Rahman', 'Factory Duty', '2021-10-20', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 22:07:37', '2021-10-20 22:07:37'),
(10, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-21', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:07:37', '2021-10-20 22:30:56'),
(11, 'Md. Asraf Hossain', 'Factory Duty', '2021-10-17', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 22:12:02', '2021-10-20 22:12:02'),
(12, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-16', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:12:02', '2021-10-20 22:12:02'),
(13, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-18', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:12:02', '2021-10-20 22:12:02'),
(14, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-19', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:12:02', '2021-10-20 22:12:02'),
(15, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-20', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:12:02', '2021-10-20 22:12:02'),
(16, 'Md: Farhad Hossain', 'NOC Duty', '2021-10-17', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 22:16:05', '2021-10-20 22:16:05'),
(17, 'Md. Farhad Hossain', 'NOC Duty', '2021-10-21', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:16:05', '2021-10-20 23:44:12'),
(18, 'Md: Farhad Hossain', 'NOC Duty', '2021-10-18', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:16:05', '2021-10-20 22:16:05'),
(19, 'Md: Farhad Hossain', 'NOC Duty', '2021-10-19', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:16:05', '2021-10-20 22:16:05'),
(20, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-10-19', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 22:19:39', '2021-10-20 22:19:39'),
(22, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-16', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:19:39', '2021-10-20 22:19:39'),
(23, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-17', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:19:39', '2021-10-20 22:19:39'),
(24, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-20', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 22:19:39', '2021-10-20 22:19:39'),
(31, 'Md. Farhad Hossain', 'NOC Duty', '2021-10-23', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 23:46:16', '2021-10-20 23:46:16'),
(32, 'Md. Farhad Hossain', 'NOC Duty', '2021-10-28', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 23:46:16', '2021-10-20 23:46:16'),
(33, 'Md. Farhad Hossain', 'Factory Duty', '2021-10-29', 'Factory', 'OT-1', '08:00:00', '13:00:00', '05:00:00', '2021-10-20 23:46:16', '2021-10-20 23:46:16'),
(34, 'Md. Farhad Hossain', 'NOC Duty', '2021-10-24', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 23:46:16', '2021-10-20 23:46:16'),
(35, 'Md. Farhad Hossain', 'NOC Duty', '2021-10-26', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 23:46:17', '2021-10-20 23:46:17'),
(36, 'Md. Asraf Hossain', 'Factory Duty', '2021-10-24', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 23:52:01', '2021-10-20 23:52:01'),
(37, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-23', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 23:52:01', '2021-10-20 23:52:01'),
(38, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-25', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 23:52:01', '2021-10-20 23:52:01'),
(39, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-27', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 23:52:01', '2021-10-20 23:52:01'),
(40, 'Mizanur Rahman', 'NOC Duty', '2021-10-24', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 23:57:25', '2021-10-20 23:57:25'),
(41, 'Mizanur Rahman', 'NOC Duty', '2021-10-25', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-20 23:57:25', '2021-10-20 23:57:25'),
(43, 'Mizanur Rahman', 'NOC Duty', '2021-10-23', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 23:57:25', '2021-10-20 23:57:25'),
(44, 'Mizanur Rahman', 'NOC Duty', '2021-10-28', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-20 23:57:25', '2021-10-20 23:57:25'),
(45, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-10-26', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-21 00:02:19', '2021-10-21 00:02:19'),
(46, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-24', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-21 00:02:19', '2021-10-21 00:02:19'),
(47, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-25', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-21 00:02:19', '2021-10-21 00:02:19'),
(49, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-28', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-21 00:02:19', '2021-10-21 00:02:19'),
(50, 'Mizanur Rahman', 'NOC Duty', '2021-10-22', 'NOC', 'OT-1', '08:00:00', '13:00:00', '05:00:00', '2021-10-21 00:53:37', '2021-10-21 01:00:53'),
(51, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-22', 'NOC', 'OT-2', '15:00:00', '20:00:00', '05:00:00', '2021-10-21 00:57:19', '2021-10-21 01:00:22'),
(52, 'Mehedi Hasan Sohag', 'Factory Duty', NULL, 'Factory', 'OT-1', '15:00:00', '20:00:00', '05:00:00', '2021-10-21 00:58:21', '2021-10-21 00:58:21'),
(53, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-22', 'NOC', 'OT-2', '15:00:00', '20:00:00', '05:00:00', '2021-10-21 01:01:35', '2021-10-21 01:01:35'),
(54, 'Touhidul Islam', 'Factory Duty', NULL, 'Factory', 'OT-1', NULL, NULL, '00:00:00', '2021-10-25 21:07:20', '2021-10-25 21:07:20'),
(55, 'Mizanur Rahman', 'NOC Duty', '2021-10-26', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-25 22:41:46', '2021-10-25 22:41:46'),
(56, 'Md. Farhad Hossain', 'NOC Duty', '2021-10-27', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-25 22:43:38', '2021-10-25 22:43:38'),
(57, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-28', 'NOC', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-25 22:45:03', '2021-10-25 22:45:03'),
(58, 'Mizanur Rahman', 'NOC Duty', '2021-10-28', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-25 22:45:43', '2021-10-25 22:45:43'),
(59, 'Md. Farhad Hossain', 'Factory Duty', '2021-10-28', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-25 22:46:23', '2021-10-25 22:46:23'),
(60, 'Mehedi Hasan Sohag', 'NOC Duty', '2021-10-29', 'NOC', 'OT-1', '08:00:00', '13:00:00', '05:00:00', '2021-10-25 22:47:55', '2021-10-25 22:47:55'),
(62, 'Mizanur Rahman', 'NOC Duty', '2021-10-29', 'NOC', 'OT-2', '16:00:00', '21:00:00', '05:00:00', '2021-10-25 22:49:05', '2021-10-25 22:49:05'),
(63, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-10-30', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-28 00:55:13', '2021-10-28 00:55:13'),
(64, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-10-31', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-28 00:55:13', '2021-10-28 00:55:13'),
(65, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-01', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-28 00:55:13', '2021-10-28 00:55:13'),
(66, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-02', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-28 00:55:13', '2021-10-28 00:55:13'),
(67, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-03', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-28 00:55:13', '2021-10-28 00:55:13'),
(68, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-04', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-10-28 00:55:13', '2021-10-28 00:55:13'),
(69, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-30', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 00:59:03', '2021-10-28 00:59:03'),
(70, 'Md. Asraf Hossain', 'NOC Duty', '2021-10-31', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 00:59:03', '2021-10-28 00:59:03'),
(71, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-01', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 00:59:03', '2021-10-28 00:59:03'),
(72, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-02', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 00:59:03', '2021-10-28 00:59:03'),
(73, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-03', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 00:59:03', '2021-10-28 00:59:03'),
(74, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-04', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 00:59:03', '2021-10-28 00:59:03'),
(75, 'Mizanur Rahman', 'NOC Duty', '2021-10-30', 'Factory', 'OT-1', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 01:02:25', '2021-10-28 01:02:25'),
(76, 'Mizanur Rahman', 'NOC Duty', '2021-10-31', 'Factory', 'OT-1', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 01:02:25', '2021-10-28 01:02:25'),
(77, 'Mizanur Rahman', 'NOC Duty', '2021-11-01', 'Factory', 'OT-1', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 01:02:25', '2021-10-28 01:02:25'),
(78, 'Mizanur Rahman', 'NOC Duty', '2021-11-02', 'Factory', 'OT-1', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 01:02:25', '2021-10-28 01:02:25'),
(79, 'Mizanur Rahman', 'NOC Duty', '2021-11-03', 'Factory', 'OT-1', '18:30:00', '21:30:00', '03:00:00', '2021-10-28 01:02:25', '2021-10-28 01:02:25'),
(80, 'Mizanur Rahman', 'NOC Duty', '2021-11-04', 'Factory', 'OT-1', '18:30:00', '21:20:00', '02:50:00', '2021-10-28 01:02:25', '2021-10-28 01:02:25'),
(81, 'Mizanur Rahman', 'NOC Duty', '2021-11-05', 'Factory', 'OT-1', '16:00:00', '21:00:00', '05:00:00', '2021-10-28 01:02:25', '2021-10-28 01:02:25'),
(82, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-06', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:09:15', '2021-11-13 20:09:15'),
(83, 'Mizanur Rahman', 'Factory Duty', '2021-11-09', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:09:15', '2021-11-13 20:37:52'),
(84, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-10', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:09:15', '2021-11-13 20:09:15'),
(85, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-11', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:09:15', '2021-11-13 20:09:15'),
(86, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-12', 'Factory', 'OT-1', '08:30:00', '13:00:00', '04:30:00', '2021-11-13 20:09:15', '2021-11-13 20:21:29'),
(87, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-06', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:15:43', '2021-11-13 20:15:43'),
(88, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-07', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:15:43', '2021-11-13 20:15:43'),
(89, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-09', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:15:43', '2021-11-13 20:15:43'),
(90, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-11', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:15:43', '2021-11-13 20:15:43'),
(91, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-12', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:15:43', '2021-11-13 20:15:43'),
(92, 'Mizanur Rahman', 'NOC Duty', '2021-11-08', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:20:12', '2021-11-13 20:20:12'),
(93, 'Mizanur Rahman', 'NOC Duty', '2021-11-10', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:20:12', '2021-11-13 20:20:12'),
(94, 'Mizanur Rahman', 'NOC Duty', '2021-11-12', 'NOC', 'OT-2', '16:00:00', '21:20:00', '05:20:00', '2021-11-13 20:20:12', '2021-11-13 20:20:12'),
(95, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-13', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:26:00', '2021-11-13 20:26:00'),
(96, 'Mizanur Rahman', 'Factory Duty', '2021-11-14', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:26:00', '2021-11-13 20:35:00'),
(97, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-15', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:26:00', '2021-11-13 20:26:00'),
(98, 'Mizanur Rahman', 'Factory Duty', '2021-11-16', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:26:00', '2021-11-13 20:35:12'),
(99, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-17', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:26:01', '2021-11-13 20:26:01'),
(100, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-18', 'Factory', 'OT-1', '15:30:00', '18:20:00', '02:50:00', '2021-11-13 20:26:01', '2021-11-13 20:26:01'),
(101, 'Mehedi Hasan Sohag', 'Factory Duty', '2021-11-19', 'Factory', 'OT-1', '08:00:00', '13:00:00', '05:00:00', '2021-11-13 20:26:01', '2021-11-13 20:26:01'),
(102, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-13', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:30:05', '2021-11-13 20:30:05'),
(103, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-14', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:30:05', '2021-11-13 20:30:05'),
(104, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-16', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:30:05', '2021-11-13 20:30:05'),
(105, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-18', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:30:05', '2021-11-13 20:30:05'),
(106, 'Md. Asraf Hossain', 'NOC Duty', '2021-11-19', 'NOC', 'OT-2', '16:00:00', '21:00:00', '05:00:00', '2021-11-13 20:30:05', '2021-11-13 20:30:05'),
(107, 'Mizanur Rahman', 'NOC Duty', '2021-11-15', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:33:18', '2021-11-13 20:33:18'),
(108, 'Mizanur Rahman', 'NOC Duty', '2021-11-17', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 20:33:18', '2021-11-13 20:33:18'),
(109, 'Mizanur Rahman', 'NOC Duty', '2021-11-19', 'NOC', 'OT-2', '16:00:00', '21:00:00', '05:00:00', '2021-11-13 20:33:18', '2021-11-13 20:33:18'),
(110, 'Imam Hossain', 'Factory Duty', '2021-11-14', 'Factory', 'OT-1', '18:30:00', '21:30:00', '03:00:00', '2021-11-13 21:03:12', '2021-11-13 21:03:12'),
(111, 'Md. Abu Sayed Apon', 'NOC Duty', '2021-11-14', 'NOC', 'OT-2', '18:30:00', '21:20:00', '02:50:00', '2021-11-13 21:03:57', '2021-11-13 21:03:57'),
(112, 'Touhidul Islam', 'Factory Duty', '2021-11-14', 'Factory', 'OT-1', '20:30:00', '21:20:00', '00:50:00', '2021-11-13 21:04:18', '2021-11-13 21:04:18'),
(113, 'Md. Khayer Ahmmed', 'NOC Duty', '2021-11-14', 'NOC', 'OT-2', '20:20:00', '21:20:00', '01:00:00', '2021-11-13 21:04:44', '2021-11-13 21:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bofid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `bofid`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Jubya Sayed', 'Data Entry Operator', '0038', '1634785129.jpg', '2021-10-20 20:58:49', '2021-10-20 21:09:18'),
(2, 'Touhidul Islam', 'Data Entry  Operator', '0037', '1634785254.jpg', '2021-10-20 21:00:54', '2021-10-20 21:00:54'),
(3, 'Md. Khayer Ahmmed', 'Jr. Network Support Engr.', '0034', '1634785265.jpg', '2021-10-20 21:01:05', '2021-10-20 23:37:08'),
(4, 'Md. Abu Sayed Apon', 'Jr. Network Support Engr.', '0035', '1634785316.jpg', '2021-10-20 21:01:56', '2021-10-20 21:01:56'),
(5, 'Mehedi Hasan Sohag', 'Technician', '11618', '1634785321.JPG', '2021-10-20 21:02:01', '2021-10-20 21:02:01'),
(6, 'Imam Hossain', 'Jr. System Support Engr', '0032', '1634785363.jpg', '2021-10-20 21:02:43', '2021-10-20 21:02:43'),
(7, 'Md. Farhad Hossain', 'Technical helper', '11887', '1634785430.JPG', '2021-10-20 21:03:50', '2021-10-20 23:37:23'),
(8, 'Abdur Rahman', 'Office Hardware Maintenance', '0039', '1634785526.jpg', '2021-10-20 21:05:26', '2021-10-20 21:05:26'),
(9, 'Md: Ruhul Amin', 'Software Support Engr.', '0036', '1634785559.jpg', '2021-10-20 21:05:59', '2021-10-20 21:05:59'),
(10, 'Jahid Hasan', 'Jr. System Support Engr', '0033', '1634785581.jpg', '2021-10-20 21:06:21', '2021-10-20 21:06:21'),
(11, 'Md. Asraf Hossain', 'Skilled Technician', '11127', '1634785692.JPG', '2021-10-20 21:08:12', '2021-10-20 21:08:12'),
(12, 'Mizanur Rahman', 'Junior Technician', '11871', '1634785793.JPG', '2021-10-20 21:09:53', '2021-10-20 21:09:53'),
(14, 'Md. Nazrul Islam', 'Office Assistant', '2108', '1634787014.jpg', '2021-10-20 21:30:14', '2021-10-20 21:30:14'),
(16, 'Jahid Hasan', 'Junior Techinician', '11861', '1634788650.JPG', '2021-10-20 21:57:30', '2021-10-20 21:57:30');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_10_10_012356_create_sessions_table', 1),
(7, '2021_10_10_024049_create_employees_table', 2),
(8, '2021_10_12_020909_create_tasks_table', 3),
(9, '2021_10_12_072635_create_assigntasks_table', 4),
(10, '2021_10_12_072935_create_assigntasks_table', 5),
(11, '2021_10_12_882937_create_assigntasks_table', 6),
(12, '2021_10_12_020910_create_tasks_table', 7),
(13, '2021_10_12_665937_create_assigntasks_table', 8),
(14, '2021_10_12_666037_create_assigntasks_table', 9),
(15, '2021_10_19_064252_create_notices_table', 10),
(16, '2021_10_19_564252_create_notices_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noticeTitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noticeDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `noticeTitle`, `noticeDescription`, `isActive`, `created_at`, `updated_at`) VALUES
(10, 'Today we have a Doa Mahfil on an Important Issue', 'Doa mahfil is important to attend on the next Day', 'on', '2021-10-25 23:38:14', '2021-10-25 23:38:14'),
(12, 'Today we have a new Information', 'New Information', 'on', '2021-10-26 00:28:46', '2021-10-26 00:28:46'),
(13, 'Code Forces Online Judge', 'Code Forces online Judge is a open source platform to perticipate coders for the compititions', 'on', '2021-10-26 00:34:02', '2021-10-26 01:15:51'),
(14, 'Over time work schedule Duty', 'Over time work schedule Duty for the technician OT-1 OT-2', 'on', '2021-10-31 00:28:55', '2021-10-31 00:28:55');

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
('7gXzmsT9qnq0bJ50Z1ctcFt8GSmsjEGtpGe2ev3T', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWU5SaUZrS3JvcXIwVDNzMm9xbEZ3aEl2TnRUOW1saU9DVWdvbTdRdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi90YXNrcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRyU3FsR0J1aGlwTk1CTWh6bVc3ZUllLkdiUGgyTGlQODU5WWlLWkw1SS5BNmo1bUhEMy9ZRyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkclNxbEdCdWhpcE5NQk1oem1XN2VJZS5HYlBoMkxpUDg1OVlpS1pMNUkuQTZqNW1IRDMvWUciO30=', 1637996513),
('d4Y0XcOs9HjS2hAGfbzFX93OE5pGK10idNqR0LIJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWlaMjZDOEtraFJFSzlhaEFxMFhWeDFrbjl1OVA2RkJEZExWRVFIOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1637552759);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taskName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskDetails` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `taskName`, `taskDetails`, `created_at`, `updated_at`) VALUES
(1, 'Factory Duty', 'Factory Duty', '2021-10-20 21:54:16', '2021-10-20 21:54:16'),
(2, 'NOC Duty', 'NOC Duty', '2021-10-20 21:54:31', '2021-10-20 21:54:31');

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
(1, 'user', 'user@gmail.com', NULL, '$2y$10$rSqlGBuhipNMBMhzmW7eIe.GbPh2LiP859YiKZL5I.A6j5mHD3/YG', NULL, NULL, 'F6maf2es62W9dp34SW26e1IR3gwoUnc2XKKUi3Jg7QD6sbN6l61Q15ltJB8J', NULL, NULL, '2021-10-09 20:55:29', '2021-10-09 20:55:29'),
(2, 'TOUHIDUL ISLAM', 'touhidspi@gmail.com', NULL, '$2y$10$alxUBIwGqbns8i53LWv3kuZwbc2E8EGQnPPHRZ39LK5i0Fz4yiUoS', NULL, NULL, NULL, NULL, NULL, '2021-10-11 19:09:30', '2021-10-11 19:09:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigntasks`
--
ALTER TABLE `assigntasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT for table `assigntasks`
--
ALTER TABLE `assigntasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
