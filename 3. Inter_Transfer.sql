 -- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 07:58 AM
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
-- Database: `virtual_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `inter_transfer`
--

CREATE TABLE `inter_transfer` (
  `ID` int(255) NOT NULL,
  `from_account` enum('Account 1 (Clover 0000)','Account 2 (Clover 1111)') NOT NULL,
  `to_account` enum('Account 1 (Clover 0000)','Account 2 (Clover 1111)') NOT NULL,
  `currency` enum('USD','ENUM') NOT NULL,
  `amount` int(255) NOT NULL,
  `transfer_date` date NOT NULL,
  `repeat_transfer` enum('Yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inter_transfer`
--

INSERT INTO `inter_transfer` (`ID`, `from_account`, `to_account`, `currency`, `amount`, `transfer_date`, `repeat_transfer`) VALUES
(1, '', '', 'USD', 1100, '0000-00-00', ''),
(2, '', '', 'USD', 1100, '0000-00-00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inter_transfer`
--
ALTER TABLE `inter_transfer`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inter_transfer`
--
ALTER TABLE `inter_transfer`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
