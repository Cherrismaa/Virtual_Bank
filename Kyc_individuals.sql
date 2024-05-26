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
-- Database: `kyc_individuals`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `ID` int(255) NOT NULL,
  `Applicant_Name` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `maritalStatus` enum('Single','Married') NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `Status` enum('Resident Individual','Non Resident','Foreign National','') NOT NULL,
  `pan` varchar(10) NOT NULL,
  `aadhaar` int(15) NOT NULL,
  `poi` varchar(50) NOT NULL,
  `residenceAddress` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(10) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `Tel` int(15) NOT NULL,
  `Tel_Res` int(15) NOT NULL,
  `Mobile_No` varchar(255) NOT NULL,
  `Fax` int(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `poa` varchar(100) NOT NULL,
  `PAddress` varchar(255) NOT NULL,
  `PCity` varchar(255) NOT NULL,
  `PPincode` int(8) NOT NULL,
  `PState` varchar(255) NOT NULL,
  `PCountry` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`ID`, `Applicant_Name`, `fatherName`, `gender`, `maritalStatus`, `dob`, `nationality`, `Status`, `pan`, `aadhaar`, `poi`, `residenceAddress`, `city`, `pincode`, `state`, `country`, `Tel`, `Tel_Res`, `Mobile_No`, `Fax`, `Email`, `poa`, `PAddress`, `PCity`, `PPincode`, `PState`, `PCountry`) VALUES
(1, 'Cherrismaa Mucharla', 'Maheshwar Mucharla', 'Female', 'Single', '2024-03-20', 'Indian', 'Resident Individual', '1234566', 2147483647, 'Aadhar', 'Hyderabad', 'Hyderabad', 500000, 'Telangana', 'India', 2147483647, 2130456789, '', 369852, 'cherrismaa123@gmail.com', 'Gas Bill', 'Hyderabad', 'same', 0, 'same', 'same'),
(2, 'Cherrismaa Mucharla', 'Maheshwar Mucharla', 'Female', 'Single', '2024-03-20', 'Indian', 'Resident Individual', '1234566', 2147483647, 'Aadhar', 'Hyderabad', 'Hyderabad', 500000, 'Telangana', 'India', 2147483647, 2130456789, '', 369852, 'cherrismaa123@gmail.com', 'Gas Bill', 'Hyderabad', 'same', 0, 'same', 'same'),
(3, 'Cherrismaa Mucharla', 'Maheshwar Mucharla', 'Female', 'Single', '2024-03-20', 'Indian', 'Resident Individual', '1234566', 2147483647, 'Aadhar', 'Hyderabad', 'Hyderabad', 500000, 'Telangana', 'India', 2147483647, 2130456789, '', 369852, 'cherrismaa123@gmail.com', 'Gas Bill', 'Hyderabad', 'same', 0, 'same', 'same');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
