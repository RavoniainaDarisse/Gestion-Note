-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 20 déc. 2023 à 12:14
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_etudiant`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL,
  `Prenom` varchar(255) NOT NULL,
  `Niveau` varchar(255) NOT NULL,
  `Numero_Net` varchar(255) NOT NULL,
  `Numero` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `Nom`, `Prenom`, `Niveau`, `Numero_Net`, `Numero`) VALUES
(50, 'tommy', 'Rasolo', 'DTS', 'L2/12/13', 0),
(51, 'Darisse', 'Ravoniaina', 'DTS', 'L2/12/13', 0),
(52, 'Faniry', 'Jarisse', 'Licence', 'L3/23/23', 0),
(53, 'Manou', 'Dorisse', 'Master', 'M2/23/23', 0),
(54, 'John', 'Doe', 'Master', 'M1/22/23', 0),
(55, 'Miranto', 'Ravoniaina', 'Licence', 'L2/23/22', 0),
(57, 'Angela', 'Diav', 'Master', 'M3/22/23', 0),
(58, 'james', 'Blur', 'Master', 'M1/22/23', 0),
(59, 'Fitia', 'Nanou', 'DTS', 'L2/23/22', 0),
(60, 'Darisse', 'Do', 'Master', 'M1/22/23', 0),
(61, 'Darisse', 'Do', 'Master', 'M1/22/23', 0);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id_matiere` int(11) NOT NULL,
  `Codemat` varchar(255) NOT NULL,
  `Libelle` varchar(255) NOT NULL,
  `Coef` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id_matiere`, `Codemat`, `Libelle`, `Coef`) VALUES
(6, 'Javascript', '12L', 12),
(11, 'PHP', 'Backend', 10),
(12, 'Angular', 'BLalaala', 10),
(13, 'Vue JS', 'Framwork', 20);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `etudiant_id` int(11) DEFAULT NULL,
  `matiere_id` int(11) DEFAULT NULL,
  `note` decimal(4,2) DEFAULT NULL,
  `NumeroEtud` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `etudiant_id`, `matiere_id`, `note`, `NumeroEtud`) VALUES
(6, 54, 12, 22.00, 0),
(7, 54, 11, 15.00, 0),
(8, 50, 11, 12.00, 0);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id_note` int(11) NOT NULL,
  `Note` int(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id_matiere`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiant_id` (`etudiant_id`),
  ADD KEY `matiere_id` (`matiere_id`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id_note`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id_matiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id_note` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiant` (`id`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id_matiere`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
