-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 14, 2016 at 05:27 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportido`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cart_id`, `user_id`, `product_id`, `qty`, `amount`) VALUES
(1, 1, 1, 1, 7, '999.99'),
(2, 1, 1, 2, 3, '423.00'),
(3, 1, 1, 3, 8, '999.99'),
(4, 1, 1, 4, 3, '999.99'),
(5, 1, 1, 5, 7, '999.99'),
(6, 1, 1, 6, 2, '894.00'),
(7, 1, 1, 7, 8, '999.99'),
(8, 1, 1, 61, 2, '999.99'),
(9, 1, 1, 62, 6, '999.99'),
(10, 1, 1, 63, 9, '999.99'),
(11, 1, 1, 64, 2, '364.00'),
(12, 1, 1, 65, 8, '999.99'),
(13, 1, 1, 29, 2, '999.99'),
(14, 1, 1, 30, 7, '826.00'),
(15, 1, 1, 31, 5, '999.99'),
(16, 2, 2, 1, 5, '999.99'),
(17, 2, 2, 2, 5, '705.00'),
(18, 2, 2, 3, 10, '999.99'),
(19, 2, 2, 4, 11, '999.99'),
(20, 2, 2, 5, 8, '999.99'),
(21, 2, 2, 6, 2, '894.00'),
(22, 2, 2, 7, 7, '999.99'),
(23, 2, 2, 61, 11, '999.99'),
(24, 2, 2, 62, 9, '999.99'),
(25, 2, 2, 63, 9, '999.99'),
(26, 2, 2, 64, 8, '999.99'),
(27, 2, 2, 65, 7, '999.99'),
(28, 2, 2, 29, 4, '999.99'),
(29, 2, 2, 30, 2, '236.00'),
(30, 2, 2, 31, 9, '999.99'),
(31, 3, 3, 1, 6, '999.99'),
(32, 3, 3, 2, 6, '846.00'),
(33, 3, 3, 3, 9, '999.99'),
(34, 3, 3, 4, 5, '999.99'),
(35, 3, 3, 5, 11, '999.99'),
(36, 3, 3, 6, 3, '999.99'),
(37, 3, 3, 7, 8, '999.99'),
(38, 3, 3, 61, 7, '999.99'),
(39, 3, 3, 62, 4, '999.99'),
(40, 3, 3, 63, 8, '999.99'),
(41, 3, 3, 64, 10, '999.99'),
(42, 3, 3, 65, 6, '999.99'),
(43, 3, 3, 29, 9, '999.99'),
(44, 3, 3, 30, 10, '999.99'),
(45, 3, 3, 31, 10, '999.99');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(4) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Groceries'),
(2, 'Fruits'),
(3, 'Vegitable');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `category_id`, `price`, `is_active`) VALUES
(1, 'Riceland American Jazmine Rice', 1, '673.00', 1),
(2, 'Caress Velvet Bliss Ultra Silkening Beauty Bar - 6 Ct', 1, '141.00', 1),
(3, 'Earth''s Best Organic Fruit Yogurt Smoothie Mixed Berry', 1, '388.00', 1),
(4, 'Boar''s Head Sliced White American Cheese - 120 Ct', 1, '517.00', 1),
(5, 'Back To Nature Gluten Free White Cheddar Rice Thin Crackers', 1, '420.00', 1),
(6, 'Sally Hansen Nail Color Magnetic 903 Silver Elements', 1, '447.00', 1),
(7, 'Twinings Of London Classics Lady Grey Tea - 20 Ct', 1, '877.00', 1),
(8, 'Lea & Perrins Marinade In-a-bag Cracked Peppercorn', 1, '243.00', 1),
(9, 'Van De Kamp''s Fillets Beer Battered - 10 Ct', 1, '282.00', 1),
(10, 'Ahold Cocoa Almonds', 1, '580.00', 1),
(11, 'Honest Tea Peach White Tea', 1, '153.00', 1),
(12, 'Mueller Sport Care Basic Support Level Medium Elastic Knee Support', 1, '725.00', 1),
(13, 'Garnier Nutritioniste Moisture Rescue Fresh Cleansing Foam', 1, '367.00', 1),
(14, 'Pamprin Maximum Strength Multi-symptom Menstrual Pain Relief', 1, '460.00', 1),
(15, 'Suave Naturals Moisturizing Body Wash Creamy Tropical Coconut', 1, '198.00', 1),
(16, 'Burt''s Bees Daily Moisturizing Cream Sensitive', 1, '411.00', 1),
(17, 'Ducal Refried Red Beans', 1, '460.00', 1),
(18, 'Scotch Removable Clear Mounting Squares - 35 Ct', 1, '968.00', 1),
(19, 'Careone Family Comb Set - 8 Ct', 1, '658.00', 1),
(20, 'Plums Black', 1, '287.00', 1),
(21, 'Doctor''s Best Best Curcumin C3 Complex 1000mg Tablets - 120 Ct', 1, '259.00', 1),
(22, 'Betty Crocker Twin Pack Real Potatoes Scalloped 2 Pouches For 2 Meals - 2 Pk', 1, '334.00', 1),
(23, 'Reese Mandarin Oranges Segments In Light Syrup', 1, '794.00', 1),
(24, 'Smart Living Charcoal Lighter Fluid', 1, '166.00', 1),
(25, 'Hood Latte Iced Coffee Drink Vanilla Latte', 1, '147.00', 1),
(26, 'Triaminic Syrup Night Time Cold & Cough Grape 4oz', 1, '137.00', 1),
(27, 'Morton Kosher Salt Coarse', 1, '145.00', 1),
(28, 'Guava', 1, '214.00', 1),
(29, 'Rice Bran Gluten Free Dinner Rolls Plain', 2, '532.00', 1),
(30, 'Nakano Seasoned Rice Vinegar Original', 2, '118.00', 1),
(31, 'Sundown Naturals Essential Electrolytes Tropical Punch, Watermelon And Fruit Punch Gummies - 60 Ct', 2, '695.00', 1),
(32, 'Munchies Sandwich Crackers Cheddar Cheese On Golden Toast Crackers - 8 Pk', 2, '320.00', 1),
(33, 'Amy''s Light & Lean Spaghetti Italiano', 2, '315.00', 1),
(34, 'P.f. Chang''s Home Menu Meal For Two Beef With Broccoli', 2, '514.00', 1),
(35, 'Mom''s Best Naturals Cereal Toasted Cinnamon Squares', 2, '626.00', 1),
(36, 'Ferrara Vanilla Syrup', 2, '588.00', 1),
(37, 'Elmer''s Board Mate Dual Tip Glue Pen', 2, '959.00', 1),
(38, 'Kellogg''s Disney Pixar Cars 2 Cereal', 2, '231.00', 1),
(39, 'Pizza Sauce', 2, '877.00', 1),
(40, 'Bear Naked Fit Almond Crisp 100% Natural Energy Cereal', 2, '891.00', 1),
(41, 'Dove Men + Care Antiperspirant Deodorant Cool Silver', 2, '823.00', 1),
(42, 'Easy-off Oven Cleaner Lemon Scent', 2, '441.00', 1),
(43, 'Choice Organic Teas Black Tea Classic Black - 16 Ct', 2, '537.00', 1),
(44, 'Careone Lubricating Jelly', 2, '361.00', 1),
(45, 'Sacla Italia Sun Dried Pesto Sauce', 2, '993.00', 1),
(46, 'Huggies Natural Care Wipes - 3 Pk', 3, '182.00', 1),
(47, 'Serpis Green Olives Stuffed With Spicy Chorizo', 3, '530.00', 1),
(48, 'Ripken Power Shred Beef Jerky Teriyaki', 3, '203.00', 1),
(49, 'Arnold Bread Jewish Rye Everything', 3, '227.00', 1),
(50, 'Traditional Medicinals Herbal Tea Bags Just For Kids Organic Nighty Night - 18 Ct', 3, '422.00', 1),
(51, 'Perry''s Ice Cream Panda Paws', 3, '432.00', 1),
(52, 'Maty''s All Natural Kids 1+ Caramel Banana Taste Cough Syrup', 3, '792.00', 1),
(53, 'Kraft Anything Dressing Honey Mustard', 3, '765.00', 1),
(54, 'Eight O''clock Coffee Dark Italian Roast Ground', 3, '448.00', 1),
(55, 'Ahold  Honey Mustard', 3, '746.00', 1),
(56, 'Enzymatic Therapy  Acidophilus Pearls Active Cultures Dietary Supplement - 30 Ct', 3, '483.00', 1),
(57, 'Ahold Complete Buttermilk Pancake & Waffle Mix', 3, '976.00', 1),
(58, 'Salsa Habanero', 3, '633.00', 1),
(59, 'Say-it Sandwich & Snack Bags- 60 Pk', 3, '133.00', 1),
(60, 'Hillshire Farm Deli Select Smoked Ham With Water Added Ultra Thin', 3, '469.00', 1),
(61, 'Nestle Coffee-mate Fat Free Hazelnut Flavor Coffee Creamer', 3, '945.00', 1),
(62, 'Careone Cotton Swabs', 3, '516.00', 1),
(63, '1-day Vaginal Antifungal Prefilled Applicator 1-dose Treatment', 3, '546.00', 1),
(64, 'Preparation H Hemorrhoidal Ointment', 3, '182.00', 1),
(65, 'Roth Kase Mini Cheeseboard Kit Havarti, Gruyere & Pepper Jack - 3 Ct', 3, '972.00', 1),
(66, 'Firm Grip Disposable Nitrile Gloves - 10 Gloves', 3, '614.00', 1),
(67, 'Downy Ultra Infusions Orchid Allure Fabric Softener - 48 Loads', 3, '952.00', 1),
(68, 'Hostess Mini Muffins Chocolate Chip - 20 Ct', 3, '116.00', 1),
(69, 'Gerber Graduates For Toddlers Lil'' Meals Pasta Shells & Cheese', 3, '325.00', 1),
(70, 'Powerbar Protein Plus High Protein Bar Vanilla Yogurt', 3, '274.00', 1),
(71, 'Every Man Jack Shave Cream', 3, '298.00', 1),
(72, 'Ahold Premium Paper Towels Giant Rolls - 8 Ct', 3, '566.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `type` enum('employee','affiliated','normal') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `registration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `is_active`, `registration_date`) VALUES
(1, 'Ankit', 'employee', 1, '2016-12-14 10:58:38'),
(2, 'Akhil', 'affiliated', 1, '2016-12-14 10:58:50'),
(3, 'loyal', 'normal', 1, '2016-12-14 10:59:03'),
(4, 'normal_customer', 'normal', 1, '2016-12-14 10:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gross_amount` decimal(7,2) NOT NULL,
  `percentage_discount` decimal(3,2) NOT NULL,
  `fix_discount` int(5) NOT NULL,
  `net_amount` decimal(7,2) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `cart_id`, `user_id`, `gross_amount`, `percentage_discount`, `fix_discount`, `net_amount`, `order_date`) VALUES
(1, 3, 3, '14845.86', '0.00', 740, '14105.86', '2013-12-14 16:14:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
