-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 12:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connectedlife`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `tele_phone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `gender`, `email`, `tele_phone`) VALUES
(1, 'Lahiru Rathnayaka', 'Male', 'lahiru@gmail.com', 754722402);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(5) NOT NULL,
  `size` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `size`) VALUES
(1, 20),
(2, 50),
(3, 25),
(4, 25),
(5, 30),
(6, 40),
(7, 25),
(8, 35),
(9, 15),
(10, 30);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `cart_item_id` int(5) NOT NULL,
  `cart_item_name` varchar(20) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `product_price` int(10) DEFAULT NULL,
  `total_product_price` int(10) DEFAULT NULL,
  `customer_id` int(5) NOT NULL,
  `cart_id` int(5) NOT NULL,
  `distributer_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`cart_item_id`, `cart_item_name`, `quantity`, `product_price`, `total_product_price`, `customer_id`, `cart_id`, `distributer_id`) VALUES
(1, 'Apple iphone12 mini', 1, 188990, 188990, 1, 1, 3),
(2, 'Macbook Pro13 16GB/2', 2, 412000, 824000, 2, 2, 2),
(3, 'Macbook Air 13 inch ', 1, 375000, 375000, 3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(5) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `product_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `product_id`) VALUES
(10001, 'Laptop', 'HP 15S-FQ5020NIA', 1),
(10002, 'Laptop', 'HP VICTUS 15-FA0028NE', 2),
(10003, 'Laptop', 'HP VICTUS 15-FA0004NE', 3),
(10004, 'Laptop', 'HP 15-DW1495NIA', 4),
(10005, 'Laptop', 'HP 15-DW4000NIA', 5),
(10006, 'Laptop', 'HP 15S-FQ5004NIA', 6),
(10007, 'Laptop', 'ASUS TUF F15FX506HC', 7),
(10008, 'Laptop', 'ASUS DASH F15 FX517ZE', 8),
(10009, 'Laptop', 'ASUS DASH F15 FX517ZCASUS', 9),
(10010, 'Laptop', 'ASUS VivoBook X1500EP', 10),
(10011, 'Laptop', 'ASUS ExpertBook B2402CBA', 11),
(10012, 'Laptop', 'ASUS F17 FX706HF', 12),
(10013, 'Laptop', 'Dell XPS 9315 Touch', 13),
(10014, 'Laptop', 'Dell XPS 9315 Touch', 14),
(10015, 'Laptop', 'Dell Latitude 7430', 15),
(10016, 'Laptop', 'Dell XPS 9310 – i5', 16),
(10017, 'Laptop', 'Dell Inspiron 5420 – i5', 17),
(10018, 'Laptop', 'Dell Inspiron 3525 (R5)', 18),
(10019, 'Laptop', 'Lenovo IdeaPad 5 15ABA7', 19),
(10020, 'Laptop', 'Lenovo IdeaPad 5 Pro – 14', 20),
(10021, 'Laptop', 'Lenovo Ideapad 5 Pro–16AC', 21),
(10022, 'Laptop', 'Lenovo IdeaPad 3–15ACH6 (', 22),
(10023, 'Laptop', 'Lenovo IdeaPad 5 Pro – 14', 23),
(10024, 'Laptop', 'Lenovo IdeaPad 5 Pro 16AR', 24),
(10025, 'Laptop', 'Macbook Air 13 inch 2022', 25),
(10026, 'Laptop', 'Macbook Pro13 16GB/256GB(', 26),
(10027, 'Laptop', 'MacBook Pro intel i7 16 i', 27),
(10028, 'Laptop', 'Macbook Pro 16 inch 2023', 28),
(10029, 'Laptop', 'Macbook M2 Chip 13inch 8G', 29),
(10030, 'Laptop', 'MacBook M1 Chip 13.3inch ', 30),
(20001, 'Smart phone', 'Apple iphone 14 pro max', 31),
(20002, 'Smart phone', 'Apple iphone XS max', 32),
(20003, 'Smart phone', 'Apple iPhone 12 mini', 33),
(20004, 'Smart phone', 'Apple iPhone XR', 34),
(20005, 'Smart phone', 'Apple iphone 11', 35),
(20006, 'Smart phone', 'Apple iphone 13', 36),
(20007, 'Smart phone', 'Huawei nova Y70', 37),
(20008, 'Smart phone', 'Huawei nova Y61', 38),
(20009, 'Smart phone', 'Huawei nova 9 SE', 39),
(20011, 'Smart phone', 'Huawei Y9s', 41),
(20012, 'Smart phone', 'Huawei P60 pro', 42),
(20013, 'Smart phone', 'Samsung Galaxy S23 Ultra', 43),
(20014, 'Smart phone', 'Samsung Galaxy S22 5G', 44),
(20015, 'Smart phone', 'Samsung Galaxy S22 Ultra ', 45),
(20016, 'Smart phone', 'Samsung Galaxy S21 FE 5G', 46),
(20017, 'Smart phone', 'Samsung Galaxy M33 5G', 47),
(20018, 'Smart phone', 'Samsung Galaxy M32', 48),
(20019, 'Smart phone', 'Xiaomi Redmi Note 12 4G', 49),
(20020, 'Smart phone', 'Xiaomi Redmi Note 11S', 50),
(20021, 'Smart phone', 'Xiaomi Redmi Note 12 Pro+', 51),
(20022, 'Smart phone', 'Xiaomi Redmi Note 11R', 52),
(20023, 'Smart phone', 'Xiaomi Redmi Note 11 Pro+', 53),
(20024, 'Smart phone', 'Xiaomi Redmi Note 11 Chin', 54),
(20025, 'Smart phone', 'Nokia C21 Plus', 55),
(20026, 'Smart phone', 'Nokia C21', 56),
(20027, 'Smart phone', 'Nokia C30', 57),
(20028, 'Smart phone', 'Nokia 1.4', 58),
(20029, 'Smart phone', 'Nokia G10', 59),
(20030, 'Smart phone', 'Nokia G11 Plus', 60);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `tele_phone` int(10) DEFAULT NULL,
  `admin_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`first_name`, `middle_name`, `last_name`, `gender`, `address`, `email`, `username`, `password`, `tele_phone`, `admin_id`, `customer_id`) VALUES
('Lahiru ', 'Udith', 'Rathnayaka', 'Male', 'Galagedara,Kandy.', 'lahiru@gmail.com', 'lahiru', '123a', 754722402, 1, 1),
('Pawani', 'Mahinsa', 'Senawirathna', 'Female', 'Weyangoda,Gampaha.', 'pawani@gmail.com', 'pawani', '098m', 712268845, 1, 2),
('Hasinthika', 'Rashmi', 'Kulathunga', 'Female', 'Dambuluwana,Rathnapura.', 'rashmi@gmail.com', 'rashmi', '786h', 743394652, 1, 3),
('Lasitha ', 'Gayan', 'Rajapaksha', 'Male', 'Kumbalwela,Ella.', 'lasitha@gmail.com', 'lasitha', '456g', 776895235, 1, 4),
('Sakunthala', 'Rathnamali', 'Weerasinghe', 'Female', 'Gonawala, Kelaniya.', 'sakunthala@gmail.com', 'sakunthala', '856s', 789652314, 1, 5),
('Sajith', 'Sanjeewa', NULL, 'Male', 'Mallawapitiya,Kurunegala.', 'sajith@gmail.com', 'sajith', '856f', 714896523, 1, 6),
('Tharushi', 'Sewwandi', 'Jayasinghe', 'Female', 'Poththuwilluwa, Puthtalam', 'tharushi@gmail.com', 'Tharushi', '458t', 758965265, 1, 7),
('Sohan', 'Kavishka', 'Liyanarachchi', 'Male', 'Kahangama,Rathnapura', 'sohan@gmail.com', 'sohan', 'gh4d', 756941325, 1, 8),
('Ashmi', 'Mahinsa', 'Senanayaka', 'Female', 'Bellapitiya, Horana.', 'ashmi@gmail.com', 'Ashmi', 'lo96', 786492654, 1, 9),
('Kavishka', 'Vinoj', NULL, 'Male', 'Pujapitiya, Kandy', 'kavishka@gmail.com', 'kavishka', 'tf0n', 759982136, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `distributer_id` int(5) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `tele_phone` int(10) DEFAULT NULL,
  `admin_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`distributer_id`, `first_name`, `middle_name`, `last_name`, `gender`, `email`, `username`, `password`, `tele_phone`, `admin_id`) VALUES
(1, 'Chamuditha', 'Maheepa', 'Senawirathna', 'Male', 'maheepa@gmail.com', 'maheepa', '87h6', 716598413, 1),
(2, 'Vihanga', 'Lakshitha', 'Attanayaka', 'Male', 'vihanga@gmail.com', 'vihanga', 'kjh9', 756982144, 1),
(3, 'Uthpala', 'Sudesh', 'Bandara', 'Male', 'uthpala@gmail.com', 'uthpala', 'hjk87', 713456987, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(5) NOT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `amount` int(10) DEFAULT NULL,
  `customer_id` int(5) NOT NULL,
  `distributer_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `date`, `type`, `description`, `amount`, `customer_id`, `distributer_id`) VALUES
(1, '2023-05-25', 'online', 'buying the smart phone.', 92450, 2, 3),
(2, '2023-08-30', 'cash', 'buying the 02 laptops', 530000, 3, 2),
(3, '2023-10-19', 'cash', 'buying the smart phone an', 210000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `name` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `customer_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `cart_id` int(5) NOT NULL,
  `seller_id` int(5) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`name`, `description`, `quantity`, `price`, `customer_id`, `product_id`, `cart_id`, `seller_id`, `type`) VALUES
('HP 15S-FQ5020NIA', NULL, 1, 250000, 2, 1, 2, 0, 'Laptop'),
('HP VICTUS 15-FA0028N', NULL, 4, 320000, 10, 2, 2, 0, 'Laptop'),
('HP VICTUS 15-FA0004N', NULL, 3, 285000, 5, 3, 5, 0, 'Laptop'),
('HP 15-DW1495NIA', NULL, 2, 187500, 4, 4, 4, 0, 'Laptop'),
('HP 15-DW4000NIA', 'Selling the laptop', 3, 235000, 8, 5, 1, 3, 'Laptop'),
('HP 15S-FQ5004NIA', NULL, 4, 125000, 5, 6, 5, 0, 'Laptop'),
('ASUS TUF F15FX506HC', NULL, 2, 310000, 1, 7, 1, 0, 'Laptop'),
('ASUS DASH F15 FX517Z', NULL, 5, 370000, 3, 8, 3, 0, 'Laptop'),
('ASUS DASH F15 FX517Z', NULL, 3, 360000, 7, 9, 1, 0, 'Laptop'),
('ASUS VivoBook X1500E', 'Selling the laptop', 3, 195000, 9, 10, 2, 4, 'Laptop'),
('ASUS ExpertBook B240', NULL, 5, 270000, 4, 11, 4, 0, 'Laptop'),
('ASUS F17 FX706HF', NULL, 6, 295000, 7, 12, 5, 0, 'Laptop'),
('Dell XPS 9315 Touch', NULL, 2, 310000, 7, 13, 4, 0, 'Laptop'),
('Dell XPS 9315 Touch', NULL, 4, 589000, 1, 14, 1, 0, 'Laptop'),
('Dell Latitude 7430', 'Selling the laptop', 7, 520000, 10, 15, 3, 1, 'Laptop'),
('Dell XPS 9310 – i5', NULL, 4, 376000, 2, 16, 2, 0, 'Laptop'),
('Dell Inspiron 5420 –', NULL, 6, 335000, 7, 17, 2, 0, 'Laptop'),
('Dell Inspiron 3525 (', NULL, 3, 229500, 3, 18, 3, 0, 'Laptop'),
('Lenovo IdeaPad 5 15A', 'Selling the laptop', 8, 327000, 10, 19, 2, 3, 'Laptop'),
('Lenovo IdeaPad 5 Pro', NULL, 5, 329000, 4, 20, 4, 0, 'Laptop'),
('Lenovo Ideapad 5 Pro', NULL, 4, 339000, 8, 21, 4, 0, 'Laptop'),
('Lenovo IdeaPad 3–15A', NULL, 5, 349000, 1, 22, 1, 0, 'Laptop'),
('Lenovo IdeaPad 5 Pro', 'Selling the laptop', 8, 375000, 4, 23, 4, 1, 'Laptop'),
('Lenovo IdeaPad 5 Pro', NULL, 6, 275000, 10, 24, 2, 0, 'Laptop'),
('Macbook Air 13 inch ', NULL, 5, 375000, 5, 25, 5, 0, 'Laptop'),
('Macbook Pro13 16GB/2', NULL, 6, 412000, 6, 26, 2, 0, 'Laptop'),
('MacBook Pro intel i7', NULL, 7, 582000, 3, 27, 3, 0, 'Laptop'),
('Macbook Pro 16 inch ', 'Selling the laptop', 4, 1253000, 5, 28, 5, 5, 'Laptop'),
('Macbook M2 Chip 13in', NULL, 6, 388000, 4, 29, 4, 0, 'Laptop'),
('MacBook M1 Chip 13.3', NULL, 1, 468000, 2, 30, 2, 0, 'Laptop'),
('Apple iphone 14 pro ', NULL, 3, 384030, 7, 31, 2, 0, 'Smart Phone'),
('Apple iphone XS max', NULL, 3, 147900, 3, 32, 3, 0, 'Smart Phone'),
('Apple iPhone 12 mini', 'Selling Smartphone', 6, 188990, 5, 33, 5, 2, 'Smart Phone'),
('Apple iPhone XR', NULL, 5, 137990, 10, 34, 2, 0, 'Smart Phone'),
('Apple iphone 11', NULL, 4, 169990, 5, 35, 5, 0, 'Smart Phone'),
('Apple iphone 13', NULL, 6, 289000, 6, 36, 1, 0, 'Smart Phone'),
('Huawei nova Y70', NULL, 4, 69990, 3, 37, 3, 0, 'Smart Phone'),
('Huawei nova Y61', 'Selling Smartphone', 8, 53490, 9, 38, 2, 2, 'Smart Phone'),
('Huawei nova 9 SE', NULL, 5, 107990, 3, 39, 3, 0, 'Smart Phone'),
('Huawei Y9', NULL, 6, 36990, 9, 40, 2, 0, 'Smart Phone'),
('Huawei Y9s', NULL, 2, 46990, 8, 41, 2, 0, 'Smart Phone'),
('Huawei P60 pro', NULL, 1, 306000, 1, 42, 1, 0, 'Smart Phone'),
('Samsung Galaxy S23 U', NULL, 5, 439990, 7, 43, 3, 0, 'Smart Phone'),
('Samsung Galaxy S22 5', 'Selling Smartphones', 6, 183990, 9, 44, 1, 1, 'Smart Phone'),
('Samsung Galaxy S22 U', NULL, 2, 264990, 8, 45, 3, 0, 'Smart Phone'),
('Samsung Galaxy S21 F', NULL, 1, 139990, 5, 46, 5, 0, 'Smart Phone'),
('Samsung Galaxy M33 5', NULL, 7, 66490, 3, 47, 3, 0, 'Smart Phone'),
('Samsung Galaxy M32', 'Selling Smartphones', 1, 61490, 2, 48, 2, 5, 'Smart Phone'),
('Xiaomi Redmi Note 12', NULL, 3, 67999, 4, 49, 4, 0, 'Smart Phone'),
('Xiaomi Redmi Note 11', NULL, 4, 60990, 6, 50, 2, 0, 'Smart Phone'),
('Xiaomi Redmi Note 12', NULL, 7, 102990, 3, 51, 3, 0, 'Smart Phone'),
('Xiaomi Redmi Note 11', NULL, 4, 53490, 8, 52, 1, 0, 'Smart Phone'),
('Xiaomi Redmi Note 11', NULL, 1, 92990, 9, 53, 2, 0, 'Smart Phone'),
('Xiaomi Redmi Note 11', NULL, 4, 53490, 6, 54, 1, 0, 'Smart Phone'),
('Nokia C21 Plus', NULL, 4, 52990, 3, 55, 3, 0, 'Smart Phone'),
('Nokia C21', NULL, 2, 44490, 3, 56, 3, 0, 'Smart Phone'),
('Nokia C30', NULL, 3, 29490, 6, 57, 1, 0, 'Smart Phone'),
('Nokia 1.4', 'Selling Smartphones', 4, 47990, 2, 58, 2, 4, 'Smart Phone'),
('Nokia G10', NULL, 5, 52990, 1, 59, 1, 0, 'Smart Phone'),
('Nokia G11 Plus', NULL, 3, 63990, 8, 60, 1, 0, 'Smart Phone');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` int(5) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `tele_phone` int(10) DEFAULT NULL,
  `admin_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `first_name`, `middle_name`, `last_name`, `gender`, `address`, `email`, `username`, `password`, `tele_phone`, `admin_id`) VALUES
(1, 'Sohan ', 'Kavishka', 'Liyanarachchi', 'Male', 'Kahangama,Rathnapura', 'sohan@gmail.com', 'sohan', 'gh4d', 756941325, 1),
(2, 'Ashmi', 'Mahinsa', 'Senanayaka', 'Female', 'Bellapitiya,Horana', 'ashmi@gmail.com', 'Ashmi', 'lo96', 786492654, 1),
(3, 'Kavishka', 'Vinoj', '', 'Male', 'Pujapitiya,Kandy', 'kavishka@gmail.com', 'kavishka', 'tf0n', 759982136, 1),
(4, 'Lasitha', 'Gayan', 'Rajapaksha', 'Male', 'Kumbalwela,Ella.', 'lasitha@gmail.com', 'lasitha', '456g', 776895235, 1),
(5, 'Sajith', 'Sanjeewa', NULL, 'Male', 'Mallawapitiya,Kurunegala.', 'sajith@gmail.com', 'sajith', '856f', 714896523, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`cart_item_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `distributer_id` (`distributer_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`distributer_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `distributer_id` (`distributer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `cart_item_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `cart_item_ibfk_3` FOREIGN KEY (`distributer_id`) REFERENCES `distributor` (`distributer_id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `distributor`
--
ALTER TABLE `distributor`
  ADD CONSTRAINT `distributor_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`distributer_id`) REFERENCES `distributor` (`distributer_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `seller` (`seller_id`);

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
