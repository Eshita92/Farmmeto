-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Feb 14, 2020 at 05:36 PM
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
-- Database: `farmmeto`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

CREATE TABLE `crops` (
  `id` int(5) NOT NULL,
  `crop_name` varchar(20) NOT NULL,
  `v_id` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`id`, `crop_name`, `v_id`, `img`, `c_id`) VALUES
(1, 'Rice', 1, 'static\\rice.jpg', 11),
(2, 'Rice', 2, 'static\\rice.jpg', 11),
(3, 'Rice', 3, 'static\\rice.jpg', 11),
(4, 'Rice', 4, 'static\\rice.jpg', 11),
(5, 'Alfalfa', 5, 'static\\alfalfa.jpg', 0),
(6, 'Alfalfa', 6, 'static\\alfalfa.jpg', 0),
(7, 'Banana', 7, 'static\\banana.jpg', 0),
(8, 'Banana', 8, 'static\\banana.jpg', 0),
(9, 'Banana', 9, 'static\\banana.jpg', 0),
(10, 'Banana', 10, 'static\\banana.jpg', 0),
(11, 'Banana', 11, 'static\\banana.jpg', 0),
(12, 'Banana', 12, 'static\\banana.jpg', 0),
(13, 'Banana', 13, 'static\\banana.jpg', 0),
(14, 'Banana', 14, 'static\\banana.jpg', 0),
(15, 'Banana', 15, 'static\\banana.jpg', 0),
(16, 'Banana', 16, 'static\\banana.jpg', 0),
(17, 'Banana', 17, 'static\\banana.jpg', 0),
(18, 'Banana', 18, 'static\\banana.jpg', 0),
(19, 'Banana', 19, 'static\\banana.jpg', 0),
(20, 'Banana', 20, 'static\\banana.jpg', 0),
(21, 'Banana', 21, 'static\\banana.jpg', 0),
(22, 'Banana', 22, 'static\\banana.jpg', 0),
(23, 'Banana', 23, 'static\\banana.jpg', 0),
(24, 'Banana', 24, 'static\\banana.jpg', 0),
(25, 'Banana', 25, 'static\\banana.jpg', 0),
(26, 'Banana', 26, 'static\\banana.jpg', 0),
(27, 'Banana', 27, 'static\\banana.jpg', 0),
(28, 'Banana', 28, 'static\\banana.jpg', 0),
(29, 'Banana', 29, 'static\\banana.jpg', 0),
(30, 'Banana', 30, 'static\\banana.jpg', 0),
(31, 'Barley', 31, 'static\\barley.jpg', 0),
(32, 'Barley', 32, 'static\\barley.jpg', 0),
(33, 'Barley', 33, 'static\\barley.jpg', 0),
(34, 'Barley', 34, 'static\\barley.jpg', 0),
(35, 'Barley', 35, 'static\\barley.jpg', 0),
(36, 'Barley', 36, 'static\\barley.jpg', 0),
(37, 'Barley', 37, 'static\\barley.jpg', 0),
(38, 'Barley', 38, 'static\\barley.jpg', 0),
(39, 'Barley', 39, 'static\\barley.jpg', 0),
(40, 'Oats', 40, 'static\\oats.jpg', 0),
(41, 'Oats', 41, 'static\\oats.jpg', 0),
(42, 'Wheat', 42, 'static\\wheat.jpg', 0),
(43, 'Wheat', 43, 'static\\wheat.jpg', 0),
(44, 'Wheat', 44, 'static\\wheat.jpg', 0),
(45, 'Wheat', 45, 'static\\wheat.jpg', 0),
(46, 'Wheat', 46, 'static\\wheat.jpg', 0),
(47, 'Wheat', 47, 'static\\wheat.jpg', 0),
(48, 'Wheat', 48, 'static\\wheat.jpg', 0),
(49, 'Wheat', 49, 'static\\wheat.jpg', 0),
(50, 'Wheat', 50, 'static\\wheat.jpg', 0),
(51, 'Wheat', 51, 'static\\wheat.jpg', 0),
(52, 'Wheat', 52, 'static\\wheat.jpg', 0),
(53, 'Wheat', 53, 'static\\wheat.jpg', 0),
(54, 'Bean', 54, 'static\\beans.jpg', 0),
(55, 'Bean', 55, 'static\\beans.jpg', 0),
(56, 'Cabbage', 56, 'static\\cabb.jpg', 0),
(57, 'Citrus', 57, 'static\\citrus.jpg', 0),
(58, 'Citrus', 58, 'static\\citrus.jpg', 0),
(59, 'Citrus', 59, 'static\\citrus.jpg', 0),
(60, 'Citrus', 60, 'static\\citrus.jpg', 9),
(61, 'Citrus', 61, 'static\\citrus.jpg', 9),
(62, 'Citrus', 62, 'static\\citrus.jpg', 9),
(63, 'Citrus', 63, 'static\\citrus.jpg', 9),
(64, 'Citrus', 64, 'static\\citrus.jpg', 9),
(65, 'Citrus', 65, 'static\\citrus.jpg', 9),
(66, 'Citrus', 66, 'static\\citrus.jpg', 9),
(67, 'Citrus', 67, 'static\\citrus.jpg', 9),
(68, 'Citrus', 68, 'static\\citrus.jpg', 9),
(69, 'Citrus', 69, 'static\\citrus.jpg', 9),
(70, 'Citrus', 70, 'static\\citrus.jpg', 9),
(71, 'Citrus', 71, 'static\\citrus.jpg', 9),
(72, 'Cotton', 72, 'static\\cotton.jpg', 10),
(73, 'Cotton', 73, 'static\\cotton.jpg', 10),
(74, 'Cotton', 74, 'static\\cotton.jpg', 10),
(75, 'Cotton', 75, 'static\\cotton.jpg', 10),
(76, 'Cotton', 76, 'static\\cotton.jpg', 10),
(77, 'Cotton', 77, 'static\\cotton.jpg', 10),
(78, 'Cotton', 78, 'static\\cotton.jpg', 10),
(79, 'Cotton', 79, 'static\\cotton.jpg', 10),
(80, 'Maize', 80, 'static\\maize.jpg', 4),
(81, 'Maize', 81, 'static\\maize.jpg', 4),
(82, 'Maize', 82, 'static\\maize.jpg', 4),
(83, 'Onion', 83, 'static\\onion.jpg', 0),
(84, 'Peanut', 84, 'static\\peanut.jpg', 6),
(85, 'Peanut', 85, 'static\\peanut.jpg', 6),
(86, 'Peanut', 86, 'static\\peanut.jpg', 6),
(87, 'Peanut', 87, 'static\\peanut.jpg', 6),
(88, 'Peanut', 88, 'static\\peanut.jpg', 6),
(89, 'Peanut', 89, 'static\\peanut.jpg', 6),
(90, 'Peanut', 90, 'static\\peanut.jpg', 6),
(91, 'Peanut', 91, 'static\\peanut.jpg', 6),
(92, 'Peanut', 92, 'static\\peanut.jpg', 6),
(93, 'Peanut', 93, 'static\\peanut.jpg', 6),
(94, 'Peanut', 94, 'static\\peanut.jpg', 6),
(95, 'Peanut', 95, 'static\\peanut.jpg', 6),
(96, 'Peanut', 96, 'static\\peanut.jpg', 6),
(97, 'Peanut', 97, 'static\\peanut.jpg', 6),
(98, 'Peanut', 98, 'static\\peanut.jpg', 6),
(99, 'Peanut', 99, 'static\\peanut.jpg', 6),
(100, 'Green Pea', 100, 'static\\greenpea.jpg', 0),
(101, 'Green Pea', 101, 'static\\greenpea.jpg', 0),
(102, 'Pepper', 102, 'static\\pepper.jpg', 0),
(103, 'Pepper', 103, 'static\\pepper.jpg', 0),
(104, 'Potato', 104, 'static\\potato.jpg', 0),
(105, 'Potato', 105, 'static\\potato.jpg', 0),
(106, 'Millet (Bajra)', 106, 'static\\millet.jpg', 5),
(107, 'Millet (Bajra)', 107, 'static\\millet.jpg', 5),
(108, 'Millet (Bajra)', 108, 'static\\millet.jpg', 5),
(109, 'Millet (Bajra)', 109, 'static\\millet.jpg', 5),
(110, 'Soybean', 110, 'static\\soybean.jpg', 7),
(111, 'Soybean', 111, 'static\\soybean.jpg', 7),
(112, 'Soybean', 112, 'static\\soybean.jpg', 7),
(113, 'Soybean', 113, 'static\\soybean.jpg', 7),
(114, 'Soybean', 114, 'static\\soybean.jpg', 7),
(115, 'Soybean', 115, 'static\\soybean.jpg', 7),
(116, 'Beetroot', 116, 'static\\beetroot.jpg', 0),
(117, 'Sugarcane', 117, 'static\\sugarcane.jpg', 0),
(118, 'Sugarcane', 118, 'static\\sugarcane.jpg', 0),
(119, 'Sugarcane', 119, 'static\\sugarcane.jpg', 0),
(120, 'Sugarcane', 120, 'static\\sugarcane.jpg', 0),
(121, 'Sugarcane', 121, 'static\\sugarcane.jpg', 0),
(122, 'Sugarcane', 122, 'static\\sugarcane.jpg', 0),
(123, 'Sugarcane', 123, 'static\\sugarcane.jpg', 0),
(124, 'Sugarcane', 124, 'static\\sugarcane.jpg', 0),
(125, 'Sugarcane', 125, 'static\\sugarcane.jpg', 0),
(126, 'Sugarcane', 126, 'static\\sugarcane.jpg', 0),
(127, 'Sunflower', 127, 'static\\sunflower.jpg', 0),
(128, 'Sunflower', 128, 'static\\sunflower.jpg', 0),
(129, 'Tomato', 129, 'static\\tomato.jpg', 8),
(130, 'Tomato', 130, 'static\\tomato.jpg', 8),
(131, 'Tomato', 131, 'static\\tomato.jpg', 8),
(132, 'Tomato', 132, 'static\\tomato.jpg', 8),
(133, 'Tomato', 133, 'static\\tomato.jpg', 8),
(134, 'Tomato', 134, 'static\\tomato.jpg', 8),
(135, 'Tea', 135, 'static\\tea.jpg', 0),
(136, 'Tea', 136, 'static\\tea.jpg', 0),
(137, 'Tea', 137, 'static\\tea.jpg', 0),
(138, 'Tea', 138, 'static\\tea.jpg', 0),
(139, 'Tea', 139, 'static\\tea.jpg', 0),
(140, 'Tea', 140, 'static\\tea.jpg', 0),
(141, 'Coffee', 141, 'static\\coffee.jpg', 0),
(142, 'Coffee', 142, 'static\\coffee.jpg', 0),
(143, 'Coffee', 143, 'static\\coffee.jpg', 0),
(144, 'Coffee', 144, 'static\\coffee.jpg', 0),
(145, 'Jowar', 145, 'static\\jowar.jpg', 3),
(146, 'Jowar', 146, 'static\\jowar.jpg', 3),
(147, 'Jowar', 147, 'static\\jowar.jpg', 3),
(148, 'Jowar', 148, 'static\\jowar.jpg', 3),
(149, 'Pulses', 149, 'static\\pulses.jpg', 0),
(150, 'Pulses', 150, 'static\\pulses.jpg', 0),
(151, 'Ragi', 151, 'static\\ragi.jpg', 0),
(152, 'Ragi', 152, 'static\\ragi.jpg', 0),
(153, 'Pigeon Pea', 153, 'static\\pigeonpea.jpg', 0),
(154, 'Pigeon Pea', 154, 'static\\pigeonpea.jpg', 0),
(155, 'Pigeon Pea', 155, 'static\\pigeonpea.jpg', 0),
(156, 'Pigeon Pea', 156, 'static\\pigeonpea.jpg', 0),
(157, 'Pigeon Pea', 157, 'static\\pigeonpea.jpg', 0),
(158, 'Pigeon Pea', 158, 'static\\pigeonpea.jpg', 0),
(159, 'Guar', 159, 'static\\guar.jpg', 0),
(160, 'Guar', 160, 'static\\guar.jpg', 0),
(161, 'Cowpea', 161, 'static\\cowpea.jpg', 2),
(162, 'Cowpea', 162, 'static\\cowpea.jpg', 2),
(163, 'Cowpea', 163, 'static\\cowpea.jpg', 2),
(164, 'Cowpea', 164, 'static\\cowpea.jpg', 2),
(165, 'Castor', 165, 'static\\castor.jpg', 0),
(166, 'Castor', 166, 'static\\castor.jpg', 0),
(167, 'Turmeric', 167, 'static\\turmeric.jpg', 0),
(168, 'Turmeric', 168, 'static\\turmeric.jpg', 0),
(169, 'Chilly', 169, 'static\\chilly.jpg', 0),
(170, 'Chilly', 170, 'static\\chilly.jpg', 0),
(171, 'Bitter Gourd', 171, 'static\\bittergourd.jpg', 0),
(172, 'Bitter Gourd', 172, 'static\\bittergourd.jpg', 0),
(173, 'Bottle Gourd', 173, 'static\\bottlegourd.png', 1),
(174, 'Sponge Gourd', 174, 'static\\spongegourd.jpeg', 0),
(175, 'Brinjal', 175, 'static\\brinjal.jpeg', 0),
(176, 'Brinjal', 176, 'static\\brinjal.jpeg', 0),
(177, 'Okra', 177, 'static\\okra.jpg', 0),
(178, 'Mustard', 178, 'static\\mustard.jpg', 0),
(179, 'Mustard', 179, 'static\\mustard.jpg', 0),
(180, 'Linseed', 180, 'static\\linseed.jpg', 0),
(181, 'Linseed', 181, 'static\\linseed.jpg', 0),
(182, 'Linseed', 182, 'static\\linseed.jpg', 0),
(183, 'Linseed', 183, 'static\\linseed.jpg', 0),
(184, 'Linseed', 184, 'static\\linseed.jpg', 0),
(185, 'Linseed', 185, 'static\\linseed.jpg', 0),
(186, 'Linseed', 186, 'static\\linseed.jpg', 0),
(187, 'Linseed', 187, 'static\\linseed.jpg', 0),
(188, 'Linseed', 188, 'static\\linseed.jpg', 0),
(189, 'Linseed', 189, 'static\\linseed.jpg', 0),
(190, 'Linseed', 190, 'static\\linseed.jpg', 0),
(191, 'Linseed', 191, 'static\\linseed.jpg', 0),
(192, 'Coriander', 192, 'static\\coriander.jpg', 0),
(193, 'Coriander', 193, 'static\\coriander.jpg', 0),
(194, 'Cumin', 194, 'static\\cumin.jpg', 0),
(195, 'Chickpea', 195, 'static\\chickpea.jpg', 0),
(196, 'Chickpea', 196, 'static\\chickpea.jpg', 0),
(197, 'Chickpea', 197, 'static\\chickpea.jpg', 0),
(198, 'Sesame', 198, 'static\\sesame.jpg', 0),
(199, 'Sesame', 199, 'static\\sesame.jpg', 0),
(200, 'Fenugreek', 200, 'static\\fenugreek.jpg', 0),
(201, 'Fenugreek', 201, 'static\\fenugreek.jpg', 0),
(202, 'Fennel', 202, 'static\\fennel.jpg', 0),
(203, 'Fennel', 203, 'static\\fennel.jpg', 0),
(204, 'Garlic', 204, 'static\\garlic.jpg', 0),
(205, 'Amaranth', 205, 'static\\amaranth.jpg', 0),
(206, 'Spinach', 206, 'static\\spinach.jpg', 0),
(207, 'Cauliflower', 207, 'static\\cauliflower.jpg', 0),
(208, 'Cauliflower', 208, 'static\\cauliflower.jpg', 0),
(209, 'Cauliflower', 209, 'static\\cauliflower.jpg', 0),
(210, 'Cauliflower', 210, 'static\\cauliflower.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crops`
--
ALTER TABLE `crops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_variant` (`v_id`),
  ADD KEY `FK_calendar` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
