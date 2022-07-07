-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 07:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza_ordering_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `Id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`Id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `create_acc`
--

CREATE TABLE `create_acc` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `username` varchar(40) DEFAULT NULL,
  `passwrod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `create_acc`
--

INSERT INTO `create_acc` (`id`, `fullname`, `email`, `gender`, `address`, `phone`, `username`, `passwrod`) VALUES
(16, 'ali raza', 'ali@gmail.com', 'male', 'landhi 6', '031627499', 'ali12', 'ali123'),
(17, 'muhammad farhan', 'mohammadfarhan44500@gmail.com', 'male', 'korangi', '32784', 'farhan123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `pizza_order`
--

CREATE TABLE `pizza_order` (
  `O_ID` int(30) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Address` text NOT NULL,
  `Totalprice` int(60) NOT NULL,
  `Phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizza_order`
--

INSERT INTO `pizza_order` (`O_ID`, `Name`, `Address`, `Totalprice`, `Phone`) VALUES
(4, 'Admin', 'sdjkfk', 400, '3005'),
(6, 'Muhammad Farhan', 'korangi 6', 2450, '03162859445'),
(8, 'Muhammad Farhan', 'jhjkhkjkh', 2790, '03162859445'),
(11, 'Admin', 'sdfdsf', 400, '3005'),
(12, 'Muhammad Farhan', 'aptech korangi', 1330, '03162859445'),
(13, 'ali raza', 'Smi University', 1210, '031627499'),
(14, 'Admin', 'malir', 990, '3005'),
(15, 'muhammad farhan', 'home colony', 2320, '32784');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `create_acc`
--
ALTER TABLE `create_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pizza_order`
--
ALTER TABLE `pizza_order`
  ADD PRIMARY KEY (`O_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `create_acc`
--
ALTER TABLE `create_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pizza_order`
--
ALTER TABLE `pizza_order`
  MODIFY `O_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
