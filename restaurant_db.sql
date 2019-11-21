-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 08:02 PM
-- Server version: 10.4.6-MariaDB
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
-- Database: `restaurant`
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
(7, 'Abington'),
(26, 'Airmont'),
(42, 'Albany'),
(32, 'Albion'),
(30, 'Amherst'),
(21, 'Amsterdam'),
(43, 'Auburn'),
(22, 'Avon'),
(38, 'Batavia'),
(35, 'Bellingham'),
(6, 'Brockport'),
(12, 'Brockton'),
(41, 'Chelmsford'),
(45, 'Chicopee'),
(28, 'Danvers'),
(29, 'East Falmouth'),
(47, 'Fairhaven'),
(44, 'Fall River'),
(5, 'Framingham'),
(37, 'Gardner'),
(46, 'Hadley'),
(4, 'Halifax'),
(36, 'Hanover'),
(13, 'Hudson'),
(24, 'Leicester'),
(10, 'Leominster'),
(1, 'Lunenburg'),
(50, 'Lynn'),
(33, 'Methuen'),
(48, 'North Adams'),
(15, 'North Attleboro'),
(40, 'North Dartmouth'),
(25, 'North Oxford'),
(11, 'North Reading'),
(23, 'Northborough'),
(18, 'Northhampton'),
(39, 'Orange'),
(49, 'Pittsfield'),
(8, 'Plymouth'),
(20, 'Quincy'),
(17, 'Raynham'),
(31, 'Salem'),
(14, 'Seekonk'),
(9, 'Springfield'),
(19, 'Sturbridge'),
(34, 'Swansea'),
(2, 'Tewksbury'),
(3, 'Walpole'),
(27, 'Ware'),
(16, 'Wareham');

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

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billno`, `cid`, `type`, `order_date`, `amount`) VALUES
(1, 22, 'ONLINE', '2015-07-21', 364),
(2, 9, 'OFFLINE', '2016-09-20', 145),
(3, 45, 'ONLINE', '2015-04-08', 483),
(4, 49, 'OFFLINE', '2016-10-22', 370),
(5, 47, 'OFFLINE', '2017-05-26', 149),
(6, 35, 'OFFLINE', '2016-03-06', 264),
(7, 11, 'ONLINE', '2017-05-12', 449),
(8, 33, 'OFFLINE', '2018-02-06', 105),
(9, 38, 'ONLINE', '2018-06-16', 178),
(10, 4, 'ONLINE', '2016-07-16', 474),
(11, 31, 'ONLINE', '2015-10-11', 256),
(12, 41, 'ONLINE', '2015-08-15', 241),
(13, 28, 'ONLINE', '2016-03-01', 451),
(14, 39, 'OFFLINE', '2017-06-27', 461),
(15, 30, 'OFFLINE', '2016-03-15', 358),
(16, 48, 'ONLINE', '2017-10-16', 297),
(17, 17, 'OFFLINE', '2016-02-05', 149),
(18, 14, 'ONLINE', '2015-01-11', 171),
(19, 45, 'OFFLINE', '2018-09-26', 316),
(20, 40, 'ONLINE', '2017-11-24', 168),
(21, 24, 'ONLINE', '2018-05-16', 381),
(22, 47, 'ONLINE', '2016-06-18', 233),
(23, 23, 'OFFLINE', '2018-01-09', 285),
(24, 28, 'ONLINE', '2017-07-09', 371),
(25, 41, 'OFFLINE', '2016-04-02', 365),
(26, 16, 'ONLINE', '2018-02-04', 194),
(27, 32, 'OFFLINE', '2015-11-25', 176),
(28, 36, 'ONLINE', '2016-03-23', 321),
(29, 15, 'ONLINE', '2018-06-05', 293),
(30, 33, 'ONLINE', '2015-05-11', 446),
(31, 23, 'ONLINE', '2016-06-19', 458),
(32, 10, 'ONLINE', '2015-10-03', 164),
(33, 3, 'ONLINE', '2017-07-26', 114),
(34, 16, 'ONLINE', '2017-08-21', 443),
(35, 15, 'OFFLINE', '2015-10-06', 127),
(36, 3, 'ONLINE', '2017-01-06', 156),
(37, 8, 'OFFLINE', '2018-03-06', 497),
(38, 26, 'ONLINE', '2015-05-27', 205),
(39, 42, 'OFFLINE', '2015-05-04', 240),
(40, 49, 'ONLINE', '2018-08-11', 288),
(41, 15, 'OFFLINE', '2017-09-26', 488),
(42, 49, 'ONLINE', '2018-08-16', 240),
(43, 6, 'OFFLINE', '2016-01-05', 264),
(44, 24, 'OFFLINE', '2016-01-08', 267),
(45, 21, 'OFFLINE', '2015-04-02', 453),
(46, 17, 'OFFLINE', '2015-05-05', 400),
(47, 18, 'OFFLINE', '2015-08-03', 161),
(48, 15, 'ONLINE', '2016-08-22', 328),
(49, 16, 'ONLINE', '2017-09-11', 285),
(50, 14, 'ONLINE', '2017-06-06', 264);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `areaid` int(11) NOT NULL,
  `number` bigint(11) NOT NULL,
  `total_spent` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `address`, `areaid`, `number`, `total_spent`) VALUES
(1, 'Cecile Moore', '591 Memorial Dr, Chicopee MA 1020', 44, 9655533285, 2589),
(2, 'Zola Carter', '4133 Veterans Memorial Drive, Batavia NY 14020', 47, 6109812967, 3071),
(3, 'Marvis Bell', '4133 Veterans Memorial Drive, Batavia NY 14020', 38, 5914497460, 180),
(4, 'Zelda Diaz', '100 Charlton Road, Sturbridge MA 1566', 13, 9458146246, 2723),
(5, 'Gina Jenkins', '20 Soojian Dr, Leicester MA 1524', 48, 3047017869, 1394),
(6, 'Sima Cook', '1180 Fall River Avenue, Seekonk MA 2771', 21, 6950674646, 300),
(7, 'Celina Moore', '2055 Niagara Falls Blvd, Amherst NY 14228', 25, 1611414184, 4716),
(8, 'Laurena Kelly', '450 Highland Ave, Salem MA 1970', 34, 4932245459, 1735),
(9, 'Soraya Wilson', '2055 Niagara Falls Blvd, Amherst NY 14228', 23, 7158465103, 2572),
(10, 'Laurena Bailey', '141 Washington Ave Extension, Albany NY 12205', 33, 7975780245, 2765),
(11, 'Gina Perez', '300 Colony Place, Plymouth MA 2360', 31, 2631844064, 1465),
(12, 'Sergio Anderson', '506 State Road, North Dartmouth MA 2747', 15, 6707987525, 4189),
(13, 'Malena Martin', '1180 Fall River Avenue, Seekonk MA 2771', 42, 2800950563, 4755),
(14, 'Laurena Thomas', '1775 Washington St, Hanover MA 2339', 45, 8643850939, 1585),
(15, 'Lashunda Wood', '301 Massachusetts Ave, Lunenburg MA 1462', 40, 8112602077, 1348),
(16, 'Marvella Rogers', '450 Highland Ave, Salem MA 1970', 1, 1471781365, 461),
(17, 'Caren Gonzales', '250 Hartford Avenue, Bellingham MA 2019', 17, 7118208731, 2660),
(18, 'Roslyn Griffin ', '250 Rt 59, Airmont NY 10901', 22, 7903455355, 779),
(19, 'Valery Turner', '301 Falls Blvd, Quincy MA 2169', 11, 3093833599, 3129),
(20, 'Sunshine Reed', '100 Charlton Road, Sturbridge MA 1566', 28, 4239597063, 792),
(21, 'Sergio Washington', '301 Falls Blvd, Quincy MA 2169', 45, 5557777425, 3988),
(22, 'Lyla Bryant ', '780 Lynnway, Lynn MA 1905', 48, 4814041951, 793),
(23, 'Marvis Phillips', '297 Grant Avenue, Auburn NY 13021', 1, 2368853966, 3781),
(24, 'Lorrie Bailey', '352 Palmer Road, Ware MA 1082', 25, 6171292622, 2357),
(25, 'Sergio Gray', '4133 Veterans Memorial Drive, Batavia NY 14020', 16, 1600780899, 4135),
(26, 'Malena Gray', '777 Brockton Avenue, Abington MA 2351', 46, 5362459620, 4825),
(27, 'Jeanetta Diaz', '42 Fairhaven Commons Way, Fairhaven MA 2719', 2, 3665252138, 2678),
(28, 'Stanley Collins', '4133 Veterans Memorial Drive, Batavia NY 14020', 45, 6279898594, 675),
(29, 'Song Lee', '591 Memorial Dr, Chicopee MA 1020', 10, 6838551814, 1122),
(30, 'Deb Moore', '42 Fairhaven Commons Way, Fairhaven MA 2719', 40, 4847327541, 4887),
(31, 'Roslyn Sanders', '591 Memorial Dr, Chicopee MA 1020', 40, 3824595121, 4641),
(32, 'Fredrick Hayes', '677 Timpany Blvd, Gardner MA 1440', 26, 5075450462, 1895),
(33, 'Sunshine Wilson', '72 Main St, North Reading MA 1864', 43, 7713893866, 3231),
(34, 'Genie Mitchell', '700 Oak Street, Brockton MA 2301', 36, 7713787244, 4338),
(35, 'Elwanda Collins', '780 Lynnway, Lynn MA 1905', 18, 9843251889, 914),
(36, 'Marlena Bell', '180 North King Street, Northhampton MA 1060', 49, 8172949911, 740),
(37, 'Elwanda Thompson', '700 Oak Street, Brockton MA 2301', 26, 5956700565, 3596),
(38, 'Jeanetta Richardson', '42 Fairhaven Commons Way, Fairhaven MA 2719', 29, 9009126103, 925),
(39, 'Elroy Thomas', '295 Plymouth Street, Halifax MA 2338', 27, 6945292108, 2174),
(40, 'Celina Brown', '250 Rt 59, Airmont NY 10901', 33, 4137085529, 4625),
(41, 'Marlena Hayes', '100 Charlton Road, Sturbridge MA 1566', 47, 5180669521, 4885),
(42, 'Vikki Jenkins', '777 Brockton Avenue, Abington MA 2351', 45, 5199566142, 1183),
(43, 'Malena Johnson', '121 Worcester Rd, Framingham MA 1701', 38, 5633822102, 2145),
(44, 'Cuc Brown', '280 Washington Street, Hudson MA 1749', 37, 9987151334, 4619),
(45, 'Birgit Hughes', '250 Hartford Avenue, Bellingham MA 2019', 15, 2479085948, 1013),
(46, 'Cecile Campbell', '295 Plymouth Street, Halifax MA 2338', 39, 9120268325, 3700),
(47, 'Gina Bennett', '300 Colony Place, Plymouth MA 2360', 24, 7784051852, 454),
(48, 'Cicely Cox', '20 Soojian Dr, Leicester MA 1524', 5, 9444137654, 1656),
(49, 'Roslyn Sanchez', '72 Main St, North Reading MA 1864', 25, 1967673527, 4509),
(50, 'Marvella Morgan', '677 Timpany Blvd, Gardner MA 1440', 44, 8597297214, 3600);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `areaid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `type`, `areaid`) VALUES
(1, 'Zelda Cox', 'ONLINE', 34),
(2, 'Sergio Cooper', 'OFFLINE', 5),
(3, 'Sterling Parker', 'ONLINE', 24),
(4, 'Birgit Washington', 'OFFLINE', 25),
(5, 'Lashunda Allen', 'OFFLINE', 19),
(6, 'Gina Bennett', 'ONLINE', 37),
(7, 'Marvis Bailey', 'OFFLINE', 29),
(8, 'Malena Brown', 'OFFLINE', 34),
(9, 'Sergio Wright', 'ONLINE', 20),
(10, 'Celina Kelly', 'OFFLINE', 18),
(11, 'Fredrick Jackson', 'OFFLINE', 4),
(12, 'Caren Adams', 'OFFLINE', 18),
(13, 'Genie Ramirez', 'ONLINE', 4),
(14, 'Vikki Thompson', 'OFFLINE', 28),
(15, 'Celina Torres', 'ONLINE', 9),
(16, 'Lashunda Jones', 'OFFLINE', 15),
(17, 'Malena King', 'ONLINE', 13),
(18, 'Laurena Smith', 'OFFLINE', 47),
(19, 'Roslyn Price', 'ONLINE', 29),
(20, 'Lorrie Washington', 'ONLINE', 14),
(21, 'Celina James', 'OFFLINE', 32),
(22, 'Gina Cook', 'OFFLINE', 36),
(23, 'Malika Turner', 'ONLINE', 10),
(24, 'Elwanda Jackson', 'ONLINE', 5),
(25, 'Caren Sanders', 'OFFLINE', 19),
(26, 'Loura Smith', 'ONLINE', 6),
(27, 'Gina Lee', 'OFFLINE', 18),
(28, 'Stanley Wright', 'ONLINE', 31),
(29, 'Elroy Martinez', 'OFFLINE', 29),
(30, 'Gina Hill', 'ONLINE', 31),
(31, 'Caren Thomas', 'OFFLINE', 12),
(32, 'Porsche Walker', 'ONLINE', 26),
(33, 'Stanley Flores', 'ONLINE', 22),
(34, 'Vikki Moore', 'ONLINE', 32),
(35, 'Sunshine Hughes', 'OFFLINE', 48),
(36, 'Sima Collins', 'OFFLINE', 15),
(37, 'Lyla Price', 'OFFLINE', 18),
(38, 'Zola Cooper', 'OFFLINE', 12),
(39, 'Sterling White', 'OFFLINE', 6),
(40, 'Cicely Robinson', 'ONLINE', 40),
(41, 'Jaymie Collins', 'OFFLINE', 13),
(42, 'Magda Rivera', 'OFFLINE', 18),
(43, 'Stanley Wright', 'ONLINE', 1),
(44, 'Lyla Jackson', 'ONLINE', 14),
(45, 'Sergio Bryant ', 'ONLINE', 15),
(46, 'Caren Carter', 'ONLINE', 27),
(47, 'Anja Reed', 'ONLINE', 25),
(48, 'Sunshine Barnes', 'OFFLINE', 46),
(49, 'Song Lewis', 'ONLINE', 14),
(50, 'Susanna Turner', 'ONLINE', 29);

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
(5, 'Fish Fry', 80),
(6, 'Naan', 276),
(7, 'Matar Paneer', 120),
(8, 'Alu Gobi', 450),
(9, 'Masala Chai', 266),
(10, 'Malai Kofta', 407),
(11, 'Butter Chicken', 116),
(12, 'Rogan Josh', 155),
(13, 'Beef Vindaloo', 181),
(14, 'Tandoori Chicken', 185);

-- --------------------------------------------------------

--
-- Table structure for table `items_ordered`
--

CREATE TABLE `items_ordered` (
  `billno` int(10) NOT NULL,
  `itemid` int(10) NOT NULL,
  `quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_ordered`
--

INSERT INTO `items_ordered` (`billno`, `itemid`, `quantity`) VALUES
(1, 9, 2),
(2, 6, 2),
(2, 12, 2),
(3, 6, 1),
(3, 9, 2),
(3, 11, 3),
(4, 2, 3),
(4, 7, 3),
(4, 11, 3),
(4, 12, 3),
(5, 1, 3),
(5, 2, 1),
(5, 6, 2),
(5, 7, 2),
(5, 11, 2),
(6, 8, 3),
(6, 10, 3),
(7, 1, 3),
(7, 2, 1),
(7, 5, 1),
(7, 6, 3),
(7, 12, 3),
(8, 1, 1),
(8, 7, 3),
(8, 10, 1),
(8, 13, 4),
(9, 1, 3),
(9, 5, 2),
(9, 6, 3),
(9, 7, 1),
(9, 9, 1),
(9, 11, 2),
(9, 12, 3),
(9, 13, 2),
(10, 1, 1),
(10, 6, 2),
(10, 7, 2),
(10, 9, 1),
(11, 10, 3),
(11, 11, 1),
(11, 12, 3),
(12, 2, 3),
(12, 6, 2),
(12, 7, 2),
(12, 9, 3),
(12, 10, 1),
(13, 1, 2),
(13, 5, 2),
(14, 13, 1),
(15, 1, 1),
(15, 6, 1),
(15, 10, 2),
(15, 12, 1),
(16, 6, 1),
(16, 13, 1),
(17, 4, 2),
(17, 9, 1),
(18, 5, 3),
(18, 11, 1),
(18, 12, 3),
(19, 4, 2),
(19, 11, 3),
(20, 10, 3),
(21, 4, 2),
(22, 9, 2),
(22, 10, 2),
(22, 13, 2),
(23, 1, 3),
(23, 10, 3),
(24, 3, 2),
(24, 4, 1),
(24, 6, 1),
(24, 10, 3),
(25, 6, 3),
(25, 10, 2),
(25, 11, 3),
(26, 12, 2),
(27, 5, 3),
(28, 13, 1),
(29, 4, 1),
(29, 7, 1),
(29, 10, 1),
(29, 13, 2),
(30, 8, 3),
(30, 13, 1),
(31, 2, 2),
(32, 5, 1),
(32, 12, 1),
(33, 1, 1),
(33, 7, 3),
(34, 4, 1),
(34, 13, 1),
(35, 2, 2),
(36, 4, 2),
(36, 7, 3),
(37, 1, 1),
(37, 6, 1),
(37, 7, 3),
(37, 8, 1),
(37, 11, 1),
(38, 3, 1),
(39, 3, 1),
(39, 4, 1),
(39, 6, 1),
(39, 7, 1),
(39, 12, 2),
(40, 6, 3),
(40, 13, 2),
(41, 2, 2),
(41, 4, 1),
(41, 6, 1),
(41, 8, 1),
(41, 9, 1),
(41, 10, 1),
(42, 3, 3),
(42, 9, 1),
(42, 10, 1),
(42, 12, 2),
(43, 1, 2),
(43, 3, 3),
(43, 10, 3),
(44, 7, 1),
(44, 12, 2),
(45, 1, 3),
(45, 3, 3),
(45, 6, 2),
(45, 7, 2),
(45, 12, 1),
(45, 13, 2),
(46, 3, 2),
(47, 10, 1),
(48, 7, 2),
(49, 10, 2),
(49, 12, 3),
(50, 2, 4),
(50, 5, 1),
(50, 9, 3),
(50, 11, 4);

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

--
-- Dumping data for table `offline_order`
--

INSERT INTO `offline_order` (`ofid`, `billno`, `table_no`, `employee_id`) VALUES
(1, 39, 16, 44),
(2, 46, 17, 22),
(3, 15, 8, 30),
(4, 17, 15, 32),
(5, 23, 6, 36),
(6, 14, 10, 40),
(7, 35, 1, 27),
(8, 45, 18, 18),
(9, 4, 9, 6),
(10, 5, 13, 35),
(11, 44, 15, 13),
(12, 41, 3, 32),
(13, 25, 4, 35),
(14, 6, 5, 11),
(15, 2, 8, 9),
(16, 19, 12, 36),
(17, 47, 2, 18),
(18, 8, 8, 3),
(19, 43, 4, 45),
(20, 37, 13, 23),
(21, 27, 19, 17);

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
-- Dumping data for table `online_order`
--

INSERT INTO `online_order` (`onid`, `billno`, `area`, `employee_id`) VALUES
(1, 31, 10, 23),
(2, 38, 4, 11),
(3, 16, 32, 34),
(4, 28, 18, 37),
(5, 24, 12, 38),
(6, 20, 14, 20),
(7, 9, 47, 18),
(8, 21, 29, 29),
(9, 13, 32, 34),
(10, 22, 15, 36),
(11, 33, 36, 22),
(12, 11, 34, 8),
(13, 29, 46, 48),
(14, 18, 34, 8),
(15, 1, 34, 1),
(16, 26, 10, 23),
(17, 12, 15, 36),
(18, 36, 29, 19),
(19, 34, 47, 18),
(20, 40, 14, 20),
(21, 32, 6, 26),
(22, 7, 31, 28),
(23, 30, 10, 23),
(24, 3, 13, 17),
(25, 10, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`AreaCode`),
  ADD UNIQUE KEY `AreaName` (`AreaName`);

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
  ADD PRIMARY KEY (`cid`),
  ADD KEY `areaid` (`areaid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `areaid` (`areaid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `items_ordered`
--
ALTER TABLE `items_ordered`
  ADD PRIMARY KEY (`billno`,`itemid`),
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
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `area` (`area`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `AreaCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `billno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `offline_order`
--
ALTER TABLE `offline_order`
  MODIFY `ofid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `online_order`
--
ALTER TABLE `online_order`
  MODIFY `onid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`areaid`) REFERENCES `area` (`AreaCode`);

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
  ADD CONSTRAINT `online_order_ibfk_2` FOREIGN KEY (`area`) REFERENCES `area` (`AreaCode`),
  ADD CONSTRAINT `online_order_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
