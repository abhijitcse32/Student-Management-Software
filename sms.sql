-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2017 at 08:46 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE IF NOT EXISTS `batch` (
`id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(50) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_id`, `batch_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 8, 'January-2016, Regular', 'admin', '2016-08-23 14:57:15', 'admin', '2016-10-17 16:49:20'),
(2, 8, 'January-2016, Prerequisite', 'admin', '2016-08-23 14:57:35', 'admin', '2016-08-24 09:40:58'),
(3, 9, 'May-2016, Regular', 'admin', '2016-08-23 15:07:00', '', '0000-00-00 00:00:00'),
(4, 9, 'May-2016, Prerequisite', 'admin', '2016-08-23 15:07:14', '', '0000-00-00 00:00:00'),
(5, 10, 'September-2016, Regular', 'admin', '2016-09-24 21:53:55', '', '0000-00-00 00:00:00'),
(6, 10, 'September-2016, Prerequisite', 'admin', '2016-09-24 21:54:32', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bod`
--

CREATE TABLE IF NOT EXISTS `bod` (
`id` int(11) NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `uv_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dept_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dir_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dir_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `dir_desig` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CreateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UpdateDate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bod`
--

INSERT INTO `bod` (`id`, `logo`, `uv_name`, `dept_name`, `dir_name`, `dir_msg`, `dir_desig`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateDate`) VALUES
(1, 'ju_trns.png', 'Jahangirnagar University', 'Institute of Information Technology', '', '', '', 'admin', '2016-09-10 00:00:00', 'admin', '2016-10-04 09:37:51'),
(2, 'sign.png', '', '', 'Khan Mohammod Akkas Ali', '<p>It gives me immense pleasure in welcoming, on behalf of the entire  community of the&nbsp; Institute of Information Technology, Jahangirnagar  University. It started with a modest beginning in 1987 with the aim to  provide help in research in the field of computer and computing related  disciplines. Later in 2009, it started undergraduate program in  Information technology where the aim is to provide IT specialist of the  highest calibre who shall involve in research, design and development.  IIT Jahangirnagar University provides its students with plentiful  opportunities to get experienced in the working of the industry,  national and international level IT competitions and also in real-life  projects attached in the course curriculum.</p>\r\n<p>IIT is now offering different diverse programs including  under-graduate, MS, Ph.D, Short Courses etc.&nbsp; Undergraduate,  Postgraduate and Ph.D. students reside on the campus and thereby get  full opportunity to participate in co-curricular and extra-curricular  activities. With most of the faculty members also residing in the  campus, there is a unique, close and family&ndash;like relationship between  students and teachers. I wish great prosper to all current students and  also invite prospective students to join in our fantastic IIT family.</p>\r\n<p>With best wishes,</p>\r\n<p><a href="http://people.juniv.edu/profile/bijoy">K M Akkas Ali</a><br /> Director, IIT</p>', 'Associate Professor and Director', 'admin', '2016-09-21 00:00:00', 'admin', '2016-09-21 11:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
`id` int(11) NOT NULL,
  `desig` varchar(120) NOT NULL,
  `Sort` int(11) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `desig`, `Sort`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Professor', 1, 'admin', '2016-08-21 11:48:27', 'admin', '2016-08-23 09:39:51'),
(2, 'Associate Professor', 2, 'admin', '2016-08-21 11:48:52', 'admin', '2016-08-23 09:39:56'),
(3, 'Assistant Professor', 3, 'admin', '2016-08-21 11:49:06', '', '0000-00-00 00:00:00'),
(4, 'Lecturer', 4, 'admin', '2016-08-21 11:49:16', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exist_user`
--

CREATE TABLE IF NOT EXISTS `exist_user` (
`id` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exist_user`
--

INSERT INTO `exist_user` (`id`, `username`, `fname`, `lname`, `CreateBy`, `CreateDate`) VALUES
(1, '161108', 'Tamima Akhtar', 'Munna', 'admin', '2016-09-10'),
(2, '161107', 'Abhijit', 'Chanda', 'admin', '2016-09-10'),
(3, '161131', 'Sanjida Yeasmin', 'Rikta', 'admin', '2016-09-10'),
(4, '161101', 'Nahida Zannat', 'Heera', 'admin', '2016-09-10'),
(5, '161102', 'Hasim', 'Raigan', 'admin', '2016-09-10'),
(6, '162101', 'AAAAAA', 'AAAAAA', 'admin', '2016-09-10'),
(7, '162102', 'AAAAA', 'AAAAA', 'admin', '2016-09-10'),
(8, '163101', 'Rahim', 'Badsha', 'admin', '2016-09-10'),
(9, '163102', 'Parsia', 'Tasnim', 'admin', '2016-09-10'),
(10, '163103', 'Md. Kamrul', 'Islam', 'admin', '2016-09-10'),
(11, '161103', 'CCCCCCC', 'CCCCCCC', 'admin', '2016-09-10'),
(12, '161104', 'DDDDD', 'DDDDD', 'admin', '2016-09-10'),
(13, '161105', 'Md. Fahad', 'Uddin', 'admin', '2016-09-10'),
(14, '161106', '161106', '161106', 'admin', '2016-09-10'),
(15, 'admin', 'admin', '', 'admin', '2016-09-10'),
(16, '161109', 'Ramkrishna', 'Sarkar', 'admin', '2016-09-10'),
(17, '161110', 'Arif', 'Siddique', 'admin', '2016-09-10'),
(18, '161111', '161111', '161111', 'admin', '2016-09-10'),
(19, '161112', '161112', '161112', 'admin', '2016-09-10'),
(20, '161113', 'Mohammad', 'Osman Gani', 'admin', '2016-09-10'),
(21, '161114', '161114', '161114', 'admin', '2016-09-10'),
(22, '161115', 'Abdullah Al', 'Ameen Zaber', 'admin', '2016-09-10'),
(23, '161116', '161116', '161116', 'admin', '2016-09-10'),
(24, '161117', '161117', '161117', 'admin', '2016-09-10'),
(25, '161118', '161118', '161118', 'admin', '2016-09-10'),
(26, '161119', '161119', '161119', 'admin', '2016-09-10'),
(27, '161120', '161120', '161120', 'admin', '2016-09-10'),
(28, '161121', '161121', '161121', 'admin', '2016-09-10'),
(29, '161122', 'Shadman', 'Shakib Khan', 'admin', '2016-09-10'),
(30, '161123', 'Amran', 'Hasan', 'admin', '2016-09-10'),
(31, '161124', 'Md. Mozammel', 'Hoque', 'admin', '2016-09-10'),
(32, '161125', 'Dewan Abdul', 'Aziz Chowdhury', 'admin', '2016-09-10'),
(33, '161126', 'Sudorshon', 'Roy', 'admin', '2016-09-10'),
(34, '161127', 'Mahbuba', 'Rahman', 'admin', '2016-09-10'),
(35, '161128', '161128', '161128', 'admin', '2016-09-10'),
(36, '161129', '161129', '161129', 'admin', '2016-09-10'),
(37, '161130', 'Md. Mehedi', 'Hasan', 'admin', '2016-09-10'),
(38, '161132', '161132', '161132', 'admin', '2016-09-10'),
(39, '161133', '161133', '161133', 'admin', '2016-09-10'),
(40, '161134', 'Md. Raqibul', 'Islam', 'admin', '2016-09-10'),
(41, '161135', '161135', '161135', 'admin', '2016-09-10'),
(42, '161136', '161136', '161136', 'admin', '2016-09-10'),
(43, '161137', 'Ifty', 'Hasan', 'admin', '2016-09-10'),
(44, '161138', '161138', '161138', 'admin', '2016-09-10'),
(45, '161139', '161139', '161139', 'admin', '2016-09-10'),
(46, '161140', 'Md. Rustom', 'Ali', 'admin', '2016-09-10'),
(47, '162103', '162103', '162103', 'admin', '2016-09-10'),
(48, '164101', '164101', '164101', 'admin', '2016-09-11'),
(49, '162104', '162104', '162104', 'admin', '2016-09-18'),
(50, '162105', '162105', '162105', 'admin', '2016-09-18'),
(51, '162106', '162106', '162106', 'admin', '2016-09-18'),
(52, '162107', '162107', '162107', 'admin', '2016-09-18'),
(53, '162108', '162108', '162108', 'admin', '2016-09-18'),
(54, '162109', '162109', '162109', 'admin', '2016-09-18'),
(55, '162110', '162110', '162110', 'admin', '2016-09-18'),
(56, '162111', '162111', '162111', 'admin', '2016-09-18'),
(57, '162112', '162112', '162112', 'admin', '2016-09-18'),
(58, '162113', '162113', '162113', 'admin', '2016-09-18'),
(59, '162114', '162114', '162114', 'admin', '2016-09-18'),
(60, '162115', '162115', '162115', 'admin', '2016-09-18'),
(61, '162116', '162116', '162116', 'admin', '2016-09-18'),
(62, '162117', '162117', '162117', 'admin', '2016-09-18'),
(63, '162118', '162118', '162118', 'admin', '2016-09-18'),
(64, '162119', '162119', '162119', 'admin', '2016-09-18'),
(65, '162120', '162120', '162120', 'admin', '2016-09-18'),
(66, '162121', '162121', '162121', 'admin', '2016-09-18'),
(67, '162122', '162122', '162122', 'admin', '2016-09-18'),
(68, '162123', '162123', '162123', 'admin', '2016-09-18'),
(69, '162124', '162124', '162124', 'admin', '2016-09-18'),
(70, '162125', '162125', '162125', 'admin', '2016-09-18'),
(71, '162126', '162126', '162126', 'admin', '2016-09-18'),
(72, '162127', '162127', '162127', 'admin', '2016-09-18'),
(73, '162128', '162128', '162128', 'admin', '2016-09-18'),
(74, '162129', '162129', '162129', 'admin', '2016-09-18'),
(75, '162130', '162130', '162130', 'admin', '2016-09-18'),
(76, '162131', '162131', '162131', 'admin', '2016-09-18'),
(77, '162132', '162132', '162132', 'admin', '2016-09-18'),
(78, '162133', '162133', '162133', 'admin', '2016-09-18'),
(79, '162134', '162134', '162134', 'admin', '2016-09-18'),
(80, '162135', '162135', '162135', 'admin', '2016-09-18'),
(81, '162136', '162136', '162136', 'admin', '2016-09-18'),
(82, '162137', '162137', '162137', 'admin', '2016-09-18'),
(83, '162138', '162138', '162138', 'admin', '2016-09-18'),
(84, '162139', '162139', '162139', 'admin', '2016-09-18'),
(85, '162140', '162140', '162140', 'admin', '2016-09-18'),
(86, 'KMA', 'K M', 'Akkas Ali', 'admin', '2016-09-21'),
(87, 'FBT', 'Fabiha', 'Tabassum', 'admin', '2016-09-21'),
(88, 'FKP', 'Md. Fazlul', 'Karim Patwary', 'admin', '2016-09-21'),
(89, 'MMS', 'M. Meshbauddin', 'Sarkar', 'admin', '2016-09-21'),
(90, 'JSA', 'Jesmin', 'Akhter', 'admin', '2016-09-21'),
(91, 'MSK', 'Dr. M.', 'Shamim Kaiser', 'admin', '2016-09-21'),
(92, 'MWZ', 'Dr. Md', 'Wahiduzzaman', 'admin', '2016-09-21'),
(93, 'MSI', 'Dr. Md', 'Shahidul Islam', 'admin', '2016-09-21'),
(94, 'RTK', 'Risala Tasnim', 'Khan', 'admin', '2016-09-21'),
(95, 'MAY', 'Dr. Md', 'Abu Yousuf', 'admin', '2016-09-21'),
(96, '164102', '164102', '164102', 'admin', '2016-09-24'),
(97, '163104', '163104', '163104', 'admin', '2016-09-24'),
(98, '163105', '163105', '163105', 'admin', '2016-09-24'),
(99, '163106', '163106', '163106', 'admin', '2016-09-24'),
(100, '163107', '163107', '163107', 'admin', '2016-09-24'),
(101, '163108', '163108', '163108', 'admin', '2016-09-24'),
(102, '163109', '163109', '163109', 'admin', '2016-09-24'),
(103, '163110', '163110', '163110', 'admin', '2016-09-24'),
(104, '163111', '163111', '163111', 'admin', '2016-09-24'),
(105, '163112', '163112', '163112', 'admin', '2016-09-24'),
(106, '163113', '163113', '163113', 'admin', '2016-09-24'),
(107, '163114', '163114', '163114', 'admin', '2016-09-24'),
(108, '163115', '163115', '163115', 'admin', '2016-09-24'),
(109, '163116', '163116', '163116', 'admin', '2016-09-24'),
(110, '163117', '163117', '163117', 'admin', '2016-09-24'),
(111, '163118', '163118', '163118', 'admin', '2016-09-24'),
(112, '163119', '163119', '163119', 'admin', '2016-09-24'),
(113, '163120', '163120', '163120', 'admin', '2016-09-24'),
(114, '163121', '163121', '163121', 'admin', '2016-09-24'),
(115, '163122', '163122', '163122', 'admin', '2016-09-24'),
(116, '163123', '163123', '163123', 'admin', '2016-09-24'),
(117, '163124', '163124', '163124', 'admin', '2016-09-24'),
(118, '163125', '163125', '163125', 'admin', '2016-09-24'),
(119, '163126', '163126', '163126', 'admin', '2016-09-24'),
(120, '163127', '163127', '163127', 'admin', '2016-09-24'),
(121, '163128', '163128', '163128', 'admin', '2016-09-24'),
(122, '163129', '163129', '163129', 'admin', '2016-09-24'),
(123, '163130', '163130', '163130', 'admin', '2016-09-24'),
(124, '163131', '163131', '163131', 'admin', '2016-09-24'),
(125, '163132', '163132', '163132', 'admin', '2016-09-24'),
(126, '163133', '163133', '163133', 'admin', '2016-09-24'),
(127, '163134', '163134', '163134', 'admin', '2016-09-24'),
(128, '163135', '163135', '163135', 'admin', '2016-09-24'),
(129, '163136', '163136', '163136', 'admin', '2016-09-24'),
(130, '163137', '163137', '163137', 'admin', '2016-09-24'),
(131, '163138', '163138', '163138', 'admin', '2016-09-24'),
(132, '163139', '163139', '163139', 'admin', '2016-09-26'),
(133, '163140', '163140', '163140', 'admin', '2016-09-26');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
`id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `desig` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `username` varchar(10) NOT NULL,
  `Status` varchar(5) NOT NULL,
  `Sort` int(11) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `fname`, `lname`, `desig`, `image`, `dob`, `username`, `Status`, `Sort`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(6, 'K M', 'Akkas Ali', 'Associate Professor', 'aali.jpg', '0000-00-00', 'KMA', 'YES', 1, 'admin', '2016-08-24', '', '0000-00-00'),
(7, 'Fabiha', 'Tabassum', 'Associate Professor', 'ft.jpg', '0000-00-00', 'FBT', 'YES', 5, 'admin', '2016-08-24', 'admin', '2017-02-22'),
(8, 'Md. Fazlul', 'Karim Patwary', 'Associate Professor', 'fkp.jpg', '0000-00-00', 'FKP', 'YES', 2, 'admin', '2016-08-24', 'admin', '2016-10-17'),
(9, 'M. Meshbauddin', 'Sarkar', 'Associate Professor', 'mms.jpg', '0000-00-00', 'MMS', 'YES', 3, 'admin', '2016-08-24', 'admin', '2017-02-22'),
(10, 'Jesmin', 'Akhter', 'Associate Professor', 'ja.jpg', '0000-00-00', 'JSA', 'YES', 6, 'admin', '2016-08-24', 'admin', '2017-02-22'),
(11, 'Dr. M.', 'Shamim Kaiser', 'Assistant Professor', '104_MYBAdkQm.jpg', '0000-00-00', 'MSK', 'YES', 4, 'admin', '2016-08-24', 'admin', '2017-02-22'),
(12, 'Dr. Md', 'Wahiduzzaman', 'Associate Professor', 'mw.jpg', '0000-00-00', 'MWZ', 'YES', 8, 'admin', '2016-08-24', 'MWZ', '2017-02-22'),
(13, 'Dr. Md', 'Shahidul Islam', 'Assistant Professor', 'msi.jpg', '0000-00-00', 'MSI', 'YES', 10, 'admin', '2016-08-24', 'admin', '2017-02-22'),
(14, 'Risala Tasnim', 'Khan', 'Associate Professor', '205_5zFv6D7G.jpg', '0000-00-00', 'RTK', 'YES', 7, 'admin', '2016-08-31', 'admin', '2017-02-22'),
(15, 'Dr. Md', 'Abu Yousuf', 'Associate Professor', '626_E60Dat00.jpg', '0000-00-00', 'MAY', 'YES', 9, 'admin', '2016-08-31', 'admin', '2017-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_journal`
--

CREATE TABLE IF NOT EXISTS `faculty_journal` (
`id` int(11) NOT NULL,
  `journal` text NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faculty_journal`
--

INSERT INTO `faculty_journal` (`id`, `journal`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, '<h3 class="detail-titles">Journals Papers</h3>\r\n<div class="item-box">\r\n<div class="description">[1].  M Shamim Kaiser, K M Ahmed, Neuro-Fuzzy Based  Opportunistic Spectrum Access and Hand off for the Cognitive Cooperative  Network, Inderscience Journal of Communi- cation and Distributed  Networking(IJCDN) Vol 8, No 3, p. 286-306, (2012).<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[2].  Md. Samee Ullah Chowdhury, Shamit Chakraborty and M.  Shamim Kaiser. Dynamic Radio Resource Allocation for Macro-Femto Hybrid  Cellular Network Maintaining Fairness. Network and Communication  Technologies, Canadian Center of Science and Education, Canada, Vol 1,  No 1, p.67-71,doi:10.5539/nct.v1n1p67. (2012).<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[3].  Zannatul Ferdous Smriti, M. Shamim Kaiser and Kazi M. Ahmed, Dynamic Interference<br /> Management For OFDM-based Joint Macro-Femto Cellular Networks. Journal  of Network and Communication Technologies, Canadian Center of Science  and Education, Canada, Vol 1, No 1, p. 103-106,doi:10.5539/nct.v1n1p103.  (2012).<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[4]. M. Shamim Kaiser and K. M. Ahmed. Radio Resource  Allocation for Heterogeneous Services in Relay Enhanced OFDMA Systems.  Journal of Communications, Academy Publications, Finland, Vol 5, No 6  (2010), 447-454, (2010).<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[5]. M. Shamim Kaiser and K. M. Ahmed, Neuro-Fuzzy (NF)  based Relay Selection and Resource Allocation for Cooperative Networks.  ECTI Transactions on Electrical, Electronics, and Communications  (ECTI-EEC), Thailand, Vol. 53, pp. 23-29 (2011). <br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[6].  M. Shamim Kaiser, M. Arifur Rahman, M. Mostafizur  Rahman. Renewable Energy based Base Transceiver System (BTS) for Remote  Location in Bangladesh, Journal of Water and Material Engineering,  India, Vol. 2(1), 2008<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[7].  M. Shamim Kaiser, Md. Ezharul Islam, Md. Raihan Jamil,Capacity And Coverage<br /> Calculation Model For The UMTS, Journal of Computer Science, Vol. 1(1), pp: 1-5, 2007.<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[8]. M. Shamim Kaiser, S. K. Adyita, and R.K. Mazumder,  Performance Evaluation of a Solar Module using Computer-aided Ray  Tracing Technique, Journal of Engineering and Applied Science, Vol.  1(2), 2006, pp- 82-86,006, ISSN: 1816-949X.<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[9].  M. Shamim Kaiser, Fuzlul Haque, S A Sharna, M. N.  Sultana, M. M. Rahman and S K Aditya, Low Cost Digital Solar Insolation  Meter, Daffodil Journal of Science and Technology, Vol. 1 (1), pp:35-37,  2007.<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[10].  M. Shamim Kaiser, S. K. Adyita, and R.K. Mazumder,  Design and Simulation of Fuzzy Based Maximum Power Point Tracker. Dhaka  University Journal of Science, University of Dhaka, Vol. 54(2), pp:  213-218, 2006, ISSN: 1022-2502<br /> <br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[11]. M. Shamim Kaiser, S. K. Adyita, and R.K. Mazumder, 2006 Performance Evaluation<br /> of a Artificial Neural Network based Maximum Power Point Tracker (MPPT)  for Solar Electric Vehicle Daffodil Journal of Science and Technology  Vol. 1 Issue 1 pp:37-40<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[12].  Asif Anwar, M. Shamim Kaiser, S. K. Adyita, and R.K. Mazumder, A Supercapacitive<br /> Multilayer Voltage Source Inverter for Photovoltaic System. Dhaka  University Journal of Science, University of Dhaka, Vol. 54(2),  pp:197-200, 2005 ISSN: 1022-2502<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[13]. M. Shamim Kaiser, M Arifur Rahman, M M Rahman, Fazlul  Haque, S K Aditya, Hybrid Option Analysis for Power system in Saint  Martin&Atilde;&cent;&acirc;&sbquo;&not;&acirc;&bdquo;&cent;s Island, Journal of Engineering and Applied Science, Vol.  (1) Issue. 3, 2006, ISSN: 1816-949X<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[14].  M. Shamim Kaiser, S. K. Adyita, and R.K. Mazumder,  Low power lighting system for rural household. Journal of the Bangladesh  Electronics Society, Vol. 5(1), pp 71-75, June 2005, ISSN: 1816-1510<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[15].  M. Shamim Kaiser, S. K. Adyita, and R.K. Mazumder, A  Predictive Digital Filter based Zero Crossing Detection Technique for PV  Inverters Journal of Bangladesh Electronics Society, Vol. 5(1), pp  125-128, June 2005, ISSN: 1816-1510<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[16].  Susmita Anwar Sharna, M. Shamim Kaiser, and S.  Rafique, Chaos in Silicon Solar Cell- An analysis for better efficiency.  Journal of the Bangladesh Electronics Society, Vol. 5(1), pp 37-42,  June 2005, ISSN: 1816-1510.<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[17].  M. Shamim Kaiser, A K M Fazlul Haque, S K Aditya and R  K Mazumder, Fuzzy Logic Based Grid-connected Photovoltaic Power system,  Journal of the Bangladesh Electronics Society. Vol 5(2), 2006 ISSN:  1816-1510<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[18].  A K M Fazlul Haque, Amin Ahasan Ali, M Shamim Kaiser, Analysis and Investigation<br /> of a High Performance Intelligent Network using a UNIX-based tool,  Journal of the Bangladesh Electronics Society Vol 5(2), 2006, ISSN:  1816-1510.<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[19].  M. Shamim Kaiser, Asif Anwar, S. K. Adyita, and R.K. Mazumder, Financial Analysis<br /> of a Roof-top grid-connected PV system in Dhaka. Journal of Science,  University of Dhaka, Vol. 54(2), pp:157-162, July 2006, ISSN: 1022-2502<br /> <br /></div>\r\n</div>\r\n<div class="item-box">\r\n<div class="description">[20].  M. Shamim Kaiser, Suraiya Pervin, S. K. Aditya and R. K. Mazumder, A Predictive<br /> Digital Filter Based Zero-Crossing Detection Technique for PV Inverters  The Journal of Bangladesh Electronics Society, Vol. 5, No. 1, June 2005,  pp. 125 - 128.</div>\r\n</div>\r\n<h3 class="detail-titles">Books</h3>\r\n<div class="item-box">\r\n<div class="description">M. Shamim Kaiser, M. Arifur Rahman, Abu M Jafor Alam, A. K.  M. Fazlul Haque FUNDAMENTALS OF COMMUNICATION. Reviewed By Dr. M. Lutfar  Rahman, Systech Publication Ltd, February 2007.<br /> <br /></div>\r\n</div>\r\nM. Shamim Kaiser, Relay Selection and Resource Allocation in  CRN: A Neuro-Fuzzy Based Approach, Lambert Publication, Germany.ISBN:  978-3-8484-9361-6', 'MSK', '2016-09-21', 'MSK', '2016-09-21'),
(2, 'Database Security', 'MAY', '2016-09-24', '', '0000-00-00'),
(3, 'fsasasdsdsadasddas', 'RTK', '2016-11-10', '', '0000-00-00'),
(4, '1. Imdadul Islam, Fazlul Karim Patwary, M.R. Amin (2011) Cost  Optimization of Alternate Routing Network of M/G/1(m) Traffic, The  Mediterranean Journal of Electronics and Communications Vol. 7, No. 1,  190-195, 2011.<br /> <br /> 2. Abdul Bayes, Md. Fazlul Karim Patwary, Nisar Ahmed Shams (2009)  Natural Gas and Poverty Reduction in Bangladesh: An Empirical  Investigation, The Jahangirnagar Economic Review, Vol. 20, June 2009.<br /> <br /> 3. Sanzida Mubassara, Zahed U.M. Khan, M. Motiur Rahman Fazlul K.  Patwary and Muhammad Ali Akond (2008) &ldquo;Seed Inoculation Effect of  Azospirillum Spp. On Growth, Biomass and Yield Parameters of Wheat  Academic Journal of Plant Sciences 1 (4): 56-61, 2008<br /> <br /> 4. Q. A. Samad, F. K. Patwary (2006)&ldquo;Estimation of Technical Efficiency  and Technical Change in the Stochastic Frontier Production Function  Model - An Application to the Manufacturing Industries of Bangladesh"  Journal of Bangladesh Academy of Sciences Vol. 30, No. 1,117-126, 2006.<br /> <br /> 5. M.Alamgir Kabir, M.M.H. Khan, M. Kabir, Mohd. Muzibur Rahman and Md.  Fazlul Karim Patwary (2005) &ldquo;Impact of Women''s Status on Fertility and  Contraceptive Use in Bangladesh: Evidence from Bangladesh Demographic  and Health Survey, 1999-2000" The Indian Journal of Family Welfare Vol.  51, No. 1, June 2005.<br /> <br /> 6.   Abdul Bayes, Md. Fazlul Karim Patwary, KM Akkas Ali (2005)  &ldquo;Vegetables and Vulnerability: Institutions, Infrastructure and  Innovations" The Jahangirnagar Economic Review Vol. 16,  No. 1 June  2005.<br /> <br /> 7.  Q. A. Samad, F. K. Patwary (2003) &ldquo;Technical Efficiency in the  Textile Industry of Bangladesh: an Application of Frontier Production  Function International Journal of Information and Management Sciences  Vol 14 No. 1, March 2003, Taiwan, Republic of China.<br /> <br /> 8.  Q. A. Samad, F. K. Patwary (2002). &ldquo;Technical Efficiency and  Technical Change in the Major manufacturing Industries of Bangladesh The  Bangladesh Studies Vol. XXVIII, March-June 2002 Nos. 1 &amp; 2.<br /> <br /> 9.   F. K. Patwary, Abdul Bayes, Ruhul Amin, Mafizuddin Ahmed  (1999).&ldquo;Does Irrigation Deliver Development? Answer From Rural  Bangladesh The Jahangirnagar Economic Review Vol. 10 No. 1 June 1999.<br /> <br /> 10.   F. K. Patawary, M. S. Ahmed and M. U. Sarker (1998). On The  Adequacy Of Different Ratio And Regression Estimators For the Population  Mean: A Simulation Study. J.Math. and Math. Sc. Vol. 11.', 'FKP', '2017-02-22', '', '0000-00-00'),
(5, '<div class="product-page margin-bottom-25  clearfix">\r\n<h1>Research Interest</h1>\r\n<p>E-Voting, E-Democracy, E-Government, Media and Communication, Digital Technology and Society etc.</p>\r\n<br />\r\n<p>&nbsp;</p>\r\n<h3 class="detail-titles">Journals Papers</h3>\r\n<div class="item-box">\r\n<h4>17. The Roadmap to the Electronic Voting System Development: A Literature Review</h4>\r\n<div class="description">\r\n<p><strong>M. M. Sarker</strong> and N. A. Tajim (2016):  &ldquo;The Roadmap to the Electronic Voting System Development: A Literature  Review&rdquo;: International Journal of Advanced Engineering, Management and  Science (IJAEMS) [Vol-2, Issue-5, May- 2016], ISSN: 2454-1311, <strong>Thomason Reuters</strong> (Research ID, B-5254-2016), Impact Factor: 3.585, India.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>16. Acceptance and Adoption of Indian Prototype EVMs in Bangladesh, Not USA&rsquo;s System: A Comparative Analysis</h4>\r\n<div class="description">\r\n<p><strong>M. M. Sarker</strong> and D. Caramani (2015):  &ldquo;Acceptance and Adoption of Indian Prototype EVMs in Bangladesh, Not  USA&rsquo;s System: A Comparative Analysis&rdquo;, Mitteilungen Klosterneuburg  Journal, ISSN: 0007-5922 (ISI Indexed, SCIE), Impact Factor: 0.106,  Accepted for publication, AUSTRIA.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>15. How Efficient An Electronic Voting Machine (EVM) Should? Answer From The Dominion Voting Systems Corporation.</h4>\r\n<div class="description">\r\n<p><strong>M. M. Sarker</strong>&nbsp;and D. Caramani (2015):  "How Efficient An Electronic Voting Machine (EVM) Should? Answer From  The&nbsp;Dominion Voting Systems Corporation", Kasmera Journal, ISSN:  0075-5222, (ISI-JCR Indexed, SCIE), Impact Factor: <strong>0.071,</strong> Accepted for publication, VENEZUELA.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>14. Information System for Designing a Robust and Structured P2P File Sharing with NAT Support.</h4>\r\n<div class="description">\r\n<p>Tareq. Hasan, and&nbsp;<strong>M. M. Sarker</strong> (2014):  "Information System for Designing a Robust and Structured P2P File  Sharing with NAT Support&ldquo;, Journal of Multidisciplinary Engineering  Science and Technology (JMEST)&rdquo;, ISSN: 3159-0040, Vol. 1 Issue 5,  December &ndash; 2014, p: 447-455, Germany.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>13. Electronic Voting Algorithm and Its Algebraic Formation</h4>\r\n<div class="description">\r\n<p><strong>M. M. Sarker</strong> and M. S. Uddin (2014).  &ldquo;Electronic Voting Algorithm and Its Algebraic Formation&rdquo;, International  Journal of Mathematics Trends and Technology &ndash; Volume 10 Number 1 &ndash; Jun  2014, ISSN: 2231-5373, p:26-33, India.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>12. E-Government Implementation for Bangladesh - Actor Network Theory (ANT) Approach</h4>\r\n<div class="description">\r\n<p><strong>M M Sarker</strong> (2013). &ldquo;E-Government  Implementation for Bangladesh - Actor Network Theory (ANT)  Approach&ldquo;,International Journal of Computer Application (IJCA), ISSN No.  : 2250-1797, Vol. 2, Issue 3, 2013, p: 81-92, Ohio, USA.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>11. EZW Algorithm and Computation of Its Coefficients for Image Compression by Using &ldquo;Bottom-Up&rdquo; Approach</h4>\r\n<div class="description">\r\n<p><strong>M M Sarker</strong> (2013). &ldquo;EZW Algorithm and  Computation of Its Coefficients for Image Compression by Using  &ldquo;Bottom-Up&rdquo; Approach&ldquo;, International Journal of Scientific Engineering  and Technology (IJSET), ISSN: 2277-1581, Vol.2, Issue 6, 2013,  p:532-538, India.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>10. MANAGEMENT OF SUSTAINABLE, CREDIBLE AND INTEGRATED ELECTRONIC VOTING (E-VOTING) SYSTEM FOR BANGLADESH</h4>\r\n<div class="description">\r\n<p><strong>M M SARKER</strong> and M N ISLAM (2013).  &ldquo;MANAGEMENT OF SUSTAINABLE, CREDIBLE AND INTEGRATED ELECTRONIC VOTING  (E-VOTING) SYSTEM FOR BANGLADESH&rdquo;, Management of Sustainable  Development, Vol. 5, No.1, 2013, p: 15-21,&nbsp;Sibiu, Romania.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>9. E-VOTING EXPERIENCE IN BANGLADESH BY USING ELECTRONIC VOTING MACHINES (EVMS)</h4>\r\n<div class="description">\r\n<p><strong>M M Sarker</strong> (2013). &ldquo;E-Voting Experience  in Bangladesh by Using Electronic Voting Machines (EVMs)&rdquo;, International  Journal of Engineering Science and Technology (IJEST), ISSN: 2278-9510,  Vol. 5 No.5, 2013, p: 1143-1148, India.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>8. Top-down and Bottom-up Algorithm of  Embedded Zerotree Wavelet Transformation (EZW) for Image Compression : A  Comparative Study</h4>\r\n<div class="description">\r\n<p><strong>M M Sarker</strong>, M K Pandit, A Sultana, M N Islam and M A Malek (2007).<strong> &ldquo;</strong>Top-down  and Bottom-up Algorithm of Embedded Zerotree Wavelet Transformation  (EZW) for Image Compression : A Comparative Study&rdquo;, Journal of  Mathematics and Mathematical Sciences, Vol. 22, 2007, p:21-28.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>7. A Study of Information Coding &amp; Compression Techniques Using Statistical Probability</h4>\r\n<div class="description">\r\n<p><strong>M M Sarker,</strong> A Sultana, M K Pandit and M A  Malek (2006). &ldquo;A Study of Information Coding &amp; Compression  Techniques Using Statistical Probability&rdquo;, Journal of Mathematics and  Mathematical Sciences, Vol. 21, 2006, p: 65-75.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>6. ANALYSIS  AND  SIMULATION  OF  A  SUPERMARKET  MODEL</h4>\r\n<div class="description">\r\n<p>Mozammel Hoque Chowdhury,&nbsp; K. M. Akkas Ali &nbsp;and <strong>M&nbsp; M Sarker </strong>(2006). &ldquo;ANALYSIS&nbsp; AND&nbsp; simulation&nbsp; of&nbsp; a&nbsp; supermarket&nbsp; Model&rdquo;, <em>Journal of Mathematics and Mathematical Sciences</em>, Vol. 21, 2006, p: 105-111.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>5. Techniques to use the Utilized Free Space of Hard Disk Drive (HDD)</h4>\r\n<div class="description">\r\n<p><strong>M M Sarker </strong>(2000). &ldquo;Techniques to use the Utilized Free Space of Hard Disk Drive (HDD)&rdquo;, revisited<em>, Journal of Mathematics and Mathematical Sciences</em>, Vol. <strong>15</strong>, 2000.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>4. A Simulation Model for Achieving Total Literacy</h4>\r\n<div class="description">\r\n<p>M Kabir, M A Salam and <strong>M M Sarker </strong>(2000)<strong>,</strong><em>&rdquo;</em>A Simulation Model for Achieving Total Literacy<em>, Jahangirnagar University Journal of Sciences</em>, Vol. <strong>22 &amp; 23</strong>, 2000.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>3. On The Adequacy Of Different Ratio And Regression Estimators For the Population Mean</h4>\r\n<div class="description">\r\n<p>F. K. Patawary, M. S. Ahmed and <strong>M M Sarker</strong> (1998). <strong>On The Adequacy Of Different Ratio And Regression Estimators For the Population Mean: A Simulation Study</strong><em><strong>.</strong> J.Math. and Math. </em>Sc. Vol. <strong>11, </strong><strong>1998.</strong></p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>2. An Estimation of Future Population in Bangladesh</h4>\r\n<div class="description">\r\n<p>A. Hoq F Ahmed and <strong>M M Sarker </strong>(1995), <em>Journal of Staistical. Studies</em>, Vol. <strong>15</strong>, 1995.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>1. A Numerical Solution to a Stefan Problem</h4>\r\n<div class="description">\r\n<p>A. Malek and <strong>M M Sarker </strong>(1989-92), &ldquo;A Numerical Solution to a Stefan Problem&rdquo;, <em>Journal of Mathematics and Mathematical Sciences</em>, Vol. <strong>4-7</strong>, 1989-92.</p>\r\n</div>\r\n</div>\r\n<h3 class="detail-titles">Workshops</h3>\r\n<div class="item-box">\r\n<h4>1. Attended &ldquo;Train the Trainer  Programme in IT&rdquo; funded by the Indian Govt. from 24 August to 4th  October 2006 in New Delhi, India.</h4>\r\n<div class="description">\r\n<p>Attended &ldquo;Train the Trainer Programme in IT&rdquo; funded by the Indian Govt. from 24 August to 4<sup>th</sup> October 2006 in New Delhi, India.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>2. Migration and Development in the Age of Globalization</h4>\r\n<div class="description">\r\n<p>International Seminar on &ldquo;Migration and Development in the Age of Globalization&rdquo; on 16 February 2006 in Dhaka.</p>\r\n</div>\r\n</div>\r\n<div class="item-box">\r\n<h4>3. Project Cycle Management (PCM)</h4>\r\n<div class="description">\r\n<p>International workshop on &ldquo;Project Cycle Management  (PCM)&rdquo; funded by the European Commission, Asia Link Programme from 6 to 8  February 2006 in Dhaka.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>', 'MMS', '2017-02-22', '', '0000-00-00'),
(6, '<h2><span style="background-color: #ffffff; font-family: times new roman,serif; color: #000000;"><strong><span style="font-variant: small-caps;"><span style="font-size: x-small;">International Publications</span></span></strong></span></h2>\r\n<table style="width: 100.0%; border-collapse: collapse;" border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">SCI</span></span></strong></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">1.<span style="font-family: Times New Roman;">&nbsp;</span></span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul Islam</span></strong><span style="font-family: Garamond,serif;">, (2013), &ldquo;Gender Classification Using   Gradient Direction Pattern", <em>Sci.Int(Lahore),</em>25(4),797-799&nbsp; </span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">SCI</span></span></strong></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">2.<span style="font-family: Times New Roman;">&nbsp;&nbsp;&nbsp; </span></span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul Islam</span></strong><span style="font-family: Garamond,serif;"> and Surapong Auwatanamongkol, (2013),   " Facial Expression Recognition Using &nbsp; Local Arc Pattern ", <strong>Accepte</strong>d   in <em>Trends in Applied Sciences Research</em>,   ISSN 2151-7908 </span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">SCI</span></span></strong></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">3.<span style="font-family: Times New Roman;">&nbsp;&nbsp;&nbsp;</span></span><span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul   Islam</span></strong></span><span><span style="font-family: Garamond,serif;"> and Surapong Auwatanamongkol, (</span></span><span style="font-family: Garamond,serif;">2013),<span> "</span> Gradient Direction Pattern: A   Gray-Scale Invariant Uniform Local Feature Representation for Facial   Expression Recognition<span>", The </span><em>Journal of Applied Sciences</em><span>, 13(6), pp 837-845, </span>ISSN 1812-5662 </span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">&nbsp;</span></span></strong></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">4.<span style="font-family: Times New Roman;">&nbsp;&nbsp;&nbsp;</span></span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul Islam</span></strong><span style="font-family: Garamond,serif;">, (2013), &ldquo;Robust Gender   Classification Using LMnP-Local Minima Pattern", &nbsp;&nbsp;<em>International   Journal of Scientific &amp; Engineering Research(USA), Volume 4, Issue 11. </em></span></span></p>\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">5.<span style="font-family: Times New Roman;">&nbsp;&nbsp;&nbsp; </span></span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul Islam</span></strong><span style="font-family: Garamond,serif;">, (2013), &ldquo;Uniform Local Active   Forces: A Novel Gray-Scale Invariant Local <span>&nbsp;&nbsp; <span>&nbsp;&nbsp; &nbsp;</span>&nbsp;</span>Feature Representation for Facial   Expression Recognition", <em>International Journal of Computer Science   and Communication <span>&nbsp;&nbsp; </span>Engineering, 2(3), 8-18. </em>ISSN:</span> <span style="font-family: Garamond,serif;">2319-7080</span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">&nbsp;</span></span></strong></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">6.<span style="font-family: Times New Roman;">&nbsp;&nbsp;&nbsp; </span></span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul Islam</span></strong><span style="font-family: Garamond,serif;">, (2013), &ldquo;Local Gray Code Pattern   (LGCP): A Robust Feature Descriptor for <span>&nbsp;&nbsp; &nbsp;</span>Facial Expression Recognition", <em>International   Journal of Science and Research</em>, 2(8), 413 - 419</span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">&nbsp;</span></span></strong></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">7.<span style="font-family: Times New Roman;">&nbsp;&nbsp;&nbsp; </span></span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul Islam</span></strong><span style="font-family: Garamond,serif;">, (2013), &ldquo;Local Gradient Pattern - A   Novel Feature Representation for Facial Expression Recognition", (In the   press) <em>Journal of Artificial   Intelligence &amp; Data Mining </em>, 1(3). ISSN 2322-4444</span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">&nbsp;</span></span></strong></span></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span><span style="font-family: Garamond,serif;">8.<span style="font-family: Times New Roman;">&nbsp;&nbsp;&nbsp; </span></span></span><span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul   Islam</span></strong></span><span><span style="font-family: Garamond,serif;"> and Surapong Auwatanamongkol, (2013),   &ldquo;A Novel Feature Extraction Technique <span>&nbsp;</span>for Facial Expression Recognition&rdquo;, <em>International Journal of Computer Science   Issues</em>, 10(1), pp- 9-14, </span></span><span style="font-family: Garamond,serif;">ISSN 1694-0784</span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">&nbsp;</span></span></strong></span></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">9.<span style="font-family: Times New Roman;">&nbsp;&nbsp;</span></span><span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul   Islam</span></strong></span><span><span style="font-family: Garamond,serif;">, </span></span><span style="font-family: Garamond,serif;">(2011),<span> </span>"Analytical Analysis of Multimedia Mobile   Networks"<span>&nbsp;&nbsp;   , </span><em>Journal of &nbsp;Telecommunications</em><span>, London, U.K,</span> 8(1),<span> pp- 16-20, ISSN 2042-8839</span></span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">&nbsp;</span></span></strong></span></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">10.<span style="font-family: Times New Roman;">&nbsp;</span></span><span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul   Islam</span></strong></span><span><span style="font-family: Garamond,serif;">, </span></span><span style="font-family: Garamond,serif;">(2010),<span> &ldquo;</span>Analyze the Performance of Cellular IP   Networks<span>&rdquo;, </span><em>Journal of &nbsp; &nbsp; &nbsp;Telecommunications</em><span>,   London, U.K, </span>5(2), pp- 11-17, ISSN 2042-8839. </span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span><strong><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">&nbsp;</span></span></strong></span></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">11.<span style="font-family: Times New Roman;">&nbsp; </span></span><span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul   Islam</span></strong></span><span><span style="font-family: Garamond,serif;">, (2010), &ldquo;</span></span><span style="font-family: Garamond,serif;">Traffic Analysis of   Wireless IP Network&rdquo;<span>, <em>The </em></span><em>Journal of   Telecommunications</em><span>, &nbsp;London, U.K, </span>5(1),<span> pp- 33-37, </span>ISSN 2042-8839.</span></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 5.6%; padding: 0cm 5.4pt 0cm 5.4pt;" width="5%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span><span style="font-family: Garamond,serif;"><span style="font-size: x-small;">&nbsp;</span></span></span></p>\r\n</td>\r\n<td style="width: 94.4%; padding: 0cm 5.4pt 0cm 5.4pt;" width="94%" valign="top">\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 14.2pt; text-align: justify; text-justify: inter-ideograph;"><span style="font-size: x-small;"><span style="font-family: Garamond,serif;">12.<span style="font-family: Times New Roman;">&nbsp;</span></span><span><span style="font-family: Garamond,serif;">Imran Hossain &amp; </span></span><strong><span style="font-family: Garamond,serif;">Mohammad Shahidul   Islam</span></strong><span style="font-family: Garamond,serif;">,   (2010), <span>&ldquo;The Future Aspects of Wireless   Electricity &nbsp;Transmission&rdquo;&nbsp;&nbsp;&nbsp; </span><em>Journal of Telecommunications</em><span>, London, U.K,</span> 4(2), pp-19-21, ISSN 2042-8839</span></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2><a name="TOC--"></a><strong style="font-family: times new roman,serif;"><span style="font-variant: small-caps;"><span style="color: #f3f3f3; font-size: x-small;">\r\n<div style="display: inline!important;"><span style="color: #333333; text-align: center; font-variant: normal; font-weight: normal;">&nbsp;</span></div>\r\n</span></span></strong></h2>\r\n<hr />\r\n<div dir="ltr">\r\n<div>\r\n<p style="text-align: left;"><span style="color: #000000; background-color: #ffffff;"><strong><span style="font-variant: small-caps;"><span style="font-family: times new roman,serif; font-size: x-small;">Technical Project Works</span></span></strong></span></p>\r\n</div>\r\n<div>\r\n<p style="text-indent: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>PhD:&nbsp;</strong><strong>&nbsp;</strong><strong>Jun. 2011 &ndash; July 2013</strong></span></p>\r\n<p style="margin-left: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>1.<span style="font-weight: normal;">&nbsp;&nbsp;&nbsp; </span></strong><strong>Local Feature Representations for Facial Expression Recognition Based on Differences of Gray Color Values of Neighboring Pixels &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></span></p>\r\n<p style="margin-left: 31.5pt;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; Proposed a new algorithm, which can recognize the features responsible for facial expressions</span></p>\r\n<p style="margin-left: 31.5pt;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;The algorithm is developed in Matlab and performed on 2 datasets with static frontal face only.</span></p>\r\n<p style="text-indent: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>M.Sc. Project 1:</strong><strong>&nbsp;&nbsp;</strong><strong>June. &ndash; Oct. 2007</strong></span></p>\r\n<p style="margin-left: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>1.<span style="font-weight: normal;">&nbsp;&nbsp;&nbsp; </span></strong><strong>Power  Control and Frequency Planning in Cellular Systems to Prevent  Interference.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></span></p>\r\n<p style="margin-left: 31.5pt;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; Simulate a cellular system by optimized planning of frequency and power levels used in a cell to prevent interference using <strong>Planet EV</strong> and <strong>Mapinfo Professional</strong>.</span></p>\r\n<p style="margin-left: 31.5pt;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; It&rsquo;s a real time modeling and reproducing the behavior of a cellular system. It&rsquo;s analyzing and predicting possible behavior of real cellular cluster.</span></p>\r\n<p><span style="color: #000000; background-color: #ffffff;"><strong><span style="font-family: times new roman,serif; font-size: x-small;">&nbsp;</span></strong></span></p>\r\n<p style="margin-left: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>M.Sc. Project 2: &nbsp;&nbsp;</strong><strong>June. -- Oct. 2005</strong></span></p>\r\n<p style="margin-left: 14.2pt;"><span style="color: #000000; background-color: #ffffff;"><strong><span style="font-family: times new roman,serif; font-size: x-small;">A Software Tool to Calculate the BSC Coverage Area of A Cellular Network.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span></strong></span></p>\r\n<p style="text-align: left; margin-left: 1cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Designed and implemented a software tool for telecom industry, which extracts the cell site positions from cellular network database in terms of latitude and longitude, and calculate the coverage area under any BSC of that Cellular Network. </span></p>\r\n<p style="text-align: left; margin-left: 1cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Therefore, this software tool speeds up various commercial and residential activities of a network provider such as how many subscribers can be allocated in a particular area, how to increase network coverage and so on.</span></p>\r\n<p style="margin-left: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>2.<span style="font-weight: normal;">&nbsp;&nbsp;&nbsp; </span></strong><strong>A Secured VPN System For Military Base&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Jan. &ndash; March 2007</strong></span></p>\r\n<p style="margin-left: 1.0cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp; Designed and implemented a secured VPN communication between the military base and the supplier. </span></p>\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 12.0pt; margin-left: 1.0cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp; A 20 pages report was submitted on VPN security. The VPN was implemented on LINUX server</span></p>\r\n<p style="margin-left: 14.2pt;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong><span style="letter-spacing: -1pt;">&nbsp; 3.<span style="font-weight: normal;">&nbsp; &nbsp; &nbsp;&nbsp;</span></span></strong><strong>Practical Investigation of SNMP-Based Network Management<span style="letter-spacing: -1pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong><strong>Jan. &ndash; March 2007</strong></span></p>\r\n<p style="margin-left: 1.0cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; Designed, monitored, managed a network and investigated the network performance in a company consists of several managed devices with a proactive and service centric network management toolkit </span></p>\r\n<p style="margin-top: 0cm; margin-right: 0cm; margin-bottom: 6.0pt; margin-left: 1.0cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; This is done using a powerful, proactive and service centric software, which is very popular in the market, named HP open view node management software.</span></p>\r\n<p style="margin-left: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>&nbsp;4.<span style="font-weight: normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong><strong>Simulation of A Wireless Network Using &lsquo;Opnet&rsquo;&nbsp;&nbsp;</strong><strong>Jan. &ndash; March 2007</strong></span></p>\r\n<p style="text-indent: 14.2pt;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">Model: <em>Random Mobility</em></span></p>\r\n<p style="text-indent: 14.2pt;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">Scenario: <em>Mobility Domains</em>&nbsp; </span></p>\r\n<p style="text-align: left; margin: 0cm 0cm 6pt 1cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; Simulated a wireless network consisting of different types of MANET nodes - Humvees, base units (laptops) and pedestrian units (phones, PDAs) , moving at different speeds and&nbsp; in different directions, sending messages of varying size to each other at varying intervals.</span></p>\r\n<p style="margin-left: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>5.<span style="font-weight: normal;">&nbsp;&nbsp;&nbsp; </span></strong><strong>Network Design for a University Building&nbsp;&nbsp;&nbsp;</strong><strong>Oct. &ndash; Dec. 2007</strong></span></p>\r\n<p style="text-align: left; margin-left: 1cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; Designed and configured a University building (6 floors) LAN using various CISCO routers and switches. The university building had lots of classrooms, labs and departments. The layout was given.</span></p>\r\n<p style="text-align: left; margin: 0cm 0cm 6pt 1cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">&middot;&nbsp;&nbsp;&nbsp;&nbsp; Configured various types of servers e.g. LINUX server, DATABASE server, MAIL sever and also connected the whole LAN with the WAN in a secured way using CISCO routers.</span></p>\r\n<p style="text-indent: 14.2pt;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>B.Tech (Bachelor Degree) final year Project.&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>Jan. &ndash; June. 2002</strong></span></p>\r\n<p style="margin-left: 14.2pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>6.<span style="font-weight: normal;">&nbsp;&nbsp;&nbsp; </span></strong><strong>Video Database Management</strong></span></p>\r\n<p style="text-align: left; margin: 0cm 0cm 6pt 1cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">o&nbsp; Designed and implemented software in <strong>Visual Basic-6</strong>, which can read the pixels from the video database, stored in access. This software helps to find out the matched clips from all over the video stream and make it easy to find out exact occurrence of the event.</span></p>\r\n<p style="text-indent: 14.2pt;"><span style="color: #000000; background-color: #ffffff;"><strong><span style="font-family: times new roman,serif; font-size: x-small;">B.Tech (Bachelor Degree) 3<sup>rd</sup> year Summer Project &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong></span></p>\r\n<p style="margin-left: 18.0pt; text-autospace: none;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"><strong>7.<span style="font-weight: normal;">&nbsp;&nbsp;&nbsp; </span></strong><strong>Admission Control in ATM System Using Neural Technology&nbsp; &nbsp;Jan &ndash; June 2000</strong></span></p>\r\n<p style="text-align: left; margin: 0cm 0cm 6pt 1cm;"><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">o&nbsp; Designed and implemented a software tool in <strong>c++</strong>, which takes bits as its input from various networks and controls the admission using the neural technology. The software is very important for the ATM system</span></p>\r\n</div>\r\n<span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;"> <br /> </span>\r\n<div>\r\n<hr />\r\n<div style="text-align: left;"><span style="color: #000000; background-color: #ffffff;"><strong style="background-color: transparent; text-align: center;"><span style="font-variant: small-caps;"><span style="font-family: times new roman,serif; font-size: x-small;">Awards</span></span></strong></span></div>\r\n<div>\r\n<ul style="margin-top: 0cm;">\r\n<li><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">Royal Thai Govt. scholarship for      PhD</span></li>\r\n<li><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">Board merit      scholarship in 1994 based on SSC result</span></li>\r\n<li><span style="background-color: #ffffff; font-family: times new roman,serif; font-size: x-small; color: #000000;">Junior board merit scholarship</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'MSI', '2017-02-22', 'MSI', '2017-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `init_result`
--

CREATE TABLE IF NOT EXISTS `init_result` (
`id` int(11) NOT NULL,
  `res_name` varchar(50) NOT NULL,
  `trimister_name` varchar(20) NOT NULL,
  `sub_id` varchar(9) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `init_result`
--

INSERT INTO `init_result` (`id`, `res_name`, `trimister_name`, `sub_id`, `CreateBy`, `CreateDate`) VALUES
(25, 'DM May 16 Reg', '1st', 'PMIT-6211', 'FKP', '2016-09-28 11:52:19'),
(27, 'DS Jan 16 Reg', '2nd', 'PMIT-6209', 'MAY', '2016-09-29 14:06:10'),
(28, 'E-Comm Jan 16 Reg', '2nd', 'PMIT-6233', 'RTK', '2016-09-29 14:11:50'),
(29, 'Cloud Com Jan 16 Reg', '2nd', 'PMIT-6201', 'MWZ', '2016-09-29 14:36:40'),
(22, 'Wireless Net May 16 Reg', '1st', 'PMIT-6217', 'MSK', '2016-09-26 13:56:13'),
(23, 'Adv DB May 16 Reg', '1st', 'PMIT-6102', 'JSA', '2016-09-26 14:03:48'),
(24, 'Adv S/W Engg. May 16 Reg', '1st', 'PMIT-6101', 'FBT', '2016-09-26 16:29:59'),
(30, 'Adv Net Jan 16 Reg', '2nd', 'PMIT-6218', 'MSI', '2016-09-29 14:50:09'),
(26, 'E-Comm May 16 Reg', '2nd', 'PMIT-6233', 'RTK', '2016-09-29 13:51:44'),
(31, 'Adv Net May 16 Reg', '2nd', 'PMIT-6218', 'MSI', '2016-10-02 13:44:30'),
(32, 'DS May 16 Reg', '2nd', 'PMIT-6209', 'MAY', '2016-10-02 13:57:03'),
(33, 'Cloud Com May 16 Reg', '2nd', 'PMIT-6201', 'MWZ', '2016-10-02 14:00:41'),
(34, 'Adv Database Result Jan16 Reg', '1st', 'PMIT-6102', 'JSA', '2016-12-18 15:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(11) NOT NULL,
  `username` varchar(120) NOT NULL,
  `login_date` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=365 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `login_date`) VALUES
(10, 'admin', '2016-09-09 11:02:05'),
(11, 'FBT', '2016-09-09 11:12:01'),
(12, 'admin', '2016-09-09 11:13:18'),
(13, 'FBT', '2016-09-09 11:15:48'),
(14, 'FKP', '2016-09-09 11:19:43'),
(15, 'admin', '2016-09-09 11:22:51'),
(16, 'RTK', '2016-09-09 11:23:11'),
(17, 'FBT', '2016-09-09 11:27:29'),
(18, 'JSA', '2016-09-09 11:27:45'),
(19, 'JSA', '2016-09-09 15:05:37'),
(20, 'JSA', '2016-09-09 15:14:26'),
(21, 'admin', '2016-09-09 15:15:28'),
(22, 'JSA', '2016-09-09 15:15:50'),
(23, 'RTK', '2016-09-09 16:21:05'),
(24, 'admin', '2016-09-09 16:23:56'),
(25, 'admin', '2016-09-10 09:10:15'),
(26, 'admin', '2016-09-10 10:06:57'),
(27, 'RTK', '2016-09-10 11:59:10'),
(28, 'admin', '2016-09-10 11:59:34'),
(29, 'admin', '2016-09-10 12:02:16'),
(30, 'admin', '2016-09-10 12:10:24'),
(31, 'JSA', '2016-09-10 12:53:57'),
(32, 'JSA', '2016-09-10 12:55:35'),
(33, 'JSA', '2016-09-10 12:55:54'),
(34, '161101', '2016-09-10 12:56:34'),
(35, 'admin', '2016-09-10 12:56:50'),
(36, 'JSA', '2016-09-10 12:56:57'),
(37, '161101', '2016-09-10 12:57:07'),
(38, '161101', '2016-09-10 12:59:19'),
(39, '161101', '2016-09-10 13:00:27'),
(40, 'admin', '2016-09-10 13:02:11'),
(41, 'JSA', '2016-09-10 13:02:18'),
(42, '161101', '2016-09-10 13:02:31'),
(43, '161101', '2016-09-10 13:03:13'),
(44, '161101', '2016-09-10 13:03:44'),
(45, '161101', '2016-09-10 13:05:42'),
(46, '161101', '2016-09-10 13:06:20'),
(47, '161101', '2016-09-10 13:07:28'),
(48, '161101', '2016-09-10 13:07:51'),
(49, '161101', '2016-09-10 13:07:57'),
(50, '161101', '2016-09-10 13:08:04'),
(51, 'JSA', '2016-09-10 13:08:52'),
(52, 'JSA', '2016-09-10 13:10:30'),
(53, 'JSA', '2016-09-10 13:10:38'),
(54, 'JSA', '2016-09-10 13:11:16'),
(55, '161102', '2016-09-10 13:12:43'),
(56, 'admin', '2016-09-10 13:36:44'),
(57, '161101', '2016-09-10 13:43:07'),
(58, 'admin', '2016-09-10 15:23:11'),
(59, '161103', '2016-09-10 15:36:22'),
(60, 'admin', '2016-09-11 09:11:40'),
(61, 'admin', '2016-09-11 09:49:11'),
(62, 'admin', '2016-09-11 10:28:55'),
(63, '161101', '2016-09-11 10:37:03'),
(64, 'JSA', '2016-09-11 10:39:36'),
(65, '161102', '2016-09-11 10:51:33'),
(66, 'rtk', '2016-09-11 11:12:54'),
(67, 'rtk', '2016-09-11 11:13:01'),
(68, '161101', '2016-09-11 11:15:52'),
(69, 'rtk', '2016-09-11 11:17:35'),
(70, '161107', '2016-09-11 11:40:24'),
(71, 'admin', '2016-09-11 12:15:15'),
(72, 'admin', '2016-09-11 12:15:26'),
(73, '161107', '2016-09-11 12:17:21'),
(74, '162101', '2016-09-11 12:30:25'),
(75, 'skc', '2016-09-11 12:32:31'),
(76, 'JSA', '2016-09-11 12:32:36'),
(77, '162101', '2016-09-11 12:34:07'),
(78, 'admin', '2016-09-11 12:34:17'),
(79, '163101', '2016-09-11 12:35:14'),
(80, '164101', '2016-09-11 12:35:47'),
(81, '161107', '2016-09-11 12:41:28'),
(82, 'admin', '2016-09-11 12:44:02'),
(83, 'JSA', '2016-09-17 11:01:37'),
(84, 'admin', '2016-09-17 11:04:23'),
(85, 'admin', '2016-09-17 11:24:16'),
(86, 'admin', '2016-09-18 22:25:14'),
(87, '162101', '2016-09-19 10:42:44'),
(88, '161107', '2016-09-19 10:44:38'),
(89, '161101', '2016-09-19 21:53:26'),
(90, 'msk', '2016-09-19 22:00:05'),
(91, '161107', '2016-09-19 22:00:51'),
(92, '161107', '2016-09-19 22:02:04'),
(93, 'rtk', '2016-09-19 22:02:59'),
(94, '162101', '2016-09-19 22:20:44'),
(95, 'kma', '2016-09-19 22:24:18'),
(96, 'JSA', '2016-09-19 22:24:26'),
(97, 'ftp', '2016-09-19 22:25:06'),
(98, 'admin', '2016-09-19 22:25:16'),
(99, 'MWZ', '2016-09-19 22:26:00'),
(100, 'admin', '2016-09-20 09:40:34'),
(101, 'admin', '2016-09-20 10:54:42'),
(102, 'rtk', '2016-09-20 10:58:23'),
(103, '161107', '2016-09-20 11:06:31'),
(104, 'rtk', '2016-09-20 11:09:26'),
(105, '161107', '2016-09-20 11:11:15'),
(106, 'admin', '2016-09-20 11:12:16'),
(107, '161107', '2016-09-20 11:13:28'),
(108, 'rtk', '2016-09-21 10:35:47'),
(109, 'admin', '2016-09-21 10:40:24'),
(110, 'admin', '2016-09-21 10:49:14'),
(111, 'rtk', '2016-09-21 13:43:15'),
(112, 'msk', '2016-09-21 14:00:02'),
(113, 'admin', '2016-09-21 15:45:50'),
(114, '161118', '2016-09-21 16:57:14'),
(115, '161118', '2016-09-21 16:57:22'),
(116, 'admin', '2016-09-22 09:14:52'),
(117, 'admin', '2016-09-22 09:15:04'),
(118, 'admin', '2016-09-22 09:15:08'),
(119, 'admin', '2016-09-22 09:15:21'),
(120, 'admin', '2016-09-22 09:15:39'),
(121, '162101', '2016-09-22 09:48:43'),
(122, 'admin', '2016-09-22 10:03:48'),
(123, '161107', '2016-09-22 10:26:09'),
(124, 'admin', '2016-09-22 10:26:13'),
(125, '161107', '2016-09-22 10:26:19'),
(126, '162107', '2016-09-22 10:35:12'),
(127, 'JSA', '2016-09-22 10:35:54'),
(128, 'may', '2016-09-22 10:36:10'),
(129, '161101', '2016-09-22 13:51:42'),
(130, 'admin', '2016-09-23 01:34:40'),
(131, 'admin', '2016-09-23 01:35:03'),
(132, '161107', '2016-09-23 01:35:27'),
(133, 'admin', '2016-09-24 21:49:27'),
(134, 'admin', '2016-09-24 21:49:45'),
(135, 'May', '2016-09-24 21:59:02'),
(136, 'Msi', '2016-09-24 22:02:17'),
(137, 'Wz', '2016-09-24 22:03:28'),
(138, 'Wz', '2016-09-24 22:03:43'),
(139, 'admin', '2016-09-24 22:04:16'),
(140, 'MWZ', '2016-09-24 22:05:42'),
(141, 'Rtk', '2016-09-24 22:08:01'),
(142, 'FBT', '2016-09-24 22:09:13'),
(143, 'admin', '2016-09-24 22:10:38'),
(144, 'admin', '2016-09-26 13:31:10'),
(145, '163136', '2016-09-26 13:45:42'),
(146, 'admin', '2016-09-26 13:45:58'),
(147, '163101', '2016-09-26 13:50:03'),
(148, 'msk', '2016-09-26 13:50:28'),
(149, 'JSA', '2016-09-26 13:56:58'),
(150, '163102', '2016-09-26 14:53:14'),
(151, '163101', '2016-09-26 15:11:14'),
(152, '163104', '2016-09-26 15:44:31'),
(153, '163107', '2016-09-26 15:46:41'),
(154, '161107', '2016-09-26 15:47:06'),
(155, '163107', '2016-09-26 15:47:55'),
(156, '162101', '2016-09-26 15:50:29'),
(157, 'FBT', '2016-09-26 16:10:22'),
(158, 'FBT', '2016-09-26 16:10:27'),
(159, '163101', '2016-09-26 16:30:27'),
(160, '163101', '2016-09-27 15:07:48'),
(161, 'rtk', '2016-09-27 15:12:01'),
(162, '161101', '2016-09-28 11:26:26'),
(163, '163101', '2016-09-28 11:27:23'),
(164, 'fkp', '2016-09-28 11:28:29'),
(165, '163101', '2016-09-28 11:52:40'),
(166, '163102', '2016-09-28 11:53:34'),
(167, 'admin', '2016-09-28 11:54:05'),
(168, '163102', '2016-09-28 11:59:31'),
(169, 'MWZ', '2016-09-28 12:00:10'),
(170, '161107', '2016-09-29 13:20:57'),
(171, '163102', '2016-09-29 13:21:18'),
(172, '161107', '2016-09-29 13:40:09'),
(173, '161107', '2016-09-29 13:40:15'),
(174, 'rtk', '2016-09-29 13:44:57'),
(175, '163102', '2016-09-29 13:52:02'),
(176, 'may', '2016-09-29 13:57:18'),
(177, 'rtk', '2016-09-29 14:07:35'),
(178, '161107', '2016-09-29 14:12:12'),
(179, 'wz', '2016-09-29 14:29:14'),
(180, 'MWZ', '2016-09-29 14:29:20'),
(181, 'msi', '2016-09-29 14:39:05'),
(182, '161107', '2016-09-29 14:50:28'),
(183, '163101', '2016-10-01 14:10:50'),
(184, 'admin', '2016-10-02 09:30:36'),
(185, '161107', '2016-10-02 13:39:37'),
(186, 'admin', '2016-10-02 13:39:45'),
(187, 'MSI', '2016-10-02 13:41:22'),
(188, 'msi', '2016-10-02 13:41:31'),
(189, '163102', '2016-10-02 13:44:47'),
(190, 'admin', '2016-10-02 13:45:04'),
(191, 'may', '2016-10-02 13:45:59'),
(192, '163101', '2016-10-02 13:57:32'),
(193, 'MWZ', '2016-10-02 13:57:57'),
(194, '163101', '2016-10-02 14:00:50'),
(195, 'admin', '2016-10-02 14:01:11'),
(196, 'admin', '2016-10-03 11:55:28'),
(197, '161107', '2016-10-03 11:57:06'),
(198, 'admin', '2016-10-03 12:00:58'),
(199, '163101', '2016-10-03 12:04:55'),
(200, 'admin', '2016-10-03 12:05:37'),
(201, 'admin', '2016-10-04 09:24:47'),
(202, 'admin', '2016-10-04 09:37:10'),
(203, 'admin', '2016-10-04 09:37:58'),
(204, 'admin', '2016-10-04 09:38:31'),
(205, '163101', '2016-10-04 11:44:30'),
(206, '163102', '2016-10-04 12:30:58'),
(207, '161107', '2016-10-04 12:31:16'),
(208, 'kma', '2016-10-04 12:51:33'),
(209, 'admin', '2016-10-13 09:09:06'),
(210, 'admin', '2016-10-15 15:40:26'),
(211, 'rtk', '2016-10-15 15:42:37'),
(212, 'admin', '2016-10-15 15:43:39'),
(213, '161107', '2016-10-16 09:22:43'),
(214, '161107', '2016-10-16 11:27:43'),
(215, 'admin', '2016-10-16 14:54:25'),
(216, 'rtk', '2016-10-16 15:24:16'),
(217, 'kma', '2016-10-16 15:33:32'),
(218, 'admin', '2016-10-16 15:35:54'),
(219, '161107', '2016-10-16 15:43:52'),
(220, 'admin', '2016-10-16 15:45:06'),
(221, 'admin', '2016-10-17 10:31:41'),
(222, '161107', '2016-10-17 10:32:04'),
(223, '161107', '2016-10-17 10:32:12'),
(224, '163101', '2016-10-17 10:39:54'),
(225, 'rtk', '2016-10-17 11:18:45'),
(226, 'admin', '2016-10-17 11:56:05'),
(227, '161107', '2016-10-17 12:18:24'),
(228, 'admin', '2016-10-18 10:37:17'),
(229, 'admin', '2016-10-18 10:40:00'),
(239, 'rtk', '2016-10-18 12:09:09'),
(238, 'admin', '2016-10-18 12:09:03'),
(237, 'rtk', '2016-10-18 12:06:43'),
(236, 'admin', '2016-10-18 11:26:27'),
(235, 'admin', '2016-10-18 11:17:07'),
(240, 'msk', '2016-10-18 12:36:20'),
(241, 'rtk', '2016-10-18 12:46:30'),
(242, '161107', '2016-10-18 12:50:37'),
(243, 'rtk', '2016-10-18 13:07:21'),
(244, 'may', '2016-10-18 13:10:22'),
(245, 'rtk', '2016-10-18 13:10:54'),
(246, 'admin', '2016-10-18 13:14:59'),
(247, 'rtk', '2016-10-18 13:18:03'),
(248, '161107', '2016-10-18 13:22:24'),
(249, 'rtk', '2016-10-18 13:51:31'),
(250, '161108', '2016-10-18 13:51:53'),
(251, 'rtk', '2016-10-18 13:52:22'),
(252, '161107', '2016-10-18 13:53:06'),
(253, 'rtk', '2016-10-18 14:36:44'),
(254, 'admin', '2016-10-18 15:13:34'),
(255, '161107', '2016-10-18 15:13:55'),
(256, 'admin', '2016-10-18 15:16:24'),
(257, 'admin', '2016-10-18 15:20:38'),
(258, 'admin', '2016-10-18 16:19:16'),
(259, 'rtk', '2016-10-18 16:47:47'),
(260, '161107', '2016-10-18 16:58:46'),
(261, 'admin', '2016-10-29 09:14:01'),
(262, 'admin', '2016-10-29 12:25:11'),
(263, 'admin', '2016-10-29 12:57:59'),
(264, 'admin', '2016-10-29 12:59:43'),
(265, 'admin', '2016-10-29 13:00:55'),
(266, 'admin', '2016-11-02 16:38:55'),
(267, 'admin', '2016-11-03 11:38:11'),
(268, 'admin', '2016-11-03 11:39:54'),
(269, 'admin', '2016-11-09 09:13:10'),
(270, 'admin', '2016-11-10 09:47:14'),
(271, 'rtk', '2016-11-10 10:52:55'),
(272, 'may', '2016-11-10 11:07:25'),
(273, 'rtk', '2016-11-10 11:12:43'),
(274, '163107', '2016-11-10 13:04:00'),
(275, '163102', '2016-11-10 16:33:37'),
(276, '163101', '2016-11-10 16:50:32'),
(277, '163107', '2016-11-10 16:50:39'),
(278, '163102', '2016-11-10 16:51:53'),
(279, '163109', '2016-11-10 16:57:16'),
(280, 'admin', '2016-11-16 16:45:28'),
(281, 'rtk', '2016-11-17 16:46:37'),
(282, '161107', '2016-11-17 16:52:14'),
(283, 'admin', '2016-12-11 14:14:51'),
(284, 'admin', '2016-12-15 11:59:13'),
(285, '161107', '2016-12-15 12:01:36'),
(286, 'admin', '2016-12-15 12:51:51'),
(287, '161101', '2016-12-15 13:03:53'),
(288, 'rtk', '2016-12-15 13:04:06'),
(289, 'admin', '2016-12-15 16:14:55'),
(290, 'may', '2016-12-15 16:19:58'),
(291, '163101', '2016-12-15 16:22:26'),
(292, 'admin', '2016-12-17 09:46:57'),
(293, 'admin', '2016-12-18 15:03:09'),
(294, 'admin', '2016-12-18 15:04:10'),
(295, 'jsa', '2016-12-18 15:04:26'),
(296, 'jsa', '2016-12-18 15:04:30'),
(297, '161102', '2016-12-18 15:07:43'),
(298, '162101', '2016-12-18 15:08:16'),
(299, 'jsa', '2016-12-18 15:08:54'),
(300, 'jsa', '2016-12-18 15:08:59'),
(301, '162102', '2016-12-18 15:09:39'),
(302, 'admin', '2016-12-18 15:10:00'),
(303, '161101', '2016-12-18 15:10:37'),
(304, 'admin', '2016-12-18 15:11:03'),
(305, 'jsa', '2016-12-18 15:11:28'),
(306, '161107', '2016-12-18 15:19:44'),
(307, '161107', '2016-12-18 15:19:51'),
(308, '161102', '2016-12-18 15:20:23'),
(309, '161101', '2016-12-18 15:21:14'),
(310, '161108', '2016-12-18 15:23:04'),
(311, '161124', '2016-12-18 15:23:54'),
(312, '161125', '2016-12-18 15:24:24'),
(313, '161126', '2016-12-18 15:25:03'),
(314, '161130', '2016-12-18 15:26:07'),
(315, 'admin', '2016-12-18 15:26:36'),
(316, '161109', '2016-12-18 15:26:45'),
(317, 'kma', '2016-12-18 15:27:55'),
(318, '161140', '2016-12-18 15:29:10'),
(319, '161105', '2016-12-18 15:29:50'),
(320, 'rtk', '2016-12-18 15:38:53'),
(321, 'rtk', '2016-12-18 15:40:23'),
(322, 'jsa', '2016-12-18 15:41:10'),
(323, 'admin', '2016-12-18 15:41:48'),
(324, 'admin', '2016-12-22 09:26:36'),
(325, 'admin', '2017-02-06 13:01:29'),
(326, 'admin', '2017-02-06 15:27:30'),
(327, 'msk', '2017-02-06 15:27:42'),
(328, 'admin', '2017-02-06 15:28:24'),
(329, '161123', '2017-02-06 15:39:47'),
(330, '161127', '2017-02-06 15:40:40'),
(331, '161110', '2017-02-06 15:41:10'),
(332, '161115', '2017-02-06 15:41:44'),
(333, '161113', '2017-02-06 15:42:26'),
(334, '161134', '2017-02-06 15:43:07'),
(335, '161122', '2017-02-06 15:43:50'),
(336, 'admin', '2017-02-06 15:44:20'),
(337, '161137', '2017-02-06 15:44:31'),
(338, 'admin', '2017-02-06 15:48:47'),
(339, 'admin', '2017-02-07 15:25:56'),
(340, 'rtk', '2017-02-07 15:37:30'),
(341, 'mis', '2017-02-07 15:37:56'),
(342, 'msi', '2017-02-07 15:38:01'),
(343, 'admin', '2017-02-07 15:38:12'),
(344, 'msk', '2017-02-07 15:38:23'),
(345, 'rtk', '2017-02-07 15:49:17'),
(346, '161107', '2017-02-07 15:55:59'),
(347, 'admin', '2017-02-22 09:53:56'),
(348, 'may', '2017-02-22 09:59:02'),
(349, 'admin', '2017-02-22 10:00:09'),
(350, 'mwz', '2017-02-22 10:06:33'),
(351, 'mwz', '2017-02-22 10:06:40'),
(352, 'mwz', '2017-02-22 10:06:46'),
(353, 'admin', '2017-02-22 10:07:26'),
(354, 'mwz', '2017-02-22 10:07:47'),
(355, 'admin', '2017-02-22 10:08:13'),
(356, '161102', '2017-02-22 10:09:26'),
(357, 'admin', '2017-02-22 10:09:52'),
(358, '161102', '2017-02-22 10:11:31'),
(359, 'admin', '2017-02-22 10:12:06'),
(360, 'FKP', '2017-02-22 10:58:40'),
(361, 'mms', '2017-02-22 10:59:46'),
(362, 'MSI', '2017-02-22 11:13:01'),
(363, 'msi', '2017-02-22 11:33:23'),
(364, 'admin', '2017-03-06 09:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
`id` int(11) NOT NULL,
  `notice_name` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `file` varchar(100) NOT NULL,
  `Sort` int(11) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice_name`, `message`, `file`, `Sort`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(5, 'Fee Notice', 'See Fee Notice.........asassa', 'PMIT-Fee-Notice.pdf', 2, 'admin', '2016-09-11', 'admin', '2017-02-22'),
(6, 'Final Exam August 2016', '', 'PMIT-Final-Exam-Routine.pdf', 3, 'admin', '2017-02-06', 'admin', '2017-02-22'),
(7, 'Presentation Notice Feb 2017', 'See Presentation Notice 2017', 'PMIT-Project-Presentation-Notice-February-2017.pdf', 1, 'admin', '2017-02-22', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE IF NOT EXISTS `result` (
`id` int(11) NOT NULL,
  `res_name` varchar(50) NOT NULL,
  `batch_name` varchar(50) NOT NULL,
  `sub_id` varchar(9) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `attendent` int(11) NOT NULL,
  `classtest` int(11) NOT NULL,
  `exam` int(11) NOT NULL,
  `CreateBy` varchar(100) NOT NULL,
  `CreateDate` datetime NOT NULL,
  `UpdateBy` varchar(100) NOT NULL,
  `UpdateeDate` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=920 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `res_name`, `batch_name`, `sub_id`, `roll`, `attendent`, `classtest`, `exam`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(525, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163106', 9, 19, 37, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(524, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163105', 9, 21, 44, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(523, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163104', 9, 24, 37, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(522, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163103', 9, 24, 40, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(521, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163102', 9, 26, 41, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(520, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163101', 9, 22, 48, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(610, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161111', 9, 20, 37, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(609, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161110', 9, 22, 39, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(608, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161109', 9, 19, 38, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(600, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161101', 9, 20, 48, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(601, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161102', 9, 18, 35, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(602, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161103', 9, 17, 34, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(603, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161104', 9, 19, 38, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(604, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161105', 9, 25, 47, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(605, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161106', 9, 20, 41, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(606, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161107', 9, 29, 50, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(607, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161108', 9, 27, 41, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(658, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161119', 9, 23, 41, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(657, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161118', 9, 26, 40, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(656, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161117', 9, 28, 41, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(655, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161116', 9, 22, 49, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(654, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161115', 9, 20, 46, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(653, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161114', 9, 25, 42, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(652, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161113', 9, 21, 50, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(651, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161112', 9, 20, 47, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(650, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161111', 9, 24, 40, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(649, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161110', 9, 22, 44, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(648, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161109', 9, 26, 43, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(647, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161108', 9, 27, 46, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(646, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161107', 9, 24, 51, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(645, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161106', 9, 21, 45, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(644, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161105', 9, 20, 49, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(643, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161104', 9, 24, 42, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(642, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161103', 9, 22, 43, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(641, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161102', 9, 22, 46, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(640, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161101', 9, 20, 42, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(639, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161140', 9, 25, 43, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(638, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161139', 9, 21, 41, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(637, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161138', 9, 26, 44, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(636, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161137', 9, 27, 48, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(635, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161136', 9, 22, 49, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(634, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161135', 9, 23, 43, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(633, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161134', 9, 24, 40, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(632, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161133', 9, 28, 41, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(631, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161132', 9, 21, 45, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(630, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161131', 9, 23, 46, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(629, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161130', 9, 26, 47, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(628, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161129', 9, 24, 46, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(611, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161112', 9, 28, 49, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(612, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161113', 9, 25, 41, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(613, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161114', 9, 20, 37, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(614, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161115', 9, 24, 38, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(615, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161116', 9, 21, 44, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(616, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161117', 9, 26, 40, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(617, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161118', 9, 22, 42, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(618, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161119', 9, 18, 40, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(619, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161120', 9, 25, 45, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(620, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161121', 9, 27, 39, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(621, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161122', 9, 23, 38, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(622, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161123', 9, 29, 45, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(623, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161124', 9, 26, 46, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(624, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161125', 9, 23, 42, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(625, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161126', 9, 21, 39, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(626, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161127', 9, 20, 40, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(627, 'DS Jan 16 Reg', 'January-2016, Regular', 'PMIT-6209', '161128', 9, 18, 42, 'MAY', '2016-09-29 14:06:10', '', '0000-00-00 00:00:00'),
(686, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161107', 9, 28, 55, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(685, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161106', 9, 27, 50, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(684, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161105', 9, 24, 47, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(683, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161104', 9, 26, 48, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(682, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161103', 9, 27, 42, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(681, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161102', 9, 23, 41, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(680, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161101', 9, 25, 45, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(679, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161140', 9, 24, 40, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(678, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161139', 9, 27, 42, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(677, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161138', 9, 26, 44, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(676, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161137', 9, 25, 45, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(675, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161136', 9, 20, 49, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(674, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161135', 9, 27, 47, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(673, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161134', 9, 29, 43, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(672, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161133', 9, 26, 45, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(671, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161132', 9, 23, 44, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(670, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161131', 9, 27, 40, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(669, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161130', 9, 29, 41, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(668, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161129', 9, 25, 43, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(667, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161128', 9, 21, 41, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(666, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161127', 9, 22, 42, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(665, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161126', 9, 20, 44, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(659, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161120', 9, 21, 42, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(660, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161121', 9, 25, 47, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(661, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161122', 9, 28, 50, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(662, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161123', 9, 27, 40, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(663, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161124', 9, 26, 44, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(664, 'E-Comm Jan 16 Reg', 'January-2016, Regular', 'PMIT-6233', '161125', 9, 24, 45, 'RTK', '2016-09-29 14:11:50', '', '0000-00-00 00:00:00'),
(720, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161101', 9, 20, 43, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(719, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161140', 9, 26, 42, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(718, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161139', 9, 24, 46, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(717, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161138', 9, 27, 44, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(716, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161137', 9, 29, 50, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(715, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161136', 9, 20, 51, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(714, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161135', 9, 28, 47, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(713, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161134', 9, 21, 43, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(712, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161133', 9, 23, 49, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(711, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161132', 9, 24, 48, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(710, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161131', 9, 25, 45, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(709, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161130', 9, 27, 42, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(708, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161129', 9, 20, 46, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(707, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161128', 9, 21, 47, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(706, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161127', 9, 23, 40, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(705, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161126', 9, 25, 49, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(704, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161125', 9, 27, 54, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(703, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161124', 9, 26, 42, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(702, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161123', 9, 22, 46, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(701, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161122', 9, 25, 47, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(700, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161121', 9, 20, 49, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(699, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161120', 9, 28, 41, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(698, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161119', 9, 26, 52, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(697, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161118', 9, 24, 46, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(696, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161117', 9, 21, 49, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(695, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161116', 9, 22, 48, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(694, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161115', 9, 24, 47, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(693, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161114', 9, 27, 42, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(692, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161113', 9, 25, 44, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(691, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161112', 9, 23, 53, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(690, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161111', 9, 25, 42, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(689, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161110', 9, 22, 49, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(688, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161109', 9, 20, 44, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(687, 'Cloud Com Jan 16 Reg', 'January-2016, Regular', 'PMIT-6201', '161108', 9, 23, 46, 'MWZ', '2016-09-29 14:36:40', '', '0000-00-00 00:00:00'),
(400, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163101', 9, 20, 25, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(401, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163102', 9, 22, 39, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(402, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163103', 9, 19, 37, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(403, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163104', 9, 23, 33, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(404, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163105', 9, 18, 35, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(405, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163106', 9, 21, 42, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(406, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163107', 9, 20, 28, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(407, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163108', 9, 25, 19, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(408, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163109', 9, 17, 27, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(409, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163110', 9, 19, 29, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(410, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163111', 9, 21, 31, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(411, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163112', 9, 24, 36, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(412, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163113', 9, 17, 25, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(413, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163114', 9, 11, 27, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(414, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163115', 9, 15, 34, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(415, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163116', 9, 19, 37, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(416, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163117', 9, 20, 29, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(417, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163118', 9, 18, 30, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(418, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163119', 9, 22, 35, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(419, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163120', 9, 19, 41, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(420, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163121', 9, 17, 36, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(421, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163122', 9, 21, 25, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(422, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163123', 9, 20, 27, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(423, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163124', 9, 19, 26, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(424, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163125', 9, 24, 19, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(425, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163126', 9, 21, 17, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(426, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163127', 9, 20, 25, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(427, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163128', 9, 17, 17, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(428, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163129', 9, 14, 19, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(429, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163130', 9, 21, 15, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(430, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163131', 9, 20, 17, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(431, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163132', 9, 18, 19, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(432, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163133', 9, 14, 25, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(433, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163134', 9, 23, 27, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(434, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163135', 9, 17, 29, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(435, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163136', 9, 15, 22, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(436, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163137', 9, 18, 31, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(437, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163138', 9, 22, 40, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(438, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163139', 9, 20, 32, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(439, 'Wireless Net May 16 Reg', 'May-2016, Regular', 'PMIT-6217', '163140', 9, 19, 35, 'MSK', '2016-09-26 13:56:13', '', '0000-00-00 00:00:00'),
(440, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163101', 8, 20, 45, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(441, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163102', 7, 22, 41, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(442, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163103', 9, 29, 35, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(443, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163104', 8, 25, 31, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(444, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163105', 9, 18, 30, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(445, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163106', 7, 15, 36, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(446, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163107', 8, 19, 19, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(447, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163108', 10, 25, 41, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(448, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163109', 9, 24, 38, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(449, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163110', 9, 26, 41, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(450, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163111', 8, 24, 40, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(451, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163112', 8, 26, 37, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(452, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163113', 9, 24, 44, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(453, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163114', 10, 19, 40, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(454, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163115', 8, 24, 36, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(455, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163116', 7, 21, 34, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(456, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163117', 5, 23, 37, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(457, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163118', 10, 25, 51, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(458, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163119', 7, 26, 40, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(459, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163120', 9, 21, 39, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(460, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163121', 8, 25, 38, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(461, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163122', 7, 26, 31, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(462, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163123', 8, 27, 31, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(463, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163124', 10, 26, 51, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(464, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163125', 7, 21, 34, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(465, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163126', 6, 19, 33, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(466, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163127', 9, 17, 29, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(467, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163128', 7, 16, 31, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(468, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163129', 8, 19, 34, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(469, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163130', 4, 11, 31, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(470, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163131', 9, 18, 28, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(471, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163132', 10, 24, 44, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(472, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163133', 7, 19, 41, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(473, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163134', 8, 22, 42, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(474, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163135', 7, 25, 50, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(475, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163136', 8, 21, 49, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(476, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163137', 8, 20, 47, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(477, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163138', 9, 23, 43, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(478, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163139', 10, 27, 50, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(479, 'Adv DB May 16 Reg', 'May-2016, Regular', 'PMIT-6102', '163140', 8, 24, 47, 'JSA', '2016-09-26 14:03:48', '', '0000-00-00 00:00:00'),
(480, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163101', 8, 15, 35, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(481, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163102', 8, 17, 31, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(482, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163103', 8, 21, 29, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(483, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163104', 8, 20, 37, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(484, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163105', 8, 20, 39, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(485, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163106', 8, 19, 37, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(486, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163107', 8, 17, 42, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(487, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163108', 8, 20, 40, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(488, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163109', 8, 19, 37, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(489, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163110', 8, 18, 45, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(490, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163111', 8, 20, 40, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(491, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163112', 8, 19, 38, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(492, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163113', 8, 19, 44, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(493, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163114', 8, 19, 47, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(494, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163115', 8, 17, 37, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(495, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163116', 8, 24, 49, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(496, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163117', 8, 20, 45, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(497, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163118', 8, 19, 41, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(498, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163119', 8, 21, 40, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(499, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163120', 8, 17, 34, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(500, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163121', 8, 20, 39, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(501, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163122', 8, 22, 40, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(502, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163123', 8, 18, 32, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(503, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163124', 8, 19, 42, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(504, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163125', 8, 18, 35, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(505, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163126', 8, 20, 49, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(506, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163127', 8, 21, 39, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(507, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163128', 8, 24, 43, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(508, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163129', 8, 22, 48, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(509, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163130', 8, 26, 50, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(510, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163131', 8, 24, 47, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(511, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163132', 8, 12, 34, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(512, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163133', 8, 17, 38, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(513, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163134', 8, 19, 49, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(514, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163135', 8, 22, 45, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(515, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163136', 8, 21, 37, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(516, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163137', 8, 19, 35, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(517, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163138', 8, 23, 38, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(518, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163139', 8, 17, 45, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(519, 'Adv S/W Engg. May 16 Reg', 'May-2016, Regular', 'PMIT-6101', '163140', 8, 15, 35, 'FBT', '2016-09-26 16:29:59', '', '0000-00-00 00:00:00'),
(526, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163107', 9, 21, 41, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(527, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163108', 9, 20, 45, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(528, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163109', 9, 22, 40, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(529, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163110', 9, 19, 38, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(530, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163111', 9, 25, 45, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(531, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163112', 9, 21, 40, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(532, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163113', 9, 19, 37, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(533, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163114', 9, 20, 34, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(534, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163115', 9, 21, 41, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(535, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163116', 9, 19, 45, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(536, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163117', 9, 17, 36, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(537, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163118', 9, 23, 45, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(538, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163119', 9, 21, 40, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(539, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163120', 9, 21, 39, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(540, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163121', 9, 27, 50, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(541, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163122', 9, 19, 36, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(542, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163123', 9, 25, 49, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(543, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163124', 9, 22, 44, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(544, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163125', 9, 16, 42, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(545, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163126', 9, 23, 41, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(546, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163127', 9, 24, 40, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(547, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163128', 9, 19, 41, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(548, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163129', 9, 24, 45, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(549, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163130', 9, 22, 49, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(550, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163131', 9, 20, 43, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(551, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163132', 9, 21, 37, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(552, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163133', 9, 24, 33, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(553, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163134', 9, 27, 49, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(554, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163135', 9, 22, 44, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(555, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163136', 9, 18, 41, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(556, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163137', 9, 26, 40, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(557, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163138', 9, 21, 39, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(558, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163139', 9, 25, 47, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(559, 'DM May 16 Reg', 'May-2016, Regular', 'PMIT-6211', '163140', 9, 22, 48, 'FKP', '2016-09-28 11:52:19', '', '0000-00-00 00:00:00'),
(560, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163101', 8, 15, 40, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(561, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163102', 8, 17, 41, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(562, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163103', 8, 12, 37, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(563, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163104', 8, 14, 39, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(564, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163105', 8, 15, 40, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(565, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163106', 8, 18, 42, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(566, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163107', 8, 17, 40, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(567, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163108', 8, 19, 40, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(568, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163109', 8, 16, 41, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(569, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163110', 8, 20, 41, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(570, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163111', 8, 15, 29, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(571, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163112', 8, 14, 44, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(572, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163113', 8, 20, 42, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(573, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163114', 8, 21, 40, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(574, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163115', 8, 19, 36, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(575, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163116', 8, 18, 40, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(576, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163117', 8, 21, 43, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(577, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163118', 8, 20, 41, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(578, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163119', 8, 23, 49, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(579, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163120', 8, 16, 37, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(580, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163121', 8, 15, 39, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(581, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163122', 8, 16, 37, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(582, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163123', 8, 14, 36, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(583, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163124', 8, 19, 37, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(584, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163125', 8, 18, 35, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(585, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163126', 8, 17, 34, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(586, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163127', 8, 19, 37, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(587, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163128', 8, 21, 40, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(588, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163129', 8, 19, 39, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(589, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163130', 8, 19, 38, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(590, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163131', 8, 22, 39, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(591, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163132', 8, 17, 31, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(592, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163133', 8, 21, 39, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(593, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163134', 8, 20, 37, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(594, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163135', 8, 18, 34, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(595, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163136', 8, 19, 35, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(596, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163137', 8, 17, 39, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(597, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163138', 8, 19, 42, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(598, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163139', 8, 22, 45, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(599, 'E-Comm May 16 Reg', 'May-2016, Regular', 'PMIT-6233', '163140', 8, 20, 39, 'RTK', '2016-09-29 13:51:44', '', '0000-00-00 00:00:00'),
(721, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161102', 9, 22, 42, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(722, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161103', 9, 26, 48, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(723, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161104', 9, 28, 41, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(724, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161105', 9, 25, 39, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(725, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161106', 9, 24, 40, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(726, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161107', 9, 27, 50, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(727, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161108', 9, 21, 42, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(728, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161109', 9, 23, 47, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(729, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161110', 9, 27, 43, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(730, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161111', 9, 25, 41, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(731, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161112', 9, 22, 42, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(732, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161113', 9, 26, 36, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(733, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161114', 9, 28, 46, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(734, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161115', 9, 25, 48, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(735, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161116', 9, 24, 37, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(736, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161117', 9, 20, 43, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(737, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161118', 9, 27, 41, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(738, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161119', 9, 29, 45, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(739, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161120', 9, 20, 37, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(740, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161121', 9, 23, 41, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(741, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161122', 9, 27, 49, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(742, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161123', 9, 28, 51, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(743, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161124', 9, 21, 47, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(744, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161125', 9, 20, 42, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(745, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161126', 9, 24, 43, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(746, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161127', 9, 27, 40, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(747, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161128', 9, 21, 41, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(748, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161129', 9, 25, 39, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(749, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161130', 9, 24, 36, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(750, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161131', 9, 23, 40, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(751, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161132', 9, 26, 39, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(752, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161133', 9, 27, 41, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(753, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161134', 9, 25, 42, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00');
INSERT INTO `result` (`id`, `res_name`, `batch_name`, `sub_id`, `roll`, `attendent`, `classtest`, `exam`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(754, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161135', 9, 20, 45, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(755, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161136', 9, 29, 37, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(756, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161137', 9, 27, 39, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(757, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161138', 9, 26, 42, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(758, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161139', 9, 24, 47, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(759, 'Adv Net Jan 16 Reg', 'January-2016, Regular', 'PMIT-6218', '161140', 9, 24, 40, 'MSI', '2016-09-29 14:50:09', '', '0000-00-00 00:00:00'),
(760, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163101', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(761, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163102', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(762, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163103', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(763, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163104', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(764, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163105', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(765, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163106', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(766, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163107', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(767, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163108', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(768, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163109', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(769, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163110', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(770, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163111', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(771, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163112', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(772, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163113', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(773, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163114', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(774, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163115', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(775, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163116', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(776, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163117', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(777, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163118', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(778, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163119', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(779, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163120', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(780, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163121', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(781, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163122', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(782, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163123', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(783, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163124', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(784, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163125', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(785, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163126', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(786, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163127', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(787, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163128', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(788, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163129', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(789, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163130', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(790, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163131', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(791, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163132', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(792, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163133', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(793, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163134', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(794, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163135', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(795, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163136', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(796, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163137', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(797, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163138', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(798, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163139', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(799, 'Adv Net May 16 Reg', 'May-2016, Regular', 'PMIT-6218', '163140', 7, 15, 41, 'MSI', '2016-10-02 13:44:30', '', '0000-00-00 00:00:00'),
(800, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163101', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(801, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163102', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(802, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163103', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(803, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163104', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(804, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163105', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(805, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163106', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(806, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163107', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(807, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163108', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(808, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163109', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(809, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163110', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(810, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163111', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(811, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163112', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(812, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163113', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(813, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163114', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(814, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163115', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(815, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163116', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(816, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163117', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(817, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163118', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(818, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163119', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(819, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163120', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(820, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163121', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(821, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163122', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(822, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163123', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(823, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163124', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(824, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163125', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(825, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163126', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(826, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163127', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(827, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163128', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(828, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163129', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(829, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163130', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(830, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163131', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(831, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163132', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(832, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163133', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(833, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163134', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(834, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163135', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(835, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163136', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(836, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163137', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(837, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163138', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(838, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163139', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(839, 'DS May 16 Reg', 'May-2016, Regular', 'PMIT-6209', '163140', 8, 21, 42, 'MAY', '2016-10-02 13:57:03', '', '0000-00-00 00:00:00'),
(840, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163101', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(841, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163102', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(842, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163103', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(843, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163104', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(844, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163105', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(845, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163106', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(846, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163107', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(847, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163108', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(848, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163109', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(849, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163110', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(850, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163111', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(851, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163112', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(852, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163113', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(853, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163114', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(854, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163115', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(855, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163116', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(856, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163117', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(857, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163118', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(858, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163119', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(859, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163120', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(860, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163121', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(861, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163122', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(862, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163123', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(863, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163124', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(864, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163125', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(865, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163126', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(866, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163127', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(867, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163128', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(868, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163129', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(869, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163130', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(870, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163131', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(871, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163132', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(872, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163133', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(873, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163134', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(874, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163135', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(875, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163136', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(876, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163137', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(877, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163138', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(878, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163139', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(879, 'Cloud Com May 16 Reg', 'May-2016, Regular', 'PMIT-6201', '163140', 8, 20, 39, 'MWZ', '2016-10-02 14:00:41', '', '0000-00-00 00:00:00'),
(880, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161101', 9, 16, 46, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(881, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161102', 9, 15, 43, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(882, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161103', 9, 22, 47, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(883, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161104', 9, 14, 42, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(884, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161105', 9, 17, 49, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(885, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161106', 9, 18, 45, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(886, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161107', 9, 25, 51, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(887, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161108', 9, 25, 51, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(888, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161109', 9, 15, 42, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(889, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161110', 9, 23, 44, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(890, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161111', 9, 19, 41, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(891, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161112', 9, 24, 46, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(892, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161113', 9, 17, 42, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(893, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161114', 9, 22, 44, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(894, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161115', 9, 15, 50, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(895, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161116', 9, 23, 38, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(896, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161117', 9, 16, 47, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(897, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161118', 9, 13, 46, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(898, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161119', 9, 18, 42, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(899, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161120', 9, 15, 37, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(900, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161121', 9, 17, 41, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(901, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161122', 9, 20, 46, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(902, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161123', 9, 23, 47, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(903, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161124', 9, 24, 41, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(904, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161125', 9, 20, 43, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(905, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161126', 9, 19, 48, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(906, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161127', 9, 17, 40, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(907, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161128', 9, 25, 45, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(908, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161129', 9, 11, 43, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(909, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161130', 9, 21, 47, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(910, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161131', 9, 24, 42, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(911, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161132', 9, 22, 44, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(912, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161133', 9, 17, 35, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(913, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161134', 9, 19, 40, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(914, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161135', 9, 22, 39, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(915, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161136', 9, 20, 40, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(916, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161137', 9, 18, 41, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(917, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161138', 9, 14, 47, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(918, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161139', 9, 15, 35, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00'),
(919, 'Adv Database Result Jan16 Reg', 'January-2016, Regular', 'PMIT-6102', '161140', 9, 17, 44, 'JSA', '2016-12-18 15:19:15', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE IF NOT EXISTS `routine` (
`id` int(11) NOT NULL,
  `routine_id` varchar(30) NOT NULL,
  `faculty_member` varchar(50) NOT NULL,
  `sub_code` varchar(30) CHARACTER SET latin1 NOT NULL,
  `cls_time` varchar(50) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`id`, `routine_id`, `faculty_member`, `sub_code`, `cls_time`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(16, 'RTN-PRE-JAN-16-2', 'RTK', 'PMIT-6233', '09-11', 'admin', '2016-09-22', '', '0000-00-00'),
(22, 'RTN-REG-JAN-16-2', 'MSI', 'PMIT-6218', '02:30-04:30', 'admin', '2016-09-22', '', '0000-00-00'),
(21, 'RTN-REG-JAN-16-2', 'RTK', 'PMIT-6233', '11-01', 'admin', '2016-09-22', '', '0000-00-00'),
(20, 'RTN-REG-JAN-16-2', 'MAY', 'PMIT-6209', '09-11', 'admin', '2016-09-22', '', '0000-00-00'),
(17, 'RTN-PRE-JAN-16-2', 'MAY', 'PMIT-6209', '11-01', 'admin', '2016-09-22', '', '0000-00-00'),
(18, 'RTN-PRE-JAN-16-2', 'MWZ', 'PMIT-6201', '02:30-04:30', 'admin', '2016-09-22', '', '0000-00-00'),
(19, 'RTN-PRE-JAN-16-2', 'MSI', 'PMIT-6218', '04:30-06:30', 'admin', '2016-09-22', '', '0000-00-00'),
(23, 'RTN-REG-JAN-16-2', 'MWZ', 'PMIT-6201', '04:30-06:30', 'admin', '2016-09-22', '', '0000-00-00'),
(24, 'RTN-PRE-JAN-16-1', 'FKP', 'PMIT-6204', '08:30-10:30', 'admin', '2016-09-22', '', '0000-00-00'),
(25, 'RTN-PRE-JAN-16-1', 'MSK', 'PMIT-6217', '10:30-12:30', 'admin', '2016-09-22', '', '0000-00-00'),
(26, 'RTN-PRE-JAN-16-1', 'KMA', 'PMIT-6229', '02:30-04:30', 'admin', '2016-09-22', '', '0000-00-00'),
(27, 'RTN-PRE-JAN-16-1', 'JSA', 'PMIT-6102', '04:30-06:30', 'admin', '2016-09-22', '', '0000-00-00'),
(28, 'RTN-REG-JAN-16-1', 'MSK', 'PMIT-6217', '08:30-10:30', 'admin', '2016-09-22', '', '0000-00-00'),
(29, 'RTN-REG-JAN-16-1', 'FKP', 'PMIT-6204', '10:30-12:30', 'admin', '2016-09-22', '', '0000-00-00'),
(30, 'RTN-REG-JAN-16-1', 'JSA', 'PMIT-6102', '02:30-04:30', 'admin', '2016-09-22', '', '0000-00-00'),
(31, 'RTN-REG-JAN-16-1', 'KMA', 'PMIT-6229', '04:30-06:30', 'admin', '2016-09-22', '', '0000-00-00'),
(32, 'RTN-PRE-JAN-16-3', 'KMA', 'PMIT-6219', '09-11', 'admin', '2016-09-22', '', '0000-00-00'),
(33, 'RTN-PRE-JAN-16-3', 'MMS', 'PMIT-6316', '11-01', 'admin', '2016-09-22', '', '0000-00-00'),
(34, 'RTN-REG-JAN-16-3', 'KMA', 'PMIT-6219', '02:30-04:30', 'admin', '2016-09-22', '', '0000-00-00'),
(35, 'RTN-REG-JAN-16-3', 'MMS', 'PMIT-6316', '04:30-06:30', 'admin', '2016-09-22', '', '0000-00-00'),
(36, 'RTN-REG-MAY-16-1', 'MSK', 'PMIT-6217 ', '09-11', 'admin', '2016-09-26', '', '0000-00-00'),
(37, 'RTN-REG-MAY-16-1', 'FBT', 'PMIT-6101', '11-01', 'admin', '2016-09-26', '', '0000-00-00'),
(38, 'RTN-REG-MAY-16-1', 'JSA', 'PMIT-6102', '02:30-04:30', 'admin', '2016-09-26', '', '0000-00-00'),
(39, 'RTN-REG-MAY-16-1', 'FKP', 'PMIT-6211', '04:30-06:30', 'admin', '2016-09-26', '', '0000-00-00'),
(40, 'RTN-REG-MAY-16-2', 'MAY', 'PMIT-6209', '09-11', 'admin', '2016-09-28', '', '0000-00-00'),
(41, 'RTN-REG-MAY-16-2', 'MSI', 'PMIT-6218', '11-01', 'admin', '2016-09-28', '', '0000-00-00'),
(42, 'RTN-REG-MAY-16-2', 'RTK', 'PMIT-6233', '02:30-04:30', 'admin', '2016-09-28', '', '0000-00-00'),
(43, 'RTN-REG-MAY-16-2', 'MWZ', 'PMIT-6201', '04:30-06:30', 'admin', '2016-09-28', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `routine_set`
--

CREATE TABLE IF NOT EXISTS `routine_set` (
`id` int(11) NOT NULL,
  `routine_id` varchar(30) NOT NULL,
  `routine_name` varchar(50) NOT NULL,
  `batch_name` varchar(50) NOT NULL,
  `trimister_name` varchar(50) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routine_set`
--

INSERT INTO `routine_set` (`id`, `routine_id`, `routine_name`, `batch_name`, `trimister_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(9, 'RTN-PRE-JAN-16-1', 'January-2016 Prerequisite 1st Sem Routine', 'January-2016, Prerequisite', '1st', 'admin', '2016-09-22', '', '0000-00-00'),
(8, 'RTN-REG-JAN-16-2', 'January-2016 Regular 2nd Sem Routine', 'January-2016, Regular', '2nd', 'admin', '2016-09-22', '', '0000-00-00'),
(7, 'RTN-PRE-JAN-16-2', 'January-2016 Prerequisite 2nd Sem Routine', 'January-2016, Prerequisite', '2nd', 'admin', '2016-09-22', '', '0000-00-00'),
(10, 'RTN-REG-JAN-16-1', 'January-2016 Regular 1st Sem Routine', 'January-2016, Regular', '1st', 'admin', '2016-09-22', '', '0000-00-00'),
(11, 'RTN-PRE-JAN-16-3', 'January-2016 Prerequisite 3rd Sem Routine', 'January-2016, Prerequisite', '3rd', 'admin', '2016-09-22', '', '0000-00-00'),
(12, 'RTN-REG-JAN-16-3', 'January-2016 Regular 3rd Sem Routine', 'January-2016, Regular', '3rd', 'admin', '2016-09-22', '', '0000-00-00'),
(13, 'RTN-REG-MAY-16-1', 'May-2016 Regular 1st Sem Routine', 'May-2016, Regular', '1st', 'admin', '2016-09-26', '', '0000-00-00'),
(14, 'RTN-REG-MAY-16-2', 'May-2016 Regular 2nd Sem Routine', 'May-2016, Regular', '2nd', 'admin', '2016-09-28', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `std_notice`
--

CREATE TABLE IF NOT EXISTS `std_notice` (
`id` int(11) NOT NULL,
  `message` text NOT NULL,
  `file` varchar(100) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `std_notice`
--

INSERT INTO `std_notice` (`id`, `message`, `file`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Basic Java', 'Java_baisc(abhijit&mim).pdf', '163107', '2016-11-10', '', '0000-00-00'),
(2, 'ংফধংধভফভফংভংফমভম ভফভংফভ ফভফং ভফভংফংফ', '', '161105', '2016-12-18', '', '0000-00-00'),
(3, 'Check Trial Balance', 'SY_TRIAL_BALANCE.pdf', '161107', '2017-02-07', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `std_teacher_notice`
--

CREATE TABLE IF NOT EXISTS `std_teacher_notice` (
`id` int(11) NOT NULL,
  `teacher_id` varchar(3) NOT NULL,
  `message` text NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `std_teacher_notice`
--

INSERT INTO `std_teacher_notice` (`id`, `teacher_id`, `message`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'KMA', 'Sir, plz check my roll', '161107', '2016-09-19', '', '0000-00-00'),
(2, 'MSK', 'Sir plz check all queries thanks :)', '161101', '2016-09-19', '', '0000-00-00'),
(3, 'RTK', 'Mam my project complete', '161107', '2016-09-19', '', '0000-00-00'),
(4, 'MAY', 'eewrwerwerwer', '161107', '2016-10-18', '', '0000-00-00'),
(5, 'RTK', 'please mam check it', '161108', '2016-10-18', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`id` int(11) NOT NULL,
  `roll` varchar(20) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fatname` varchar(30) NOT NULL,
  `motname` varchar(30) NOT NULL,
  `batch` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `username` varchar(10) NOT NULL,
  `Status` varchar(5) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `roll`, `fname`, `lname`, `fatname`, `motname`, `batch`, `image`, `dob`, `username`, `Status`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(3, '161107', 'Abhijit', 'Chanda', 'Sankar Pada Chanda', 'Malati Chanda', 'January-2016, Regular', 'idd1.jpg', '0000-00-00', '161107', 'YES', 'admin', '2016-09-07', '161107', '2016-10-18'),
(4, '161131', 'Sanjida Yeasmin', 'Rikta', 'Sanwoar Hossain', 'Mst', 'January-2016, Regular', '', '0000-00-00', '161131', 'YES', 'admin', '2016-09-07', '', '0000-00-00'),
(5, '161101', 'Nahida Zannat', 'Heera', 'AAAAaaa', 'BBBaaa', 'January-2016, Regular', '', '0000-00-00', '161101', 'YES', 'admin', '2016-09-09', '161101', '2016-12-18'),
(6, '161102', 'Hasim', 'Raigan', 'BBB', 'BBB', 'January-2016, Regular', '', '0000-00-00', '161102', 'YES', 'admin', '2016-09-09', '161102', '2017-02-22'),
(7, '162101', 'AAAAAA', 'AAAAAA', 'AAAAAA', 'AAAAAA', 'January-2016, Prerequisite', '', '0000-00-00', '162101', 'YES', 'admin', '2016-09-09', '', '0000-00-00'),
(8, '162102', 'AAAAA', 'AAAAA', 'AAAAA', 'AAAAA', 'January-2016, Prerequisite', '', '0000-00-00', '162102', 'YES', 'admin', '2016-09-09', '', '0000-00-00'),
(9, '163101', 'Rahim', 'Badsha', 'AAAAAA', 'AAAAA', 'May-2016, Regular', '', '0000-00-00', '163101', 'YES', 'admin', '2016-09-09', '', '0000-00-00'),
(10, '163102', 'Parsia', 'Tasnim', 'BBBBB', 'BBBBB', 'May-2016, Regular', '', '0000-00-00', '163102', 'YES', 'admin', '2016-09-09', '', '0000-00-00'),
(11, '163103', 'Md. Kamrul', 'Islam', 'CCCCCCC', 'CCCCC', 'May-2016, Regular', '', '0000-00-00', '163103', 'YES', 'admin', '2016-09-09', '', '0000-00-00'),
(12, '161103', 'CCCCCCC', 'CCCCCCC', 'CCCCCCC', 'CCCCCCC', 'January-2016, Regular', '', '2010-12-09', '161103', 'YES', 'admin', '2016-09-10', '161103', '2016-09-10'),
(13, '161104', 'DDDDD', 'DDDDD', 'DDDDD', 'DDDDD', 'January-2016, Regular', '', '0000-00-00', '161104', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(14, '161105', 'Md. Fahad', 'Uddin', '161105', '161105', 'January-2016, Regular', '', '0000-00-00', '161105', 'YES', 'admin', '2016-09-10', '161105', '2016-12-18'),
(15, '161106', '161106', '161106', '161106', '161106', 'January-2016, Regular', '', '0000-00-00', '161106', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(16, '161108', 'Tamima Akhtar', 'Munna', '161108', '161108', 'January-2016, Regular', '', '0000-00-00', '161108', 'YES', 'admin', '2016-09-10', '161108', '2016-12-18'),
(17, '161109', 'Ramkrishna', 'Sarkar', '161109', '161109', 'January-2016, Regular', '', '0000-00-00', '161109', 'YES', 'admin', '2016-09-10', '161109', '2016-12-18'),
(18, '161110', 'Arif', 'Siddique', '161110', '161110', 'January-2016, Regular', '', '0000-00-00', '161110', 'YES', 'admin', '2016-09-10', '161110', '2017-02-06'),
(19, '161111', '161111', '161111', '161111', '161111', 'January-2016, Regular', '', '0000-00-00', '161111', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(20, '161112', '161112', '161112', '161112', '161112', 'January-2016, Regular', '', '0000-00-00', '161112', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(21, '161113', 'Mohammad', 'Osman Gani', '161113', '161113', 'January-2016, Regular', '', '0000-00-00', '161113', 'YES', 'admin', '2016-09-10', '161113', '2017-02-06'),
(22, '161114', '161114', '161114', '161114', '161114', 'January-2016, Regular', '', '0000-00-00', '161114', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(23, '161115', 'Abdullah Al', 'Ameen Zaber', '161115', '161115', 'January-2016, Regular', '', '0000-00-00', '161115', 'YES', 'admin', '2016-09-10', '161115', '2017-02-06'),
(24, '161116', '161116', '161116', '161116', '161116', 'January-2016, Regular', '', '0000-00-00', '161116', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(25, '161117', '161117', '161117', '161117', '161117', 'January-2016, Regular', '', '0000-00-00', '161117', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(26, '161118', '161118', '161118', '161118', '161118', 'January-2016, Regular', '', '0000-00-00', '161118', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(27, '161119', '161119', '161119', '161119', '161119', 'January-2016, Regular', '', '0000-00-00', '161119', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(28, '161120', '161120', '161120', '161120', '161120', 'January-2016, Regular', '', '0000-00-00', '161120', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(29, '161121', '161121', '161121', '161121', '161121', 'January-2016, Regular', '', '0000-00-00', '161121', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(30, '161122', 'Shadman', 'Shakib Khan', '161122', '161122', 'January-2016, Regular', '', '0000-00-00', '161122', 'YES', 'admin', '2016-09-10', '161122', '2017-02-06'),
(31, '161123', 'Amran', 'Hasan', '161123', '161123', 'January-2016, Regular', '', '0000-00-00', '161123', 'YES', 'admin', '2016-09-10', '161123', '2017-02-06'),
(32, '161124', 'Md. Mozammel', 'Hoque', '161124', '161124', 'January-2016, Regular', '', '0000-00-00', '161124', 'YES', 'admin', '2016-09-10', '161124', '2016-12-18'),
(33, '161125', 'Dewan Abdul', 'Aziz Chowdhury', '161125', '161125', 'January-2016, Regular', '', '0000-00-00', '161125', 'YES', 'admin', '2016-09-10', '161125', '2016-12-18'),
(34, '161126', 'Sudorshon', 'Roy', '161126', '161126', 'January-2016, Regular', '', '0000-00-00', '161126', 'YES', 'admin', '2016-09-10', '161126', '2016-12-18'),
(35, '161127', 'Mahbuba', 'Rahman', '161127', '161127', 'January-2016, Regular', '', '0000-00-00', '161127', 'YES', 'admin', '2016-09-10', '161127', '2017-02-06'),
(36, '161128', '161128', '161128', '161128', '161128', 'January-2016, Regular', '', '0000-00-00', '161128', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(37, '161129', '161129', '161129', '161129', '161129', 'January-2016, Regular', '', '0000-00-00', '161129', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(38, '161130', 'Md. Mehedi', 'Hasan', '161130', '161130', 'January-2016, Regular', '', '0000-00-00', '161130', 'YES', 'admin', '2016-09-10', '161130', '2016-12-18'),
(39, '161132', '161132', '161132', '161132', '161132', 'January-2016, Regular', '', '0000-00-00', '161132', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(40, '161133', '161133', '161133', '161133', '161133', 'January-2016, Regular', '', '0000-00-00', '161133', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(41, '161134', 'Md. Raqibul', 'Islam', '161134', '161134', 'January-2016, Regular', '', '0000-00-00', '161134', 'YES', 'admin', '2016-09-10', '161134', '2017-02-06'),
(42, '161135', '161135', '161135', '161135', '161135', 'January-2016, Regular', '', '0000-00-00', '161135', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(43, '161136', '161136', '161136', '161136', '161136', 'January-2016, Regular', '', '0000-00-00', '161136', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(44, '161137', 'Ifty', 'Hasan', '161137', '161137', 'January-2016, Regular', '', '0000-00-00', '161137', 'YES', 'admin', '2016-09-10', '161137', '2017-02-06'),
(45, '161138', '161138', '161138', '161138', '161138', 'January-2016, Regular', '', '0000-00-00', '161138', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(46, '161139', '161139', '161139', '161139', '161139', 'January-2016, Regular', '', '0000-00-00', '161139', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(47, '161140', 'Md. Rustom', 'Ali', '161140', '161140', 'January-2016, Regular', '', '0000-00-00', '161140', 'YES', 'admin', '2016-09-10', '161140', '2016-12-18'),
(48, '162103', '162103', '162103', '162103', '162103', 'January-2016, Prerequisite', '', '0000-00-00', '162103', 'YES', 'admin', '2016-09-10', '', '0000-00-00'),
(49, '164101', '164101', '164101', '164101', '164101', 'May-2016, Prerequisite', '', '0000-00-00', '164101', 'YES', 'admin', '2016-09-11', '', '0000-00-00'),
(50, '162104', '162104', '162104', '162104', '162104', 'January-2016, Prerequisite', '', '0000-00-00', '162104', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(51, '162105', '162105', '162105', '162105', '162105', 'January-2016, Prerequisite', '', '0000-00-00', '162105', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(52, '162106', '162106', '162106', '162106', '162106', 'January-2016, Prerequisite', '', '0000-00-00', '162106', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(53, '162107', '162107', '162107', '162107', '162107', 'January-2016, Prerequisite', '', '0000-00-00', '162107', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(54, '162108', '162108', '162108', '162108', '162108', 'January-2016, Prerequisite', '', '0000-00-00', '162108', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(55, '162109', '162109', '162109', '162109', '162109', 'January-2016, Prerequisite', '', '0000-00-00', '162109', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(56, '162110', '162110', '162110', '162110', '162110', 'January-2016, Prerequisite', '', '0000-00-00', '162110', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(57, '162111', '162111', '162111', '162111', '162111', 'January-2016, Prerequisite', '', '0000-00-00', '162111', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(58, '162112', '162112', '162112', '162112', '162112', 'January-2016, Prerequisite', '', '0000-00-00', '162112', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(59, '162113', '162113', '162113', '162113', '162113', 'January-2016, Prerequisite', '', '0000-00-00', '162113', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(60, '162114', '162114', '162114', '162114', '162114', 'January-2016, Prerequisite', '', '0000-00-00', '162114', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(61, '162115', '162115', '162115', '162115', '162115', 'January-2016, Prerequisite', '', '0000-00-00', '162115', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(62, '162116', '162116', '162116', '162116', '162116', 'January-2016, Prerequisite', '', '0000-00-00', '162116', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(63, '162117', '162117', '162117', '162117', '162117', 'January-2016, Prerequisite', '', '0000-00-00', '162117', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(64, '162118', '162118', '162118', '162118', '162118', 'January-2016, Prerequisite', '', '0000-00-00', '162118', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(65, '162119', '162119', '162119', '162119', '162119', 'January-2016, Prerequisite', '', '0000-00-00', '162119', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(66, '162120', '162120', '162120', '162120', '162120', 'January-2016, Prerequisite', '', '0000-00-00', '162120', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(67, '162121', '162121', '162121', '162121', '162121', 'January-2016, Prerequisite', '', '0000-00-00', '162121', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(68, '162122', '162122', '162122', '162122', '162122', 'January-2016, Prerequisite', '', '0000-00-00', '162122', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(69, '162123', '162123', '162123', '162123', '162123', 'January-2016, Prerequisite', '', '0000-00-00', '162123', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(70, '162124', '162124', '162124', '162124', '162124', 'January-2016, Prerequisite', '', '0000-00-00', '162124', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(71, '162125', '162125', '162125', '162125', '162125', 'January-2016, Prerequisite', '', '0000-00-00', '162125', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(72, '162126', '162126', '162126', '162126', '162126', 'January-2016, Prerequisite', '', '0000-00-00', '162126', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(73, '162127', '162127', '162127', '162127', '162127', 'January-2016, Prerequisite', '', '0000-00-00', '162127', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(74, '162128', '162128', '162128', '162128', '162128', 'January-2016, Prerequisite', '', '0000-00-00', '162128', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(75, '162129', '162129', '162129', '162129', '162129', 'January-2016, Prerequisite', '', '0000-00-00', '162129', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(76, '162130', '162130', '162130', '162130', '162130', 'January-2016, Prerequisite', '', '0000-00-00', '162130', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(77, '162131', '162131', '162131', '162131', '162131', 'January-2016, Prerequisite', '', '0000-00-00', '162131', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(78, '162132', '162132', '162132', '162132', '162132', 'January-2016, Prerequisite', '', '0000-00-00', '162132', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(79, '162133', '162133', '162133', '162133', '162133', 'January-2016, Prerequisite', '', '0000-00-00', '162133', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(80, '162134', '162134', '162134', '162134', '162134', 'January-2016, Prerequisite', '', '0000-00-00', '162134', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(81, '162135', '162135', '162135', '162135', '162135', 'January-2016, Prerequisite', '', '0000-00-00', '162135', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(82, '162136', '162136', '162136', '162136', '162136', 'January-2016, Prerequisite', '', '0000-00-00', '162136', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(83, '162137', '162137', '162137', '162137', '162137', 'January-2016, Prerequisite', '', '0000-00-00', '162137', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(84, '162138', '162138', '162138', '162138', '162138', 'January-2016, Prerequisite', '', '0000-00-00', '162138', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(85, '162139', '162139', '162139', '162139', '162139', 'January-2016, Prerequisite', '', '0000-00-00', '162139', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(86, '162140', '162140', '162140', '162140', '162140', 'January-2016, Prerequisite', '', '0000-00-00', '162140', 'YES', 'admin', '2016-09-18', '', '0000-00-00'),
(87, '164102', '164102', '164102', '164102', '164102', 'May-2016, Prerequisite', '', '0000-00-00', '164102', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(88, '163104', '163104', '163104', '163104', '163104', 'May-2016, Regular', '', '0000-00-00', '163104', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(89, '163105', '163105', '163105', '163105', '163105', 'May-2016, Regular', '', '0000-00-00', '163105', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(90, '163106', '163106', '163106', '163106', '163106', 'May-2016, Regular', '', '0000-00-00', '163106', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(91, '163107', '163107', '163107', '163107', '163107', 'May-2016, Regular', '', '0000-00-00', '163107', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(92, '163108', '163108', '163108', '163108', '163108', 'May-2016, Regular', '', '0000-00-00', '163108', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(93, '163109', '163109', '163109', '163109', '163109', 'May-2016, Regular', '', '0000-00-00', '163109', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(94, '163110', '163110', '163110', '163110', '163110', 'May-2016, Regular', '', '0000-00-00', '163110', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(95, '163111', '163111', '163111', '163111', '163111', 'May-2016, Regular', '', '0000-00-00', '163111', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(96, '163112', '163112', '163112', '163112', '163112', 'May-2016, Regular', '', '0000-00-00', '163112', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(97, '163113', '163113', '163113', '163113', '163113', 'May-2016, Regular', '', '0000-00-00', '163113', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(98, '163114', '163114', '163114', '163114', '163114', 'May-2016, Regular', '', '0000-00-00', '163114', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(99, '163115', '163115', '163115', '163115', '163115', 'May-2016, Regular', '', '0000-00-00', '163115', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(100, '163116', '163116', '163116', '163116', '163116', 'May-2016, Regular', '', '0000-00-00', '163116', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(101, '163117', '163117', '163117', '163117', '163117', 'May-2016, Regular', '', '0000-00-00', '163117', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(102, '163118', '163118', '163118', '163118', '163118', 'May-2016, Regular', '', '0000-00-00', '163118', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(103, '163119', '163119', '163119', '163119', '163119', 'May-2016, Regular', '', '0000-00-00', '163119', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(104, '163120', '163120', '163120', '163120', '163120', 'May-2016, Regular', '', '0000-00-00', '163120', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(105, '163121', '163121', '163121', '163121', '163121', 'May-2016, Regular', '', '0000-00-00', '163121', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(106, '163122', '163122', '163122', '163122', '163122', 'May-2016, Regular', '', '0000-00-00', '163122', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(107, '163123', '163123', '163123', '163123', '163123', 'May-2016, Regular', '', '0000-00-00', '163123', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(108, '163124', '163124', '163124', '163124', '163124', 'May-2016, Regular', '', '0000-00-00', '163124', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(109, '163125', '163125', '163125', '163125', '163125', 'May-2016, Regular', '', '0000-00-00', '163125', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(110, '163126', '163126', '163126', '163126', '163126', 'May-2016, Regular', '', '0000-00-00', '163126', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(111, '163127', '163127', '163127', '163127', '163127', 'May-2016, Regular', '', '0000-00-00', '163127', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(112, '163128', '163128', '163128', '163128', '163128', 'May-2016, Regular', '', '0000-00-00', '163128', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(113, '163129', '163129', '163129', '163129', '163129', 'May-2016, Regular', '', '0000-00-00', '163129', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(114, '163130', '163130', '163130', '163130', '163130', 'May-2016, Regular', '', '0000-00-00', '163130', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(115, '163131', '163131', '163131', '163131', '163131', 'May-2016, Regular', '', '0000-00-00', '163131', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(116, '163132', '163132', '163132', '163132', '163132', 'May-2016, Regular', '', '0000-00-00', '163132', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(117, '163133', '163133', '163133', '163133', '163133', 'May-2016, Regular', '', '0000-00-00', '163133', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(118, '163134', '163134', '163134', '163134', '163134', 'May-2016, Regular', '', '0000-00-00', '163134', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(119, '163135', '163135', '163135', '163135', '163135', 'May-2016, Regular', '', '0000-00-00', '163135', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(120, '163136', '163136', '163136', '163136', '163136', 'May-2016, Regular', '', '0000-00-00', '163136', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(121, '163137', '163137', '163137', '163137', '163137', 'May-2016, Regular', '', '0000-00-00', '163137', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(122, '163138', '163138', '163138', '163138', '163138', 'May-2016, Regular', '', '0000-00-00', '163138', 'YES', 'admin', '2016-09-24', '', '0000-00-00'),
(123, '163139', '163139', '163139', '163139', '163139', 'May-2016, Regular', '', '0000-00-00', '163139', 'YES', 'admin', '2016-09-26', '', '0000-00-00'),
(124, '163140', '163140', '163140', '163140', '163140', 'May-2016, Regular', '', '0000-00-00', '163140', 'YES', 'admin', '2016-09-26', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`id` int(11) NOT NULL,
  `sub_id` varchar(30) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `Sort` int(11) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `sub_id`, `sub_name`, `Sort`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'PMIT-6101', 'Advanced Software Engineering', 0, 'admin', '2016-08-24', 'admin', '2016-08-24'),
(2, 'PMIT-6102', 'Advanced Database Systems', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(3, 'PMIT-6104', 'Information Systems and Cyber Laws', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(4, 'PMIT-6103', 'Advanced Networking and Internet Technologies', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(5, 'PMIT-6201', 'Cloud and Mobile Computing', 0, 'admin', '2016-08-24', 'admin', '2016-09-22'),
(6, 'PMIT-6202', 'Advanced Neuroinformatics', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(7, 'PMIT-6203', 'Health Informatics', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(8, 'PMIT-6204', 'Advanced Data Mining for Biological Data', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(9, 'PMIT-6205', 'Neuronal Information Discovery', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(10, 'PMIT-6206', 'Bio-Informatics', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(11, 'PMIT-6207', 'Modeling of Biological Systems', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(12, 'PMIT-6208', 'Advanced Artificial Intelligence and Neural Networks', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(13, 'PMIT-6209', 'Database Security', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(14, 'PMIT-6210', 'Distributed Computing', 0, 'admin', '2016-08-24', '', '0000-00-00'),
(15, 'PMIT-6211', 'Data Mining & Knowledge Discovery', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(16, 'PMIT-6212', 'Management Information System', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(17, 'PMIT-6213', 'Information System Simulation and Modeling', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(18, 'PMIT-6214', 'Advanced Operating System', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(19, 'PMIT-6215', 'Information Retrieval', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(20, 'PMIT-6216', 'Distributed Databases', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(21, 'PMIT-6217', 'Wireless Networks and Mobile Computing', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(22, 'PMIT-6218', 'Advanced Networking and Internet Technology', 0, 'admin', '2016-08-28', 'admin', '2016-09-22'),
(23, 'PMIT-6219', 'Network Security', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(24, 'PMIT-6220', 'Cellular Network Planning', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(25, 'PMIT-6221', 'Fiber Optic Communication', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(26, 'PMIT-6222', 'Advanced Digital Communication', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(27, 'PMIT-6223', 'Modeling of Data Networks', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(28, 'PMIT-6224', 'Telecommunication Network Management', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(29, 'PMIT-6225', 'Mobile Application Development', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(30, 'PMIT-6226', 'Information System Analysis and Design', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(31, 'PMIT-6227', 'Software Testing and Quality Assessment', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(32, 'PMIT-6228', 'Object Oriented Software Engineering', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(33, 'PMIT-6229', 'Information System Development Ethics', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(34, 'PMIT-6230', 'Advanced Data Structures and Algorithms', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(35, 'PMIT-6231', 'Advanced Web Technologies', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(36, 'PMIT-6232', 'Web Securities', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(37, 'PMIT-6233', 'E-commerce', 0, 'admin', '2016-08-28', '', '0000-00-00'),
(38, 'PMIT-6316', 'Advanced Mathematics in ICT', 0, 'admin', '2016-09-22', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notice`
--

CREATE TABLE IF NOT EXISTS `teacher_notice` (
`id` int(11) NOT NULL,
  `batch_name` varchar(50) NOT NULL,
  `notice_name` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_notice`
--

INSERT INTO `teacher_notice` (`id`, `batch_name`, `notice_name`, `message`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(2, 'January-2016, Regular', 'Jan-16 Reg Batch E-comm', 'Agami 26 tarikh E-Commerce Exam', 'RTK', '2016-09-11', '', '0000-00-00'),
(3, 'May-2016, Regular', 'May-16 Adv. Database NTC', '<span style="font-size: medium;">Next friday te assignment joma dear last date.</span>', 'JSA', '2016-09-11', '', '0000-00-00'),
(4, 'May-2016, Prerequisite', 'May-16 Pre Adv. Database NTC', '<span style="font-size: medium;">Next friday te assignment joma dear last date.</span>', 'JSA', '2016-09-11', '', '0000-00-00'),
(5, 'January-2016, Regular', 'Advance Database Exam Sheet', 'Dear Students,<br /><br />Attend to advise please see PMIT notice board.<br /><br /><br />Best of Luck', 'JSA', '2016-12-18', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_std_notice`
--

CREATE TABLE IF NOT EXISTS `teacher_std_notice` (
`id` int(11) NOT NULL,
  `std_id` varchar(6) NOT NULL,
  `message` text NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher_std_notice`
--

INSERT INTO `teacher_std_notice` (`id`, `std_id`, `message`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(2, '161107', 'Best', 'RTK', '2016-09-19', '', '0000-00-00'),
(3, '162101', 'tmr resultt kharap', 'RTK', '2016-09-19', '', '0000-00-00'),
(4, '161102', 'As soon as possible give me your paper list', 'MAY', '2016-09-24', '', '0000-00-00'),
(5, '162102', 'You dont attend class', 'JSA', '2016-12-18', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `trimister`
--

CREATE TABLE IF NOT EXISTS `trimister` (
`id` int(11) NOT NULL,
  `trimister_name` varchar(50) NOT NULL,
  `CreateBy` varchar(30) NOT NULL,
  `CreateDate` date NOT NULL,
  `UpdateBy` varchar(30) NOT NULL,
  `UpdateeDate` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trimister`
--

INSERT INTO `trimister` (`id`, `trimister_name`, `CreateBy`, `CreateDate`, `UpdateBy`, `UpdateeDate`) VALUES
(1, 'Prerequisite', 'admin', '2016-08-24', '', '0000-00-00'),
(2, '1st', 'admin', '2016-08-24', '', '0000-00-00'),
(3, '2nd', 'admin', '2016-08-24', 'admin', '2016-08-24'),
(4, '3rd', 'admin', '2016-08-24', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `CreateDate` date NOT NULL,
  `last_login_date` datetime NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `user_status` int(1) NOT NULL COMMENT '1=power / super user; 2 = normal user',
  `status` int(11) NOT NULL COMMENT '0= inactive; 1=active; 13 = delete'
) ENGINE=MyISAM AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `CreateDate`, `last_login_date`, `last_login_ip`, `user_status`, `status`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00', '2015-06-08 13:25:33', '::1', 1, 1),
(3, 'Faculty', 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', '2016-08-23', '0000-00-00 00:00:00', '', 0, 0),
(5, 'Faculty', 'amar', '202cb962ac59075b964b07152d234b70', '2016-08-23', '0000-00-00 00:00:00', '', 0, 0),
(6, 'Faculty', 'KMA', '4f835cb6af6698d2a8b237aa551a9d2e', '2016-08-24', '0000-00-00 00:00:00', '', 0, 0),
(7, 'Faculty', 'FBT', '49af3b640275c9b552a5f3f3d96a6062', '2016-08-24', '0000-00-00 00:00:00', '', 0, 0),
(8, 'Faculty', 'FKP', '1de5e4a67c73b1a72598d9f477d8b5c1', '2016-08-24', '0000-00-00 00:00:00', '', 0, 0),
(9, 'Faculty', 'MMS', 'd55977c223a588fdc11aff690a068b03', '2016-08-24', '0000-00-00 00:00:00', '', 0, 0),
(10, 'Faculty', 'JSA', '021e433027c8a6481bccc04d3cada47a', '2016-08-24', '0000-00-00 00:00:00', '', 0, 0),
(11, 'Faculty', 'MSK', '68b38c3a81772f89eec6834dd51be0f6', '2016-08-24', '0000-00-00 00:00:00', '', 0, 0),
(12, 'Faculty', 'MWZ', '005f9c095cd48af43aa06c732f04c2e7', '2016-08-24', '0000-00-00 00:00:00', '', 0, 0),
(13, 'Faculty', 'MSI', '3e4c832809293017aadea2166cd11554', '2016-08-24', '0000-00-00 00:00:00', '', 0, 0),
(14, 'Faculty', 'RTK', '5a2965be6a5fa63212ad16f5c254f62a', '2016-08-31', '0000-00-00 00:00:00', '', 0, 0),
(15, 'Faculty', 'MAY', '9a4b6f884971dcb4a5172876b335baab', '2016-08-31', '0000-00-00 00:00:00', '', 0, 0),
(18, 'Student', '161107', '7c098aa3943e36f36c4ebae0a7807b94', '2016-09-07', '0000-00-00 00:00:00', '', 0, 0),
(19, 'Student', '161131', 'db5f56b515bf9d7699364b6642f71b5d', '2016-09-07', '0000-00-00 00:00:00', '', 0, 0),
(20, 'Student', '161101', 'ad70a449a504a145c44dbd5228b16c34', '2016-09-09', '0000-00-00 00:00:00', '', 0, 0),
(21, 'Student', '161102', 'ad2965656853a9c15c7179f5740852cf', '2016-09-09', '0000-00-00 00:00:00', '', 0, 0),
(22, 'Student', '162101', '8095e640b1088676e43264eb470b4806', '2016-09-09', '0000-00-00 00:00:00', '', 0, 0),
(23, 'Student', '162102', 'b936fbfe7249b23e195abd090dd6f1bb', '2016-09-09', '0000-00-00 00:00:00', '', 0, 0),
(24, 'Student', '163101', '10f2329b147c2124319f97901556e5a5', '2016-09-09', '0000-00-00 00:00:00', '', 0, 0),
(25, 'Student', '163102', '9ecb0574f09939fbe65261923635beca', '2016-09-09', '0000-00-00 00:00:00', '', 0, 0),
(26, 'Student', '163103', 'd333a00f547c1f0cba097ee3e5bbac25', '2016-09-09', '0000-00-00 00:00:00', '', 0, 0),
(27, 'Student', '161103', 'c6e0511febe73b0911198c2b79d27ec0', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(28, 'Student', '161104', '452cfed3248963c84a15126a26dbf527', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(29, 'Student', '161105', 'e1161a3e62c78d84c12300ab00ff95de', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(30, 'Student', '161106', '92d9f2d744c6f5b00887b443ef3c36d7', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(32, 'Student', '161108', 'ea76b14de538fb4c6811d480180e42b7', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(33, 'Student', '161109', 'a8e3e9812fe97d4ce01aae76892904e2', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(34, 'Student', '161110', '35bfbde074842e81aeff8a54ebe60b98', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(35, 'Student', '161111', 'd3e4505b3eef263ceda230329632eb06', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(36, 'Student', '161112', 'b5ede709128b36c08bab0b11ac195130', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(37, 'Student', '161113', 'bd377bf06ecb56a1d2f9eed9e404e86f', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(38, 'Student', '161114', 'fe1c6647322269bf19754d83e6cdc59d', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(39, 'Student', '161115', 'c90106ce4745180314ac307fd56720b8', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(40, 'Student', '161116', 'dc4b415f278aec1b140e3db97d3d1b02', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(41, 'Student', '161117', 'ae0f49ce2fc976ab30dd263afed9d95b', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(42, 'Student', '161118', 'c3ec5c5ea3126e5da81bd74aaca26646', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(43, 'Student', '161119', 'b00c7944155542e28739ae52b9ff47f8', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(44, 'Student', '161120', '259f8526c154f86da72d67b9ce56c639', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(45, 'Student', '161121', '65a129e4a0c80e1f493aa34250e1ea0f', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(46, 'Student', '161122', '49805d0757ff81d6dfdf4112372ef5a5', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(47, 'Student', '161123', '39c1f8f80e0dc9981e388f13f79b322a', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(48, 'Student', '161124', 'de7090ad6963af95bbc1b2190f3b8085', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(49, 'Student', '161125', '0f5578cc4e21570888ab317aee059867', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(50, 'Student', '161126', 'c7c5d1c481347d660b5c8835e6c965b2', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(51, 'Student', '161127', '165c04f32dcd6703909c1ce74aa7c1c5', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(52, 'Student', '161128', 'd2a3810f8e0fb576e4f600e5519c1130', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(53, 'Student', '161129', '5aa45ad14774405e13f574cedf244d94', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(54, 'Student', '161130', '2c94f01e1c33bbb5f604e4206c5b1071', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(55, 'Student', '161132', '5f9559dad5d3b2be80be3b0454bdef78', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(56, 'Student', '161133', 'c96cc8ecfa8c15589970a29e0637dfa5', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(57, 'Student', '161134', '939cd8cf28298615c8d3f0578fe9fea7', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(58, 'Student', '161135', '42f1bb595544e14d846cceb4ea8aec3a', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(59, 'Student', '161136', '4542e40df7546427b7850befd2d8cf06', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(60, 'Student', '161137', '03054394a0d0fd41102a713cca60c9b3', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(61, 'Student', '161138', '13e38520cbdd42fba8af3a1faea3f6aa', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(62, 'Student', '161139', 'db2f887d978903182402a8ccb846dc69', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(63, 'Student', '161140', '243526324c99351c459d520c701b3f38', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(64, 'Student', '162103', '022ab423f035b47ac0af5046c51ed093', '2016-09-10', '0000-00-00 00:00:00', '', 0, 0),
(65, 'Student', '164101', '8d31faacf84d7ba4a6fe6df4f95b04f3', '2016-09-11', '0000-00-00 00:00:00', '', 0, 0),
(66, 'Student', '162104', 'bc11aa63d5a69b1b0f90c34fd2c62102', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(67, 'Student', '162105', 'f6ecfe04048945dcf8339e985b850e37', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(68, 'Student', '162106', 'd610577a281e441f288d78c63aaac12b', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(69, 'Student', '162107', 'e097c1b74511a5551161dbcc74afd687', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(70, 'Student', '162108', 'ca4526e7d1c127591353d8df34979c01', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(71, 'Student', '162109', '6aff3d3b87d93508a77ab3a076f1ec2c', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(72, 'Student', '162110', 'a75943dcb4e7f6f694ab2a7204f0cbd2', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(73, 'Student', '162111', 'f827705992de50fc0b64435952efdf1c', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(74, 'Student', '162112', '984a1368247673c9d71851ee0457e788', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(75, 'Student', '162113', '3eded7d2c63d1195ac3e74d114385931', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(76, 'Student', '162114', '0e3ff6860454d0118de68f4bceea4129', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(77, 'Student', '162115', 'c164f0af3316227529a10f7168051bbc', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(78, 'Student', '162116', '1199c4654170f33208d7932d7d2587a5', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(79, 'Student', '162117', 'daae65b17288b46e0f9fa1182df66990', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(80, 'Student', '162118', '8bba34706dc54b6ccd6f5f6b3c5992fa', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(81, 'Student', '162119', '372306beb0fb42b35b70c932599ac7f4', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(82, 'Student', '162120', '0a152fc77c2504135d1ce9792ac9a519', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(83, 'Student', '162121', '99afbebfff8e587b545e54d5f3dd7df8', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(84, 'Student', '162122', '85bf230ba52f61fff8d15072d7d3f3cf', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(85, 'Student', '162123', '71d4ead305ec8608a86afc36bf8a4c41', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(86, 'Student', '162124', 'ccc5ae7ea5de9c49d2a0014eac243af5', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(87, 'Student', '162125', '662067cb7aa1cd665c05325bc6ae27e3', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(88, 'Student', '162126', '4c09370782c52f34e0310694b40b3af9', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(89, 'Student', '162127', '1a0d683d688dcbc42a548bb4955d665e', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(90, 'Student', '162128', '83e8f52321b00638dfe88b78c5fffd04', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(91, 'Student', '162129', '2d6ad12203be79db0434f4882c64f98c', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(92, 'Student', '162130', '98a03ab01a490fcf7e56d83d87b2368a', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(93, 'Student', '162131', '6d837253bd2a7939c68c010cf5b6d28e', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(94, 'Student', '162132', 'bc631b4b178c5cdd7c4c90b3d0f2ad5a', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(95, 'Student', '162133', 'c64c6db7359cf4ec02c8001ecadb0bc3', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(96, 'Student', '162134', '612312c639dd48941cc0320e83a95220', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(97, 'Student', '162135', '6c888949bf0c51b442d39bcc43b08676', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(98, 'Student', '162136', 'd2d02f32f6d8aa7dacd7f0442b6053b3', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(99, 'Student', '162137', '78e70c5071aed68a917e38cfb9965226', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(100, 'Student', '162138', 'acf93270fa1042f42c1ab3c87a8f3c16', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(101, 'Student', '162139', 'ae173f8b56b2d8e0f8943f48d0c062e9', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(102, 'Student', '162140', '7909d2c17915f9a17c651ae5407933d8', '2016-09-18', '0000-00-00 00:00:00', '', 0, 0),
(103, 'Student', '164102', 'abeb875b0ca43115be20e53090095df1', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(104, 'Student', '163104', 'bfb95e3d563d11f38cb4cef227ff22e4', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(105, 'Student', '163105', '6374078dda4d2282880e4d3f5cfb1966', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(106, 'Student', '163106', '3cc0cd4c37b9577792de1a43d8514fba', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(107, 'Student', '163107', '67baa637b0629a206ccf806db9e42a12', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(108, 'Student', '163108', '5b57b2f48ab3fc410ac2827457a954a7', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(109, 'Student', '163109', '64d954a7fa48963e3d4c4bdd897d94e5', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(110, 'Student', '163110', '00c1e324f430fb49f5f31bbc4e52291d', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(111, 'Student', '163111', '9d998b980019bf5cb605c1e020049ac4', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(112, 'Student', '163112', 'dd848d621ceae3eac28a2644d4ca8442', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(113, 'Student', '163113', 'eac02989500c28b20989942e59addd74', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(114, 'Student', '163114', '38dc3455925a66ac6becc7ba4fae2a1b', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(115, 'Student', '163115', '2dfae479bdc0e53abd333ade9d855c99', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(116, 'Student', '163116', '851c9973e1b4215c05298ab9a0c0fbd7', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(117, 'Student', '163117', '509e2df19b9539b6feb63e375650a9de', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(118, 'Student', '163118', 'f1a013888af2044b84aa638a290a8d3a', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(119, 'Student', '163119', '76563d0f03e3dc56ddb0c6f7c6efe6cc', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(120, 'Student', '163120', 'a98b9d9a230b53295208b937fecf3972', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(121, 'Student', '163121', 'ef3c47e7c417ed3626d8f87c2b067d3c', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(122, 'Student', '163122', '6bdc5156cfd14581417061498f0aa9d4', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(123, 'Student', '163123', 'd856edc090d8d4e5d4de68ab4076b29c', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(124, 'Student', '163124', 'b79df41a2ca03bbe880f41a94406a039', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(125, 'Student', '163125', 'e4074fdde0f28f2b8f7830ef79545901', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(126, 'Student', '163126', 'c4aed7e41ac9ae397eacd4c001c47138', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(127, 'Student', '163127', 'a181f030fedf685910738330867c18e6', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(128, 'Student', '163128', '69d0a8426569f90aae784c63917c1f2f', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(129, 'Student', '163129', '2bbf5119c6496de1c278b301da0df6b9', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(130, 'Student', '163130', '8e68934a58ef498ba07cfbe442bf4b04', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(131, 'Student', '163131', '99c43151627943343631de3ec9b6814e', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(132, 'Student', '163132', 'de700227c6a164c4c581434ac2f8afc9', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(133, 'Student', '163133', '2b0bf98f30477b7ec2bf27fb5c1b3a65', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(134, 'Student', '163134', '406e30c673b7d85fe8a4196de2aee872', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(135, 'Student', '163135', 'd00b1cf372c68f477e7274f201323931', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(136, 'Student', '163136', 'b49cbcb241cd70f42e1fd7e8adb75c71', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(137, 'Student', '163137', '8d925f889d0080125dfb3396b1e5a4a8', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(138, 'Student', '163138', 'b60d6ae7860f8f2e7923fb4c5883b32e', '2016-09-24', '0000-00-00 00:00:00', '', 0, 0),
(139, 'Student', '163139', '41843e478b83c18e2eb0335978d22aac', '2016-09-26', '0000-00-00 00:00:00', '', 0, 0),
(140, 'Student', '163140', 'e8b7f88141685f77ad3a44f446c4a830', '2016-09-26', '0000-00-00 00:00:00', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bod`
--
ALTER TABLE `bod`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exist_user`
--
ALTER TABLE `exist_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_journal`
--
ALTER TABLE `faculty_journal`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `init_result`
--
ALTER TABLE `init_result`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine_set`
--
ALTER TABLE `routine_set`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `routine_id` (`routine_id`);

--
-- Indexes for table `std_notice`
--
ALTER TABLE `std_notice`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_teacher_notice`
--
ALTER TABLE `std_teacher_notice`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`roll`), ADD UNIQUE KEY `id` (`id`), ADD UNIQUE KEY `roll` (`roll`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_notice`
--
ALTER TABLE `teacher_notice`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_std_notice`
--
ALTER TABLE `teacher_std_notice`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trimister`
--
ALTER TABLE `trimister`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `bod`
--
ALTER TABLE `bod`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `exist_user`
--
ALTER TABLE `exist_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `faculty_journal`
--
ALTER TABLE `faculty_journal`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `init_result`
--
ALTER TABLE `init_result`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=365;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=920;
--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `routine_set`
--
ALTER TABLE `routine_set`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `std_notice`
--
ALTER TABLE `std_notice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `std_teacher_notice`
--
ALTER TABLE `std_teacher_notice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `teacher_notice`
--
ALTER TABLE `teacher_notice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher_std_notice`
--
ALTER TABLE `teacher_std_notice`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `trimister`
--
ALTER TABLE `trimister`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=141;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
