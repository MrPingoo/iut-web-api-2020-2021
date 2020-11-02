-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  lun. 12 oct. 2020 à 12:27
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `api`
--

-- --------------------------------------------------------

--
-- Structure de la table `area`
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

-- --------------------------------------------------------

--
-- Structure de la table `creneau`
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

-- --------------------------------------------------------

--
-- Structure de la table `creneau_matiere`
--

CREATE TABLE `creneau_matiere` (
  `creneau_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lvl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
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
-- Structure de la table `invoice_item`
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
-- Structure de la table `log_user_connexion`
--

CREATE TABLE `log_user_connexion` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `is_enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
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
(87, 'a1', '2020-10-02 14:23:47');

-- --------------------------------------------------------

--
-- Structure de la table `promo_code`
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
-- Structure de la table `reglement`
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
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `creneau_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `school_etablishment`
--

CREATE TABLE `school_etablishment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `student`
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
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `school_etablishment_id`, `area_id`, `civility`, `lastname`, `firstname`, `lvl`, `email`, `phone`, `deleted_at`, `user_id`) VALUES
(1, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 23),
(2, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 24),
(3, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 24),
(4, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 25),
(5, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 25),
(6, NULL, NULL, 0, 'Demo', 'Charles', '1', 'charles@gmail.com', '+336121212', NULL, 27),
(7, NULL, NULL, 1, 'Demo', 'Elise', '1', 'elise@gmail.com', '+336121212', NULL, 27);

-- --------------------------------------------------------

--
-- Structure de la table `student_subscription`
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
-- Structure de la table `subscription`
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

-- --------------------------------------------------------

--
-- Structure de la table `user`
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
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`, `phone`, `deleted_at`, `payment_method`, `address`, `zipcode`, `city`, `civility`, `token`, `username`) VALUES
(1, 'jean@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(11, 'jeassn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(13, 'jeaqsdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(21, 'jeaqsdfsdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(23, 'jeaqsdfsdfsdsdsdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(24, 'jeaqsdfsdfsdsdsdfdfssdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(25, 'jeaqsdfsdfsdsdsdfdfsssdn@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com'),
(27, 'jean2@google.com', '\"ADMIN\"', 'AZERTY', 'Jean', 'Demo', '+336121212', NULL, 'CB', '123 rue des pommes', '02100', 'Amiens', 0, NULL, 'jean@google.com');

-- --------------------------------------------------------

--
-- Structure de la table `user_has_role`
--

CREATE TABLE `user_has_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `creneau`
--
ALTER TABLE `creneau`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F9668B5FDC304035` (`salle_id`);

--
-- Index pour la table `creneau_matiere`
--
ALTER TABLE `creneau_matiere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_79C2373E7D0729A9` (`creneau_id`),
  ADD KEY `IDX_79C2373EF46CD258` (`matiere_id`);

--
-- Index pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_90651744CB944F1A` (`student_id`),
  ADD KEY `IDX_9065174487DDEC63` (`area_id`),
  ADD KEY `fk_invoice_promo_code1_idx` (`promo_code_id`);

--
-- Index pour la table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1DDE477B2989F1FD` (`invoice_id`);

--
-- Index pour la table `log_user_connexion`
--
ALTER TABLE `log_user_connexion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75D7452EA76ED395` (`user_id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reglement`
--
ALTER TABLE `reglement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EBE4C14C7F2DEE08` (`facture_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_42C84955CB944F1A` (`student_id`),
  ADD KEY `IDX_42C849557D0729A9` (`creneau_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4E977E5C87DDEC63` (`area_id`);

--
-- Index pour la table `school_etablishment`
--
ALTER TABLE `school_etablishment`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B723AF33881BD363` (`school_etablishment_id`),
  ADD KEY `IDX_B723AF3387DDEC63` (`area_id`),
  ADD KEY `fk_student_user1_idx` (`user_id`);

--
-- Index pour la table `student_subscription`
--
ALTER TABLE `student_subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_749166D9CB944F1A` (`student_id`),
  ADD KEY `IDX_749166D99A1887DC` (`subscription_id`);

--
-- Index pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A3C664D387DDEC63` (`area_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `fk_user_has_role_role1_idx` (`role_id`),
  ADD KEY `fk_user_has_role_user1_idx` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `creneau`
--
ALTER TABLE `creneau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `creneau_matiere`
--
ALTER TABLE `creneau_matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `invoice_item`
--
ALTER TABLE `invoice_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `log_user_connexion`
--
ALTER TABLE `log_user_connexion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT pour la table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reglement`
--
ALTER TABLE `reglement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `school_etablishment`
--
ALTER TABLE `school_etablishment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `student_subscription`
--
ALTER TABLE `student_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `creneau`
--
ALTER TABLE `creneau`
  ADD CONSTRAINT `FK_F9668B5FDC304035` FOREIGN KEY (`salle_id`) REFERENCES `salle` (`id`);

--
-- Contraintes pour la table `creneau_matiere`
--
ALTER TABLE `creneau_matiere`
  ADD CONSTRAINT `FK_79C2373E7D0729A9` FOREIGN KEY (`creneau_id`) REFERENCES `creneau` (`id`),
  ADD CONSTRAINT `FK_79C2373EF46CD258` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`);

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_9065174487DDEC63` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `FK_90651744CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `fk_invoice_promo_code1` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_code` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD CONSTRAINT `FK_1DDE477B2989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`);

--
-- Contraintes pour la table `log_user_connexion`
--
ALTER TABLE `log_user_connexion`
  ADD CONSTRAINT `FK_75D7452EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reglement`
--
ALTER TABLE `reglement`
  ADD CONSTRAINT `FK_EBE4C14C7F2DEE08` FOREIGN KEY (`facture_id`) REFERENCES `invoice` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C849557D0729A9` FOREIGN KEY (`creneau_id`) REFERENCES `creneau` (`id`),
  ADD CONSTRAINT `FK_42C84955CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `FK_4E977E5C87DDEC63` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`);

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_B723AF3387DDEC63` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  ADD CONSTRAINT `FK_B723AF33881BD363` FOREIGN KEY (`school_etablishment_id`) REFERENCES `school_etablishment` (`id`),
  ADD CONSTRAINT `fk_student_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `student_subscription`
--
ALTER TABLE `student_subscription`
  ADD CONSTRAINT `FK_749166D99A1887DC` FOREIGN KEY (`subscription_id`) REFERENCES `subscription` (`id`),
  ADD CONSTRAINT `FK_749166D9CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Contraintes pour la table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `FK_A3C664D387DDEC63` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`);

--
-- Contraintes pour la table `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD CONSTRAINT `fk_user_has_role_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_role_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
