-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 11:24 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `username`, `password`) VALUES
(1, 'Lawal rukayat abimbola', 'Rukkylaw', '07062248875'),
(2, 'Abdulwahab lawal', 'teeguy', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(300) NOT NULL,
  `phonenumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `s/n` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email2` varchar(200) NOT NULL,
  `number2` varchar(200) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `category` varchar(300) NOT NULL,
  `item` varchar(1000) NOT NULL,
  `paymentmethod` varchar(100) NOT NULL,
  `deliveryaddress` varchar(200) NOT NULL,
  `deliverynumber` varchar(100) NOT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `orderstatus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `users_id`, `category`, `item`, `paymentmethod`, `deliveryaddress`, `deliverynumber`, `orderdate`, `deliverydate`, `orderstatus`) VALUES
(1, 4, 'Meal delivery', 'Fried rice = $400\r\nchicken = $500', 'Foodstuff delivery', 'union bank chalenge', '+2347062248875', '0000-00-00', '2018-10-18', ''),
(2, 4, 'Meal delivery', '            Beans= $ 300\r\nbread = $ 200', 'Foodstuff delivery', 'union bank chalenge', '+2347062248875', '0000-00-00', '2018-10-18', ''),
(3, 4, 'Meal delivery', '            Beans= $ 300\r\nbread = $ 200', 'Foodstuff delivery', 'union bank chalenge', '+2347062248875', '0000-00-00', '2018-10-18', ''),
(4, 0, 'Package delivery', 'coconut rice =400\r\nbeans=200', 'P.O.S', 'taiwo road', '+23470626554646', '0000-00-00', '2018-10-18', ''),
(5, 0, 'Package delivery', '            ', 'Bank transfer', '', '+2347062248875', '0000-00-00', '0000-00-00', ''),
(6, 0, 'Package delivery', '            ', 'Bank transfer', '', '', '0000-00-00', '0000-00-00', ''),
(7, 0, 'Package delivery', '            ', 'Bank transfer', '', '', '0000-00-00', '0000-00-00', ''),
(8, 0, 'Package delivery', '           yam=300 ', 'Bank transfer', 'unity', '+23408038571048', '0000-00-00', '2018-10-18', ''),
(9, 0, 'Package delivery', '            rice=200', 'Bank transfer', 'taiwo road', '+2348038571048', '0000-00-00', '2018-10-18', ''),
(10, 0, 'Package delivery', '            rice=200', 'Bank transfer', 'taiwo road', '+2348038571048', '0000-00-00', '2018-10-18', ''),
(11, 0, 'Package delivery', '            rice=200', 'Bank transfer', 'taiwo road', '+2348038571048', '0000-00-00', '2018-10-18', ''),
(12, 0, 'Package delivery', '            rice=200', 'Bank transfer', 'taiwo road', '+2348038571048', '0000-00-00', '2018-10-18', ''),
(13, 0, 'Package delivery', '            rice=200', 'Bank transfer', 'taiwo road', '+2348038571048', '0000-00-00', '2018-10-18', ''),
(14, 0, 'Foodstuff delivery', 'Rice=300\r\nbeans=400\r\ngarri=599            ', 'Cash on delivery', 'union bank chalenge', '+2347062248875', '0000-00-00', '2018-10-18', ''),
(15, 4, 'Package delivery', ' meat rice beans   ', 'Bank transfer', 'taiwo road', '+2347062248875', '0000-00-00', '2018-12-18', ''),
(16, 1, 'Foodstuff delivery', 'Rice=400\r\nbeans=400\r\nmeat=200', 'P.O.S', 'unity road', '+23408038571048', '0000-00-00', '2018-10-23', ''),
(17, 2, 'Package delivery', 'meat=1000', 'Bank transfer', 'taiwo road', '+2347062248875', '0000-00-00', '2018-12-23', ''),
(18, 2, 'Package delivery', 'rice=300', 'Bank transfer', 'taiwo road', '+2347062248875', '2018-10-25', '2018-11-25', ''),
(19, 4, 'Foodstuff delivery', '            ufituutdyhgdbfdgcb', 'P.O.S', '43roqad', '2340762248875', '2021-03-18', '2021-03-18', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'administrator', 'content');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `sex` text NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `transby` text NOT NULL,
  `transtri` text NOT NULL,
  `transmoto` text NOT NULL,
  `experience` text NOT NULL,
  `langeng` text NOT NULL,
  `langhau` text NOT NULL,
  `langyor` text NOT NULL,
  `langigbo` text NOT NULL,
  `langothers` text NOT NULL,
  `disability` text NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `fullname`, `email`, `sex`, `phonenumber`, `dob`, `transby`, `transtri`, `transmoto`, `experience`, `langeng`, `langhau`, `langyor`, `langigbo`, `langothers`, `disability`, `password`) VALUES
(2, 'Rukayat Abimbola Lawal', 'billy@gmail.com', '', '+2347030155814', '2018-10-15', 'on', '', '', 'no', 'on', 'on', 'on', '', '', 'nil', '1111111111'),
(5, 'coker oluwabunmi ololade ', 'ayuba@gmail.com', 'male', '+23407062248875', '2018-10-16', 'transby', '', 'transmoto', 'no', 'on', 'on', '', '', '', '', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `homeaddress` varchar(200) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `homeaddress`, `phonenumber`, `dob`, `password`, `image`) VALUES
(1, 'Rukayat Abimbola Lawal', 'Bimbola1995@gmail.com', 'okoerin', '', '2018-10-23', '11111', '3D cup-100.jpg'),
(2, 'coker oluwabunmi ololade ', 'ayuba@gmail.com', 'taiwo', '+2347078787878', '2018-10-23', '12345', '536836_159615804235561_1355515795_n.jpg'),
(3, 'UYFYGYGYFD', 'BIMBOLA@GMAIL.COM', 'GFGFGFGFG', '888766666', '2019-01-23', '11111', ''),
(4, 'mercy john', 'whereamgoing@gmail.com', '68 guild street', '234656565656', '2017-06-16', '01010101', '795ae6dbee59cc93e6498760824c0b93.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `gender` text NOT NULL,
  `staffid` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workers`
--

INSERT INTO `workers` (`id`, `fullname`, `gender`, `staffid`, `phonenumber`) VALUES
(1, 'jose joel', 'female', '12sss3', '+2347098989898');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`s/n`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `s/n` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
