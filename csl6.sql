-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2015 at 07:50 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csl6`
--
CREATE DATABASE IF NOT EXISTS `csl6` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `csl6`;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_num` varchar(15) DEFAULT NULL,
  `message` varchar(300) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`req_id`, `user_num`, `message`, `timestamp`) VALUES
(1, 'wetwest', 'Booking Status 1982233 Ashish Gupta', '0000-00-00 00:00:00'),
(2, 'wetwest', 'Booking Status 1982233 Ashish Gupta', '0000-00-00 00:00:00'),
(3, 'wetwest', 'Booking Status 1982233 Ashish Gupta', '0000-00-00 00:00:00'),
(4, 'wetwest', 'Booking Status 1982233 Ashish Gupta', '0000-00-00 00:00:00'),
(5, '1lbg7uht7', 'bvhkvjb', '0000-00-00 00:00:00'),
(6, '1lbg7uht7', 'bvhkvjb', '0000-00-00 00:00:00'),
(7, '1lbg7uht7', 'Booking Status 1982233 Ashish Gupta', '0000-00-00 00:00:00'),
(8, '1lbg7uht7', 'Booking Status 1982233 Ashish Gupta', '0000-00-00 00:00:00'),
(9, '235t23t2', 'seghseg', '0000-00-00 00:00:00'),
(10, '235t23t2', 'Booking Status 1982233 Ashish Gupta', '0000-00-00 00:00:00'),
(11, '235t23t2', 'Booking Status 1982233 Ashish Gupta', '2015-03-27 02:09:01'),
(12, '123', '', '2015-03-27 02:30:20'),
(13, '123', '324324', '2015-03-27 02:30:25'),
(14, 'rhee', 'afafa', '2015-03-27 02:47:00'),
(15, '235t23t2', 'Booking Status 1982233 Ashish Gupta', '2015-03-27 02:58:15'),
(16, '1lbg7uht7', 'bgylub kyugblhklhn nkh hl ngv;', '2015-03-27 14:50:30'),
(17, '3523', 'segse', '2015-03-27 14:52:52'),
(18, '89', 'MJ', '2015-03-27 14:53:37'),
(19, '6746467', 'xffgcgfcgh', '2015-03-27 15:16:33'),
(20, '6746467', 'xffgcgfcgh', '2015-03-27 18:24:54'),
(21, '15555215556', 'Hi', '2015-03-27 18:49:23'),
(22, '15555215556', 'Hello', '2015-03-27 18:50:39'),
(23, '15555215556', 'Hujgjkg', '2015-03-27 18:52:59'),
(24, '15555215556', 'Gfdhfhg', '2015-03-27 18:54:00'),
(25, '15555215556', 'Booking Status 1982233 Ashish Gupta', '2015-03-27 18:56:36'),
(26, '15555215556', 'Booking Status 1 Mohit', '2015-03-27 19:13:57'),
(27, '15555215556', 'Booking Status 2 Mohiy', '2015-03-27 19:14:32'),
(28, '15555215556', 'Booking Status 2 Mohit', '2015-03-27 19:14:42'),
(29, '15555215556', 'Booking Status 3 Mohit', '2015-03-27 19:15:07'),
(30, '15555215556', 'Booking Status 102 Mohit', '2015-03-27 19:15:53'),
(31, '15555215556', 'Booking status 102 mohit', '2015-03-27 19:17:10'),
(32, '15555215556', 'Booking STATUS 1 Mohit', '2015-03-27 19:25:50'),
(33, '15555215556', 'Booking status 1 aditya', '2015-03-27 19:26:07'),
(34, '15555215556', 'Booking status 2 mohit garg', '2015-03-27 19:27:04'),
(35, '15555215556', 'Booking status 2 mohit garg', '2015-03-27 19:28:44'),
(36, '15555215556', 'booking status 2 mohit garg', '2015-03-27 19:43:09'),
(37, '15555215556', 'Booking status 1 aditya', '2015-03-27 19:43:22'),
(38, '15555215556', 'Booking status 1 mohit', '2015-03-27 19:43:30'),
(39, '15555215554', 'Gyjghjh', '2015-03-27 19:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_num` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `booking_num`, `name`, `status`) VALUES
(2, 1982233, 'Ashish Gupta', 'CONFIRMED'),
(3, 1, 'Aditya', 'WAIT LISTED'),
(4, 2, 'Akshay', 'DECLINED'),
(5, 3, 'Mohit', 'CONFIRMED'),
(6, 12, 'Mohit', 'Confirmed'),
(7, 2, 'Mohit', 'Confirmed'),
(8, 13, 'Mohit', 'Confirmed'),
(9, 14, 'Mohit', 'Confirmed'),
(10, 15, 'Mohit', 'Confirmed'),
(11, 102, 'Mohit', 'Declined'),
(14, 4, 'Mohit', 'Waiting'),
(15, 5, 'Mohit', 'Not Confirmed'),
(16, 2, 'Mohit Garg', 'Confirmed');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
