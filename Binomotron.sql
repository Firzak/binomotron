-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 17 mai 2023 à 12:26
-- Version du serveur : 8.0.33
-- Version de PHP : 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Binomotron`
--

-- --------------------------------------------------------

--
-- Structure de la table `Apprenant`
--

CREATE TABLE `Apprenant` (
  `id_apprenant` int NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Apprenant`
--

INSERT INTO `Apprenant` (`id_apprenant`, `Nom`, `Prenom`, `email`) VALUES
(1, 'COULM', 'MORGAN', 'morgan.coulm@isen-ouest.yncrea.fr'),
(2, 'ULVOAS', 'Camille', 'camille.ulvoas@isen-ouest.yncrea.fr'),
(3, 'PAUL', 'YVES', 'yves.paul@isen-ouest.yncrea.fr'),
(4, 'PERTRON', 'LAURA', 'laura.pertron@isen-ouest.yncrea.fr'),
(5, 'BOIREAU', 'FREDERIC', 'frederic.boireau@isen-ouest.yncrea.fr'),
(6, 'CARAES', 'ALEXANDRE', 'alexandre.caraes@isen-ouest.yncrea.fr'),
(7, 'NEEDHAM', 'JONATHAN', 'jonathan.needham@isen-ouest.yncrea.fr'),
(8, 'LARDIC', 'JEREMY', 'jeremy.lardic@isen-ouest.yncrea.fr'),
(9, 'RENNARD', 'MICKAEL', 'mickael.rennard@isen-ouest.yncrea.fr'),
(10, 'MOHAMMAD', 'IBRAHIM', 'ibrahim.mohammad@isen-ouest.yncrea.fr'),
(11, 'DUBIGNY', 'ANDY', 'andy.dubigny@isen-ouest.yncrea.fr'),
(12, 'GUEVEL', 'PIERREMARIE', 'pierre-marie.guevel@isen-ouest.yncrea.fr'),
(13, 'FEULVARCH', 'YOUENN', 'youenn.feulvarc-h@isen-ouest.yncrea.fr'),
(14, 'QUENET', 'GWENDAL', 'gwendal.quenet@isen-ouest.yncrea.fr'),
(15, 'SUCHYREINARD', 'BASTIEN', 'bastien.suchy-reinard@isen-ouest.yncrea.fr');

-- --------------------------------------------------------

--
-- Structure de la table `Apprenant_Groupe`
--

CREATE TABLE `Apprenant_Groupe` (
  `id_apprenant` int NOT NULL,
  `id_Groupe` int NOT NULL,
  `id_projet` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Apprenant_Groupe`
--

INSERT INTO `Apprenant_Groupe` (`id_apprenant`, `id_Groupe`, `id_projet`) VALUES
(1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `Groupe`
--

CREATE TABLE `Groupe` (
  `id_groupe` int NOT NULL,
  `Libelle` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Projet`
--

CREATE TABLE `Projet` (
  `id_projet` int NOT NULL,
  `date_debut` varchar(10) NOT NULL,
  `date_fin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Apprenant`
--
ALTER TABLE `Apprenant`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- Index pour la table `Apprenant_Groupe`
--
ALTER TABLE `Apprenant_Groupe`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- Index pour la table `Groupe`
--
ALTER TABLE `Groupe`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Index pour la table `Projet`
--
ALTER TABLE `Projet`
  ADD PRIMARY KEY (`id_projet`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Apprenant`
--
ALTER TABLE `Apprenant`
  MODIFY `id_apprenant` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `Apprenant_Groupe`
--
ALTER TABLE `Apprenant_Groupe`
  MODIFY `id_apprenant` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Projet`
--
ALTER TABLE `Projet`
  MODIFY `id_projet` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Apprenant_Groupe`
--
ALTER TABLE `Apprenant_Groupe`
  ADD CONSTRAINT `Apprenant_Groupe_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `Apprenant` (`id_apprenant`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
