-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2025 at 02:30 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u132566778_codenation`
--

-- --------------------------------------------------------

--
-- Table structure for table `wa_key`
--

CREATE TABLE `wa_key` (
  `idWaKey` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(50) NOT NULL,
  `wk` varchar(100) NOT NULL,
  `runTime` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='untuk pengiriman notifikasi wa ke client yang menggunakan jasa maintenance codenation';

--
-- Dumping data for table `wa_key`
--

INSERT INTO `wa_key` (`idWaKey`, `name`, `number`, `wk`, `runTime`) VALUES
(1, 'Notif 1', '62881026939466', 'zRMQnHApqN3mfo5c7Mwu', 1),
(2, 'Notif 2', '62881026372899', 'vCKzCLZQQQu2@D47en@!', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wa_key`
--
ALTER TABLE `wa_key`
  ADD PRIMARY KEY (`idWaKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wa_key`
--
ALTER TABLE `wa_key`
  MODIFY `idWaKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
