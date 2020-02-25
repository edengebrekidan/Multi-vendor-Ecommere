-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 01, 2019 at 12:09 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkenterp_rayant`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Rayant\'s Marketplace', '', '', 'troyb@tkenterprisesinc.com', '47bec29e7a62959f0b6cfae3bf5322f3cd2ee69a', '1', '1549957804'),
(2, 'Mr. Accountant', '017', 'Dhaka', 'troyb@bbaileyco.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '4', '1430737266'),
(3, 'Mr Manager', '021525566', 'Niketon Dhaka', 'manager@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '6', '1433682938'),
(4, 'Piaocheng', '123123123', 'SY', 'pc61300811@gmail.com', 'd476458cac7679de860b57bd4a7ecc8cd4631a5c', '1', '1933682938');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `page` longtext,
  `place` longtext,
  `num` longtext,
  `status` longtext,
  `link` longtext,
  `image_ext` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `page`, `place`, `num`, `status`, `link`, `image_ext`) VALUES
(1, 'home', 'after_slider', '1', 'ok', '', '.jpg'),
(2, 'home', 'after_slider', '2', 'ok', '', '.jpg'),
(3, 'home', 'after_slider', '3', 'ok', '', '.jpg'),
(4, 'home', 'after_slider', '4', 'ok', '', '.jpg'),
(5, 'home', 'after_featured', '1', '0', '', NULL),
(6, 'home', 'after_featured', '2', '0', '', NULL),
(7, 'home', 'after_featured', '3', '0', '', NULL),
(8, 'home', 'after_featured', '4', '0', '', NULL),
(9, 'home', 'after_search', '1', '0', '', NULL),
(10, 'home', 'after_search', '2', '0', '', NULL),
(11, 'home', 'after_search', '3', '0', '', NULL),
(12, 'home', 'after_search', '4', '0', '', NULL),
(13, 'home', 'after_category', '1', '0', '', NULL),
(14, 'home', 'after_category', '2', '0', '', NULL),
(15, 'home', 'after_category', '3', '0', '', NULL),
(16, 'home', 'after_category', '4', '0', '', NULL),
(17, 'home', 'after_latest', '1', '0', '', NULL),
(18, 'home', 'after_popular', '1', '0', '', NULL),
(19, 'home', 'after_most_viewed', '1', '0', '', NULL),
(20, 'category', 'after_filters', '1', 'ok', '', NULL),
(21, 'featured', 'after_most_sold', '1', '0', '', NULL),
(22, 'featured', 'after_most_viewed', '1', '0', '', NULL),
(23, 'vendor_home', 'after_filter', '1', '', '', NULL),
(27, 'home', 'after_slider', '5', 'ok', '', '.jpg'),
(28, 'home', 'after_slider', '6', 'ok', '', '.jpg'),
(29, 'home', 'after_slider', '7', 'ok', '', '.jpg'),
(30, 'home', 'after_slider', '8', 'ok', '', '.jpg'),
(31, 'home', 'after_slider', '9', 'ok', '', '.jpg'),
(32, 'home', 'after_slider', '10', 'ok', '', '.jpg'),
(33, 'home', 'after_slider', '11', 'ok', '', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `summery` varchar(1000) DEFAULT NULL,
  `author` varchar(500) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `description` longtext,
  `status` varchar(100) DEFAULT NULL,
  `blog_category` varchar(25) DEFAULT NULL,
  `number_of_view` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen&nbsp;</span><br></p>', 'mr.tom', '2016-09-25', '<p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><span [removed]=\"text-align: justify;\"><br></span><span [removed]=\"\" justify;\"=\"\"><br></span><br></p>', NULL, '2', 1),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is&nbsp;</span><br></p>', 'mr. viza', '2016-09-24', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><p><br></p>', NULL, '2', 1),
(4, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p>', '', '2018-02-07', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '3', 1),
(5, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span></p>', '', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '2', 1),
(6, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '3', 0),
(7, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '1', 1),
(8, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p><hr id=\"[object Object]\"><p><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"\" justify;\"=\"\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><span [removed]=\"text-align: justify;\">&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span></p>', NULL, '1', 0);
INSERT INTO `blog` (`blog_id`, `title`, `summery`, `author`, `date`, `description`, `status`, `blog_category`, `number_of_view`) VALUES
(9, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '1', 1),
(10, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '4', 0),
(11, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-07', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '4', 1),
(12, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-04', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '5', 1),
(13, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-07', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '5', 1),
(14, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry ', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', 'Mr Author', '2018-02-08', '<p><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><br></p>', NULL, '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`blog_category_id`, `name`) VALUES
(1, 'Health'),
(2, 'Beauty'),
(3, 'Sports'),
(4, 'Foods and beverages'),
(5, 'Science & Tech'),
(6, 'Electronic');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `name` longtext,
  `description` longtext,
  `logo` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `description`, `logo`) VALUES
(280, 'Activewear', NULL, 'brand_280.'),
(281, 'Tank Tops', NULL, 'brand_281.'),
(282, 'Vest', NULL, 'brand_282.'),
(283, 'Booties', NULL, 'brand_283.'),
(284, 'Jump Suit', NULL, 'brand_284.'),
(285, 'Aprons', NULL, 'brand_285.'),
(286, 'Costumes', NULL, 'brand_286.'),
(287, 'Corset', NULL, 'brand_287.'),
(288, 'Hoodie', NULL, 'brand_288.'),
(289, 'Poncho', NULL, 'brand_289.'),
(290, 'Swimwear', NULL, 'brand_290.'),
(291, 'Suits', NULL, 'brand_291.'),
(292, 'Dresses', NULL, 'brand_292.'),
(293, 'Coats', NULL, 'brand_293.'),
(294, 'Skirts', NULL, 'brand_294.'),
(295, 'Jacket', NULL, 'brand_295.'),
(296, 'Pants', NULL, 'brand_296.'),
(297, 'Shirts', NULL, 'brand_297.'),
(298, 'Shorts', NULL, 'brand_298.'),
(299, 'Sleepwear', NULL, 'brand_299.'),
(300, 'Sweaters', NULL, 'brand_300.'),
(301, 'T-shirt', NULL, 'brand_301.'),
(302, 'Jewelry making', NULL, 'brand_302.'),
(303, 'Beauty', NULL, 'brand_303.'),
(304, 'Sewing, Textiles& Fibers', NULL, 'brand_304.'),
(305, 'Hatmaking', NULL, 'brand_305.'),
(306, 'Paper, Party & Kids', NULL, 'brand_306.'),
(307, 'scrapbooking', NULL, 'brand_307.'),
(308, 'Visual Arts', NULL, 'brand_308.'),
(309, 'Home & Hobby', NULL, 'brand_309.'),
(310, 'Sculpting & Forming', NULL, 'brand_310.'),
(311, 'Leather Working', NULL, 'brand_311.'),
(312, 'Leather', NULL, 'brand_312.jpg'),
(313, 'Bracelets', NULL, 'brand_313.'),
(314, 'Jewelry Sets', NULL, 'brand_314.'),
(315, 'Headwear', NULL, 'brand_315.'),
(316, 'Supplies ', NULL, 'brand_316.'),
(317, 'Indian Jewelry', NULL, 'brand_317.'),
(318, 'Religious Jewelry', NULL, 'brand_318.'),
(319, 'Rosaries', NULL, 'brand_319.'),
(320, 'Celtic Jewelry', NULL, 'brand_320.'),
(321, 'Jewelry boxes', NULL, 'brand_321.'),
(322, 'Necklaces', NULL, 'brand_322.'),
(323, 'Nature Jewelry', NULL, 'brand_323.'),
(324, 'Anklets', NULL, 'brand_324.'),
(325, 'Brooches & Pins', NULL, 'brand_325.'),
(326, 'Earrings', NULL, 'brand_326.'),
(327, 'Chokers', NULL, 'brand_327.'),
(328, 'Pendants', NULL, 'brand_328.jpg'),
(329, 'Rings', NULL, 'brand_329.'),
(330, 'Watches', NULL, 'brand_330.'),
(331, 'Chains', NULL, 'brand_331.'),
(332, 'Bridal Jewelry', NULL, 'brand_332.'),
(333, 'Hair Pins', NULL, 'brand_333.'),
(334, 'Test', NULL, 'brand_334.jpg'),
(335, 'N/a', NULL, 'brand_335.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_stock`
--

CREATE TABLE `bundle_stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext,
  `product_bundle` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bundle_stock`
--

INSERT INTO `bundle_stock` (`stock_id`, `type`, `product_bundle`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '101', '4', '999.00', '3996', '', '1521357279', NULL, NULL),
(2, 'destroy', '101', '5', NULL, '4995', '', '1521357287', NULL, NULL),
(3, 'add', '102', '9', '120.00', '1080', '', '1521606561', NULL, NULL),
(4, 'destroy', '102', '2', NULL, '240', '', '1521610522', NULL, NULL),
(5, 'add', '102', '12', '120.00', '1440', '', '1521616802', NULL, NULL),
(6, 'add', '123', '30', '14.99', '449.7', '', '1522921498', NULL, NULL),
(7, 'add', '122', '20', '80.00', '1600', '', '1522921821', NULL, NULL),
(8, 'add', '121', '15', '499.00', '7485', '', '1522922093', NULL, NULL),
(9, 'add', '120', '11', '1199.00', '13189', '', '1522922900', NULL, NULL),
(10, 'add', '118', '29', '39.99', '1159.71', '', '1522923029', NULL, NULL),
(11, 'add', '117', '39', '249.99', '9749.61', '', '1522923088', NULL, NULL),
(12, 'add', '116', '11', '15.99', '175.89000000000001', '', '1522923244', NULL, NULL),
(13, 'add', '119', '30', '1099.00', '32970', '', '1522923499', NULL, NULL),
(14, 'add', '115', '49', '25.59', '1253.91', '', '1522923556', NULL, NULL),
(15, 'add', '114', '49', '139.00', '6811', '', '1522923574', NULL, NULL),
(16, 'add', '102', '80', '24.99', '1999.1999999999998', '', '1522923749', NULL, NULL),
(17, 'add', '113', '30', '15.00', '450', '', '1522923771', NULL, NULL),
(18, 'add', '126', '50', '23.00', '1150', '', '1523942068', NULL, NULL),
(19, 'add', '163', '20', '7000.00', '140000', '', '1524845958', NULL, NULL),
(20, 'add', '163', '22', '7000.00', '154000', 'nothing', '1524904062', NULL, NULL),
(21, 'destroy', '163', '2', NULL, '14000', '', '1524905432', NULL, NULL),
(22, 'destroy', '163', '2', NULL, '14000', '', '1524910766', NULL, NULL),
(23, 'add', '179', '500', '99.00', '49500', '', '1530436948', NULL, NULL),
(24, 'add', '123', '500', '300.00', '150000', '', '1531643194', NULL, NULL),
(25, 'add', '122', '500', '80.00', '40000', '', '1531643204', NULL, NULL),
(26, 'add', '121', '100', '499.00', '49900', '', '1531643213', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', 'troyb@tkenterprisesinc.com'),
(2, 'shipping_cost', 'ok', '10'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '1'),
(6, 'shipment_info', '', '<p><span style=\"line-height: 17.1429px;\">&nbsp;</span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p><p>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p><p>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</p><p>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</p><p>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</p><p>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'original'),
(11, 'faqs', '', '[{\"question\":\"How to install the script?\",\"answer\":\"<p open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;=\\\"\\\" line-height:=\\\"\\\" 1.4;\\\"=\\\"\\\" style=\\\"padding: 0px;\\\"><span id=\\\"docs-internal-guid-f5a12cba-cd69-9b16-f96d-28e5d9a3f80f\\\" style=\\\"\\\">Please follow the following procedure to install this script in local or, online server:<\\/span><\\/p><p open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;=\\\"\\\" line-height:=\\\"\\\" 1.4;\\\"=\\\"\\\" style=\\\"margin-bottom: 24px; padding: 0px; text-align: justify;\\\"><span style=\\\"vertical-align: baseline;\\\"><\\/span><\\/p><ol open=\\\"\\\" sans\\\",=\\\"\\\" roboto,=\\\"\\\" \\\"helvetica=\\\"\\\" neue\\\",=\\\"\\\" helvetica,=\\\"\\\" arial,=\\\"\\\" sans-serif;=\\\"\\\" font-size:=\\\"\\\" 16px;=\\\"\\\" text-align:=\\\"\\\" justify;\\\"=\\\"\\\" style=\\\"padding: 0px; text-align: justify;\\\"><li style=\\\"line-height: 1.4;\\\">Upload the&nbsp;<span style=\\\"vertical-align: baseline;\\\">zip<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;&nbsp;file downloaded from CodeCanyon to your server in the public_html or, any other directory you intend the script to run.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Extract the&nbsp;<span style=\\\"vertical-align: baseline;\\\">zip&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">file in that directory.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Create a&nbsp;<span style=\\\"vertical-align: baseline;\\\">new database<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;from your server&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">MySQL<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;with&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">PhpMyAdmin<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Create&nbsp;<span style=\\\"vertical-align: baseline;\\\">db user<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;to the database and link that database to the&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">db user<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Go to the URL of the unzipped folder.<br><\\/li><li style=\\\"line-height: 1.4;\\\">Make sure the required files are permitted&nbsp;<span style=\\\"vertical-align: baseline;\\\">writeable<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;in the folder you put them and all the requirements are fulfilled by the server environment.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Fill up these Installation form with your&nbsp;<span style=\\\"vertical-align: baseline;\\\">database hostname<\\/span><span style=\\\"vertical-align: baseline;\\\">,&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database username<\\/span><span style=\\\"vertical-align: baseline;\\\">, &nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database password<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;and&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">database name<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;respectively which you have created in the previous step.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Provide your default admin credentials in the form.<br><\\/li><li style=\\\"line-height: 1.4;\\\">Click on \\u201c<span style=\\\"vertical-align: baseline;\\\">Install Supershop<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u201d and wait for the installation to complete.<\\/span><br><\\/li><li style=\\\"line-height: 1.4;\\\">Links to \\u201c<span style=\\\"vertical-align: baseline;\\\">Activation Form<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u201d, \\\"Admin Panel and the \\\"Frontend\\\" of the site will appear. First, activate the license for your online domain and then browse in it. Admin login URL will be&nbsp;your_site\\/index.php\\/admin<\\/span><\\/li><\\/ol>\"},{\"question\":\"How to setup Business setup?\",\"answer\":\"<ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; text-align: justify;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Log into <\\/span><span style=\\\"vertical-align: baseline;\\\">Admin Panel<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the <\\/span><span style=\\\"vertical-align: baseline;\\\">Navigation<\\/span><span style=\\\"vertical-align: baseline;\\\">, Go to <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: decimal; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">We have divided the whole Vendor Management into 3 parts to simplify the system so that anyone can understand the processes completely. These &nbsp;3 parts are described as Vendor List, Vendor Payments &amp; Vendor Packages.<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor List: <\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Total list of the vendors are shown in a table from where this list can be downloaded in pdf, xls or clv file format. Admin can search for any specific vendor from the search box available in the table.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the list Admin can view a short described profile of the vendors. Admin can approve newly registered vendors and can also postpone the vendors to log in.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can pay to vendor a certain amount to money which are sold through the online payment methods. Admin will not pay to vendor for those products which are sold on cash on delivery method.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can delete any vendor from the list.<\\/span><\\/p><\\/li><\\/ol><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor Payments:<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">A list of vendors are shown who have upgraded their package.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can check payment details.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Admin can delete any payment.<\\/span><\\/p><\\/li><\\/ol><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-alpha; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Vendor Package: <\\/span><span style=\\\"vertical-align: baseline;\\\">Admin can create, edit &amp; delete vendor packages from here. Admin can also download the package list in pdf, csv or xls file format and can search for specific vendor package. Process of creating a vendor package:<\\/span><\\/p><\\/li><ol style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px;\\\"><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Log in<\\/span><span style=\\\"vertical-align: baseline;\\\"> to the Admin Panel &nbsp;using email &amp; password.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">From the <\\/span><span style=\\\"vertical-align: baseline;\\\">Navigation<\\/span><span style=\\\"vertical-align: baseline;\\\">, go to <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor ? Vendor Package<\\/span><span style=\\\"vertical-align: baseline;\\\"> where you can see a table of <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor Package List <\\/span><span style=\\\"vertical-align: baseline;\\\">which are created before.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Above the vendor package list, click on the button named \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">Create Vendorship<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 to create the vendor package.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Fill up the form by giving the proper <\\/span><span style=\\\"vertical-align: baseline;\\\">title <\\/span><span style=\\\"vertical-align: baseline;\\\">of the vendor package, set the no. of <\\/span><span style=\\\"vertical-align: baseline;\\\">maximum products<\\/span><span style=\\\"vertical-align: baseline;\\\"> a vendor can upload of this package, define a <\\/span><span style=\\\"vertical-align: baseline;\\\">price<\\/span><span style=\\\"vertical-align: baseline;\\\"> of the package, set the <\\/span><span style=\\\"vertical-align: baseline;\\\">duration of expiration<\\/span><span style=\\\"vertical-align: baseline;\\\"> of the package and select a vendor package <\\/span><span style=\\\"vertical-align: baseline;\\\">seal<\\/span><span style=\\\"vertical-align: baseline;\\\">.<\\/span><\\/p><\\/li><li dir=\\\"ltr\\\" style=\\\"list-style-type: lower-roman; vertical-align: baseline;\\\"><p dir=\\\"ltr\\\" style=\\\"margin-top: 0pt; margin-bottom: 0pt; padding: 0px; line-height: 1.38;\\\"><span style=\\\"vertical-align: baseline;\\\">Click the \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">Save<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 button to create the vendor package.<\\/span><\\/p><\\/li><\\/ol><\\/ol><\\/ol><p style=\\\"margin-bottom: 24px; padding: 0px;\\\"><span style=\\\"vertical-align: baseline;\\\">The newly created package will be shown on the <\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor Package List (<\\/span><span style=\\\"vertical-align: baseline;\\\">Vendor ? Vendor Package<\\/span><span style=\\\"vertical-align: baseline;\\\">)<\\/span><span style=\\\"vertical-align: baseline;\\\"> table where you can <\\/span><span style=\\\"vertical-align: baseline;\\\">Edit &amp; Delete<\\/span><span style=\\\"vertical-align: baseline;\\\"> the package.<\\/span><\\/p>\"},{\"question\":\"How to Purchase a Product?\",\"answer\":\"<ol style=\\\"padding: 0px; text-align: justify;\\\"><li style=\\\"line-height: 1.6;\\\">Click on the \\u2018<span style=\\\"vertical-align: baseline;\\\">Add to cart<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019 button of any product which you want to purchase.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">The products which are added to cart will be in the right side of middle header portion.<br><\\/li><li style=\\\"line-height: 1.6;\\\">From there, go to&nbsp;<span style=\\\"vertical-align: baseline;\\\">checkout<\\/span><span style=\\\"vertical-align: baseline;\\\">&nbsp;page.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Log in<span style=\\\"vertical-align: baseline;\\\">&nbsp;to your account using authenticated email &amp; password or you can login through social media(facebook &amp; google plus). If you already logged in, follow the next step.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">In the checkout page, you can apply the&nbsp;<span style=\\\"vertical-align: baseline;\\\">coupon&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">if it is provided to you. Then click \\u2018<\\/span><span style=\\\"vertical-align: baseline;\\\">next<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Enter the address where you want to deliver your products. Then click \\u2018<span style=\\\"vertical-align: baseline;\\\">next<\\/span><span style=\\\"vertical-align: baseline;\\\">\\u2019.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Choose your&nbsp;<span style=\\\"vertical-align: baseline;\\\">payment method<\\/span><span style=\\\"vertical-align: baseline;\\\">. Then Place your order.<\\/span><br><\\/li><li style=\\\"line-height: 1.6;\\\">Complete the payment using your paypal or stripe account.<br><\\/li><li style=\\\"line-height: 1.6;\\\">System will generate an&nbsp;<span style=\\\"vertical-align: baseline;\\\">invoice&nbsp;<\\/span><span style=\\\"vertical-align: baseline;\\\">for your purchase. You can print the invoice.<\\/span><\\/li><\\/ol>\"}]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'no'),
(14, 'stripe_secret', '', 'sk_test_NYIpPjs6gbmuogdwUuJ8She4'),
(15, 'stripe_publishable', '', 'pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx'),
(16, 'home_def_currency', '', '1'),
(17, 'c2_set', NULL, 'no'),
(18, 'c2_user', NULL, '901378053'),
(19, 'c2_secret', NULL, '8677E1C0-7CB9-4D35-A513-05CA089B5E70'),
(20, 'c2_type', NULL, 'demo'),
(21, 'currency_format', NULL, 'us'),
(22, 'symbol_format', NULL, 's_amount'),
(23, 'no_of_decimals', NULL, '2'),
(24, 'vp_set', NULL, 'no'),
(25, 'vp_merchant_id', NULL, 'DEMO'),
(26, 'pum_set', NULL, 'ok'),
(27, 'pum_merchant_key', NULL, 'RR2LThlB'),
(28, 'pum_merchant_salt', NULL, '3M85o3dezx'),
(29, 'pum_account_type', NULL, 'sandbox'),
(30, 'commission_set', NULL, 'yes'),
(31, 'commission_amount', NULL, '5'),
(32, 'ssl_store_id', NULL, 'techr5affa68a7602c'),
(33, 'ssl_store_passwd', NULL, 'techr5affa68a7602c@ssl'),
(34, 'ssl_type', NULL, 'sandbox'),
(35, 'ssl_set', NULL, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` longtext,
  `description` longtext,
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext,
  `data_brands` longtext,
  `data_vendors` longtext,
  `data_subdets` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `digital`, `banner`, `data_brands`, `data_vendors`, `data_subdets`) VALUES
(1, 'Automobile', NULL, NULL, 'category_1.jpg', '', '3:::Tom;;;;;;10:::Denton Hansen', '[{\"sub_id\":\"1\",\"sub_name\":\"Car\",\"min\":9,\"max\":63750,\"brands\":\"\"},{\"sub_id\":\"2\",\"sub_name\":\"Racing Car\",\"min\":535500,\"max\":535500,\"brands\":\"\"},{\"sub_id\":\"3\",\"sub_name\":\"Luxury SUV\",\"min\":55000,\"max\":140825,\"brands\":\"\"},{\"sub_id\":\"5\",\"sub_name\":\"Chopper Bike\",\"min\":13150,\"max\":79560,\"brands\":\"\"},{\"sub_id\":\"6\",\"sub_name\":\"Racing Bike\",\"min\":4999,\"max\":45000,\"brands\":\"\"},{\"sub_id\":\"63\",\"sub_name\":\"Private Air\",\"min\":117139,\"max\":4800000,\"brands\":\"\"}]'),
(4, 'Women fashion', NULL, NULL, 'category_4.jpg', '', '1:::Lavinia Mckee;;;;;;5:::Youn', '[{\"sub_id\":\"8\",\"sub_name\":\"Party Dress\",\"min\":299,\"max\":299,\"brands\":\"\"},{\"sub_id\":\"9\",\"sub_name\":\"Women Secret\",\"min\":18,\"max\":44,\"brands\":\"\"},{\"sub_id\":\"10\",\"sub_name\":\"Sleeping Dress\",\"min\":13,\"max\":19,\"brands\":\"\"},{\"sub_id\":\"11\",\"sub_name\":\"Beauty & Health\",\"min\":13,\"max\":4530,\"brands\":\"\"},{\"sub_id\":\"34\",\"sub_name\":\"Bridal Attire\",\"min\":350,\"max\":350,\"brands\":\"\"},{\"sub_id\":\"35\",\"sub_name\":\"Formal Dress\",\"min\":35,\"max\":150,\"brands\":\"\"},{\"sub_id\":\"36\",\"sub_name\":\"Women s Shoe\",\"min\":35,\"max\":55,\"brands\":\"\"},{\"sub_id\":\"37\",\"sub_name\":\"Fragrance World\",\"min\":51,\"max\":159,\"brands\":\"\"},{\"sub_id\":\"39\",\"sub_name\":\"Women s Time Zone\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"40\",\"sub_name\":\"Casual wear\",\"min\":24,\"max\":24,\"brands\":\"\"}]'),
(5, 'Men fashion', NULL, NULL, 'category_5.jpg', '', '3:::Tom;;;;;;16:::Carissa Newman;;;;;;29:::AngelFrank', '[{\"sub_id\":\"27\",\"sub_name\":\"Formal Dress\",\"min\":79,\"max\":372,\"brands\":\"\"},{\"sub_id\":\"28\",\"sub_name\":\"Men s shoe\",\"min\":45,\"max\":111,\"brands\":\"\"},{\"sub_id\":\"29\",\"sub_name\":\"Casual Dress\",\"min\":32,\"max\":53,\"brands\":\"\"},{\"sub_id\":\"30\",\"sub_name\":\"Men Watch\",\"min\":100,\"max\":699,\"brands\":\"\"},{\"sub_id\":\"89\",\"sub_name\":\"Accessories\",\"min\":10,\"max\":75,\"brands\":\"\"},{\"sub_id\":\"90\",\"sub_name\":\"Outerwear & Jackets\",\"min\":39,\"max\":39,\"brands\":\"\"}]'),
(16, 'Electronics', NULL, NULL, 'category_16.jpg', '', '7:::Tony Stark;;;;;;16:::Carissa Newman', '[{\"sub_id\":\"81\",\"sub_name\":\"Cell phone\",\"min\":50,\"max\":794,\"brands\":\"\"},{\"sub_id\":\"83\",\"sub_name\":\"Tools\",\"min\":12,\"max\":106,\"brands\":\"\"},{\"sub_id\":\"85\",\"sub_name\":\"Mobile\",\"min\":399,\"max\":1200,\"brands\":\"\"},{\"sub_id\":\"86\",\"sub_name\":\"Laptop\",\"min\":49,\"max\":1000,\"brands\":\"\"},{\"sub_id\":\"87\",\"sub_name\":\"Desktop PC\",\"min\":29,\"max\":5000,\"brands\":\"\"},{\"sub_id\":\"88\",\"sub_name\":\"DSLR Camera\",\"min\":1000,\"max\":3500,\"brands\":\"\"}]'),
(17, 'Skin Care Products', NULL, NULL, 'category_17.jpg', '', '9:::Cheyenne Medina', '[{\"sub_id\":\"78\",\"sub_name\":\"Only Skin\",\"min\":4,\"max\":40,\"brands\":\"\"},{\"sub_id\":\"91\",\"sub_name\":\"Essential Oil\",\"min\":29,\"max\":29,\"brands\":\"\"},{\"sub_id\":\"92\",\"sub_name\":\"Face Mask\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"93\",\"sub_name\":\"Facial Care\",\"min\":28,\"max\":39,\"brands\":\"\"},{\"sub_id\":\"94\",\"sub_name\":\"Body Care\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"95\",\"sub_name\":\"Facial Steamer\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"96\",\"sub_name\":\"Sun care\",\"min\":75,\"max\":75,\"brands\":\"\"}]'),
(18, 'Toiletries', NULL, NULL, 'category_18.jpg', '', '', '[{\"sub_id\":\"79\",\"sub_name\":\"Make-up\",\"min\":18,\"max\":23,\"brands\":\"\"},{\"sub_id\":\"97\",\"sub_name\":\"Hair care\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"98\",\"sub_name\":\"Deodorants\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"99\",\"sub_name\":\"Beauty aids\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"100\",\"sub_name\":\"Bath toiletries\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"101\",\"sub_name\":\"Oral health\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"102\",\"sub_name\":\"Shaving products\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"103\",\"sub_name\":\"Luxury toiletries & cosmetics\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(23, 'Phones & Accessories', NULL, NULL, 'category_23.jpg', '', '', '[{\"sub_id\":\"104\",\"sub_name\":\"Hot Categories\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"105\",\"sub_name\":\"Cases & Covers\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"106\",\"sub_name\":\"Mobile Phone Accessories\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"107\",\"sub_name\":\"Mobile Phone Parts\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(40, 'tias artwork®', NULL, NULL, 'category_40.', '', '', '[]'),
(35, 'Artwork', NULL, NULL, 'category_35.', '', '', '[{\"sub_id\":\"124\",\"sub_name\":\"Artwork\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(36, 'Toys & Games', NULL, NULL, 'category_36.', '', '', '[{\"sub_id\":\"125\",\"sub_name\":\"Toys & Games\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(37, 'Home Decor', NULL, NULL, 'category_37.', '', '', '[{\"sub_id\":\"126\",\"sub_name\":\"Home Decor\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(38, 'Bath & Body', NULL, NULL, 'category_38.', '', '', '[{\"sub_id\":\"127\",\"sub_name\":\"Bath & Body\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(30, 'Clothing', NULL, NULL, 'category_30.', '280:::Activewear;;;;;;281:::Tank Tops;;;;;;282:::Vest;;;;;;283:::Booties;;;;;;284:::Jump Suit;;;;;;285:::Aprons;;;;;;286:::Costumes;;;;;;287:::Corset;;;;;;288:::Hoodie;;;;;;289:::Poncho;;;;;;290:::Swimwear;;;;;;291:::Suits;;;;;;292:::Dresses;;;;;;293:::Coats;;;;;;294:::Skirts;;;;;;295:::Jacket;;;;;;296:::Pants;;;;;;297:::Shirts;;;;;;298:::Shorts;;;;;;299:::Sleepwear;;;;;;300:::Sweaters;;;;;;301:::T-shirt', '', '[{\"sub_id\":\"114\",\"sub_name\":\" Mens\",\"min\":10,\"max\":68,\"brands\":\"280:::Activewear;;;;;;281:::Tank Tops;;;;;;282:::Vest;;;;;;283:::Booties;;;;;;284:::Jump Suit;;;;;;285:::Aprons;;;;;;286:::Costumes;;;;;;287:::Corset;;;;;;288:::Hoodie;;;;;;289:::Poncho;;;;;;290:::Swimwear;;;;;;291:::Suits;;;;;;292:::Dresses;;;;;;293:::Coats;;;;;;294:::Skirts;;;;;;295:::Jacket;;;;;;296:::Pants;;;;;;297:::Shirts;;;;;;298:::Shorts;;;;;;299:::Sleepwear;;;;;;300:::Sweaters;;;;;;301:::T-shirt\"},{\"sub_id\":\"115\",\"sub_name\":\"Womens\",\"min\":0,\"max\":0,\"brands\":\"280:::Activewear;;;;;;281:::Tank Tops;;;;;;282:::Vest;;;;;;283:::Booties;;;;;;284:::Jump Suit;;;;;;285:::Aprons;;;;;;286:::Costumes;;;;;;287:::Corset;;;;;;288:::Hoodie;;;;;;289:::Poncho;;;;;;290:::Swimwear;;;;;;291:::Suits;;;;;;292:::Dresses;;;;;;293:::Coats;;;;;;294:::Skirts;;;;;;295:::Jacket;;;;;;296:::Pants;;;;;;297:::Shirts;;;;;;298:::Shorts;;;;;;299:::Sleepwear;;;;;;300:::Sweaters;;;;;;301:::T-shirt\"},{\"sub_id\":\"116\",\"sub_name\":\"Boys\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"117\",\"sub_name\":\"Girls\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"118\",\"sub_name\":\"Unisex - Adult\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"119\",\"sub_name\":\"Unisex- Kids\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(31, 'Craft Supplies & Tools', NULL, NULL, 'category_31.', '', '', '[{\"sub_id\":\"120\",\"sub_name\":\"Craft Supplies & Tools\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(32, 'Jewelry', NULL, NULL, 'category_32.', '', '', '[{\"sub_id\":\"121\",\"sub_name\":\"Jewelry\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(33, 'Accessories', NULL, NULL, 'category_33.', '', '', '[{\"sub_id\":\"122\",\"sub_name\":\"Accessories\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(34, 'Crafts', NULL, NULL, 'category_34.', '', '', '[{\"sub_id\":\"123\",\"sub_name\":\"Crafts\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(21, 'Home & Kitchen', NULL, NULL, 'category_21.jpg', '', '12:::Idona Snider;;;;;;16:::Carissa Newman', '[{\"sub_id\":\"80\",\"sub_name\":\"furniture\",\"min\":40,\"max\":385,\"brands\":\"\"},{\"sub_id\":\"108\",\"sub_name\":\"Kitchen & Dining \",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"110\",\"sub_name\":\"Home Essentials\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"111\",\"sub_name\":\"Home Cleaning Supplies\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"112\",\"sub_name\":\"Decor\",\"min\":0,\"max\":0,\"brands\":\"\"},{\"sub_id\":\"113\",\"sub_name\":\"Indoor Lights\",\"min\":0,\"max\":0,\"brands\":\"\"}]'),
(27, 'Jewellery & Accessories', NULL, NULL, 'category_27.', '', '', '[]'),
(28, 'Clothing & Shoes', NULL, NULL, 'category_28.', '', '', '[]'),
(29, 'Home & Living', NULL, NULL, 'category_29.', '', '', '[]'),
(39, 'Supplies', NULL, NULL, 'category_39.PNG', '280:::Activewear;;;;;;286:::Costumes;;;;;;334:::Test', '19:::ryants test account', '[{\"sub_id\":\"128\",\"sub_name\":\"Leather\",\"min\":20,\"max\":20,\"brands\":\"280:::Activewear;;;;;;286:::Costumes;;;;;;334:::Test\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('16f165da236c5717bd03ea99569c5c62b58f0d5d', '178.154.244.194', 1561824426, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313832343432363b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('1f074029844d8f564870781fa8a56c126fcda54c', '66.249.69.254', 1561886368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313838363336373b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('1fd5c6e14103aecbecdad1c0a533d75589119f7a', '175.157.46.132', 1561966564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313936343736323b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('259bf88847784600cfdb323fc4d5b390a61d92d7', '178.154.244.194', 1561916043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313931363034323b63757272656e63797c733a313a2231223b),
('3059f40661e6bc59d028175902c3ce498959ac97', '194.187.249.185', 1561817654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313831373635343b63757272656e63797c733a313a2231223b),
('3bd71ed4299e13e1082ad1b8b959980e96cb6d9a', '184.154.139.51', 1561947614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313934373631333b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('40b2c9b3af7f401b434990ab817f04fd8b8fc2ef', '184.154.139.51', 1561947611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313934373631313b63757272656e63797c733a313a2231223b),
('41a9c9ab8440e38e7ea94a06179f48e82015d4cc', '45.125.2.7', 1561818995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313831383937353b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('4238e85b96f7ba3643ad4f8048c85fd874652835', '175.157.41.175', 1561829240, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313832383239323b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('4b594f65dfe83ae9df42078702e9a11ff229cbe9', '178.154.244.194', 1561939505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313933393530343b63757272656e63797c733a313a2231223b),
('4db69c34fd824ee715a2421bef799a2754f4e07a', '77.88.5.4', 1561970821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313937303832303b63757272656e63797c733a313a2231223b),
('5867c306fa537ed0e7a59431978bf29e86929c97', '77.88.5.4', 1561974162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313937343136323b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('5df05905778844e3ffa5cbc0cc615d7e4e625f0a', '194.187.249.185', 1561817646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313831373634363b),
('62e9296c6fd2b2263a214f4c8558c7eda84c9239', '77.88.5.4', 1561824277, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313832343237373b63757272656e63797c733a313a2231223b),
('6f0662639d2aa8f7b9a512a4c04ab179af392724', '178.154.244.194', 1561967470, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313936373436393b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('7b8f6b21df1ee2faca91f5fd781c3969437c6985', '178.154.244.194', 1561823993, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313832333939323b63757272656e63797c733a313a2231223b),
('8c4aa2f329ac2bbd74c61258838a62fed35ba591', '45.125.2.7', 1561893153, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313838363935393b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b757365725f6c6f67696e7c733a333a22796573223b757365725f69647c733a323a223332223b757365725f6e616d657c733a333a22546f6d223b),
('a397e2d343153e5ed2df0807613c9a052623d366', '184.154.139.50', 1561861229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313836313232383b63757272656e63797c733a313a2231223b),
('a9269d5b2e67df75e92bf8a340c0496df4abb5b5', '184.154.139.50', 1561861234, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313836313233333b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('b0b47298a34bb354414a8c1338995254a4ae3c3f', '194.187.249.185', 1561817659, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313831373635393b63757272656e63797c733a313a2231223b),
('bfa8155dc3d0e67dedf1088416a6e7f6ae1e1cf9', '77.88.5.4', 1561920225, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313932303232353b63757272656e63797c733a313a2231223b),
('c9cd7bb345329a5a457d80ac3c2cad80ec46f26d', '93.158.166.149', 1561975155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313937353135343b63757272656e63797c733a313a2231223b),
('ced9c8015f822cd56adb2f1a52617ddcb5461a72', '178.154.244.194', 1561944942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313934343934313b63757272656e63797c733a313a2231223b),
('d1677df2dac6c9094ffd8ffd4f9f2d6266377cad', '178.154.244.194', 1561973680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313937333637393b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('ea407d1d15d6dff1af030f70c1a437ec45a40003', '178.154.244.194', 1561887169, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313838373136393b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b),
('fab05977f982f293c97bb915808abfc975d167c8', '45.125.2.7', 1561831136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313536313833313031303b63757272656e63797c733a313a2231223b636f6d706172657c733a323a225b5d223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3136392e3939303030303030303030303030393039343934373031373732393238323337393135303339303632353b733a31313a22746f74616c5f6974656d73223b643a313b733a31343a22746f74616c5f646973636f756e74223b693a303b733a31303a227365745f636f75706f6e223b693a303b733a33323a226563356465636361356564336436623830373965326537653762616363396632223b613a31313a7b733a323a226964223b733a333a22313237223b733a333a22717479223b643a313b733a363a226f7074696f6e223b733a33383a227b22636f6c6f72223a7b227469746c65223a22436f6c6f72222c2276616c7565223a22227d7d223b733a353a227072696365223b643a3136392e3939303030303030303030303030393039343934373031373732393238323337393135303339303632353b733a343a226e616d65223b733a31383a224d656e277320457468616e20426c617a6572223b733a383a227368697070696e67223b733a313a2230223b733a333a22746178223b643a352e303939373030303030303030303030333433393032363834313037383838343839393631363234313435353037383132353b733a353a22696d616765223b733a37303a2268747470733a2f2f7279616e74732e636f6d2f73746f72652f75706c6f6164732f70726f647563745f696d6167652f70726f647563745f3132375f315f7468756d622e6a7067223b733a363a22636f75706f6e223b733a303a22223b733a353a22726f776964223b733a33323a226563356465636361356564336436623830373965326537653762616363396632223b733a383a22737562746f74616c223b643a3136392e3939303030303030303030303030393039343934373031373732393238323337393135303339303632353b7d7d);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`contact_message_id`, `name`, `subject`, `email`, `message`, `timestamp`, `view`, `reply`, `other`) VALUES
(1, 'Barrett Shepard', NULL, 'zape@gmail.com', '', '1444834552', 'no', NULL, NULL),
(2, 'aasdfs', 'aaaa', 'amit@gmail.com', 'aaaaa', '1469697073', 'no', NULL, NULL),
(3, 'aaa', 'aaaa', 'amit@gmail.com', 'aaaa', '1469697207', 'no', NULL, NULL),
(4, 'aaa', 'aaa', 'akibtanjim@gmail.com', 'aaaa', '1469697281', 'no', NULL, NULL),
(5, 'aa', 'aaa', 'aaa', 'aaaaa', '1469697490', 'no', NULL, NULL),
(6, 'aasdfs', 'aaa', 'amit@gmail.com', 'aaaaa', '1469702141', 'no', NULL, NULL),
(7, 'aasdfs', 'aaaa', 'akibtanjim@gmail.com', 'aaaa', '1469702304', 'no', NULL, NULL),
(8, 'aaa', 'aaa', 'amit@gmail.com', 'aaaa', '1469702377', 'no', NULL, NULL),
(9, 'aa', 'aaa', 'amit@gmail.com', 'aaaa', '1469702519', 'no', NULL, NULL),
(10, 'aaa', 'aaaaaaaaaaaaaa', 'amit@gmail.com', 'aaaaaa', '1469702546', 'no', NULL, NULL),
(11, 'aaa', 'aaaaa', 'akibtanjim@gmail.com', 'aaaaaa', '1469702614', 'no', NULL, NULL),
(12, 'aaa', 'aaaaa', 'akibtanjim@gmail.com', 'aaaaa', '1469702701', 'no', NULL, NULL),
(13, 'aasdfs', 'aaa', 'akibtanjim@gmail.com', 'aaaaaa', '1469702813', 'no', NULL, NULL),
(14, 'aasdfs', 'aaa', 'akibtanjim@gmail.com', 'aaaaa', '1469702857', 'no', NULL, NULL),
(15, 'aaa', 'aaa', 'aaarnob1', 'aaaaa', '1469702988', 'no', NULL, NULL),
(16, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469703183', 'no', NULL, NULL),
(17, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469703210', 'no', NULL, NULL),
(18, 'aaa', 'aaa', 'amit@gmail.com', 'aaaaa', '1469705865', 'no', NULL, NULL),
(19, 'a', 'a', 'amit@gmail.com', 'a', '1469705951', 'no', NULL, NULL),
(20, 'aa', 'aaaa', 'amit@gmail.com', 'aaaa', '1469706769', 'no', NULL, NULL),
(21, 'Ciara Ware', 'Quae porro ea possimus nesciunt beatae sint officiis nostrum recusandae At debitis accusamus rerum praesentium iusto reprehenderit alias culpa', 'labov@yahoo.com', 'Est sit, quidem dolore assumenda ut repellendus. Minus id sunt, odio magna eos, aute quia qui minim.', '1473304147', 'no', NULL, NULL),
(22, 'Tom', 'check', 'demovendor.tom@gmail.com', 'message check', '1475561140', 'no', 'checked', NULL),
(23, 'Geoffrey Bass', 'Laborum mollit et voluptas explicabo Quo similique', 'jusakos@hotmail.com', 'Dolorum tempore, nesciunt, nisi atque expedita distinctio. Nesciunt, natus exercitationem vel mollitia.', '1475693105', 'no', NULL, NULL),
(24, 'Aimee Spears', 'Atque quas dolore ducimus assumenda qui totam aliquip perferendis fugiat cupidatat', 'wyre@yahoo.com', 'Pariatur Veritatis asperiores ad dolore maxime', '1518017646', 'no', NULL, NULL),
(25, 'Hilda Sandoval', 'Excepturi voluptatum inventore dolor soluta blanditiis fugit', 'gusyse@yahoo.com', 'Quia et qui nisi facilis voluptatem aliquam reiciendis dolorem provident exercitation consequuntur magnam cumque qui et consectetur voluptatem Fugit dolorem7777777777777777777777777777777777777777777777777777777777777777777777777777777777777777777', '1518017688', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `spec` varchar(1000) DEFAULT NULL,
  `added_by` varchar(300) DEFAULT NULL,
  `till` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'U.S. Dollar', '$', '1', 'ok', 'USD', '1'),
(2, 'Australian Dollar', '$', '1.2762', 'ok', 'AUD', '1.2762'),
(5, 'Brazilian Real', 'R$', '3.238', 'ok', 'BRL', '3.238'),
(6, 'Canadian Dollar', '$', '1.272', 'ok', 'CAD', '1.272'),
(7, 'Czech Koruna', 'Kč', '20.647', 'ok', 'CZK', '20.647'),
(8, 'Danish Krone', 'kr', '6.0532', 'ok', 'DKK', '6.0532'),
(9, 'Euro', '€', '0.84861', 'ok', 'EUR', '0.84861'),
(10, 'Hong Kong Dollar', '$', '7.8264', 'ok', 'HKD', '7.8264'),
(11, 'Hungarian Forint', 'Ft', '255.24', 'ok', 'HUF', '255.24'),
(12, 'Israeli New Sheqel', '₪', '3.4812', 'ok', 'ILS', '3.4812'),
(13, 'Japanese Yen', '¥', '107.12', 'ok', 'JPY', '107.12'),
(14, 'Malaysian Ringgit', 'RM', '3.908', 'ok', 'MYR', '3.908'),
(15, 'Mexican Peso', '$', '18.722', 'ok', 'MXN', '18.722'),
(16, 'Norwegian Krone', 'kr', '7.8278', 'ok', 'NOK', '7.8278'),
(17, 'New Zealand Dollar', '$', '1.3753', 'ok', 'NZD', '1.3753'),
(18, 'Philippine Peso', '₱', '52.261', 'ok', 'PHP', '52.261'),
(19, 'Polish Zloty', 'zł', '3.3875', 'ok', 'PLN', '3.3875'),
(20, 'Pound Sterling', '£', '0.71864', 'ok', 'GBP', '0.71864'),
(21, 'Russian Ruble', 'руб', '55.929', 'ok', 'RUB', '55.929'),
(22, 'Singapore Dollar', '$', '1.3198', 'ok', 'SGD', '1.3198'),
(23, 'Swedish Krona', 'kr', '8.1945', 'ok', 'SEK', '8.1945'),
(24, 'Swiss Franc', 'CHF', '0.93805', 'ok', 'CHF', '0.93805'),
(26, 'Thai Baht', '฿', '31.39', 'ok', 'THB', '31.39'),
(27, 'your_currency', '?', '1', 'no', '??', '1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_product`
--

CREATE TABLE `customer_product` (
  `customer_product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT '0',
  `rating_total` int(11) NOT NULL DEFAULT '0',
  `rating_user` longtext,
  `title` longtext,
  `added_by` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext,
  `prod_condition` varchar(10) DEFAULT NULL,
  `location` longtext,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext,
  `tag` longtext,
  `status` longtext,
  `admin_status` varchar(10) DEFAULT NULL,
  `front_image` longtext,
  `brand` longtext,
  `unit` longtext,
  `additional_fields` longtext,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext,
  `color` longtext,
  `options` longtext,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `update_time` longtext,
  `last_viewed` int(200) DEFAULT NULL,
  `is_sold` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_product`
--

INSERT INTO `customer_product` (`customer_product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `prod_condition`, `location`, `sub_category`, `num_of_imgs`, `sale_price`, `add_timestamp`, `tag`, `status`, `admin_status`, `front_image`, `brand`, `unit`, `additional_fields`, `number_of_view`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `options`, `main_image`, `update_time`, `last_viewed`, `is_sold`) VALUES
(26, 0, 0, '[]', 'All Travels', 3, 5, '<p>\r\n\r\n<small>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n</small>\r\n<br></p>', 'new', 'Ap #867-859 Sit Rd.\r\nAzusa New York 39531\r\n(793) 151-6230', 89, '1', '850.00', '1530527221', NULL, 'ok', 'ok', '0', '', NULL, '{\"name\":\"null\",\"value\":\"null\"}', 1, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1534046298, 'no'),
(27, 0, 0, '[]', 'Casual Suit', 3, 5, '<p>\r\n\r\n<small>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n</small>\r\n<br></p>', 'new', '7292 Dictum Av.\r\nSan Antonio MI 47096\r\n(492) 709-6392\r\n', 29, '1', '350.00', '1530527781', NULL, 'ok', 'ok', '0', 'Casual', NULL, '{\"name\":\"[\\\"Color\\\",\\\"Sleeve\\\",\\\"Neck\\\"]\",\"value\":\"[\\\"Black\\\",\\\"Half\\\",\\\"Round\\\"]\"}', 0, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, NULL, 'no'),
(28, 0, 0, '[]', 'Set Suit', 3, 5, '<p>\r\n\r\n<small>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n</small>\r\n<br></p>', 'used', '7292 Dictum Av.\r\nSan Antonio MI 47096\r\n(492) 709-6392', 27, '1', '250.00', '1530527944', NULL, 'ok', 'ok', '0', 'Infinity', NULL, '{\"name\":\"[\\\"Set\\\",\\\"Piece\\\",\\\"Color\\\"]\",\"value\":\"[\\\"Full\\\",\\\"4 pc\\\",\\\"Black, Ash\\\"]\"}', 1, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1534046352, 'no'),
(29, 0, 0, '[]', 'Boosted heel', 3, 4, '<p>\r\n\r\n<small>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</small>\r\n\r\n<br></p>', 'new', '7292 Dictum Av.\r\nSan Antonio MI 47096\r\n(492) 709-6392', 36, '1', '290.00', '1530528145', NULL, 'ok', 'ok', '0', 'Rego', NULL, '{\"name\":\"[\\\"Color\\\",\\\"Size\\\"]\",\"value\":\"[\\\"Red, Yellow\\\",\\\"9, 10\\\"]\"}', 4, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1531630164, 'no'),
(24, 0, 0, '[]', 'Black suit', 3, 5, '<p>\r\n\r\n<small>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n</small>\r\n<br></p>', 'new', '606-3727 Ullamcorper. Street\r\nRoseville NH 11523', 27, '1', '460.00', '1530526746', NULL, 'ok', 'ok', '0', 'Infinity', NULL, '{\"name\":\"[\\\"Pieces\\\",\\\"Color\\\"]\",\"value\":\"[\\\"4 pc\\\",\\\"Black\\\"]\"}', 1, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1550846619, 'no'),
(21, 0, 0, '[]', 'Travel Kit', 7, 5, '<p>\r\n\r\n<strong><small>Lorem Ipsum</small></strong><small> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n</small>\r\n<br></p>', 'new', 'Ap #867-859 Sit Rd.\r\nAzusa New York 39531\r\n(793) 151-6230', 89, '1', '220.00', '1530525691', NULL, 'ok', 'ok', '0', 'Polo', NULL, '{\"name\":\"[\\\"Set\\\"]\",\"value\":\"[\\\"Full\\\"]\"}', 2, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1534046365, 'no'),
(22, 0, 0, '[]', 'Long Range Camera', 7, 16, '<p>\r\n\r\n<strong><small>Lorem Ipsum</small></strong><small> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n</small>\r\n<br></p>', 'new', '606-3727 Ullamcorper. Street\r\nRoseville NH 11523\r\n(786) 713-8616', 88, '1', '1350.00', '1530525882', NULL, 'ok', 'ok', '0', 'Nokia', NULL, '{\"name\":\"null\",\"value\":\"null\"}', 1, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1530766517, 'no'),
(23, 0, 0, '[]', 'High Definition DSLR', 7, 16, '<p>\r\n\r\n<small>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n</small>\r\n<br></p>', 'used', 'Ap #867-859 Sit Rd.\r\nAzusa New York 39531\r\n(793) 151-6230', 88, '1', '1800.00', '1530526104', NULL, 'ok', 'ok', '0', 'Canon', NULL, '{\"name\":\"[\\\"Set\\\",\\\"Piece\\\",\\\"Used\\\",\\\"Lense\\\"]\",\"value\":\"[\\\"Full\\\",\\\"1 pc\\\",\\\"6 months\\\",\\\"Full\\\"]\"}', 0, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, NULL, 'no'),
(17, 0, 0, '[]', 'Dolor sit amet', 7, 4, '<p>\r\n\r\n<strong><small>Lorem Ipsum</small></strong><small> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n</small>\r\n<br></p><p><small>\r\n\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n<br></small></p>', 'new', '606-3727 Ullamcorper. Street\r\nRoseville NH 11523\r\n(786) 713-8616', 11, '1', '450.00', '1530523056', NULL, 'ok', 'ok', '0', 'Revolution', NULL, '{\"name\":\"[\\\"Pices\\\",\\\"Material\\\",\\\"Color\\\"]\",\"value\":\"[\\\"12\\\",\\\"Wood\\\",\\\"Brown\\\"]\"}', 4, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1534046404, 'no'),
(16, 0, 0, '[]', 'Quisquam est qui', 7, 4, '<p>\r\n\r\n<strong><small>Lorem Ipsum</small></strong><small> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n</small>\r\n<br></p>', 'new', 'P.O. Box 283 8562 Fusce Rd.\r\nFrederick Nebraska 20620\r\n(372) 587-2335', 36, '1', '280.00', '1530522621', NULL, 'ok', 'ok', '0', 'Polo', NULL, '{\"name\":\"[\\\"Size\\\",\\\"Size\\\",\\\"Color\\\",\\\"Color\\\"]\",\"value\":\"[\\\"10\\\",\\\"9\\\",\\\"Red\\\",\\\"Yellow\\\"]\"}', 2, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1530766443, 'no'),
(30, 0, 0, '[]', 'Chiffon Long Dress', 23, 4, '<p><ul><li>Imported\r\n       \r\n      </li>\r\n     \r\n      <li> \r\n       Elastic closure\r\n       \r\n      </li>\r\n     \r\n      <li> \r\n       Polyester,Spandex,Lace\r\n       \r\n      </li>\r\n     \r\n      <li> \r\n       Zip to Center Back,Halter style,High Waist,Slim sexy long dress\r\n       \r\n      </li>\r\n     \r\n      <li> \r\n       Hand Wash Only In Low Temperature Or Dry Washing,Please Don\'t Ironing\r\n       \r\n      </li>\r\n     \r\n      <li> \r\n       For Cocktail Party Wedding Prom Evenning Party formal dress\r\n       \r\n      </li>\r\n     \r\n      <li> \r\n       Our products are based on US sizes. Be carefully check the size table before purchasing in Product Description\r\n</li></ul><br></p>', 'new', 'usa', 8, '1', '39.99', '1531633999', NULL, 'ok', 'ok', '0', 'Gucci', NULL, '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"Size Information (just for reference):  Size S:Bust(32.21inch), Waist(27.2 inch), Length(56.2 inch)  Size M:Bust(34.2 inch), Waist(29.0 inch), Length(56.2 inch)  Size L:Bust(36.4 inch), Waist(31.4 inch), Length(57.0 inch)  Size XL:Bust(39.2 inch),Waist(34.2 inch), Length(57.0 inch)  Size XXL:Bust(43.2 inch),Waist(38.2 inch), Length(57.6 inch) \\\"]\"}', 4, '0.00', '', '0.00', '', NULL, NULL, '0', NULL, 1534140837, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` longtext,
  `subject` longtext,
  `body` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', 'Password Reset Successful', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">You recently requested a new password. We\'ve received the request and your password has been changed.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]<br></span></p><p><span [removed]=\"font-weight: bold;\">Your new password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(2, 'Account Approval Email', 'Account Approval Status', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site. Your account&nbsp;has been [[status]]. Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(7, 'Vendor Registration Email To Admin', 'Vendor Registration', '<p>Congratulation!</p><p>You have a new Registered Vendor in your sytem.</p><p><span [removed]=\"font-weight: bold;\">Vendor Name : [[vendor_name]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(3, 'Membership Upgrade Email', 'Membership Upgraded', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Your Membership Type is [[package]]. </span></p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administrator team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(4, 'Vendors Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site </span>[[sitename]]<span [removed]=\"font-weight: bold;\">. </span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Your account is now being reviewed by </span>administration team. Please wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administration team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(5, 'Users Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(6, 'Admins Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for joining at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p>&nbsp;Best wishes.</p><p><br></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(9, 'Vendor Payment', 'Admin to Vendor Payment', '<p>Dear <span> [[vendor_name]] ,<br></span></p><p>You have received a new payment from <span>[[from]].</span></p><p><span [removed]=\"font-weight: bold;\">The Amount is : [[amount]].</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(8, 'Vendor Package Upgrade', 'Vendor Package Upgrade ', '<p>A vendor has updated their package. Details are given below.<br></p><p><span [removed]=\"font-weight: bold;\">Vendor Name : [[vendor_name]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span><br><span [removed]=\"font-weight: bold;\"><span>Package Name is : [[vendor_package]]</span></span></p><p><span [removed]=\"font-weight: bold;\"><span><span>Package Amount&nbsp; is : [[package_amount]]</span></span></span></p><p><span [removed]=\"font-weight: bold;\">Please login to the admin panel to approve the vendor.</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'Rayant\'s Marketplace'),
(2, 'system_email', 'ceo.activeitzone@gmail.com'),
(3, 'system_title', 'Rayant\'s Marketplace'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', '<p>terms and conditions</p>'),
(10, 'fb_appid', '384144461995754'),
(11, 'fb_secret', 'e8be929ace6deaf50d2a717834a03cc4'),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'Techizer'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', 'e8be929ace6deaf50d2a717834a03cc4'),
(44, 'contact_about', '<p>about contact</p>'),
(39, 'contact_phone', '00-000-00000'),
(40, 'contact_email', 'developer.activeitzone@gmail.com'),
(41, 'contact_website', 'www.yoursite.com'),
(42, 'footer_text', '<p>Active Super Shop Multi vendor system is such a platform to build a border less marketplace both for physical and digital goods.</p>'),
(43, 'footer_category', '[\"4\",\"5\",\"16\",\"17\"]'),
(38, 'contact_address', 'Demo Address'),
(45, 'admin_notification_sound', 'ok'),
(46, 'admin_notification_volume', '7.47'),
(47, 'privacy_policy', '<p>Privacy Policy</p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'no'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '0'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'ok'),
(59, 'cache_time', '0'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'ok'),
(63, 'preloader', '21'),
(64, 'preloader_bg', 'rgba(252,252,252,1)'),
(65, 'preloader_obj', 'rgba(0,0,0,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'ok'),
(70, 'data_all_brands', '280:::Activewear;;;;;;281:::Tank Tops;;;;;;282:::Vest;;;;;;283:::Booties;;;;;;284:::Jump Suit;;;;;;285:::Aprons;;;;;;286:::Costumes;;;;;;287:::Corset;;;;;;288:::Hoodie;;;;;;289:::Poncho;;;;;;290:::Swimwear;;;;;;291:::Suits;;;;;;292:::Dresses;;;;;;293:::Coats;;;;;;294:::Skirts;;;;;;295:::Jacket;;;;;;296:::Pants;;;;;;297:::Shirts;;;;;;298:::Shorts;;;;;;299:::Sleepwear;;;;;;300:::Sweaters;;;;;;301:::T-shirt;;;;;;334:::Test'),
(79, 'google_analytics_key', 'UA-117985671-1'),
(71, 'data_all_vendors', '1:::Lavinia Mckee;;;;;;3:::Tom;;;;;;5:::Youn;;;;;;7:::Tony Stark;;;;;;9:::Cheyenne Medina;;;;;;10:::Denton Hansen;;;;;;12:::Idona Snider;;;;;;16:::Carissa Newman;;;;;;18:::chck;;;;;;19:::ryants test account;;;;;;29:::AngelFrank'),
(72, 'smtp_host', 'ssl://smtp.googlemail.com'),
(73, 'smtp_port', '465'),
(74, 'smtp_user', 'developer.activeitzone@gmail.com'),
(75, 'smtp_pass', 'dev@aizone17'),
(76, 'mail_status', 'mail'),
(77, 'captcha_status', 'no'),
(78, 'version', '1.5.3'),
(80, 'g_analytics_set', 'ok'),
(81, 'show_vendor_website', 'ok'),
(82, 'bundle_product_activation', 'ok'),
(83, 'customer_product_activation', 'ok'),
(84, 'wallet_system_set', 'ok'),
(85, 'guest_checkout_set', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext,
  `Bangla` longtext,
  `Arabic` longtext,
  `French` longtext,
  `Chinese` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(1, 'visit_home_page', 'Visit Home Page', 'দর্শন হোম পেজে', 'الصفحة الرئيسية زيارة', 'visite page d\'accueil', '访问主页'),
(2, 'profile', 'Profile', 'প্রোফাইলে', 'الملف الشخصي', 'Profil', '轮廓'),
(3, 'logout', 'Logout', 'প্রস্থান', 'خروج', 'se déconnecter', '登出'),
(4, 'manage_languages', 'Manage Languages', 'প্রত্যেক পরিচালনা', 'إدارة اللغات', 'gérer langues', '管理语言'),
(5, 'add_language', 'Add Language', 'ভাষা যোগ', 'إضافة اللغة', 'ajouter la langue', '添加语言'),
(6, 'successfully_added!', 'Successfully Added!', 'সফলভাবে যোগ করা হয়েছে!', 'وأضاف بنجاح!', 'Ajouté avec succès!', '添加成功！'),
(7, 'back_to_language_list', 'Back To Language List', 'ফিরে ভাষা লিস্টে', 'العودة إلى القائمة لغة', 'Retour à la liste des langues', '回到语言列表'),
(8, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'সত্যিই এই ভাষা মুছে ফেলতে চান?', 'حقا تريد حذف هذه اللغة؟', 'voulez vraiment supprimer cette langue?', '真的要删除这个语言呢？'),
(9, 'settings_updated!', 'Settings Updated!', 'সেটিংস আপডেট!', 'ضبط تجديد!', 'Paramètres mis à jour!', '设置更新了！'),
(10, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'আপনি কি সত্যিই এই ভাষা মুছে দিতে চান?', 'هل حقا تريد حذف هذه اللغة؟', 'voulez-vous vraiment supprimer cette langue?', '你真的要删除这个语言呢？'),
(11, 'saving..', 'Saving..', 'সংরক্ষণ ..', 'إنقاذ..', 'économie..', '保存..'),
(12, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'لوحة القيادة', 'tableau de bord', '仪表板'),
(13, 'products', 'Products', 'পণ্য', 'المنتجات', 'Produits', '制品'),
(14, 'physical_products', 'Physical Products', 'শারীরিক পণ্য', 'المنتجات المادية', 'produits physiques', '实物产品'),
(15, 'category', 'Category', 'বিভাগ', 'فئة', 'Catégorie', '类别'),
(16, 'brands', 'Brands', 'ব্র্যান্ড', 'العلامات التجارية', 'marques', '品牌'),
(17, 'sub-category', 'Sub-category', 'উপ-বিভাগ', 'الفئة الفرعية', 'sous-catégorie', '子分类'),
(18, 'all_products', 'All Products', 'সব পণ্য', 'جميع المنتجات', 'tous les produits', '所有产品'),
(19, 'product_stock', 'Product Stock', 'পণ্য স্টক', 'الأسهم المنتج', 'stocks de produits', '产品库存'),
(20, 'digital_products', 'Digital Products', 'ডিজিটাল পণ্য', 'المنتجات الرقمية', 'les produits numériques', '数码产品'),
(21, 'all_digitals', 'All Digitals', 'সব সাংখ্যিক', 'جميع digitals', 'tous les digitals', '所有位数七段'),
(22, 'sale', 'Sale', 'বিক্রয়', 'تخفيض السعر', 'vente', '拍卖'),
(23, 'discount_coupon', 'Discount Coupon', 'ডিসকাউন্ট কুপন', 'كوبون الخصم', 'coupon de réduction', '折扣券'),
(24, 'ticket', 'Ticket', 'টিকিট', 'تذكرة', 'billet', '票'),
(25, 'reports', 'Reports', 'রিপোর্ট', 'تقارير', 'rapports', '报告'),
(26, 'product_compare', 'Product Compare', 'পণ্য তুলনা করুন', 'مقارنة المنتج', 'produit comparer', '产品比较'),
(27, 'product_wishes', 'Product Wishes', 'পণ্য শুভেচ্ছা', 'رغبات المنتج', 'souhaits de produits', '产品的愿望'),
(28, 'vendors', 'Vendors', 'বিক্রেতারা', 'الباعة', 'vendeurs', '供应商'),
(29, 'vendor_list', 'Vendor List', 'বিক্রেতা তালিকা', 'قائمة الموردين', 'liste de fournisseurs', '供应商名单'),
(30, 'vendor_payments', 'Vendor Payments', 'বিক্রেতা পেমেন্ট', 'مدفوعات البائعين', 'le paiement des fournisseurs', '供应商付款'),
(31, 'vendor_packages', 'Vendor Packages', 'বিক্রেতা প্যাকেজ', 'حزم بائع', 'forfaits fournisseurs', '供应商封装'),
(32, 'vendor\'s_slides', 'Vendor\'s Slides', 'বিক্রেতার স্লাইড', 'الشرائح البائع', 'Les diapositives de fournisseurs', '供应商的幻灯片'),
(33, 'customers', 'Customers', 'গ্রাহকদের', 'الزبائن', 'les clients', '顾客'),
(34, 'messaging', 'Messaging', 'মেসেজিং', 'الرسائل', 'Messagerie', '消息'),
(35, 'newsletters', 'Newsletters', 'নিউজলেটার', 'النشرات الإخبارية', 'bulletins', '新闻简报'),
(36, 'contact_messages', 'Contact Messages', 'যোগাযোগের বার্তা', 'رسائل الاتصال', 'messages de contact', '联系人的邮件'),
(37, 'blog', 'Blog', 'ব্লগ', 'مدونة', 'Blog', '博客'),
(38, 'blog_categories', 'Blog Categories', 'ব্লগ বিভাগ', 'فئات بلوق', 'catégories de blog', '博客类别'),
(39, 'all_blogs', 'All Blogs', 'সব ব্লগ', 'جميع بلوق', 'tous les blogs', '所有博客'),
(40, 'frontend_settings', 'Frontend Settings', 'ফ্রন্টএন্ড সেটিংস', 'إعدادات الواجهة', 'paramètres frontend', '前端设置'),
(41, 'slider_settings', 'Slider Settings', 'স্লাইডার সেটিংস', 'ضبط المنزلق', 'paramètres de curseur', '滑块设置'),
(42, 'layer_slider', 'Layer Slider', 'লেয়ার স্লাইডার', 'طبقة المنزلق', 'couche curseur', '层滑块'),
(43, 'top_slides', 'Top Slides', 'শীর্ষ স্লাইড', 'أعلى الشرائح', 'top diapositives', '顶部幻灯片'),
(44, 'display_settings', 'Display Settings', 'প্রদর্শন সেটিং', 'اعدادات العرض', 'paramètres d\'affichage', '显示设置'),
(45, 'home_page', 'Home Page', 'হোম পেজে', 'الصفحة الرئيسية', 'page d\'accueil', '主页'),
(46, 'contact_page', 'Contact Page', 'যোগাযোগের পৃষ্ঠায়', 'صفحة الاتصال', 'page de contact', '联系方式页面'),
(47, 'footer', 'Footer', 'পেয়াদা', 'تذييل', 'bas de page', '页脚'),
(48, 'theme_color', 'Theme Color', 'থিম রঙ', 'اللون موضوع', 'couleur du thème', '主题颜色'),
(49, 'logo', 'Logo', 'লোগো', 'شعار', 'logo', '商标'),
(50, 'favicon', 'Favicon', 'ফেভিকন', 'فافيكون', 'favicon', '图标'),
(51, 'fonts', 'Fonts', 'ফন্ট', 'الخطوط', 'polices', '字体'),
(52, 'preloader', 'Preloader', 'preloader', 'تحميل مسبق', 'preloader', '预载'),
(53, 'site_settings', 'Site Settings', 'সাইট সেটিং', 'إعدادات الموقع', 'les paramètres du site', '站点设置'),
(54, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'الاعدادات العامة', 'réglages généraux', '常规设置'),
(55, 'third_party_settings', 'Third Party Settings', 'তৃতীয় পক্ষের সেটিংস', 'إعدادات طرف ثالث', 'paramètres de tiers', '第三方设置'),
(56, 'build_responsive_pages', 'Build Responsive Pages', 'প্রতিক্রিয়াশীল পৃষ্ঠাগুলি বিল্ড', 'بناء صفحات استجابة', 'construire des pages sensibles', '建立反应灵敏的网页'),
(57, 'set_default_images', 'Set Default Images', 'সেট ডিফল্ট ইমেজ', 'صور مجموعة افتراضية', 'images ensemble par défaut', '设置默认图像'),
(58, 'business_settings', 'Business Settings', 'ব্যবসা সেটিংস', 'ضبط رجال الأعمال', 'les milieux d\'affaires', '商业环境'),
(59, 'activation', 'Activation', 'সক্রিয়করণ', 'تفعيل', 'activation', '激活'),
(60, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'طريقة الدفع او السداد', 'mode de paiement', '付款方法'),
(61, 'currency_', 'Currency ', 'মুদ্রা ', 'عملة ', 'devise ', '货币 '),
(62, 'faqs', 'Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'الأسئلة الأكثر شيوعا', 'faqs', '常见问题解答'),
(63, 'staffs', 'Staffs', 'কর্মীরা', 'الموظفين', 'états-majors', '员工'),
(64, 'all_staffs', 'All Staffs', 'সমস্ত লাঠি', 'جميع الموظفين', 'tous les états-majors', '全体员工'),
(65, 'staff_permissions', 'Staff Permissions', 'স্টাফ অনুমতি', 'أذونات الموظفين', 'permissions du personnel', '工作人员的权限'),
(66, 'language', 'Language', 'ভাষা', 'لغة', 'la langue', '语言'),
(67, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল পরিচালনা', 'إدارة الملف الشخصي ل admin', 'gérer le profil administrateur', '管理管理配置文件'),
(68, 'activate', 'Activate', 'সক্রিয় করা', 'تفعيل', 'activer', '启用'),
(69, 'SEO_proggres', 'SEO Proggres', 'এসইও proggres', 'proggres كبار المسئولين الاقتصاديين', 'proggres SEO', 'SEO proggres'),
(70, 'online_tutorial', 'Online Tutorial', 'অনলাইন টিউটোরিয়াল', 'البرنامج التعليمي على الانترنت', 'tutoriel en ligne', '在线教程'),
(71, 'checkout', 'Checkout', 'চেকআউট', 'الدفع', 'check-out', '查看'),
(72, 'deleted_successfully', 'Deleted Successfully', 'সফলভাবে মোছা', 'حذف بنجاح', 'supprimé avec succès', '成功删除'),
(73, 'cancelled', 'Cancelled', 'বাতিল করা হয়েছে', 'تم الالغاء', 'annulé', '取消'),
(74, 'cancel', 'Cancel', 'বাতিল', 'إلغاء', 'Annuler', '取消'),
(75, 'required', 'Required', 'প্রয়োজনীয়', 'مطلوب', 'Obligatoire', '需要'),
(76, 'must_be_a_number', 'Must Be A Number', 'অবশ্যই একটি সংখ্যা হবে', 'يجب أن يكون رقما', 'doit être un nombre', '必须是一个数字'),
(77, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'doit être une adresse e-mail valide', '必须是一个有效的E-mail地址'),
(78, 'save', 'Save', 'রক্ষা', 'حفظ', 'enregistrer', '保存'),
(79, 'product_published!', 'Product Published!', 'পণ্য প্রকাশিত!', 'المنتج نشر!', 'produit publié!', '产品发表！'),
(80, 'product_unpublished!', 'Product Unpublished!', 'পণ্য অপ্রকাশিত!', 'المنتج غير منشورة!', 'produit inédit!', '产品未公布！'),
(81, 'product_featured!', 'Product Featured!', 'পণ্য বৈশিষ্ট্যযুক্ত করা হবে!', 'المنتج المميز!', 'produit vedette!', '产品特色！'),
(82, 'product_unfeatured!', 'Product Unfeatured!', 'পণ্য unfeatured!', 'المنتج unfeatured!', 'produit unfeatured!', '产品unfeatured！'),
(83, 'product_in_todays_deal!', 'Product In Todays Deal!', 'আজকের মধ্যে পণ্য মোকাবেলা!', 'المنتج في اليوم التعامل!', 'produit aujourd\'hui face!', '产品在今天的交易！'),
(84, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'পণ্য আজকের ডিল থেকে সরানো!', 'منتج إزالة من صفقة اليوم!', 'produit retiré de la retransmission de ce deal!', '产品从今天的交易中删除！'),
(85, 'slider_published!', 'Slider Published!', 'স্লাইডার প্রকাশিত!', 'المنزلق نشرت!', 'curseur publié!', '滑块公布！'),
(86, 'slider_unpublished!', 'Slider Unpublished!', 'স্লাইডার অপ্রকাশিত!', 'المنزلق غير منشورة!', 'curseur inédit!', '滑块未公布！'),
(87, 'page_published!', 'Page Published!', 'পৃষ্ঠা প্রকাশিত!', 'الصفحة نشرت!', 'page publiée!', '公布的一页！'),
(88, 'page_unpublished!', 'Page Unpublished!', 'পৃষ্ঠা অপ্রকাশিত!', 'الصفحة غير منشورة!', 'Page inédite!', '页未公布！'),
(89, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'নোটিফিকেশন সাউন্ড সক্রিয়!', 'صوت الإعلام تمكين!', 'notification sonore activé!', '通知声音启用！'),
(90, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'নোটিফিকেশন সাউন্ড অক্ষম!', 'صوت الإعلام تعطيل!', 'notification sonore désactivé!', '通知声音禁用！'),
(91, 'google_login_enabled!', 'Google Login Enabled!', 'গুগল লগ-ইন সক্রিয়!', 'جوجل تسجيل الدخول تمكين!', 'google connexion activé!', '谷歌登录启用！'),
(92, 'google_login_disabled!', 'Google Login Disabled!', 'গুগল লগইন অক্ষম!', 'جوجل تسجيل الدخول تعطيل!', 'google connexion désactivé!', '谷歌登录禁用！'),
(93, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'ফেসবুক লগ-ইন সক্রিয়!', 'الفيسبوك تسجيل الدخول تمكين!', 'facebook connexion activé!', 'Facebook登录启用！'),
(94, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'ফেসবুক লগইন অক্ষম!', 'الفيسبوك تسجيل الدخول تعطيل!', 'facebook connexion désactivé!', 'Facebook登录禁用！'),
(95, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'পেপ্যাল ​​অক্ষম!', 'الدفع باي بال تعطيل!', 'paiement paypal désactivé!', '支付宝付款禁用！'),
(96, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'পেপাল পেমেন্ট সক্রিয়!', 'الدفع باي بال تمكين!', 'le paiement par PayPal activé!', '支付宝付款启用！'),
(97, 'slider_enabled!', 'Slider Enabled!', 'স্লাইডার সক্রিয়!', 'المنزلق تمكين!', 'curseur activé!', '滑块启用！'),
(98, 'slider_disabled!', 'Slider Disabled!', 'স্লাইডার অক্ষম!', 'المنزلق تعطيل!', 'curseur désactivé!', '滑块禁用！'),
(99, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'নগদ পেমেন্ট সক্রিয়!', 'الدفع نقدا تمكين!', 'paiement en espèces activé!', '现金支付启用！'),
(100, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'নগদ পেমেন্ট নিষ্ক্রিয়!', 'الدفع نقدا تعطيل!', 'paiement en espèces désactivé!', '现金支付禁用！'),
(101, 'enabled!', 'Enabled!', 'সক্রিয়!', 'تمكين!', 'activée!', '启用！'),
(102, 'disabled!', 'Disabled!', 'অক্ষম!', 'معاق!', 'désactivée!', '禁用！'),
(103, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'ই-মেইলের বিক্রেতা পাঠানো!', 'إشعار البريد الإلكتروني أرسلت إلى بائع!', 'courriel de notification envoyé au fournisseur!', '通知电子邮件发送给供应商！'),
(104, 'working...', 'Working...', 'কাজ করছে ...', 'العمل ...', 'travailler...', '加工...'),
(105, 'no', 'No', 'না', 'لا', 'non', '没有'),
(106, 'name', 'Name', 'নাম', 'اسم', 'prénom', '名称'),
(107, 'icon', 'Icon', 'আইকন', 'أيقونة', 'icône', '图标'),
(108, 'publish', 'Publish', 'প্রকাশ করা', 'نشر', 'publier', '发布'),
(109, 'options', 'Options', 'অপশন', 'خيارات', 'Options', '选项'),
(110, 'language_enabled', 'Language Enabled', 'ভাষা সক্রিয়', 'لغة سكريبت', 'langue activée', '语言启用'),
(111, 'language_disabled', 'Language Disabled', 'ভাষা অক্ষম', 'لغة تعطيل', 'langue désactivé', '禁用语'),
(112, 'edit_language_list', 'Edit Language List', 'সম্পাদনা নতুন ভাষাটি তালিকায় আগে', 'تحرير القائمة لغة', 'modifier la liste des langues', '编辑语言列表'),
(113, 'successfully_edited!', 'Successfully Edited!', 'সফলভাবে সম্পাদিত!', 'بنجاح تحريرها!', 'édité avec succès!', '编辑成功！'),
(114, 'set_translations', 'Set Translations', 'সেট অনুবাদের', 'تعيين ترجمة', 'traductions set', '译文集'),
(115, 'edit_language', 'Edit Language', 'সম্পাদনা ভাষা', 'تحرير لغة', 'modifier la langue', '编辑语言'),
(116, 'edit', 'Edit', 'সম্পাদন করা', 'تحرير', 'modifier', '编辑'),
(117, 'delete_language', 'Delete Language', 'ভাষা মুছতে', 'حذف اللغة', 'supprimer la langue', '删除语言'),
(118, 'select_language', 'Select Language', 'ভাষা নির্বাচন কর', 'اختر اللغة', 'Choisir la langue', '选择语言'),
(119, 'word', 'Word', 'শব্দ', 'كلمة', 'mot', '字'),
(120, 'translation', 'Translation', 'অনুবাদ', 'ترجمة', 'Traduction', '翻译'),
(121, 'translate', 'Translate', 'অনুবাদ', 'ترجم', 'Traduire', '翻译'),
(122, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'احفظ الكل', 'sauver tous', '保存全部'),
(123, 'saving', 'Saving', 'রক্ষা', 'إنقاذ', 'économie', '保存'),
(124, 'updated!', 'Updated!', 'আপডেট!', 'تحديث!', 'actualisé!', '更新！'),
(125, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'সত্যিই এই শব্দ মুছে ফেলতে চান?', 'حقا تريد حذف هذه الكلمة؟', 'voulez vraiment supprimer ce mot?', '真的要删除这个词？'),
(126, 'delete', 'Delete', 'মুছে ফেলা', 'حذف', 'effacer', '删除'),
(127, 'home', 'Home', 'বাড়ি', 'الصفحة الرئيسية', 'domicile', '家'),
(128, 'subtotal', 'Subtotal', 'উপমোট', 'حاصل الجمع', 'Sous-Total', '小计'),
(129, 'close', 'Close', 'ঘনিষ্ঠ', 'أغلق', 'Fermer', '关'),
(130, 'faq', 'Faq', 'অনবরত জিজ্ঞাসিত প্রশ্ন', 'التعليمات', 'FAQ', '常问问题'),
(131, 'login', 'Login', 'লগইন', 'تسجيل الدخول', 's\'identifier', '登录'),
(132, 'registration', 'Registration', 'নিবন্ধন', 'التسجيل', 'enregistrement', '注册'),
(133, 'customer_registration', 'Customer Registration', 'গ্রাহক নিবন্ধন', 'تسجيل العملاء', 'enregistrement des clients', '客户注册'),
(134, 'vendor_registration', 'Vendor Registration', 'বিক্রেতার নিবন্ধন', 'تسجيل البائعين', 'l\'inscription des fournisseurs', '供应商登记'),
(135, 'what_are_you_looking_for', 'What Are You Looking For', 'আপনি কি খুজছেন', 'عما تبحث', 'que cherchez-vous', '你在找什么'),
(136, 'select', 'Select', 'নির্বাচন করা', 'اختار', 'sélectionner', '选择'),
(137, 'all_categories', 'All Categories', 'সব ধরনের', 'جميع الفئات', 'toutes catégories', '所有类别'),
(138, 'product', 'Product', 'পণ্য', 'المنتج', 'produit', '产品'),
(139, 'vendor', 'Vendor', 'বিক্রেতা', 'بائع', 'vendeur', '供应商'),
(140, 'compare', 'Compare', 'তুলনা করা', 'قارن', 'comparer', '比较'),
(141, 'item(s)', 'Item(s)', 'বস্তু (গুলি)', 'العناصر)', 'articles)', '项目（S）'),
(142, 'homepage', 'Homepage', 'হোমপেজে', 'الصفحة الرئيسية', 'page d\'accueil', '主页'),
(143, 'all_sub_categories', 'All Sub Categories', 'সব সাব আরও', 'جميع الفئات الفرعية', 'toutes les sous-catégories', '所有子类'),
(144, 'featured_products', 'Featured Products', 'বৈশিষ্ট্যযুক্ত পণ্য', 'منتجات مميزة', 'produits présentés', '特色产品'),
(145, 'todays_deal', 'Todays Deal', 'আজকের চুক্তি', 'صفقة اليوم', 'la retransmission de ce deal', '今天的交易'),
(146, 'all_brands', 'All Brands', 'সব ব্র্যান্ডের', 'جميع العلامات التجارية', 'toutes les marques', '所有品牌'),
(147, 'all_vendors', 'All Vendors', 'সব বিক্রেতারা', 'جميع البائعين', 'tous les fournisseurs', '所有厂商'),
(148, 'blogs', 'Blogs', 'ব্লগ', 'بلوق', 'blogs', '博客'),
(149, 'store_locator', 'Store Locator', 'দোকান লোকেটার', 'فروعنا', 'localisateur de magasin', '商店定位器'),
(150, 'contact', 'Contact', 'যোগাযোগ', 'اتصال', 'contact', '联系'),
(151, 'more', 'More', 'অধিক', 'أكثر', 'plus', '更多'),
(152, 'latest_products', 'Latest Products', 'সাম্প্রতিক পণ্যসমূহ', 'آخر المنتجات', 'derniers produits', '最新产品'),
(153, 'more_categories', 'More Categories', 'আরো বিভাগ', 'المزيد من التصنيفات', 'plus de catégories', '多个类别'),
(154, 'today\'s_deal', 'Today\'s Deal', 'আজকের চুক্তি', 'صفقة اليوم', 'l\'offre d\'aujourd\'hui', '今天的交易'),
(155, 'quick_view', 'Quick View', 'তারাতারি দেখা', 'نظرة سريعة', 'aperçu rapide', '快速浏览'),
(156, 'search', 'Search', 'অনুসন্ধান', 'بحث', 'chercher', '搜索'),
(157, 'latest', 'Latest', 'সর্বশেষ', 'آخر', 'dernier', '最新'),
(158, 'featured', 'Featured', 'সুগঠনবিশিষ্ট', 'متميز', 'en vedette', '精选'),
(159, 'discount', 'Discount', 'ডিসকাউন্ট', 'خصم', 'remise', '折扣'),
(160, 'add_to_wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'إضافة إلى سلة', 'ajouter à la liste de souhaits', '加入收藏'),
(161, 'add_to_cart', 'Add To Cart', 'কার্ট যোগ', 'أضف إلى السلة', 'ajouter au panier', '添加到购物车'),
(162, 'out_of_stock', 'Out Of Stock', 'স্টক আউট', 'إنتهى من المخزن', 'rupture de stock', '缺货'),
(163, 'visit', 'Visit', 'দর্শন', 'زيارة', 'visite', '访问'),
(164, 'recently_viewed', 'Recently Viewed', 'সম্প্রতি দেখা', 'شوهدت مؤخرا', 'vu récemment', '最近浏览过的'),
(165, 'most_viewed', 'Most Viewed', 'সর্বাধিক দেখা', 'الأكثر مشاهدة', 'le plus regardé', '最受关注'),
(166, 'our_available_brands', 'Our Available Brands', 'আমাদের উপলব্ধ ব্রান্ডের', 'علاماتنا التجارية المتاحة', 'nos marques disponibles', '我们现有的品牌'),
(167, 'email_address', 'Email Address', 'ই-মেইল ঠিকানা', 'عنوان البريد الإلكتروني', 'adresse e-mail', '电子邮件地址'),
(168, 'subscribe', 'Subscribe', 'সাবস্ক্রাইব', 'الاشتراك', 'souscrire', '订阅'),
(169, 'categories', 'Categories', 'বিভাগ', 'الفئات', 'Catégories', '类别'),
(170, 'useful_links', 'Useful Links', 'উপকারী সংজুক', 'روابط مفيدة', 'Liens utiles', '有用的链接'),
(171, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'اتصل بنا', 'Contactez nous', '联系我们'),
(172, 'address', 'Address', 'ঠিকানা', 'عنوان', 'adresse', '地址'),
(173, 'phone', 'Phone', 'ফোন', 'هاتف', 'téléphone', '电话'),
(174, 'website', 'Website', 'ওয়েবসাইট', 'موقع الكتروني', 'site Internet', '网站'),
(175, 'email', 'Email', 'ই-মেইল', 'البريد الإلكتروني', 'email', '电子邮件'),
(176, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'كل الحقوق محفوظة', 'tous les droits sont réservés', '版权所有'),
(177, 'terms_&_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'الشروط والأحكام', 'termes et conditions', '条款和条件'),
(178, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'سياسة الخصوصية', 'politique de confidentialité', '隐私政策'),
(179, 'product_added_to_cart', 'Product Added To Cart', 'পণ্য কার্ট যোগ', 'وأضاف المنتج إلى سلة التسوق', 'produit ajouté au panier', '产品加入购物车'),
(180, 'added_to_cart', 'Added To Cart', 'কার্ট যোগ', 'إضافة إلى العربة', 'ajouté au panier', '添加到购物车'),
(181, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'পণ্যের পরিমাণ প্রাপ্যতা অতিক্রম!', 'كمية المنتج تتجاوز توافر!', 'quantité de produit dépasse la disponibilité!', '产品数量超过供应！'),
(182, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'পণ্য ইতিমধ্যে কার্ট যোগ করা হয়েছে!', 'وأضاف المنتج بالفعل إلى السلة', 'produit déjà ajouté au panier!', '产品已添加到购物车！'),
(183, 'product_added_to_wishlist', 'Product Added To Wishlist', 'পণ্য লিস্টে যোগ', 'وأضاف المنتج إلى سلة', 'Produit ajouté à la liste de souhaits', '产品加入心愿'),
(184, 'wished', 'Wished', 'কাম্য', 'تمنى', 'souhaité', '希望'),
(185, 'wishing..', 'Wishing..', 'তবেই ..', 'متمنيا ..', 'souhaitant ..', '希望..'),
(186, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'পণ্যের তালিকা থেকে সরানো', 'المنتج إزالتها من سلة', 'produit retiré de la liste de souhaits', '从产品的愿望清单中移除'),
(187, 'product_added_to_compared', 'Product Added To Compared', 'পণ্য তুলনা যোগ করা', 'وأضاف المنتج مقارنة', 'Produit ajouté au rapport', '产品附加值比较'),
(188, 'compared', 'Compared', 'তুলনা', 'مقارنة', 'par rapport', '相比'),
(189, 'working..', 'Working..', 'কাজ ..', 'العمل ..', 'travailler..', '加工..'),
(190, 'product_removed_from_compare', 'Product Removed From Compare', 'পণ্য তুলনা থেকে সরানো', 'منتج إزالة من المقارنة', 'produit retiré de comparer', '从对比产品中删除'),
(191, 'compare_category_full', 'Compare Category Full', 'বিভাগ পূর্ণ তুলনা', 'مقارنة فئة كاملة', 'comparer la catégorie complète', '比较全品类'),
(192, 'product_already_added_to_compare', 'Product Already Added To Compare', 'পণ্য ইতিমধ্যে তুলনা যোগ করা', 'وأضاف المنتج بالفعل للمقارنة', 'produit déjà ajouté à comparer', '产品已添加到比较'),
(193, 'product_rated_successfully', 'Product Rated Successfully', 'পণ্য সফলভাবে রেট', 'المنتج تصنيفا بنجاح', 'produit évalué avec succès', '产品额定成功'),
(194, 'product_rating_failed', 'Product Rating Failed', 'পণ্য রেটিং ব্যর্থ', 'فشل تصنيف المنتج', 'Evaluation du produit a échoué', '产品等级不合格'),
(195, 'you_already_rated_this_product', 'You Already Rated This Product', 'আপনি ইতিমধ্যে এই পণ্য রেট', 'كنت تصنيفا بالفعل هذا المنتج', 'vous avez déjà évalué ce produit', '您已经评价过此产品'),
(196, 'you_already_subscribed', 'You Already Subscribed', 'আপনি ইতিমধ্যে সাবস্ক্রাইব করা', 'كنت قد اشتركت بالفعل', 'vous êtes déjà inscrit', '你已经订阅'),
(197, 'you_subscribed_successfully', 'You Subscribed Successfully', 'আপনি সফলভাবে সাবস্ক্রাইব', 'كنت قد اشتركت بنجاح', 'vous avez souscrit avec succès', '你成功订阅'),
(198, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'আপনি ইতিমধ্যে এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব করা', 'كنت قد اشتركت بالفعل ثلاث مرات من هذا المتصفح', 'vous êtes déjà inscrit trois fois à partir de ce navigateur', '你已经订阅三次从这个浏览器'),
(199, 'logging_in..', 'Logging In..', 'লগ-ইন ..', 'تسجيل الدخول..', 'Se connecter..', '在登录..'),
(200, 'you_logged_in_successfully', 'You Logged In Successfully', 'আপনি সফলভাবে লগ', 'قمت بتسجيل الدخول بنجاح', 'vous vous êtes connecté avec succès', '你登录成功'),
(201, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা কর!', 'فشل تسجيل الدخول! </font><font>حاول ثانية!', 'échec de la connexion! </font><font>réessayer!', '登录失败！</font><font>再试一次！'),
(202, 'you_registered_successfully', 'You Registered Successfully', 'আপনি সাফল্যের সাথে নিবন্ধিত', 'قمت بتسجيل بنجاح', 'vous avez enregistré avec succès', '你注册成功'),
(203, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'রেজিস্ট্রেশন ব্যর্থ হয়েছে! </font><font>আবার চেষ্টা কর!', 'فشل في التسجيل! </font><font>حاول ثانية!', 'échec de l\'enregistrement! </font><font>réessayer!', '注册失败！</font><font>再试一次！'),
(204, 'submitting..', 'Submitting..', 'জমা ..', 'تقديم..', 'soumission..', '提交..'),
(205, 'email_sent_successfully', 'Email Sent Successfully', 'ইমেল সফলভাবে পাঠানো', 'ارسال البريد الالكتروني بنجاح', 'E-mail envoyé avec succès', '电子邮件发送成功'),
(206, 'email_does_not_exist!', 'Email Does Not Exist!', 'ই-মেইল অস্তিত্ব নেই!', 'البريد الإلكتروني غير موجود!', 'email n\'existe pas!', '电子邮件不存在！'),
(207, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'ই-মেইল পাঠানো ব্যর্থ! </font><font>আবার চেষ্টা কর', 'إرسال البريد الإلكتروني فشل! </font><font>حاول ثانية', 'email envoi a échoué! </font><font>réessayer', '电子邮件发送失败！</font><font>再试一次'),
(208, 'logging_in', 'Logging In', 'লগ-ইন', 'تسجيل الدخول', 'Se connecter', '在登录'),
(209, 'adding_to_cart..', 'Adding To Cart..', 'কার্ট যোগ ..', 'مشيرا إلى السلة ..', 'd\'ajouter au panier ..', '添加到购物车..'),
(210, 'product_removed_from_cart', 'Product Removed From Cart', 'পণ্য কার্ট থেকে সরানো', 'المنتج إزالتها من سلة', 'produit retiré du panier', '从产品的购物车中移除'),
(211, 'the_field_is_required', 'The Field Is Required', 'ক্ষেত্র প্রয়োজন বোধ করা হয়', 'مطلوب مجال', 'le champ est obligatoire', '现场要求'),
(212, 'enter_a_valid_email_address', 'Enter A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা লিখুন', 'أدخل عنوان بريد إلكتروني صالح', 'Entrez une adresse mail valide', '输入一个有效的电子邮件地址'),
(213, 'applying..', 'Applying..', 'আবেদন ..', 'تطبيق ..', 'application ..', '应用..'),
(214, 'coupon_not_valid', 'Coupon Not Valid', 'কুপন বৈধ নয়', 'القسيمة غير صالحة', 'coupon pas valide', '优惠券无效'),
(215, 'coupon_discount_successful', 'Coupon Discount Successful', 'কুপন ডিসকাউন্ট সফল', 'قسيمة خصم ناجحة', 'coupon de réduction réussie', '优惠券折扣成功'),
(216, 'favored', 'Favored', 'বিশেষ সুবিধাপ্রাপ্ত', 'مفضل', 'favorisé', '青睐'),
(217, 'successful_login', 'Successful Login', 'সফল অনুপ্রবেশ', 'نجاح تسجيل الدخول', 'Connexion réussie', '登录成功'),
(218, 'login_failed', 'Login Failed', 'লগইন ব্যর্থ', 'فشل تسجيل الدخول', 'échec de la connexion', '登录失败'),
(219, 'sign_in_to_your_account', 'Sign In To Your Account', 'আপনার অ্যাকাউন্টে সাইন ইন করুন', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', '登录到您的帐户'),
(220, 'password', 'Password', 'পাসওয়ার্ড', 'كلمه السر', 'mot de passe', '密码'),
(221, 'forget_password', 'Forget Password', 'পাসওয়ার্ড ভুলে গেছেন', 'نسيت كلمة', 'mot de passe oublié', '忘记密码'),
(222, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'ই-মেইল নতুন পাসওয়ার্ড দিয়ে ডেকে পাঠিয়েছি!', 'تم إرسال رسالة إلكترونية مع كلمة مرور جديدة!', 'email envoyé avec le nouveau mot de passe!', '电子邮件与新密码发送！'),
(223, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছেন', 'هل نسيت كلمة المرور', 'mot de passe oublié', '忘记密码'),
(224, 'sign_in', 'Sign In', 'প্রবেশ কর', 'تسجيل الدخول', 'se connecter', '签到'),
(225, 'this_field_is_required', 'This Field Is Required', 'ঘরটি অবশ্যই পূরণ করতে হবে', 'هذه الخانة مطلوبه', 'Ce champ est requis', '这是必填栏'),
(226, 'signing_in...', 'Signing In...', 'সাইন ইন...', 'تسجيل الدخول...', 'Connectez-vous...', '登录中...'),
(227, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'আপনার ই-মেইল পাঠানো নতুন পাসওয়ার্ড', 'كلمة المرور الجديدة إرسالها إلى البريد الإلكتروني الخاص بك', 'nouveau mot de passe envoyé à votre email', '发送到您的邮箱的新密码'),
(228, 'login_failed!', 'Login Failed!', 'লগইন ব্যর্থ!', 'فشل تسجيل الدخول!', 'échec de la connexion!', '登录失败！'),
(229, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'ভুল ই-মেইল ঠিকানা! </font><font>আবার চেষ্টা কর', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول ثانية', 'Adresse e-mail mal! </font><font>réessayer', '错误的电子邮件地址！</font><font>再试一次'),
(230, 'login_successful!', 'Login Successful!', 'সফল লগইন!', 'تم الدخول بنجاح!', 'connexion réussie!', '登陆成功！'),
(231, 'SUCCESS!', 'SUCCESS!', 'সাফল্য!', 'نجاح!', 'LE SUCCÈS!', '成功！'),
(232, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'اعادة تعيين كلمة السر', 'réinitialiser le mot de passe', '重设密码'),
(233, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'অনুমোদন না অ্যাকাউন্ট. </font><font>অনুমোদনের জন্য অপেক্ষা করুন.', 'حساب غير معتمدة. </font><font>الانتظار للموافقة عليها.', 'compte pas approuvé. </font><font>attendre l\'approbation.', '占未获批准。</font><font>等待批准。'),
(234, '24_hours_stock', '24 Hours Stock', '24 ঘণ্টা স্টক', 'الأسهم 24 ساعة', '24 heures Stock', '24小时股票'),
(235, '24_hours_sale', '24 Hours Sale', '24 ঘণ্টা বিক্রয়', '24 ساعة بيع', '24 heures vente', '24小时销售'),
(236, '24_hours_destroy', '24 Hours Destroy', '24 ঘণ্টা ধ্বংস', '24 ساعة تدمر', '24 heures détruire', '24小时破坏'),
(237, 'total_vendors', 'Total Vendors', 'মোট বিক্রেতারা', 'مجموع الباعة', 'vendeurs au total', '总供应商'),
(238, 'pending_vendors', 'Pending Vendors', 'বিচারাধীন বিক্রেতারা', 'الباعة في انتظار', 'fournisseurs en attente', '未决的供应商'),
(239, 'vendor_stattistics', 'Vendor Stattistics', 'বিক্রেতার stattistics', 'stattistics بائع', 'stattistics fournisseurs', '供应商stattistics'),
(240, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'বিভাগ জ্ঞানী মাসিক স্টক', 'فئة الأسهم الشهري الحكمة', 'catégorie encours mensuel sage', '明智类股票每月'),
(241, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'বিভাগ জ্ঞানী মাসিক ধ্বংস', 'فئة الحكمة تدمير شهريا', 'catégorie sage mensuel détruire', '类别明智每月破坏'),
(242, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'বিভাগ জ্ঞানী মাসিক বিক্রয়', 'الفئة بيع الشهري الحكمة', 'catégorie vente mensuelle sage', '类别明智每月销售'),
(243, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'বিভাগ জ্ঞানী মাসিক গ্র্যান্ড মুনাফা', 'فئة الحكمة الربح الكبير الشهري', 'catégorie sage mensuel grande profit', '明智类盛大每月利润'),
(244, 'cost', 'Cost', 'মূল্য', 'كلفة', 'Coût', '成本'),
(245, 'value', 'Value', 'মূল্য', 'القيمة', 'valeur', '值'),
(246, 'loss', 'Loss', 'ক্ষতি', 'خسارة', 'perte', '失利'),
(247, 'profit', 'Profit', 'মুনাফা', 'ربح', 'le profit', '利润'),
(248, 'manage_categories_(_physical_product_)', 'Manage Categories ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) পরিচালনা', 'إدارة الفئات (منتج مادي)', 'gérer des catégories (produit physique)', '管理类（产品实物）'),
(249, 'add_category_(_physical_product_)', 'Add Category ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) যোগ', 'إضافة فئة (منتج مادي)', 'ajouter la catégorie (produit physique)', '添加类别（产品实物）'),
(250, 'create_category', 'Create Category', 'বিভাগ তৈরি', 'إنشاء فئة', 'créer la catégorie', '创建类别'),
(251, 'banner', 'Banner', 'নিশান', 'راية', 'bannière', '旗帜'),
(252, 'edit_category_(_physical_product_)', 'Edit Category ( Physical Product )', 'সম্পাদনা বিভাগ (শারীরিক পণ্য)', 'تحرير فئة (منتج مادي)', 'modifier la catégorie (produit physique)', '编辑类（实物产品）'),
(253, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'সত্যিই এই মুছে ফেলতে চান?', 'حقا تريد حذف هذا؟', 'voulez vraiment supprimer ce?', '真的要删除吗？'),
(254, 'category_name', 'Category Name', 'বিভাগ নাম', 'اسم الفئة', 'Nom de catégorie', '类别名称'),
(255, 'category_banner', 'Category Banner', 'বিভাগ ব্যানার', 'فئة راية', 'catégorie bannière', '类别旗帜'),
(256, 'select_category_banner', 'Select Category Banner', 'বিভাগ নির্বাচন করুন ব্যানার', 'حدد فئة راية', 'sélectionnez la catégorie bannière', '选择类别旗帜'),
(257, 'manage_brands_(_physical_product_)', 'Manage Brands ( Physical Product )', 'ব্রান্ডের (শারীরিক পণ্য) পরিচালনা', 'إدارة العلامات التجارية (منتج مادي)', 'gérer les marques (produit physique)', '管理品牌（产品实物）'),
(258, 'add_brand_(_physical_product_)', 'Add Brand ( Physical Product )', 'ব্র্যান্ড (শারীরিক পণ্য) যোগ', 'إضافة العلامة التجارية (منتج مادي)', 'ajouter la marque (produit physique)', '加上品牌（产品实物）'),
(259, 'create_brand', 'Create Brand', 'ব্র্যান্ড তৈরি', 'إنشاء العلامة التجارية', 'créer la marque', '创造品牌'),
(260, 'edit_brand_(_physical_product_)', 'Edit Brand ( Physical Product )', 'সম্পাদনা ব্র্যান্ড (শারীরিক পণ্য)', 'تحرير العلامة التجارية (منتج مادي)', 'modifier la marque (produit physique)', '编辑品牌（产品实物）'),
(261, 'brand', 'Brand', 'তরবার', 'علامة تجارية', 'marque', '牌'),
(262, 'brand_name', 'Brand Name', 'পরিচিতিমুলক নাম', 'اسم العلامة التجارية', 'marque', '品牌'),
(263, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'شعار العلامة التجارية', 'logo de la marque', '品牌标志'),
(264, 'select_brand_logo', 'Select Brand Logo', 'নির্বাচন ব্র্যান্ড লোগো', 'حدد شعار العلامة التجارية', 'sélectionnez la marque logo', '选择品牌标志'),
(265, 'manage_sub_categories_(_physical_product_)', 'Manage Sub Categories ( Physical Product )', 'সাব আরও পরিচালনা (শারীরিক পণ্য)', 'إدارة الفئات الفرعية (منتج مادي)', 'gérer les sous-catégories (produit physique)', '管理子类别（产品实物）'),
(266, 'add_sub-category_(_physical_product_)', 'Add Sub-category ( Physical Product )', 'উপ-বিভাগ (শারীরিক পণ্য) যোগ', 'إضافة فئة فرعية (منتج مادي)', 'ajouter des sous-catégories (produit physique)', '添加子类（实物产品）'),
(267, 'create_sub_category', 'Create Sub Category', 'সাব বিভাগ তৈরি', 'إنشاء فئة فرعية', 'créer la sous catégorie', '创建子类别'),
(268, 'edit_sub-category_(_physical_product_)', 'Edit Sub-category ( Physical Product )', 'সম্পাদনা উপ-বিভাগ (শারীরিক পণ্য)', 'تعديل فئة فرعية (منتج مادي)', 'modifier la sous-catégorie (produit physique)', '编辑子类（实物产品）'),
(269, 'sub_category', 'Sub Category', 'সাব বিভাগ', 'الفئة الفرعية', 'sous catégorie', '子分类'),
(270, 'sub-category_name', 'Sub-category Name', 'উপ-বিভাগ নাম', 'اسم الفئة الفرعية', 'nom de sous-catégorie', '子类别名称'),
(271, 'sub-category_banner', 'Sub-category Banner', 'উপ-বিভাগ ব্যানার', 'الفئة الفرعية راية', 'sous-catégorie bannière', '子类的旗帜'),
(272, 'select_sub-category_banner', 'Select Sub-category Banner', 'নির্বাচন উপ-বিভাগ ব্যানার', 'حدد فئة فرعية لافتة', 'sélectionner la sous-catégorie bannière', '选择子类的旗帜'),
(273, 'manage_product_stock', 'Manage Product Stock', 'পণ্য স্টক পরিচালনা', 'إدارة المخزون المنتج', 'gérer des stocks de produits', '管理产品库存'),
(274, 'destroy_product_entry', 'Destroy Product Entry', 'পণ্য এন্ট্রি ধ্বংস', 'تدمير دخول المنتج', 'détruire l\'entrée du produit', '销毁产品入境'),
(275, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'যোগ স্টক এন্ট্রি নেয়া!', 'إضافة إدخال الأوراق المالية اتخذت!', 'ajouter l\'entrée en stock pris!', '采取增加股票入门！'),
(276, 'add_product_stock', 'Add Product Stock', 'পণ্য স্টক যোগ', 'إضافة الأسهم المنتج', 'ajouter des stocks de produits', '增加产品库存'),
(277, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'ধ্বংস এন্ট্রি নেয়া!', 'تدمير دخول اتخذت!', 'détruire l\'entrée prise!', '摧毁采取入口！'),
(278, 'create_stock', 'Create Stock', 'স্টক তৈরি', 'إنشاء الاسهم', 'créer un stock', '创建库存'),
(279, 'ID', 'ID', 'আইডি', 'هوية شخصية', 'ID', 'ID'),
(280, 'product_title', 'Product Title', 'পণ্য শিরোনাম', 'عنوان المنتج', 'titre du produit', '产品称号'),
(281, 'entry_type', 'Entry Type', 'এন্ট্রি টাইপ', 'نوع دخول', 'Type d\'entrée', '条目类型'),
(282, 'quantity', 'Quantity', 'পরিমাণ', 'كمية', 'Quantité', '数量'),
(283, 'note', 'Note', 'বিঃদ্রঃ', 'ملاحظة', 'Remarque', '注意'),
(284, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'কমে পরিমাণ যোগ করা হবে.', 'وستضاف خفض كمية.', 'quantité réduite sera ajoutée.', '减少量将增加。'),
(285, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'যোগ পরিমাণ হ্রাস করা হবে.', 'وسيتم خفض الكمية المضافة.', 'quantité ajoutée sera réduite.', '添加量将减少。'),
(286, 'rate', 'Rate', 'হার', 'معدل', 'taux', '率'),
(287, 'total', 'Total', 'মোট', 'مجموع', 'total', '总'),
(288, 'reason_note', 'Reason Note', 'কারণ নোট', 'السبب مذكرة', 'raison Note', '原因笔记'),
(289, 'monetary_loss', 'Monetary Loss', 'আর্থিক ক্ষতি', 'فقدان النقدية', 'perte monétaire', '金钱上的损失'),
(290, 'manage_categories_(_digital_product_)', 'Manage Categories ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) পরিচালনা', 'إدارة الفئات (المنتجات الرقمية)', 'gérer des catégories (produits numériques)', '管理类别（数码产品）'),
(291, 'add_category_(_digital_product_)', 'Add Category ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) যোগ', 'إضافة فئة (المنتج الرقمي)', 'ajouter la catégorie (produit numérique)', '添加类别（数码产品）'),
(292, 'edit_category_(_digital_product_)', 'Edit Category ( Digital Product )', 'সম্পাদনা বিভাগ (ডিজিটাল পণ্য)', 'تحرير فئة (المنتج الرقمي)', 'modifier catégorie (produits numériques)', '编辑类别（数码产品）'),
(293, 'manage_sub_categories_(_digital_product_)', 'Manage Sub Categories ( Digital Product )', 'সাব আরও পরিচালনা (ডিজিটাল পণ্য)', 'إدارة الفئات الفرعية (المنتجات الرقمية)', 'gérer les sous-catégories (produits numériques)', '管理子类别（数码产品）'),
(294, 'add_sub-category_(_digital_product_)', 'Add Sub-category ( Digital Product )', 'উপ-বিভাগ (ডিজিটাল পণ্য) যোগ', 'إضافة فئة فرعية (المنتج الرقمي)', 'ajouter des sous-catégories (produits numériques)', '添加子类（数码产品）'),
(295, 'edit_sub-category_(_digital_product_)', 'Edit Sub-category ( Digital Product )', 'সম্পাদনা উপ-বিভাগ (ডিজিটাল পণ্য)', 'تعديل فئة فرعية (المنتج الرقمي)', 'modifier la sous-catégorie (produit numérique)', '编辑子类（数码产品）'),
(296, 'manage_product_(_digital_)', 'Manage Product ( Digital )', 'পণ্য (ডিজিটাল) পরিচালনা', 'إدارة المنتجات (رقمي)', 'gérer le produit (numérique)', '管理产品（数码）'),
(297, 'add_product', 'Add Product', 'পণ্য যোগ করুন', 'إضافة منتج', 'ajouter le produit', '增加产品'),
(298, 'create_product', 'Create Product', 'পণ্য তৈরি', 'إنشاء المنتج', 'créer un produit', '创建产品'),
(299, 'back_to_product_list', 'Back To Product List', 'ফিরে পণ্যের তালিকাতে', 'العودة إلى قائمة المنتجات', 'Retour à la liste des produits', '回到产品列表'),
(300, 'download_failed!', 'Download Failed!', 'ডাউনলোড ব্যর্থ হয়েছে!', 'التحميل فشل!', 'Échec du téléchargement!', '下载失败！'),
(301, 'image', 'Image', 'ভাবমূর্তি', 'صورة', 'image', '图片'),
(302, 'title', 'Title', 'খেতাব', 'عنوان', 'Titre', '标题'),
(303, 'view_product', 'View Product', 'দৃশ্য পণ্য', 'المنتج رأي', 'produit Aperçu', '查看产品'),
(304, 'successfully_viewed!', 'Successfully Viewed!', 'সফলভাবে দেখা!', 'ينظر بنجاح!', 'vu avec succès!', '成功查看！'),
(305, 'view', 'View', 'দৃশ্য', 'رأي', 'vue', '视图'),
(306, 'view_discount', 'View Discount', 'দৃশ্য ছাড়', 'خصم عرض', 'vue rabais', '查看优惠'),
(307, 'viewing_discount!', 'Viewing Discount!', 'ছাড় দেখছেন!', 'عرض خصم!', 'visualisation de réduction!', '查看优惠！'),
(308, 'download', 'Download', 'ডাউনলোড', 'تحميل', 'Télécharger', '下载'),
(309, 'edit_product_(_digital_product_)', 'Edit Product ( Digital Product )', 'সম্পাদনা পণ্য (ডিজিটাল পণ্য)', 'تحرير المنتج (المنتجات الرقمية)', 'produit d\'édition (produits numériques)', '编辑产品（数码产品）'),
(310, 'manage_sale', 'Manage Sale', 'বিক্রয় ও পরিচালনা', 'إدارة بيع', 'gérer la vente', '销售管理'),
(311, 'sale_code', 'Sale Code', 'বিক্রয় কোড', 'كود بيع', 'Code de vente', '销售代码'),
(312, 'buyer', 'Buyer', 'ক্রেতা', 'مشتر', 'acheteur', '买方'),
(313, 'date', 'Date', 'তারিখ', 'تاريخ', 'date', '日期'),
(314, 'delivery_status', 'Delivery Status', 'প্রসবের অবস্থা', 'حالة التسليم', 'statut de livraison', '邮寄状态'),
(315, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'حالة السداد', 'statut de paiement', '支付状态'),
(316, 'admin', 'Admin', 'অ্যাডমিন', 'مشرف', 'administrateur', '管理员'),
(317, 'full_invoice', 'Full Invoice', 'পূর্ণ চালান', 'فاتورة كاملة', 'pleine facture', '全额发票'),
(318, 'delivery_payment', 'Delivery Payment', 'ডেলিভারি পেমেন্ট', 'دفع التسليم', 'paiement à la livraison', '货到付款'),
(319, 'sales', 'Sales', 'বিক্রয়', 'مبيعات', 'Ventes', '销售'),
(320, 'manage_coupons', 'Manage Coupons', 'কুপন পরিচালনা', 'إدارة القسائم', 'gérer des coupons', '管理优惠券'),
(321, 'add_coupon', 'Add Coupon', 'কুপন যোগ', 'إضافة قسيمة', 'ajouter coupon', '添加优惠券'),
(322, 'create_coupon', 'Create Coupon', 'কুপন তৈরি', 'إنشاء قسيمة', 'créer coupon', '创建优惠券'),
(323, 'code', 'Code', 'কোড', 'رمز', 'code', '码'),
(324, 'added_by', 'Added By', 'দ্বারা যোগ করা', 'أضيفت من قبل', 'ajouté par', '通过添加'),
(325, 'status', 'Status', 'অবস্থা', 'الحالة', 'statut', '状态'),
(326, 'coupon', 'Coupon', 'কুপন', 'كوبون', 'coupon', '优惠券'),
(327, 'manage_ticket', 'Manage Ticket', 'টিকেট পরিচালনা', 'إدارة تذكرة', 'gérer billet', '管理票'),
(328, 'back_to_ticket_list', 'Back To Ticket List', 'ফিরে টিকেট লিস্টে', 'العودة إلى قائمة تذكرة', 'Retour à la liste de billets', '回票名单'),
(329, 'from', 'From', 'থেকে', 'من عند', 'de', '从'),
(330, 'subject', 'Subject', 'বিষয়', 'موضوع', 'assujettir', '学科'),
(331, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'عرض الصفحة الشخصية', 'Voir le profil', '查看资料'),
(332, 'new', 'New', 'নতুন', 'جديد', 'Nouveau', '新'),
(333, 'view_contact_ticket', 'View Contact Ticket', 'দৃশ্য যোগাযোগের টিকিট', 'تذكرة رأي اتصال', 'billet vue de contact', '查看联系人票'),
(334, 'view_ticket', 'View Ticket', 'দৃশ্য টিকিট', 'عرض تذكرة', 'vue billet', '查看门票'),
(335, 'product_sale_comparison', 'Product Sale Comparison', 'পণ্য বিক্রয় তুলনা', 'مقارنة بيع المنتج', 'la comparaison des produits de la vente', '产品销售比较'),
(336, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'পণ্য বিক্রয় তুলনা প্রতিবেদন', 'المنتج بيع التقرير مقارنة', 'vente de produits rapport de comparaison', '产品销售比较报告'),
(337, 'manage_stock_report', 'Manage Stock Report', 'স্টক রিপোর্ট পরিচালনা', 'تقرير إدارة المخزون', 'gérer rapport sur les stocks', '管理库存报告'),
(338, 'get_stock_report', 'Get Stock Report', 'স্টক রিপোর্ট পেতে', 'الحصول على تقرير المخزون', 'obtenir rapport sur les stocks', '获得股票报告'),
(339, 'product_wishes_report', 'Product Wishes Report', 'পণ্য রিপোর্ট শুভেচ্ছা', 'يرغب المنتج تقرير', 'produit souhaite rapport', '产品希望报告'),
(340, 'manage_vendors', 'Manage Vendors', 'বিক্রেতারা পরিচালনা', 'إدارة البائعين', 'gérer les fournisseurs', '供应商管理'),
(341, 'display_name', 'Display Name', 'প্রদর্শন নাম', 'اسم العرض', 'Afficher un nom', '显示名称'),
(342, 'vendor_approval', 'Vendor Approval', 'বিক্রেতার অনুমোদন', 'موافقة البائع', 'l\'approbation des fournisseurs', '供应商认可'),
(343, 'approval', 'Approval', 'অনুমোদন', 'موافقة', 'approbation', '赞同'),
(344, 'pay_vendor', 'Pay Vendor', 'বেতন বিক্রেতা', 'بائع الأجر', 'salaire fournisseur', '付供应商'),
(345, 'pay', 'Pay', 'বেতন', 'دفع', 'Payer', '工资'),
(346, 'e-mail', 'E-mail', 'ই-মেইল', 'البريد الإلكتروني', 'email', '电子邮件'),
(347, 'manage_vendor_payments', 'Manage Vendor Payments', 'বিক্রেতা পেমেন্ট পরিচালনা', 'إدارة مدفوعات البائعين', 'gérer les paiements des fournisseurs', '管理供应商付款'),
(348, 'amount', 'Amount', 'পরিমাণ', 'كمية', 'montant', '量'),
(349, 'upgraded_vendor_package', 'Upgraded Vendor Package', 'আপগ্রেড বিক্রেতা প্যাকেজ', 'حزمة بائع ترقية', 'paquet fournisseur amélioré', '升级包的供应商'),
(350, 'view_payment_details', 'View Payment Details', 'দৃশ্য পেমেন্ট বিবরণ', 'عرض تفاصيل الدفع', 'afficher les détails de paiement', '查看付款细节'),
(351, 'check_details', 'Check Details', 'বিস্তারিত পরীক্ষা', 'التحقق من التفاصيل', 'vérifier les détails', '查看详细信息'),
(352, 'membership_payments', 'Membership Payments', 'সদস্যপদ পেমেন্ট', 'مدفوعات عضوية', 'paiements d\'adhésion', '会员费'),
(353, 'upgraded_membership', 'Upgraded Membership', 'আপগ্রেড সদস্য', 'عضوية ترقية', 'adhésion améliorée', '升级会员'),
(354, 'manage_vendor_package', 'Manage Vendor Package', 'বিক্রেতা প্যাকেজ পরিচালনা', 'إدارة حزمة بائع', 'gérer ensemble des fournisseurs', '管理供应商封装'),
(355, 'add_vendor_package', 'Add Vendor Package', 'বিক্রেতা প্যাকেজ যোগ', 'إضافة حزمة بائع', 'ajouter package de fournisseur', '加上厂商包'),
(356, 'create_vendor_package', 'Create Vendor Package', 'বিক্রেতা প্যাকেজ তৈরি', 'إنشاء حزمة بائع', 'créer un paquet de fournisseur', '创建包的供应商'),
(357, 'seal', 'Seal', 'সীল', 'ختم', 'joint', '密封'),
(358, 'price', 'Price', 'মূল্য', 'السعر', 'prix', '价钱'),
(359, 'for', 'For', 'জন্য', 'إلى', 'pour', '对于'),
(360, 'lifetime', 'Lifetime', 'জীবনকাল', 'أوقات الحياة', 'durée de vie', '一生'),
(361, 'edit_vendor_package', 'Edit Vendor Package', 'সম্পাদনা বিক্রেতা প্যাকেজ', 'تحرير حزمة بائع', 'package de fournisseur d\'édition', '编辑供应商封装'),
(362, 'days', 'Days', 'দিন', 'أيام', 'journées', '天'),
(363, 'membership', 'Membership', 'সদস্যতা', 'عضوية', 'adhésion', '籍'),
(364, 'manage_product_(_physical_)', 'Manage Product ( Physical )', 'পণ্য পরিচালনা (শারীরিক)', 'إدارة المنتجات (المادية)', 'gérer le produit (physique)', '管理产品（物理）'),
(365, 'current_quantity', 'Current Quantity', 'বর্তমান পরিমাণ', 'الكمية الحالية', 'quantité de courant', '当前量'),
(366, 'add_product_quantity', 'Add Product Quantity', 'পণ্যের পরিমাণ যোগ', 'إضافة كمية المنتج', 'ajouter la quantité de produit', '增加产品数量'),
(367, 'quantity_added!', 'Quantity Added!', 'পরিমাণ যোগ করা হয়েছে!', 'وأضافت الكمية!', 'quantité ajoutée!', '加入量！'),
(368, 'stock', 'Stock', 'স্টক', 'مخزون', 'Stock', '股票'),
(369, 'reduce_product_quantity', 'Reduce Product Quantity', 'পণ্যের পরিমাণ কমাতে', 'تقليل كمية المنتج', 'réduire la quantité de produit', '减少产品数量'),
(370, 'quantity_reduced!', 'Quantity Reduced!', 'পরিমাণ কমে!', 'كمية خفضت!', 'quantité réduite!', '数量减少！'),
(371, 'destroy', 'Destroy', 'ধ্বংস', 'هدم', 'détruire', '破坏'),
(372, 'edit_product', 'Edit Product', 'সম্পাদনা পণ্য', 'تحرير المنتج', 'produit d\'édition', '编辑产品'),
(373, 'product_details', 'Product Details', 'পণ্যের বিবরণ', 'تفاصيل المنتج', 'détails du produit', '产品详情'),
(374, 'business_details', 'Business Details', 'ব্যবসার বিবরণ', 'تفاصيل العمل', 'détails d\'affaires', '商家详情'),
(375, 'customer_choice_options', 'Customer Choice Options', 'গ্রাহকের পছন্দ অপশন', 'خيارات اختيار العملاء', 'options de choix du client', '客户选择的选项'),
(376, 'unit', 'Unit', 'একক', 'وحدة', 'unité', '单元'),
(377, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'ইউনিট (যেমন কেজি, পিসি ইত্যাদি)', 'وحدة (مثلا كجم، وأجهزة الكمبيوتر وغيرها)', 'unité (par exemple kg, pc, etc.)', '单位（例如公斤，PC等）'),
(378, 'tags', 'Tags', 'ট্যাগ', 'علامات', 'Mots clés', '标签'),
(379, 'images', 'Images', 'চিত্র', 'صور', 'images', '图片'),
(380, 'choose_file', 'Choose File', 'ফাইল পছন্দ কর', 'اختر ملف', 'choisir le fichier', '选择文件'),
(381, 'description', 'Description', 'বিবরণ', 'وصف', 'la description', '描述'),
(382, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'যদি আপনি আপনার পণ্যের জন্য আরো ক্ষেত্রের প্রয়োজন, আরো জন্য এখানে ক্লিক করুন ...', 'اذا كنت بحاجة الى مزيد من المجال للمنتج الخاص بك، الرجاء الضغط هنا لمزيد من ...', 'si vous avez besoin de plus le terrain pour votre produit, s\'il vous plaît cliquez ici pour plus ...', '如果你需要更多的领域为您的产品，请点击这里查看更多...'),
(383, 'add_more_fields', 'Add More Fields', 'আরো ক্ষেত্রের যোগ', 'إضافة المزيد من الحقول', 'ajouter des champs', '添加更多的字段'),
(384, 'sale_price', 'Sale Price', 'বিক্রয় মূল্য', 'سعر البيع', 'prix de vente', '销售价格'),
(385, 'purchase_price', 'Purchase Price', 'ক্রয় মূল্য', 'سعر الشراء', 'prix d\'achat', '购买价格'),
(386, 'shipping_cost', 'Shipping Cost', 'প্রদান খরচ', 'تكلفة الشحن', 'frais de port', '运输费'),
(387, 'product_tax', 'Product Tax', 'পণ্যের কর', 'الضرائب المنتج', 'taxe sur les produits', '产品税'),
(388, 'product_discount', 'Product Discount', 'পণ্য ছাড়', 'خصم المنتج', 'une réduction du produit', '产品折扣'),
(389, 'color', 'Color', 'রঙ', 'اللون', 'Couleur', '颜色'),
(390, 'add_more_colors', 'Add More Colors', 'আরো রং যোগ', 'إضافة المزيد من الألوان', 'ajouter plus de couleurs', '添加更多的色彩'),
(391, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'যদি আপনি এই পণ্যের গ্রাহকদের জন্য আরো পছন্দ অপশন প্রয়োজন, এখানে ক্লিক করুন.', 'اذا كنت بحاجة الى مزيد من الخيارات المفضلة للعملاء من هذا المنتج، يرجى الضغط هنا.', 'si vous avez besoin plus d\'options de choix pour les clients de ce produit, s\'il vous plaît cliquez ici.', '如果你需要更多的选择选项本产品的客户，请点击这里。'),
(392, 'add_customer_input_options', 'Add Customer Input Options', 'গ্রাহকের ইনপুট অপশন যোগ', 'إضافة خيارات مدخلات العملاء', 'ajouter des options d\'entrée du client', '添加客户输入选项'),
(393, 'next', 'Next', 'পরবর্তী', 'التالى', 'prochain', '下一个'),
(394, 'previous', 'Previous', 'আগে', 'سابق', 'précédent', '以前'),
(395, 'reset', 'Reset', 'রিসেট', 'إعادة تعيين', 'réinitialiser', '重启'),
(396, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'পণ্য আপলোড করা হয়েছে!', 'وقد تم تحميل المنتج!', 'produit a été téléchargé!', '产品已上传！'),
(397, 'upload', 'Upload', 'আপলোড', 'تحميل', 'télécharger', '上载'),
(398, 'field_name', 'Field Name', 'ক্ষেত্র নাম', 'اسم الحقل', 'nom de domaine', '字段名'),
(399, 'customer_input_title', 'Customer Input Title', 'গ্রাহকের ইনপুট শিরোনাম', 'عنوان مدخلات العملاء', 'Titre de l\'entrée à la clientèle', '客户输入标题'),
(400, 'add_options_for_choice', 'Add Options For Choice', 'পছন্দ জন্য অপশন যোগ', 'إضافة خيارات للاختيار', 'ajouter des options pour le choix', '增加对选择题的选项'),
(401, 'option_name', 'Option Name', 'বিকল্প নাম', 'اسم الخيار', 'nom de l\'option', '选项名称'),
(402, 'details_of', 'Details Of', 'বিস্তারিত', 'تفاصيل', 'les détails de', '细节'),
(403, 'tax', 'Tax', 'কর', 'ضريبة', 'impôt', '税'),
(404, 'tag', 'Tag', 'ট্যাগ', 'بطاقة', 'Étiquette', '标签'),
(405, 'colors', 'Colors', 'রং', 'الألوان', 'les couleurs', '颜色'),
(406, 'product_color_options', 'Product Color Options', 'পণ্য রঙ অপশন', 'خيارات لون المنتج', 'options de couleur du produit', '产品颜色选项'),
(407, 'add_colors', 'Add Colors', 'রং যোগ', 'إضافة الألوان', 'ajouter des couleurs', '添加颜色'),
(408, 'requirements', 'Requirements', 'প্রয়োজনীয়তা', 'المتطلبات', 'exigences', '要求'),
(409, 'add_logo', 'Add Logo', 'লোগো যোগ', 'إضافة شعار', 'ajouter logo', '新增标志'),
(410, 'choose_logo', 'Choose Logo', 'লোগো নির্বাচন', 'اختيار شعار', 'choisissez logo', '选择标志'),
(411, 'add_images', 'Add Images', 'ইমেজ যোগ', 'إضافة الصور', 'ajouter des images', '添加图片'),
(412, 'if_you_need_to_add_video_for_your_product_,_please_click_here...', 'If You Need To Add Video For Your Product , Please Click Here...', 'যদি আপনি আপনার পণ্যের জন্য ভিডিও যোগ করার জন্য প্রয়োজন, এখানে ক্লিক করুন ...', 'إذا كنت بحاجة إلى إضافة الفيديو للمنتج الخاص بك، الرجاء الضغط هنا ...', 'si vous avez besoin d\'ajouter de la vidéo pour votre produit, s\'il vous plaît cliquez ici ...', '如果您需要添加视频为您的产品，请点击这里...'),
(413, 'add_video', 'Add Video', 'ভিডিও যোগ', 'إضافة فيديو', 'ajouter de la vidéo', '添加视频'),
(414, 'upload_video', 'Upload Video', 'আপলোড ভিডিও', 'رفع فيديو', 'Télécharger une video', '上传视频'),
(415, 'choose_video_file', 'Choose Video File', 'ভিডিও ফাইল প্লে', 'اختيار ملف الفيديو', 'choisir le fichier vidéo', '选择视频文件'),
(416, 'choose_sharing_site', 'Choose Sharing Site', 'শেয়ারিং সাইট চয়ন', 'اختيار موقع مشاركة', 'choisir le site de partage', '选择分享网站'),
(417, 'choose_one', 'Choose One', 'একটা পছন্দ কর', 'اختيار واحد', 'choisissez-en un', '选一个'),
(418, 'youtube', 'Youtube', 'ইউটিউব', 'موقع YouTube', 'Youtube', 'YouTube的'),
(419, 'dailymotion', 'Dailymotion', 'Dailymotion', 'ديلي موشن', 'dailymotion', '位DailyMotion'),
(420, 'vimeo', 'Vimeo', 'Vimeo', 'فيميو', 'vimeo', 'VIMEO'),
(421, 'link', 'Link', 'লিংক', 'صلة', 'lien', '链接'),
(422, 'product_file', 'Product File', 'পণ্য ফাইল', 'ملف المنتج', 'fiche produit', '产品文件'),
(423, 'compressed', 'Compressed', 'সঙ্কুচিত', 'مضغوط', 'comprimé', '压缩'),
(424, 'maximum_size', 'Maximum Size', 'সর্বাধিক আকার', 'أكبر مقاس', 'taille maximum', '最大尺寸'),
(425, 'if_you_need_to_add_requirements_of_this_product_for_customers_,please_click_here.', 'If You Need To Add Requirements Of This Product For Customers ,please Click Here.', 'যদি আপনি গ্রাহকদের জন্য এই পণ্যের প্রয়োজনীয়তা যোগ করতে হবে, এখানে ক্লিক করুন.', 'إذا كنت بحاجة إلى إضافة متطلبات هذا المنتج للعملاء، الرجاء الضغط هنا.', 'si vous avez besoin d\'ajouter des exigences de ce produit pour les clients, s\'il vous plaît cliquez ici.', '如果需要添加本品的要求，为客户，请点击这里。'),
(426, 'add_product_requirements', 'Add Product Requirements', 'পণ্য প্রয়োজনীয়তা যোগ', 'إضافة متطلبات المنتج', 'ajouter des exigences de produits', '增加产品的要求'),
(427, 'remove', 'Remove', 'অপসারণ', 'إزالة', 'retirer', '去掉'),
(428, 'video_options', 'Video Options', 'ভিডিও অপশন', 'خيارات الفيديو', 'options vidéo', '视频选项'),
(429, 'choose_an_option', 'Choose An Option', 'একটি বিকল্প নির্বাচন করুন', 'إختر خيار', 'choisis une option', '选择一个选项'),
(430, 'share_link', 'Share Link', 'শেয়ার লিংক', 'رابط المشاركة', 'lien de partage', '分享链接'),
(431, 'i_want_to_add_video_later', 'I Want To Add Video Later', 'আমি পরে ভিডিও যোগ করতে চান', 'أريد أن أضيف فيديو في وقت لاحق', 'je veux ajouter de la vidéo plus tard', '我想在以后添加视频'),
(432, 'update_product_file', 'Update Product File', 'আপডেটের পণ্য ফাইল', 'ملف تحديث المنتج', 'fiche du produit de mise à jour', '更新产品文件'),
(433, 'i_want_to_change_video_later', 'I Want To Change Video Later', 'আমি পরে ভিডিও পরিবর্তন করতে চান', 'أريد أن تغيير الفيديو في وقت لاحق', 'je veux changer vidéo plus tard', '我想以后更改视频'),
(434, 'i_want_to_remove_existing_video', 'I Want To Remove Existing Video', 'আমি বিদ্যমান ভিডিওটি সরিয়ে ফেলতে চান', 'أريد أن إزالة الفيديو موجود', 'je veux supprimer la vidéo existante', '我想删除现有的视频'),
(435, 'invoice_for', 'Invoice For', 'জন্য চালান', 'فاتورة', 'facture de', '发票'),
(436, 'invoice_no:', 'Invoice No:', 'চালান নং:', 'رقم الفاتورة:', 'facturera pas:', '发票号码：'),
(437, 'date_:', 'Date :', 'তারিখ:', 'تاريخ :', 'date :', '日期：');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(438, 'client_information', 'Client Information', 'ক্লায়েন্ট তথ্য', 'معلومات العميل', 'informations client', '客户信息'),
(439, 'first_name', 'First Name', 'প্রথম নাম', 'الاسم الاول', 'Prénom', '名字'),
(440, 'last_name', 'Last Name', 'নামের শেষাংশ', 'الكنية', 'nom de famille', '姓'),
(441, 'payment_detail', 'Payment Detail', 'পেমেন্ট বিস্তারিত', 'تفاصيل الدفع', 'détail du paiement', '付款明细'),
(442, 'due', 'Due', 'কারণে', 'بسبب', 'dû', '应有'),
(443, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'تاريخ الدفع', 'date de paiement', '付款日期'),
(444, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'فاتورة الدفع', 'facture de paiement', '付款发票'),
(445, 'item', 'Item', 'পদ', 'بند', 'article', '项目'),
(446, 'unit_cost', 'Unit Cost', 'ইউনিট খরচ', 'تكلفة الوحدة', 'coût unitaire', '单位成本'),
(447, 'sub_total_amount', 'Sub Total Amount', 'সাব মোট পরিমাণ', 'المبلغ الإجمالي الفرعي', 'montant total sous', '子总额'),
(448, 'shipping', 'Shipping', 'পাঠানো', 'الشحن', 'livraison', '运输'),
(449, 'grand_total', 'Grand Total', 'সর্বমোট', 'المبلغ الإجمالي', 'somme finale', '累计'),
(450, 'address_line_1', 'Address Line 1', 'ঠিকানা লাইন 1', 'العنوان الأول', 'Adresse 1', '地址栏1'),
(451, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন 2', 'سطر العنوان 2', 'Adresse Ligne 2', '地址行2'),
(452, 'zipcode', 'Zipcode', 'পিনকোড', 'الرمز البريدي', 'code postal', '邮政编码'),
(453, 'print', 'Print', 'ছাপা', 'طباعة', 'impression', '打印'),
(454, 'marker_location', 'Marker Location', 'মার্কার অবস্থান', 'علامة المكان', 'emplacement du marqueur', '标记位置'),
(455, 'city', 'City', 'শহর', 'مدينة', 'ville', '市'),
(456, 'ZIP', 'ZIP', 'জিপ', 'ZIP', 'ZIP *: FRANÇAIS', '压缩'),
(457, 'payment_details', 'Payment Details', 'পেমেন্ট বিবরণ', 'بيانات الدفع', 'détails du paiement', NULL),
(458, 'coupon_title', 'Coupon Title', 'কুপন শিরোনাম', 'عنوان القسيمة', 'Titre de coupon', NULL),
(459, 'valid_till', 'Valid Till', 'পর্যন্ত বৈধ', 'صالح حتى', 'valable jusqu\'au', NULL),
(460, 'coupon_discount_on', 'Coupon Discount On', 'কুপন ডিসকাউন্ট', 'قسيمة خصم على', 'coupon de réduction sur les', NULL),
(461, 'coupon_code', 'Coupon Code', 'কুপন কোড', 'رمز القسيمة', 'code promo', NULL),
(462, 'discount_type', 'Discount Type', 'ছাড় টাইপ', 'نوع الخصم', 'Type de réduction', NULL),
(463, 'discount_value', 'Discount Value', 'ডিসকাউন্ট মূল্য', 'قيمة الخصم', 'valeur de réduction', NULL),
(464, 'user', 'User', 'ব্যবহারকারী', 'مستخدم', 'utilisateur', NULL),
(465, 'phone_number', 'Phone Number', 'ফোন নম্বর', 'رقم الهاتف', 'numéro de téléphone', NULL),
(466, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'تاريخ الإنشاء', 'date de création', NULL),
(467, 'ticket_from', 'Ticket From', 'থেকে টিকিট', 'تذكرة من', 'billet de', NULL),
(468, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'التاريخ والوقت', 'date et heure', NULL),
(469, 'reply_message', 'Reply Message', 'উত্তর বার্তা', 'رسالة الرد', 'message de réponse', NULL),
(470, 'successfully_replied!', 'Successfully Replied!', 'সফলভাবে বললেন!', 'أجاب بنجاح!', 'répondit avec succès!', NULL),
(471, 'reply', 'Reply', 'উত্তর', 'الرد', 'répondre', NULL),
(472, 'refresh', 'Refresh', 'সতেজ করা', 'اعادة تنشيط', 'rafraîchir', NULL),
(473, 'company', 'Company', 'কোম্পানির', 'شركة', 'compagnie', NULL),
(474, 'postpone', 'Postpone', 'মুলতবি করা', 'تأجيل', 'remettre à plus tard', NULL),
(475, 'approve', 'Approve', 'অনুমোদন করা', 'وافق', 'approuver', NULL),
(476, 'total_sold', 'Total Sold', 'মোট বিক্রি', 'مجموعه تباع', 'total vendu', NULL),
(477, 'paid_by_customer', 'Paid By Customer', 'গ্রাহকের দ্বারা প্রদান করা', 'المدفوع من قبل العميل', 'payé par le client', NULL),
(478, 'paid_to_vendor', 'Paid To Vendor', 'বিক্রেতার দেওয়া', 'تدفع للبائع', 'payé au fournisseur', NULL),
(479, 'by_admin', 'By Admin', 'দ্বারা অ্যাডমিন', 'بواسطة admin', 'by admin', NULL),
(480, 'cash_on_delivery', 'Cash On Delivery', 'প্রদানোত্তর পরিশোধ', 'الدفع عند التسليم', 'paiement à la livraison', NULL),
(481, 'due_to_vendor', 'Due To Vendor', 'বিক্রেতার কারণে', 'بسبب بائع', 'en raison de fournisseur', NULL),
(482, 'select_payment_method', 'Select Payment Method', 'নির্বাচন পেমেন্ট পদ্ধতি', 'اختار طريقة الدفع', 'Sélectionnez le mode de paiement', NULL),
(483, 'your_card_details_verified!', 'Your Card Details Verified!', 'আপনার কার্ডের বিবরণ যাচাই!', 'تفاصيل بطاقتك التحقق منها!', 'vos coordonnées de carte vérifiées!', NULL),
(484, 'pay_with_stripe', 'Pay With Stripe', 'ডোরা দিয়ে দিতে', 'دفع مع شريط', 'payer avec bande', NULL),
(485, 'datetime', 'Datetime', 'তারিখ সময়', 'التاريخ والوقت', 'datetime', NULL),
(486, 'membership_to_upgrade', 'Membership To Upgrade', 'সদস্যপদ আপগ্রেড করার', 'عضوية لرفع مستوى', 'membres pour mettre à niveau', NULL),
(487, 'method', 'Method', 'পদ্ধতি', 'طريقة', 'méthode', NULL),
(488, 'details', 'Details', 'বিস্তারিত', 'تفاصيل', 'détails', NULL),
(489, 'maximum_products', 'Maximum Products', 'সর্বাধিক পণ্য', 'منتجات القصوى', 'produits maximales', NULL),
(490, 'timespan', 'Timespan', 'timespan', 'الفترة الزمنية', 'timespan', NULL),
(491, 'package_seal', 'Package Seal', 'প্যাকেজ সীল', 'حزمة ختم', 'fermeture de l\'emballage', NULL),
(492, 'select_package_seal', 'Select Package Seal', 'নির্বাচন প্যাকেজ সীল', 'حدد حزمة ختم', 'select joint package', NULL),
(493, 'manage_vendor_slides', 'Manage Vendor Slides', 'বিক্রেতার স্লাইড পরিচালনা', 'إدارة الشرائح بائع', 'gérer les diapositives des fournisseurs', NULL),
(494, 'button', 'Button', 'বোতাম', 'زر', 'bouton', NULL),
(495, 'click_to_check_link', 'Click To Check Link', 'লিংক চেক করতে ক্লিক', 'انقر فوق التحقق من الرابط', 'cliquez pour vérifier le lien', NULL),
(496, 'slides', 'Slides', 'স্লাইড', 'الشرائح', 'diapositives', NULL),
(497, 'manage_users', 'Manage Users', 'ব্যবহারকারীদের পরিচালনা', 'ادارة المستخدمين', 'gérer les utilisateurs', NULL),
(498, 'total_purchase', 'Total Purchase', 'মোট ক্রয়', 'شراء مجموع', 'achat total', NULL),
(499, 'users', 'Users', 'ব্যবহারকারী', 'المستخدمين', 'utilisateurs', NULL),
(500, 'send_newsletter', 'Send Newsletter', 'নিউজলেটার পাঠাতে', 'إرسال الرسائل الإخبارية', 'envoyer la newsletter', NULL),
(501, 'e-mails_(users)', 'E-mails (users)', 'ই-মেইল (ব্যবহারকারী)', 'رسائل البريد الإلكتروني (المستخدمين)', 'e-mails (utilisateurs)', NULL),
(502, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'ই-মেইল (সদস্য)', 'رسائل البريد الإلكتروني (مشترك)', 'e-mails (abonnés)', NULL),
(503, 'from_:_email_address', 'From : Email Address', 'থেকে: ই-মেইল ঠিকানা', 'من: عنوان البريد الإلكتروني', 'à partir de: adresse e-mail', NULL),
(504, 'newsletter_subject', 'Newsletter Subject', 'নিউজলেটার বিষয়', 'النشرة الموضوع', 'bulletin d\'information sous réserve', NULL),
(505, 'newsletter_content', 'Newsletter Content', 'নিউজলেটার বিষয়বস্তু', 'محتوى النشرة الإخبارية', 'contenu du bulletin', NULL),
(506, 'sending', 'Sending', 'পাঠানোর', 'إرسال', 'envoi', NULL),
(507, 'sent!', 'Sent!', 'পাঠানো হয়েছে!', 'أرسلت!', 'envoyé!', NULL),
(508, 'send', 'Send', 'পাঠান', 'إرسال', 'envoyer', NULL),
(509, 'view_contact_message', 'View Contact Message', 'দৃশ্য যোগাযোগের বার্তা', 'رسالة رأي اتصال', 'message visite de contact', NULL),
(510, 'view_message', 'View Message', 'দৃশ্য বার্তা', 'رسالة رأي', 'vue un message', NULL),
(511, 'message', 'Message', 'বার্তা', 'الرسالة', 'message', NULL),
(512, 'date_time', 'Date Time', 'তারিখ সময়', 'التاريخ والوقت', 'date heure', NULL),
(513, 'message_from', 'Message From', 'থেকে বার্তা', 'رسالة من', 'message de', NULL),
(514, 'reply_contact_message', 'Reply Contact Message', 'উত্তর যোগাযোগের বার্তা', 'الرد رسالة الاتصال', 'message de réponse de contact', NULL),
(515, 'view_original_message', 'View Original Message', 'মূল বার্তা দেখতে', 'عرض الرسالة الأصلية', 'voir message original', NULL),
(516, 'manage_blog_categories', 'Manage Blog Categories', 'ব্লগ বিভাগ পরিচালনা', 'إدارة الفئات بلوق', 'gérer des catégories de blog', NULL),
(517, 'add_blog_category', 'Add Blog Category', 'ব্লগ বিভাগ যোগ', 'إضافة فئة بلوق', 'ajouter la catégorie de blog', NULL),
(518, 'create_blog_category', 'Create Blog Category', 'ব্লগ বিভাগ তৈরি', 'إنشاء فئة بلوق', 'créer la catégorie de blog', NULL),
(519, 'edit_blog_category', 'Edit Blog Category', 'সম্পাদনা ব্লগ বিভাগ', 'تحرير الفئة بلوق', 'modifier la catégorie de blog', NULL),
(520, 'blog_category', 'Blog Category', 'ব্লগ বিভাগ', 'الفئة بلوق', 'catégorie de blog', NULL),
(521, 'manage_blog', 'Manage Blog', 'ব্লগ পরিচালনা', 'إدارة بلوق', 'gérer le blog', NULL),
(522, 'add_blog', 'Add Blog', 'ব্লগটি যুক্ত', 'إضافة بلوق', 'ajouter le blog', NULL),
(523, 'create_blog', 'Create Blog', 'ব্লগ তৈরি', 'إنشاء بلوق', 'créer un blog', NULL),
(524, 'back_to_blog_list', 'Back To Blog List', 'ফিরে ব্লগ লিস্টে', 'العودة إلى قائمة بلوق', 'Retour à la liste des blogs', NULL),
(525, 'edit_blog', 'Edit Blog', 'সম্পাদনা ব্লগ', 'تحرير بلوق', 'modifier le blog', NULL),
(526, 'blog_title', 'Blog Title', 'ব্লগ শিরোনাম', 'عنوان المدونة', 'Titre du Blog', NULL),
(527, 'summery', 'Summery', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ', 'صيفي', 'd\'été', NULL),
(528, 'author', 'Author', 'লেখক', 'مؤلف', 'auteur', NULL),
(529, 'manage_layer_slider', 'Manage Layer Slider', 'লেয়ার স্লাইডার পরিচালনা', 'إدارة طبقة المنزلق', 'gérer la couche curseur', NULL),
(530, 'create_slider', 'Create Slider', 'স্লাইডার তৈরি', 'إنشاء المنزلق', 'créer curseur', NULL),
(531, 'slider_list', 'Slider List', 'স্লাইডার তালিকা', 'قائمة المنزلق', 'liste de curseur', NULL),
(532, 'slider_serial', 'Slider Serial', 'স্লাইডার সিরিয়াল', 'المنزلق المسلسل', 'curseur série', NULL),
(533, 'successfully_serialized!', 'Successfully Serialized!', 'সফলভাবে ধারাবাহিকভাবে!', 'تسلسل بنجاح!', 'sérialisé avec succès!', NULL),
(534, 'slider_serial_saved!', 'Slider Serial Saved!', 'স্লাইডার সিরিয়াল সংরক্ষিত!', 'المنزلق مسلسل حفظ!', 'Curseur série sauvé!', NULL),
(535, 'choose_your_slider_style', 'Choose Your Slider Style', 'আপনার স্লাইডার শৈলী চয়ন', 'اختيار نمط التمرير الخاص بك', 'choisissez votre style de curseur', NULL),
(536, 'play', 'Play', 'খেলা', 'لعب', 'jouer', NULL),
(537, 'choose', 'Choose', 'পছন্দ', 'اختار', 'choisir', NULL),
(538, 'enter_preview', 'Enter Preview', 'প্রিভিউ প্রবেশ', 'دخول المعاينة', 'entrer aperçu', NULL),
(539, 'creating_slider..', 'Creating Slider..', 'স্লাইডার তৈরি ..', 'خلق المنزلق ..', 'création curseur ..', NULL),
(540, 'slider_added!', 'Slider Added!', 'স্লাইডার যোগ করা হয়েছে!', 'وأضاف المنزلق!', 'Curseur ajouté!', NULL),
(541, 'select_background_image', 'Select Background Image', 'নির্বাচন ব্যাকগ্রাউন্ড ইমেজ', 'صورة خلفية مختارة', 'sélectionner l\'image d\'arrière-plan', NULL),
(542, 'select_image', 'Select Image', 'নির্বাচন ইমেজ', 'اختر صورة', 'sélectionner l\'image', NULL),
(543, 'font-color', 'Font-color', 'ফন্টের রং', 'لون الخط', 'couleur de la police', NULL),
(544, 'background_color', 'Background Color', 'পেছনের রং', 'لون الخلفية', 'Couleur de fond', NULL),
(545, 'manage_top_carousal_slides', 'Manage Top Carousal Slides', 'শীর্ষ মদ্যপানোৎসব স্লাইড পরিচালনা', 'إدارة أعلى الشرائح إحتفال صاخب مخمور', 'gérer les diapositives de Carrousel top', NULL),
(546, 'add_slides', 'Add Slides', 'স্লাইড যোগ', 'إضافة شرائح', 'ajouter des diapositives', NULL),
(547, 'create_slides', 'Create Slides', 'স্লাইড তৈরি', 'إنشاء الشرائح', 'créer des diapositives', NULL),
(548, 'edit_slides', 'Edit Slides', 'স্লাইড সম্পাদন', 'تحرير الشرائح', 'diapositives modifier', NULL),
(549, 'slide_banner', 'Slide Banner', 'স্লাইড ব্যানার', 'راية الشرائح', 'slide bannière', NULL),
(550, 'select_slide_banner', 'Select Slide Banner', 'নির্বাচন স্লাইড ব্যানার', 'حدد راية الشرائح', 'select slide bannière', NULL),
(551, 'button_color:', 'Button Color:', 'বোতাম রঙ:', 'زر اللون:', 'bouton couleur:', NULL),
(552, 'button_text_color:', 'Button Text Color:', 'বোতাম টেক্সট রঙ:', 'زر لون النص:', 'bouton couleur du texte:', NULL),
(553, 'button_text', 'Button Text', 'বোতাম টেক্সট', 'زر كتابة', 'bouton de texte', NULL),
(554, 'button_link', 'Button Link', 'বোতাম লিংক', 'رابط زر', 'lien de bouton', NULL),
(555, 'slides_logo', 'Slides Logo', 'স্লাইড লোগো', 'الشرائح شعار', 'diapositives logo', NULL),
(556, 'choose_home_page_style', 'Choose Home Page Style', 'চয়ন হোম পৃষ্ঠা শৈলী', 'اختيار نمط الصفحة الرئيسية', 'choisissez la page d\'accueil de style', NULL),
(557, 'updating..', 'Updating..', 'হালনাগাদ করা ..', 'تحديث ..', 'mise à jour ..', NULL),
(558, 'home_page_updated!', 'Home Page Updated!', 'হোম পেজে আপডেট!', 'الصفحة الرئيسية تجديد!', 'page d\'accueil mise à jour!', NULL),
(559, 'update_home_page', 'Update Home Page', 'আপডেটের হোম পেজে', 'تحديث الصفحة الرئيسية', 'mise à jour la page d\'accueil', NULL),
(560, 'change_home_page_items', 'Change Home Page Items', 'পরিবর্তন হোম পেজে আইটেম', 'البنود تغيير الصفحة الرئيسية', 'changement page d\'accueil articles', NULL),
(561, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'সত্যিই এই লোগো মুছে ফেলতে চান?', 'حقا تريد حذف هذا الشعار؟', 'voulez vraiment supprimer ce logo?', NULL),
(562, 'top_slider', 'Top Slider', 'শীর্ষ স্লাইডার', 'كبار المنزلق', 'top slider', NULL),
(563, 'home_banners', 'Home Banners', 'হোম ব্যানার', 'لافتات المنزل', 'bannières à domicile', NULL),
(564, 'search_section', 'Search Section', 'অনুসন্ধান অধ্যায়', 'قسم البحث', 'section de recherche', NULL),
(565, 'category_wise_products', 'Category Wise Products', 'বিভাগ বিজ্ঞ পণ্য', 'فئة المنتجات الحكيمة', 'catégorie produits sages', NULL),
(566, 'special_products', 'Special Products', 'বিশেষ পণ্য', 'منتجات خاصة', 'produits spéciaux', NULL),
(567, 'top_carousel_slider', 'Top Carousel Slider', 'শীর্ষ ক্যারোসেলে স্লাইডার', 'كبار المنزلق دائري', 'top carrousel curseur', NULL),
(568, 'choose_categories_(max_10)', 'Choose Categories (max 10)', 'চয়ন বিভাগ (সর্বোচ্চ 10)', 'اختيار الفئات (حد أقصى 10)', 'choisir les catégories (max 10)', NULL),
(569, 'number_of_todays_deal_(_to_show_)', 'Number Of Todays Deal ( To Show )', 'আজকের চুক্তি সংখ্যা (দেখানোর জন্য)', 'عدد من صفقة اليوم (إظهار)', 'nombre de retransmission de ce deal (montrer)', NULL),
(570, 'updating', 'Updating', 'হালনাগাদ করা', 'تحديث', 'réactualisation', NULL),
(571, 'category_menu_updated!', 'Category Menu Updated!', 'বিভাগ মেনু আপডেট!', 'القائمة فئة تجديد!', 'menu de la catégorie mise à jour!', NULL),
(572, 'update', 'Update', 'হালনাগাদ', 'تحديث', 'mettre à jour', NULL),
(573, 'after_slider', 'After Slider', 'স্লাইডার পর', 'بعد المنزلق', 'après curseur', NULL),
(574, 'select_banner_image', 'Select Banner Image', 'নির্বাচন ব্যানার ইমেজ', 'اختر صورة لافتة', 'sélectionner l\'image de la bannière', NULL),
(575, 'banner_updated!', 'Banner Updated!', 'ব্যানার আপডেট!', 'راية تحديث!', 'banner mis à jour!', NULL),
(576, 'parallax_title_for_search', 'Parallax Title For Search', 'অনুসন্ধানের জন্য লম্বন শিরোনাম', 'عنوان المنظر للبحث', 'Titre de la parallaxe pour la recherche', NULL),
(577, 'parallax_image_for_search_section', 'Parallax Image For Search Section', 'অনুসন্ধান বিভাগের জন্য লম্বন ইমেজ', 'صورة المنظر لقسم البحث', 'l\'image de parallaxe pour la section de recherche', NULL),
(578, 'search_section_updated!', 'Search Section Updated!', 'অনুসন্ধান অধ্যায় আপডেট!', 'قسم البحث تحديث!', 'section de recherche mis à jour!', NULL),
(579, 'featured_products_(_show_/_hide_)', 'Featured Products ( Show / Hide )', 'বৈশিষ্ট্যযুক্ত পণ্য (প্রদর্শন করুন / আড়াল)', 'منتجات مميزة (عرض / إخفاء)', 'produits phares (show / hide)', NULL),
(580, 'number_of_products_(_to_show_)', 'Number Of Products ( To Show )', 'পণ্য সংখ্যা (দেখানোর জন্য)', 'عدد من المنتجات (لاظهار)', 'nombre de produits (pour montrer)', NULL),
(581, 'choose_product_box_style', 'Choose Product Box Style', 'পণ্য বক্স শৈলী চয়ন', 'اختيار المنتج نمط مربع', 'choisissez le style boîte produit', NULL),
(582, 'featured_section_updated!', 'Featured Section Updated!', 'বৈশিষ্ট্যযুক্ত অধ্যায় আপডেট!', 'القسم المميز تحديث!', 'section sélectionnée mis à jour!', NULL),
(583, 'vandor_(_show_/_hide_)', 'Vandor ( Show / Hide )', 'vandor (প্রদর্শন করুন / আড়াল)', 'فاندور (عرض / إخفاء)', 'vandor (afficher / masquer)', NULL),
(584, 'parallax_title_for_vendors', 'Parallax Title For Vendors', 'বিক্রেতাদের জন্য লম্বন শিরোনাম', 'عنوان المنظر للبائعين', 'Titre de la parallaxe pour les vendeurs', NULL),
(585, 'parallax_image_for_vendors', 'Parallax Image For Vendors', 'বিক্রেতাদের জন্য লম্বন ইমেজ', 'صورة المنظر للبائعين', 'l\'image de parallaxe pour les vendeurs', NULL),
(586, 'number_of_vendor_(_to_show_)', 'Number Of Vendor ( To Show )', 'বিক্রেতার সংখ্যা (দেখানোর জন্য)', 'عدد من بائع (لاظهار)', 'nombre de fournisseurs (pour montrer)', NULL),
(587, 'vendor_section_updated!', 'Vendor Section Updated!', 'বিক্রেতার অধ্যায় আপডেট!', 'قسم بائع تحديث!', 'section de fournisseur mis à jour!', NULL),
(588, 'sub-categories_(promotional)', 'Sub-categories (promotional)', 'উপ-বিভাগ (প্রচারমূলক)', 'فئات فرعية (الترويجية)', 'sous-catégories (promotion)', NULL),
(589, 'color_preference_:', 'Color Preference :', 'রঙ পছন্দ:', 'تفضيل اللون:', 'de préférence de couleur:', NULL),
(590, 'title_color:', 'Title Color:', 'শিরোনাম রঙ:', 'عنوان اللون:', 'Titre de la couleur:', NULL),
(591, 'add_new', 'Add New', 'নতুন যোগ', 'اضف جديد', 'ajouter de nouvelles', NULL),
(592, 'home_categories_updated!', 'Home Categories Updated!', 'বাড়িতে আরও আপডেট!', 'فئات الوطن تجديد!', 'catégories de maison mis à jour!', NULL),
(593, 'blog_(_show_/_hide_)', 'Blog ( Show / Hide )', 'ব্লগ (প্রদর্শন করুন / আড়াল)', 'بلوق (عرض / إخفاء)', 'Blog (show / hide)', NULL),
(594, 'parallax_title_for_blog', 'Parallax Title For Blog', 'ব্লগের জন্য লম্বন শিরোনাম', 'عنوان المنظر لبلوق', 'titre parallaxe pour blogue', NULL),
(595, 'parallax_image_for_blog', 'Parallax Image For Blog', 'ব্লগের জন্য লম্বন ইমেজ', 'صورة المنظر لبلوق', 'l\'image de parallaxe pour blogue', NULL),
(596, 'number_of_latest_blog_(_to_show_)', 'Number Of Latest Blog ( To Show )', 'সর্বশেষ ব্লগ সংখ্যা (দেখানোর জন্য)', 'عدد آخر بلوق (لاظهار)', 'nombre de dernier blog (montrer)', NULL),
(597, 'blog_section_updated!', 'Blog Section Updated!', 'ব্লগ অধ্যায় আপডেট!', 'قسم بلوق تحديث!', 'section blog mis à jour!', NULL),
(598, 'special_products_(_show_/_hide_)', 'Special Products ( Show / Hide )', 'বিশেষ পণ্য (প্রদর্শন করুন / আড়াল)', 'منتجات خاصة (إظهار / إخفاء)', 'produits spéciaux (afficher / masquer)', NULL),
(599, 'brand_(_show_/_hide_)', 'Brand ( Show / Hide )', 'ব্র্যান্ড (প্রদর্শন করুন / আড়াল)', 'العلامة التجارية (عرض / إخفاء)', 'marque (show / hide)', NULL),
(600, 'number_of_brand_(_to_show_)', 'Number Of Brand ( To Show )', 'ব্র্যান্ড সংখ্যা (দেখানোর জন্য)', 'عدد من العلامة التجارية (لاظهار)', 'nombre de marque (montrer)', NULL),
(601, 'brand_section_updated!', 'Brand Section Updated!', 'ব্র্যান্ড অধ্যায় আপডেট!', 'قسم العلامة التجارية تحديثها!', 'section de la marque mis à jour!', NULL),
(602, 'banner_published!', 'Banner Published!', 'ব্যানার প্রকাশিত!', 'راية نشرت!', 'bannière publié!', NULL),
(603, 'banner_unpublished!', 'Banner Unpublished!', 'ব্যানার অপ্রকাশিত!', 'راية لم تنشر!', 'bannière inédite!', NULL),
(604, 'section_published!', 'Section Published!', 'অধ্যায় প্রকাশিত!', 'القسم نشرت!', 'section publié!', NULL),
(605, 'section_unpublished!', 'Section Unpublished!', 'অধ্যায় অপ্রকাশিত!', 'قسم غير منشورة!', 'section inédite!', NULL),
(606, 'category_wise_banners', 'Category Wise Banners', 'বিভাগ জ্ঞানী ব্যানার', 'فئة افتات الحكيمة', 'catégorie bannières sages', NULL),
(607, 'title_for_vendor_section', 'Title For Vendor Section', 'বিক্রেতার বিভাগের জন্য শিরোনাম', 'عنوان الباب بائع', 'titre pour la section de fournisseur', NULL),
(608, 'contact_address', 'Contact Address', 'যোগাযোগের ঠিকানা', 'عنوان الإتصال', 'Adresse de contact', NULL),
(609, 'contact_phone', 'Contact Phone', 'ফোনে যোগাযোগ', 'رقم الهاتف', 'Numéro du contact', NULL),
(610, 'contact_email', 'Contact Email', 'যোগাযোগের ই - মেইল', 'تواصل بالبريد الاكتروني', 'Email du contact', NULL),
(611, 'contact_website', 'Contact Website', 'যোগাযোগের ওয়েবসাইট', 'اتصال الانترنت', 'site de contact', NULL),
(612, 'contact_about', 'Contact About', 'সম্পর্কে যোগাযোগ', 'الاتصال حول', 'contacter à propos de', NULL),
(613, 'footer_settings', 'Footer Settings', 'পাদচরণ সেটিংস', 'إعدادات تذييل', 'paramètres de bas de page', NULL),
(614, 'footer_category', 'Footer Category', 'পাদচরণ বিভাগ', 'فئة تذييل', 'catégorie footer', NULL),
(615, 'footer_text', 'Footer Text', 'পাদচরণ', 'نص تذييل', 'texte de pied de page', NULL),
(616, 'choose_theme', 'Choose Theme', 'থিম নির্বাচন', 'اختيار موضوع', 'choisissez le thème', NULL),
(617, 'theme_updated!', 'Theme Updated!', 'থিম আপডেট!', 'موضوع تحديث!', 'thème mis à jour!', NULL),
(618, 'upload_logo', 'Upload Logo', 'আপলোড লোগো', 'تحميل شعار', 'télécharger logo', NULL),
(619, 'select_logo', 'Select Logo', 'নির্বাচন লোগো', 'حدد شعار', 'sélectionnez logo', NULL),
(620, 'all_logos', 'All Logos', 'সমস্ত লোগো', 'كل الشعارات', 'tous les logos', NULL),
(621, 'place', 'Place', 'জায়গা', 'مكان', 'endroit', NULL),
(622, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'شعار المشرف', 'administrateur logo', NULL),
(623, 'successfully_selected!', 'Successfully Selected!', 'সফলভাবে নির্বাচিত!', 'اختيار بنجاح!', 'choisi avec succès!', NULL),
(624, 'change', 'Change', 'পরিবর্তন', 'تغيير', 'changement', NULL),
(625, 'homepage_header_logo', 'Homepage Header Logo', 'হোমপেজে হেডার লোগো', 'الصفحة الرئيسية شعار رأس', 'page d\'accueil logo header', NULL),
(626, 'homepage_footer_logo', 'Homepage Footer Logo', 'হোমপেজে ফুটার লোগো', 'الصفحة الرئيسية شعار تذييل', 'page d\'accueil logo footer', NULL),
(627, 'successfully_logo_uploaded', 'Successfully Logo Uploaded', 'সফলভাবে আপলোড লোগো', 'بنجاح شعار تحميلها', 'avec succès logo téléchargé', NULL),
(628, 'select_favicon', 'Select Favicon', 'নির্বাচন ফেভিকন', 'حدد فافيكون', 'sélectionnez favicon', NULL),
(629, 'favicon_updated!', 'Favicon Updated!', 'ফেভিকন আপডেট!', 'فافيكون تحديث!', 'favicon mis à jour!', NULL),
(630, 'choose_font', 'Choose Font', 'ফন্ট পছন্দ', 'اختيار الخط', 'choisissez la police', NULL),
(631, 'font_updated!', 'Font Updated!', 'ফন্ট আপডেট!', 'الخط تحديث!', 'police mis à jour!', NULL),
(632, 'preloaders', 'Preloaders', 'preloaders', 'preloaders', 'preloaders', NULL),
(633, 'preloader_color', 'Preloader Color', 'preloader রঙ', 'اللون تحميل مسبق', 'couleur de préchargement', NULL),
(634, 'preloader_background', 'Preloader Background', 'preloader পটভূমি', 'خلفية تحميل مسبق', 'preloader fond', NULL),
(635, 'preloader_updated!', 'Preloader Updated!', 'preloader আপডেট!', 'التحميل المسبق لتحديث!', 'Preloader mis à jour!', NULL),
(636, 'social_links', 'Social Links', 'সামাজিক লিংক', 'الروابط الاجتماعية', 'liens sociaux', NULL),
(637, 'system_name', 'System Name', 'সিস্টেমের নামের', 'اسم النظام', 'le nom du système', NULL),
(638, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'نظام البريد الإلكتروني', 'email du système', NULL),
(639, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'عنوان النظام', 'titre du système', NULL),
(640, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজে ক্যাশে সময়', 'الوقت مخبأ الصفحة الرئيسية', 'temps de cache page d\'accueil', NULL),
(641, 'minutes', 'Minutes', 'মিনিট', 'دقيقة', 'minutes', NULL),
(642, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'ডাউনলোডযোগ্য পণ্য ফোল্ডার নাম', 'اسم مجلد المنتج للتحميل', 'produit téléchargeable nom du dossier', NULL),
(643, 'admin_notification_sound', 'Admin Notification Sound', 'অ্যাডমিন নোটিফিকেশন সাউন্ড', 'صوت الإعلام المشرف', 'administrateur notification sonore', NULL),
(644, 'admin_notification_volume', 'Admin Notification Volume', 'অ্যাডমিন বিজ্ঞপ্তি ভলিউম', 'حجم إخطار المشرف', 'volume de notification admin', NULL),
(645, 'Volume_:_', 'Volume : ', 'ভলিউম: ', 'الصوت : ', 'Le volume : ', NULL),
(646, 'homepage_notification_sound', 'Homepage Notification Sound', 'হোমপেজে নোটিফিকেশন সাউন্ড', 'صوت الإعلام الصفحة الرئيسية', 'son de notification page d\'accueil', NULL),
(647, 'homepage_notification_volume', 'Homepage Notification Volume', 'হোমপেজে বিজ্ঞপ্তি ভলিউম', 'حجم الاخطار الصفحة الرئيسية', 'volume de notification page d\'accueil', NULL),
(648, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'إعدادات كلمة التحقق', 'paramètres captcha', NULL),
(649, 'social_login_configuaration', 'Social Login Configuaration', 'সামাজিক লগইন configuaration', 'configuaration تسجيل الدخول الاجتماعي', 'configuaration de connexion sociale', NULL),
(650, 'product_comment_settings', 'Product Comment Settings', 'পণ্য মন্তব্য সেটিংস', 'إعدادات المنتج تعليق', 'paramètres produit de commentaire', NULL),
(651, 'google_map', 'Google Map', 'গুগল মানচিত্র', 'خريطة جوجل', 'Google Map', NULL),
(652, 'save_captcha_settings', 'Save Captcha Settings', 'ক্যাপচা সেটিংস সংরক্ষণ', 'حفظ الإعدادات كلمة التحقق', 'enregistrer les paramètres de captcha', NULL),
(653, 'public_key', 'Public Key', 'সর্বজনীন কী', 'المفتاح العمومي', 'Clé publique', NULL),
(654, 'private_key', 'Private Key', 'প্রাইভেট কী', 'المفتاح الخاص', 'clé privée', NULL),
(655, 'facebook_login_settings', 'Facebook Login Settings', 'ফেসবুক লগইন সেটিংস', 'إعدادات تسجيل الدخول الفيسبوك', 'paramètres de connexion facebook', NULL),
(656, 'google+_login_settings', 'Google+ Login Settings', 'গুগল + লগইন সেটিংস', 'إعدادات تسجيل الدخول جوجل +', 'paramètres google + de connexion', NULL),
(657, 'type', 'Type', 'আদর্শ', 'اكتب', 'type', '类型'),
(658, 'none', 'None', 'না', 'لا شيء', 'aucun', '没有'),
(659, 'facebook_comment', 'Facebook Comment', 'ফেসবুক মন্তব্য', 'الفيسبوك تعليق', 'facebook commentaire', 'Facebook的评论'),
(660, 'disqus_comment', 'Disqus Comment', 'Disqus মন্তব্য', 'هارد تعليق', 'Disqus commentaire', 'disqus评论'),
(661, 'google_comment', 'Google Comment', 'গুগল মন্তব্য', 'جوجل تعليق', 'google commentaire', '谷歌评论'),
(662, 'discus_ID', 'Discus ID', 'চাকতি আইডি', 'رمي القرص معرف', 'discus ID', '铁饼ID'),
(663, 'fb_comment_id', 'Fb Comment Id', 'FB মন্তব্য আইডি', 'أف ب تعليق معرف', 'fb commentaire id', 'FB评论ID'),
(664, 'google_map_api_settings', 'Google Map Api Settings', 'গুগল ম্যাপ API সেটিংস', 'جوجل إعدادات خريطة المعهد', 'google map paramètres api', '谷歌地图API设置'),
(665, 'api_key', 'Api Key', 'API কী', 'مفتاح API', 'clé API', 'API密钥'),
(666, 'add_page', 'Add Page', 'পাতা যোগ কর', 'إضافة صفحة', 'ajouter une page', '添加页面'),
(667, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'إنشاء الصفحة', 'créer une page', '创建页面'),
(668, 'back_to_page_list', 'Back To Page List', 'পিছন পাতা লিস্টে', 'العودة إلى القائمة الصفحة', 'Retour à la liste de la page', '返回页面列表'),
(669, 'page_name', 'Page Name', 'পৃষ্ঠার নাম', 'اسم الصفحة', 'Nom de la page', '网页名称'),
(670, 'preview', 'Preview', 'প্রিভিউ', 'معاينة', 'Aperçu', '预习'),
(671, 'edit_page', 'Edit Page', 'সম্পাদনা পাতা', 'تعديل الصفحة', 'modifier la page', '编辑页面'),
(672, 'page_title', 'Page Title', 'আমার স্নাতকের', 'عنوان الصفحة', 'titre de la page', '页面标题'),
(673, 'parmalink', 'Parmalink', 'মাহবুব', 'الرابط الثابت', 'Permalink', '永久链接'),
(674, 'number_of_page_parts', 'Number Of Page Parts', 'পৃষ্ঠা যন্ত্রাংশ সংখ্যা', 'عدد الأجزاء الصفحة', 'nombre de pages pièces', '页数件'),
(675, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'আপনার পৃষ্ঠা তৈরি করতে চলুন শুরু করা যাক', 'يتيح البدء في إنشاء صفحتك', 'laisse commencer à créer votre page', '让我们开始创建你的页面'),
(676, 'parts', 'Parts', 'যন্ত্রাংশ', 'أجزاء', 'les pièces', '部分'),
(677, 'select_size', 'Select Size', 'নির্বাচন আকার', 'أختر الحجم', 'sélectionnez la taille', '选择大小'),
(678, 'one-fourth', 'One-fourth', 'এক চতুর্থাংশ', 'ربع', 'un quart', '四分之一'),
(679, 'one-third', 'One-third', 'এক-তৃতীয়াংশ', 'الثلث', 'un tiers', '三分之一'),
(680, 'half', 'Half', 'অর্ধেক', 'نصف', 'moitié', '半'),
(681, 'two-third', 'Two-third', 'দুই-তৃতীয়াংশ', 'ثلثي', 'deux tiers', '三分之二'),
(682, 'three-fourth', 'Three-fourth', 'তিন-চতুর্থাংশ', 'ثلاثة ارباع', 'trois quart', '四分之三'),
(683, 'full', 'Full', 'সম্পূর্ণ', 'كامل', 'plein', '充分'),
(684, 'select_type', 'Select Type', 'নির্বাচন টাইপ', 'اختر صنف', 'sélectionner le genre', '选择类型'),
(685, 'content', 'Content', 'সন্তুষ্ট', 'محتوى', 'contenu', '内容'),
(686, 'widget', 'Widget', 'উইজেট', 'القطعة', 'un widget', '小部件'),
(687, 'product_categories', 'Product Categories', 'পণের ধরন', 'أصناف المنتجات', 'catégories de produits', '产品类别'),
(688, 'advance_search', 'Advance Search', 'অগ্রিম অনুসন্ধান', 'بحث متقدم', 'recherche avancée', '高级搜索'),
(689, 'special_blogs', 'Special Blogs', 'বিশেষ ব্লগ', 'بلوق الخاصة', 'blogs spéciaux', '特殊的博客'),
(690, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'অনধিক 4 কলাম!', 'لم يكن أكثر من 4 أعمدة!', 'pas plus de 4 colonnes!', '不超过4列！'),
(691, 'popular', 'Popular', 'জনপ্রিয়', 'شعبي', 'populaire', '流行'),
(692, 'deals', 'Deals', 'প্রতিষ্ঠান', 'صفقات', 'offres', '交易'),
(693, 'page_code', 'Page Code', 'পাতা কোড', 'كود الصفحة', 'code de la page', '网页代码'),
(694, 'page_tags', 'Page Tags', 'পাতা ট্যাগ', 'علامات الصفحة', 'balises de page', '标签页'),
(695, 'column', 'Column', 'স্তম্ভ', 'عمود', 'colonne', '柱'),
(696, '', '', '', '', '', ''),
(697, 'most_sold', 'Most Sold', 'সবথেকে বেশি বিক্রিত', 'الأكثر مبيعا', 'les plus vendus', '大部分销往'),
(698, 'product_image', 'Product Image', 'পণ্য ইমেজ', 'صورة المنتج', 'image du produit', '产品形象'),
(699, 'digital_logo_image', 'Digital Logo Image', 'ডিজিটাল লোগো ইমেজ', 'صورة الشعار الرقمية', 'logo image numérique', '数字标识图像'),
(700, 'category_image', 'Category Image', 'বিভাগ ইমেজ', 'صورة الفئة', 'catégorie d\'image', '类别形象'),
(701, 'sub_category_image', 'Sub Category Image', 'সাব বিভাগ চিত্র', 'صورة الفئة الفرعية', 'Image sous catégorie', '子类别形象'),
(702, 'brand_image', 'Brand Image', 'প্রতিকি ছবি', 'صورة العلامة التجارية', 'image de marque', '品牌形象'),
(703, 'blog_image', 'Blog Image', 'ব্লগ ছবি', 'صور بلوق', 'blog image', '博客图片'),
(704, 'banner_image', 'Banner Image', 'ব্যানার ইমেজ', 'صورة لافتة', 'image de la bannière', '横幅图片'),
(705, 'user_image', 'User Image', 'ব্যবহারকারী ইমেজ', 'صورة المستخدم', 'image de l\'utilisateur', '用户图像'),
(706, 'vendor_logo_image', 'Vendor Logo Image', 'বিক্রেতার লোগো ইমেজ', 'بائع صورة الشعار', 'fournisseur image du logo', '供应商的logo图片'),
(707, 'vendor_banner_image', 'Vendor Banner Image', 'বিক্রেতার ব্যানার ইমেজ', 'بائع راية صورة', 'image de la bannière de fournisseur', '供应商横幅图片'),
(708, 'membership_image', 'Membership Image', 'সদস্য ইমেজ', 'صورة عضوية', 'image de l\'adhésion', '会员图像'),
(709, 'slides_image', 'Slides Image', 'স্লাইড ইমেজ', 'صورة الشرائح', 'l\'image des diapositives', '幻灯片图像'),
(710, 'select_default_image', 'Select Default Image', 'নির্বাচন ডিফল্ট ইমেজ', 'الصورة الافتراضية مختارة', 'image par défaut, sélectionnez', '选择默认图像'),
(711, 'product_image_updated!', 'Product Image Updated!', 'পণ্য ইমেজ আপডেট!', 'صورة المنتج تجديد!', 'image du produit mis à jour!', '产品形象更新了！'),
(712, 'digital_logo_image_updated!', 'Digital Logo Image Updated!', 'ডিজিটাল লোগো ইমেজ আপডেট!', 'صورة الشعار الرقمية تجديد!', 'logo image numérique mis à jour!', '数字标识图像更新！'),
(713, 'category_image_updated!', 'Category Image Updated!', 'বিভাগ ইমেজ আপডেট!', 'الفئة صورة تجديد!', 'catégorie d\'image mis à jour!', '类别图像更新！'),
(714, 'sub_category_image_updated!', 'Sub Category Image Updated!', 'সাব বিভাগ ইমেজ আপডেট!', 'صورة الفئة الفرعية تجديد!', 'Image sous catégorie mise à jour!', '子类图像更新！'),
(715, 'brand_image_updated!', 'Brand Image Updated!', 'ব্র্যান্ড ইমেজ আপডেট!', 'صورة العلامة التجارية تجديد!', 'image de marque mis à jour!', '品牌形象更新了！'),
(716, 'blog_image_updated!', 'Blog Image Updated!', 'ব্লগ ইমেজ আপডেট!', 'صورة بلوق تجديد!', 'l\'image de blog mis à jour!', '博客更新的形象！'),
(717, 'banner_image_updated!', 'Banner Image Updated!', 'ব্যানার ইমেজ আপডেট!', 'راية صورة تجديد!', 'banner image mise à jour!', '横幅图像更新！'),
(718, 'user_image_updated!', 'User Image Updated!', 'ব্যবহারকারী ইমেজ আপডেট!', 'صورة المستخدم تجديد!', 'image de l\'utilisateur mis à jour!', '用户图像更新！'),
(719, 'vendor_logo_image_updated!', 'Vendor Logo Image Updated!', 'বিক্রেতার লোগো ইমেজ আপডেট!', 'بائع صورة شعار تجديد!', 'fournisseur image du logo mis à jour!', '供应商的logo图片更新！'),
(720, 'vendor_banner_image_updated!', 'Vendor Banner Image Updated!', 'বিক্রেতার ব্যানার ইমেজ আপডেট!', 'بائع راية صورة تجديد!', 'image de la bannière du fournisseur mis à jour!', '供应商横幅图像更新！'),
(721, 'membership_image_updated!', 'Membership Image Updated!', 'সদস্য ইমেজ আপডেট!', 'صورة عضوية تجديد!', 'image de l\'adhésion mis à jour!', '会员图像更新！'),
(722, 'slides_image_updated!', 'Slides Image Updated!', 'স্লাইড ইমেজ আপডেট!', 'الشرائح صورة تجديد!', 'l\'image des diapositives mis à jour!', '幻灯片图像更新！'),
(723, 'manage_activation', 'Manage Activation', 'সক্রিয়করণ পরিচালনা', 'إدارة التنشيط', 'gérer l\'activation', '管理激活'),
(724, 'business_related', 'Business Related', 'ব্যবসা সংক্রান্ত', 'الأعمال التجارية ذات الصلة', 'lié aux affaires', '业务相关'),
(725, 'physical_product_activation', 'Physical Product Activation', 'শারীরিক পণ্য অ্যাক্টিভেশন', 'تنشيط المنتج المادي', 'activation physique du produit', '实物产品激活'),
(726, 'physical_product_enabled', 'Physical Product Enabled', 'শারীরিক পণ্য সক্রিয়', 'تمكين منتج مادي', 'produit physique activé', '实物产品启用'),
(727, 'physical_product_disabled', 'Physical Product Disabled', 'শারীরিক পণ্যটি অক্ষম', 'منتج مادي تعطيل', 'produit physique désactivé', '实物产品禁用'),
(728, 'digital_product_activation', 'Digital Product Activation', 'ডিজিটাল পণ্য অ্যাক্টিভেশন', 'تنشيط المنتج الرقمي', 'l\'activation du produit numérique', '数码产品激活'),
(729, 'digital_product_enabled', 'Digital Product Enabled', 'ডিজিটাল পণ্য সক্রিয়', 'تمكين المنتجات الرقمية', 'produit numérique activé', '数码产品启用'),
(730, 'digital_product_disabled', 'Digital Product Disabled', 'ডিজিটাল পণ্য নিষ্ক্রিয়', 'المنتجات الرقمية تعطيل', 'produit numérique désactivé', '数码产品禁用'),
(731, 'vendor_system_activation', 'Vendor System Activation', 'বিক্রেতার সিস্টেম সক্রিয়করণের', 'تفعيل نظام بائع', 'l\'activation du système du fournisseur', '供应商系统的激活'),
(732, 'vendor_system_enabled', 'Vendor System Enabled', 'বিক্রেতার সিস্টেম সক্রিয়', 'تمكين نظام بائع', 'système de fournisseur activé', '供应商的系统中启用'),
(733, 'vendor_system_disabled', 'Vendor System Disabled', 'বিক্রেতার সিস্টেম নিষ্ক্রিয়', 'تعطيل نظام بائع', 'système fournisseur désactivé', '供应商系统禁用'),
(734, 'payment_related', 'Payment Related', 'পেমেন্ট সম্পর্কিত', 'دفع ذات الصلة', 'paiement connexes', '支付相关'),
(735, 'paypal_payment_activation', 'Paypal Payment Activation', 'পেপ্যাল ​​অ্যাক্টিভেশন', 'تفعيل الدفع باي بال', 'activation de paiement paypal', '支付宝付款激活'),
(736, 'paypal_payment_enabled', 'Paypal Payment Enabled', 'পেপাল পেমেন্ট সক্রিয়', 'تمكين الدفع باي بال', 'paiement paypal activé', '支付宝付款启用'),
(737, 'paypal_payment_disabled', 'Paypal Payment Disabled', 'পেপাল পেমেন্ট নিষ্ক্রিয়', 'الدفع باي بال تعطيل', 'paiement paypal désactivé', '支付宝付款禁用'),
(738, 'stripe_payment_activation', 'Stripe Payment Activation', 'ডোরা পেমেন্ট অ্যাক্টিভেশন', 'تفعيل دفع شريط', 'activation de paiement de bande', '条纹支付激活'),
(739, 'stripe_payment_enabled', 'Stripe Payment Enabled', 'ডোরা পেমেন্ট সক্রিয়', 'دفع شريط تمكين', 'paiement de bande activée', '启用条纹付款'),
(740, 'stripe_payment_disabled', 'Stripe Payment Disabled', 'ডোরা পেমেন্ট নিষ্ক্রিয়', 'دفع شريط تعطيل', 'paiement de bande désactivé', '条纹支付禁用'),
(741, 'cash_payment_activation', 'Cash Payment Activation', 'নগদ পেমেন্ট অ্যাক্টিভেশন', 'تفعيل الدفع نقدا', 'activation de paiement en espèces', '现金支付激活'),
(742, 'cash_payment_enabled', 'Cash Payment Enabled', 'নগদ পেমেন্ট সক্রিয়', 'الدفع نقدا تمكين', 'paiement en espèces a permis', '启用现金支付'),
(743, 'cash_payment_disabled', 'Cash Payment Disabled', 'নগদ পেমেন্ট নিষ্ক্রিয়', 'الدفع نقدا تعطيل', 'paiement en espèces désactivé', '现金支付禁用'),
(744, 'manage_business_settings', 'Manage Business Settings', 'ব্যবসা সেটিংস পরিচালনা', 'إدارة إعدادات الأعمال', 'gérer les paramètres d\'affaires', '管理业务设置'),
(745, 'cash_payment', 'Cash Payment', 'নগদে টাকা প্রদান', 'دفع نقدا', 'paiement en espèces', '现金支付'),
(746, 'paypal_payment', 'Paypal Payment', 'পেপ্যাল', 'دفع باي بال', 'Paiement PayPal', '支付宝付款'),
(747, 'paypal_email', 'Paypal Email', 'পেপ্যাল ​​ইমেইল', 'البريد الإلكتروني باي بال', 'paypal email', '贝宝电子邮件'),
(748, 'paypal_account_type', 'Paypal Account Type', 'PayPal অ্যাকাউন্ট টাইপ', 'باي بال نوع الحساب', 'paypal type de compte', 'PayPal帐户类型'),
(749, 'stripe_payment', 'Stripe Payment', 'ডোরা পেমেন্ট', 'دفع شريط', 'paiement de bande', '条纹支付'),
(750, 'stripe_secret_key', 'Stripe Secret Key', 'ডোরা গোপন চাবি', 'المفتاح السري الشريط', 'clé secrète bande', '条纹密钥'),
(751, 'stripe_publishable_key', 'Stripe Publishable Key', 'ডোরা প্রকাশযোগ্য কী', 'شريط مفتاح للنشر', 'stripe clé publiable', '条纹发布的关键'),
(752, 'currency_name', 'Currency Name', 'মুদ্রার নাম', 'اسم العملة', 'nom de la monnaie', '货币名称'),
(753, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'رمز العملة', 'symbole de la monnaie', '货币符号'),
(754, 'shipping_cost_type', 'Shipping Cost Type', 'শিপিং খরচ টাইপ', 'الشحن نوع التكلفة', 'Type de frais de port', '运输成本类型'),
(755, 'product_wise', 'Product Wise', 'পণ্য জ্ঞানী', 'المنتج الحكمة', 'produit sage', '产品明智'),
(756, 'fixed', 'Fixed', 'স্থির', 'ثابت', 'fixé', '固定'),
(757, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'শিপিং খরচ (সংশোধন তাহলে)', 'تكلفة الشحن (إذا الثابتة)', 'frais de port (Si fixe)', '运输成本（如果固定）'),
(758, 'shipment_info', 'Shipment Info', 'চালানের তথ্য', 'معلومات الشحن', 'Information d\'expédition', '发货信息'),
(759, 'question', 'Question', 'প্রশ্ন', 'سؤال', 'question', '题'),
(760, 'answer', 'Answer', 'উত্তর', 'إجابة', 'répondre', '回答'),
(761, 'add_more_FAQs', 'Add More FAQs', 'আরো প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ', 'إضافة المزيد من الأسئلة الشائعة', 'ajouter plus de FAQs', '添加更多的常见问题解答'),
(762, 'manage_payment_methods_&_shipment', 'Manage Payment Methods & Shipment', 'পেমেন্টের &amp; চালান পরিচালনা', 'إدارة وسائل الدفع والشحن', 'gérer les modes de paiement et l\'expédition', '管理付款方式及发货'),
(763, 'payment_methods_settings', 'Payment Methods Settings', 'পেমেন্টের সেটিংস', 'ضبط وسائل الدفع', 'paramètres Modes de paiement', '付款方式设置'),
(764, 'paypal_settings', 'Paypal Settings', 'পেপাল সেটিংস', 'إعدادات باي بال', 'paramètres paypal', '贝宝设置'),
(765, 'stripe_settings', 'Stripe Settings', 'ডোরা সেটিংস', 'إعدادات شريط', 'les paramètres de bande', '条纹设置'),
(766, 'shipment_settings', 'Shipment Settings', 'চালানের সেটিংস', 'ضبط شحنة', 'les paramètres d\'expédition', '出厂设置'),
(767, 'currency_settings', 'Currency Settings', 'মুদ্রা সেটিংস', 'إعدادات العملة', 'paramètres de devise', '货币设置'),
(768, 'exchange_rate', 'Exchange Rate', 'বিনিময় হার', 'سعر الصرف', 'taux de change', '汇率'),
(769, 'default', 'Default', 'ডিফল্ট', 'الافتراضي', 'défaut', '默认'),
(770, 'exchange_rate_updated', 'Exchange Rate Updated', 'বিনিময় হার আপডেট', 'سعر الصرف تحديثها', 'taux de change mis à jour', '汇率更新'),
(771, 'currency_published', 'Currency Published', 'মুদ্রা প্রকাশিত', 'العملة المنشورة', 'monnaie publié', '货币出版'),
(772, 'currency_unpublished', 'Currency Unpublished', 'মুদ্রা অপ্রকাশিত', 'عملة غير منشورة', 'monnaie inédite', '货币未公布'),
(773, 'syncing..', 'Syncing..', 'সিঙ্ক ..', 'المزامنة ..', 'la synchronisation ..', '同步..'),
(774, '!', '!', '!', '!', '!', '！'),
(775, 'sync', 'Sync', 'সুসংগত', 'مزامنة', 'synchroniser', '同步'),
(776, 'manage_faqs', 'Manage Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী পরিচালনা', 'إدارة الأسئلة المتكررة', 'gérer faqs', '管理常见问题解答'),
(777, 'manage_staffs', 'Manage Staffs', 'কর্মীরা পরিচালনা', 'إدارة الموظفين', 'gérer le personnel', '管理人员'),
(778, 'add_staff', 'Add Staff', 'স্টাফ যোগ', 'إضافة الموظفين', 'ajouter du personnel', '增加员工'),
(779, 'create_admin', 'Create Admin', 'অ্যাডমিন তৈরি', 'إنشاء المشرف', 'créer administrateur', '创建管理员'),
(780, 'role', 'Role', 'ভূমিকা', 'دور', 'rôle', '角色'),
(781, 'edit_admin', 'Edit Admin', 'সম্পাদনা অ্যাডমিন', 'تحرير المشرف', 'modifier administrateur', '编辑管理'),
(782, 'sddress', 'Sddress', 'sddress', 'sddress', 'sddress', 'sddress'),
(783, 'Manage_roles', 'Manage Roles', 'ভূমিকা পরিচালনা', 'إدارة الأدوار', 'Gérer les rôles', '管理角色'),
(784, 'add_role', 'Add Role', 'ভূমিকা যোগ', 'إضافة دور', 'ajouter rôle', '添加角色'),
(785, 'create_role', 'Create Role', 'ভূমিকা তৈরি', 'إنشاء دور', 'créer rôle', '创建角色'),
(786, 'back_to_role_list', 'Back To Role List', 'ফিরে ভূমিকা লিস্টে', 'العودة إلى قائمة دور', 'Retour à la liste de rôles', '回到角色列表'),
(787, 'edit_role', 'Edit Role', 'সম্পাদনা ভূমিকা', 'تحرير الدور', 'modifier rôle', '编辑角色'),
(788, 'permissions', 'Permissions', 'অনুমতি', 'أذونات', 'autorisations', '权限'),
(789, 'manage_SEO', 'Manage SEO', 'এসইও পরিচালনা', 'إدارة كبار المسئولين الاقتصاديين', 'gérer SEO', 'SEO管理'),
(790, 'settings', 'Settings', 'সেটিংস', 'إعدادات', 'paramètres', '设置'),
(791, 'social_network_reach', 'Social Network Reach', 'সামাজিক নেটওয়ার্ক নাগালের', 'الوصول إلى الشبكة الاجتماعية', 'la portée du réseau social', '社会网络覆盖'),
(792, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক মেট্রিক্স', 'مقاييس المرور اليكسا', 'alexa métriques de trafic', 'Alexa的流量指标'),
(793, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'আলেক্সা ট্রাফিক গ্রাফ', 'الرسوم البيانية المرور اليكسا', 'graphes de trafic alexa', 'Alexa的流量图'),
(794, 'search_index', 'Search Index', 'খোঁজের', 'فهرس البحث', 'index de recherche', '搜索索引'),
(795, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক র্যাঙ্ক', 'اليكسا رتبة المرور', 'alexa rang du trafic', 'Alexa排名'),
(796, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'সার্চ ইঞ্জিন অপ্টিমাইজেশান পরিচালনা', 'إدارة محرك البحث الأمثل', 'gérer l\'optimisation des moteurs de recherche', '管理搜索引擎优化'),
(797, 'keywords', 'Keywords', 'কীওয়ার্ড', 'الكلمات المفتاحية', 'mots clés', '关键字'),
(798, 'revisit_after', 'Revisit After', 'পরে পরিদর্শন', 'إعادة النظر بعد', 'revoir après', '后重温'),
(799, 'sitemap_link', 'Sitemap Link', 'সাইটম্যাপ লিংক', 'رابط خريطة الموقع', 'lien sitemap', '网站地图链接'),
(800, 'admin_login_logo', 'Admin Login Logo', 'অ্যাডমিন লগইন লোগো', 'المشرف شعار تسجيل الدخول', 'admin login logo', '管理员登录标识'),
(801, 'home_top_logo', 'Home Top Logo', 'হোম শীর্ষ লোগো', 'المنزل أعلى الشعار', 'accueil top logo', '家顶级标志'),
(802, 'home_bottom_logo', 'Home Bottom Logo', 'হোম নীচে লোগো', 'منزل أسفل الشعار', 'fond de la maison logo', '家庭底部标志'),
(803, 'manage_profile', 'Manage Profile', 'প্রোফাইল পরিচালনা', 'إدارة الملف الشخصي', 'gérer le profil', '管理个人资料'),
(804, 'manage_details', 'Manage Details', 'বিবরণ পরিচালনা', 'إدارة تفاصيل', 'gérer les détails', '细节管理'),
(805, 'profile_updated!', 'Profile Updated!', 'প্রোফাইল আপডেট!', 'تحديث الملف الشخصي!', 'Profil mis à jour!', '个人资料已更新！'),
(806, 'update_profile', 'Update Profile', 'প্রফাইল হালনাগাদ', 'تحديث الملف', 'mettre à jour le profil', '更新个人信息'),
(807, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন', 'تغيير كلمة السر', 'changer le mot de passe', '更改密码'),
(808, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'كلمة السر الحالية', 'Mot de passe actuel', '当前密码'),
(809, 'new_password*', 'New Password*', 'নতুন পাসওয়ার্ড *', 'كلمة السر الجديدة*', 'nouveau mot de passe*', '新密码*'),
(810, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'تأكيد كلمة المرور', 'Confirmez le mot de passe', '确认密码'),
(811, 'password_updated!', 'Password Updated!', 'পাসওয়ার্ড আপডেট করা!', 'تم تحديث كلمة السر!', 'Mot de passe mis à jour!', '密码更新！'),
(812, 'update_password', 'Update Password', 'আপডেটের পাসওয়ার্ড', 'كلمة التحديث', 'mise à jour le mot de passe', '更新密码'),
(813, 'password_mismatched', 'Password Mismatched', 'পাসওয়ার্ড সাথে অমিল', 'كلمة المرور غير متطابقة', 'mot de passe dépareillés', '密码不匹配'),
(814, 'incorrect_password!', 'Incorrect Password!', 'ভুল পাসওয়ার্ড৤!', 'كلمة مرور غير صحيحة!', 'mot de passe incorrect!', '密码不正确！'),
(815, 'language_name', 'Language Name', 'ভাষার নাম', 'اسم اللغة', 'Nom de la langue', '语言名称'),
(816, 'language_icon', 'Language Icon', 'ভাষা আইকন', 'رمز لغة', 'icône de langue', '语言图标'),
(817, 'select_language_icon', 'Select Language Icon', 'ভাষা নির্বাচন আইকন', 'رمز لغة حدد', 'Icône de sélection de la langue', '选择语言图标'),
(818, 'secret', 'Secret', 'গোপন', 'سر', 'secret', '秘密'),
(819, 'application_name', 'Application Name', 'আবেদনের নাম', 'اسم التطبيق', 'Nom de l\'application', '应用名称'),
(820, 'client', 'Client', 'মক্কেল', 'زبون', 'client', '客户'),
(821, 'client_secret', 'Client Secret', 'ক্লায়েন্ট সিক্রেট', 'سر العميل', 'secret client', '客户端密钥'),
(822, 'redirect', 'Redirect', 'পুনর্নির্দেশ', 'إعادة توجيه', 'réorienter', '重定向'),
(823, 'key', 'Key', 'চাবি', 'مفتاح', 'clé', '键'),
(824, 'visit_my_homepage', 'Visit My Homepage', 'আমার হোমপেজে যান', 'زيارة موقعي', 'visiter ma page d\'accueil', '访问我的主页'),
(825, 'membership_type', 'Membership Type', 'মেম্বারশিপ টাইপ', 'نوع العضوية', 'Type d\'adhésion', '会员类型'),
(826, 'membership_details', 'Membership Details', 'সদস্য বিবরণ', 'تفاصيل العضوية', 'les détails d\'adhésion', '会员资料，'),
(827, 'membership_expiration', 'Membership Expiration', 'সদস্য মেয়াদপূর্তির', 'انتهاء عضوية', 'expiration de l\'adhésion', '会员到期'),
(828, 'total_uploaded_products', 'Total Uploaded Products', 'মোট আপলোড পণ্য', 'مجموع المنتجات التي تم تحميلها.', 'produits totaux téléchargés', '总上传产品'),
(829, 'uploaded_published_products', 'Uploaded Published Products', 'আপলোড প্রকাশিত পণ্য', 'منتجات المنشورة التي تم تحميلها', 'produits publiés téléchargés', '上传发布的产品'),
(830, 'vendorship_timespan', 'Vendorship Timespan', 'vendorship timespan', 'vendorship زمنية', 'vendorship timespan', 'vendorship时间跨度'),
(831, 'remaining', 'Remaining', 'অবশিষ্ট', 'المتبقية', 'restant', '其余'),
(832, 'paid_by_customers', 'Paid By Customers', 'গ্রাহকদের দ্বারা দেওয়া', 'المدفوعة من قبل العملاء', 'payés par les clients', '由客户支付'),
(833, 'due_from_admin', 'Due From Admin', 'অ্যাডমিন থেকে কারণে', 'بسبب من المشرف', 'en raison de l\'administrateur', '应收管理'),
(834, 'payment_settings', 'Payment Settings', 'পেমেন্ট সেটিংস', 'إعدادات الدفع', 'paramètres de paiement', '付款设置'),
(835, 'upgrade_package', 'Upgrade Package', 'আপগ্রেড প্যাকেজ', 'حزمة الترقية', 'package de mise à niveau', '升级包'),
(836, 'manage_your_product_stock', 'Manage Your Product Stock', 'আপনার পণ্য স্টক পরিচালনা', 'إدارة المخزون المنتج الخاص بك', 'gérer votre stock de produits', '管理你的产品库存'),
(837, 'select_category', 'Select Category', 'বিভাগ নির্বাচন করুন', 'اختر الفئة', 'Choisir une catégorie', '选择类别'),
(838, 'choose_product', 'Choose Product', 'পণ্য চয়ন', 'اختيار المنتج', 'choisir le produit', '选择产品'),
(839, 'manage_public_profile_slider', 'Manage Public Profile Slider', 'সর্বজনীন প্রোফাইল স্লাইডার পরিচালনা', 'إدارة المنزلق ملفه الشخصي', 'gérer le profil curseur publique', '管理的公众形象滑块'),
(840, 'home_page_style', 'Home Page Style', 'হোম পৃষ্ঠা শৈলী', 'أسلوب الصفحة الرئيسية', 'la page d\'accueil de style', '主页风格'),
(841, 'manage_site', 'Manage Site', 'সাইট পরিচালনা', 'إدارة الموقع', 'gérer le site', '管理网站'),
(842, 'vendor_images', 'Vendor Images', 'ভেন্ডর চিত্র', 'الصور مورد معين لل', 'images fournisseurs', '厂商图片'),
(843, 'social_media', 'Social Media', 'সামাজিক মাধ্যম', 'وسائل التواصل الاجتماعي', 'média sociaux', '社交媒体'),
(844, 'SEO', 'SEO', 'এসইও', 'كبار المسئولين الاقتصاديين', 'référencement', '搜索引擎优化'),
(845, 'select_images', 'Select Images', 'চিত্র নির্বাচন করুন', 'صور مختارة', 'sélectionner les images', '选择图片'),
(846, 'suggested_width', 'Suggested Width', 'প্রস্তাবিত প্রস্থ', 'عرض المقترح', 'largeur suggérée', '建议宽度'),
(847, 'height', 'Height', 'উচ্চতা', 'ارتفاع', 'la taille', '高度'),
(848, 'cover_photo', 'Cover Photo', 'প্রচ্ছদ ছবি', 'صورة الغلاف', 'photo de couverture', '封面照片'),
(849, 'select_photo', 'Select Photo', 'ছবি নির্বাচন করুন', 'اختر الصورة', 'select photo', '选择照片'),
(850, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'পেমেন্ট পাওয়ার সেটিংস পরিচালনা', 'إدارة إعدادات دفع المتلقي', 'gérer les paramètres de réception de paiement', '管理支付接收设置'),
(851, 'upgrade', 'Upgrade', 'আপগ্রেড', 'تطوير', 'surclassement', '升级'),
(852, 'maximum_product', 'Maximum Product', 'সর্বাধিক পণ্য', 'الحد الأقصى المنتج', 'produit maximale', '产品最大'),
(853, 'about', 'About', 'সম্বন্ধে', 'حول', 'sur', '关于'),
(854, 'oops', 'Oops', 'ওহো', 'عفوا', 'Oops', '哎呀'),
(855, 'the_page_you_requested_was_not_found', 'The Page You Requested Was Not Found', 'আপনার অনুরোধ পাতা পাওয়া যায় না', 'الصفحة المطلوبة غير متوفرة', 'La page que vous avez demandée n\'a pas été trouvée', '未找到您所请求的页面'),
(856, 'back_to_home', 'Back To Home', 'বাড়িতে ফিরে যাও', 'العودة إلى المنزل', 'de retour à la maison', '返回首页'),
(857, 'browse', 'Browse', 'ব্রাউজ', 'تصفح', 'Feuilleter', '浏览'),
(858, 'sort_by', 'Sort By', 'ক্রমানুসার', 'ترتيب حسب', 'Trier par', '排序方式'),
(859, 'price_low_to_high', 'Price Low To High', 'মূল্য কম থেকে', 'السعر على ارتفاع منخفض', 'prix croissant', '价格从低到高'),
(860, 'price_high_to_low', 'Price High To Low', 'মূল্য থেকে কম', 'السعر الاعلى الى الادنى', 'prix décroissant', '价格高到低'),
(861, 'oldest', 'Oldest', 'প্রবীণতম', 'أقدم', 'la plus ancienne', '最老的'),
(862, 'newest', 'Newest', 'নতুন', 'أحدث', 'le plus récent', '最新'),
(863, 'sold_by_:', 'Sold By :', 'বিক্রিত :', 'تم بيعها من قبل :', 'vendu par :', '所售 ：'),
(864, 'price_:', 'Price :', 'মূল্য:', 'السعر :', 'prix :', '价钱 ：'),
(865, 'discount:_', 'Discount: ', 'ছাড়: ', 'خصم: ', 'remise: ', '折扣： '),
(866, '_available', ' Available', ' সহজলভ্য', ' متاح', ' disponible', ' 可用的'),
(867, '_add_to_wishlist', ' Add To Wishlist', ' চাহিদাপত্রে যোগ করা', ' إضافة إلى سلة', ' ajouter à la liste de souhaits', ' 加入收藏'),
(868, '_compare', ' Compare', ' তুলনা করা', ' قارن', ' comparer', ' 比较'),
(869, 'sold_category_of_vendor', 'Sold Category Of Vendor', 'বিক্রেতার বিভাগ বিক্রি', 'فئة بيعها من المورد', 'catégorie vendu du vendeur', '供应商出售类'),
(870, 'recent', 'Recent', 'সাম্প্রতিক', 'الأخيرة', 'récent', '最近'),
(871, 'our_vendors_location', 'Our Vendors Location', 'আমাদের বিক্রেতারা অবস্থান', 'البائعين لدينا موقع', 'notre emplacement des fournisseurs', '我们的供应商的位置'),
(872, 'search_vendors', 'Search Vendors', 'অনুসন্ধান বিক্রেতারা', 'الباعة البحث', 'les fournisseurs de recherche', '搜索厂商'),
(873, 'go', 'Go', 'যাওয়া', 'اذهب', 'aller', '走'),
(874, 'our_vendors', 'Our Vendors', 'আমাদের বিক্রেতারা', 'موردينا', 'nos fournisseurs', '我们的供应商'),
(875, 'message_sent!', 'Message Sent!', 'বার্তা পাঠানো!', 'تم الارسال!', 'message envoyé!', '消息发送！'),
(876, 'incorrect_captcha!', 'Incorrect Captcha!', 'ভুল ক্যাপচা!', 'كلمة التحقق غير صحيح!', 'Captcha incorrecte!', '验证码不正确！'),
(877, 'about_us', 'About Us', 'আমাদের সম্পর্কে', 'معلومات عنا', 'à propos de nous', '关于我们'),
(878, 'contact_form', 'Contact Form', 'যোগাযোগ ফর্ম', 'نموذج الاتصال', 'formulaire de contact', '联系表'),
(879, 'sending..', 'Sending..', 'পাঠানোর ..', 'إرسال..', 'envoi..', '发送..'),
(880, 'send_message', 'Send Message', 'বার্তা পাঠান', 'إرسال رسالة', 'envoyer le message', '发信息'),
(881, 'enter_valid_email_address', 'Enter Valid Email Address', 'বৈধ ই-মেইল ঠিকানা লিখুন', 'أدخل عنوان بريد إلكتروني صالح', 'entrez l\'adresse e-mail valide', '输入有效电子邮件地址'),
(882, 'message_sent_successfully', 'Message Sent Successfully', 'বার্তাটি সফলভাবে পাঠানো', 'الرسالة أرسلت بنجاح', 'message envoyé avec succès', '消息发送成功');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(883, 'incorrect_information!Check agian', 'Incorrect Information!Check Agian', 'ভুল তথ্য! চেক ইন করুন', 'معلومات غير صحيحة! تحقق في', 'des informations incorrectes! Arrivée', '不正确的信息！入住'),
(884, 'this_filed_is_required!', 'This Filed Is Required!', 'এই মামলা দায়ের করা প্রয়োজন বোধ করা হয়!', 'هذه المقدمة هو مطلوب!', 'ce dépôt est nécessaire!', '该申请要求！'),
(885, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'أسئلة مكررة', 'Questions fréquemment posées', '经常问的问题'),
(886, 'not_a_member_yet_?', 'Not A Member Yet ?', 'এখনো সদস্য নন ?', 'لست عضوا بعد ؟', 'Pas encore membre ?', '还不是会员？'),
(887, 'sign_up_now!', 'Sign Up Now!', 'এখন সাইন আপ!', 'أفتح حساب الأن!', 's\'inscrire maintenant!', '立即注册！'),
(888, 'forget_your_password_?', 'Forget Your Password ?', 'আপনার পাসওয়ার্ড ভুলে গেছেন ?', 'نسيت كلمة المرور ؟', 'Mot de passe oublié ?', '忘记密码 ？'),
(889, 'sign_in_with_facebook', 'Sign In With Facebook', 'ফেসবুকে সাইন - ইন করুন', 'قم بتسجيل الدخول باستخدام الفيسبوك', 'Connectez-vous avec Facebook', '请用facebook'),
(890, 'sign_in_with_google', 'Sign In With Google', 'গুগল সাইন ইন', 'تسجيل الدخول مع جوجل', 'connectez-vous avec Google', '在与谷歌'),
(891, 'submit', 'Submit', 'জমা', 'عرض', 'soumettre', '提交'),
(892, 'already_a_member_?_click_to_', 'Already A Member ? Click To ', 'ইতিমধ্যে সদস্য? </font><font>ক্লিক করুন', 'عضوا فعلا ؟ </font><font>انقر ل', 'Déjà membre ? </font><font>cliquez pour', '已经是会员 ？</font><font>点击'),
(893, 'as_customer', 'As Customer', 'গ্রাহক হিসাবে', 'كما العملاء', 'en tant que client', '为客户'),
(894, '_or_', ' Or ', ' অথবা ', ' أو ', ' ou ', ' 要么 '),
(895, 'sign_up', 'Sign Up', 'নিবন্ধন করুন', 'سجل', 's\'inscrire', '注册'),
(896, 'as_vendor', 'As Vendor', 'বিক্রেতা হিসাবে', 'كما بائع', 'en tant que vendeur', '（作为卖方）'),
(897, 'registering..', 'Registering..', 'নিবন্ধনের ..', 'تسجيل ..', 'enregistrement..', '注册..'),
(898, 'register', 'Register', 'নিবন্ধন', 'تسجيل', 'registre', '寄存器'),
(899, 'already_a_vendor_?_click_to_', 'Already A Vendor ? Click To ', 'ইতিমধ্যে একটি বিক্রেতা? </font><font>ক্লিক করুন', 'بالفعل بائع؟ </font><font>انقر ل', 'déjà un fournisseur? </font><font>cliquez pour', '已供应商？</font><font>点击'),
(900, 'not_a_member_yet_?_click_to_', 'Not A Member Yet ? Click To ', 'এখনো সদস্য নন ? </font><font>ক্লিক করুন', 'لست عضوا بعد ؟ </font><font>انقر ل', 'Pas encore membre ? </font><font>cliquez pour', '还不是会员？</font><font>点击'),
(901, 'back_to_login', 'Back To Login', 'প্রবেশ করতে পেছান', 'العودة لتسجيل الدخول', 'retour connexion', '回到登录'),
(902, 'reset_compare_list', 'Reset Compare List', 'তালিকা তুলনা রিসেট', 'إعادة تعيين قائمة المقارنة', 'réinitialiser la liste de comparaison', '复位对比清单'),
(903, 'choose_a_product', 'Choose A Product', 'একটি পণ্য চয়ন', 'اختيار المنتج', 'choisir un produit', '选择一个产品'),
(904, 'my_cart', 'My Cart', 'আমার ট্রলি', 'سلتي', 'mon panier', '我的车'),
(905, '1', '1', '1', '1', '1', '1'),
(906, 'orders', 'Orders', 'আদেশ', 'أوامر', 'ordres', '命令'),
(907, '2', '2', '2', '2', '2', '2'),
(908, 'delivery_address', 'Delivery Address', 'সরবরাহের ঠিকানা', 'عنوان التوصيل', 'adresse de livraison', '邮寄地址'),
(909, '3', '3', '3', '3', '3', '3'),
(910, 'payments_options', 'Payments Options', 'পেমেন্ট অপশন', 'خيارات الدفع', 'Options de paiement', '支付选项'),
(911, 'cancel_order', 'Cancel Order', 'আদেশ বাতিল', 'الغاء الطلب', 'annuler la commande', '取消订单'),
(912, 'place_order', 'Place Order', 'জায়গা অর্ডার', 'أمر مكان', 'Passer la commande', '下订单'),
(913, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'ملفي الشخصي', 'mon profil', '我的简历'),
(914, 'wishlist', 'Wishlist', 'ইচ্ছেতালিকা', 'مفضلة', 'Liste de souhaits', '愿望清单'),
(915, 'unit_price', 'Unit Price', 'একক দাম', 'سعر الوحدة', 'prix unitaire', '单价'),
(916, 'change_choices', 'Change Choices', 'পরিবর্তন পছন্দ', 'خيارات التغيير', 'choix de changement', '变化的选择'),
(917, 'shopping_cart', 'Shopping Cart', 'বাজারের ব্যাগ', 'عربة التسوق', 'Panier', '购物车'),
(918, 'coupon_discount', 'Coupon Discount', 'কুপন ডিসকাউন্ট', 'قسيمة خصم', 'bon de réduction', '优惠券折扣'),
(919, 'enter_your_coupon_code_if_you_have_one', 'Enter Your Coupon Code If You Have One', 'যদি কেউ থাকেন আপনার কুপন কোড লিখুন', 'إدخال رمز القسيمة إذا كان لديك واحدة', 'entrez votre code de coupon si vous en avez un', '输入您的优惠券代码，如果你有一个'),
(920, 'apply_coupon', 'Apply Coupon', 'কুপন প্রয়োগ করুন', 'تطبيق القسيمة', 'Appliquer Coupon', '申请优惠券'),
(921, 'postcode/ZIP', 'Postcode/ZIP', 'পিন কোড / জিপ', 'الرمز البريدي / الرمز البريدي', 'code postal / ZIP', '邮编/ ZIP'),
(922, 'ship_to_different_address_for_invoice', 'Ship To Different Address For Invoice', 'চালান জন্য বিভিন্ন ঠিকানায় জাহাজ', 'سفينة إلى عنوان مختلف عن فاتورة', 'navire à l\'adresse différente pour la facture', '船到不同的地址发票'),
(923, 'paypal', 'Paypal', 'পেপাল', 'باي بال', 'paypal', '贝宝'),
(924, 'stripe', 'Stripe', 'ডোরা', 'شريط', 'bande', '条纹'),
(925, 'invoice_paper', 'Invoice Paper', 'চালান কাগজ', 'ورقة الفاتورة', 'facture papier', '发票纸'),
(926, 'invoice_no', 'Invoice No', 'চালান নং', 'رقم الفاتورة', 'facturera pas', '发票号码'),
(927, 'client_information:', 'Client Information:', 'ক্লায়েন্ট তথ্য:', 'معلومات العميل:', 'informations sur le client:', '客户资料：'),
(928, 'first_name:', 'First Name:', 'প্রথম নাম:', 'الاسم الاول:', 'Prénom:', '名字：'),
(929, 'last_name:', 'Last Name:', 'নামের শেষাংশ:', 'الكنية:', 'nom de famille:', '姓：'),
(930, 'peyment_details_:', 'Peyment Details :', 'peyment বিবরণ:', 'تفاصيل PEYMENT:', 'détails peyment:', 'peyment详细信息：'),
(931, 'payment_status_:', 'Payment Status :', 'লেনদেনের অবস্থা :', 'حالة السداد :', 'statut de paiement :', '支付状态 ：'),
(932, 'payment_method_:', 'Payment Method :', 'মূল্যপরিশোধ পদ্ধতি :', 'طريقة الدفع او السداد :', 'mode de paiement :', '付款方法 ：'),
(933, 'invoice', 'Invoice', 'চালান', 'فاتورة', 'facture d\'achat', '发票'),
(934, 'billed_to', 'Billed To', 'বিল', 'وصفت ل', 'facturé à', '付款人'),
(935, 'shipped_to', 'Shipped To', 'বিক্রী', 'تم شحنها إلي', 'expédiés à', '运到'),
(936, 'order_date', 'Order Date', 'অর্ডারের তারিখ', 'تاريخ الطلب', 'date de commande', '订购日期'),
(937, 'order_history', 'Order History', 'অর্ডার ইতিহাস', 'تاريخ الطلب', 'Historique des commandes', '订单历史'),
(938, 'downloads', 'Downloads', 'ডাউনলোড', 'التنزيلات', 'téléchargements', '下载'),
(939, 'edit_profile', 'Edit Profile', 'প্রোফাইল সম্পাদনা', 'تعديل الملف الشخصي', 'modifier le profil', '编辑个人资料'),
(940, 'support_ticket', 'Support Ticket', 'সমর্থন টিকেট', 'بطاقة الدعم', 'ticket de support', '支持票'),
(941, 'change_profile_picture', 'Change Profile Picture', 'প্রোফাইল ছবি পরিবর্তন', 'تغيير الصورة الشخصية', 'modifier la photo de profil', '更改资料图片'),
(942, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'প্রোফাইল ছবি সফলভাবে সংরক্ষিত!', 'الصورة الشخصية المحفوظة بنجاح!', 'photo de profil enregistré avec succès!', '资料图片保存成功！'),
(943, 'edit_failed!', 'Edit Failed!', 'সম্পাদনা ব্যর্থ হয়েছে!', 'تحرير فشل!', 'edit a échoué!', '编辑失败！'),
(944, 'try_again!', 'Try Again!', 'আবার চেষ্টা কর!', 'حاول ثانية!', 'réessayer!', '再试一次！'),
(945, 'save_changes', 'Save Changes', 'পরিবর্তনগুলোর সংরক্ষন', 'حفظ التغييرات', 'Sauvegarder les modifications', '保存更改'),
(946, 'profile_information', 'Profile Information', 'জীবন তথ্য', 'معلومات الملف الشخصي', 'Informations sur le profil', '档案信息'),
(947, 'last_7_days', 'Last 7 Days', 'গত 7 দিনে', '7 أيام الماضية', 'les 7 derniers jours', '过去7天'),
(948, 'last_30_days', 'Last 30 Days', 'শেষ 30 দিন', 'أخر 30 يوم', 'les 30 derniers jours', '最近30天'),
(949, 'wished_products', 'Wished Products', 'আকাঙ্ক্ষিত পণ্য', 'منتجات تمنى', 'produits souhaités', '希望产品'),
(950, 'user_since', 'User Since', 'ব্যবহারকারী থেকে', 'مستخدم منذ', 'utilisateur depuis', '用户自'),
(951, 'last_login', 'Last Login', 'গত লগইন', 'آخر تسجيل دخول', 'Dernière connexion', '上次登录'),
(952, 'contact_no', 'Contact No', 'যোগাযোগের নম্বর', 'رقم الاتصال', 'contactez pas', '联系方式'),
(953, 'your_wishlist', 'Your Wishlist', 'আপনার ইচ্ছা তালিকা', 'سلة المفضلة', 'votre liste', '您的愿望清单'),
(954, 'availability', 'Availability', 'উপস্থিতি', 'توفر', 'disponibilité', '可用性'),
(955, 'purchase', 'Purchase', 'ক্রয়', 'شراء', 'achat', '采购'),
(956, 'available', 'Available', 'সহজলভ্য', 'متاح', 'disponible', '可用的'),
(957, 'your_order_history', 'Your Order History', 'আপনার অর্ডার ইতিহাস', 'تاريخ طلبك', 'historique de vos commandes', '您的订单历史记录'),
(958, 'your_downloads', 'Your Downloads', 'আপনার ডাউনলোড', 'برامجك', 'vos téléchargements', '您的下载'),
(959, 'downloading..', 'Downloading..', 'ডাউনলোডিং ..', 'تحميل ..', 'téléchargement en cours..', '下载..'),
(960, 'download_permission_denied', 'Download Permission Denied', 'ডাউনলোড অনুমতি অস্বীকার', 'تحميل تم رفض الإذن', 'téléchargement permission refusée', '下载权限被拒绝'),
(961, 'personal_info', 'Personal Info', 'ব্যাক্তিগত তথ্য', 'معلومات شخصية', 'Informations personnelles', '个人信息'),
(962, 'change_your_profile_information', 'Change Your Profile Information', 'আপনার প্রোফাইলের তথ্য পরিবর্তন', 'تغيير معلومات الملف الشخصي', 'modifier vos informations de profil', '更改您的个人信息'),
(963, 'address 1', 'Address 1', 'ঠিকানা 1', 'العنوان 1', 'Adresse 1', '地址1'),
(964, 'address 2', 'Address 2', 'ঠিকানা ২', 'العنوان 2', 'Adresse 2', '地址2'),
(965, 'skype', 'Skype', 'স্কাইপ', 'سكايب', 'skype', 'Skype的'),
(966, 'google_plus', 'Google Plus', 'গুগল প্লাস', 'جوجل بلس', 'google plus', '谷歌加'),
(967, 'facebook', 'Facebook', 'ফেইসবুক', 'فيس بوك', 'Facebook', 'Facebook的'),
(968, 'info_update_unsuccessful!', 'Info Update Unsuccessful!', 'তথ্য আপডেট অসফল!', 'معلومات تحديث تنجح!', 'Info mise à jour échoue!', '信息更新不成功！'),
(969, 'info_updated_successfully!', 'Info Updated Successfully!', 'তথ্য সফলভাবে আপডেট!', 'معلومات محدثة بنجاح!', 'Renseignements mis à jour avec succès!', '信息更新成功！'),
(970, 'change_your_password', 'Change Your Password', 'আপনার পাসওয়ার্ড পরিবর্তন করুন', 'غير كلمة المرور الخاصة بك', 'changez votre mot de passe', '更改您的密码'),
(971, 'old_password', 'Old Password', 'পুরাতন পাসওয়ার্ড', 'كلمة المرور القديمة', 'ancien mot de passe', '旧密码'),
(972, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'كلمة السر الجديدة', 'nouveau mot de passe', '新密码'),
(973, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'تأكيد كلمة المرور الجديدة', 'confirmer le nouveau mot de passe', '确认新密码'),
(974, 'password_change_unsuccessful!', 'Password Change Unsuccessful!', 'পাসওয়ার্ড পরিবর্তন অসফল!', 'تغيير كلمة المرور غير ناجحة!', 'changement de mot de passe échoue!', '密码修改成功！'),
(975, 'password_changed_successfully!', 'Password Changed Successfully!', 'পাসওয়ার্ড সফলভাবে পরিবর্তন!', 'تم تغيير الرقم السري بنجاح!', 'Le mot de passe a été changé avec succès!', '密码修改成功！'),
(976, 'all_messages', 'All Messages', 'সব বার্তা', 'جميع الرسائل', 'tous les messages', '所有消息'),
(977, 'create_ticket', 'Create Ticket', 'টিকিট তৈরি', 'إنشاء تذكرة', 'créer billet', '创建票'),
(978, 'ticket_subject', 'Ticket Subject', 'টিকেট বিষয়', 'تذكرة الموضوع', 'sujet du ticket', '单主题'),
(979, 'comment', 'Comment', 'মন্তব্য', 'التعليق', 'commentaire', '评论'),
(980, 'creating...', 'Creating...', 'তৈরি ...', 'إنشاء...', 'la création ...', '创建...'),
(981, 'ticket_created_successfully', 'Ticket Created Successfully', 'টিকেট সফলভাবে তৈরি', 'تذكرة إنشاؤها بنجاح', 'ticket créé avec succès', '票成功创建'),
(982, 'ticket_creation_unsuccessful', 'Ticket Creation Unsuccessful', 'টিকেট সৃষ্টি অসফল', 'إنشاء تذكرة ناجحة', 'création de billets infructueuses', '单创建不成功'),
(983, 'create', 'Create', 'সৃষ্টি', 'خلق', 'Créer', '创建'),
(984, 'your_message', 'Your Message', 'তোমার বার্তা', 'رسالتك', 'votre message', '你的信息'),
(985, 'replying...', 'Replying...', 'জবাব ...', 'الرد ...', 'répondre ...', '回复...'),
(986, 'reply_sent_successfully', 'Reply Sent Successfully', 'উত্তর সফলভাবে পাঠানো', 'الرد إرسالها بنجاح', 'réponse envoyé avec succès', '回复发送成功'),
(987, 'unsuccessful', 'Unsuccessful', 'ব্যার্থ', 'غير ناجح', 'infructueux', '不成功'),
(988, 'vendor_public_home', 'Vendor Public Home', 'বিক্রেতা পাবলিক হোম', 'البيت العام الباعة من', 'accueil du public fournisseur', '供应商的众家'),
(989, 'member_since', 'Member Since', 'সদস্য থেকে', 'عضو منذ', 'membre depuis', '会员自'),
(990, 'vendor_rating', 'Vendor Rating', 'বিক্রেতার রেটিং', 'تصنيفهم', 'Note fournisseur', '卖方评级'),
(991, 'about_vendor', 'About Vendor', 'বিক্রেতা সম্পর্কে', 'حول بائع', 'à propos de fournisseur', '有关供应商'),
(992, 'find_location', 'Find Location', 'অবস্থান খুঁজে', 'العثور على الموقع', 'trouver l\'emplacement', '找到位置'),
(993, 'filters', 'Filters', 'ফিল্টার', 'مرشحات', 'filtres', '过滤器'),
(994, 'vendor_featured_product', 'Vendor Featured Product', 'বিক্রেতার বৈশিষ্ট্যযুক্ত পণ্য', 'بائع المنتج المميز', 'fournisseur produit vedette', '供应商的特色产品'),
(995, 'added_to_wishlist', 'Added To Wishlist', NULL, NULL, NULL, NULL),
(996, 'all_category', 'All Category', NULL, NULL, NULL, NULL),
(997, 'by', 'By', NULL, NULL, NULL, NULL),
(998, 'sold_by', 'Sold By', NULL, NULL, NULL, NULL),
(999, 'last_updated', 'Last Updated', NULL, NULL, NULL, NULL),
(1000, 'review(s)', 'Review(s)', NULL, NULL, NULL, NULL),
(1001, 'add_your_review', 'Add Your Review', NULL, NULL, NULL, NULL),
(1002, 'view_details', 'View Details', NULL, NULL, NULL, NULL),
(1003, 'related_products', 'Related Products', NULL, NULL, NULL, NULL),
(1004, 'full_description', 'Full Description', NULL, NULL, NULL, NULL),
(1005, 'additional_specification', 'Additional Specification', NULL, NULL, NULL, NULL),
(1006, 'reviews', 'Reviews', NULL, NULL, NULL, NULL),
(1007, 'color_:', 'Color :', NULL, NULL, NULL, NULL),
(1008, 'add_to_list', 'Add To List', NULL, NULL, NULL, NULL),
(1009, 'you_have_registered_successfully', 'You Have Registered Successfully', NULL, NULL, NULL, NULL),
(1010, 'email_sending_failed!', 'Email Sending Failed!', NULL, NULL, NULL, NULL),
(1011, 'working', 'Working', NULL, NULL, NULL, NULL),
(1012, 'fill_all_fields_correctly', 'Fill All Fields Correctly', NULL, NULL, NULL, NULL),
(1013, 'deposit_request_sent', 'Deposit Request Sent', NULL, NULL, NULL, NULL),
(1014, 'deposit_request_sending_failed', 'Deposit Request Sending Failed', NULL, NULL, NULL, NULL),
(1015, 'payment_info_sent', 'Payment Info Sent', NULL, NULL, NULL, NULL),
(1016, 'payment_info_sending_failed', 'Payment Info Sending Failed', NULL, NULL, NULL, NULL),
(1017, 'wallet', 'Wallet', NULL, NULL, NULL, NULL),
(1018, 'state', 'State', NULL, NULL, NULL, NULL),
(1019, 'country', 'Country', NULL, NULL, NULL, NULL),
(1020, 'deposit_to_wallet', 'Deposit To Wallet', NULL, NULL, NULL, NULL),
(1021, 'your_wallet_history', 'Your Wallet History', NULL, NULL, NULL, NULL),
(1022, 'time', 'Time', NULL, NULL, NULL, NULL),
(1023, 'payment_info', 'Payment Info', NULL, NULL, NULL, NULL),
(1024, 'order_tracing', 'Order Tracing', NULL, NULL, NULL, NULL),
(1025, 'order_tracing_unsuccessful!', 'Order Tracing Unsuccessful!', NULL, NULL, NULL, NULL),
(1026, 'order_traced_successfully!', 'Order Traced Successfully!', NULL, NULL, NULL, NULL),
(1027, 'checking..', 'Checking..', NULL, NULL, NULL, NULL),
(1028, 'trace_my_order', 'Trace My Order', NULL, NULL, NULL, NULL),
(1029, 'pay_to_vendor', 'Pay To Vendor', NULL, NULL, NULL, NULL),
(1030, 'package_payments', 'Package Payments', NULL, NULL, NULL, NULL),
(1031, 'wallet_loads', 'Wallet Loads', NULL, NULL, NULL, NULL),
(1032, 'email_templates', 'Email Templates', NULL, NULL, NULL, NULL),
(1033, 'twocheckout_payment_enabled!', 'Twocheckout Payment Enabled!', NULL, NULL, NULL, NULL),
(1034, 'twocheckout_payment_disabled!', 'Twocheckout Payment Disabled!', NULL, NULL, NULL, NULL),
(1035, 'voguePay_payment_enabled!', 'VoguePay Payment Enabled!', NULL, NULL, NULL, NULL),
(1036, 'voguePay_payment_disabled!', 'VoguePay Payment Disabled!', NULL, NULL, NULL, NULL),
(1037, 'successfully_enabled!', 'Successfully Enabled!', NULL, NULL, NULL, NULL),
(1038, 'successfully_disabled!', 'Successfully Disabled!', NULL, NULL, NULL, NULL),
(1039, 'twocheckout_activation', 'Twocheckout Activation', NULL, NULL, NULL, NULL),
(1040, 'twocheckout_payment_enabled', 'Twocheckout Payment Enabled', NULL, NULL, NULL, NULL),
(1041, 'twocheckout_payment_disabled', 'Twocheckout Payment Disabled', NULL, NULL, NULL, NULL),
(1042, 'voguePay_activation', 'VoguePay Activation', NULL, NULL, NULL, NULL),
(1043, 'voguePay_payment_enabled', 'VoguePay Payment Enabled', NULL, NULL, NULL, NULL),
(1044, 'voguePay_payment_disabled', 'VoguePay Payment Disabled', NULL, NULL, NULL, NULL),
(1045, 'twocheckout_settings', 'Twocheckout Settings', NULL, NULL, NULL, NULL),
(1046, 'user_id', 'User Id', NULL, NULL, NULL, NULL),
(1047, 'secret_key', 'Secret Key', NULL, NULL, NULL, NULL),
(1048, 'account_type', 'Account Type', NULL, NULL, NULL, NULL),
(1049, 'voguePay_settings', 'VoguePay Settings', NULL, NULL, NULL, NULL),
(1050, 'merchant_id', 'Merchant Id', NULL, NULL, NULL, NULL),
(1051, 'manage_wallet_loads', 'Manage Wallet Loads', NULL, NULL, NULL, NULL),
(1052, 'customer', 'Customer', NULL, NULL, NULL, NULL),
(1053, 'i_agree_with', 'I Agree With', NULL, NULL, NULL, NULL),
(1054, 'terms_&_conditions', 'Terms & Conditions', NULL, NULL, NULL, NULL),
(1055, 'you_must_agree_with_terms_&_conditions', 'You Must Agree With Terms & Conditions', NULL, NULL, NULL, NULL),
(1056, 'deposit', 'Deposit', NULL, NULL, NULL, NULL),
(1057, 'transaction_info', 'Transaction Info', NULL, NULL, NULL, NULL),
(1058, 'fully_paid', 'Fully Paid', NULL, NULL, NULL, NULL),
(1059, 'payment_from_admin', 'Payment From Admin', NULL, NULL, NULL, NULL),
(1060, 'package_upgrade_history', 'Package Upgrade History', NULL, NULL, NULL, NULL),
(1061, 'wrong_order_id!', 'Wrong Order Id!', NULL, NULL, NULL, NULL),
(1062, 'order_from', 'Order From', NULL, NULL, NULL, NULL),
(1063, 'pending', 'Pending', NULL, NULL, NULL, NULL),
(1064, 'status_updated_on', 'Status Updated On', NULL, NULL, NULL, NULL),
(1065, 'twocheckcout_payment', 'Twocheckcout Payment', NULL, NULL, NULL, NULL),
(1066, 'twocheckcout_user', 'Twocheckcout User', NULL, NULL, NULL, NULL),
(1067, 'twocheckout_secret', 'Twocheckout Secret', NULL, NULL, NULL, NULL),
(1068, 'voguePay_payment', 'VoguePay Payment', NULL, NULL, NULL, NULL),
(1069, 'details_on_delivery_status', 'Details On Delivery Status', NULL, NULL, NULL, NULL),
(1070, 'manage_Admin_payments', 'Manage Admin Payments', NULL, NULL, NULL, NULL),
(1071, 'total_due', 'Total Due', NULL, NULL, NULL, NULL),
(1072, 'paid_amount', 'Paid Amount', NULL, NULL, NULL, NULL),
(1073, 'admin_payments', 'Admin Payments', NULL, NULL, NULL, NULL),
(1074, 'manage_package_upgrade_history', 'Manage Package Upgrade History', NULL, NULL, NULL, NULL),
(1075, 'view_upgrade_details', 'View Upgrade Details', NULL, NULL, NULL, NULL),
(1076, 'free', 'Free', NULL, NULL, NULL, NULL),
(1077, 'sub-categories_(max 4)', 'Sub-categories (max 4)', NULL, NULL, NULL, NULL),
(1078, 'smtp_settings', 'Smtp Settings', NULL, NULL, NULL, NULL),
(1079, 'smtp_status', 'Smtp Status', NULL, NULL, NULL, NULL),
(1080, 'smtp_host', 'Smtp Host', NULL, NULL, NULL, NULL),
(1081, 'smtp_port', 'Smtp Port', NULL, NULL, NULL, NULL),
(1082, 'smtp_user', 'Smtp User', NULL, NULL, NULL, NULL),
(1083, 'smtp_password', 'Smtp Password', NULL, NULL, NULL, NULL),
(1084, 'voguepay', 'Voguepay', NULL, NULL, NULL, NULL),
(1085, 'please_fill_the_captcha', 'Please Fill The Captcha', NULL, NULL, NULL, NULL),
(1086, 'incorrect_information', 'Incorrect Information', NULL, NULL, NULL, NULL),
(1087, 'check_again', 'Check Again', NULL, NULL, NULL, NULL),
(1088, 'this_field_is_required!', 'This Field Is Required!', NULL, NULL, NULL, NULL),
(1089, 'blog_details', 'Blog Details', NULL, NULL, NULL, NULL),
(1090, 'blog_has_been_uploaded!', 'Blog Has Been Uploaded!', NULL, NULL, NULL, NULL),
(1091, 'provide_payment_info', 'Provide Payment Info', NULL, NULL, NULL, NULL),
(1092, 'view_status', 'View Status', NULL, NULL, NULL, NULL),
(1093, 'successfully_saved!', 'Successfully Saved!', NULL, NULL, NULL, NULL),
(1094, 'no_payment_info_provided', 'No Payment Info Provided', NULL, NULL, NULL, NULL),
(1095, 'no_product_from_admin', 'No Product From Admin', NULL, NULL, NULL, NULL),
(1096, 'wallet_balance', 'Wallet Balance', NULL, NULL, NULL, NULL),
(1097, 'captcha_status', 'Captcha Status', NULL, NULL, NULL, NULL),
(1098, 'manage_email_templates', 'Manage Email Templates', NULL, NULL, NULL, NULL),
(1099, 'Password Reset Email', 'Password Reset Email', NULL, NULL, NULL, NULL),
(1100, 'Account Approval Email', 'Account Approval Email', NULL, NULL, NULL, NULL),
(1101, 'Membership Upgrade Email', 'Membership Upgrade Email', NULL, NULL, NULL, NULL),
(1102, 'Vendors Account Opening', 'Vendors Account Opening', NULL, NULL, NULL, NULL),
(1103, 'Users Account Opening', 'Users Account Opening', NULL, NULL, NULL, NULL),
(1104, 'Admins Account Opening', 'Admins Account Opening', NULL, NULL, NULL, NULL),
(1105, 'email_body', 'Email Body', NULL, NULL, NULL, NULL),
(1106, 'N.B', 'N.B', NULL, NULL, NULL, NULL),
(1107, 'do_not_change_the_variables_like', 'Do Not Change The Variables Like', NULL, NULL, NULL, NULL),
(1108, 'choose_background_theme', 'Choose Background Theme', NULL, NULL, NULL, NULL),
(1109, 'home_default_currency', 'Home Default Currency', NULL, NULL, NULL, NULL),
(1110, 'system_default_currency', 'System Default Currency', NULL, NULL, NULL, NULL),
(1111, 'set_currency_format', 'Set Currency Format', NULL, NULL, NULL, NULL),
(1112, 'currency_format', 'Currency Format', NULL, NULL, NULL, NULL),
(1113, 'symbol_format', 'Symbol Format', NULL, NULL, NULL, NULL),
(1114, 'no_of_decimals', 'No Of Decimals', NULL, NULL, NULL, NULL),
(1115, 'all_currencies', 'All Currencies', NULL, NULL, NULL, NULL),
(1116, 'product_bundle', 'Product Bundle', NULL, NULL, NULL, NULL),
(1117, 'manage_product_bundle', 'Manage Product Bundle', NULL, NULL, NULL, NULL),
(1118, 'add_product_bundle_entry_taken!', 'Add Product Bundle Entry Taken!', NULL, NULL, NULL, NULL),
(1119, 'add_product_bundle', 'Add Product Bundle', NULL, NULL, NULL, NULL),
(1120, 'create_product_bundle', 'Create Product Bundle', NULL, NULL, NULL, NULL),
(1121, 'back_to_product_bundle_list', 'Back To Product Bundle List', NULL, NULL, NULL, NULL),
(1122, 'bundle_stock', 'Bundle Stock', NULL, NULL, NULL, NULL),
(1123, 'bundle_details', 'Bundle Details', NULL, NULL, NULL, NULL),
(1124, 'bundle_title', 'Bundle Title', NULL, NULL, NULL, NULL),
(1125, 'add_products', 'Add Products', NULL, NULL, NULL, NULL),
(1126, 'add_products_from_here', 'Add Products From Here', NULL, NULL, NULL, NULL),
(1127, 'add', 'Add', NULL, NULL, NULL, NULL),
(1128, 'add_more_products', 'Add More Products', NULL, NULL, NULL, NULL),
(1129, 'bundle_tax', 'Bundle Tax', NULL, NULL, NULL, NULL),
(1130, 'bundle_discount', 'Bundle Discount', NULL, NULL, NULL, NULL),
(1131, 'product_bundle_has_been_uploaded!', 'Product Bundle Has Been Uploaded!', NULL, NULL, NULL, NULL),
(1132, 'No Products are available for this brand', 'No Products Are Available For This Brand', NULL, NULL, NULL, NULL),
(1133, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1134, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1135, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1136, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1137, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1138, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1139, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1140, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1141, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1142, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1143, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1144, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1145, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1146, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1147, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1148, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1149, 'current_stock', 'Current Stock', NULL, NULL, NULL, NULL),
(1150, 'edit_product_bundle', 'Edit Product Bundle', NULL, NULL, NULL, NULL),
(1151, 'No brands are available for this sub category', 'No Brands Are Available For This Sub Category', NULL, NULL, NULL, NULL),
(1152, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1153, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1154, 'product_bundle_has_been_edited!', 'Product Bundle Has Been Edited!', NULL, NULL, NULL, NULL),
(1155, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1156, 'view_product_bundle', 'View Product Bundle', NULL, NULL, NULL, NULL),
(1157, 'product_name', 'Product Name', NULL, NULL, NULL, NULL),
(1158, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1159, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1160, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1161, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1162, 'add_bundle_quantity', 'Add Bundle Quantity', NULL, NULL, NULL, NULL),
(1163, 'reduce_bundle_quantity', 'Reduce Bundle Quantity', NULL, NULL, NULL, NULL),
(1164, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1165, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1166, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1167, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1168, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1169, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1170, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1171, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1172, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1173, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1174, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1175, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1176, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1177, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1178, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1179, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1180, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1181, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1182, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1183, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1184, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1185, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1186, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1187, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1188, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1189, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1190, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1191, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1192, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1193, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1194, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1195, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1196, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1197, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1198, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1199, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1200, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1201, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1202, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1203, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1204, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1205, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1206, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1207, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1208, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1209, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1210, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1211, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1212, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1213, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1214, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1215, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1216, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1217, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1218, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1219, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1220, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1221, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1222, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1223, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1224, 'physical', 'Physical', NULL, NULL, NULL, NULL),
(1225, 'digital', 'Digital', NULL, NULL, NULL, NULL),
(1226, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1227, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1228, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1229, 'bundle', 'Bundle', NULL, NULL, NULL, NULL),
(1230, 'most', 'Most', NULL, NULL, NULL, NULL),
(1231, 'viewed', 'Viewed', NULL, NULL, NULL, NULL),
(1232, 'Products_:', 'Products :', NULL, NULL, NULL, NULL),
(1233, 'added_by:', 'Added By:', NULL, NULL, NULL, NULL),
(1234, 'bundle_rated_successfully', 'Bundle Rated Successfully', NULL, NULL, NULL, NULL),
(1235, 'bundle_rating_failed', 'Bundle Rating Failed', NULL, NULL, NULL, NULL),
(1236, 'you_already_rated_this_bundle', 'You Already Rated This Bundle', NULL, NULL, NULL, NULL),
(1237, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1238, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1239, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1240, 'google_analytics', 'Google Analytics', NULL, NULL, NULL, NULL),
(1241, 'tracking_id', 'Tracking Id', NULL, NULL, NULL, NULL),
(1242, 'google_analytics_settings', 'Google Analytics Settings', NULL, NULL, NULL, NULL),
(1243, 'manage_pay_to_vendor', 'Manage Pay To Vendor', NULL, NULL, NULL, NULL),
(1244, 'google_analytics_enabled!', 'Google Analytics Enabled!', NULL, NULL, NULL, NULL),
(1245, 'google_analytics_disabled!', 'Google Analytics Disabled!', NULL, NULL, NULL, NULL),
(1246, 'show_vendor_website', 'Show Vendor Website', NULL, NULL, NULL, NULL),
(1247, 'vendor_show_enabled', 'Vendor Show Enabled', NULL, NULL, NULL, NULL),
(1248, 'vendor_show_disabled', 'Vendor Show Disabled', NULL, NULL, NULL, NULL),
(1249, 'show_vendors', 'Show Vendors', NULL, NULL, NULL, NULL),
(1250, 'product_bundle_(_show_/_hide_)', 'Product Bundle ( Show / Hide )', NULL, NULL, NULL, NULL),
(1251, 'bundle_product_section_updated!', 'Bundle Product Section Updated!', NULL, NULL, NULL, NULL),
(1252, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1253, 'confirm_payment', 'Confirm Payment', NULL, NULL, NULL, NULL),
(1254, 'bundled_product', 'Bundled Product', NULL, NULL, NULL, NULL),
(1255, 'available_brands', 'Available Brands', NULL, NULL, NULL, NULL),
(1256, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1257, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1258, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1259, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1260, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1261, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1262, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1263, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1264, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1265, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1266, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1267, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1268, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1269, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1270, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1271, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1272, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1273, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1274, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1275, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1276, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1277, 'bundled_products', 'Bundled Products', NULL, NULL, NULL, NULL),
(1278, 'purchase_summary', 'Purchase Summary', NULL, NULL, NULL, NULL),
(1279, 'others_info', 'Others Info', NULL, NULL, NULL, NULL),
(1280, 'personal_information', 'Personal Information', NULL, NULL, NULL, NULL),
(1281, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1282, 'edit_coupon', 'Edit Coupon', NULL, NULL, NULL, NULL),
(1283, 'coupon_discount_activated', 'Coupon Discount Activated', NULL, NULL, NULL, NULL),
(1284, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1285, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1286, '<p class=\'control-label\'>No brands are available for this sub category</p>', '<p Class=\'control-label\'>No Brands Are Available For This Sub Category</p>', NULL, NULL, NULL, NULL),
(1287, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1288, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1289, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1290, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1291, '_added_to_wishlist', ' Added To Wishlist', NULL, NULL, NULL, NULL),
(1292, 'thanks_for_registration', 'Thanks For Registration', NULL, NULL, NULL, NULL),
(1293, 'you_have_to_wait_for_admin_approval', 'You Have To Wait For Admin Approval', NULL, NULL, NULL, NULL),
(1294, 'approval_confirmation_will_be_sent_to_your_email', 'Approval Confirmation Will Be Sent To Your Email', NULL, NULL, NULL, NULL),
(1295, 'check_your_email', 'Check Your Email', NULL, NULL, NULL, NULL),
(1296, 'after_confirmation_you_can_', 'After Confirmation You Can ', NULL, NULL, NULL, NULL),
(1297, 'login_from_here', 'Login From Here', NULL, NULL, NULL, NULL),
(1298, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1299, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1300, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1301, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1302, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1303, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1304, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1305, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1306, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1307, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1308, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1309, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL);
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Arabic`, `French`, `Chinese`) VALUES
(1310, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1311, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1312, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1313, 'vendor_payment_status', 'Vendor Payment Status', NULL, NULL, NULL, NULL),
(1314, 'cash', 'Cash', NULL, NULL, NULL, NULL),
(1315, 'post_product', 'Post Product', NULL, NULL, NULL, NULL),
(1316, 'fill_the_form_to_post_the_product', 'Fill The Form To Post The Product', NULL, NULL, NULL, NULL),
(1317, 'processing..', 'Processing..', NULL, NULL, NULL, NULL),
(1318, 'Apply', 'Apply', NULL, NULL, NULL, NULL),
(1319, 'admin_payments_details', 'Admin Payments Details', NULL, NULL, NULL, NULL),
(1320, 'choose_a_country_first', 'Choose A Country First', NULL, NULL, NULL, NULL),
(1321, 'select_a_category', 'Select A Category', NULL, NULL, NULL, NULL),
(1322, 'select_a_category_first', 'Select A Category First', NULL, NULL, NULL, NULL),
(1323, 'new_message', 'New Message', NULL, NULL, NULL, NULL),
(1324, '_compared', ' Compared', NULL, NULL, NULL, NULL),
(1325, 'paid', 'Paid', NULL, NULL, NULL, NULL),
(1326, 'loading...', 'Loading...', NULL, NULL, NULL, NULL),
(1327, 'condition', 'Condition', NULL, NULL, NULL, NULL),
(1328, 'select_a_condition', 'Select A Condition', NULL, NULL, NULL, NULL),
(1329, 'used', 'Used', NULL, NULL, NULL, NULL),
(1330, 'unit(e.g_Kg,Pc etc)', 'Unit(e.g Kg,Pc Etc)', NULL, NULL, NULL, NULL),
(1331, 'unit_(e.g_Kg,_Pc_etc)', 'Unit (e.g Kg, Pc Etc)', NULL, NULL, NULL, NULL),
(1332, 'unit_(Kg,_Pc_etc)', 'Unit (Kg, Pc Etc)', NULL, NULL, NULL, NULL),
(1333, 'choose_files', 'Choose Files', NULL, NULL, NULL, NULL),
(1334, 'location', 'Location', NULL, NULL, NULL, NULL),
(1335, 'additional_information', 'Additional Information', NULL, NULL, NULL, NULL),
(1336, 'product_uploaded_successfully!', 'Product Uploaded Successfully!', NULL, NULL, NULL, NULL),
(1337, 'product_upload_failed!', 'Product Upload Failed!', NULL, NULL, NULL, NULL),
(1338, 'your_remaining_product_upload_amount_is:', 'Your Remaining Product Upload Amount Is:', NULL, NULL, NULL, NULL),
(1339, 'your_remaining_product_upload_amount_is:_', 'Your Remaining Product Upload Amount Is: ', NULL, NULL, NULL, NULL),
(1340, 'please_purchase_a_package_to_upload_more', 'Please Purchase A Package To Upload More', NULL, NULL, NULL, NULL),
(1341, 'purchase_package', 'Purchase Package', NULL, NULL, NULL, NULL),
(1342, 'please_purchase_a_package_to_upload_more_products.', 'Please Purchase A Package To Upload More Products.', NULL, NULL, NULL, NULL),
(1343, 'your_remaining_product_upload_amount:_', 'Your Remaining Product Upload Amount: ', NULL, NULL, NULL, NULL),
(1344, 'remaining_product_upload_amount:_', 'Remaining Product Upload Amount: ', NULL, NULL, NULL, NULL),
(1345, 'confirm_your_upload', 'Confirm Your Upload', NULL, NULL, NULL, NULL),
(1346, 'confirm', 'Confirm', NULL, NULL, NULL, NULL),
(1347, 'uploading_a_product_will_cost_you_1_upload_amount', 'Uploading A Product Will Cost You 1 Upload Amount', NULL, NULL, NULL, NULL),
(1348, 'uploading_a_product_will_cost_you_1_upload_amount</br>after_uploading_a_product_you_can\'t_edit_it', 'Uploading A Product Will Cost You 1 Upload Amount</br>after Uploading A Product You Can\'t Edit It', NULL, NULL, NULL, NULL),
(1349, 'uploading_a_product_will_cost_you_1_upload_amount</br><span class=\"text-danger\">After_uploading_a_product_you_can\'t_edit_it</span>', 'Uploading A Product Will Cost You 1 Upload Amount</br><span Class=\"text-danger\">After Uploading A Product You Can\'t Edit It</span>', NULL, NULL, NULL, NULL),
(1350, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class=\"text-danger\">After_uploading_a_product_you_can\'t_edit_it</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class=\"text-danger\">After Uploading A Product You Can\'t Edit It</b>', NULL, NULL, NULL, NULL),
(1351, 'uploading_a_product_will_cost_you_1_upload_amount</br><b class=\"text-danger\">After_uploading_a_product_you_can_not_edit_it_again</b>', 'Uploading A Product Will Cost You 1 Upload Amount</br><b Class=\"text-danger\">After Uploading A Product You Can Not Edit It Again</b>', NULL, NULL, NULL, NULL),
(1352, 'package_info', 'Package Info', NULL, NULL, NULL, NULL),
(1353, 'remaining_upload_amount', 'Remaining Upload Amount', NULL, NULL, NULL, NULL),
(1354, 'last_purchased_package', 'Last Purchased Package', NULL, NULL, NULL, NULL),
(1355, 'current_package', 'Current Package', NULL, NULL, NULL, NULL),
(1356, 'purchase_time', 'Purchase Time', NULL, NULL, NULL, NULL),
(1357, 'customer\'s_uploaded_products', 'Customer\'s Uploaded Products', NULL, NULL, NULL, NULL),
(1358, 'terms_conditions', 'Terms Conditions', NULL, NULL, NULL, NULL),
(1359, 'premium_packeges', 'Premium Packeges', NULL, NULL, NULL, NULL),
(1360, 'product_by', 'Product By', NULL, NULL, NULL, NULL),
(1361, 'sold_by:', 'Sold By:', NULL, NULL, NULL, NULL),
(1362, 'seller:', 'Seller:', NULL, NULL, NULL, NULL),
(1363, 'premium_packeges_for_customer', 'Premium Packeges For Customer', NULL, NULL, NULL, NULL),
(1364, 'product_upload_amount', 'Product Upload Amount', NULL, NULL, NULL, NULL),
(1365, 'amount_of', 'Amount Of', NULL, NULL, NULL, NULL),
(1366, 'product_upload', 'Product Upload', NULL, NULL, NULL, NULL),
(1367, 'times', 'Times', NULL, NULL, NULL, NULL),
(1368, 'seller:_', 'Seller: ', NULL, NULL, NULL, NULL),
(1369, 'seller_email:', 'Seller Email:', NULL, NULL, NULL, NULL),
(1370, 'seller_phone:', 'Seller Phone:', NULL, NULL, NULL, NULL),
(1371, 'not_given', 'Not Given', NULL, NULL, NULL, NULL),
(1372, 'phone_no.:', 'Phone No.:', NULL, NULL, NULL, NULL),
(1373, 'express_interest:', 'Express Interest:', NULL, NULL, NULL, NULL),
(1374, 'direct_messages:', 'Direct Messages:', NULL, NULL, NULL, NULL),
(1375, 'photo_gallery:', 'Photo Gallery:', NULL, NULL, NULL, NULL),
(1376, 'select_a_payment_method', 'Select A Payment Method', NULL, NULL, NULL, NULL),
(1377, 'please_wait', 'Please Wait', NULL, NULL, NULL, NULL),
(1378, 'confirm_purchase', 'Confirm Purchase', NULL, NULL, NULL, NULL),
(1379, 'selected', 'Selected', NULL, NULL, NULL, NULL),
(1380, 'premium_packege', 'Premium Packege', NULL, NULL, NULL, NULL),
(1381, 'packege', 'Packege', NULL, NULL, NULL, NULL),
(1382, 'back_to_packege_list', 'Back To Packege List', NULL, NULL, NULL, NULL),
(1383, 'edit_packege', 'Edit Packege', NULL, NULL, NULL, NULL),
(1384, 'location:', 'Location:', NULL, NULL, NULL, NULL),
(1385, 'packege_name', 'Packege Name', NULL, NULL, NULL, NULL),
(1386, 'amount_(USD)', 'Amount (USD)', NULL, NULL, NULL, NULL),
(1387, 'amount_of_product_upload', 'Amount Of Product Upload', NULL, NULL, NULL, NULL),
(1388, 'amount_($)', 'Amount ($)', NULL, NULL, NULL, NULL),
(1389, 'packege_image', 'Packege Image', NULL, NULL, NULL, NULL),
(1390, 'select_a_photo', 'Select A Photo', NULL, NULL, NULL, NULL),
(1391, 'customer_products', 'Customer Products', NULL, NULL, NULL, NULL),
(1392, 'uploaded_products', 'Uploaded Products', NULL, NULL, NULL, NULL),
(1393, 'your_uploaded_products', 'Your Uploaded Products', NULL, NULL, NULL, NULL),
(1394, 'unvailable', 'Unvailable', NULL, NULL, NULL, NULL),
(1395, 'publish/unpublish', 'Publish/unpublish', NULL, NULL, NULL, NULL),
(1396, 'publish/_unpublish', 'Publish/ Unpublish', NULL, NULL, NULL, NULL),
(1397, 'product_published', 'Product Published', NULL, NULL, NULL, NULL),
(1398, 'product_unpublished', 'Product Unpublished', NULL, NULL, NULL, NULL),
(1399, 'Unpublish', 'Unpublish', NULL, NULL, NULL, NULL),
(1400, 'Published', 'Published', NULL, NULL, NULL, NULL),
(1401, 'Unpublished', 'Unpublished', NULL, NULL, NULL, NULL),
(1402, 'packege_purchase_failed!', 'Packege Purchase Failed!', NULL, NULL, NULL, NULL),
(1403, 'packege_purchase_successfully!', 'Packege Purchase Successfully!', NULL, NULL, NULL, NULL),
(1404, 'purchasing..', 'Purchasing..', NULL, NULL, NULL, NULL),
(1405, 'premium_packages', 'Premium Packages', NULL, NULL, NULL, NULL),
(1406, 'premium_packages_for_customer', 'Premium Packages For Customer', NULL, NULL, NULL, NULL),
(1407, 'premium_package', 'Premium Package', NULL, NULL, NULL, NULL),
(1408, 'package', 'Package', NULL, NULL, NULL, NULL),
(1409, 'back_to_package_list', 'Back To Package List', NULL, NULL, NULL, NULL),
(1410, 'edit_package', 'Edit Package', NULL, NULL, NULL, NULL),
(1411, 'package_name', 'Package Name', NULL, NULL, NULL, NULL),
(1412, 'package_image', 'Package Image', NULL, NULL, NULL, NULL),
(1413, 'customer_uploaded_products', 'Customer Uploaded Products', NULL, NULL, NULL, NULL),
(1414, 'back_to_customer_product_list', 'Back To Customer Product List', NULL, NULL, NULL, NULL),
(1415, 'uploaded_by', 'Uploaded By', NULL, NULL, NULL, NULL),
(1416, 'customer_status', 'Customer Status', NULL, NULL, NULL, NULL),
(1417, 'customer_package_payments', 'Customer Package Payments', NULL, NULL, NULL, NULL),
(1418, 'customer_package_payment', 'Customer Package Payment', NULL, NULL, NULL, NULL),
(1419, 'back_to_package_payment_list', 'Back To Package Payment List', NULL, NULL, NULL, NULL),
(1420, 'customer_name', 'Customer Name', NULL, NULL, NULL, NULL),
(1421, 'payment_type', 'Payment Type', NULL, NULL, NULL, NULL),
(1422, 'view_package_payment', 'View Package Payment', NULL, NULL, NULL, NULL),
(1423, 'details_of_package_payment', 'Details Of Package Payment', NULL, NULL, NULL, NULL),
(1424, 'purchase_datetime', 'Purchase Datetime', NULL, NULL, NULL, NULL),
(1425, 'change_availability_status', 'Change Availability Status', NULL, NULL, NULL, NULL),
(1426, 'package_payment_info', 'Package Payment Info', NULL, NULL, NULL, NULL),
(1427, 'purchase_date', 'Purchase Date', NULL, NULL, NULL, NULL),
(1428, 'admin_status', 'Admin Status', NULL, NULL, NULL, NULL),
(1429, 'not_available_payment_info', 'Not Available Payment Info', NULL, NULL, NULL, NULL),
(1430, 'availability_status', 'Availability Status', NULL, NULL, NULL, NULL),
(1431, 'sold', 'Sold', NULL, NULL, NULL, NULL),
(1432, 'detailed_information', 'Detailed Information', NULL, NULL, NULL, NULL),
(1433, 'customer_product_(_show_/_hide_)', 'Customer Product ( Show / Hide )', NULL, NULL, NULL, NULL),
(1434, 'number_of_product_(_to_show_)', 'Number Of Product ( To Show )', NULL, NULL, NULL, NULL),
(1435, 'customer_product_section_updated!', 'Customer Product Section Updated!', NULL, NULL, NULL, NULL),
(1436, 'customer_products_section_updated!', 'Customer Products Section Updated!', NULL, NULL, NULL, NULL),
(1437, 'product_bundle_activation', 'Product Bundle Activation', NULL, NULL, NULL, NULL),
(1438, 'product_bundle_enabled', 'Product Bundle Enabled', NULL, NULL, NULL, NULL),
(1439, 'product_bundle_disabled', 'Product Bundle Disabled', NULL, NULL, NULL, NULL),
(1440, 'customer_product_activation', 'Customer Product Activation', NULL, NULL, NULL, NULL),
(1441, 'customer_product_enabled', 'Customer Product Enabled', NULL, NULL, NULL, NULL),
(1442, 'customer_product_disabled', 'Customer Product Disabled', NULL, NULL, NULL, NULL),
(1443, 'seller_informations', 'Seller Informations', NULL, NULL, NULL, NULL),
(1444, 'classifieds', 'Classifieds', NULL, NULL, NULL, NULL),
(1445, 'classifieds_products', 'Classifieds Products', NULL, NULL, NULL, NULL),
(1446, 'classified_products', 'Classified Products', NULL, NULL, NULL, NULL),
(1447, 'classified_product_activation', 'Classified Product Activation', NULL, NULL, NULL, NULL),
(1448, 'Share', 'Share', NULL, NULL, NULL, NULL),
(1449, 'share_links', 'Share Links', NULL, NULL, NULL, NULL),
(1450, 'price:', 'Price:', NULL, NULL, NULL, NULL),
(1451, 'condition:', 'Condition:', NULL, NULL, NULL, NULL),
(1452, 'product_search', 'Product Search', NULL, NULL, NULL, NULL),
(1453, 'all_type', 'All Type', NULL, NULL, NULL, NULL),
(1454, 'search_by_brand_name', 'Search By Brand Name', NULL, NULL, NULL, NULL),
(1455, 'back_to_profile', 'Back To Profile', NULL, NULL, NULL, NULL),
(1456, 'wallet_', 'Wallet ', NULL, NULL, NULL, NULL),
(1457, 'search_by_brand', 'Search By Brand', NULL, NULL, NULL, NULL),
(1458, 'brand:_', 'Brand: ', NULL, NULL, NULL, NULL),
(1459, '_seller:', ' Seller:', NULL, NULL, NULL, NULL),
(1460, 'seller', 'Seller', NULL, NULL, NULL, NULL),
(1461, 'seller_email', 'Seller Email', NULL, NULL, NULL, NULL),
(1462, 'phone_no', 'Phone No', NULL, NULL, NULL, NULL),
(1463, 'no_specification_found!', 'No Specification Found!', NULL, NULL, NULL, NULL),
(1464, 'payumoney', 'Payumoney', NULL, NULL, NULL, NULL),
(1465, '<p class=\'control-label\'>No Products are available for this brand</p>', '<p Class=\'control-label\'>No Products Are Available For This Brand</p>', NULL, NULL, NULL, NULL),
(1466, 'pay_u_money_settings', 'Pay U Money Settings', NULL, NULL, NULL, NULL),
(1467, 'merchant_key', 'Merchant Key', NULL, NULL, NULL, NULL),
(1468, 'merchant_salt', 'Merchant Salt', NULL, NULL, NULL, NULL),
(1469, 'pay_u_money_activation', 'Pay U Money Activation', NULL, NULL, NULL, NULL),
(1470, 'pay_u_money_payment_enabled', 'Pay U Money Payment Enabled', NULL, NULL, NULL, NULL),
(1471, 'pay_u_money_payment_disabled', 'Pay U Money Payment Disabled', NULL, NULL, NULL, NULL),
(1472, 'payUmoney_payment', 'PayUmoney Payment', NULL, NULL, NULL, NULL),
(1473, 'payUmoney_merchant_key', 'PayUmoney Merchant Key', NULL, NULL, NULL, NULL),
(1474, 'payUmoney_merchant_salt', 'PayUmoney Merchant Salt', NULL, NULL, NULL, NULL),
(1475, 'video', 'Video', NULL, NULL, NULL, NULL),
(1476, 'if_you_need_to_change_this_video_for_your_product_,_please_click_here...', 'If You Need To Change This Video For Your Product , Please Click Here...', NULL, NULL, NULL, NULL),
(1477, 'change_video', 'Change Video', NULL, NULL, NULL, NULL),
(1478, 'wallet_system', 'Wallet System', NULL, NULL, NULL, NULL),
(1479, 'wallet_system_enabled', 'Wallet System Enabled', NULL, NULL, NULL, NULL),
(1480, 'wallet_system_disabled', 'Wallet System Disabled', NULL, NULL, NULL, NULL),
(1481, 'Vendor Registration Email To Admin', 'Vendor Registration Email To Admin', NULL, NULL, NULL, NULL),
(1482, 'Admin to Vendor Payment', 'Admin To Vendor Payment', NULL, NULL, NULL, NULL),
(1483, 'Vendor Package Upgrade', 'Vendor Package Upgrade', NULL, NULL, NULL, NULL),
(1484, 'Vendor Payment', 'Vendor Payment', NULL, NULL, NULL, NULL),
(1485, 'your_email_address', 'Your Email Address', NULL, NULL, NULL, NULL),
(1486, 'already_uploaded_maximum_products!', 'Already Uploaded Maximum Products!', NULL, NULL, NULL, NULL),
(1487, 'upgrade_your_membership', 'Upgrade Your Membership', NULL, NULL, NULL, NULL),
(1488, 'upgrade_membership', 'Upgrade Membership', NULL, NULL, NULL, NULL),
(1489, 'delete_contents', 'Delete Contents', NULL, NULL, NULL, NULL),
(1490, 'delete_all_categories', 'Delete All Categories', NULL, NULL, NULL, NULL),
(1491, 'delete_all_products', 'Delete All Products', NULL, NULL, NULL, NULL),
(1492, 'delete_all_brands', 'Delete All Brands', NULL, NULL, NULL, NULL),
(1493, 'delete_all_classified', 'Delete All Classified', NULL, NULL, NULL, NULL),
(1494, 'Are You Sure You Want to Delete All Products?', 'Are You Sure You Want To Delete All Products?', NULL, NULL, NULL, NULL),
(1495, 'guest_checkout', 'Guest Checkout', NULL, NULL, NULL, NULL),
(1496, 'guest_id', 'Guest Id', NULL, NULL, NULL, NULL),
(1497, 'invoice_link:', 'Invoice Link:', NULL, NULL, NULL, NULL),
(1498, 'guest_id:', 'Guest Id:', NULL, NULL, NULL, NULL),
(1499, 'deleting_all_categories_will_also_result_in_deleting_all_sub-categories_under_it,_are_you_sure_you_want_to_delete_all_categories?', 'Deleting All Categories Will Also Result In Deleting All Sub-categories Under It, Are You Sure You Want To Delete All Categories?', NULL, NULL, NULL, NULL),
(1500, 'Are You Sure You Want to Delete All The Brands?', 'Are You Sure You Want To Delete All The Brands?', NULL, NULL, NULL, NULL),
(1501, 'delete_all_classifieds', 'Delete All Classifieds', NULL, NULL, NULL, NULL),
(1502, 'invoice_link', 'Invoice Link', NULL, NULL, NULL, NULL),
(1503, 'select_sub_category', 'Select Sub Category', NULL, NULL, NULL, NULL),
(1504, 'select_product', 'Select Product', NULL, NULL, NULL, NULL),
(1505, 'guest_checkout_enabled', 'Guest Checkout Enabled', NULL, NULL, NULL, NULL),
(1506, 'guest_checkout_disabled', 'Guest Checkout Disabled', NULL, NULL, NULL, NULL),
(1507, 'vendor_commission', 'Vendor Commission', NULL, NULL, NULL, NULL),
(1508, 'vendor_commission_enabled', 'Vendor Commission Enabled', NULL, NULL, NULL, NULL),
(1509, 'vendor_commission_disabled', 'Vendor Commission Disabled', NULL, NULL, NULL, NULL),
(1510, 'vendor_package', 'Vendor Package', NULL, NULL, NULL, NULL),
(1511, 'vendor_package_enabled', 'Vendor Package Enabled', NULL, NULL, NULL, NULL),
(1512, 'vendor_package_disabled', 'Vendor Package Disabled', NULL, NULL, NULL, NULL),
(1513, 'vendor_commissions', 'Vendor Commissions', NULL, NULL, NULL, NULL),
(1514, 'set_vendor_commission', 'Set Vendor Commission', NULL, NULL, NULL, NULL),
(1515, 'total_commission', 'Total Commission', NULL, NULL, NULL, NULL),
(1516, 'commission_on_paid', 'Commission On Paid', NULL, NULL, NULL, NULL),
(1517, 'sslcommerz', 'Sslcommerz', NULL, NULL, NULL, NULL),
(1518, 'commission_amount', 'Commission Amount', NULL, NULL, NULL, NULL),
(1519, 'sslcommerz_activation', 'Sslcommerz Activation', NULL, NULL, NULL, NULL),
(1520, 'sslcommerz_payment_enabled', 'Sslcommerz Payment Enabled', NULL, NULL, NULL, NULL),
(1521, 'sslcommerz_payment_disabled', 'Sslcommerz Payment Disabled', NULL, NULL, NULL, NULL),
(1522, 'SSLCommerz_settings', 'SSLCommerz Settings', NULL, NULL, NULL, NULL),
(1523, 'ssl_store_id', 'Ssl Store Id', NULL, NULL, NULL, NULL),
(1524, 'ssl_store_password', 'Ssl Store Password', NULL, NULL, NULL, NULL),
(1525, 'commission', 'Commission', NULL, NULL, NULL, NULL),
(1526, 'header_menu', 'Header Menu', NULL, NULL, NULL, NULL),
(1527, 'header', 'Header', NULL, NULL, NULL, NULL),
(1528, 'fashion', 'Fashion', NULL, NULL, NULL, NULL),
(1529, 'women', 'Women', NULL, NULL, NULL, NULL),
(1530, 'baby_and_kids', 'Baby And Kids', NULL, NULL, NULL, NULL),
(1531, 'entertainment', 'Entertainment', NULL, NULL, NULL, NULL),
(1532, 'electronics', 'Electronics', NULL, NULL, NULL, NULL),
(1533, 'home_appliance', 'Home Appliance', NULL, NULL, NULL, NULL),
(1534, 'help', 'Help', NULL, NULL, NULL, NULL),
(1535, 'bundled_products1', 'Bundled Products1', NULL, NULL, NULL, NULL),
(1536, 'men', 'Men', NULL, NULL, NULL, NULL),
(1537, 'skin_care', 'Skin Care', NULL, NULL, NULL, NULL),
(1538, 'Login_For_Coustomer', 'Login For Coustomer', NULL, NULL, NULL, NULL),
(1539, 'Your Email Address', 'Your Email Address', NULL, NULL, NULL, NULL),
(1540, 'Enter Password', 'Enter Password', NULL, NULL, NULL, NULL),
(1541, 'Google', 'Google', NULL, NULL, NULL, NULL),
(1542, 'Signup_Info', 'Signup Info', NULL, NULL, NULL, NULL),
(1543, 'Seller_Profile_Info', 'Seller Profile Info', NULL, NULL, NULL, NULL),
(1544, 'User name', 'User Name', NULL, NULL, NULL, NULL),
(1545, 'Type user name', 'Type User Name', NULL, NULL, NULL, NULL),
(1546, '**************', '**************', NULL, NULL, NULL, NULL),
(1547, 'Name *', 'Name *', NULL, NULL, NULL, NULL),
(1548, 'Email*', 'Email*', NULL, NULL, NULL, NULL),
(1549, 'Password*', 'Password*', NULL, NULL, NULL, NULL),
(1550, 'Confirm_Password *', 'Confirm Password *', NULL, NULL, NULL, NULL),
(1551, 'Continue', 'Continue', NULL, NULL, NULL, NULL),
(1552, 'company_name', 'Company Name', NULL, NULL, NULL, NULL),
(1553, '(', '(', NULL, NULL, NULL, NULL),
(1554, ')', ')', NULL, NULL, NULL, NULL),
(1555, 'Off', 'Off', NULL, NULL, NULL, NULL),
(1556, 'Availability : ', 'Availability : ', NULL, NULL, NULL, NULL),
(1557, 'Shipping & Policies', 'Shipping & Policies', NULL, NULL, NULL, NULL),
(1558, 'Latest Featured ', 'Latest Featured ', NULL, NULL, NULL, NULL),
(1559, 'Account', 'Account', NULL, NULL, NULL, NULL),
(1560, 'Creadits', 'Creadits', NULL, NULL, NULL, NULL),
(1561, 'my_wallet', 'My Wallet', NULL, NULL, NULL, NULL),
(1562, 'Support', 'Support', NULL, NULL, NULL, NULL),
(1563, 'becomevendor', 'Becomevendor', NULL, NULL, NULL, NULL),
(1564, 'orders as a s', 'Orders As A S', NULL, NULL, NULL, NULL),
(1565, 'products_123', 'Products 123', NULL, NULL, NULL, NULL),
(1566, 'New_Arrivals', 'New Arrivals', NULL, NULL, NULL, NULL),
(1567, 'shipping_state', 'Shipping State', NULL, NULL, NULL, NULL),
(1568, 'state_shipping', 'State Shipping', NULL, NULL, NULL, NULL),
(1569, 'sales_tax ', 'Sales Tax ', NULL, NULL, NULL, NULL),
(1570, 'partially_paid', 'Partially Paid', NULL, NULL, NULL, NULL),
(1571, 'sign_in123', 'Sign In123', NULL, NULL, NULL, NULL),
(1572, 'sign_in1', 'Sign In1', NULL, NULL, NULL, NULL),
(1573, 'apply_coupon1', 'Apply Coupon1', NULL, NULL, NULL, NULL),
(1574, 'Product Name', 'Product Name', NULL, NULL, NULL, NULL),
(1575, 'add_sales_tax', 'Add Sales Tax', NULL, NULL, NULL, NULL),
(1576, 'stste', 'Stste', NULL, NULL, NULL, NULL),
(1577, 'dashboard1', 'Dashboard1', NULL, NULL, NULL, NULL),
(1578, 'date_range', 'Date Range', NULL, NULL, NULL, NULL),
(1579, 'date_range_search', 'Date Range Search', NULL, NULL, NULL, NULL),
(1580, 'fee_per_transaction', 'Fee Per Transaction', NULL, NULL, NULL, NULL),
(1581, 'set_fee_per_transaction', 'Set Fee Per Transaction', NULL, NULL, NULL, NULL),
(1582, 'Vendor Product', 'Vendor Product', NULL, NULL, NULL, NULL),
(1583, 'select_sales_state ', 'Select Sales State ', NULL, NULL, NULL, NULL),
(1584, 'show_sales_state ', 'Show Sales State ', NULL, NULL, NULL, NULL),
(1585, 'select123_photo', 'Select123 Photo', NULL, NULL, NULL, NULL),
(1586, 'New_Arrivals123', 'New Arrivals123', NULL, NULL, NULL, NULL),
(1587, 'Product Name123', 'Product Name123', NULL, NULL, NULL, NULL),
(1588, 'all_products123', 'All Products123', NULL, NULL, NULL, NULL),
(1589, 'choose_categories', 'Choose Categories', NULL, NULL, NULL, NULL),
(1590, 'Continue To Checkout', 'Continue To Checkout', NULL, NULL, NULL, NULL),
(1591, 'Continue_To_Checkout', 'Continue To Checkout', NULL, NULL, NULL, NULL),
(1592, 'Place_Order_Now', 'Place Order Now', NULL, NULL, NULL, NULL),
(1593, 'Yourdd Email Address', 'Yourdd Email Address', NULL, NULL, NULL, NULL),
(1594, 'conversations', 'Conversations', NULL, NULL, NULL, NULL),
(1595, 'conversations1', 'Conversations1', NULL, NULL, NULL, NULL),
(1596, 'support_ticketqqq', 'Support Ticketqqq', NULL, NULL, NULL, NULL),
(1597, 'Conversation', 'Conversation', NULL, NULL, NULL, NULL),
(1598, 'all_messagesasasas1212', 'All Messagesasasas1212', NULL, NULL, NULL, NULL),
(1599, 'inbox ', 'Inbox ', NULL, NULL, NULL, NULL),
(1600, 'sent', 'Sent', NULL, NULL, NULL, NULL),
(1601, 'All', 'All', NULL, NULL, NULL, NULL),
(1602, 'unread', 'Unread', NULL, NULL, NULL, NULL),
(1603, 'spam', 'Spam', NULL, NULL, NULL, NULL),
(1604, 'trash', 'Trash', NULL, NULL, NULL, NULL),
(1605, 'vendor_conversation', 'Vendor Conversation', NULL, NULL, NULL, NULL),
(1606, 'Vendor name', 'Vendor Name', NULL, NULL, NULL, NULL),
(1607, 'Action', 'Action', NULL, NULL, NULL, NULL),
(1608, 'view_messagesssssssssssssssss', 'View Messagesssssssssssssssss', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(2, 'বাংলা', 'Bangla', 'ok'),
(4, 'Arabic', 'Arabic', 'ok'),
(5, 'French', 'French', 'ok'),
(6, 'Chinese', 'Chinese', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `name`) VALUES
(2, ''),
(3, ''),
(46, ''),
(62, ''),
(70, ''),
(71, ''),
(74, ''),
(75, ''),
(76, ''),
(77, ''),
(78, ''),
(79, ''),
(80, '');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `timespan` varchar(50) DEFAULT NULL,
  `pay_interval` varchar(50) DEFAULT NULL,
  `product_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `title`, `price`, `timespan`, `pay_interval`, `product_limit`) VALUES
(7, 'Multi Product Monthly', '50', '30', NULL, 25),
(8, 'Single Product', '5', '30', NULL, 1),
(9, 'test package', '12', '90', NULL, 100);

-- --------------------------------------------------------

--
-- Table structure for table `membership_payment`
--

CREATE TABLE `membership_payment` (
  `membership_payment_id` int(11) NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `details` longtext,
  `membership` int(11) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_payment`
--

INSERT INTO `membership_payment` (`membership_payment_id`, `vendor`, `timestamp`, `amount`, `details`, `membership`, `method`, `status`) VALUES
(6, 3, 1474278958, 3500, '{\"mc_gross\":\"43.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"03:04:24 Sep 19, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"6\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A6Fyo.RG2CmUHAdbJ1HeGZnSj3AWAuYRD2vHV92buB9WYMNNbxSvf6Un\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"6PN17817M0416733P\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"43.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"26ff7ba5f0ef\"}', 2, 'paypal', 'paid'),
(7, 5, 1474568814, 300, '{\"mc_gross\":\"3.75\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"QXCY8C6X8J4VG\",\"tax\":\"0.00\",\"address_street\":\"1 Main St\",\"payment_date\":\"11:41:38 Sep 22, 2016 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"95131\",\"first_name\":\"Active\",\"address_country_code\":\"US\",\"address_name\":\"Active IT\",\"notify_version\":\"3.8\",\"custom\":\"7\",\"payer_status\":\"verified\",\"business\":\"kadir_bm@yahoo.com\",\"address_country\":\"United States\",\"address_city\":\"San Jose\",\"quantity\":\"1\",\"verify_sign\":\"A.Z5yEeSJElINVLnLNYfrb750vgiAJdLRn38Ub6I-sD-cMvsd25mBIx-\",\"payer_email\":\"system@supershop.com\",\"txn_id\":\"1W646161MB662172C\",\"payment_type\":\"instant\",\"last_name\":\"IT\",\"address_state\":\"CA\",\"receiver_email\":\"kadir_bm@yahoo.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"handling_amount\":\"0.00\",\"transaction_subject\":\"\",\"payment_gross\":\"3.75\",\"shipping\":\"0.00\",\"ipn_track_id\":\"ef0d66381cdd0\"}', 1, 'paypal', 'paid'),
(8, 1, 1521619820, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CX6D3Rh6VsMGvS\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521619818,\"currency\":null,\"default_source\":\"card_1C821HKmGdRDZlHSwmXJ4Si8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"bicyq@yahoo.com\",\"invoice_prefix\":\"0530537\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C821YKmGdRDZlHSAV2SCPEB\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C821YKmGdRDZlHSb3XnAy6N\",\"captured\":true,\"created\":1521619820,\"currency\":\"usd\",\"customer\":\"cus_CX6D3Rh6VsMGvS\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(9, 1, 1521620034, 300, NULL, 1, 'paypal', 'due'),
(10, 1, 1521620159, 300, NULL, 1, 'paypal', 'due'),
(11, 1, 1521620582, 300, NULL, 1, 'paypal', 'due'),
(12, 1, 1521620644, 300, '', 1, 'paypal', 'paid'),
(13, 10, 1525076695, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Cm5UQffha9h2YI\",\"object\":\"customer\",\"account_balance\":0,\"created\":1525076690,\"currency\":null,\"default_source\":\"card_1CMXJNKmGdRDZlHSzMKsk366\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"dixon@gmail.com\",\"invoice_prefix\":\"8BE2516\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CMXJYKmGdRDZlHSZyFpNHni\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CMXJZKmGdRDZlHSm1ufBbIk\",\"captured\":true,\"created\":1525076692,\"currency\":\"usd\",\"customer\":\"cus_Cm5UQffha9h2YI\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(14, 3, 1527065720, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CuiBndcDg1uPoi\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527065726,\"currency\":null,\"default_source\":\"card_1CUskZKmGdRDZlHS0C3mHdQf\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"demovendor.tom@gmail.com\",\"invoice_prefix\":\"2D329EB\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CUskmKmGdRDZlHS3hElyjCo\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CUsknKmGdRDZlHSklvk2Dlo\",\"captured\":true,\"created\":1527065728,\"currency\":\"usd\",\"customer\":\"cus_CuiBndcDg1uPoi\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(15, 16, 1530099145, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7rc6ldZZFfVqC\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530099144,\"currency\":null,\"default_source\":\"card_1ChbseKmGdRDZlHSfJOumaUL\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"BC19F08\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChbssKmGdRDZlHSCsQxAX1q\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChbssKmGdRDZlHS1GntjkvY\",\"captured\":true,\"created\":1530099146,\"currency\":\"usd\",\"customer\":\"cus_D7rc6ldZZFfVqC\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(16, 16, 1530168298, 2000, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8ACvYDzZXIxFk\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530168298,\"currency\":null,\"default_source\":\"card_1Chts3KmGdRDZlHSFiZIHHEm\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"A938C83\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChtsEKmGdRDZlHS4JZBq5FO\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChtsFKmGdRDZlHSQ8v9io5D\",\"captured\":true,\"created\":1530168298,\"currency\":\"usd\",\"customer\":\"cus_D8ACvYDzZXIxFk\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 7, 'stripe', 'paid'),
(17, 16, 1530168373, 300, '{\"mc_gross\":\"300.00\",\"protection_eligibility\":\"Ineligible\",\"address_status\":\"confirmed\",\"payer_id\":\"RSS9FYUZWM7SC\",\"address_street\":\"99 White Fabien Court\",\"payment_date\":\"23:47:03 Jun 27, 2018 PDT\",\"payment_status\":\"Pending\",\"charset\":\"windows-1252\",\"address_zip\":\"37750\",\"first_name\":\"Hillary\",\"address_country_code\":\"US\",\"address_name\":\"Hillary Long\",\"notify_version\":\"3.9\",\"custom\":\"17\",\"payer_status\":\"unverified\",\"address_country\":\"United States\",\"address_city\":\"Voluptatem Omnis perspiciatis cum voluptatem qui beatae dolor duis\",\"quantity\":\"1\",\"verify_sign\":\"At7M.vjpvoOSoEuUejMvbAJc494kAx7kHh-1Y.52PvuWhoDgXxhsXz6a\",\"payer_email\":\"developer.activeitzone@gmail.com\",\"txn_id\":\"2Y8310662A433535N\",\"payment_type\":\"instant\",\"last_name\":\"Long\",\"address_state\":\"IN\",\"receiver_email\":\"alvi@gmail.com\",\"pending_reason\":\"unilateral\",\"txn_type\":\"web_accept\",\"item_name\":\"asdddddddddddd\",\"mc_currency\":\"USD\",\"item_number\":\"\",\"residence_country\":\"US\",\"test_ipn\":\"1\",\"transaction_subject\":\"\",\"payment_gross\":\"300.00\",\"ipn_track_id\":\"65414272c8c47\"}', 1, 'paypal', 'paid'),
(18, 16, 1530168775, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AKObcFPP1vAV\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530168775,\"currency\":null,\"default_source\":\"card_1ChtzjKmGdRDZlHSbxWfgNJU\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"D1DE7D7\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChtzvKmGdRDZlHStJqXGEKC\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChtzwKmGdRDZlHSlohqyjOW\",\"captured\":true,\"created\":1530168775,\"currency\":\"usd\",\"customer\":\"cus_D8AKObcFPP1vAV\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(19, 16, 1530169135, 300, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AQZCuS6xk8Hl\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530169134,\"currency\":null,\"default_source\":\"card_1Chu5YKmGdRDZlHSjo3NZYOX\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"C96D5D0\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Chu5jKmGdRDZlHSHmmPoSdN\",\"object\":\"charge\",\"amount\":30000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Chu5jKmGdRDZlHS4F0fMktr\",\"captured\":true,\"created\":1530169135,\"currency\":\"usd\",\"customer\":\"cus_D8AQZCuS6xk8Hl\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 1, 'stripe', 'paid'),
(20, 16, 1530169512, 3500, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D8AWG4ROXH9sMs\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530169511,\"currency\":null,\"default_source\":\"card_1ChuBhKmGdRDZlHSGZRs8N4v\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"saide.mahid21@gmail.com\",\"invoice_prefix\":\"9184D2F\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChuBoKmGdRDZlHSLRuAsAcZ\",\"object\":\"charge\",\"amount\":350000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChuBoKmGdRDZlHSLVz78D7S\",\"captured\":true,\"created\":1530169512,\"currency\":\"usd\",\"customer\":\"cus_D8AWG4ROXH9sMs\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 2, 'stripe', 'paid'),
(21, 1, 1530439057, 2000, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9Kz2ZUyQFOQQp\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530439057,\"currency\":null,\"default_source\":\"card_1Cj2J5KmGdRDZlHSvwNT3KqG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"bicyq@yahoo.com\",\"invoice_prefix\":\"ADC7B23\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Cj2JKKmGdRDZlHSA2ZWo10C\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Cj2JKKmGdRDZlHSuWh2VsKJ\",\"captured\":true,\"created\":1530439058,\"currency\":\"usd\",\"customer\":\"cus_D9Kz2ZUyQFOQQp\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 7, 'stripe', 'paid'),
(22, 17, 1531638449, 3500, '', 2, 'cash', 'paid'),
(23, 17, 1531638483, 3500, '', 2, 'cash', 'paid'),
(24, 3, 1532428490, 3500, NULL, 2, 'PayUmoney', 'due'),
(25, 3, 1532428555, 3500, NULL, 2, 'PayUmoney', 'due'),
(28, 3, 1532430467, 2000, '{\"tran_id\":\"20180728\",\"val_id\":\"180724171133QXBFr94e14DEF7j\",\"amount\":\"2000\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"1960\",\"card_no\":\"\",\"bank_tran_id\":\"1807241711331wLRDkP38emj7r5\",\"status\":\"VALID\",\"tran_date\":\"2018-07-24 17:11:23\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"33a9272de9c84e09dd866cfd2ff0d1f8\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"1139b0b541db8af03f4692dc5a95c78e5b34852e7dfca4151635eb9eb3101dd7\",\"currency_type\":\"BDT\",\"currency_amount\":\"2000.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 7, 'SSlcommerz', 'paid'),
(30, 19, 1551145946, 5, NULL, 8, 'cash', 'due');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `upload_amount` int(11) DEFAULT NULL,
  `image` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `name`, `amount`, `upload_amount`, `image`) VALUES
(1, 'Default', '0', 2, '[{\"image\":\"plan_1.png\",\"thumb\":\"plan_1_thumb.png\"}]'),
(2, 'Bronze', '15', 12, '[{\"image\":\"plan_2.png\",\"thumb\":\"plan_2_thumb.png\"}]'),
(3, 'Silver', '25', 15, '[{\"image\":\"plan_3.png\",\"thumb\":\"plan_3_thumb.png\"}]'),
(4, 'Gold', '35', 20, '[{\"image\":\"plan_4.png\",\"thumb\":\"plan_4_thumb.png\"}]'),
(5, 'Platinum', '45', 25, '[{\"image\":\"plan_5.png\",\"thumb\":\"plan_5_thumb.png\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `package_payment`
--

CREATE TABLE `package_payment` (
  `package_payment_id` int(11) NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_type` varchar(30) DEFAULT NULL,
  `payment_status` varchar(30) DEFAULT NULL,
  `payment_details` longtext,
  `amount` int(11) DEFAULT NULL,
  `purchase_datetime` int(11) DEFAULT NULL,
  `payment_code` varchar(50) DEFAULT NULL,
  `payment_timestamp` int(11) DEFAULT NULL,
  `expire` varchar(20) DEFAULT NULL,
  `expire_timestamp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_payment`
--

INSERT INTO `package_payment` (`package_payment_id`, `package_id`, `user_id`, `payment_type`, `payment_status`, `payment_details`, `amount`, `purchase_datetime`, `payment_code`, `payment_timestamp`, `expire`, `expire_timestamp`) VALUES
(1, 2, 7, 'Paypal', 'pending', 'testing', 15, 1526809102, '', 1527663094, '', 0),
(2, 2, 7, 'Paypal', 'pending', 'testing 1234', 15, 1526809416, '', 1527663451, '', 0),
(3, 2, 7, 'Paypal', 'due', 'none', 15, 1526809510, '', 1527663535, '', 0),
(4, 2, 7, 'Paypal', 'due', 'none', 15, 1526809641, '', 1527663565, '', 0),
(5, 2, 7, 'Paypal', 'due', 'none', 15, 1527054416, '', 1527663607, '', 0),
(6, 2, 7, 'Paypal', 'due', 'none', 15, 1527054430, '', 0, '', 0),
(7, 2, 7, 'Paypal', 'due', 'none', 15, 1527054448, '', 0, '', 0),
(8, 2, 7, 'Wallet', 'paid', '', 15, 1527505100, '2018058', 1527505100, 'no', 0),
(9, 2, 7, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CwcODJSgJ33IwX\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527505467,\"currency\":null,\"default_source\":\"card_1CWj9EKmGdRDZlHSZ0dVOt0f\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"6C5D458\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CWj9LKmGdRDZlHSHxfgKBPm\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CWj9MKmGdRDZlHS0E0rSwAI\",\"captured\":true,\"created\":1527505467,\"currency\":\"usd\",\"customer\":\"cus_CwcODJSgJ33IwX\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1527505467, '2018059', 1527505467, 'no', 0),
(10, 2, 7, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CxLBf86vTofKeu\",\"object\":\"customer\",\"account_balance\":0,\"created\":1527672118,\"currency\":null,\"default_source\":\"card_1CXQV9KmGdRDZlHSkj2ffaQQ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"81BD7F1\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CXQVIKmGdRDZlHSB9JHc7o6\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CXQVJKmGdRDZlHSKXNwZTUC\",\"captured\":true,\"created\":1527672120,\"currency\":\"usd\",\"customer\":\"cus_CxLBf86vTofKeu\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1527672108, '20180510', 1527672108, 'no', 0),
(11, 3, 7, 'Paypal', 'due', 'none', 25, 1527743164, '', 0, '', 0),
(12, 2, 13, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CypmvgOKdcuXS8\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528016564,\"currency\":null,\"default_source\":\"card_1CYs6gKmGdRDZlHSZnAhEeYN\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.shop@gmail.com\",\"invoice_prefix\":\"A2955CE\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CYs6sKmGdRDZlHSuw6LMZos\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CYs6sKmGdRDZlHSuLIyXJWG\",\"captured\":true,\"created\":1528016566,\"currency\":\"usd\",\"customer\":\"cus_CypmvgOKdcuXS8\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1528016552, '20180612', 1528016552, 'no', 0),
(13, 2, 15, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzwzUsnuVldUTd\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528274022,\"currency\":null,\"default_source\":\"card_1CZx5HKmGdRDZlHS2t6FNVNa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"georgiaray@gmail.com\",\"invoice_prefix\":\"3F6FB06\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZx5QKmGdRDZlHSeqGVQWeW\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZx5QKmGdRDZlHStPMP95rN\",\"captured\":true,\"created\":1528274024,\"currency\":\"usd\",\"customer\":\"cus_CzwzUsnuVldUTd\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1528274007, '20180613', 1528274007, 'no', 0),
(14, 3, 16, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_Czx9Z1ME9I52Oj\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528274615,\"currency\":null,\"default_source\":\"card_1CZxErKmGdRDZlHS2ryYMyAq\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"lee@gmail.com\",\"invoice_prefix\":\"845AF91\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZxEzKmGdRDZlHSiZBBQbFq\",\"object\":\"charge\",\"amount\":2500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZxEzKmGdRDZlHSXQWkv6Wi\",\"captured\":true,\"created\":1528274617,\"currency\":\"usd\",\"customer\":\"cus_Czx9Z1ME9I52Oj\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 25, 1528274599, '20180614', 1528274600, 'no', 0),
(15, 4, 17, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzxyZtzTluDcVG\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528277707,\"currency\":null,\"default_source\":\"card_1CZy2jKmGdRDZlHSPEsoHOf8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"larrypena@gmail.com\",\"invoice_prefix\":\"E034D67\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZy2rKmGdRDZlHSC58ffXbO\",\"object\":\"charge\",\"amount\":3500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZy2rKmGdRDZlHSUB0evIC0\",\"captured\":true,\"created\":1528277709,\"currency\":\"usd\",\"customer\":\"cus_CzxyZtzTluDcVG\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 35, 1528277691, '20180615', 1528277692, 'no', 0),
(16, 5, 18, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CzyDdeiAUUEPil\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528278604,\"currency\":null,\"default_source\":\"card_1CZyHCKmGdRDZlHS66s0Ctkk\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"noraharris@gmail.com\",\"invoice_prefix\":\"A0030FC\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CZyHJKmGdRDZlHSbdCk7oty\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CZyHKKmGdRDZlHSohojhb9q\",\"captured\":true,\"created\":1528278605,\"currency\":\"usd\",\"customer\":\"cus_CzyDdeiAUUEPil\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1528278588, '20180616', 1528278588, 'no', 0),
(17, 5, 3, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D9i6araPgmiPwn\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530525022,\"currency\":null,\"default_source\":\"card_1CjOflKmGdRDZlHS8xYwhpzq\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer3@shop.com\",\"invoice_prefix\":\"9DFF13D\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CjOfrKmGdRDZlHSnv4Lw7hi\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CjOfrKmGdRDZlHSIRkmP6N4\",\"captured\":true,\"created\":1530525023,\"currency\":\"usd\",\"customer\":\"cus_D9i6araPgmiPwn\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1530525023, '20180717', 1530525023, 'no', 0),
(19, 4, 7, 'PayUmoney', 'due', 'none', 35, 1530531560, '', 0, '', 0),
(20, 5, 22, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DAkrzbCEBlxP03\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530765971,\"currency\":null,\"default_source\":\"card_1CkPM2KmGdRDZlHSFfoyUbJ2\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"marketing.activeitzone@gmail.com\",\"invoice_prefix\":\"A5ED676\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CkPM8KmGdRDZlHSD2Fdrnvb\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CkPM8KmGdRDZlHSBFeIdVNn\",\"captured\":true,\"created\":1530765972,\"currency\":\"usd\",\"customer\":\"cus_DAkrzbCEBlxP03\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1530765972, '20180720', 1530765972, 'no', 0),
(21, 5, 23, 'Wallet', 'paid', '', 45, 1531634185, '20180721', 1531634185, 'no', 0),
(24, 4, 7, 'SSLcommerz', 'paid', '{\"tran_id\":\"20180724\",\"val_id\":\"1807241627541mUbsn0kqoeWVuq\",\"amount\":\"35\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"34.3\",\"card_no\":\"\",\"bank_tran_id\":\"180724162754Ii6p2KJnBH5jDlG\",\"status\":\"VALID\",\"tran_date\":\"2018-07-24 16:27:38\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"37cb03693d014285a7cea9cca3f606ec\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"90cba376582ea23e1bc64274538eec2fc0b5da6b3fbed4c6529afb4406b476ac\",\"currency_type\":\"BDT\",\"currency_amount\":\"35.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 35, 1532427912, '20180724', 1532427912, 'no', 0),
(25, 4, 22, 'SSLcommerz', 'paid', '{\"tran_id\":\"20180725\",\"val_id\":\"1807251144111YNM4LsS30YofK9\",\"amount\":\"35\",\"card_type\":\"BKASH-BKash\",\"store_amount\":\"34.3\",\"card_no\":\"\",\"bank_tran_id\":\"1807251144110qo2y4fHI4aWTvE\",\"status\":\"VALID\",\"tran_date\":\"2018-07-25 11:43:52\",\"currency\":\"BDT\",\"card_issuer\":\"BKash Mobile Banking\",\"card_brand\":\"MOBILEBANKING\",\"card_issuer_country\":\"Bangladesh\",\"card_issuer_country_code\":\"BD\",\"store_id\":\"techr5affa68a7602c\",\"verify_sign\":\"d5f200f705ea203b954f3cf50e72866e\",\"verify_key\":\"amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d\",\"verify_sign_sha2\":\"0de0de16b0cc67cafdaa4aaedccc4a8be010bb0a827399a35f88e82d142af24d\",\"currency_type\":\"BDT\",\"currency_amount\":\"35.00\",\"currency_rate\":\"1.0000\",\"base_fair\":\"0.00\",\"value_a\":\"\",\"value_b\":\"\",\"value_c\":\"\",\"value_d\":\"\",\"risk_level\":\"0\",\"risk_title\":\"Safe\"}', 35, 1532497253, '20180725', 1532497253, 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `page_name` varchar(100) DEFAULT NULL,
  `parmalink` varchar(100) DEFAULT NULL,
  `content` longtext,
  `parts` longtext,
  `tag` longtext,
  `fixed` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `status`, `page_name`, `parmalink`, `content`, `parts`, `tag`, `fixed`) VALUES
(14, 'ok', 'Privacy Policy', 'Privacy_Policy', NULL, '[{\"size\":\"12\",\"type\":\"content\",\"content\":\"<h1 style=\\\"text-align: center; \\\"><span style=\\\"font-weight: bold;\\\">Privacy Policy<\\/span><\\/h1><h6 style=\\\"text-align: left;\\\"><p class=\\\"MsoNormal\\\">At Ryants.com we care about your privacy. <\\/p>\\r\\n\\r\\n<p class=\\\"MsoNormal\\\">We only collect and Maintain certain data from our users\\r\\nthat includes information provided when setting up your user account, from\\r\\nanswers you provide in surveys or forms.We use data about how our site is being\\r\\nused by using google analytics that anonymously tracks how traffic moves\\r\\nthrough the site and beyond with cookies and such. <span style=\\\"font-size:12.0pt;\\r\\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\\r\\n&quot;Times New Roman&quot;\\\">&nbsp;<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt;\\r\\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\\r\\n&quot;Times New Roman&quot;\\\"><o:p><\\/o:p><\\/span><\\/p><\\/h6><h6 style=\\\"text-align: left;\\\"><p class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt;line-height:107%;font-family:\\r\\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\\\">Information\\r\\ncollected may be used for the following:<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt;line-height:107%;font-family:\\r\\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\\\">-To\\r\\nimprove our website, what we offer and how its presented.<o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt;line-height:107%;font-family:\\r\\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\\\">-To\\r\\nimprove customer service.<o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size:12.0pt;line-height:107%;font-family:\\r\\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;\\\"><o:p>\\r\\n\\r\\n\\r\\n\\r\\n<\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\" style=\\\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\\r\\nline-height:normal\\\"><span style=\\\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\\r\\nmso-fareast-font-family:&quot;Times New Roman&quot;\\\">-We use cookies these allow us to\\r\\nlearn about site traffic and site interaction, its about building a better\\r\\nplatform.<\\/span><\\/p><p class=\\\"MsoNormal\\\" style=\\\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\\r\\nline-height:normal\\\"><span style=\\\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\\r\\nmso-fareast-font-family:&quot;Times New Roman&quot;\\\">-Any and all information collected\\r\\nis to improve platform performance and user experience. We do not share, sell,\\r\\ntrade or transfer your data for third parties to use. Ryants.com may release\\r\\ndata if working with a third parties or partners to improve the functioning of\\r\\nour site and services. non-personally identifiable visitor information may be\\r\\nprovided to other parties for marketing, advertising, or other uses.<o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\" style=\\\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\\r\\nline-height:normal\\\"><span style=\\\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\\r\\nmso-fareast-font-family:&quot;Times New Roman&quot;\\\">-Ryants.com facilitates buying and\\r\\nselling between users and will maintain required data to complete transactions\\r\\nand provide buyers and sellers records that support the transactions. By making\\r\\na sale or a purchase on ryants.com, you are authorizing us to share your\\r\\ninformation in this way.<o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\" style=\\\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\\r\\nline-height:normal\\\">\\r\\n\\r\\n\\r\\n\\r\\n<\\/p><p class=\\\"MsoNormal\\\" style=\\\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\\r\\nline-height:normal\\\"><span style=\\\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\\r\\nmso-fareast-font-family:&quot;Times New Roman&quot;\\\">-Ryants.com mayrelease your personal\\r\\ninformation to law enforcement if we believe in good faith that such disclosure\\r\\nis reasonably necessary to comply with the law, and due process has been\\r\\nfollowed.&nbsp;<o:p><\\/o:p><\\/span><\\/p><\\/h6>\",\"widget\":\"\"}]', '', NULL),
(15, 'ok', 'Prohibited Items', 'Prohibited_Items', NULL, '[{\"size\":\"12\",\"type\":\"content\",\"content\":\"<h1 style=\\\"text-align: center; \\\">Prohibited\\r\\nItems<br><\\/h1><h6 style=\\\"text-align: left;\\\"><p class=\\\"MsoNormal\\\">Ryants.com does not allow sellers to sell the following\\r\\ntypes of items:<\\/p><p class=\\\"MsoListParagraphCxSpFirst\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Alcohol<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Tobacco<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"margin-left:1.0in;mso-add-space:\\r\\nauto;text-indent:-.25in;mso-list:l0 level2 lfo1\\\"><!--[if !supportLists]--><span style=\\\"font-family:&quot;Courier New&quot;;mso-fareast-font-family:&quot;Courier New&quot;\\\">o<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;\\r\\n<\\/span><\\/span><!--[endif]-->Tabaco Pipes, and tobacco accessories are\\r\\nallowed<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Drugs, Drug Paraphernalia<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Medical Drugs, Prescription Drugs<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Mature Content, Pornography<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Items that are internationally regulated<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Items that glorify, promote, support, glorify\\r\\nviolence<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Items that glorify, promote, support, glorify\\r\\nhatred<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Illegal Items or items that promote illegal\\r\\nactivities<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Highly regulated items<\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Items that have had recalls <\\/p><p class=\\\"MsoListParagraphCxSpMiddle\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Weapons (firearms\\/Guns\\/Explosives)<\\/p><p class=\\\"MsoNormal\\\">\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<\\/p><p class=\\\"MsoListParagraphCxSpLast\\\" style=\\\"text-indent:-.25in;mso-list:l0 level1 lfo1\\\"><!--[if !supportLists]-->-<span style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\r\\n<\\/span><!--[endif]-->Animal products prohibited by law, Such as not\\r\\nlimited to Ivory or any other items prohibited by US federal laws,\\r\\ninternational laws or animals considered endangered or threatened by the US\\r\\nendangered Species act or listed by the convention on international trade in\\r\\nendangered species (CITIES)<\\/p><\\/h6>\",\"widget\":\"\"}]', '', NULL),
(16, 'ok', 'About Us', 'About_Us', NULL, '[{\"size\":\"12\",\"type\":\"content\",\"content\":\"<h1 style=\\\"text-align: center; \\\">About\\r\\nUs<\\/h1><h6 style=\\\"text-align: left;\\\"><p class=\\\"MsoNormal\\\" style=\\\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\\r\\nline-height:normal\\\"><span style=\\\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\\r\\nmso-fareast-font-family:&quot;Times New Roman&quot;\\\">Ryants.com is a small group who are\\r\\npassionate about unique, homemade and hand-crafted items and the creative\\r\\nprocess.&nbsp; Our vision is to bring your\\r\\ncreativity to the marketplace and provide an easy to use, low-cost outlet for\\r\\npeople at home and small businesses to get their products to audiences they\\r\\ndidn\\u2019t have before. <o:p><\\/o:p><\\/span><\\/p>\\r\\n\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;\\r\\nline-height:normal\\\"><span style=\\\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\\r\\nmso-fareast-font-family:&quot;Times New Roman&quot;\\\">Ryants.com strives to allow crafters\\r\\nand artisans to connect, share, and showcase their work, their brand and get in\\r\\nfront of audiences looking for unique gifts, and supplies<a name=\\\"_GoBack\\\"><\\/a>.<o:p><\\/o:p><\\/span><\\/p><\\/h6>\",\"widget\":\"\"}]', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, 'staff', 'admin', 'parent', ''),
(2, 'edit', 'admin_edit', '1', ''),
(3, 'view', 'admin_view', '1', ''),
(4, 'delete', 'admin_delete', '1', ''),
(5, 'banner', 'banner', 'parent', ''),
(6, 'edit', 'banner_edit', '5', ''),
(7, 'view', 'banner_view', '5', ''),
(8, 'delete', 'banner_delete', '5', ''),
(9, 'brand', 'brand', 'parent', ''),
(10, 'edit', 'brand_edit', '9', ''),
(11, 'view', 'brand_view', '9', ''),
(12, 'delete', 'brand_delete', '9', ''),
(13, 'business settings', 'business_settings', 'parent', ''),
(14, 'edit', 'business_settings_edit', '13', ''),
(15, 'view', 'business_settings_view', '13', ''),
(16, 'delete', 'business_settings_delete', '13', ''),
(17, 'category', 'category', 'parent', ''),
(18, 'edit', 'category_edit', '17', ''),
(19, 'view', 'category_view', '17', ''),
(20, 'delete', 'category_delete', '17', ''),
(21, 'contact message', 'contact_message', 'parent', ''),
(22, 'edit', 'contact_message_edit', '21', ''),
(23, 'view', 'contact_message_view', '21', ''),
(24, 'delete', 'contact_message_delete', '21', ''),
(25, 'site settings', 'site_settings', 'parent', ''),
(26, 'edit', 'site_settings_edit', '25', ''),
(27, 'view', 'site_settings_view', '25', ''),
(28, 'delete', 'site_settings_delete', '25', ''),
(29, 'product', 'product', 'parent', ''),
(30, 'edit', 'product_edit', '29', ''),
(31, 'view', 'product_view', '29', ''),
(32, 'delete', 'product_delete', '29', ''),
(33, 'report', 'report', 'parent', ''),
(34, 'edit', 'report_edit', '33', ''),
(35, 'view', 'report_view', '33', ''),
(36, 'delete', 'report_delete', '33', ''),
(37, 'role', 'role', 'parent', ''),
(38, 'edit', 'role_edit', '37', ''),
(39, 'view', 'role_view', '37', ''),
(40, 'delete', 'role_delete', '37', ''),
(41, 'sale', 'sale', 'parent', ''),
(42, 'edit', 'sale_edit', '92', ''),
(43, 'view', 'sale_view', '92', ''),
(44, 'delete', 'sale_delete', '92', ''),
(45, 'slider', 'slider', 'parent', ''),
(46, 'edit', 'slider_edit', '45', ''),
(47, 'view', 'slider_view', '45', ''),
(48, 'delete', 'slider_delete', '45', ''),
(49, 'stock', 'stock', 'parent', ''),
(50, 'edit', 'stock_edit', '49', ''),
(51, 'view', 'stock_view', '49', ''),
(52, 'delete', 'stock_delete', '49', ''),
(53, 'sub category', 'sub_category', 'parent', ''),
(54, 'edit', 'sub_category_edit', '53', ''),
(55, 'view', 'sub_category_view', '53', ''),
(56, 'delete', 'sub_category_delete', '53', ''),
(57, 'user', 'user', 'parent', ''),
(58, 'edit', 'user_edit', '57', ''),
(59, 'view', 'user_view', '57', ''),
(60, 'delete', 'user_delete', '57', ''),
(61, 'newsletter', 'newsletter', 'parent', ''),
(62, 'language', 'language', 'parent', ''),
(63, 'page', 'page', 'parent', ''),
(64, 'Discount Coupon', 'coupon', 'parent', ''),
(65, 'vendor', 'vendor', 'parent', ''),
(66, 'membership', 'membership', 'parent', ''),
(67, 'SEO', 'seo', 'parent', ''),
(68, 'Membership Payments', 'membership_payment', 'parent', ''),
(69, 'blog', 'blog', 'parent', NULL),
(70, 'slides', 'slides', 'parent', NULL),
(71, 'digital category', 'category_digital', 'parent', NULL),
(72, 'edit', 'category_digital_edit', '71', NULL),
(73, 'delete', 'category_digital_delete', '71', NULL),
(74, 'view', 'category_digital_view', '71', NULL),
(75, 'sub-category', 'sub_category', 'parent', NULL),
(77, 'edit', 'sub_category_edit', '75', NULL),
(78, 'delete', 'sub_category_delete', '75', NULL),
(79, 'view', 'sub_category_view', '75', NULL),
(80, 'digital sub-category', 'sub_category_digital', 'parent', NULL),
(81, 'edit', 'sub_category_digital_edit', '80', NULL),
(82, 'delete', 'sub_category_digital_delete', '80', NULL),
(83, 'view', 'sub_category_digital_view', '80', NULL),
(84, 'digital', 'digital', 'parent', NULL),
(85, 'edit', 'digital_edit', '84', NULL),
(86, 'delete', 'digital_delete', '84', NULL),
(87, 'view', 'digital_view', '84', NULL),
(88, 'product', 'product', 'parent', NULL),
(89, 'edit', 'product_edit', '88', NULL),
(90, 'delete', 'product_delete', '88', NULL),
(91, 'view', 'product_view', '88', NULL),
(92, 'sale', 'sale', 'parent', NULL),
(93, 'email tracing', 'email_tracing', 'parent', NULL),
(94, 'widget', 'widget', 'parent', NULL),
(95, 'display settings', 'display_settings', 'parent', NULL),
(96, 'banner', 'banner', 'parent', NULL),
(97, 'captha & social settings', 'captha_n_social_settings', 'parent', NULL),
(98, 'business settings', 'business_settings', 'parent', NULL),
(99, 'ticket', 'ticket', 'parent', NULL),
(100, 'default images', 'default_images', 'parent', NULL),
(101, 'Pay to Vendor', 'pay_to_vendor', 'parent', NULL),
(102, 'email template', 'email_template', 'parent', NULL),
(103, 'product bundle', 'product_bundle', 'parent', NULL),
(104, 'edit', 'product_bundle_edit', '103', NULL),
(105, 'view', 'product_bundle_view', '103', NULL),
(106, 'delete', 'product_bundle_delete', '103', NULL),
(107, 'bundle_stock', 'bundle_stock', '103', NULL),
(108, 'customer package payment', 'package_payment', 'parent', NULL),
(109, 'classified products', 'customer_products', 'parent', NULL),
(110, 'customer premium package', 'package', 'parent', NULL),
(111, 'delete all', 'delete_all', 'parent', NULL),
(112, 'delete all categories', 'delete all categories', '111', NULL),
(113, 'delete all products', 'delete all products', '111', NULL),
(114, 'delete all brands', 'delete all brands', '111', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL DEFAULT '0',
  `rating_total` int(11) NOT NULL DEFAULT '0',
  `rating_user` longtext,
  `title` longtext,
  `added_by` varchar(30) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `description` longtext,
  `sub_category` int(11) DEFAULT NULL,
  `num_of_imgs` varchar(100) DEFAULT NULL,
  `sale_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `purchase_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` varchar(20) NOT NULL DEFAULT '0.00',
  `add_timestamp` longtext,
  `featured` longtext,
  `tag` longtext,
  `status` longtext,
  `front_image` longtext,
  `brand` longtext,
  `current_stock` int(11) DEFAULT '0',
  `unit` longtext,
  `additional_fields` longtext,
  `number_of_view` int(11) NOT NULL DEFAULT '0',
  `background` longtext,
  `discount` varchar(20) NOT NULL DEFAULT '0.00',
  `discount_type` longtext,
  `tax` varchar(20) NOT NULL DEFAULT '0.00',
  `tax_type` longtext,
  `color` longtext,
  `pcimage` text,
  `num_of_pcimgs` text,
  `options` longtext,
  `main_image` varchar(100) NOT NULL DEFAULT '0',
  `download` varchar(200) DEFAULT NULL,
  `download_name` varchar(200) DEFAULT NULL,
  `deal` varchar(10) DEFAULT NULL,
  `num_of_downloads` int(11) NOT NULL DEFAULT '0',
  `update_time` longtext,
  `requirements` longtext,
  `logo` longtext,
  `video` longtext,
  `last_viewed` int(200) DEFAULT NULL,
  `products` longtext,
  `is_bundle` varchar(10) DEFAULT NULL,
  `vendor_featured` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `pcimage`, `num_of_pcimgs`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(2, 0, 0, '[]', 'Harley Davidson Fatboy', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 5, '1', '22000.00', '18000.00', '2000', '1472849201', '0', 'honda,rapsol,bike', 'ok', '0', '52', 98, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 8, NULL, '', 'percent', '7', 'percent', '[\"rgba(252,151,0,1)\",\"rgba(0,0,0,1)\",\"rgba(255,0,0,1)\",\"rgba(28,25,173,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Condition\",\"name\":\"choice_0\",\"type\":\"radio\",\"option\":[\"New\",\"Used\"]}]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1552306714, NULL, 'no', ''),
(4, 0, 0, '[]', 'Lexus Harrier 2016', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 3, '1', '99000.00', '88000.00', '5000', '1472849819', 'no', 'SUV,toyota', 'ok', '0', '51', 100, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '', 'percent', '15', 'percent', '[\"rgba(5,5,5,1)\",\"rgba(255,255,255,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Condition\",\"name\":\"choice_0\",\"type\":\"radio\",\"option\":[\"New\",\"Used\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1522921046, NULL, 'no', ''),
(12, 0, 0, '[]', 'Party Dress', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 8, '2', '299.00', '180.00', '', '1472942092', '0', 'party dress', 'ok', '0', '8', 300, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 11, NULL, '', 'percent', '', 'percent', '[\"rgba(0,0,0,1)\",\"rgba(10,179,168,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"multi_select\",\"option\":[\"XL\",\"M\",\"S\"]},{\"no\":\"1\",\"title\":\"Type\",\"name\":\"choice_1\",\"type\":\"radio\",\"option\":[\"Long\",\"Medium\",\"Short\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1555415751, NULL, 'no', ''),
(14, 0, 0, '[]', 'Bridal Gown ', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                                                                                                        <p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</span><br></p>', 34, '1', '350.00', '320.00', '9.99', '1472985919', '0', 'bride,bridal dress', 'ok', '0', '9', 150, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '2', 'percent', '', 'percent', '[\"rgba(247,172,172,1)\",\"rgba(252,239,239,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"46\",\"50\",\"54\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(17, 0, 0, '[]', 'Formal Women Blazers', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                                                                                                        <p><span style=\"line-height: 17.1429px; text-align: justify;\">Lorem Ipsum</span><span style=\"line-height: 17.1429px; text-align: justify;\">&nbsp;</span><span style=\"line-height: 17.1429px; text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</span><br></p>', 35, '3', '150.00', '120.00', '', '1472990598', '0', 'formal dress,dress', 'ok', '0', '16', 100, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 10, NULL, '', 'percent', '', 'percent', '[\"rgba(61,61,61,1)\",\"rgba(209,0,0,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"XXL\",\"XL\",\"L\",\"M\",\"S\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1521106018, NULL, 'no', ''),
(26, 0, 0, '[]', 'Pink Cotton bra ', '{\"type\":\"vendor\",\"id\":\"1\"}', 4, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 9, '2', '12.00', '10.00', '', '1473042324', 'no', 'bra,women', '0', '0', '10', 200, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 12, NULL, '', 'percent', '', 'percent', '[\"rgba(250,143,207,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"XL\",\"M\",\"S\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1531035237, NULL, 'no', 'ok'),
(49, 0, 0, '[]', 'Slim Fit Casual Shirt', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 27, '1', '45.25', '34.35', '4', '1474484600', 'ok', 'casual shirt,casual men\'s shirt,men\'s shirt,men;s casual shirt', '0', '0', '25', 45, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '2', 'percent', '[\"rgba(190,221,236,1)\",\"rgba(254,222,222,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"Small\",\"Medium\",\"Large\",\"X-Large\",\"XX-Large\"]},{\"no\":\"1\",\"title\":\"Sleeve\",\"name\":\"choice_1\",\"type\":\"single_select\",\"option\":[\"Half\",\"Full\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1550848857, NULL, 'no', 'ok'),
(50, 0, 0, '[]', 'Cotton T-Shirt', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 29, '1', '21.99', '15.25', '3.35', '1474485084', 'no', 'men;s t-shirt,t-shirt,mens shirt', '0', '0', '20', 50, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '', 'percent', '2', 'percent', '[\"rgba(70,91,139,1)\",\"rgba(89,134,133,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"multi_select\",\"option\":[\"Small\",\"Medium\",\"Large\",\"X-Large\",\"XX-Large\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1524984084, NULL, 'no', 'ok'),
(51, 0, 0, '[]', 'Tri-Blend V Neck T-Shirt', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 29, '1', '19.91', '11.11', '2.36', '1474485737', 'no', 't-shirt,mans t-shirt,men\'s t-shirt', '0', '0', '37', 25, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '3.35', 'percent', '[\"rgba(72,77,150,1)\",\"rgba(48,114,93,1)\",\"rgba(127,89,89,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"Small\",\"Medium\",\"Large\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', '0'),
(52, 0, 0, '[]', 'Long-Sleeve Double Color ', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 29, '1', '15.00', '9.56', '2.50', '1474487371', 'no', 'man\'s shirt,mens shirt,shirt', '0', '0', '23', 18, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '1.25', 'percent', '[\"rgba(55,48,48,1)\",\"rgba(132,32,32,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"Small\",\"Medium\",\"Large\",\"X-Large\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(53, 0, 0, '[]', 'Dinner Suit', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 27, '2', '112.00', '85.00', '5', '1474488409', '0', 'suit,formal dress,dinner jacket,dinner suit', '0', '0', '30', 10, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '5.25', 'percent', '[\"rgba(0,0,0,1)\",\"rgba(255,255,255,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"42 long\",\"42 Short\",\"46 Long\",\"46 Short\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(54, 0, 0, '[]', 'Custom Suit Set', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 27, '2', '120.00', '100.00', '5.25', '1474488963', 'ok', 'suit,suits,vest', '0', '0', '22', 15, 'Set', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '2', 'percent', '6.25', 'percent', '[\"rgba(0,0,0,1)\",\"rgba(255,255,255,1)\",\"rgba(0,92,255,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"Small\",\"Medium\",\"Large\",\"X-Large\",\"Tailored\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1523524329, NULL, 'no', 'ok'),
(57, 0, 0, '[]', 'Classic Business Shoe', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 28, '1', '80.00', '65.00', '3.26', '1474490663', 'ok', 'formal shoe,business shoe,shoe,mens shoe', '0', '0', '17', 20, 'Pair', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '3.25', 'percent', '[\"rgba(25,25,25,1)\",\"rgba(185,88,38,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"8\",\"9\",\"10\",\"11\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(58, 0, 0, '[]', 'Retro Utility Lace-Up Work', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 28, '2', '75.00', '60.00', '5.50', '1474491506', 'ok', 'work shoe,mens shoe,shoe', '0', '0', '24', 25, 'Pair', '{\"name\":\"null\",\"value\":\"null\"}', 2, NULL, '', 'percent', '3.25', 'percent', '[\"rgba(53,34,34,1)\",\"rgba(145,29,29,0.97)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"10\",\"11\",\"12\",\"13\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1523655173, NULL, 'no', 'ok'),
(61, 1, 3, '[\"3\"]', 'Soft Silicon Sports Style', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 30, '1', '750.00', '700.00', '8.30', '1474493199', 'ok', 'mens watch,apple watch', '0', '0', '63', 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '10', 'amount', '6.25', 'percent', '[\"rgba(227,241,119,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(63, 1, 5, '[\"3\"]', 'Stylish Clear Watch', '{\"type\":\"vendor\",\"id\":\"3\"}', 5, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 30, '2', '699.00', '650.00', '5.25', '1474493703', 'ok', 'watch,rolex', 'ok', '0', '18', 50, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 16, NULL, '', 'percent', '5.25', 'percent', '[\"rgba(235,193,113,1)\",\"rgba(209,203,203,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559528469, NULL, 'no', 'ok'),
(65, 0, 0, '[]', 'Blue Net Bra & Penty', '{\"type\":\"vendor\",\"id\":\"5\"}', 4, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 9, '2', '18.25', '11.26', '2.35', '1474572288', '0', 'bra,net bra', 'ok', '0', '10', 30, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '', 'percent', '1.50', 'percent', '[\"rgba(0,9,142,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"32A\",\"32B\",\"32C\",\"34A\",\"34B\",\"34C\",\"36A\",\"36B\",\"36C\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189055, NULL, 'no', ''),
(66, 0, 0, '[]', 'Pink Balconette Bra', '{\"type\":\"vendor\",\"id\":\"5\"}', 4, '                                                                                                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 9, '3', '24.62', '15.35', '3.25', '1474572767', '0', 'bra,printed bra', 'ok', '0', '13', 35, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 9, NULL, '', 'percent', '1.50', 'percent', '[\"rgba(255,100,202,1)\",\"rgba(222,138,203,0.74)\",\"rgba(204,204,204,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"34A\",\"34B\",\"34C\",\"36A\",\"36B\",\"36C\",\"38A\",\"38B\",\"38C\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189018, NULL, 'no', ''),
(67, 0, 0, '[]', 'Ultra Thin Net Bra & Penty ', '{\"type\":\"vendor\",\"id\":\"5\"}', 4, '                                                                                                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 9, '2', '19.56', '13.20', '2.30', '1474574005', '0', 'bra,net bra,ultra thin bra', 'ok', '0', '14', 30, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 8, NULL, '', 'percent', '1.50', 'percent', '[\"rgba(142,148,173,1)\",\"rgba(48,237,192,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"34A\",\"34B\",\"35A\",\"35B\",\"36A\",\"36B\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189026, NULL, 'no', ''),
(68, 0, 0, '[]', 'Printed Satin Robe', '{\"type\":\"vendor\",\"id\":\"5\"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 10, '1', '19.25', '12.36', '2.36', '1474575090', 'ok', 'sleeping dress,night dress,night robe', 'ok', '0', '11', 20, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '', 'percent', '2.25', 'percent', '[\"rgba(45,44,44,1)\",\"rgba(204,96,187,1)\",\"rgba(128,80,80,1)\"]', NULL, NULL, '[{\"no\":\"1\",\"title\":\"Size\",\"name\":\"choice_1\",\"type\":\"single_select\",\"option\":[\"Long sleeve\",\"Short sleeve\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189052, NULL, 'no', 'ok'),
(69, 0, 0, '[]', 'Floral Lace Nighty ', '{\"type\":\"vendor\",\"id\":\"5\"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 10, '2', '12.99', '8.20', '1.20', '1474575691', 'ok', 'lace nighty,sleeping dress', 'ok', '0', '15', 30, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '', 'percent', '1.05', 'percent', '[\"rgba(0,0,0,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189024, NULL, 'no', ''),
(71, 0, 0, '[]', 'Velvet Lipstick', '{\"type\":\"vendor\",\"id\":\"5\"}', 4, '                                                                                                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 11, '2', '13.35', '10.25', '', '1474577843', '0', 'lipstick,nail polish,nail color', 'ok', '0', '8', 50, 'Set', '{\"name\":\"null\",\"value\":\"null\"}', 9, NULL, '', 'percent', '', 'percent', '[\"rgba(211,0,0,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189097, NULL, 'no', 'ok'),
(73, 0, 0, '[]', 'High Heel Top Belt', '{\"type\":\"vendor\",\"id\":\"5\"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 36, '1', '49.33', '38.32', '3.25', '1474580020', '0', 'shoe,party shoe,womens shoe', 'ok', '0', '12', 15, 'Pair', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '', 'percent', '2.20', 'percent', '[\"rgba(244,20,20,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"10\",\"11\",\"12\",\"13\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559787510, NULL, 'no', 'ok'),
(74, 0, 0, '[]', 'Crystal Pencil High Heel', '{\"type\":\"vendor\",\"id\":\"5\"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 36, '1', '55.25', '41.38', '3.25', '1474580224', 'no', '', 'ok', '0', '', 20, 'Pair', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '', 'percent', '2.50', 'percent', '[\"rgba(208,15,124,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"8\",\"9\",\"10\",\"11\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559787554, NULL, 'no', 'ok'),
(75, 0, 0, '[]', 'Medium Booster Heel', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>', 36, '1', '49.99', '39.63', '2.52', '1474580982', 'no', 'shoe,party shoe', 'ok', '0', '14', 20, 'Pair', '{\"name\":\"null\",\"value\":\"null\"}', 16, NULL, '', 'percent', '1.50', 'percent', '[\"rgba(224,39,39,0.86)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"8\",\"9\",\"10\",\"11\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557195792, NULL, 'no', ''),
(77, 1, 1, '[\"3\"]', 'Super luxury Car', '{\"type\":\"vendor\",\"id\":\"3\"}', 1, '                                                                                <p><span id=\"docs-internal-guid-c79edabb-5c4c-3f82-8b4b-045482ca5abb\"><span [removed]=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></span></p>', 3, '2', '68599.00', '58378.00', '6850', '1474722202', 'ok', 'car,super car,luxury car', 'ok', '0', '41', 15, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 15, NULL, '', 'percent', '20', 'percent', '[\"rgba(28,28,28,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189026, NULL, 'no', '0'),
(78, 1, 2, '[\"3\"]', 'Mercedes Benz SUV ', '{\"type\":\"vendor\",\"id\":\"3\"}', 1, '                                                                                                                                                                <p><span id=\"docs-internal-guid-c79edabb-5c4c-3f82-8b4b-045482ca5abb\"><span [removed]=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></span></p>', 3, '2', '140825.00', '131772.00', '1072', '1474722247', 'ok', 'car,super car,luxury car', 'ok', '0', '51', 20, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 7, NULL, '', 'percent', '25', 'percent', '[\"rgba(66,66,66,1)\",\"rgba(212,212,212,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1557189103, NULL, 'no', '0'),
(79, 1, 4, '[\"3\"]', 'Sikorsky turbine Helicopter123', '{\"type\":\"vendor\",\"id\":\"3\"}', 1, '                                                                                ', 63, '1', '2250000.00', '1734589.00', '158900', '1474790384', 'ok', 'privet plane,helicopter,private helicopter', 'ok', '0', '', 5, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '30', 'percent', '20', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(204,204,204,1)\"]', 'BIMA.jpg,8.png', '2', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189061, NULL, 'no', 'ok'),
(289, 0, 0, '[]', 'TEst Product', '{\"type\":\"admin\",\"id\":\"1\"}', 39, '<p>leather test item<br></p>', 128, '1', '20.00', '10.00', '2.00', '1555340481', 'no', 'Leather,Smiles', 'ok', '0', '', 10, 'Each', '{\"name\":\"null\",\"value\":\"null\"}', 19, NULL, '', 'percent', '', 'percent', '[\"rgba(64,14,14,1)\",\"rgba(99,71,16,0.72)\"]', 'leather1.jpg,leather2.jpg', '2', '[{\"no\":\"0\",\"title\":\"test\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"large skin\",\"xl skin\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561680740, NULL, 'no', NULL),
(80, 0, 0, '[]', 'Hughes UR-Path ', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                                                                                                <p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 63, '1', '775000.00', '558900.00', '58900', '1474791921', 'no', 'helicopter,privet helicopter,private jet', 'ok', '0', '39', 10, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '', 'percent', '19', 'percent', '[\"rgba(250,230,49,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1561631252, NULL, 'no', ''),
(81, 0, 0, '[]', 'Bombardier Global Air Jet', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                                                        <p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;</span><span style=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 63, '1', '3750000.00', '3234690.00', '157690', '1474792372', 'no', 'private jet,private air,private plane', 'ok', '0', '46', 5, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '', 'percent', '18', 'percent', '[\"rgba(245,245,245,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1530439217, NULL, 'no', ''),
(82, 0, 0, '[]', 'Gulfstream G550 Air Jet', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                                                        <p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;</span><span style=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 63, '1', '4800000.00', '4467490.00', '145780', '1474792870', '0', 'private plane,private jet,private air', 'ok', '0', '46', 8, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '', 'percent', '25', 'percent', '[\"rgba(237,237,237,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1530439207, NULL, 'no', ''),
(83, 0, 0, '[]', 'BMW S15700', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                <p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;</span><span style=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 5, '1', '13150.00', '11670.00', '1190', '1474793746', '0', 'chopper bike,bike', 'ok', '0', '45', 12, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '', 'percent', '8', 'percent', '[\"rgba(255,255,255,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1528792078, NULL, 'no', ''),
(84, 0, 0, '[]', 'Harley Davidson VRSCF Bike', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                                                        <p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 5, '1', '45000.00', '42879.00', '1500', '1474795772', 'no', 'chopper bike,bike', 'ok', '0', '56', 25, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '', 'percent', '12', 'percent', '[\"rgba(46,46,46,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1521266451, NULL, 'no', ''),
(85, 0, 0, '[]', 'Harley Davidson Iron 883', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                        <p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;</span><span style=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 5, '1', '79560.00', '74590.00', '1800', '1474796674', 'no', 'chopper bike,bike', 'ok', '0', '56', 18, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 2, NULL, '', 'percent', '12', 'percent', '[\"rgba(46,45,45,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1521541200, NULL, 'no', ''),
(87, 0, 0, '[]', 'Yamaha Racing Bike', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                        <p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;</span><span style=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 6, '1', '44000.00', '41000.00', '', '1474799812', 'no', 'racing bike,yamaha', 'ok', '0', '57', 10, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '5', 'percent', '', 'percent', '[\"rgba(240,126,21,1)\",\"rgba(255,255,255,1)\",\"rgba(255,7,7,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"Condition\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"Used\",\"New\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1520393912, NULL, 'no', ''),
(88, 0, 0, '[]', 'Faster Racing Bike', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                        <p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;</span><span style=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 6, '1', '36000.00', '33890.00', '1800', '1474800321', 'no', 'racing bike,honda,bike', 'ok', '0', '52', 25, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 14, NULL, '', 'percent', '5', 'percent', '[\"rgba(0,0,0,1)\",\"rgba(255,0,0,1)\",\"rgba(255,247,55,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557872490, NULL, 'no', '');
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `pcimage`, `num_of_pcimgs`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(89, 0, 0, '[]', 'Super Racing Bike', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                                                                                                                                        <p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;</span><span style=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><br></p>', 6, '1', '45000.00', '42000.00', '', '1474801360', '0', 'bike,racing honda,honda', 'ok', '0', '52', 10, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 9, NULL, '10', 'percent', '', 'percent', '[\"rgba(255,255,255,1)\",\"rgba(0,0,0,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1557891745, NULL, 'no', ''),
(98, 0, 0, '[]', 'Classified php script', '{\"type\":\"admin\",\"id\":\"1\"}', 12, '                                                                                                                                                                <p>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>                                                                                                                                                ', 66, '3', '38.00', '38.00', '0', '1475924525', 'ok', 'php,classified ', 'ok', NULL, NULL, 0, NULL, '{\"name\":\"null\",\"value\":\"null\"}', 10, NULL, '', 'percent', '', 'percent', NULL, NULL, NULL, NULL, '0', 'ok', '98_27cf69cb8ee8f1eaf47c_asdasdestghfjktgsseruyhxrityik.zip', NULL, 0, '1476352505', '[{\"index\":0,\"field\":\"php version\",\"desc\":\"<p>php 5.0<\\/p>\"}]', 'digital_logo_98.jpg', '[]', 1527064046, NULL, 'no', ''),
(99, 1, 5, '[\"7\"]', 'Colored Solution', '{\"type\":\"admin\",\"id\":\"1\"}', 13, '                                                                                <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>                                                                        ', 75, '3', '26.00', '20.00', '0', '1476001190', 'ok', 'printing solutioncolor,color', 'ok', NULL, NULL, 0, NULL, '{\"name\":\"null\",\"value\":\"null\"}', 17, NULL, '', 'percent', '', 'percent', NULL, NULL, NULL, NULL, '0', 'ok', '99_c04a03c2506a4ba12d38_printing solution.zip', 'ok', 0, '1476360456', '[{\"index\":0,\"field\":\"Package\",\"desc\":\"<p>Full<\\/p>\"}]', 'digital_logo_99.jpg', '[]', 1526120222, NULL, 'no', ''),
(100, 1, 5, '[\"7\"]', '3D Impact', '{\"type\":\"admin\",\"id\":\"1\"}', 13, '                                        <p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p><p>Lorem Ipsum is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry\'s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum</p>                                    ', 73, '5', '20.00', '19.00', '0', '1476002821', 'ok', '3d design,design ', 'ok', NULL, NULL, 0, NULL, '{\"name\":\"null\",\"value\":\"null\"}', 17, NULL, '', 'percent', '', 'percent', NULL, NULL, NULL, NULL, '0', 'ok', '100_c7e6cd571a7ca96492c3_3d design.zip', NULL, 0, '1476273286', '[{\"index\":0,\"field\":\"Color\",\"desc\":\"<p>Multiple<\\/p>\"}]', 'digital_logo_100.jpg', '[]', 1524899801, NULL, 'no', ''),
(101, 0, 0, '[]', 'BMW: MONTHLY RENTALS', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>Agile dynamics and an exciting power delivery provide incredibly intense driving moments. Whether driving along a gently winding coastal road or a challenging mountain pass, the high-performance engines, efficient lightweight construction and agile suspension of the BMW 4 Series Convertible display all their capabilities.<br></p>', 0, '1', '999.00', '999.00', '9', '1521352146', 'no', 'asd,dsa', 'ok', NULL, NULL, 8, 'pc', '', 23, NULL, '9', 'percent', '9', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1523964338', NULL, NULL, NULL, 1528792061, '[{\"product_no\":\"0\",\"product_id\":\"76\",\"quantity\":\"1\"},{\"product_no\":\"1\",\"product_id\":\"86\",\"quantity\":\"1\"},{\"product_no\":\"2\",\"product_id\":\"83\",\"quantity\":\"1\"}]', 'yes', ''),
(126, 0, 0, '[]', 'Women\'s Scarlett Cocktail ', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>Formal design</p><p>Material: polyester</p><p>Made in Canada</p><p>Care Instructions: delicate wash</p><p>Women’s sizing chart</p>', 0, '1', '23.00', '23.00', '0', '1522925206', '0', 'dress, party', '0', NULL, NULL, 50, 'Pc', '', 1, NULL, '0', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530599583', NULL, NULL, NULL, 1530604385, '[]', 'yes', ''),
(127, 0, 0, '[]', 'Men\'s Ethan Blazer', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '                                        <p>Imported</p><p>Dry Clean Only</p><p>Trim fit jacket with a natural rounded shoulder</p><p>Great seasonal fabric</p>', 27, '1', '169.99', '169.99', '0', '1522925826', 'no', 'formal,men', 'ok', '0', '25', 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 11, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1558405878, NULL, 'no', ''),
(103, 0, 0, '[]', 'Simple Face Wash Gel', '{\"type\":\"admin\",\"id\":\"1\"}', 17, '                                                                                                                                                                <p>simple text</p>', 78, '1', '4.40', '4.40', '4.38', '1522837415', 'no', 'skin ', 'ok', '0', NULL, 30, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '4.40', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(104, 0, 0, '[]', 'Vaseline Intensive Care Lotion', '{\"type\":\"admin\",\"id\":\"1\"}', 17, '                                        <p>simple text</p>', 78, '1', '4.72', '4.72', '4.69', '1522837684', 'no', 'skin ', 'ok', '0', NULL, 50, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 2, NULL, '0', 'percent', '4.72', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1554795201, NULL, 'no', ''),
(105, 0, 0, '[]', 'Nivea Moisturizing Day Cream ', '{\"type\":\"admin\",\"id\":\"1\"}', 17, '                                        <p>simple text</p>', 78, '1', '5.50', '5.50', '5.48', '1522837849', 'no', 'skin', 'ok', '0', NULL, 20, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '5.50', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(106, 0, 0, '[]', 'Matte Foundation Warm Ivory', '{\"type\":\"admin\",\"id\":\"1\"}', 18, '                                        <p>simple text</p>', 79, '1', '18.30', '18.30', '18.28', '1522838528', 'no', 'makeup ', 'ok', '0', '', 15, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(107, 0, 0, '[]', 'Makeup Brush Kit Set', '{\"type\":\"admin\",\"id\":\"1\"}', 18, '                                                                                                                        <p>Size: bag unfold size: 25(L)*20(W) CM, 9.84*7.87\'\'.</p><p>8 PCS (blush brush, eyeshadow brush, shadow brush, foundation brush, lip brush, eyeliner brush, eyebrow brush, eyebrow brush).</p><p>It is a must have item for girls or women to make up everyday.</p><p>Soft and comfortable will not shed hair or hurt your skin.</p><p>This set of brushes perfectly applies all kinds of makeup, including creams, liquids,minerals and powders.</p>', 79, '1', '22.63', '22.63', '22.63', '1522838917', 'no', 'makeup ', 'ok', '0', '146', 12, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1523878513, NULL, 'no', ''),
(109, 0, 0, '[]', 'Classical Wood Storage Rack', '{\"type\":\"admin\",\"id\":\"1\"}', 21, '                                                                                <p>simple text</p>', 80, '1', '58.77', '58.77', '58.77', '1522841550', 'no', 'furniture', 'ok', '0', NULL, 1, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189108, NULL, 'no', ''),
(110, 0, 0, '[]', 'Samsung Galaxy S9', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>simple text</p>', 81, '1', '719.99', '719.99', '99', '1522842221', 'no', 'mobile', 'ok', '0', NULL, 5, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(111, 0, 0, '[]', 'Moto G PLUS (5th Gen.)', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p>simple text</p>', 81, '1', '209.99', '209.99', '209.99', '1522842710', 'no', 'mobile', 'ok', '0', NULL, 3, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(112, 0, 0, '[]', 'Samsung Galaxy S8', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p>simple text</p>', 81, '1', '629.99', '629.99', '0', '1522842842', 'no', 'mobile', 'ok', '0', NULL, 2, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1522842968, NULL, 'no', ''),
(113, 0, 0, '[]', 'XS™ Super Workout Bundle', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>The Super Workout Bundle includes:</p><p>XS™ Intense Pre-Workout Boost – Citrus Burst (30 servings)</p><p>XS™ Post-Workout Recovery – Cherry Lemonade (20 servings)</p><p>XS™ Shaker Cup</p><div><br></div>', 0, '1', '15.00', '15.00', '0', '1522903436', 'no', 'gym ,workout', 'ok', NULL, NULL, 31, 'Pc', '', 3, NULL, '0', 'percent', '3', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530599720', NULL, NULL, NULL, 1557189058, '[]', 'yes', ''),
(114, 0, 0, '[]', 'Bosch Tool Combo', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>The Bosch GXL12V-310B22 Kit is a 12V Max starter package of cordless drilling and cutting convenience. The package includes the PS31 12V Max 3/8 In. Drill/Driver, with professional-grade performance at only about two pounds. It delivers 265 In.-Lbs. of max torque, two speeds (0-350 no-load rpm and 0-1,300 no-load rpm) and 20+1 clutch settings. This performance-to-weight ratio makes this a great solution for overhead drilling or driving. The PS60 Reciprocating Saw is designed to provide cutting for small spaces. At only 11 In. long, it provides up to 3,000 strokes per minute. The Bosch GLI12V-300 Worklight is a compact and bright cordless light The kit comes with two 12V Max 2.0 Ah batteries and a charger.</p><p><br></p>', 0, '1', '139.00', '139.00', '0', '1522905259', 'no', '3 piece kit,Drill,w/ LED Work Light,w/Drill and Drive Bit Set,w/Screwdriver Bit Set', 'ok', NULL, NULL, 49, 'Pc', '', 7, NULL, '25', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, 'ok', 0, '1530597235', NULL, NULL, NULL, 1561966376, '[]', 'yes', ''),
(115, 0, 0, '[]', 'Tier Swivel TV Stand', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>Swivel 2-tier TV stand for 360-degree rotation; for placement on table, counter, or other television stand</p><p>Durable fiberboard construction with black wood-grain finish; brushed stainless-steel support posts</p><p>Space for DVD player or other AV component on lower shelf</p><p>Tool-free home assembly; 60-pound total weight capacity</p><p>Holds up to a 20-inch flat panel TV; maximum weight - 60-pound</p>', 0, '1', '25.99', '25.59', '0', '1522906019', 'no', 'tv, monitor, stand', 'ok', NULL, NULL, 50, 'Pc', '', 6, NULL, '0', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530597055', NULL, NULL, NULL, 1557189008, '[]', 'yes', ''),
(116, 0, 0, '[]', 'KooK Champagne Flutes', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>The KooK champagne flute are study and come in a set of 6 and can hold up to 7 oz.</p><p>These glasses are from the KooK collection. which is a Classic one-piece stemware design</p><p>This 7-ounce clear champagne glass is wonderful for celebrating any occasion. suitable for occasions like dinner parties, elaborate luncheons, weddings, anniversaries, housewarming gatherings, reunions, and much more.</p><p>These champagne glasses are clear sturdy glasses so you can see that golden colored bubble champagne in your glass or perhaps a mimosa</p><p>Beautiful Set of Solid Champagne Flutes. Dishwasher safe.</p>', 0, '1', '15.99', '15.99', '0', '1522906522', 'no', 'wine,glass ', 'ok', NULL, NULL, 12, 'pc', '', 22, NULL, '0', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530597871', NULL, NULL, NULL, 1561161150, '[]', 'yes', ''),
(117, 0, 0, '[]', 'Key Home Kit', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>Manage and monitor your door from anywhere. Use the Amazon Key App to lock and unlock your door, use keyless access and keep track of who comes and goes, watch or block in-home delivery, and check in on your front door 24/7.</p><p>Stop making spare keys. Give family and friends temporary, recurring, or permanent access. Or provide one-time access for your electrician or dog walker. You’re in control—just schedule the date and time window.</p><p>As a Prime member, you can choose to get Amazon packages securely delivered just inside your front door. Watch your delivery happening live or view a video clip of it later. We’ll send notifications the morning of delivery, just before, and right after. Or choose to block in-home delivery.</p><p>Download the Cloud Cam App to access additional indoor security features for your Amazon Cloud Cam (Key Edition). Monitor your home with features like 1080p Full HD, night vision, and two-way audio.</p><p>Works with Alexa - Enable the Amazon Key skill and ask Alexa to lock your door. Or ask Alexa to show Cloud Cam’s live feed on your Amazon Fire TV, Fire Tablet, Echo Show, or Echo Spot.</p><p>Locks are only compatible if you have a standard deadbolt mounted separately from the handle/knob below it and on doors between 1-3/8 in. and 2 in. thick.</p>', 0, '1', '249.99', '249.99', '0', '1522907235', 'no', 'home,kit', 'ok', NULL, NULL, 40, 'Pc', '', 4, NULL, '14', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530599556', NULL, NULL, NULL, 1557189092, '[]', 'yes', ''),
(118, 0, 0, '[]', 'ChocoVivo Beans & Nibs', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>ChocoVivo makes chocolate from bean-to-bar.  What makes the chocolate special is the way it is processed and the ingredients used.  It’s stone ground which is how the Mayans and Aztecs made chocolate over 2000 years ago grinding chocolate with a tool similar to a mortar and pestle called a mano and metate.  The chocolate is not over processed, thus, it’s not refined through rollers, conched, or tempered. ChocoVivo only makes dark chocolate.  There’s no milk powder, soy lecithin, or additional cacao butter.  From using only whole cacao nibs, to whole spices, the ingredients are as natural as Mother Nature intended our food to be.  We eat whole fruits and vegetables, why not whole bean chocolate?  Once you taste the purity of ChocoVivo whole bean chocolate that’s been made the traditional way – stone ground – you’ll never go back to regular chocolate or those powder packets.  Our mantra is Simple Is Better.<br></p>', 0, '1', '39.99', '39.99', '0', '1522907846', 'no', 'beans', 'ok', NULL, NULL, 30, 'Pc', '', 7, NULL, '0', 'percent', '2', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530599630', NULL, NULL, NULL, 1561049787, '[]', 'yes', ''),
(119, 0, 0, '[]', ' Small Space Package ', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>Here\'s what is included with this 16 Piece Package: * (1) 6 Pc. Bedroom Set - Includes Queen HB, FB, & Rails, 1 Nightstand, Dresser, & Mirror * (1) 5 Pc. Dining Set - Includes Table + 4 Chairs * TV Stand * (1) 2 Pc. Sectional Set - 3 Choices  <br></p>', 0, '1', '1099.00', '1099.00', '0', '1522909301', 'no', 'Queen Bed,Nightstand, Dresser,mirror ', 'ok', NULL, NULL, 30, 'pc', '', 8, NULL, '20', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530597673', NULL, NULL, NULL, 1557189085, '[]', 'yes', ''),
(120, 0, 0, '[]', 'CREEAL ink Sofa SET', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>10 Pc. Set Includes - </p><p>2 Pc. Creeal Sofa & Loveseat - 8020238-35</p><p>2 Pc. Tessani Coffee Set (Coffee Table + 1 End Table) T099-1-3 - (Pictured in Main Photo)</p><p>1 Taji Lamp L204004 - (Pictured in Main Photo)</p><p>2 Pc. Keyon Picture Frame Set A2000197 </p><p>2 Pc. Didrika Blue Glass Bowls A2000241</p><p>1 Caci Dark Gray Rug R244002 - (Pictured in Main Photo)</p><p> </p>', 0, '1', '1199.00', '1199.00', '0', '1522912813', 'no', 'sofa,loveset,chair', 'ok', NULL, NULL, 12, 'Pc', '', 12, NULL, '0', 'percent', '3', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530475024', NULL, NULL, NULL, 1557189084, '[]', 'yes', ''),
(121, 0, 0, '[]', 'ELLIOTT Formal Dining Set ', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>5 Pc. Set: Price is for Table (2328T-4272 - 1 Box) + 4 Side Chairs (2328S 2 Boxes)</p><p>6 Pc. Set: Price is for Table (2328T-4272 - 1 Box) + 4 Side Chairs (2328S 2 Boxes) + 1 Bench (2328-BENCH - 1 Box)</p><p><br></p><p>Table: 42\" X 54\"~72\" X 30\"H - With Leaf: 42\" X 72\" X 30\" H - Without Leaf: 42\" X 54\" X 30\" H</p>', 0, '1', '499.00', '499.00', '0', '1522913118', 'no', 'table,chair', 'ok', NULL, NULL, 100, 'Pc', '', 4, NULL, '10', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530475000', NULL, NULL, NULL, 1557189109, '[]', 'yes', ''),
(122, 0, 0, '[]', 'Best Makeup deal', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>All Arbonne products. Perfecting Liquid Foundation (x11) Got You Covered Mineral Powder Foundation (x10) & Specialy designed brush for application Light, Medium and Dark Pressed Face Powder. Mascara, 2 x Cream Highlighters. FC 5 compact powder (combats redness) Strobing palette, & Eye makeup remover. Excellent starter kit for a budding makeup artist. Most products not been used, used products completely sanitised.<br></p>', 0, '1', '80.00', '80.00', '0', '1522913826', 'no', 'makeup', 'ok', NULL, NULL, 499, 'Pc', '', 12, NULL, '0', 'percent', '33', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530601724', NULL, NULL, NULL, 1557189078, '[{\"product_no\":\"1\",\"product_id\":\"71\",\"quantity\":\"1\"},{\"product_no\":\"2\",\"product_id\":\"70\",\"quantity\":\"1\"}]', 'yes', ''),
(123, 0, 0, '[]', 'Kylie Beauty Bundle', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p><span [removed]=\"color: rgb(82, 82, 82); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\">Exposed<span [removed]=\"color: rgb(82, 82, 82); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\">Dolce K<span [removed]=\"color: rgb(82, 82, 82); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\">Koko K<span [removed]=\"color: rgb(82, 82, 82); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\">Candy K<span [removed]=\"color: rgb(82, 82, 82); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\">Kristen<span [removed]=\"color: rgb(82, 82, 82); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\">Leo<span [removed]=\"color: rgb(82, 82, 82); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\">You can get this limited edition medium-sized nylon bag to keep all your Kylie Cosmetics products and more.</span></span></span></span></span></span></span></p><p><span [removed]=\"color: rgb(82, 82, 82); font-family: Verdana, Geneva, sans-serif; font-size: 15px;\"><br></span><br></p>', 0, '1', '300.00', '300.00', '0', '1522914355', 'ok', 'makeup,kyle', 'ok', NULL, NULL, 500, 'pc', '', 8, NULL, '0', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, 0, '1530474758', NULL, NULL, NULL, 1557189104, '[{\"product_no\":\"1\",\"product_id\":\"172\",\"quantity\":\"1\"},{\"product_no\":\"2\",\"product_id\":\"173\",\"quantity\":\"1\"},{\"product_no\":\"3\",\"product_id\":\"174\",\"quantity\":\"1\"}]', 'yes', ''),
(124, 0, 0, '[]', 'Tesla SUV - X', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '<p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 3, '2', '55000.00', '54000.00', '', '1522922102', 'no', 'tesla ,auto,automobile', 'ok', '0', '148', 200, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 9, NULL, '', 'percent', '', 'percent', '[\"rgba(255,255,255,1)\",\"rgba(0,0,0,1)\",\"rgba(148,0,9,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557897514, NULL, 'no', ''),
(125, 0, 0, '[]', 'Land Cruiser v8', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '<p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 3, '2', '60000.00', '59000.00', '', '1522922291', 'no', 'automobile,toyota,v8', 'ok', '0', '51', 298, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 17, NULL, '', 'percent', '', 'percent', '[\"rgba(0,0,0,1)\",\"rgba(255,255,255,1)\",\"rgba(253,255,232,1)\",\"rgba(209,0,0,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557874338, NULL, 'no', ''),
(128, 0, 0, '[]', 'Travel Stretch Fit Blazer', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '                                                                                <p>100% Polyester</p><p>Imported</p><p>Dry Clean Only</p><p>Tailored fit</p><p>Side vent</p><p>Stretch</p><p>Notched lapel</p><p>Mesh armhole gussets for ease of movement</p>', 27, '1', '372.06', '372.06', '0', '1522926040', 'no', 'formal,men', 'ok', '0', '25', 99, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 14, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561163736, NULL, 'no', ''),
(129, 0, 0, '[]', 'Running Shoe', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '<p>Mesh upper</p><p>Imported</p><p>TRI-FLEX sole</p><p>Shaft measures approximately low-top from arch</p><p>EVERUN Topsole for continuous cushioning</p><p>Light Stability for runners looking for extra support</p><p>Engineered mesh upper for dynamic lightweight fit</p>', 28, '1', '50.04', '50.00', '0', '1522926289', 'no', 'shoe', 'ok', '0', '33', 500, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561824426, NULL, 'no', ''),
(130, 0, 0, '[]', 'Suit Jacket', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '                                                                                                                        <p>100% Polyester</p><p>Imported</p><p>Button closure</p><p>Dry Clean Only</p><p>Slim fit, notch lapels + 2-button closure</p><p>Chest besom pocket, side besom pockets + ticket pocket</p><p>Button-detail cuffs</p>', 27, '1', '79.20', '79.20', '0', '1522926502', 'no', 'formal,men,dress', 'ok', '0', '', 497, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 116, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[{\"no\":\"1\",\"title\":\"Size\",\"name\":\"choice_1\",\"type\":\"text\",\"option\":[\"none\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561163761, NULL, 'no', ''),
(132, 0, 0, '[]', '2018 Yamaha YZF-R3', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '<p>2018 Yamaha YZF-R3, DISCOUNTED CASH PRICE...BROWARD MOTORSPORTS OF PALM BEACH...CALL 561-340-5254 NOW FOR IMMEDIATE ASSISTANCE...FINANCING IS AVAILABLE FOR MOST BUYERS...CERTAIN FINANCE PROMOTIONS/SITUATIONS MAY IMPACT PRICING&nbsp;</p><p><br></p><p>DISCOUNTED CASH PRICE...BROWARD MOTORSPORTS OF PALM BEACH...CALL 561-340-5254 NOW FOR IMMEDIATE ASSISTANCE...FINANCING IS AVAILABLE FOR MOST BUYERS...CERTAIN FINANCE PROMOTIONS/SITUATIONS MAY IMPACT PRICING 2018 Yamaha YZF-R3 YOUR WORLD STARTS, WHERE R WORLD BEGINS</p><p><br></p><p>Entry level R-series superbike performance that excites with every twist of the throttle.</p><p><br></p><p>Features may include:</p><p>Potent Twin-Cylinder Powerplant</p><p>Large 321cc twin-cylinder engine offers excellent performance whether navigating cross-town traffic, hitting the twisties, or on the racetrack.</p><p><br></p><p>Striking Yamaha R-Series Styling</p><p>Yamaha supersport-inspired styling with a full fairing in a chassis that makes it perfect for first time rider or experienced riders who prefer a lightweight, nimble machine. And three beautiful coloring options are available which means there is a color choice that is right for you.</p><p><br></p><p>Advanced Engine Design</p><p>Forged pistons just like the R1 and R6 are very lightweight while providing exceptional strength. And innovative Yamaha features like the offset cylinders reduce friction for more power.</p><p><br></p><p>Balanced Sportbike Ergonomics</p><p>The YZF-R3 features clip-on handlebars and a riding position that provides a great balance of comfort and sporty riding position.</p><p><br></p><p>Compact, Confident Rider Seating</p><p>With a flat seat design and a seat height of only 30.7 inches on the YZF-R3, it s easy to get both feet firmly on the ground and inspire confidence, especially for beginner riders.</p><p><br></p><p>Potent Brakes</p>', 6, '1', '4999.00', '4999.00', '20', '1523861067', 'no', 'bike', 'ok', '0', '57', 10, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '0', 'percent', '2.97', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557892692, NULL, 'no', ''),
(133, 0, 0, '[]', 'HUGHES 300C', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                        <p>Notes/Highlights</p><p><br></p><p>The aircraft is operating, why the condition and component times will be subject to changes depending upon such operations.</p><p><br></p><p>Verification of the condition of the aircraft and its component times shall be the responsibility of the purchaser.</p><p><br></p><p><br></p><p>Optional equipment</p><p><br></p><p>SAAB cargo racks</p><p>SAAB landing gear skis</p><p>TANIS preheater system</p><p>Covers and tie-downs</p><p><br></p><p>Interior</p><p><br></p><p>Grey</p><p><br></p><p>Exterior</p><p><br></p><p>Yellow</p><p><br></p><p>Avionics</p><p>King KY196 Com</p><p>King KT76A Transponder</p><p>ELT ACK-01</p><p>PLB</p><p>Garmin Aera 500 GPS</p>', 63, '1', '117139.33', '117139.33', '20000', '1523863264', 'no', 'air,jet', 'ok', '0', '55', 5, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 7, NULL, '0', 'percent', '30', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557916001, NULL, 'no', ''),
(135, 0, 0, '[]', 'Roshe One', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '<p>The name may say \"run\" but don\'t get it twisted! The Roshe One—with its eye-catching chunky sole and minimal design—was inspired by the practice of meditation and the concept of Zen. Irreverent peace, a love for kicks and an insatiable thirst for rockin\' the latest-and-greatest is reserved for those \"enlightened\" ones who can appreciate the simplicity yet overall dopeness of these Nike® sneakers!</p><p>Deconstructed, full mesh upper for maximum breathability.</p><p>Lightly padded collar with webbing tongue and heel pull loops offers a cozy fit and easy on and off.</p><p>Mesh lining and a ribbed, removable SolarSoft sockliner made to resemble a raked garden.</p><p>Made to be worn with or without socks, whichever gets you to a peaceful state the fastest.</p><p>Four-eye lace-up front with round, nylon laces for a comfortable fit.</p><p>Full-length Phylon midsole for lightweight cushioning and comfort.</p><p>Waffle-inspired Phylon outsole made to look like stepping stones from a perfectly manicured garden.</p><p>Imported.</p><p>Product measurements were taken using size 11, width D - Medium. Please note that measurements may vary by size.</p><p>Weight of footwear is based on a single item, not a pair.</p><p>Measurements:</p><p>Weight: 10 oz</p>', 28, '1', '63.75', '63.75', '30', '1523867187', 'no', 'shoe,nike', 'ok', '0', '35', 200, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557943387, NULL, 'no', ''),
(136, 0, 0, '[]', 'Bienne II', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '<p>All hands on deck! The Bienne II is an innovative take on a boat shoe. This shoe has the classic appeal of the style with the trendy details for a completely modernized look.</p><p>Leather or suede upper.</p><p>Lace-up front with leather laces.</p><p>Lacing threads through the sides.</p><p>Stitched detailing.</p><p>Moc toe.</p><p>Brand logo detail at heel.</p><p>Leather/textile lining and insole.</p><p>Contrast striping at midsole.</p><p>Treaded rubber outsole.</p><p>Imported.</p><p>Product measurements were taken using size 11.5, width M. Please note that measurements may vary by size.</p><p>Weight of footwear is based on a single item, not a pair.</p><p>Measurements:</p><p>Heel Height: 3⁄4 in</p><p>Weight: 15 oz</p>', 28, '1', '44.99', '44.99', '15', '1523867790', 'no', 'shoe,polo', 'ok', '0', '17', 150, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '0', 'percent', '5', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1560211468, NULL, 'no', ''),
(137, 0, 0, '[]', 'Solid Sateen Button Down ', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '                                        <p>Whether you\'re preparing for the boardroom or attending a formal event, Calvin Klein® will take you there in style.</p><p>This handsome solid shirt is crafted from a lightweight woven with a fine sateen-hand finish.</p><p>Narrow spread collar.</p><p>Long sleeves with adjustable buttoned cuffs.</p><p>Full button-front closure.</p><p>Straight back yoke.</p><p>Shirttail hemline.</p><p>100% cotton.</p><p>Machine wash, tumble dry.</p><p>Imported.</p><p>Product measurements were taken using size MD. Please note that measurements may vary by size.</p><p>Measurements:</p><p>Length: 29 in</p><p>Chest Measurement: 42 in</p>', 29, '1', '52.99', '52.99', '10', '1523868824', 'no', 'shirt,men,fashion', 'ok', '0', '102', 500, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '0', 'percent', '5', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1560034173, NULL, 'no', ''),
(138, 0, 0, '[]', 'Roll-Up Button Down Shirt', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '<p>Let the Calvin Klein® Shirt form the basis of both your smart and off-duty ensembles.</p><p>Lightweight woven shirt in a space-dyed design.</p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Narrow spread collar.</font></font></p><p>Convertible long sleeves with buttoned tabs.</p><p>Dual patch chest pockets with buttoned flaps.</p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Full button-front closure.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Straight back yoke.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Shirttail hemline.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">100% cotton.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Machine wash, tumble dry.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Imported.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Product measurements were taken using size MD. Please note that measurements may vary by size.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Measurements:</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Length: 29 in</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Chest Measurement: 42 in</font></font></p>', 29, '1', '31.80', '31.80', '10', '1523869081', 'ok', 'men,shirt', 'ok', '0', '102', 298, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '0', 'percent', '10', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189048, NULL, 'no', ''),
(139, 0, 0, '[]', 'Stripe T-Shirt', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '<p>Add character to your wardrobe with a statement Calvin Klein® Polo.</p><p>This soft knit polo sports engineered blocked-stripes at the front for an elevated finish.</p><p>Ribbed fold-over collar.</p><p>Short sleeves with ribbed trim.</p><p>Two-button placket front.</p><p>Straight hem with side vents.</p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">100% cotton.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Machine wash, tumble dry.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Imported.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Product measurements were taken using size MD. Please note that measurements may vary by size.</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Measurements:</font></font></p><p>Length: 28 in</p>', 29, '1', '45.99', '45.99', '10', '1523869324', 'no', 'men,t-shirt', 'ok', '0', '102', 300, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '0', 'percent', '10', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189009, NULL, 'no', ''),
(141, 0, 0, '[]', 'Raymond Weil', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '                                        <p>The Raymond Weil, Tango series features a stainless steel 42mm case, with a uni-directional rotating bezel, a black dial and a scratch resistant sapphire crystal.</p><p><br></p><p>Sub-dials: stainless steel.</p><p>The 20mm stainless steel band is fitted with a fold over with push button release clasp.</p><p>This beautiful wristwatch, powered by a RondRonda AG Powertech 515.24H, Swiss quartz movement, supporting: GMT, second time zone, hour, minute, second, date functions.</p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">This stylish Swiss-made timepiece is sure to complete any man\'s collection.</font></font></p>', 30, '1', '664.99', '664.99', '270', '1523870563', 'no', 'men,watch', 'ok', '0', '34', 99, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '0', 'percent', '20', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559637372, NULL, 'no', ''),
(142, 0, 0, '[]', 'Apple iPhone-8-PLUS', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                                                                <p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Condition:</font></font><span style=\"white-space:pre\">  </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">New: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is ... Read more</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Brand:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Apple</font></font></font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Style:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Touch Screen</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Model:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">iPhone 8+ 64gb</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Camera Resolution:</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">12mp</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Network:</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Unlocked</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Cellular Band:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Celular Unlocked</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">MPN:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">appleiPhone8plus</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Features:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3G Data Capable, 4G Data Capable, 4K Video Recording, Accelerometer, Bluetooth Enabled, Dual Rear Cameras, Fingerprint Sensor</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Color:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Red</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Lock Status:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Unlocked</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Storage Capacity:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">64GB</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Screen Size:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">5.5</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Model Number:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">iPhone 8 Plus</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Memory Card Type:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Not Applicable</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Contract:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Without Contract</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Processor:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">A11 Bionic</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Operating System:</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">iOS</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">RAM:</font></font><span style=\"white-space:pre\"> </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">3gb</font></font><span style=\"white-space:pre\">  </span><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">UPC:</font></font><span style=\"white-space:pre\"> </span></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">1234567890999</font></font></p>', 81, '1', '794.00', '794.00', '200', '1523871010', 'ok', 'phone,iphone', 'ok', '0', '63', 99, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '0', 'percent', '30', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1551786979, NULL, 'no', ''),
(143, 0, 0, '[]', 'LG V30 Plus (H930DS)', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>4GB RAM / 128GB ROM</p><p>16MP + 13MP Dual Main Camera</p><p>5MP Selfie Camera</p><p>Qualcomm MSM8998 Snapdragon 835 Octa core Processor</p><p>6.0\" Quad HD OLED Display</p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Dual Nano-SIM (4G + 3G)</font></font></p><p>Fingerprint Sensor</p>', 81, '1', '625.00', '625.00', '20', '1523871342', 'no', 'phone,mobile,lg', 'ok', '0', NULL, 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '10', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', '');
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `pcimage`, `num_of_pcimgs`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(144, 0, 0, '[]', 'NEW Asus Zenfone 5', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Brand:Asus</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Model:zenfone5</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">MPN:Does Not Apply</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Contract:Without Contract</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Model Number:ZE620KL</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Operating System:Android</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Features:3G Data Capable,4G Data Capable,Accelerometer,Bluetooth Enabled,</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Screen Size:6.2</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Lock Status:Factory Unlocked</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Memory Card Type:MicroSD</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Processor:Octa Core</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">RAM:4GB</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Country/Region of Manufacture:China</font></font></p>', 81, '1', '409.00', '409.00', '28', '1523871767', 'no', 'mobile,cellphone,asus', 'ok', '0', NULL, 199, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '23', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1530089327, NULL, 'no', ''),
(145, 0, 0, '[]', 'Project Kit', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>Includes 20V Lithium drill for a variety of home projects</p><p>Lithium Ion Battery - Always Ready, holds a charge up to 18 months</p><p>The 11 postion clutch prevents stripping and overdriving screws</p><p>Includes 68 hand tools and accessories. Cordless design offers easy use and portability</p><p>Includes carrying bag for easy portability and storage</p>', 83, '1', '70.72', '70.72', '34', '1523872566', 'no', 'tools', 'ok', '0', NULL, 50, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(146, 0, 0, '[]', 'Hardware Multitools', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Free use: can be used for storage such as: small blade, small hook, marking tool</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Strong features: a solid plastic shell even if it is put into the pocket will not squeeze deformation, the track will not automatically slide out of self-locking</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Deluxe Package:15 gadgets available for practice such as lock, computer, or phone screen</font></font></p>', 83, '1', '11.58', '11.58', '0', '1523872930', 'no', 'tools', 'ok', '0', NULL, 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 2, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1527064007, NULL, 'no', ''),
(147, 0, 0, '[]', 'iFixit Pro Tech Toolkit', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>Developed over 5 years using the data from thousands of repair manuals to have all the right tools.</p><p>All tools designed and manufactured by iFixit using the highest quality materials and methods.</p><p>Includes the 64 Bit Driver Kit, the highest quality most comprehensive CNC machined bit set.</p><p>Completely re-engineered to provide all the tools that you need, and none that you don\'t.</p><p>Covered by iFixit’s Lifetime Warranty</p>', 83, '1', '91.97', '91.97', '23', '1523873174', 'no', 'tools', 'ok', '0', NULL, 140, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '34', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1529991614, NULL, 'no', ''),
(148, 0, 0, '[]', 'Mechanics ToolSet', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Updated version of the best selling CTK170CMP, this new set has a new &amp; sturdier blow mold case as well as new &amp; improved Crescent screwdrivers</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Contains a carefully selected assortment of hand tools needed for most industrial, mechanical, and consumer applications</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Set includes 1/4\", 3/8\" &amp; 1/2\" drive tools (SAE &amp; Metric). Drive Type-6 and 12 Point</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Tools meet stringent new ANSI and ASME specifications and come with a full satisfaction guarantee</font></font></p><p><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">All tools contained in a sturdy, folding plastic case for easy storage and transport</font></font></p>', 83, '1', '96.28', '96.28', '34', '1523873424', 'no', 'tool', 'ok', '0', NULL, 200, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '33.98', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1529991635, NULL, 'no', ''),
(149, 0, 0, '[]', 'Drive Socket Set', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>DirectTorque Technology</p><p>Polished chrome vanadium finish</p><p>Knurled control ring</p><p>Hard stamped markings</p>', 83, '1', '105.97', '105.97', '34', '1523873834', 'no', 'tool', 'ok', '0', NULL, 50, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '0', 'percent', '4', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189068, NULL, 'no', ''),
(150, 0, 0, '[]', 'ANBES Soldering IronKit', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p>【Soldering Iron Support Station】- Standard dual spring soldering iron holder with sponge is a very useful tool when the soldering iron work.It has a secure base and it is more safer than any other thin soldering stand.The maximum extent to avoid the user was burned and damaged.</p><p>【Soldering Iron Unique Features】- Superior professional soldering iron has 5 multiple tips replacement, Heat and impact resistant design of screw thread so the iron head is not easy to drop.Adjustable Temperature from 200℃-450℃.Heat up fast and work great.</p><p>【Solder Sucker Desoldering Pump】- Rugged metal construction,the desoldering pump is high pressure vacuum tube with aluminum body frame, which allows easy one-handed use, best for removing solder from PCB through hole solder joints.</p><p>【Widely Used &amp; Carry Portable】- Soldering iron tools widely used for welding circuit board, appliance repair, Home DIY hobbyists,jewelry welding.You can take it anywhere and you will be able to find the tools you need in the carry bag.</p><p>【14-In-1 Soldering Kit】- Soldering iron kit comes with soldering iron,desoldering pump, 5 multiple soldering tips, tin wire tube, soldering iron stand, tweezers, wire stripper cutter, 2 electronic wire.</p>', 83, '1', '36.43', '36.43', '45', '1523874173', 'no', 'tools', 'ok', '0', NULL, 200, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '0', 'percent', '5', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559853065, NULL, 'no', ''),
(151, 0, 0, '[]', 'Ultra Light Embroidered', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                                                                <p>Center Frame Side Frame Lining: 100% Polyester; Back: 92% Nylon, 8% Spandex</p><p>Imported</p><p>Hook and Eye closure</p><p>Hand Wash</p><p>Natural shaping without the extra bulk</p><p>2-ply back for added back smoothing</p>', 9, '1', '43.98', '43.98', '23', '1523874883', 'ok', 'women', 'ok', '0', '150', 300, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1556804167, NULL, 'no', ''),
(152, 0, 0, '[]', 'Avidlove Sleepwear', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                        <ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(148, 148, 148); padding: 0px; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 13px;\"=\"\"><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">M : Bust 37.6\"---Waist 33.5\" ; L : Bust 40.0\"---Waist 35.1\"</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">XL : Bust 43.9\"---Waist 36.7\" ; XXL : Bust 47.8\"---Waist 38.2\"</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Our Model Information: Height 175cm, Bust 33.3\", Waist 24.3\", Hip 35.3\", she is fit for M size</span></li></ul>', 10, '1', '13.59', '13.59', '2', '1523875166', 'no', 'women', 'ok', '0', '15', 250, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1526542732, NULL, 'no', ''),
(153, 0, 0, '[]', 'Full-Coverage Underwire', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                        <p>80% Nylon, 20% Elastane</p><p>Imported</p><p>Hook and Eye closure</p><p>Machine Wash</p><p>Full-coverage bra featuring underwire, foam cups for enhanced fit and wide, elastic-free side panels for smooth look under clothing</p><p>Front-adjustable shoulder straps for convenience and ease</p><p>Double hook-and-eye closure at back</p>', 9, '1', '19.99', '19.99', '22', '1523875656', 'no', 'women', 'ok', '0', '150', 300, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '0', 'percent', '2', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561967469, NULL, 'no', ''),
(154, 0, 0, '[]', 'Babydoll Mini Sleepwear', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '<p>Avidlove Bridal Lingerie Set Sheer Babydoll Lace Cup Chemises Nightwear</p><p>Get flirty in this on-trend and sheer lace babydoll set</p><p>Features:A nude babydoll,lace trim,floral applique on the cups, adjustable spaghetti straps and matching g-string panty</p><p>Note:The size is larger than usual size,please order one or two size down</p><p>Package Content: 1 x Women Lingerie Set(Babydoll+G-String+Scarf)</p>', 10, '1', '16.29', '16.29', '10', '1523875928', 'no', 'women,sleepware', 'ok', '0', '15', 200, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '0', 'percent', '3', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189066, NULL, 'no', ''),
(155, 0, 0, '[]', 'BriLove Necklace Set', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                        <p>♥ Material &amp; Craft ♥: Adorned with selected Austrian Crystal, crafted with eco-friendly Zinc alloy, Lead-Free &amp; Nickel-Free, this special design is born to match the clothes and your unique beauty.</p><p>♥ Specifications &amp; Size ♥: Necklace: Pendant Size: 5.2*2.1 in; Chain Length (Adjustable): 14.8-17.4 in. Earrings Size (Pierced): 1.8*0.6 in. Total Weight: 83g.</p><p>♥ Any-Occasion Accessory ♥: Suitable for wedding, engagement, graduation, party, prom, daily wear and any event to be beautiful goddess.</p><p>♥ Gift To Who You Love ♥: Comes with exquisite gift pouch or box. Delicate and surprise gift idea for your best friend, lover, girlfriend, fiancee, wife, mother, daughter, grandma on Christmas, Birthday, Anniversary, Valentine’s Day, Mother’s Day.</p><p>♥ Considerate Service ♥: Please feel free to contact us if you have any concern about this item. We will try our best to promise you an enjoyable shopping experience.</p><div><br></div>', 11, '1', '18.99', '18.99', '11', '1523876652', 'no', 'jewelry', 'ok', '0', '9', 499, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 7, NULL, '0', 'percent', '2', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559787556, NULL, 'no', ''),
(156, 0, 0, '[]', 'Stainless Steel Watch', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                        <p>Swiss Made watch with Cartier Calibre 059 Swiss-quartz movement</p><p>Scratch-resistant-sapphire crystal; Case diameter: 22 mm</p><p>Solid polished stainless steel case and uniquely-designed braided stainless steel bracelet</p><p>Roman numeral white grained dial; Sword-shaped blued steel hands; Octagonal crown set with spinel crystal piece</p><p>Water resistant to 99 feet (30 M): withstands rain and splashes of water, but not showering or submersion</p>', 11, '1', '4530.00', '4530.00', '0', '1523876978', 'no', 'watch,women ', 'ok', '0', '9', 10, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '0', 'percent', '23', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189086, NULL, 'no', ''),
(157, 0, 0, '[]', 'Parfum Spray', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '<p>Eau de Toilette or Eau de Parfum? The difference lies in the volume of perfume oil. While Eau de Toilette contains 5-9%, Eau de Parfum contains more, usually 8-14%. Eau de Parfums therefore last longer and smell more intense.&nbsp;</p><div><br></div>', 37, '1', '51.00', '51.00', '0', '1523877971', 'no', 'Perfum', 'ok', '0', '14', 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '0', 'percent', '3.96', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189106, NULL, 'no', ''),
(158, 0, 0, '[]', 'Chânêl coco Noir', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '<p>for Woman. EDP 3.4 fl oz, 100 ml</p><p>100 % Authentic Original Perfume Designer.</p><p>This perfume made of high quality</p><p>Fast ship over 200 countries.</p><p>Free tax worldwide</p>', 37, '1', '158.99', '158.99', '0', '1523878171', 'no', 'perfum', 'ok', '0', '14', 119, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '0', 'percent', '2', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559900416, NULL, 'no', ''),
(159, 0, 0, '[]', 'imac pro 27inch', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 87, '4', '5000.00', '4500.00', '', '1524784496', 'no', 'apple,desktop,computer,imac,imac pro', 'ok', '0', '63', 500, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '', 'percent', '', 'percent', '[\"rgba(51,51,51,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1559925280, NULL, 'no', ''),
(160, 0, 0, '[]', 'iPhone X', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '<p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 85, '2', '1200.00', '1000.00', '', '1524784743', 'no', 'apple,iphone,mobile', 'ok', '0', '63', 499, 'pcs', '{\"name\":\"null\",\"value\":\"null\"}', 9, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(51,51,51,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557910765, NULL, 'no', ''),
(161, 0, 0, '[]', 'DSLR Camera', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><span style=\"text-align: justify;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 88, '2', '1000.00', '800.00', '', '1524784856', 'no', 'camera,dslr', 'ok', '0', '143', 500, 'pcs', '{\"name\":\"null\",\"value\":\"null\"}', 8, NULL, '', 'percent', '', 'percent', '[\"rgba(0,0,0,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1559940790, NULL, 'no', ''),
(162, 0, 0, '[]', 'Macbook Pro 2017', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                        <p><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">is simply dummy text of the printing and typesetting industry&nbsp;</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">Lorem Ipsum</span><span [removed]=\"text-align: justify;\" style=\"transition: all 0.2s ease-in-out;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 86, '2', '1000.00', '900.00', '', '1524845643', 'ok', 'apple,macbook,macbook pro', 'ok', '0', '63', 499, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 9, NULL, '', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(33,33,33,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1557922044, NULL, 'no', ''),
(163, 0, 0, '[]', 'Apple Bundle Offer', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry </span><span [removed]=\"text-align: justify;\">is simply dummy text of the printing and typesetting industry</span><br></p>', 0, '2', '8000.00', '7000.00', '100', '1524845809', 'ok', 'apple,macbook,iphone,macbook pro,imac,imac pro', 'ok', NULL, NULL, 36, 'pc', '', 107, NULL, '10', 'percent', '10', 'amount', NULL, NULL, NULL, NULL, '0', NULL, NULL, 'ok', 0, '1524977086', NULL, NULL, NULL, 1560987952, '[{\"product_no\":\"1\",\"product_id\":\"160\",\"quantity\":\"1\"},{\"product_no\":\"3\",\"product_id\":\"162\",\"quantity\":\"1\"},{\"product_no\":\"4\",\"product_id\":\"159\",\"quantity\":\"1\"}]', 'yes', ''),
(212, 0, 0, '[]', '2018 BMW X5 xDrive40e iPerformance', '{\"type\":\"vendor\",\"id\":\"10\"}', 1, '<p><span style=\"color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px; font-weight: 700;\">Key Features &amp; Specs</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\"><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\">Engine : ntercooled Turbo Gas/Electric I-4 2.0L/122 cu in<br></span><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\">Transmission: Automatic w/OD<br></span><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\">Drive Train : All Wheel Drive<br></span><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\">Seating: 5<br></span><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\">Horsepower: 313<br></span><span style=\"font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\">Battery Range: 14 mi</span></span></p><p><br></p>', 1, '1', '63750.00', '63750.00', '0', '1530514178', 'no', 'car', 'ok', '0', '45', 50, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 4, NULL, '0', 'percent', '0', 'percent', '[\"rgba(15,14,14,1)\",\"rgba(209,200,200,1)\",\"rgba(66,58,58,1)\",\"rgba(117,106,106,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557893466, NULL, 'no', 'ok'),
(172, 2, 8, '[\"7\",\"21\"]', 'KOKO COLLECTION', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                                                                                                                                                                                        <p class=\"p1\" style=\"font-size: 13px; color: rgb(0, 0, 0); font-family: Lato, sans-serif;\"><span style=\"margin: 0px;\"><strong style=\"margin: 0px;\">Matte Liquid Lipstick<br style=\"margin: 0px;\"></strong>The Matte Liquid Lipsticks (Okurrr, Gorg and Khlo$) have high intensity pigment for an instant bold matte lip. The extremely long-wearing lipstick contains moisturizing ingredients for a comfortable, emollient and silky feel that does not dry your lips out.</span></p><p class=\"p2\" style=\"font-size: 13px; color: rgb(0, 0, 0); font-family: Lato, sans-serif;\"><strong style=\"margin: 0px;\">﻿Gloss<br style=\"margin: 0px;\"></strong>Damn Gina is a soft, shimmering gloss that glides on the lips smoothly and evenly leaving behind a luminous and voluminous effect. A blend of vitamin E and highly emollient ingredients provide hydration and moisturize the lips, while natural lip enhancers provide volume. The gloss has an even and saturated application that delivers a long lasting brilliantly glossy end look.</p>', 11, '1', '40.00', '40.00', '0', '1528779276', 'ok', 'kylie,lip', 'ok', '0', '', 493, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 47, NULL, '0', 'percent', '0', 'percent', '[\"rgba(196,15,26,1)\",\"rgba(130,11,33,1)\",\"rgba(252,86,14,1)\",\"rgba(201,3,182,1)\"]', NULL, NULL, '[{\"no\":\"1\",\"title\":\"Size\",\"name\":\"choice_1\",\"type\":\"radio\",\"option\":[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]}]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1557915983, NULL, 'no', ''),
(173, 0, 0, '[]', 'THE WET SET', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                        <p>The Kylie Cosmetics by Kylie Jenner Wet Set highlighter palette features four silky-smooth, cream based highlighter shades with one stroke intensity. Each Wet Set highlighter can be used to create your perfect customized glow.</p><p><br></p><p><br></p>', 11, '1', '62.00', '62.00', '0', '1528779803', '0', 'kylie', 'ok', '0', '221', 0, '50', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<div>4 Pressed Illuminating Powder Highlighters (net weight \\\\\\/ pods net 4 X 0.39 oz 4 X 11 g)<\\\\\\/div><div><br><\\\\\\/div>\\\"]\"}', 6, NULL, '0', 'percent', '0', 'percent', '[\"rgba(240,193,232,1)\",\"rgba(222,211,157,1)\",\"rgba(199,179,156,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1557942540, NULL, 'no', ''),
(174, 0, 0, '[]', 'MAKEUP BAG', '{\"type\":\"admin\",\"id\":\"1\"}', 4, '                                        <p>A medium-sized sparkly metallic makeup bag perfect for storing and carrying all of your favorite #KylieCosmetics products. This makeup bag is in our limited edition birthday pink!<br></p>', 11, '1', '30.00', '30.00', '0', '1528780257', 'ok', 'kylie', 'ok', '0', '221', 0, '50', '{\"name\":\"null\",\"value\":\"null\"}', 28, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561220783, NULL, 'no', ''),
(175, 0, 0, '[]', 'Playboy London', '{\"type\":\"admin\",\"id\":\"1\"}', 30, '                                                                                <p>Top notes: Mandarin, galbanum and pink grape fruit</p><p>Heart notes: Rose, cinnamon and toscanol molecule</p><p>Base notes: Cedar, tonka and pisco brandy</p>', 114, '1', '68.00', '68.00', '0', '1528785151', 'ok', 'playboy', 'ok', '0', NULL, 0, '50', '{\"name\":\"null\",\"value\":\"null\"}', 24, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1559508010, NULL, 'no', ''),
(176, 0, 0, '[]', 'Playboy Deodorant Spray', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '<p>Ideal for everyday</p><p>Use for men only</p><p>Sophisticated fragrance</p><p>Quality product</p><p>Volume: 150 ml</p><div><br></div>', 89, '1', '12.00', '12.00', '0', '1528785385', '0', 'playboy', 'ok', '0', '222', 120, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 9, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557195772, NULL, 'no', ''),
(177, 0, 0, '[]', 'City Vision Aviator Sunglasses', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '                                        <div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Place of Origin:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Zhejiang, China (Mainland)</span></div><div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Brand Name:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">flymoon</span></div><div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Model Number:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">ZW3104</span></div><div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Style:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Fashion Sunglasses</span></div><div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Lenses Material:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">polarized</span></div><div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Frame Material:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Alloy</span></div><div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Age:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">adult</span></div><div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Lenses Optical Attribute:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Polarized</span></div><div><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">Frame Color:&nbsp;</span><span style=\"color: rgb(102, 102, 102); white-space: nowrap;\">S Black</span></div>', 89, '1', '10.00', '10.00', '0', '1528785736', '0', 'playboy', 'ok', '0', '222', 44, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 10, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1557189104, NULL, 'no', ''),
(178, 0, 0, '[]', 'RABBIT HEAD WATCH', '{\"type\":\"admin\",\"id\":\"1\"}', 5, '                                        <p>Go sleek in the Rabbit Head Leather watch. Smooth stainless steel case and back with a genuine leather strap. Printed dial with applied indexes and Swiss movement. The classic black on black design illuminates the iconic Rabbit Head logo.<br></p>', 89, '1', '74.80', '74.80', '0', '1528786052', 'ok', 'playboy,watch', 'ok', '0', '222', 0, 'pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p>Case:: 45mm, Band: 20mm&nbsp;<\\\\\\/p><p>Details: Swiss Movement Ronda 763. Water Resistant: 5 ATM.<\\\\\\/p><p>Designed: For Men<\\\\\\/p><p>Imported. 1 year limited warranty.<\\\\\\/p>\\\"]\"}', 52, NULL, '0', 'percent', '0', 'percent', '[\"rgba(10,10,10,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1560305761, NULL, 'no', ''),
(179, 0, 0, '[]', 'PLAYBOY - Bundle Offer', '{\"type\":\"admin\",\"id\":\"1\"}', 0, '<p>4in1 Bundle Offer</p><p><br></p><p>London Playboy EDT 100ml</p><p><br></p><p>Deodorant Spray 150ml</p><p><br></p><p>City Vision Aviator Sunglasses</p><p><br></p><p>Current Watch</p>', 0, '1', '99.00', '99.00', '0', '1528786287', '0', 'playboy', 'ok', NULL, NULL, 495, '5', '', 9, NULL, '0', 'percent', '0', 'percent', NULL, NULL, NULL, NULL, '0', NULL, NULL, '0', 0, '1531129101', NULL, NULL, NULL, 1559565350, '[{\"product_no\":\"0\",\"product_id\":\"175\",\"quantity\":\"1\"},{\"product_no\":\"1\",\"product_id\":\"176\",\"quantity\":\"1\"},{\"product_no\":\"2\",\"product_id\":\"177\",\"quantity\":\"1\"},{\"product_no\":\"3\",\"product_id\":\"178\",\"quantity\":\"1\"}]', 'yes', ''),
(180, 0, 0, '[]', 'Canon Digital SLR Camera', '{\"type\":\"admin\",\"id\":\"1\"}', 16, '                                                                                <p>Hobbyist</p><p>• 18 megapixels</p><p>• Sensor type: APS-C / 22.3 x 14.9 mm CMOS sensor</p><p>• Standard ISO range: 100 – 6400</p><p>• Built-in WiFi / NFC</p>', 88, '1', '3500.00', '3500.00', '0', '1528787247', 'ok', 'Canon', 'ok', '0', '143', 486, 'Pc', '{\"name\":\"[\\\"Pixel\\\",\\\"Wifi\\\"]\",\"value\":\"[\\\"<p>18<\\\\\\/p>\\\",\\\"<p>Builtin<\\\\\\/p>\\\"]\"}', 168, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, '0', 0, NULL, NULL, NULL, NULL, 1561631195, NULL, 'no', ''),
(184, 0, 0, '[]', 'Convertible Couch Chaise Lounger Sofa Bed', '{\"type\":\"vendor\",\"id\":\"16\"}', 21, '<p>✔ MODERN STYLISH DESIGN: The modern, minimal design, with plush cushions, black oak wood fixtures, and two large accent pillows, will stylishly fit into any home decor setting.</p><p>✔ 3 ADJUSTABLE POSITIONS: Both armrests can be independently adjusted up or down to create a loveseat, a bed, or a chaise lounger, depending on your seating or sleeping needs.</p><p>✔ FOLDS DOWN INTO A BED: Quickly and easily converts from loveseat into a single person sleeper and back again, which is perfect for a quick relaxing nap or unexpected guests who need a place to sleep.</p><p>✔ DURABLE COMFORT: A high quality thick oak frame creates a sturdy, relaxing base that can support up to 462 lbs of weight, while the linen fabric cover over medium density foam, adds a luxurious, comfortable touch.</p><p>✔ REMOVABLE PILLOW COVER: The linen fabric pillow cover zips open and is removable for easy cleaning and maintenance of both the cover and the foam pillow.</p>', 80, '1', '189.99', '189.99', '0', '1530427959', 'no', 'home', '0', '0', NULL, 500, 'Pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p>ASIN<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>B07C759RCX<\\\\\\/p><p>Customer Reviews<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>2.0 out of 5 stars&nbsp; &nbsp; 2 customer reviews&nbsp;&nbsp;<\\\\\\/p><p>2.0 out of 5 stars<\\\\\\/p><p>Best Sellers Rank<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>#574,020 in Home &amp; Kitchen (See top 100)&nbsp;<\\\\\\/p><p>Shipping Weight :<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>63.1 pounds (View shipping rates and policies)<\\\\\\/p><p><br><\\\\\\/p>\\\"]\"}', 0, NULL, '0', 'percent', '0', 'percent', '[\"rgba(29,58,212,1)\",\"rgba(227,213,213,1)\",\"rgba(196,151,151,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(185, 0, 0, '[]', '7 Piece Black Photo Frame ', '{\"type\":\"vendor\",\"id\":\"16\"}', 21, '<p>Seven black decorative frames with removable contrasting white mats. Frame finishes available in: Black/Walnut/White</p><p>Frame sizes included in kit: (1) 12x16 frame with mat for 8x10 image display (2) 8x10 frames with mat for 5x7 image display (4) 6x8 frames with mat for 4x6 image display</p><p>Photo frames hang either vertically or horizontally with secure hanging hardware included with each frame.</p><p>Easy-to-Hang wall template with multiple layout options to help you build the perfect gallery wall and saves the hassle of measuring and framing</p><p>Two sets of contemporary art prints to add a touch of elegance to your décor</p>', 80, '1', '40.99', '40.99', '0', '1530428570', 'no', 'home', '0', '0', NULL, 50, 'Pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p>Product Dimensions<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>16.2 x 3.3 x 18.2 inches<\\\\\\/p><p>Item Weight<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>8.75 pounds<\\\\\\/p><p>Shipping Weight<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>9.25 pounds (View shipping rates and policies)<\\\\\\/p><p>Manufacturer<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>Pinnacle Frame<\\\\\\/p><p>ASIN<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>B0083GP89G<\\\\\\/p><p>Item model number<span style=\\\\\\\"white-space: pre;\\\\\\\">\\\\t<\\\\\\/span>11FW1443<br><\\\\\\/p>\\\"]\"}', 0, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(150,135,135,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(186, 0, 0, '[]', 'ecobee4 Smart Thermostat', '{\"type\":\"vendor\",\"id\":\"16\"}', 16, '<p>Room sensors: they measure temperature and occupancy allowing you to achieve the comfort settings you want in the rooms that matter most. One room sensor included, 2-packs sold separately</p><p>Save money: ecobee uses Advance sensing, external weather data, and learns your HVAC system to save you up to 23% on your heating and cooling bills* compared to a hold of 72 degrees</p><p>Great compatibility &amp; reliability: Ecobee4 works with the vast majority of residential HVAC systems. Check your compatibility by using the compatibility checker on the ecobee Website. 3yr warranty provided</p><p>Easy install: installation takes approximately 30 min and we provide in-app Guided videos to make it easy. No c-wireno problem – use the power extender kit included in the box</p><p>Works with your smarthome ecosystem: Amazon Alexa, Google assistant, Apple homekit, microsoft cortana, Samsung SmartThings, wink, IFTTT – Ecobee4 works with them all</p><p>Alexa built-in with speakers and microphones: its like having an Amazon echo dot built right into your thermostat!* some Alexa functionality not supported – see Alexa section below</p>', 83, '1', '218.88', '249.00', '0', '1530428926', 'no', 'tools', '0', '0', '180', 300, 'Pc', '{\"name\":\"[\\\"Technical Details\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Part Number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">EB-STATE4-01<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Weight<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1 pounds<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Product Dimensions<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">4 x 1 x 4 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item model number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">EB-STATE4-01<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2 Lithium Metal batteries required. (included)<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Size<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">One Size<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Color<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Black<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Style<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">ecobee4<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Voltage<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1 volts<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Package Quantity<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Type of Bulb<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">N\\\\\\/A<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Number Of Holes<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Display Style<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Touch screen<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Certification<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">(unset)<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Included Components<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">thermostat, Room Sensor, PEK, hardware pack, instructions, wire labels, mounting plate, trim plate<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries Included?<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Yes<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries Required?<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Yes<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Battery Cell Type<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Lithium Metal<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Warranty Description<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">3 year warranty<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 0, NULL, '12', 'percent', '0', 'percent', '[\"rgba(15,13,13,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok');
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `pcimage`, `num_of_pcimgs`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(187, 0, 0, '[]', 'Acer Predator Helios 300 Gaming Laptop', '{\"type\":\"vendor\",\"id\":\"16\"}', 16, '<p>Latest 7th Generation Intel Core i7-7700HQ Processor (Up to 3.8GHz) | Windows 10 Home 64-bit</p><p>Latest NVIDIA GeForce GTX 1060 with 6 GB of dedicated GDDR5 VRAM</p><p>15.6\" Full HD (1920 x 1080) widescreen IPS display, Red Backlit Keyboard</p><p>16GB DDR4 DRAM Memory &amp; 256GB SSD | Extra empty expandable hard drive slot for 2.5\" hard drives</p><p>Up to 7-hours of battery life</p>', 86, '1', '1049.00', '1049.00', '0', '1530429318', 'no', 'laptop', '0', '0', '64', 50, 'pc', '{\"name\":\"[\\\"Technical Details\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Screen Size<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">15.6 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Max Screen Resolution<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1920 x 1080<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Processor<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">3.8 GHz Intel Core i7<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">RAM<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">16 GB<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Hard Drive<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">256 GB Flash Memory Solid State<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Graphics Coprocessor<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">NVIDIA GeForce GTX 1060<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Chipset Brand<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">NVIDIA<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Card Description<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Dedicated<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Graphics Card Ram Size<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">6 GB<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Wireless Type<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">802.11.ac<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Number of USB 2.0 Ports<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Number of USB 3.0 Ports<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Average Battery Life (in hours)<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">7 hours<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 1, NULL, '0', 'percent', '0', 'percent', '[\"rgba(13,12,12,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1550848924, NULL, 'no', 'ok'),
(188, 0, 0, '[]', 'Leather Biker Jacket', '{\"type\":\"vendor\",\"id\":\"16\"}', 5, '                                        <p>Genuine lambskin leather</p><p>Two zipped chest and front pockets and two inside pockets</p><p>Stand collar with throat tab</p><p>Snap buttons at hem for structured fit</p><p>100% polyester lining</p>', 90, '1', '154.99', '154.99', '0', '1530429636', 'no', 'jackets', '0', '0', '165', 100, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '0', 'percent', '[\"rgba(36,31,31,1)\",\"rgba(102,38,11,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(189, 0, 0, '[]', 'Lightweight Jacket', '{\"type\":\"vendor\",\"id\":\"16\"}', 5, '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(148, 148, 148); padding: 0px; font-family: Arial, sans-serif; font-size: 13px;\"><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Fabric: 90% cotton</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Long Sleeve Full Zip Jacket</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Machine Washable (Recommended Hand Wash)</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Imported</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Please Choose You Normally Wear US size</span></li></ul>', 90, '3', '38.98', '38.98', '0', '1530431724', 'no', 'men', 'ok', '0', '166', 499, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 11, NULL, '0', 'percent', '0', 'percent', '[\"rgba(20,18,18,1)\",\"rgba(54,87,1,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557195752, NULL, 'no', 'ok'),
(190, 0, 0, '[]', 'Withings Lightweight Watch', '{\"type\":\"vendor\",\"id\":\"16\"}', 5, '<p>This Certified Refurbished product has been tested and certified to work like new, with minimal signs of wear, by a specialized third-party seller approved by Amazon. The product is backed by a minimum 90-day warranty and may arrive in a generic brown or white box. Accessories may be generic and not directly from the manufacturer.</p><p>Tracks Activities via Health Mate App</p><p>iOS and Android Compatible. Bluetooth 4.0 Connectivity</p><p>Automatic Activity Detection. Tracks Walking, Running, and Swimming</p><p>Monitors Sleep Quality. Vibrating Wake-Up Alarm</p>', 30, '1', '99.84', '99.84', '0', '1530434050', 'no', 'watch', 'ok', '0', '18', 499, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '0', 'percent', '0', 'percent', '[\"rgba(9,84,138,1)\",\"rgba(23,21,21,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189021, NULL, 'no', 'ok'),
(191, 0, 0, '[]', 'Classic Casual Comfortable Dress Shoes', '{\"type\":\"vendor\",\"id\":\"16\"}', 5, '<p>Demo</p>', 28, '1', '56.99', '56.99', '0', '1530434426', 'no', 'shoe', 'ok', '0', '33', 0, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 16, NULL, '0', 'percent', '0', 'percent', '[\"rgba(13,12,12,1)\",\"rgba(87,8,37,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559787513, NULL, 'no', 'ok'),
(192, 0, 0, '[]', 'Sofa/Livingroom Couch', '{\"type\":\"vendor\",\"id\":\"12\"}', 21, '<p>Easily assembles with a friend, no tools needed, in under 20 minutes</p><p>Stress-free fabrics were chosen to be durable and easy-to-clean</p><p>76.4 inches long with button tufted back cushions</p><p>A naturally-strong wood frame is wrapped in cozy, supportive foam cushioning</p><p>Smartly shipped in one box - all parts for assembling your sofa are located in the enclosed compartment on the bottom of the base section.</p>', 80, '1', '385.00', '385.00', '0', '1530435413', 'no', 'furniture', 'ok', '0', '224', 200, 'Pc', '{\"name\":\"[\\\"Technical Details\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Weight<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">73 pounds<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Product Dimensions<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">76.4 x 30.7 x 33.9 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item model number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">SSMC-RE<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Assembled Height<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">33.9 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Assembled Width<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">30.7 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Assembled Length<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">76.4 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Weight<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">73 Pounds<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 22, NULL, '0', 'percent', '0', 'percent', '[\"rgba(224,10,62,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561973679, NULL, 'no', 'ok'),
(193, 0, 0, '[]', 'Dark Grey  Curtains', '{\"type\":\"vendor\",\"id\":\"12\"}', 21, '<p>Two (2) Panel Per Package,Each panel measures 52\" W x 63\" L | Set measures 104\" W x 63\" L, 8 Grommets per panel.</p><p>Deconovo printed blackout curtains are also thermal insulated and prevent from heat escapes and blocks sunlight from entering the room.</p><p>They are silky, soft, drapery and very pleasant to touch and gives an expensive look to any room.</p><p>These thermal insulated blackout curtains are made of 100% polyester and are imported.</p><p>The curtains come ready to use. They are NOT machine washable.</p>', 80, '1', '80.00', '80.00', '0', '1530435821', 'no', 'furniture', 'ok', '0', '228', 299, 'Pc', '{\"name\":\"[\\\" Product description\\\"]\",\"value\":\"[\\\"<p>1. This printed blackout curtain is perfect for : Late sleepers, Shift workers, Seniors, Infants &amp; parents, Students, Computer operators, projectors and many more. They ensure that even if you are a light sleeper you will not be disturbed by the sound on the streets.<\\\\\\/p><p><br><\\\\\\/p><p>2. They will stop the outside world from creeping into your private moments so you can enjoy the privacy with family members and friends to the utmost.<\\\\\\/p><p><br><\\\\\\/p><p>3. The other good thing about these curtains is that they do not attract any kind of dust or mites. This means that you will not expose your baby to dust causing allergies.<\\\\\\/p><p><br><\\\\\\/p><p>4. Material: 100% Polyester, Imported.<\\\\\\/p><p><br><\\\\\\/p><p>5. Beside blocking all the light out, they will keep the room cool in the Summer and warm in the Winter!<\\\\\\/p><p><br><\\\\\\/p><p>6. Hand wash separately under 86 F, not bleached, iron at low temperatures. The images we display have the most accurate color possible.<\\\\\\/p>\\\"]\"}', 2, NULL, '0', 'percent', '0', 'percent', '[\"rgba(26,27,59,1)\",\"rgba(46,41,41,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189110, NULL, 'no', 'ok'),
(194, 0, 0, '[]', 'Linear Chandelier Centerpiece ', '{\"type\":\"vendor\",\"id\":\"12\"}', 21, '<p>LINEAR CHANDELIER: Rectangular canopy and a cluster of circular lamps make this light suitable for common areas.</p><p>LONG LIGHT FIXTURE: With its 24 inches in width and airy glass shades this centerpiece gives warm multidirectional lighting.</p><p>RUSTIC PENDANT LAMP: Timeless design for contemporary homes.</p><p>CHROME FINISH: Silver tones and light cognac glass compliment your interior style.</p><p>GUARANTEE: 100 % no hassle return policy.</p>', 80, '1', '199.99', '199.99', '0', '1530436249', 'no', 'chemex', 'ok', '0', '227', 49, 'Pc', '{\"name\":\"[\\\"Technical Details\\\",\\\" Product description\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Brand<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">MFR Light Fixtures<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Part Number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">FMLR-624198<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Product Dimensions<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">24.6 x 13.4 x 26.5 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item model number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">FMLR-624198<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Assembled Height<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">26.5 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Assembled Length<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">24.6 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Assembled Width<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">13.4 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Style<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Contemporary<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Color<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Silver, Light Cognac<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Material<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Metal<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Number of Lights<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">8<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Included Components<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Shade type 1: 5.9\\\\\\\" width x 7.5\\\\\\\" height; Shade type 2: 5.9\\\\\\\" width x 11.8\\\\\\\" height; Shade type 3: 6.5\\\\\\\" width x 9.1\\\\\\\" height; Ceiling canopy: 20.3\\\\\\\" width x 9\\\\\\\" depth x 1\\\\\\\" height<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Maximum Compatible Wattage<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">100 watts<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Fixture Features<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Assembly required<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Shade Material<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Glass<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\"><span class=\\\\\\\"a-declarative\\\\\\\" data-action=\\\\\\\"a-popover\\\\\\\" data-a-popover=\\\\\\\"{&quot;cache&quot;:&quot;true&quot;,&quot;closeButton&quot;:&quot;true&quot;,&quot;name&quot;:&quot;\\\\\\\\tLight Direction\\\\\\\\t&quot;,&quot;width&quot;:&quot;280&quot;,&quot;header&quot;:&quot;\\\\\\\\tLight Direction\\\\\\\\t&quot;,&quot;position&quot;:&quot;triggerRight&quot;,&quot;scrollable&quot;:&quot;false&quot;,&quot;url&quot;:&quot;\\\\\\/gp\\\\\\/jewelry\\\\\\/technical-specs-help\\\\\\/?ie=UTF8&amp;hideLogo=1&amp;page_ident=1000513541&quot;}\\\\\\\"><a class=\\\\\\\"a-link-normal\\\\\\\" target=\\\\\\\"_blank\\\\\\\" rel=\\\\\\\"noopener\\\\\\\" href=\\\\\\\"https:\\\\\\/\\\\\\/www.amazon.com\\\\\\/gp\\\\\\/jewelry\\\\\\/technical-specs-help\\\\\\/?ie=UTF8&amp;hideLogo=1&amp;page_ident=1000513541\\\\\\\" style=\\\\\\\"color: rgb(0, 102, 192); font-family: Arial;\\\\\\\">Light Direction<\\\\\\/a><\\\\\\/span><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Downlight<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Power Source<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">corded-electric<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries Included?<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">No<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries Required?<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">No<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Certification<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">ETL Listed<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\"><span class=\\\\\\\"a-declarative\\\\\\\" data-action=\\\\\\\"a-popover\\\\\\\" data-a-popover=\\\\\\\"{&quot;cache&quot;:&quot;true&quot;,&quot;closeButton&quot;:&quot;true&quot;,&quot;name&quot;:&quot;\\\\\\\\tType of Bulb\\\\\\\\t&quot;,&quot;width&quot;:&quot;280&quot;,&quot;header&quot;:&quot;\\\\\\\\tType of Bulb\\\\\\\\t&quot;,&quot;position&quot;:&quot;triggerRight&quot;,&quot;scrollable&quot;:&quot;false&quot;,&quot;url&quot;:&quot;\\\\\\/gp\\\\\\/jewelry\\\\\\/technical-specs-help\\\\\\/?ie=UTF8&amp;hideLogo=1&amp;page_ident=1000516121&quot;}\\\\\\\"><a class=\\\\\\\"a-link-normal\\\\\\\" target=\\\\\\\"_blank\\\\\\\" rel=\\\\\\\"noopener\\\\\\\" href=\\\\\\\"https:\\\\\\/\\\\\\/www.amazon.com\\\\\\/gp\\\\\\/jewelry\\\\\\/technical-specs-help\\\\\\/?ie=UTF8&amp;hideLogo=1&amp;page_ident=1000516121\\\\\\\" style=\\\\\\\"color: rgb(0, 102, 192); font-family: Arial;\\\\\\\">Type of Bulb<\\\\\\/a><\\\\\\/span><\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Requires eight 100-watt E26 bulbs (not included)<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Wattage<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">100 watts<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\",\\\"<p>Brighten your room with this elegant pendant light. The chandelier features beautiful glass globes suspended from a rectangular-shaped base for a modish twist on a classic fixture.<\\\\\\/p><p><br><\\\\\\/p><p>Consider picking up an extra one for your vacation home or adding one as a thoughtful gift.<\\\\\\/p>\\\"]\"}', 2, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189065, NULL, 'no', 'ok'),
(195, 1, 5, '[\"12\"]', 'Medallion Pillow', '{\"type\":\"vendor\",\"id\":\"12\"}', 21, '<p>This artisanal pillow features medallion shapes with hints of Moroccan tile. The eye-catching design is a perfect blend of modern and classic, while a velvet back, resilient pillow insert and hidden zipper provide high quality touches.</p><p>Sophisticated, artisanal style has modern and classic touches</p><p>Rayon/polyester/cotton blend front with velvet back</p><p>Pillow Cover Front:42% Rayon, 30% Polyester, 28% Cotton. Pillow Cover Back: 100% Polyester. Insert Shell: 100% Cotton. Stuffing: 100% Polyester</p><p>Made in USA and Imported</p><p>Removable plush fiber-filled insert included</p><p>Pillow cover features hidden bottom zipper</p>', 80, '1', '39.99', '39.99', '0', '1530436721', 'no', 'pillow', 'ok', '0', '224', 399, 'Pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p>17\\\\\\\" x 17\\\\\\\"<\\\\\\/p><p>Spot clean with damp white cloth and allow to air dry<\\\\\\/p><div><br><\\\\\\/div>\\\"]\"}', 59, NULL, '0', 'percent', '0', 'percent', '[\"rgba(172,210,237,1)\",\"rgba(232,53,53,1)\",\"rgba(116,171,138,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561974162, NULL, 'no', 'ok'),
(196, 1, 3, '[\"12\"]', 'Stone & Beam Cheyanne Modern Accent Chair', '{\"type\":\"vendor\",\"id\":\"12\"}', 21, '<p>he crisp silhouette and plush cushioning of this arm chair add contemporary appeal to any space. Its linen-look fabric is high performing and soft to the touch for extra coziness.</p><p>30.7\"W x 35.4\"D x 36.2\"H</p><p>Hardwood frame covered in polyester fabric</p><p>Modern style</p><p>Removable seat cushion</p><p>Minimal assembly; just remove legs from the zippered pocket underneath and attach</p><p>Free returns for 30 days. 3-year warranty.</p>', 80, '1', '231.00', '230.97', '0', '1530437109', 'ok', '', 'ok', '0', '226', 94, 'Pc', '{\"name\":\"[\\\"Technical Details\\\"]\",\"value\":\"[\\\"<p>Item Weight<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>50.7 pounds<\\\\\\/p><p>Product Dimensions<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>30.7 x 35.4 x 36.2 inches<\\\\\\/p><p>Item model number<span style=\\\\\\\"white-space:pre\\\\\\\">\\\\t<\\\\\\/span>AS-5018-Denim<\\\\\\/p>\\\"]\"}', 39, NULL, '15', 'percent', '0', 'percent', '[\"rgba(80,113,176,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1558491734, NULL, 'no', 'ok'),
(197, 0, 0, '[]', 'Floral Print Crop Cami Top', '{\"type\":\"vendor\",\"id\":\"1\"}', 4, '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(148, 148, 148); padding: 0px; font-family: Arial, sans-serif; font-size: 13px;\"><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Material: 100% Polyester</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Two Pieces Tie Back Crop Cami Top And Ruffle Trim Shorts Outfit</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Pattern Type: Floral /Striped /Solid Plain</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Casual, Stylish and sexy, great for beach wear, vacation or casual wear in Summer day</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Please refer to the detailed size measurement below</span></li></ul>', 40, '1', '23.99', '23.99', '0', '1530437664', 'no', 'women', 'ok', '0', '163', 198, 'Pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">Size Chart:<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">XS:Bust:29.9inch, Waist Size:22.0inch, Hip Size:38.6inch, Thigh:24.4inch, Shorts Length:12.0inch, Top Length:15.6inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">S:Bust:31.5inch, Waist Size:23.6inch, Hip Size:40.2inch, Thigh:25.2inch, Shorts Length:12.2inch, Top Length:15.9inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">M:Bust:33.1inch, Waist Size:25.2inch, Hip Size:41.7inch, Thigh:26.0inch, Shorts Length:12.4inch, Top Length:16.3inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">L:Bust:34.6inch, Waist Size:26.8inch, Hip Size:43.3inch, Thigh:26.8inch, Shorts Length:12.6inch, Top Length:16.7inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">Size Chart_Yellow\\\\\\/Red#:<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">S:Top Length:13.8inch,Shorts Length:12.2inch,Thigh:33.1inch,Hip Size:43.3inch,Waist Size:22.0-37.8inch,Bust:36.2inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">M:Top Length:14.2inch,Shorts Length:12.6inch,Thigh:33.9inch,Hip Size:44.9inch,Waist Size:23.6-39.4inch,Bust:37.8inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">L:Top Length:14.6inch,Shorts Length:13.0inch,Thigh:34.6inch,Hip Size:46.5inch,Waist Size:25.2-40.9inch,Bust:39.4inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">Size Chart_Black#1:<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">S: Bust:36.2inch, Sleeve Length:6.9inch, Waist Size:26.8inch, Hip Size:40.9inch, Top Length:16.3inch,Shorts Length:12.0inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">M: Bust:37.8inch, Sleeve Length:7.3inch, Waist Size:28.3inch, Hip Size:42.5inch, Top Length:16.7inch, Shorts Length:12.4inch<\\\\\\/span><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><br style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\"><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px;\\\\\\\">L: Bust:39.4inch, Sleeve Length:7.7inch, Waist Size:29.9inch, Hip Size:44.1inch, Top Length:17.1inch, Shorts Length:12.8inch<\\\\\\/span><br><\\\\\\/p>\\\"]\"}', 2, NULL, '0', 'percent', '0', 'percent', '[\"rgba(196,29,79,1)\",\"rgba(119,47,191,1)\",\"rgba(184,166,12,1)\",\"rgba(237,42,42,1)\",\"rgba(106,184,179,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189080, NULL, 'no', 'ok'),
(198, 0, 0, '[]', 'Comfort Fit Stretch Slim Pant', '{\"type\":\"vendor\",\"id\":\"1\"}', 4, '<p>SLENDERIZE : Slim Leg shape gives a streamlined look. Wear with shorter tops or long tunics.</p><p>COMFORT : Pull On Style (No closures). Contoured waistband with seam detail smooths and feels great. Faux front and back pockets. Added belt loops on front and back - add your favorite belt or sash!</p><p>FABRIC WITH FUNCTION: Our classic stretch woven fabric. Looks chic, crisp, feels like a dream. Solid Colors: 74% Rayon 22% Nylon 4% Spandex. Melange Colors: 48% Polyester 27% Rayon 21%Nylon 4% Spandex</p><p>INSEAM: Regular 31\" Petite 28\". Model is 5\'9\" wearing size 4. MEASUREMENTS ON SIZE CHART ARE BODY MEASUREMENTS</p><p>IMPORTANT* Machine Wash, Cold water, Gentle Cycle. Hang to dry to avoid shrinkage. Made in Cambodia.</p>', 35, '1', '34.99', '34.99', '0', '1530438191', 'no', 'women', 'ok', '0', '163', 499, 'Pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p>Our Pull-On Styling feels great, and looks polished and professional with great trouser details:<\\\\\\/p><p>&nbsp;<\\\\\\/p><p><br><\\\\\\/p><p>Faux Front Pockets<\\\\\\/p><p>Faux Back Pockets with Loop &amp; Button Detail<\\\\\\/p><p>Faux Front Fly<\\\\\\/p><p>Two-Piece Waistband with Belt Loops<\\\\\\/p><p>Back design has added darts for an improved fit.<\\\\\\/p><p><br><\\\\\\/p><p>Slim Leg Opening is sleek and pairs well with any shoe, dress it up or down for day and evening looks!<\\\\\\/p>\\\"]\"}', 5, NULL, '0', 'percent', '0', 'percent', '[\"rgba(25,22,22,1)\",\"rgba(179,46,54,1)\",\"rgba(3,84,16,1)\",\"rgba(82,47,128,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559787558, NULL, 'no', 'ok'),
(199, 0, 0, '[]', 'Women\'s Wedge Sandals Pearls ', '{\"type\":\"vendor\",\"id\":\"1\"}', 4, '<p>Synthetic</p><p>Platform measures approximately 2.50\"</p><p>Decorative lace flower</p><p>Heel measures approximately 4\"</p><p>Platform measures approximately 2.5\"</p>', 36, '1', '34.98', '34.98', '0', '1530438501', 'no', 'shoe', 'ok', '0', '100', 139, 'Pc', '{\"name\":\"[\\\" Product description\\\"]\",\"value\":\"[\\\"<p>Vintage Pump,platform on the bottom,Bohemian Pearls across the top.<br><\\\\\\/p>\\\"]\"}', 40, NULL, '0', 'percent', '0', 'percent', '[\"rgba(57,87,194,1)\",\"rgba(8,6,6,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189034, NULL, 'no', 'ok');
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `pcimage`, `num_of_pcimgs`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(200, 0, 0, '[]', 'Women\'s Elegant Envelope Clutch', '{\"type\":\"vendor\",\"id\":\"1\"}', 4, '                                                                                                                                                                <p>100% brand new and high quality!</p><p>Material: Satin + Lace (Made With High Quality Satin Fully Lined)</p><p>Dimension: 9.85*5.12*1.97 inch (21*13*5 CM) ,Detachable strap: 46.49 inch (118 CM)</p><p>Inside can easily fit a cell phone, wallet, compact mirror, lip gloss, and a pack of gum.</p><p>Perfect for Wedding Parties or a Night Out !!!</p>', 11, '2', '12.97', '12.97', '0', '1530439251', 'no', 'bags', 'ok', '0', '', 489, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 162, NULL, '0', 'percent', '0', 'percent', '[\"rgba(31,19,107,1)\",\"rgba(243,171,245,1)\",\"rgba(201,142,142,1)\"]', '0videos.jpg, 1wedding.jpg,leather2.jpg\r\n\r\n', '2', '[{\"no\":\"1\",\"title\":\"Size\",\"name\":\"choice_1\",\"type\":\"single_select\",\"option\":[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561125913, NULL, 'no', 'ok'),
(201, 0, 0, '[]', 'Smart OLED TV', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '                                        <p>Dimensions (W x H x D): TV without stand: 57.2\" x 32.8\" x 1.8\", TV with stand: 57.2\" x 34.4\" x 8.5\"</p><p>Smart functionality gives you access to your favorite apps and content using webOS 3.5. CONNECTIVITY : Wi-Fi Built In 802.11ac</p><p>Pairs 4K Ultra HD picture clarity with the contrast, color, and detail of High Dynamic Range (HDR) for the most lifelike picture</p><p>Individually lit OLED pixels achieve the ultimate contrast for outstanding picture quality. Resolution: 3840 x 2160</p><p>OLED does not require a backlight giving it deep blacks and making it extremely thin.Other Features :Active HDR with Dolby Vision, Dolby Atmos, Perfect Black, Cinematic Color, Billion Rich Colors, Ultra Luminance, Pixel Level Dimming</p><p>Inputs: 4 HDMI, 3 USB, 1 RF, 1 Composite, Component Shared w/ Composite, 1 Ethernet, 1 Optical, 1 RS232C (Mini Jack). Smart TV Operating System-webOS 3.5</p><p>Power supply (voltage, Hz): 120 Vac 50-60Hz . Recommended sound bars: SJ7, SJ8, and SJ9</p>', 87, '1', '1049.00', '1049.00', '0', '1530440532', 'no', 'tv', 'ok', '0', '181', 50, 'Pc', '{\"name\":\"[\\\"Technical Details\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Brand Name<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">LG<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Weight<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">54.5 pounds<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Product Dimensions<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">57.2 x 8.5 x 34.4 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item model number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">OLED65C7P<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2 AA batteries required. (included)<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Color Name<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Black<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Special Features<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Active HDR with Dolby Vision; Dolby Atmos; Perfect Black; Cinematic Color, Full Web Browser; Billion Rich Colors; Ultra Luminance; Pixel Level Dimming<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 3, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557910096, NULL, 'no', 'ok'),
(202, 0, 0, '[]', 'EG3 Gaming Headset', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '<p>MULTI-PLATFORM COMPATIBLE -- Support PC (Win7, Win8, Win10 ), PlayStation 4 Console, Laptop and devices with USB audio support. NOTE: When connecting to PS4, Please plug the USB port to the PS4 console. When connecting to Mac, the headset supports music and microphone, but does Not support customized sound effect</p><p>7.1 VIRTUAL SURROUND SOUND FOR IMMERSIVE GAMING EXPERIENCE -- Reflects the in-game environment, so you can hear and detect your enemies and incoming threats and loot all around you. Connect the included USB to your PC and download Mpow Gaming Software in order to fully customize the sound to your liking. You can even program different sound profiles for each game</p><p>ADVANCED 50MM DRIVERS -- Using 50 mm neodymium drivers, Mpow EG3 delivers high-quality stereo sound to keep you immersed in your game or music from start to finish. Perfect for various games like Fortnite, PLAYERUNKNOWN\'S BATTLEGROUNDS, Overwatch, League of Legend, Hearthstone etc.</p><p>LIGHTWEIGHT COMFORT DESIGN -- Crafted for long gaming sessions. With unique tension controls to adjust the tightness of the headset to your personal preference. Soft memory foam earpads block outside sounds and keep your ears cool for distraction-free play. The LED lights add cool atmosphere for your gaming experience</p><p>NOISE CANCELLING MIC &amp; FINGERTIP CONTROL -- Onmi-directional &amp; flexible microphone pick up sound with great sensitivity, which enables you clearly deliver or receive messages while you are in a game. Easy to adjust volume with a mute control housed on the mic shell and volume wheel on the ear cup</p>', 87, '1', '28.99', '28.99', '0', '1530440991', 'no', 'headphone', 'ok', '0', '61', 300, 'Pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p>Note:<\\\\\\/p><p>Mpow EG3 USB Gaming Headset Supports :<\\\\\\/p><p>Laptop, Win7, Win8, Win10 and devices with USB audio support<\\\\\\/p><p>PS4 (Connect the USB port to PS4 console)<\\\\\\/p><p>Mac (Support music and microphone, but does Not support customized sound effect)<\\\\\\/p><div><br><\\\\\\/div>\\\"]\"}', 4, NULL, '0', 'percent', '0', 'percent', '[\"rgba(23,19,19,1)\",\"rgba(130,46,66,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561740625, NULL, 'no', 'ok'),
(203, 0, 0, '[]', 'ZenBook 13 Ultra-Slim Laptop', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '<p>13.3 Inch Anti-glare FHD 1920 x 1080 Display, Wide View 170 degrees with Windows 10 Pre-installed</p><p>Latest 8th Gen Intel i5-8250U 1.6 GHz Processor (6M Cache, Turbo up to 3.4GHz), Fast storage and memory featuring 256GB SATA 3 M.2 SSD with 8GB LPDDR3 RAM</p><p>Extensive connectivity with micro HDMI/USB 3.1 Type C, 802.11ac WiFi, and SD Card Reader</p><p>Sleek and light weight 2.6 lbs aluminum body for comfortable portability</p><p>Built-in fingerprint reader with one-touch login via Windows Hello feature</p>', 86, '1', '49.34', '49.34', '0', '1530441757', 'no', 'laptop,asus', 'ok', '0', '59', 100, 'Pc', '{\"name\":\"[\\\"Summary\\\",\\\"Technical Details\\\"]\",\"value\":\"[\\\"<table id=\\\\\\\"productDetails_techSpec_section_1\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Screen Size<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">13.3 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Max Screen Resolution<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1920 x 1080<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Processor<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1.6 GHz Intel Core i5<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">RAM<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">8 GB LPDDR3<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Hard Drive<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">256 GB Flash Memory Solid State<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Graphics Coprocessor<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Integrated<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Card Description<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Integrated<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Wireless Type<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">802.11.ac<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Number of USB 3.0 Ports<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\",\\\"<table id=\\\\\\\"productDetails_techSpec_section_2\\\\\\\" class=\\\\\\\"a-keyvalue prodDetTable\\\\\\\" role=\\\\\\\"presentation\\\\\\\" style=\\\\\\\"margin-bottom: 22px; width: 606px; border-bottom: 1px solid rgb(231, 231, 231); table-layout: fixed; padding: 0px; color: rgb(17, 17, 17); font-family: Arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);\\\\\\\"><tbody><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Brand Name<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Asus<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Series<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">UX330UA-AH55<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item model number<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">UX330UA-AH55<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Operating System<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Windows 10<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Weight<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">2.6 pounds<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Product Dimensions<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">12.7 x 8.7 x 0.5 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Item Dimensions L x W x H<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">12.7 x 8.7 x 0.5 inches<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Color<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Gray Metal<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Processor Brand<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">Intel<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Processor Count<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">4<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Computer Memory Type<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">DDR3 SDRAM<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Flash Memory Size<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">256.0<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Optical Drive Type<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">None<\\\\\\/td><\\\\\\/tr><tr><th class=\\\\\\\"a-color-secondary a-size-base prodDetSectionEntry\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; background-color: rgb(243, 243, 243); font-weight: 400; border-top: 1px solid rgb(231, 231, 231); word-wrap: break-word; width: 303px; line-height: 19px !important;\\\\\\\">Batteries<\\\\\\/th><td class=\\\\\\\"a-size-base\\\\\\\" style=\\\\\\\"vertical-align: top; padding: 7px 14px 6px; border-top: 1px solid rgb(231, 231, 231); color: rgb(51, 51, 51); font-family: Arial; line-height: 19px !important;\\\\\\\">1 Lithium ion batteries required. (included)<\\\\\\/td><\\\\\\/tr><\\\\\\/tbody><\\\\\\/table>\\\"]\"}', 5, NULL, '0', 'percent', '0', 'percent', '[\"rgba(214,203,203,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559939755, NULL, 'no', 'ok'),
(204, 0, 0, '[]', 'Huawei Mate SE Factory Unlocked', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '<p>With a 5.93” 18: 9 edge-to-edge all-screen design, high screen-to-body ratio and 2160 x 1080 FHD+ resolution, the HUAWEI FullView display on the Huawei mate SE brings you an immersive visual experience</p><p>The dual-lens 16MP + 2MP rear camera offers an all new portrait mode, letting you capture professional and artistic photos in a single shot with an ultra-fast focus time</p><p>Operation system : android N+EMUI 5.1 and network: LTE FDD/WCDMA/GSM. 4GB RAM, 64 GB storage + Micro SD compatible up to 256GB (not included) + dual nano SIM card capability, 2.36GHz octa-core processor</p><p>Big 3340 mAh battery for tons of screen-time on a single charge and ultra power saving mode to extend your charge even longer, keeping you connected when you need it most</p><p>The sleek metal design of the mate SE is a delight to hold - the 2.5D glass face flows seamlessly into the aluminum chassis forming perfectly rounded edges</p>', 81, '1', '249.99', '249.99', '0', '1530442224', 'no', 'phone', 'ok', '0', '170', 200, 'Pc', '{\"name\":\"[\\\"Product description\\\"]\",\"value\":\"[\\\"<p>With a sleek metal design, 4GB RAM + 64GB internal memory, a micro SD card slot to expand (up to 256GB), the factory unlocked Huawei mate SE is an unbelievable value in smartphones. Text, surf and stay connected with social media longer with its 3340 mAh battery and built-in power saving technology. The advanced fingerprint identification system unlocks in a zippy 0.2 seconds and can also be used to take photos. Mate SE features a 5.93\\\\\\\" FHD+ HUAWEI FullView display offering an enhanced and immersive viewing experience. The Huawei mate SE will give you greater field of view when playing games thanks to its 18:9 long aspect ratio accounting for an 82.9% screen-to-body ratio. Mate SE is equipped with 16MP + 2MP dual-lens rear camera and 8MP front camera. Both cameras have a portrait mode and include popular sticker affects. Take selfies with ease by using the gesture control function. The Huawei mate SE combines great looks, power, speed and functionality without breaking the bank.<br><\\\\\\/p>\\\"]\"}', 5, NULL, '0', 'percent', '0', 'percent', '[\"rgba(133,131,131,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561299486, NULL, 'no', 'ok'),
(205, 0, 0, '[]', 'ranya Sports Wireless Earbuds', '{\"type\":\"vendor\",\"id\":\"7\"}', 16, '<ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(148, 148, 148); padding: 0px; font-family: Arial, sans-serif; font-size: 13px;\"><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17);\">[HD SOUND WITH DEEP BASS] Featuring Bluetooth 5.0 and lossless HD rendering technology that produce incredible sound quality with deep bass and crystal crisp treble. Tranya true wireless earbuds can block out a lot of surrounding noises, and do avoid wind noise created during running, biking, jogging, etc.</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17);\">[STABLE CONNECTIVITY] Provide stable and seamless connectivity with Bluetooth 5.0 and high sensitivity antenna enabled devices up to 33 feet away, which also ensure low latency and low energy features during data transmission.</span></li><li style=\"list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"color: rgb(17, 17, 17);\">[EASY TO USE] The earbuds automatically turn on and connect your smart phone when removed from the case; automatically turn off and charge when put back in the case. Also, the headphones can be used to answer/reject calling, skip/play/pause songs, and activate voice assistant, such as Siri.</span></li></ul>', 81, '1', '49.99', '49.99', '0', '1530442470', 'no', 'headphone', 'ok', '0', '142', 500, 'Pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p>[Secure Fit&amp; Mini Design] Extremely light weight and mini in-ear design with two pairs of ear tips to ensure your headphones stay comfortably firm in place and improve the experience on sports.<\\\\\\/p><p>[LONGER BATTERY LIFE] It is up to 3-4 hours playing time when headphones fully charged. Else the portable charging case could recharge the earbuds 4 additional times. The total play time could be up to 15 hours. You are fully covered by our 1 YEAR WARRANTY and 30 DAYS RETURN GUARANTEE, all you need to do is contact us directly at our customer support.<\\\\\\/p>\\\"]\"}', 14, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189048, NULL, 'no', 'ok'),
(206, 0, 0, '[]', 'Wireless Bluetooth Headphones With Microphone', '{\"type\":\"vendor\",\"id\":\"16\"}', 16, '<p>Patented design, with in-ear buds providing crisp, clear melodies and over-ear cups delivering bass you can feel.</p><p>CES 2018 Best of Innovation. Red Dot 2018 Best of the Best Award. 2018 Good Design Award Winner.</p><p>Wireless Bluetooth® with aptX-HD (plus wired options). 20 hour battery life. 6 internal microphones for clear voice calls.</p><p>\"One thing is for certain: in personalized mode, nuraphones sound better than any headphones I\'ve ever used.\" - FACT Magazine</p>', 85, '1', '399.00', '399.00', '0', '1530444179', 'no', 'headphn', 'ok', '0', '168', 99, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 14, NULL, '0', 'percent', '0', 'percent', '[\"rgba(13,12,12,1)\",\"rgba(191,207,94,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189006, NULL, 'no', 'ok'),
(207, 0, 0, '[]', 'Foundation Makeup with SPF 30', '{\"type\":\"vendor\",\"id\":\"9\"}', 17, '                                        <p><span style=\"color: rgb(17, 17, 17); font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;\"=\"\">Our bestselling full coverage foundation makeup with mineral sunscreen broad spectrum SPF 30. This all-day hydrating foundation has a flawless, natural finish that\'s never cakey or masky.</span><br></p>', 93, '2', '39.00', '39.00', '0', '1530509793', 'no', 'mackup', 'ok', '0', '211', 500, 'Pc', '{\"name\":\"[\\\"BENEFITS\\\",\\\"SUGGESTED USE\\\"]\",\"value\":\"[\\\"<p>Dermatologist-tested. Sensitive-skin Tested. Allergy-Tested. Fragrance-free. Non-comedogenic.<br><\\\\\\/p>\\\",\\\"<p><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: \\\\\\\" amazon=\\\\\\\"\\\\\\\" ember\\\\\\\",=\\\\\\\"\\\\\\\" arial,=\\\\\\\"\\\\\\\" sans-serif;\\\\\\\"=\\\\\\\"\\\\\\\">Warm makeup foundation in between fingers and apply over desired area. Build coverage. Apply Setting Powder.<\\\\\\/span><br><\\\\\\/p>\\\"]\"}', 0, NULL, '0', 'percent', '0', 'percent', 'null', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(208, 0, 0, '[]', 'Men’s Restoring Eye Cream for Men', '{\"type\":\"vendor\",\"id\":\"9\"}', 17, '                                        <p>What It Does: This men’s eye cream reduces bags, puffiness, dark circles, and wrinkles around the eyes.</p><p>Who It’s For: Men of any age with any skin type who want brighter, more energized eyes.</p><p>How It Works: This lightweight under eye cream for men absorbs immediately, leaving now greasy residue or shine. Powerful hydrators smooth away wrinkles. Caffeine reduces dark circles and puffiness.</p><p>Key Ingredients: Natural &amp; Certified Organic ingredients, including aloe, protein peptides, MSM, hyaluronic acid, vitamin C, and green tea. 97.5% natural, 70% organic.</p><p>Who We Are: Brickell creates skincare and grooming products for men using natural &amp; certified organic ingredients. Our products are sold in over 20 countries and have appeared in GQ, Men\'s Health, Men\'s Journal, and other popular men’s magazines.</p>', 78, '1', '40.00', '40.00', '0', '1530511770', 'no', 'skin', 'ok', '0', '215', 500, 'Pc', '{\"name\":\"[\\\" Product Description\\\"]\",\"value\":\"[\\\"<p>Brickell Men\\\\u2019s Restoring Eye Cream for Men, Natural &amp; Organic Anti Aging Eye Balm To Reduce Puffiness, Wrinkles, Dark Circles, &amp; Under Eye Bags - .5 oz<br><\\\\\\/p>\\\"]\"}', 1, NULL, '0', 'percent', '0', 'percent', '[\"rgba(36,30,30,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1551367349, NULL, 'no', 'ok'),
(209, 0, 0, '[]', 'Pure Vitamin C Serum', '{\"type\":\"vendor\",\"id\":\"9\"}', 17, '<p><span style=\"color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\">15% Pure Vitamin C &amp; Natural Origin Hyaluronic Acid helps skin look brighter and feel firmer in 10 days. This Dermatologist grade treatment is an ideal addition to any anti-aging routine.</span><br></p>', 91, '1', '28.50', '28.50', '0', '1530512373', 'no', 'skin,care', 'ok', '0', '199', 400, 'Pc', '{\"name\":\"[\\\"BENEFITS\\\",\\\"SUGGESTED USE\\\"]\",\"value\":\"[\\\"<p><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\\\\\\\">This Vitamin C serum formula with 11 ingredients spreads easily without stickiness. Paraben-free. Fragrance-free.<\\\\\\/span><br><\\\\\\/p>\\\",\\\"<p><span style=\\\\\\\"color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\\\\\\\">Every morning, apply 4-5 serum drops in the palm of your hand. Use fingertips to apply to clean dry face.<\\\\\\/span><br><\\\\\\/p>\\\"]\"}', 0, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', 'ok'),
(210, 0, 0, '[]', 'Revision Intellishade SPF 45 Original- 1.7oz.', '{\"type\":\"vendor\",\"id\":\"9\"}', 17, '<p><span style=\"color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\">Award-winning anti-aging tinted moisturizer that gives skin a touch of sheer, healthy color. Formulated with a blend of three peptides and broad-spectrum UVA and UVB protection, it\'s the smart way to care for your skin.</span><br></p>', 96, '1', '75.00', '75.00', '0', '1530512744', 'no', 'sun,care', 'ok', '0', '188', 100, 'Pc', '{\"name\":\"[\\\"BENEFITS\\\"]\",\"value\":\"[\\\"<p>Moisturizes and reduces the appearance of fine lines and wrinkles Provides broad-spectrum UV protection<br><\\\\\\/p>\\\"]\"}', 3, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1560896526, NULL, 'no', 'ok'),
(211, 0, 0, '[]', 'Thermal Night Spa', '{\"type\":\"vendor\",\"id\":\"9\"}', 17, '<p><span style=\"color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif;\">Ultra-comfortable, velvety night cream and face mask. Infuses the skin with hydration overnight, when skin is most receptive to treatments. Skin is soft, soothed and supple by morning. Formulated with Hyaluronic Acid.</span><br></p>', 93, '1', '28.00', '28.00', '0', '1530513322', 'no', 'spa', 'ok', '0', '210', 500, 'Pc', '{\"name\":\"[\\\"BENEFITS\\\",\\\"SUGGESTED USE\\\"]\",\"value\":\"[\\\"<p>Skin feels deeply hydrated, soothed and suppler after just one night. Fresher, more radiant-looking skin<br><\\\\\\/p>\\\",\\\"<p>Apply 1-3 times a week. Massage on face and neck with an upward smoothing motion. Leave for 10-15 minutes.<br><\\\\\\/p>\\\"]\"}', 11, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1551452424, NULL, 'no', 'ok'),
(213, 0, 0, '[]', 'Ford Mustang GT Premium', '{\"type\":\"vendor\",\"id\":\"10\"}', 1, '<p>Key Features &amp; Specs</p><p>EPA Classification <span style=\"white-space:pre\"> </span>Subcompact Cars</p><p>MPG/MPGe <span style=\"white-space:pre\">  </span>24 (Est) Highway / 15 (Est) City</p><p>Engine <span style=\"white-space:pre\"> </span>Premium Unleaded V-8 5.0L/302 cu in</p><p>Transmission <span style=\"white-space:pre\">  </span>Manual w/OD</p><p>Drive Train <span style=\"white-space:pre\"> </span>Rear Wheel Drive</p><p>Seating <span style=\"white-space:pre\">  </span>4</p><p>Horsepower <span style=\"white-space:pre\">  </span>460</p>', 1, '1', '39190.00', '39190.00', '0', '1530514870', 'no', 'car', 'ok', '0', '40', 150, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '0', 'percent', '0', 'percent', '[\"rgba(23,20,20,1)\",\"rgba(204,28,28,1)\",\"rgba(41,46,166,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1560219498, NULL, 'no', 'ok'),
(214, 1, 4, '[\"1\"]', 'Lamborghini Aventador LP 750-4 Superveloce', '{\"type\":\"vendor\",\"id\":\"10\"}', 1, '<p>Key Features &amp; Specs</p><p>EPA Classification <span style=\"white-space:pre\">  </span>Two-Seaters</p><p>MPG/MPGe <span style=\"white-space:pre\">  </span>17 Highway / 10 City</p><p>Engine <span style=\"white-space:pre\"> </span>Premium Unleaded V-12 6.5L/397 cu in</p><p>Transmission <span style=\"white-space:pre\"> </span>Auto-Shift Manual w/OD</p><p>Drive Train <span style=\"white-space:pre\">  </span>All Wheel Drive</p><p>Seating <span style=\"white-space:pre\"> </span>2</p><p>Horsepower <span style=\"white-space:pre\">  </span>740</p>', 2, '1', '535500.00', '535500.00', '0', '1530515347', 'no', 'car', 'ok', '0', '50', 998, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 13, NULL, '0', 'percent', '0', 'percent', '[\"rgba(31,29,29,1)\",\"rgba(71,17,224,1)\",\"rgba(209,189,12,1)\",\"rgba(99,150,16,1)\",\"rgba(237,136,42,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1560142387, NULL, 'no', 'ok'),
(216, 0, 0, '[]', 'Audi Q5 Summer of Audi Premium Plus', '{\"type\":\"vendor\",\"id\":\"10\"}', 1, '<p><span style=\"font-weight: bold;\">Key Features &amp; Specs</span></p><p>EPA Classification <span style=\"white-space:pre\"> </span>Small Sport Utility Vehicles 4WD</p><p>MPG/MPGe <span style=\"white-space:pre\"> </span>27 Highway / 23 City</p><p>Engine <span style=\"white-space:pre\"> </span>Intercooled Turbo Premium Unleaded I-4 2.0L/121 cu in</p><p>Transmission <span style=\"white-space:pre\">  </span>Auto-Shift Manual w/OD</p><p>Drive Train <span style=\"white-space:pre\">  </span>All Wheel Drive</p><p>Seating <span style=\"white-space:pre\"> </span>5</p><p>Horsepower <span style=\"white-space:pre\">  </span>252</p><p>Overall Crash Safety Rating <span style=\"white-space:pre\"> </span>5 / 5 Stars</p>', 1, '1', '44100.00', '44100.00', '0', '1530523843', 'no', 'audi', 'ok', '0', '38', 100, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 16, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561887169, NULL, 'no', 'ok'),
(217, 0, 0, '[]', 'Handmade Leather Oxfords Shoes', '{\"type\":\"vendor\",\"id\":\"17\"}', 5, '                                                                                <div class=\"feature\" id=\"featurebullets_feature_div\" style=\'box-sizing: border-box; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\' data-feature-name=\"featurebullets\"><div class=\"a-section a-spacing-medium a-spacing-top-small\" id=\"feature-bullets\" style=\"box-sizing: border-box; margin-top: 10px !important; margin-bottom: 0px;\"><ul class=\"a-unordered-list a-vertical a-spacing-none\" style=\"box-sizing: border-box; margin: 0px 0px 0px 18px; color: rgb(148, 148, 148); padding: 0px;\"><li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Leather</span></li><li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Imported</span></li><li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Rubber sole</span></li><li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">Upper Material: Leather, Lining Material: Leather</span></li><li style=\"box-sizing: border-box; list-style: disc; word-wrap: break-word; margin: 0px;\"><span class=\"a-list-item\" style=\"box-sizing: border-box; color: rgb(17, 17, 17); word-wrap: break-word; display: block;\">using the handmade coloring process that defines the philosophy and soul of our brand</span></li></ul></div></div><div class=\"feature\" id=\"globalStoreInfoBullets_feature_div\" style=\'box-sizing: border-box; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\' data-feature-name=\"globalStoreInfoBullets\"></div><div class=\"feature\" id=\"edpIngress_feature_div\" style=\'box-sizing: border-box; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\' data-feature-name=\"edpIngress\"></div><div class=\"feature\" id=\"vendorPoweredCoupon_feature_div\" style=\'box-sizing: border-box; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\' data-feature-name=\"vendorPoweredCoupon\"></div><div class=\"feature\" id=\"heroQuickPromo_feature_div\" style=\'box-sizing: border-box; color: rgb(17, 17, 17); font-family: \"Amazon Ember\", Arial, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\' data-feature-name=\"heroQuickPromo\"><div id=\"hero-quick-promo-grid_feature_div\" style=\"box-sizing: border-box;\"><div class=\"a-row a-spacing-medium\" id=\"hero-quick-promo\" style=\"box-sizing: border-box; width: 477.125px; margin-bottom: 18px !important;\"></div></div></div><p><br class=\"Apple-interchange-newline\"><b></b><i></i><u></u><sub></sub><sup></sup><strike></strike><br></p>', 28, '1', '88.95', '88.95', '0', '1531637320', 'no', 'shoe', 'ok', '0', '33', 298, 'pc', '{\"name\":\"[\\\"Additional\\\"]\",\"value\":\"[\\\"<p><span style=\'color: rgb(51, 51, 51); font-family: \\\\\\\"Amazon Ember\\\\\\\", Arial, sans-serif; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\'>Elegant Oxford shoe in full-grain calfskin.Lined premium leather upper. Flawlessly finished with hand-crafted details . A gentleman\'s shoes instantly reveal his status and this is what we had in mind when we created this fine model with a minimalist design. Using the handmade coloring process that defines the philosophy and soul of our brand. This is the Oxford shoe that can be worn all year round for a flawless look.<\\\\\\/span><b><\\\\\\/b><i><\\\\\\/i><u><\\\\\\/u><sub><\\\\\\/sub><sup><\\\\\\/sup><strike><\\\\\\/strike><br><\\\\\\/p>\\\"]\"}', 5, NULL, '0', 'percent', '0', 'percent', '[\"rgba(7,6,6,1)\",\"rgba(91,61,9,1)\",\"rgba(31,37,65,1)\"]', NULL, NULL, '[{\"no\":\"0\",\"title\":\"size\",\"name\":\"choice_0\",\"type\":\"single_select\",\"option\":[\"S\",\"M\",\"L\"]},{\"no\":\"1\",\"title\":\"Top Note\",\"name\":\"choice_1\",\"type\":\"text\",\"option\":[\"none\"]},{\"no\":\"3\",\"title\":\"Exp\",\"name\":\"choice_3\",\"type\":\"multi_select\",\"option\":[\"one\",\"two\"]},{\"no\":\"4\",\"title\":\"Exp 2\",\"name\":\"choice_4\",\"type\":\"radio\",\"option\":[\"three\",\"four\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1551450270, NULL, 'no', 'ok'),
(218, 0, 0, '[]', 'Demo product', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '<p>sdfghjkl<br></p>', 1, '6', '12345.00', '2345.00', '0', '1534136319', 'no', 'car', '0', '0', '38', NULL, 'pc', '{\"name\":\"null\",\"value\":\"null\"}', 0, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'no', ''),
(219, 0, 0, '[]', 'приватка', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '                                                                                <p><br></p>', 1, '1', '9.00', '9.00', '9', '1534582162', 'no', '', 'ok', '0', '38', NULL, 'Pc', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '9', 'percent', '9', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557874445, NULL, 'no', ''),
(220, 0, 0, '[]', '6\"x10\" piece of leather', '{\"type\":\"vendor\",\"id\":\"19\"}', 39, '                                                                                <p>6\"x10\" piece of leather</p><p>Material thickness: 1.6mm - 1.8mm</p><p>Color: Off White <br></p>', 128, '3', '3.99', '2.50', '1.00', '1551052718', 'no', 'Leather, Embossed Leather', '0', '0', NULL, 1, 'Each', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '', 'percent', '', 'percent', '[\"rgba(232,231,231,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1560074754, NULL, 'no', 'ok'),
(221, 0, 0, '[]', '8', '{\"type\":\"vendor\",\"id\":\"19\"}', 39, '                                                                                                                                                                <p>8\" x 11\" piece of Leather</p><p>Thickness: 1.2mm - 1.4mm</p><p> Color: Deep Black <br></p><p><br></p><p><br></p>', 128, '2', '3.99', '2.99', '1', '1551053159', 'no', 'Leather,leather supplies', '0', '0', '', 47, 'Each', '{\"name\":\"null\",\"value\":\"null\"}', 19, NULL, '', 'percent', '', 'percent', '[\"rgba(16,1,1,1)\",\"rgba(165,33,33,1)\",\"rgba(193,164,164,1)\"]', NULL, NULL, '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1557802019, NULL, 'no', 'no');
INSERT INTO `product` (`product_id`, `rating_num`, `rating_total`, `rating_user`, `title`, `added_by`, `category`, `description`, `sub_category`, `num_of_imgs`, `sale_price`, `purchase_price`, `shipping_cost`, `add_timestamp`, `featured`, `tag`, `status`, `front_image`, `brand`, `current_stock`, `unit`, `additional_fields`, `number_of_view`, `background`, `discount`, `discount_type`, `tax`, `tax_type`, `color`, `pcimage`, `num_of_pcimgs`, `options`, `main_image`, `download`, `download_name`, `deal`, `num_of_downloads`, `update_time`, `requirements`, `logo`, `video`, `last_viewed`, `products`, `is_bundle`, `vendor_featured`) VALUES
(267, 0, 0, '[]', 'Item23', '{\"type\":\"vendor\",\"id\":\"19\"}', 39, '                                        <p>Leather Swatch Test</p><p>Blah blah</p><p><br></p>', 128, '1', '20.00', '10.00', '1.50', '1553723249', 'no', 'Leather', '0', '0', '334', 23, 'Each', '{\"name\":\"null\",\"value\":\"null\"}', 1, NULL, '0', 'percent', '', 'percent', '[\"rgba(173,25,25,1)\",\"rgba(191,138,138,1)\",\"rgba(204,207,79,1)\"]', NULL, NULL, '[{\"no\":\"1\",\"title\":\"diameter\",\"name\":\"choice_1\",\"type\":\"multi_select\",\"option\":[\"3\\\"\",\"4\\\"\"]}]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1559882775, NULL, 'no', 'no'),
(266, 0, 0, '[]', 'Test', '{\"type\":\"admin\",\"id\":\"1\"}', 1, '<p>Test</p>', 1, '1', '10.00', '8.00', '8', '1553672678', 'no', '1', 'ok', '0', '', NULL, '1', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '0.97', 'percent', '8', 'percent', '[\"rgba(204,204,204,1)\"]', NULL, '0', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557861055, NULL, 'no', NULL),
(288, 0, 0, '[]', 'test leather123', '{\"type\":\"vendor\",\"id\":\"19\"}', 39, '\r\n                                        \r\n                                        <p>test test test test <br></p>', 128, '1', '7.99', '3.00', '1.00', '1554757169', 'no', 'leather', '0', '0', '286', 13, 'each', '{\"name\":\"null\",\"value\":\"null\"}', 5, NULL, '', 'percent', '', 'percent', '[\"rgba(71,48,48,1)\",\"rgba(229,65,154,1)\",\"rgba(25,21,212,1)\"]', '1.png, 2.png, 3.png', '3', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557839017, NULL, 'no', 'no'),
(259, 0, 0, '[]', 'Test', '{\"type\":\"admin\",\"id\":\"1\"}', 30, '\r\n                                        \r\n                                        <p><br></p>', 114, '1', '20.00', '10.00', '0', '1551787485', 'no', '', 'ok', '0', '280', 2000, '1', '{\"name\":\"null\",\"value\":\"null\"}', 3, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(204,204,204,1)\"]', NULL, '0', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557189101, NULL, 'no', NULL),
(265, 0, 0, '[]', 'Test', '{\"type\":\"admin\",\"id\":\"1\"}', 30, '\r\n                                        \r\n                                        \r\n                                        <p><br></p>', 114, '1', '10.00', '9.00', '0', '1551860954', 'no', '', 'ok', '0', '281', 18, '1', '{\"name\":\"null\",\"value\":\"null\"}', 6, NULL, '0', 'percent', '0', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(204,204,204,1)\"]', NULL, '0', '[]', '0', NULL, NULL, 'ok', 0, NULL, NULL, NULL, NULL, 1557793590, NULL, 'no', NULL),
(287, 0, 0, '[]', 'Test', '{\"type\":\"vendor\",\"id\":\"3\"}', 1, '<p><br></p>', 1, '1', '10.00', '10.00', '10', '1554714658', 'no', '', 'ok', '0', '', NULL, '1', '{\"name\":\"null\",\"value\":\"null\"}', 20, NULL, '10', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(204,204,204,1)\",\"rgba(204,204,204,1)\"]', '1.png,2.png,3.png', '3', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1557754340, NULL, 'no', 'no'),
(290, 0, 0, '[]', 'shoes', '{\"type\":\"vendor\",\"id\":\"29\"}', 5, '<p>good</p>', 28, '1', '111.00', '111.00', '111', '1561167183', 'no', 'goods', 'ok', '0', '', NULL, '1', '{\"name\":\"null\",\"value\":\"null\"}', 11, NULL, '1', 'percent', '', 'percent', '[\"rgba(204,204,204,1)\",\"rgba(204,204,204,1)\"]', 'menshoes.jpg,', '2', '[]', '0', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 1561631134, NULL, 'no', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` varchar(100) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'master', '', 'Master Admin. Adds Admin. Provides account roles.'),
(5, 'Product Manager', '[\"13\",\"17\",\"21\",\"37\",\"41\",\"45\",\"49\"]', 'Manages Products for Rayant\'s Shop'),
(4, 'Accountant', '[\"9\",\"13\",\"17\",\"21\",\"41\"]', 'Accountancy and Support | Rayant\'s Shop'),
(6, 'Manager', '[\"5\",\"13\",\"29\",\"33\",\"37\",\"41\",\"57\",\"63\",\"103\"]', 'Manager of Rayant\'s Shop');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_code` longtext,
  `buyer` longtext,
  `guest_id` varchar(100) DEFAULT NULL,
  `product_details` longtext,
  `shipping_address` longtext,
  `vat` longtext,
  `vat_percent` varchar(10) DEFAULT NULL,
  `shipping` longtext,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_status` longtext,
  `pstatus` text,
  `payment_details` longtext,
  `payment_timestamp` longtext,
  `grand_total` longtext,
  `sale_datetime` longtext,
  `saledate` text,
  `delivary_datetime` longtext,
  `delivery_status` longtext,
  `viewed` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`sale_id`, `sale_code`, `buyer`, `guest_id`, `product_details`, `shipping_address`, `vat`, `vat_percent`, `shipping`, `payment_type`, `payment_status`, `pstatus`, `payment_details`, `payment_timestamp`, `grand_total`, `sale_datetime`, `saledate`, `delivary_datetime`, `delivery_status`, `viewed`) VALUES
(38, '20190238', '9', NULL, '{\"069059b7ef840f0c74a814ec9237b6ec\":{\"id\":\"126\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":23,\"name\":\"Women\'s Scarlett Cocktail \",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/livedemo.techizer.co\\/development\\/multi-vendor\\/uploads\\/product_image\\/product_126_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"069059b7ef840f0c74a814ec9237b6ec\",\"subtotal\":23}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.techizer@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'paid', '', NULL, '23', '19-03-2019', '19-03-2019', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(29, '20180429', '7', NULL, '{\"06409663226af2f3114485aa4e0a23b4\":{\"id\":\"158\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":158.99,\"name\":\"Ch\\u00e2n\\u00eal coco Noir\",\"shipping\":\"0\",\"tax\":3.1798,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_158_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"06409663226af2f3114485aa4e0a23b4\",\"subtotal\":158.99}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"cash_on_delivery\"}', '3.1798', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"paid\"}]', 'paid', '', NULL, '162.1698', '19-03-2019', '19-03-2019', '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(24, '20180424', '7', NULL, '{\"069059b7ef840f0c74a814ec9237b6ec\":{\"id\":\"126\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":23,\"name\":\"Women\'s Scarlett Cocktail Dress\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_126_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"069059b7ef840f0c74a814ec9237b6ec\",\"subtotal\":23},\"07e1cd7dca89a1678042477183b7ac3f\":{\"id\":\"119\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":879.2,\"name\":\" Small Space Package \",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_119_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"07e1cd7dca89a1678042477183b7ac3f\",\"subtotal\":879.2}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, '', NULL, '902.2', '1523852571', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL),
(22, '20180422', '9', NULL, '{\"3def184ad8f4755ff269862ea77393dd\":{\"id\":\"125\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":60000,\"name\":\"Land Cruiser v8\",\"shipping\":0,\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_125_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"3def184ad8f4755ff269862ea77393dd\",\"subtotal\":60000}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, '', NULL, '60000', '1523535450', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(23, '20180423', '9', NULL, '{\"9b8619251a19057cff70779273e95aa6\":{\"id\":\"130\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":79.2,\"name\":\"Suit Jacket\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_130_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9b8619251a19057cff70779273e95aa6\",\"subtotal\":79.2},\"76dc611d6ebaafc66cc0879c71b5db5c\":{\"id\":\"128\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":372.06,\"name\":\"Travel Stretch Fit Blazer\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_128_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"76dc611d6ebaafc66cc0879c71b5db5c\",\"subtotal\":372.06}}', '{\"firstname\":\"Demo\",\"lastname\":\"Name\",\"address1\":\"Dhaka\",\"address2\":\"Lalmatia\",\"zip\":\"1207\",\"email\":\"developer.activeitzone@gmail.com\",\"phone\":\"0789456123\",\"langlat\":\"(23.7554073, 90.3689508)\",\"payment_type\":\"cash_on_delivery\"}', '0', '', '0', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', NULL, '', NULL, '451.26', '1523535591', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(21, '20180421', '7', NULL, '{\"9b8619251a19057cff70779273e95aa6\":{\"id\":\"130\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(204,204,204,1)\\\"}}\",\"price\":79.2,\"name\":\"Suit Jacket\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_130_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"9b8619251a19057cff70779273e95aa6\",\"subtotal\":79.2}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1CG1WmKmGdRDZlHSmgQ4nHTv\"}', '0', '', '0', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CfMFfKd9xfvsl3\",\"object\":\"customer\",\"account_balance\":0,\"created\":1523524541,\"currency\":null,\"default_source\":\"card_1CG1WmKmGdRDZlHSOqbDYafa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"7DE816C\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CG1WsKmGdRDZlHSMlyAYLJK\",\"object\":\"charge\",\"amount\":7920,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CG1WtKmGdRDZlHSPNiSOI5F\",\"captured\":true,\"created\":1523524542,\"currency\":\"usd\",\"customer\":\"cus_CfMFfKd9xfvsl3\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '79.2', '1523524543', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(20, '20180320', '7', NULL, '{\"ec8956637a99787bd197eacd77acce5e\":{\"id\":\"102\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":131.6,\"name\":\"New Bundle\",\"shipping\":\"2\",\"tax\":14,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_102_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ec8956637a99787bd197eacd77acce5e\",\"subtotal\":131.6}}', '{\"firstname\":\"Harrison\",\"lastname\":\"Ross\",\"address1\":\"90 Cowley Extension\",\"address2\":\"Velit quia sed qui quos aliquid odit sit commodo magni voluptates\",\"zip\":\"38800\",\"email\":\"lefuzyjor@hotmail.com\",\"phone\":\"+323-54-7755047\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1C81GYKmGdRDZlHSH8grYiVK\"}', '14', '', '2', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CX5RnBJCNRxgbB\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521616912,\"currency\":null,\"default_source\":\"card_1C81GYKmGdRDZlHSoQ3ti8Al\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"E8AFF08\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C81GfKmGdRDZlHSjnhuSNgi\",\"object\":\"charge\",\"amount\":14760,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C81GgKmGdRDZlHSiUV1m1xb\",\"captured\":true,\"created\":1521616913,\"currency\":\"usd\",\"customer\":\"cus_CX5RnBJCNRxgbB\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '147.6', '1521616913', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(19, '20180319', '7', NULL, '{\"ec8956637a99787bd197eacd77acce5e\":{\"id\":\"102\",\"qty\":7,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":131.6,\"name\":\"New Bundle\",\"shipping\":\"2\",\"tax\":14,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_102_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ec8956637a99787bd197eacd77acce5e\",\"subtotal\":921.2}}', '{\"firstname\":\"Jescie\",\"lastname\":\"Torres\",\"address1\":\"46 New Parkway\",\"address2\":\"Necessitatibus veniam exercitation laboriosam veritatis omnis ex officiis dolor incididunt inventore expedita ut molestiae\",\"zip\":\"98985\",\"email\":\"kevapav@gmail.com\",\"phone\":\"+436-94-1073464\",\"langlat\":\"(44.3086839, -77.96090420000002)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1C81AnKmGdRDZlHSY1Pwu146\"}', '98', '', '14', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CX5L5G0ieMXtmd\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521616555,\"currency\":null,\"default_source\":\"card_1C81AnKmGdRDZlHS8raAj9Jn\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"90EC3D0\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C81AvKmGdRDZlHS9LAYRgEH\",\"object\":\"charge\",\"amount\":103320,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C81AvKmGdRDZlHS8G0lkt9X\",\"captured\":true,\"created\":1521616557,\"currency\":\"usd\",\"customer\":\"cus_CX5L5G0ieMXtmd\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1033.2', '1521616557', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(18, '20180318', '7', NULL, '{\"ec8956637a99787bd197eacd77acce5e\":{\"id\":\"102\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":131.6,\"name\":\"New Bundle\",\"shipping\":\"2\",\"tax\":14,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_102_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ec8956637a99787bd197eacd77acce5e\",\"subtotal\":131.6}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '14', '', '2', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, '', NULL, '147.6', '1521616455', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL),
(17, '20180317', '7', NULL, '{\"ac627ab1ccbdb62ec96e702f07f6425b\":{\"id\":\"99\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":26,\"name\":\"Colored Solution\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_99_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ac627ab1ccbdb62ec96e702f07f6425b\",\"subtotal\":26}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, '', NULL, '26', '1521541152', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', NULL),
(16, '20180316', '7', NULL, '{\"38b3eff8baf56627478ec76a704e9b52\":{\"id\":\"101\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":909.09,\"name\":\"ABC\",\"shipping\":\"9\",\"tax\":89.91,\"image\":\"http:\\/\\/192.168.0.106\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_101_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"38b3eff8baf56627478ec76a704e9b52\",\"subtotal\":909.09}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1C7EtmKmGdRDZlHSUSdRUYbX\"}', '89.91', '', '9', 'stripe', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CWHS0eT2pl9oga\",\"object\":\"customer\",\"account_balance\":0,\"created\":1521430988,\"currency\":null,\"default_source\":\"card_1C7EtlKmGdRDZlHS2wkgaNjv\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"FF5D36B\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1C7EttKmGdRDZlHSI5m5fQ46\",\"object\":\"charge\",\"amount\":100800,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1C7EttKmGdRDZlHSgCoEWtCI\",\"captured\":true,\"created\":1521430989,\"currency\":\"usd\",\"customer\":\"cus_CWHS0eT2pl9oga\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '1008', '1521430987', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(12, '20180212', '7', NULL, '{\"ed3d2c21991e3bef5e069713af9fa6ca\":{\"id\":\"98\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":38,\"name\":\"Classified php script\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/192.168.0.104\\/shop\\/v1.5.0\\/uploads\\/product_image\\/product_98_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ed3d2c21991e3bef5e069713af9fa6ca\",\"subtotal\":38}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"wallet\"}', '0', '', '0', 'wallet', '[{\"admin\":\"\",\"status\":\"paid\"}]', NULL, '', NULL, '38', '1519796196', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok'),
(7, '2018027', '8', NULL, '{\"d2ddea18f00665ce8623e36bd4e3c7c5\":{\"id\":\"73\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(244,20,20,1)\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":49.33,\"name\":\"High Heel Top Belt\",\"shipping\":\"3.25\",\"tax\":1.08526,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10\\/uploads\\/product_image\\/product_73_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"d2ddea18f00665ce8623e36bd4e3c7c5\",\"subtotal\":49.33}}', '{\"firstname\":\"Saide\",\"lastname\":\"Hasan\",\"address1\":\"Gazipur, Dhaka, Bangladesh\",\"address2\":\"Gazipur, Dhaka, Bangladesh\",\"zip\":\"1751\",\"email\":\"saide@gmail.com\",\"phone\":\"01924261748\",\"langlat\":\"(23.9999405, 90.42027239999993)\",\"payment_type\":\"wallet\"}', '1.08526', '', '3.25', 'wallet', '[{\"vendor\":\"5\",\"status\":\"paid\"}]', NULL, '', NULL, '53.66526', '1517732639', NULL, '', '[{\"vendor\":\"5\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok'),
(11, '20180211', '7', NULL, '{\"d09bf41544a3365a46c9077ebb5e35c3\":{\"id\":\"75\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":49.99,\"name\":\"Medium Booster Heel\",\"shipping\":\"2.52\",\"tax\":0.74985,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_75_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"d09bf41544a3365a46c9077ebb5e35c3\",\"subtotal\":49.99},\"66f041e16a60928b05a7e228a89c3799\":{\"id\":\"58\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":75,\"name\":\"Retro Utility Lace-Up Work Shoe\",\"shipping\":\"5.50\",\"tax\":2.4375,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_58_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"66f041e16a60928b05a7e228a89c3799\",\"subtotal\":75},\"72b32a1f754ba1c09b3695e0cb6cde7f\":{\"id\":\"57\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":80,\"name\":\"Classic Business Shoe\",\"shipping\":\"3.26\",\"tax\":2.6,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_57_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"72b32a1f754ba1c09b3695e0cb6cde7f\",\"subtotal\":80},\"a684eceee76fc522773286a895bc8436\":{\"id\":\"54\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":117.6,\"name\":\"Custom Suit Set\",\"shipping\":\"5.25\",\"tax\":7.5,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_54_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"a684eceee76fc522773286a895bc8436\",\"subtotal\":117.6},\"c0c7c76d30bd3dcaefc96f40275bdc0a\":{\"id\":\"50\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":21.99,\"name\":\"Cotton T-Shirt\",\"shipping\":\"3.35\",\"tax\":0.4398,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10_new\\/uploads\\/product_image\\/product_50_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"c0c7c76d30bd3dcaefc96f40275bdc0a\",\"subtotal\":21.99}}', '{\"firstname\":\"Demo\",\"lastname\":\"customer\",\"address1\":\"Rio Vista, \",\"address2\":\"CA\",\"zip\":\"1219\",\"email\":\"customer.demo@gmail.com\",\"phone\":\"customer.demo@gmail.com\",\"langlat\":\"(38.1557502, -121.69134389999999)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1Bw23fKmGdRDZlHSlAJhYRtj\"}', '13.72715', '', '19.88', 'stripe', '[{\"vendor\":\"3\",\"status\":\"paid\"},{\"admin\":\"\",\"status\":\"paid\"}]', NULL, 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CKhS3uhFWGJX3s\",\"object\":\"customer\",\"account_balance\":0,\"created\":1518760020,\"currency\":null,\"default_source\":\"card_1Bw23fKmGdRDZlHSTUh4jPql\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"customer.demo@gmail.com\",\"invoice_prefix\":\"11d2c6544b\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Bw23kKmGdRDZlHSxkLdP77p\",\"object\":\"charge\",\"amount\":37819,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Bw23lKmGdRDZlHSQvK398Ut\",\"captured\":true,\"created\":1518760020,\"currency\":\"usd\",\"customer\":\"cus_CKhS3uhFWGJX3s\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', NULL, '378.18715', '1518760021', NULL, '', '[{\"vendor\":\"3\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(5, '2018025', '8', NULL, '{\"ad61ab143223efbc24c7d2583be69251\":{\"id\":\"74\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":55.25,\"name\":\"Crystal Pencil High Heel\",\"shipping\":\"3.25\",\"tax\":1.38125,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10\\/uploads\\/product_image\\/product_74_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ad61ab143223efbc24c7d2583be69251\",\"subtotal\":110.5}}', '{\"firstname\":\"Saide\",\"lastname\":\"Hasan\",\"address1\":\"Gazipur, Dhaka, Bangladesh\",\"address2\":\"Gazipur, Dhaka, Bangladesh\",\"zip\":\"1751\",\"email\":\"saide@gmail.com\",\"phone\":\"01924261748\",\"langlat\":\"(23.9999405, 90.42027239999993)\",\"payment_type\":\"wallet\"}', '2.7625', '', '6.5', 'wallet', '[{\"vendor\":\"5\",\"status\":null}]', NULL, NULL, NULL, '119.7625', '1517725191', NULL, '', '[{\"vendor\":\"5\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":1517728811}]', 'ok'),
(6, '2018026', '8', NULL, '{\"d2ddea18f00665ce8623e36bd4e3c7c5\":{\"id\":\"73\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"rgba(244,20,20,1)\\\"},\\\"choice_0\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":49.33,\"name\":\"High Heel Top Belt\",\"shipping\":\"3.25\",\"tax\":1.08526,\"image\":\"http:\\/\\/developers.activeitzone.com\\/shop\\/v1.4.10\\/uploads\\/product_image\\/product_73_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"d2ddea18f00665ce8623e36bd4e3c7c5\",\"subtotal\":49.33}}', '{\"firstname\":\"Saide\",\"lastname\":\"Hasan\",\"address1\":\"Gazipur, Dhaka, Bangladesh\",\"address2\":\"Gazipur, Dhaka, Bangladesh\",\"zip\":\"1751\",\"email\":\"saide@gmail.com\",\"phone\":\"01924261748\",\"langlat\":\"(23.9999405, 90.42027239999993)\",\"payment_type\":\"stripe\",\"stripeToken\":\"tok_1BrijxKmGdRDZlHS9q3dQAlA\"}', '1.08526', '', '3.25', 'stripe', '[{\"vendor\":\"5\",\"status\":\"paid\"}]', NULL, NULL, NULL, '53.66526', '1517732450', NULL, '', '[{\"vendor\":\"5\",\"status\":\"delivered\",\"comment\":\"\",\"delivery_time\":1517732493}]', 'ok'),
(211, '197001211', '26', NULL, '{\"8f53295a73878494e9bc8dd6c3c7104f\":{\"id\":\"179\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":99,\"name\":\"PLAYBOY - Bundle Offer\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_179_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f53295a73878494e9bc8dd6c3c7104f\",\"subtotal\":99}}', '{\"taxvalue\":\"5.69\",\"shippingvalue\":\"0.00\",\"firstname\":\"Chiranjit\",\"lastname\":\"Jana\",\"address1\":\"kol\",\"address2\":\"kol2\",\"zip\":\"700112\",\"email\":\"cj.techizer@gmail.com\",\"phone\":\"9831160745\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"$99.00\",\"tax1\":\"$5.69\",\"shipping1\":\"$0.00\",\"grand_total1\":\"$104.69\"}', '$5.69', '', '$0.00', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', 'due', '', NULL, '$104.69', '05-04-2019', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(210, '197001210', '26', NULL, '{\"045117b0e0a11a242b9765e79cbf113f\":{\"id\":\"180\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3500,\"name\":\"Canon Digital SLR Camera\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_180_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"045117b0e0a11a242b9765e79cbf113f\",\"subtotal\":3500}}', '{\"taxvalue\":\"245.00\",\"shippingvalue\":\"0.00\",\"firstname\":\"Chiranjit\",\"lastname\":\"Jana\",\"address1\":\"kol\",\"address2\":\"kol2\",\"zip\":\"700112\",\"email\":\"cj.techizer@gmail.com\",\"phone\":\"9831160745\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"$3,500.00\",\"tax1\":\"$245.00\",\"shipping1\":\"$0.00\",\"grand_total1\":\"$3,745.00\"}', '$245.00', '', '$0.00', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', 'due', '', NULL, '$3,745.00', '26-03-2019', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', 'ok'),
(212, '197001212', '26', NULL, '{\"8f53295a73878494e9bc8dd6c3c7104f\":{\"id\":\"179\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":99,\"name\":\"PLAYBOY - Bundle Offer\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_179_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f53295a73878494e9bc8dd6c3c7104f\",\"subtotal\":99}}', '{\"taxvalue\":\"5.69\",\"shippingvalue\":\"0.00\",\"firstname\":\"Chiranjit\",\"lastname\":\"Jana\",\"address1\":\"kol\",\"address2\":\"kol2\",\"zip\":\"700112\",\"email\":\"cj.techizer@gmail.com\",\"phone\":\"9831160745\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"$99.00\",\"tax1\":\"$5.69\",\"shipping1\":\"$0.00\",\"grand_total1\":\"$104.69\"}', '$5.69', '', '$0.00', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', 'due', '', NULL, '$104.69', '05-04-2019', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(213, '197001213', '28', NULL, '{\"060ad92489947d410d897474079c1477\":{\"id\":\"221\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3.99,\"name\":\"8\\\" x 11\\\" piece of Leather\",\"shipping\":\"1\",\"tax\":0,\"image\":\"https:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_221_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"060ad92489947d410d897474079c1477\",\"subtotal\":3.99},\"084b6fbb10729ed4da8c3d3f5a3ae7c9\":{\"id\":\"196\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":196.35,\"name\":\"Stone & Beam Cheyanne Modern Accent Chair\",\"shipping\":\"0\",\"tax\":0,\"image\":\"https:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_196_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"084b6fbb10729ed4da8c3d3f5a3ae7c9\",\"subtotal\":196.35},\"0777d5c17d4066b82ab86dff8a46af6f\":{\"id\":\"163\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":null}}\",\"price\":7200,\"name\":\"Apple Bundle Offer\",\"shipping\":\"100\",\"tax\":\"10\",\"image\":\"http:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_163_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"0777d5c17d4066b82ab86dff8a46af6f\",\"subtotal\":7200}}', '{\"taxvalue\":\"0.00\",\"shippingvalue\":\"101.00\",\"firstname\":\"kevin\",\"lastname\":\"bailey\",\"address1\":\"182 Park St\",\"address2\":\"\",\"zip\":\"01510\",\"email\":\"customer2@tkenterprisesinc.com\",\"phone\":\"9785555555\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"\",\"tax1\":\"\",\"shipping1\":\"\",\"grand_total1\":\"\"}', '', '', '', 'cash_on_delivery', '[{\"vendor\":\"12\",\"status\":\"due\"},{\"vendor\":\"19\",\"status\":\"paid\"},{\"admin\":\"\",\"status\":\"due\"}]', 'due', NULL, NULL, '', '07-04-2019', NULL, '', '[{\"vendor\":\"12\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"vendor\":\"19\",\"status\":\"delivered\",\"comment\":\"1z32423942049\",\"delivery_time\":1554805417},{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok'),
(214, '197001214', '29', NULL, '{\"ec8ce6abb3e952a85b8551ba726a1227\":{\"id\":\"220\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3.99,\"name\":\"6\\\"x10\\\" piece of leather\",\"shipping\":\"1.00\",\"tax\":0,\"image\":\"https:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_220_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"ec8ce6abb3e952a85b8551ba726a1227\",\"subtotal\":3.99},\"eda80a3d5b344bc40f3bc04f65b7a357\":{\"id\":\"267\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_1\\\":{\\\"title\\\":\\\"diameter\\\",\\\"value\\\":null}}\",\"price\":20,\"name\":\"Item23\",\"shipping\":\"1.50\",\"tax\":0,\"image\":\"https:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_267_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"eda80a3d5b344bc40f3bc04f65b7a357\",\"subtotal\":20},\"060ad92489947d410d897474079c1477\":{\"id\":\"221\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3.99,\"name\":\"8\\\" x 11\\\" piece of Leather\",\"shipping\":\"1\",\"tax\":0,\"image\":\"https:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_221_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"060ad92489947d410d897474079c1477\",\"subtotal\":3.99},\"e56954b4f6347e897f954495eab16a88\":{\"id\":\"265\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":10,\"name\":\"Test\",\"shipping\":\"0\",\"tax\":0,\"image\":\"https:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_265_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e56954b4f6347e897f954495eab16a88\",\"subtotal\":10},\"084b6fbb10729ed4da8c3d3f5a3ae7c9\":{\"id\":\"196\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":196.35,\"name\":\"Stone & Beam Cheyanne Modern Accent Chair\",\"shipping\":\"0\",\"tax\":0,\"image\":\"https:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_196_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"084b6fbb10729ed4da8c3d3f5a3ae7c9\",\"subtotal\":196.35},\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_1\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"https:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40}}', '{\"taxvalue\":\"3.13\",\"shippingvalue\":\"3.50\",\"firstname\":\"Test\",\"lastname\":\"Customer\",\"address1\":\"888\",\"address2\":\"\",\"zip\":\"01510\",\"email\":\"customer4@sweetperversions.net\",\"phone\":\"5055055555\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"\",\"tax1\":\"\",\"shipping1\":\"\",\"grand_total1\":\"\"}', '', '', '', 'cash_on_delivery', '[{\"vendor\":\"12\",\"status\":\"due\"},{\"vendor\":\"19\",\"status\":\"due\"},{\"admin\":\"\",\"status\":\"due\"}]', 'due', '', NULL, '', '07-04-2019', NULL, '', '[{\"vendor\":\"12\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"vendor\":\"19\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(215, '197001215', '26', NULL, '{\"045117b0e0a11a242b9765e79cbf113f\":{\"id\":\"180\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3500,\"name\":\"Canon Digital SLR Camera\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_180_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"045117b0e0a11a242b9765e79cbf113f\",\"subtotal\":3500}}', '{\"taxvalue\":\"0.00\",\"shippingvalue\":\"0.00\",\"firstname\":\"Chiranjit\",\"lastname\":\"Jana\",\"address1\":\"kol\",\"address2\":\"kol2\",\"zip\":\"700112\",\"email\":\"cj.techizer@gmail.com\",\"phone\":\"9831160745\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"$3,500.00\",\"tax1\":\"$0.00\",\"shipping1\":\"$0.00\",\"grand_total1\":\"$3,500.00\"}', '$0.00', '', '$0.00', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', 'due', '', NULL, '$3,500.00', '09-04-2019', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(216, '197001216', '29', NULL, '{\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\":{\"id\":\"172\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_1\\\":{\\\"title\\\":\\\"Size\\\",\\\"value\\\":null}}\",\"price\":40,\"name\":\"KOKO COLLECTION\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_172_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"1ff8a7b5dc7a7d1f0ed65aaa29c04b1e\",\"subtotal\":40},\"013d407166ec4fa56eb1e1f8cbe183b9\":{\"id\":\"138\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":31.8,\"name\":\"Roll-Up Button Down Shirt\",\"shipping\":\"10\",\"tax\":3.18,\"image\":\"http:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_138_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"013d407166ec4fa56eb1e1f8cbe183b9\",\"subtotal\":31.8},\"084b6fbb10729ed4da8c3d3f5a3ae7c9\":{\"id\":\"196\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":196.35,\"name\":\"Stone & Beam Cheyanne Modern Accent Chair\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_196_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"084b6fbb10729ed4da8c3d3f5a3ae7c9\",\"subtotal\":196.35},\"e56954b4f6347e897f954495eab16a88\":{\"id\":\"265\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":10,\"name\":\"Test\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_265_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"e56954b4f6347e897f954495eab16a88\",\"subtotal\":10},\"eda80a3d5b344bc40f3bc04f65b7a357\":{\"id\":\"267\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"},\\\"choice_1\\\":{\\\"title\\\":\\\"diameter\\\",\\\"value\\\":null}}\",\"price\":20,\"name\":\"Item23\",\"shipping\":\"1.50\",\"tax\":0,\"image\":\"http:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_267_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"eda80a3d5b344bc40f3bc04f65b7a357\",\"subtotal\":20},\"48aedb8880cab8c45637abc7493ecddd\":{\"id\":\"288\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":7.99,\"name\":\"test leather\",\"shipping\":\"1.00\",\"tax\":0,\"image\":\"http:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_288_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"48aedb8880cab8c45637abc7493ecddd\",\"subtotal\":7.99},\"060ad92489947d410d897474079c1477\":{\"id\":\"221\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3.99,\"name\":\"8\",\"shipping\":\"1\",\"tax\":0,\"image\":\"http:\\/\\/www.techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_221_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"060ad92489947d410d897474079c1477\",\"subtotal\":3.99}}', '{\"taxvalue\":\"5.11\",\"shippingvalue\":\"13.50\",\"firstname\":\"Test\",\"lastname\":\"Customer\",\"address1\":\"888\",\"address2\":\"\",\"zip\":\"01510\",\"email\":\"customer4@sweetperversions.net\",\"phone\":\"5055055555\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"\",\"tax1\":\"\",\"shipping1\":\"\",\"grand_total1\":\"\"}', '', '', '', 'cash_on_delivery', '[{\"vendor\":\"12\",\"status\":\"due\"},{\"vendor\":\"19\",\"status\":\"paid\"},{\"admin\":\"\",\"status\":\"due\"}]', 'due', NULL, NULL, '', '09-04-2019', NULL, '', '[{\"vendor\":\"12\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"},{\"vendor\":\"19\",\"status\":\"delivered\",\"comment\":\"\",\"delivery_time\":1554805431},{\"admin\":\"\",\"status\":\"pending\",\"delivery_time\":\"\"}]', 'ok'),
(218, '197001218', '26', NULL, '{\"045117b0e0a11a242b9765e79cbf113f\":{\"id\":\"180\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3500,\"name\":\"Canon Digital SLR Camera\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_180_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"045117b0e0a11a242b9765e79cbf113f\",\"subtotal\":3500}}', '{\"taxvalue\":\"0.00\",\"shippingvalue\":\"0.00\",\"firstname\":\"Chiranjit\",\"lastname\":\"Jana\",\"address1\":\"kol\",\"address2\":\"kol2\",\"zip\":\"700112\",\"email\":\"cj.techizer@gmail.com\",\"phone\":\"9831160745\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"$3,500.00\",\"tax1\":\"$0.00\",\"shipping1\":\"$0.00\",\"grand_total1\":\"$3,500.00\"}', '$0.00', '', '$0.00', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', 'due', '', NULL, '$3,500.00', '10-04-2019', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL),
(226, '197001226', '26', NULL, '{\"045117b0e0a11a242b9765e79cbf113f\":{\"id\":\"180\",\"qty\":1,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":3500,\"name\":\"Canon Digital SLR Camera\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_180_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"045117b0e0a11a242b9765e79cbf113f\",\"subtotal\":3500},\"8f53295a73878494e9bc8dd6c3c7104f\":{\"id\":\"179\",\"qty\":2,\"option\":\"{\\\"color\\\":{\\\"title\\\":\\\"Color\\\",\\\"value\\\":\\\"\\\"}}\",\"price\":99,\"name\":\"PLAYBOY - Bundle Offer\",\"shipping\":\"0\",\"tax\":0,\"image\":\"http:\\/\\/techizer.co\\/livedemo\\/development\\/rayant\\/uploads\\/product_image\\/product_179_1_thumb.jpg\",\"coupon\":\"\",\"rowid\":\"8f53295a73878494e9bc8dd6c3c7104f\",\"subtotal\":198}}', '{\"taxvalue\":\"0.00\",\"shippingvalue\":\"0.00\",\"firstname\":\"Chiranjit\",\"lastname\":\"Jana\",\"address1\":\"kol\",\"address2\":\"kol2\",\"zip\":\"700112\",\"email\":\"cj.techizer@gmail.com\",\"phone\":\"9831160745\",\"langlat\":\"\",\"payment_type\":\"cash_on_delivery\",\"total1\":\"$3,698.00\",\"tax1\":\"$0.00\",\"shipping1\":\"$0.00\",\"grand_total1\":\"$3,698.00\"}', '$0.00', '', '$0.00', 'cash_on_delivery', '[{\"admin\":\"\",\"status\":\"due\"}]', 'due', '', NULL, '$3,698.00', '19-04-2019', NULL, '', '[{\"admin\":\"\",\"status\":\"pending\",\"comment\":\"\",\"delivery_time\":\"\"}]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shiping_state`
--

CREATE TABLE `shiping_state` (
  `id` int(11) NOT NULL,
  `sname` text,
  `scost` text,
  `addedby` text,
  `sdate` text,
  `stime` text,
  `action` varchar(255) NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shiping_state`
--

INSERT INTO `shiping_state` (`id`, `sname`, `scost`, `addedby`, `sdate`, `stime`, `action`) VALUES
(1, 'Alabama', '4.00', 'admin', '05-03-2019', '06:25:14 AM', 'Y'),
(2, 'Alaska', '0.00', 'admin', '05-03-2019', '06:25:43 AM', 'Y'),
(3, 'Arizona', '5.60', 'admin', '05-03-2019', '06:25:56 AM', 'Y'),
(4, 'Arkansas', '6.50', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(5, 'California', '7.25', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(6, 'Colorado', '2.90', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(7, 'Connecticut', '6.35', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(8, 'Delaware', '0.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(9, 'DC', '5.75', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(10, 'Florida', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(11, 'Georgia', '4.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(12, 'Hawaii', '4.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(13, 'Idaho', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(14, 'Illinois', '6.25', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(15, 'Indiana', '7.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(16, 'Iowa', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(17, 'Kansas', '6.50', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(18, 'Kentucky', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(19, 'Louisiana', '5.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(20, 'Maine', '5.50', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(21, 'Maryland', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(22, 'Massachusetts', '6.25', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(23, 'Michigan', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(24, 'Minnesota', '6.88', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(25, 'Mississippi', '7.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(26, 'Missouri', '4.23', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(27, 'Montana', '0.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(28, 'Nebraska', '5.50', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(29, 'Nevada', '6.85', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(30, 'NewHampshire', '0.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(31, 'NewJersey', '6.53', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(32, 'NewMexico', '5.13', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(33, 'NewYork', '4.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(34, 'NorthCarolina', '4.75', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(35, 'NorthDakota', '5.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(36, 'Ohio', '5.75', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(37, 'Oklahoma', '4.50', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(38, 'Oregon', '0.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(39, 'Pennsylvania', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(40, 'RhodeIsland', '7.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(41, 'SouthCarolina', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(42, 'SouthDakota', '4.50', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(43, 'Tennessee', '7.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(44, 'Texas', '6.25', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(45, 'Utah', '5.95', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(46, 'Vermont', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(47, 'Virginia', '5.30', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(48, 'Washington', '6.50', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(49, 'WestVirginia', '6.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(50, 'Wisconsin', '5.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y'),
(51, 'Wyoming', '4.00', 'admin', '05-03-2019', '06:26:10 AM', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `elements` longtext,
  `status` longtext,
  `title` longtext,
  `style` varchar(20) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `elements`, `status`, `title`, `style`, `serial`) VALUES
(2, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"WELCOME\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_2\",\"text\":\"YOUR SHOP NAME\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_3\",\"text\":\"SHOP TITLE\",\"color\":\"rgba(255,255,255,1)\",\"background\":\"rgba(0,0,0,0)\"}]}', 'ok', 'Welcome 2', '1', 2),
(4, '{\"images\":[],\"texts\":[{\"name\":\"text_1\",\"text\":\"Introducing \",\"color\":\"rgba(33,38,51,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_2\",\"text\":\"Active Super Shop\",\"color\":\"rgba(101,3,199,1)\",\"background\":\"rgba(0,0,0,0)\"},{\"name\":\"text_3\",\"text\":\"Multi-vendor CMS version 1.5.2\",\"color\":\"rgba(167,0,181,1)\",\"background\":\"rgba(0,0,0,0)\"}]}', 'ok', 'Welcome Slider', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `slider_style`
--

CREATE TABLE `slider_style` (
  `slider_style_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider_style`
--

INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(1, 'WELCOME TYPE 1', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:6500;transition2d:all;transition3d:15;\\\"\",\n   \"background\":\"bg\",\n   \"images\":[\n\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"WELCOME\",\n         \"name\":\"text_1\",\n         \"style\":\"top:30%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:50px;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"YOUR SHOP NAME\",\n         \"name\":\"text_2\",\n         \"style\":\"top:50%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:100px;  white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:500; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      },\n      {\n         \"element\":\"h1\",\n         \"show_name\":\"SHOP TITLE\",\n         \"name\":\"text_3\",\n         \"style\":\"top:70%; left:50%; text-shadow: 0px 0px 20px white;  font-weight: 300; font-size:40px; white-space: nowrap;\",\n         \"data_ls\":\"offsetxin:0; durationin:2500; delayin:1200; offsetxout:0; durationout:2500; showuntil:1;\",\n         \"color\":\"#ffffff\",\n         \"background\":\"rgba(0,0,0,0)\"\n      }\n   ]\n}'),
(2, 'WELCOME TYPE 2', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:4500;transition2d:24,25,27,28,34,35,37,38,110,113;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"ase\",\r\n         \"style\":\"top:20px; left:50%;width:220px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:4600; easingin:easeOutQuad; fadein:false; rotatein:-10; offsetxout:0; durationout:1500;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"WELCOME TO\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:260px; left:50%; text-align: center;  font-weight: 300; width:300px; height:60px; font-size:30px; line-height:60px; border-radius:5px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:top; durationout:750; durationin:1000; fadeout:false;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"YOUR SHOP NAME\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:340px; left:50%; text-align: center; font-weight: 300; width:500px; height:100px; font-size:40px; line-height:100px; border-radius:5px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; scalexin:0; scaleyin:0; offsetxout:0; offsetyout:bottom; durationin:1000; durationout:750; fadeout:false;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#8D00B0\"\r\n      }\r\n   ]\r\n}'),
(3, 'SLIDER TYPE 1', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7000;transition2d:76,77,78,79;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Product Image 1\",\r\n         \"name\":\"circle_1\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:1500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; \"\r\n      },\r\n      {\r\n         \"show_name\":\"Product Image 2\",\r\n         \"name\":\"circle_2\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:3000; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; showuntil:1; easingout:easeInQuart; fadeout:false; \"\r\n      },\r\n      {\r\n         \"show_name\":\"Product Image 3\",\r\n         \"name\":\"circle_3\",\r\n         \"style\":\"top:35%; left:60%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:top; durationin:750; delayin:4500; easingin:easeOutQuart; fadein:false; offsetxout:right; durationout:1000; easingout:easeInQuart; fadeout:false; \"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:105px; left:30px; text-align: center; font-weight: 300; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:155px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px; left:85px; font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:205px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:1000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:left; delayin:1000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:255px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX;  border-radius:100px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:1500; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5;\",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:1500; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:305px; left:30px; font-weight: 300; text-align: center; width:30px; height:30px; font-size:30px; line-height:30PX; border-radius:100px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:750; delayin:2000; easingin:easeOutQuint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#C404BD\",\r\n         \"other\":\"fixed\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px; left:85px;  font-weight: 300; font-size:25px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:left; delayin:2000; easingin:easeOutBack; fadein:false; scalexin:0.1; scaleyin:0.1; offsetxout:left; durationout:750; fadeout:false; scalexout:0.1; scaleyout:0.1;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 1\",\r\n         \"name\":\"product_title_1\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:1750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 2\",\r\n         \"name\":\"product_title_2\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap; \",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:3250; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; showuntil:51; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE 3\",\r\n         \"name\":\"product_title_3\",\r\n         \"style\":\"top:65%; left:60%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:450; delayin:4750; easingin:easeOutQuart; scalexin:0; scaleyin:0; offsetxout:0; durationout:1000; easingout:easeInQuart; scalexout:3; scaleyout:3;\",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(4, 'SLIDER TYPE 2', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:4500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:80px; white-space:nowrap; width:220px;\",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:180px; white-space:nowrap;width:220px; \",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:280px; white-space:nowrap; width:220px;\",\r\n         \"data_ls\":\"offsetxin:left;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_3\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:700px; font-weight:300; font-size:40px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURe 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:761px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:107px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:157px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:207px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:257px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:307px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_6\",\r\n         \"style\":\"top:357px;left:710px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      }\r\n   ]\r\n}'),
(5, 'SLIDER TYPE 3', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:580px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1400; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:680px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1200; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:780px;width:220px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:right;durationin:1500; delayin:1000; fadein:false; offsetxout:left; durationout:1000; fadeout:false; \",\r\n         \"name\":\"semi_long_3\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:80px; font-weight:300; font-size:40px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:1000; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_1\",\r\n         \"style\":\"top:107px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_2\",\r\n         \"style\":\"top:157px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_3\",\r\n         \"style\":\"top:207px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:1500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:1800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_4\",\r\n         \"style\":\"top:257px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:2300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_5\",\r\n         \"style\":\"top:307px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:2500; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:116px; font-weight:300; font-size:30px; white-space:nowrap;\",\r\n         \"data_ls\":\"offsetxin:0;delayin:2800; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"+\",\r\n         \"name\":\"feature_bullet_6\",\r\n         \"style\":\"top:357px;left:71px; font-weight:300; text-align:center; width:30px; height:30px; font-size:30px; line-height:30px; border-radius:100px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:750; delayin:3000; easingin:easeoutquint; rotatein:90; scalexin:0.5; scaleyin:0.5; offsetxout:0; durationout:750; rotateout:90; scalexout:0.5; scaleyout:0.5; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#c404bd\"\r\n      },\r\n      {\r\n         \"element\":\"h5\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:116px; font-weight:300; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;delayin:3300; easingin:easeoutquint; scalexin:0.8; scaleyin:0.8; offsetxout:0; durationout:750; scalexout:0.8; scaleyout:0.8; \",\r\n         \"color\":\"#8d00b0\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(6, 'SLIDER TYPE 4', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:105,106;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"name\":\"long_1\",\r\n         \"style\":\"top:60px;left:578px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"name\":\"semi_long_1\",\r\n         \"style\":\"top:170px;left:800px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"name\":\"square_1\",\r\n         \"style\":\"top:265px;left:1020px;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:4000; delayin:1500; easingin:easeinoutquad; scalexin:1.1; scaleyin:1.1; offsetxout:0; durationout:1000; scalexout:0.9; scaleyout:0.9; \",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:20px;left:50px; font-size:50px; font-weight:300; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:500; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotatexout:90; transformoriginout:50; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 1\",\r\n         \"name\":\"product_feature_1\",\r\n         \"style\":\"top:100px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 2\",\r\n         \"name\":\"product_feature_2\",\r\n         \"style\":\"top:150px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:1000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 3\",\r\n         \"name\":\"product_feature_3\",\r\n         \"style\":\"top:200px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:1500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 4\",\r\n         \"name\":\"product_feature_4\",\r\n         \"style\":\"top:250px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:2000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 5\",\r\n         \"name\":\"product_feature_5\",\r\n         \"style\":\"top:300px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:2500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 6\",\r\n         \"name\":\"product_feature_6\",\r\n         \"style\":\"top:350px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:3000; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"div\",\r\n         \"show_name\":\"PRODUCT FEATURE 7\",\r\n         \"name\":\"product_feature_7\",\r\n         \"style\":\"top:400px;left:50px; text-align:justify; width:500px; font-size:20px; \",\r\n         \"data_ls\":\"offsetxin:-150;durationin:2000; delayin:3500; easingin:easeinoutquart; rotateyin:-40; offsetxout:-150; durationout:1000; rotateyout:-40; \",\r\n         \"color\":\"#470467\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(7, 'SLIDER TYPE 5', '{\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\n   \"background\":\"bg_apple\",\n   \"images\":[\n      {\n         \"name\":\"long_1\",\n         \"style\":\"top:50%; left:50%;width:200px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"show_name\":\"IMAGE\"\n      }\n   ],\n   \"texts\":[\n      {\n         \"element\":\"h6\",\n         \"show_name\":\"PRICE\",\n         \"name\":\"price\",\n         \"style\":\"top:55%; left:39%; durationin:500; delayin:600; fadein:false; rotatein:30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1; scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#B816B2; border-radius:5px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"color\":\"#ffffff\",\n         \"background\":\"#b816b2\"\n      },\n      {\n         \"element\":\"h6\",\n         \"show_name\":\"PRODUCT TITLE\",\n         \"name\":\"product_title\",\n         \"style\":\"top:45%; left:36%; durationin:500; delayin:500; fadein:false; rotatein:-30; durationout:500; fadeout:false; slidedirection:fade; slideoutdirection:fade; scalein:0.1;scaleout:0.1; font-weight:300; box-shadow:0px 2px 8px -2px black; padding-top:5px; padding-right:20px; padding-bottom:5px; padding-left:20px; font-size:30px; color:#ffffff; background:#760093;border-radius:5px; white-space:nowrap;\",\n         \"data_ls\" : \"\",\n         \"color\":\"#ffffff\",\n         \"background\":\"#760093\"\n      }\n   ]\n}'),
(8, 'SLIDER TYPE 6', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:100px;left:100px; width:250px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:1500; rotateyin:90; transformoriginin:left; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:left; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:100px;left:400px; width:250px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:3000; delayin:1500; rotateyin:-90; transformoriginin:right; 0; offsetxout:0; durationout:750; rotateyout:90; transformoriginout:right; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"font-family:Roboto;top:25px; left:192px; font-weight:100; text-align:center; width:340px; font-size:40px; border-radius:5px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:2000; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; bottom; 0; offsetxout:0; rotateout:-90; transformoriginout:left; \",\r\n         \"color\":\"#34009d\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\" DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:50px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:2300; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:90px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:2700; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:150px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:3000; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:190px;left:800px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:3400; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:250px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:3700; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:290px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:4100; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 7\",\r\n         \"name\":\"dummy_text_7\",\r\n         \"style\":\"top:360px;left:800px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;delayin:4400; rotatein:20; rotatexin:30; scalexin:1.5; scaleyin:1.5; transformoriginin:left; 0; durationout:750; rotateout:20; rotatexout:-30; scalexout:0; scaleyout:0; transformoriginout:left; \",\r\n         \"color\":\"#ffffff\",\r\n         \"background\":\"#740091\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 8\",\r\n         \"name\":\"dummy_text_8\",\r\n         \"style\":\"top:400px;left:799px; font-weight:300; font-size:24px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:1500; delayin:4800; rotateyin:90; skewxin:60; transformoriginin:25; 0; offsetxout:100; durationout:750; skewxout:60; \",\r\n         \"color\":\"#ff00f6\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(9, 'SLIDER TYPE 7', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7500;transition2d:73,102;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:50px; left:50%;width:278px; white-space:nowrap;\",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"IMAGE\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; \",\r\n         \"color\":\"#fff\",\r\n         \"background\":\"#11008b\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; \",\r\n         \"color\":\"#d9482b\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}');
INSERT INTO `slider_style` (`slider_style_id`, `name`, `value`) VALUES
(10, 'SLIDER TYPE 8', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:7000;transition2d:76,77,78,79;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"style\":\"top:120px; left:42%;width:180px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 1\"\r\n      },\r\n      {\r\n         \"style\":\"top:120px; left:58%;width:180px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"semi_long_2\",\r\n         \"show_name\":\"PRODUCT IMAGE 2\"\r\n      },\r\n      {\r\n         \"style\":\"top:50px; left:50%;width:200px; white-space:nowrap; \",\r\n         \"data_ls\":\"durationin:1500;scalexin:0.8; scaleyin:0.8; scalexout:0.8; scaleyout:0.8; \",\r\n         \"name\":\"long_1\",\r\n         \"show_name\":\"PRODUCT IMAGE 3\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 1\",\r\n         \"name\":\"dummy_text_1\",\r\n         \"style\":\"top:80px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 2\",\r\n         \"name\":\"dummy_text_2\",\r\n         \"style\":\"top:140px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:1500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 3\",\r\n         \"name\":\"dummy_text_3\",\r\n         \"style\":\"top:200px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 4\",\r\n         \"name\":\"dummy_text_4\",\r\n         \"style\":\"top:260px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:2500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 5\",\r\n         \"name\":\"dummy_text_5\",\r\n         \"style\":\"top:320px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3000; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 6\",\r\n         \"name\":\"dummy_text_6\",\r\n         \"style\":\"top:380px;left:20px; font-weight:300; height:40px; padding-right:10px; padding-left:10px; font-size:30px; line-height:37px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;durationin:2000; delayin:3500; offsetxout:-50; durationout:1000; \",\r\n         \"color\":\"#fd2931\",\r\n         \"background\":\"rgba(255,255,255,0.85)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"product_title\",\r\n         \"style\":\"top:50%;left:900px; font-weight:100; text-align:right; padding:15px; font-size:40px; line-height:37px; font-family:roboto; border-radius:4px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:0;durationin:2500; delayin:3250; easingin:easeoutelastic; rotatexin:90; transformoriginin:50; top; 0; offsetxout:0; durationout:1000; rotatexout:90; transformoriginout:50; bottom; \",\r\n         \"color\":\"#fff\",\r\n         \"background\":\"#11008b\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"DUMMY TEXT 7\",\r\n         \"name\":\"dummy_text_7\",\r\n         \"style\":\"top:505px;left:983px; font-family:; flower; font-size:30px; white-space:nowrap; \",\r\n         \"data_ls\":\"offsetxin:-50;delayin:3500; skewxin:60; scalexin:1.5; offsetxout:-50; durationout:1000; skewxout:60; scalexout:1.5; \",\r\n         \"color\":\"#000\",\r\n         \"background\":\"rgba(0,0,0,0)\"\r\n      }\r\n   ]\r\n}'),
(11, 'WELCOME TYPE 3', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:8000;transition2d:4;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"ase\",\r\n         \"style\":\"top:45%; left:45%;width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:right 50% 0; offsetxout:0; durationout:1500; showuntil:1000; rotateyout:-90; transformoriginout:right 50% 0;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"Introducing\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:40%; left:50%; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:50; durationin:750; easingin:easeOutBack; skewxin:-50; offsetxout:-50; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;\",\r\n         \"color\":\"#C505BD\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"Your Shop Name\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:50%; left:50%; font-weight: 300; font-size:50px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:-100; durationin:750; delayin:250; easingin:easeOutBack; skewxin:-50; offsetxout:100; durationout:600; showuntil:1500; easingout:easeInBack; skewxout:50;\",\r\n         \"color\":\"#8D00AF\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"p\",\r\n         \"show_name\":\"your Shop Slogan\",\r\n         \"name\":\"text_3\",\r\n         \"style\":\"top:47%; left:690px; font-weight: 300; font-size:35px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:1500; delayin:3000; rotateyin:90; transformoriginin:left 50% 0; offsetxout:0; durationout:1500; showuntil:1500; rotateyout:-90; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#8D00AF\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      }\r\n   ]\r\n}'),
(12, 'SLIDER TYPE 9', '{\r\n   \"full_slide_style\":\"data-ls=\\\"slidedelay:9500;transition2d:5;timeshift:-3000;\\\"\",\r\n   \"background\":\"bg_apple\",\r\n   \"images\":[\r\n      {\r\n         \"show_name\":\"Image 1\",\r\n         \"name\":\"semi_long_1\",\r\n         \"style\":\"top:120px; left:300px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:1000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      },\r\n      {\r\n         \"show_name\":\"Image 2\",\r\n         \"name\":\"semi_long_2\",\r\n         \"style\":\"top:120px; left:200px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:2000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      },\r\n      {\r\n         \"show_name\":\"Image 3\",\r\n         \"name\":\"semi_long_3\",\r\n         \"style\":\"top:120px; left:100px; width:200px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; offsetyin:100; durationin:2000; delayin:3000; offsetxout:-100; offsetyout:50; durationout:2000; showuntil:2010;\"\r\n      }\r\n   ],\r\n   \"texts\":[\r\n      {\r\n         \"element\":\"h1\",\r\n         \"show_name\":\"PRODUCT TITLE\",\r\n         \"name\":\"text_1\",\r\n         \"style\":\"top:60px; left:800px; font-weight: 300; font-size:50px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:50; durationin:3000; rotateyin:60; transformoriginin:right 50% 0; offsetxout:-50; durationout:3000; rotateyout:-60; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#730091\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h2\",\r\n         \"show_name\":\"BIG SALE\",\r\n         \"name\":\"text_2\",\r\n         \"style\":\"top:120px; left:801px; font-weight: 300; font-size:30px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:-50; durationin:3000; delayin:500; rotateyin:-60; transformoriginin:left 50% 0; offsetxout:50; durationout:3000; rotateyout:60; transformoriginout:right 50% 0;\",\r\n         \"color\":\"#FA6BF3\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      },\r\n      {\r\n         \"element\":\"h3\",\r\n         \"show_name\":\"$99\",\r\n         \"name\":\"text_3\",\r\n         \"style\":\"top:200px; left:850px; font-weight: 300; font-size:120px; white-space: nowrap;\",\r\n         \"data_ls\":\"offsetxin:0; durationin:4000; delayin:2000; rotateyin:450; transformoriginin:left 50% 0; offsetxout:0; durationout:500; easingout:easeInBack; rotateyout:90; transformoriginout:left 50% 0;\",\r\n         \"color\":\"#730091\",\r\n         \"background\":\"rgba(1,1,1,0)\"\r\n      }\r\n   ]\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `slides_id` int(11) NOT NULL,
  `button_color` longtext,
  `text_color` longtext,
  `button_text` varchar(300) DEFAULT NULL,
  `button_link` varchar(500) DEFAULT NULL,
  `uploaded_by` longtext,
  `added_by` longtext,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`slides_id`, `button_color`, `text_color`, `button_text`, `button_link`, `uploaded_by`, `added_by`, `status`) VALUES
(15, '', '', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(16, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(19, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(20, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(21, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(22, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(23, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(24, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(25, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"3\"}', 'ok'),
(26, 'rgba(255,0,0,1)', 'rgba(255,255,255,1)', 'Demo', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"12\"}', '0'),
(27, 'rgba(134,217,29,1)', 'rgba(29,92,214,1)', 'link', 'www.google.com', 'vendor', '{\"type\":\"vendor\",\"id\":\"13\"}', 'ok'),
(28, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', '0'),
(29, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok'),
(30, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(31, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(32, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(33, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'vendor', '{\"type\":\"vendor\",\"id\":\"5\"}', 'ok'),
(34, 'rgba(245,233,233,1)', 'rgba(18,17,17,1)', 'Demo', 'https://www.google.com', 'vendor', '{\"type\":\"vendor\",\"id\":\"17\"}', 'ok'),
(35, 'rgba(0,0,0,1)', 'rgba(0,0,0,1)', '', '', 'admin', '{\"type\":\"admin\",\"id\":\"1\"}', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`) VALUES
(1, 'facebook', 'http://facebook.com/'),
(2, 'google-plus', 'http://google.com/'),
(3, 'twitter', 'http://twitter.com/'),
(4, 'skype', 'http://skype.com/'),
(5, 'pinterest', 'http://pinterest.com/'),
(6, 'youtube', 'http://youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `type` longtext,
  `category` longtext,
  `sub_category` longtext,
  `product` longtext,
  `quantity` longtext,
  `rate` longtext,
  `total` longtext,
  `reason_note` longtext,
  `datetime` longtext,
  `sale_id` varchar(30) DEFAULT NULL,
  `added_by` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `type`, `category`, `sub_category`, `product`, `quantity`, `rate`, `total`, `reason_note`, `datetime`, `sale_id`, `added_by`) VALUES
(1, 'add', '6', '15', '42', '50', '140.00', '7000', '', '1474202947', NULL, NULL),
(2, 'add', '6', '13', '41', '80', '220.00', '17600', '', '1474205403', NULL, NULL),
(3, 'add', '3', '19', '45', '10', '400.00', '4000', '', '1474273237', NULL, '{\"type\":\"vendor\",\"id\":\"2\"}'),
(4, 'destroy', '3', '19', '45', '3', NULL, '3', '', '1474273259', NULL, '{\"type\":\"vendor\",\"id\":\"2\"}'),
(5, 'add', '7', '24', '46', '50', '170.00', '8500', '', '1474279907', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(6, 'add', '7', '23', '47', '25', '8.00', '200', '', '1474283137', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(7, 'add', '7', '25', '48', '35', '6.00', '210', '', '1474284193', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(8, 'add', '5', '29', '50', '50', '15.25', '762.5', '', '1474485138', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(9, 'add', '5', '29', '49', '45', '34.35', '1545.75', '', '1474485156', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(10, 'add', '5', '29', '51', '25', '11.11', '277.75', '', '1474485808', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(11, 'add', '5', '29', '52', '18', '9.56', '172.08', '', '1474487386', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(12, 'add', '5', '27', '53', '10', '85.00', '850', '', '1474488421', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(13, 'add', '5', '27', '55', '15', '101.00', '1515', '', '1474489704', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(14, 'add', '5', '27', '54', '15', '100.00', '1500', '', '1474489715', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(15, 'add', '5', '27', '56', '25', '85.00', '2125', '', '1474490017', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(16, 'add', '5', '28', '57', '20', '65.00', '1300', '', '1474490674', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(17, 'add', '5', '28', '58', '25', '60.00', '1500', '', '1474491530', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(18, 'add', '5', '28', '59', '20', '65.00', '1300', '', '1474492165', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(19, 'add', '5', '30', '61', '100', '41.00', '4100', '', '1474493210', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(20, 'add', '5', '28', '60', '20', '75.00', '1500', '', '1474493219', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(21, 'add', '5', '30', '62', '80', '620.00', '49600', '', '1474493510', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(22, 'add', '5', '30', '63', '50', '650.00', '32500', '', '1474493879', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(23, 'add', '4', '9', '65', '30', '11.26', '337.8', '', '1474572304', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(24, 'add', '4', '9', '66', '35', '15.35', '537.25', '', '1474572782', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(25, 'add', '4', '9', '67', '30', '13.20', '396', '', '1474574151', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(26, 'add', '4', '10', '68', '20', '12.36', '247.2', '', '1474575119', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(27, 'add', '4', '10', '69', '30', '8.20', '245.99999999999997', '', '1474575712', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(28, 'add', '4', '11', '70', '25', '3.35', '83.75', '', '1474576989', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(29, 'add', '4', '11', '71', '50', '2.88', '144', '', '1474577860', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(30, 'add', '4', '11', '72', '10', '8.90', '89', '', '1474578795', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(31, 'add', '4', '36', '73', '15', '38.32', '574.8', '', '1474580033', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(32, 'add', '4', '36', '74', '20', '41.38', '827.6', '', '1474580235', NULL, '{\"type\":\"vendor\",\"id\":\"5\"}'),
(33, 'add', '4', '36', '75', '20', '39.63', '792.6', '', '1474580993', NULL, NULL),
(34, 'add', '1', '3', '76', '10', '43567.00', '435670', '', '1474721288', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(35, 'add', '1', '3', '77', '15', '58378.00', '875670', '', '1474722264', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(36, 'add', '1', '3', '78', '20', '131772.00', '2635440', '', '1474722788', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(37, 'add', '1', '63', '79', '5', '1734589.00', '8672945', '', '1474790400', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(38, 'add', '1', '63', '80', '10', '558900.00', '5589000', '', '1474792233', NULL, NULL),
(39, 'add', '1', '63', '81', '5', '3234690.00', '16173450', '', '1474792382', NULL, NULL),
(40, 'add', '1', '63', '82', '8', '4467490.00', '35739920', '', '1474792879', NULL, NULL),
(41, 'add', '1', '5', '83', '12', '11670.00', '140040', '', '1474793757', NULL, NULL),
(42, 'add', '1', '5', '84', '25', '42879.00', '1071975', '', '1474796354', NULL, NULL),
(43, 'add', '1', '5', '85', '18', '74590.00', '1342620', '', '1474796688', NULL, NULL),
(44, 'add', '1', '2', '86', '16', '45000.00', '720000', '', '1474799085', NULL, NULL),
(45, 'add', '1', '6', '87', '10', '41000.00', '410000', '', '1474800049', NULL, NULL),
(46, 'add', '1', '6', '88', '25', '33890.00', '847250', '', '1474800332', NULL, NULL),
(47, 'add', '1', '6', '89', '10', '42000.00', '420000', '', '1474801376', NULL, NULL),
(48, 'add', '2', '62', '90', '45', '61897.00', '2785365', '', '1474802601', NULL, NULL),
(49, 'add', '2', '17', '92', '55', '42000.00', '2310000', '', '1474803009', NULL, '{\"type\":\"vendor\",\"id\":\"3\"}'),
(50, 'add', '2', '62', '91', '10', '65000.00', '650000', '', '1474889590', NULL, NULL),
(52, 'add', '4', '10', '69', '0', '8.20', '0', '', '1475390469', NULL, NULL),
(53, 'add', '2', '18', '93', '10', '350.00', '3500', '', '1475483558', NULL, NULL),
(54, 'add', '2', '18', '94', '10', '350.00', '3500', '', '1475485603', NULL, NULL),
(56, 'add', '2', '18', '96', '100', '350.00', '35000', '', '1475498670', NULL, NULL),
(59, 'add', '1', '3', '4', '100', '88000.00', '8800000', '', '1476007723', NULL, NULL),
(60, 'add', '1', '2', '1', '50', '120000.00', '6000000', '', '1476007803', NULL, NULL),
(61, 'destroy', '4', '36', '74', '2', NULL, '0', 'sale', '1517725191', '5', NULL),
(62, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732450', '6', NULL),
(63, 'destroy', '4', '36', '73', '1', NULL, '0', 'sale', '1517732639', '7', NULL),
(64, 'add', '4', '10', '37', '100', '150.00', '15000', '', '1517942532', NULL, NULL),
(65, 'add', '4', '8', '36', '100', '210.00', '0', '', '1517942542', NULL, NULL),
(66, 'add', '4', '35', '35', '100', '240.00', '24000', '', '1517942553', NULL, NULL),
(67, 'add', '4', '9', '26', '100', '10.00', '1000', '', '1517942563', NULL, NULL),
(68, 'add', '4', '37', '25', '100', '250.00', '25000', '', '1517942574', NULL, NULL),
(69, 'add', '4', '37', '24', '100', '400.00', '40000', '', '1517942585', NULL, NULL),
(70, 'add', '4', '37', '23', '100', '210.00', '21000', '', '1517942598', NULL, NULL),
(71, 'add', '4', '40', '18', '200', '100.00', '20000', '', '1517942609', NULL, NULL),
(72, 'add', '4', '35', '17', '150', '120.00', '18000', '', '1517942624', NULL, NULL),
(73, 'add', '4', '39', '16', '200', '110.00', '22000', '', '1517942637', NULL, NULL),
(74, 'add', '4', '37', '15', '200', '130.00', '0', '', '1517942647', NULL, NULL),
(75, 'add', '4', '34', '14', '100', '320.00', '32000', '', '1517942656', NULL, NULL),
(76, 'add', '4', '8', '12', '200', '180.00', '36000', '', '1517942666', NULL, NULL),
(77, 'add', '4', '11', '11', '100', '6500.00', '650000', '', '1517942677', NULL, NULL),
(78, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1517942691', NULL, NULL),
(79, 'add', '4', '10', '7', '500', '35.00', '17500', '', '1517942704', NULL, NULL),
(80, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1517942726', NULL, NULL),
(81, 'add', '5', '28', '9', '500', '120.00', '60000', '', '1517942751', NULL, NULL),
(82, 'add', '16', '78', '101', '10', '95.00', '950', '', '1518078812', NULL, NULL),
(83, 'add', '16', '78', '103', '20', '125.00', '2500', '', '1518079324', NULL, NULL),
(84, 'add', '16', '78', '102', '15', '125.00', '1875', '', '1518079332', NULL, NULL),
(85, 'add', '16', '78', '104', '15', '125.00', '1875', '', '1518079423', NULL, NULL),
(86, 'add', '16', '78', '104', '100', '125.00', '12500', '', '1518079433', NULL, NULL),
(87, 'add', '16', '78', '103', '150', '125.00', '18750', '', '1518079443', NULL, NULL),
(88, 'add', '16', '78', '102', '90', '125.00', '11250', '', '1518079453', NULL, NULL),
(89, 'add', '16', '78', '101', '120', '95.00', '11400', '', '1518079464', NULL, NULL),
(90, 'add', '1', '6', '89', '50', '42000.00', '2100000', '', '1518079474', NULL, NULL),
(91, 'add', '1', '6', '88', '50', '33890.00', '1694500', '', '1518079483', NULL, NULL),
(92, 'add', '1', '6', '87', '80', '41000.00', '3280000', '', '1518079495', NULL, NULL),
(93, 'add', '1', '6', '86', '80', '45000.00', '3600000', '', '1518079507', NULL, NULL),
(94, 'add', '16', '78', '105', '120', '110.00', '13200', '', '1518079727', NULL, NULL),
(95, 'add', '16', '78', '106', '150', '122.00', '18300', '', '1518079898', NULL, NULL),
(96, 'add', '16', '79', '107', '120', '145.00', '17400', '', '1518080173', NULL, NULL),
(97, 'add', '16', '79', '108', '80', '144.00', '11520', '', '1518080359', NULL, NULL),
(98, 'add', '16', '79', '110', '50', '75.00', '3750', '', '1518081142', NULL, NULL),
(99, 'add', '16', '79', '109', '60', '140.00', '8400', '', '1518081151', NULL, NULL),
(100, 'add', '16', '79', '111', '100', '95.00', '9500', '', '1518081235', NULL, NULL),
(101, 'add', '16', '79', '112', '150', '50.00', '7500', '', '1518081346', NULL, NULL),
(102, 'add', '16', '80', '113', '150', '95.00', '14250', '', '1518081575', NULL, NULL),
(103, 'add', '16', '80', '114', '130', '98.00', '12740', '', '1518081650', NULL, NULL),
(104, 'add', '16', '80', '115', '200', '100.00', '20000', '', '1518081994', NULL, NULL),
(105, 'add', '5', '27', '117', '85', '45.00', '3825', '', '1518082666', NULL, NULL),
(106, 'add', '16', '80', '116', '100', '92.00', '9200', '', '1518082674', NULL, NULL),
(107, 'add', '5', '27', '118', '80', '56.00', '4480', '', '1518082825', NULL, NULL),
(108, 'add', '5', '27', '120', '80', '65.00', '5200', '', '1518083101', NULL, NULL),
(109, 'add', '5', '27', '119', '80', '65.00', '5200', '', '1518083110', NULL, NULL),
(110, 'add', '5', '28', '121', '50', '79.00', '3950', '', '1518083320', NULL, NULL),
(111, 'add', '5', '28', '122', '60', '55.00', '3300', '', '1518083433', NULL, NULL),
(112, 'add', '5', '28', '123', '60', '66.00', '3960', '', '1518083632', NULL, NULL),
(113, 'add', '5', '29', '124', '82', '45.00', '3690', '', '1518083830', NULL, NULL),
(114, 'add', '5', '29', '124', '56', '45.00', '2520', '', '1518084168', NULL, NULL),
(115, 'add', '5', '30', '126', '55', '90.00', '4950', '', '1518084178', NULL, NULL),
(116, 'add', '5', '30', '127', '80', '125.00', '10000', '', '1518084186', NULL, NULL),
(117, 'add', '5', '29', '125', '50', '56.00', '2800', '', '1518084194', NULL, NULL),
(118, 'add', '4', '37', '128', '80', '120.00', '9600', '', '1518086137', NULL, NULL),
(119, 'add', '4', '37', '129', '100', '145.00', '14500', '', '1518086245', NULL, NULL),
(120, 'add', '1', '2', '130', '50', '32000.00', '1600000', '', '1518091220', NULL, NULL),
(121, 'destroy', '4', '36', '75', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(122, 'destroy', '5', '28', '58', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(123, 'destroy', '5', '28', '57', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(124, 'destroy', '5', '27', '54', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(125, 'destroy', '5', '29', '50', '1', NULL, '0', 'sale', '1518760022', '11', NULL),
(126, 'destroy', '12', '66', '98', '1', NULL, '0', 'sale', '1519796196', '12', NULL),
(127, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521374128', '15', NULL),
(128, 'destroy', '0', '0', '101', '1', NULL, '0', 'sale', '1521430987', '16', NULL),
(129, 'destroy', '13', '75', '99', '1', NULL, '0', 'sale', '1521541152', '17', NULL),
(130, 'destroy', '0', '0', '102', '1', NULL, '0', 'sale', '1521616455', '18', NULL),
(131, 'destroy', '0', '0', '102', '7', NULL, '0', 'sale', '1521616557', '19', NULL),
(132, 'destroy', '0', '0', '102', '1', NULL, '0', 'sale', '1521616913', '20', NULL),
(133, 'add', '4', '10', '37', '500', '150.00', '75000', '', '1522827326', NULL, NULL),
(134, 'add', '1', '5', '2', '100', '18000.00', '1800000', '', '1522827360', NULL, NULL),
(135, 'add', '4', '10', '7', '1000', '35.00', '35000', '', '1522827390', NULL, NULL),
(136, 'add', '4', '34', '14', '150', '320.00', '0', '', '1522827433', NULL, NULL),
(137, 'add', '4', '37', '15', '200', '130.00', '0', '', '1522827463', NULL, NULL),
(138, 'add', '4', '39', '16', '200', '110.00', '0', '', '1522827488', NULL, NULL),
(139, 'add', '4', '35', '17', '100', '120.00', '12000', '', '1522827994', NULL, NULL),
(140, 'add', '4', '40', '18', '150', '100.00', '15000', '', '1522828021', NULL, NULL),
(141, 'add', '4', '35', '35', '200', '240.00', '0', '', '1522828073', NULL, NULL),
(142, 'add', '4', '9', '26', '200', '10.00', '0', '', '1522828105', NULL, NULL),
(143, 'add', '4', '37', '25', '200', '250.00', '50000', '', '1522828132', NULL, NULL),
(144, 'add', '4', '37', '24', '200', '400.00', '0', '', '1522828163', NULL, NULL),
(145, 'add', '4', '37', '23', '300', '210.00', '0', '', '1522828256', NULL, NULL),
(146, 'add', '4', '8', '36', '400', '210.00', '0', '', '1522828286', NULL, NULL),
(147, 'add', '4', '8', '12', '300', '180.00', '0', '', '1522828328', NULL, NULL),
(148, 'add', '4', '11', '11', '250', '6500.00', '0', '', '1522828413', NULL, NULL),
(149, 'add', '5', '28', '9', '250', '120.00', '0', '', '1522828467', NULL, NULL),
(150, 'add', '5', '30', '8', '300', '650.00', '195000', '', '1522828488', NULL, NULL),
(151, 'add', '17', '78', '103', '30', '4.40', '132', '', '1522837440', NULL, NULL),
(152, 'add', '17', '78', '104', '50', '4.72', '236', '', '1522837706', NULL, NULL),
(153, 'add', '17', '78', '105', '20', '5.50', '110', '', '1522837862', NULL, NULL),
(154, 'add', '18', '79', '106', '15', '18.30', '274.5', '', '1522838553', NULL, NULL),
(155, 'add', '18', '79', '107', '12', '22.63', '271.56', '', '1522838928', NULL, NULL),
(156, 'add', '21', '80', '108', '5', '57.53', '287.65', '', '1522841201', NULL, NULL),
(157, 'add', '21', '80', '109', '1', '58.77', '58.77', '', '1522841562', NULL, NULL),
(158, 'add', '16', '81', '110', '5', '719.99', '3599.95', '', '1522842237', NULL, NULL),
(159, 'add', '16', '81', '111', '3', '209.99', '629.97', '', '1522842721', NULL, NULL),
(160, 'add', '16', '81', '112', '2', '629.99', '1259.98', '', '1522842852', NULL, NULL),
(161, 'add', '1', '3', '124', '200', '54000.00', '10800000', '', '1522922112', NULL, NULL),
(162, 'add', '1', '3', '125', '300', '59000.00', '17700000', '', '1522922301', NULL, NULL),
(163, 'add', '5', '27', '127', '25', '169.99', '4249.75', '', '1522925860', NULL, NULL),
(164, 'add', '5', '27', '127', '75', '169.99', '12749.25', '', '1522925881', NULL, NULL),
(165, 'add', '5', '27', '128', '100', '372.06', '37206', '', '1522926055', NULL, NULL),
(166, 'add', '5', '27', '130', '500', '79.20', '0', '', '1522930929', NULL, NULL),
(167, 'add', '5', '28', '129', '500', '50.00', '0', '', '1522930942', NULL, NULL),
(168, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1523524543', '21', NULL),
(169, 'destroy', '1', '3', '125', '1', NULL, '0', 'sale', '1523535450', '22', NULL),
(170, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1523535591', '23', NULL),
(171, 'destroy', '5', '27', '128', '1', NULL, '0', 'sale', '1523535591', '23', NULL),
(172, 'destroy', '0', '0', '126', '1', NULL, '0', 'sale', '1523852571', '24', NULL),
(173, 'destroy', '0', '0', '119', '1', NULL, '0', 'sale', '1523852571', '24', NULL),
(174, 'add', '1', '6', '131', '25', '26999.00', '674975', '', '1523857079', NULL, NULL),
(175, 'add', '1', '6', '132', '10', '4999.00', '49990', '', '1523861112', NULL, NULL),
(176, 'add', '1', '63', '133', '5', '117139.33', '585696.65', '', '1523863280', NULL, NULL),
(177, 'add', '1', '63', '134', '10', '794782.29', '7947822.9', '', '1523863576', NULL, NULL),
(178, 'add', '5', '28', '135', '200', '63.75', '12750', '', '1523867199', NULL, NULL),
(179, 'add', '5', '28', '136', '150', '44.99', '6748.5', '', '1523867819', NULL, NULL),
(180, 'add', '5', '29', '137', '500', '52.99', '26495', '', '1523868841', NULL, NULL),
(181, 'add', '5', '29', '138', '300', '31.80', '9540', '', '1523869110', NULL, NULL),
(182, 'add', '5', '29', '139', '300', '45.99', '13797', '', '1523869336', NULL, NULL),
(183, 'add', '5', '30', '140', '50', '26724.99', '1336249.5', '', '1523870296', NULL, NULL),
(184, 'add', '5', '30', '141', '100', '664.99', '66499', '', '1523870578', NULL, NULL),
(185, 'add', '16', '81', '142', '100', '794.00', '79400', '', '1523871020', NULL, NULL),
(186, 'add', '16', '81', '143', '100', '625.00', '62500', '', '1523871351', NULL, NULL),
(187, 'add', '16', '81', '144', '200', '409.00', '81800', '', '1523871782', NULL, NULL),
(188, 'add', '16', '83', '145', '50', '70.72', '3536', '', '1523872591', NULL, NULL),
(189, 'add', '16', '83', '146', '100', '11.58', '1158', '', '1523872944', NULL, NULL),
(190, 'add', '16', '83', '147', '140', '91.97', '12875.8', '', '1523873194', NULL, NULL),
(191, 'add', '16', '83', '148', '200', '96.28', '19256', '', '1523873449', NULL, NULL),
(192, 'add', '16', '83', '149', '50', '105.97', '5298.5', '', '1523873845', NULL, NULL),
(193, 'add', '16', '83', '150', '200', '36.43', '7286', '', '1523874195', NULL, NULL),
(194, 'add', '4', '9', '151', '300', '43.98', '13193.999999999998', '', '1523874895', NULL, NULL),
(195, 'add', '4', '10', '152', '250', '13.59', '3397.5', '', '1523875175', NULL, NULL),
(196, 'add', '4', '9', '153', '300', '19.99', '5996.999999999999', '', '1523875678', NULL, NULL),
(197, 'add', '4', '10', '154', '200', '16.29', '3258', '', '1523875974', NULL, NULL),
(198, 'add', '4', '11', '155', '50', '18.99', '949.4999999999999', '', '1523876663', NULL, NULL),
(199, 'add', '4', '11', '156', '10', '4530.00', '45300', '', '1523876990', NULL, NULL),
(200, 'add', '4', '37', '157', '100', '51.00', '5100', '', '1523877983', NULL, NULL),
(201, 'add', '4', '37', '158', '120', '158.99', '19078.800000000003', '', '1523878181', NULL, NULL),
(202, 'destroy', '4', '37', '158', '1', NULL, '0', 'sale', '1524471441', '29', NULL),
(203, 'add', '16', '87', '159', '500', '4500.00', '2250000', '', '1524784507', NULL, NULL),
(204, 'add', '16', '85', '160', '500', '1000.00', '0', '', '1524784752', NULL, NULL),
(205, 'add', '16', '88', '161', '500', '800.00', '0', '', '1524784866', NULL, NULL),
(206, 'add', '16', '86', '162', '500', '900.00', '450000', '', '1524845655', NULL, NULL),
(207, 'add', '16', '81', '166', '12', '125.00', '1500', '', '1524911159', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(208, 'add', '16', '81', '168', '5', '1190.00', '5950', '', '1524984498', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(209, 'add', '16', '83', '169', '5', '800.00', '4000', '', '1524984850', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(210, 'add', '16', '81', '170', '25', '1195.00', '29875', '', '1524984898', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(211, 'add', '16', '81', '171', '25', '1190.00', '29750', '', '1524985905', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(212, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1525079391', '38', NULL),
(213, 'destroy', '1', '3', '125', '1', NULL, '0', 'sale', '1526119327', '39', NULL),
(214, 'destroy', '1', '5', '2', '2', NULL, '0', 'sale', '1527064445', '44', NULL),
(215, 'destroy', '16', '85', '160', '1', NULL, '0', 'sale', '1528016175', '45', NULL),
(216, 'add', '4', '11', '172', '50', '40.00', '2000', '', '1528779289', NULL, NULL),
(217, 'add', '4', '11', '173', '50', '62.00', '3100', '', '1528779815', NULL, NULL),
(218, 'add', '4', '11', '174', '50', '30.00', '1500', '', '1528780266', NULL, NULL),
(219, 'add', '5', '89', '175', '100', '68.00', '6800', '', '1528785307', NULL, NULL),
(220, 'add', '5', '89', '176', '120', '12.00', '1440', '', '1528785411', NULL, NULL),
(221, 'add', '5', '89', '177', '45', '10.00', '450', '', '1528785743', NULL, NULL),
(222, 'add', '5', '89', '178', '60', '74.80', '4488', '', '1528786064', NULL, NULL),
(223, 'add', '16', '88', '180', '10', '3500.00', '35000', '', '1528787255', NULL, NULL),
(224, 'destroy', '13', '74', '182', '1', NULL, '0', 'sale', '1529556702', '56', NULL),
(225, 'destroy', '16', '81', '144', '1', NULL, '0', 'sale', '1530089371', '62', NULL),
(226, 'add', '4', '8', '183', '25', '180.00', '4500', '', '1530166850', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(227, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530166970', '63', NULL),
(228, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530174197', '64', NULL),
(229, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530174441', '65', NULL),
(230, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530176426', '67', NULL),
(231, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(232, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(233, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530177758', '68', NULL),
(234, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530177969', '69', NULL),
(235, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530177969', '69', NULL),
(236, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530178305', '70', NULL),
(237, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530178305', '70', NULL),
(238, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530178457', '71', NULL),
(239, 'destroy', '5', '89', '175', '1', NULL, '0', 'sale', '1530178457', '71', NULL),
(240, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(241, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(242, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1530178654', '72', NULL),
(243, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530178827', '73', NULL),
(244, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530179102', '74', NULL),
(245, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530179102', '74', NULL),
(246, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530180438', '75', NULL),
(247, 'destroy', '0', '0', '163', '1', NULL, '0', 'sale', '1530181282', '76', NULL),
(248, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181282', '76', NULL),
(249, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181401', '77', NULL),
(250, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530181508', '78', NULL),
(251, 'destroy', '4', '8', '183', '2', NULL, '0', 'sale', '1530182283', '79', NULL),
(252, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530182577', '80', NULL),
(253, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530182891', '81', NULL),
(254, 'destroy', '4', '8', '183', '1', NULL, '0', 'sale', '1530183079', '82', NULL),
(255, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530421619', '83', NULL),
(256, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530422129', '84', NULL),
(257, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530422501', '85', NULL),
(258, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530423355', '86', NULL),
(259, 'destroy', '5', '27', '130', '1', NULL, '0', 'sale', '1530423355', '86', NULL),
(260, 'destroy', '16', '81', '171', '1', NULL, '0', 'sale', '1530423911', '87', NULL),
(261, 'add', '21', '80', '184', '500', '189.99', '94995', '', '1530427971', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(262, 'add', '21', '80', '185', '50', '40.99', '2049.5', '', '1530428579', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(263, 'add', '16', '83', '186', '300', '249.00', '74700', '', '1530428936', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(264, 'add', '16', '86', '187', '50', '1049.00', '52450', '', '1530429328', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(265, 'add', '5', '90', '188', '100', '154.99', '15499', '', '1530429645', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(266, 'add', '5', '90', '189', '500', '38.98', '19490', '', '1530431736', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(267, 'add', '5', '30', '190', '500', '99.84', '49920', '', '1530434062', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(268, 'add', '5', '28', '191', '100', '56.99', '5699', '', '1530434437', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(269, 'add', '21', '80', '192', '200', '385.00', '77000', '', '1530435423', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(270, 'add', '21', '80', '193', '300', '80.00', '24000', '', '1530435832', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(271, 'add', '21', '80', '194', '50', '199.99', '9999.5', '', '1530436258', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(272, 'add', '21', '80', '195', '400', '39.99', '15996', '', '1530436731', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(273, 'add', '21', '80', '196', '100', '230.97', '23097', '', '1530437119', NULL, '{\"type\":\"vendor\",\"id\":\"12\"}'),
(274, 'add', '4', '40', '197', '200', '23.99', '4798', '', '1530437673', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(275, 'add', '4', '35', '198', '500', '34.99', '17495', '', '1530438201', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(276, 'add', '4', '36', '199', '140', '34.98', '4897.2', '', '1530438511', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(277, 'add', '4', '11', '200', '600', '12.97', '7782', '', '1530439263', NULL, '{\"type\":\"vendor\",\"id\":\"1\"}'),
(278, 'add', '16', '87', '201', '50', '1049.00', '52450', '', '1530440570', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(279, 'add', '16', '87', '202', '300', '28.99', '8697', '', '1530441002', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(280, 'add', '16', '86', '203', '100', '49.34', '4934', '', '1530441771', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(281, 'add', '16', '81', '204', '200', '249.99', '49998', '', '1530442235', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(282, 'add', '16', '81', '205', '500', '49.99', '24995', '', '1530442480', NULL, '{\"type\":\"vendor\",\"id\":\"7\"}'),
(283, 'add', '16', '85', '206', '100', '399.00', '39900', '', '1530444192', NULL, '{\"type\":\"vendor\",\"id\":\"16\"}'),
(284, 'add', '17', '93', '207', '500', '39.00', '19500', '', '1530509804', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(285, 'add', '17', '78', '208', '500', '40.00', '20000', '', '1530511789', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(286, 'add', '17', '91', '209', '400', '28.50', '11400', '', '1530512382', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(287, 'add', '17', '96', '210', '100', '75.00', '7500', '', '1530512762', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(288, 'add', '17', '93', '211', '500', '28.00', '14000', '', '1530513333', NULL, '{\"type\":\"vendor\",\"id\":\"9\"}'),
(289, 'add', '1', '1', '212', '50', '63750.00', '3187500', '', '1530514188', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(290, 'add', '1', '1', '213', '150', '39190.00', '5878500', '', '1530514879', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(291, 'add', '1', '2', '214', '1000', '535500.00', '535500000', '', '1530515357', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(292, 'add', '1', '1', '215', '100', '15350.00', '1535000', '', '1530523300', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(293, 'add', '1', '1', '216', '100', '44100.00', '4410000', '', '1530523869', NULL, '{\"type\":\"vendor\",\"id\":\"10\"}'),
(294, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530605298', '89', NULL),
(295, 'destroy', '16', '88', '180', '6', NULL, '0', 'sale', '1530703163', '90', NULL),
(296, 'destroy', '5', '89', '175', '95', NULL, '0', 'sale', '1530708356', '91', NULL),
(297, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530764395', '93', NULL),
(298, 'destroy', '0', '0', '123', '1', NULL, '0', 'sale', '1530764928', '94', NULL),
(299, 'destroy', '4', '11', '174', '1', NULL, '0', 'sale', '1530765068', '95', NULL),
(300, 'destroy', '5', '89', '178', '1', NULL, '0', 'sale', '1530765242', '96', NULL),
(301, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1530779882', '99', NULL),
(302, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1530780344', '100', NULL),
(303, 'destroy', '5', '30', '190', '1', NULL, '0', 'sale', '1530780876', '103', NULL),
(304, 'destroy', '0', '0', '122', '1', NULL, '0', 'sale', '1530781627', '104', NULL),
(305, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531038537', '107', NULL),
(306, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531038756', '108', NULL),
(307, 'destroy', '1', '2', '214', '1', NULL, '0', 'sale', '1531629840', '134', NULL),
(308, 'destroy', '4', '11', '173', '1', NULL, '0', 'sale', '1531633208', '142', NULL),
(309, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1531633208', '142', NULL),
(310, 'destroy', '16', '81', '142', '1', NULL, '0', 'sale', '1531633431', '147', NULL),
(311, 'destroy', '16', '86', '162', '1', NULL, '0', 'sale', '1531633712', '148', NULL),
(312, 'destroy', '5', '29', '138', '1', NULL, '0', 'sale', '1531633810', '149', NULL),
(313, 'destroy', '0', '0', '121', '16', NULL, '0', 'sale', '1531636774', '150', NULL),
(314, 'add', '5', '28', '217', '200', '88.95', '17790', '', '1531637332', NULL, '{\"type\":\"vendor\",\"id\":\"17\"}'),
(315, 'add', '5', '28', '217', '100', '88.95', '8895', '', '1531637661', NULL, '{\"type\":\"vendor\",\"id\":\"17\"}'),
(316, 'destroy', '4', '11', '172', '44', NULL, '0', 'sale', '1531638155', '151', NULL),
(317, 'destroy', '4', '11', '155', '50', NULL, '0', 'sale', '1531638276', '152', NULL),
(318, 'destroy', '4', '11', '174', '45', NULL, '0', 'sale', '1531638403', '153', NULL),
(319, 'destroy', '4', '11', '200', '600', NULL, '0', 'sale', '1531638867', '154', NULL),
(320, 'destroy', '5', '28', '217', '1', NULL, '0', 'sale', '1531638930', '155', NULL),
(321, 'destroy', '5', '89', '178', '56', NULL, '0', 'sale', '1531639886', '156', NULL),
(322, 'destroy', '0', '0', '123', '2', NULL, '0', 'sale', '1531640276', '157', NULL),
(323, 'destroy', '0', '0', '123', '26', NULL, '0', 'sale', '1531640427', '158', NULL),
(324, 'destroy', '4', '11', '173', '49', NULL, '0', 'sale', '1531640653', '159', NULL),
(325, 'destroy', '0', '0', '122', '20', NULL, '0', 'sale', '1531640792', '160', NULL),
(326, 'destroy', '5', '28', '191', '100', NULL, '0', 'sale', '1531641121', '161', NULL),
(327, 'add', '16', '88', '180', '500', '3500.00', '1750000', '', '1531642809', NULL, NULL),
(328, 'add', '4', '11', '200', '500', '12.97', '6485', '', '1531642840', NULL, NULL),
(329, 'add', '4', '11', '174', '500', '30.00', '15000', '', '1531642856', NULL, NULL),
(330, 'add', '4', '11', '172', '500', '40.00', '20000', '', '1531642878', NULL, NULL),
(331, 'add', '4', '11', '155', '500', '18.99', '9495', '', '1531642899', NULL, NULL),
(332, 'destroy', '4', '11', '174', '500', NULL, '0', 'sale', '1531733208', '165', NULL),
(333, 'destroy', '16', '85', '206', '1', NULL, '0', 'sale', '1532334222', '168', NULL),
(334, 'destroy', '5', '90', '189', '1', NULL, '0', 'sale', '1532409777', '170', NULL),
(335, 'destroy', '1', '2', '214', '1', NULL, '0', 'sale', '1549985482', '184', NULL),
(336, 'destroy', '16', '88', '180', '2', NULL, '0', 'sale', '1549985850', '185', NULL),
(337, 'destroy', '4', '11', '200', '1', NULL, '0', 'sale', '1550470936', '187', NULL),
(338, 'add', '39', '128', '220', '3', '3.99', '11.97', '', '1551052733', NULL, '{\"type\":\"vendor\",\"id\":\"19\"}'),
(339, 'add', '39', '128', '221', '1', '2.99', '2.99', '', '1551053171', NULL, '{\"type\":\"vendor\",\"id\":\"19\"}'),
(340, 'add', '30', '114', '222', '10', '98.00', '980', '', '1551100821', NULL, '{\"type\":\"vendor\",\"id\":\"20\"}'),
(341, 'add', '30', '114', '222', '1', '98.00', '98', '', '1551100833', NULL, '{\"type\":\"vendor\",\"id\":\"20\"}'),
(342, 'add', '30', '114', '223', '1', '19.00', '19', '', '1551100891', NULL, '{\"type\":\"vendor\",\"id\":\"20\"}'),
(343, 'destroy', '5', '30', '141', '1', NULL, '0', 'sale', '1551102716', '189', NULL),
(344, 'destroy', '4', '11', '155', '1', NULL, '0', 'sale', '1551102716', '189', NULL),
(345, 'destroy', '5', '89', '177', '1', NULL, '0', 'sale', '1551102716', '189', NULL),
(346, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1551143450', '190', NULL),
(347, 'add', '39', '128', '224', '10', '1.00', '10', '', '1551145651', NULL, '{\"type\":\"vendor\",\"id\":\"19\"}'),
(348, 'add', '39', '128', '224', '1', '1.00', '1', '', '1551257365', NULL, NULL),
(349, 'add', '30', '114', '223', '2', '19.00', '38', '', '1551257405', NULL, NULL),
(350, 'add', '30', '114', '223', '10', '19.00', '190', '', '1551257425', NULL, NULL),
(351, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1551361660', '191', NULL),
(352, 'destroy', '21', '80', '196', '1', NULL, '0', 'sale', '1551361660', '191', NULL),
(353, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1551361660', '191', NULL),
(354, 'destroy', '21', '80', '196', '1', NULL, '0', 'sale', '1551361934', '192', NULL),
(355, 'destroy', '39', '128', '221', '1', NULL, '0', 'sale', '1551361934', '192', NULL),
(356, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1551361934', '192', NULL),
(357, 'destroy', '0', '0', '163', '1', NULL, '0', 'sale', '1551361934', '192', NULL),
(358, 'destroy', '0', '0', '114', '1', NULL, '0', 'sale', '1551361934', '192', NULL),
(359, 'destroy', '21', '80', '196', '1', NULL, '0', 'sale', '1551362644', '193', NULL),
(360, 'destroy', '21', '80', '194', '1', NULL, '0', 'sale', '1551362644', '193', NULL),
(361, 'destroy', '21', '80', '195', '1', NULL, '0', 'sale', '1551362644', '193', NULL),
(362, 'destroy', '21', '80', '193', '1', NULL, '0', 'sale', '1551362644', '193', NULL),
(363, 'add', '39', '128', '224', '2', '1.00', '2', '', '1551382302', NULL, '{\"type\":\"vendor\",\"id\":\"19\"}'),
(364, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1551423561', '194', NULL),
(365, 'destroy', '39', '128', '220', '1', NULL, '0', 'sale', '1551490926', '195', NULL),
(366, 'destroy', '39', '128', '224', '1', NULL, '0', 'sale', '1551490926', '195', NULL),
(367, 'add', '30', '114', '237', '1', '9.00', '9', '', '1551777396', NULL, NULL),
(368, 'add', '30', '114', '265', '10', '9.00', '90', '', '1552302835', NULL, NULL),
(369, 'destroy', '4', '11', '200', '1', NULL, '0', 'sale', '1552381437', '197', NULL),
(370, 'destroy', '4', '11', '200', '4', NULL, '0', 'sale', '1552392474', '198', NULL),
(371, 'destroy', '16', '88', '180', '2', NULL, '0', 'sale', '1552392474', '198', NULL),
(372, 'destroy', '4', '11', '200', '1', NULL, '0', 'sale', '1552392751', '199', NULL),
(373, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1552398463', '201', NULL),
(374, 'destroy', '4', '11', '200', '1', NULL, '0', 'sale', '1552399389', '203', NULL),
(375, 'destroy', '4', '11', '200', '1', NULL, '0', 'sale', '1552399493', '204', NULL),
(376, 'destroy', '4', '11', '200', '1', NULL, '0', 'sale', '1552399699', '205', NULL),
(377, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1552991598', '206', NULL),
(378, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1552998687', '207', NULL),
(379, 'destroy', '4', '11', '200', '1', NULL, '0', 'sale', '1552998871', '208', NULL),
(380, 'add', '30', '114', '265', '10', '9.00', '90', '', '1553550635', NULL, NULL),
(381, 'add', '30', '114', '259', '2000', '9.00', '18000', '', '1553550981', NULL, NULL),
(382, 'add', '39', '128', '221', '50', '2.99', '149.5', '', '1553551070', NULL, '{\"type\":\"vendor\",\"id\":\"19\"}'),
(383, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1553607223', '210', NULL),
(384, 'add', '39', '128', '267', '25', '10.00', '250', '', '1553723262', NULL, '{\"type\":\"vendor\",\"id\":\"19\"}'),
(385, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1554455019', '211', NULL),
(386, 'destroy', '0', '0', '179', '1', NULL, '0', 'sale', '1554472830', '212', NULL),
(387, 'destroy', '39', '128', '221', '1', NULL, '0', 'sale', '1554678026', '213', NULL),
(388, 'destroy', '21', '80', '196', '1', NULL, '0', 'sale', '1554678026', '213', NULL),
(389, 'destroy', '0', '0', '163', '1', NULL, '0', 'sale', '1554678026', '213', NULL),
(390, 'destroy', '39', '128', '220', '1', NULL, '0', 'sale', '1554679371', '214', NULL),
(391, 'destroy', '39', '128', '267', '1', NULL, '0', 'sale', '1554679371', '214', NULL),
(392, 'destroy', '39', '128', '221', '1', NULL, '0', 'sale', '1554679371', '214', NULL),
(393, 'destroy', '30', '114', '265', '1', NULL, '0', 'sale', '1554679371', '214', NULL),
(394, 'destroy', '21', '80', '196', '1', NULL, '0', 'sale', '1554679371', '214', NULL),
(395, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1554679371', '214', NULL),
(396, 'add', '39', '128', '288', '14', '3.00', '42', '', '1554757180', NULL, '{\"type\":\"vendor\",\"id\":\"19\"}'),
(397, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1554804944', '215', NULL),
(398, 'destroy', '4', '11', '172', '1', NULL, '0', 'sale', '1554805251', '216', NULL),
(399, 'destroy', '5', '29', '138', '1', NULL, '0', 'sale', '1554805251', '216', NULL),
(400, 'destroy', '21', '80', '196', '1', NULL, '0', 'sale', '1554805251', '216', NULL),
(401, 'destroy', '30', '114', '265', '1', NULL, '0', 'sale', '1554805251', '216', NULL),
(402, 'destroy', '39', '128', '267', '1', NULL, '0', 'sale', '1554805251', '216', NULL),
(403, 'destroy', '39', '128', '288', '1', NULL, '0', 'sale', '1554805251', '216', NULL),
(404, 'destroy', '39', '128', '221', '1', NULL, '0', 'sale', '1554805251', '216', NULL),
(405, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1554879798', '218', NULL),
(406, 'add', '39', '128', '289', '10', '10.00', '100', '', '1555340494', NULL, NULL),
(407, 'destroy', '16', '88', '180', '1', NULL, '0', 'sale', '1555668734', '226', NULL),
(408, 'destroy', '0', '0', '179', '2', NULL, '0', 'sale', '1555668734', '226', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(600) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`subscribe_id`, `email`) VALUES
(1, 'akibtanjim@gmail.com'),
(2, 'lashik7@gmail.com'),
(3, 'lashik7@gmaill.com'),
(4, 'lashik7@gmhaill.com'),
(5, 'pc61300811@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category_name` longtext,
  `category` longtext,
  `brand` varchar(2000) NOT NULL DEFAULT '[]',
  `digital` varchar(10) DEFAULT NULL,
  `banner` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category_name`, `category`, `brand`, `digital`, `banner`) VALUES
(1, 'Car', '1', '[\"41\",\"40\",\"39\",\"38\",\"44\",\"45\",\"46\",\"47\",\"51\",\"52\",\"54\"]', NULL, 'sub_category_1.jpg'),
(2, 'Racing Car', '1', '[\"41\",\"40\",\"39\",\"38\",\"45\",\"46\",\"47\",\"50\",\"51\",\"52\",\"54\",\"55\"]', NULL, 'sub_category_2.jpg'),
(3, 'Luxury SUV', '1', '[\"41\",\"40\",\"39\",\"38\",\"45\",\"47\",\"51\",\"54\",\"148\",\"151\",\"152\"]', NULL, 'sub_category_3.jpg'),
(5, 'Chopper Bike', '1', '[\"39\",\"45\",\"48\",\"52\",\"56\",\"57\"]', NULL, 'sub_category_5.jpg'),
(6, 'Racing Bike', '1', '[\"45\",\"52\",\"57\",\"153\",\"155\",\"156\",\"157\",\"158\"]', NULL, 'sub_category_6.jpg'),
(8, 'Party Dress', '4', '[\"8\",\"10\",\"11\",\"159\",\"160\"]', NULL, 'sub_category_8.jpg'),
(9, 'Women Secret', '4', '[\"10\",\"13\",\"14\",\"15\",\"150\"]', NULL, 'sub_category_9.jpg'),
(10, 'Sleeping Dress', '4', '[\"10\",\"11\",\"14\",\"15\",\"159\"]', NULL, 'sub_category_10.jpg'),
(11, 'Beauty & Health', '4', '[\"8\",\"9\",\"100\",\"160\",\"162\",\"221\"]', NULL, 'sub_category_11.jpg'),
(27, 'Formal Dress', '5', '[\"22\",\"25\",\"26\",\"27\",\"30\"]', NULL, 'sub_category_27.jpg'),
(28, 'Men\'s shoe', '5', '[\"17\",\"23\",\"24\",\"33\",\"35\"]', NULL, 'sub_category_28.jpg'),
(29, 'Casual Dress', '5', '[\"20\",\"21\",\"23\",\"31\",\"37\",\"102\"]', NULL, 'sub_category_29.jpg'),
(30, 'Men Watch', '5', '[\"17\",\"18\",\"23\",\"29\",\"31\",\"34\",\"63\"]', NULL, 'sub_category_30.jpg'),
(34, 'Bridal Attire', '4', '[\"6\",\"7\",\"9\",\"13\",\"100\"]', NULL, 'sub_category_34.jpg'),
(35, 'Formal Dress', '4', '[\"8\",\"11\",\"15\",\"16\",\"163\"]', NULL, 'sub_category_35.jpg'),
(36, 'Women\'s Shoe', '4', '[\"12\",\"14\",\"15\",\"19\",\"100\",\"159\"]', NULL, 'sub_category_36.jpg'),
(37, 'Fragrance World', '4', '[\"7\",\"10\",\"11\",\"14\",\"15\",\"100\"]', NULL, 'sub_category_37.jpg'),
(39, 'Women\'s Time Zone', '4', '[\"15\",\"16\",\"17\",\"18\",\"19\",\"100\"]', NULL, 'sub_category_39.jpg'),
(40, 'Casual wear', '4', '[\"7\",\"8\",\"15\",\"17\",\"163\"]', NULL, 'sub_category_40.jpg'),
(63, 'Private Air', '1', '[\"40\",\"39\",\"38\",\"46\",\"47\",\"55\"]', NULL, 'sub_category_63.jpg'),
(64, 'HTML', '12', '[]', 'ok', 'sub_category_64.jpg'),
(65, 'CSS', '12', '[]', 'ok', 'sub_category_65.jpg'),
(66, 'php', '12', '[]', 'ok', 'sub_category_66.jpg'),
(67, 'wordpress', '12', '[]', 'ok', 'sub_category_67.jpg'),
(72, 'Logo design', '13', '[]', 'ok', 'sub_category_72.jpg'),
(73, '3D Design', '13', '[]', 'ok', 'sub_category_73.jpg'),
(74, 'Web element', '13', '[]', 'ok', 'sub_category_74.jpg'),
(75, 'Printing solution', '13', '[]', 'ok', 'sub_category_75.jpg'),
(78, 'Only Skin', '17', '[\"11\",\"159\",\"193\",\"207\",\"215\",\"219\",\"220\"]', NULL, 'sub_category_78.'),
(79, 'Make-up', '18', '[\"146\",\"159\",\"188\",\"193\",\"212\",\"213\",\"241\",\"242\"]', NULL, 'sub_category_79.'),
(80, 'furniture', '21', '[\"224\",\"226\",\"227\",\"228\"]', NULL, 'sub_category_80.'),
(81, 'Cell phone', '16', '[\"59\",\"60\",\"63\",\"142\",\"167\",\"168\",\"170\",\"171\",\"172\"]', NULL, 'sub_category_81.'),
(83, 'Tools', '16', '[\"173\",\"174\",\"175\",\"176\",\"177\",\"178\",\"179\",\"180\"]', NULL, 'sub_category_83.'),
(85, 'Mobile', '16', '[\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"168\",\"169\",\"171\",\"172\"]', NULL, 'sub_category_85.jpg'),
(86, 'Laptop', '16', '[\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"181\",\"182\"]', NULL, 'sub_category_86.jpg'),
(87, 'Desktop PC', '16', '[\"59\",\"60\",\"61\",\"63\",\"64\",\"181\",\"182\"]', NULL, 'sub_category_87.jpg'),
(88, 'DSLR Camera', '16', '[\"142\",\"143\",\"144\",\"183\",\"184\",\"185\",\"186\"]', NULL, 'sub_category_88.jpg'),
(89, 'Accessories', '5', '[\"11\",\"30\",\"35\",\"100\",\"162\",\"222\"]', NULL, 'sub_category_89.'),
(90, 'Outerwear & Jackets', '5', '[\"23\",\"35\",\"100\",\"165\",\"166\"]', NULL, 'sub_category_90.'),
(91, 'Essential Oil', '17', '[\"196\",\"197\",\"198\",\"199\",\"200\",\"201\"]', NULL, 'sub_category_91.'),
(92, 'Face Mask', '17', '[\"202\",\"203\",\"204\",\"205\",\"206\",\"207\",\"208\",\"209\"]', NULL, 'sub_category_92.'),
(93, 'Facial Care', '17', '[\"188\",\"193\",\"210\",\"211\",\"212\",\"213\"]', NULL, 'sub_category_93.'),
(94, 'Body Care', '17', '[\"188\",\"193\",\"210\",\"212\",\"213\",\"215\",\"216\"]', NULL, 'sub_category_94.'),
(95, 'Facial Steamer', '17', '[\"188\",\"193\",\"210\",\"211\",\"212\",\"213\"]', NULL, 'sub_category_95.'),
(96, 'Sun care', '17', '[\"188\",\"189\",\"190\",\"192\",\"193\",\"223\"]', NULL, 'sub_category_96.'),
(97, 'Hair care', '18', '[\"213\",\"229\",\"230\",\"232\",\"233\"]', NULL, 'sub_category_97.'),
(98, 'Deodorants', '18', '[\"232\",\"234\",\"235\",\"236\",\"237\"]', NULL, 'sub_category_98.'),
(99, 'Beauty aids', '18', '[\"238\",\"239\",\"240\",\"241\",\"242\"]', NULL, 'sub_category_99.'),
(100, 'Bath toiletries', '18', '[\"243\",\"244\",\"245\",\"246\",\"247\"]', NULL, 'sub_category_100.'),
(101, 'Oral health', '18', '[\"248\",\"249\",\"250\",\"251\",\"252\",\"253\",\"254\",\"255\"]', NULL, 'sub_category_101.'),
(102, 'Shaving products', '18', '[\"\",\"237\",\"256\",\"257\",\"258\",\"259\",\"260\"]', NULL, 'sub_category_102.'),
(103, 'Luxury toiletries & cosmetics', '18', '[\"41\",\"11\",\"159\",\"188\",\"193\",\"211\",\"212\",\"213\",\"215\",\"229\",\"232\",\"241\",\"242\"]', NULL, 'sub_category_103.'),
(104, 'Hot Categories', '23', '[\"63\",\"167\",\"169\",\"171\",\"261\",\"262\",\"263\",\"264\"]', NULL, 'sub_category_104.'),
(105, 'Cases & Covers', '23', '[\"63\",\"169\",\"171\",\"261\",\"262\",\"263\",\"264\"]', NULL, 'sub_category_105.'),
(106, 'Mobile Phone Accessories', '23', '[\"63\",\"167\",\"169\",\"171\",\"261\",\"262\",\"263\",\"264\"]', NULL, 'sub_category_106.'),
(107, 'Mobile Phone Parts', '23', '[\"63\",\"169\",\"261\",\"262\",\"263\",\"264\"]', NULL, 'sub_category_107.'),
(108, 'Kitchen & Dining ', '21', '[\"265\",\"266\",\"267\",\"268\",\"269\",\"270\",\"271\",\"272\",\"273\"]', NULL, 'sub_category_108.'),
(110, 'Home Essentials', '21', '[\"265\",\"266\",\"268\",\"270\",\"272\",\"273\"]', NULL, 'sub_category_110.'),
(111, 'Home Cleaning Supplies', '21', '[\"267\",\"268\",\"269\",\"271\",\"272\",\"273\"]', NULL, 'sub_category_111.'),
(112, 'Decor', '21', '[\"266\",\"268\",\"270\",\"271\",\"272\",\"273\"]', NULL, 'sub_category_112.'),
(113, 'Indoor Lights', '21', '[]', NULL, 'sub_category_113.'),
(114, ' Mens', '30', '[\"280\",\"281\",\"282\",\"283\",\"284\",\"285\",\"286\",\"287\",\"288\",\"289\",\"290\",\"291\",\"292\",\"293\",\"294\",\"295\",\"296\",\"297\",\"298\",\"299\",\"300\",\"301\"]', NULL, 'sub_category_114.'),
(115, 'Womens', '30', '[\"280\",\"281\",\"282\",\"283\",\"284\",\"285\",\"286\",\"287\",\"288\",\"289\",\"290\",\"291\",\"292\",\"293\",\"294\",\"295\",\"296\",\"297\",\"298\",\"299\",\"300\",\"301\"]', NULL, 'sub_category_115.'),
(116, 'Boys', '30', '[]', NULL, 'sub_category_116.'),
(117, 'Girls', '30', '[]', NULL, 'sub_category_117.'),
(118, 'Unisex - Adult', '30', '[]', NULL, 'sub_category_118.'),
(119, 'Unisex- Kids', '30', '[]', NULL, 'sub_category_119.'),
(120, 'Craft Supplies & Tools', '31', '[]', NULL, 'sub_category_120.'),
(121, 'Jewelry', '32', '[]', NULL, 'sub_category_121.'),
(122, 'Accessories', '33', '[]', NULL, 'sub_category_122.'),
(123, 'Crafts', '34', '[]', NULL, 'sub_category_123.'),
(124, 'Artwork', '35', '[]', NULL, 'sub_category_124.'),
(125, 'Toys & Games', '36', '[]', NULL, 'sub_category_125.'),
(126, 'Home Decor', '37', '[]', NULL, 'sub_category_126.'),
(127, 'Bath & Body', '38', '[]', NULL, 'sub_category_127.'),
(128, 'Leather', '39', '[\"280\",\"286\",\"334\"]', NULL, 'sub_category_128.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(30) DEFAULT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `time`, `from_where`, `to_where`, `subject`, `view_status`, `message`) VALUES
(33, '1561601678', 'Jerry', 'Tomson', 'Hello, how are you.', 'ok', 'www'),
(34, '1561601827', 'Angel', 'Tomson', 'I am', 'ok', 'qqq'),
(35, '1561602221', 'Angel', 'Tomson', 'I wanna buy watch', 'ok', 'that is my first ...'),
(36, '1561603325', 'Angel', 'sss', 'Hello', 'ok', 'sdfdfdfd'),
(37, '1561606484', 'Angel', 'ddssx', 'How are you', 'ok', 'ddssx'),
(38, '1561626331', 'Angel', 'Tomson', 'Good', 'ok', 'ddd'),
(39, '1561626343', 'Angel', 'Piaocheng', 'Hi', 'ok', 'dddd');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_message`
--

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `time` varchar(30) DEFAULT NULL,
  `from_where` varchar(100) DEFAULT NULL,
  `to_where` varchar(100) DEFAULT NULL,
  `ticket_id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `view_status` varchar(100) DEFAULT NULL,
  `message` longtext,
  `vendor_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_message`
--

INSERT INTO `ticket_message` (`ticket_message_id`, `time`, `from_where`, `to_where`, `ticket_id`, `subject`, `view_status`, `message`, `vendor_name`) VALUES
(1, '1475585594', 'Angel', 'Piaocheng', 1, 'check', '[]', 'Excepturi aut repellendus Incidunt quia atque voluptatum quasi nihil dolore nihil anim corporis ut nulla delectus\r\n', ''),
(2, '1476180432', 'Jashim', 'Piaocheng', 1, 'check', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'example ticket', ''),
(108, '1561598774', 'Angel', 'Piaocheng', 1, 'check', '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Good morning', NULL),
(123, '1561606484', 'Angel', 'Piaocheng', 37, 'ddssx', '[]', 'Hello', 'ddssx'),
(124, '1561606521', 'Angel', 'Piaocheng', 37, 'ddssx', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'How are you', NULL),
(125, '1561608542', 'Angel', 'Piaocheng', 1, NULL, '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Nice to meet you', NULL),
(126, '1561615774', 'Angel', 'Piaocheng', 1, NULL, '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'How are you', NULL),
(127, '1561626331', 'Angel', 'Tomson', 38, '456', NULL, 'Hi', 'Tomson'),
(128, '1561626343', 'Angel', 'Piaocheng', 39, 'ddd', '[]', 'I am ...', 'Piaocheng'),
(129, '1561680287', '{\"type\":\"admin\",\"id\":\"\"}', 'Angel', 39, 'ddd', '{\"user_show\":\"ok\",\"admin_show\":\"ok\"}', 'hello \r\n', NULL),
(130, '1561729881', NULL, NULL, 0, NULL, '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Hello, how are you.', NULL),
(131, '1561729881', NULL, NULL, 0, NULL, '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Hello, how are you.', NULL),
(132, '1561729881', NULL, NULL, 0, NULL, '{\"user_show\":\"ok\",\"admin_show\":\"no\"}', 'Hello, how are you.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '79'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '80'),
(9, 'home_bottom_logo', '80'),
(11, 'fav_ext', 'ico'),
(12, 'side_bar_pos_category', 'right'),
(14, 'footer_color', 'green-2'),
(15, 'header_color', 'green-2'),
(19, 'parallax_blog_title', 'LATEST BLOGS'),
(16, 'font', 'Lato'),
(17, 'parallax_vendor_title', 'OUR VENDOR'),
(18, 'home_page_style', '1'),
(20, 'no_of_featured_products', '6'),
(21, 'no_of_vendor', '10'),
(22, 'no_of_brands', '12'),
(23, 'brand_show', 'ok'),
(24, 'featured_show', 'ok'),
(25, 'vandors_show', 'no'),
(26, 'blog_show', 'no'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', '3'),
(29, 'featured_product_box_style', '1'),
(30, 'no_of_todays_deal', '9'),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[{\"category\":\"4\",\"sub_category\":[\"11\",\"36\"],\"color_back\":\"rgba(124,194,66,1)\",\"color_text\":\"rgba(255,255,255,1)\"},{\"category\":\"5\",\"sub_category\":[\"27\",\"28\",\"29\",\"30\"],\"color_back\":\"rgba(124,194,66,1)\",\"color_text\":\"rgba(255,255,255,1)\"}]'),
(34, 'category_product_box_style', '2'),
(35, 'top_slide_categories', '[\"1\",\"4\",\"5\",\"16\",\"17\",\"18\",\"23\",\"35\",\"36\",\"37\",\"38\",\"30\",\"31\",\"32\",\"33\",\"34\",\"21\",\"27\",\"28\",\"39\"]'),
(36, 'email_theme_style', 'style_1'),
(37, 'email_theme_style_2', '<div style=\"margin: 0px 10px; background: #45a9b9; padding: 30px;\"><div style=\"margin: 0px auto; background: #eff7ff; padding: 30px;\">[[body]]</div></div>'),
(38, 'email_theme_style_3', '<div style=\"margin: 0px 10px; background: repeating-linear-gradient(-45deg, red 0, red 1em, #fffdeb 0, #fffdeb 2em, #58a 0, #58a 3em, #fffdeb 0, #fffdeb 4em); padding: 15px;\"><div style=\"margin: 0px auto; background: #fffdeb; padding: 30px;\">[[body]]</div></div>'),
(39, 'email_theme_style_4', '<div style=\"margin: 0px 10px; background: #f7f7f7; padding: 30px;\"><div style=\"padding: 30px; background: #76cece; border-radius:5px 5px 0px 0px; box-shadow: 0px -1px 7px #616565; display:block;\"><div style=\"background-image:url([[logo]]); background-repeat:no-repeat; height:80px; width:auto; display:block;\"></div></div><div style=\"margin: 0px auto; background: rgba(255, 255, 255, 0.91); padding: 30px; box-shadow: 0px 3px 7px #616565; border-radius:0px 0px 5x 5px;\">[[body]]</div></div>'),
(40, 'product_bundle_show', 'ok'),
(41, 'no_of_product_bundle', '6'),
(42, 'product_bundle_box_style', '2'),
(43, 'customer_product_show', 'no'),
(44, 'no_of_customer_product', '6'),
(45, 'header_homepage_status', 'yes'),
(46, 'header_all_categories_status', 'yes'),
(47, 'header_featured_products_status', 'yes'),
(48, 'header_todays_deal_status', 'yes'),
(49, 'header_bundled_product_status', 'yes'),
(50, 'header_classifieds_status', 'yes'),
(51, 'header_latest_products_status', 'yes'),
(52, 'header_all_brands_status', 'yes'),
(53, 'header_all_vendors_status', 'yes'),
(54, 'header_blogs_status', 'yes'),
(55, 'header_store_locator_status', 'yes'),
(56, 'header_contact_status', 'yes'),
(57, 'header_more_status', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` longtext,
  `surname` varchar(100) DEFAULT NULL,
  `email` longtext,
  `phone` longtext,
  `address1` longtext,
  `address2` longtext,
  `city` longtext,
  `zip` longtext,
  `langlat` varchar(100) DEFAULT NULL,
  `password` longtext,
  `fb_id` longtext,
  `g_id` varchar(50) DEFAULT NULL,
  `g_photo` longtext,
  `creation_date` longtext,
  `google_plus` longtext,
  `skype` longtext,
  `facebook` longtext,
  `wishlist` longtext,
  `last_login` varchar(50) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT 'default',
  `user_type_till` varchar(200) DEFAULT NULL,
  `left_product_type` varchar(5000) NOT NULL DEFAULT '[]',
  `downloads` varchar(10000) NOT NULL DEFAULT '[]',
  `country` longtext,
  `state` longtext,
  `wallet` varchar(1000) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `package_info` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `surname`, `email`, `phone`, `address1`, `address2`, `city`, `zip`, `langlat`, `password`, `fb_id`, `g_id`, `g_photo`, `creation_date`, `google_plus`, `skype`, `facebook`, `wishlist`, `last_login`, `user_type`, `user_type_till`, `left_product_type`, `downloads`, `country`, `state`, `wallet`, `product_upload`, `package_info`) VALUES
(1, 'rorurehy', 'Fleming', 'customer1@shop.com', '+532-55-5730682', 'USA', 'USA', 'New York', '88604', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474453509', '', '', '', '[\"214\"]', '1552118727', 'default', NULL, '[]', '[]', 'USA', 'Alaska', NULL, 0, '[]'),
(22, 'Guest', 'Demo', 'marketing.activeitzone@gmail.com', '+736-68-4155522', 'USA', 'USA', 'New York', '10024', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1530764839', NULL, NULL, NULL, '[\"172\"]', '1532842963', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 47, '[{\"current_package\":\"Gold\",\"package_price\":\"35\",\"payment_type\":\"SSLcommerz\"}]'),
(2, 'rorurehy', 'Fleming', 'customer2@shop.com', '+532-55-5730682', 'USA', '', 'New York', '88604', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474453555', '', '', '', '[]', '1530601433', 'default', NULL, '[]', '[]', '', '', NULL, 0, '[]'),
(3, 'Customer', 'Seller', 'customer3@shop.com', '1000452345', 'Demo address  line 1', 'Demo address  line 2', 'Newyork', '1234', '(40.7127837, -74.00594130000002)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1474454007', '', '', '', '[\"63\",\"100\",\"99\",\"73\",\"71\",\"57\",\"55\",\"82\",\"83\"]', '1530765868', 'default', NULL, '[]', '[{\"sale\":1,\"product\":\"44\"}]', '', '', NULL, 18, '[{\"current_package\":\"Platinum\",\"package_price\":\"45\",\"payment_type\":\"Stripe\"}]'),
(4, 'Developer Activeitzone', NULL, 'customer4@shop.com', NULL, NULL, NULL, NULL, NULL, NULL, '8cb623db6471', NULL, '107111794830756336948', 'https://lh3.googleusercontent.com/-XdUIqdMkCWA/AAAAAAAAAAI/AAAAAAAAAAA/4252rscbv5M/photo.jpg?sz=50', '1475421685', NULL, NULL, NULL, '[]', '1475421685', 'default', NULL, '[]', '[]', NULL, NULL, NULL, 0, '[]'),
(7, 'Demo', 'customer', 'customer@shop.com', '07894561234', 'Rio Vista, ', 'CA', 'California', '1219', '(38.1557502, -121.69134389999999)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1475479276', '', '', '', '[\"126\",\"78\",\"79\",\"98\",\"71\",\"216\"]', '1534153625', 'default', NULL, '[]', '[{\"sale\":12,\"product\":\"98\"},{\"sale\":17,\"product\":\"99\"},{\"sale\":56,\"product\":\"182\"}]', 'USA', 'CA', 'NjUwLjI=', 49, '[{\"current_package\":\"Gold\",\"package_price\":\"35\",\"payment_type\":\"SSLcommerz\"}]'),
(9, 'Demo', 'Name', 'customer5@shop.com', '0789456123', 'Dhaka', 'Lalmatia', 'Dhaka', '1207', '(23.7554073, 90.3689508)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1519797521', NULL, NULL, NULL, '[]', '1530176224', 'default', NULL, '[]', '[]', 'Bangladesh', 'Dhaka', NULL, 0, '[]'),
(13, 'Customer', 'Shop', 'customer6@shop.com', '+546-50-8760220', 'USA', 'USA', 'NY', '4321', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528012629', NULL, NULL, NULL, '[\"126\"]', '1528172761', 'default', NULL, '[]', '[]', 'Usa', 'NY', 'MjAwMA==', 9, '[{\"current_package\":\"Bronze\",\"package_price\":\"15\",\"payment_type\":\"Stripe\"}]'),
(14, 'demo', 'user', 'customer7@shop.com', '+546-50-8760221', 'Usa', 'usa', 'NY', '1234', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528017067', NULL, NULL, NULL, '[]', '1528017080', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 2, '[]'),
(15, 'Georgia ', 'Ray', 'customer8@shop.com', '+546-50-8760222', 'USA', 'USA', 'NY', '4321', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528256799', NULL, NULL, NULL, '[\"121\",\"156\"]', '1528348360', 'default', NULL, '[]', '[]', 'USA', 'NY', 'NTAwMA==', 10, '[{\"current_package\":\"Bronze\",\"package_price\":\"15\",\"payment_type\":\"Stripe\"}]'),
(16, 'Travis ', 'Lee', 'customer9@shop.com', '+546-50-8760223', 'USA', 'USA', 'NY', '4321', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528274410', NULL, NULL, NULL, '[]', '1528274442', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 15, '[{\"current_package\":\"Silver\",\"package_price\":\"25\",\"payment_type\":\"Stripe\"}]'),
(17, 'Larry ', 'Pena', 'customer10@shop.com', '+546-50-8760224', 'USA', 'USA', 'New York', '4321', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528277606', '', '', '', '[\"180\"]', '1530430385', 'default', NULL, '[]', '[]', 'USA', 'NY', 'NTAwMA==', 19, '[{\"current_package\":\"Gold\",\"package_price\":\"35\",\"payment_type\":\"Stripe\"}]'),
(18, 'Nora ', 'Harris', 'customer11@shop.com', '+546-50-8760225', 'USA', 'USA', 'NY', '4321', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1528278159', NULL, NULL, NULL, '[]', '1530430727', 'default', NULL, '[]', '[]', 'USA', 'NY', NULL, 25, '[{\"current_package\":\"Platinum\",\"package_price\":\"45\",\"payment_type\":\"Stripe\"}]'),
(21, 'pajezupebu', 'Burgess', 'customer12@shop.com', '+499-60-2936405', '525 Oak Court', 'Quaerat deserunt ea elit incidunt porro quidem commodo eos minus inventore minim quam maiores cumque molestiae Nam voluptatem', 'Eum doloribus dolores eos ea ex irure quaerat repellendus', '42072', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1530422295', NULL, NULL, NULL, '[]', '1531038698', 'default', NULL, '[]', '[]', 'Deleniti atque minim deserunt cupiditate fugiat voluptatibus quos autem modi perspiciatis est error', 'Quia officiis est est dolore et dolorum', NULL, 2, '[]'),
(23, 'Demo', 'Test', 'Demo@gmail.com', '1234567890', 'usa', '', 'New York', '10024', '(37.09024, -95.71289100000001)', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1531631611', NULL, NULL, NULL, '[]', '1532409701', 'default', NULL, '[]', '[]', 'USA', 'NY', 'Mzk1NQ==', 26, '[{\"current_package\":\"Platinum\",\"package_price\":\"45\",\"payment_type\":\"Wallet\"}]'),
(24, 'admin', 'Doe', 'cj.test@gmail.com', '0000000000', 'Techizer Info web Pvt ltd, Sadhur More,Sodepur Rd West Pansila', '', 'KHARDAHA', '700112', '', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, NULL, NULL, '1550244443', NULL, NULL, NULL, '[\"191\",\"217\",\"177\",\"141\",\"178\",\"155\",\"199\",\"163\"]', '1551434973', 'default', NULL, '[]', '[]', 'Bangladesh', 'Ranibala Primary School', NULL, 2, '[]'),
(25, 'Troy', 'Customer', 'troyb@tkenterprisesinc.com', '508-777-4444', '123 test st', '', 'Clinton', '01510', '', 'c7bba4cd7b4cc51fbe7c179da0e750453fc3d757', NULL, NULL, NULL, '1550926916', NULL, NULL, NULL, '[]', '1550927014', 'default', NULL, '[]', '[]', 'US', 'MA', NULL, 2, '[]'),
(26, 'Chiranjit', 'Jana', 'cj.techizer@gmail.com', '9831160745', 'kol', 'kol2', 'kolkata', '700112', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL, NULL, '1551361762', NULL, NULL, NULL, '[\"220\"]', '1559831250', 'default', NULL, '[]', '[]', 'India', 'Alaska', NULL, 2, '[]'),
(27, 'Dee', 'Noi', 'customer1@tkenterprisesinc.com', '9784247573', '100 nowhere drive', '100 nowhere drive', 'Clinton', '01510', NULL, 'c7bba4cd7b4cc51fbe7c179da0e750453fc3d757', NULL, NULL, NULL, '1551486941', NULL, NULL, NULL, '[\"196\",\"180\"]', '1553964925', 'default', NULL, '[]', '[]', 'United States', 'Ma', NULL, 2, '[]'),
(28, 'kevin', 'bailey', 'customer2@tkenterprisesinc.com', '9785555555', '182 Park St', '', 'Clinton', '01510', '', '80dae43ddfcfbd7a5e75b83260eab8fd35fd6778', NULL, NULL, NULL, '1551488228', '', '', '', '[\"204\"]', '1554678570', 'default', NULL, '[]', '[]', 'US', 'Massachusetts', NULL, 2, '[]'),
(29, 'Test', 'Customer', 'customer4@sweetperversions.net', '5055055555', '888', '', 'Park St', '01510', '', '9264deb662735da0309e56db556e36ceae25278e', NULL, NULL, NULL, '1554679098', NULL, NULL, NULL, '[]', '1561680668', 'default', NULL, '[]', '[]', 'US', 'Massachusetts', NULL, 2, '[]'),
(30, 'Corey', 'Bailey', 'belzaar@icloud.com', '1234567890', 'Milton Rd', '', 'Farmington', '03835', '', 'b00c4593cbe5e52290b1721124244eb4f6d3d2dc', NULL, NULL, NULL, '1561049037', NULL, NULL, NULL, '[]', '1561049194', 'default', NULL, '[]', '[]', 'USA', 'NewHampshire', NULL, 2, '[]'),
(31, 'Angel', 'Frank', 'pc61300811@gmail.com', '18612312121', 'SY', 'SY', 'SY', '12345', '', '21237b54e72e2c553c268e269d770eac8812b16c', NULL, NULL, NULL, '1561086154', NULL, NULL, NULL, '[\"290\"]', '1561728916', 'default', NULL, '[]', '[]', 'US', 'Idaho', NULL, 2, '[]'),
(32, 'Tom', 'Son', 'pc613811@gmail.com', '18612912121', 'sy1', 'sy2', 'sy', '12345', '', '21237b54e72e2c553c268e269d770eac8812b16c', NULL, NULL, NULL, '1561887088', NULL, NULL, NULL, '[]', '1561887154', 'default', NULL, '[]', '[]', 'china', 'Idaho', NULL, 2, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `company` varchar(500) DEFAULT NULL,
  `display_name` varchar(500) DEFAULT NULL,
  `address1` longtext,
  `address2` longtext,
  `status` varchar(10) DEFAULT NULL,
  `membership` varchar(50) DEFAULT NULL,
  `create_timestamp` int(20) DEFAULT NULL,
  `approve_timestamp` int(20) DEFAULT NULL,
  `member_timestamp` int(20) DEFAULT NULL,
  `member_expire_timestamp` int(11) DEFAULT NULL,
  `details` longtext,
  `last_login` int(20) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `skype` varchar(300) DEFAULT NULL,
  `google_plus` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `youtube` varchar(300) DEFAULT NULL,
  `pinterest` varchar(300) DEFAULT NULL,
  `stripe_details` varchar(500) DEFAULT NULL,
  `paypal_email` varchar(200) DEFAULT NULL,
  `preferred_payment` varchar(100) DEFAULT NULL,
  `cash_set` varchar(20) DEFAULT NULL,
  `stripe_set` varchar(20) DEFAULT NULL,
  `paypal_set` varchar(20) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `keywords` longtext,
  `description` longtext,
  `lat_lang` varchar(300) NOT NULL DEFAULT '(0,0)',
  `country` longtext,
  `city` longtext,
  `zip` longtext,
  `state` longtext,
  `c2_set` varchar(20) DEFAULT NULL,
  `c2_user` longtext,
  `c2_secret` longtext,
  `vp_set` varchar(50) DEFAULT NULL,
  `vp_merchant_id` varchar(500) DEFAULT NULL,
  `pum_set` varchar(20) DEFAULT NULL,
  `pum_merchant_key` varchar(500) DEFAULT NULL,
  `pum_merchant_salt` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `name`, `email`, `password`, `company`, `display_name`, `address1`, `address2`, `status`, `membership`, `create_timestamp`, `approve_timestamp`, `member_timestamp`, `member_expire_timestamp`, `details`, `last_login`, `facebook`, `skype`, `google_plus`, `twitter`, `youtube`, `pinterest`, `stripe_details`, `paypal_email`, `preferred_payment`, `cash_set`, `stripe_set`, `paypal_set`, `phone`, `keywords`, `description`, `lat_lang`, `country`, `city`, `zip`, `state`, `c2_set`, `c2_user`, `c2_secret`, `vp_set`, `vp_merchant_id`, `pum_set`, `pum_merchant_key`, `pum_merchant_salt`) VALUES
(1, 'Lydia Moran', 'vendor1@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Short Frye Associates', 'Lavinia Mckee', '88 South Clarendon Drive', 'Voluptatem et dolores quas et architecto est enim aut est et aut cum et aut aut praesentium sint', 'approved', '0', 1473433365, 0, NULL, 1533031057, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ok', 'ok', '123456799', NULL, NULL, '(40.7859464, -73.9741874)', 'USA', 'New York', '10024', 'NY', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(3, 'Tom Cruise', 'vendor@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Dark Lane', 'Tom', '3367 Essex Court Grand Isle, VT 05458 ', '3367 Essex Court Grand Isle, VT 05458 B', 'approved', '0', 1474269533, 0, NULL, 1535022478, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"\",\"secret\":\"\"}', '', NULL, 'ok', NULL, NULL, '', NULL, NULL, '(44.72254359999999, -73.2923538)', '', '711-2880 Nulla St. Mankato Mississippi 96522 (257) ', '563-7401', '', NULL, '', '', NULL, '', 'ok', 'RR2LThlB', '3M85o3dezx'),
(5, 'Youn Sijin', 'vendor2@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'DOTS', 'Youn', '2759 Wyatt Street, HINSDALE, New York', '2759 Wyatt Street, HINSDALE, New York', 'approved', '0', 1474568426, 0, NULL, 1477161249, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '(41.804962, -87.922823)', 'USA', 'New York', '10025', 'NY', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(7, 'Tony Stark', 'vendor3@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Brenton', 'Tony Stark', '6649 N Blue Gum St, New Orleans', 'Louisiana, USA', 'approved', '0', 1475065812, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+546-50-8760222', NULL, NULL, '(29.95106579999999, -90.0715323)', 'usa', 'New York', '', 'ny', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(9, 'Ray Torres', 'vendor4@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Gallegos and Everett Co.', 'Cheyenne Medina', '462 Nobel Road', 'Est sint vel irure nulla numquam voluptatem quae et ullam eu dolor corporis sed sed eiusmod enim odio dolore', 'approved', '0', 1524910945, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+546-50-8760200', NULL, NULL, '(0,0)', 'Et laborum Dolores qui voluptatem quam', 'Esse ullam dolore lorem exercitationem expedita quidem deserunt aliquid amet unde facere amet', '34026', 'Sunt eaque quis ea necessitatibus commodo aut consequatur quas non consectetur', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(10, 'Amaya Dixon', 'vendor5@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Daniels and Wiley Associates', 'Denton Hansen', '957 West Milton Drive', 'Laboriosam dignissimos enim quidem sapiente qui et excepturi animi alias vitae', 'approved', '0', 1524982214, 0, NULL, 1527668695, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"\",\"secret\":\"\"}', 'alvi@gmail.com', NULL, NULL, 'ok', 'ok', '+546-50-8760218999', NULL, NULL, '(0,0)', 'Omnis ab nulla tenetur sit voluptatem officiis ut delectus ut illum illo excepturi totam soluta sit ', 'Dolor magna soluta officia aut delectus voluptates', '83862', 'Sunt voluptate consequatur amet ut sint veniam saepe velit aut optio accusantium nisi non qui', NULL, '', '', NULL, '', '', '', ''),
(12, 'Deborah Cohen', 'vendor6@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Johns Atkinson Trading', 'Idona Snider', '566 South Rocky Fabien Extension', 'Nostrum ullamco ratione nihil do sed vero esse dolor officia neque commodi voluptatum pariatur', 'approved', '0', 1530074631, 0, NULL, NULL, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '(0,0)', 'Anim pariatur Enim commodo enim excepteur', 'Velit quia eaque earum id quis impedit et ad blanditiis non asperiores', '71533', 'Et non modi dolor magni enim minus', NULL, NULL, NULL, NULL, NULL, '', '', ''),
(16, 'Arsenio Mckenzie', 'vendor7@shop.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Reid and Kennedy Traders', 'Carissa Newman', '834 West Old Court', 'Dolores corrupti quae ut aut totam laborum Fugiat pariatur Aut esse repudiandae illo', 'approved', '0', 1530089088, 0, NULL, 1532761512, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx\",\"secret\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"}', 'vendor7@shop.com', NULL, 'ok', 'ok', 'ok', '098775543213', NULL, NULL, '(0,0)', 'Illo recusandae Aut obcaecati ut exercitation corrupti fugiat accusantium occaecat', 'Sit illum consequatur Ullam sequi dolor ipsum est quam veniam est aut enim vel porro hic', '92170', 'Aliquid irure id amet anim repellendus Eos in laborum Eum exercitation fuga Quis eiusmod voluptas es', NULL, '', '', NULL, '', '', '', ''),
(17, 'vendor', 'vendor@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Demo', 'demo vendor', 'usa', '', 'pending', '0', 1531634920, 0, NULL, 1534230745, 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx\",\"secret\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"}', '', NULL, 'ok', 'ok', 'ok', '0987654321', NULL, NULL, '(0,0)', 'usa', 'new york', '10024', 'ny', NULL, '', '', NULL, '', '', '', ''),
(18, 'CJ', 'cj.techizer@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'kolkata', 'chck', 'kolkata', 'kolkata', 'approved', '0', 1550243066, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(0,0)', 'ind', 'kolkata', '70000021', 'wb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Troy Vendor', 'vendor@tkenterprisesinc.com', 'c7bba4cd7b4cc51fbe7c179da0e750453fc3d757', 'Ryants', 'ryants test account', '182 test St', '', 'approved', '0', 1550927698, 0, NULL, 1558921026, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"publishable\":\"\",\"secret\":\"\"}', 'vendor_api1.tkenterprisesinc.com', NULL, 'ok', 'no', 'ok', '555-555-5555', NULL, NULL, '(0,0)', 'US', 'Clinton', '01510', 'MA', 'no', '', '', NULL, '', NULL, '', ''),
(29, 'Piaocheng', 'pc61300811@gmail.com', 'd476458cac7679de860b57bd4a7ecc8cd4631a5c', 'Mr.', 'Piaocheng', 'SY', 'Test', 'approved', '0', 123123123, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, '(0,0)', 'China', 'Kolkata', '70012', 'west Bengal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_invoice`
--

CREATE TABLE `vendor_invoice` (
  `vendor_invoice_id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `payment_details` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_invoice`
--

INSERT INTO `vendor_invoice` (`vendor_invoice_id`, `vendor_id`, `amount`, `timestamp`, `status`, `method`, `payment_details`) VALUES
(2, 3, '324.9273', 1525579407, 'paid', 'cash', ''),
(3, 3, '5.6843418860808E-14', 1528263035, 'due', 'cash', ''),
(4, 3, '5.6843418860808E-14', 1528263055, 'paid', 'cash', ''),
(6, 3, '250', 1529559027, 'due', 'payUmoney', NULL),
(7, 3, '0', 1529559101, 'due', 'payUmoney', NULL),
(8, 3, '0', 1529559230, 'due', 'payUmoney', NULL),
(9, 3, '0', 1529559369, 'due', 'payUmoney', NULL),
(10, 3, '0', 1529559610, 'due', 'payUmoney', NULL),
(11, 3, '0', 1529559624, 'due', 'payUmoney', NULL),
(12, 3, '0', 1529559765, 'due', 'payUmoney', NULL),
(13, 3, '0', 1529559781, 'due', 'payUmoney', NULL),
(14, 3, '220', 1529560632, 'due', 'payUmoney', NULL),
(15, 3, '250', 1529560733, 'due', 'payUmoney', NULL),
(25, 16, '4295.89', 1532512294, 'paid', 'stripe', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DIKJSgpKH7t3sV\",\"object\":\"customer\",\"account_balance\":0,\"created\":1532512293,\"currency\":null,\"default_source\":\"card_1CrjeUKmGdRDZlHSSgm3uUI8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"ceo.activeitzone@gmail.com\",\"invoice_prefix\":\"8A7DC79\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CrjedKmGdRDZlHSytg15z2v\",\"object\":\"charge\",\"amount\":5370,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CrjedKmGdRDZlHSNzJEg10u\",\"captured\":true,\"created\":1532512295,\"currency\":\"usd\",\"customer\":\"cus_DIKJSgpKH7t3sV\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_select_state`
--

CREATE TABLE `vendor_select_state` (
  `id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `sname` text,
  `action` varchar(255) NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_select_state`
--

INSERT INTO `vendor_select_state` (`id`, `vid`, `sname`, `action`) VALUES
(4, 1, 'Mississippi', 'Y'),
(5, 3, 'Alabama', 'Y'),
(6, 3, 'Alaska', 'Y'),
(9, 3, 'Arizona', 'Y'),
(10, 3, 'Arkansas', 'Y'),
(16, 19, 'Utah', 'Y'),
(13, 19, 'Colorado', 'Y'),
(17, 19, 'Washington', 'Y'),
(15, 19, 'Connecticut', 'Y'),
(18, 3, 'California', 'Y'),
(19, 19, 'Arizona', 'Y'),
(20, 19, 'California', 'Y'),
(21, 19, 'Alabama', 'Y'),
(22, 19, 'Arkansas', 'Y'),
(23, 3, 'Delaware', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_load`
--

CREATE TABLE `wallet_load` (
  `wallet_load_id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `amount` varchar(1000) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `status` longtext,
  `timestamp` varchar(100) DEFAULT NULL,
  `payment_details` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_load`
--

INSERT INTO `wallet_load` (`wallet_load_id`, `user`, `amount`, `method`, `status`, `timestamp`, `payment_details`) VALUES
(1, '8', '500', 'stripe', 'paid', '1517724197', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CGD0YQw7B62I38\",\"object\":\"customer\",\"account_balance\":0,\"created\":1517724196,\"currency\":null,\"default_source\":\"card_1BrgapKmGdRDZlHSSMFOLv2m\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"6d34e931e9\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1BrgavKmGdRDZlHSmk8RfDyU\",\"object\":\"charge\",\"amount\":50000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1BrgavKmGdRDZlHSovrdDAZr\",\"captured\":true,\"created\":1517724197,\"currency\":\"usd\",\"customer\":\"cus_CGD0YQw7B62I38\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(4, '7', '1000', 'stripe', 'paid', '1518067735', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CHhMag8O50VaHI\",\"object\":\"customer\",\"account_balance\":0,\"created\":1518067734,\"currency\":null,\"default_source\":\"card_1Bt7xlKmGdRDZlHSPQR35wSG\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"4a211cb13d\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Bt7xrKmGdRDZlHSIOGetvuw\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Bt7xrKmGdRDZlHS4aoaW4pY\",\"captured\":true,\"created\":1518067735,\"currency\":\"usd\",\"customer\":\"cus_CHhMag8O50VaHI\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(5, '7', '500', 'paypal', 'due', '1518455611', '[]'),
(7, '7', '50', 'paypal', 'due', '1519804590', '[]'),
(8, '7', '50', 'paypal', 'due', '1519805069', '[]'),
(40, '7', '1000', 'paypal', 'pending', '1527662380', 'testing'),
(41, '7', '1000', 'stripe', 'paid', '1523850882', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CglyFhGtTEn5Rw\",\"object\":\"customer\",\"account_balance\":0,\"created\":1523850881,\"currency\":null,\"default_source\":\"card_1CHOQKKmGdRDZlHSWlsub8PR\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"55A02F2\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CHOQQKmGdRDZlHSmVqPSfof\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CHOQQKmGdRDZlHSHTZAUnwy\",\"captured\":true,\"created\":1523850882,\"currency\":\"usd\",\"customer\":\"cus_CglyFhGtTEn5Rw\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(42, '11', '1000', 'paypal', 'due', '1526117372', '[]'),
(43, '11', '1000', 'stripe', 'paid', '1526117453', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CqbGW0YNtvcREq\",\"object\":\"customer\",\"account_balance\":0,\"created\":1526117452,\"currency\":null,\"default_source\":\"card_1CQu3uKmGdRDZlHSrzC62YUh\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"66A1B35\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CQu41KmGdRDZlHSpp4r8Atn\",\"object\":\"charge\",\"amount\":100000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CQu41KmGdRDZlHSfawtbM2r\",\"captured\":true,\"created\":1526117453,\"currency\":\"usd\",\"customer\":\"cus_CqbGW0YNtvcREq\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(44, '13', '4000', 'paypal', 'due', '1528014769', '[]'),
(45, '13', '2000', 'stripe', 'paid', '1528014852', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_CypKoO0j152SBl\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528014864,\"currency\":null,\"default_source\":\"card_1CYrfKKmGdRDZlHSpMLENA98\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"B82E3F3\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CYrfSKmGdRDZlHSYJxiAZgz\",\"object\":\"charge\",\"amount\":200000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CYrfSKmGdRDZlHSDavgb3gk\",\"captured\":true,\"created\":1528014866,\"currency\":\"usd\",\"customer\":\"cus_CypKoO0j152SBl\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(46, '15', '5000', 'stripe', 'paid', '1528348710', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D0H4Qix0Od4VKZ\",\"object\":\"customer\",\"account_balance\":0,\"created\":1528348726,\"currency\":null,\"default_source\":\"card_1CaGWBKmGdRDZlHSO3Fff73X\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"1AD0DFE\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1CaGWJKmGdRDZlHSEnZ0FTBn\",\"object\":\"charge\",\"amount\":500000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1CaGWKKmGdRDZlHSwbeV2PTy\",\"captured\":true,\"created\":1528348727,\"currency\":\"usd\",\"customer\":\"cus_D0H4Qix0Od4VKZ\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(47, '7', '10000', 'pum', 'due', '1529490145', '[]'),
(48, '7', '', 'pum', 'due', '1529492063', '[]'),
(49, '7', '', 'pum', 'due', '1529492100', '[]'),
(50, '7', '', 'payu', 'due', '1529492324', '[]'),
(51, '7', '1000', 'pum', 'due', '1529492411', '[]'),
(52, '7', '', 'pum', 'due', '1529492473', '[]'),
(53, '7', '', 'pum', 'due', '1529492681', '[]'),
(54, '7', '1000', 'pum', 'due', '1529493122', '[]'),
(55, '7', '1000', 'pum', 'due', '1529493178', '[]'),
(56, '7', '10000', 'pum', 'due', '1529493787', '[]'),
(61, '7', '9', 'stripe', 'paid', '1530002551', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7ReEvEpBqS4NK\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530002549,\"currency\":null,\"default_source\":\"card_1ChCklKmGdRDZlHSUIPmOpTa\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"C9E4A94\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChCksKmGdRDZlHSirYxwBQw\",\"object\":\"charge\",\"amount\":900,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChCktKmGdRDZlHSx0iE3JF7\",\"captured\":true,\"created\":1530002550,\"currency\":\"usd\",\"customer\":\"cus_D7ReEvEpBqS4NK\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(62, '17', '5000', 'stripe', 'paid', '1530002584', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_D7RewmuWEVXK8O\",\"object\":\"customer\",\"account_balance\":0,\"created\":1530002582,\"currency\":null,\"default_source\":\"card_1ChClIKmGdRDZlHSEAlZ37dY\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"72A87E5\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1ChClPKmGdRDZlHSFSoPTHXd\",\"object\":\"charge\",\"amount\":500000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1ChClPKmGdRDZlHSEiZYfL6z\",\"captured\":true,\"created\":1530002583,\"currency\":\"usd\",\"customer\":\"cus_D7RewmuWEVXK8O\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(63, '7', '100', 'pum', 'due', '1530684206', '[]'),
(64, '23', '4000', 'stripe', 'paid', '1531631786', 'Customer Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_DEVcnI3Zo7vX2x\",\"object\":\"customer\",\"account_balance\":0,\"created\":1531631788,\"currency\":null,\"default_source\":\"card_1Co2amKmGdRDZlHSkv9Pbbss\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":null,\"invoice_prefix\":\"0D4B893\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1Co2avKmGdRDZlHSpSoSEvEQ\",\"object\":\"charge\",\"amount\":400000,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1Co2awKmGdRDZlHSRLWeQBT2\",\"captured\":true,\"created\":1531631789,\"currency\":\"usd\",\"customer\":\"cus_DEVcnI3Zo7vX2x\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}'),
(66, '7', '10', 'ssl', 'paid', '1532421610', '[]'),
(68, '27', '10', 'paypal', 'due', '1553727104', '[]'),
(69, '28', '657657', 'paypal', 'due', '1554678662', '[]'),
(70, '31', '50', 'pum', 'due', '1561086279', '[]'),
(71, '31', '50', 'paypal', 'due', '1561161971', '[]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `bundle_stock`
--
ALTER TABLE `bundle_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indexes for table `customer_product`
--
ALTER TABLE `customer_product`
  ADD PRIMARY KEY (`customer_product_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `membership_payment`
--
ALTER TABLE `membership_payment`
  ADD PRIMARY KEY (`membership_payment_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `package_payment`
--
ALTER TABLE `package_payment`
  ADD PRIMARY KEY (`package_payment_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `shiping_state`
--
ALTER TABLE `shiping_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `slider_style`
--
ALTER TABLE `slider_style`
  ADD PRIMARY KEY (`slider_style_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slides_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- Indexes for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  ADD PRIMARY KEY (`vendor_invoice_id`);

--
-- Indexes for table `vendor_select_state`
--
ALTER TABLE `vendor_select_state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_load`
--
ALTER TABLE `wallet_load`
  ADD PRIMARY KEY (`wallet_load_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `bundle_stock`
--
ALTER TABLE `bundle_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currency_settings`
--
ALTER TABLE `currency_settings`
  MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customer_product`
--
ALTER TABLE `customer_product`
  MODIFY `customer_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1609;

--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `membership_payment`
--
ALTER TABLE `membership_payment`
  MODIFY `membership_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_payment`
--
ALTER TABLE `package_payment`
  MODIFY `package_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `shiping_state`
--
ALTER TABLE `shiping_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider_style`
--
ALTER TABLE `slider_style`
  MODIFY `slider_style_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `slides_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=409;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `vendor_invoice`
--
ALTER TABLE `vendor_invoice`
  MODIFY `vendor_invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vendor_select_state`
--
ALTER TABLE `vendor_select_state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wallet_load`
--
ALTER TABLE `wallet_load`
  MODIFY `wallet_load_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
