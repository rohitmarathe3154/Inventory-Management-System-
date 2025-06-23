-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 07:53 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventary_management_tool`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(52),
(52),
(52),
(52);

-- --------------------------------------------------------

--
-- Table structure for table `issue_processed`
--

CREATE TABLE `issue_processed` (
  `iP_id` int(11) NOT NULL,
  `iP_issueDate` varchar(255) DEFAULT NULL,
  `iP_issueTime` varchar(255) DEFAULT NULL,
  `iP_issuerName` varchar(255) DEFAULT NULL,
  `iP_processedId` int(11) NOT NULL,
  `iP_processedName` varchar(255) DEFAULT NULL,
  `iP_quantity` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_processed`
--

INSERT INTO `issue_processed` (`iP_id`, `iP_issueDate`, `iP_issueTime`, `iP_issuerName`, `iP_processedId`, `iP_processedName`, `iP_quantity`) VALUES
(17, '2024-07-29', '22:53', 'Rohit', 11, 'Water bottle', 5),
(19, '2024-08-01', '00:26', 'Uday', 18, 'Pen', 5),
(20, '2024-08-01', '14:24', 'Mohit', 18, 'Pen', 10),
(21, '2024-08-01', '14:29', 'Jayesh', 18, 'Pen', 10),
(39, '2024-08-01', '15:41', 'Gaurav Marathe', 18, 'Pen', 30),
(40, '2024-08-01', '15:41', 'Vicky ', 33, 'Furniture', 30),
(46, '2024-08-03', '13:28', 'Max', 35, 'Printed Circuit Boards (PCBs)', 5),
(48, '2024-08-03', '13:32', 'Max', 34, 'Glass Bottles', 5);

-- --------------------------------------------------------

--
-- Table structure for table `issue_raw`
--

CREATE TABLE `issue_raw` (
  `iR_id` int(11) NOT NULL,
  `iR_issueDate` varchar(255) DEFAULT NULL,
  `iR_issueTime` varchar(255) DEFAULT NULL,
  `iR_issuerName` varchar(255) DEFAULT NULL,
  `iR_quantity` float NOT NULL,
  `iR_rawName` varchar(255) DEFAULT NULL,
  `iR_rawid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue_raw`
--

INSERT INTO `issue_raw` (`iR_id`, `iR_issueDate`, `iR_issueTime`, `iR_issuerName`, `iR_quantity`, `iR_rawName`, `iR_rawid`) VALUES
(8, '2024-07-26', '15:42', 'Rohit', 100, 'Steel', '6'),
(9, '2024-07-26', '15:48', 'Vedant', 500, 'Steel', '6'),
(12, '2024-07-26', '16:39', 'Kunal', 500, 'Copper', '10'),
(15, '2024-07-28', '22:08', 'Om', 50, 'Copper', '10'),
(41, '2024-08-01', '15:42', 'Rohit Marathe', 500, 'Cotton', '24'),
(43, '2024-08-03', '12:58', 'Mohit Marathe', 50, 'Gold', '13'),
(47, '2024-08-03', '13:29', 'Max', 5, 'LED chips', '29');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `m_email` varchar(100) NOT NULL,
  `m_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`m_email`, `m_password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `processed_material`
--

CREATE TABLE `processed_material` (
  `p_id` int(11) NOT NULL,
  `p_costPerUnit` float NOT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `p_quantity` float NOT NULL,
  `p_unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processed_material`
--

INSERT INTO `processed_material` (`p_id`, `p_costPerUnit`, `p_name`, `p_quantity`, `p_unit`) VALUES
(11, 750, 'Water bottle', 15, 'pcs'),
(18, 10, 'Pen', 295, 'pcs'),
(30, 500, 'Steel Beams', 300, 'pcs'),
(32, 150, 'Paints and Coatings', 1000, 'litre'),
(33, 15000, 'Furniture', 0, 'pcs'),
(34, 250, 'Glass Bottles', 45, 'pcs'),
(35, 120, 'Printed Circuit Boards (PCBs)', 45, 'pcs'),
(36, 500, 'Leather Jackets', 80, 'pcs'),
(37, 1500, 'Aluminum Foils', 85, 'kg'),
(45, 8000, 'Cycles', 20, 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `raw_material`
--

CREATE TABLE `raw_material` (
  `r_id` int(11) NOT NULL,
  `r_costPerUnit` float NOT NULL,
  `r_name` varchar(255) DEFAULT NULL,
  `r_quantity` float NOT NULL,
  `r_unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raw_material`
--

INSERT INTO `raw_material` (`r_id`, `r_costPerUnit`, `r_name`, `r_quantity`, `r_unit`) VALUES
(6, 100, 'Steel', 550, 'kg'),
(10, 500, 'Copper', 0, 'kg'),
(13, 2000, 'Gold', 450, 'kg'),
(22, 1500, 'Steel Sheets', 400, 'pcs'),
(24, 100, 'Cotton', 24500, 'kg'),
(25, 40, 'Wheat', 5000, 'kg'),
(26, 500, 'Aluminum Ingots ', 600, 'kg'),
(28, 20, 'Connection wires', 500, 'pcs'),
(29, 50, 'LED chips', 295, 'pcs'),
(38, 250, 'Glass Sheets', 50, 'pcs'),
(42, 2000, 'Tyres', 50, 'pcs'),
(44, 100, 'Rubber', 500, 'kg'),
(49, 15, 'Wooden Sticks', 50, 'pcs'),
(51, 60, 'Plastic Pallets', 45, 'pcs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issue_processed`
--
ALTER TABLE `issue_processed`
  ADD PRIMARY KEY (`iP_id`);

--
-- Indexes for table `issue_raw`
--
ALTER TABLE `issue_raw`
  ADD PRIMARY KEY (`iR_id`);

--
-- Indexes for table `processed_material`
--
ALTER TABLE `processed_material`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `raw_material`
--
ALTER TABLE `raw_material`
  ADD PRIMARY KEY (`r_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
