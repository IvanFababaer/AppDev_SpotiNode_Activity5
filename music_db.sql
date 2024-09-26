-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 26, 2024 at 01:26 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `music`
--

DROP TABLE IF EXISTS `music`;
CREATE TABLE IF NOT EXISTS `music` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `music`
--

INSERT INTO `music` (`id`, `title`, `artist`, `file_path`) VALUES
(18, 'comethru', 'Jeremy Sucker', 'uploads/1727321365754.mp3'),
(19, 'Love You Different', 'Justin Bieber', 'uploads/1727321416506.mp3'),
(12, 'double take', 'Dhruv', 'uploads/1727285146401.mp3'),
(13, 'drunk text', 'Henry Moodie', 'uploads/1727285180106.mp3'),
(14, 'Rewrite the Stars', 'D.O. EXO and Lee Suhyun', 'uploads/1727285209076.mp3'),
(23, 'Latch', 'Sam Smith', 'uploads/1727322036930.mp3'),
(16, 'Off My Face', 'Justin Bieber', 'uploads/1727321247843.mp3'),
(20, 'Good Enough', 'Xdinary Heroes', 'uploads/1727321468296.mp3'),
(21, 'Crazier', 'Arthur Miguel', 'uploads/1727321888163.mp3'),
(22, 'Saturn', 'SZA', 'uploads/1727321948128.mp3'),
(24, 'Falling', 'Harry Styles', 'uploads/1727322121872.mp3'),
(28, 'Dangerously', 'Charlie Puth', 'uploads/1727323615954.mp3'),
(26, 'Senopati in the Rain', 'Jordan Susanto', 'uploads/1727322536765.mp3'),
(27, 'Attention', 'Charlie Puth', 'uploads/1727322605079.mp3'),
(29, 'Still Into You', 'Paramore', 'uploads/1727323677824.mp3'),
(33, 'Good Luck Babe!', 'Chappell Roan', 'uploads/1727324012768.mp3'),
(34, 'Closer You and I', 'Adie', 'uploads/1727324171032.mp3'),
(32, 'Thinkin About You', 'Hi-Key', 'uploads/1727323900915.mp3');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
