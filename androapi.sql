-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2015 at 06:43 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `androapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) DEFAULT NULL,
  `konten` text,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_blog` (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `judul`, `konten`, `id_user`, `tanggal`) VALUES
(3, 'ini blog pertama user ke2', 'lorem ipsum dolor sir amet lorem ipsum dolor sir amet lorem ipsum dolor sir amet lorem ipsum dolor sir amet lorem ipsum dolor sir amet', 2, '2015-04-23'),
(6, 'testong', 'lorem ipsum dolor sir amet', 1, '2015-04-23'),
(7, 'hihihihi ', 'aku adalah anak gembala yang selalu riang serta gembira', 1, '2015-04-23'),
(11, 'testing hehehehe hihihihi', 'hahahahahahahahahahahahaha', 1, NULL),
(12, 'testong bener banget dahh', 'hahahahahahahahahahahahahahaha', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `myorder`
--

CREATE TABLE IF NOT EXISTS `myorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `myorder`
--

INSERT INTO `myorder` (`id`, `item`) VALUES
(1, 'panci'),
(2, 'wkwkwkwkw'),
(3, 'sdasddas'),
(4, 'fsfsdfsdfsdfsdf'),
(5, 'fdfsdfsdfsdf'),
(6, 'wtf'),
(9, 'penggorengan'),
(11, 'yeheeeeaaa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'panci', '3000000.00', 'panci untuk masak', '2015-04-27 00:30:14', '0000-00-00 00:00:00'),
(2, 'wajan', '4000000.00', 'wajan untuk menumis', '2015-04-27 00:30:35', '0000-00-00 00:00:00'),
(3, 'dispenser', '5000000.00', 'dispenser untuk mmbuat sgmdmhdjdjfkfkminum', '2015-04-27 00:31:04', '0000-00-00 00:00:00'),
(5, 'wkehsj', '99999999.99', 'gahHahakaka\n', '2015-04-27 01:10:31', '0000-00-00 00:00:00'),
(6, 'teat', '99999999.99', 'gahajsvskshsbd\n', '2015-05-12 03:32:57', '0000-00-00 00:00:00'),
(7, 'iphone', '34567.00', 'hahahaha', '2015-07-07 06:46:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `password`) VALUES
(1, 'winarto saputro', 'winartosaputro@gmail.com', 'admin'),
(2, 'sakata', 'sakata@gmail.com', 'sakata'),
(3, 'gintoki', 'gintoki@gmail.com', 'gintoki');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FK_blog` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
