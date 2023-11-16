-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 02:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `email` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `mobileNumber` bigint(20) DEFAULT NULL,
  `orderDate` varchar(100) DEFAULT NULL,
  `deliveryDate` varchar(100) DEFAULT NULL,
  `paymentMethod` varchar(100) DEFAULT NULL,
  `transactionId` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`email`, `product_id`, `quantity`, `price`, `total`, `address`, `city`, `state`, `country`, `mobileNumber`, `orderDate`, `deliveryDate`, `paymentMethod`, `transactionId`, `status`) VALUES
('arunkumar12@gmail.com', 2, 1, 25000, 25000, 'Mominpur', 'Kolkata', 'West Bengal', 'India', 4512782356, '2022-07-07 12:05:09', '2022-07-14 12:05:09.000000', 'Online Payment', 'TID-123456', 'Cancel'),
('arunkumar12@gmail.com', 1, 2, 3000, 6000, 'Mominpur', 'Kolkata', 'West Bengal', 'India', 4512782356, '2022-07-07 12:05:09', '2022-07-14 12:05:09.000000', 'Online Payment', 'TID-123456', 'Delivered'),
('arunkumar12@gmail.com', 1, 3, 3000, 9000, 'Mominpur', 'Kolkata', 'West Bengal', 'India', 4512782356, '2022-07-07 18:54:13', '2022-07-14 18:54:13.000000', 'Online Payment', 'TID-123456', 'Delivered'),
('arunkumar12@gmail.com', 2, 3, 25000, 75000, 'Mominpur', 'Kolkata', 'West Bengal', 'India', 4512782356, '2022-07-07 18:54:13', '2022-07-14 18:54:13.000000', 'Online Payment', 'TID-123456', 'Cancel'),
('arunkumar12@gmail.com', 2, 1, 25000, 25000, 'Mominpur', 'Kolkata', 'West Bengal', 'India', 4512782356, '2022-07-07 19:31:16', '2022-07-14 19:31:16.000000', 'Cash on delivery(COD)', 'TID-123456', 'Cancel'),
('arunkumar12@gmail.com', 1, 1, 3000, 3000, 'Mominpur', 'Kolkata', 'West Bengal', 'India', 4512782356, '2022-07-07 19:31:16', '2022-07-14 19:31:16.000000', 'Cash on delivery(COD)', 'TID-123456', 'Delivered'),
('arunkumar12@gmail.com', 1, 1, 3000, 3000, 'mominpur', 'kolkata', 'west bengal', 'india', 7928635896, '2022-07-11 20:18:20', '2022-07-18 20:18:20.000000', 'Cash on delivery(COD)', 'TID-123456', 'Delivered'),
('arunkumar12@gmail.com', 2, 1, 25000, 25000, 'mominpur', 'kolkata', 'west bengal', 'india', 7928635896, '2022-07-11 20:18:20', '2022-07-18 20:18:20.000000', 'Cash on delivery(COD)', 'TID-123456', 'processing'),
('arunkumar12@gmail.com', 1, 1, 3000, 3000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('arunkumar12@gmail.com', 5, 1, 500, 500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('rahulkumar12@gmail.com', 2, 1, 25000, 25000, 'Teacher\'s colony , bidhannagar', 'Durgapur', 'West Bengal', 'India', 4512789856, '2022-08-17 17:39:19', '2022-08-24 17:39:19.000000', 'Cash on delivery(COD)', 'TID-123456', 'Cancel'),
('rahulkumar12@gmail.com', 3, 1, 60000, 60000, 'Teacher\'s colony , bidhannagar', 'Durgapur', 'West Bengal', 'India', 4512789856, '2022-08-17 17:39:19', '2022-08-24 17:39:19.000000', 'Cash on delivery(COD)', 'TID-123456', 'processing');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `body` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `email`, `subject`, `body`) VALUES
(1, 'arunkumar12@gmail.com', 'Related to product', 'The product is good!!....'),
(2, 'rahulkumar12@gmail.com', 'Related to product', 'Not working properly....');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `category` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`, `active`) VALUES
(1, 'Nike', 'Shoes', 3000, 'Yes'),
(2, 'Samsung Note10', 'Mobile', 25000, 'Yes'),
(3, 'Asus TUF gaming laptop', 'Laptop', 60000, 'Yes'),
(4, 'Zebronics Mehanical Blacklight Keyboard', 'Keyboard', 1500, 'Yes'),
(5, 'HRX T-Shirt', 'Clothing', 500, 'Yes'),
(6, 'realme 9 pro', 'Mobile', 20000, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `mobileNumber` bigint(20) DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `email`, `mobileNumber`, `securityQuestion`, `answer`, `password`, `address`, `city`, `state`, `country`) VALUES
('Arun Kumar', 'arunkumar12@gmail.com', 7928635896, 'What is the name of your first pet?', 'kalu', '123', 'mominpur', 'kolkata', 'west bengal', 'india'),
('Rahul Kumar', 'rahulkumar12@gmail.com', 4512789856, 'What is the name of your first pet?', 'tom', '123', 'Teacher\'s colony , bidhannagar', 'Durgapur', 'West Bengal', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
