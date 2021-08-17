-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for cars
CREATE DATABASE IF NOT EXISTS `cars` /*!40100 DEFAULT CHARACTER SET utf16 */;
USE `cars`;

-- Dumping structure for table cars.brand
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf16;

-- Dumping data for table cars.brand: 3 rows
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` (`id`, `name`) VALUES
	(1, 'Mercedes'),
	(2, 'BMW'),
	(3, 'Audi');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;

-- Dumping structure for table cars.car
CREATE TABLE IF NOT EXISTS `car` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `id_users` int(150) NOT NULL DEFAULT 0,
  `id_brand` int(150) DEFAULT NULL,
  `id_model` int(11) DEFAULT NULL,
  `id_model_variant` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `year` int(50) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `fuel_type` int(11) DEFAULT NULL,
  `engine_size` int(11) DEFAULT NULL,
  `engine_power` int(11) DEFAULT NULL,
  `private_or_trade` int(11) DEFAULT NULL,
  `body_type` int(11) DEFAULT NULL,
  `gearbox` int(11) DEFAULT NULL,
  `colour` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `img_path` varchar(150) DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf16;

-- Dumping data for table cars.car: 33 rows
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` (`id`, `id_users`, `id_brand`, `id_model`, `id_model_variant`, `title`, `description`, `price`, `year`, `mileage`, `fuel_type`, `engine_size`, `engine_power`, `private_or_trade`, `body_type`, `gearbox`, `colour`, `seats`, `img_path`, `date_added`, `date_updated`) VALUES
	(31, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(30, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(29, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(32, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(33, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(34, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(35, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(36, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(37, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(38, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(39, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(40, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(41, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(42, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(43, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(44, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(45, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(46, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(47, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(48, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(49, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(50, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(51, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(52, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(53, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(54, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(55, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(56, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(57, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(58, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(59, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(60, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL),
	(61, 12, 2, 1, 1, '3.0i Competition Auto xDrive (s/s) 5dr', 'X3M Competition, 1 Owner From New With Full BMW Main Dealer Service History, Finished In Donington Grey Metallic With Black Merino Leather Upholstery, 21" M-Light V Spoke Design Alloy Wheels With Blue "M" Brake Calipers, Head Up Display, Adaptive LED Headlights, Switchable Sports Exhaust…', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/cars/b30fd18c505b4cc4949b8283ade75437_12_1628877414285.jpg', '2021-08-13 18:56:54', NULL);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;

-- Dumping structure for table cars.file
CREATE TABLE IF NOT EXISTS `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_type` enum('image','pdf','csv') DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- Dumping data for table cars.file: 0 rows
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- Dumping structure for table cars.model
CREATE TABLE IF NOT EXISTS `model` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `id_brand` int(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf16;

-- Dumping data for table cars.model: 9 rows
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` (`id`, `id_brand`, `title`, `description`) VALUES
	(1, 2, 'X3', NULL),
	(2, 2, 'X5', NULL),
	(3, 2, 'X6', NULL),
	(4, 3, 'Q3', NULL),
	(5, 3, 'Q7', NULL),
	(6, 1, '220', NULL),
	(7, 1, 'SLK', NULL),
	(8, 1, 'CLK', NULL),
	(9, 1, 'GLK', NULL);
/*!40000 ALTER TABLE `model` ENABLE KEYS */;

-- Dumping structure for table cars.model_variant
CREATE TABLE IF NOT EXISTS `model_variant` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `id_model` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf16;

-- Dumping data for table cars.model_variant: 11 rows
/*!40000 ALTER TABLE `model_variant` DISABLE KEYS */;
INSERT INTO `model_variant` (`id`, `id_model`, `title`, `description`) VALUES
	(1, 1, 'Sport', '0'),
	(2, 1, 'Classic', '0'),
	(3, 7, 'Avangarde', '0'),
	(4, 7, 'Lux', '0'),
	(5, 7, 'Business', '0'),
	(6, 4, 'Sport', '0'),
	(7, 4, 'Family', '0'),
	(8, 2, 'Sport', '0'),
	(9, 3, 'Avangarde', '0'),
	(10, 5, 'Sport', '0'),
	(11, 6, 'Sport', '0');
/*!40000 ALTER TABLE `model_variant` ENABLE KEYS */;

-- Dumping structure for table cars.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(150) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf16;

-- Dumping data for table cars.users: 1 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `avatar`, `created_date`) VALUES
	(12, 'Ion', 'Cataraga', 'icataraga@yahoo.com', '07463382557', 'e10adc3949ba59abbe56e057f20f883e', 'uploads/3_1628877125999.jpg', '2021-08-13 18:52:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
