-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2025 at 02:28 PM
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
-- Database: `u132566778_volttrade`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `idMember` int(11) NOT NULL,
  `usrName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '''0''',
  `pasx` varchar(100) NOT NULL,
  `pasTransaction` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `idSponsor` int(11) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL DEFAULT '0',
  `idCountry` int(11) NOT NULL DEFAULT 0,
  `city` varchar(100) NOT NULL DEFAULT '0',
  `zip` varchar(5) NOT NULL DEFAULT '0',
  `state` varchar(200) NOT NULL DEFAULT '0',
  `dRegister` datetime NOT NULL,
  `mail` int(11) NOT NULL DEFAULT 1,
  `sttsMember` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`idMember`, `usrName`, `email`, `pasx`, `pasTransaction`, `name`, `uid`, `idSponsor`, `address`, `phone`, `idCountry`, `city`, `zip`, `state`, `dRegister`, `mail`, `sttsMember`) VALUES
(1, 'jamal', 'master@volttrade.com', '$2y$10$iI2WuPR2bdVMWQDw3agc.uqPbdYQHKcmg2nd55ke2vto5Q2zh.qCa', '', 'Voldtrade', '102938939', 0, '0x749cae291981c2942027605da72f032a9ca8d0fa', '081277658606', 0, '0', '0', '', '2024-04-02 13:46:44', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `member_address`
--

CREATE TABLE `member_address` (
  `idMemberAddress` int(11) NOT NULL,
  `idMember` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pk` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_address`
--

INSERT INTO `member_address` (`idMemberAddress`, `idMember`, `address`, `pk`) VALUES
(1, 1, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '');

-- --------------------------------------------------------

--
-- Table structure for table `member_bonus`
--

CREATE TABLE `member_bonus` (
  `idMemberBonus` int(11) NOT NULL,
  `idMember` int(11) NOT NULL,
  `amount` double NOT NULL,
  `datex` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_level`
--

CREATE TABLE `member_level` (
  `idMemberLevel` int(11) NOT NULL,
  `parenting` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `sponsor` int(11) NOT NULL,
  `level` varchar(100) NOT NULL,
  `dateRegister` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_omset`
--

CREATE TABLE `member_omset` (
  `idMemberOmset` int(11) NOT NULL,
  `idMember` int(11) NOT NULL,
  `omset` double NOT NULL,
  `omsetAsal` double NOT NULL,
  `level` int(11) NOT NULL,
  `datex` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_withdrawal`
--

CREATE TABLE `member_withdrawal` (
  `idMemberWithdrawal` int(11) NOT NULL,
  `idMember` int(11) NOT NULL,
  `amount` double NOT NULL,
  `datex` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pair`
--

CREATE TABLE `pair` (
  `idPair` int(11) NOT NULL,
  `pair` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pair`
--

INSERT INTO `pair` (`idPair`, `pair`, `img`) VALUES
(1, 'BTCUSDT', 'https://s2.coinmarketcap.com/static/img/coins/64x64/1.png'),
(2, 'ETHUSDT', 'https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png'),
(3, 'SOLUSDT', 'https://s2.coinmarketcap.com/static/img/coins/64x64/5426.png'),
(4, 'ADAUSDT', 'https://s2.coinmarketcap.com/static/img/coins/64x64/2010.png'),
(5, 'DOGEUSDT', 'https://s2.coinmarketcap.com/static/img/coins/64x64/74.png'),
(6, 'TRXUSDT', 'https://s2.coinmarketcap.com/static/img/coins/64x64/1958.png'),
(7, 'SHIBUSDT', 'https://s2.coinmarketcap.com/static/img/coins/64x64/5994.png'),
(8, 'BNBUSDT', 'https://s2.coinmarketcap.com/static/img/coins/64x64/1839.png');

-- --------------------------------------------------------

--
-- Table structure for table `pas_temporary`
--

CREATE TABLE `pas_temporary` (
  `idPasTemporary` int(11) NOT NULL,
  `idMember` int(11) NOT NULL,
  `pasx` varchar(200) NOT NULL,
  `pasTransaction` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staking`
--

CREATE TABLE `staking` (
  `idStaking` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `idMember` int(11) NOT NULL,
  `amount` double NOT NULL,
  `xet` double NOT NULL,
  `address` varchar(200) NOT NULL,
  `px` varchar(200) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateExp` datetime NOT NULL,
  `dateActivated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staking`
--

INSERT INTO `staking` (`idStaking`, `invoice`, `idMember`, `amount`, `xet`, `address`, `px`, `dateCreated`, `dateExp`, `dateActivated`) VALUES
(1, '687a084ef2800', 1, 1000, 100000, '0x46baae9fec509a31fb4399bd0947a94c817d09d6', 'dHp2T2FBYTE1YkpTTzZsOTcvUDlIQU9nRVliTGxNM2QvWGdlZHZuZHk0ZW84UnZTNzN1TlF5OGh2YTBPWUF0WXk5MmVFVXZzZGhZMlFGQm53VHJPMmd3L1N5UmFBUmt1bTFQdVp3YkhNdkE9', '2025-07-18 08:39:42', '2025-07-18 10:39:42', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `staking_profit`
--

CREATE TABLE `staking_profit` (
  `idStakingProfit` int(11) NOT NULL,
  `idStaking` int(11) NOT NULL,
  `idMember` int(11) NOT NULL,
  `amount` double NOT NULL,
  `datex` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idMember`);

--
-- Indexes for table `member_address`
--
ALTER TABLE `member_address`
  ADD PRIMARY KEY (`idMemberAddress`);

--
-- Indexes for table `member_bonus`
--
ALTER TABLE `member_bonus`
  ADD PRIMARY KEY (`idMemberBonus`);

--
-- Indexes for table `member_withdrawal`
--
ALTER TABLE `member_withdrawal`
  ADD PRIMARY KEY (`idMemberWithdrawal`);

--
-- Indexes for table `pair`
--
ALTER TABLE `pair`
  ADD PRIMARY KEY (`idPair`);

--
-- Indexes for table `staking`
--
ALTER TABLE `staking`
  ADD PRIMARY KEY (`idStaking`);

--
-- Indexes for table `staking_profit`
--
ALTER TABLE `staking_profit`
  ADD PRIMARY KEY (`idStakingProfit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `idMember` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `member_address`
--
ALTER TABLE `member_address`
  MODIFY `idMemberAddress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member_bonus`
--
ALTER TABLE `member_bonus`
  MODIFY `idMemberBonus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member_withdrawal`
--
ALTER TABLE `member_withdrawal`
  MODIFY `idMemberWithdrawal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pair`
--
ALTER TABLE `pair`
  MODIFY `idPair` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staking`
--
ALTER TABLE `staking`
  MODIFY `idStaking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staking_profit`
--
ALTER TABLE `staking_profit`
  MODIFY `idStakingProfit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
