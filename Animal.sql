-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2025 at 11:36 AM
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
-- Table structure for table `Animal`
--

CREATE TABLE `Animal` (
  `AnimalID` smallint NOT NULL,
  `Gender` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Species` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `AnimalDOB` date NOT NULL,
  `Breed` char(20) DEFAULT NULL,
  `Weight` smallint NOT NULL,
  `FavoriteToy` char(20) DEFAULT NULL,
  `AnimalName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Animal`
--

INSERT INTO `Animal` (`AnimalID`, `Gender`, `Species`, `AnimalDOB`, `Breed`, `Weight`, `FavoriteToy`, `AnimalName`) VALUES
(1, 'Male', 'Dog', '2020-03-15', 'Labrador', 65, 'Tennis Ball', 'Buddy'),
(2, 'Female', 'Cat', '2018-11-02', 'Siamese', 10, 'Feather Wand', 'Luna'),
(3, 'Male', 'Dog', '2019-07-21', 'GermanShepherd', 75, 'Rope Toy', 'Rex'),
(4, 'Female', 'Rabbit', '2022-04-10', 'Dutch', 5, 'Cardboard Tube', 'Clover'),
(5, 'Male', 'Dog', '2021-01-28', 'Beagle', 25, 'Squeaky Bone', 'Max'),
(6, 'Female', 'Dog', '2017-09-12', 'GoldenRet', 70, 'Stuffed Duck', 'Daisy'),
(7, 'Male', 'Cat', '2020-06-30', 'Tabby', 12, 'Laser Pointer', 'Tiger'),
(8, 'Female', 'Dog', '2023-02-18', 'Chihuahua', 6, 'Mini Ball', 'Bella'),
(9, 'Male', 'Ferret', '2021-05-03', 'Standard', 4, 'Tunnel', 'Nibbles'),
(10, 'Female', 'Dog', '2019-12-01', 'Pitbull', 55, 'Chew Rope', 'Roxy'),
(11, 'Female', 'Cat', '2022-08-09', 'Calico', 9, 'Jingle Ball', 'Pumpkin'),
(12, 'Male', 'Dog', '2018-04-22', 'Boxer', 68, 'Kong Toy', 'Rocky'),
(13, 'Male', 'Dog', '2016-10-11', 'Husky', 60, 'Frisbee', 'Ghost'),
(14, 'Female', 'Dog', '2021-03-05', 'Corgi', 28, 'Squeaky Pig', 'Poppy'),
(15, 'Male', 'Cat', '2019-09-17', 'Maine Coon', 15, 'Cat Tree', 'Simba'),
(16, 'Female', 'Rabbit', '2023-01-25', 'Lop', 6, 'Hay Ball', 'Willow'),
(17, 'Male', 'Dog', '2020-07-04', 'Border Collie', 45, 'Tennis Ball', 'Scout'),
(18, 'Female', 'Dog', '2022-11-30', 'Poodle Mini', 14, 'Plush Lamb', 'Chloe'),
(19, 'Male', 'GuineaPig', '2021-02-14', 'Abyssinian', 3, 'Chew Block', 'Pepper'),
(20, 'Female', 'Bird', '2020-05-19', 'Parakeet', 1, 'Mirror Toy', 'Kiwi'),
(21, 'Male', 'Dog', '2017-08-28', 'Bulldog', 52, 'Rope Toy', 'Bruno'),
(22, 'Female', 'Cat', '2021-12-03', 'Tortoiseshell', 11, 'Feather Wand', 'Misty'),
(23, 'Male', 'Dog', '2019-02-09', 'Dalmatian', 58, 'Tug Rope', 'Spot'),
(24, 'Female', 'Dog', '2018-06-16', 'Greyhound', 62, 'Soft Blanket', 'Nova'),
(25, 'Male', 'Cat', '2022-03-21', 'Sphynx', 8, 'Heated Bed', 'Ramses'),
(26, 'Female', 'Dog', '2023-04-10', 'Shiba Inu', 23, 'Rubber Bone', NULL),
(27, 'Male', 'Rabbit', '2022-10-01', 'Rex', 5, 'Wood Block', NULL),
(28, 'Female', 'Ferret', '2021-01-19', 'Standard', 4, 'Hammock', NULL),
(29, 'Male', 'Dog', '2020-09-09', 'AustralianShep', 50, 'Tennis Ball', NULL),
(30, 'Female', 'Cat', '2019-11-27', 'RussianBlue', 10, 'Crinkle Ball', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Animal`
--
ALTER TABLE `Animal`
  ADD PRIMARY KEY (`AnimalID`),
  ADD KEY `AnimalName` (`AnimalName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
