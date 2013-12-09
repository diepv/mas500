-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2013 at 07:18 PM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `basic_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `Headlines_By_Date`
--

CREATE TABLE IF NOT EXISTS `Headlines_By_Date` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `geocode` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nyt_politics` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nyt_worldnews` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nyt_US` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `local_news` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `local_features` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter_trend_1` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter_trend_2` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter_trend_3` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter_trend_4` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Headlines_By_Date`
--

INSERT INTO `Headlines_By_Date` (`id`, `date`, `geocode`, `nyt_politics`, `nyt_worldnews`, `nyt_US`, `local_news`, `local_features`, `twitter_trend_1`, `twitter_trend_2`, `twitter_trend_3`, `twitter_trend_4`) VALUES
(0, '2013-12-08 13:05:02', '(42.360347, -71.087246)', 'TEST NYT POLITICS', 'TEST NYT WORLD NEWS', 'TEST NYT US', 'TEST LOCAL NEWS', 'TEST LOCAL FEATURES', 'TEST TWITTER 1', 'TEST TWITTER 2', 'TEST TWITTER 3', 'TEST TWITTER 4');

-- --------------------------------------------------------

--
-- Table structure for table `Program_By_Date`
--

CREATE TABLE IF NOT EXISTS `Program_By_Date` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `program_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_3` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_4` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_5` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_6` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_7` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_8` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_9` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program_10` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Program_By_Date`
--

INSERT INTO `Program_By_Date` (`id`, `user_id`, `date`, `program_1`, `program_2`, `program_3`, `program_4`, `program_5`, `program_6`, `program_7`, `program_8`, `program_9`, `program_10`) VALUES
(0, 0, '2013-12-08 13:14:58', 'PROGRAM 1', 'PROGRAM 2', 'PROGRAM 3', 'PROGRAM 4', 'PROGRAM 5', 'PROGRAM 6', 'PROGRAM 7', 'PROGRAM 8', 'PROGRAM 9', 'PROGRAM 10');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `geocode` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `twitter_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `geocode`, `twitter_id`) VALUES
(0, 'TESTTY TESTME', '(42.360347, -71.087246)', 123456789);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*TEST QUERIES*/

SELECT * FROM Program_By_Date WHERE id=0;
SELECT id FROM Program_By_Date WHERE program_6='PROGRAM 6';
SELECT pbd.id, hbd.id FROM Program_By_Date as pbd , Headlines_By_Date as hbd WHERE pbd.date = hbd.date