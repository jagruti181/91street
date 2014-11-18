-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2014 at 09:29 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `91`
--
CREATE DATABASE IF NOT EXISTS `91` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `91`;

-- --------------------------------------------------------

--
-- Table structure for table `accesslevel`
--

CREATE TABLE IF NOT EXISTS `accesslevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `accesslevel`
--

INSERT INTO `accesslevel` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'Brand'),
(4, 'FrontendUser'),
(3, 'Shop');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `pricerange` int(11) NOT NULL,
  `video` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `facebookpage` varchar(255) NOT NULL,
  `twitterpage` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `pininterest` varchar(255) NOT NULL,
  `googleplus` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `blog` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `pricerange`, `video`, `description`, `website`, `facebookpage`, `twitterpage`, `logo`, `pininterest`, `googleplus`, `instagram`, `blog`) VALUES
(1, 'Nike', 1, 'https://www.youtube.com/watch?v=9hRNFgSLLAQ', 'ddd', 'website', 'facebook', 'twpage', 'download_(2).png', '', '', '', ''),
(2, 'Woodland', 2, 'https://www.youtube.com/watch?v=9hRNFgSLLAQ', '', '', '', '', 'Woodland-Logo1.jpeg', '', '', '', ''),
(3, 'Adidas', 3, 'https://www.youtube.com/watch?v=9hRNFgSLLAQ', 'a', 'web', 'fb', 'tw', 'download1.png', '', '', '', ''),
(38, 'Pepe Jeans', 0, '', '', '', '', '', 'download_(1).png', '', '', '', ''),
(42, 'Cygnus', 0, '', '', '', '', '', 'images1.jpg', '', '', '', ''),
(43, 'Cinepolis', 0, '', '', '', '', '', 'download.jpg', '', '', '', ''),
(44, 'Michael Kors', 0, '', '', '', '', '', 'download_(1).jpg', '', '', '', ''),
(45, 'Holii', 0, '', '', '', '', '', 'download_(2).jpg', '', '', '', ''),
(46, 'Sunglass Hut', 0, '', '', '', '', '', 'images_(1).jpg', '', '', '', ''),
(47, 'Van Heusen', 0, '', '', '', '', '', 'download_(3).jpg', '', '', '', ''),
(48, 'Zuni', 0, '', '', '', '', '', 'download_(4).jpg', '', '', '', ''),
(49, 'Smaaash', 0, '', '', '', '', '', 'download_(5).jpg', '', '', '', ''),
(50, 'Ruff', 0, '', '', '', '', '', 'images_(2).jpg', '', '', '', ''),
(51, 'Mothercare', 0, '', '', '', '', '', 'images2.jpg', '', '', '', ''),
(52, 'Mom and Me', 0, '', '', '', '', '', 'download1.jpg', '', '', '', ''),
(53, 'Vero Moda', 0, '', '', '', '', '', 'download_(1)1.jpg', '', '', '', ''),
(54, 'Reebok', 0, '', '', '', '', '', 'download_(2)1.jpg', '', '', '', ''),
(55, 'Hidesign', 0, '', '', '', '', '', 'download_(3)1.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `brandcategory`
--

CREATE TABLE IF NOT EXISTS `brandcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=548 ;

--
-- Dumping data for table `brandcategory`
--

INSERT INTO `brandcategory` (`id`, `brandid`, `categoryid`) VALUES
(8, 16, 4),
(9, 16, 9),
(10, 16, 11),
(11, 16, 5),
(12, 16, 6),
(13, 16, 12),
(14, 16, 13),
(20, 18, 4),
(21, 18, 9),
(22, 18, 4),
(23, 18, 9),
(24, 18, 11),
(25, 18, 5),
(26, 18, 6),
(38, 30, 4),
(39, 30, 9),
(40, 30, 10),
(41, 30, 11),
(42, 30, 5),
(43, 30, 6),
(44, 31, 4),
(45, 31, 5),
(46, 31, 6),
(47, 31, 12),
(48, 32, 4),
(49, 32, 9),
(50, 32, 11),
(51, 32, 5),
(52, 32, 12),
(53, 32, 13),
(54, 32, 14),
(55, 32, 10),
(56, 32, 19),
(57, 32, 6),
(58, 32, 15),
(59, 33, 4),
(60, 33, 10),
(61, 33, 12),
(62, 33, 14),
(63, 34, 4),
(64, 34, 10),
(65, 34, 11),
(66, 34, 5),
(67, 34, 19),
(68, 34, 6),
(69, 34, 12),
(70, 34, 14),
(71, 34, 15),
(143, 35, 35),
(144, 35, 4),
(145, 35, 10),
(146, 35, 11),
(147, 35, 17),
(148, 35, 5),
(149, 35, 19),
(150, 35, 6),
(151, 35, 12),
(152, 35, 13),
(153, 35, 14),
(169, 36, 36),
(170, 36, 4),
(171, 36, 10),
(172, 36, 17),
(173, 36, 5),
(174, 36, 19),
(175, 36, 12),
(176, 36, 15),
(206, 39, 39),
(207, 39, 4),
(208, 39, 10),
(209, 39, 11),
(210, 39, 18),
(211, 39, 5),
(212, 39, 19),
(213, 39, 6),
(214, 39, 12),
(215, 39, 14),
(216, 39, 15),
(217, 39, 0),
(236, 40, 40),
(237, 40, 4),
(238, 40, 9),
(239, 40, 0),
(299, 3, 3),
(300, 3, 24),
(301, 3, 35),
(302, 3, 38),
(303, 3, 39),
(304, 3, 26),
(305, 3, 40),
(306, 3, 41),
(307, 3, 52),
(308, 3, 53),
(309, 3, 0),
(316, 1, 1),
(317, 1, 24),
(318, 1, 33),
(319, 1, 35),
(320, 1, 38),
(321, 1, 39),
(322, 1, 26),
(323, 1, 40),
(324, 1, 41),
(325, 1, 52),
(326, 1, 53),
(327, 1, 54),
(328, 1, 0),
(329, 2, 2),
(330, 2, 24),
(331, 2, 33),
(332, 2, 38),
(333, 2, 39),
(334, 2, 49),
(335, 2, 25),
(336, 2, 42),
(337, 2, 43),
(338, 2, 59),
(339, 2, 61),
(340, 2, 26),
(341, 2, 40),
(342, 2, 41),
(343, 2, 50),
(344, 2, 54),
(345, 2, 0),
(346, 38, 38),
(347, 38, 24),
(348, 38, 33),
(349, 38, 39),
(350, 38, 49),
(351, 38, 25),
(352, 38, 42),
(353, 38, 43),
(354, 38, 57),
(355, 38, 58),
(356, 38, 59),
(357, 38, 0),
(358, 42, 31),
(359, 42, 74),
(360, 42, 75),
(361, 42, 0),
(362, 43, 30),
(363, 43, 80),
(364, 43, 0),
(365, 44, 25),
(366, 44, 43),
(367, 44, 59),
(368, 44, 60),
(369, 44, 61),
(370, 44, 0),
(377, 46, 25),
(378, 46, 42),
(379, 46, 43),
(380, 46, 58),
(381, 46, 0),
(382, 47, 24),
(383, 47, 34),
(384, 47, 38),
(385, 47, 39),
(386, 47, 0),
(387, 48, 31),
(388, 48, 73),
(389, 48, 78),
(390, 48, 0),
(391, 49, 30),
(392, 49, 79),
(393, 49, 0),
(394, 50, 29),
(395, 50, 83),
(396, 50, 0),
(416, 51, 51),
(417, 51, 28),
(418, 51, 71),
(419, 51, 29),
(420, 51, 82),
(421, 51, 86),
(422, 51, 0),
(423, 52, 28),
(424, 52, 71),
(425, 52, 29),
(426, 52, 82),
(427, 52, 83),
(428, 52, 86),
(429, 52, 0),
(430, 53, 24),
(431, 53, 33),
(432, 53, 39),
(433, 53, 46),
(434, 53, 25),
(435, 53, 43),
(436, 53, 61),
(437, 53, 26),
(438, 53, 41),
(439, 53, 55),
(440, 53, 0),
(441, 54, 24),
(442, 54, 35),
(443, 54, 38),
(444, 54, 39),
(445, 54, 26),
(446, 54, 40),
(447, 54, 41),
(448, 54, 52),
(449, 54, 53),
(450, 54, 54),
(451, 54, 27),
(452, 54, 62),
(453, 54, 63),
(454, 54, 64),
(455, 54, 65),
(456, 54, 0),
(457, 55, 25),
(458, 55, 42),
(459, 55, 43),
(460, 55, 59),
(461, 55, 60),
(462, 55, 61),
(463, 55, 0),
(540, 45, 45),
(541, 45, 25),
(542, 45, 43),
(543, 45, 59),
(544, 45, 60),
(545, 45, 61),
(546, 45, 28),
(547, 45, 0);

-- --------------------------------------------------------

--
-- Table structure for table `brandlike`
--

CREATE TABLE IF NOT EXISTS `brandlike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `like` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=192 ;

--
-- Dumping data for table `brandlike`
--

INSERT INTO `brandlike` (`id`, `user`, `brand`, `like`) VALUES
(1, 1, 1, 1),
(39, 28, 3, 0),
(48, 0, 1, 0),
(97, 28, 1, 0),
(135, 28, 2, 1),
(165, 49, 1, 1),
(184, 50, 2, 1),
(185, 50, 1, 1),
(186, 49, 2, 0),
(187, 51, 2, 1),
(191, 0, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent`, `status`) VALUES
(24, 'Clothing', 0, 1),
(25, 'Fashion Accessories', 0, 1),
(26, 'Footwear', 0, 1),
(27, 'Sports and Fitness', 0, 1),
(28, 'Health and Beauty Care', 0, 1),
(29, 'Kids', 0, 1),
(30, 'Entertainment', 0, 1),
(31, 'Jewellery', 0, 1),
(32, 'Electronics and Accessories', 0, 1),
(33, 'Casual Wear', 24, 1),
(34, 'Formal Wear', 24, 1),
(35, 'Sports Wear', 24, 1),
(36, 'Traditional Wear', 24, 1),
(37, 'Ethnic Wear', 24, 1),
(38, 'Men', 24, 1),
(39, 'Women', 24, 1),
(40, 'Men', 26, 1),
(41, 'Women', 26, 1),
(42, 'Men', 25, 1),
(43, 'Women', 25, 1),
(44, 'Men', 28, 1),
(45, 'Women', 28, 1),
(46, 'Party Wear', 24, 1),
(47, 'Sleep Wear', 24, 1),
(48, 'Beach Wear', 24, 1),
(49, 'Winter Wear', 24, 1),
(50, 'Casual Wear', 26, 1),
(51, 'Formal Wear', 26, 1),
(52, 'Sports Wear', 26, 1),
(53, 'Flip Flops', 26, 1),
(54, 'Sandals', 26, 1),
(55, 'Heels', 26, 1),
(56, 'Ballerinas', 26, 1),
(57, 'Watches', 25, 1),
(58, 'Sunglasses', 25, 1),
(59, 'Wallets', 25, 1),
(60, 'Clutches', 25, 1),
(61, 'Handbags', 25, 1),
(62, 'Sports Wear', 27, 1),
(63, 'Sports Gear', 27, 1),
(64, 'Gym Gear', 27, 1),
(65, 'Track Pants', 27, 1),
(66, 'Skin Care', 28, 1),
(67, 'Hair Care', 28, 1),
(68, 'Body Care', 28, 1),
(69, 'Bath and Spa', 28, 1),
(70, 'Oral Care', 28, 1),
(71, 'Maternity Care', 28, 1),
(72, 'Women Hygiene', 28, 1),
(73, 'Imitation Jewellery', 31, 1),
(74, 'Diamonds', 31, 1),
(75, 'Gold', 31, 1),
(76, 'Platinum', 31, 1),
(77, 'Silver', 31, 1),
(78, 'Accessories', 31, 1),
(79, 'Gaming Zone', 30, 1),
(80, 'Movies', 30, 1),
(81, 'Stand-Up Comedy', 30, 1),
(82, 'Baby Care', 29, 1),
(83, 'Clothing', 29, 1),
(85, 'Footwear', 29, 1),
(86, 'Infant Care', 29, 1),
(87, 'Sports', 29, 1),
(88, 'Games', 29, 1),
(91, 'Mobiles', 32, 1),
(92, 'Laptops', 32, 1),
(93, 'Mobile Accessories', 32, 1),
(94, 'Computer Accessories', 32, 1),
(95, 'Televisions', 32, 1),
(96, 'Home Appliances', 32, 1),
(97, 'Kitchen Appliances', 32, 1),
(98, 'Cameras', 32, 1),
(99, 'Camera Accessories', 32, 1),
(100, 'Audio and Video', 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorysubcategory`
--

CREATE TABLE IF NOT EXISTS `categorysubcategory` (
  `brandcategoryid` int(11) NOT NULL,
  `subcategoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorysubcategory`
--

INSERT INTO `categorysubcategory` (`brandcategoryid`, `subcategoryid`) VALUES
(4, 1),
(4, 2),
(1, 2),
(3, 1),
(3, 3),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(7, 'Delhi NCR'),
(8, 'Hyderabad'),
(9, 'Kolkata'),
(10, 'Pune'),
(11, 'Ahmedabad'),
(12, 'Chennai'),
(13, 'Bangalore'),
(14, 'Mumbai '),
(15, 'Mumbai'),
(16, 'dadar');

-- --------------------------------------------------------

--
-- Table structure for table `eventlog`
--

CREATE TABLE IF NOT EXISTS `eventlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `eventlog`
--

INSERT INTO `eventlog` (`id`, `event`, `user`, `description`, `timestamp`) VALUES
(1, 1, 1, 'Event Created', '2014-05-12 10:46:24'),
(2, 1, 1, 'Event Edited', '2014-05-12 10:47:43'),
(3, 1, 1, 'Event Category ,Topic updated', '2014-05-12 11:16:19'),
(4, 1, 1, 'Event Category ,Topic updated', '2014-05-12 11:16:51'),
(5, 3, 3, 'Event Edited', '2014-08-08 08:45:13'),
(6, 3, 3, 'Mall Edited', '2014-08-08 08:47:08'),
(7, 3, 3, 'Mall Edited', '2014-08-08 08:47:32'),
(8, 3, 3, 'Mall Edited', '2014-08-08 08:52:55'),
(9, 3, 3, 'City Edited', '2014-08-08 10:00:26'),
(10, 3, 3, 'City Edited', '2014-08-08 10:01:10'),
(11, 4, 4, 'City Edited', '2014-08-08 10:03:23'),
(12, 8, 8, 'City Edited', '2014-08-09 05:28:14'),
(13, 8, 8, 'Location Edited', '2014-08-09 05:30:25'),
(14, 4, 4, 'Location Edited', '2014-08-09 05:30:40'),
(15, 11, 11, 'Location Edited', '2014-08-09 05:49:23'),
(16, 8, 8, 'Location Edited', '2014-08-09 05:50:01'),
(17, 3, 3, 'Brand Edited', '2014-08-09 06:32:06'),
(18, 3, 3, 'Brand Edited', '2014-08-09 06:32:26'),
(19, 3, 3, 'Brand Edited', '2014-08-09 09:57:03'),
(20, 8, 8, 'Location Edited', '2014-08-11 05:14:59'),
(21, 1, 1, 'Mall Edited', '2014-08-11 09:52:00'),
(22, 32, 32, 'Brand Edited', '2014-08-19 05:28:20'),
(23, 32, 32, 'Brand Edited', '2014-08-19 05:28:55'),
(24, 1, 1, 'City Edited', '2014-08-21 08:34:32'),
(25, 12, 12, 'Location Edited', '2014-08-21 08:36:11'),
(26, 2, 2, 'Mall Edited', '2014-08-21 10:40:28'),
(27, 2, 2, 'Mall Edited', '2014-08-21 10:40:59'),
(28, 4, 4, 'Mall Edited', '2014-08-21 11:45:56'),
(29, 4, 4, 'Mall Edited', '2014-08-21 11:46:36'),
(30, 4, 4, 'Mall Edited', '2014-08-21 11:47:39'),
(31, 4, 4, 'Mall Edited', '2014-08-21 11:47:55'),
(32, 4, 4, 'Mall Edited', '2014-08-21 11:48:19'),
(33, 13, 13, 'Location Edited', '2014-08-21 12:12:46'),
(34, 13, 13, 'Location Edited', '2014-08-21 12:13:09'),
(35, 8, 8, 'Location Edited', '2014-08-22 05:52:40'),
(36, 7, 7, 'City Edited', '2014-10-14 14:33:27'),
(37, 0, 0, 'Mall Edited', '2014-10-17 11:44:25'),
(38, 121, 121, 'Mall Edited', '2014-10-17 11:47:26'),
(39, 121, 121, 'Mall Edited', '2014-10-17 12:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE IF NOT EXISTS `floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floorno` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`id`, `floorno`) VALUES
(1, 'Lower Ground Floor'),
(2, 'Upper Ground Floor'),
(3, 'Ground Floor'),
(4, 'First Floor'),
(5, 'Second Floor'),
(6, 'Third Floor'),
(7, 'Fourth Floor'),
(8, 'Fifth Floor'),
(9, 'Sixth Floor'),
(10, 'Seventh Floor'),
(11, '1st');

-- --------------------------------------------------------

--
-- Table structure for table `imagegallery`
--

CREATE TABLE IF NOT EXISTS `imagegallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `brandid` int(11) NOT NULL,
  `storeid` int(11) NOT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `imagegallery`
--

INSERT INTO `imagegallery` (`id`, `image`, `description`, `brandid`, `storeid`, `like`) VALUES
(5, 'logo1.png', 'cdcsdc', 1, 0, 0),
(7, 'left96.png', 'scasdca', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pincode` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `cityid`, `name`, `pincode`) VALUES
(1, 4, 'east', 0),
(2, 2, 'west', 0),
(4, 4, 'avi1', 0),
(7, 4, 'demo', 0),
(8, 4, 'abcdef', 0),
(9, 2, 'abcdefg', 0),
(10, 4, 'bandra', 0),
(11, 1, 'Dadar1', 0),
(12, 1, 'Ghatkopar (west)', 0),
(13, 4, 'test123', 410200),
(14, 4, 'demo', 123),
(15, 4, 'abcdmmm', 1234567),
(16, 5, 'wwweeesssttt', 0),
(17, 14, 'Kurla (west)', 0),
(18, 14, 'Thane (west)', 0),
(19, 14, 'Vashi', 0),
(20, 14, 'Malad (west),  Goregaon (west)', 0),
(21, 14, 'Malad (west)', 0),
(22, 14, 'Goregaon (east)', 0),
(23, 14, 'Lower Parel (west)', 0),
(24, 14, 'Bhandup (west)', 0),
(25, 14, 'Kandivali (east)', 0),
(26, 14, 'Andheri (west)', 0),
(27, 14, 'Nariman Point', 0),
(28, 14, 'Worli', 0),
(29, 11, 'Vastrapur', 0),
(30, 11, 'SG Road', 0),
(31, 11, 'Motera', 0),
(32, 11, 'Satellite', 0),
(33, 13, 'Koramangala', 0),
(34, 13, 'Magrath Road', 0),
(35, 13, 'Whitefield', 0),
(36, 13, 'Malleswaram', 0),
(37, 13, 'Brigade Gateway', 0),
(38, 13, 'Vittal Mallya Road', 0),
(39, 7, 'Gurgaon', 0),
(40, 7, 'Vasant Kunj', 0),
(41, 7, 'Andrews Ganj', 0),
(42, 7, 'Palam Vihar', 0),
(43, 7, 'Rajouri Garden', 0),
(44, 7, 'Saket', 0),
(45, 7, 'Kirti Nagar', 0),
(46, 7, 'Subhash Nagar', 0),
(47, 7, 'Sector 38, Noida', 0),
(48, 8, 'Somajiguda', 0),
(49, 8, 'Banjara Hills', 0),
(50, 8, 'Punjagutta Road', 0),
(51, 8, 'Madhapur', 0),
(52, 9, 'Howrah', 0),
(53, 9, 'Newtown', 0),
(54, 9, 'Salt Lake City', 0),
(55, 9, 'Bhowanipore', 0),
(56, 9, 'Kankurgachi', 0),
(57, 9, 'Hiland Park', 0),
(58, 9, 'Park Circus', 0),
(59, 9, 'Prince Anwar Shah Road', 0),
(60, 10, 'Viman Nagar', 0),
(61, 12, 'Anna Salai', 0),
(62, 12, 'Royapettah', 0),
(63, 12, 'Velachery', 0),
(64, 12, 'Vadapalani', 0),
(65, 12, 'Mylapore', 0),
(66, 10, 'Wadgaon Sheri', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mall`
--

CREATE TABLE IF NOT EXISTS `mall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `address` text CHARACTER SET latin1 NOT NULL,
  `location` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `contactno` varchar(255) CHARACTER SET latin1 NOT NULL,
  `parkingfacility` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cinema` varchar(255) CHARACTER SET latin1 NOT NULL,
  `cinemaoffer` varchar(255) CHARACTER SET latin1 NOT NULL,
  `restaurant` varchar(255) CHARACTER SET latin1 NOT NULL,
  `entertainment` varchar(255) CHARACTER SET latin1 NOT NULL,
  `website` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `specialoffers` text CHARACTER SET latin1 NOT NULL,
  `events` text CHARACTER SET latin1 NOT NULL,
  `facebookpage` varchar(255) CHARACTER SET latin1 NOT NULL,
  `pininterest` varchar(255) CHARACTER SET latin1 NOT NULL,
  `instagram` varchar(255) CHARACTER SET latin1 NOT NULL,
  `twitterpage` varchar(255) CHARACTER SET latin1 NOT NULL,
  `city` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=183 ;

--
-- Dumping data for table `mall`
--

INSERT INTO `mall` (`id`, `name`, `address`, `location`, `latitude`, `longitude`, `contactno`, `parkingfacility`, `cinema`, `cinemaoffer`, `restaurant`, `entertainment`, `website`, `email`, `logo`, `description`, `specialoffers`, `events`, `facebookpage`, `pininterest`, `instagram`, `twitterpage`, `city`) VALUES
(119, 'R City Mall', 'R City Mall, Lal Bahadur Shastri Road, Ghatkopar (West), Mumbai - 400086', 12, 19.0991064, 72.9172897, '022-67755833?', 'Yes', 'Big Cinema', '', 'Food Court,Shvatra, Quattro, Punjab Grill, Rolling Pin, Mainland China, Cream Centre, Balaji, Indigo Deli, Dwarkadheesh, Five Fat Monks, Starbucks Coffee, Pico Express, Banana Leaf, Maroosh, Mamagoto, McDonalds, Sbarro, TGIF, The United-Sports Bar and Gri', '6D Theatre, Jammin - Family Entertainment Centre, Bowling Alley, Horror House, Kidzania', 'www.rcity.co.in', 'info@rcity.runwal.com', '', 'The newest and most diverse shopping destination in Mumbai, this 12 lakh square feet mammoth shopping centre is one-of-its-kind with a multi-level retail galleria that balances a steady mix of the finest local brands and top-notch international brands. The sprawling multilevel parking, five-level atrium and first-of-its-kind nine-screen multiplex will provide the most vibrant experience to shopping enthusiasts from all walks of life.', '', '', '', '', '', '', 14),
(120, 'Phoenix Marketcity', 'Phoenix Marketcity, L.B.S. Marg, Kurla (West), Mumbai ? 400070', 17, 19.0851093, 72.887154, '022-61801011', 'Yes', 'PVR Cinemas', '', 'Food Court, Rajdhani, Patchi, Mad Over Donuts, CCD, Golden Tips, Pizza Hut, Costa Coffee, Choko La, Caf? Royal, Cream Centre, Di Bella Coffee, Rain Forest, Chocolate Temptations, Grillopolis, Cookie Man, Hokey Pokey, Mai Tai, Zaika, Ice Cream Works, Moti ', 'Amoeba, Funzone 2, Scary House, Snow World, Storm 5D, Time Zone', 'www.phoenixmarketcitymumbai.com', 'Marketing.mumbai@phoenixmarketcity.in', '', 'Phoenix Marketcity, a highly admired shopping mall in Mumbai, brings to you a merry-go-round of fun, food and some grand shopping. Categories of shops at Phoenix Marketcity include Bags, Footwear, Books, Cards, Music & Stationery, Electronics, Gifts & Crafts, Chocolates, Confectionary & Ice Cream, Cosmetics & Perfumes, Domestic and International Fashion for Men, Women and Children, Health, Beauty, Sports, Fitness, Department Store, Eye Wear, Home & Lifestyle, Speciality Store, Travel & Luggage, Watches, Jewellery and more. They also have over 44 restaurants, caf?s and fast food centres for the food lovers with a range of Indian, Chinese, Continental, Italian and more cuisines. In Entertainment, check out PVR Cinemas, Timezone, Snow World, Funzone, Storm India 5D and Scary House among others! So here is your chance to spend the entire day with family or friends and having a memorable time!', '', '', '', '', '', '', 14),
(121, 'Viviana Mall', 'Viviana Mall, Opp. Eastern Express Highway, Next to Jupiter Hospital, Eastern Express Highway, Laxmi Nagar, Thane West, Thane-400606', 18, 19.208338, 72.971202, '', 'Yes', 'Cinepolis', '0', 'Food Court, Copper Chimney, The Yellow Chilli, Alfredo''s, JugHeads, Cream Centre, Mainland China, Stir Crazy, Pizza Express, Rajdhani, Grilla!, Banana Leaf, Yoko Sizzlers, British Brewing Company, The Beer Caf?, The United - Sports Bar and Grill', 'Funcity, Game 4 U, 7D Adventures', 'www.vivacitymalls.com', 'info@vivianamalls.com', '', 'a', '', '', '', '', '', '', 14),
(122, 'Inorbit Mall', 'Inorbit Mall Sector 30A, Vashi, Navi Mumbai - 400 705', 19, 19.066108, 73.000969, '022-67777614', 'Yes', '', '', 'Food Court, CCD, Starbucks, Moshe''s, Garden Court, Pizza Hut', 'Timezone', 'www.inorbit.in', 'info.vashi@Inorbit.in', '', 'Inorbit malls have universal class and appeal, and they seek to provide a one-stop destination for fashion, lifestyle, food and entertainment leading to an international experience for families.', '', '', '', '', '', '', 14),
(123, 'Inorbit Mall', 'Inobit Mall , Malad Link Road, Malad (w) Mumbai - 400 064', 20, 19.173237, 72.835365, '022-66777999', 'Yes', 'Inox', '', 'Food Court, Costa Coffee, CCD, Indigo Deli, Maharaja Bhog, Pizza Hut, Spaghetti Kitchen, The Pint Room', 'Timezone', 'www.inorbit.in', 'info.malad@Inorbit.in', '', 'Inorbit malls have universal class and appeal, and they seek to provide a one-stop destination for fashion, lifestyle, food and entertainment leading to an international experience for families.', '', '', '', '', '', '', 14),
(124, 'Infiniti Mall', 'Infinity Mall 2,Link Rd, , Mindspace, Malad (west), Mumbai - 400064', 21, 19.185112, 72.83406, '022-61955555', 'Yes', 'Cinemax', '', 'Food Court, California Pizza Kitchen, Mainland China, Zaffra, Bombay Blue, Panchvati Gaurav, KFC, 30ml Liquid Lounge, Manchester United Caf? Bar', 'Planet Infiniti', 'www.infinitimall.com', '', '', '', '', '', '', '', '', '', 14),
(125, 'Oberoi Mall', 'Oberoi Mall, Dindoshi, Goregaon (East), Mumbai - 400063', 22, 19.173824, 72.860555, '022-40990824', 'Yes', 'PVR Cinemas', '', 'Food Court, CCD, Starbucks, Gloria Jeans Coffee, British Brewing Company, Maharaja Bhog, Pizza Hut, Cream Centre, Copper Chimney, Caf? Moshe''s, Mainland China', 'Funcity, West plaza, Kids Creche', 'www.oberoimall.com/', 'info@oberoimall.com', '', '', '', '', '', '', '', '', 14),
(126, 'High Street Phoenix', 'High Street Phoenix, The Phoenix Mills Limited, 462, Senapati Bapat Marg, Lower Parel (West), Mumbai - 400 013?', 23, 18.99469, 72.824596, '022-43339994', 'Yes', 'PVR Cinemas', '', 'Asia 7, Bombay Blue, Caf? Moshe''s, California Pizza Kitchen, Coffee Bean & Tea Leaf, Copper Chimney, Costa Coffee, Cream Centre, Domino''s, Gajalee, Gelato Italiano, Haagen-Dazs, Indigo Deli, Mad Over Donuts, MaiTai, Manchester United Caf? Bar, Maroosh, Mc', 'Orama Carnival Street', 'www.highstreetphoenix.com', '', '', '', '', '', '', '', '', '', 14),
(127, 'Neptune Magnet Mall', 'Neptune Magnet Mall, Lower Powai, L.B.S. Marg,?Bhandup (West), Mumbai - 400 078', 24, 19.141651, 72.931148, '022-67421878', 'Yes', 'Cinepolis', '', 'Golden Star Thali, Khiva, McDonald''s, Asian Wok, Mughal Darbar, Banana Leaf, Cream Centre, Moti Mahal, Pizza Hut, Food Court', 'Mancini, Get Lost, Game4u, 4D', 'www.magnetmall.in', '', '', 'Developed by Neptune Group, a company known to have almost an intuition for accurately knowing what their customers desire and providing it. The Mall personifies their philosophy to bring value to the lives of their customers and brings many entertaining wonders for the first time in India; like a 6 screen multiplex, 2 level food court, a family entertainment zone, to mention a few.', '', '', '', '', '', '', 14),
(128, 'Korum Mall Thane', 'Korum Mall, Mangal Pandey Road, Near Cadbury Compound, Eastern Express Highway, Thane (West) - 400 606', 18, 19.203132, 72.965143, '022-41444444', 'Yes', 'Inox', '', 'Caf? Coffee Day, Starbucks, Food Court, Costa Caf?, Timbuctoo, Pop Tates, Urban Tadka, Zaffran, Indiana Waters', 'Timezone, Bowling', 'www.korum.in', 'korum@korum.in', '', 'With best retail mix of 130+ National & international brands, Korum offers a 360 degree mall experience in Shopping, entertainment, lifestyle & dining. More than 30 thoughtful and sensible services, and 270+ days of marketing events, further enhance the shopping experience.', '', '', '', '', '', '', 14),
(129, 'Growels 101 Mall', 'Akurli Rd, Off.Western Express Highway, Kandivali East, Mumbai, Maharashtra 400101', 25, 19.203321, 72.859505, '022-66993402', 'Yes', 'Cinemax', '', 'Food Court, Zaffran, Balaji, McDonald''s', '', 'www.growels101.com/', 'marketing@growel.com', '', 'Growel?s 101 strategically located in the western suburbs ( Kandivli ) has an ideal mix of fashion, retail, hypermarket, consumer durables, department stores, white goods, books, health & beauty, family entertainment centres, fine dining restaurants, food court, and a 4 screen multiplex. The mall is anchored by prominent retailers such as Mc Donald?s, Pantaloons, Big Bazaar, Cinemax and E Zone amongst other international and national retailers.', '', '', '', '', '', '', 14),
(130, 'Infiniti Mall', 'Infiniti Mall, New Link Road, Oshiwara, Andheri West, Mumbai- 400053', 26, 19.141295, 72.830681, '022-61319191', 'Yes', 'Cinemax', '', 'Panchavati Gaurav, TGIF, Food Court', 'Gamezone', 'www.infinitimall.com', 'gm.andheri@infinitimall.com', '', '', '', '', '', '', '', '', 14),
(131, 'Crossroad 2', 'A/240, Barrister Rajni Patel Road, Nariman Point, Mumbai - 400021', 27, 18.926537, 72.822597, '022-66548907', 'Yes', 'Inox', '', 'Ristorante Prego, Subway, The Coffee Bean & Tea Leaf, Spaghetti Kitchen, Paninaro, Spoon, Swati, Not Just Dosa, Bombay Blue Express, Simply Sizzlers, Hot''wich, Moti Mahal Delux, Kabab Company, Pastelitos, China Town, Brownie Cottage, Gelato Italiano, Bubb', '', '', '', '', '', '', '', '', '', '', '', 14),
(132, 'Atria Mall', 'Dr. Annie Beasent Road, Worli, Mumbai - 400018', 28, 18.991826, 72.814482, '022-24813333', 'Yes', '', '', 'Caf? Coffee Day, Food Court, Gelato', 'Gaming Zone, Ice Skating, Orama 3D/4D Theatre', 'www.atriamumbai.in', 'atria@atriamumbai.in', '', '', '', '', '', '', '', '', 14),
(133, 'Alpha One Mall', 'AlphaOne Ahmedabad,Plot No-216,T.P Scheme-1, Near VastrapurLake, Vastrapur, Ahmedabad 380006', 29, 23.040102, 72.531496, '079-40193662', 'Yes', 'Cinepolis', '', '', '', 'http://www.alphaoneahmedabad.com/', '', '', '', '', '', '', '', '', '', 11),
(134, 'Iscon Mega Mall', 'Iscon Mega Mall, Near Iskcon Temple, SG Highway,Bodakdev, Ahmedabad, Gujarat 380054', 30, 23.030495, 72.507905, '079-40040282', 'Yes', '', '', '', '', 'http://isconmegamall.com/', 'ahmedabadmall@iscongroup.com', '', '', '', '', '', '', '', '', 11),
(135, '4D Square Mall', '4D Square Mall, Near Sangat Mall, Visat Gandhinagar Highway, Kalol Rd, Chandkheda, Motera, Ahmedabad, Gujarat 382424', 31, 23.103037, 72.595641, '', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11),
(136, 'Gulmohar Park Mall', 'Gulmohar Park Mall, Satellite Road, Satellite, Ahmedabad, Gujarat - 380015', 32, 23.026551, 72.509847, '079-30425800?', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 11),
(137, 'The Forum Mall', 'Forum Mall, 21, Hosur Rd, Koramangala, Bengaluru, Karnataka 560095', 33, 12.934459, 77.611341, '080-22067752', 'Yes', 'PVR Cinemas', '', '', '', 'http://www.theforumexperience.com/', 'ccare@theforumexperience.com', '', '', '', '', '', '', '', '', 13),
(138, 'Garuda Mall', 'Garuda Mall, 15, Magrath Rd, Ashok Nagar, Bengaluru, Karnataka 560025', 34, 12.97006, 77.609783, '080-40698857', 'Yes', 'Inox', '', '', '', 'http://garudamall.in/', 'customerservice@garudamall.net', '', '', '', '', '', '', '', '', 13),
(139, 'Inorbit Mall', 'Inorbit Mall,  No 75, 8th Road, EPIP Zone, Whitefield, Bengaluru, Karnataka 560066', 35, 12.979497, 77.728692, '080-67280000', 'Yes', '', '', '', '', 'http://inorbit.in/whitefield/', 'info.whitefield@inorbit.in', '', '', '', '', '', '', '', '', 13),
(140, 'Mantri Square Mall', 'Mantri Square, No 1, Malleshwaram, Sampige Road, Jai Bheema Nagar, Sampangiram Nagar, Bangalore, Karnataka 560003', 36, 12.991923, 77.570897, '080-30160001', 'Yes', '', '', '', '', 'http://www.mantrisquare.com/', 'infodesk@mantrisquare.com', '', '', '', '', '', '', '', '', 13),
(141, 'Orion Mall', 'Orion Mall, Brigade Gateway, 26/1 Dr. Rajkumar Road, Malleshwaram West, Bangalore - 560055', 37, 13.010986, 77.555018, '080-67282222', 'Yes', '', '', '', '', 'http://orionmalls.com/', 'feedback@orionmalls.com', '', '', '', '', '', '', '', '', 13),
(142, 'Park Square Mall', 'Park Square Mall, ITPL Main Rd, Pattandur Agrahara, Whitefield, Bengaluru, Karnataka 560066', 35, 12.986858, 77.736409, '080-41880888', 'Yes', '', '', '', '', '', 'parksquare@ascendas.com', '', '', '', '', '', '', '', '', 13),
(143, 'Phoenix Marketcity', 'Phoenix Marketcity, 1st Floor, 106/107, Whitefield Road, Devasandra Industrial Estate, K.R Puram, Bangalore, Karnataka 560048', 35, 12.996959, 77.696228, '080?67266111', 'Yes', '', '', '', '', 'http://phoenixmarketcitybangalore.com/', '', '', '', '', '', '', '', '', '', 13),
(144, 'The Collection UB City', 'UB City, 24, Vittal Mallya Road, KG Halli, Shanthala Nagar, Ashok Nagar, Bengaluru, Karnataka 560001', 38, 12.971502, 77.595985, '080-22711488', '', '', '', '', '', 'http://www.ubcitybangalore.in/', '', '', '', '', '', '', '', '', '', 13),
(145, 'The Forum Value Mall', 'The Forum Value Mall, 62, Whitefield Main Rd, Whitefield, Bangalore, Karnataka 560066', 35, 12.959629, 77.747971, '080-25043700', '', '', '', '', '', 'http://www.forumvaluemall.com/', 'infodesk.fvm@crpmm.com', '', '', '', '', '', '', '', '', 13),
(146, 'Total Shopping Mall', 'Total Shopping Mall, Hosur Rd, Koramangala 2B Block, Koramangala, Bengaluru, Karnataka 560034', 33, 12.921909, 77.620296, '080-41559299', '', '', '', '', '', 'http://www.totalsuperstore.com/', '', '', '', '', '', '', '', '', '', 13),
(147, 'Ambience Mall', 'Ambience Mall, National Highway 8, Ambience Island, Gurgaon, Haryana 122001', 39, 28.503883, 77.097273, '7859824869', '', '', '', '', '', 'http://www.ambiencemalls.com/', '', '', '', '', '', '', '', '', '', 7),
(148, 'Ambience Mall Vasant Kunj', 'Ambience Mall Vasant Kunj, 2, Nelson Mandela Marg, Vasant Kunj, New Delhi, DL 110070', 40, 28.541221, 77.154967, '011-40870064', '', '', '', '', '', 'http://www.ambiencemalls.com/', '', '', '', '', '', '', '', '', '', 7),
(149, 'Ansal Plaza', 'Ansal Plaza, August Kranti Marg, Hudco Place, Andrews Ganj, New Delhi, DL 110049', 41, 28.562743, 77.224429, '011-26250957', '', '', '', '', '', 'http://www.ansalplaza.in/delhi/index.aspx?mid=7', '', '', '', '', '', '', '', '', '', 7),
(150, 'Ansal Plaza Gurgaon', 'Ansal Plaza, Sector 23, Palam Vihar, Gurgaon, Haryana 122017', 42, 28.516024, 77.04459, '0124-2360762', '', '', '', '', '', 'http://ansalplaza.in/Palam_Vihar/index.aspx?mid=11', '', '', '', '', '', '', '', '', '', 7),
(151, 'City Square Mall', 'City Square Mall, Najafgarh Rd, Rajouri Garden, New Delhi, DL', 43, 28.650267, 77.12327, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 7),
(152, 'DLF Emporio', 'DLF Emporio, 4, Nelson Mandela Road, Vasant Kunj II,, Vasant Kunj, New Delhi, Delhi 110070', 40, 28.543467, 77.156693, '011-46116666', '', '', '', '', '', 'http://www.dlfemporio.com/', 'dlfemporio@dlf.in', '', '', '', '', '', '', '', '', 7),
(153, 'DLF Place', 'DLF Place, A4, Saket District Centre, Press Enclave Road, Saket, New Delhi, Delhi 110017', 44, 28.528156, 77.216676, '011-46064444', '', '', '', '', '', 'http://dlfplace.in/', '', '', '', '', '', '', '', '', '', 7),
(154, 'DLF Promenade', 'DLF Promenade, # 3, Nelson Mandela Road, Vasant Kunj Malls, Vasant Kunj II, New Delhi, Delhi 110070', 40, 28.542599, 77.155741, '011-46104466 ', '', '', '', '', '', 'http://dlfpromenade.com/', 'dlfpromenade@dlf.in', '', '', '', '', '', '', '', '', 7),
(155, 'MGF Metropolitan Mall', 'MGF Metropolitan Mall, A-2,Press Enclave Marg, District Centre, Saket, New Delhi, DL 110017', 44, 28.529572, 77.220171, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 7),
(156, 'MGF Metropolitan Mall', 'MGF Metropolitan Mall, Mehrauli-Gurgaon Rd, Heritage City, Sector 25, Gurgaon, Haryana 122001', 39, 28.480102, 77.080372, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 7),
(157, 'Moments Mall', 'Moments Mall, Patel Road, Next to Kirti Nagar Metro Station, New Delhi ? 110015', 45, 28.657056, 77.146458, '011-41531111', '', '', '', '', '', 'http://www.momentsmall.com/', 'info@momentsmall.com', '', '', '', '', '', '', '', '', 7),
(158, 'Pacific Mall', 'Pacific Mall, Najafgarh Road, Tagore Garden, New Delh, DL 110018', 46, 28.642551, 77.106141, '011-40903000', '', '', '', '', '', 'http://www.shoppacific.in/area.htm', '', '', '', '', '', '', '', '', '', 7),
(159, 'Select Citywalk Mall', 'Select Citywalk Mall, A-3m District Centre Saket, Sector 6, Pushp Vihar, New Delhi, DL 110017', 44, 28.528282, 77.218303, '011-42114211', '', '', '', '', '', 'http://www.selectcitywalk.com/', 'contact@selectcitywalk.com', '', '', '', '', '', '', '', '', 7),
(160, 'TDI Mall', 'TDI Mall, Plot No.11, Shivaji Place Complex, Vishal Cinema Rd, Block A, Rajouri Garden, Tagore Garden, New Delhi, DL', 43, 28.650824, 77.120725, '011-49133333', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 7),
(161, 'The Great India Place', 'The Great India Place, Plot No. A-2, Sector-38-A, Noida, Uttar Pradesh 201301', 47, 28.567512, 77.325943, '0120-4650000', '', '', '', '', '', 'http://www.thegreatindiaplace.in/', 'info@thegreatindiaplace.in', '', '', '', '', '', '', '', '', 7),
(162, 'Amrutha Mall', 'Amrutha Mall, Somajiguda Circle, Somajiguda, Hyderabad, Telangana 500082', 48, 17.428896, 78.455946, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 8),
(163, 'City Centre Mall', 'City Centre Mall, Road Number 1, Zehra Nagar, Banjara Hills, Hyderabad, Telangana 500034', 49, 17.415174, 78.449023, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 8),
(164, 'Hyderabad Central Mall', 'Hyderabad Central, Municpal Number 6-3-673,674,674/1, Punjagutta Cross Road, Punjagutta, Hyderabad, Telangana 500082', 50, 17.42669, 78.453112, '040-66430000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 8),
(165, 'Inorbit Mall', 'Inorbit Mall, APIIC Software Layout, Mindspace, Madhapur, Hyderabad, Telangana 500081', 51, 17.43433, 78.386911, '040-44880000', '', '', '', '', '', 'http://inorbit.in/', 'info.cyberabad@inorbit.in', '', '', '', '', '', '', '', '', 8),
(166, 'Avani Riverside Mall', 'Avani Riverside Mall, 32, Jagat Banerjee Ghat Rd, Howrah, West Bengal 711102', 52, 22.563346, 88.323779, '033-33129000', '', '', '', '', '', 'http://www.avaniriversidemall.com/', '', '', '', '', '', '', '', '', '', 9),
(167, 'Axis Mall', 'Axis Mall, Plot No. CF9, Major Arterial Rd, Action Area 1C, Rajarhat Newtown, Kolkata, West Bengal 700156', 53, 22.57943, 88.459777, '033-32006827', '', '', '', '', '', 'http://www.bengalpeerless.com/axis/', 'axiskolkata@bengalpeerless.com', '', '', '', '', '', '', '', '', 9),
(168, 'City Centre Mall', 'City Centre, Sector-1, Block DC, Salt Lake City, Kolkata, West Bengal 700064', 54, 22.588141, 88.408343, '033-23581011', '', '', '', '', '', 'http://saltlake.citycentremalls.in/', '', '', '', '', '', '', '', '', '', 9),
(169, 'City Centre mall', 'City Centre New Town, IID/5, JL No.-11, Action Area, Mouza Nowapara, Rajarhat, Kolkata, West Bengal 700157', 53, 22.622769, 88.450278, '033-25266000', '', '', '', '', '', 'http://newtown.citycentremalls.in/', '', '', '', '', '', '', '', '', '', 9),
(170, 'Forum Mall', 'Forum Mall, 10/3, Lala Lajpat Rai Sarani, Sreepally, Bhowanipore, Kolkata, West Bengal', 55, 22.538207, 88.351251, '033-22836022', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 9),
(171, 'Mani Square Mall', 'Mani Square Mall, Eastern Metropolitan Bypass, Kankurgachi, Kolkata, West Bengal 700054', 56, 22.577706, 88.400863, '033-23201878', '', '', '', '', '', 'http://www.manisquaremall.com/', '?mallcustomercare@mani-group.com', '', '', '', '', '', '', '', '', 9),
(172, 'Metropolis Mall ', 'Metropolis Mall, Eastern Metropolitan Bypass, Hiland Park, Chakgaria, Kolkata, West Bengal 700075', 57, 22.483221, 88.390673, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 9),
(173, 'Quest Mall', 'Quest Mall, Syed Amir Ali Ave, Park Circus, Beck Bagan, Ballygunge, Kolkata, West Bengal 700017', 58, 22.539305, 88.365729, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 9),
(174, 'South City Mall', 'South City Mall, Prince Anwar Shah Rd, South City, South City Complex, Jadavpur, Kolkata, West Bengal 700068', 59, 22.50144, 88.361746, '', '', '', '', '', '', 'http://southcitymall.in/', '', '', '', '', '', '', '', '', '', 9),
(175, 'Phoenix Marketcity', 'Phoenix Market City Pune, S No. 207, Viman Nagar Road, Pune Nagar Road Highway, Pune, Maharashtra 411014', 60, 18.562288, 73.916869, '020-33444444', '', '', '', '', '', 'http://www.phoenixmarketcitypune.com/', 'infopune@marketcity.in', '', '', '', '', '', '', '', '', 10),
(176, 'Ramee Mall', 'Ramee Mall, 365, Annai Salai, Poes Road, Subbarayan Nagar, Teynampet, Chennai, Tamil Nadu 600018', 61, 13.042912, 80.248398, '044-32453987', '', '', '', '', '', 'http://www.rameemall.com', 'admin@rameemall .com', '', '', '', '', '', '', '', '', 12),
(177, 'Express Avenue', 'Express Avenue, Plot No.213, Whites Road, Royapettah, Chennai, Tamil Nadu 600014', 62, 13.058702, 80.264064, '044-28464656', '', '', '', '', '', 'http://expressavenue.in/', '', '', '', '', '', '', '', '', '', 12),
(178, 'Phoenix Marketcity', 'Phoenix Marketcity, 142, Velachery Main Road, Near Gurunanak College, Velachery, Chennai, Tamil Nadu 600042', 63, 12.991242, 80.216447, '044-30083008', '', '', '', '', '', 'http://www.phoenixmarketcitychennai.com/', 'infochennai@phoenixmarketcity.in', '', '', '', '', '', '', '', '', 12),
(179, 'The Forum Vijaya Mall', 'The Forum Vijaya Mall, #183, NSK Salai, Arcot Road, Vadapalani, Chennai - 600 026.', 64, 13.050583, 80.209571, '044-49049000', '', '', '', '', '', 'http://www.theforumvijayamallchennai.com/index.php', 'feedback@theforumvijayamallchennai.com', '', '', '', '', '', '', '', '', 12),
(180, 'Chennai City Centre', 'Chennai City Centre, Mylapore, Chennai, Tamil Nadu', 65, 13.043319, 80.27382, '9882737392', '', '', '', '', '', 'http://chennaiciticenter.com/', '', '', '', '', '', '', '', '', '', 12),
(181, 'Inorbit Mall', 'Inorbit Mall Pune, Opp CTR Factory, wadgaon Sheri, Pune Nagar Road, Pune ? 411014', 66, 18.560361, 73.920568, '020-66878600', '', '', '', '', '', 'http://inorbit.in/pune/', 'info.pune@inorbit.in', '', '', '', '', '', '', '', '', 10),
(182, 'csv3', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `linktype` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `isactive` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `keyword`, `url`, `linktype`, `parent`, `isactive`, `order`, `icon`) VALUES
(1, 'Users', '', '', 'site/viewusers', 1, 0, 1, 1, 'icon-user'),
(2, 'Malls', '', '', 'site/viewmall', 1, 0, 1, 2, ' icon-calendar'),
(3, 'City', '', '', 'site/viewcity', 1, 0, 1, 3, ' icon-user-md'),
(4, 'Dashboard', '', '', 'site/index', 1, 0, 1, 0, 'icon-dashboard'),
(5, 'Brand', '', '', 'site/viewbrand', 1, 0, 1, 4, ' icon-ticket'),
(6, 'Store', '', '', '', 1, 0, 1, 5, 'icon-money'),
(7, 'Category', '', '', 'site/viewcategory', 1, 0, 1, 6, 'icon-book'),
(8, 'Store in Mall', '', '', 'site/viewstoreinmall', 1, 6, 1, 7, ' icon-file-text-alt'),
(9, 'Individual Store', '', '', 'site/viewindividualstore', 1, 6, 1, 8, ' icon-list-alt'),
(10, 'Offers', '', '', 'site/viewoffer', 1, 0, 1, 9, 'icon-user'),
(11, 'Image Gallery', '', '', 'site/viewgallery', 1, 0, 1, 10, 'icon-user'),
(12, 'New In', '', '', 'site/viewnewin', 1, 0, 1, 11, 'icon-user'),
(13, 'Category Edit', '', '', 'site/editcategory', 1, 6, 1, 11, 'icon-user'),
(14, 'Brand', '', '', '', 1, 0, 1, 11, 'icon-user'),
(15, 'Edit Brand', '', '', 'site/editbrandforbrand', 1, 14, 1, 12, 'icon-user'),
(16, 'Store', '', '', '', 1, 0, 1, 13, 'icon-user'),
(17, 'Individual Store', '', '', 'site/viewindividualstoreforbrand', 1, 16, 1, 14, 'icon-user'),
(18, 'Store In Mall', '', '', 'site/viewstoreinmallforbrand', 1, 16, 1, 14, 'icon-user');

-- --------------------------------------------------------

--
-- Table structure for table `menuaccess`
--

CREATE TABLE IF NOT EXISTS `menuaccess` (
  `menu` int(11) NOT NULL,
  `access` int(11) NOT NULL,
  PRIMARY KEY (`menu`,`access`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuaccess`
--

INSERT INTO `menuaccess` (`menu`, `access`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(13, 3),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `newin`
--

CREATE TABLE IF NOT EXISTS `newin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `brandid` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `newin`
--

INSERT INTO `newin` (`id`, `image`, `description`, `brandid`, `like`) VALUES
(7, 'logo.png', 'acac', 2, 0),
(8, 'logo2.png', 'demo desd', 2, 0),
(9, 'Logo_(1)1.png', 'wwwwww', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `header` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `brandid` int(11) NOT NULL,
  `storeid` int(11) NOT NULL,
  `like` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `header`, `description`, `from`, `to`, `brandid`, `storeid`, `like`) VALUES
(17, 'wscmsld', 'dsc', '2014-10-09', '2014-09-19', 1, 0, 0),
(18, 'best offer', 'best offer of the year', '2014-11-09', '2014-10-24', 2, 0, 0),
(22, 'wscmsld', 'demo', '2014-08-10', '2014-10-23', 32, 0, 0),
(23, 'Flat 50% off', 'Enjoy extra 10% if you produce 91streets app at the billing counter', '2014-12-31', '2014-10-30', 38, 0, 0),
(24, 'Buy 1 get 1 free', 'Special offers on food and beverages', '2014-12-31', '2014-10-30', 43, 0, 0),
(25, 'Upto 20% off', 'Zero Making charges till Diwali', '2014-12-31', '2014-10-26', 42, 0, 0),
(26, '20% flat off on all product', 'Upto 50% off on infant care products', '2014-12-10', '2014-10-17', 51, 0, 0),
(27, 'Flat 20% off on all handbags', 'Upto 45% off for members', '2014-12-31', '2014-10-30', 44, 0, 0),
(28, 'Flat 30% off on sports wear', 'Upto 25% off on New Arrivals', '1969-12-31', '2014-10-30', 54, 0, 0),
(29, 'Upto 60% off on all products', 'Buy upto 2000/- and get a special gift free!', '1969-12-31', '2014-10-30', 50, 0, 0),
(30, 'Flat 30% off', 'Shop for INR 4000 and get an extra 10% off', '1969-12-31', '2014-10-30', 47, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pricerange`
--

CREATE TABLE IF NOT EXISTS `pricerange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `range` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pricerange`
--

INSERT INTO `pricerange` (`id`, `range`) VALUES
(1, 'Very Low'),
(2, 'Low'),
(3, 'Moderate'),
(4, 'Expensive'),
(5, 'Very expensive');

-- --------------------------------------------------------

--
-- Table structure for table `shopclosed`
--

CREATE TABLE IF NOT EXISTS `shopclosed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `shopclosed`
--

INSERT INTO `shopclosed` (`id`, `day`) VALUES
(1, 'Sunday'),
(2, 'Monday'),
(4, 'Tuesday'),
(5, 'Wednesday'),
(6, 'Thursday'),
(7, 'Friday'),
(8, 'Saturday'),
(9, '');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingbag`
--

CREATE TABLE IF NOT EXISTS `shoppingbag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `shoppingbag`
--

INSERT INTO `shoppingbag` (`id`, `user`, `category`, `timestamp`) VALUES
(1, 51, 33, '2014-10-18 06:41:45'),
(2, 51, 34, '2014-10-18 06:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `city` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `format` int(11) NOT NULL,
  `mall` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` int(11) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `offer` int(11) NOT NULL,
  `workinghoursfrom` varchar(255) NOT NULL,
  `workinghoursto` varchar(255) NOT NULL,
  `shopclosedon` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`id`, `name`, `city`, `brand`, `format`, `mall`, `floor`, `address`, `location`, `latitude`, `longitude`, `contactno`, `email`, `offer`, `workinghoursfrom`, `workinghoursto`, `shopclosedon`, `description`) VALUES
(1, 'sporties', 4, 1, 1, 1, 2, 'demostoreaddress', 3, 12.11, 13, '2147483647', 'avinash@gmail.com', 1, '', '', 1, ''),
(4, 'demo5', 1, 1, 2, 0, 0, 'wadala road mumbai', 2, 12, 13, '9898989898', 'demo5@demo.com', 3, '', '', 1, ''),
(5, 'demo', 4, 2, 1, 1, 5, '', 0, 0, 0, '9090909090', 'demo@email.com', 3, '', '', 3, ''),
(6, 'Abcd', 4, 2, 1, 1, 2, '', 0, 0, 0, '1234', 'demo@email.com', 0, '12:00 AM', '12:00 AM', 6, ''),
(7, 'individual', 2, 31, 2, 0, 0, 'ahhcbjhc', 9, 12, 13, '9090909090', 'pratik@wohlig.com', 4, '', '', 6, ''),
(8, 'test', 2, 2, 2, 0, 0, 'test', 2, 15, 16, '9898989898', 'a@email.com', 4, '10 AM - 6 PM', '', 1, ''),
(9, 'dcsd', 1, 3, 2, 0, 0, 'sdcs', 12, 12, 23, '2323', 'a@email.com', 4, '10 AM - 6 PM', '', 8, ''),
(10, 'test9', 2, 1, 2, 0, 0, 'asxasx', 11, 89, 98, '2330', 'aamir@a2zheadsets.in', 4, '10 AM - 6 PM', '', 6, ''),
(11, 'rwfw', 2, 1, 1, 3, 6, '', 0, 0, 0, '2342', 'demo@email.com', 0, '12:00 AM', '12:00 AM', 6, '0'),
(12, 'asxas', 1, 1, 2, 0, 0, 'asa', 12, 12, 12, '12312', '1988.kalpesh@gmail.com', 3, '10 AM - 6 PM', '', 8, '0'),
(13, 'dcsd', 2, 2, 2, 0, 0, 'sdsd', 10, 21, 22, '232323', '1988.kalpesh@gmail.com', 4, 'wd', '', 8, 'sdfsd'),
(14, 'testing123', 1, 1, 1, 3, 1, '', 0, 0, 0, '1421434', 'a@email.com', 0, '12:00 AM', '12:00 AM', 6, 'efsdcsdc'),
(15, 'Pepe Jeans', 14, 38, 1, 119, 1, '', 0, 0, 0, '', 'pepercity@pepejeans.com', 0, '12:00 AM', '12:00 AM', 0, ''),
(16, 'Pepe Jeans', 15, 38, 1, 119, 1, '', 0, 0, 0, '', 'pepe@pepejeans.com', 0, '', '', 9, ''),
(17, 'Pepe Jeans', 7, 38, 1, 149, 7, '', 0, 0, 0, '', 'pepe@pepejeans.com', 0, '', '', 9, ''),
(18, 'Pepe Jeans', 11, 38, 1, 133, 7, '', 0, 0, 0, '', 'pepe@pepejeans.com', 0, '', '', 9, ''),
(19, 'Pepe Jeans', 9, 38, 1, 170, 7, '', 0, 0, 0, '', 'pepe@pepejeans.com', 0, '', '', 9, ''),
(20, 'Pepe Jeans', 8, 38, 1, 122, 7, '', 0, 0, 0, '', 'pepe@pepejeans.com', 0, '', '', 9, ''),
(21, 'Pepe Jeans', 10, 38, 1, 122, 7, '', 0, 0, 0, '', 'pepe@pepejeans.com', 0, '', '', 9, ''),
(22, 'Pepe Jeans', 12, 38, 1, 176, 7, '', 0, 0, 0, '', 'pepe@pepejeans.com', 0, '', '', 9, ''),
(23, 'Pepe Jeans', 13, 38, 1, 122, 7, '', 0, 0, 0, '', 'pepe@pepejeans.com', 0, '', '', 9, ''),
(24, 'Sunglass Hut', 15, 46, 1, 119, 1, '', 0, 0, 0, '', 'sh@sh.com', 0, '', '', 9, ''),
(25, 'Sunglass Hut', 7, 46, 1, 149, 7, '', 0, 0, 0, '', 'sh@sh.com', 0, '', '', 9, ''),
(26, 'Sunglass Hut', 11, 46, 1, 133, 7, '', 0, 0, 0, '', 'sh@sh.com', 0, '', '', 9, ''),
(27, 'Sunglass Hut', 9, 46, 1, 170, 7, '', 0, 0, 0, '', 'sh@sh.com', 0, '', '', 9, ''),
(28, 'Sunglass Hut', 8, 46, 1, 122, 7, '', 0, 0, 0, '', 'sh@sh.com', 0, '', '', 9, ''),
(29, 'Sunglass Hut', 10, 46, 1, 122, 7, '', 0, 0, 0, '', 'sh@sh.com', 0, '', '', 9, ''),
(30, 'Sunglass Hut', 12, 46, 1, 176, 7, '', 0, 0, 0, '', 'sh@sh.com', 0, '', '', 9, ''),
(31, 'Sunglass Hut', 13, 46, 1, 122, 7, '', 0, 0, 0, '', 'sh@sh.com', 0, '', '', 9, ''),
(32, 'Cygnus', 15, 42, 1, 119, 1, '', 0, 0, 0, '', 'cygnus@cygnus.com', 0, '', '', 9, ''),
(33, 'Cygnus', 7, 42, 1, 149, 7, '', 0, 0, 0, '', 'cygnus@cygnus.com', 0, '', '', 9, ''),
(34, 'Cygnus', 11, 42, 1, 133, 7, '', 0, 0, 0, '', 'cygnus@cygnus.com', 0, '', '', 9, ''),
(35, 'Cygnus', 9, 42, 1, 170, 7, '', 0, 0, 0, '', 'cygnus@cygnus.com', 0, '', '', 9, ''),
(36, 'Cygnus', 8, 42, 1, 122, 7, '', 0, 0, 0, '', 'cygnus@cygnus.com', 0, '', '', 9, ''),
(37, 'Cygnus', 10, 42, 1, 122, 7, '', 0, 0, 0, '', 'cygnus@cygnus.com', 0, '', '', 9, ''),
(38, 'Cygnus', 12, 42, 1, 176, 7, '', 0, 0, 0, '', 'cygnus@cygnus.com', 0, '', '', 9, ''),
(39, 'Cygnus', 13, 42, 1, 122, 7, '', 0, 0, 0, '', 'cygnus@cygnus.com', 0, '', '', 9, ''),
(40, 'Michael Kors', 15, 44, 1, 119, 1, '', 0, 0, 0, '', 'mk@mk.com', 0, '', '', 9, ''),
(41, 'Michael Kors', 7, 44, 1, 149, 7, '', 0, 0, 0, '', 'mk@mk.com', 0, '', '', 9, ''),
(42, 'Michael Kors', 11, 44, 1, 133, 7, '', 0, 0, 0, '', 'mk@mk.com', 0, '', '', 9, ''),
(43, 'Michael Kors', 9, 44, 1, 170, 7, '', 0, 0, 0, '', 'mk@mk.com', 0, '', '', 9, ''),
(44, 'Michael Kors', 8, 44, 1, 122, 7, '', 0, 0, 0, '', 'mk@mk.com', 0, '', '', 9, ''),
(45, 'Michael Kors', 10, 44, 1, 122, 7, '', 0, 0, 0, '', 'mk@mk.com', 0, '', '', 9, ''),
(46, 'Michael Kors', 12, 44, 1, 176, 7, '', 0, 0, 0, '', 'mk@mk.com', 0, '', '', 9, ''),
(47, 'Michael Kors', 13, 44, 1, 122, 7, '', 0, 0, 0, '', 'mk@mk.com', 0, '', '', 9, ''),
(48, 'Holii', 15, 45, 1, 119, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '12:00 AM', '12:00 AM', 9, ''),
(49, 'Holii', 7, 45, 1, 149, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '', '', 9, ''),
(50, 'Holii', 11, 45, 1, 133, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '', '', 9, ''),
(51, 'Holii', 9, 45, 1, 170, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '', '', 9, ''),
(52, 'Holii', 8, 45, 1, 122, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '', '', 9, ''),
(53, 'Holii', 10, 45, 1, 122, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '', '', 9, ''),
(54, 'Holii', 12, 45, 1, 176, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '', '', 9, ''),
(55, 'Holii', 13, 45, 1, 122, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '', '', 9, ''),
(56, 'Mothercare', 15, 51, 1, 119, 7, '', 0, 0, 0, '', 'Mothercare@mothercare.com', 0, '', '', 9, ''),
(57, 'Mothercare', 7, 51, 1, 149, 7, '', 0, 0, 0, '', 'Mothercare@mothercare.com', 0, '', '', 9, ''),
(58, 'Mothercare', 11, 51, 1, 133, 7, '', 0, 0, 0, '', 'Mothercare@mothercare.com', 0, '', '', 9, ''),
(59, 'Mothercare', 9, 51, 1, 170, 7, '', 0, 0, 0, '', 'Mothercare@mothercare.com', 0, '', '', 9, ''),
(60, 'Mothercare', 8, 51, 1, 122, 7, '', 0, 0, 0, '', 'Mothercare@mothercare.com', 0, '', '', 9, ''),
(61, 'Mothercare', 10, 51, 1, 122, 7, '', 0, 0, 0, '', 'Mothercare@mothercare.com', 0, '', '', 9, ''),
(62, 'Mothercare', 12, 51, 1, 176, 7, '', 0, 0, 0, '', 'Mothercare@mothercare.com', 0, '', '', 9, ''),
(63, 'Mothercare', 13, 51, 1, 122, 7, '', 0, 0, 0, '', 'Mothercare@mothercare.com', 0, '', '', 9, ''),
(64, 'Cinepolis', 15, 43, 1, 119, 7, '', 0, 0, 0, '', 'c@cinepolis.com', 0, '', '', 9, ''),
(65, 'Cinepolis', 7, 43, 1, 149, 7, '', 0, 0, 0, '', 'c@cinepolis.com', 0, '', '', 9, ''),
(66, 'Cinepolis', 11, 43, 1, 133, 7, '', 0, 0, 0, '', 'c@cinepolis.com', 0, '', '', 9, ''),
(67, 'Cinepolis', 9, 43, 1, 170, 7, '', 0, 0, 0, '', 'c@cinepolis.com', 0, '', '', 9, ''),
(68, 'Cinepolis', 8, 43, 1, 122, 7, '', 0, 0, 0, '', 'c@cinepolis.com', 0, '', '', 9, ''),
(69, 'Cinepolis', 10, 43, 1, 122, 7, '', 0, 0, 0, '', 'c@cinepolis.com', 0, '', '', 9, ''),
(70, 'Cinepolis', 12, 43, 1, 176, 7, '', 0, 0, 0, '', 'c@cinepolis.com', 0, '', '', 9, ''),
(71, 'Cinepolis', 13, 43, 1, 122, 7, '', 0, 0, 0, '', 'c@cinepolis.com', 0, '', '', 9, ''),
(72, 'Reebok ', 15, 54, 1, 119, 7, '', 0, 0, 0, '', 'Reebok@reebok.com', 0, '', '', 9, ''),
(73, 'Reebok ', 7, 54, 1, 149, 7, '', 0, 0, 0, '', 'Reebok@reebok.com', 0, '', '', 9, ''),
(74, 'Reebok ', 11, 54, 1, 133, 7, '', 0, 0, 0, '', 'Reebok@reebok.com', 0, '', '', 9, ''),
(75, 'Reebok ', 9, 54, 1, 170, 7, '', 0, 0, 0, '', 'Reebok@reebok.com', 0, '', '', 9, ''),
(76, 'Reebok ', 8, 54, 1, 122, 7, '', 0, 0, 0, '', 'Reebok@reebok.com', 0, '', '', 9, ''),
(77, 'Reebok ', 10, 54, 1, 122, 7, '', 0, 0, 0, '', 'Reebok@reebok.com', 0, '', '', 9, ''),
(78, 'Reebok ', 12, 54, 1, 176, 7, '', 0, 0, 0, '', 'Reebok@reebok.com', 0, '', '', 9, ''),
(79, 'Reebok ', 13, 54, 1, 122, 7, '', 0, 0, 0, '', 'Reebok@reebok.com', 0, '', '', 9, ''),
(80, 'Ruff', 15, 50, 1, 119, 7, '', 0, 0, 0, '', 'ruff@ruff.in', 0, '', '', 9, ''),
(81, 'Ruff', 7, 50, 1, 149, 7, '', 0, 0, 0, '', 'ruff@ruff.in', 0, '', '', 9, ''),
(82, 'Ruff', 11, 50, 1, 133, 7, '', 0, 0, 0, '', 'ruff@ruff.in', 0, '', '', 9, ''),
(83, 'Ruff', 9, 50, 1, 170, 7, '', 0, 0, 0, '', 'ruff@ruff.in', 0, '', '', 9, ''),
(84, 'Ruff', 8, 50, 1, 122, 7, '', 0, 0, 0, '', 'ruff@ruff.in', 0, '', '', 9, ''),
(85, 'Ruff', 10, 50, 1, 122, 7, '', 0, 0, 0, '', 'ruff@ruff.in', 0, '', '', 9, ''),
(86, 'Ruff', 12, 50, 1, 176, 7, '', 0, 0, 0, '', 'ruff@ruff.in', 0, '', '', 9, ''),
(87, 'Ruff', 13, 50, 1, 122, 7, '', 0, 0, 0, '', 'ruff@ruff.in', 0, '', '', 9, ''),
(88, 'Van Heusen', 15, 47, 1, 119, 7, '', 0, 0, 0, '', 'vh@vh.com', 0, '', '', 9, ''),
(89, 'Van Heusen', 7, 47, 1, 149, 7, '', 0, 0, 0, '', 'vh@vh.com', 0, '', '', 9, ''),
(90, 'Van Heusen', 11, 47, 1, 133, 7, '', 0, 0, 0, '', 'vh@vh.com', 0, '', '', 9, ''),
(91, 'Van Heusen', 9, 47, 1, 170, 7, '', 0, 0, 0, '', 'vh@vh.com', 0, '', '', 9, ''),
(92, 'Van Heusen', 8, 47, 1, 122, 7, '', 0, 0, 0, '', 'vh@vh.com', 0, '', '', 9, ''),
(93, 'Van Heusen', 10, 47, 1, 122, 7, '', 0, 0, 0, '', 'vh@vh.com', 0, '', '', 9, ''),
(94, 'Van Heusen', 12, 47, 1, 176, 7, '', 0, 0, 0, '', 'vh@vh.com', 0, '', '', 9, ''),
(95, 'Van Heusen', 13, 47, 1, 122, 7, '', 0, 0, 0, '', 'vh@vh.com', 0, '', '', 9, ''),
(97, 'csv store', 16, 1, 1, 182, 11, '', 0, 0, 0, '900099', 'email@email.com', 0, '12:00 AM', '06:00 PM', 1, 'desc'),
(98, 'Holii', 13, 45, 2, 122, 7, '', 0, 0, 0, '', 'h@holii.com', 0, '', '', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `storecategory`
--

CREATE TABLE IF NOT EXISTS `storecategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=171 ;

--
-- Dumping data for table `storecategory`
--

INSERT INTO `storecategory` (`id`, `storeid`, `categoryid`) VALUES
(59, 11, 11),
(60, 11, 4),
(77, 6, 4),
(78, 6, 9),
(79, 6, 10),
(80, 6, 11),
(81, 6, 17),
(82, 6, 5),
(83, 6, 19),
(84, 6, 6),
(85, 6, 12),
(86, 6, 13),
(87, 6, 14),
(88, 12, 4),
(89, 12, 9),
(90, 12, 11),
(91, 12, 17),
(92, 12, 5),
(93, 12, 19),
(94, 96, 96),
(95, 96, 1),
(96, 96, 0),
(97, 96, 7),
(98, 96, 147),
(99, 96, 3),
(100, 96, 123456),
(101, 96, 12),
(102, 96, 8),
(103, 96, 143),
(104, 96, 5),
(155, 48, 25),
(156, 48, 43),
(157, 48, 59),
(158, 48, 60),
(159, 48, 61),
(160, 48, 28),
(161, 48, 45),
(162, 48, 48),
(163, 48, 1),
(164, 48, 0),
(165, 48, 15),
(166, 48, 119),
(167, 48, 7),
(168, 48, 232323),
(169, 48, 12),
(170, 48, 9);

-- --------------------------------------------------------

--
-- Table structure for table `storeimagegallery`
--

CREATE TABLE IF NOT EXISTS `storeimagegallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) NOT NULL,
  `imagegalleryid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `storeimagegallery`
--

INSERT INTO `storeimagegallery` (`id`, `storeid`, `imagegalleryid`) VALUES
(13, 4, 7),
(18, 5, 6),
(19, 6, 6),
(20, 8, 6),
(21, 13, 6);

-- --------------------------------------------------------

--
-- Table structure for table `storenewin`
--

CREATE TABLE IF NOT EXISTS `storenewin` (
  `id` int(11) NOT NULL,
  `storeid` int(11) NOT NULL,
  `newinid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storenewin`
--

INSERT INTO `storenewin` (`id`, `storeid`, `newinid`) VALUES
(0, 5, 5),
(0, 6, 5),
(0, 8, 5),
(0, 13, 5),
(0, 1, 6),
(0, 4, 6),
(0, 10, 6),
(0, 11, 6),
(0, 5, 8),
(0, 6, 8),
(0, 8, 8),
(0, 5, 7),
(0, 6, 7),
(0, 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `storeoffers`
--

CREATE TABLE IF NOT EXISTS `storeoffers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeid` int(11) NOT NULL,
  `offerid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `storeoffers`
--

INSERT INTO `storeoffers` (`id`, `storeid`, `offerid`) VALUES
(1, 5, 14),
(2, 6, 14),
(3, 8, 14),
(4, 6, 15),
(5, 8, 15),
(6, 13, 15),
(7, 5, 16),
(8, 6, 16),
(9, 8, 16),
(36, 1, 17),
(37, 4, 17),
(38, 12, 17),
(39, 14, 17),
(40, 6, 18),
(41, 8, 18),
(42, 0, 22),
(43, 0, 22),
(69, 64, 24),
(70, 65, 24),
(71, 66, 24),
(72, 67, 24),
(73, 68, 24),
(74, 69, 24),
(75, 70, 24),
(76, 71, 24),
(77, 15, 23),
(78, 16, 23),
(79, 17, 23),
(80, 18, 23),
(81, 19, 23),
(82, 20, 23),
(83, 21, 23),
(84, 22, 23),
(85, 23, 23),
(86, 32, 25),
(87, 33, 25),
(88, 34, 25),
(89, 35, 25),
(90, 36, 25),
(91, 37, 25),
(92, 38, 25),
(93, 39, 25),
(126, 56, 26),
(127, 57, 26),
(128, 58, 26),
(129, 59, 26),
(130, 60, 26),
(131, 61, 26),
(132, 62, 26),
(133, 63, 26),
(134, 40, 27),
(135, 41, 27),
(136, 42, 27),
(137, 43, 27),
(138, 44, 27),
(139, 45, 27),
(140, 46, 27),
(141, 47, 27),
(142, 72, 28),
(143, 73, 28),
(144, 74, 28),
(145, 75, 28),
(146, 76, 28),
(147, 77, 28),
(148, 78, 28),
(149, 79, 28),
(150, 80, 29),
(151, 81, 29),
(152, 82, 29),
(153, 83, 29),
(154, 84, 29),
(155, 85, 29),
(156, 86, 29),
(157, 87, 29),
(158, 88, 30),
(159, 89, 30),
(160, 90, 30),
(161, 91, 30),
(162, 92, 30),
(163, 93, 30),
(164, 94, 30),
(165, 95, 30);

-- --------------------------------------------------------

--
-- Table structure for table `storerating`
--

CREATE TABLE IF NOT EXISTS `storerating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `storerating`
--

INSERT INTO `storerating` (`id`, `user`, `store`, `rating`) VALUES
(2, 1, 6, 3),
(3, 2, 6, 4),
(4, 6, 6, 5),
(7, 8, 28, 0),
(9, 12, 28, 0),
(30, 50, 6, 5),
(32, 49, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`) VALUES
(1, 'men'),
(2, 'women'),
(3, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `description` text,
  `eventinfo` int(11) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `accesslevel` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `facebookuserid` varchar(255) DEFAULT NULL,
  `newsletterstatus` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `showwebsite` varchar(255) DEFAULT NULL,
  `eventsheld` varchar(255) DEFAULT NULL,
  `topeventlocation` varchar(255) DEFAULT NULL,
  `brandid` int(11) NOT NULL,
  `storeid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `password`, `email`, `website`, `description`, `eventinfo`, `contact`, `address`, `city`, `pincode`, `dob`, `accesslevel`, `timestamp`, `facebookuserid`, `newsletterstatus`, `status`, `logo`, `showwebsite`, `eventsheld`, `topeventlocation`, `brandid`, `storeid`) VALUES
(1, 'wohlig', '', 'a63526467438df9566c508027d9cb06b', 'wohlig@wohlig.com', '', '', 0, '233232', 'dadar', 'Mumbai', 322323, '1991-01-08', 1, '0000-00-00 00:00:00', '0', 0, 1, NULL, NULL, NULL, NULL, 0, 0),
(4, 'pratik', 'shah', '0cb2b62754dfd12b6ed0161d4b447df7', 'pratik@wohlig.com', '', '', 0, '8080209455', 'mulund', 'Mumbai', 400080, '1991-07-01', 1, '2014-05-12 06:52:44', '', 0, 1, NULL, NULL, NULL, NULL, 0, 0),
(5, 'wohlig123', 'tech', 'wohlig123', 'wohlig1@wohlig.com', 'www.wohlig.com', 'abc', 1234, '8989898989', 'abcdefg', 'mumbai', 200001, '1991-01-08', 1, '2014-05-12 06:52:44', '2', 2, 1, NULL, NULL, NULL, NULL, 0, 0),
(6, 'wohlig1', 'tech', 'a63526467438df9566c508027d9cb06b', 'wohlig2@wohlig.com', 'wohlig.com', '0', 1234, '8989898989', 'abcdefg', 'mumbai', NULL, '1991-01-08', 1, '2014-05-12 06:52:44', '2', 2, 1, NULL, NULL, NULL, NULL, 0, 0),
(7, 'fskdjl', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 0, '', '', '', 0, '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(8, '', '', 'e10adc3949ba59abbe56e057f20f883e', 'abc@gmail.com', '', '', 0, '', '', '', 0, '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(9, '', '', '5ca2aa845c8cd5ace6b016841f100d82', 'fsd@fas', '', '', 0, '', '', '', 0, '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, NULL, NULL, NULL, NULL, 0, 0),
(10, NULL, NULL, '5a5dc3936c05c32e61aa539e7ffb40c0', 'jfhskfaldjs@kdfhakjsdh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-12 11:44:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(11, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', 'kjhdkjf@dkfjks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-12 11:45:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(12, NULL, NULL, '900150983cd24fb0d6963f7d28e17f72', 'jfaksdj@dkjfak', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-12 11:50:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(13, NULL, NULL, '47bce5c74f589f4867dbd57e9ca9f808', 'aaa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-12 11:58:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(14, 'jagruti', 'new', 'cccc6e08862742cfe6e384ac9361d55e', 'aaaa@gmail.com', '', '0', 1, '', '', '', 0, '0000-00-00', 3, '0000-00-00 00:00:00', '', 0, 1, '', 'false', 'true', 'false', 0, 0),
(15, NULL, NULL, '594f803b380a41396ed63dca39503542', 'aaaab@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-17 06:19:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(16, NULL, NULL, '0cc175b9c0f1b6a831c399e269772661', 'a@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-18 08:03:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(17, 'abc', '', '187ef4436122d1cc2f40dc2b92f0eba0', 'ab@gmail.com', '', '<h2 style="text-align: center;"><i><u>organiser abc</u></i></h2><br/>&#10;', 1, '', '', '', 0, '0000-00-00', 2, '2014-07-18 12:38:38', '', 0, 1, '', 'true', 'true', '', 0, 0),
(18, 'aa', '', 'f30aa7a662c728b7407c54ae6bfd27d1', 'dd@dd.com', '', 'aaa', 0, '', '', '', 0, '0000-00-00', 2, '2014-07-18 13:07:08', '', 0, 1, '', '', '', '', 0, 0),
(19, NULL, NULL, '0192023a7bbd73250516f069df18b500', 'admin@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-19 08:56:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(20, NULL, NULL, 'fe01ce2a7fbac8fafaed7c982a04e229', 'demo@demo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-19 09:29:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(21, NULL, NULL, 'd16fb36f0911f878998c136191af705e', 'xyz@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-19 10:07:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(22, NULL, NULL, 'db8834197077287186e8c7524ca43d6f', 'vijaya@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-07-19 10:17:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(23, 'abhay', 'amin', '51adfb6733c245efe399f59e45587a6d', 'contact.abhay2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 13:56:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(24, '1', '2', '2d1fd153e0b593aac14f2b1260803567', '1@g.c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 13:58:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(25, 'chintan', 'Amin', 'dfb190c8390c9889d19779e1ad0bbee5', 'chintan@www.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 13:59:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(26, 'Tushar', 'Sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:25:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(27, 'Tusahr', 'Sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:28:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(28, 'Abhay', 'Amin', '51adfb6733c245efe399f59e45587a6d', 'abhay@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:29:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(29, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:29:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(30, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(31, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(32, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(33, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(34, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(35, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(36, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(37, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(38, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(39, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(40, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(41, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(42, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(43, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(44, 'tushar', 'sachde', '1ef28aa38d478898a07f7c82fc74ed99', 'tushar@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:30:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(45, 'abhay', 'Amin', '51adfb6733c245efe399f59e45587a6d', 'abhay@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 14:32:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(46, 'chintu', 'sha', '006d2143154327a64d86a264aea225f3', 'chintn@whlg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 20:19:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(47, 'e', 'e', '099b3b060154898840f0ebdfb46ec78f', 'e@2.z', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-07 20:21:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(48, 'q', 'q', '006d2143154327a64d86a264aea225f3', 'q@q.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-08 07:19:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(49, 'Chintan', 'Shah', '4a8a08f09d37b73795649038408b5f33', 'c@w.c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-09 11:06:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(50, 'Dharmil', 'sheth', '4f265ca43eb5cf2c4386ee7c9c04633d', 'dharmilsheth@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-10 09:21:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(51, 'jagruti', 'patil', '3677b23baa08f74c28aba07f0cb6554e', 'jagruti@wohlig.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2014-10-17 13:05:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(52, 'nohid', 'patel', 'ca210daffa9ac5959285606ba22bb69a', 'nohid@gmail.com', 'demo.com', 'demo', NULL, '343443', 'demo', 'demo', 4544554, '2014-10-19', 2, '2014-10-18 09:29:47', '1', NULL, 1, NULL, NULL, NULL, NULL, 45, 48);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onuser` int(11) NOT NULL,
  `fromuser` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `onuser`, `fromuser`, `description`, `timestamp`) VALUES
(1, 1, 1, 'User Address Edited', '2014-05-12 06:50:21'),
(2, 1, 1, 'User Details Edited', '2014-05-12 06:51:43'),
(3, 1, 1, 'User Details Edited', '2014-05-12 06:51:53'),
(4, 4, 1, 'User Created', '2014-05-12 06:52:44'),
(5, 4, 1, 'User Address Edited', '2014-05-12 12:31:48'),
(6, 6, 6, 'User Details Edited', '2014-09-23 06:13:40'),
(7, 14, 1, 'User Details Edited', '2014-10-07 08:53:16'),
(8, 14, 4, 'User Details Edited', '2014-10-07 09:26:45'),
(9, 52, 6, 'User Created', '2014-10-18 09:29:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
