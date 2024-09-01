-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 11:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `type`, `email`, `password`) VALUES
(1, 'teacher1', 'teacher', 'teacher1@example.com', 'c8f622dcf7f5b987b50f933bcabbdc76'),
(2, 'teacher2', 'teacher', 'teacher2@example.com', '8'),
(3, 'Admin', 'admin', 'admin@example.com', '43f3707b8aaca104be65b48d274baa54'),
(39, 'parent1', 'parent', 'parent@example.com', '8'),
(40, 'studentname', 'student', 'student@example.com', '9afbcb63e49d4b593bd7584d821f74d8'),
(41, 'Father Name', 'parent', '12345678', '8'),
(42, 'm umair', 'student', 'm.umaircompllluter381786@gmail.com', '8'),
(43, 'M umair', 'student', 'umair@gmail.com', '5d99b48f05f81d19603b559fcd45d58f'),
(44, 'Father Name', 'parent', '03252313939', '8'),
(45, 'sir umer', 'teacher', 'teacher@gmail.com', '8');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `attendance_month` text NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `attendance_value` longtext NOT NULL,
  `std_id` int(11) NOT NULL,
  `current_session` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `attendance_month`, `modified_date`, `attendance_value`, `std_id`, `current_session`) VALUES
(1, 'june', '2024-06-21 15:42:59', 'a:1:{i:21;a:3:{s:9:\"signin_at\";i:1718966578;s:10:\"signout_at\";i:1718966579;s:4:\"date\";s:2:\"21\";}}', 32, '2024-06-21 10:42:59'),
(2, 'january', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(3, 'febuary', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(4, 'march', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(5, 'april', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(6, 'may', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(7, 'june', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(8, 'july', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(9, 'august', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(10, 'september', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(11, 'october', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(12, 'november', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(13, 'december', '2024-07-01 16:44:14', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 40, '2024-07-01 11:44:14'),
(14, 'january', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(15, 'febuary', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(16, 'march', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(17, 'april', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(18, 'may', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(19, 'june', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(20, 'july', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(21, 'august', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(22, 'september', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(23, 'october', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(24, 'november', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23');
INSERT INTO `attendance` (`id`, `attendance_month`, `modified_date`, `attendance_value`, `std_id`, `current_session`) VALUES
(25, 'december', '2024-07-01 16:47:23', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 42, '2024-07-01 11:47:23'),
(26, 'january', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(27, 'febuary', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(28, 'march', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(29, 'april', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(30, 'may', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(31, 'june', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(32, 'july', '2024-07-19 17:09:25', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:3:{s:9:\"signin_at\";i:1721201098;s:10:\"signout_at\";i:1721201098;s:4:\"date\";s:2:\"17\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:3:{s:9:\"signin_at\";i:1721390947;s:10:\"signout_at\";i:1721390965;s:4:\"date\";s:2:\"19\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-19 12:09:25'),
(33, 'august', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(34, 'september', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(35, 'october', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(36, 'november', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20'),
(37, 'december', '2024-07-01 17:02:20', 'a:31:{i:1;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:2;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:3;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:4;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:5;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:6;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:7;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:8;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:9;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:10;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:11;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:12;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:13;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:14;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:15;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:16;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:17;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:18;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:19;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:20;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:21;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:22;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:23;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:24;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:25;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:26;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:27;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:28;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:29;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:30;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}i:31;a:2:{s:9:\"signin_at\";s:0:\"\";s:10:\"signout_at\";s:0:\"\";}}', 43, '2024-07-01 12:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `section` varchar(50) NOT NULL,
  `added_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cources`
--

CREATE TABLE `cources` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `duration` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cources`
--

INSERT INTO `cources` (`id`, `name`, `category`, `duration`, `date`, `image`) VALUES
(11, 'html', 'web-development', '14 hours', '2024-01-26 00:00:00', '1.jpg'),
(12, 'React Js', 'web-development', '5 hours', '2024-01-26 00:00:00', '2.jpg'),
(13, 'My cource', 'web-development', '10 hours', '2024-01-26 00:00:00', 'e.jpeg'),
(14, ' mern', 'web-development', '2 Hours 12345', '2024-01-27 00:00:00', '3.jpg'),
(15, 'Python ', 'web-development', '17 days', '2024-01-27 00:00:00', 'b.jpg'),
(16, 'My cource 00', 'app-development', '7 months', '2024-07-17 00:00:00', 'c.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `meta_key` varchar(30) NOT NULL,
  `meta_value` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `item_id`, `meta_key`, `meta_value`) VALUES
(5, 9, 'day_name', 'monday'),
(6, 9, 'teacher_id', '2'),
(7, 9, 'subject_id', '11'),
(8, 9, 'period_id', '7'),
(33, 22, 'from', '09:15'),
(34, 22, 'to', '10:00'),
(35, 23, 'from', '10:00'),
(36, 23, 'to', '10:45'),
(37, 8, 'from', '08:30'),
(38, 8, 'to', '9:15'),
(39, 20, 'from', '07:45'),
(40, 20, 'to', '08:30'),
(41, 7, 'from', '07:00'),
(42, 7, 'to', '07:45'),
(85, 32, 'class_id', '2'),
(86, 32, 'section_id', '4'),
(87, 32, 'teacher_id', '2'),
(88, 32, 'day_name', 'tuesday'),
(89, 32, 'subject_id', '2'),
(90, 32, 'period_id', '8'),
(91, 33, 'class_id', '2'),
(92, 33, 'section_id', '3'),
(93, 33, 'teacher_id', '1'),
(94, 33, 'day_name', 'monday'),
(95, 33, 'subject_id', '2'),
(96, 33, 'period_id', '7'),
(97, 34, 'class_id', '1'),
(98, 34, 'section_id', ''),
(99, 34, 'teacher_id', '1'),
(100, 34, 'day_name', 'monday'),
(101, 34, 'subject_id', '2'),
(111, 37, 'amount', '500'),
(112, 37, 'status', 'success'),
(113, 37, 'student_id', '32'),
(114, 37, 'month', 'April'),
(115, 38, 'amount', '500'),
(116, 38, 'status', 'success'),
(117, 38, 'student_id', '32'),
(118, 38, 'month', 'March'),
(123, 41, 'class', '2'),
(124, 41, 'subject', '39'),
(125, 41, 'file_attachment', 'student_registration'),
(127, 47, 'class', ' 1, 4'),
(128, 49, 'class', ' 1, 4'),
(129, 50, 'section', ' 3, 6'),
(130, 51, 'section', ' 3'),
(132, 53, 'section', ' 3, 4, 6'),
(133, 54, 'section', ' 4'),
(134, 56, 'subject', 'Abc'),
(135, 56, 'class', '51'),
(136, 57, 'section', '3'),
(137, 57, 'class', '53'),
(138, 58, 'section', '6'),
(139, 58, 'class', '53'),
(140, 59, 'from', '10:46'),
(141, 59, 'to', '23:30'),
(142, 60, 'section', '3'),
(143, 60, 'class', '51'),
(144, 61, 'section', '4'),
(145, 61, 'class', '53'),
(146, 62, 'section', '4'),
(147, 62, 'class', '54'),
(148, 63, 'section', '6'),
(149, 63, 'class', '53'),
(150, 64, 'section', '4'),
(151, 64, 'class', '53'),
(152, 65, 'class_id', '53'),
(153, 65, 'section_id', '3'),
(154, 65, 'teacher_id', '2'),
(155, 65, 'day_name', 'friday'),
(156, 65, 'subject_id', '2'),
(157, 65, 'period_id', '22'),
(158, 66, 'section', '6'),
(159, 66, 'class', '53'),
(178, 70, 'class_id', '53'),
(179, 70, 'section_id', '6'),
(180, 70, 'teacher_id', '45'),
(181, 70, 'day_name', 'saturday'),
(182, 70, 'subject_id', '58'),
(183, 70, 'period_id', '22'),
(184, 71, 'class_id', '51'),
(185, 71, 'section_id', '3'),
(186, 71, 'teacher_id', '1'),
(187, 71, 'day_name', 'monday'),
(188, 71, 'subject_id', '60'),
(189, 71, 'period_id', '7'),
(190, 72, 'class_id', '51'),
(191, 72, 'section_id', '3'),
(192, 72, 'teacher_id', '1'),
(193, 72, 'day_name', 'tuesday'),
(194, 72, 'subject_id', '61'),
(195, 72, 'period_id', '22'),
(196, 73, 'amount', '500'),
(197, 73, 'status', 'success'),
(198, 73, 'student_id', '43'),
(199, 73, 'month', 'January'),
(200, 74, 'class_id', '51'),
(201, 74, 'section_id', '3'),
(202, 74, 'teacher_id', '1'),
(203, 74, 'day_name', 'monday'),
(204, 74, 'subject_id', '63'),
(205, 74, 'period_id', '8'),
(206, 75, 'class_id', '53'),
(207, 75, 'section_id', '3'),
(208, 75, 'teacher_id', '2'),
(209, 75, 'day_name', 'tuesday'),
(210, 75, 'subject_id', '58'),
(211, 75, 'period_id', '7');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `author` int(11) NOT NULL DEFAULT 1,
  `title` varchar(21) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `publish_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `modified_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author`, `title`, `description`, `type`, `publish_date`, `status`, `parent`, `modified_date`) VALUES
(3, 1, 'Section A', 'Section A D', 'section', '2024-02-04 09:42:25', 'publish', 0, '2024-02-04 09:42:25'),
(4, 1, 'Section B', 'Section B description', 'section', '2024-02-04 09:44:06', 'publish', 0, '2024-02-04 09:44:06'),
(6, 1, 'section E', 'section e discription', 'section', '2024-02-06 09:32:44', 'publish', 0, '2024-02-06 09:32:44'),
(7, 1, 'First Period', 'First Period Description', 'period', '2024-03-30 16:10:51', 'publish', 0, '2024-03-30 16:10:51'),
(8, 1, 'Second Period', 'Second Period Description', 'period', '2024-03-30 16:10:51', 'publish', 0, '2024-03-30 16:10:51'),
(22, 1, 'Third Period', '', 'period', '2024-05-20 11:04:36', 'publish', 0, '2024-05-20 14:04:36'),
(23, 1, 'Forth Period', '', 'period', '2024-05-20 11:05:26', 'publish', 0, '2024-05-20 14:05:26'),
(37, 32, 'April-Fee', '', 'payment', '2024-06-17 15:45:18', 'success', 0, '2024-06-17 15:45:18'),
(38, 32, 'March-Fee', '', 'payment', '2024-06-18 16:24:42', 'success', 0, '2024-06-18 16:24:42'),
(41, 1, 'pdf for english', '    pdf for english', 'study-material', '2024-06-22 16:49:02', 'publish', 0, '2024-06-22 16:49:02'),
(48, 1, 'Section S', '', 'section', '2024-07-05 23:02:24', 'publish', 0, '2024-07-05 23:02:24'),
(51, 1, 'class-1', '', 'class', '2024-07-06 00:00:00', 'publish', 0, '2024-07-06 17:05:15'),
(53, 1, 'class-10', '', 'class', '2024-07-06 00:00:00', 'publish', 0, '2024-07-06 17:05:29'),
(54, 1, 'class-2', '', 'class', '2024-07-06 00:00:00', 'publish', 0, '2024-07-06 17:15:33'),
(57, 1, 'subjectname', '', 'subject', '2024-07-10 17:26:01', 'publish', 0, '2024-07-10 17:26:01'),
(58, 1, 'database', '', 'subject', '2024-07-12 22:58:16', 'publish', 0, '2024-07-12 22:58:16'),
(59, 1, 'break', '', 'period', '2024-07-12 11:02:52', 'publish', 0, '2024-07-12 23:02:52'),
(60, 1, 'mysubject', '', 'subject', '2024-07-13 10:28:46', 'publish', 0, '2024-07-13 10:28:46'),
(61, 1, 'english', '', 'subject', '2024-07-13 10:28:59', 'publish', 0, '2024-07-13 10:28:59'),
(62, 1, 'maths', '', 'subject', '2024-07-13 10:29:10', 'publish', 0, '2024-07-13 10:29:10'),
(63, 1, 'pyshology', '', 'subject', '2024-07-13 10:29:27', 'publish', 0, '2024-07-13 10:29:27'),
(64, 1, 'english', '', 'subject', '2024-07-13 10:29:31', 'publish', 0, '2024-07-13 10:29:31'),
(66, 1, 'physics', '', 'subject', '2024-07-13 10:39:22', 'publish', 0, '2024-07-13 10:39:22'),
(70, 1, '', '', 'timetable', '2024-07-13 03:52:39', 'publish', 0, '2024-07-13 15:52:39'),
(71, 1, '', '', 'timetable', '2024-07-13 05:10:04', 'publish', 0, '2024-07-13 17:10:04'),
(72, 1, '', '', 'timetable', '2024-07-14 04:18:55', 'publish', 0, '2024-07-14 16:18:55'),
(73, 43, 'January-Fee', '', 'payment', '2024-07-17 11:04:59', 'success', 0, '2024-07-17 11:04:59'),
(74, 1, '', '', 'timetable', '2024-07-18 11:30:40', 'publish', 0, '2024-07-18 11:30:40'),
(75, 1, '', '', 'timetable', '2024-07-18 11:59:32', 'publish', 0, '2024-07-18 11:59:32');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usermetadata`
--

CREATE TABLE `usermetadata` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_key` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usermetadata`
--

INSERT INTO `usermetadata` (`id`, `user_id`, `meta_key`, `meta_value`) VALUES
(127, 43, 'dob', '2024-07-26'),
(128, 43, 'mobile', '1234567890'),
(129, 43, 'payment_method', 'online-payment'),
(130, 43, 'class', '53'),
(131, 43, 'adddress', 'addrress details'),
(132, 43, 'country', 'Pakistan'),
(133, 43, 'state', 'punjab'),
(134, 43, 'zip', '0000'),
(135, 43, 'father_name', 'Father Name'),
(136, 43, 'father_mobile', '03252313939'),
(137, 43, 'mother_name', 'mother name'),
(138, 43, 'mother_mobile', '03252313939'),
(139, 43, 'parents_address', '678'),
(140, 43, 'parents_country', 'Pakistan'),
(141, 43, 'parents_state', 'punjab'),
(142, 43, 'parents_zip', '0000'),
(143, 43, 'previous_class', '10'),
(144, 43, 'status', 'pass'),
(145, 43, 'total_marks', '1100'),
(146, 43, 'previous_percentage', '85%'),
(147, 43, 'section', '3'),
(148, 43, 'subject_streem', 'kk'),
(149, 43, 'doa', '2024-07-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cources`
--
ALTER TABLE `cources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usermetadata`
--
ALTER TABLE `usermetadata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cources`
--
ALTER TABLE `cources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usermetadata`
--
ALTER TABLE `usermetadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
