-POSTPOST- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 01:07 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbs`
--
CREATE DATABASE IF NOT EXISTS `kbs` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kbs`;

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `ID` varchar(10) NOT NULL,
  `ID_subject` varchar(10) DEFAULT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`ID`, `ID_subject`, `Name`) VALUES
('XSTK01', 'COMP1501', 'Sự kiện ngẫu nhiên và phép tính xác suất'),
('XSTK02', 'COMP1501', 'Biến ngẫu nhiên và luật phân phối xác suất'),
('XSTK03', 'COMP1501', 'Biến ngẫu nhiên nhiều chiều'),
('XSTK04', 'COMP1501', 'Mẫu thống kê và ước lượng tham số');

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `ID` int(10) NOT NULL,
  `ID_lesson` int(10) DEFAULT NULL,
  `Name` text NOT NULL,
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `ID` int(10) NOT NULL,
  `ID_chapter` varchar(10) DEFAULT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`ID`, `ID_chapter`, `Name`) VALUES
(1, 'XSTK01', 'Khái niệm mở đầu'),
(2, 'XSTK01', 'Các định nghĩa của xác suất'),
(3, 'XSTK01', 'Xác suất có điều kiện'),
(4, 'XSTK01', 'Công thức Bayes');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_detail`
--

CREATE TABLE `lesson_detail` (
  `ID` int(10) NOT NULL,
  `ID_lesson` int(10) DEFAULT NULL,
  `Name` text DEFAULT NULL COMMENT 'Name of the concept, theorem, axiom,...',
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson_detail`
--

INSERT INTO `lesson_detail` (`ID`, `ID_lesson`, `Name`, `Content`) VALUES
(1, 1, 'Sự kiện ngẫu nhiên', 'Sự kiện được hiểu như là một sự việc, một hiện tượng nào đó của cuộc sống tự nhiên và xã hội.\r\n\r\nKhi thực hiện một tập hợp điều kiện xác định, nói tắt là bộ điều kiện, gọi là một phép thử, có thể có nhiều kết cục khác nhau.');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `ID` varchar(10) NOT NULL,
  `Name` text NOT NULL COMMENT 'Name of subjects (E.x:\r\nProbability and statistics,\r\nNumber Theory,\r\n...)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`ID`, `Name`) VALUES
('COMP1012', 'Lý thuyết đồ thị'),
('COMP1319', 'Lý thuyết số và logic học'),
('COMP1501', 'Xác suất thống kê và ứng dụng'),
('COMP1502', 'Quy hoạch tuyến tính và ứng dụng'),
('MATH1002', 'Giải tích 1'),
('MATH1010', 'Toán rời rạc'),
('MATH1108', 'Đại số tuyến tính');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_chapter_subject` (`ID_subject`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_exercise_lesson` (`ID_lesson`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_lesson_chapter` (`ID_chapter`);

--
-- Indexes for table `lesson_detail`
--
ALTER TABLE `lesson_detail`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_lessonDetail_lesson` (`ID_lesson`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lesson_detail`
--
ALTER TABLE `lesson_detail`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `fk_chapter_subject` FOREIGN KEY (`ID_subject`) REFERENCES `subject` (`ID`);

--
-- Constraints for table `exercise`
--
ALTER TABLE `exercise`
  ADD CONSTRAINT `fk_exercise_lesson` FOREIGN KEY (`ID_lesson`) REFERENCES `lesson` (`ID`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `fk_lesson_chapter` FOREIGN KEY (`ID_chapter`) REFERENCES `chapter` (`ID`);

--
-- Constraints for table `lesson_detail`
--
ALTER TABLE `lesson_detail`
  ADD CONSTRAINT `fk_lessonDetail_lesson` FOREIGN KEY (`ID_lesson`) REFERENCES `lesson` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
