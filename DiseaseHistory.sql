-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2025 at 11:53 AM
-- Server version: 8.0.43-0ubuntu0.22.04.2
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
-- Table structure for table `DiseaseHistory`
--

CREATE TABLE `DiseaseHistory` (
  `DiseaseID` smallint NOT NULL,
  `Name` char(12) DEFAULT NULL,
  `DiseaseDate` date DEFAULT NULL,
  `AnimalID` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DiseaseHistory`
--
ALTER TABLE `DiseaseHistory`
  ADD PRIMARY KEY (`DiseaseID`),
  ADD KEY `AnimalID` (`AnimalID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DiseaseHistory`
--
ALTER TABLE `DiseaseHistory`
  ADD CONSTRAINT `DiseaseHistory_ibfk_1` FOREIGN KEY (`AnimalID`) REFERENCES `Animal` (`AnimalID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
