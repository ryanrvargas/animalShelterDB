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
-- Table structure for table `MedicineHistory`
--

CREATE TABLE `MedicineHistory` (
  `MedicineID` smallint NOT NULL,
  `Name` char(12) DEFAULT NULL,
  `MedicineDate` date DEFAULT NULL,
  `Dosage` char(15) DEFAULT NULL,
  `AnimalID` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `MedicineHistory`
--

INSERT INTO `MedicineHistory` (`MedicineID`, `Name`, `MedicineDate`, `Dosage`, `AnimalID`) VALUES
(1, 'Frontline', '2024-01-06', '1 dose', 1),
(2, 'Dewormer', '2023-12-12', '5 ml', 3),
(3, 'Antibiotic', '2024-02-15', '1 pill', 2),
(4, 'EarDrops', '2024-03-21', '3 drops', 5),
(5, 'Metoclop', '2024-04-16', '2 ml', 4),
(6, 'CoughSyrup', '2023-09-15', '4 ml', 6),
(7, 'PainMed', '2024-01-10', '1 tab', 11),
(8, 'Insulin', '2024-01-10', '3 units', 11),
(9, 'AllergyRx', '2023-10-12', '1 tab', 12),
(10, 'FleaPill', '2023-09-20', '1 pill', 7),
(11, 'Steroid', '2024-02-02', '0.5 tab', 21),
(12, 'EyeDrops', '2024-04-12', '2 drops', 30),
(13, 'Probiotic', '2024-05-08', '1 scoop', 19),
(14, 'GasRelief', '2024-03-30', '2 ml', 25),
(15, 'Heartguard', '2024-04-20', '1 chew', 10),
(16, 'VitC', '2024-04-03', '10 mg', 19),
(17, 'Antibiotic', '2024-03-04', '1 pill', 22),
(18, 'Dewormer', '2024-02-21', '5 ml', 16),
(19, 'NSAID', '2024-05-21', '1 tab', 13),
(20, 'Laxative', '2024-01-28', '1 ml', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MedicineHistory`
--
ALTER TABLE `MedicineHistory`
  ADD PRIMARY KEY (`MedicineID`),
  ADD KEY `AnimalID` (`AnimalID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `MedicineHistory`
--
ALTER TABLE `MedicineHistory`
  ADD CONSTRAINT `MedicineHistory_ibfk_1` FOREIGN KEY (`AnimalID`) REFERENCES `Animal` (`AnimalID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
