-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 07:57 AM
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
-- Database: `loans`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_loans`
--

CREATE TABLE `apply_loans` (
  `ID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `loan-types` enum('Personal loan','Home loan','Car loan','Business loan','Student loan') NOT NULL,
  `surety` enum('Collateral','Non-Collateral') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply_loans`
--

INSERT INTO `apply_loans` (`ID`, `name`, `phone`, `email`, `loan-types`, `surety`) VALUES
(1, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', ''),
(2, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', ''),
(3, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', ''),
(4, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', ''),
(5, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', ''),
(6, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', ''),
(7, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', ''),
(8, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_loans`
--
ALTER TABLE `apply_loans`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_loans`
--
ALTER TABLE `apply_loans`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
