-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 09:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catstatus` tinyint(255) NOT NULL,
  `cat_des` varchar(255) NOT NULL,
  `cat_date` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `catname`, `catstatus`, `cat_des`, `cat_date`) VALUES
(3, 'iphone', 1, '', 2147483647),
(5, 'mobile', 1, 'good mobile', 2147483647),
(6, 'mobile', 1, 'good mobile', 2147483647),
(7, 'mobile', 1, 'good mobile', 2147483647),
(9, 'dsef', 2, 'sfsfs', 2147483647),
(10, 'fruits', 1, 'any fruit', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(10) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `pcategory` int(255) NOT NULL,
  `pweight` int(255) NOT NULL,
  `pdate` datetime NOT NULL,
  `pstatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pname`, `pprice`, `pimage`, `pcategory`, `pweight`, `pdate`, `pstatus`) VALUES
(16, 'iphone', '13456', 'Glass_of_Milk_(33657535532).jpg', 3, 22, '2023-12-21 20:00:54', 2),
(17, 'iphone', '13456', 'Glass_of_Milk_(33657535532).jpg', 3, 22, '2023-12-21 20:00:54', 2),
(18, 'iphone 7 plus', '120000000', 'Glass_of_Milk_(33657535532).jpg', 3, 22, '2023-12-21 20:20:29', 2),
(19, 'iphone 7 plus', '120000000', 'Glass_of_Milk_(33657535532).jpg', 3, 22, '2023-12-21 20:20:29', 2),
(20, 'samsung', '120000', 'Glass_of_Milk_(33657535532).jpg', 3, 22, '2023-12-21 20:21:01', 1),
(21, 'samsung', '120000', 'Glass_of_Milk_(33657535532).jpg', 3, 22, '2023-12-21 20:21:01', 1),
(22, 'apple', '120000', 'Glass_of_Milk_(33657535532).jpg', 10, 20, '2023-12-21 20:31:40', 1),
(23, 'apple', '120000', 'Glass_of_Milk_(33657535532).jpg', 10, 20, '2023-12-21 20:31:40', 1),
(24, 'iphone 13 pro', '120000000', 'mobil-phone-with-icons-vector-20442757.jpg', 3, 22, '2023-12-30 13:22:33', 2),
(25, 'iphone 13 pro', '120000000', 'mobil-phone-with-icons-vector-20442757.jpg', 3, 22, '2023-12-30 13:22:33', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `pass`) VALUES
(3, 'ilyas', 'arain1', 'ilyas@gmail.com', '$2y$10$yhOe/tH/Du0DogqG3E1HNe8c1wD0GcogOL9GTYqTV9mH8l.F3rQaS'),
(5, 'umar', 'arain', 'umar@gmail.com', '$2y$10$OlntuafWpHth3RSQyu14BOU0laXgOAVmPdYuJaRxhqZyTDJS6NzCC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `cat fk` (`pcategory`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
