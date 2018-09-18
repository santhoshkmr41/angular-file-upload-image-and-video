-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2018 at 08:02 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`id`, `name`, `type`, `url`) VALUES
(2, '61_images.png', 'image/png', 'http://localhost/santhosh/uploads/61_images.png'),
(3, '2407_facebook_mp4.mp4', 'video/mp4', 'http://localhost/santhosh/uploads/2407_facebook_mp4.mp4'),
(4, '1112_facebook_mp4.mp4', 'video/mp4', 'http://localhost/santhosh/uploads/1112_facebook_mp4.mp4'),
(5, '623_img_376288.png', 'image/png', 'http://localhost/santhosh/uploads/623_img_376288.png'),
(6, '827_images.png', 'image/png', 'http://localhost/santhosh/uploads/827_images.png'),
(7, '1559_common-ionic-errors.png', 'image/png', 'http://localhost/santhosh/uploads/1559_common-ionic-errors.png'),
(8, '1808_ionic-refresher-header.png', 'image/png', 'http://localhost/santhosh/uploads/1808_ionic-refresher-header.png'),
(9, '1184_Screenshot_7.png', 'image/png', 'http://localhost/santhosh/uploads/1184_Screenshot_7.png'),
(10, '1817_common-ionic-errors.png', 'image/png', 'http://localhost/santhosh/uploads/1817_common-ionic-errors.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
