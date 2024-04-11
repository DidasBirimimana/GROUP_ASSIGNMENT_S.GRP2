-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 04:22 PM
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
-- Database: `bityeartwo2024`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `artid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `dateofcreation` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`artid`, `userid`, `title`, `contents`, `dateofcreation`) VALUES
(1, 3, 'gghj', 'tfdsdfg', '2024-04-09 22:00:00'),
(2, 4, 'Introduction to SQL', 'Structured Query Language (SQL) is a standard programming language for managing relational databases. It is used to perform various tasks such as data manipulation, querying, and database management.', '2024-04-06 22:00:00'),
(4, 6, 'Python Basics for Data Science', 'Python is a versatile programming language commonly used in data science and machine learning. This article covers basic concepts such as data types, control structures, and functions.', '2024-03-04 22:00:00'),
(5, 5, 'Introduction to Machine Learning', 'Machine learning is a subset of artificial intelligence that focuses on the development of algorithms that allow computers to learn from and make predictions or decisions based on data. This article provides an overview of key concepts and techniques in machine learning.', '2024-04-13 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cid` int(11) NOT NULL,
  `contentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cid`, `contentid`, `userid`) VALUES
(1, 2, 6),
(2, 1, 4),
(3, 4, 2),
(4, 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `fid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `friendid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`fid`, `userid`, `friendid`) VALUES
(1, 5, 2),
(3, 3, 2),
(4, 4, 6),
(5, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `lid` int(11) NOT NULL,
  `contentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`lid`, `contentid`, `userid`) VALUES
(1, 4, 5),
(2, 2, 6),
(3, 1, 3),
(5, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE `multimedia` (
  `mid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `type` enum('image','video','audio') DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `multimedia`
--

INSERT INTO `multimedia` (`mid`, `userid`, `type`, `location`, `upload_date`) VALUES
(1, 6, 'image', 'https://wallper.com/image1.jpg', '2024-04-20 22:00:00'),
(2, 4, 'video', 'https://allvideos.com/video1.mp4', '2024-01-01 22:00:00'),
(3, 2, 'audio', 'https://mixallvideo.com/audio1.mp3', '2024-02-03 22:00:00'),
(4, 5, 'image', 'https://allpicturesandimages.com/image2.png', '2024-04-29 22:00:00'),
(5, 5, 'image', 'https://allpicturesandimages.com/image2.png', '2024-04-29 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `pid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `Campus` varchar(100) DEFAULT NULL,
  `College` varchar(100) DEFAULT NULL,
  `School` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Level` varchar(50) DEFAULT NULL,
  `GroupName` varchar(50) DEFAULT NULL,
  `Regnumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`pid`, `userid`, `Campus`, `College`, `School`, `Department`, `Level`, `GroupName`, `Regnumber`) VALUES
(1, 6, 'Huye Camps', 'College of CBE', 'School of Business', 'BIT', 'lev2', 'B', '2222222'),
(3, 2, 'Nyagatare Camps', 'College of Education', 'School of Education', 'Curriculum and Instruction', 'Lev3', 'Grp A', '222012213'),
(4, 4, 'Kayonza Camps', 'College of Engineering', 'School of Electrical Engineering', 'Electrical Engineering', 'lev1', 'Grp C', '222017864'),
(6, 5, 'Gikondo Camps', 'College of Arts and Sciences', 'School of Psychology', 'Psychology', 'lev4', 'Grp A', '222019883'),
(7, 3, 'Huye Camps', 'College of Medicine', 'School of Medicine', ' Medicine', 'lev2', 'grp B', '222018655');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `rid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `rolename` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`rid`, `userid`, `rolename`) VALUES
(1, 5, 'Admin'),
(2, 4, 'Moderator'),
(3, 4, 'Moderator'),
(4, 2, 'User'),
(5, 6, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `unlike`
--

CREATE TABLE `unlike` (
  `lid` int(11) NOT NULL,
  `contentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `unlike`
--

INSERT INTO `unlike` (`lid`, `contentid`, `userid`) VALUES
(1, 5, 3),
(2, 2, 6),
(3, 4, 3),
(4, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `activation_code` varchar(50) DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `email`, `telephone`, `password`, `creationdate`, `activation_code`, `is_activated`) VALUES
(2, NULL, NULL, 'muhozai', 'umuhozl@gmail.com', NULL, '$2y$10$.sHCqkblwkRyJ3l0MCvIguhsSi3h2.k1jDWbgDajhUpzqcE9.lxD.', '2024-04-01 13:31:30', NULL, 0),
(3, '', '', '@IRADUKUNDANEPO69', 'iradukundajeannepomuscene5@gmail.com', '07854443213', '$2y$10$Nwkdq04stucdK8NyY3T6N.SR/gZSL.I5U5pg8EEN3fsZQoE.NZqty', '2024-04-01 14:06:29', 'as33', 0),
(4, 'iraguha', 'jayp', 'jayiraguha', 'iragh@gmail.com', '0729198022', '$2y$10$2Rzs6Dig6kyD6AnN3leGyuOCeORnANZ8gM1LdqF6/vRrLRIxzXrp2', '2024-04-01 14:08:42', 'as33', 0),
(5, 'Maurice', 'NIZEYIMANA', 'NizeyiMaurice', 'mauricenizeyimana@gmail.com', '0798223312', '$2y$10$ac5.8YOnFSR3XVltYHlHh.sKy7RRWwiYv5w1Xr1O.7Sw3J8P47o3K', '2024-04-01 14:14:06', 'DCD32', 0),
(6, 'Serge', 'Nshuti', 'Nshuti', 'nshutipapy@gmail.com', '0783222111', '$2y$10$xF9bFM5CRuk.kV1kk/6z0ekXi7546/w5lGCxgQLLRtqDErmMiDTiC', '2024-04-02 14:45:58', '998877', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`artid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`fid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `friendid` (`friendid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `unlike`
--
ALTER TABLE `unlike`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `artid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unlike`
--
ALTER TABLE `unlike`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`contentid`) REFERENCES `article` (`artid`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`friendid`) REFERENCES `user` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`contentid`) REFERENCES `article` (`artid`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD CONSTRAINT `multimedia_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `unlike`
--
ALTER TABLE `unlike`
  ADD CONSTRAINT `unlike_ibfk_1` FOREIGN KEY (`contentid`) REFERENCES `article` (`artid`),
  ADD CONSTRAINT `unlike_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
