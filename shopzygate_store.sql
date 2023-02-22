-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2021 at 06:53 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopzygate_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_city` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_city`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Kaushan Jayasinghe', 'kaushanjayasinghe.kj@gmail.com', '99Tksjea*886', '', 'Matara', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `color` text NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(2, 'Women', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(3, 'Kids', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(4, 'Babys', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(5, 'Others', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_pass_again` varchar(255) NOT NULL,
  `customer_city` text NOT NULL,
  `customer_province` text NOT NULL,
  `customer_contact` int(10) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_postal` int(10) NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_pass_again`, `customer_city`, `customer_province`, `customer_contact`, `customer_address`, `customer_postal`, `customer_image`, `customer_ip`) VALUES
(3, 'Kaushan Jayasinghe', 'kaushanjayasinghe.kj@gmail.com', '123456', '123456', 'Weligama', 'Southren', 778788749, 'Rantharu, Kotawila Road, Kamburugamuwa.', 81750, 'IMG-20210323-WA0002.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` double NOT NULL,
  `inovice_no` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `color` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `inovice_no`, `qty`, `size`, `color`, `order_date`, `order_status`) VALUES
(3, 1, 790, '1161588264', 1, 'Small', 'Gold', '2021-06-22', 'Paid'),
(5, 1, 790, '110098508', 1, 'Standard', 'Black', '2021-07-10', 'Paid'),
(8, 1, 2581.98, '402974295', 2, 'Small', 'Yellow', '2021-08-04', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_colors` text NOT NULL,
  `product_sizes` text NOT NULL,
  `product_price` double NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_colors`, `product_sizes`, `product_price`, `product_keywords`, `product_desc`) VALUES
(13, 6, 1, '2021-08-04 08:10:42', 'Boys-Puffer-Coat', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 'Red, Blue', '', 1260.89, 'Jackets Mens Fashion ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?</p>'),
(14, 6, 2, '2021-08-04 08:11:08', 'G-polos-tshirt-', 'g-polos-tshirt-1.jpg', 'g-polos-tshirt-2.jpg', 'polos-tshirt-1.jpg', 'Black, Blue, Red', '', 970.99, 'T shirts Women Fashion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?</p>'),
(15, 6, 1, '2021-08-04 07:46:51', 'Grey Man T-shirt', 'grey-man-3.jpg', 'grey-man-1.jpg', 'grey-man-2.jpg', '', '', 1200.99, 'T-shirts Mens Fashion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?</p>'),
(16, 4, 2, '2021-08-04 07:47:13', 'High Heels Women ', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-3.jpg', 'High Heels Women Pantofel Brukat-1.jpg', '', '', 1699.7, 'High-heels Womens Fashion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?</p>'),
(17, 4, 1, '2021-08-04 07:47:38', 'Man-Adidas-Suarez', 'Man-Adidas-Suarez-Slop-On-1.jpg', 'Man-Adidas-Suarez-Slop-On-2.jpg', 'Man-Adidas-Suarez-Slop-On-3.jpg', '', '', 2149.99, 'Shoes Sports Mens', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?</p>'),
(18, 6, 1, '2021-08-04 07:50:37', 'Geox-Winter-jacket', 'Man-Geox-Winter-jacket-1.jpg', 'Man-Geox-Winter-jacket-2.jpg', 'Man-Geox-Winter-jacket-3.jpg', '', '', 3290.49, 'Mens Coat Fashion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?</p>'),
(19, 6, 1, '2021-08-04 07:48:21', 'Man-Polo-Tshirt', 'Man-Polo-1.jpg', 'Man-Polo-2.jpg', 'Man-Polo-3.jpg', '', '', 690.99, 'T-shirts Mens Fashion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?</p>'),
(20, 7, 1, '2021-08-04 07:48:34', 'Mont-Blanc-Belt', 'Mont-Blanc-Belt-man-2.jpg', 'Mont-Blanc-Belt-man-1.jpg', 'Mont-Blanc-Belt-man-3.jpg', '', '', 799.99, 'Belt Mens Fashion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?</p>'),
(21, 6, 2, '2021-08-04 07:48:51', 'Red-Winter-jacket', 'Red-Winter-jacket-2.jpg', 'Red-Winter-jacket-1.jpg', 'Red-Winter-jacket-3.jpg', '', '', 2360.87, 'Jackets Womens Fashion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, quos minima sapiente, cum placeat minus ad corporis odit quas illum illo asperiores earum atque culpa ullam nostrum, itaque quod explicabo.</p>'),
(22, 8, 2, '2021-08-04 07:49:04', 'women-diamond-heart', 'women-diamond-heart-ring-2.jpg', 'women-diamond-heart-ring-1.jpg', 'women-diamond-heart-ring-3.jpg', '', '', 690.99, 'Rings Womens Fashion', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, quos minima sapiente, cum placeat minus ad corporis odit quas illum illo asperiores earum atque culpa ullam nostrum, itaque quod explicabo.</p>'),
(23, 6, 2, '2021-08-04 07:49:27', 'waxed-cotton-coat', 'waxed-cotton-coat-woman-2.jpg', 'waxed-cotton-coat-woman-1.jpg', 'waxed-cotton-coat-woman-3.jpg', '', '', 1290.99, 'Womens Fashion T-shirt', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt, saepe dolore. Ab fuga consequatur itaque nam quos facere id reiciendis. Iste veritatis non a reiciendis eligendi doloremque, autem necessitatibus sed!</p>'),
(25, 1, 1, '2021-08-04 07:49:41', 'Quartz Silver Watch', '4.jpg', '5.jpg', '6.jpg', 'Silver, Gold', 'Small, Medium', 790, 'Watch Mens Fashion', '<p>Watch Mens Fashion</p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Watches', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(2, 'Caps', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(3, 'Sunglasses', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(4, 'Shoes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(5, 'Perfumes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi aliquam totam magni, veniam eius distinctio, nobis nulla unde voluptate accusantium suscipit officia labore natus atque tenetur ipsa soluta in consectetur.'),
(6, 'T-Shirts', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?'),
(7, 'Belts', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia quaerat aperiam excepturi dolore odio ut, quis hic ab officia fugiat, veniam cupiditate dicta, molestiae tempora earum repellat unde dolorum sequi?'),
(8, 'Rings', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia, quos minima sapiente, cum placeat minus ad corporis odit quas illum illo asperiores earum atque culpa ullam nostrum, itaque quod explicabo.');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slider1.jpg'),
(2, 'Slide number 2', 'slider2.jpg'),
(3, 'Slide number 3', 'slider3.jpg'),
(4, 'Slide Number 4', 'slider4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wish_list`
--

CREATE TABLE `wish_list` (
  `p_id` int(10) NOT NULL,
  `ip_add` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `color` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
