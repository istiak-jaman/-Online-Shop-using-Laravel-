-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2020 at 09:27 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelonlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_07_10_141519_create_tbl_admin_table', 1),
(2, '2020_07_11_145643_create_tbl_category_table', 2),
(3, '2020_07_13_122226_create_tbl_manufacture_table', 3),
(4, '2020_07_14_162735_create_tbl_products_table', 4),
(5, '2020_07_15_102818_create_tbl_slider_table', 5),
(6, '2020_07_16_184132_create_tbl_customers_table', 6),
(7, '2020_07_17_080653_create_tbl_shipping_table', 7),
(8, '2020_07_18_040624_create_tbl_payment_table', 8),
(9, '2020_07_18_040805_create_tbl_order_table', 8),
(10, '2020_07_18_040903_create_tbl_order_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', NULL, NULL),
(2, 'anik.cse3.bu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Istiak Jaman', '01757222834', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'this is category of men', 1, NULL, NULL),
(2, 'Women', 'This is Category of Women', 1, NULL, NULL),
(3, 'Summer', 'This is summer category', 1, NULL, NULL),
(4, 'Electronics', 'This is electronics category', 1, NULL, NULL),
(5, 'Kids', 'This is Kids Category', 1, NULL, NULL),
(6, 'Furnitures', 'this is furnitures category', 1, NULL, NULL),
(7, 'Home Accessories', 'this is home accessories', 1, NULL, NULL),
(8, 'Sportswear', 'cdshbchksbkc', 1, NULL, NULL),
(9, 'Fashion', 'this is fashion&nbsp;', 1, NULL, NULL),
(11, 'Grocery', 'this is grocery category', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `password`, `mobile_number`, `created_at`, `updated_at`) VALUES
(1, 'Istiak Jaman', 'anik.cse3.bu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01757222834', NULL, NULL),
(2, 'Sajib Paul', 'sajib.cse3.bu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01781406132', NULL, NULL),
(3, 'Sajib Paul', 'sajib.cse3.bu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01781406132', NULL, NULL),
(4, 'Nazia Hasnain', 'nazia.hasnain@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01757222834', NULL, NULL),
(5, 'sajal debnath', 'sajal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01781406132', NULL, NULL),
(6, 'sajal debnath', 'sajal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01781406132', NULL, NULL),
(7, 'sajal debnath', 'sajal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01781406132', NULL, NULL),
(8, 'sajal debnath', 'sajal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01781406132', NULL, NULL),
(9, 'sajal debnath', 'sajal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01781406132', NULL, NULL),
(10, 'sajal debnath', 'sajal@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01781406132', NULL, NULL),
(11, 'Istiak Jaman', 'anik.cse3.bu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01757222834', NULL, NULL),
(12, 'imam@gail.com', 'imam.cse3.bu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '09277847383', NULL, NULL),
(13, 'Bipul Mandal', 'bipul.cse3.bu@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '093678373', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Gucci', 'This is Gucci brand', 1, NULL, NULL),
(2, 'ACNE', 'this is acne brand', 1, NULL, NULL),
(3, 'Rich Man', 'this is rich man brand', 1, NULL, NULL),
(4, 'Samsung', 'this is samsung', 1, NULL, NULL),
(5, 'Zara', 'this is Zara brand', 1, NULL, NULL),
(6, 'Otobi', 'this is otobi', 1, NULL, NULL),
(7, 'Apple', 'apple brand', 1, NULL, NULL),
(8, 'Adidas', 'this is adidas sports brand', 1, NULL, NULL),
(9, 'Asus', 'this is laptop brand', 1, NULL, NULL),
(12, 'IKEA', 'this is ikea brand', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 3, '8,650.00', 'pending', '2020-07-18 06:37:54', NULL),
(2, 1, 5, 4, '8,650.00', 'pending', '2020-07-18 06:39:41', NULL),
(3, 1, 6, 5, '1,300.00', 'pending', '2020-07-18 06:43:15', NULL),
(4, 1, 7, 6, '41,490.00', 'pending', '2020-07-18 06:55:13', NULL),
(5, 12, 8, 7, '108,500.00', 'pending', '2020-07-19 04:36:14', NULL),
(6, 13, 9, 8, '10,980.00', 'pending', '2020-07-19 05:22:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 19, 'Jacket Men', '3200', '2', NULL, NULL),
(2, 2, 2, 'Men Hoodey', '2250', '1', NULL, NULL),
(3, 3, 9, 'Summer T-shirt', '650', '2', NULL, NULL),
(4, 4, 20, 'Jacket Fashion', '2990', '1', NULL, NULL),
(5, 4, 14, 'Samsung A71', '38500', '1', NULL, NULL),
(6, 5, 4, 'Asus Ryzen 2', '70000', '1', NULL, NULL),
(7, 5, 14, 'Samsung A71', '38500', '1', NULL, NULL),
(8, 6, 21, 'Fashonable Hodey', '1490', '2', NULL, NULL),
(9, 6, 6, 'Adidas Shoes', '8000', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'handcash', 'pending', '2020-07-18 06:33:13', NULL),
(2, 'handcash', 'pending', '2020-07-18 06:35:03', NULL),
(3, 'handcash', 'pending', '2020-07-18 06:37:54', NULL),
(4, 'handcash', 'pending', '2020-07-18 06:39:41', NULL),
(5, 'paypal', 'pending', '2020-07-18 06:43:15', NULL),
(6, 'bkash', 'pending', '2020-07-18 06:55:13', NULL),
(7, 'handcash', 'pending', '2020-07-19 04:36:14', NULL),
(8, 'handcash', 'pending', '2020-07-19 05:22:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 11 Pro', 4, 7, '<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">The phone comes with a 5.80-inch touchscreen display with a resolution of 1125x2436 pixels at a pixel density of 458 pixels per inch (ppi)</span>', '<span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">The phone comes with a 5.80-inch touchscreen display with a resolution of 1125x2436 pixels at a pixel density of 458 pixels per inch (ppi).&nbsp;</span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">iPhone 11 Pro</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;is powered by a hexa-core Apple A13 Bionic processor. It comes with 4GB of RAM. The&nbsp;</span><b style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">iPhone 11 Pro</b><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">&nbsp;runs iOS 13 and is powered by a 3046mAh non-removable battery.</span>', 99000.00, 'uploaded_image/nJyqpP6NVR.png', '5.8\"', 'Golden, Black, Matte', 1, NULL, NULL),
(2, 'Men Hoodey', 1, 5, 'this is men hoodey...<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 2250.00, 'uploaded_image/J4DiiYfSvs.jpg', 'L, X, XL, XXL', 'Baby Pink, Black, Ash', 1, NULL, NULL),
(3, 'Adidas Shoes', 1, 8, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 3400.00, 'uploaded_image/5tqlWR9ohl.jpg', '7,8,9,10', 'Black', 1, NULL, NULL),
(4, 'Asus Ryzen 2', 4, 9, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 70000.00, 'uploaded_image/DEQD853XfY.jpg', '14\"', 'Golden, Black, Matte', 1, NULL, NULL),
(5, 'Party Bag', 2, 1, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 6500.00, 'uploaded_image/wK90hbtzV1.jpg', 'L, XL', 'Baby Pink, Black, Ash', 1, NULL, NULL),
(6, 'Adidas Shoes', 2, 8, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 8000.00, 'uploaded_image/ahQaqC63QB.jpg', '6,7,8,9', 'Baby Pink, Black, Ash', 1, NULL, NULL),
(7, 'Furniture', 6, 12, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 199990.00, 'uploaded_image/SWnanq7x8f.jpg', 'Smart', 'White, Ash', 1, NULL, NULL),
(8, 'Apple Macbook', 4, 7, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 105000.00, 'uploaded_image/BeO7TmvRfi.jpg', '14\"', 'White, Ash', 1, NULL, NULL),
(9, 'Summer T-shirt', 3, 5, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 650.00, 'uploaded_image/89qt87d9V9.jpg', 'M,L,XL,XXL', 'Baby Pink, Black, Ash', 1, NULL, NULL),
(10, 'Summer T-shirt', 2, 5, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 950.00, 'uploaded_image/h3iKtFC5KX.jpg', 'S,M,L,XL', 'Baby Pink, Black, Ash', 1, NULL, NULL),
(11, 'Furniture', 6, 6, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 78000.00, 'uploaded_image/LFZWdlmEiN.jpg', 'Queen Bed', 'White, Ash', 1, NULL, NULL),
(12, 'Hoodey Men', 1, 1, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 2450.00, 'uploaded_image/U2xP9Ugrya.jpg', 'L, X, XL, XXL', 'Baby Pink, Black, Ash', 1, NULL, NULL),
(13, 'Hoodey Women', 2, 1, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 2450.00, 'uploaded_image/D4bNzYznnX.png', 'M,L,XL,XXL', 'Baby Pink, Black, Ash', 1, NULL, NULL),
(14, 'Samsung A71', 4, 4, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 38500.00, 'uploaded_image/XLcKJ6avV2.jpg', '6.75\"', 'Baby Pink, Black, Ash', 1, NULL, NULL),
(15, 'Jacket Men', 1, 1, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 3450.00, 'uploaded_image/oN8CsDKOkN.jpg', 'L, X, XL, XXL', 'Yellow, Red, Black', 1, NULL, NULL),
(16, 'Summer T-shirt', 2, 5, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 450.00, 'uploaded_image/wyYzLRdImH.jpg', 'L, X, XL, XXL', 'Black', 1, NULL, NULL),
(17, 'Sweat T-shirt', 9, 3, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 2890.00, 'uploaded_image/1qkGkWTYXC.jpg', 'L, X, XL, XXL', 'Black', 1, NULL, NULL),
(18, 'Furniture', 6, 12, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 70000.00, 'uploaded_image/xuTk76tR6L.jpg', 'Smart', 'White, Ash', 1, NULL, NULL),
(19, 'Jacket Men', 1, 3, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 3200.00, 'uploaded_image/ouxQ8wRiZp.webp', 'L, X, XL, XXL', 'Golden, Black, Matte', 1, NULL, NULL),
(20, 'Jacket Fashion', 9, 1, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 2990.00, 'uploaded_image/DNvfWSbPcI.png', 'L, X, XL, XXL', 'Yellow, Red, Black', 1, NULL, NULL),
(21, 'Fashonable Hodey', 9, 5, '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', '<span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span><span style=\"font-size: 13.3333px;\">this is men hoodey...</span>', 1490.00, 'uploaded_image/tch9TMJqCW.webp', 'L, X, XL, XXL', 'Yellow, Red, Black', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobileNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_email`, `shipping_firstName`, `shipping_lastName`, `shipping_address`, `shipping_city`, `shipping_zipcode`, `shipping_mobileNo`, `created_at`, `updated_at`) VALUES
(1, 'sajib@gmail.com', 'Sajib', 'Paul', 'Barisal', 'Barisal', '8200', '01781406132', NULL, NULL),
(2, 'sajib@gmail.com', 'Sajib', 'Paul', 'Barisal', 'Barisal', '8200', '01781406132', NULL, NULL),
(3, 'sajib@gmail.com', 'Sajib', 'Paul', 'Barisal', 'Barisal', '8200', '01781406132', NULL, NULL),
(4, 'sa@gdsm.od', 'sc', 'cscsd', 'rgrg', 'Barisal', '8200', '456546545', NULL, NULL),
(5, 'sa@gdsm.od', 'Sajib', 'Paul', 'Barisal', 'Barisal', '8200', '01781406132', NULL, NULL),
(6, 'has@gmail.com', 'nazia', 'hasnain', 'Barisal', 'Ujirpur', '8200', '01757222834', NULL, NULL),
(7, 'sajib@gmail.com', 'Sajib', 'Paul', 'Barisal', 'Ujirpur', '8200', '01781406132', NULL, NULL),
(8, 'imam@gmail.com', 'Imam', 'Hossain', 'rgrg', 'baufal', '8221', '0937392729', NULL, NULL),
(9, 'bipul@gmail.com', 'Bipul', 'Mandal', 'Barisal', 'Barisal', '8200', '01781406132', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Cyclone Offer', 'uploaded_image/slider_image/QIVbMY0lIV.jpg', 1, NULL, NULL),
(2, 'Tornedo Offer', 'uploaded_image/slider_image/mf5HdrRPbi.jpg', 1, NULL, NULL),
(3, 'Corona Offer', 'uploaded_image/slider_image/5Xorpnrtnk.jpg', 1, NULL, NULL),
(5, 'Christmas Collection', 'uploaded_image/slider_image/rgBUkQ1oXL.jpg', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
