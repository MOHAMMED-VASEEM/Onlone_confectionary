-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2024 at 04:10 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '19-02-2022 11:52:00 AM');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contactno` varchar(40) NOT NULL,
  `product` varchar(40) NOT NULL,
  `quantity` varchar(40) NOT NULL,
  `price` varchar(40) NOT NULL,
  `create_time` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`name`, `email`, `contactno`, `product`, `quantity`, `price`, `create_time`) VALUES
('selva', '', '9894918800', 'plain cake', '12', '790', '13-05-2023 04:57:05 PM'),
('agarjilla', '', '09894918800', 'plain cake', '80', '50000', '13-05-2023 04:58:54 PM'),
('agarjilla', 'jebinp08@gmail.com', '06381082863', 'cream cake', '100', '50000', '13-05-2023 05:00:10 PM'),
('agarjilla', 'jebinp08@gmail.com', '06381082863', 'cream cake', '100', '50000', '13-05-2023 05:18:38 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL auto_increment,
  `categoryName` varchar(255) default NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `updationDate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Cake', 'Red Vlvet', '2022-06-23 11:36:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(40) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `create_date` varchar(40) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `mobile`, `address`, `email`, `username`, `password`, `create_date`) VALUES
(6, 'jebin', '09894918800', 'trichy', 'selva@gmail.com', 'selva', '1234', '07-05-2023 05:04:19 PM');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) default NULL,
  `productId` varchar(255) default NULL,
  `quantity` int(11) default NULL,
  `orderDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) default NULL,
  `orderStatus` varchar(55) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 5, '1', 1, '2022-06-23 11:44:00', 'COD', 'Delivered'),
(2, 4, '1', 1, '2023-05-02 23:26:03', NULL, NULL),
(3, 6, '1', 1, '2024-02-10 14:01:21', 'Internet Banking', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL auto_increment,
  `orderId` int(11) default NULL,
  `status` varchar(255) default NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 1, 'Delivered', 'thank you', '2022-06-23 11:44:56'),
(2, 3, 'in Process', 'r4wt', '2024-02-10 14:02:30');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL auto_increment,
  `productId` int(11) default NULL,
  `quality` int(11) default NULL,
  `price` int(11) default NULL,
  `value` int(11) default NULL,
  `name` varchar(255) default NULL,
  `summary` varchar(255) default NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `productreviews`
--


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `category` int(11) NOT NULL,
  `subCategory` int(11) default NULL,
  `productName` varchar(255) default NULL,
  `productCompany` varchar(255) default NULL,
  `productPrice` int(11) default NULL,
  `productPriceBeforeDiscount` int(11) default NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) default NULL,
  `productImage2` varchar(255) default NULL,
  `productImage3` varchar(255) default NULL,
  `shippingCharge` int(11) default NULL,
  `productAvailability` varchar(255) default NULL,
  `postingDate` timestamp NULL default CURRENT_TIMESTAMP,
  `updationDate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Black Forest', 'BG naidu', 275, 300, 'testy cake<br>', '1.jpg', '2.jpg', '3.jpg', 20, 'In Stock', '2022-06-23 11:38:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL auto_increment,
  `categoryid` int(11) default NULL,
  `subcategory` varchar(255) default NULL,
  `creationDate` timestamp NULL default CURRENT_TIMESTAMP,
  `updationDate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'New cakes', '2022-06-23 11:36:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL auto_increment,
  `userEmail` varchar(255) default NULL,
  `userip` binary(16) default NULL,
  `loginTime` timestamp NULL default CURRENT_TIMESTAMP,
  `logout` varchar(255) default NULL,
  `status` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'taj@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-03-16 11:19:56', '16-03-2022 11:20:37 AM', 1),
(2, 's@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2022-06-23 11:42:16', '23-06-2022 11:44:20 AM', 1),
(3, 'taj@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2023-05-02 23:25:03', NULL, 1),
(4, '', '127.0.0.1\0\0\0\0\0\0\0', '2023-05-07 17:48:03', NULL, 0),
(5, '', '127.0.0.1\0\0\0\0\0\0\0', '2023-05-07 17:49:26', '13-05-2023 05:18:43 PM', 0),
(6, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 09:48:49', '10-02-2024 09:58:21 AM', 1),
(7, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 10:01:52', '10-02-2024 10:32:37 AM', 1),
(8, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 10:47:19', '10-02-2024 10:50:04 AM', 1),
(9, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 11:36:15', '10-02-2024 12:07:05 PM', 1),
(10, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 12:12:25', '10-02-2024 12:34:08 PM', 1),
(11, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 14:00:01', '10-02-2024 02:04:29 PM', 1),
(12, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 22:09:55', NULL, 0),
(13, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 22:11:49', '10-02-2024 10:35:18 PM', 1),
(14, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 22:59:42', '10-02-2024 10:59:59 PM', 1),
(15, 'selva@gmail.com', '127.0.0.1\0\0\0\0\0\0\0', '2024-02-10 23:01:47', '10-02-2024 11:07:00 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `contactno` bigint(11) default NULL,
  `password` varchar(255) default NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) default NULL,
  `shippingCity` varchar(255) default NULL,
  `shippingPincode` int(11) default NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) default NULL,
  `billingCity` varchar(255) default NULL,
  `billingPincode` int(11) default NULL,
  `regDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `updationDate` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'taju deen', 'taj@gmail.com', 9790530960, '81dc9bdb52d04dc20036dbd8313ed055', 'ddd', 'Tamilnadu', 'trichy', 620002, 'woraiyur', 'TamilÂ Nadu', 'trichy', 620003, '2022-02-19 11:54:07', NULL),
(5, 'sowmi', 's@gmail.com', 987989879, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 11:41:47', NULL),
(6, 'jebin', 'selva@gmail.com', 9894918800, '0a6cac9456f04db871f84008fce1656c', 'trichy', 'Tamilnadu', 'trichy', 123456, NULL, NULL, NULL, NULL, '2024-02-10 09:48:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_requir`
--

CREATE TABLE `user_requir` (
  `id` int(12) NOT NULL,
  `ctype` varchar(60) NOT NULL,
  `user` varchar(60) NOT NULL,
  `flavor` varchar(200) NOT NULL,
  `size` varchar(60) NOT NULL,
  `qty` varchar(60) NOT NULL,
  `frosting` varchar(200) NOT NULL,
  `decorations` varchar(1000) NOT NULL,
  `status` varchar(60) NOT NULL,
  `amo` varchar(60) NOT NULL,
  `file` varchar(60) NOT NULL,
  `rdate` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_requir`
--

INSERT INTO `user_requir` (`id`, `ctype`, `user`, `flavor`, `size`, `qty`, `frosting`, `decorations`, `status`, `amo`, `file`, `rdate`) VALUES
(1, 'birthday', 'jebin', 'orange', '50 m round cake', '1', 'yes orange flavor mixed', 'yes. my name is jebin', '2', '1500', '', '10-02-2024'),
(2, 'birthday', 'jebin', 'orange', '50 m round cake', '100', 'yes orange flavor mixed', 'yed', '0', '', 'img/req/21.jpg', '10-02-2024'),
(3, 'wedding', 'jebin', 'orange', '50 m round cake', '100', 'yes orange flavor mixed', 'afgg', '0', '', 'img/req/slider2.png', '10-02-2024');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL auto_increment,
  `userId` int(11) default NULL,
  `productId` int(11) default NULL,
  `postingDate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wishlist`
--

