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
-- Table structure for table `DiseaseHistory`
--

CREATE TABLE `DiseaseHistory` (
  `DiseaseID` smallint NOT NULL,
  `Name` char(12) DEFAULT NULL,
  `DiseaseDate` date DEFAULT NULL,
  `AnimalID` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `DiseaseHistory`
--

INSERT INTO `DiseaseHistory` (`DiseaseID`, `Name`, `DiseaseDate`, `AnimalID`) VALUES
(1, 'Fleas', '2024-01-05', 1),
(2, 'Worms', '2023-12-11', 3),
(3, 'Cold', '2024-02-14', 2),
(4, 'EarInfect', '2024-03-20', 5),
(5, 'GIStasis', '2024-04-15', 4),
(6, 'KennelCough', '2023-09-13', 6),
(7, 'Diabetes', '2024-01-09', 11),
(8, 'Obesity', '2024-02-01', 21),
(9, 'Allergies', '2023-10-10', 12),
(10, 'Asthma', '2023-11-30', 20),
(11, 'Ringworm', '2024-03-03', 22),
(12, 'URI', '2024-01-22', 15),
(13, 'Mange', '2024-04-05', 10),
(14, 'BladderInf', '2024-02-18', 18),
(15, 'GIUpset', '2024-05-07', 19),
(16, 'ToothProb', '2024-03-30', 25),
(17, 'EyeInfect', '2024-04-11', 30),
(18, 'Arthritis', '2024-05-20', 13);

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
