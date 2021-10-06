-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 06:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  AUTOCOMMIT = 0;

START TRANSACTION;

SET
  time_zone = "+00:00";

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO
  `users` (`userID`, `fullName`, `username`, `password`)
VALUES
  (
    1,
    'admin',
    'admin',
    '21232f297a57a5a743894a0e4a801fc3'
  );

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `createdOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO
  `customer` (
    `customerID`,
    `fullName`,
    `username`,
    `password`,
    `email`,
    `mobile`,
    `phone2`,
    `address`,
    `address2`,
    `city`,
    `district`,
    `createdOn`
  )
VALUES
  (
    1,
    'Bill Gates',
    'bill',
    'e8375d7cd983efcbf956da5937050ffc',
    'bill@microsoft.com',
    993737,
    772484884,
    '45, Palo Alto House, Marine Drive',
    'South Carolina',
    'Microsoft',
    'Kurunegala',
    '2018-04-30 15:14:02'
  ),
  (
    2,
    'Steve Jobs',
    'steve',
    'd69403e2673e611d4cbd3fad6fd1788e',
    'sjobs@apple.com',
    333829832,
    0,
    '1st Floor, Apple House, ',
    'Las Vegas Street',
    'Las Vegas',
    'Monaragala',
    '2018-05-01 12:03:10'
  );

CREATE TABLE `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float NOT NULL DEFAULT '0',
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO
  `item` (
    `productID`,
    `itemNumber`,
    `itemName`,
    `discount`,
    `stock`,
    `unitPrice`,
    `imageURL`,
    `status`,
    `description`
  )
VALUES
  (
    34,
    '1',
    'First Bag',
    0,
    28,
    1500,
    '1525670999_1.png',
    'Active',
    ''
  ),
  (
    35,
    '2',
    'School Bag',
    0,
    5,
    500,
    '1525681111_661539.png',
    'Active',
    ''
  ),
  (
    36,
    '3',
    'Office Bag',
    0,
    5,
    1300,
    '1525709924_office bag.jpg',
    'Active',
    ''
  ),
  (
    37,
    '4',
    'Leather Bag',
    2,
    6,
    3409,
    '1525710010_leather bag.jpg',
    'Active',
    ''
  ),
  (
    38,
    '5',
    'Travel Bag',
    2,
    17,
    1200,
    '1525706032_travel bag.jpg',
    'Active',
    ''
  ),
  (
    39,
    '6',
    'Gym Bag',
    0,
    0,
    3000,
    '1525710463_gym bag.jpg',
    'Active',
    ''
  ),
  (
    40,
    '7',
    'Handbag',
    1.5,
    10,
    1650,
    '1525713267_handbag.jpg',
    'Active',
    ''
  ),
  (
    41,
    '8',
    'Laptop Bag',
    2.1,
    9,
    2300,
    '1525750683_661539.png',
    'Active',
    ''
  ),
  (
    43,
    '10',
    'Sports Bag',
    1,
    92,
    1000,
    '1525756289_sports bag.jpg',
    'Active',
    ''
  ),
  (
    45,
    '11',
    'First Aid Bag',
    1.5,
    11,
    1200,
    '1525787551_first aid bag.jpg',
    'Active',
    ''
  ),
  (
    49,
    '14',
    'Hiking Bag',
    1.5,
    6,
    1200,
    '1526297640_hiking bag.jpg',
    'Active',
    'This is a hiking bag. Ideal for long distance hikes. Light-weight and water proof.'
  );

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `unitPrice` float(10, 0) NOT NULL DEFAULT '0'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

INSERT INTO
  `sale` (
    `saleID`,
    `itemNumber`,
    `customerID`,
    `customerName`,
    `itemName`,
    `saleDate`,
    `quantity`,
    `unitPrice`
  )
VALUES
  (
    1,
    '3',
    4,
    'Bill Gates',
    'Office Bag',
    '2018-05-24',
    2,
    1300
  ),
  (
    2,
    '1',
    39,
    'Amal Silverton',
    'First Bag',
    '2018-05-24',
    111,
    1500
  ),
  (
    3,
    '4',
    18,
    'Asitha Silva',
    'Leather Bag',
    '2018-05-24',
    1,
    3409
  ),
  (
    4,
    '5',
    25,
    'Theresa May',
    'Travel Bag',
    '2018-05-24',
    1,
    1200
  ),
  (
    5,
    '6',
    24,
    'Sunil Perera',
    'Gym Bag',
    '2018-05-24',
    1,
    3000
  ),
  (
    6,
    '7',
    14,
    'Steve Jobs',
    'Handbag',
    '2018-05-24',
    1,
    1650
  ),
  (
    7,
    '3',
    4,
    'Bill Gates',
    'Office Bag',
    '2018-05-24',
    3,
    1300
  ),
  (
    8,
    '8',
    4,
    'Bill Gates',
    'Laptop Bag',
    '2018-05-14',
    1,
    2300
  ),
  (
    9,
    '6',
    26,
    'Sachin Tendulkar',
    'Gym Bag',
    '2018-05-14',
    1,
    3000
  ),
  (
    10,
    '5',
    25,
    'Theresa May',
    'Travel Bag',
    '2018-05-14',
    9,
    1200
  ),
  (
    11,
    '10',
    26,
    'Sachin Tendulkar',
    'Sports Bag',
    '2018-04-05',
    7,
    1000
  ),
  (
    12,
    '1',
    14,
    'Steve Jobs',
    'First Bag',
    '2018-05-14',
    2,
    1500
  ),
  (
    13,
    '3',
    38,
    'Nuwan Perara',
    'Office Bag',
    '2018-05-24',
    0,
    1300
  ),
  (
    14,
    '10',
    39,
    'Amal Silverton',
    'Sports Bag',
    '2018-05-17',
    1,
    1000
  ),
  (
    15,
    '14',
    38,
    'Nuwan Perara',
    'Hiking Bag',
    '2018-05-24',
    1,
    1200
  ),
  (
    16,
    '1',
    14,
    'Steve Jobs',
    'First Bag',
    '2018-05-24',
    1,
    1500
  ),
  (
    17,
    '4',
    14,
    'Steve Jobs',
    'Leather Bag',
    '2018-05-18',
    1,
    3409
  );

CREATE TABLE `cart` (
  `cart_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `product_quantity` int(20) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

ALTER TABLE
  `users`
ADD
  PRIMARY KEY (`userID`);

ALTER TABLE
  `users`
MODIFY
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 8;

ALTER TABLE
  `item`
ADD
  PRIMARY KEY (`productID`);

ALTER TABLE
  `item`
MODIFY
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 50;

ALTER TABLE
  `sale`
ADD
  PRIMARY KEY (`purchaseID`);

ALTER TABLE
  `sale`
MODIFY
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 53;

ALTER TABLE
  `customer`
ADD
  PRIMARY KEY (`customerID`);

ALTER TABLE
  `customer`
MODIFY
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 43;

COMMIT;