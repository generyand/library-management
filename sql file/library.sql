-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 09:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', 'e6e061838856bf47e1de730719fb2609', '2024-02-21 07:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Yuval Noah Harari', '2024-02-22 01:37:17', NULL),
(2, 'Bill Bryson', '2024-02-22 01:37:27', NULL),
(3, 'John Carreyrou', '2024-02-22 01:37:36', NULL),
(4, 'Elizabeth Gilbert', '2024-02-22 01:38:43', NULL),
(5, 'Viktor E. Frankl', '2024-02-22 01:38:46', NULL),
(6, 'Walter Isaacson', '2024-02-22 01:42:01', NULL),
(7, 'Phil Knight', '2024-02-22 01:42:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 12, 3, 794976, NULL, '2023-07-08 20:04:55', '2024-02-22 01:50:00'),
(3, 'Eat, Pray, Love', 6, 4, 102027, NULL, '2023-07-08 20:17:31', '2024-02-22 01:50:43'),
(4, 'Java Programming', 5, 1, 995758, 0, '2024-02-21 09:06:00', '2024-02-21 09:06:29'),
(5, 'Harry Potter and the Sorcerer\'s Stone', 8, 2, 709612, 0, '2024-02-21 09:08:09', '2024-02-21 09:08:19'),
(6, 'Bad Blood: Secrets and Lies in a Silicon Valley Startup', 7, 3, 941818, NULL, '2024-02-22 01:46:18', NULL),
(7, 'Shoe Dog', 7, 7, 492024, NULL, '2024-02-22 01:47:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(5, 'History', 1, '2024-02-22 01:25:30', '2024-02-22 01:32:18'),
(6, 'Memoir', 1, '2024-02-22 01:25:53', '2024-02-22 01:32:21'),
(7, 'Biography', 1, '2024-02-22 01:26:06', '2024-02-22 01:32:24'),
(9, 'Thriller', 1, '2024-02-22 01:26:45', '2024-02-22 01:32:29'),
(10, 'Fantasy', 1, '2024-02-22 01:26:58', '2024-02-22 01:32:32'),
(11, 'Romance', 1, '2024-02-22 01:31:35', '2024-02-22 01:32:35'),
(12, 'Technology', 1, '2024-02-22 01:31:55', '2024-02-22 01:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(2, 1, 'SID002', '2024-01-15 06:12:27', '2024-01-15 11:15:23', 1, 5),
(4, 3, 'SID002', '2024-01-15 06:23:23', '2024-01-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2024-01-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2024-01-15 18:02:55', NULL, 0, NULL),
(7, 3, 'SID014', '2024-02-21 08:02:11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Gene Ryan Depalubos', 'depalubos@gmail.com', '09986359674', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:37:05', '2024-02-21 07:39:22'),
(4, 'SID005', 'Vincent Ace Rivera', 'rivera@gmail.com', '09932072911', '92228410fc8b872914e023160cf4ae8f', 0, '2017-07-11 15:41:27', '2024-02-27 07:55:53'),
(8, 'SID009', 'Asnari Pacalna', 'pacalna@gmail.com', '09151494842', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-11 15:58:28', '2024-02-21 07:39:33'),
(9, 'SID010', 'Fernyl Jean Maningo', 'maningo@gmail.com', '09582377313', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 13:40:30', '2024-02-21 07:39:38'),
(10, 'SID011', 'Rogene Carl Rosalijos', 'rosalijos@gmail.com', '09419167578', 'f925916e2754e5e03f75dd58a5733251', 1, '2017-07-15 18:00:59', '2024-02-21 07:39:47'),
(11, 'SID013', 'Allan Corpuz', 'corpuz@gmail.com', '09755683328', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-21 07:43:17', '2024-02-21 07:45:31'),
(12, 'SID014', 'Renz Ivan Polancos', 'polancos@gmail.com', '09511228486', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-21 07:44:23', '2024-02-21 07:45:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
