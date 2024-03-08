-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2024 at 09:20 AM
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
(7, 'Phil Knight', '2024-02-22 01:42:14', NULL),
(8, 'Howard Zinn', '2024-03-07 07:03:38', NULL),
(9, 'Yuval Noah Harari', '2024-03-07 07:05:59', NULL),
(10, 'Valerie Hansen', '2024-03-07 07:09:42', NULL),
(11, 'Jared Diamond', '2024-03-07 07:11:25', NULL),
(12, 'Maya Angelou', '2024-03-07 07:12:12', NULL),
(13, ' Tara Westover', '2024-03-07 07:13:27', NULL),
(14, 'Trevor Noah', '2024-03-07 07:15:43', NULL),
(15, 'Viktor Frankl', '2024-03-07 07:17:29', NULL),
(16, 'Stieg Larsson', '2024-03-07 07:20:28', NULL),
(17, ' Gillian Flynn', '2024-03-07 07:21:15', NULL),
(18, 'Thomas Harris', '2024-03-07 07:24:11', NULL),
(19, 'J. R. R. Tolkien', '2024-03-07 07:24:41', NULL),
(20, 'George R. R. Martin', '2024-03-07 07:25:12', NULL),
(21, 'Patrick Rothfuss', '2024-03-07 07:26:53', NULL),
(22, 'Brandon Sanderson', '2024-03-07 07:27:32', NULL);

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
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`, `status`) VALUES
(1, 'PHP And MySql Programming', 12, 3, 794976, NULL, '2023-07-08 20:04:55', '2024-03-07 06:48:17', 0),
(3, 'Eat, Pray, Love', 11, 4, 102027, NULL, '2023-07-08 20:17:31', '2024-03-07 06:52:10', 0),
(4, 'Java Programming', 12, 1, 995758, NULL, '2024-02-21 09:06:00', '2024-03-07 06:50:10', 0),
(5, 'Harry Potter and the Sorcerer\'s Stone', 8, 2, 709612, NULL, '2024-02-21 09:08:09', '2024-03-07 06:53:29', 0),
(6, 'Bad Blood: Secrets and Lies in a Silicon Valley Startup', 7, 3, 941818, NULL, '2024-02-22 01:46:18', '2024-03-07 06:54:08', 0),
(7, 'Shoe Dog', 7, 7, 492024, NULL, '2024-02-22 01:47:00', '2024-03-07 06:54:58', 0),
(8, 'A People\'s History of the United States', 5, 8, 123456, NULL, '2024-03-07 07:05:35', '2024-03-07 07:50:10', 0),
(9, 'Sapiens: A Brief History of Humankind', 5, 9, 234567, NULL, '2024-03-07 07:06:46', '2024-03-07 07:51:27', 0),
(10, 'The Silk Road: A New History', 5, 10, 345678, NULL, '2024-03-07 07:10:25', '2024-03-07 08:08:57', 0),
(11, 'Guns, Germs, and Steel: The Fates of Human Societies', 5, 11, 456789, NULL, '2024-03-07 07:11:51', '2024-03-07 08:10:08', 0),
(12, 'I Know Why the Caged Bird Sings', 6, 12, 567890, NULL, '2024-03-07 07:12:44', '2024-03-07 08:11:11', 0),
(14, 'Educated', 6, 13, 678901, NULL, '2024-03-07 07:15:07', '2024-03-07 07:58:10', 0),
(15, 'Born a Crime', 6, 14, 789012, NULL, '2024-03-07 07:16:11', '2024-03-07 07:58:39', 0),
(16, ' Man\'s Search for Meaning', 6, 15, 890123, NULL, '2024-03-07 07:17:54', '2024-03-07 07:59:30', 0),
(17, 'The Girl with the Dragon Tattoo', 9, 16, 901234, NULL, '2024-03-07 07:21:01', '2024-03-07 08:00:23', 0),
(19, 'Gone Girl', 9, 17, 12345, NULL, '2024-03-07 07:23:13', '2024-03-07 08:01:31', 0),
(20, 'The Silence of the Lambs', 9, 18, 123456, NULL, '2024-03-07 07:24:27', '2024-03-07 08:03:11', 0),
(22, 'A Game of Thrones', 10, 20, 345678, NULL, '2024-03-07 07:25:41', '2024-03-07 08:03:55', 0),
(23, 'The Lord of the Rings', 10, 19, 234567, NULL, '2024-03-07 07:26:25', '2024-03-07 08:04:24', 0),
(24, 'The Name of the Wind', 10, 21, 456789, NULL, '2024-03-07 07:27:14', '2024-03-07 08:05:17', 0),
(25, 'Mistborn: The Final Empire', 10, 22, 567890, NULL, '2024-03-07 07:28:01', '2024-03-07 08:06:08', 0);

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
  `DueDate` datetime DEFAULT NULL,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT 0,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `DueDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2024-03-07 06:48:16', '2024-03-09 14:48:16', NULL, 0, NULL),
(2, 4, 'SID013', '2024-03-07 06:50:10', '2024-03-09 14:50:10', NULL, 0, NULL),
(3, 3, 'SID009', '2024-03-07 06:52:10', '2024-03-09 14:52:10', NULL, 0, NULL),
(4, 5, 'SID009', '2024-03-07 06:53:29', '2024-03-09 14:53:29', NULL, 0, NULL),
(5, 6, 'SID014', '2024-03-07 06:54:08', '2024-03-09 14:54:08', NULL, 0, NULL),
(6, 7, 'SID011', '2024-03-07 06:54:58', '2024-03-09 14:54:58', NULL, 0, NULL),
(7, 8, 'SID016', '2024-03-07 07:50:10', '2024-03-09 15:50:10', NULL, 0, NULL),
(8, 9, 'SID010', '2024-03-07 07:51:27', '2024-03-09 15:51:27', NULL, 0, NULL),
(9, 10, 'SID011', '2024-03-07 07:53:38', '2024-03-09 15:53:38', NULL, 0, NULL),
(10, 11, 'SID014', '2024-03-07 07:54:30', '2024-03-09 15:54:30', NULL, 0, NULL),
(11, 12, 'SID017', '2024-03-07 07:57:27', '2024-03-09 15:57:27', NULL, 0, NULL),
(12, 14, 'SID017', '2024-03-07 07:58:10', '2024-03-09 15:58:10', NULL, 0, NULL),
(13, 15, 'SID017', '2024-03-07 07:58:39', '2024-03-09 15:58:39', NULL, 0, NULL),
(14, 16, 'SID016', '2024-03-07 07:59:30', '2024-03-09 15:59:30', NULL, 0, NULL),
(15, 17, 'SID016', '2024-03-07 08:00:23', '2024-03-09 16:00:23', NULL, 0, NULL),
(16, 19, 'SID014', '2024-03-07 08:01:31', '2024-03-09 16:01:31', NULL, 0, NULL),
(17, 0, 'SID013', '2024-03-07 08:03:11', '2024-03-09 16:03:11', NULL, 0, NULL),
(18, 0, 'SID011', '2024-03-07 08:03:55', '2024-03-09 16:03:55', NULL, 0, NULL),
(19, 0, 'SID010', '2024-03-07 08:04:24', '2024-03-09 16:04:24', NULL, 0, NULL),
(20, 24, 'SID010', '2024-03-07 08:05:17', '2024-03-09 16:05:17', NULL, 0, NULL),
(21, 0, 'SID009', '2024-03-07 08:06:08', '2024-03-09 16:06:08', NULL, 0, NULL),
(22, 10, 'SID005', '2024-03-07 08:08:57', '2024-03-09 16:08:57', NULL, 0, NULL),
(23, 11, 'SID005', '2024-03-07 08:10:08', '2024-03-09 16:10:08', NULL, 0, NULL),
(24, 12, 'SID002', '2024-03-07 08:11:11', '2024-03-09 16:11:11', NULL, 0, NULL);

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
(1, 'SID002', 'Gene Ryan Depalubos', 'depalubos@gmail.com', '09986359674', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-11 15:37:05', '2024-03-02 10:28:57'),
(4, 'SID005', 'Vincent Ace Rivera', 'rivera@gmail.com', '09932072911', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-11 15:41:27', '2024-03-02 08:48:19'),
(8, 'SID009', 'Asnari Pacalna', 'pacalna@gmail.com', '09151494842', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-11 15:58:28', '2024-03-02 04:03:35'),
(9, 'SID010', 'Fernyl Jean Maningo', 'maningo@gmail.com', '09582377313', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-15 13:40:30', '2024-02-21 07:39:38'),
(10, 'SID011', 'Rogene Carl Rosalijos', 'rosalijos@gmail.com', '09419167578', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-15 18:00:59', '2024-02-21 07:39:47'),
(11, 'SID013', 'Allan Corpuz', 'corpuz@gmail.com', '09755683328', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-21 07:43:17', '2024-02-21 07:45:31'),
(12, 'SID014', 'Renz Ivan Polancos', 'polancos@gmail.com', '09511228486', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-02-21 07:44:23', '2024-02-21 07:45:39'),
(14, 'SID016', 'Clarisse Angeline O. Brigoli', 'brigoliclarisseangeline@gmail.com', '0905389852', '64f9c31efa8b51831fd8eb613f5e587a', 1, '2024-03-07 07:42:43', NULL),
(15, 'SID017', 'Stephen Joe Atil Gravino', 'Stephencurry@gmail.com', '9983404245', 'f925916e2754e5e03f75dd58a5733251', 1, '2024-03-07 07:56:32', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
