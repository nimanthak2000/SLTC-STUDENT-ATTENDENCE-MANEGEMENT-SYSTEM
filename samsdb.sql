-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 02:36 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `name`, `pass`) VALUES
(0, 'adminnimantha', '1234'),
(1, 'TESTADMIN', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `log` date DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  `cid` varchar(10) DEFAULT NULL,
  `stat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`log`, `sid`, `fid`, `cid`, `stat`) VALUES
('2021-12-09', 101, 1, '1', 1),
('2021-12-09', 102, 1, '1', 0),
('2021-12-09', 103, 1, '1', 1),
('2021-12-09', 104, 1, '1', 1),
('2021-12-08', 101, 1, '1', 1),
('2021-12-08', 102, 1, '1', 0),
('2021-12-08', 103, 1, '1', 0),
('2021-12-08', 104, 1, '1', 1),
('2021-12-18', 101, 1, '1', 1),
('2021-12-18', 102, 1, '1', 0),
('2021-12-18', 103, 1, '1', 0),
('2021-12-18', 104, 1, '1', 1),
('2022-01-12', 101, 1, '1', 1),
('2022-01-12', 102, 1, '1', 0),
('2022-01-12', 103, 1, '1', 1),
('2022-01-12', 104, 1, '1', 0),
('2022-01-12', 105, 1, '1', 1),
('2022-01-11', 101, 1, '1', 0),
('2022-01-11', 102, 1, '1', 1),
('2022-01-11', 103, 1, '1', 0),
('2022-01-11', 104, 1, '1', 0),
('2022-01-11', 105, 1, '1', 1),
('2022-01-12', 201, 1, '1', 1),
('2022-01-12', 202, 1, '1', 1),
('2022-01-12', 203, 1, '1', 1),
('2022-01-12', 204, 1, '1', 0),
('2022-01-12', 205, 1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `batch` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`batch`) VALUES
('B7'),
('B8');

-- --------------------------------------------------------

--
-- Table structure for table `classfac`
--

CREATE TABLE `classfac` (
  `batch` varchar(4) NOT NULL,
  `sub1` int(11) DEFAULT NULL,
  `sub2` int(11) DEFAULT NULL,
  `sub3` int(11) DEFAULT NULL,
  `sub4` int(11) DEFAULT NULL,
  `sub5` int(11) DEFAULT NULL,
  `sub6` int(11) DEFAULT NULL,
  `sub7` int(11) DEFAULT NULL,
  `sub8` int(11) DEFAULT NULL,
  `sub9` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classfac`
--

INSERT INTO `classfac` (`batch`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`, `sub9`) VALUES
('B7', 1, 3, 4, 2, 5, 0, 0, 0, 0),
('B8', 1, 4, 5, 3, 2, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `classsub`
--

CREATE TABLE `classsub` (
  `batch` varchar(4) NOT NULL,
  `sub1` varchar(10) DEFAULT NULL,
  `sub2` varchar(10) DEFAULT NULL,
  `sub3` varchar(10) DEFAULT NULL,
  `sub4` varchar(10) DEFAULT NULL,
  `sub5` varchar(10) DEFAULT NULL,
  `sub6` varchar(10) DEFAULT NULL,
  `sub7` varchar(10) DEFAULT NULL,
  `sub8` varchar(10) DEFAULT NULL,
  `sub9` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classsub`
--

INSERT INTO `classsub` (`batch`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`, `sub9`) VALUES
('B7', '1', '7', '6', '4', '9', '0', '0', '0', '0'),
('B8', '1', '3', '9', '5', '4', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`code`, `name`) VALUES
('0', 'DEFAULT'),
('1', 'COMPUTER SYSTEM '),
('2', 'DATA STRUCTURE '),
('3', 'MATHS'),
('4', 'COMMUNICATION PROTOCOL AND MODEL '),
('5', 'PROGRAMMING FUNDAMENTAL '),
('6', 'CLOUD COMPUTING'),
('7', 'PRE Calculus '),
('8', 'OOP'),
('9', 'C++');

-- --------------------------------------------------------

--
-- Table structure for table `lecture`
--

CREATE TABLE `lecture` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecture`
--

INSERT INTO `lecture` (`id`, `name`, `pass`) VALUES
(0, 'DEFAULT', 'DEFAULT'),
(1, 'MR. NIMANTHA', '1234'),
(2, 'DR. RANATHUNGA', 'DEFAULT'),
(3, 'MR. NUWAN', 'DEFAULT'),
(4, 'MISS. SHIRANI', 'DEFAULT'),
(5, 'DR. THARANGA', 'DEFAULT'),
(6, 'MR. NIRMALA', 'DEFAULT'),
(7, 'MR.KUMARA', 'DEFAULT'),
(8, 'DR. SANATH', 'DEFAULT'),
(9, 'DR. PRADEEP', 'DEFAULT');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `batch` varchar(4) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `pass`, `batch`, `year`) VALUES
(101, 'NIMANTHA', '1234', 'B7', 2024),
(102, 'PATHUM', 'DEFAULT', 'B7', 2024),
(103, 'LOCHANA', 'DEFAULT', 'B7', 2024),
(104, 'CHAMATH', 'DEFAULT', 'B7', 2024),
(105, 'CHANAKA PERERA', 'DEFAULT', 'B7', 2024),
(201, 'KUSAL', 'DEFAULT', 'B8', 2025),
(202, 'SANDEEPA', 'DEFAULT', 'B8', 2025),
(203, 'KASUN', 'DEFAULT', 'B8', 2025),
(204, 'SUMEDA', 'DEFAULT', 'B8', 2025),
(205, 'SAMIRA', 'DEFAULT', 'B8', 2025);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD UNIQUE KEY `log` (`log`,`sid`,`fid`,`cid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `fid` (`fid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch`);

--
-- Indexes for table `classfac`
--
ALTER TABLE `classfac`
  ADD PRIMARY KEY (`batch`),
  ADD KEY `sub1` (`sub1`),
  ADD KEY `sub2` (`sub2`),
  ADD KEY `sub3` (`sub3`),
  ADD KEY `sub4` (`sub4`),
  ADD KEY `sub5` (`sub5`),
  ADD KEY `sub6` (`sub6`),
  ADD KEY `sub7` (`sub7`),
  ADD KEY `sub8` (`sub8`),
  ADD KEY `sub9` (`sub9`);

--
-- Indexes for table `classsub`
--
ALTER TABLE `classsub`
  ADD PRIMARY KEY (`batch`),
  ADD KEY `sub1` (`sub1`),
  ADD KEY `sub2` (`sub2`),
  ADD KEY `sub3` (`sub3`),
  ADD KEY `sub4` (`sub4`),
  ADD KEY `sub5` (`sub5`),
  ADD KEY `sub6` (`sub6`),
  ADD KEY `sub7` (`sub7`),
  ADD KEY `sub8` (`sub8`),
  ADD KEY `sub9` (`sub9`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `lecture`
--
ALTER TABLE `lecture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batch` (`batch`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`cid`) REFERENCES `course` (`code`);

--
-- Constraints for table `classfac`
--
ALTER TABLE `classfac`
  ADD CONSTRAINT `classfac_ibfk_1` FOREIGN KEY (`sub1`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `classfac_ibfk_10` FOREIGN KEY (`batch`) REFERENCES `batch` (`batch`),
  ADD CONSTRAINT `classfac_ibfk_2` FOREIGN KEY (`sub2`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `classfac_ibfk_3` FOREIGN KEY (`sub3`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `classfac_ibfk_4` FOREIGN KEY (`sub4`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `classfac_ibfk_5` FOREIGN KEY (`sub5`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `classfac_ibfk_6` FOREIGN KEY (`sub6`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `classfac_ibfk_7` FOREIGN KEY (`sub7`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `classfac_ibfk_8` FOREIGN KEY (`sub8`) REFERENCES `lecture` (`id`),
  ADD CONSTRAINT `classfac_ibfk_9` FOREIGN KEY (`sub9`) REFERENCES `lecture` (`id`);

--
-- Constraints for table `classsub`
--
ALTER TABLE `classsub`
  ADD CONSTRAINT `classsub_ibfk_1` FOREIGN KEY (`sub1`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `classsub_ibfk_10` FOREIGN KEY (`batch`) REFERENCES `batch` (`batch`),
  ADD CONSTRAINT `classsub_ibfk_2` FOREIGN KEY (`sub2`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `classsub_ibfk_3` FOREIGN KEY (`sub3`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `classsub_ibfk_4` FOREIGN KEY (`sub4`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `classsub_ibfk_5` FOREIGN KEY (`sub5`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `classsub_ibfk_6` FOREIGN KEY (`sub6`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `classsub_ibfk_7` FOREIGN KEY (`sub7`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `classsub_ibfk_8` FOREIGN KEY (`sub8`) REFERENCES `course` (`code`),
  ADD CONSTRAINT `classsub_ibfk_9` FOREIGN KEY (`sub9`) REFERENCES `course` (`code`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`batch`) REFERENCES `batch` (`batch`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
