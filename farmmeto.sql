-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Feb 10, 2020 at 09:54 AM
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
(1, 'Rice', 1, 'static\\rice.jpg', 0),
(2, 'Rice', 2, 'static\\rice.jpg', 0),
(3, 'Rice', 3, 'static\\rice.jpg', 0),
(4, 'Rice', 4, 'static\\rice.jpg', 0),
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
(60, 'Citrus', 60, 'static\\citrus.jpg', 0),
(61, 'Citrus', 61, 'static\\citrus.jpg', 0),
(62, 'Citrus', 62, 'static\\citrus.jpg', 0),
(63, 'Citrus', 63, 'static\\citrus.jpg', 0),
(64, 'Citrus', 64, 'static\\citrus.jpg', 0),
(65, 'Citrus', 65, 'static\\citrus.jpg', 0),
(66, 'Citrus', 66, 'static\\citrus.jpg', 0),
(67, 'Citrus', 67, 'static\\citrus.jpg', 0),
(68, 'Citrus', 68, 'static\\citrus.jpg', 0),
(69, 'Citrus', 69, 'static\\citrus.jpg', 0),
(70, 'Citrus', 70, 'static\\citrus.jpg', 0),
(71, 'Citrus', 71, 'static\\citrus.jpg', 0),
(72, 'Cotton', 72, 'static\\cotton.jpg', 0),
(73, 'Cotton', 73, 'static\\cotton.jpg', 0),
(74, 'Cotton', 74, 'static\\cotton.jpg', 0),
(75, 'Cotton', 75, 'static\\cotton.jpg', 0),
(76, 'Cotton', 76, 'static\\cotton.jpg', 0),
(77, 'Cotton', 77, 'static\\cotton.jpg', 0),
(78, 'Cotton', 78, 'static\\cotton.jpg', 0),
(79, 'Cotton', 79, 'static\\cotton.jpg', 0),
(80, 'Maize', 80, 'static\\maize.jpg', 0),
(81, 'Maize', 81, 'static\\maize.jpg', 0),
(82, 'Maize', 82, 'static\\maize.jpg', 0),
(83, 'Onion', 83, 'static\\onion.jpg', 0),
(84, 'Peanut', 84, 'static\\peanut.jpg', 0),
(85, 'Peanut', 85, 'static\\peanut.jpg', 0),
(86, 'Peanut', 86, 'static\\peanut.jpg', 0),
(87, 'Peanut', 87, 'static\\peanut.jpg', 0),
(88, 'Peanut', 88, 'static\\peanut.jpg', 0),
(89, 'Peanut', 89, 'static\\peanut.jpg', 0),
(90, 'Peanut', 90, 'static\\peanut.jpg', 0),
(91, 'Peanut', 91, 'static\\peanut.jpg', 0),
(92, 'Peanut', 92, 'static\\peanut.jpg', 0),
(93, 'Peanut', 93, 'static\\peanut.jpg', 0),
(94, 'Peanut', 94, 'static\\peanut.jpg', 0),
(95, 'Peanut', 95, 'static\\peanut.jpg', 0),
(96, 'Peanut', 96, 'static\\peanut.jpg', 0),
(97, 'Peanut', 97, 'static\\peanut.jpg', 0),
(98, 'Peanut', 98, 'static\\peanut.jpg', 0),
(99, 'Peanut', 99, 'static\\peanut.jpg', 0),
(100, 'Green Pea', 100, 'static\\greenpea.jpg', 0),
(101, 'Green Pea', 101, 'static\\greenpea.jpg', 0),
(102, 'Pepper', 102, 'static\\pepper.jpg', 0),
(103, 'Pepper', 103, 'static\\pepper.jpg', 0),
(104, 'Potato', 104, 'static\\potato.jpg', 0),
(105, 'Potato', 105, 'static\\potato.jpg', 0),
(106, 'Millet (Bajra)', 106, 'static\\millet.jpg', 0),
(107, 'Millet (Bajra)', 107, 'static\\millet.jpg', 0),
(108, 'Millet (Bajra)', 108, 'static\\millet.jpg', 0),
(109, 'Millet (Bajra)', 109, 'static\\millet.jpg', 0),
(110, 'Soybean', 110, 'static\\soybean.jpg', 0),
(111, 'Soybean', 111, 'static\\soybean.jpg', 0),
(112, 'Soybean', 112, 'static\\soybean.jpg', 0),
(113, 'Soybean', 113, 'static\\soybean.jpg', 0),
(114, 'Soybean', 114, 'static\\soybean.jpg', 0),
(115, 'Soybean', 115, 'static\\soybean.jpg', 0),
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
(129, 'Tomato', 129, 'static\\tomato.jpg', 0),
(130, 'Tomato', 130, 'static\\tomato.jpg', 0),
(131, 'Tomato', 131, 'static\\tomato.jpg', 0),
(132, 'Tomato', 132, 'static\\tomato.jpg', 0),
(133, 'Tomato', 133, 'static\\tomato.jpg', 0),
(134, 'Tomato', 134, 'static\\tomato.jpg', 0),
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
(145, 'Jowar', 145, 'static\\jowar.jpg', 0),
(146, 'Jowar', 146, 'static\\jowar.jpg', 0),
(147, 'Jowar', 147, 'static\\jowar.jpg', 0),
(148, 'Jowar', 148, 'static\\jowar.jpg', 0),
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
(161, 'Cowpea', 161, 'static\\cowpea.jpg', 0),
(162, 'Cowpea', 162, 'static\\cowpea.jpg', 0),
(163, 'Cowpea', 163, 'static\\cowpea.jpg', 0),
(164, 'Cowpea', 164, 'static\\cowpea.jpg', 0),
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
  `step1` varchar(5000) DEFAULT NULL,
  `step2` varchar(5000) DEFAULT NULL,
  `step3` varchar(5000) DEFAULT NULL,
  `step4` varchar(5000) DEFAULT NULL,
  `step5` varchar(5000) DEFAULT NULL,
  `step6` varchar(5000) DEFAULT NULL,
  `step7` varchar(5000) DEFAULT NULL,
  `step8` varchar(5000) DEFAULT NULL,
  `step9` varchar(5000) DEFAULT NULL,
  `step10` varchar(5000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crop_calendar`
--

INSERT INTO `crop_calendar` (`id`, `crop_name`, `step1`, `step2`, `step3`, `step4`, `step5`, `step6`, `step7`, `step8`, `step9`, `step10`) VALUES
(1, 'Bottle Gourd', 'Soil and Seed Preparation:\r\nSeed Varieties:\r\n \r\nSelection from germplasm type. Fruits are with prominent bottleneck at the top.fruits are pale green in colour and yields 25-30t/ha.\r\nPusa Summer Prolific long\r\nPusa\r\nSummer Prolific Round\r\nPusa Manjari\r\nPusa Megdoot and Arka Bahar\r\nTNAU Bottle gourd Hybrid\r\nSeed treatment\r\nTreated with Trichoderma viride 4 g or Pseudomonas fluorescens 10 g or Carbendazim 2 g/kg of seeds before sowing\r\nPreparation of field\r\nPlough the field to fine tilth and dig pits of the 30 cm x 30 cm x 30 cm size at 2.5 x 2 m spacing.\r\n ', 'Step 2:\r\nSowing\r\nSow the seeds at the rate three seeds/pit and thin the seedlings to two/pit after 15 days.', 'Step 3:\r\nIrrigation\r\nIrrigate the field before dibbling the seeds and thereafter once a week.\r\n\r\nDrip irrigation:\r\nDrip irrigartion is most advantageous in bottle gourd cultivation.\r\nInstall drip system with main and sub-main pipes and place the inline lateral tubes at an interval of 1.5m. Place the drippers at an interval of 60 cm and 50 cm spacing with 4LPH and 3.5LPH capacities respectively.', 'Step 4:\r\nApplication of fertilizers\r\nApply 10 kg of FYM (20 t/ha), 100 g of NPK 6:12:12 mixture/pit as basal and 10 g of N/pit 30 days after sowing.Apply Azospirillum and Phosphobacteria 2 kg/ha and Pseudomonas 2.5 kg/ha along with FYM 50 kg and neem cake @ 100 kg before last ploughing.', 'Step 5:\r\nFertigation\r\nApply a dose of 200:100:100 kg NPK/ha throughout the cropping period through split application.\r\nRecommended Dose: 200:100:100 Kg/ha', 'Step 6:\r\nWeeding: Weeding can be done by hoeing as and when necessary. Fruit rot during rainy season can be checked by training the plants over the bamboo stick or dried branches.\r\nPlant protection\r\nPests\r\nMites: Spray dicofol 18.5 % SC @ 2.5 ml per litre of water.\r\nAphid: Spray Imidachloprid @ 0.5 ml/lit along with sufficient quantity of stickers like Teepol, triton X100, apsa etc., for better adhesion and coverage.\r\n\r\nBeetles, fruit flies and caterpillars\r\nBeetles, fruit flies and caterpillars can be controlled by spraying Malathion 50 EC 1 ml/lit. or Dimethoate 30 EC 1 ml/lit. or Methyl demeton 25 EC 1 ml/lit.\r\nDo not use DDT,copper and sulphur dust as these are phytotoxic.\r\nPowdery mildew\r\nPowdery mildew can be controlled by spraying Dinocap 1 ml/lit. or Carbendazim 0.5 g/lit or Tridemorph l ml/l.\r\nDowny mildew\r\nDowny mildew can be controlled by spraying Mancozeb or Chlorothalonil 2 g/lit. twice at 10 days interval.', 'Step 7:\r\nHarvesting\r\nFruits are harvested at tender stage and before 100 % maturity.\r\nYield\r\nThe yield potential is 15-25t/ha in 135-140 days. The fruits are extra long (180-200cm)', NULL, NULL, NULL);

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
