-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 27 juil. 2018 à 11:12
-- Version du serveur :  10.1.33-MariaDB
-- Version de PHP :  7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gensdubien`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `mainLine` varchar(255) DEFAULT NULL,
  `optionalLine` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `city`, `country`, `mainLine`, `optionalLine`, `postalCode`) VALUES
(1, 'Paris', 'France', '01 Rue Victor Hugo', NULL, '75018'),
(2, 'Paris', 'France', '02 Rue Molière', NULL, '75019'),
(3, 'Paris', 'France', '03 Rue de Rome', NULL, '75020'),
(4, 'Paris', 'France', '04 rue Alesia', NULL, '75020'),
(5, 'Paris', 'France ', ' rue de la Sorbonne ', NULL, '75018'),
(6, 'Paris', 'France', '06 rue jessieu', NULL, '75010'),
(7, 'Paris', 'France', '07 rue Lisbonne', NULL, '75019');

-- --------------------------------------------------------

--
-- Structure de la table `beneficiary`
--

CREATE TABLE `beneficiary` (
  `id` int(11) NOT NULL,
  `beneficiaryNumber` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `memeberFamilyNumber` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `id_address` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `beneficiary`
--

INSERT INTO `beneficiary` (`id`, `beneficiaryNumber`, `birthDate`, `firstname`, `lastname`, `memeberFamilyNumber`, `tel`, `id_address`) VALUES
(1, '20180001', '1965-04-17', 'Mathilde', 'LILI', '4', '07220001', 3),
(2, '20180002', '1965-02-17', 'Sarah', 'FIFI', '5', '07123456', 1);

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `eventDate` date DEFAULT NULL,
  `eventNumber` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `id_volunteer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `eventDate`, `eventNumber`, `type`, `id_volunteer`) VALUES
(1, '2018-09-01', '20180235', 'Collecte', 2),
(2, '2018-09-13', '20180236', 'Distribution', 1);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `expirationDate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `numberLots` int(11) DEFAULT NULL,
  `productNumber` varchar(255) DEFAULT NULL,
  `receptionDate` date DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `id_beneficiary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `expirationDate`, `name`, `numberLots`, `productNumber`, `receptionDate`, `section`, `id_beneficiary`) VALUES
(1, '2018-08-20', 'riz', 2, '3', '2018-07-20', 'pates ', 2),
(2, '2018-08-01', 'orange', 2, '42', '2018-07-26', 'fruit', 1);

-- --------------------------------------------------------

--
-- Structure de la table `volunteer`
--

CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `volunteerNumber` varchar(255) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `volunteer`
--

INSERT INTO `volunteer` (`id`, `birthDate`, `email`, `firstname`, `lastname`, `login`, `password`, `tel`, `volunteerNumber`, `address_id`) VALUES
(1, '1985-04-17', 'matrin@gmail.com', 'Martin', 'TOTO', NULL, NULL, '06111111', '20180001', 5),
(2, '1975-02-17', 'laurent@gmail.com', 'Laurent', 'KOKO', NULL, NULL, '06222222', '20180002', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKjwcugj8mr4qoeto5p6hb45c7n` (`id_address`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5k7sl10xjt06m2pgqv6rl2lp8` (`id_volunteer`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKecw8fbhxhniognryhrj8mt6vu` (`id_beneficiary`);

--
-- Index pour la table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkj6qq780x0ef0t81yr3o4w50l` (`address_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `beneficiary`
--
ALTER TABLE `beneficiary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD CONSTRAINT `FKjwcugj8mr4qoeto5p6hb45c7n` FOREIGN KEY (`id_address`) REFERENCES `address` (`id`);

--
-- Contraintes pour la table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK5k7sl10xjt06m2pgqv6rl2lp8` FOREIGN KEY (`id_volunteer`) REFERENCES `volunteer` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FKecw8fbhxhniognryhrj8mt6vu` FOREIGN KEY (`id_beneficiary`) REFERENCES `beneficiary` (`id`);

--
-- Contraintes pour la table `volunteer`
--
ALTER TABLE `volunteer`
  ADD CONSTRAINT `FKkj6qq780x0ef0t81yr3o4w50l` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
