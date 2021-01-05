-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 05, 2021 at 07:17 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `information` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `room`, `address`, `zipcode`, `city`, `phone`, `district`, `information`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Zone 1', 123, '123', '123', '123', '123', 123, '123', '2020-10-20 00:00:00', '2020-10-20 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `creneau`
--

CREATE TABLE `creneau` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `nb` int(11) NOT NULL,
  `begin` datetime NOT NULL,
  `end` datetime NOT NULL,
  `salle_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `creneau`
--

INSERT INTO `creneau` (`id`, `created_at`, `updated_at`, `nb`, `begin`, `end`, `salle_id`) VALUES
(1, '2020-10-20 16:00:00', '2020-10-20 16:00:00', 4, '2020-10-20 16:00:00', '2020-10-20 16:00:00', 1),
(2, '2020-10-20 16:00:00', '2020-10-20 16:00:00', 4, '2020-10-20 16:00:00', '2020-10-20 16:00:00', 1),
(3, '2020-10-20 16:00:00', '2020-10-20 16:00:00', 4, '2020-10-20 16:00:00', '2020-10-20 16:00:00', 1),
(4, '2020-10-20 16:00:00', '2020-10-20 16:00:00', 4, '2021-10-20 16:00:00', '2021-10-20 16:00:00', 1),
(5, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(6, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(7, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(8, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(9, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(10, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(11, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(12, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(13, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 4, '2020-11-20 15:30:00', '2020-11-20 15:30:00', 1),
(14, '2020-11-24 14:02:00', '2020-11-24 14:02:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(15, '2020-11-24 14:20:00', '2020-11-24 14:20:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(16, '2020-11-24 14:20:00', '2020-11-24 14:20:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(17, '2020-11-24 14:21:00', '2020-11-24 14:21:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(18, '2020-11-24 14:21:00', '2020-11-24 14:21:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(19, '2020-11-24 14:21:00', '2020-11-24 14:21:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(20, '2020-11-24 14:21:00', '2020-11-24 14:21:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(21, '2020-11-24 14:21:00', '2020-11-24 14:21:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(22, '2020-11-24 14:22:00', '2020-11-24 14:22:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(23, '2020-11-24 14:24:00', '2020-11-24 14:24:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(24, '2020-11-24 14:25:00', '2020-11-24 14:25:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(25, '2020-11-24 14:25:00', '2020-11-24 14:25:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(26, '2020-11-24 14:26:00', '2020-11-24 14:26:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1),
(27, '2020-11-24 14:26:00', '2020-11-24 14:26:00', 4, '2020-11-20 15:30:00', '2020-11-20 16:30:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `creneau_matiere`
--

CREATE TABLE `creneau_matiere` (
  `creneau_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lvl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `creneau_matiere`
--

INSERT INTO `creneau_matiere` (`creneau_id`, `matiere_id`, `id`, `lvl`) VALUES
(1, 1, 1, '10'),
(2, 1, 2, '10'),
(2, 2, 3, '10'),
(2, 3, 4, '10'),
(3, 1, 5, '10'),
(3, 2, 6, '10'),
(3, 3, 7, '10'),
(4, 1, 8, '10'),
(4, 2, 9, '10'),
(4, 3, 10, '10'),
(1, 1, 11, '5'),
(1, 2, 12, '9'),
(1, 1, 13, '5'),
(1, 2, 14, '9'),
(1, 1, 15, '5'),
(1, 2, 16, '9'),
(26, 1, 17, '5'),
(26, 2, 18, '9'),
(27, 1, 19, '5'),
(27, 2, 20, '9');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `parent_firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emission` date NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  `s_civility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_civility` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_code_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_user_connexion`
--

CREATE TABLE `log_user_connexion` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`id`, `name`, `deleted_at`, `is_enable`) VALUES
(1, 'Maths', NULL, 1),
(2, 'Anglais', NULL, 1),
(3, 'Français', NULL, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` int(11) NOT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `start_at` date NOT NULL,
  `end_at` date NOT NULL,
  `is_enable` tinyint(1) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reglement`
--

CREATE TABLE `reglement` (
  `id` int(11) NOT NULL,
  `facture_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `creneau_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `student_id`, `creneau_id`) VALUES
(1, 10, 26),
(2, 10, 26),
(6, 10, 26),
(7, 11, 26),
(8, 12, 27);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salle`
--

INSERT INTO `salle` (`id`, `area_id`, `name`) VALUES
(1, 1, 'Salle 1');

-- --------------------------------------------------------

--
-- Table structure for table `school_etablishment`
--

CREATE TABLE `school_etablishment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `school_etablishment_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `civility` tinyint(1) NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lvl` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `school_etablishment_id`, `area_id`, `civility`, `lastname`, `firstname`, `lvl`, `email`, `phone`, `deleted_at`, `user_id`) VALUES
(1, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 23),
(2, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 24),
(3, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 24),
(4, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 25),
(5, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 25),
(6, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 27),
(7, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 27),
(8, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 29),
(9, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 29),
(10, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 32),
(11, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 32),
(12, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 42),
(13, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 42),
(14, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 43),
(15, NULL, NULL, 1, 'Demo', 'Elise', '9', 'elise@gmail.com', '+336121212', NULL, 43),
(16, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 45),
(17, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 45);

-- --------------------------------------------------------

--
-- Table structure for table `student_subscription`
--

CREATE TABLE `student_subscription` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `nb` int(11) NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_ht` double NOT NULL,
  `amount_ttc` double NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `area_id`, `reference`, `name`, `description`, `amount_ht`, `amount_ttc`, `deleted_at`) VALUES
(1, 1, '#123', '#123', '#123', 500, 600, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `civility` tinyint(1) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`, `phone`, `deleted_at`, `payment_method`, `address`, `zipcode`, `city`, `civility`, `token`, `username`) VALUES
(1, 'jean@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(11, 'jeassn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(13, 'jeaqsdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(21, 'jeaqsdfsdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(23, 'jeaqsdfsdfsdsdsdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(24, 'jeaqsdfsdfsdsdsdfdfssdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(25, 'jeaqsdfsdfsdsdsdfdfsssdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(27, 'jean2@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(29, 'jean4@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(32, 'jean5@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(34, 'jean34@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(37, 'jean345@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(40, 'jean3456@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(42, 'jean1234@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(43, 'jean12344@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(45, 'jean123445@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_role`
--

CREATE TABLE `user_has_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creneau`
--
ALTER TABLE `creneau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F9668B5FDC304035` (`salle_id`);

--
-- Indexes for table `creneau_matiere`
--
ALTER TABLE `creneau_matiere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_79C2373E7D0729A9` (`creneau_id`),
  ADD KEY `IDX_79C2373EF46CD258` (`matiere_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_90651744CB944F1A` (`student_id`),
  ADD KEY `IDX_9065174487DDEC63` (`area_id`),
  ADD KEY `fk_invoice_promo_code1_idx` (`promo_code_id`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1DDE477B2989F1FD` (`invoice_id`);

--
-- Indexes for table `log_user_connexion`
--
ALTER TABLE `log_user_connexion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75D7452EA76ED395` (`user_id`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reglement`
--
ALTER TABLE `reglement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EBE4C14C7F2DEE08` (`facture_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_42C84955CB944F1A` (`student_id`),
  ADD KEY `IDX_42C849557D0729A9` (`creneau_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4E977E5C87DDEC63` (`area_id`);

--
-- Indexes for table `school_etablishment`
--
ALTER TABLE `school_etablishment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B723AF33881BD363` (`school_etablishment_id`),
  ADD KEY `IDX_B723AF3387DDEC63` (`area_id`),
  ADD KEY `fk_student_user1_idx` (`user_id`);

--
-- Indexes for table `student_subscription`
--
ALTER TABLE `student_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_749166D9CB944F1A` (`student_id`),
  ADD KEY `IDX_749166D99A1887DC` (`subscription_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A3C664D387DDEC63` (`area_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Indexes for table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `fk_user_has_role_role1_idx` (`role_id`),
  ADD KEY `fk_user_has_role_user1_idx` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `creneau`
--
ALTER TABLE `creneau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `creneau_matiere`
--
ALTER TABLE `creneau_matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_item`
--
ALTER TABLE `invoice_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_user_connexion`
--
ALTER TABLE `log_user_connexion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reglement`
--
ALTER TABLE `reglement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_etablishment`
--
ALTER TABLE `school_etablishment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `student_subscription`
--
ALTER TABLE `student_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `creneau`
--
ALTER TABLE `creneau`
  ADD CONSTRAINT `FK_F9668B5FDC304035` FOREIGN KEY (`salle_id`) REFERENCES `salle` (`id`);

--
-- Constraints for table `creneau_matiere`
--
ALTER TABLE `creneau_matiere`
  ADD CONSTRAINT `FK_79C2373E7D0729A9` FOREIGN KEY (`creneau_id`) REFERENCES `creneau` (`id`),
  ADD CONSTRAINT `FK_79C2373EF46CD258` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_9065174487DDEC63` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `FK_90651744CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `fk_invoice_promo_code1` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_code` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD CONSTRAINT `FK_1DDE477B2989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Constraints for table `log_user_connexion`
--
ALTER TABLE `log_user_connexion`
  ADD CONSTRAINT `FK_75D7452EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `reglement`
--
ALTER TABLE `reglement`
  ADD CONSTRAINT `FK_EBE4C14C7F2DEE08` FOREIGN KEY (`facture_id`) REFERENCES `invoice` (`id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C849557D0729A9` FOREIGN KEY (`creneau_id`) REFERENCES `creneau` (`id`),
  ADD CONSTRAINT `FK_42C84955CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `FK_4E977E5C87DDEC63` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_B723AF3387DDEC63` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `FK_B723AF33881BD363` FOREIGN KEY (`school_etablishment_id`) REFERENCES `school_etablishment` (`id`),
  ADD CONSTRAINT `fk_student_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_subscription`
--
ALTER TABLE `student_subscription`
  ADD CONSTRAINT `FK_749166D99A1887DC` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`),
  ADD CONSTRAINT `FK_749166D9CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `FK_A3C664D387DDEC63` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`);

--
-- Constraints for table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD CONSTRAINT `fk_user_has_role_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_role_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
