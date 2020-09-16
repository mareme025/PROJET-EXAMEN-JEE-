-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 16 sep. 2020 à 15:40
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `djokkjobproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `cvetudiant`
--

CREATE TABLE `cvetudiant` (
  `id` int(11) NOT NULL,
  `adresse` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `experiencePro` varchar(3000) DEFAULT NULL,
  `niveauEtude` varchar(300) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `specialite` varchar(300) DEFAULT NULL,
  `telephone` varchar(300) DEFAULT NULL,
  `entreprise_id` int(11) DEFAULT NULL,
  `offreemploi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cvetudiant`
--

INSERT INTO `cvetudiant` (`id`, `adresse`, `email`, `experiencePro`, `niveauEtude`, `nom`, `prenom`, `specialite`, `telephone`, `entreprise_id`, `offreemploi_id`) VALUES
(1, 'HLM Grand Yoff', 'kyaseck1@gmail.com', 'Stage Ã  SEEE au sein du service comptable', 'Master2', 'SECK', 'Rokhaya', 'ComptabilitÃ© Finance', '789654123', 1, 3),
(2, 'Ziguinchor', 'awa94@gmail.com', 'Stage au startup de SUITE ', 'DTS , BTS', 'BADJI', 'Awa', 'Developpeur web', '789654123', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `demandeur`
--

CREATE TABLE `demandeur` (
  `id` int(11) NOT NULL,
  `adresse` varchar(300) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `telephone` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `demandeur`
--

INSERT INTO `demandeur` (`id`, `adresse`, `email`, `nom`, `password`, `prenom`, `telephone`) VALUES
(1, 'Tivaoune', 'timaaidara@ssim.fr', 'AIDARA', 'cherif', 'Aminata CHERIF', '778563214'),
(2, 'Mbour', 'grandlaye@gmail.com', 'NDIAYE', 'grandlaye', 'Abdoulaye', '778965412'),
(3, 'Sicap Foire', 'seyni97@hotmail.fr', 'THIAM', 'seyni@12', 'Seyni', '769854123');

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

CREATE TABLE `entreprise` (
  `id` int(11) NOT NULL,
  `NINEA` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `emplacement` varchar(30) DEFAULT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id`, `NINEA`, `email`, `emplacement`, `nom`, `password`, `prenom`) VALUES
(1, '58962031047', 'ubasenegal@almadie.sn', 'Almadies DAKAR', 'UBA', 'uba@456', NULL),
(2, '0369876632', 'senelec@gmail.fr', 'Dakar ', 'Senelec', 'senelec1', NULL),
(3, '650287715', 'orabank@orabanksenegal.sn', 'Dakar Ville', 'Orabank', 'orabank@1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise_user`
--

CREATE TABLE `entreprise_user` (
  `Entreprise_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `offreemploi`
--

CREATE TABLE `offreemploi` (
  `id` int(11) NOT NULL,
  `description` varchar(3000) DEFAULT NULL,
  `nomOffre` varchar(30) DEFAULT NULL,
  `typeOffre` varchar(300) DEFAULT NULL,
  `entreprise_id` int(11) DEFAULT NULL,
  `profilrecherche_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `offreemploi`
--

INSERT INTO `offreemploi` (`id`, `description`, `nomOffre`, `typeOffre`, `entreprise_id`, `profilrecherche_id`) VALUES
(1, 'stage en tant que developpeur pour une durÃ©e de  6 mois', 'Offre1', 'Stage', 2, 3),
(2, 'CDD en tant que DBA Ã  Orabank', 'Offre2', 'CDD', 3, 1),
(3, 'CDI en tant que Comptable pour une durÃ©e indeterminÃ©e', 'Offre3', 'CDI', 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `profilrecherche`
--

CREATE TABLE `profilrecherche` (
  `id` int(11) NOT NULL,
  `nomProfil` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `profilrecherche`
--

INSERT INTO `profilrecherche` (`id`, `nomProfil`) VALUES
(1, 'DBA'),
(2, 'Comptable'),
(3, 'Developpeur '),
(4, 'GRH');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_demandeur`
--

CREATE TABLE `user_demandeur` (
  `User_id` int(11) NOT NULL,
  `demandeur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user_entreprise`
--

CREATE TABLE `user_entreprise` (
  `User_id` int(11) NOT NULL,
  `entreprise_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cvetudiant`
--
ALTER TABLE `cvetudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdxvrbn7mpxl2rui0tyg6s1lsm` (`entreprise_id`),
  ADD KEY `FK2thkyck2lttgabtppl3rw5n2r` (`offreemploi_id`);

--
-- Index pour la table `demandeur`
--
ALTER TABLE `demandeur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprise`
--
ALTER TABLE `entreprise`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprise_user`
--
ALTER TABLE `entreprise_user`
  ADD KEY `FK79cj0bc27bd73d87rhndwhmbs` (`user_id`),
  ADD KEY `FK8sw9oq23ocins3g8aq3xl6l4e` (`Entreprise_id`);

--
-- Index pour la table `offreemploi`
--
ALTER TABLE `offreemploi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3wb2je1v93xjxr0aq3esvvcos` (`entreprise_id`),
  ADD KEY `FKpkt6qrqnfhw3eif17376b0src` (`profilrecherche_id`);

--
-- Index pour la table `profilrecherche`
--
ALTER TABLE `profilrecherche`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_demandeur`
--
ALTER TABLE `user_demandeur`
  ADD KEY `FKfa6un3c579m4w2lma7tqjir7a` (`demandeur_id`),
  ADD KEY `FKgigpqvs7xr66lc2yu8334cr2x` (`User_id`);

--
-- Index pour la table `user_entreprise`
--
ALTER TABLE `user_entreprise`
  ADD KEY `FK6jkpxiuk0ekbe9li0q66n1y18` (`entreprise_id`),
  ADD KEY `FK6hhoddhqwlmh3h53cqyai4y06` (`User_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cvetudiant`
--
ALTER TABLE `cvetudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `demandeur`
--
ALTER TABLE `demandeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `entreprise`
--
ALTER TABLE `entreprise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `offreemploi`
--
ALTER TABLE `offreemploi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `profilrecherche`
--
ALTER TABLE `profilrecherche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cvetudiant`
--
ALTER TABLE `cvetudiant`
  ADD CONSTRAINT `FK2thkyck2lttgabtppl3rw5n2r` FOREIGN KEY (`offreemploi_id`) REFERENCES `offreemploi` (`id`),
  ADD CONSTRAINT `FKdxvrbn7mpxl2rui0tyg6s1lsm` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `entreprise_user`
--
ALTER TABLE `entreprise_user`
  ADD CONSTRAINT `FK79cj0bc27bd73d87rhndwhmbs` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK8sw9oq23ocins3g8aq3xl6l4e` FOREIGN KEY (`Entreprise_id`) REFERENCES `entreprise` (`id`);

--
-- Contraintes pour la table `offreemploi`
--
ALTER TABLE `offreemploi`
  ADD CONSTRAINT `FK3wb2je1v93xjxr0aq3esvvcos` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`),
  ADD CONSTRAINT `FKpkt6qrqnfhw3eif17376b0src` FOREIGN KEY (`profilrecherche_id`) REFERENCES `profilrecherche` (`id`);

--
-- Contraintes pour la table `user_demandeur`
--
ALTER TABLE `user_demandeur`
  ADD CONSTRAINT `FKfa6un3c579m4w2lma7tqjir7a` FOREIGN KEY (`demandeur_id`) REFERENCES `demandeur` (`id`),
  ADD CONSTRAINT `FKgigpqvs7xr66lc2yu8334cr2x` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_entreprise`
--
ALTER TABLE `user_entreprise`
  ADD CONSTRAINT `FK6hhoddhqwlmh3h53cqyai4y06` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK6jkpxiuk0ekbe9li0q66n1y18` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
