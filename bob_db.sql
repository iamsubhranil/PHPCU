-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2019 at 12:04 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bob_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `AreaCode` int(11) NOT NULL,
  `AreaName` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`AreaCode`, `AreaName`) VALUES
(700004, 'Salt Lake'),
(700135, 'Shyambazar'),
(3, 'Kalighat'),
(4, 'Ruby');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billno` int(10) NOT NULL,
  `cid` int(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `amount` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `number` bigint(11) NOT NULL,
  `total_spent` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `address`, `number`, `total_spent`) VALUES
(7, 'kous da', 'jhfg 7 sjdfh', 1, 8795);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `areaid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `type`, `areaid`) VALUES
(1, 'Subhranil', 'ONLINE', 700135),
(2, 'Anubhab', 'OFFLINE', 0),
(3, 'Anirban', 'ONLINE', 700004);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `name`, `price`) VALUES
(1, 'Chicken Rezala', 120),
(2, 'Mutton Biriyani', 150),
(3, 'Chicken Biriyani', 130),
(4, 'Peas Polao', 140),
(5, 'Fish Fry', 80);

-- --------------------------------------------------------

--
-- Table structure for table `items_ordered`
--

CREATE TABLE `items_ordered` (
  `billno` int(10) DEFAULT NULL,
  `itemid` int(10) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offline_order`
--

CREATE TABLE `offline_order` (
  `ofid` int(10) NOT NULL,
  `billno` int(10) DEFAULT NULL,
  `table_no` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online_order`
--

CREATE TABLE `online_order` (
  `onid` int(10) NOT NULL,
  `billno` int(10) DEFAULT NULL,
  `area` int(10) DEFAULT NULL,
  `employee_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billno`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `items_ordered`
--
ALTER TABLE `items_ordered`
  ADD KEY `billno` (`billno`),
  ADD KEY `itemid` (`itemid`);

--
-- Indexes for table `offline_order`
--
ALTER TABLE `offline_order`
  ADD PRIMARY KEY (`ofid`),
  ADD KEY `billno` (`billno`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `online_order`
--
ALTER TABLE `online_order`
  ADD PRIMARY KEY (`onid`),
  ADD KEY `billno` (`billno`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `billno` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `offline_order`
--
ALTER TABLE `offline_order`
  MODIFY `ofid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `online_order`
--
ALTER TABLE `online_order`
  MODIFY `onid` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`);

--
-- Constraints for table `items_ordered`
--
ALTER TABLE `items_ordered`
  ADD CONSTRAINT `items_ordered_ibfk_1` FOREIGN KEY (`billno`) REFERENCES `bill` (`billno`),
  ADD CONSTRAINT `items_ordered_ibfk_2` FOREIGN KEY (`itemid`) REFERENCES `items` (`item_id`);

--
-- Constraints for table `offline_order`
--
ALTER TABLE `offline_order`
  ADD CONSTRAINT `offline_order_ibfk_1` FOREIGN KEY (`billno`) REFERENCES `bill` (`billno`),
  ADD CONSTRAINT `offline_order_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `online_order`
--
ALTER TABLE `online_order`
  ADD CONSTRAINT `online_order_ibfk_1` FOREIGN KEY (`billno`) REFERENCES `bill` (`billno`),
  ADD CONSTRAINT `online_order_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
