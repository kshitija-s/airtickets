-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2016 at 07:43 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` varchar(15) NOT NULL,
  `a_password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_password`) VALUES
('admin_fb', 'admin@fb');

-- --------------------------------------------------------

--
-- Table structure for table `booked_flight`
--

CREATE TABLE `booked_flight` (
  `f_id` int(11) NOT NULL,
  `f_source` varchar(15) NOT NULL,
  `f_destination` varchar(15) NOT NULL,
  `f_dt` date NOT NULL,
  `f_fare` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booked_flight`
--

INSERT INTO `booked_flight` (`f_id`, `f_source`, `f_destination`, `f_dt`, `f_fare`) VALUES
(4, 'orissa', 'mumbai', '0000-00-00', 500),
(5, 'KOLKATTA', 'DELHI', '2016-09-12', 500),
(7, 'delhi', 'tokyo', '0000-00-00', 500),
(8, 'mumbai', 'delhi', '2016-10-04', 500),
(9, '', '', '0000-00-00', 500),
(10, '', '', '0000-00-00', 500),
(11, 'mumbai', 'pune', '2016-10-05', 500),
(14, 'mumbai', 'thane', '2016-10-05', 500),
(15, 'paris', 'berlin', '2016-10-20', 500),
(16, 'paris', 'berlin', '2016-10-20', 500),
(17, 'mumbai', 'asam', '2016-12-31', 500);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `f_id` int(4) NOT NULL,
  `f_name` varchar(15) NOT NULL,
  `f_source` varchar(15) NOT NULL,
  `f_destination` varchar(15) NOT NULL,
  `f_at` date NOT NULL,
  `f_dt` date NOT NULL,
  `f_fare` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`f_id`, `f_name`, `f_source`, `f_destination`, `f_at`, `f_dt`, `f_fare`) VALUES
(1, 'kingfisher', 'mumbai', 'delhi', '2016-11-01', '2016-11-02', 3000),
(2, 'jet airways', 'mumbai', 'delhi', '2016-11-03', '2016-11-04', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `cardno` int(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `pin` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `u_id` int(4) NOT NULL,
  `u_name` varchar(15) NOT NULL,
  `u_mail` varchar(15) NOT NULL,
  `u_password` varchar(8) NOT NULL,
  `u_age` int(3) NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_contact` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`u_id`, `u_name`, `u_mail`, `u_password`, `u_age`, `u_gender`, `u_contact`) VALUES
(1, 'him', 'him@gmail.com', 'him@123', 20, 'female', 2147483647),
(2, 'bhim', 'bhim@gmail.com', 'bhim@123', 20, 'male', 2147483647),
(3, 'shm', 'shm@gmail.com', 'shm@123', 20, 'female', 2147483647),
(4, 'akash', 'akash@gmail.com', 'akash@12', 25, 'male', 2147483647),
(5, 'abc', 'abc@gmail.com', 'abc', 34, 'female', 2147483647),
(6, 'DEF', 'DEF@GMAIL.COM', 'DEF', 45, 'female', 6788),
(7, 'ksh', 'ks@gmail.com', 'ksh', 20, 'female', 12345),
(8, 'ksh', 'ks@gmail.com', 'ksh', 20, 'female', 123457),
(9, 'sam', 'sam@gmail.com', 'sam', 34, 'female', 6789),
(10, 'has', 'has@gmail.com', 'has', 67, 'male', 9876534),
(11, 'kshitija', 'kshitija@gmail.', 'kshiti', 20, 'female', 898787),
(12, '', '', '', 0, '', 0),
(13, 'samu', 'samu@gmail.com', 'samu', 18, 'female', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_flight`
--
ALTER TABLE `booked_flight`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_flight`
--
ALTER TABLE `booked_flight`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `f_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `u_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
