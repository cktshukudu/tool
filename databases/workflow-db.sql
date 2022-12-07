-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 07:54 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workflow-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drive_files`
--

CREATE TABLE `drive_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_drive_file_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `drive_files`
--

INSERT INTO `drive_files` (`id`, `file_name`, `google_drive_file_id`, `created`) VALUES
(1, '0.png', NULL, '2022-12-04 21:05:18'),
(2, '2.png', NULL, '2022-12-04 21:17:38'),
(3, '1.png', NULL, '2022-12-04 21:21:58'),
(4, '22.png', NULL, '2022-12-04 21:29:30'),
(5, '1.png', NULL, '2022-12-04 22:05:40'),
(6, '0.png', NULL, '2022-12-04 23:19:49'),
(7, '0.png', NULL, '2022-12-04 23:21:51'),
(8, '0.png', NULL, '2022-12-04 23:24:25'),
(9, '0.png', NULL, '2022-12-04 23:25:20'),
(10, '0.png', NULL, '2022-12-04 23:28:42'),
(11, '0.png', '1I0yYv26k4qOI-DrQnmybspqfdlsXvzQT', '2022-12-04 23:38:23'),
(12, '20220806_67d36644-dce5-41bc-ac4a-1615c354620b.pdf', NULL, '2022-12-05 00:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE `task_info` (
  `task_id` int(50) NOT NULL,
  `t_email` varchar(100) DEFAULT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_project` varchar(255) NOT NULL,
  `t_description` text DEFAULT NULL,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_time_stamp` datetime DEFAULT current_timestamp(),
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_info`
--

INSERT INTO `task_info` (`task_id`, `t_email`, `t_title`,`t_project`, `t_description`, `t_start_time`, `t_time_stamp`, `t_end_time`, `t_user_id`, `status`) VALUES
(15, 'terror.tivani@gmail.com', 'reception','DD' ,'You\'re assigned to handle incoming calls and other communication-based tasks within the office.', '2022-11-16 12:00', '2022-12-04 21:02:10', '2022-11-16 13:00', 17, 2),
(17, 'hannonmulaudzi@gmail.com','Verifying & Auditing', 'HH' ,'You\'re assigned to Verify & Audit the system within the office.', '2022-11-18 10:00', '2022-12-04 21:02:10', '2022-11-20 15:10', 19, 1),
(16, 'ramolefo.moriti@gmail.com', 'Filing','GG', 'You\'re assigned to the management of filing system within the office.', '2022-11-17 10:00', '2022-12-04 21:02:10', '2022-11-17 15:10', 18, 0),
(18, 'devtecspac@gmail.com', 'JoburgWater','HH', 'Database', '2022-12-21 12:00', '2022-12-05 00:29:30', '2022-12-22 12:00', 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `fullname`, `username`, `email`, `password`, `temp_password`, `user_role`) VALUES
(1, 'Prof Arnesh Telukdarie', 'admin', 'arnesht@uj.ac.za', '0192023a7bbd73250516f069df18b500', NULL, 1),
(2, 'Thabile Dube', 'admin1', 'thabiled@uj.ac.za', '0192023a7bbd73250516f069df18b500', NULL, 1),
(3, 'Xolani Maphisa', 'admin2', 'maphisaxolani13@gmail.com', '0192023a7bbd73250516f069df18b500', NULL, 1),
(4, 'Tatenda Katsumbe', 'admin3', 'tatendak@uj.ac.za', '0192023a7bbd73250516f069df18b500', '', 1),
(5, 'Munsamy Megashnee', 'admin4', 'mmunsamy@uj.ac.za', '0192023a7bbd73250516f069df18b500', '', 1),
(20, 'devtecspace', 'tester', 'devtecspac@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notity`
--

CREATE TABLE `tbl_notity` (
  `t_start_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `t_time_stamp` datetime DEFAULT current_timestamp(),
  `t_end_time` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(120) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notity`
--

INSERT INTO `tbl_notity` (`t_start_time`, `t_time_stamp`, `t_end_time`, `fullname`, `email`) VALUES
('2022-11-18 10:00', '2022-12-04 21:02:10', '2022-11-20 15:10', 'Hannon Mulaudzi', 'hannonmulaudzi@gmail.com'),
('2022-11-17 10:00', '2022-12-04 21:02:10', '2022-11-17 15:10', 'Moriti Ramolefo', 'ramolefo.moriti@gmail.com'),
('2022-11-16 12:00', '2022-12-04 21:02:10', '2022-11-16 13:00', 'Terror Tivani', 'terror.tivani@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `drive_files`
--
ALTER TABLE `drive_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `drive_files`
--
ALTER TABLE `drive_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
  MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
