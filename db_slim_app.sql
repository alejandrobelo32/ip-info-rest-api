-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2021 a las 03:07:35
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_slim_app`
--
CREATE DATABASE IF NOT EXISTS `db_slim_app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_slim_app`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id_country` int(11) NOT NULL AUTO_INCREMENT,
  `iso_3166` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `distance_to_bsas` double DEFAULT NULL,
  PRIMARY KEY (`id_country`),
  KEY `iso_3166` (`iso_3166`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id_country`, `iso_3166`, `name`, `distance_to_bsas`) VALUES
(1, 'AFG', 'Afghanistan', 14851.12),
(2, 'ALA', 'Åland Islands', 12693.4),
(3, 'ALB', 'Albania', 11601.11),
(4, 'DZA', 'Algeria', 9488.19),
(5, 'ASM', 'American Samoa', 10987.51),
(6, 'AND', 'Andorra', 10512.93),
(7, 'AGO', 'Angola', 8030.47),
(8, 'AIA', 'Anguilla', 5899.91),
(9, 'ATA', 'Antarctica', 5523.31),
(10, 'ATG', 'Antigua and Barbuda', 5756.08),
(11, 'ARG', 'Argentina', 0),
(12, 'ARM', 'Armenia', 13424.55),
(13, 'ABW', 'Aruba', 5379.75),
(14, 'AUS', 'Australia', 13060.14),
(15, 'AUT', 'Austria', 11569),
(16, 'AZE', 'Azerbaijan', 13642.71),
(17, 'BHS', 'Bahamas', 6804.3),
(18, 'BHR', 'Bahrain', 13262.4),
(19, 'BGD', 'Bangladesh', 16746.54),
(20, 'BRB', 'Barbados', 5314.28),
(21, 'BLR', 'Belarus', 12785.58),
(22, 'BEL', 'Belgium', 11286.52),
(23, 'BLZ', 'Belize', 6600.35),
(24, 'BEN', 'Benin', 8037.04),
(25, 'BMU', 'Bermuda', 7473.84),
(26, 'BTN', 'Bhutan', 16960.23),
(27, 'BOL', 'Bolivia (Plurinational State of)', 2066.21),
(28, 'BES', 'Bonaire, Sint Eustatius and Saba', 5303.59),
(29, 'BIH', 'Bosnia and Herzegovina', 11651.3),
(30, 'BWA', 'Botswana', 7972.56),
(31, 'BVT', 'Bouvet Island', 5169.84),
(32, 'BRA', 'Brazil', 2758.31),
(33, 'IOT', 'British Indian Ocean Territory', 13091.68),
(34, 'UMI', 'United States Minor Outlying Islands', NULL),
(35, 'VGB', 'Virgin Islands (British)', 5935.16),
(36, 'VIR', 'Virgin Islands (U.S.)', 5928.77),
(37, 'BRN', 'Brunei Darussalam', 16590.77),
(38, 'BGR', 'Bulgaria', 12069.19),
(39, 'BFA', 'Burkina Faso', 7957.48),
(40, 'BDI', 'Burundi', 9638.21),
(41, 'KHM', 'Cambodia', 17086.27),
(42, 'CMR', 'Cameroon', 8623.77),
(43, 'CAN', 'Canada', 11042.08),
(44, 'CPV', 'Cabo Verde', 6698.35),
(45, 'CYM', 'Cayman Islands', 6455.68),
(46, 'CAF', 'Central African Republic', 9488.65),
(47, 'TCD', 'Chad', 9837.39),
(48, 'CHL', 'Chile', 1291.19),
(49, 'CHN', 'China', 18498.59),
(50, 'CXR', 'Christmas Island', 14724.21),
(51, 'CCK', 'Cocos (Keeling) Islands', 14159.35),
(52, 'COL', 'Colombia', 4524.21),
(53, 'COM', 'Comoros', 10365.53),
(54, 'COG', 'Congo', 8428.54),
(55, 'COD', 'Congo (Democratic Republic of the)', 9401.92),
(56, 'COK', 'Cook Islands', 9661.88),
(57, 'CRI', 'Costa Rica', 5647.63),
(58, 'HRV', 'Croatia', 11562.77),
(59, 'CUB', 'Cuba', 6644.68),
(60, 'CUW', 'Curaçao', 5314.26),
(61, 'CYP', 'Cyprus', 12231.42),
(62, 'CZE', 'Czech Republic', 11854.62),
(63, 'DNK', 'Denmark', 11957.66),
(64, 'DJI', 'Djibouti', 11764.84),
(65, 'DMA', 'Dominica', 5571.84),
(66, 'DOM', 'Dominican Republic', 6101.52),
(67, 'ECU', 'Ecuador', 4132.11),
(68, 'EGY', 'Egypt', 11532.75),
(69, 'SLV', 'El Salvador', 6278.5),
(70, 'GNQ', 'Equatorial Guinea', 8177.83),
(71, 'ERI', 'Eritrea', 11611.41),
(72, 'EST', 'Estonia', 12948.32),
(73, 'ETH', 'Ethiopia', 11093.2),
(74, 'FLK', 'Falkland Islands (Malvinas)', 1906.18),
(75, 'FRO', 'Faroe Islands', 11685.72),
(76, 'FJI', 'Fiji', 11891.39),
(77, 'FIN', 'Finland', 13162.4),
(78, 'FRA', 'France', 10812.58),
(79, 'GUF', 'French Guiana', 4330.35),
(80, 'PYF', 'French Polynesia', 8313.12),
(81, 'ATF', 'French Southern Territories', 9350.49),
(82, 'GAB', 'Gabon', 8135.45),
(83, 'GMB', 'Gambia', 6931.49),
(84, 'GEO', 'Georgia', 13387.4),
(85, 'DEU', 'Germany', 11566.21),
(86, 'GHA', 'Ghana', 7577.61),
(87, 'GIB', 'Gibraltar', 9594.28),
(88, 'GRC', 'Greece', 11621.07),
(89, 'GRL', 'Greenland', 11941.27),
(90, 'GRD', 'Grenada', 5207.72),
(91, 'GLP', 'Guadeloupe', 5665.88),
(92, 'GUM', 'Guam', 16706.51),
(93, 'GTM', 'Guatemala', 6510.91),
(94, 'GGY', 'Guernsey', 10844.8),
(95, 'GIN', 'Guinea', 7188.17),
(96, 'GNB', 'Guinea-Bissau', 6911.72),
(97, 'GUY', 'Guyana', 4405.27),
(98, 'HTI', 'Haiti', 6143.59),
(99, 'HMD', 'Heard Island and McDonald Islands', 9172.18),
(100, 'VAT', 'Holy See', 11148.78),
(101, 'HND', 'Honduras', 6266.05),
(102, 'HKG', 'Hong Kong', 18460.33),
(103, 'HUN', 'Hungary', 11964.47),
(104, 'ISL', 'Iceland', 11616.38),
(105, 'IND', 'India', 15359.98),
(106, 'IDN', 'Indonesia', 15607.05),
(107, 'CIV', 'Côte d\'Ivoire', 7336.16),
(108, 'IRN', 'Iran (Islamic Republic of)', 13759.23),
(109, 'IRQ', 'Iraq', 13033.67),
(110, 'IRL', 'Ireland', 10888.19),
(111, 'IMN', 'Isle of Man', 11144.67),
(112, 'ISR', 'Israel', 12184.46),
(113, 'ITA', 'Italy', 11237.09),
(114, 'JAM', 'Jamaica', 6216.18),
(115, 'JPN', 'Japan', 18522.8),
(116, 'JEY', 'Jersey', 10848.09),
(117, 'JOR', 'Jordan', 12261.19),
(118, 'KAZ', 'Kazakhstan', 15398.54),
(119, 'KEN', 'Kenya', 10654.14),
(120, 'KIR', 'Kiribati', 13548.38),
(121, 'KWT', 'Kuwait', 13013.8),
(122, 'KGZ', 'Kyrgyzstan', 15907.46),
(123, 'LAO', 'Lao People\'s Democratic Republic', 17541.12),
(124, 'LVA', 'Latvia', 12802.05),
(125, 'LBN', 'Lebanon', 12397.99),
(126, 'LSO', 'Lesotho', 7940.84),
(127, 'LBR', 'Liberia', 6865.08),
(128, 'LBY', 'Libya', 10337.45),
(129, 'LIE', 'Liechtenstein', 11337.35),
(130, 'LTU', 'Lithuania', 12698.13),
(131, 'LUX', 'Luxembourg', 11322.8),
(132, 'MAC', 'Macao', 18423.2),
(133, 'MKD', 'Macedonia (the former Yugoslav Republic of)', 11791.43),
(134, 'MDG', 'Madagascar', 10076.36),
(135, 'MWI', 'Malawi', 9373.16),
(136, 'MYS', 'Malaysia', 16321.52),
(137, 'MDV', 'Maldives', 13913.17),
(138, 'MLI', 'Mali', 8117.49),
(139, 'MLT', 'Malta', 10883.3),
(140, 'MHL', 'Marshall Islands', 14512.8),
(141, 'MTQ', 'Martinique', 5486.68),
(142, 'MRT', 'Mauritania', 7802.25),
(143, 'MUS', 'Mauritius', 10906.38),
(144, 'MYT', 'Mayotte', 10401.26),
(145, 'MEX', 'Mexico', 7888.82),
(146, 'FSM', 'Micronesia (Federated States of)', 15166.25),
(147, 'MDA', 'Moldova (Republic of)', 12558.25),
(148, 'MCO', 'Monaco', 10958.43),
(149, 'MNG', 'Mongolia', 18127.41),
(150, 'MNE', 'Montenegro', 11645.42),
(151, 'MSR', 'Montserrat', 5725.62),
(152, 'MAR', 'Morocco', 9271.05),
(153, 'MOZ', 'Mozambique', 9165.13),
(154, 'MMR', 'Myanmar', 17321.14),
(155, 'NAM', 'Namibia', 7347.98),
(156, 'NRU', 'Nauru', 13899.94),
(157, 'NPL', 'Nepal', 16387.56),
(158, 'NLD', 'Netherlands', 11499.36),
(159, 'NCL', 'New Caledonia', 12243.4),
(160, 'NZL', 'New Zealand', 10049.05),
(161, 'NIC', 'Nicaragua', 5994.09),
(162, 'NER', 'Niger', 8980.94),
(163, 'NGA', 'Nigeria', 8554.24),
(164, 'NIU', 'Niue', 10644.21),
(165, 'NFK', 'Norfolk Island', 11428.74),
(166, 'PRK', 'Korea (Democratic People\'s Republic of)', 19250.62),
(167, 'MNP', 'Northern Mariana Islands', 16779.23),
(168, 'NOR', 'Norway', 12348.1),
(169, 'OMN', 'Oman', 13587.9),
(170, 'PAK', 'Pakistan', 15188.69),
(171, 'PLW', 'Palau', 16724.93),
(172, 'PSE', 'Palestine, State of', 12243.3),
(173, 'PAN', 'Panama', 5357.22),
(174, 'PNG', 'Papua New Guinea', 14772.79),
(175, 'PRY', 'Paraguay', 1291.84),
(176, 'PER', 'Peru', 3270.56),
(177, 'PHL', 'Philippines', 17611.54),
(178, 'PCN', 'Pitcairn', 6858.07),
(179, 'POL', 'Poland', 12255.3),
(180, 'PRT', 'Portugal', 9729.19),
(181, 'PRI', 'Puerto Rico', 5940.56),
(182, 'QAT', 'Qatar', 13299.81),
(183, 'KOS', 'Republic of Kosovo', 11783.43),
(184, 'REU', 'Réunion', 10682.51),
(185, 'ROU', 'Romania', 12235.88),
(186, 'RUS', 'Russian Federation', 16788.58),
(187, 'RWA', 'Rwanda', 9732.78),
(188, 'BLM', 'Saint Barthélemy', 5929.92),
(189, 'SHN', 'Saint Helena, Ascension and Tristan da Cunha', 5617.02),
(190, 'KNA', 'Saint Kitts and Nevis', 5794.68),
(191, 'LCA', 'Saint Lucia', 5399.51),
(192, 'MAF', 'Saint Martin (French part)', 5889.15),
(193, 'SPM', 'Saint Pierre and Miquelon', 9058.76),
(194, 'VCT', 'Saint Vincent and the Grenadines', 5330.49),
(195, 'WSM', 'Samoa', 11234.64),
(196, 'SMR', 'San Marino', 11273.52),
(197, 'STP', 'Sao Tome and Principe', 7845.16),
(198, 'SAU', 'Saudi Arabia', 12717.42),
(199, 'SEN', 'Senegal', 7152.02),
(200, 'SRB', 'Serbia', 11851.84),
(201, 'SYC', 'Seychelles', 11874.49),
(202, 'SLE', 'Sierra Leone', 6872.68),
(203, 'SGP', 'Singapore', 15881.86),
(204, 'SXM', 'Sint Maarten (Dutch part)', 5874.85),
(205, 'SVK', 'Slovakia', 12031.59),
(206, 'SVN', 'Slovenia', 11580.96),
(207, 'SLB', 'Solomon Islands', 13860.66),
(208, 'SOM', 'Somalia', 12222.54),
(209, 'ZAF', 'South Africa', 7586.91),
(210, 'SGS', 'South Georgia and the South Sandwich Islands', 2762.07),
(211, 'KOR', 'Korea (Republic of)', 19422.54),
(212, 'SSD', 'South Sudan', 10301.32),
(213, 'ESP', 'Spain', 9994.28),
(214, 'LKA', 'Sri Lanka', 14852.34),
(215, 'SDN', 'Sudan', 10802.85),
(216, 'SUR', 'Suriname', 4300.8),
(217, 'SJM', 'Svalbard and Jan Mayen', 13500.1),
(218, 'SWZ', 'Swaziland', 8364.59),
(219, 'SWE', 'Sweden', 12566.99),
(220, 'CHE', 'Switzerland', 11228.81),
(221, 'SYR', 'Syrian Arab Republic', 12634.15),
(222, 'TWN', 'Taiwan', 18777.92),
(223, 'TJK', 'Tajikistan', 15539.68),
(224, 'TZA', 'Tanzania, United Republic of', 9936.47),
(225, 'THA', 'Thailand', 16943.87),
(226, 'TLS', 'Timor-Leste', 15162.97),
(227, 'TGO', 'Togo', 7837.62),
(228, 'TKL', 'Tokelau', 11531.14),
(229, 'TON', 'Tonga', 10981.53),
(230, 'TTO', 'Trinidad and Tobago', 5079.5),
(231, 'TUN', 'Tunisia', 10359.31),
(232, 'TUR', 'Turkey', 12595.68),
(233, 'TKM', 'Turkmenistan', 14640.43),
(234, 'TCA', 'Turks and Caicos Islands', 6420.78),
(235, 'TUV', 'Tuvalu', 12437.51),
(236, 'UGA', 'Uganda', 10105.24),
(237, 'UKR', 'Ukraine', 12855.35),
(238, 'ARE', 'United Arab Emirates', 13471.23),
(239, 'GBR', 'United Kingdom of Great Britain and Northern Irela', 11236.39),
(240, 'USA', 'United States of America', 9003.36),
(241, 'URY', 'Uruguay', 283.56),
(242, 'UZB', 'Uzbekistan', 14994.84),
(243, 'VUT', 'Vanuatu', 12623.38),
(244, 'VEN', 'Venezuela (Bolivarian Republic of)', 4805.76),
(245, 'VNM', 'Viet Nam', 17546.02),
(246, 'WLF', 'Wallis and Futuna', 11572.35),
(247, 'ESH', 'Western Sahara', 8129.72),
(248, 'YEM', 'Yemen', 12430.22),
(249, 'ZMB', 'Zambia', 8922.24),
(250, 'ZWE', 'Zimbabwe', 8619.32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `request_hist`
--

CREATE TABLE IF NOT EXISTS `request_hist` (
  `id_request` int(11) NOT NULL AUTO_INCREMENT,
  `iso_3166` varchar(3) NOT NULL,
  `request_ip` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_request`),
  KEY `iso_3166` (`iso_3166`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `request_hist`
--
ALTER TABLE `request_hist`
  ADD CONSTRAINT `request_hist_ibfk_1` FOREIGN KEY (`iso_3166`) REFERENCES `countries` (`iso_3166`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
