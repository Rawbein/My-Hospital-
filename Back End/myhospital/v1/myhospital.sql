-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 04:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointments_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(10) NOT NULL,
  `patient` varchar(50) NOT NULL,
  `doctor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointments_id`, `date`, `time`, `patient`, `doctor`) VALUES
(3, '24/3/2021', '6 PM', 'Santos Magar', 'Rajendra Shah'),
(5, '20/4/2021', '4 PM', 'Rabin Sharma', 'Raj Rai'),
(12, '28/3/2021', '6 PM', 'Ram Thapa', 'Megha Rai'),
(20, '29/3/2021', '4 PM', 'Ram Thapa', 'Lal Singh'),
(22, '8/4/2021', '2 PM', 'Ram Thapa', 'Hamesh Khanna'),
(23, '13/4/2021', '2 PM', 'Ram Thapa', 'Hamesh Khanna');

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `sn` int(10) NOT NULL,
  `blood` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodbank`
--

INSERT INTO `bloodbank` (`sn`, `blood`) VALUES
(1, 'A+'),
(2, 'B+'),
(3, 'AB+'),
(4, 'O+'),
(5, 'A-'),
(6, 'B-'),
(7, 'AB-'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `doctor_type` varchar(50) NOT NULL,
  `doctor_contact` varchar(12) NOT NULL,
  `d_address` varchar(12) DEFAULT NULL,
  `d_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `doctor_name`, `doctor_type`, `doctor_contact`, `d_address`, `d_email`) VALUES
(1, 'Rajendra Shah', 'Physicians', '9808976787', 'Matepani', 'shah@gmail.com'),
(2, 'Hari Gurung', 'Psychiatrists', '9887453456', 'Bhalam', 'hari123@gmail.com'),
(3, 'Raj Rai', 'Physicians', '9808988987', 'Birauta', 'rajraj@gmail.com'),
(4, 'Harka Sai', 'Psychiatrists', '9867676567', 'Lekhnath', 'saiharka@gmail.com'),
(5, 'Lal Singh', 'ENT', '98078789064', 'Gaudamukh', 'lal11@gmail.com'),
(6, 'Uma Pradhan', 'Internists', '9812332123', 'Bagar', 'pradhanUma@gmail.com'),
(7, 'Om BK', 'Pediatricians', '9809898787', 'Kahuhola', 'ombk12@icloud.com'),
(8, 'Megha Rai', 'Anesthesiologists', '9807876567', 'Kamalpokhri', 'megha345@icloud.com'),
(9, 'Som GC', 'Pathologists', '9876786534', 'Lamodahar', 'gcsom@icloud.com'),
(10, 'Umesh Dangol', 'Urologists', '9808766676', 'Bajhapatan', 'dangol12@icloud.com'),
(18, 'Hamesh Khanna', 'ENT', '9898989898', 'Bhadrakali', 'khannahamesh@icloud.com'),
(38, 'Sai Lama', 'ENT', '9898097867', 'Sangam Tol', 'sailama5@icloud.com'),
(67, 'Rabi Rai', 'ENT', '980898999', 'Bajhapatan', 'rabi@gamail.com');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `phone`, `photo`) VALUES
(1, 'Ram Rai', '9811256372', 'http://192.168.1.66//image/1.png'),
(2, 'Shyam Roka', '9889897678', 'http://192.168.1.66//image/2.png'),
(3, 'Shiv Gurung', '9819293846', 'http://192.168.1.66//image/3.png'),
(4, 'Hari Magar', '9812121090', 'http://192.168.1.66//image/4.png'),
(5, 'Santos Magar', '9878987678', 'http://192.168.1.66//image/1.png');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `medicine` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `volume` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`medicine`, `type`, `volume`) VALUES
('Acelcne', 'Bottle', '200 ml'),
('Amoxiln', 'Powder', '250 mg'),
('Ampillin', 'Tablet', '200 mg'),
('Atropine', 'Bottle', '100 mg'),
('Cetamol', 'Tablet', '100 mg'),
('Citamol', 'Tablet', '200 mg'),
('DL‐metio', 'Tablet:', '250 mg'),
('Hydisone', 'Powder', '100 mg'),
('Kolonal', 'Tablet', '100 mg'),
('Levamile', 'Tablet', '100 mg'),
('Naloxone', 'Bottle', '100 ml'),
('Odarma', 'Liquid', '100 ml'),
('Paracitamol', 'Tablet', '400 mg'),
('Phenoin', 'Tablet', '250 mg'),
('Praziqu', 'Tablet', '600 mg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(19, 'Santos Magar', 'a20ac31d56d981d98d2b57e3f383068c', 'santos@gmail.com'),
(25, 'Haresh Roka', '31029dde2976f44e327edbeef34aac01', 'hares@gmail.com'),
(28, 'indira', 'e10adc3949ba59abbe56e057f20f883e', 'jfifi@dd.cc'),
(29, 'Ram Thapa', '6a557ed1005dddd940595b8fc6ed47b2', 'ram@gmail.com'),
(32, 'Rajech Rai', 'cc03e747a6afbbcbf8be7668acfebee5', 'itsrajesh@gmail.com'),
(33, 'Sita BC', '49ffe4ca1f5039447f5c8e4ddf4b5dde', 'aasita@gmail.com'),
(122, 'saaa', '1e4f33a5eda747ad2ac237fd4e8116ed', 'xsd@dfs.gd'),
(123, 'dsssf', '5da97d15ecbd4c21e7120d9ab582d250', 'ssass@ddd.ccks'),
(124, 'dsdss', 'e10adc3949ba59abbe56e057f20f883e', 'ds@ff.ff'),
(125, 'dsdsss', 'e10adc3949ba59abbe56e057f20f883e', 'ds@ff.ffs'),
(126, 'dssdsds', 'e10adc3949ba59abbe56e057f20f883e', 'ushuh@dhf.dd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointments_id`);

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`),
  ADD UNIQUE KEY `doctor_contact` (`doctor_contact`),
  ADD UNIQUE KEY `demail` (`d_email`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`medicine`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointments_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bloodbank`
--
ALTER TABLE `bloodbank`
  MODIFY `sn` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
