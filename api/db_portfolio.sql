-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2018 at 06:13 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

DROP TABLE IF EXISTS `tbl_images`;
CREATE TABLE IF NOT EXISTS `tbl_images` (
  `images_id` int(11) NOT NULL AUTO_INCREMENT,
  `images_path` varchar(250) NOT NULL,
  `images_name` varchar(150) NOT NULL,
  PRIMARY KEY (`images_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`images_id`, `images_path`, `images_name`) VALUES
(1, 'logo.svg', 'logo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proj`
--

DROP TABLE IF EXISTS `tbl_proj`;
CREATE TABLE IF NOT EXISTS `tbl_proj` (
  `proj_id` int(11) NOT NULL AUTO_INCREMENT,
  `proj_name` varchar(150) NOT NULL,
  `proj_tagline` varchar(120) NOT NULL,
  `proj_position` varchar(150) NOT NULL,
  `proj_brief` text NOT NULL,
  `proj_role` text NOT NULL,
  `proj_thumb` varchar(250) NOT NULL,
  `proj_mock` varchar(120) NOT NULL,
  PRIMARY KEY (`proj_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_proj`
--

INSERT INTO `tbl_proj` (`proj_id`, `proj_name`, `proj_tagline`, `proj_position`, `proj_brief`, `proj_role`, `proj_thumb`, `proj_mock`) VALUES
(1, 'Reactr', 'Company Website Redesign', 'Front-End Developer', 'Reactr is an experiential program at Fanshawe College that links student teams with companies to develop Web and digital media solutions. As a team of two, my partner and I developed their redesigned website in a 3 month time-frame from scratch in a Laravel framework.', 'My job was to build the front-end of the website. The entire thing was built using the basics: HTML5, CSS3, and JavaScript. As part of the learning experience, no plugins were used for interactive elements such as scroll animations or gallery sliders. Instead they were built with CSS animations and JavaScript working hand in hand for a seamless experience.', 'reactr-screenview.png', ''),
(2, 'JE-Bearing', 'Internal work application', 'Front-End Developer, UI Designer', 'JE Bearing is a machining company that provides quality bearings, power transmission supplies, maintenance and precision machining services. This web application aims to provide operation employees with easy to access machining, assembly, and repair instructions for every part they build. It also has a full CMS system for administrators to add, view, edit, or delete information for parts, tools, materials, fixtures, or user profiles. I came in on phase 2 of the project, so some of the application had already been built and designed.', 'As a UI Designer my job was to carefully look over the entire application for any way we could improve the user experience, and implement user testing for a deeper insight to how easily the app can be navigated. Small changes such as form layout, autocomplete functionality, and icon placement were found to make a huge difference. Being the front-end developer as well, I also implemented all of these changes into the code using Laravel with blade, Sass, and lots of JavaScript.', 'je-screenview.png', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
