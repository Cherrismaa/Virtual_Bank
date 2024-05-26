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
-- Table structure for table `signup_loans`
--

CREATE TABLE `signup_loans` (
  `ID` int(255) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` int(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(20) NOT NULL,
  `password1` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup_loans`
--

INSERT INTO `signup_loans` (`ID`, `name`, `phone`, `email`, `password`, `password1`) VALUES
(1, 'Cherrismaa', 2147483647, 'cherrismaa@gmail.com', '123456qwe', '123456qwe'),
(2, 'Cherrish', 2147483647, 'cherrismaa99@gmail.com', '123', '123'),
(3, 'abc', 34567899, 'abc@gmail.com', '123', '123'),
(4, 'abc', 34567899, 'abc@gmail.com', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup_loans`
--
ALTER TABLE `signup_loans`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signup_loans`
--
ALTER TABLE `signup_loans`
  MODIFY `ID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
