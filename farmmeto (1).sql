-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Feb 15, 2020 at 04:53 AM
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
-- Table structure for table `cropping_techniques`
--

CREATE TABLE `cropping_techniques` (
  `id` int(5) NOT NULL,
  `name` varchar(10) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `crop_calendar`
--

CREATE TABLE `crop_calendar` (
  `id` int(5) NOT NULL,
  `crop_name` varchar(20) NOT NULL,
  `1` varchar(5000) DEFAULT NULL,
  `2` varchar(5000) DEFAULT NULL,
  `3` varchar(5000) DEFAULT NULL,
  `4` varchar(5000) DEFAULT NULL,
  `5` varchar(5000) DEFAULT NULL,
  `6` varchar(5000) DEFAULT NULL,
  `7` varchar(5000) DEFAULT NULL,
  `8` varchar(5000) DEFAULT NULL,
  `9` varchar(5000) DEFAULT NULL,
  `10` varchar(5000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_calendar`
--

INSERT INTO `crop_calendar` (`id`, `crop_name`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`) VALUES
(1, 'Bottle Gourd', 'Soil and Seed Preparation:\r\n\r\nSeed Varieties:\r\n \r\nSelection from germplasm type. Fruits are with prominent bottleneck at the top.fruits are pale green in colour and yields 25-30t/ha.\r\nPusa Summer Prolific long\r\nPusa\r\nSummer Prolific Round\r\nPusa Manjari\r\nPusa Megdoot and Arka Bahar\r\nTNAU Bottle gourd Hybrid\r\nSeed treatment\r\nTreated with Trichoderma viride 4 g or Pseudomonas fluorescens 10 g or Carbendazim 2 g/kg of seeds before sowing\r\nPreparation of field\r\nPlough the field to fine tilth and dig pits of the 30 cm x 30 cm x 30 cm size at 2.5 x 2 m spacing.\r\n ', 'Sowing\r\n\r\nSow the seeds at the rate three seeds/pit and thin the seedlings to two/pit after 15 days.', 'Irrigation\r\n\r\nIrrigate the field before dibbling the seeds and thereafter once a week.\r\n\r\nDrip irrigation:\r\nDrip irrigartion is most advantageous in bottle gourd cultivation.\r\nInstall drip system with main and sub-main pipes and place the inline lateral tubes at an interval of 1.5m. \r\nPlace the drippers at an interval of 60 cm and 50 cm spacing with 4LPH and 3.5LPH capacities respectively.', 'Application of fertilizers\r\n\r\nApply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.\r\nApply Azospirillum and Phosphobacteria 2 kg/ha and Pseudomonas 2.5 kg/ha along with FYM 50 kg and neem cake @ 100 kg before last ploughing.', 'Fertigation\r\n\r\nApply a dose of 200:100:100 kg NPK/ha throughout the cropping period through split application.\r\nRecommended Dose: 200:100:100 Kg/ha', 'Weeding: Weeding can be done by hoeing as and when necessary. Fruit rot during rainy season can be checked by training the plants over the bamboo stick or dried branches.\r\nPlant protection\r\nPests\r\nMites: Spray dicofol 18.5 % SC @ 2.5 ml per litre of water.\r\nAphid: Spray Imidachloprid @ 0.5 ml/lit along with sufficient quantity of stickers like Teepol, triton X100, apsa etc., for better adhesion and coverage.\r\n\r\nBeetles, fruit flies and caterpillars\r\nBeetles, fruit flies and caterpillars can be controlled by spraying Malathion 50 EC 1 ml/lit. or Dimethoate 30 EC 1 ml/lit. or Methyl demeton 25 EC 1 ml/lit.\r\nDo not use DDT,copper and sulphur dust as these are phytotoxic.\r\nPowdery mildew\r\nPowdery mildew can be controlled by spraying Dinocap 1 ml/lit. or Carbendazim 0.5 g/lit or Tridemorph l ml/l.\r\nDowny mildew\r\nDowny mildew can be controlled by spraying Mancozeb or Chlorothalonil 2 g/lit. twice at 10 days interval.', 'Harvesting\r\nFruits are harvested at tender stage and before 100 % maturity.\r\nYield\r\nThe yield potential is 15-25t/ha in 135-140 days. The fruits are extra long (180-200cm)', NULL, NULL, NULL),
(2, 'Cowpea', 'Soil and Seed Preparation:\r\n\r\n1. Seed Varieties:\r\nCo 2, VBN 2, Pusa Komal, PKM 1 and Arka Garima are commonly cultivated.\r\n2. Seed treatment\r\nTreat the seeds with Rhizobium bacterial culture 600 g before sowing.\r\n3. Preparation of field\r\nPlough the field to fine tilth and form ridges and furrows at 45 cm apart or beds of convenient sizes.\r\n4. Seed Rate\r\n• For pure crop - 20 - 25 Kg.ha (grain)\r\n• For fodder and Green Manure - 30 - 35 kg./ha.\r\n• During summer 30 kg/ha for grain and 4 - kg/ha for fodder and green manuring.', 'Sowing Seeds\r\n\r\nMethod of Sowing: Sowing of cowpea is done by broadcasting, line sowing and dibbling of seeds based on the their purpose and season.\r\nLine sowing has been better over broadcasting method of sowing. \r\nHowever, for fodder and green manure crop broadcasting method considered better. \r\nIn high rainfall area, formed 30 cm wide and 15 cm deep drainage channel at every 2 meter interval to drain excess rain water. \r\n\r\nSowing of seed a depth of 3 - 5 cm.\r\nDibble the seeds on both sides of the ridges or in lines in the beds at 45 x 15 cm spacing.\r\nSpacing:\r\nRow to row - 30 (Bushing) to 45 cm (spreading)\r\nPlant to Plant - 10 (Bushing) to 15 cm (spreading)', 'Manuring\r\n \r\nApply FYM/compost - 5 - 10 t/ha as basal with last ploughing. 15 - 20 kg N/ ha as starter dose in poor soils (organic carbon<0.5%), 50 - 60 kg/ha P2O5 and 50 - 60 kg. K2O/ha . \r\nPhosphorus and potassic fertilizer should be give according to soil test value.\r\n \r\nMicro Nutrients\r\n\r\n1. Zinc - Quantity of Zinc requirement determined according to the soil type & it’s availability or status in the soil. Therefore, the doses of zinc should be applied based on the soil type as follows.\r\n2. Red sandy and loamy soils - 2.5 kg Zn / ha (12.5 kg zinc sulphate hepta hydrate/ 7.5 kg zinc sulphate mono hydrate) per hectare.\r\n3. Black soils - 1.5 to 2.0 kg Zn / ha (7.5 to 10 kg zinc sulphate hepta hydrate/ 4.5 to 6.0 kg zinc sulphate mono hydrate) per hectare.\r\n4. Laterite, medium and alluvial soils - 2.5 kg Zn /ha (12.5 kg zinc sulphate hepta hydrate/ 7.5 kg zinc sulphate mono hydrate) as basal along with 200 kg of farm yard manure.\r\n5. Low organic carbon content and hilly sandy loam soil & 2.5 kg Zn / ha (12.5 kg zinc sulphate hepta hydrate/ 7.5 kg zinc sulphate mono hydrate) as basal in every alternate year.\r\n6. Molybdenum - In clay loam soils, apply 0.25 kg Ammonium Molybdate /ha as basal.', 'Intercultural Operation\r\n \r\n \r\nFor higher yield crop should be free from weed upto 25 to 30 day crop stage No weeding is given this crop. \r\nIt covers the land very soon and kill the weeds by smoothing. Application of pendimethaline @ 0.75 - 1 kg.a.i./ha combined with one hand weeding at 35 days after sowing is beneficial.', 'Irrigation\r\n\r\nGive irrigation immediately after sowing and on 3rd day, thereafter once a week.', 'Application of fertilizers\r\n\r\nApply FYM 25 t/ha, Azospirillum and Phosphobacteria 2 kg /ha and N 25 kg and P 50 kg/ha for irrigated crop. Apply FYM at 12.5 t/ha and N 12.5 and P 25 kg/ha for rainfed crop.\r\nFertilizers can be applied in several split doses at fortnightly intervals.', 'After cultivation\r\nGive one hoeing and weeding on 25th day after sowing.\r\n\r\nPlant protection\r\nDiseases\r\n\r\n1. Bacterial Blight\r\n• Symptoms : The germinating seedling turn brown - red and die. Irregular to round spots brown in colour with chlorotic halos, appear on leaves, and later spread to stem. \r\nStem may break, pods are also infected leading to shrivelled seeds.\r\n• Control Measures : i) Grow resistant varieties; ii) Use healthy and disease free seeds ; iii) In case of severe infection, crop may be sprayed with 0.2 % (2g/liter) copper oxychloride (Blitox).\r\n2. Cowpea Mosaic\r\n• Symptoms : It is caused by a virus transmitted by aphids. \r\nThe affected leaves become pale yellow and exhibit mosaic, vein banding symptoms. The affected leaves become reduced in size and show puckering. Pods are also reduced and become twisted.\r\n• Control Measures : i) Use healthy seed from healthy crop ; \r\nii) For controlling aphids spray Oxydemeton methyl 25 EC (Metasystox) @ 1 ml/liter or Imidacloprid 17. 8 SL @ 0. 2 ml/ liter of water and repeat the spray after 10 days of first spray.\r\n3. Powdery mildew\r\n• Symptoms : Powdery mildew are visible on all the aerial parts of the affected plants. Symptoms first start from leaves and then spread to stem, branches and pods. \r\nThis white growth consists of the fungus and its spores. Affected leaves become twisted and smaller in size.\r\n• Control Measures :  i) After harvest, collect the plants left in the field and burn them; ii) The disease can be controlled by spray of wettable sulphur @ 3g/liter or carbendazim @1 g/liter of water\r\nPests\r\n1. Cowpea pod borer\r\n• Nature of Damage : The caterpillar rolls the leaves and web these with the top shoot. Caterpillar bore into the pods and feed on the seeds, if flower and pods are not available larvae feed on foliage.\r\n• Control Measures : i) Collect and destroy the eggs and young larvae; \r\nii) The young caterpillar can be killed by dusting 2% methyl parathion @ 25 - 30 kg p er hectare or spray of quinalphos @2 ml/liter of water;\r\n iii) Fix 3 feet stick in the field @10/ha bird parches to attract predatory birds.\r\n2. Hairy caterpillar\r\n• Nature of damage: It is major insect of cowpea. It is cut juvenile plants and eat away all the green matter of the leaves.\r\n• Control Measures : i) Collect and burn the eggs and burn the eggs and larva of insect ; ii) The young caterpillar can be control by spray of Chloropyriphos or Quinolphos @ 2ml/liter of water.\r\n3. Aphids and Jassids\r\n• Nature of Damage : The adult and nymphs of these pests suck the juice from the leaves and the damage is more severe when the plants are young. \r\nAs a result of sucking of sap, the leaves turn brown and crumbled and the plant look sick.\r\n• Control Measures : i) Spray of Oxydemeton Methyl 25 EC (Metasystox) @ 1 ml/ liter or Dimethoate 30 EC @ 1.7 ml/ liter of water', 'Harvesting\r\n\r\nGreen pods for use as vegetable can be harvested 45 - 90 days after sowing depending on the variety. \r\n\r\nFor grains, the crop can be harvested in about 90-125 days after sowing when pods are fully matured. The crop should be then dried and threshed , \r\nthreshed grain should be dried in sun before storage. For fodder, the cutting of the crop depends upon the need and the stage of growth of the component crop sown with it. \r\nGenerally it should be done 40 - 45 days after sowing.\r\nYield:\r\nA good crop of cowpea yields about 12 - 15 q of grain and 50 - 60 q of straw per hectare. If the crop is raised for fodder purpose 250 - 350 q of green fodder is obtained per hectare.', NULL, NULL),
(3, 'Jowar', 'Land Preparation:\r\nDeep summer ploughing with mould board plough soon after rabi crop is harvested and leaving the soil exposed to sun until onset of monsoon is a common practice. \r\nWith the onset of monsoon the land should be ploughed twice by country plough. But the soil for grain crop should be pulverised for a fine tilth by harrowing and cross plankings. \r\nIf desired, field should be levelled before sowing so that rainwater may be well distributed throughout the field.\r\n', 'Sowing:\r\na) Sowing time:Sorghum crop is grown in almost all the seasons of the year. \r\nIn Northern India conditions it is grown in kharif season but in Southern India the crop is grown during Rabi and summer seasons. \r\nKharif crop should be sown soon after first break of monsoon rains i.e. nearly in last week of June. \r\nTherefore, the best sowing time is in last week of June to first week of July depending upon onset of monsoon. \r\nWhereas rabi jawar is sown in the month of October to November.\r\nb) Spacing:A spacing of 40-45 cm between the rows and 15-20 cm between the plants is quite satisfactory.\r\nc) Seed rate: Required plant population may be obtained by using a seed rate of 8-12 kg/ha. The seeds are sown about 3-4 cm deep in the furrows.\r\n', 'Seed treatment:\r\nThe seed treatment may be done by Agrosan GN, Thiram at the rate of 3g/kg of seed or sulphur at the rate of 5g/kg of seed. The seed is treated, dried and sown in the field.\r\n', 'Application of mannurs and fertilizers:\r\nSorghum is an exhaustive crop and it depletes soil fertility very fast, if proper care is not taken. \r\nThe fertilizer doses differ from type to type and nature of crop to be grown e.g. local varieties need less quantity than hybrid ones.\r\nSimilarly, irrigated crop requires higher doses than rainfed ones no matter whether it is a local or high yielding variety. \r\nConsidering all these points an optimum dose may be found out from the following details:\r\n an optimum dose of nitrogen for rainfed high yielding and local varieties of irrigated crop should be 60-80kg/ha while for irrigated high yielding varieties it should be between 120-150 kg/ha.\r\n In case of heavy soils one single application gives better results than split application but in case of light soils split application\r\n i.e. half basal and remaining half as top-dressing at knee-height stage or 30-35 days after sowing is preferred. \r\nUnder low rainfall or in rainfed areas top-dressing of nitrogen is not required. On an average a dose of 40-60 kg P2O5/ha is found to be good. \r\nPlacement at 4-6 cm depth has given better results. However, under normal conditions it is mostly basal placed. \r\nPotash at the rate of 40kg/ha applied at the time of field preparation gives good result.\r\n', 'Interculture :\r\nManual weedings and hoeings help in solving the weed problem but it is possible only during rabi and arid cropping seasons while rains do not permit the manual weeding \r\nor hoeing during kharif season. \r\nApplication of herbicides like atrazine @ 0.5 kg a.i./ha or Propazine @1.0 kg a.i./ha dissolved in 900-1000 liters of water, therefore, becomes obviously essential to control weeds. \r\nThese herbicides should be applied before emergence of sorghum seedlings.\r\n', 'Irrigation:\r\nSorghum is a fairly drought resistant crop and it does very well in areas receiving 50 cm well distributed rainfall but it cannot withstand waterlogging at any stage of crop growth.\r\n The most critical growth stages for irrigation are knee-height stage, flowering and grain filling stages at which the crop should be ensured for proper moisture conditions \r\nso that the crop does not suffer from moisture stress.\r\nContrary to this in kharif crop an efficient drainage must be provided as the crop cannot tolerate water accumulation for more than few hours, therefore,\r\n in low lying areas sowing of crop on 5-7cm high ridges or sowing in flat beds followed by light earthing is a remedy for stagnant water in the field.\r\n', 'Plant protection Measures:\r\nSorghum is found to be attacked by shoot-fly, stem-borer and midges mainly and they cause a considerable reduction in grain and stover yields. Following schedule may help in their control:\r\nA. Schedule of operations for control for insect/pest in sorghum crop \r\nShoot fly - \r\nChemical to be used: Carbofuran @ 1kg/100kg of seed, or 5% Disulfoton @ 3g/m row length, or 10% phorate grannule @ 5 g/m row length may be sown along with seeds. \r\nOr Spraying of Carbaryl (50%w.p) or Endrin (20% EC @ 2 kg or 1 kg/ha respectively twice i.e. 3-5 DAS & 8-12 DAS.\r\nPreventive: Use of higher seed rate removal & destruction of damaged seedlings 10-12 days after germination.\r\nStem Borer - \r\nChemical to be used: Application of grannules of any of 4% Edosulfan @ 8kg/ha, 4% Carbaryl @ 12kg/ha or 2% Lindane @ 15 kg/ha in leaf whorls \r\ntwice at 10 days interval starting from 20 days after germination.\r\nPreventive: Uprooting and burning of stubbles.\r\nMidge - \r\nChemical to be used: Spraying of Carbaryl (50%W.P) @ 3 kg/ha or Lindane (20EC) @ 1.25 litre or Endosulfan (30 EC) @ 1 litre in 500-600 litres of water/ha \r\nbefore flowering or 3 days after panicle emergence controls the insect.\r\nPreventive: Buming of panicle residues and chaff left after threshing.\r\nB. Disease and their control\r\nGrain smut - \r\nControl Measures: Seed treatment with organo-mercurial compound viz. Ceresan, Agrosan GN, etc.\r\nErgot - \r\n Control Measures:\r\n1. Seed treatment with any of the above-mentioned chemicals.\r\n2. Spraying of Ziram @0.15% or 1 kg/ha at boot leaf stage and its repetition at 5-7 days interval at least two times.\r\n3. Immersion of seed in 2% saline water, washing them with fresh water and drying in shade controls the disease.\r\nDowny midew - \r\n Control Measures:\r\n1. Avoid waterlogging.\r\n2. Removal and burning/burying of diseased plants.\r\n3. Application of Dithane Z-78 @ 0.2 % spray solution reduces secondary infaction.\r\n', 'Harvesting and threshing:\r\na) Harvesting\r\nThe high yielding varieties mature in about 100-120 days duration after which they are harvested. \r\nGenerally two methods of harvesting i.e. either stalk-cut or cutting of earheads by sickles are employed. However, in foreign countries sorghum harvesters are used. \r\nIn case of stock cut method the plants are cut from near the ground level, the stalks are tied into bundles of convenient removed from plants,\r\nwhile in later case the earheads, after their removal from the standing crop, are piled up on the threshing floor and after few days they are threshed. \r\nThreshing of earheds is done either by beating them with sticks or by trampling them under bullock’s feet. \r\nLater method is quicker and is practiced by majority of farmers who use to grow the crop on larger scale.\r\nb) Yield\r\nThe grain yield of improved varieties under assured water supply ranges between 25-35 quintals/ha and that of hay or karvi between 150-170 quintals/ha.\r\nc) Storage\r\nthe harvested grains are sun-dried and storage is conventional.\r\n', NULL, NULL),
(4, 'Maize', 'Soil and Seed Preparation:\r\n\r\n1. Seed Varieties:\r\n\r\nA. For Higher and Mid-altitudes (800 m above MSL)\r\n\r\n   Local Varieties:\r\n   - Local\r\n   - Local Yellow\r\n\r\n   High Yielding Varieties (HYVs):\r\n   - Vijay\r\n   - Kisan\r\n   - NLD White\r\n   - Naveen\r\n\r\nB. For Lower Altitudes (Below 800m)\r\n\r\n   - Vijay\r\n   - Kisan\r\n   - Diara\r\n   - Ganga Safed-2\r\n   - Ganga -101\r\n\r\n2. Preparation of field\r\nApplication of Fym or Compost:\r\nSpread 12.5 t/ha of FYM or compost or composted coir pith evenly on the unploughed field along with 10 packets of Azospirillum (2000 g/ha) and incorporate in the soil.\r\nField Preparation:\r\nPlough the field with disc plough once followed by cultivator ploughing twice, after spreading FYM or compost till a fine tilth is obtained.\r\nForming Ridges and Furrows or Beds:\r\n• Form ridges and furrows providing sufficient irrigation channels. The ridges should be 6 m long and 60 cm apart.\r\n• If ridges and furrows are not made, form beds of size 10 m2 or 20 m2 depending on the availability of water.\r\n• Use a bund former or ridge plough to economise cost of production.\r\n', 'Application of Fertilizer:\r\n• Apply NPK fertilizers as per soil test recommendation as far as possible. If soil test recommendation is not available adopt a blanket recommendation of 135:62.5:50 NPK kg/ha.\r\n• Apply quarter of the dose of N; full dose of P2O and K2O basally before sowing.\r\n• In the case of ridge planted crop, open a furrow 6 cm deep on the side of the ridge, at two thirds the distance from the top of the ridge.\r\n• Apply the fertilizer mixture along the furrows evenly and cover to a depth of 4 cm with soil.\r\n• If bed system of planting is followed, open furrows 6 cm deep at a distance of 60 cm apart.\r\n• Place the fertilizer mixture along the furrows evenly and cover to a depth of 4 cm with soil.\r\nWhen Azospirillum is used as seed and soil application, apply 100 kg of N/ha (25% reduction on the total N recommended by soil test).\r\nApplication of Micronutrient\r\n• 12.5 kg of micronutrient mixture formulated by the Department of Agriculture, Tamil Nadu, mixed with sand to make a total quantity of 50 kg/ha is to be applied.\r\n• Apply TNAU MN mixture @ 30 kg /ha as Enriched FYM (Prepare enriched FYM at 1:10 ratio of MN mixture & FYM ; mix at friable moisture &incubate for one month in shade).\r\n• (or) 5 kg Zn + 40 kg S + 1.5 kg B in deficient soils.\r\n• Zinc sulphate @ 37.5 kg/ha is recommended for hybrid maize in Zn deficient soils\r\n• Apply the mixture over the furrows and two thirds in the top of ridges, if ridge planting is followed.\r\n• If bed system of sowing is followed, apply the micronutrient mixture over the furrows.\r\n• Do not incorporate the micronutrient mixture in the soil.\r\n', 'Seed and Sowing\r\nSeed Rate: \r\nSelect good quality seeds and adopt the seed rate of 20 kg/ha for CO 1 and TNAU Maize Hybrid CO 6 and 25 kg /ha for COBC 1.\r\nSpacing\r\nAdopt a spacing of 25 cm between plants in the rows which are 60 cm apart.\r\nPopulation :  For varieties and hybrids 6 – 7 plants / sq. m. and\r\nFor baby corn, 8 – 9 plants / sq. m.\r\nSeed Treatment\r\nStep 1: \r\nUse pelleted seeds with insecticides (treat one kg of seeds with Chlorpyriphos 20EC or Monocrotophos 36 WSC or Phosalone 35 EC @ 4 ml + 0.5 gram gum in 20 ml of water) \r\nfor the control of stem borer or seed treatment with imidacloprid 70 WS 10 g/kg of seeds.\r\nStep 2:\r\nSeed treatment with Metalaxyl or Thiram @ 2 g/kg of seed for the control of downy mildew and crazy top\r\nStep 3:\r\nSeeds treated with fungicides may be treated with three packets (600 g/ha) of Azospirillum before sowing.\r\nSowing\r\n• Dibble the seeds at a depth of 4 cm along the furrow in which fertilizers are placed and cover with soil.\r\n• Put one seed per hole if the germination is assured otherwise put two seeds per hole  \r\n', 'Water Management:\r\nMaize crop is sensitive to both moisture stress and excessive moisture, hence regulate irrigation according to the requirement. \r\nEnsure optimum moisture availability during the most critical phase (45 to 65 days after sowing); \r\notherwise yield will be reduced by a considerable extent.\r\nHeavy soils\r\nStage No. of irrigation                       Days after sowing\r\n \r\nGermination & establishment 3 After sowing, Life irrigation -4th,12th day\r\nVegetative 2 25th, 36th day\r\nFlowering (Irrigate copiously) 2 48th,  60th day\r\nMaturity phase (Control irrigation) 2 72nd, 85th day\r\nLight soils\r\nGermination & establishment 3 After sowing, Life irrigation -4th ,12thday\r\nVegetative Phase 3 22nd ,32nd & 40th day\r\nFlowering phase (Irrigate copiously) 3 50th ,60th & 72nd day\r\nMaturity phase (Controlled irrigation) 2 85th , 95th day\r\n', 'Weed Management:\r\nHoeing and hand weeding on the 17th or 18th day of sowing\r\n• Apply Atrazine @ 0.25 kg/ha as pre-emergence on 3-5 DAS using Backpack/ Knapsack/ Rocker sprayer fitted with a flat fan nozzle using \r\n500 litres of water/ha followed by one hand weeding on 30-35 DAS. (or)\r\n• Apply Atrazine @ 0.25 kg/ha as pre-emergence on 3-5 DAS followed by 2,4-D @ 1 kg/ha on 20-25 DAS, using Backpack/Knapsack/Rocker \r\nsprayer fitted with a flat fan nozzle using 500 litres of water/ha.\r\n• In line sown crop, apply PE Atrazine @ 0.25 kg/ha on 3-5 DAS followed by Twin Wheel hoe weeder weeding on 30-35 DAS.\r\n• Apply herbicide when there is sufficient moisture in the soil.\r\n• Do not disturb the soil after herbicide application.\r\n• If pulse crop is to be raised as intercrop, do not use Atrazine. Spray Pendimethalin @0.75 kg/ha as pre emergence on 3-5 DAS.\r\n', 'After Cultivation\r\nThinning and Gap Filling\r\n• If two seeds were sown, leave only one healthy and vigorous seedling per hole and remove the other on the 12-15 days after sowing.\r\n• Where seedlings have not germinated, dibble presoaked seeds at the rate of 2 seeds per hole and immediately irrigate.\r\nHoeing, Hand-Weeding and Earthing Up\r\n• Hoe and hand-weed on the 30th day of sowing.\r\n• Earth up and form new ridges so that the plants come directly on the top of the ridges. This will provide additional anchorage to the plants.\r\nTop Dresssing with N\r\n• Place half of the dose of N on the 25th day of sowing along the furrows evenly and cover it with soil.\r\n• Place the remaining quarter of N on the 45th day of sowing\r\n', 'Plant protections:\r\n\r\n(A) Diseases:\r\nLeaf Blight: Manifestation of oval to round, yellowish-purple spots on leaves. The affected leaves dry up and appear as if burnt. \r\nIn severe cases, the plants may become stunted, resulting in poorly-formed ears.\r\nControl:\r\nThe crop can be sprayed with Dithane M-45 or Indofil @ 35-40 gms or Blue Copper @55 -60 gms in 18 litres water, 2 -3 sprays at 15 days interval, will effectively control the disease.\r\n \r\n(B) Insect Pests:\r\n1) Stem borer: These borers feed on leaves in the earlier stages. Later on they bore into the stem and cobs, rendering the plant unproductive.\r\nControl:\r\n- After harvest, the stalks and stubbles should be collected from the field and burnt.\r\n- Crop can be sprayed twice with Thiodan 35 EC @ 27 ml in 18 litres water, once 20-25 days after germination and the second spray at the time of grain formation (in endemic areas).\r\n \r\n2) Red Hairy Caterpillars: Caterpillars feed and destroy the whole plant if the attack is in the early stages of growth.\r\nControl:\r\n- Egg masses and young caterpillars should be collected as soon as detected, and destroyed.\r\n- The field should be ploughed out after the crop is harvested, so as to expose pupae.\r\n- Thiodan 35 EC @ 27 ml in 18 litres water should be sprayed only as last resort.\r\n \r\n3) Aphids: Tiny, soft bodied insects, usually green in colour. Nymphs and adults suck the sap from leaves and young shoots.\r\nControl:\r\nThe crop can be sprayed with Rogor 30 EC @ 18 ml in 18 litres water.\r\n \r\n4) Grass hoppers: Short-winged hoppers, laying eggs in the soil at a depth of 7.5 to 20 cms, adults feed on foliage.\r\nControl:\r\nThiodan 35 EC @ 25 ml or Ekalux 25 EC@ 28 mi in 18 litres water can be sprayed.\r\n \r\n5) Termites: These pests attack young seedlings as well as mature plants; attack is also visible on roots and lower parts of the plants.\r\nControl:\r\nThiodan 4 % Dust @ 12-15 kg per hectare is applied and mixed well with the soil.\r\n', 'Harvesting\r\nStage of Harvest:\r\nObserve the following symptoms, taking into consideration the average duration of the crop.\r\n• The sheath covering the cob will turn yellow and dry at maturity.\r\n• The seeds become fairly hard and dry.  At this stage the crop is ready for harvest.\r\nHarvesting the Crop:\r\n• Tear off the cob sheath by using the gunny needle and remove the cobs from the plant.\r\n• Carry out harvest operations at a single stage for easy transportation.\r\nThreshing the Cobs:\r\n• Dry the cobs under the sun till the grains are dry.\r\n• Use mechanical threshers or by running the tractor over dried cobs to separate the grains from the shank.\r\n• Clean the seeds by winnowing\r\n• Collect and store the dry grains in gunnies.\r\nYield:\r\nThe yield depends on the field management and seed variety, the quality seed can yield up to 2500 kg per hectare.\r\n', NULL, NULL),
(5, 'Bajra', 'Soil and Seed Preparation\r\n\r\n1. Seed varieties: \r\n• NBH-149, VBH-4 developed for Andhra Pradesh, Madhya Pradesh, Gujarat, Maharashtra are capable of producing 14% higher yield.\r\n• ICM4-155 gave higher yield than the standard check and adopted for all growing tracts of India.Also H-306, NH-338 and hybrid like MP-204, MP205 have been identified.\r\n\r\n2. Seed treatment:\r\nThe organo-mercurial compound Ceresan, Agrosan should be used @ 2.5-3 kg/ha to control seed borne diseases\r\n\r\nUnder rainfed areas application of organic manures such as FYM or compost helps in increasing the crop yield at the rate of 150-200 quintals/ha 80 –100 kg N:40-50 kgP:40-50kgK is \r\nrecommended dose for hybrid variety.\r\n\r\n3. Field Preparation: \r\nPlough with an iron plough twice and with country plough twice. Bring the soil into fine tilth. CHISELING FOR SOILS WITH HARD PAN: \r\n Chisel the soils having hard pan formation at shallow depths with chisel plough at 0.5m interval, first in one direction then in the direction perpendicular to the previous one, once in three years.\r\n', 'Sowing\r\nSeed rate and Spacing:-\r\n4-5 kg/ha for drilling method\r\n2.5-3 kg/ha for dibbling method\r\nSpacing 40 –45 cm between rows, 10 –15 cm within rows.\r\nFertilizers are applied in split doses, half of nitrogen, full phosphorus and potash should be basal placed at the time of sowing . \r\nThe organic manures must be applied 20 days before the sowing of the seeds for full decomposition. \r\nOne fourth dose of nitrogen should be applied about 30 days and 60 days after sowing.\r\n', 'APPLICATION OF FYM OR COMPOST\r\nSpread 12.5 t/ha of FYM or compost or composted coir pith uniformly on unploughed soil. \r\nIncorporate the manure by working the country plough and apply Azospirillum to the soil @ 10 packets per ha (2000 g) and \r\n10 packets (2000g) of phosphobacteria (or) 20 packets (4000g) of azophos with 25kg of soil and 25 kg of FYM.\r\n', 'FORMING RIDGES AND FURROWS/BEDS\r\n• Form ridges and furrows (using 3 ridges) 6 m long and 45 cm apart. If pulses is intercropped, form ridges and furrows 6 m long and 30 cm apart.\r\n• If ridge planting is not followed, form beds of the size 10 m2 or 30 m2 depending upon water availability.\r\n• Form irrigation channels.\r\n• To conserve soil moisture under rainfed condition, sow the seeds in flat and form furrows between crop rows during intercultivation on third week after sowing.\r\n', 'APPLICATION OF FERTILIZERS\r\nApply NPK fertilizers as per soil test recommendations as far as possible. If soil test recommendation is not available follow the blanket recommendation of 70:35:35 kg N,\r\n P2O5, K2O/ ha for all varieties. For hybrids, apply 80 kg N, 40 kg P2O5 and 40 kg K2O per ha.\r\n Apply the recommended N in three splits as 25:50:25 per cent at 0,15 and 30 DAS and full dose of phosphorus and potassium basally.  \r\nCombined application of azospirillum and phosphobacteria or azophos along with 75 per cent of the recommended level of N and P is recommended for rainfed conditions.\r\nMethod of application:\r\n For transplanted crop, open a furrow more than 5 cm deep on the side of the ridge (1/3 distance from the bottom), place the fertilizer and cover.  \r\nFor the direct sown crop, mark the lines more than 5 cm deep 45 cm apart in the beds. Place the fertilizer below 5 cm depth and cover upto 2 cm from the top before sowing. \r\nIn the case of intercropping with pulses, mark lines more than 5 cm deep 30 cm apart in the beds. \r\nApply fertilizer only in the rows in which cumbu is to be sown and cover upto 2 cm. \r\nWhen azospirillum inoculant is used for seeds, seedlings use only 50 kg N/ha for variety, 60 kg N/ha for hybrid, as soil application in other words, reduce 25% N of soil test recommendations.\r\nAPPLICATION OF MICRONUTRIENT MIXTURE\r\nApply 12.5 kg/ha of micronutrient mixture formulated by the Department of Agriculture. \r\nMix the mixture with enough sand to make 50 kg and apply on the surface just before planting/after sowing and cover the seeds. \r\nBroadcast the mixture on the surface to seed line. If micronutrient mixture is not available apply 25 kg of zinc sulphate per ha. Mix the chemical with enough sand to make 50 kg and apply as above.\r\n', 'WEED MANAGEMENT\r\nTransplanted crop\r\nSpray PE Atrazine 0.25 kg/ha on 3 DAT followed by one hand weeding on 30 - 35 DAT. If herbicide is not used hand weeding twice on 15 DAT and 30 - 35 DAT.\r\nDirect Sown crop\r\n• Apply the PE Atrazine 0.25 kg/ha on 3 DAS as spray on the soil surface using Back-pack/Knapsack/Rocker sprayer fitted with flat type nozzle using 500 litres of water/ha.\r\n• Apply herbicide when there is sufficient moisture in the soil.\r\n• Hand weed on 30 - 35 days after sowing if pre-emergence herbicide is applied.\r\n• If pre-emergence herbicide is not applied hand weed twice on 15 and 30 days after sowing.\r\n', 'Irrigation:\r\nBajra is grown rainfed and crop being drought resistant hardly needs any irrigation, however it is observed that the yield may be significantly\r\n increased by irrigating the crop at critical growth stages like maximum tillering, flowering and grain filling stage. Therefore light irrigations and efficient drainage is very essential for bajra production.\r\n', 'THINNING AND GAP FILLING\r\nIn direct sown crop after 1st weeding at the time of irrigation, gap fill and thin the crop to a spacing of 15 cm between plants; cowpea crop to \r\n20 cm between plants and other pulses crops to 10 cm between plants.\r\n', 'Plant protection measures\r\na) Insect pests:\r\nStem bores and grasshoppers are serious pests of bajra controlled by two sprayings with 2 litres of Eldrin 20 c.c and grasshoppers may be controlled by dusting the crop with BHC 5 percent.\r\nb) Diseases:\r\nDowny mildew- for controlling this disease seed treatment with fungicide like Dithane Z-78 or M-45 @ 2.0kg/ha in 800-1000 lit. of water.\r\nSmut- Treatment with Ceresan or Thirum @ 1-2 g/kg seeds is effective.\r\nErgot- Seed treatment with 20% common salt solution followed by washing with fresh water and then treating with Ceresan or Thirum @ 1-2 g/kg seeds is effective\r\n', 'Harvesting and Storage:\r\nHarvesting and threshing:\r\nThe crop is harvested when grains become hard enough and contain moisture. Two methods are adopted for harvesting the crop Cutting earhead\r\ni) from standing crop followed by cutting of remaining plants later\r\nii) Cutting of entire plants by sticks and stalking the plants for five days in sun for obtaining grains. \r\nGrains are separated either by beating the earheads with sticks or by trampling the earheads under bullock feet.\r\n \r\nStorage:\r\nThe separated grains must be cleaned and dried in sun to bring about 12-14% moisture after which the grains may be bagged and stored in a moisture proof store.\r\n \r\nYield: Irrigated crop yields 30-35 quintals/ha, while unirrigated crop yield 12-15 quintals/ha\r\n'),
(6, 'Peanuts', 'Sowing Preparation:\r\n1. Plot design: When testing for yield and quantitative characters, \r\ntreatments are to be randomized and arranged in the plots in blocks.\r\n The plot size is four rows of 4m length, with 30 cm between rows and 10 cm between plants.\r\n2. Selection of seed: Bold and well-filled pods are selected for shelling about one week before sowing. \r\nThe viability of the kernels may deteriorate after being shelled and stored for a long time and are more subject to storage pest damage.\r\n The plants produced from bold kernels were found to be superior to those from correspondingly smaller kernels in their rate of emergence,\r\n number of successful seedlings, number of primary branches and leaves, and dry mass of roots, \r\nshoots, total dry matter, and pod yield\r\n3. Seed treatment:To control pathogens causing seed and seedling diseases, \r\nit is necessary to coat the seed before sowing with either Thiram® \r\n(a.i. 5 0 % @ 3 g kg -1 seed) or Bavistin® (a.i. 5 0 % @ 2 g kg’ 1 seed). \r\nSeed may be inoculated at the time of sowing by field inoculation to ensure good nodulation where soil has been found to contain few rhizobia.\r\n4. Seed rate and spacing. The seed rate depends on the variety,\r\n runner or bunch type, the seed mass, and the germination rate of the seed-lot. \r\nThe recommended population for bunch varieties is 330 000 plants ha -1 (about one plant per 30 x 10 cm). \r\n In the case of semi spreading and spreading varieties the recommended population\r\n is 250 000 plants ha -1 (one plant per 40 x 10 cm). \r\n5. Seed packets: When sowing by hand is done the calculated amount of \r\nseed for each row is separately packeted and the packets for each plot are\r\n temporarily fastened together. In case of machine sowing, seed packets are \r\narranged by groups of rows for continuous sowing\r\n', 'FORMING BEDS\r\n\r\nForm beds of size 10 m2 to 20 m2 depending upon the slope of the land and type of soil.\r\n Wherever tractor is engaged, bed former may be used.\r\nOr Ridges and furrows may be laid at 60cm spacing between ridges and sowing taken on both sides of the ridge\r\nOr Raised bed with a width of 60cm and with a furrow of 15cm on either side may be formed and sowing taken on the raised bed', 'APPLICATION OF MICRONUTRIENTS\r\n\r\nMix 12.5 kg/ha of micronutrient mixture developed by Department of Agriculture with enough dry sand to make a total quantity of 50 kg/ha. Broadcast evenly on the soil surface immediately after sowing. Do not incorporate micronutrient mixture in to the soil.', 'NUTRITIONAL DISORDER\r\n\r\nZinc deficiency:\r\n\r\nApply 25 kg ZnSO4/ha as basal.\r\nIf soil analysis shows less than 1.3 ppm of zinc, soil application of 25 kg ZnSo4 is recommended.\r\nReduce ZnSO4 application from 25.0 kg ha-1 to 12.5 kg ha-1 if FYM is applied @ 12.5 t ha-1 .\r\nFor the standing crop, less than 39.4 ppm of zinc in leaves, foliar spray of 0.5% ZnSo4 is recommended.\r\nIron deficiency: spray 1% FeSo4 on 30, 40 and 50 days after sowing.\r\n\r\nBoron deficiency: Apply Borax 10 kg + Gypsum 400 kg/ha at 45th day after sowing.', 'INTERCROPPING\r\n\r\nRaise one row of cowpea for every five rows of groundnut wherever red hairy caterpillar is endemic.\r\nRaise intercrops like redgram, blackgram, sunflower, gingelly or other pulses.\r\nCumbu can be raised as intercrop.\r\nGroundnut + Gingelly or Groundnut + Blackgram in the ratio of 4:1 or Groundnut + Cowpea at 6:1 ratio and Groundnut + Sunflower at 6:2 ratio may be raised.', 'WEED MANAGEMENT\r\n\r\nPre-sowing: Fluchloralin at 2.0 l/ha soil applied and incorporated.\r\nPre-emergence: Fluchloralin 2.0 l/ha applied through flat fan nozzle with 900 l of water/ha followed by irrigation. After 35 - 40 days one hand weeding may be given.\r\nIf no herbicide is applied two hand weeding and hoeing are given on 20th and 40th day after sowing.\r\n', 'EARTHING UP\r\nAccomplish earthing up during second hand weeding/late hand weeding (in herbicide application).\r\nNOTE: i) Earthing up provides medium for the peg development  ii) Use the improved hoe with long handle which can be worked more efficiently in a standing position. iii) Do not disturb the soil after 45th day of sowing as it will affect pod formation adversely.', 'APPLICATION OF CALCIUM SULPHATE (GYPSUM)\r\n\r\nApply gypsum @ 400 kg/ha by the side of the plants on 40th to 70th day depending upon soil moisture.\r\nApply gypsum, hoe and incorporate it in the soil and then earth up.\r\nAvoid gypsum in calciferous soils.\r\nGypsum is effective in soils deficient in calcium and sulphur.\r\nNOTE: Application of gypsum encourages pod formation and better filling up of the pods.\r\n\r\nApplication of gypsum at the rate of 50 % basal both in rainfed and irrigated condition reduces Khadhasty malady and pod scab nematode\r\n\r\nCombined nutrient spray\r\n                Pod filling is a major problem especially in the bold seed varieties. To improve pod filling spraying of nutrient solution is to be given. This can be prepared by soaking DAP 2.5 kg, Ammonium sulphate 1 kg and borax 0.5 kg in 37 lit of water overnight. The next day morning it can be filtered and about 32 litre of mixture can be obtained and it may be diluted with 468 lit of water so as to made up to 500 litre to spray for one ha. Plano fix at the rate of 350 ml. can also be mixed while spraying. This can be sprayed on 25th and 35th day after sowing.', 'Harvesting:\r\nHere are three ways of harvesting in Peanut Farming :\r\n1. Apply sprinkler irrigation for an hour and manually pull the plants.\r\n2. Provide a light surface irrigation 2 – 3 days before harvest a n d use a blade harrow that cuts the plant roots 1 2 – 1 5 cm below the soil surface. Then manually pull the plants.\r\n3. When irrigation water is scarce, use a plow or tractor-driven digger to loosen the soil. Then manually remove the plants.\r\n', NULL),
(7, 'Soyabean', 'Sowing:\r\nTwo cropping seasons of soybean Kharif and spring.\r\nIn case of Kharif season most common time of sowing is onset of monsoon or last week of June to first week of Jully while spring sowing is done between 15th of February and 15th of March.\r\nMethod of sowing - Line sowing by seed drill followed as it needs less seeds/ha, weeding and hoeing may be done conveniently\r\nSeed treatment- Seeds are treated with rhizobium culture.\r\nSpacing- A 45-60 cm X 2.5 cm spacing is good for Kharif crop and 30-45 X 2.5 cm during spring season.\r\nSeedling depth- 2-3 cm in heavy soils and 3-4 cm light soils.\r\n \r\nSeed rate- Soyabean grown for grain purpose needs about 20-30 kg seed/ha but for fodder crop needs about 70-75 kg/ha during Kharif season and 100-120 kg/ha during spring\r\n', 'Fertilizers-\r\nSoyabean gives higher positive response to applied nitrogen over symbiotically fixed atmospheric nitrogen through its roots alone which proves that nitrogen fixed by soyabean roots is not enough for its and development. Crop is supplied with 10-15% of total nitrogen requirement.\r\nApplication of 25-30 C.L.FYM at the time of sowing proved better results.50 Kg N + 100 Kg P2O5, 20 kg sulphur per ha. Also 25 Kg Zinc sulphate and 10 Kg Borax should be applied.\r\n', 'Water requirement-\r\nIn case of Kharif crop irrigation is not needed and it is grown rainfed. However during summer the crop can be grown only under assured irrigation and it needs about 5-6 irrigations. The crop should be irrigated at the following critical growth stages to minimize water.\r\n1. Sprouting stage\r\n2. Flowering pod initiation and bean filling stages are important from yield point of view\r\n', 'Cultivation Practices\r\nAt the time of sowing one deep ploughing two harrowings should be given tomaintain optimum moisture at sowing.\r\nAfter care\r\nKeep plot weed free upto 40 days by one or two hoeings, two weedings upto 40 days. Herbicides such as Toke 25, 1.5 to 2 Kg/ha pre-emergence before sowing controls the weeds.\r\nCrop Rotation and inter cropping\r\nMixed with maize, sesamum etc. Inter cropping with Tur, Cotton, drilled paddy sorghum, cotton, sugarcane. It can be rotated with wheat, potato, gram, tobacco\r\nHarvesting\r\nCrop harvested at proper stage by usual method, threshing machine.\r\nSigns of maturity- Dropping of leaves, leaves turn yellow, moisture content of seed 15%\r\nYield\r\n-Average yield 25g/ha\r\n', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Tomato', 'Prepare the ground\r\n\r\nIf planting in-ground, loosen the soil to create a welcoming bed for roots to grow. Add agricultural lime if you’ve done a soil test and the results recommend it. In addition, add 3 or 4 inches of compost or other organic matter, especially in clay or sandy soils. If you’re going to grow your tomato plant in a container, fill the container with a premium quality potting mix. Then dig a hole that is as deep as the plant is tall because you are going to bury two-thirds of the plant.\r\n', 'Bury Two-Thirds of the Tomato Plant\r\nSet the plant in the hole deeply enough so that two-thirds of it is buried. Laying the plant on its side is okay, but angle it so that very top remains above ground. Roots will sprout all along the buried stem to make a stronger plant. You can pinch off the lower leaves if you prefer, but it is not necessary. When you’re done, two-thirds of the entire plant will be buried; only the top of the tomato plant will remain above ground\r\n', 'Fertilize\r\nYou’ve done important work to make sure you’re planting in great soil, but there’s a complementary step for best results: Mix plant food in with the pile of soil that will go back into the hole. It’s best to fertilize according to recommendations from a soil test, but if you don’t have that, use a continuous-release fertilizer. which will help provide the nutrition your tomato plant will need to produce the best harvest. Be sure to follow label directions.\r\n', 'Step 4:Watering\r\nIt is very important to water in the plant to help settle the soil.\r\nTip: Consider a Soaker Hose or Drip System\r\nThis is optional but recommended: Place a soaker hose or drip irrigation system in your beds or containers for watering. This conserves water, and very importantly, helps keep the foliage dry. Wet foliage encourages diseases, which are the biggest challenge to growing tomatoes in many areas, especially in humid climates.\r\n', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Citrus', 'Land preparation \r\nLand needs to be thoroughly ploughed and levelled. In hilly areas, planting is done on terraces against the slopes and on such lands, high density planting is possible as more aerial space is available than in flat lands. Since citrus trees are highly sensitive to water logging and water stagnation during rainy season providing drainage channels of 3-4 feet depth along the slopes around the orchard is essential.\r\n', 'Planting \r\nThe best season of planting is June to August. Pits of the size of 1m x 1m x 1m may be dug for planting seedlings. 15-20 kg of FYM and 500 g of super phosphate is applied per pit while planting. With good irrigation system, planting can be done in other months also. \r\n', 'Irrigation\r\nCitrus requires critical stage watering in the initial year. It further reduces fruit drop and increases the fruit size. Diseases like root rot and collar rot occur in flooded conditions. Light irrigation with high frequency is beneficial. Irrigation water containing more than 1000 ppm salts is injurious. Quantity of water and frequency of irrigation depends on the soil texture and growth stage. Micro irrigation systems not only saves water and nutrients but also ensure good retention of fruits during crucial stages of crop growth in March – April even in situations where water is not a limitation. \r\n', 'Manures and fertilizers per plant\r\nN is applied in two doses during March and October.  FYM, P2O5 and K2O are to be applied in October.\r\nSpray Zinc sulphate at the rate of 0.5% (500 g/100 lit of water) thrice in a year (March, July and October) after the emergence of new flushes.\r\n', 'After cultivation\r\nThe branches of main stem up to 45 cm from ground level have to be removed. Green leaves @ 30 kg per tree are applied once in 3 months.', 'Intercropping\r\nLegumes and vegetable crops can be raised during pre-bearing age.', 'Growth regulator\r\nTo increase the fruit set, spray 2, 4 – D @ 20 ppm during flowering stage. For fruit retention, spray 2, 4 – D @ 20 ppm or NAA @ 30 ppm after fruit set (marble size).', 'Plant protection\r\nPests\r\nLeaf miner\r\nThe pest can be controlled by spraying Dichlorvos 76 WSC @ 1 ml/lit or Dimethoate 30 EC @ 2 ml/lit or Monocrotophos 36 WSC @ 1.5 ml/lit or neem seed kernel extract (NSKE) @ 50g/lit or 3 % neem cake extract or neem oil.\r\n\r\nLeaf caterpillar\r\nWhen the infestation is moderate to severe, Quinalphos25 EC @ 2ml/lit is sprayed to control to control the pest. The larvae can be hand picked and destroyed.\r\n\r\nSucking pests\r\n\r\nWhite fly\r\n: For control, spray Quinalphos 25 EC @ 2 ml/lit\r\nBlack fly : For control, spray Monocrotophos 36 WSC @ 1.5 ml/lit\r\nAphids : Spray methyl Demeton 25 EC or Monocrotophos @ 1 ml/lit or neem oil 3ml/lit or Fish oil resin soap 30 g/lit or Quinalphos25 EC 2ml/lit to control the pest.\r\nRust mite : For control, spray Dicofol 18.5 EC @ 2.5 ml/lit or Wettable sulphur 50 WP @ 2 g/lit.\r\nFruit sucking moth\r\nTinospora weed host have to be destroyed. Bait with fermented molasses plus Malathion 50 EC at the rate of 1 ml/lit can be used for control. Bag the fruits with polythene bags punctured at the bottom. Apply smoke and set up light traps or food lures (pieces of citrus fruits) for control.\r\n\r\nShoot borer\r\nPrune the withered shoots 4 cm below the dried portions and spray Monocrotophos 36 WSC @ 1 ml/lit or Quinalphos25 EC @ 1.5 ml/lit or Carbaryl 50 WP @ 2 g/lit.\r\n\r\nStem borer\r\nThe branches containing grubs have to be pruned. Plugging the fresh holes with cotton soaked in Monocrotophos solution mixed @ 5 ml/20 ml of water will also control the pest.\r\n\r\nFruit fly\r\n\r\nTo control fruit fly, spray Malathion 50 EC @ 1 ml/lit or Fenthion 100 EC @ 1 ml/lit with 1% crude sugar (10 g/lit). Set up bait with Methyl eugenol 0.1% solution mixed with Malathion 50 EC 0.05% between 6 a.m. and 8 a.m.\r\nUse polythene bags fish meal trap containing 5 g of wet fish meal + 1 ml Dichlorvas in cotton. 50 traps are required/ha, fish meal and Dichlorvos soaked cotton have to be renewed once in 20 and 7 days respectively.\r\nMealy bugs\r\n\r\nDebark the branches and apply methyl parathion paste.\r\nUse sticky trap on the fruit bearing shoots at a length of 5 cm.\r\nUse Dichlorvos (0.2%) in combination with fish oil resin soap (25g/lit) as spray or for dipping the fruits for two minutes.\r\nSingle soil application of Phorate 10G @ 50g per tree around the base at the time of pruning is essential.\r\nRelease the predator, Cryptolaemus montrouzieri for controlling the pest.\r\nMark the mealy bug infested plants early in the season.\r\nFollow ant control methods such as destruction of ant holes, red ant nests and skirting of citrus trees after fruit harvest which prevents the ant migration through side branches.\r\nRelease beetles @ 10/tree once the patrolling of the ants on the trunk is stopped.\r\nMake periodic check during the first fortnight and put dried leaf mulch around the tree trunk 20 days after the release of the beetles to facilitate pupation of the full grown grubs.\r\nMake one to three releases per annum depending on the mealy bug populations.\r\nNematodes\r\nApply Carbofuran 3 G @ 75 g/tree to control citrus nematodes in severe infestations. Apply 20 g Pseudomonas fluorescens formulation per tree at a depth of 15 cm and 50 cm away from the trunk once in four months. Soil application of Phorate @ 2 g followed by drenching with 1 % of Metalaxyl plus Mancozeb 72 WP @ 50 ml/ cutting/ poly bag/ kg of nursery soil is done for controlling citrus decline.\r\n\r\nDiseases\r\nTwig blight\r\nPrune dried twigs and spray 3% Copper oxychloride or 0.1% Carbendazim at monthly intervals to reduce the spread of disease.\r\n\r\nScab\r\nSpray 1% Bordeaux mixture to control the disease. \r\n\r\nCanker\r\nImmediately after pruning one spray of Copper oxychloride (COC) 0.3% is done followed by 4 sprayings with Streptocyclin100 ppm + COC 1.5 kg/ha at monthly intervals. ', 'Harvest\r\nThe crop starts bearing from 3rd year after planting.\r\n\r\nPost harvest treatment\r\nTreating the fruits with 4% wax emulsion followed by pre-packing in 200 gauge polythene bags with 1 % ventilation improves the shelf life for more than 10 days.\r\n\r\nYield\r\nThe crop yields about 25 t/ha/year.', NULL);
INSERT INTO `crop_calendar` (`id`, `crop_name`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`) VALUES
(10, 'Cotton', 'PREPARATION OF THE FIELD\r\n\r\ni) Prepare the field to get a fine tilth.\r\nii) Chiselling for soils with hard pan: Chisel the soils having hard pan formation at shallow depths with chisel plough at 0.5 M interval, first in one direction and then in the direction perpendicular to the previous one, once in three years. Apply 12.5 t farm yard manure or composted coir pith/ha besides chiselling to get increased yield\r\niii) If intercropping of Greengram/Soybean is proposed, prepare the main field, so as to provide ridges and furrows to take up sowing 20 days prior to cotton sowing.\r\n', 'ACID-DELINTING OF COTTON SEEDS\r\n• Choose plastic bucket bucket for acid delinting of seeds.\r\n• Do not use earthen wares, metal vessels, porcelain wares or wooden drum for acid delinting as concentrated sulphuric acid will corrode them.\r\n• Put the required quantity of seeds in the container and add commercial concentrated sulphuric acid at the rate of 100 ml per kg of fuzzy seed.\r\n• Stir vigorously and continuously with a wooden stick for 2 to 3 minutes till the fuzz sticking to the seeds is completely digested and the seed coat attains a dark brown colour of coffee powder.\r\n• Add water to fill the container. Drain the acid water and repeat the washing 4 or 5 times to remove any trace of acid.\r\n• Remove the floating, ill-filled and damaged seeds while retaining the healthy and good seeds which remain at the bottom.\r\n• Drain the water completely and dry the delinted seeds in shade\r\n', 'SOWING\r\n• Dibble the seeds at a depth of 3-5 cm on the side of the ridge 2/3 height from the top and above the band where fertilisers and insecticides are applied, maintaining the correct spacing and then cover seeds with soil. In the case of intercropping, sow the seeds of the intercrop in between the paired rows of cotton in a row of 5 cm apart and cover the seeds.\r\n• Sow the required number of seeds in each hole.\r\n', 'WEED MANAGEMENT\r\n• Apply Pendimethalin @ 3.3 l/ha  three days after sowing, using a hand operated sprayer fitted with deflecting or fan type nozzle. Sufficient moisture should be present in the soil at the time of herbicide application.  This will ensure weed free condition upto 40 days.\r\n• One hand weeding on 45 DAS will keep weed free environment upto 60 DAS.\r\n• Hoe and hand weed between 18th to 20th day of sowing, if herbicide is not applied at the time of sowing.\r\n', 'GAP FILLING\r\n\r\nTake up gap filling on the 10th day of sowing.\r\n• In the case of TCHB 213, raise seedlings in polythene bags of size 15  x 10 cm.\r\n• Fill the polythene bags with a mixture of FYM and soil in the ratio of 1:3.\r\n• Dibble one seed per bag on the same day when sowing is taken up in the field.\r\n• Pot water and maintain.\r\n• On the 10th day of sowing, plant seedlings maintained in the polythene bags, one in each of the gaps in the field by cutting open the polythene bag and planting the seedling along with the soil intact and then pot water.\r\n', 'IRRIGATION\r\nSkip furrow irrigation\r\n1. Suited to heavy soils like clay and loam\r\n2. Alternate furrows should be skipped and may be converted to ridges having a wide bed formation.\r\n3. Short term crops like pulses may be raised in wider bed without exclusive irrigation.\r\n4. Water saving is 50% when compared to control.\r\n', 'HARVESTING\r\n1. Harvest at frequent intervals, at less than 7 days interval.\r\n2. Harvest in the morning hours upto 10 to 11 a.m only when there is moisture so that dry leaves and bracts do not stick to the kapas and lower the market value.\r\n3. Pick kapas from well burst bolls only.\r\n4. Remove only the kapas from the bolls and leave the bracts on the plants.\r\n5. After kapas is picked, sort out good puffy ones and keep separately.\r\n6. Keep stained, discoloured and insect attacked kapas separately.\r\n', NULL, NULL, NULL),
(11, 'Rice', 'SEED SELECTION\r\nProper seed selection based on the cultivation environment is the first step towards ensuring that the highest possible yield is achieved.\r\nSelecting good quality seed has many advantages and will help to;\r\n• Improve yield by 5 – 20%\r\n• Improve germination by more than 80%\r\n• Increase resistance to disease and pest attacks\r\n• Maintain uniformity in plant size\r\n• Have fewer weed problems\r\n', 'LAND PREPARATION\r\nThe main purpose of land preparation is to have the soil in optimum physical condition for growing rice. Plowing and tilling of land is done to predetermined levels that allow rice plants to develop a good root system.\r\nThe proper preparation of land for sowing is achieved via tractors (mechanical means) or with the help of water buffaloes. Land preparation also includes land leveling to ensure water reaches all areas planted.\r\n', 'CROP ESTABLISHMENT\r\nTransplanting\r\nTransplanting is the more popular plant establishment technique in Sri Lanka and much of Asia. Transplanting occurs when pre-germinated seedlings are transferred from a seedbed to the wet field. It requires less seed and is an effective method for controlling weeds. A disadvantage is that the practice of transplanting is more labor intensive.\r\nPrior to transplanting, seedlings are established in a separate nursery area. They grow between 20 and 80 days before being transplanted to the field. Seedlings can be transplanted by either machine or hand.\r\nDirect seeding\r\nDirect seeding is when dry seed or pre-germinated seeds and seedlings are sown by hand or planted by machine.\r\n', 'WATER MANAGEMENT\r\nCultivated rice is extremely sensitive to water shortages and when the soil water content drops below saturation, most rice varieties develop symptoms of water stress. Good water management practices are needed to keep usage at optimum levels and to maximize rice yield.\r\nPre-planting steps that help with water management include;\r\n \r\n• Proper creation and maintenance of field channels for water delivery\r\n• Land levelling that allows water to be evenly distributed and retained\r\n• Tilling operations that include rice field bund preparation, water puddling and maintenance\r\n', 'Manures and Fertilizers in Rice Cultivation:\r\nAs rice crop responds very well to manure and chemicals, it is essential to fo for proper manures and fertilizers in paddy cultivation.\r\n• Farm yard manure/Compost: 10 to 15 cartloads.\r\n• Nitrogen: 100 to 150 Kg/Ha.\r\n• Phosphorous: 50 to 60 Kg P2O5/Ha.\r\n• Potash: 40 to 50 Kg KO/Ha.\r\n• Zinc Sulphate: 25 Kg/Ha.\r\n• Green Manuring Crops: Sanai, Dhaincha and Moong/Urad.\r\n', 'Harvesting:\r\nHarvesting is the process of collecting the mature rice crop (rice paddy or rough rice) from the field. Depending on the variety, a rice crop usually reaches maturity at around 115-120 days after crop establishment.\r\nHarvesting activity includes cutting, stacking, handling, threshing, cleaning, and hauling. Good harvesting methods help maximize grain yield and minimize grain damage and deterioration.\r\nManual harvesting is very effective when a crop has fallen over. However, it is labour intensive. Manual harvesting usually requires 40 to 80 man-hours per hectare and it takes additional labour to manually collect and haul the harvested crop.\r\nMechanical harvesting using reapers or combine harvesters is the other option, but is not so common due to the availability and cost of machinery.\r\nAfter cutting, the rice must be threshed to separate the grain from the stalk and cleaned. Threshing can be done by hand or machine.\r\n\r\nYield\r\nTotal yield can vary depending on various factors such as chosen variety, soil type, cultivation method, farm management practices etc. On average, with modern improved varieties, you can expect about 1500 to 2000 kg per acre.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disease_detection`
--

CREATE TABLE `disease_detection` (
  `id` int(3) NOT NULL,
  `name` varchar(60) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `cause` varchar(500) NOT NULL,
  `treatment_measures` varchar(3500) NOT NULL,
  `cost` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease_detection`
--

INSERT INTO `disease_detection` (`id`, `name`, `description`, `cause`, `treatment_measures`, `cost`) VALUES
(1, 'Apple Scab', 'A serious disease of apples and ornamental crabapples, apple scab (Venturia inaequalis) attacks both leaves and fruit. The fungal disease forms pale yellow or olive-green spots on the upper surface of leaves. Dark, velvety spots may appear on the lower surface. Severely infected leaves become twisted and puckered and may drop early in the summer.\r\nApple scab overwinters primarily in fallen leaves and in the soil. Disease development is favored by wet, cool weather that generally occurs in spring and early summer. Fungal spores are carried by wind, rain or splashing water from the ground to flowers, leaves or fruit. During damp or rainy periods, newly opening apple leaves are extremely susceptible to infection. The longer the leaves remain wet, the more severe the infection will be. Apple scab spreads rapidly between 55-75 degrees F.', 'Ascomycete fungus Venturia inaequalis', '1. Choose resistant varieties when possible.\r\n2. Rake under trees and destroy infected leaves to reduce the number of fungal spores available to start the disease cycle over again next spring.\r\n3. Water in the evening or early morning hours (avoid overhead irrigation) to give the leaves time to dry out before infection can occur.\r\n4. Spread a 3- to 6-inch layer of compost under trees, keeping it away from the trunk, to cover soil and prevent splash dispersal of the fungal spores.\r\n5. For best control, spray liquid copper soap early, two weeks before symptoms normally appear. Alternatively, begin applications when disease first appears, and repeat at 7 to 10 day intervals up to blossom drop.\r\n6. Bonide® Sulfur Plant Fungicide, a finely ground wettable powder, is used in pre-blossom applications and must go on before rainy or spore discharge periods. Apply from pre-pink through cover (2 Tbsp/ gallon of water), or use in cover sprays up to the day of harvest.\r\n7. Organocide® Plant Doctor is an earth-friendly systemic fungicide that works its way through the entire plant to combat a large number of diseases on ornamentals, turf, fruit and more. Apply as a soil drench or foliar spray (3-4 tsp/ gallon of water) to prevent and attack fungal problems.\r\n8. Containing sulfur and pyrethrins, Bonide® Orchard Spray is a safe, one-hit concentrate for insect attacks and fungal problems. For best results, apply as a protective spray (2.5 oz/ gallon) early in the season. If disease, insects or wet weather are present, mix 5 oz in one gallon of water. Thoroughly spray all parts of the plant, especially new shoots.\r\n', '1. Sulfur Plant Fungicide - 991.93 Rupees per 18 kgs'),
(2, 'Apple Black rot', 'Black rot is a disease of apples that infects fruit, leaves and bark caused by the fungus Botryosphaeria obtusa. It can also jump to healthy tissue on pear or quince trees, but is typically a secondary fungus of weak or dead tissues in other plants.\r\nEarly symptoms are often limited to leaf symptoms such as purple spots on upper leaf surfaces. As these spots age, the margins remain purple, but the centers dry out and turn yellow to brown. Over time, the spots expand and heavily infected leaves drop from the tree. Infected branches or limbs will show characteristic red-brown sunken areas that expand each year.', 'Black rot is caused by the fungus Diplodia seriata (syn Botryosphaeria obtusa). The fungus can infect dead tissue as well as living trunks, branches, leaves and fruits. The black rot fungi survive winters in branch cankers and mummified fruit (shriveled and dried fruit) attached to the tree.', 'Treating black rot on apple trees starts with sanitation. Because fungal spores overwinter on fallen leaves, mummified fruits, dead bark and cankers, it’s important to keep all the fallen debris and dead fruit cleaned up and away from the tree. During the winter, check for red cankers and remove them by cutting them out or pruning away the affected limbs at least six inches beyond the wound. Destroy all infected tissue immediately and keep a watchful eye out for new signs of infection. Once black rot disease is under control in your tree and you’re again harvesting healthy fruits, make sure to remove any injured or insect-invaded fruits to avoid re-infection. Although general purpose fungicides, like copper-based sprays and lime sulfur, can be used to control black rot, nothing will improve apple black rot like removing all sources of spores.\r\nCaptan and fungicides containing a strobulurin (FRAC Group 11 Fungicides) as an active ingredient are effective controlling black rot on fruit.', 'Captan- between Rs.3500-4000 for 2.2kgs\r\nSyngenta Fungiside-  between Rs.300 to 500 for 100ml\r\n'),
(3, 'Cedar Apple rust', 'Cedar apple rust (Gymnosporangium juniperi-virginianae) is a fungal disease that requires juniper plants to complete its complicated two year life-cycle. Spores overwinter as a reddish-brown gall on young twigs of various juniper species. In early spring, during wet weather, these galls swell and bright orange masses of spores are blown by the wind where they infect susceptible apple and crab-apple trees. The spores that develop on these trees will only infect junipers the following year. From year to year, the disease must pass from junipers to apples to junipers again; it cannot spread between apple trees.', 'Cedar-apple rust is caused by the fungus Gymnosporangium juniperi-virginianae. Two other common juniper- rosaceous rusts are hawthorn rust and quince rust, although there are many more. rosaceous hosts are apple, crabapple, hawthorn, quince, serviceberry, and pear.', '1. Choose resistant cultivars when available.\r\n2. Rake up and dispose of fallen leaves and other debris from under trees.\r\n3. Remove galls from infected junipers. In some cases, juniper plants should be removed entirely.\r\n4. Apply preventative, disease-fighting fungicides labeled for use on apples weekly, starting with bud break, to protect trees from spores being released by the juniper host. This occurs only once per year, so additional applications after this springtime spread are not necessary.\r\n5. On juniper, rust can be controlled by spraying plants with a copper solution (0.5 to 2.0 oz/ gallon of water) at least four times between late August and late October.\r\n6. Safely treat most fungal and bacterial diseases with SERENADE Garden. This broad spectrum bio-fungicide uses a patented strain of Bacillus subtilis that is registered for organic use. Best of all, SERENADE is completely non-toxic to honey bees and beneficial insects.\r\n7. Containing sulfur and pyrethrins, Bonide® Orchard Spray is a safe, one-hit concentrate for insect attacks and fungal problems. For best results, apply as a protective spray (2.5 oz/ gallon) early in the season. If disease, insects or wet weather are present, mix 5 oz in one gallon of water. Thoroughly spray all parts of the plant, especially new shoots.\r\n8. Contact your local Agricultural Extension office for other possible solutions in your area', 'Bonide Orchard Spray- Between Rs.2000-6000\r\nSeranade- Between Rs.4000-7000 per litre'),
(4, 'Apple Healthy', '-', '-', '-', '-'),
(6, 'Cherry Powdery Mildew', 'Powdery mildew of sweet and sour cherry is caused by Podosphaera clandestina, an obligate biotrophic fungus. Mid- and late-season sweet cherry cultivars are commonly affected, rendering them unmarketable due to the covering of white fungal growth on the cherry surface. Season long disease control of both leaves and fruit is critical to minimize overall disease pressure in the orchard and consequently to protect developing fruit from accumulating spores on their surfaces. Low soil moisture combined with high humidity levels at the plant surface favors this disease. Fungal spores overwinter inside leaf buds and other plant debris. Wind, water and insects transmit the spores to other nearby plants. Zucchini, beans, cucumbers, squash, pumpkins, tomatoes, roses and zinnia are especially susceptible.', 'Podosphaera clandestina, an obligate biotrophic fungus.', 'Treatment:\r\nIf disease symptoms are observed, treat plants with one of the following approved organic fungicides:\r\n• Apply sulfur or copper-based fungicides to prevent infection of susceptible plants. For best results, apply early or at first sign of disease. Spray all plant parts thoroughly and repeat at 7-10 day intervals up to the day of harvest.\r\n• Green Cure Fungicide contains a patented formula of potassium bicarbonate — commonly used in food products — that kills many plant diseases on contact and provides up to 2 weeks of residual protection. At first sign of disease, mix 1-2 Tbsp/ gallon of water and apply to all exposed surfaces of the plant. Monterey® BI-CARB is a similar product containing micro-encapsulated potassium bicarbonate as the active ingredient. Mix 4 tsps in 2 gallons of water to thoroughly cover foliage.\r\n• Effectively treat fungal diseases with SERENADE Garden. This broad spectrum bio-fungicide uses a patented strain of Bacillus subtilis that is approved for organic gardening. Best of all, it’s safe to use — you can treat and pick crops the same day!\r\n• SNS 244 and Zero Tolerance Herbal Fungicide are made from 100% pure, food-grade ingredients that work fast to kill existing plant diseases and prevent new fungal problems from starting.\r\n• Indoor growers may want to consider using a Sulfur Burner/ Vaporizer which turns sulfur prills into a fine dust and changes the pH of leaf surfaces. Fungal spores and mold can’t get established on this plant coating. As an added benefit, studies have shown that this dust will eliminate spider mites.\r\n\r\nMeasures:\r\n1. Plant resistant cultivars in sunny locations whenever possible.\r\n2. Prune or stake plants to improve air circulation. Make sure to disinfect your pruning tools (one part bleach to 4 parts water) after each cut.\r\n3. Remove diseased foliage from the plant and clean up fallen debris on the ground.\r\n4. Use a thick layer of mulch or organic compost to cover the soil after you have raked and cleaned it well. Mulch will prevent the disease spores from splashing back up onto the leaves.\r\n5. Milk sprays, made with 40% milk and 60% water, are an effective home remedy for use on a wide range of plants. For best results, spray plant leaves as a preventative measure every 10-14 days.\r\n6. Wash foliage occasionally to disrupt the daily spore-releasing cycle. Neem oil and PM Wash, used on a 7 day schedule, will prevent fungal attack on plants grown indoors.\r\n7. Water in the morning, so plants have a chance to dry during the day. Drip irrigation and soaker hoses will help keep the foliage dry.\r\n8. Use a slow-release, organic fertilizer on crops and avoid excess nitrogen. Soft, leafy, new growth is most susceptible.\r\n9. Destroy all plant debris after harvest (see Fall Garden Cleanup). Do NOT compost.\r\n', '1. Monterey® BI-CARB – Rs. 3560 per 120ml\r\n2. Serenade Garden – Rs. 3800 to Rs. 8000 per 1 litre\r\n3. SNS 244 –  Rs. 1200 per 1 litre and  Rs. 4500 per 4 litres'),
(7, 'Cherry Healthy', '-', '-', '-', '-'),
(8, 'Corn(maize) Cercospora Grayleafspot', 'Gray leaf spot (GLS) has been one of the most prevalent foliar fungal diseases of corn. GLS consistently caused substantial yield losses, primarily in the more humid corn growing areas. Disease development is favored by warm temperatures, 80°F or 27 °C; and high humidity, relative humidity of 90% or higher for 12 hours or more.\r\n\r\nEarly Symptoms:\r\n• Gray leaf spot lesions begin as small necrotic pinpoints with chlorotic halos, these are more visible when leaves are backlit.\r\n• Coloration of initial lesions can range from tan to brown before sporulation begins.\r\n• Because early lesions are ambiguous, they are easily confused with other foliar diseases such as anthracnose leaf blight, eyespot, or common rust.\r\n\r\nLater Symptoms\r\n• As infection progresses, lesions begin to take on a more distinct shape.\r\n• Lesion expansion is limited by parallel leaf veins, resulting in the blocky shaped “spots”.\r\n• As sporulation commences, the lesions take on a more gray coloration.\r\n• Entire leaves can be killed when weather conditions are favorable, and rapid disease progression causes lesions to merge.', 'Cercospora zeae-maydis pathogen', 'Treatment:\r\n• During the growing season, foliar fungicides can be used to manage gray leaf spot outbreaks.\r\n• When selecting a fungicide, it is important to keep in mind the efficacy of the available products\r\n• DuPont™ Aproach® fungicide delivers better protection from production-limiting plant diseases in corn, soybeans, cereals, dry beans and canola. From enhanced in-season protection to improved harvestable yield, Aproach® delivers results growers will see.\r\n• Headline fungicide helps prevent diseases and provides protection for more than 90 crops, including corn, soybeans and wheat.\r\n\r\nMeasures:\r\n\r\nCultural Practices\r\n• Cercospora zeae-maydis overwinters in corn debris, so production practices such as tillage and crop rotation that reduce the amount corn residue on the surface will decrease the amount of primary inoculum.\r\n• Crop rotation away from corn can reduce disease pressure, but multiple years may be necessary in no-till scenarios.\r\n\r\nHybrid Resistance\r\n• Planting hybrids with a high level of genetic resistance can help reduce the risk of yield loss due to gray leaf spot infection.\r\n• Pioneer® brand hybrids and parent lines are improved through a screening process in areas with a high incidence of GLS and specialized “disease nurseries”.\r\n• Susceptible hybrids are more likely to benefit from a foliar fungicide application, but resistant varieties may benefit as well under high gray leaf spot pressure', '1. DuPont™ Aproach® fungicide – Rs.7000 per 500ml\r\n2. Headline fungicide – Rs. 1450 per 1 litre\r\n3. Amistar Syngenta Fungicide – Rs. 1500 per 200ml'),
(12, 'Grape Black rot', 'Black rot of grapes is a fungal disease that persists in grapevines for many years without treatment. The earliest signs of disease appear as yellow circular lesions on young leaves. As these lesions spread, they brown and sprout black fungal fruiting bodies that look similar to grains of pepper. With advancing disease, lesions may girdle the petiole of individual leaves, killing them. Eventually, the fungus spreads to the shoots, causing large black elliptical lesions.', 'Grape black rot is a fungal disease caused by an ascomycetous fungus, Guignardia bidwellii, that attacks grapevines during hot and humid weather. \r\n', '1. Apply a paste of cinnamon mixed with cooking oil to the remaining tissues of the plant. This paste -- when applied to the newly cut sections of the plant -- seals the wound and keeps it dry.\r\n2. Apply a fungicide, such as myclobutanil or captan according to the directions on the label.\r\n', 'Captan- between Rs.3500-4000 for 2.2kgs\r\nMyclobutanil Fungicides- Rs500 for 1 Kg\r\n'),
(13, 'Grape Esca (Black Measles)', 'In regards to wine, the black measles, or grapevine measles also called esca, refers to black spots found on the surface of grapes. It can develop anytime from the fruit set to days up to harvest.\r\nInfected fruit will dry and shrivel and give the grapes an off-taste of something very bitter and pungent.\r\nThe symptoms of black measles can be identified on the leaves, as they take on a tiger-stripe pattern, although, some symptoms do not show each year. More extreme cases occur in seasons with heavy rains and high temperatures in the growing season. If the symptoms are acute, a vineyard can die within one year, as it affects more than just the fruit and leaves - it affects the entire vine. This is identifiable when the vine is cut and black sap emerges.\r\n', 'Pathogens: Esca is caused by a complex of fungi that includes several species of Phaeoacremonium, primarily by P. aleophilum (currently known by the name of its sexual stage, Togninia minima), and by Phaeomoniella chlamydospora.\r\n', 'Lime sulfur sprays can manage the trio of pathogens that cause black measles.', 'Lime sulphur sprays- Rs34 per litre\r\n'),
(14, 'Grape Leaf blight (Isariopsis Leaf Spot)', 'Bacterial blight of grapevine is a serious, chronic and systemic disease of grapevine that affects commercially important cultivars. It is caused by the bacterium Xylophilus ampelinus which survives in the vascular tissues of infected plants. Severe infection of susceptible cultivars can lead to a serious reduction in grapevine health and major harvest losses.\r\n', ' Bacterium Xylophilus ampelinus', 'What you can do is treat the vines by dousing them with water and possibly following with a horticultural oil spray to knock down the population and possibly save your canopy.', 'Oil Spray- Rs300 for 500ml'),
(15, 'Grape Healthy', '-', '-', '-', '-'),
(16, 'Orange Haunglongbing (Citrus greening)', 'Citrus greening disease is a disease of citrus caused by a vector-transmitted pathogen. The causative agents are motile bacteria, Candidatus Liberibacter spp. The disease is vectored and transmitted by the Asian citrus psyllid, Diaphorina citri, and the African citrus psyllid, Trioza erytreae, also known as the two-spotted citrus psyllid. It has also been shown to be graft-transmissible.', 'The psyllid feeds on the stems and leaves of the trees, infecting the trees with the bacteria that causes citrus greening.', 'Once your citrus tree is infected, there\'s really nothing you can do about it. But steps are being taken to eradicate this devastating disease. Researchers are working hard to figure out how to control both the disease and the psyllid that transmits it. They\'re even working on developing citrus varieties that are resistant to HLB.', '-'),
(17, 'Peach Bacterial spot', 'Bacterial spot, known also as bacteriosis, bacterial shothole, or shothole, is caused by the bacterium Xanthomonas campestris pv. pruni. Although primarily a peach and nectarine problem, this disease also occurs on apricots, plums and, to a lesser degree, cherries. Losses due to bacterial spot occur from affected fruit and from the devitalization of trees caused by frequent defoliation. Such weakened trees are more subject to winter injury. Losses are greatest in light, low-fertility soils. Trees low in vigor are more susceptible to bacterial spot than vigorous trees. ', 'Xanthomonas campestris pv. Pruni. Bacteria', 'Effective management requires a diverse toolbox to combat the disease from shuck split through cover sprays. One such tool is the use of copper.', 'Copper Sulphate -Rs 350 for 500gm'),
(18, 'Peach healthy', '-', '-', '-', '-'),
(19, 'Pepper bell Bacterial spot', 'Leaf spots that appear on the lower surface of older leaves as small, pimples and on the upper leaf surface as small water-soaked spots are a symptom of bacterial spot. This is an important pepper disease in Maryland. It also occasionally attacks tomatoes. Eventually, the spots develop gray to tan centers with darker borders. Lesions enlarge during warm, humid weather. Leaves may then turn yellow, then brown and drop. Lesions may also develop on stems. Fruits develop small, raised rough spots that do not affect eating quality.', 'Bacterial leaf spot is spread by splashing rain and working with wet, infected plants. This disease can defoliate plants during wet weather. Hot, dry weather slows the spread of this disease. The disease can come in on seed or transplants and can overwinter in crop residue and soil.', 'Select resistant varieties\r\nPurchase disease-free seed and transplants.\r\nTreat seeds by soaking them for 2 minutes in a 10% chlorine bleach solution (1 part bleach; 9 parts water). Thoroughly rinse seeds and dry them before planting.\r\nMulch plants deeply with a thick organic material like newspaper covered with straw or grass clippings.\r\nAvoid overhead watering.\r\nRemove and discard badly infected plant parts and all debris at the end of the season.\r\nSpray every 10-14 days with fixed copper (organic fungicide) to slow down the spread of infection.\r\nRotate peppers to a different location if infections are severe and cover the soil with black plastic mulch or black landscape fabric prior to planting\r\n', 'Chlorine Bleach solution- Rs100 for 500ml'),
(20, 'Pepper bell healthy', '-', '-', '-', '-'),
(21, 'Potato Early Blight', 'The disease affects leaves, stems and tubers and can reduce yield, tuber size, storability of tubers, quality of fresh-market and processing tubers and marketability of the crop. In most production areas, early blight occurs annually to some degree. The severity of early blight is dependent upon the frequency of foliar wetness from rain, dew, or irrigation; the nutritional status of the foliage; and cultivar susceptibility.', 'Early blight of potato is caused by the fungal pathogen Alternaria solani.', 'Select a late-season variety with a lower susceptibility to early blight. (Resistance is associated with plant maturity and early maturing cultivars are more susceptible).\r\nTime irrigation to minimize leaf wetness duration during cloudy weather and allow sufficient time for leaves to dry prior to nightfall.\r\nAvoid nitrogen and phosphorus deficiency.\r\nScout fields regularly for infection beginning after plants reach 12 inches in height. Pay particular attention to edges of fields that are adjacent to fields planted to potato the previous year.\r\nKill vines two to three weeks prior to harvest to allow adequate skin set.\r\nAvoid injury and skinning during harvest.\r\nStore tubers under conditions that promote wound healing (fresh air, 95 to 99 percent relative humidity, and temperatures of 55 to 60 F) for two to three weeks after harvest. Following wound healing, store tubers in a dark, dry, and well-ventilated location gradually cooled to a temperature appropriate for the desired market.\r\nRotate fields to non-host crops for at least three years (three to four-year crop rotation).\r\nEradicate weed hosts such as hairy nightshade to reduce inoculum for future plantings.\r\n', 'Chlorine Bleach solution- Rs100 for 500ml');

-- --------------------------------------------------------

--
-- Table structure for table `factors`
--

CREATE TABLE `factors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `factors`
--

INSERT INTO `factors` (`id`, `name`) VALUES
(1, 'SeasonType'),
(2, 'Temperature'),
(3, 'Waterlevel'),
(4, 'SoilType');

-- --------------------------------------------------------

--
-- Table structure for table `sub_factors`
--

CREATE TABLE `sub_factors` (
  `s_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `f_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_factors`
--

INSERT INTO `sub_factors` (`s_id`, `name`, `f_id`) VALUES
(1, 'Kharif', 1),
(2, 'Rabi', 1),
(3, '1-10', 2),
(4, '11-20', 2),
(5, '21-30', 2),
(6, '31-40', 2),
(7, '41-50', 2),
(8, 'Very Low', 3),
(9, 'Low', 3),
(10, 'Moderate', 3),
(11, 'High', 3),
(12, 'Very High', 3),
(13, 'Alluvial', 4),
(14, 'Black', 4),
(15, 'Red', 4),
(16, 'Loamy', 4),
(17, 'Clay', 4),
(18, 'Laterite', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `state` varchar(35) NOT NULL,
  `district` varchar(35) NOT NULL,
  `pincode` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `mobile`, `state`, `district`, `pincode`) VALUES
(1, 'john', 'john', 8741852963, 'Andhra Pradesh', 'ongole', '560029'),
(2, 'chandana', 'john1234', 7418529630, 'Andhra Pradesh', 'guntur', '566058');

-- --------------------------------------------------------

--
-- Table structure for table `user_input`
--

CREATE TABLE `user_input` (
  `id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `soil_type` varchar(20) NOT NULL,
  `water_condition` varchar(20) NOT NULL,
  `rainfall` decimal(10,0) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `id` int(11) NOT NULL,
  `season` int(11) NOT NULL,
  `temperature` int(11) NOT NULL,
  `waterlevel` int(11) NOT NULL,
  `soiltype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`id`, `season`, `temperature`, `waterlevel`, `soiltype`) VALUES
(1, 1, 5, 9, 13),
(2, 1, 5, 9, 14),
(3, 1, 5, 9, 15),
(4, 1, 5, 9, 18),
(5, 2, 5, 10, 16),
(6, 2, 5, 10, 17),
(7, 1, 4, 10, 16),
(8, 1, 4, 10, 17),
(9, 1, 4, 11, 16),
(10, 1, 4, 11, 16),
(11, 1, 5, 10, 16),
(12, 1, 5, 10, 17),
(13, 1, 5, 11, 16),
(14, 1, 5, 11, 17),
(15, 1, 6, 10, 16),
(16, 1, 6, 10, 17),
(17, 1, 6, 11, 16),
(18, 1, 6, 11, 17),
(19, 2, 4, 10, 16),
(20, 2, 4, 10, 17),
(21, 2, 4, 11, 16),
(22, 2, 4, 11, 16),
(23, 2, 5, 10, 16),
(24, 2, 5, 10, 17),
(25, 2, 5, 11, 16),
(26, 2, 5, 11, 17),
(27, 2, 6, 10, 16),
(28, 2, 6, 10, 17),
(29, 2, 6, 11, 16),
(30, 2, 6, 11, 17),
(31, 2, 3, 9, 16),
(32, 2, 3, 9, 14),
(33, 2, 3, 9, 13),
(34, 2, 4, 9, 16),
(35, 2, 4, 9, 14),
(36, 2, 4, 9, 13),
(37, 2, 5, 9, 16),
(38, 2, 5, 9, 14),
(39, 2, 5, 9, 13),
(40, 2, 5, 9, 14),
(41, 2, 5, 9, 16),
(42, 2, 4, 9, 16),
(43, 2, 4, 9, 13),
(44, 2, 4, 9, 14),
(45, 2, 4, 9, 15),
(46, 2, 4, 9, 17),
(47, 2, 4, 9, 18),
(48, 2, 5, 9, 16),
(49, 2, 5, 9, 13),
(50, 2, 5, 9, 14),
(51, 2, 5, 9, 15),
(52, 2, 5, 9, 17),
(53, 2, 5, 9, 18),
(54, 2, 4, 8, 16),
(55, 2, 5, 8, 16),
(56, 2, 4, 8, 16),
(57, 2, 4, 10, 16),
(58, 2, 4, 10, 17),
(59, 2, 4, 10, 13),
(60, 2, 4, 10, 14),
(61, 2, 4, 10, 15),
(62, 2, 5, 10, 16),
(63, 2, 5, 10, 17),
(64, 2, 5, 10, 13),
(65, 2, 5, 10, 14),
(66, 2, 5, 10, 15),
(67, 2, 6, 10, 16),
(68, 2, 6, 10, 17),
(69, 2, 6, 10, 13),
(70, 2, 6, 10, 14),
(71, 2, 6, 10, 15),
(72, 1, 5, 9, 13),
(73, 1, 5, 9, 18),
(74, 1, 5, 9, 15),
(75, 1, 5, 9, 14),
(76, 1, 5, 10, 13),
(77, 1, 5, 10, 18),
(78, 1, 5, 10, 15),
(79, 1, 5, 10, 14),
(80, 1, 5, 9, 13),
(81, 1, 5, 9, 16),
(82, 1, 5, 9, 15),
(83, 2, 4, 8, 16),
(84, 1, 4, 9, 14),
(85, 1, 4, 9, 15),
(86, 1, 4, 9, 16),
(87, 1, 4, 9, 13),
(88, 1, 5, 9, 14),
(89, 1, 5, 9, 15),
(90, 1, 5, 9, 16),
(91, 1, 5, 9, 13),
(92, 2, 4, 9, 14),
(93, 2, 4, 9, 15),
(94, 2, 4, 9, 16),
(95, 2, 4, 9, 13),
(96, 2, 5, 9, 14),
(97, 2, 5, 9, 15),
(98, 2, 5, 9, 16),
(99, 2, 5, 9, 13),
(100, 2, 4, 8, 16),
(101, 2, 4, 8, 13),
(102, 2, 5, 9, 16),
(103, 2, 6, 9, 16),
(104, 2, 4, 9, 15),
(105, 2, 4, 9, 17),
(106, 1, 5, 9, 13),
(107, 1, 5, 9, 16),
(108, 1, 5, 9, 14),
(109, 1, 5, 9, 15),
(110, 1, 5, 9, 16),
(111, 1, 5, 9, 14),
(112, 1, 5, 9, 13),
(113, 1, 6, 9, 16),
(114, 1, 6, 9, 14),
(115, 1, 6, 9, 13),
(116, 2, 4, 9, 16),
(117, 1, 5, 11, 13),
(118, 1, 5, 11, 14),
(119, 1, 5, 11, 15),
(120, 1, 5, 11, 18),
(121, 1, 5, 11, 16),
(122, 1, 5, 12, 13),
(123, 1, 5, 12, 14),
(124, 1, 5, 12, 15),
(125, 1, 5, 12, 18),
(126, 1, 5, 12, 16),
(127, 2, 5, 9, 16),
(128, 2, 5, 9, 14),
(129, 1, 5, 9, 15),
(130, 1, 5, 9, 17),
(131, 1, 5, 9, 16),
(132, 2, 5, 9, 15),
(133, 2, 5, 9, 17),
(134, 2, 5, 9, 16),
(135, 1, 5, 10, 16),
(136, 1, 5, 10, 18),
(137, 1, 5, 11, 16),
(138, 1, 5, 11, 18),
(139, 1, 5, 12, 16),
(140, 1, 5, 12, 18),
(141, 2, 4, 10, 16),
(142, 2, 4, 10, 18),
(143, 2, 5, 10, 16),
(144, 2, 5, 10, 18),
(145, 1, 5, 9, 16),
(146, 1, 5, 9, 17),
(147, 1, 5, 9, 13),
(148, 1, 5, 9, 14),
(149, 1, 4, 8, 16),
(150, 1, 4, 8, 18),
(151, 1, 5, 8, 18),
(152, 1, 5, 8, 15),
(153, 1, 5, 8, 16),
(154, 1, 5, 8, 17),
(155, 1, 5, 8, 13),
(156, 1, 6, 8, 16),
(157, 1, 6, 8, 17),
(158, 1, 6, 8, 13),
(159, 1, 5, 8, 16),
(160, 1, 6, 8, 16),
(161, 1, 4, 9, 15),
(162, 1, 4, 9, 16),
(163, 1, 5, 9, 15),
(164, 1, 5, 9, 16),
(165, 1, 5, 8, 13),
(166, 1, 5, 8, 15),
(167, 1, 5, 10, 16),
(168, 1, 5, 10, 17),
(169, 1, 5, 8, 14),
(170, 1, 5, 8, 16),
(171, 1, 5, 10, 16),
(172, 1, 5, 10, 14),
(173, 1, 5, 9, 16),
(174, 1, 5, 10, 16),
(175, 1, 5, 8, 16),
(176, 1, 5, 8, 17),
(177, 1, 5, 10, 16),
(178, 2, 4, 8, 16),
(179, 2, 4, 8, 13),
(180, 2, 4, 9, 16),
(181, 2, 4, 9, 17),
(182, 2, 4, 9, 13),
(183, 2, 4, 9, 14),
(184, 2, 5, 9, 16),
(185, 2, 5, 9, 17),
(186, 2, 5, 9, 13),
(187, 2, 5, 9, 14),
(188, 2, 6, 9, 16),
(189, 2, 6, 9, 17),
(190, 2, 6, 9, 13),
(191, 2, 6, 9, 14),
(192, 2, 4, 8, 16),
(193, 2, 5, 8, 16),
(194, 2, 4, 10, 16),
(195, 2, 5, 8, 16),
(196, 2, 5, 8, 14),
(197, 2, 5, 8, 13),
(198, 2, 5, 9, 16),
(199, 2, 5, 9, 13),
(200, 2, 4, 10, 16),
(201, 2, 5, 10, 16),
(202, 2, 5, 9, 16),
(203, 2, 5, 9, 14),
(204, 2, 3, 8, 16),
(205, 2, 5, 9, 16),
(206, 2, 4, 8, 16),
(207, 2, 4, 8, 16),
(208, 2, 4, 8, 17),
(209, 2, 5, 8, 16),
(210, 2, 5, 8, 17);

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
-- Indexes for table `crop_calendar`
--
ALTER TABLE `crop_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disease_detection`
--
ALTER TABLE `disease_detection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `factors`
--
ALTER TABLE `factors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_factors`
--
ALTER TABLE `sub_factors`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `FK_factor` (`f_id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_season` (`season`),
  ADD KEY `FK_temperature` (`temperature`),
  ADD KEY `FK_water` (`waterlevel`),
  ADD KEY `FK_soil` (`soiltype`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crops`
--
ALTER TABLE `crops`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `crop_calendar`
--
ALTER TABLE `crop_calendar`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `factors`
--
ALTER TABLE `factors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_factors`
--
ALTER TABLE `sub_factors`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sub_factors`
--
ALTER TABLE `sub_factors`
  ADD CONSTRAINT `FK_factor` FOREIGN KEY (`f_id`) REFERENCES `factors` (`id`);

--
-- Constraints for table `variant`
--
ALTER TABLE `variant`
  ADD CONSTRAINT `FK_season` FOREIGN KEY (`season`) REFERENCES `sub_factors` (`s_id`),
  ADD CONSTRAINT `FK_soil` FOREIGN KEY (`soiltype`) REFERENCES `sub_factors` (`s_id`),
  ADD CONSTRAINT `FK_temperature` FOREIGN KEY (`temperature`) REFERENCES `sub_factors` (`s_id`),
  ADD CONSTRAINT `FK_water` FOREIGN KEY (`waterlevel`) REFERENCES `sub_factors` (`s_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
