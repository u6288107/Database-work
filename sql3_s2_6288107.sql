-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 14, 2019 at 11:08 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tinycollege`
--
CREATE DATABASE IF NOT EXISTS `tinycollege` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `tinycollege`;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `CLASS_CODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `COURSE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CLASS_SECTION` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CLASS_TIME` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLASS_ROOM` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMP_NUM` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CLASS_CODE`, `COURSE_CODE`, `CLASS_SECTION`, `CLASS_TIME`, `CLASS_ROOM`, `EMP_NUM`) VALUES
('10012', 'ACCT-211', '1', 'MWF 8:00-8:50 a.m.', 'KLR 225', 105),
('10013', 'ACCT-211', '2', 'MWF 9:00-9:50 a.m.', 'KLR 225', 105),
('10014', 'ACCT-211', '3', 'TTh 2:30-3:45 p.m.', 'KLR 225', 342),
('10015', 'ACCT-212', '1', 'MWF 10:00-10:50 a.m.', 'KLR 240', 301),
('10016', 'ACCT-212', '2', 'Th 6:00-8:40 p.m.', 'KLR 240', 301),
('10017', 'ACCT-311', '1', 'TTh 3:30-4:45 p.m.', 'KLR 240', 114),
('12001', 'ART-210', '1', 'MWF 8:00-8:50 a.m.', 'BBG 120', 435),
('12002', 'ART-340', '1', 'MWF 10:00-10:50 a.m.', 'BBG 143', 435),
('15020', 'BIOL-120', '1', 'TTh 12:30-1:45 p.m.', 'AAK 166', 110),
('15021', 'BIOL-120', '2', 'Tue 6:00-8:40 p.m.', 'AAK 156', 110),
('15022', 'BIOL-120', '3', 'MWF 1:00-1:50 p.m.', 'AAK 156', 387),
('15030', 'BIOL-220', '1', 'MWF 2:00-2:50 p.m.', 'AAK 172', 387),
('20017', 'CIS-220', '1', 'MWF 9:00-9:50 a.m.', 'KLR 209', 228),
('20018', 'CIS-220', '2', 'MWF 9:00-9:50 a.m.', 'KLR 211', 162),
('20019', 'CIS-220', '3', 'MWF 10:00-10:50 a.m.', 'KLR 209', 228),
('20025', 'CIS-320', '1', 'MWF 10:00-10:50 a.m.', 'KLR 211', 228),
('20030', 'CIS-370', '1', 'MWF 11:00-11:50 a.m.', 'KLR 209', 209),
('20031', 'CIS-370', '2', 'Tue 6:00-8:40 p.m.', 'KLR 211', 209),
('20040', 'CIS-420', '1', 'Wed 6:00-8:40 p.m.', 'KLR 209', 162),
('22010', 'ECON-240', '1', 'MWF 8:00-8:50 a.m.', 'KLR 290', 299),
('22011', 'ECON-240', '2', 'TTh 3:30-4:45 p.m.', 'KLR 290', 425),
('22020', 'ECON-250', '1', 'Wed 6:00-8:40 p.m.', 'KLR 290', 299),
('23110', 'MGT-340', '1', 'TTh 8:00-9:15 a.m.', 'KLR 152', 191),
('23111', 'MGT-340', '2', 'Mon 6:00-8:40 p.m.', 'KLR 152', 191),
('23120', 'MKT-360', '1', 'MWF 10:00-10:50 a.m.', 'KLR 152', 191),
('23121', 'MKT-360', '2', 'Th 6:00-8:40 p.m.', 'KLR 152', 106),
('25000', 'ENG-210', '1', 'MWF 1:00-1:50 p.m.', 'DRE 257', 104),
('25001', 'ENG-210', '2', 'MWF 2:00-2:50 p.m.', 'DRE 257', 104),
('25002', 'ENG-210', '3', 'TTH 12:30-1:45 p.m.', 'DRE 257', 160),
('25010', 'SPCH-240', '1', 'MWF 8:00-8:50 a.m.', 'DRE 242', 104),
('25011', 'SPCH-240', '2', 'TTh 3:30-4:45 p.m.', 'DRE 242', 104),
('30010', 'PSYCH-200', '1', 'MWF 11:00-11:50 a.m.', 'AAK 244', 195),
('30110', 'SOC-200', '1', 'TTH 8:00-9:15 a.m.', 'BBG 258', 342),
('32000', 'HIST-210', '1', 'MWF 10:00-10:50 a.m.', 'DRE 144', 103),
('32001', 'HIST-210', '2', 'MWF 1:00-1:50 p.m.', 'DRE 144', 401),
('32002', 'HIST-210', '3', 'TTH 2:00-3:15 p.m.', 'DRE 144', 401),
('32011', 'HIST-220', '1', 'MWF 11:00-11:50 a.m.', 'DRE 144', 103),
('40010', 'MATH-120', '1', 'TTh 8:00-9:15 a.m.', 'AAK 200', 155),
('40011', 'MATH-120', '2', 'MWF 11:00-11:50 a.m.', 'AAK 200', 155),
('40101', 'MATH-243', '1', 'MWF 3:00-3:50 p.m.', 'AAK 202', 297),
('50021', 'QM-261', '1', 'MWF 8:00-8:50 a.m.', 'KLR 200', 228),
('50022', 'QM-261', '2', 'TTh 1:00-2:15 p.m.', 'KLR 200', 228),
('50023', 'QM-362', '1', 'MWF 11:00-11:50 a.m.', 'KLR 200', 162),
('50024', 'QM-362', '2', 'TTh 2:30-3:45 p.m.', 'KLR 200', 162),
('90015', 'ACCT-211', '1', 'MWF 8:00-8:50 a.m.', 'KLR 225', 105);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `COURSE_NAME` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CRS_CREDIT` tinyint(4) NOT NULL,
  `DEPT_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_CODE`, `COURSE_NAME`, `CRS_CREDIT`, `DEPT_CODE`) VALUES
('ACCT-211', 'Accounting I', 3, 'ACCT'),
('ACCT-212', 'Accounting II', 3, 'ACCT'),
('ACCT-311', 'Managerial Accounting', 3, 'ACCT'),
('ART-210', 'Intro. to Art', 3, 'ART'),
('ART-340', 'Jewelry Design', 3, 'ART'),
('BIOL-120', 'Intro. to Biology', 4, 'BIOL'),
('BIOL-220', 'Biology and the Environment', 4, 'BIOL'),
('CIS-220', 'Intro. to Microcomputing', 3, 'CIS'),
('CIS-320', 'Spreadsheet Applications', 3, 'CIS'),
('CIS-370', 'Intro. to Systems Analysis', 3, 'CIS'),
('CIS-420', 'Database Design and Implementation', 4, 'CIS'),
('ECON-240', 'Microeconomics', 3, 'ECON/FIN'),
('ECON-250', 'Macroeconomics', 3, 'ECON/FIN'),
('ENG-210', 'Writing', 3, 'ENG'),
('ENG-220', 'Literature', 3, 'ENG'),
('FIN-300', 'Money and Banking', 3, 'ECON/FIN'),
('HIST-210', 'U.S. History Through the 1800s', 3, 'HIST'),
('HIST-220', 'U.S. History Through the 1900s', 3, 'HIST'),
('MATH-120', 'College Algebra I', 3, 'MATH'),
('MATH-240', 'Intro. to Calculus', 4, 'MATH'),
('MATH-243', 'Mathematics for Managers', 3, 'MATH'),
('MGT-340', 'Intro. to Management', 3, 'MKT/MGT'),
('MKT-360', 'Intro. to Marketing', 3, 'MKT/MGT'),
('PSYCH-200', 'Intro. to Psychology', 3, 'PSYCH'),
('QM-261', 'Intro. to Statistics', 3, 'CIS'),
('QM-362', 'Statistical Applications', 4, 'CIS'),
('SOC-200', 'Intro. to Sociology', 3, 'SOC'),
('SPCH-240', 'Public Speeking', 3, 'ENG');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DEPT_NAME` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EMP_NUM` smallint(6) DEFAULT NULL,
  `DEPT_ADDRESS` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEPT_EXTENSION` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_CODE`, `DEPT_NAME`, `EMP_NUM`, `DEPT_ADDRESS`, `DEPT_EXTENSION`) VALUES
('ACCT', 'Accounting', 114, 'KLR 211, Box 52', '3119'),
('ART', 'Fine Arts', 435, 'BBG 185, Box 128', '2278'),
('BIOL', 'Biology', 387, 'AAK 230, Box 415', '4117'),
('CIS', 'Computer Info. Systems', 209, 'KLR 333, Box 56', '3245'),
('ECON/FIN', 'Economics/Finance', 299, 'KLR 284, Box 63', '3126'),
('ENG', 'English', 160, 'DRE 102, Box 223', '1004'),
('HIST', 'History', 103, 'DRE 156, Box 284', '1867'),
('MATH', 'Mathematics', 297, 'AAK 194, Box 422', '4234'),
('MKT/MGT', 'Marketing/Management', 106, 'KLR 126, Box 55', '3342'),
('PSYCH', 'Psychology', 195, 'AAK 297, Box 438', '4110'),
('SOC', 'Sociology', 342, 'BBG 208, Box 132', '2008');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `CLASS_CODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `STU_NUM` int(11) NOT NULL,
  `GRADE` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREDIT` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`CLASS_CODE`, `STU_NUM`, `GRADE`, `CREDIT`) VALUES
('10012', 311198, 'A', 3),
('10012', 311357, 'A', 3),
('10012', 322345, 'A', 3),
('10012', 324274, 'A', 3),
('10012', 343749, 'B', 3),
('10013', 324258, 'B', 3),
('10013', 325563, 'A', 3),
('10014', 319989, 'A', 3),
('10014', 321452, 'B', 3),
('10014', 324257, 'C', 3),
('10016', 320367, 'A', 3),
('10016', 327689, 'A', 3),
('10016', 342721, 'A', 3),
('10016', 345758, 'A', 3),
('10017', 324269, 'B', 3),
('10017', 328934, 'B', 3),
('10017', 328993, 'B', 3),
('12001', 321452, 'B', 3),
('12001', 342721, 'A', 3),
('12001', 345783, 'C', 3),
('12002', 320367, 'A', 3),
('12002', 328934, 'D', 3),
('15020', 345783, 'B', 4),
('15021', 320367, 'A', 4),
('15021', 321452, 'B', 4),
('15021', 324274, 'A', 4),
('15021', 330021, 'C', 4),
('15022', 322345, 'B', 4),
('15022', 327689, 'B', 4),
('20017', 342721, 'B', 3),
('20017', 343749, 'A', 3),
('20018', 311357, 'B', 3),
('20018', 322345, 'A', 3),
('20019', 321452, 'B', 3),
('20019', 324258, 'B', 3),
('20019', 325563, 'C', 3),
('20025', 345758, 'A', 3),
('20030', 311198, 'A', 3),
('20030', 324257, 'B', 3),
('20030', 328934, 'C', 3),
('20030', 345758, 'B', 3),
('20040', 324269, 'A', 4),
('20040', 328993, 'B', 4),
('22011', 327689, 'B', 3),
('22011', 342721, 'B', 3),
('22020', 321452, 'B', 3),
('22020', 324274, 'B', 3),
('22020', 343749, 'C', 3),
('23110', 311198, 'B', 3),
('23110', 311357, 'B', 3),
('23110', 324257, 'B', 3),
('23110', 345758, 'C', 3),
('23111', 324269, 'A', 3),
('23111', 328993, 'A', 3),
('23120', 327689, 'C', 3),
('23121', 311198, 'C', 3),
('23121', 328934, 'A', 3),
('23121', 328993, 'B', 3),
('25000', 320367, 'A', 3),
('25000', 345783, 'A', 3),
('25001', 330021, 'B', 3),
('25002', 311357, 'B', 3),
('25002', 322345, 'C', 3),
('25002', 324258, 'D', 3),
('25002', 343749, 'B', 3),
('25010', 325563, 'C', 3),
('25011', 345783, 'C', 3),
('30010', 320367, 'A', 3),
('30010', 324258, 'A', 3),
('30110', 322345, 'C', 3),
('30110', 324274, 'B', 3),
('30110', 330021, 'B', 3),
('32000', 342721, 'B', 3),
('32000', 345783, 'B', 3),
('32001', 343749, 'B', 3),
('32002', 325563, 'B', 3),
('32002', 330021, 'A', 3),
('40010', 324258, 'B', 3),
('40010', 342721, 'C', 3),
('40010', 345783, 'B', 3),
('40011', 322345, 'A', 3),
('40011', 325563, 'A', 3),
('40011', 330021, 'A', 3),
('40101', 311198, 'B', 3),
('40101', 311357, 'B', 3),
('40101', 324257, 'B', 3),
('40101', 324269, 'A', 3),
('40101', 324274, 'B', 3),
('50021', 324258, 'A', 3),
('50022', 311198, 'B', 3),
('50022', 327689, 'B', 3),
('50022', 342721, 'A', 3),
('50022', 343749, 'A', 3),
('50023', 324257, 'B', 4),
('50023', 324269, 'B', 4),
('50024', 311357, 'B', 4),
('50024', 324274, 'A', 4),
('50024', 328934, 'A', 4),
('50024', 345758, 'B', 4);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `EMP_NUM` smallint(6) NOT NULL,
  `EMP_FNAME` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EMP_LNAME` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EMP_DOB` datetime NOT NULL,
  `DEPT_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PROF_EXTENSION` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`EMP_NUM`, `EMP_FNAME`, `EMP_LNAME`, `EMP_DOB`, `DEPT_CODE`, `PROF_EXTENSION`) VALUES
(103, 'Ronald', 'Donelly', '1952-10-02 00:00:00', 'HIST', '6783'),
(104, 'Preston', 'Yukon', '1948-02-23 00:00:00', 'ENG', '5561'),
(105, 'Arnelle', 'Heffington', '1950-11-02 00:00:00', 'ACCT', '8665'),
(106, 'Ross', 'Washington', '1941-03-04 00:00:00', 'MKT/MGT', '3899'),
(110, 'Van', 'Thieu', '1951-08-12 00:00:00', 'BIOL', '3412'),
(114, 'Gerald', 'Graztevski', '1939-03-18 00:00:00', 'ACCT', '4436'),
(155, 'Annelise', 'Ritula', '1957-05-24 00:00:00', 'MATH', '4440'),
(160, 'Robert', 'Smith', '1955-06-19 00:00:00', 'ENG', '2248'),
(162, 'Peter', 'Rob', '1940-06-20 00:00:00', 'CIS', '2359'),
(191, 'Willa', 'Dexter', '1953-05-17 00:00:00', 'MKT/MGT', '4016'),
(195, 'Herman', 'Williams', '1955-11-19 00:00:00', 'PSYCH', '3550'),
(209, 'Melanie', 'Smith', '1946-05-24 00:00:00', 'CIS', '3421'),
(228, 'Carlos', 'Coronel', '1949-05-16 00:00:00', 'CIS', '3000'),
(297, 'Hermine', 'Jones', '1950-07-04 00:00:00', 'MATH', '1145'),
(299, 'Doreen', 'Stoddard', '1960-04-25 00:00:00', 'ECON/FIN', '2851'),
(301, 'Ismael', 'Osaki', '1952-05-25 00:00:00', 'ACCT', '4683'),
(335, 'Ronald', 'Okomoto', '1944-03-03 00:00:00', 'ENG', '2000'),
(342, 'Robert', 'Smith', '1937-12-30 00:00:00', 'SOC', '5514'),
(387, 'George', 'Smithson', '1948-10-01 00:00:00', 'BIOL', '8665'),
(401, 'James', 'Blalock', '1945-03-15 00:00:00', 'HIST', '6783'),
(425, 'Ralph', 'Matler', '1973-12-02 00:00:00', 'ECON/FIN', '2851'),
(435, 'Anne', 'Doornberg', '1963-10-02 00:00:00', 'ART', '2278');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `STU_NUM` int(11) NOT NULL,
  `STU_FNAME` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `STU_LNAME` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `STU_DOB` date NOT NULL,
  `STU_CLASS` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `STU_GPA` decimal(4,2) DEFAULT NULL,
  `DEPT_CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EMP_NUM` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`STU_NUM`, `STU_FNAME`, `STU_LNAME`, `STU_DOB`, `STU_CLASS`, `STU_GPA`, `DEPT_CODE`, `EMP_NUM`) VALUES
(311198, 'Anne', 'Robertson', '1970-11-15', '3', '3.04', 'CIS', 162),
(311357, 'Jan', 'Huizinga', '1973-04-04', '3', '2.02', 'MKT/MGT', 106),
(319989, 'Heinz', 'Schloss', '1960-02-25', '4', '3.45', 'MKT/MGT', 106),
(320367, 'Suzanna', 'Grafton', '1976-10-18', '2', '2.81', 'HIST', 103),
(321452, 'William', 'Bowser', '1972-02-12', '2', '1.55', 'BIOL', 387),
(322345, 'Sidney', 'Wesson', '1956-12-14', '2', '3.91', 'ACCT', 301),
(323119, 'George', 'Papar', '1970-04-04', '4', '2.78', 'MKT/MGT', 106),
(324257, 'Anne', 'Smithson', '1973-11-18', '3', '2.02', 'CIS', 209),
(324258, 'Juliette', 'Brewer', '1966-08-23', '2', '3.48', 'ACCT', 114),
(324269, 'Walter', 'Oblonski', '1973-09-16', '3', '2.17', 'CIS', 162),
(324273, 'John', 'Smith', '1955-12-30', '4', '2.72', 'MATH', 155),
(324274, 'Raphael', 'Katinga', '1968-10-25', '4', '2.91', 'ACCT', 114),
(324291, 'Gerald', 'Robertson', '1970-04-04', '4', '2.45', 'BIOL', 387),
(324299, 'John', 'Smith', '1975-11-30', '1', '1.75', 'ACCT', 301),
(324567, 'Samuel', 'Willow', '1979-07-12', '1', NULL, 'BIOL', 387),
(325563, 'Marie', 'Warren', '1971-08-22', '2', '2.42', 'ACCT', 301),
(326578, 'George', 'Weston', '1978-02-01', '3', '2.09', 'MKT/MGT', 106),
(327689, 'Leontine', 'Olenga', '1976-10-15', '3', '3.12', 'MKT/MGT', 106),
(328799, 'Robert', 'Smith', '1950-04-08', '4', '3.51', 'BIOL', 387),
(328934, 'Carlos', 'Innugado', '1976-11-30', '3', '2.38', 'CIS', 228),
(328993, 'Anton', 'Jubilar', '1958-10-29', '4', '2.95', 'ACCT', 114),
(330010, 'Georgette', 'Schlumberg', '1949-02-25', '1', '3.21', 'CIS', 209),
(330021, 'William', 'Browning', '1972-12-30', '2', '1.53', 'HIST', 103),
(332345, 'Annelise', 'Paulus', '1974-01-05', '4', '3.92', 'MATH', 155),
(341101, 'Ronald', 'Richter', '1960-11-30', '1', NULL, 'ART', 435),
(341108, 'Darren', 'Smith', '1988-08-18', '1', '2.45', 'ENG', 160),
(342715, 'Marie', 'Alvarez', '1987-04-19', '3', '2.98', 'ENG', 160),
(342721, 'Robert', 'Rutan', '1981-02-02', '2', '3.01', 'ECON/FIN', 299),
(342722, 'Louise', 'Browning', '1984-10-12', '3', '3.72', 'SOC', 342),
(342745, 'Warren', 'Ularen', '1975-09-23', '4', '2.51', 'PSYCH', 195),
(342748, 'George', 'Perdurax', '1970-05-27', '2', '2.78', 'ACCT', 301),
(343749, 'John', 'Brewton', '1966-05-01', '2', '1.65', 'CIS', 209),
(345755, 'Jeanine', 'Washington', '1978-12-25', '1', '2.87', 'MKT/MGT', 191),
(345758, 'Antoinette', 'Johnson', '1975-06-16', '3', '3.45', 'CIS', 209),
(345767, 'Rupert', 'Jones', '1975-03-19', '3', '3.33', 'ENG', 104),
(345779, 'Kenna', 'Hernando', '1971-07-12', '4', '3.88', 'HIST', 401),
(345783, 'LaRue', 'Boisseaux', '1979-11-28', '2', '3.02', 'ART', 435),
(900245, 'Randy', 'Peppard', '1975-06-21', '2', '2.61', 'BIOL', 387);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`CLASS_CODE`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_CODE`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_CODE`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`CLASS_CODE`,`STU_NUM`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`EMP_NUM`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`STU_NUM`);
COMMIT;

-- Homework --
-- 1 --
SELECT CONCAT(EMP_FNAME," ",EMP_LNAME) AS "Name", (2020-YEAR(EMP_DOB)) AS Age
FROM professor
ORDER BY Age DESC
LIMIT 10;
-- 2 --
SELECT ROUND(AVG(STU_GPA),2) AS "Average CIS GPA"
FROM student
WHERE DEPT_CODE LIKE "CIS";
-- 3 --
SELECT COUNT(CRS_CREDIT) AS "# of course"
FROM course
WHERE CRS_CREDIT = 3 AND (DEPT_CODE IN ("CIS","MATH","BIOL","ENG"));
-- 4 --
SELECT DEPT_CODE AS dept_code, COUNT(DEPT_CODE) AS "Total # of Students"
FROM student
GROUP BY DEPT_CODE
HAVING DEPT_CODE = "CIS" OR DEPT_CODE = "BIOL" OR DEPT_CODE = "MATH" OR DEPT_CODE = "ENG";
-- 5 --
SELECT DEPT_CODE AS dept_code, ROUND(AVG(STU_GPA),2) AS "Average GPA"
FROM student
GROUP BY DEPT_CODE
ORDER BY ROUND(AVG(STU_GPA),2) DESC;
-- 6 --
SELECT DEPT_CODE AS dept_code, ROUND(AVG(STU_GPA),2) AS "Average GPA"
FROM student
GROUP BY DEPT_CODE
HAVING ROUND(AVG(STU_GPA),2) > 3
ORDER BY ROUND(AVG(STU_GPA),2) DESC;
-- 7 --
SELECT STU_CLASS, COUNT(STU_CLASS) AS "Total students", AVG(STU_GPA) AS "Average GPA"
FROM student
WHERE STU_GPA IS NOT NULL
GROUP BY STU_CLASS
ORDER BY STU_CLASS ASC;
-- 8 --
SELECT STU_NUM AS stu_num, CONCAT(STU_FNAME," ",STU_LNAME) AS "student", CONCAT(EMP_FNAME," ",EMP_LNAME) AS "advisor"
FROM student s
INNER JOIN professor p ON s.EMP_NUM = p.EMP_NUM
WHERE EMP_FNAME LIKE "A%" OR EMP_FNAME LIKE "P%"
ORDER BY CONCAT(EMP_FNAME," ",EMP_LNAME) ASC;
-- 9 --
SELECT p.EMP_NUM AS emp_num, DEPT_CODE AS dept_code, CONCAT(EMP_FNAME," ",EMP_LNAME) AS "professor", COUNT(CLASS_CODE) AS "Total classes"
FROM professor p
INNER JOIN class c ON c.EMP_NUM = p.EMP_NUM
GROUP BY p.EMP_NUM
HAVING COUNT(CLASS_CODE) >= 3 AND DEPT_CODE LIKE "CIS";
-- 10 --
SELECT s.STU_FNAME, s.STU_LNAME, c.CLASS_CODE, e.GRADE, c.COURSE_CODE
FROM student s
INNER JOIN enroll e ON s.STU_NUM = e.STU_NUM
INNER JOIN class c ON e.CLASS_CODE = c.CLASS_CODE
WHERE c.COURSE_CODE LIKE "CIS%"
ORDER BY c.COURSE_CODE, e.GRADE;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;