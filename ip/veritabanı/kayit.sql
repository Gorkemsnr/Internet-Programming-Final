-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 03 Oca 2023, 20:56:01
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
-- Veritabanı: `kayit`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `billing`
--

DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `id` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `period` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `price` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `coach`
--

DROP TABLE IF EXISTS `coach`;
CREATE TABLE IF NOT EXISTS `coach` (
  `id` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `experience` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `coach`
--

INSERT INTO `coach` (`id`, `name`, `date`, `experience`) VALUES
('1', 'asdas', '252525', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `date` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `dob` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `coach` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `member`
--

INSERT INTO `member` (`id`, `name`, `date`, `dob`, `phone`, `coach`) VALUES
('1', 'asdasd', '1212525', '122525', '255245', 'John');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE IF NOT EXISTS `receptionist` (
  `id` int(20) NOT NULL,
  `name` int(20) NOT NULL,
  `date` int(20) NOT NULL,
  `address` int(20) NOT NULL,
  `phone` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) COLLATE utf8mb4_turkish_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password`) VALUES
(8, 'gorkem', '356a192b7913b04c54574d18c28d46e6395428ab'),
(7, 'a', 'b'),
(9, 'oguz', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
