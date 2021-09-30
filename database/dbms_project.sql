-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 06:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`userID`, `fullName`, `username`, `password`) VALUES
(5, 'Guest', 'guest', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'a', 'a', '0cc175b9c0f1b6a831c399e269772661'),
(7, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

CREATE TABLE `customers` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customers` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `createdOn`) VALUES
(4, 'Bill Gates', 'bill@microsoft.com', 993737, 772484884, '45, Palo Alto House, Marine Drive', 'South Carolina', 'Microsoft', 'Kurunegala', '2018-04-30 15:14:02'),
(14, 'Steve Jobs', 'sjobs@apple.com', 333829832, 0, '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Monaragala', '2018-05-01 12:03:10'),
(18, 'Asitha Silva', 'asitha@gmail.com', 777987654, 0, 'No. 3, Radcliff Avenue, School Lane', 'Kalutara South', 'Kalutara', 'Kalutara', '2018-05-02 09:52:28'),
(24, 'Sunil Perera', 'Sunil@gypsies.sound', 338393932, 413837293, '67/7, Perera Villa, Jayasekara Avenue', 'Mount Lavinia', 'Ratmalana', 'Colombo', '2018-05-02 10:48:37'),
(25, 'Theresa May', 'may34@uk.gov.com', 329393903, 777833737, '12, Downing Street', 'London', 'London', 'Matale', '2018-05-03 02:28:07'),
(26, 'Sachin Tendulkar', 'sachintendulkar@icc.com', 444958303, 84792838, '789-4, Apartment 3, ', 'Cric Complex', 'New Delhi', 'Puttalam', '2018-05-03 02:28:38'),
(38, 'Nuwan Perara', 'nuwan@yahoo.com', 839378202, 0, 'Nuwan Villa, Lower Street,', 'North Mulativu', 'Mullaitivu', 'Mullaitivu', '2018-05-05 11:17:49'),
(39, 'Amal Silverton', 'amals452@yahoo.com', 232345676, 0, 'Amal\'s House, Amal\'s Street,', 'Amal Road', 'Ambalangoda', 'Galle', '2018-05-05 13:27:06'),
(40, 'Andrew Symonds', 'symonds@cricket.au.com', 123, 0, '23, Oak View Avenue', 'Western Australia', 'Melbourne', 'Colombo', '2018-05-13 01:20:23'),
(41, 'Mark Taylor', '', 111, 0, '111', '', '', 'Colombo', 'Active', '2018-05-13 01:24:54'),
(42, 'Nelson Mandela', 'sjobs@apple.com', 333829832, 0, '1st Floor, Apple House, ', 'Las Vegas Street', 'Las Vegas', 'Kalutara', '2018-05-13 02:39:41');

CREATE TABLE `items` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL DEFAULT '0',
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `items` (`productID`, `itemNumber`, `itemName`, `stock`, `unitPrice`, `imageURL`, `description`) VALUES
(34, '1', 'First Bag', 28, 1500, '1525670999_1.png', ''),
(35, '2', 'School Bag', 5, 500, '1525681111_661539.png', ''),
(36, '3', 'Office Bag', 5, 1300, '1525709924_office bag.jpg', ''),
(37, '4', 'Leather Bag', 6, 3409, '1525710010_leather bag.jpg', ''),
(38, '5', 'Travel Bag', 17, 1200, '1525706032_travel bag.jpg', ''),
(39, '6', 'Gym Bag', 0, 3000, '1525710463_gym bag.jpg', ''),
(40, '7', 'Handbag', 10, 1650, '1525713267_handbag.jpg', ''),
(41, '8', 'Laptop Bag', 9, 2300, '1525750683_661539.png', ''),
(43, '10', 'Sports Bag', 92, 1000, '1525756289_sports bag.jpg', ''),
(45, '11', 'First Aid Bag', 11, 1200, '1525787551_first aid bag.jpg', ''),
(49, '14', 'Hiking Bag', 6, 1200, '1526297640_hiking bag.jpg', 'This is a hiking bag. Ideal for long distance hikes. Light-weight and water proof.');

CREATE TABLE `orders` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `orders` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `quantity`, `unitPrice`) VALUES
(1, '3', 4, 'Bill Gates', 'Office Bag', '2018-05-24', 2, 1300),
(2, '1', 39, 'Amal Silverton', 'First Bag', '2018-05-24', 111, 1500),
(3, '4', 18, 'Asitha Silva', 'Leather Bag', '2018-05-24', 1, 3409),
(4, '5', 25, 'Theresa May', 'Travel Bag', '2018-05-24', 1, 1200),
(5, '6', 24, 'Sunil Perera', 'Gym Bag', '2018-05-24', 1, 3000),
(6, '7', 14, 'Steve Jobs', 'Handbag', '2018-05-24', 1, 1650),
(7, '3', 4, 'Bill Gates', 'Office Bag', '2018-05-24', 3, 1300),
(8, '8', 4, 'Bill Gates', 'Laptop Bag', '2018-05-14', 1, 2300),
(9, '6', 26, 'Sachin Tendulkar', 'Gym Bag', '2018-05-14', 1, 3000),
(10, '5', 25, 'Theresa May', 'Travel Bag', '2018-05-14', 9, 1200),
(11, '10', 26, 'Sachin Tendulkar', 'Sports Bag', '2018-04-05', 7, 1000),
(12, '1', 14, 'Steve Jobs', 'First Bag', '2018-05-14', 2, 1500),
(13, '3', 38, 'Nuwan Perara', 'Office Bag', '2018-05-24', 0, 1300),
(14, '10', 39, 'Amal Silverton', 'Sports Bag', '2018-05-17', 1, 1000),
(15, '14', 38, 'Nuwan Perara', 'Hiking Bag', '2018-05-24', 1, 1200),
(16, '1', 14, 'Steve Jobs', 'First Bag', '2018-05-24', 1, 1500),
(17, '4', 14, 'Steve Jobs', 'Leather Bag', '2018-05-18', 1, 3409);

CREATE TABLE `cart` (
  `cart_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `product_quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `items`
  ADD PRIMARY KEY (`productID`);

ALTER TABLE `items`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

ALTER TABLE `orders`
  ADD PRIMARY KEY (`purchaseID`);

ALTER TABLE `orders`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

COMMIT;