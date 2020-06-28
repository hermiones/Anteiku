-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2020 at 02:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anteiku`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `Telephone` varchar(10) DEFAULT NULL,
  `Zipcode` int(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `Order_notes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `Address`, `city`, `country`, `Telephone`, `Zipcode`, `user_id`, `Order_notes`) VALUES
(1, 'Test Address', 'New Delhi', 'India', '9855698981', 110045, 1, ''),
(2, 'Test Address 2', 'Bangalore', 'India', '9855698981', 560100, 1, ''),
(5, 'Test Address', 'New Delhi', 'India', '9855698981', 110045, 1, ''),
(46, 'bdhbgejf', 'Kolkata', 'India', '123456789', 711205, 22, 'rffhgfdhgvngn'),
(47, 'bcihhdcjhc', 'cbjkacje', 'india', '54544', 55466, 22, 'hello world'),
(48, 'fehuhgueu', 'efjkwhihg', 'ehfuhguew', '2445622', 555555, 22, 'efghhrugujr'),
(49, 'jnfkkdsnfc', 'jnfkkdsnfc', 'jnfkkdsnfc', '255', 0, 22, 'jdbjd'),
(50, 'bally', 'howrah', 'india', '2545622266', 711205, 22, 'hello food'),
(51, 'jnjnkjn', 'jnjnkjn', 'jnjnkjn', 'jnjnkjn', 0, 22, 'jnjnkjn'),
(52, 'j', 'n', 'm', 'l', 0, 22, 'n'),
(53, 'bally,howrah', 'howrah', 'india', '8910920272', 711205, 22, 'khana do'),
(54, 'vvvvvvvvvbbbbbbbbbbbbb', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 'vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', '5555555555', 5444444, 22, ''),
(55, 'ffffffffff', 'ffffffffff', 'ffffffffff', '5555555555', 5555555, 22, ''),
(56, 'fffffffffffffff', 'fffffffffffffff', 'fffffffffffffff', '1234567891', 555555, 22, ''),
(57, 'fffffffffffffff', 'fffffffffffffff', 'fffffffffffffff', '5621368554', 568974, 22, ''),
(58, 'fffffffffffffff', 'fffffffffffffff', 'fffffffffffffff', 'ffffffffff', 0, 22, 'hhhhb'),
(59, 'bdhbgejf', 'Kolkata', 'Japan', '123456789', 711205, 22, 'rffhgfdhgvngn'),
(60, 'bdhbgejf', 'Kolkata', 'paris', '123456789', 52222, 22, 'rffhgfdhgvngn'),
(61, 'bdhbgejf', 'Kolkata', 'India', '123456789', 711205, 22, 'rffhgfdhgvngn'),
(62, 'bdhbgejf', 'Kolkata', 'India', '123456789', 711205, 22, 'rffhgfdhgvngn'),
(63, 'bdhbgejfgggggggggggg', 'Kolkatagggggggggggggggg', 'Indiagggggggggggg', '123456789g', 711205, 22, 'rffhgfdhgvngn'),
(64, 'bdhbgejfffffffff', 'Kolkataffffffffff', 'Indiaffff', '123456789f', 711205, 22, 'rffhgfdhgvngn'),
(65, 'fxxdxfgvbbvhbnjbnb', 'frvrdddddrdfxdfdfdrfd', 'korea', '1235655445', 123456, 22, 'rffhgfdhgvngn'),
(66, 'bdhbgejfgggg', 'Kolkatagg', 'Indiaggggg', '1234567895', 711205, 22, 'rffhgfdhgvngn'),
(67, 'bdhbgejfhgg', 'Kolkata', 'India', '123456789g', 711205, 22, 'rffhgfdhgvngn'),
(68, 'bdhbgejf444', 'Kolkata44444', 'India', '1234567895', 711205, 22, 'rffhgfdhgvngn'),
(69, 'samabayapally,chalantika', 'howrah', 'India', '8910920272', 711205, 22, 'please avoid plastics.'),
(70, 'Kolkatadddd', 'Kolkata', 'India', '1234567895', 711205, 22, 'rffhgfdhgvngn'),
(71, 'techno india saltlake', 'Kolkata', 'India', '1234698574', 711205, 22, ''),
(72, 'bdhbgejfuyhuigu', 'Kolkata', 'India', '4555544444', 711205, 22, 'rffhgfdhgvngn');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Quick Bites'),
(2, 'Starters'),
(3, 'Main course'),
(4, 'Side Dishes'),
(5, 'Desserts'),
(6, 'Icecream'),
(7, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`) VALUES
(1, 'd', 'diya20@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`) VALUES
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(6, 2),
(42, 2),
(43, 2),
(44, 2),
(63, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(132, 22),
(133, 22),
(134, 22),
(135, 22),
(136, 22),
(137, 22),
(138, 22),
(139, 22),
(140, 22),
(141, 22),
(142, 22),
(143, 22),
(144, 22),
(145, 22),
(146, 22),
(147, 22),
(148, 22),
(149, 22),
(150, 22),
(151, 22),
(152, 22),
(153, 22),
(154, 22),
(155, 22),
(156, 22),
(157, 22),
(158, 22),
(159, 22),
(160, 22),
(161, 22),
(162, 22),
(163, 22),
(164, 22),
(165, 22),
(166, 22),
(167, 22),
(168, 22),
(169, 22),
(170, 22),
(171, 22),
(172, 22),
(173, 22),
(131, 23);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 6, 27, 1),
(2, 6, 26, 1),
(3, 6, 49, 1),
(4, 7, 4, 1),
(5, 8, 38, 1),
(6, 8, 5, 1),
(9, 24, 26, 1),
(10, 24, 49, 1),
(11, 24, 38, 1),
(12, 24, 27, 1),
(45, 39, 1, 3),
(46, 39, 13, 3),
(47, 39, 18, 2),
(49, 40, 1, 2),
(50, 40, 18, 1),
(51, 40, 38, 2),
(52, 40, 13, 2),
(53, 41, 31, 2),
(54, 42, 1, 2),
(55, 42, 18, 1),
(56, 42, 38, 2),
(57, 42, 13, 2),
(58, 43, 13, 2),
(59, 43, 1, 2),
(60, 43, 18, 1),
(61, 43, 38, 2),
(62, 44, 1, 2),
(63, 44, 32, 3),
(64, 44, 13, 8),
(65, 44, 18, 5),
(66, 52, 4, 1),
(67, 53, 7, 1),
(68, 54, 1, 1),
(69, 55, 3, 6),
(70, 56, 1, 1),
(71, 56, 4, 1),
(72, 56, 7, 1),
(73, 56, 6, 1),
(74, 57, 2, 1),
(75, 57, 3, 1),
(76, 58, 3, 1),
(77, 58, 2, 1),
(78, 59, 2, 1),
(79, 59, 3, 1),
(80, 60, 2, 1),
(81, 60, 3, 1),
(82, 61, 2, 1),
(83, 61, 3, 1),
(84, 62, 1, 1),
(85, 62, 4, 1),
(86, 63, 1, 2),
(87, 63, 18, 5),
(88, 63, 32, 3),
(89, 63, 13, 8),
(90, 64, 1, 1),
(91, 64, 2, 1),
(92, 65, 2, 1),
(93, 65, 3, 1),
(94, 66, 2, 1),
(95, 67, 3, 2),
(96, 67, 2, 3),
(97, 68, 8, 2),
(98, 68, 7, 1),
(99, 69, 5, 2),
(100, 69, 6, 1),
(101, 70, 2, 1),
(102, 70, 3, 1),
(103, 71, 2, 1),
(104, 71, 1, 2),
(105, 71, 4, 6),
(106, 71, 3, 3),
(107, 72, 1, 1),
(108, 72, 3, 1),
(109, 73, 6, 2),
(110, 73, 4, 1),
(111, 74, 5, 1),
(112, 75, 6, 1),
(113, 76, 2, 1),
(114, 77, 2, 1),
(115, 77, 3, 1),
(116, 78, 1, 1),
(117, 78, 2, 1),
(118, 79, 6, 2),
(119, 79, 8, 1),
(120, 79, 7, 1),
(121, 80, 1, 1),
(122, 80, 2, 3),
(123, 81, 4, 3),
(124, 81, 2, 6),
(125, 81, 3, 6),
(126, 82, 2, 1),
(127, 82, 3, 1),
(128, 83, 5, 1),
(129, 85, 3, 3),
(130, 85, 6, 4),
(131, 85, 4, 1),
(132, 86, 2, 1),
(133, 87, 4, 3),
(134, 87, 6, 1),
(135, 89, 7, 4),
(136, 89, 4, 2),
(137, 89, 5, 3),
(138, 89, 6, 8),
(139, 90, 4, 4),
(140, 91, 2, 1),
(141, 93, 2, 1),
(142, 93, 3, 1),
(143, 94, 2, 1),
(144, 94, 3, 3),
(145, 95, 5, 1),
(146, 95, 3, 1),
(147, 95, 2, 1),
(148, 96, 2, 8),
(149, 96, 4, 1),
(150, 96, 3, 1),
(151, 97, 6, 1),
(152, 97, 5, 1),
(153, 98, 3, 6),
(154, 98, 4, 3),
(155, 99, 2, 14),
(156, 99, 5, 2),
(157, 100, 2, 5),
(158, 101, 3, 1),
(159, 102, 3, 3),
(160, 103, 2, 1),
(161, 103, 4, 3),
(162, 104, 1, 2),
(163, 104, 32, 3),
(164, 104, 13, 8),
(165, 104, 18, 5),
(166, 105, 1, 2),
(167, 105, 32, 3),
(168, 105, 18, 5),
(169, 105, 13, 8),
(170, 106, 13, 8),
(171, 106, 1, 2),
(172, 106, 32, 3),
(173, 106, 18, 5),
(174, 107, 1, 2),
(175, 107, 18, 5),
(176, 107, 32, 3),
(177, 107, 13, 8),
(178, 108, 2, 1),
(179, 109, 2, 1),
(180, 110, 5, 1),
(181, 110, 4, 1),
(182, 111, 6, 4),
(183, 111, 7, 1),
(184, 112, 5, 1),
(185, 112, 2, 1),
(186, 112, 3, 1),
(187, 113, 2, 1),
(188, 114, 3, 1),
(189, 115, 2, 1),
(190, 115, 3, 1),
(191, 116, 3, 1),
(192, 116, 5, 6),
(193, 117, 4, 1),
(194, 117, 5, 1),
(195, 118, 2, 1),
(196, 119, 3, 1),
(197, 120, 32, 3),
(198, 120, 1, 2),
(199, 120, 18, 5),
(200, 120, 15, 8),
(201, 121, 18, 5),
(202, 121, 1, 2),
(203, 121, 15, 8),
(204, 121, 32, 3),
(205, 122, 3, 2),
(206, 122, 3, 4),
(207, 123, 2, 1),
(208, 124, 3, 1),
(209, 125, 2, 2),
(210, 126, 3, 1),
(211, 127, 2, 1),
(212, 128, 2, 1),
(213, 129, 3, 1),
(214, 130, 3, 3),
(215, 131, 47, 2),
(216, 131, 43, 2),
(217, 131, 44, 1),
(218, 131, 48, 1),
(219, 131, 49, 3),
(220, 131, 46, 2),
(221, 131, 42, 1),
(222, 132, 47, 7),
(223, 132, 44, 1),
(224, 132, 48, 1),
(225, 132, 49, 3),
(226, 133, 48, 2),
(227, 134, 47, 1),
(228, 134, 48, 1),
(229, 134, 49, 1),
(230, 135, 47, 1),
(231, 135, 48, 1),
(232, 136, 48, 2),
(233, 136, 47, 1),
(234, 137, 47, 10),
(235, 137, 48, 3),
(236, 138, 47, 4),
(237, 139, 47, 4),
(238, 140, 48, 2),
(239, 141, 48, 4),
(240, 142, 45, 1),
(241, 142, 44, 3),
(242, 143, 47, 2),
(243, 143, 48, 2),
(244, 144, 48, 2),
(245, 144, 47, 3),
(246, 145, 48, 3),
(247, 145, 49, 4),
(248, 146, 48, 7),
(249, 147, 48, 11),
(250, 147, 49, 1),
(251, 147, 47, 1),
(252, 148, 47, 8),
(253, 149, 48, 4),
(254, 149, 47, 2),
(255, 150, 48, 5),
(256, 151, 48, 2),
(257, 151, 49, 10),
(258, 152, 9, 8),
(259, 153, 10, 3),
(260, 154, 3, 2),
(261, 154, 4, 1),
(262, 155, 15, 4),
(263, 155, 18, 4),
(264, 155, 17, 3),
(265, 155, 16, 4),
(266, 156, 8, 2),
(267, 156, 9, 3),
(268, 156, 10, 2),
(269, 157, 10, 4),
(270, 157, 8, 2),
(271, 157, 11, 1),
(272, 157, 9, 2),
(273, 158, 4, 3),
(274, 158, 3, 2),
(275, 159, 3, 5),
(276, 160, 3, 4),
(277, 160, 2, 2),
(278, 161, 9, 4),
(279, 162, 17, 6),
(280, 163, 3, 4),
(281, 163, 4, 3),
(282, 164, 4, 8),
(283, 164, 3, 7),
(284, 164, 5, 1),
(285, 165, 5, 3),
(286, 166, 30, 6),
(287, 166, 3, 32),
(288, 166, 31, 1),
(289, 167, 2, 1),
(290, 167, 3, 2),
(291, 168, 5, 4),
(292, 169, 2, 2),
(293, 170, 2, 1),
(294, 171, 5, 3),
(295, 171, 3, 3),
(296, 172, 30, 1),
(297, 172, 1, 1),
(298, 172, 32, 1),
(299, 172, 29, 1),
(300, 172, 58, 1),
(301, 172, 4, 1),
(302, 172, 43, 1),
(303, 172, 46, 1),
(304, 172, 37, 1),
(305, 173, 13, 2),
(306, 173, 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) NOT NULL,
  `short_desc` varchar(255) NOT NULL,
  `cat_id` int(10) DEFAULT NULL,
  `var_id` int(11) DEFAULT NULL,
  `add_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `image`, `images`, `description`, `price`, `quantity`, `short_desc`, `cat_id`, `var_id`, `add_desc`) VALUES
(1, 'Fries', 'https://c4.wallpaperflare.com/wallpaper/666/302/422/food-potato-french-fries-hd-wallpaper-preview.jpg', 'https://c4.wallpaperflare.com/wallpaper/666/302/422/food-potato-french-fries-hd-wallpaper-preview.jpg;https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQwKyJIBgDETTjWhCY86mBY-C1qhlWFNj845WebTQD0B59f0-w&usqp=CAU', 'Pieces of potato that have been deep-fried. ... These are deep-fried, very thin, salted slices of potato that are usually served at room temperature.', 120, 0, 'French Fries', 1, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(2, 'Beef Burger', 'https://www.telegraph.co.uk/content/dam/recipes/2019/12/04/Steven-Joyce-JOS2019070D00002_trans_NvBQzQNjv4BqbaEW0cQlc45KirwyUsvH-L21Zprrz_fZjqz80EkQuoE.jpg', 'https://i0.wp.com/foodieeshe.com/wp-content/uploads/2018/06/wasabi_burger.jpeg?fit=1170%2C1170&ssl=1;https://d1doqjmisr497k.cloudfront.net/-/media/schwartz/recipes/800x800/beef_burgers_800.jpg?vd=20180522T022045Z&ir=1&width=600&height=600&crop=auto&quality=75&speed=0&hash=EFA6B6FFC539EB8E8AB72E37EC28A872F48742A6;https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2018/07/beef_burger.jpg;https://gbc-cdn-public-media.azureedge.net/img25737.768x512.jpg', 'A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.', 285, 0, 'Burger', 1, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(3, 'Tachos', 'https://i.pinimg.com/736x/d1/11/7a/d1117aa080e5eb709e31508155dae17e.jpg', 'https://i.pinimg.com/736x/d1/11/7a/d1117aa080e5eb709e31508155dae17e.jpg;https://media-cdn.tripadvisor.com/media/photo-s/0e/95/31/9c/tachos.jpg;https://eatattheforum.com/wp-content/uploads/2019/10/original-9-72-_mg_7959-770x514.jpg', 'Taco is typically served as a crisp-fried corn tortilla filled with seasoned ground beef, cheese, lettuce, and sometimes tomato, onion, salsa, sour cream, and avocado or guacamole.', 225, 0, 'Taco', 1, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(4, 'Pizzageddon', 'https://media4.s-nbcnews.com/j/newscms/2020_09/3246761/plain_pizza_f431dcc55520ce41f835a97a5383f171.fit-760w.jpg', 'https://media4.s-nbcnews.com/j/newscms/2020_09/3246761/plain_pizza_f431dcc55520ce41f835a97a5383f171.fit-760w.jpg;https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS66HHWfR-mUqG3mGoG2ytyMUUFuFHy1U2BP36UV4zebtReQB7r&usqp=CAU', 'A savory pizza of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (anchovies, olives, meat, etc.)', 250, 62, 'Pizza', 1, NULL, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(5, 'Spartanburg Hotdog', 'https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg', 'https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg;https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg;https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg;https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg;https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg', 'A grilled or steamed sausage sandwich where the sausage is served in the slit of a partially sliced bun. It can also refer to the sausage itself. ... The hot dog became closely associated with baseball and American culture.', 185, 72, 'Hotdog', 1, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(6, 'Cheese Sandwitch', 'https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Kids/Galleries/9+Healthy+Sandwich/club.jpg', NULL, 'A cheese sandwich is a basic sandwich generally made with one or more varieties of cheese on any sort of bread, such as flat bread or wheat bread, that may also include spreads such as butter or mayonnaise.', 195, 1, 'Sandwitch', 1, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(7, 'Alfredo Pasta', 'https://www.modernhoney.com/wp-content/uploads/2018/08/Fettuccine-Alfredo-Recipe-1.jpg', 'https://www.modernhoney.com/wp-content/uploads/2018/08/Fettuccine-Alfredo-Recipe-1.jpg:', 'The alfredo combines a creamy pasta sauce with tender slices of lean protein. ', 265, 95, 'Pasta', 1, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(8, 'Crispy Chilli corn', 'https://greenbowl2soul.com/wp-content/uploads/2019/05/chilli-baby-corn-2.png', 'https://greenbowl2soul.com/wp-content/uploads/2019/05/chilli-baby-corn-2.png;https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2013/05/chilli-baby-corn-recipe-1-500x500.jpg;https://i2.wp.com/vegecravings.com/wp-content/uploads/2018/03/Baby-Corn-Manchurian-Recipe-Step-by-Step-Instructions.jpg?fit=1948%2C1867&quality=65&strip=all&ssl=1;https://www.mealdial.com/wp-content/uploads/2016/12/Babycorn-Manchurian-1.jpg;https://www.mealdial.com/wp-content/uploads/2016/12/Babycorn-Manchurian-1.jpg', ' A healthy snack made with the goodness of crispy fried corn kernels and a melange of rich aromatic blended spices', 250, 96, 'Corn', 2, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(9, 'Fried prawn ', 'https://flockler.com/thumbs/sites/192/prawns-coconut_s1200x630_c2256x1318_l0x0.jpg', 'https://flockler.com/thumbs/sites/192/prawns-coconut_s1200x630_c2256x1318_l0x0.jpg;https://lh3.googleusercontent.com/proxy/c7m-InBFli1dESr4h6N7hjqg7IVDgduwLs4pX96LCyweZ7bO56j1PkfFYm_VHW3Q2OTU_wrw68QM1oIl7ffkipv9gXR-6NfdlCtdORPrMCRic2m6PJ1ju6zNdwJUfRKu-yNJOiIYDYs7uJZfdbJCY_bNke0;https://keviniscooking.com/wp-content/uploads/2020/02/Spicy-Fried-Shrimp-square.jpg;https://www.saveur.com/resizer/92iuQGfugQEBSNRnAXjhZPYD2gY=/760x570/arc-anglerfish-arc2-prod-bonnier.s3.amazonaws.com/public/YFZYQJH3MCTLLF37ZN6HK6NFAI.jpg;https://www.saveur.com/resizer/92iuQGfugQEBSNRnAXjhZPYD2gY=/760x570/arc-anglerfish-arc2-prod-bonnier.s3.amazonaws.com/public/YFZYQJH3MCTLLF37ZN6HK6NFAI.jpg', 'Fried shrimp or fried prawn is deep-fried shrimp and prawns.', 285, 83, 'Prawn', 2, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(10, 'Chicken Wings', 'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Best-Ever-Fried-Chicken-Wings_EXPS_THFM18_208490_D09_19_4b.jpg', 'https://tmbidigitalassetsazure.blob.core.windows.net/rms3-prod/attachments/37/1200x1200/Best-Ever-Fried-Chicken-Wings_EXPS_THFM18_208490_D09_19_4b.jpg;https://www.macheesmo.com/wp-content/uploads/2016/08/Sweet-Korean-Chicken-Wings-Main.jpg;https://rasamalaysia.com/wp-content/uploads/2016/11/spicy-korean-chicken-wings-thumb.jpg;https://jesspryles.com/wp-content/uploads/2018/01/korean-fried-chicken-32.jpg', 'A Buffalo wing, in the cuisine of the United States, is an unbreaded chicken wing section that is generally deep-fried then coated or dipped in a sauce consisting of a vinegar-based cayenne pepper hot sauce and melted butter prior to serving', 185, 91, 'Hot & Spicy Chicken Wings', 2, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(11, 'Chilli Potato', 'https://static.toiimg.com/thumb/52532656.cms?imgsize=498654&width=800&height=800', 'https://static.toiimg.com/thumb/52532656.cms?imgsize=498654&width=800&height=800;https://thumbs.dreamstime.com/b/asian-honey-chilli-potato-wedges-hot-sweet-sauce-sesame-green-onions-close-up-horizontal-plate-139290677.jpg;https://imgstaticcontent.lbb.in/lbbnew/wp-content/uploads/sites/1/2015/12/feature59.jpg;https://imgstaticcontent.lbb.in/lbbnew/wp-content/uploads/sites/1/2015/12/feature59.jpg', ' Potatoes tossed in garlic and olive oil and baked to a golden brown ', 145, 99, 'Spicy Potato', 2, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(12, 'chilli grilled Fish', 'https://img.taste.com.au/BU7jqjpF/w720-h480-cfill-q80/taste/2016/11/chargrilled-fish-with-green-chilli-coriander-and-coconut-relish-70446-1.jpeg', 'https://img.taste.com.au/BU7jqjpF/w720-h480-cfill-q80/taste/2016/11/chargrilled-fish-with-green-chilli-coriander-and-coconut-relish-70446-1.jpeg;https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F44%2F2018%2F06%2F27124001%2F53321971.jpg;https://d1doqjmisr497k.cloudfront.net/-/media/mccormick-us/recipes/grill-mates/w/800/white-wine-and-herb-grilled-salmon.jpg?vd=20180710T030349Z&hash=C57F9B6495870C58C5FE80B7E8CA28B329948658;https://d1doqjmisr497k.cloudfront.net/-/media/mccormick-us/recipes/grill-mates/w/800/white-wine-and-herb-grilled-salmon.jpg?vd=20180710T030349Z&hash=C57F9B6495870C58C5FE80B7E8CA28B329948658', 'Boneless pieces of fish, batter fried and doused in a spicy-tangy sauce made with soy, tomato and chilli sauce along with chillies, ginger and garlic.', 189, 100, 'Dry spicy grilled fish', 2, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(13, 'Chicken Fried streaks', 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2019/9/3/0/FNK_the-best-chicken-fried-steak_H_s4x3.jpg.rend.hgtvcom.826.620.suffix/1567523589755.jpeg', 'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2019/9/3/0/FNK_the-best-chicken-fried-steak_H_s4x3.jpg.rend.hgtvcom.826.620.suffix/1567523589755.jpeg;https://res.cloudinary.com/hksqkdlah/image/upload/v1588189149/SFS_CountryFriedSteakWithGravy-21_vvuldm.jpg;https://howtofeedaloon.com/wp-content/uploads/2014/09/chicken-fried-steak-instagram.jpg;https://www.seriouseats.com/recipes/images/2015/02/20150213-chicken-fried-steak-step-6-joshua-bousel-1500x1125.jpg', 'Chicken fried steak, also known as country-fried steak, is an American breaded cutlet dish consisting of a piece of beefsteak coated with seasoned flour and pan-fried.', 165, 66, 'Spicy Steak potatoes  with chicken', 2, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(14, 'Chilli Crispy Mushrooms', 'https://www.indianhealthyrecipes.com/wp-content/uploads/2012/12/chilli-mushroom-stir-fry-500x500.jpg', 'https://www.indianhealthyrecipes.com/wp-content/uploads/2012/12/chilli-mushroom-stir-fry-500x500.jpg;https://bigoven-res.cloudinary.com/image/upload/d_recipe-no-image.jpg,t_recipe-480/chili-mushroom-recipe.jpg;https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/06/instant-pot-chilli-mushroom-1.jpg;https://i2.wp.com/www.vegrecipesofindia.com/wp-content/uploads/2012/06/instant-pot-chilli-mushroom-1.jpg', 'Crispy mushrooms is an Indo Chinese recipe where mushroom are coated in a batter and fried till crisp and then tossed in a spicy oriental sauce. Course Appetizer. Cuisine Chinese. ', 175, 92, 'Hot and Spicy Crispy mushrooms', 2, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(15, 'Fried rice', 'https://www.thespruceeats.com/thmb/uFOA5DvOiyTQ2D3bcXY3WBMC90Y=/2048x1365/filters:fill(auto,1)/leftovers-night-fried-rice-recipe-909250-10_preview-5aff43748e1b6e00360c65b0.jpeg', 'https://www.thespruceeats.com/thmb/uFOA5DvOiyTQ2D3bcXY3WBMC90Y=/2048x1365/filters:fill(auto,1)/leftovers-night-fried-rice-recipe-909250-10_preview-5aff43748e1b6e00360c65b0.jpeg;https://i2.wp.com/lifemadesimplebakes.com/wp-content/uploads/2015/05/Better-Than-Takeout-Fried-Rice-300x300.jpg;https://i2.wp.com/lifemadesimplebakes.com/wp-content/uploads/2015/05/Better-Than-Takeout-Fried-Rice-300x300.jpg;https://rasamalaysia.com/wp-content/uploads/2019/05/fried-rice-thumb.jpg', 'Fried rice is a dish of cooked rice that has been stir-fried in a wok or a frying pan and is usually mixed with other ingredients such as eggs, vegetables, seafood, or meat', 285, 80, 'Rice ', 3, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(16, 'Fried Prawn Rice', 'https://www.bbcgoodfood.com/sites/default/files/recipe/recipe-image/2019/10/prawn-fried-rice.jpg', 'https://www.bbcgoodfood.com/sites/default/files/recipe/recipe-image/2019/10/prawn-fried-rice.jpg;https://myfoodbook.com.au/sites/default/files/styles/single_recipe/public/recipe_photo/Schw20158547_0.jpg;https://www.kannammacooks.com/wp-content/uploads/prawn-fried-rice-recipe-1-3.jpg;https://hips.hearstapps.com/del.h-cdn.co/assets/17/24/1497458825-delish-shrimp-fried-rice-1-1024.jpg;https://img.taste.com.au/FGRFnJHc/taste/2016/11/prawn-and-egg-fried-rice-64324-1.jpeg', 'Fried rice with spicy prawns', 250, 96, 'Rice with fried prawn', 3, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(17, 'Jeera Rice', 'https://www.cubesnjuliennes.com/wp-content/uploads/2019/04/Fried-Jeera-Rice-Recipe-500x500.jpg', 'https://www.cubesnjuliennes.com/wp-content/uploads/2019/04/Fried-Jeera-Rice-Recipe-500x500.jpg;https://i1.wp.com/vegecravings.com/wp-content/uploads/2017/04/jeera-rice-recipe-step-by-step-instructions.jpg?fit=2076%2C1944&quality=65&strip=all&ssl=1;https://www.riverrockudaipur.com/wp-content/uploads/2018/05/jeera-rice-recipe.jpg', 'Jeera rice or Zeera rice is an Indian and Pakistani dish consisting of rice and cumin seeds', 221, 91, 'Veg Rice', 3, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(18, 'Peas Pulao', 'https://myheartbeets.com/wp-content/uploads/2018/04/pea-pulao-indian-rice-peas.jpg', 'https://myheartbeets.com/wp-content/uploads/2018/04/pea-pulao-indian-rice-peas.jpg;https://www.archanaskitchen.com/images/archanaskitchen/1-Author/Donna_George/Matar_Pulao_Peas_Pulao_Recipe-1.jpg;https://s3.amazonaws.com/images.chefinyou.com/main/carrot-peas-pulao-recipe/main-img7.JPG', 'Green peas are known as matar in hindi and Pulao is a Indian rice pilaf . This matar pulao is made with basmati rice, whole spices, herbs & of course green peas as it is the star ingredient of this recipe', 223, 66, 'Veg Pulao ', 3, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(19, 'Masala Kulcha', 'https://ratlamee.com/wp-content/uploads/2018/09/Masala-Kulcha.jpg', 'https://ratlamee.com/wp-content/uploads/2018/09/Masala-Kulcha.jpg;images.news18.com/static-bengali/2019/04/masala-kulcha-630x420.jpg;https://i.ytimg.com/vi/2KtclMalKEE/maxresdefault.jpg;https://www.shanmugas.com/Content/upload/Masala%20Kulcha.jpg', 'A popular indian flat bread recipe prepared mainly with spiced potatoes and paneer stuffing', 112, 100, 'Hot & spicy Roti', 3, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(20, 'Butter Nun', 'https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2016/1-Archana/Homemade_Butter_Naan_Recipe_Soft_Yogurt_Bread-1.jpg', 'https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2016/1-Archana/Homemade_Butter_Naan_Recipe_Soft_Yogurt_Bread-1.jpg;https://lh3.googleusercontent.com/proxy/cOTKZV3nTB9Re04lbU2b43N07LeAXw6ahBpREeV8s0SuseZDJ4Apr4UXT1gfclEjzWMUGHq63YDaMJjXfvZA-1EOFfC8JfXkkLkjs3vXeptjEJno5xf1eA8x3qCM0wkoySx5;https://www.thegunnysack.com/wp-content/uploads/2018/05/Naan-Flatbread-Recipe-Two-Ingredient-Dough-720x540.jpg', 'We have made our tawa butter naan using refined flour and have used yeast. spicy tasty and healthy too.', 85, 100, 'Nun roti', 3, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(21, 'Chicken Biriani', 'https://www.myfoodwifi.com/wp-content/uploads/2018/10/WhatsApp-Image-2018-10-13-at-1.05.45-PM.jpeg', 'https://www.myfoodwifi.com/wp-content/uploads/2018/10/WhatsApp-Image-2018-10-13-at-1.05.45-PM.jpeg;https://368763-1151050-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2019/12/South-Asian-Fish-Biryani-Recipe-Desilicious-RD-5.jpg;https://www.whiskaffair.com/wp-content/uploads/2019/05/Chicken-Biryani-3.jpg;previews.123rf.com/images/highviews/highviews1903/highviews190300010/121004817-chicken-biryani.jpg', 'It is made with Indian spices, rice, meat (chicken, beef, goat, pork, lamb, prawn, or fish), vegetables or eggs.', 385, 100, 'Full mughal Style Biriani', 3, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(22, 'Prawn Curry', 'https://myfoodstory.com/wp-content/uploads/2017/08/Goan-Prawn-Curry-with-Coconut-Ambot-Tik-4.jpg', 'https://myfoodstory.com/wp-content/uploads/2017/08/Goan-Prawn-Curry-with-Coconut-Ambot-Tik-4.jpg;https://www.archanaskitchen.com/images/archanaskitchen/0-Archanas-Kitchen-Recipes/2018/Pepe_Chingri_Recipe_Green_Papaya_Prawn_Curry_-1.jpg;https://www.whiskaffair.com/wp-content/uploads/2020/04/Kerala-Prawn-Curry-3.jpg', 'Shrimp curry is a typical dish of the Thai cuisine of Thailand, which once formed part of the [State of Phuket], and the cooking of Mozambique too. As the name suggests, this is a dish prepared with shrimp, with a thick sauce of a yellow hue.', 298, 100, 'Prawn Dish', 4, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(23, 'Chicken Korma', 'https://keviniscooking.com/wp-content/uploads/2018/03/Easy-Chicken-Korma-square.jpg', 'https://keviniscooking.com/wp-content/uploads/2018/03/Easy-Chicken-Korma-square.jpg', 'Korma or Qorma is a dish originating in the Indian subcontinent, consisting of meat or vegetables braised with yogurt or cream, water or stock, and spices to produce a thick sauce or glaze', 249, 100, 'Chicken', 4, 1, 'Korma. Korma curries are spiced not for heat, but for flavor. Rather than cumin and black pepper, korma goes for flavors such as cardamom and cinnamon'),
(24, 'Chicken Kaasa', 'https://feriwalla.com/wp-content/uploads/2019/09/Chicken-kasa-feriwalla.com_-e1584116113675.jpg', 'https://feriwalla.com/wp-content/uploads/2019/09/Chicken-kasa-feriwalla.com_-e1584116113675.jpg', 'In this recipe, chicken is cooked with a spicy thick gravy.', 250, 100, 'Chicken ', 4, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(25, 'Palak Paneer', 'https://i2.wp.com/spicecravings.com/wp-content/uploads/2017/08/Palak-Paneer-5-500x500.jpg', 'https://i2.wp.com/spicecravings.com/wp-content/uploads/2017/08/Palak-Paneer-5-500x500.jpg;cookwithkushi.com/wp-content/uploads/2016/05/IMG_9736_.jpg;https://i2.wp.com/spicecravings.com/wp-content/uploads/2017/08/Palak-Paneer-5-500x500.jpg;tarladalal.com/members/9306/procstepimgs/palak-paneer_dsc1390-(40)-18-185747.jpg', 'Palak paneer is a vegetarian dish originating from the Indian subcontinent, consisting of paneer in a thick paste made from puréed spinach and seasoned with ginger, garlic, garam masala, and other spices.', 240, 100, 'Paneer Dish', 4, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(26, 'Butter Paneer', 'https://zaykarecipes.com/eng/wp-content/uploads/2020/01/Paneer-Butter-Masala.jpg', 'https://zaykarecipes.com/eng/wp-content/uploads/2020/01/Paneer-Butter-Masala.jpg;https://recipes.timesofindia.com/thumb/53098531.cms?width=1200&height=1200;https://www.cookwithmanali.com/wp-content/uploads/2019/05/Paneer-Butter-Masala-500x500.jpg;https://www.whiskaffair.com/wp-content/uploads/2015/10/Matar-Paneer-5.jpg', 'Paneer butter masala also known as butter paneer is a rich, creamy and delicious paneer dish prepared using butter.', 315, 100, 'Paneer Dish', 4, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(27, 'Mutton Kaasa', 'https://www.cubesnjuliennes.com/wp-content/uploads/2019/11/Mutton-Curry-500x500.jpg', 'https://www.cubesnjuliennes.com/wp-content/uploads/2019/11/Mutton-Curry-500x500.jpg', 'Mutton curry and vegetables. Although very popular in northern India, mainly in Bengal region, the dish is found in different variations across all states, countries and regions of South Asia.', 355, 100, 'Mutton ', 4, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(28, 'Chiili Paneer', 'https://www.cookwithmanali.com/wp-content/uploads/2016/01/Chilli-Paneer-Restaurant-Style-500x500.jpg', 'https://www.cookwithmanali.com/wp-content/uploads/2016/01/Chilli-Paneer-Restaurant-Style-500x500.jpg;https://www.harighotra.co.uk/images/chilli-paneer-recipe.png', 'Chilli paneer is a popular Indo Chinese starter made by seasoning fried Indian cottage cheese aka paneer in chilli sauce.', 250, 100, 'Paneer Dish ', 4, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(29, 'Choco Lust', 'https://sevendays.co.in/wp-content/uploads/2019/12/BLACK-FOREST-CHOCO-PASTRY.jpg', 'https://sevendays.co.in/wp-content/uploads/2019/12/BLACK-FOREST-CHOCO-PASTRY.jpg;d2m1a7vdhhb67a.cloudfront.net/sites/default/files/styles/product_image/public/Blackforest-05-C.jpg?itok=TuGacWBX;https://www.flavoursguru.com/image/cache//catalog/products/F/G/blackforest-pastry-set-of-4-fgpst05-1000x1000.jpg', ' A cake flavored with melted chocolate, cocoa powder, or both.', 175, 0, 'Pastry', 5, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(30, 'Strawberry Fudge', 'https://cdn.craftymorning.com/wp-content/uploads/2018/12/strawberry-fudge-2-ingredients-500x500.png', 'https://img.kidspot.com.au/98tGzyhD/w643-h428-cfill-q90/kk/2015/06/5501-500378-1.jpg;https://www.ourpieceofearth.com/wp-content/uploads/2016/01/3-hearts-of-fudge-close-up.jpg', 'Strawberry cake is a cake that uses strawberry as a primary ingredient. Strawberries may be used in the cake batter, atop cakes and in a strawberry cake\'s frosting.', 165, 93, 'Pastry', 5, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(31, 'Mango Truffle', 'https://www.mychhotashop.com/wp-content/uploads/2017/06/Mango.jpg', 'https://www.mychhotashop.com/wp-content/uploads/2017/06/Mango.jpg;https://www.goldengalaxy.in/wp-content/uploads/2017/09/Mango-Pastry.jpg', 'It is typically topped with mango cream frosting, fresh mango slices, or pureed mangoes in gulaman or gelatin. Other common toppings include cream, cream cheese, and chocolate.', 169, 99, 'Pastry', 5, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(32, 'Dark Forrest ', 'https://www.freefromheaven.com/wp-content/uploads/2020/01/Vegan-Choc-Cake_02.png', 'https://www.alsothecrumbsplease.com/wp-content/uploads/2018/10/Chocolate-Mousse-Cake-4-500x500.jpg;https://domesticgothess.com/wp-content/uploads/2018/01/vegan-chocolate-fudge-layer-cake-500x500.jpg;https://www.freefromheaven.com/wp-content/uploads/2020/01/Vegan-Choc-Cake_02.png', 'This Black Forest Cake combines rich chocolate cake layers with fresh cherries, cherry liqueur, and a simple whipped cream frosting.', 185, 81, 'Pastry', 5, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(33, 'Choco Sand', 'https://1k9ch93e3xh2t4pa12vvmx1t-wpengine.netdna-ssl.com/wp-content/uploads/2016/03/Healthy-Extra-Moist-Chocolate-Cake_0489-1024x681.jpg', 'https://1k9ch93e3xh2t4pa12vvmx1t-wpengine.netdna-ssl.com/wp-content/uploads/2016/03/Healthy-Extra-Moist-Chocolate-Cake_0489-1024x681.jpg;https://www.sugarfreemom.com/wp-content/uploads/2013/02/brownies4.jpg', 'A chocolate layer cake recipe with dense, moist chocolate cake, silky chocolate truffle frosting and chocolate flakes.', 139, 100, 'Pastry', 5, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(34, 'Cream Fudge', 'https://bakerbettie.com/wp-content/uploads/2018/03/pastry-cream-recipe-2-720x405.jpg', 'https://bakerbettie.com/wp-content/uploads/2018/03/pastry-cream-recipe-2-720x405.jpg;https://cdn3.tmbi.com/toh/GoogleImagesPostCard/State-Fair-Cream-Puffs_exps10540_AC2930252B01_16_4b_RMS.jpg;https://princessbamboo.com/wp-content/uploads/2020/03/Untitled-design-2020-03-10T203600.069.png', ' Layered or topped with any of several forms of cream.', 155, 100, 'Pastry', 5, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(35, 'Orange Serve', 'https://squareonetreats.com/content/images/thumbs/0000599_orange-jelly-pastry.jpeg', 'https://squareonetreats.com/content/images/thumbs/0000599_orange-jelly-pastry.jpeg', 'A moist, tender fresh orange cake with a sweet orange cream cheese frosting.', 165, 100, 'Pastry', 5, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(36, 'Rainbow Waves', 'https://i.pinimg.com/originals/85/d3/1e/85d31e7d46225d8b83a5c16193c49afc.jpg', 'https://i.pinimg.com/originals/85/d3/1e/85d31e7d46225d8b83a5c16193c49afc.jpg', 'Ribbons of lime, raspberry and orange swirled together in a creamy ice cream. A taste that will take you into a world of flavor time travel.', 155, 100, 'Ice Cream', 6, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(37, 'Bubblegum spree', 'https://i1.wp.com/thetiptoefairy.com/wp-content/uploads/2018/06/bubblegum-ice-cream-2_zps6f81d4a3.jpg?fit=1024%2C815&ssl=1', 'https://i1.wp.com/thetiptoefairy.com/wp-content/uploads/2018/06/bubblegum-ice-cream-2_zps6f81d4a3.jpg?fit=1024%2C815&ssl=1', 'Bubblegum Ice Cream is Ice cream which has a taste similar to that of bubblegum.', 135, 99, 'Ice Cream', 6, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(38, 'Coco Cream', 'https://www.manusmenu.com/wp-content/uploads/2014/09/1-Coconut-Ice-Cream-1-1-of-1.jpg', 'https://www.manusmenu.com/wp-content/uploads/2014/09/1-Coconut-Ice-Cream-1-1-of-1.jpg', ' A creamy, dairy free coconut ice cream recipe .', 120, 100, 'Ice Cream', 6, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(39, 'Blueberry', 'https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/exps23019_FFT2434558D08_08_10b_WEB.jpg', 'https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/exps23019_FFT2434558D08_08_10b_WEB.jpg', 'Creamy blueberry ice cream is a summer treat that you simply need to taste to believe.', 116, 100, 'Ice Cream', 6, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(40, 'Candy Flush', 'https://data.whicdn.com/images/119394553/original.jpg', 'https://data.whicdn.com/images/119394553/original.jpg', 'This is an ice cream that is creamier than regular ice cream and thicker.', 112, 100, 'Ice Cream', 6, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(41, 'Vanilla Cream', 'https://barefeetinthekitchen.com/wp-content/uploads/2018/05/Easiest-Ice-Cream-1-1-of-1-500x375.jpg', 'https://barefeetinthekitchen.com/wp-content/uploads/2018/05/Easiest-Ice-Cream-1-1-of-1-500x375.jpg;https://www.justataste.com/wp-content/uploads/2013/01/easy-homemade-butterscotch-sauce-recipe-500x375.jpg;https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F39%2F2019%2F09%2F20230904%2Fp_RU280152.jpg', 'A well cushioned shoe with a fresher look that will appeal to young runners. Features Mesh upper for maximum ventilation, lightstrike IMEVA midsole with visible adiprene providing protection from harmful impact forces and durable Rubber outsole for long-lasting wear', 95, 100, 'Ice Cream', 6, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(42, 'Mint Ice', 'https://www.foodmatters.com/media/images/articles/choc-chip-icecream.jpg', 'https://www.foodmatters.com/media/images/articles/choc-chip-icecream.jpg', 'Mint chocolate chip is an ice cream flavor composed of mint ice cream with small chocolate chips.', 95, 99, 'Ice Cream', 6, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(43, 'Virgin Mojito', 'https://simplygourmande.files.wordpress.com/2016/07/img_1070.jpg?w=760&h=506', 'https://simplygourmande.files.wordpress.com/2016/07/img_1070.jpg?w=760&h=506', 'The Virgin Mojito is a basically non-alcoholic drink. It is made by Lemon, Soda and Mint Leaves. Also Called Mocktail.', 85, 97, 'Soft Drink', 7, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(44, 'Strawberry Pinacolada', 'https://cook.fnr.sndimg.com/content/dam/images/cook/fullset/2011/5/5/0/CC_Bobby-Flay-Strawberry-Pina-Colada_s4x3.jpg.rend.hgtvcom.826.620.suffix/1392235614959.jpeg', 'https://cook.fnr.sndimg.com/content/dam/images/cook/fullset/2011/5/5/0/CC_Bobby-Flay-Strawberry-Pina-Colada_s4x3.jpg.rend.hgtvcom.826.620.suffix/1392235614959.jpeg', 'Going Beyond the Strawberry Daiquiri and Margarita Many of these drinks rely on fresh strawberries though some use a strawberry syrup.', 125, 95, 'Juice', 7, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(45, 'CocaCola', 'https://m.economictimes.com/thumb/msid-71812767,width-1200,height-900,resizemode-4,imgsize-412854/coca-cola-agencies.jpg', 'https://m.economictimes.com/thumb/msid-71812767,width-1200,height-900,resizemode-4,imgsize-412854/coca-cola-agencies.jpg', 'Coca-Cola, or Coke, is a carbonated soft drink.', 85, 99, 'drink', 7, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(46, 'Sprite', 'https://i.pinimg.com/originals/42/73/e1/4273e10572a8d833d646446f0521a766.jpg', 'https://i.pinimg.com/originals/42/73/e1/4273e10572a8d833d646446f0521a766.jpg', 'Sprite is a colorless, lemon and lime-flavored soft drink.', 85, 97, 'Soft Drink', 7, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(47, 'Mango Lee', 'https://images.lifealth.com/uploads/2018/03/mango-juice-1.jpg', 'https://images.lifealth.com/uploads/2018/03/mango-juice-1.jpg;https://sadapunjab.cz/wp-content/uploads/2018/05/mango-juice.jpg', 'A versatile fruit juice that has sweet and tangy both taste.', 125, 54, 'Juice', 7, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(48, 'Lichi Spree', 'https://delightfulvegans.com/wp-content/uploads/2018/07/lychee_mint_elderflower_mocktail-5-940x598.jpg', 'https://delightfulvegans.com/wp-content/uploads/2018/07/lychee_mint_elderflower_mocktail-5-940x598.jpg', 'Litchi Lassi, Super Delicious Refreshing Summer Drink, Blueberry Litchi Coconut Mocktail, Lychee.\r\n', 115, 47, 'Juice', 7, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(49, 'Mirinda', 'https://i.pinimg.com/originals/9a/18/04/9a18046a96b9d9a027bc03bb3d5d86ae.jpg', 'https://img.etimg.com/thumb/width-640,height-480,imgsize-173160,resizemode-1,msid-47507723/fanta-mirinda-losing-popularity-rasna-and-tang-preferred-more.jpg;https://www.hi5mart.com/image/cache/catalog/DRINKS%20AND%20BEVERAGES/mirinda/Mirinda%20Soft%20Drink%20-%20Orange%20Flavor,%20600%20ml%20Bottle-750x750.jpg', 'It is available in fruit varieties including orange, citrus, grapefruit, apple, strawberry, raspberry, pineapple, pomegranate, banana etc.', 85, 78, 'Soft Drink', 7, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(58, 'Papri Chat', 'https://profusioncurry.com/wp-content/uploads/2019/12/matar-chaat-white-peas-curry-served-in-black-dinner-plate.jpg', 'https://profusioncurry.com/wp-content/uploads/2019/12/matar-chaat-white-peas-curry-served-in-black-dinner-plate.jpg;https://foodexpressodisha.files.wordpress.com/2017/06/photostudio_1498320053191.jpg?w=1232;https://im1.dineout.co.in/images/uploads/restaurant/sharpen/5/e/d/p52304-15494339135c5a7c397893d.jpg?tr=tr:n-xlarge', 'A spicy indian snack with so much masala.', 125, 0, 'French Fries', 1, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(59, 'Beef Burger', 'https://www.telegraph.co.uk/content/dam/recipes/2019/12/04/Steven-Joyce-JOS2019070D00002_trans_NvBQzQNjv4BqbaEW0cQlc45KirwyUsvH-L21Zprrz_fZjqz80EkQuoE.jpg', 'https://i0.wp.com/foodieeshe.com/wp-content/uploads/2018/06/wasabi_burger.jpeg?fit=1170%2C1170&ssl=1;https://d1doqjmisr497k.cloudfront.net/-/media/schwartz/recipes/800x800/beef_burgers_800.jpg?vd=20180522T022045Z&ir=1&width=600&height=600&crop=auto&quality=75&speed=0&hash=EFA6B6FFC539EB8E8AB72E37EC28A872F48742A6;https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2018/07/beef_burger.jpg;https://gbc-cdn-public-media.azureedge.net/img25737.768x512.jpg', 'A hamburger (also burger for short) is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled.', 285, 1, 'Burger', 1, 3, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(60, 'Tachos', 'https://i.pinimg.com/736x/d1/11/7a/d1117aa080e5eb709e31508155dae17e.jpg', 'https://i.pinimg.com/736x/d1/11/7a/d1117aa080e5eb709e31508155dae17e.jpg;https://media-cdn.tripadvisor.com/media/photo-s/0e/95/31/9c/tachos.jpg;https://eatattheforum.com/wp-content/uploads/2019/10/original-9-72-_mg_7959-770x514.jpg', 'Taco is typically served as a crisp-fried corn tortilla filled with seasoned ground beef, cheese, lettuce, and sometimes tomato, onion, salsa, sour cream, and avocado or guacamole.', 225, 3, 'Taco', 1, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(61, 'Pizzageddon', 'https://media4.s-nbcnews.com/j/newscms/2020_09/3246761/plain_pizza_f431dcc55520ce41f835a97a5383f171.fit-760w.jpg', 'https://media4.s-nbcnews.com/j/newscms/2020_09/3246761/plain_pizza_f431dcc55520ce41f835a97a5383f171.fit-760w.jpg;https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS66HHWfR-mUqG3mGoG2ytyMUUFuFHy1U2BP36UV4zebtReQB7r&usqp=CAU', 'A savory pizza of Italian origin, consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (anchovies, olives, meat, etc.)', 250, 63, 'Pizza', 1, NULL, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(62, 'Spartanburg Hotdog', 'https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg', 'https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg;https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg;https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg;https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg;https://image.freepik.com/free-photo/high-angle-hotdogs-cutboard_23-2148273075.jpg', 'A grilled or steamed sausage sandwich where the sausage is served in the slit of a partially sliced bun. It can also refer to the sausage itself. ... The hot dog became closely associated with baseball and American culture.', 185, 75, 'Hotdog', 1, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(63, 'Chow Chow', 'https://www.indianfoodforever.com/iffwd/wp-content/uploads/veg-chowmein.jpg', 'https://www.indianfoodforever.com/iffwd/wp-content/uploads/veg-chowmein.jpg;https://www.spiceupthecurry.com/wp-content/uploads/2017/02/veg-chow-mein-recipe-9.jpg;https://www.spiceupthecurry.com/wp-content/uploads/2017/02/veg-chow-mein-recipe-9.jpg', 'Ab indian style noodles with so much spices.', 185, 75, 'Chow Chow', 2, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(64, 'Cheese corn', 'https://kirbiecravings.com/wp-content/uploads/2017/11/korean-cheese-corn-11b.jpg', 'https://kirbiecravings.com/wp-content/uploads/2017/11/korean-cheese-corn-11b.jpg;https://i.pinimg.com/originals/74/8c/3c/748c3cccf5835ed4c79a3a049b390bd2.jpg', 'corn and cheese blast!', 136, 3, 'corn chat', 2, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(65, 'Rice cakes', 'https://www.seriouseats.com/recipes/images/2014/07/20140703-ideas-in-food-clam-sauce-StartingToSmokeRiceCakes-1500x1125.jpg', 'https://www.seriouseats.com/recipes/images/2014/07/20140703-ideas-in-food-clam-sauce-StartingToSmokeRiceCakes-1500x1125.jpg;https://www.seriouseats.com/recipes/images/2014/07/20140703-ideas-in-food-clam-sauce-StartingToSmokeRiceCakes-1500x1125.jpg;https://www.seriouseats.com/recipes/images/2014/07/20140703-ideas-in-food-clam-sauce-StartingToSmokeRiceCakes-1500x1125.jpg', 'A rice cake may be any kind of food item made from rice that has been shaped, condensed, or otherwise combined into a single object that has also been sweetened. A wide variety of rice cakes exist in many different cultures in which rice is eaten, and are particularly prevalent in Asia.', 112, 100, 'Rice ', 3, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(66, 'Rice balls', 'https://www.kroger.com/asset/59404774bae8a251753990c2?data=1', 'https://www.kroger.com/asset/59404774bae8a251753990c2?data=1;https://www.kroger.com/asset/59404774bae8a251753990c2?data=1;https://www.kroger.com/asset/59404774bae8a251753990c2?data=1', 'O-nigiri (お握り or 御握り; おにぎり), also known as o-musubi (お結び; おむすび), nigirimeshi (握り飯; にぎりめし), rice ball, is a Japanese food made from white rice formed into triangular or cylindrical shapes and often wrapped in nori (seaweed)', 85, 100, 'rice', 3, 2, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(67, 'Bamboo biriani', 'https://i.ytimg.com/vi/Lp_Fr0HiEtk/maxresdefault.jpg', 'https://i.ytimg.com/vi/Lp_Fr0HiEtk/maxresdefault.jpg;https://i.ytimg.com/vi/Lp_Fr0HiEtk/maxresdefault.jpg;https://i.ytimg.com/vi/Lp_Fr0HiEtk/maxresdefault.jpg;https://i.ytimg.com/vi/Lp_Fr0HiEtk/maxresdefault.jpg;https://i.ytimg.com/vi/Lp_Fr0HiEtk/maxresdefault.jpg', 'Birani', 485, 100, 'Full mughal Style Biriani', 3, 1, 'Flavorsome indicates good tasting, full of flavor, specifically pleasant flavor; implying delicious, tasty, appetizing, scrumptious, yummy, juicy, succulent, heavenly, inviting, luscious, mouthwatering, palatable, saporous, savory; may be divine, toothsom'),
(68, 'Giant buckey cookie', 'https://www.tasteofhome.com/wp-content/uploads/2019/10/Giant-Buckeye-Cookie_EXPS_CIMZ19_242260_E09_13_4b-5.jpg', 'https://www.tasteofhome.com/wp-content/uploads/2019/10/Giant-Buckeye-Cookie_EXPS_CIMZ19_242260_E09_13_4b-5.jpg;https://www.tasteofhome.com/wp-content/uploads/2019/10/Giant-Buckeye-Cookie_EXPS_CIMZ19_242260_E09_13_4b-5.jpg;https://www.tasteofhome.com/wp-content/uploads/2019/10/Giant-Buckeye-Cookie_EXPS_CIMZ19_242260_E09_13_4b-5.jpg', 'a cookie with chocolate and icecream on top', 250, 52, 'dessert', 5, 1, 'Something to end your bestcravings'),
(69, 'Cherry crunch', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-friedicecream-072-1587757338.jpg?crop=1xw:1xh;center,top&resize=480:*', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-friedicecream-072-1587757338.jpg?crop=1xw:1xh;center,top&resize=480:*;https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-friedicecream-072-1587757338.jpg?crop=1xw:1xh;center,top&resize=480:*', 'Hot vanilla with cherry on top', 265, 25, 'dessert', 5, 1, 'dessert'),
(70, 'tandoori chicken', 'https://www.indianhealthyrecipes.com/wp-content/uploads/2018/06/chicken-korma-recipe.jpg', 'https://www.indianhealthyrecipes.com/wp-content/uploads/2018/06/chicken-korma-recipe.jpg;https://www.indianhealthyrecipes.com/wp-content/uploads/2018/06/chicken-korma-recipe.jpg;https://www.indianhealthyrecipes.com/wp-content/uploads/2018/06/chicken-korma-recipe.jpg', 'chciken', 250, 25, 'chicken', 3, 2, 'chicken');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT 'not set',
  `lname` varchar(255) DEFAULT 'not set',
  `age` int(10) DEFAULT 18,
  `role` int(10) DEFAULT 555,
  `photoUrl` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `fname`, `lname`, `age`, `role`, `photoUrl`, `type`) VALUES
(1, 'john', '$2b$10$iLEz3tkVKeOCwuagcqhDUOV.Iswjc.I41unbnnFGiqK/gmstDCC3i', 'john@gmail.com', 'Indranil', 'Mukherjee', 31, 777, '', 'local'),
(2, 'shane', '$2b$10$ewemZ.oLASXUIWfUrjkDeOTCZUCpnhSlR3/Act2eQnvGg6mnGLOtG', 'shane123@gmail.com', 'Navoneel', 'Mukherjee', 27, 555, '', 'local'),
(11, 'mike', '$2b$10$vIS0W3LKhbx2tFh1GMYWhul7GWtIg4jnKU2C/NGux1pUG3QKMdNzO', 'mike-doe@excellent.com', 'Mike', 'Leming', 40, 555, 'https://i.pinimg.com/originals/dc/55/a0/dc55a0fec14d93d9cf6fa32c32f7c7f2.jpg', 'local'),
(14, 'indramukh', '$2b$10$po91FRkYQIfPDN6G1BxG0uIV7Z54GbJRkJw2t9wRec9uqmRKillqa', 'indramukh@hotmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(19, 'test', '$2b$10$cSa3jm7cboNSJRTgNRFJg.GviAzr/pyfptMxwxmjdKP./CdxDtLlK', 'test@gmail.com', 'Indranil', 'Mukherjee', NULL, 555, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local'),
(20, 'bhaikaju', '$2b$10$P9X8c/MC39.Zxr2k5SfxK.lwbcj6PNou2ueqod29CFZrmuDUCvlfe', 'bhaikaju@gmail.com', 'Programming\'s Fun', 'not set', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14GiPx0OQHJOCy-fSfNmKr1vbnM-Rp7CgS_jx_6oY=s96-c', 'social'),
(21, 'shreyamukherjee07', '$2b$10$SOw/LSErH0IbZ96h7pop.O6NJreOD3HjRGiZZmKnqiXiuUPCl8b8W', 'shreyamukherjee07@gmail.com', 'Shreya', 'Mukherjee', NULL, 555, 'https://lh3.googleusercontent.com/a-/AOh14Gg2Be7kKwqsUbQwyuCGToyZcCQ3ZDDWNkvSbQJVHA=s96-c', 'social'),
(22, 'sudiptadiya20', '$2b$10$jbMD0DBi6VjPUERRMhz7jueMmDpUIZK6xBwChFpsyGOGXDWSHQ0r.', 'sudiptadiya20@gmail.com', 'Diya', 'mohanty', 18, 555, 'https://lh3.googleusercontent.com/a-/AOh14GjFlDgBGEcQMwj4j6azraLG0TpRU3bwcNWrS4ynZ9I=s96-c', 'social'),
(23, 'himelighoshal', '$2b$10$UaY43taBJU/zTPX6MAWbM.FTpbXA5ybO/Yz/r4N4F09UhBLMJ7rtG', 'himelighoshal@gmail.com', 'Bani', 'Ghosh', 18, 777, 'https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg', 'local');

-- --------------------------------------------------------

--
-- Table structure for table `varieties`
--

CREATE TABLE `varieties` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `varieties`
--

INSERT INTO `varieties` (`id`, `title`) VALUES
(1, 'Top'),
(2, 'Featured'),
(3, 'New');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_addresses_users1_idx` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_users1_idx` (`user_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_orders_has_products_products1_idx` (`product_id`),
  ADD KEY `fk_orders_has_products_orders1_idx` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cat_id`),
  ADD KEY `m` (`var_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `products` ADD FULLTEXT KEY `title` (`title`,`description`);
ALTER TABLE `products` ADD FULLTEXT KEY `title_2` (`title`,`description`);
ALTER TABLE `products` ADD FULLTEXT KEY `title_3` (`title`,`description`);
ALTER TABLE `products` ADD FULLTEXT KEY `title_4` (`title`,`description`);
ALTER TABLE `products` ADD FULLTEXT KEY `title_5` (`title`,`description`);
ALTER TABLE `products` ADD FULLTEXT KEY `title_6` (`title`,`description`);
ALTER TABLE `products` ADD FULLTEXT KEY `title_7` (`title`,`description`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varieties`
--
ALTER TABLE `varieties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `fk_orders_has_products_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_orders_has_products_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `m` FOREIGN KEY (`var_id`) REFERENCES `varieties` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
