-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2022 at 05:26 AM
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
-- Database: `productioncompany`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actor_id` int(11) NOT NULL,
  `aname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actor_id`, `aname`) VALUES
(1, 'Ameer Khan'),
(453, 'Kriti Sanon'),
(653, 'Lokesh Patel'),
(4657, 'Robert Downey'),
(6543, 'Amitabh B');

-- --------------------------------------------------------

--
-- Table structure for table `actor_phno`
--

CREATE TABLE `actor_phno` (
  `actor_id` int(11) DEFAULT NULL,
  `phno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actor_phno`
--

INSERT INTO `actor_phno` (`actor_id`, `phno`) VALUES
(1, 8322233455),
(1, 9422334455),
(453, 6742334455),
(453, 9422332455),
(453, 9522434455),
(653, 8222334458);

-- --------------------------------------------------------

--
-- Table structure for table `acts_in`
--

CREATE TABLE `acts_in` (
  `actor_id` int(11) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acts_in`
--

INSERT INTO `acts_in` (`actor_id`, `role`, `movie_id`) VALUES
(1, 'Male lead', 23),
(453, 'Female lead', 346),
(653, 'Major Antagonist', 3645),
(4657, 'Male lead', 634),
(6543, 'Male lead', 523);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `email`) VALUES
(1, 'Himalay', 'himalay@gmail.com'),
(2, 'Ishan', 'ishan@gmail.com'),
(3, 'Dikshit', 'dikshit@gmail.com'),
(4, 'Anjali', 'anjali@gmail.com'),
(5, 'Juby', 'juby@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customer_phno`
--

CREATE TABLE `customer_phno` (
  `cid` int(11) NOT NULL,
  `phno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_phno`
--

INSERT INTO `customer_phno` (`cid`, `phno`) VALUES
(1, 9586247),
(2, 8459698),
(3, 5589974),
(4, 8788999),
(5, 7889987);

-- --------------------------------------------------------

--
-- Table structure for table `directed_by`
--

CREATE TABLE `directed_by` (
  `did` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directed_by`
--

INSERT INTO `directed_by` (`did`, `year`, `movie_id`) VALUES
(345, 2022, 3645),
(432, 2019, 23),
(4365, 2017, 634),
(4657, 2017, 346),
(5467, 1995, 523);

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `did` int(11) NOT NULL,
  `dname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`did`, `dname`) VALUES
(345, 'Rohit Shetty'),
(432, 'Anurag Kashyap'),
(4365, 'Karan Johar'),
(4657, 'Farhan Akhtar'),
(5467, 'Imtiaz Ali');

-- --------------------------------------------------------

--
-- Table structure for table `director_phno`
--

CREATE TABLE `director_phno` (
  `did` int(11) DEFAULT NULL,
  `phno` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `director_phno`
--

INSERT INTO `director_phno` (`did`, `phno`) VALUES
(345, 9942234422),
(432, 9944334422),
(4365, 9944343422),
(4657, 9945434422),
(5467, 9945634422);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `movie_id` int(11) NOT NULL,
  `genre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`movie_id`, `genre`) VALUES
(23, 'Action'),
(346, 'Drama'),
(523, 'Crime'),
(523, 'Romance'),
(634, 'Action'),
(634, 'Romance'),
(3645, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `theatre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `mname`, `pid`, `theatre_id`) VALUES
(23, 'TopGun', 1, 2354),
(346, 'Lakshya', 3, 654),
(523, 'AIRLIFT', 1, 875),
(634, 'Sanju', 5, 8657),
(3645, 'Mossad', 4, 8675);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `refid` int(11) NOT NULL,
  `payment_type` varchar(15) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`refid`, `payment_type`, `payment_status`, `amount`, `payment_date`, `cid`) VALUES
(5, 'Cash', 'Completed', 110, '2017-03-02', 5),
(6, 'EWallet', 'Processing', 330, '2022-03-02', 4),
(7, 'Net Banking', 'Failed', 110, '2017-03-02', 3),
(8, 'Cash', 'Completed', 50, '1995-03-02', 2),
(9, 'Cash', 'Completed', 220, '2019-03-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `production_company`
--

CREATE TABLE `production_company` (
  `pid` int(11) NOT NULL,
  `pname` varchar(25) DEFAULT NULL,
  `headquarters` varchar(25) DEFAULT NULL,
  `owner` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `production_company`
--

INSERT INTO `production_company` (`pid`, `pname`, `headquarters`, `owner`) VALUES
(75, 'Amal Neerad Productions', 'Kochi', 'Amal Neerad'),
(486, 'Yash Raj Films', 'Mumbai', 'Yash Chopra'),
(657, 'Raaj Kamal Films', 'Calicut', 'Kamal Hasan'),
(7857, 'Bhadrakali Pictures', 'Vishakpatnam', 'Pranay Reddy Vanga'),
(385272, 'Eros International', 'Mumbai', 'Kishore Lulla');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seatno` int(11) NOT NULL,
  `seat_type` varchar(20) DEFAULT NULL,
  `availability` varchar(20) DEFAULT NULL,
  `theatre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seatno`, `seat_type`, `availability`, `theatre_id`) VALUES
(1, 'Recliner', 'available', 2354),
(2, 'Recliner', 'available', 654),
(2, 'Recliner', 'available', 8657),
(3, 'Recliner', 'available', 8675),
(5, 'Regular', 'booked', 875);

-- --------------------------------------------------------

--
-- Table structure for table `theatre`
--

CREATE TABLE `theatre` (
  `theatre_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theatre`
--

INSERT INTO `theatre` (`theatre_id`, `name`, `location`) VALUES
(654, 'Crown', 'Thrissur'),
(875, 'PVR', 'Calicut'),
(2354, 'PVR', 'Kochi'),
(8657, 'PVR', 'Trivandrum'),
(8675, 'IMAX', 'Kochi');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `theatre_id` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `date`, `time`, `theatre_id`, `cid`, `movie_id`) VALUES
(1, '2017-02-01', '12:00:00', 2354, 1, 23),
(2, '1995-02-01', '21:00:00', 875, 2, 523),
(3, '2019-02-01', '16:00:00', 654, 3, 346),
(4, '2022-02-01', '14:30:00', 8675, 4, 3645),
(5, '2017-08-06', '12:00:00', 8657, 5, 634);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actor_id`);

--
-- Indexes for table `actor_phno`
--
ALTER TABLE `actor_phno`
  ADD PRIMARY KEY (`phno`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indexes for table `acts_in`
--
ALTER TABLE `acts_in`
  ADD PRIMARY KEY (`actor_id`,`movie_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `customer_phno`
--
ALTER TABLE `customer_phno`
  ADD PRIMARY KEY (`phno`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `directed_by`
--
ALTER TABLE `directed_by`
  ADD PRIMARY KEY (`did`,`movie_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `director_phno`
--
ALTER TABLE `director_phno`
  ADD PRIMARY KEY (`phno`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`movie_id`,`genre`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `theatre_id` (`theatre_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`refid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `production_company`
--
ALTER TABLE `production_company`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seatno`,`theatre_id`),
  ADD KEY `theatre_id` (`theatre_id`);

--
-- Indexes for table `theatre`
--
ALTER TABLE `theatre`
  ADD PRIMARY KEY (`theatre_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `theatre_id` (`theatre_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actor_phno`
--
ALTER TABLE `actor_phno`
  ADD CONSTRAINT `actor_phno_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`);

--
-- Constraints for table `acts_in`
--
ALTER TABLE `acts_in`
  ADD CONSTRAINT `acts_in_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `acts_in_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  ADD CONSTRAINT `acts_in_ibfk_3` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`);

--
-- Constraints for table `customer_phno`
--
ALTER TABLE `customer_phno`
  ADD CONSTRAINT `customer_phno_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`);

--
-- Constraints for table `directed_by`
--
ALTER TABLE `directed_by`
  ADD CONSTRAINT `directed_by_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `directed_by_ibfk_2` FOREIGN KEY (`did`) REFERENCES `directors` (`did`);

--
-- Constraints for table `director_phno`
--
ALTER TABLE `director_phno`
  ADD CONSTRAINT `director_phno_ibfk_1` FOREIGN KEY (`did`) REFERENCES `directors` (`did`);

--
-- Constraints for table `genre`
--
ALTER TABLE `genre`
  ADD CONSTRAINT `genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`theatre_id`) REFERENCES `theatre` (`theatre_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`theatre_id`) REFERENCES `theatre` (`theatre_id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `tickets_ibfk_3` FOREIGN KEY (`theatre_id`) REFERENCES `theatre` (`theatre_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
