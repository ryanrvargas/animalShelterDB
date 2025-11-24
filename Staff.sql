-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2025 at 11:40 AM
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
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `StaffID` smallint NOT NULL,
  `StaffEmail` varchar(255) NOT NULL,
  `StaffPhoneNumber` char(10) NOT NULL,
  `StaffLN` varchar(25) NOT NULL,
  `StaffFN` varchar(25) NOT NULL,
  `StaffSSN` char(9) NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffHouseNum` smallint NOT NULL,
  `StaffRoadName` varchar(50) NOT NULL,
  `StaffZipCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`StaffID`, `StaffEmail`, `StaffPhoneNumber`, `StaffLN`, `StaffFN`, `StaffSSN`, `StaffDOB`, `StaffHouseNum`, `StaffRoadName`, `StaffZipCode`) VALUES
(1, 'jdoe@example.com', '5552014821', 'Doe', 'John', '123456789', '1988-04-12', 142, 'Maple Street', '43012'),
(2, 'asmith@example.com', '5552197732', 'Smith', 'Alice', '987654321', '1991-09-23', 88, 'Oak Avenue', '43015'),
(3, 'bwilliams@example.com', '5553305551', 'Williams', 'Brian', '321549876', '1984-12-05', 512, 'Pine Lane', '43016'),
(4, 'cmiller@example.com', '5558893422', 'Miller', 'Chloe', '654781234', '1996-03-19', 230, 'Cedar Road', '43017'),
(5, 'djones@example.com', '5557789923', 'Jones', 'David', '764123489', '1979-07-30', 19, 'Elm Drive', '43055'),
(6, 'egarcia@example.com', '5552031188', 'Garcia', 'Elena', '812449213', '1993-11-01', 301, 'Birch Street', '43201'),
(7, 'fmartin@example.com', '5554419980', 'Martin', 'Felix', '419332577', '1987-01-28', 444, 'Walnut Avenue', '43202'),
(8, 'hthomas@example.com', '5556654329', 'Thomas', 'Hannah', '533901122', '1990-05-14', 200, 'Sycamore Way', '43203'),
(9, 'irichards@example.com', '5557208101', 'Richards', 'Ian', '372118462', '1985-02-10', 95, 'Spruce Court', '43204'),
(10, 'jroberts@example.com', '5558122298', 'Roberts', 'Julia', '448506672', '1994-10-08', 350, 'Chestnut Drive', '43205'),
(11, 'krobinson@example.com', '5552904431', 'Robinson', 'Kyle', '541739281', '1982-06-17', 728, 'Poplar Road', '43206'),
(12, 'lclark@example.com', '5554726610', 'Clark', 'Lena', '295883741', '1997-09-22', 64, 'Willow Street', '43207'),
(13, 'mmartinez@example.com', '5552880066', 'Martinez', 'Marco', '612651204', '1989-03-09', 450, 'Hickory Lane', '43081'),
(14, 'nlewis@example.com', '5555567394', 'Lewis', 'Nina', '730495572', '1995-12-27', 812, 'Aspen Drive', '43082'),
(15, 'oanderson@example.com', '5553451132', 'Anderson', 'Owen', '821339012', '1992-08-02', 202, 'Magnolia Way', '43085'),
(16, 'pwalker@example.com', '5556242204', 'Walker', 'Paige', '932128764', '1981-02-25', 378, 'Hemlock Road', '43210'),
(17, 'qyoung@example.com', '5559113771', 'Young', 'Quinn', '501772249', '1977-11-18', 523, 'Cottonwood Lane', '43211'),
(18, 'rhall@example.com', '5555016648', 'Hall', 'Riley', '610839201', '1998-04-07', 410, 'Evergreen Street', '43212'),
(19, 'sallen@example.com', '5557129987', 'Allen', 'Sophie', '384914502', '1990-06-03', 144, 'Hawthorn Ave', '43213'),
(20, 'tking@example.com', '5552344410', 'King', 'Tyler', '410298741', '1986-01-11', 920, 'Juniper Place', '43214'),
(21, 'uhernandez@example.com', '5559998422', 'Hernandez', 'Uma', '531103341', '1999-07-19', 277, 'Laurel Road', '43215'),
(22, 'vscott@example.com', '5554010014', 'Scott', 'Victor', '762661420', '1983-09-30', 89, 'Banyan Street', '43216'),
(23, 'wgreen@example.com', '5554907712', 'Green', 'Willa', '655027753', '1994-05-06', 332, 'Palm Drive', '43217'),
(24, 'xharris@example.com', '5556702348', 'Harris', 'Xavier', '803454421', '1980-10-15', 611, 'Beech Road', '43218'),
(25, 'yyoung@example.com', '5552095644', 'Young', 'Yara', '212580039', '1993-01-20', 48, 'Fir Court', '43065'),
(26, 'znelson@example.com', '5553108830', 'Nelson', 'Zane', '502465541', '1987-08-29', 734, 'Cypress Avenue', '43054'),
(27, 'abaker@example.com', '5557181001', 'Baker', 'Ava', '731916231', '1995-12-12', 410, 'Olive Street', '43040'),
(28, 'cward@example.com', '5552888814', 'Ward', 'Caleb', '934224417', '1984-04-09', 275, 'Sage Drive', '43041'),
(29, 'dfoster@example.com', '5559497733', 'Foster', 'Diana', '601705561', '1979-07-01', 600, 'Ivy Lane', '43044'),
(30, 'emorgan@example.com', '5555106629', 'Morgan', 'Ethan', '419358820', '1991-02-13', 127, 'Rosewood Blvd', '43045');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD UNIQUE KEY `StaffEmail` (`StaffEmail`),
  ADD UNIQUE KEY `StaffSSN` (`StaffSSN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
