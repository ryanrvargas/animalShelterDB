-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2025 at 11:37 AM
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
-- Table structure for table `CaresFor`
--

CREATE TABLE `CaresFor` (
  `AnimalID` smallint NOT NULL,
  `StaffID` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `CaresFor`
--

INSERT INTO `CaresFor` (`AnimalID`, `StaffID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(7, 12),
(7, 13),
(8, 14),
(9, 15),
(10, 16),
(10, 17),
(11, 18),
(12, 19),
(13, 20),
(14, 21),
(15, 22),
(16, 23),
(17, 24),
(18, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CaresFor`
--
ALTER TABLE `CaresFor`
  ADD PRIMARY KEY (`AnimalID`,`StaffID`),
  ADD KEY `StaffID` (`StaffID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CaresFor`
--
ALTER TABLE `CaresFor`
  ADD CONSTRAINT `fk_animal_id` FOREIGN KEY (`AnimalID`) REFERENCES `Animal` (`AnimalID`),
  ADD CONSTRAINT `fk_staff_id` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
