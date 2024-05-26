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
-- Database: `credit_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_credit`
--

CREATE TABLE `apply_credit` (
  `ID` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `types` enum('First Millennia','First SWMP','First Classic','First Power','First Wealth','Club Vistara') NOT NULL,
  `pan` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pin` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apply_credit`
--

INSERT INTO `apply_credit` (`ID`, `name`, `phone`, `email`, `types`, `pan`, `address`, `pin`) VALUES
(1, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', '1234566', 'Hyderabad ', 500044),
(2, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', '1234566', 'Hyderabad ', 500044),
(3, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', '1234566', 'Hyderabad ', 500044),
(4, 'Cherrismaa', 2147483647, 'cherrismaa99@gmail.com', '', '1234566', 'Hyderabad ', 500044);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_credit`
--
ALTER TABLE `apply_credit`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_credit`
--
ALTER TABLE `apply_credit`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
