-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 02, 2018 at 11:45 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

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
-- Table structure for table `tbl_about`
--

DROP TABLE IF EXISTS `tbl_about`;
CREATE TABLE IF NOT EXISTS `tbl_about` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_introduction` text NOT NULL,
  `about_doing` text NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`about_id`, `about_introduction`, `about_doing`) VALUES
(1, 'I am a front-end web developer based in London, Ontario. Sometimes I dabble in UX/UI Design as well, ensuring a smooth user experience from design to development.', 'I love creating websites that are fully responsive and user friendly to suit the needs of any business or individual. This site was built by myself from scratch, using a variety of skills that I have been growing since I started learning at Fanshawe College. I took this development opportunity to teach myself Vue.js, and have had a lot of fun along the way.\r\n\r\nIn my spare time, my unrelated hobbies include long hikes with my dog, concert-going, weight lifting, and super amateur photography. ');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`images_id`, `images_path`, `images_name`) VALUES
(1, 'logo.svg', 'logo'),
(2, 'map-svg.svg', 'About- map'),
(3, 'icon-development.svg', 'Development Icon'),
(4, 'icon-ux.svg', 'UX Icon'),
(5, 'icon-prototyping.svg', 'Prototyping Icon'),
(6, 'icon-responsive.svg', 'Responsive Design Icon'),
(7, 'about-portrait.jpg', 'About Me Photo');

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
(1, 'Reactr', 'Company Website Redesign', 'Front-End Developer', 'Reactr is an experiential program at Fanshawe College that links student teams with companies to develop Web and digital media solutions. As a team of two, my partner and I developed their redesigned website in a 3 month time-frame from scratch in a Laravel framework.', 'My job was to build the front-end of the website. The entire thing was built using the basics: HTML5, CSS3, and JavaScript. As part of the learning experience, no plugins were used for interactive elements such as scroll animations or gallery sliders. Instead they were built with CSS animations and JavaScript working hand in hand for a seamless experience.', 'reactr-screenview.png', 'reactr-mockup.png'),
(2, 'JE-Bearing', 'Internal work application', 'Front-End Developer, UI Designer', 'JE Bearing is a machining company that provides quality bearings, power transmission supplies, maintenance and precision machining services. This web application aims to provide operation employees with easy to access machining, assembly, and repair instructions for every part they build. It also has a full CMS system for administrators to add, view, edit, or delete information for parts, tools, materials, fixtures, or user profiles. I came in on phase 2 of the project, so some of the application had already been built and designed.', 'As a UI Designer my job was to carefully look over the entire application for any way we could improve the user experience, and implement user testing for a deeper insight to how easily the app can be navigated. Small changes such as form layout, autocomplete functionality, and icon placement were found to make a huge difference. Being the front-end developer as well, I also implemented all of these changes into the code using Laravel with blade, Sass, and lots of JavaScript.', 'je-screenview.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_skills`
--

DROP TABLE IF EXISTS `tbl_skills`;
CREATE TABLE IF NOT EXISTS `tbl_skills` (
  `skills_id` int(11) NOT NULL AUTO_INCREMENT,
  `skills_name` varchar(50) NOT NULL,
  `skills_desc` text NOT NULL,
  `skills_icon` varchar(120) NOT NULL,
  PRIMARY KEY (`skills_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_skills`
--

INSERT INTO `tbl_skills` (`skills_id`, `skills_name`, `skills_desc`, `skills_icon`) VALUES
(1, 'development', 'My skills in development are focused on front-end. I combine my skills with HTML, CSS, and JavaScript to create efficient, responsive web pages ready for any device. I use Sass to create lots of animations and transitions that can really bring a webpage to life.', 'icon-development.svg'),
(2, 'responsive design', 'I always work mobile up, giving every web application or website I build perfect for whichever device a business or indivudual may need to use. Making careful use of media queries, my pages have smooth transitions and are fully scalable. ', 'icon-responsive.svg'),
(3, 'UX/UI', 'User experience is probably the most important thing to take into account when in the design and testing stages. I pay close attention to detail, and always try to put myself in the end user\'s shoes. I make sure navigation is intuitive and that any user has a smooth, easy time with usability.', 'icon-ux.svg'),
(4, 'prototyping', 'I like to take my designs to the next level by creating live clickable prototypes before beginning development. This gives me a more in depth idea of where I want to go with transitions or interactive features. Ultimately, this will save time in development, and gives the opportunity to make design feedback happen much faster.', 'icon-prototyping.svg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
