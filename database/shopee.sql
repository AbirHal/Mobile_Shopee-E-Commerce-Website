-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_site`
--

-- --------------------------------------------------------

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_name`, `item_price`, `item_image`) VALUES
(1, 'collaction', 150.00, './images/3.jpg'), -- NOW()

(1, 'collaction', 150.00, './images/pic9.jpg'),
(1, 'to do list', 50.00, './images/pic13.jpg'),
(1, 'planner', 100.00, './images/pic3.jpg'),
(1, 'sticky note', 50.00, './images/pic5.jpg'),
(1, 'sticky note', 50.00, './images/pic6.jpg'),
(1, 'planner', 100.00,  './images/pic14.jpg'),
(1, 'sticker', 50.00, './images/4298865.jpg'),
(1, 'to do list', 50.00, './images/pic11.jpg'),
(1,'to do list', 50.00, './images/pic10.jpg'),
(1, 'sticky note', 50.00, './images/pic2.jpg'),
(1, 'sticky note', 50.00, './images/pic4.jpg'),
(1, 'sticky note', 50.00, './images/pic7.jpg'),
(1, 'planner', 100.00, './images/pic12.jpg'),
(1,  'sticker', 50.00, './images/4318459.jpg'),
(13,  'to do list', 50.00, './images/pic8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'abir', 'haloudji', '2021-09-25 13:07:17'),
(2, 'ramzi', 'halouadji', '2021-09-25 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--


--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`cart_id`);

--

ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`item_id`);
-- AUTO_INCREMENT for dumped tables
--

--
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
