-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2016 at 02:29 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d3_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_boxoffice`
--

CREATE TABLE `tbl_boxoffice` (
  `id` smallint(6) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_boxoffice`
--

INSERT INTO `tbl_boxoffice` (`id`, `label`, `value`, `color`) VALUES
(1, 'A New Hope', 21, '#00498C'),
(2, 'The Empire Strikes Back', 13, '#00A79D'),
(3, 'The Return Of The Jedi', 14, '#527892'),
(4, 'The Phantom Menace', 21, '#3D4E80'),
(5, 'Attack Of The Clones', 14, '#00A4BB'),
(6, 'Revenge Of The Sith', 17, '#212744');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_charkills`
--

CREATE TABLE `tbl_charkills` (
  `id` smallint(6) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_charkills`
--

INSERT INTO `tbl_charkills` (`id`, `label`, `value`, `color`) VALUES
(1, 'Anakin / Darth Vader', 43, '#00498C'),
(2, 'Obi Wan Kenobi', 29, '#00A79D'),
(3, 'Luke Skywalker', 13, '#527892'),
(4, 'Chewbacca', 7, '#3D4E80'),
(5, 'Princess Leia', 4, '#00A4BB'),
(6, 'Padme', 4, '#212744');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dueltime`
--

CREATE TABLE `tbl_dueltime` (
  `id` smallint(6) NOT NULL,
  `label` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dueltime`
--

INSERT INTO `tbl_dueltime` (`id`, `label`, `value`, `color`) VALUES
(1, 'A New Hope', 5, '#00498C'),
(2, 'The Empire Strikes Back', 15, '#00A79D'),
(3, 'Return Of The Jedi', 6, '#527892'),
(4, 'The Phantom Menace', 17, '#3D4E80'),
(5, 'Attack Of The Clones', 10, '#00A4BB'),
(6, 'Revenge Of The Sith', 47, '#212744');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stormkills`
--

CREATE TABLE `tbl_stormkills` (
  `id` smallint(6) NOT NULL,
  `label` varchar(30) NOT NULL,
  `value` int(11) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stormkills`
--

INSERT INTO `tbl_stormkills` (`id`, `label`, `value`, `color`) VALUES
(1, 'Tantive IV', 13, '#00498C'),
(2, 'Tatooine', 11, '#00A79D'),
(3, 'Yavin', 2, '#527892'),
(4, 'Hoth', 20, '#3D4E80'),
(5, 'Endor', 11, '#00A4BB'),
(6, 'Death Star', 1, '#212744');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_boxoffice`
--
ALTER TABLE `tbl_boxoffice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_charkills`
--
ALTER TABLE `tbl_charkills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dueltime`
--
ALTER TABLE `tbl_dueltime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stormkills`
--
ALTER TABLE `tbl_stormkills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_boxoffice`
--
ALTER TABLE `tbl_boxoffice`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_charkills`
--
ALTER TABLE `tbl_charkills`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_dueltime`
--
ALTER TABLE `tbl_dueltime`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_stormkills`
--
ALTER TABLE `tbl_stormkills`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
