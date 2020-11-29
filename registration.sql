-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 06:55 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `s_no` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `confirm` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`s_no`, `username`, `password`, `confirm`, `address`, `gender`) VALUES
(120, 'a@gmail.com', 'juhi', ' juhi', 'juhi', 'female'),
(123, 'juhi', 'juhi', ' juhi', 'indore', 'female'),
(124, 'juhi', 'juhi', ' juhi', 'indore', 'female'),
(129, 'meghaha', '123', '123', 'dfdfdfd', 'female '),
(130, 'akjhjh', '123', ' 123', 'ihi', 'male'),
(131, 'jygy', '345', ' 345', 'jhbkjh', ''),
(132, 'kjhu', 'jjjj', ' jjjj', 'ljhj', 'male'),
(133, 'hello', 'hello', ' hello', 'iuhiu', 'male'),
(134, 'nileema', '123', ' 123', 'iuhiu', 'female'),
(135, 'riya', '123456', ' 123456', 'kjhlkjh', 'female'),
(136, 'juhi', 'juhi', ' juhi', 'kljk', 'female'),
(137, 'nilima', 'juhi', ' juhi', 'indore', 'female'),
(138, 'pooja', 'pooja', ' pooja', 'ind', 'female'),
(139, 'ljdcdx', '123', ' 123', 'kljhj', 'female'),
(140, 'divya', '123', ' 123', 'indore', 'female'),
(141, 'halkara', 'halkara', ' halkara', 'uhh', 'female'),
(142, 'juhi', '123', ' 123', 'jhlj', 'female'),
(143, 'JUHI', 'juhi', ' juhi', 'uihiu', 'female'),
(144, '', '', ' ', 'kjnkjn', ''),
(145, 'juhi', 'juhi', ' juhi', 'indore', 'female'),
(146, 'juhi', 'juhi', ' juhi', 'juhi', 'female'),
(147, 'juhi', 'juhi', ' juhi', 'indore', 'female'),
(148, 'aman', 'aman', ' aman', 'indore', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`s_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
