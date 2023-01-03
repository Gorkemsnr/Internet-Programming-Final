-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 03 Oca 2023, 20:55:01
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `gymdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `streetName` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `state` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `city` varchar(15) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `pass_key` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `securekey` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `Full_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`username`, `pass_key`, `securekey`, `Full_name`) VALUES
('admin', 'password', 'admin1', 'gymadmin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `enrolls_to`
--

DROP TABLE IF EXISTS `enrolls_to`;
CREATE TABLE IF NOT EXISTS `enrolls_to` (
  `et_id` int(5) NOT NULL AUTO_INCREMENT,
  `pid` varchar(8) COLLATE utf8_turkish_ci NOT NULL,
  `uid` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `paid_date` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `expire` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `renewal` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`et_id`),
  KEY `pid` (`pid`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `enrolls_to`
--

INSERT INTO `enrolls_to` (`et_id`, `pid`, `uid`, `paid_date`, `expire`, `renewal`) VALUES
(1, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(2, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(3, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(4, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(5, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(6, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(7, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(8, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(9, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(10, 'Ay', '1672569279', '2023-01-01', '2023-02-01', 'yes'),
(11, 'Ay', '1672591318', '2023-01-01', '2023-02-01', 'yes'),
(12, 'uc', '1672591342', '2023-01-01', '2023-04-01', 'yes'),
(13, 'uc', '1672596748', '2023-01-01', '2023-04-01', 'yes'),
(14, 'uc', '', '2023-01-02', '2023-04-02', 'yes'),
(15, 'uc', '1672603555', '2023-01-02', '2023-04-02', 'yes'),
(16, 'uc', '1672603555', '2023-01-02', '2023-04-02', 'yes'),
(17, 'uc', '1672603555', '2023-01-02', '2023-04-02', 'yes'),
(18, 'uc', '1672603555', '2023-01-02', '2023-04-02', 'yes'),
(19, 'uc', '1672603555', '2023-01-02', '2023-04-02', 'yes'),
(20, 'uc', '1672604278', '2023-01-02', '2023-04-02', 'yes'),
(21, 'uc', '1672604516', '2023-01-02', '2023-04-02', 'yes'),
(22, 'uc', '1672608883', '2023-01-02', '2023-04-02', 'yes'),
(23, 'uc', '1672658285', '2023-01-02', '2023-04-02', 'yes'),
(24, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(25, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(26, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(27, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(28, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(29, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(30, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(31, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(32, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(33, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes'),
(34, 'uc', '1672750869', '2023-01-03', '2023-04-03', 'yes');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `health_status`
--

DROP TABLE IF EXISTS `health_status`;
CREATE TABLE IF NOT EXISTS `health_status` (
  `hid` int(5) NOT NULL AUTO_INCREMENT,
  `calorie` varchar(8) COLLATE utf8_turkish_ci DEFAULT NULL,
  `height` varchar(8) COLLATE utf8_turkish_ci DEFAULT NULL,
  `weight` varchar(8) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fat` varchar(8) COLLATE utf8_turkish_ci DEFAULT NULL,
  `remarks` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `uid` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`hid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `health_status`
--

INSERT INTO `health_status` (`hid`, `calorie`, `height`, `weight`, `fat`, `remarks`, `uid`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(2, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(3, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(4, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(5, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(6, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(7, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(8, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(9, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(10, NULL, NULL, NULL, NULL, NULL, '1672569279'),
(11, NULL, NULL, NULL, NULL, NULL, '1672591318'),
(12, NULL, NULL, NULL, NULL, NULL, '1672591342'),
(13, NULL, NULL, NULL, NULL, NULL, '1672596748'),
(14, NULL, NULL, NULL, NULL, NULL, ''),
(15, NULL, NULL, NULL, NULL, NULL, '1672603555'),
(16, NULL, NULL, NULL, NULL, NULL, '1672603555'),
(17, NULL, NULL, NULL, NULL, NULL, '1672603555'),
(18, NULL, NULL, NULL, NULL, NULL, '1672604278'),
(19, NULL, NULL, NULL, NULL, NULL, '1672604516'),
(20, NULL, NULL, NULL, NULL, NULL, '1672608883'),
(21, NULL, NULL, NULL, NULL, NULL, '1672658285'),
(22, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(23, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(24, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(25, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(26, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(27, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(28, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(29, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(30, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(31, NULL, NULL, NULL, NULL, NULL, '1672750869'),
(32, NULL, NULL, NULL, NULL, NULL, '1672750869');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `plan`
--

DROP TABLE IF EXISTS `plan`;
CREATE TABLE IF NOT EXISTS `plan` (
  `pid` varchar(8) COLLATE utf8_turkish_ci NOT NULL,
  `planName` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `validity` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `amount` int(10) NOT NULL,
  `active` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `plan`
--

INSERT INTO `plan` (`pid`, `planName`, `description`, `validity`, `amount`, `active`) VALUES
('Ay', 'Aylik Plan', 'Aylık Plan uygulaması sohbet özelliğini ve koç desteğini açar', '1', 600, 'yes'),
('uc', '3 Aylik', 'Tüm Spor Salonu Özelliğini Açan 3 Aylık Abonelik', '3', 1600, 'yes'),
('alti', '6 Aylik', '6 Aylık Üyelik Açar', '6', 3000, 'yes'),
('ICJWTB', 'asfasf', 'asdasd', '15351345', 12312, 'yes'),
('APCIWY', 'asdasd', 'qwdq', '3', 2000, 'yes');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `timetable`
--

DROP TABLE IF EXISTS `timetable`;
CREATE TABLE IF NOT EXISTS `timetable` (
  `tid` int(12) NOT NULL AUTO_INCREMENT,
  `tname` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `day1` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `day2` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `day3` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `day4` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `day5` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `day6` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `timetable`
--

INSERT INTO `timetable` (`tid`, `tname`, `day1`, `day2`, `day3`, `day4`, `day5`, `day6`) VALUES
(1, 'sdasd', 'qweqw', 'qweqw', 'qweqw', 'eqwe', 'qweqw', 'qweqw');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userid` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `username` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `gender` varchar(8) COLLATE utf8_turkish_ci NOT NULL,
  `mobile` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `dob` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `joining_date` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_2` (`userid`),
  KEY `userid` (`userid`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
