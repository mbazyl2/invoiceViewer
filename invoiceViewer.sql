-- phpMyAdmin SQL Dump
-- version 4.6.6deb1+deb.cihar.com~xenial.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 23, 2017 at 04:50 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoiceViewer`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `number` varchar(50) DEFAULT NULL,
  `issued_date` date DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `user_id`, `number`, `issued_date`, `amount`, `company`, `address`, `email`, `modified`) VALUES
(1, 1, 'FV20102017/1', '2017-10-20', '100.56', 'Firma 1', 'ul.Sezamkowa 1', 'firma1@firma1.pl', '2017-10-20 14:31:40'),
(2, 2, 'FV21102017/1', '2017-10-21', '12312.12', 'firma2', 'ul.Sezamkowa 2', 'firma2@firma2.pl', NULL),
(3, 1, 'FV20102017/2', '2017-10-20', '1234.00', 'firma1', 'ul.Sezamkowa 1', 'firma111@firma111.pl', NULL),
(4, 1, 'FV20102017/5', '2015-10-09', '1234123.00', 'firma 1', 'ul. Sezamkowa 1', 'firma1@firma1.pl', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`, `modified`) VALUES
(1, 'jan@jan.pl', '$2y$10$5ZjBxfe3r7gCgp2n3OcjmOwi2e17YcPI6MFEooKvVIi88wj3/Igtq', '2017-10-20 13:20:44', '2017-10-20 13:20:44'),
(2, 'maciej@maciej.pl', '$2y$10$idIVzmPDDLFDHztdalODS.PeESz0AAADVWF.Y/jJF1kwPTiwXagGe', '2017-10-20 13:21:48', '2017-10-20 13:21:48'),
(3, 'zofia@zofia.pl', '$2y$10$mzPuf9paUopgU4GncCOGc.9Dyrr9nEGra5LiD12U4h.ppVQAxtBMW', '2017-10-20 13:22:06', '2017-10-20 13:22:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_key` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
