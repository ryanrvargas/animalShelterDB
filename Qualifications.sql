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
-- Table structure for table `Qualifications`
--

CREATE TABLE `Qualifications` (
  `StaffID` smallint NOT NULL,
  `Qualification` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Qualifications`
--

INSERT INTO `Qualifications` (`StaffID`, `Qualification`) VALUES
(2, 'PHD'),
(5, 'USDA Category I Accreditation'),
(7, 'North Carolina State Veterinary License'),
(9, 'American Veterinary Medical Association Certification'),
(11, 'DEA Controlled Substance Registration');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Qualifications`
--
ALTER TABLE `Qualifications`
  ADD PRIMARY KEY (`StaffID`,`Qualification`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Qualifications`
--
ALTER TABLE `Qualifications`
  ADD CONSTRAINT `Qualifications_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
