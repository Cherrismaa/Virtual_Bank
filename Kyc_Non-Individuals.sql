-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 07:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kyc_non_individuals`
--

-- --------------------------------------------------------

--
-- Table structure for table `non-details`
--

CREATE TABLE `non-details` (
  `ID` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Doi` varchar(20) NOT NULL,
  `Poi` varchar(255) NOT NULL,
  `date` varchar(10) NOT NULL,
  `Pan` varchar(20) NOT NULL,
  `RegistrationNo` int(50) NOT NULL,
  `status` enum('Private Limited Co','Public Limited Co','Body Corporate','Partnership','Trust','Charities','NGOs','FI','FII','HUF','AOP','Bank','Government Body','Non-Government Organization','Defense Establishment','BOI','Society','LLP') NOT NULL,
  `othersSpecify` varchar(255) NOT NULL,
  `residenceAddress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `pincode` int(10) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `Tel` int(15) NOT NULL,
  `Tel_Res` int(15) NOT NULL,
  `Mobile_No` int(15) NOT NULL,
  `Fax` int(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `poa` varchar(255) NOT NULL,
  `RegisteredAddress` varchar(255) NOT NULL,
  `PCity` varchar(255) NOT NULL,
  `PPincode` int(100) NOT NULL,
  `PState` varchar(100) NOT NULL,
  `PCountry` varchar(100) NOT NULL,
  `NamePan` varchar(100) NOT NULL,
  `DIN` varchar(100) NOT NULL,
  `Aadhaar` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `non-details`
--

INSERT INTO `non-details` (`ID`, `name`, `Doi`, `Poi`, `date`, `Pan`, `RegistrationNo`, `status`, `othersSpecify`, `residenceAddress`, `city`, `pincode`, `state`, `country`, `Tel`, `Tel_Res`, `Mobile_No`, `Fax`, `Email`, `poa`, `RegisteredAddress`, `PCity`, `PPincode`, `PState`, `PCountry`, `NamePan`, `DIN`, `Aadhaar`) VALUES
(1, 'Cherrismaa', '12/12/12', '', '12/12/12', '123456', 123456, 'Government Body', '', 'hyd', 'Hyderabad', 500000, 'Telangana', 'India', 2147483647, 2130456789, 1478523690, 369852, 'cherrismaa123@gmail.com', 'Gas Bill', 'hyd', 'same', 0, 'same', 'same', 'cherrismaa', '2', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `non-details`
--
ALTER TABLE `non-details`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `non-details`
--
ALTER TABLE `non-details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
