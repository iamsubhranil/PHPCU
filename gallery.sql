-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 11:48 AM
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
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `art`
--

CREATE TABLE `art` (
  `artname` varchar(30) NOT NULL,
  `artdate` date NOT NULL,
  `style` varchar(20) NOT NULL,
  `artist` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `art`
--

INSERT INTO `art` (`artname`, `artdate`, `style`, `artist`) VALUES
(' Charles I IN Three Positions ', '1523-03-28', ' Earth Art ', ' Jasper Johns '),
(' Las Meninas ', '1515-05-16', ' Art Noveau ', ' Jan Van Eyck '),
(' Mr AND Mrs Robert Andrews ', '1333-03-19', ' Expressionism ', ' Roy Lichtenstein '),
(' Napoleon Crossing The Alps ', '1282-06-11', ' Cubism ', ' Francisco De Goya '),
(' Pilgrimage TO Cythera ', '1542-02-16', ' Impressionism ', ' Jacques '),
(' Primavera ', '1721-08-29', ' Earth Art ', ' Piet Mondrian '),
(' The Birth Of Venus ', '1543-09-25', ' Baroque ', ' Edward Hopper '),
(' The Creation Of Adam ', '1372-08-23', ' Avant - garde ', ' Hans Memling '),
(' The Gleaners ', '1034-06-17', ' Classicism ', ' Georges Seurat '),
(' The Grand Odalisque ', '1212-12-12', ' Baroque ', ' Jan Vermeer '),
(' The Gross Clinic ', '1111-11-11', ' Minimalism ', ' Hieronymus Bosch '),
(' The LAST Supper ', '1288-02-15', ' Abstract ', ' Gustav Klimt '),
(' The Ninth Wave ', '1432-05-16', ' Futurism ', ' Fernand Ler '),
(' The Sleeping Gypsy ', '1737-12-11', ' Earth Art ', ' Hans Holbein The Younger '),
(' The Triumph Of Galatea ', '1666-01-09', ' Avant - garde ', ' Michelangelo Buonarroti '),
('American Gothic', '1341-03-05', 'Post-Impressionism', 'Gentileschi, Artemisia'),
('Bacchus And Ariadne', '1500-03-08', 'Expressionism', 'Frederic Edwin Church'),
('Large Bathers', '1668-10-08', 'Cubism', 'Tommaso Masaccio'),
('Luncheon Of The Boating Party', '1390-05-09', 'Constructivism', 'John Constable'),
('Musicians', '1672-01-12', 'Performance Art', 'William Hogarth'),
('Olympia', '1409-02-13', 'Neo-Impressionalism', 'James Ensor'),
('Pollice Verso', '1327-10-20', 'Performance Art', 'Paul Canne'),
('St. George And The Dragon', '1009-08-07', 'Art Noveau', 'Georgia O Keefe '),
('Sunday Afternoon On The Island', '1034-02-22', 'Rococo', 'David Hockney'),
('The Liberty Leading The People', '1284-04-21', 'Suprematism', 'Jean'),
('The Sleepers', '1735-08-18', 'Earth Art', 'Giotto Di Bondone'),
('The Swing', '1370-02-27', 'Constructivism', 'Winslow Homer'),
('The Third Of May 1808', '1208-01-09', 'Expressionism', 'Simone Martini'),
('The Tower Of Babel', '1485-01-11', 'Classicism', 'El Greco'),
('The Wanderer Above The Sea Of ', '1127-04-23', 'Impressionism', 'Ouard Manet'),
('View Of Toledo', '1687-03-21', 'Avant-garde', 'Claude Lorrain');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `name` varchar(30) NOT NULL,
  `birthplace` varchar(30) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`name`, `birthplace`, `age`) VALUES
('Andrea Mantegna', 'North Dartmouth', 58),
('Andy Warhol', 'Fairhaven', 70),
('Arshille Gorky', 'Fairhaven', 70),
('Caravaggio', 'North Oxford', 54),
('Claude Lorrain', 'Northhampton', 31),
('David Hockney', 'Amsterdam', 52),
('El Lissitzky', 'Leicester', 62),
('Eug?E Delacroix', 'North Attleboro', 28),
('Fernand Ler', 'Chicopee', 82),
('Fra Angelico', 'Danvers', 28),
('Francis Bacon', 'North Attleboro', 18),
('Francisco De Goya', 'Hanover', 42),
('Frans Hals', 'Walpole', 34),
('Franz Marc', 'Lunenburg', 85),
('Frida Kahlo', 'Brockton', 75),
('Gentileschi, Artemisia', 'North Reading', 84),
('Georges Braque', 'Auburn', 51),
('Georges De La Tour', 'Leicester', 31),
('Georges Seurat', 'Seekonk', 81),
('Gerhard Richter', 'Raynham', 26),
('Giorgio De Chirico', 'Northhampton', 59),
('Giotto Di Bondone', 'Plymouth', 45),
('Gustav Klimt', 'Auburn', 45),
('Gustave Courbet', 'Bellingham', 66),
('Hans Holbein The Younger', 'Albion', 60),
('Hans Memling', 'Chelmsford', 78),
('James Mcneill Whistler', 'Northborough', 53),
('Jan Van Eyck', 'Danvers', 77),
('Jan Vermeer', 'Hanover', 36),
('Jasper Johns', 'Amsterdam', 50),
('Jean', 'Abington', 42),
('Jean Franiis Millet', 'Seekonk', 58),
('Lucio Fontana', 'Halifax', 19),
('Marc Chagall', 'Leicester', 72),
('Marcel Duchamp', 'Orange', 82),
('Nicolas Poussin', 'Pittsfield', 48),
('Ouard Manet', 'Bellingham', 83),
('Pablo Picasso', 'Framingham', 53),
('Paolo Uccello', 'Northborough', 85),
('Paul Gauguin', 'Lunenburg', 46),
('Paul Klee', 'Seekonk', 67),
('Pierre', 'Albany', 48),
('Piet Mondrian', 'Brockton', 51),
('Rembrandt Van Rijn', 'Fairhaven', 82),
('Roy Lichtenstein', 'Framingham', 48),
('Simone Martini', 'North Oxford', 82),
('Tintoretto', 'Raynham', 74),
('Titian', 'Framingham', 77),
('William Hogarth', 'Fairhaven', 53),
('Winslow Homer', 'Tewksbury', 53);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `artname` varchar(20) NOT NULL,
  `style` varchar(20) NOT NULL,
  `cid` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`artname`),
  ADD KEY `artist` (`artist`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `artname` (`artname`),
  ADD KEY `cid` (`cid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`artname`) REFERENCES `art` (`artname`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
