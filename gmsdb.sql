-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2018 at 07:09 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `creditlist`
--

CREATE TABLE `creditlist` (
  `Id` int(11) NOT NULL,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `Contact` bigint(20) DEFAULT NULL,
  `Credit` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `creditlist`
--

INSERT INTO `creditlist` (`Id`, `Customer_Name`, `Contact`, `Credit`) VALUES
(1, 'Rohit Agarwal', 8013789437, 300),
(2, 'Kuntal Majee', 8981717122, 0),
(34, 'Nikhil Ladha', 8444837111, 30);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Date` date DEFAULT NULL,
  `Bill_No` int(11) DEFAULT NULL,
  `Customer_Name` varchar(50) DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `Contact` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Date`, `Bill_No`, `Customer_Name`, `Total`, `Contact`) VALUES
('2018-11-17', 0, 'xxx', 0, NULL),
('2018-11-17', 1, 'nik', 30, 8444837111),
('2018-11-17', 2, 'e', 30, 8013789437),
('2018-11-17', 3, '1', 15, 1),
('2018-11-17', 4, '1', 15, 1),
('2018-11-17', 5, '12', 30, 2),
('2018-11-17', 6, 'rohit', 30, 8013789437),
('2018-11-18', 7, 'Rohit', 135, 8013789437),
('2018-11-18', 8, 'w', 75, 8013789437);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `ItemCode` int(11) NOT NULL,
  `Item_Name` varchar(50) DEFAULT NULL,
  `Rate` float DEFAULT NULL,
  `Quantity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`ItemCode`, `Item_Name`, `Rate`, `Quantity`) VALUES
(1, 'Bread', 15, 10),
(42, 'Biscuits', 30, 45),
(45, 'Dal', 70, 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `creditlist`
--
ALTER TABLE `creditlist`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`ItemCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
