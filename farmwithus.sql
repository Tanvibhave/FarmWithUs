-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 09:17 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmwithus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(1, 'Billy', 'Revellame', 'revellame28@gmail.com', 'bluedcoffee', 'admin'),
(6, 'lyn', 'dsouza', 'lynessadsouz@gmail.com', 'bbbbb', 'bbbb'),
(7, 'lyndsa', 'dsouza', 'lynessadsouza@gmail.com', 'bbbbb', 'bbbb');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Fruits'),
(2, 'legumes'),
(3, 'Pulses'),
(4, 'Vegetables'),
(5, 'Dairy Products'),
(11, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`) VALUES
(1, 'lynesa', 'lynessa', 'dsouza', 'wdjasdjsks@gmail.com', 'wdjasdjsks@gmail.com', '284791207489');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `supp_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `ratings` double NOT NULL,
  `feedback_remark` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `supp_id`, `prod_id`, `ratings`, `feedback_remark`) VALUES
(1, 15, 10, 32, 4.5, 'Good product'),
(5, 14, 6, 31, 3, 'its good');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `date`) VALUES
(127, 8, 'has logged in the system at ', '2017-11-25 23:31:53'),
(128, 9, 'has logged in the system at ', '2018-10-12 19:52:39'),
(129, 9, 'has logged in the system at ', '2018-10-13 01:18:49'),
(130, 9, 'added a new product 26 of X9 THOR - Gaming Mouse', '2018-10-13 01:32:00'),
(131, 9, 'has logged in the system at ', '2018-10-13 01:50:19'),
(132, 11, 'has logged in the system at ', '2020-08-03 17:36:21'),
(133, 11, 'has logged in the system at ', '2020-08-03 17:38:00'),
(134, 12, 'has logged in the system at ', '2020-08-03 18:02:18'),
(135, 12, 'has logged in the system at ', '2020-08-03 18:03:53'),
(136, 12, 'has logged in the system at ', '2020-08-04 12:15:05'),
(137, 12, 'has logged in the system at ', '2020-08-04 12:47:10'),
(138, 12, 'has logged in the system at ', '2020-08-04 14:14:12'),
(139, 12, 'has logged in the system at ', '2020-08-05 11:37:43'),
(140, 12, 'has logged in the system at ', '2020-08-06 11:44:14'),
(141, 12, 'has logged in the system at ', '2020-08-06 11:57:41'),
(142, 13, 'has logged in the system at ', '2020-08-08 11:46:59'),
(143, 3, '(Administrator) has logged in the system at ', '2020-08-08 15:07:00'),
(144, 5, '(Administrator) has logged in the system at ', '2020-08-08 15:25:13'),
(145, 6, '(Administrator) has logged in the system at ', '2020-08-08 15:29:27'),
(146, 6, '(Administrator) has logged in the system at ', '2020-08-08 15:31:07'),
(147, 12, 'has logged in the system at ', '2020-08-08 17:25:46'),
(148, 6, '(Administrator) has logged in the system at ', '2020-08-08 20:13:29'),
(149, 6, 'added a new product 100 of Apple', '2020-08-08 20:21:51'),
(150, 6, 'added a new product 100 of Apple', '2020-08-08 20:29:20'),
(151, 12, 'has logged in the system at ', '2020-08-09 13:08:26'),
(152, 6, '(Administrator) has logged in the system at ', '2020-08-09 15:51:11'),
(153, 6, '(Administrator) has logged in the system at ', '2020-08-09 15:54:38'),
(154, 12, 'has logged in the system at ', '2020-08-09 17:52:49'),
(155, 6, '(Administrator) has logged in the system at ', '2020-08-09 20:26:49'),
(156, 6, '(Administrator) has logged in the system at ', '2020-08-10 01:11:11'),
(157, 6, 'added a new product 5 of Potato', '2020-08-10 01:20:30'),
(158, 6, 'added a new product 100 of Apple', '2020-08-10 01:22:37'),
(159, 6, '(Administrator) has logged in the system at ', '2020-08-10 01:40:12'),
(160, 6, '(Administrator) has logged in the system at ', '2020-08-10 01:54:12'),
(161, 12, 'has logged in the system at ', '2020-08-09 23:35:18'),
(162, 6, '(Administrator) has logged in the system at ', '2020-08-10 02:10:07'),
(163, 6, '(Administrator) has logged in the system at ', '2020-08-10 02:25:09'),
(164, 6, '(Administrator) has logged in the system at ', '2020-08-10 15:32:33'),
(165, 6, '(Administrator) has logged in the system at ', '2020-08-10 15:49:19'),
(166, 6, '(Administrator) has logged in the system at ', '2020-08-10 22:11:11'),
(167, 6, 'added 5 of Apple', '2020-08-10 22:18:04'),
(168, 6, '(Administrator) has logged in the system at ', '2020-08-11 02:06:01'),
(169, 6, '(Administrator) has logged in the system at ', '2020-08-11 19:22:43'),
(170, 6, 'added a new product 100 of Oranges', '2020-08-11 19:26:49'),
(171, 6, '(Administrator) has logged in the system at ', '2020-08-11 19:35:51'),
(172, 14, 'has logged in the system at ', '2020-08-11 17:53:36'),
(173, 14, 'added a new product 100 of something', '2020-08-11 21:02:00'),
(174, 6, '(Administrator) has logged in the system at ', '2020-08-12 01:28:41'),
(175, 12, 'has logged in the system at ', '2020-08-11 23:00:32'),
(176, 6, '(Administrator) has logged in the system at ', '2020-08-13 06:27:33'),
(177, 6, '(Administrator) has logged in the system at ', '2020-08-13 06:28:39'),
(178, 14, 'has logged in the system at ', '2020-08-13 04:02:05'),
(179, 12, 'has logged in the system at ', '2020-08-13 04:11:41'),
(180, 12, 'has logged in the system at ', '2020-08-13 05:32:12'),
(181, 14, 'has logged in the system at ', '2020-08-13 05:32:34'),
(182, 12, 'has logged in the system at ', '2020-08-13 06:01:31'),
(183, 12, 'has logged in the system at ', '2020-08-13 06:05:58'),
(184, 14, 'has logged in the system at ', '2020-08-13 12:22:50'),
(185, 14, 'has logged in the system at ', '2020-08-13 12:35:33'),
(186, 6, '(Administrator) has logged in the system at ', '2020-08-13 15:24:29'),
(187, 6, '(Administrator) has logged in the system at ', '2020-08-13 22:55:57'),
(188, 6, '(Administrator) has logged in the system at ', '2020-08-13 23:07:24'),
(189, 6, '(Administrator) has logged in the system at ', '2020-08-14 01:17:11'),
(190, 6, 'added a new product 9 of banana', '2020-08-14 01:18:48'),
(191, 6, 'added 7 of Apricots', '2020-08-13 23:00:10'),
(192, 6, 'added 10 of banana', '2020-08-13 23:04:29'),
(193, 12, 'has logged in the system at ', '2020-08-13 23:52:21'),
(194, 12, 'has logged in the system at ', '2020-08-13 23:59:00'),
(195, 14, 'has logged in the system at ', '2020-08-14 11:30:28'),
(196, 15, 'has logged in the system at ', '2020-08-14 11:43:44'),
(197, 15, 'has logged in the system at ', '2020-08-14 12:13:06'),
(198, 15, 'has logged in the system at ', '2020-08-14 14:56:42'),
(199, 1, '(Administrator) has logged in the system at ', '2020-08-14 17:37:12'),
(200, 1, '(Administrator) has logged in the system at ', '2020-08-14 17:48:57'),
(201, 15, 'has logged in the system at ', '2020-08-14 16:25:51'),
(202, 15, 'has logged in the system at ', '2020-08-14 17:35:14'),
(203, 15, 'has logged in the system at ', '2020-08-14 19:45:18'),
(204, 15, 'has logged in the system at ', '2020-08-14 19:51:46'),
(205, 15, 'has logged in the system at ', '2020-08-14 19:54:05'),
(206, 15, 'has logged in the system at ', '2020-08-14 20:33:41'),
(207, 14, 'has logged in the system at ', '2020-08-14 23:07:18'),
(208, 6, '(Administrator) has logged in the system at ', '2020-08-15 01:52:24'),
(209, 6, 'added 3 of Apricots', '2020-08-14 23:24:11'),
(210, 6, '(Administrator) has logged in the system at ', '2020-08-15 02:00:43'),
(211, 6, 'added 6 of bananas', '2020-08-14 23:32:19'),
(212, 12, 'has logged in the system at ', '2020-08-14 23:39:41'),
(213, 14, 'has logged in the system at ', '2020-08-14 23:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `supp_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `track_num` int(11) NOT NULL,
  `firstname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `middlename` varchar(50) CHARACTER SET latin1 NOT NULL,
  `lastname` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `contact` varchar(50) CHARACTER SET latin1 NOT NULL,
  `shipping_add` varchar(500) CHARACTER SET latin1 NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) CHARACTER SET latin1 NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `supp_id`, `prod_id`, `track_num`, `firstname`, `middlename`, `lastname`, `email`, `contact`, `shipping_add`, `order_date`, `status`, `totalprice`, `tax`) VALUES
(11, 12, 10, 29, 2212, 'lyndsa', 'bbbbb', 'bbbbb', 'bbbbb', '123214', 'direct chandrar Mhapsa', '2020-08-13 05:31:26', 'Pending', '2000.00', '240.00'),
(19, 15, 11, 34, 2515, 'Jason', 'Gonsalo', 'de Araujo', 'jasondearaujo99@gmail.com', '7798123396', 'cujira, santa cruz Panjim', '2020-08-14 12:14:36', 'Pending', '270.00', '32.40'),
(20, 14, 4, 33, 248, 'lynessa', 'Lyn', 'dsouza', 'lynessadsouz@gmail.com', '1234567', 'divar Panjim', '2020-08-14 23:08:21', 'shipping', '600.00', '72.00'),
(21, 12, 10, 35, 145, 'lyndsa', 'bbbbb', 'bbbbb', 'bbbbb', '123214', 'karabhat Panjim', '2020-08-14 23:40:07', 'Pending', '910.00', '109.20');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_qty` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `prod_id`, `prod_qty`, `total_qty`, `total`, `user_id`, `order_id`) VALUES
(53, 13, 1, '338', '434.00', 6, '1'),
(54, 13, 3, '335', '1302.00', 6, '1'),
(55, 13, 1, '334', '434.00', 6, '1'),
(56, 11, 1, '149', '125.00', 6, '1'),
(57, 12, 1, '397', '155.00', 6, '1'),
(58, 11, 1, '149', '125.00', 6, '1'),
(59, 13, 1, '329', '434.00', 6, '1'),
(60, 13, 1, '328', '434.00', 6, '1'),
(61, 13, 1, '327', '434.00', 6, '1'),
(62, 12, 2, '395', '310.00', 6, '1'),
(63, 13, 2, '325', '868.00', 6, '1'),
(64, 13, 1, '324', '434.00', 6, '1'),
(65, 11, 1, '148', '125.00', 6, '1'),
(66, 13, 1, '323', '434.00', 6, '1'),
(67, 11, 1, '147', '125.00', 6, '1'),
(68, 12, 1, '394', '155.00', 6, '1'),
(69, 12, 1, '393', '155.00', 6, '1'),
(70, 13, 1, '322', '434.00', 7, '1'),
(71, 11, 1, '146', '125.00', 7, '1'),
(72, 13, 1, '321', '434.00', 7, '1'),
(73, 13, 1, '320', '434.00', 7, '1'),
(74, 13, 1, '319', '434.00', 7, '1'),
(75, 13, 1, '318', '434.00', 6, '1'),
(76, 13, 3, '315', '1302.00', 6, '1'),
(77, 13, 1, '314', '434.00', 6, '1'),
(78, 13, 1, '313', '434.00', 6, '1'),
(79, 14, 1, '233', '760.00', 6, '1'),
(80, 13, 1, '311', '434.00', 6, '1'),
(81, 13, 2, '309', '868.00', 6, '1'),
(83, 14, 1, '233', '760.00', 6, '1'),
(84, 13, 1, '308', '434.00', 6, '1'),
(85, 15, 1, '455', '455.00', 6, '1'),
(86, 11, 1, '145', '125.00', 6, '1'),
(87, 13, 1, '306', '434.00', 6, '1'),
(88, 13, 1, '304', '434.00', 6, '1'),
(89, 13, 1, '303', '434.00', 6, '1'),
(90, 13, 1, '302', '434.00', 6, '1'),
(91, 14, 1, '232', '760.00', 6, '1'),
(92, 13, 1, '300', '434.00', 6, '1'),
(93, 14, 10, '222', '7600.00', 8, '1'),
(94, 13, 200, '0', '86800.00', 8, '1'),
(95, 13, 300, '0', '130200.00', 8, '1'),
(96, 11, 1, '144', '125.00', 6, '1'),
(97, 11, 144, '0', '18000.00', 6, '1'),
(98, 15, 1, '451', '455.00', 5, ''),
(99, 15, 1, '451', '455.00', 6, '1'),
(100, 16, 1, '', '1500.00', 6, '1'),
(101, 12, 1, '392', '155.00', 8, '1'),
(102, 12, 1, '391', '155.00', 8, '1'),
(103, 15, 1, '451', '455.00', 8, ''),
(104, 14, 1, '221', '760.00', 9, '1'),
(105, 17, 1, '25', '2200.00', 9, '1'),
(111, 17, 3, '22', '6600.00', 12, '1'),
(114, 14, 1, '220', '760.00', 12, '1'),
(115, 14, 11, '209', '8360.00', 12, '1'),
(116, 14, 2, '207', '1520.00', 12, '1'),
(117, 14, 1, '206', '760.00', 12, '1'),
(118, 14, 2, '206', '1520.00', 12, '1'),
(119, 14, 7, '206', '5320.00', 12, '1'),
(120, 14, 6, '200', '4560.00', 12, '1'),
(121, 14, 1, '199', '760.00', 10, '1'),
(122, 14, 2, '197', '1520.00', 10, '1'),
(123, 14, 3, '194', '2280.00', 10, '1'),
(124, 14, 1, '193', '760.00', 10, '1'),
(125, 14, 1, '193', '760.00', 10, '1'),
(126, 14, 1, '192', '760.00', 10, '1'),
(127, 14, 1, '191', '760.00', 10, '1'),
(128, 12, 1, '390', '155.00', 10, '1'),
(129, 14, 3, '188', '2280.00', 10, '1'),
(130, 14, 2, '186', '1520.00', 10, '1'),
(131, 15, 4, '451', '1820.00', 10, '1'),
(132, 15, 1, '450', '455.00', 10, '1'),
(133, 14, 1, '185', '760.00', 10, '1'),
(134, 14, 1, '184', '760.00', 12, '1'),
(135, 14, 1, '183', '760.00', 12, '1'),
(136, 14, 1, '182', '760.00', 12, '1'),
(137, 14, 1, '181', '760.00', 12, '1'),
(138, 12, 1, '389', '155.00', 12, '1'),
(139, 12, 1, '388', '155.00', 12, '1'),
(140, 12, 1, '387', '155.00', 12, '1'),
(141, 12, 1, '386', '155.00', 12, '1'),
(142, 12, 1, '385', '155.00', 12, '1'),
(143, 14, 1, '180', '760.00', 12, '1'),
(144, 14, 1, '179', '760.00', 13, '1'),
(145, 12, 1, '', '155.00', 6, '1'),
(146, 14, 1, '178', '760.00', 12, '1'),
(150, 22, 1, '99', '150.00', 14, '1'),
(151, 22, 1, '98', '150.00', 12, '1'),
(152, 22, 2, '96', '300.00', 12, '1'),
(153, 23, 5, '99', '125.00', 12, '1'),
(154, 23, 1, '99', '25.00', 12, '1'),
(155, 20, 2, '4', '40.00', 12, '1'),
(156, 20, 1, '4', '20.00', 12, '1'),
(157, 20, 1, '3', '20.00', 12, '1'),
(158, 22, 5, '91', '750.00', 12, '1'),
(159, 23, 5, '94', '125.00', 12, '1'),
(160, 29, 10, '270', '2000.00', 12, '1'),
(161, 30, 4, '276', '320.00', 12, '1'),
(162, 20, 1, '2', '20.00', 14, '1'),
(163, 20, 1, '2', '20.00', 14, '1'),
(164, 23, 1, '93', '25.00', 14, '1'),
(165, 29, 1, '', '200.00', 14, '1'),
(166, 34, 5, '5', '500.00', 12, '1'),
(167, 32, 1, '39', '300.00', 12, '1'),
(168, 32, 1, '38', '300.00', 14, '1'),
(169, 33, 1, '14', '120.00', 14, '1'),
(170, 32, 1, '37', '300.00', 15, '1'),
(171, 33, 1, '14', '120.00', 15, '1'),
(172, 34, 1, '4', '100.00', 15, '1'),
(173, 31, 1, '', '170.00', 15, '1'),
(174, 33, 5, '14', '600.00', 14, '1'),
(176, 35, 7, '43', '910.00', 12, '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `supp_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `prod_cost` decimal(10,2) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_pic1` varchar(500) NOT NULL,
  `prod_pic2` varchar(500) NOT NULL,
  `prod_pic3` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `supp_id`, `prod_name`, `prod_desc`, `prod_qty`, `prod_cost`, `prod_price`, `category`, `supplier`, `prod_serial`, `prod_pic1`, `prod_pic2`, `prod_pic3`) VALUES
(31, 6, 'Butter', 'Fresh Butter. Price per unit', 10, '150.00', '170.00', 'Dairy Products', '', '1235', 'butter.jpg', 'butter.jpg', 'butter.jpg'),
(32, 10, 'Apricots', 'Apricots', 40, '350.00', '300.00', 'Fruits', '', '12345', 'apricots.jpg', 'apricots.jpg', 'apricots.jpg'),
(33, 4, 'bananas', 'moira bananas(in dozen)', 20, '100.00', '120.00', 'Dairy Products', 'Alcatraz Co', '12341', 'banana.jpg', 'banana.jpg', 'banana.jpg'),
(34, 11, 'BlueBerries', 'Fresh Berries (price per kilo)', 4, '100.00', '100.00', 'Fruits', '', '23', 'blueberries.jpg', 'blueberries.jpg', 'blueberries.jpg'),
(35, 10, 'onions', 'onions in kilos', 43, '120.00', '130.00', 'Vegetables', '', '67687', 'onion.jpg', 'onion.jpg', 'onion.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `date_added` datetime NOT NULL,
  `mode_of_payment` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(100) NOT NULL,
  `supp_address` varchar(200) NOT NULL,
  `supp_contact` varchar(50) NOT NULL,
  `supp_email` varchar(50) NOT NULL,
  `supp_uname` varchar(30) NOT NULL,
  `supp_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_contact`, `supp_email`, `supp_uname`, `supp_password`) VALUES
(1, 'Kalvekar & Sons', 'Mhapsa ', '98788412', 'kavlekar@gamil.com', 'nopass', 'nopass'),
(2, 'fernandes fresh foods', 'Panjim', '193985792', 'fernandesfarm@gmail.com', '', ''),
(5, 'Lyndon', 'Chorao Goa', '9927821241', 'lynessad@gmail.com', '', ''),
(6, 'lynessa123', 'Panjim Goa', '9927821241', 'lynessad@gmail.com', '', ''),
(8, 'Lyndon', 'Mhapsa ', '9927821241', 'lynessad@gmail.com', '', ''),
(9, 'Lyndon', 'Mhapsa ', '9927821241', 'kavlekar@gamil.com', '', ''),
(10, 'fernandes fresh foods', 'Mhapsa ', '9927821241', 'lynessad@gmail.com', 'qazxx', 'qazxx'),
(11, 'lightfastfoods', 'curchorem goa', '8007023761', 'saisarvesh@gmail.com', 'light', 'light'),
(12, 'mcadummy', 'Panjim', '98788412', 'kavlekar@gamil.com', 'mcadummy', 'mcadummy');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `or_no` int(11) NOT NULL,
  `prod_serial` varchar(50) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `trans_qty` int(11) NOT NULL,
  `ppi` decimal(10,0) NOT NULL,
  `cust_fullname` varchar(100) NOT NULL,
  `transdate` datetime NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `middlename`, `lastname`, `address`, `email`, `contact`, `username`, `password`) VALUES
(12, 'lyndsa', 'bbbbb', 'bbbbb', 'bbbbb', 'bbbbb', '123214', 'bbbbb', 'bbbbb'),
(14, 'lynessa', 'Lyn', 'dsouza', 'Chorao', 'lynessadsouz@gmail.com', '1234567', 'lyn123', 'lyn123'),
(15, 'Jason', 'Gonsalo', 'de Araujo', 'H.No. 612, Oilem Bhat, Cujira, Santa Cruz, Goa, 403005', 'jasondearaujo99@gmail.com', '7798123396', 'jason@96', 'jason@1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `supp_id` (`supp_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`supp_id`) REFERENCES `supplier` (`supp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_3` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
