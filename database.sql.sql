-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 06:44 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asish`
--

-- --------------------------------------------------------

--
-- Table structure for table `adds`
--

CREATE TABLE `adds` (
  `id` int(11) NOT NULL,
  `number_plate` varchar(3000) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adds`
--

INSERT INTO `adds` (`id`, `number_plate`, `time`, `date`) VALUES
(1, 'LU-3520', '2022-08-04 23:55:08', '2022-08-04 18:51:33'),
(2, 'lu1 ka', '2022-08-05 00:22:55', '2022-08-04 18:51:33'),
(3, 'yhtyut', '2022-08-05 00:36:57', '2022-08-04 18:15:00'),
(4, 'rtet', '2022-08-05 00:38:01', '2022-08-04 18:15:00'),
(5, 'gggf', '2022-08-05 00:39:01', '2022-08-04 18:54:01'),
(6, 'hghjgh', '2022-08-05 02:04:39', '2022-08-04 20:19:39'),
(7, 'man', '2022-08-05 02:04:39', '2022-08-04 20:19:39'),
(8, 'fg', '2022-08-05 02:04:55', '2022-08-04 20:19:55'),
(9, 'tfrt', '2022-08-05 02:04:55', '2022-08-04 20:19:55'),
(10, 'fhyyfrytsdfsdfsd', '2022-08-05 10:22:47', '2022-08-04 20:20:07'),
(11, 'hgfyyf', '2022-08-05 02:05:07', '2022-08-04 20:20:07'),
(12, 'dgfhhg', '2022-08-05 10:22:25', '2022-08-05 04:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(3000) NOT NULL,
  `passwords` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `passwords`) VALUES
(1, 'nepali2244manoj@gmail.com', 'mn123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adds`
--
ALTER TABLE `adds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adds`
--
ALTER TABLE `adds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
