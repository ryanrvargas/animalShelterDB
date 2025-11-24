-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2025 at 11:41 AM
-- Server version: 8.0.44-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CSC355FA25Shelter`
--

-- --------------------------------------------------------

--
-- Table structure for table `PaidStaff`
--

CREATE TABLE `PaidStaff` (
  `StaffID` smallint NOT NULL,
  `Salary` int DEFAULT NULL,
  `HourlyWage` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PaidStaff`
--

INSERT INTO `PaidStaff` (`StaffID`, `Salary`, `HourlyWage`) VALUES
(2, NULL, '22.50'),
(5, 52000, NULL),
(7, NULL, '19.75'),
(9, 61000, NULL),
(11, NULL, '28.00'),
(14, 74500, NULL),
(15, NULL, '24.25'),
(18, 68000, NULL),
(20, NULL, '31.00'),
(22, 90000, NULL),
(23, NULL, '17.50'),
(25, 47000, NULL),
(27, NULL, '26.40'),
(28, 82500, NULL),
(30, NULL, '29.10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PaidStaff`
--
ALTER TABLE `PaidStaff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `PaidStaff`
--
ALTER TABLE `PaidStaff`
  ADD CONSTRAINT `PaidStaff_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
