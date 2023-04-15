-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 05:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp2_dpbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `dev_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`dev_id`, `nama`, `email`, `password`, `image`) VALUES
(11, 'Moonton', 'moonton@gmail.com', 'moonton123', 'moonton.png'),
(12, 'Supercell Cuy', 'supercell@gmail.com', 'supercell123', 'supercell.jpg'),
(13, 'Agate', 'agate@gmail.com', 'agate123', 'agate-logo-col.jpg'),
(14, 'Rockstar', 'rockstar@gmail.com', 'rockstar123', 'Rockstar_Games_Logo.svg.png'),
(15, 'Electronic Arts', 'ea@gmail.com', 'ea123', 'EA_logo_black.png');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `dev_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `platform` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `dev_id`, `nama`, `genre`, `platform`, `image`) VALUES
(11, 11, 'Mobile Legends: Bang Bang', 'MOBA', 'Android, iOS', 'mlbb.jpeg'),
(15, 12, 'Clash of Clans', 'Strategy', 'Android, iOS, iPadOS', 'coc.png'),
(17, 12, 'Hay Day', 'Simulation', 'Android, iOS', 'hayday.jpeg'),
(19, 11, 'Mobile Legends: Adventure', 'Idle RPG', 'Android, iOS', 'mla.png'),
(20, 14, 'Red Dead Redemption 2', 'Action-Adventure', 'PlayStation, Windows, Xbox', 'rdr2.png'),
(21, 14, 'Grand Theft Auto V', 'Action-Adventure', 'PlayStation, Windows, Xbox', 'gta5.jpg'),
(22, 14, 'Bully: Anniversary Edition', 'Action-Adventure', 'Android, iOS, Windows', 'bully.png'),
(23, 13, 'Code Atma: RPG Supernatural', 'RPG', 'Android, iOS', 'codeatma.png'),
(24, 12, 'Brawl Stars', 'Action', 'Android, iOS', 'brawl.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `dev_id` (`dev_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `dev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`dev_id`) REFERENCES `developer` (`dev_id`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`dev_id`) REFERENCES `developer` (`dev_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
