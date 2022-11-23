-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 06:37 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jonsonbros`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `name` varchar(15) NOT NULL,
  `state` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`name`, `state`) VALUES
('Amherst', 'Mass'),
('Atlanta', 'Ga'),
('Bostan', 'Mass'),
('Dallas', 'Tex'),
('Denver', 'Colo'),
('El Cerrito', 'Calif'),
('Hickville', 'Okla'),
('Los Angeles', 'Calif'),
('Madison', 'Wisc'),
('NewYork', 'NY'),
('Oakland', 'Calif'),
('Paxton', 'Ill'),
('Salt Lake City', 'Utah'),
('San Diego', 'Calif'),
('San Francisco', 'Calif'),
('Seattle', 'Wash'),
('White Plains', 'Neb');

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE `debit` (
  `number` int(11) NOT NULL,
  `sdate` date NOT NULL DEFAULT curdate(),
  `employee` int(11) NOT NULL,
  `account` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `debit`
--

INSERT INTO `debit` (`number`, `sdate`, `employee`, `account`) VALUES
(100581, '1995-01-15', 157, 10000000),
(100582, '1995-01-15', 1110, 14356540),
(100586, '1995-01-16', 35, 14096831),
(100592, '1995-01-17', 129, 10000000),
(100593, '1995-01-18', 13, 11652133),
(100594, '1995-01-18', 215, 12591815);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `number` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `store` int(11) NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`number`, `name`, `store`, `floor`, `manager`) VALUES
(1, 'Bargain', 5, 0, 37),
(10, 'Candy', 5, 1, 13),
(14, 'Jewelry', 8, 1, 33),
(19, 'Furniture', 7, 4, 26),
(20, 'Major Appliances', 7, 4, 26),
(26, 'Linens', 7, 3, 157),
(28, 'Women\'s', 8, 2, 32),
(34, 'Stationary', 5, 1, 33),
(35, 'Book', 5, 1, 55),
(43, 'Children\'s', 8, 2, 32),
(47, 'Junior Miss', 7, 2, 129),
(49, 'Toys', 8, 2, 35),
(58, 'Men\'s', 7, 2, 129),
(60, 'Sportswear', 5, 1, 10),
(63, 'Women\'s', 7, 3, 32),
(65, 'Junior\'s', 7, 3, 37),
(70, 'Women\'s', 5, 1, 10),
(73, 'Children\'s', 5, 1, 10),
(99, 'Giftwrap', 5, 1, 98);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `number` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `birthyear` int(11) DEFAULT NULL,
  `startyear` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`number`, `name`, `salary`, `manager`, `birthyear`, `startyear`) VALUES
(10, 'Ross, Stanley', 15908, 199, 1927, 1945),
(11, 'Ross, Stuart', 12067, NULL, 1931, 1932),
(13, 'Edwards, Peter', 9000, 199, 1928, 1958),
(26, 'Thompson, Bob', 13000, 199, 1390, 1970),
(32, 'Smyhte, Carol', 9050, 199, 1929, 1967),
(33, 'Hayes, Evelyn', 10100, 199, 1931, 1963),
(35, 'Evans, Michael', 500, 32, 1952, 1974),
(37, 'Raveen, Lemont', 11985, 26, 1950, 1974),
(55, 'James, Mary', 12000, 199, 1920, 1969),
(98, 'Williams, Judy', 9000, 199, 1941, 1962),
(129, 'Thomas, Tom', 10000, 199, 1941, 1962),
(157, 'Jones, Tim', 12000, 199, 1940, 1960),
(199, 'Bullock, J.D.', 27000, NULL, 1920, 1920),
(215, 'Collins, Joanne', 7000, 10, 1950, 1970),
(430, 'Brunet, Paul C.', 17674, 129, 1938, 1959),
(843, 'Schmidt, Herman', 11204, 26, 1936, 1956),
(994, 'Iwano, Masahiro', 15641, 129, 1938, 1959),
(1110, 'Smith, Paul', 6000, 33, 1952, 1973),
(1330, 'Onstad, Richard', 8779, 13, 1952, 1971),
(1523, 'Zugnoni, Arthur A.', 19868, 129, 1928, 1949),
(1639, 'Choy, Wanda', 11160, 55, 1947, 1970),
(2398, 'Wallace, Maggie J.', 7880, 26, 1940, 1959),
(4901, 'Bailey, Chas M.', 8377, 32, 1956, 1975),
(5119, 'Bono, Sonny', 13621, 55, 1939, 1963),
(5219, 'Schwarz, Jason B.', 13374, 33, 1944, 1959);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `number` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `dept` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `qoh` int(11) DEFAULT NULL CHECK (`qoh` >= 0),
  `supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`number`, `name`, `dept`, `price`, `qoh`, `supplier`) VALUES
(11, 'Wash C;oth', 1, 75, 575, 213),
(19, 'Bellbottoms', 43, 450, 600, 33),
(21, 'ABC Blocks', 1, 198, 405, 125),
(23, '1 lb Box', 10, 215, 100, 42),
(25, '2 lb Box, Mix', 10, 450, 75, 42),
(26, 'Earrings', 14, 1000, 20, 199),
(43, 'Maze', 49, 325, 200, 89),
(52, 'Jacket', 60, 3295, 300, 15),
(101, 'Slacks', 63, 1600, 325, 15),
(106, 'Clock Book', 49, 198, 150, 125),
(107, 'The \'Feel\' Book', 35, 225, 225, 89),
(115, 'Gold Ring', 14, 4995, 10, 199),
(118, 'Towels, Bath', 26, 250, 1000, 213),
(120, 'Twin Sheet', 26, 800, 750, 213),
(121, 'Queen Sheet', 26, 1375, 600, 213),
(127, 'Ski Jumpsuit', 65, 4350, 125, 15),
(165, 'Jean', 65, 825, 500, 33),
(199, 'Squeeze Ball', 49, 250, 400, 89),
(258, 'Shirt', 58, 650, 1200, 33),
(301, 'Boy\'s Jean Suit', 43, 1250, 500, 33);

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `number` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `color` varchar(8) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `qoh` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`number`, `name`, `color`, `weight`, `qoh`) VALUES
(1, 'central processor', 'pink', 10, 1),
(2, 'memory', 'gray', 10, 32),
(3, 'disk drive', 'black', 685, 2),
(4, 'tape drive', 'black', 450, 4),
(5, 'tapes', 'gray', 1, 250),
(6, 'line printer', 'yellow', 15, 95),
(7, 'l-p paper', 'white', 15, 95),
(8, 'terminals', 'blue', 19, 15),
(9, 'terminal paper', 'white', 2, 350),
(10, 'byte-soap', 'clear', 0, 143),
(11, 'card reader', 'gray', 327, 0),
(12, 'card punch', 'gray', 427, 0),
(13, 'paper tape reader', 'black', 107, 0),
(14, 'paper tape punch', 'black', 147, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `debit` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`debit`, `item`, `quantity`) VALUES
(100581, 118, 5),
(100581, 120, 4),
(100582, 26, 1),
(100586, 106, 2),
(100586, 127, 3),
(100592, 258, 4),
(100593, 23, 2),
(100594, 52, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sale_supply`
-- (See below for the actual view)
--
CREATE TABLE `sale_supply` (
`supplier` varchar(20)
,`item` varchar(20)
,`quantity` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `number` int(11) NOT NULL,
  `city` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`number`, `city`) VALUES
(8, 'El Cerrito'),
(7, 'Oakland'),
(5, 'San Francisco');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `number` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `city` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`number`, `name`, `city`) VALUES
(5, 'Amdahl', 'San Diego'),
(15, 'White Stag', 'White Plains'),
(20, 'Wormley', 'Hickville'),
(33, 'Levi-Strauss', 'San Francisco'),
(42, 'Whitman\'s', 'Denver'),
(62, 'Data General', 'Atlanta'),
(67, 'Edger', 'Salt Lake City'),
(89, 'Fisher-Price', 'Bostan'),
(122, 'White Paper', 'Seattle'),
(125, 'Playskool', 'Dallas'),
(199, 'Koret', 'Los Angeles'),
(213, 'Cannon', 'Atlanta'),
(241, 'IBM', 'NewYork'),
(440, 'Spooley', 'Paxton'),
(475, 'DEC', 'Amherst'),
(999, 'A E Neumann', 'Madison');

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE `supply` (
  `supplier` int(11) NOT NULL,
  `part` int(11) NOT NULL,
  `shipdate` date NOT NULL,
  `quan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supply`
--

INSERT INTO `supply` (`supplier`, `part`, `shipdate`, `quan`) VALUES
(5, 4, '1994-11-15', 3),
(5, 4, '1995-01-22', 6),
(20, 5, '1995-01-10', 20),
(20, 5, '1995-01-11', 75),
(62, 3, '1994-06-18', 3),
(67, 4, '1995-07-01', 1),
(89, 3, '1995-07-04', 1000),
(89, 4, '1995-07-04', 1000),
(122, 7, '1995-02-01', 144),
(122, 7, '1995-02-02', 48),
(122, 9, '1995-02-01', 144),
(241, 1, '1995-06-01', 1),
(241, 2, '1995-06-01', 32),
(241, 3, '1995-06-01', 1),
(241, 4, '1993-12-31', 1),
(241, 8, '1995-07-01', 1),
(241, 9, '1995-07-01', 144),
(440, 6, '1994-10-10', 2),
(475, 1, '1993-12-31', 1),
(475, 1, '1994-07-01', 1),
(475, 2, '1993-12-31', 32),
(475, 2, '1994-05-31', 32),
(475, 3, '1993-12-31', 2),
(475, 4, '1994-05-31', 1),
(999, 10, '1996-01-01', 144);

-- --------------------------------------------------------

--
-- Structure for view `sale_supply`
--
DROP TABLE IF EXISTS `sale_supply`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sale_supply`  AS SELECT `supplier`.`name` AS `supplier`, `item`.`name` AS `item`, `sale`.`quantity` AS `quantity` FROM ((`supplier` join `item`) join `sale`) WHERE `supplier`.`number` = `item`.`supplier` AND `sale`.`item` = `item`.`number``number`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`number`),
  ADD KEY `fk_debit_employee` (`employee`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`number`),
  ADD KEY `fk_dept_store` (`store`),
  ADD KEY `fk_dept_employee` (`manager`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`number`),
  ADD KEY `fk_item_dept` (`dept`),
  ADD KEY `fk_item_supplier` (`supplier`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`debit`,`item`),
  ADD KEY `fk_sale_item` (`item`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`number`),
  ADD KEY `fk_store_city` (`city`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`number`),
  ADD KEY `fk_supplier_city` (`city`);

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`supplier`,`part`,`shipdate`),
  ADD KEY `fk_supply_parts` (`part`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `debit`
--
ALTER TABLE `debit`
  ADD CONSTRAINT `fk_debit_employee` FOREIGN KEY (`employee`) REFERENCES `employee` (`number`);

--
-- Constraints for table `dept`
--
ALTER TABLE `dept`
  ADD CONSTRAINT `fk_dept_employee` FOREIGN KEY (`manager`) REFERENCES `employee` (`number`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_dept_store` FOREIGN KEY (`store`) REFERENCES `store` (`number`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_item_dept` FOREIGN KEY (`dept`) REFERENCES `dept` (`number`),
  ADD CONSTRAINT `fk_item_supplier` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`number`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `fk_sale_debit` FOREIGN KEY (`debit`) REFERENCES `debit` (`number`),
  ADD CONSTRAINT `fk_sale_item` FOREIGN KEY (`item`) REFERENCES `item` (`number`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `fk_store_city` FOREIGN KEY (`city`) REFERENCES `city` (`name`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `fk_supplier_city` FOREIGN KEY (`city`) REFERENCES `city` (`name`);

--
-- Constraints for table `supply`
--
ALTER TABLE `supply`
  ADD CONSTRAINT `fk_supply_parts` FOREIGN KEY (`part`) REFERENCES `parts` (`number`),
  ADD CONSTRAINT `fk_supply_supplier` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
