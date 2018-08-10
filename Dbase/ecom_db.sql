-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2018 at 04:39 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'example 1'),
(2, 'example 2');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `order_id` int(10) NOT NULL,
  `order_amount` float NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(25) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(50) NOT NULL,
  `shippingmethod` varchar(50) NOT NULL,
  `cardholdername` varchar(50) NOT NULL,
  `cardnumber` int(25) NOT NULL,
  `expiratingdate` date NOT NULL,
  `cvv2` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`order_id`, `order_amount`, `order_status`, `order_currency`, `fname`, `lname`, `address1`, `address2`, `city`, `country`, `email`, `username`, `shippingmethod`, `cardholdername`, `cardnumber`, `expiratingdate`, `cvv2`) VALUES
(1, 345, '34535434', 'Completed', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(2, 345, '34535434', 'Completed', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(3, 345, '34535434', 'Completed', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(4, 345, '34535434', 'Completed', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(5, 345, '34535434', 'Completed', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(6, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(7, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(8, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(9, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(10, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(11, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(12, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(13, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(14, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', ''),
(15, 345, 'PH', '34535434', '', '', '', '', '', '', '', '', '', '', 0, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_items`
--

CREATE TABLE `orders_items` (
  `orderid` int(10) NOT NULL,
  `prodouctid` int(10) NOT NULL,
  `quantity` int(5) NOT NULL,
  `productpricce` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_sold` int(5) NOT NULL,
  `product_rating` int(1) NOT NULL,
  `dateadded` date NOT NULL,
  `weight` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`, `product_sold`, `product_rating`, `dateadded`, `weight`) VALUES
(1, 'ANGELINA DRIED SALTED PHILIPPINE HERRING (TUNSOY) 8OZ', 1, 3.49, 3, 'Product of the Philippines. Delectable fish that is always great with sinangag, a traditional Philippine fried rice dish.', 'ANGELINA DRIED SALTED PHILIPPINE HERRING (TUNSOY) 8OZ', 'ANGELINA DRIED SALTED PHILIPPINE HERRING (TUNSOY) 8OZ.jpg', 4, 4, '0000-00-00', '0'),
(2, 'Halapath Dried Shrimp 200g', 1, 7.5, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed quam ligula. Mauris rutrum justo eget magna molestie, vitae lacinia mauris rutrum. Curabitur ac ultricies justo, ac tempor libero. Morbi at eros nisl. Aliquam ultrices erat nulla, faucibus pharetra sapien euismod sit amet. Aliquam porta viverra sem. Maecenas purus velit, aliquam sit amet eros et, gravida interdum ante. Nam egestas ut leo blandit sollicitudin. Maecenas ultrices arcu non consectetur accumsan. Phasellus tellus ipsum, placerat at augue vel, placerat lacinia libero. Fusce nisl leo, scelerisque id magna non, facilisis iaculis nunc. Morbi dictum venenatis convallis. Suspendisse est leo, bibendum sit amet lectus ut, tristique placerat purus. Vivamus fringilla rutrum enim, sed dictum sem luctus ac.', 'h the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishin', 'halapathDriedShrimp_100g.jpg', 3, 2, '0000-00-00', '0'),
(3, 'Angelina Dried Salted Butterflycut Round Scad (Galunggong) 8oz', 1, 2.1, 333, 'Donec varius, ipsum vitae ornare congue, purus eros accumsan arcu, non posuere massa eros eu nisl. Cras rutrum sodales finibus. Vestibulum a ultrices mi, ut rhoncus orci. Donec facilisis gravida gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc sed enim neque. Nullam pellentesque purus sed tincidunt posuere. Suspendisse placerat sit amet augue eu rutrum. Curabitur consectetur convallis lectus nec ullamcorper. In sollicitudin tristique facilisis. Vestibulum dolor neque, suscipit vitae venenatis at, volutpat sit amet dui. Phasellus sed nunc scelerisque, facilisis ipsum vel, dapibus ante. Nam rutrum elit nec arcu imperdiet fringilla. ', 'Donec varius, ipsum vitae ornare congue, purus eros accumsan arcu, non posuere massa eros eu nisl. Cras rutrum sodales finibus. Vestibulum a ultrices mi, ut rhoncus orci. Donec facilisis gravida gravida. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc sed enim neque. Nullam pellentesque purus sed tincidunt posuere. Suspendisse placerat sit amet augue eu rutrum. Curabitur consectetur convallis lectus nec ullamcorper. In sollicitudin tristique facilisis. Vestibulum dolor neque, suscipit vitae venenatis at, volutpat sit amet dui. Phasellus sed nunc scelerisque, facilisis ipsum vel, dapibus ante. Nam rutrum elit nec arcu imperdiet fringilla. ', 'ISLAGALUNNGGONG.jpg', 225, 1, '0000-00-00', '0'),
(4, 'Angelina Dried Salted Butterflycut Round Scad (Galunggong) 8oz', 1, 2, 2, 'Morbi ut metus dignissim ex rhoncus cursus. Quisque nec blandit urna, pulvinar feugiat quam. Nunc nec sagittis sem. Quisque semper suscipit leo vel maximus. Nunc egestas dignissim tellus, placerat fringilla dui elementum ac. Nam neque justo, cursus at condimentum porta, vulputate nec enim. Proin at pulvinar magna. Phasellus auctor sapien libero, vitae tempor libero iaculis sit amet. Vestibulum odio tellus, suscipit vitae ligula eu, vehicula porta libero. Morbi cursus in augue ac efficitur. ', 'Praesent vel arcu ligula. Morbi non erat eleifend, porttitor est ut, bibendum ex. Curabitur imperdiet rutrum odio, aliquet mollis ante. Aliquam feugiat aliquet lacus, at luctus nunc tristique sed. Integer laoreet diam eu fermentum maximus. Cras dapibus venenatis risus, at posuere neque varius at. Phasellus auctor nulla arcu, eget egestas augue fringilla ac. Nullam dolor leo, tempor et lectus quis, semper consequat orci. In quis urna vitae enim laoreet mollis nec nec tortor. Ut ut fermentum nulla, vitae rhoncus nulla. Phasellus quis dolor quis ex facilisis scelerisque. Donec ut imperdiet est. ', 'driedgoldencaesio_8oz.jpg', 3, 3, '0000-00-00', '0'),
(5, 'driedgoldencaesio_8oz', 1, 44, 23, 'orem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed quam ligula. Mauris rutrum justo eget magna molestie, vitae lacinia mauris rutrum. Curabitur ac ultricies justo, ac tempor libero. Morbi at eros nisl. Aliquam ultrices erat nulla, faucibus pharetra sapien euismod sit amet. Aliquam porta viverra sem. Maecena', 'orem ipsum dolor sit amet, consectetur adipiscing elit. Integer sed quam ligula. Mauris rutrum justo eget magna molestie, vitae lacinia mauris rutrum. Curabitur ac ultricies justo, ac tempor libero. Morbi at eros nisl. Aliquam ultrices erat nulla, faucibus pharetra sapien euismod sit amet. Aliquam porta viverra sem. Maecena', 'driedgoldencaesio_8oz.jpg', 3, 5, '0000-00-00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_quantity`) VALUES
(1, 0, 0, 7.5, 2),
(2, 0, 0, 7.5, 2),
(3, 0, 0, 7.5, 2),
(4, 0, 0, 7.5, 3),
(5, 0, 0, 7.5, 1),
(6, 0, 0, 7.5, 3),
(7, 0, 0, 7.5, 1),
(8, 0, 0, 7.5, 3),
(9, 0, 0, 7.5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `product_id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `date_posted` date NOT NULL,
  `review_message` text NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `FName` varchar(60) NOT NULL,
  `MName` varchar(60) NOT NULL,
  `LName` varchar(60) NOT NULL,
  `AccessLvl` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `FName`, `MName`, `LName`, `AccessLvl`) VALUES
(1, 'janjan', 'janjan@gmail.com', '1234', 'janjan', '', 'Malapitan', 1),
(2, 'herminiano', 'herminiano@gmail.com', '123', 'hermiano', '', '', 1),
(3, 'aki', 'aki.nohuart@gmail.com', '', 'jhennaki', 'salvador', 'valencia', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD UNIQUE KEY `product_id` (`product_id`,`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
