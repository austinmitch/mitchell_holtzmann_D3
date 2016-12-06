-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2016 at 09:12 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d3_group`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `data_id` int(4) NOT NULL,
  `data_label` varchar(100) NOT NULL,
  `data_value` int(11) NOT NULL,
  `data_tooltip` varchar(100) NOT NULL,
  `data_set` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`data_id`, `data_label`, `data_value`, `data_tooltip`, `data_set`) VALUES
(1, 'A New Hope', 21, '$460,998,000', 1),
(2, 'The Empire Strikes Back', 13, '$290,475,000', 1),
(3, 'The Return of the Jedi', 14, '$309,306,000', 1),
(4, 'The Phantom Menace', 21, '$475,545,000', 1),
(5, 'Attack of the Clones', 14, '$310,677,000', 1),
(6, 'Revenge of the Sith', 17, '$380,263,000', 1),
(7, 'Anakin/Darth Vader', 43, '107 Kills', 2),
(8, 'Obi Wan Kenobi', 29, '72 Kills', 2),
(9, 'Luke Skywalker', 13, '33 Kills (not counting the kills when the death star exploded)', 2),
(10, 'Chewbacca', 7, '17 kills', 2),
(11, 'Princess Leia', 4, '11 Kills', 2),
(12, 'Padme', 4, '10 Kills', 2),
(13, 'A New Hope', 5, '1 minute 34 seconds', 3),
(14, 'The Empire Strikes Back', 15, '3 minutes 55 seconds', 3),
(15, 'Return of the Jedi', 6, '1 minute 49 seconds', 3),
(16, 'The Phantom Menace', 17, '4 minutes 1 second', 3),
(17, 'Attack of the Clones', 10, '2 minutes 45 seconds', 3),
(18, 'Revenge of the Sith', 47, '11 minutes 48 seconds', 3),
(19, 'Tantive IV', 23, '13 Kills', 4),
(20, 'Tatooine', 19, '11 Kills', 4),
(21, 'Yavin', 3, '2 Kills', 4),
(22, 'Hoth', 34, '20 Kills', 4),
(23, 'Endor', 19, '11 Kills', 4),
(24, 'Death Star', 2, '1 Kill', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_set`
--

CREATE TABLE `tbl_set` (
  `set_id` int(4) NOT NULL,
  `set_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_set`
--

INSERT INTO `tbl_set` (`set_id`, `set_name`) VALUES
(1, 'U.S. Box office gross by movie'),
(2, 'On screen kills by character'),
(3, 'Lightsaber duel time by movie'),
(4, 'Storm trooper kills by planet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `tbl_set`
--
ALTER TABLE `tbl_set`
  ADD PRIMARY KEY (`set_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `data_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_set`
--
ALTER TABLE `tbl_set`
  MODIFY `set_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
