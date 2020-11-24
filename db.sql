-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 24, 2020 at 12:51 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `created`) VALUES
(74, 'P1', '2020-09-22 00:00:00'),
(75, 'P2', '2020-09-01 10:34:48'),
(76, 'Mon produit', '2020-09-22 00:00:00'),
(77, 'Mon produit', '2020-09-22 00:00:00'),
(78, 'Mon produit', '2020-09-22 00:00:00'),
(79, 'Mon produit', '2020-09-22 00:00:00'),
(80, 'Mon produit', '2020-10-02 00:00:00'),
(81, 'Mon produit', '2020-10-02 00:00:00'),
(82, 'Mon produit', '2020-10-02 00:00:00'),
(83, 'Mon produit', '2020-10-02 00:00:00'),
(84, 'Mon produit', '2020-10-02 00:00:00'),
(85, 'a1234', '2020-10-02 13:56:31'),
(86, 'bla bla', '2020-10-02 14:01:23'),
(87, 'a1', '2020-10-02 14:23:47'),
(88, 'a1', '2020-11-03 13:25:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
