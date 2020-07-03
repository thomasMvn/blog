-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2020 at 10:11 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tp-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Id` tinyint(3) UNSIGNED NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Id`, `FirstName`, `LastName`) VALUES
(1, 'John', 'Doe'),
(2, 'David', 'Boe'),
(3, 'Marc', 'Boe');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` tinyint(3) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
(1, 'Drawing'),
(3, 'Information'),
(2, 'Tatouage');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `Id` mediumint(8) UNSIGNED NOT NULL,
  `NickName` varchar(30) DEFAULT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Post_Id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `Id` smallint(5) UNSIGNED NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Contents` text NOT NULL,
  `Image` varchar(255) NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Author_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  `Category_Id` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`Id`, `Title`, `Contents`, `Image`, `CreationTimestamp`, `Author_Id`, `Category_Id`) VALUES
(15, 'Nouvelle Création ! ', 'Merci a .............. pour l\'inspiration. Qu\'en pensez vous ?', 'article4.jpg', '2020-07-03 11:54:13', 2, 2),
(20, 'Réouverture du salon ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras gravida urna vel ultrices condimentum. Vivamus non pulvinar odio, in scelerisque lectus. Nulla pretium consectetur sem, vehicula rutrum risus egestas et. Quisque non ultrices lorem, ut aliquet arcu. Vestibulum nec felis tortor. Donec consectetur, libero eget lobortis fermentum, erat ante tincidunt nibh, a bibendum sapien purus nec orci. Suspendisse vulputate mi ut justo dapibus suscipit. Nullam a fringilla nunc.\r\n\r\nSed in aliquam massa. Sed ut egestas metus. Mauris enim diam, faucibus a diam porttitor, accumsan pretium nibh. Integer fermentum velit odio, sed cursus enim placerat non. Mauris ac hendrerit justo. Ut fermentum quis tortor vel molestie. Etiam quis posuere lacus. Etiam cursus nibh molestie, egestas lorem vel, consectetur sem.\r\n\r\nCras ac dolor nunc. Donec viverra maximus dolor vel pulvinar. Fusce tempus iaculis fringilla. Nam quis faucibus metus. Ut eu nisi sagittis, egestas justo ac, tincidunt felis. Duis sed interdum tortor. Quisque at fringilla ex, nec varius metus. Integer vel metus ac nulla sodales mollis vel vel tortor. Suspendisse condimentum volutpat semper.\r\n\r\nNulla lobortis sem quis imperdiet tempus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod eget mi eget fringilla. Etiam ex nisi, blandit sit amet erat viverra, rhoncus gravida leo. Phasellus a molestie neque, eu iaculis nisi. Nulla in eleifend nunc, sed scelerisque urna. Sed rutrum, nibh ut mollis ultrices, metus ipsum efficitur enim, vel vulputate mauris purus nec arcu. Aenean sit amet odio suscipit, mattis odio nec, cursus purus. Nullam scelerisque congue purus eget egestas. Nullam a erat iaculis, tempus augue eget, accumsan sem. Suspendisse potenti. Etiam sit amet nunc sed nisi vestibulum faucibus quis eu nisi. Nam cursus purus nibh, non ullamcorper mi facilisis ut. Morbi pretium sem lacus, ac congue lectus malesuada vel.\r\n\r\nEtiam luctus et turpis a aliquet. Sed scelerisque, tortor vel consectetur lobortis, enim tellus gravida dolor, quis ultricies sapien ligula quis dui. Pellentesque sit amet nibh vitae nibh lacinia laoreet. Phasellus ut aliquet mauris. Morbi ultricies tincidunt libero. Suspendisse nec finibus urna. Aenean laoreet ac dui vestibulum scelerisque. Pellentesque dictum, felis eu vehicula consequat, ipsum quam auctor velit, vitae sagittis erat erat vitae ipsum. Fusce sit amet urna sit amet dolor varius tempor a a tellus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi vitae ullamcorper est. Mauris laoreet convallis velit, congue porta mi rutrum at. Pellentesque gravida dui in ex feugiat suscipit.', '', '2020-07-03 11:56:54', 3, 3),
(21, 'Qu\'en pensez vous ?', '', 'article1.jpg', '2020-07-03 11:57:32', 1, 1),
(23, 'Tatouage de la journée', '', 'article2.jpg', '2020-07-03 11:58:50', 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CreationTimestamp` (`CreationTimestamp`),
  ADD KEY `Post_Id` (`Post_Id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Title` (`Title`),
  ADD KEY `CreationTimestamp` (`CreationTimestamp`),
  ADD KEY `Author_Id` (`Author_Id`),
  ADD KEY `Category_Id` (`Category_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `post` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`Author_Id`) REFERENCES `author` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;
