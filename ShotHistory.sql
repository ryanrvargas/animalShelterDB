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
-- Table structure for table `ShotHistory`
--

CREATE TABLE `ShotHistory` (
  `ShotID` smallint NOT NULL,
  `Name` char(12) DEFAULT NULL,
  `ShotDate` date DEFAULT NULL,
  `AnimalID` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ShotHistory`
--

INSERT INTO `ShotHistory` (`ShotID`, `Name`, `ShotDate`, `AnimalID`) VALUES
(1, 'Rabies', '2024-01-12', 1),
(2, 'Parvo', '2024-02-10', 1),
(3, 'Rabies', '2023-11-15', 2),
(4, 'Distemper', '2024-03-20', 3),
(5, 'Rabies', '2024-04-01', 3),
(6, 'Myxo', '2024-05-04', 4),
(7, 'Rabies', '2024-01-22', 5),
(8, 'Parvo', '2024-02-22', 5),
(9, 'Rabies', '2023-09-01', 6),
(10, 'FVRCP', '2024-02-05', 7),
(11, 'Rabies', '2024-06-10', 8),
(12, 'Distemper', '2024-03-11', 9),
(13, 'Rabies', '2023-10-10', 10),
(14, 'FVRCP', '2024-03-03', 11),
(15, 'Rabies', '2023-05-20', 12),
(16, 'Rabies', '2023-07-07', 13),
(17, 'Rabies', '2022-12-12', 14),
(18, 'FVRCP', '2023-09-09', 15),
(19, 'Myxo', '2024-01-18', 16),
(20, 'Rabies', '2024-02-14', 17),
(21, 'Rabies', '2024-03-22', 18),
(22, 'VitCShot', '2024-04-02', 19),
(23, 'BirdVaxA', '2024-03-01', 20),
(24, 'Rabies', '2022-11-11', 21),
(25, 'FVRCP', '2023-08-19', 22),
(26, 'Rabies', '2023-03-30', 23),
(27, 'Rabies', '2022-06-25', 24),
(28, 'FVRCP', '2024-02-27', 25),
(29, 'Rabies', '2024-05-19', 26),
(30, 'Myxo', '2024-06-01', 27);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ShotHistory`
--
ALTER TABLE `ShotHistory`
  ADD PRIMARY KEY (`ShotID`),
  ADD KEY `AnimalID` (`AnimalID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ShotHistory`
--
ALTER TABLE `ShotHistory`
  ADD CONSTRAINT `ShotHistory_ibfk_1` FOREIGN KEY (`AnimalID`) REFERENCES `Animal` (`AnimalID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
