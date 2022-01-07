-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 07:41 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gem_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `ID` int(11) NOT NULL,
  `back_Up` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`ID`, `back_Up`) VALUES
(1, '2020-06-18'),
(2, '2020-06-18'),
(3, '2020-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` int(11) NOT NULL,
  `discount_name` varchar(255) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `discount_name`, `discount`, `created_date`) VALUES
(2, 'winter season', 20, '2020-06-18'),
(4, 'fall season', 30, '2020-06-18'),
(5, 'summer season', 10, '2020-06-18');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `purchase` int(15) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_type`, `price`, `purchase`, `weight`, `img`, `created_date`, `updated_date`) VALUES
(1, 'ring', 'Ruby', 50, 2, 5, 'ring.jpg', '2020-06-19 17:37:52', NULL),
(2, 'ear rings', 'diamond', 800, 5, 3, 'ear.jpg', '2020-06-19 17:38:12', NULL),
(3, 'neckles', 'diamond', 500, 25, 2, 'neckles.jpg', '2020-06-19 20:38:39', NULL),
(4, 'test', 'diamond', 51, 5, 6, 'test.png', '2020-06-20 07:52:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `itemtypes`
--

CREATE TABLE `itemtypes` (
  `itemtype_id` int(11) NOT NULL,
  `itemtype_name` varchar(255) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemtypes`
--

INSERT INTO `itemtypes` (`itemtype_id`, `itemtype_name`, `updated_date`, `created_date`) VALUES
(2, 'diamond', NULL, '2020-06-18 10:24:31'),
(3, 'Ruby', '2020-06-18 10:25:19', '2020-06-18 10:24:37'),
(4, 'gold', NULL, '2020-06-18 10:24:52'),
(5, 'silver', NULL, '2020-06-18 10:24:58'),
(6, 'platinum', NULL, '2020-06-18 10:25:07'),
(7, 'bronz', NULL, '2020-06-18 13:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `report_name` varchar(255) DEFAULT NULL,
  `report_type` varchar(255) DEFAULT NULL,
  `created_time` date DEFAULT NULL,
  `created_user` varchar(255) DEFAULT NULL,
  `report_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `net_amount` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `pay_amount` int(11) DEFAULT NULL,
  `return_amount` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `created_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_item_mapping`
--

CREATE TABLE `sales_item_mapping` (
  `sales_item_id` int(11) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `weight` int(15) DEFAULT NULL,
  `discount` varchar(30) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `date_sold` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_item_mapping`
--

INSERT INTO `sales_item_mapping` (`sales_item_id`, `sales_id`, `item_name`, `price`, `qty`, `weight`, `discount`, `total`, `date_sold`) VALUES
(1, 1, 'ear rings', 800, 2, 2, 'No discount  0 %', 1600, '2020-06-19'),
(2, 1, 'ring', 50, 2, 2, 'fall season  30 %', 70, '2020-06-19'),
(3, 2, 'ear rings', 800, 2, 4, 'No discount  0 %', 1600, '2020-06-19'),
(4, 3, 'ring', 50, 4, 2, 'winter season  20 %', 160, '2020-06-19'),
(5, 4, 'ring', 50, 2, 2, 'No discount  0 %', 100, '2020-06-19'),
(7, 4, 'ear rings', 800, 1, 3, 'No discount  0 %', 800, '2020-06-19'),
(8, 5, 'neckles', 500, 1, 1, 'No discount  0 %', 500, '2020-06-19'),
(9, 5, 'ring', 50, 1, 1, 'No discount  0 %', 50, '2020-06-19'),
(10, 6, 'ring', 50, 2, 2, 'No discount  0 %', 100, '2020-06-20'),
(11, 6, 'neckles', 500, 2, 2, 'winter season  20 %', 800, '2020-06-20'),
(12, 6, 'ear rings', 800, 3, 1, 'winter season  20 %', 1920, '2020-06-20'),
(13, 7, 'ring', 50, 2, 1, 'No discount  0 %', 100, '2020-06-20'),
(14, 7, 'ear rings', 800, 2, 3, 'winter season  20 %', 1280, '2020-06-20'),
(15, 7, 'neckles', 500, 2, 1, 'winter season  20 %', 800, '2020-06-20'),
(17, 8, 'ring', 50, 4, 2, 'No discount  0 %', 200, '2020-06-20'),
(18, 8, 'neckles', 500, 3, 2, 'winter season  20 %', 1200, '2020-06-20'),
(19, 8, 'ear rings', 800, 3, 3, 'fall season  30 %', 1680, '2020-06-20'),
(20, 8, 'ring', 50, 1, 2, 'summer season  10 %', 45, '2020-06-20'),
(21, 9, 'ring', 50, 2, 2, 'winter season  20 %', 80, '2020-06-20'),
(22, 9, 'ear rings', 800, 2, 3, 'fall season  30 %', 1120, '2020-06-20'),
(23, 9, 'neckles', 500, 1, 2, 'summer season  10 %', 450, '2020-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `stock_id` int(11) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `total_qty` int(15) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`stock_id`, `item_name`, `qty`, `state`, `total_qty`, `created_date`, `last_update`) VALUES
(1, 'ring', 3, 'available', 25, '2020-06-19', '2020-06-20'),
(2, 'ear rings', 0, 'available', 16, '2020-06-19', '2020-06-20'),
(3, 'neckles', 1, 'available', 11, '2020-06-19', '2020-06-20'),
(4, 'test', 1, 'available', 1, '2020-06-20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `CNIC` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `usertype`, `username`, `password`, `mobile`, `CNIC`) VALUES
(1, 'admin', 'admin', 'dreamer', 'admin', 123456, 654321),
(3, 'greek', 'cashier', 'freerider', 'cash', 5467, 526345),
(4, 'cashier', 'cashier', 'cashier', 'cashier', 32135612, 3315611),
(5, 'manoj', 'cashier', 'manoj', 'manoj', 1351621, 561231);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `itemtypes`
--
ALTER TABLE `itemtypes`
  ADD PRIMARY KEY (`itemtype_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_item_mapping`
--
ALTER TABLE `sales_item_mapping`
  ADD PRIMARY KEY (`sales_item_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `itemtypes`
--
ALTER TABLE `itemtypes`
  MODIFY `itemtype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_item_mapping`
--
ALTER TABLE `sales_item_mapping`
  MODIFY `sales_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
