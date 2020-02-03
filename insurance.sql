-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 03:15 PM
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
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

CREATE TABLE `accident` (
  `aid` int(11) NOT NULL,
  `date_` date NOT NULL,
  `time_` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accident`
--

INSERT INTO `accident` (`aid`, `date_`, `time_`) VALUES
(1, '2019-11-25', '09:58:13'),
(2, '2019-07-18', '05:18:14'),
(3, '2019-10-25', '10:42:25'),
(4, '2019-12-03', '02:32:13'),
(5, '2019-03-24', '06:53:29'),
(6, '2019-09-07', '06:41:58'),
(7, '2019-06-30', '20:38:59'),
(8, '2019-09-02', '22:00:12'),
(9, '2019-04-01', '01:39:40'),
(10, '2019-07-02', '05:33:36'),
(11, '2019-05-04', '02:53:59'),
(12, '2019-09-19', '02:19:12'),
(13, '2019-03-18', '00:35:47'),
(14, '2019-04-13', '08:04:58'),
(15, '2019-11-15', '06:02:49'),
(16, '2019-06-06', '03:30:16'),
(17, '2019-09-10', '20:45:21'),
(18, '2019-04-28', '17:08:25'),
(19, '2019-03-07', '22:27:12'),
(20, '2019-07-28', '04:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `car_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `make` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `car_number`, `make`, `model`) VALUES
(1, '1G6DJ1ED8B0498390', 'Mazda', 'Mazdaspeed6'),
(2, '1GKS1HE08DR065987', 'Ford', 'Taurus'),
(3, '1HGCR2E71FA691239', 'Mercury', 'Monterey'),
(4, '1HGCR2F35DA792065', 'Toyota', 'MR2'),
(5, '1N6AD0CW7EN774228', 'Subaru', 'Tribeca'),
(6, '2G4GR5GX6E9169498', 'GMC', 'Sierra 3500'),
(7, '2HNYD18401H923087', 'Cadillac', 'DeVille'),
(8, '5GAKVAED8CJ844735', 'Volkswagen', 'Jetta'),
(9, '5N1AN0NU4CN224344', 'Mercedes-Benz', 'S-Class'),
(10, 'JM1NC2LF6F0355076', 'BMW', '5 Series'),
(11, 'JTEBU4BF8AK786363', 'Buick', 'Skylark'),
(12, 'SAJWA4FBXCL227692', 'Plymouth', 'Acclaim'),
(13, 'WA1AY74L19D469253', 'Lexus', 'LX'),
(14, 'WA1C8AFP0EA550360', 'Cadillac', 'CTS'),
(15, 'WBA3B5G5XFN429919', 'Buick', 'LeSabre'),
(16, 'WBA3C1G5XEN709098', 'Holden', 'Monaro'),
(17, 'WBAEB53528C544706', 'Ford', 'Escort'),
(18, 'WBAEV534X3K495686', 'Ford', 'Escape'),
(19, 'WBAYM9C52DD389948', 'GMC', 'Yukon XL 2500'),
(20, 'WDDPK4HA8DF118433', 'Mercedes-Benz', 'E-Class');

-- --------------------------------------------------------

--
-- Table structure for table `cars_involved`
--

CREATE TABLE `cars_involved` (
  `aid` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `driver_license_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cars_involved`
--

INSERT INTO `cars_involved` (`aid`, `car_id`, `driver_license_no`) VALUES
(1, 2, '647-87-4916'),
(2, 3, '393-61-0674'),
(2, 14, '590-13-2730'),
(3, 2, '719-54-4238'),
(3, 7, '316-61-3291'),
(3, 9, '729-06-3900'),
(3, 20, '360-54-0152'),
(4, 1, '442-12-0460'),
(4, 6, '860-39-3725'),
(4, 8, '791-61-7306'),
(5, 9, '691-44-6950'),
(5, 13, '508-89-2578'),
(5, 15, '825-30-6222'),
(6, 4, '423-69-6826'),
(7, 6, '207-44-9402'),
(7, 8, '519-72-6369'),
(7, 15, '826-19-3980'),
(7, 18, '604-25-5129'),
(8, 1, '376-94-0868'),
(8, 20, '486-21-9199'),
(9, 2, '266-33-8776'),
(9, 6, '230-67-7164'),
(10, 3, '681-39-2836'),
(10, 14, '177-81-5301'),
(11, 10, '342-49-5841'),
(11, 11, '535-70-9348'),
(11, 12, '286-60-9262'),
(11, 15, '664-50-4459'),
(12, 5, '256-68-7568'),
(12, 18, '374-46-2627'),
(12, 20, '130-55-6116'),
(13, 18, '382-03-9553'),
(13, 19, '469-85-9983'),
(13, 20, '558-27-0865'),
(14, 9, '414-24-7003'),
(14, 12, '857-52-3475'),
(14, 17, '466-46-6454'),
(15, 2, '420-69-9800'),
(15, 4, '367-76-9790'),
(15, 5, '166-11-9173'),
(15, 6, '351-81-9047'),
(16, 5, '295-58-4807'),
(16, 6, '879-50-0418'),
(16, 13, '514-34-3755'),
(16, 15, '194-84-2846'),
(16, 17, '280-39-6961'),
(16, 19, '682-39-8648'),
(17, 6, '287-68-1789'),
(17, 13, '494-43-7739'),
(17, 14, '826-51-2690'),
(18, 13, '123-13-6060'),
(18, 18, '424-87-7433'),
(19, 3, '826-39-7891'),
(20, 20, '511-01-3849');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `address`, `phone`) VALUES
(1, 'Benedetto Veel', '91 Thackeray Center', 5091028188),
(2, 'Liana Cowlam', '54447 Daystar Point', 3708729097),
(3, 'Ximenez Joan', '29876 Gateway Pass', 6681199421),
(4, 'Bill Goggen', '5435 Lerdahl Way', 2076639624),
(5, 'Iago Tupman', '8454 Monument Road', 1418941771),
(6, 'Melisent Dowty', '7825 Grayhawk Crossing', 6937335990),
(7, 'Mamie Barrick', '0087 Emmet Trail', 4755269264),
(8, 'Shari McCaughran', '096 Sycamore Center', 9165862440),
(9, 'Aurie Andrzejowski', '2048 Logan Plaza', 5264687247),
(10, 'Felike Wondraschek', '42 Surrey Park', 3632988058),
(11, 'Augustin Wash', '9 Warrior Center', 3518443218),
(12, 'Erik Presslee', '222 Rockefeller Way', 6514095064),
(13, 'Rickey Cowdry', '12 Wayridge Park', 9052006514),
(14, 'Gigi Van der Beek', '6639 Steensland Pass', 2046349820),
(15, 'Hector Crasford', '0 Clarendon Court', 8516747018),
(16, 'Jammie Warbeys', '47 Village Green Terrace', 6047828719),
(17, 'Evered Kedwell', '671 Kedzie Point', 6797610092),
(18, 'Jase Tinn', '2 Tomscot Junction', 3765912991),
(19, 'Reinald Raynor', '7 La Follette Parkway', 8294619813),
(20, 'Melisse Weetch', '148 Prentice Place', 8966478718);

-- --------------------------------------------------------

--
-- Table structure for table `insures`
--

CREATE TABLE `insures` (
  `iid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `idate` date NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `insures`
--

INSERT INTO `insures` (`iid`, `cid`, `car_id`, `idate`, `amount`) VALUES
(1, 9, 13, '2019-04-15', 574527),
(2, 13, 7, '2019-07-27', 640678),
(3, 5, 1, '2020-01-14', 612497),
(4, 12, 20, '2019-04-27', 444266),
(5, 10, 15, '2019-07-15', 905860),
(6, 17, 10, '2019-06-05', 801610),
(7, 3, 3, '2020-01-05', 853541),
(8, 9, 12, '2019-07-15', 482577),
(9, 7, 5, '2019-10-06', 538582),
(10, 14, 17, '2019-08-10', 923310),
(11, 8, 4, '2019-06-06', 859794),
(12, 6, 18, '2019-02-04', 601772),
(13, 17, 8, '2019-10-31', 475645),
(14, 3, 16, '2019-04-26', 588584),
(15, 12, 2, '2019-07-12', 803555),
(16, 2, 6, '2019-09-23', 551848),
(17, 13, 19, '2019-05-18', 963918),
(18, 20, 14, '2019-05-25', 487667),
(19, 7, 9, '2019-07-27', 991482),
(20, 15, 11, '2019-08-04', 619999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_number` (`car_number`);

--
-- Indexes for table `cars_involved`
--
ALTER TABLE `cars_involved`
  ADD PRIMARY KEY (`aid`,`car_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `insures`
--
ALTER TABLE `insures`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `cid` (`cid`),
  ADD KEY `car_id` (`car_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident`
--
ALTER TABLE `accident`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `insures`
--
ALTER TABLE `insures`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars_involved`
--
ALTER TABLE `cars_involved`
  ADD CONSTRAINT `cars_involved_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `accident` (`aid`),
  ADD CONSTRAINT `cars_involved_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `insures`
--
ALTER TABLE `insures`
  ADD CONSTRAINT `insures_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`),
  ADD CONSTRAINT `insures_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
