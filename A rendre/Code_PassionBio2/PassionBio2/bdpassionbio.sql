-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 02 juil. 2020 à 08:07
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdpassionbio`
--

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `numCompte` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `numEmp` int(11) NOT NULL,
  PRIMARY KEY (`numCompte`),
  KEY `compte_employe_FK` (`numEmp`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`numCompte`, `login`, `mdp`, `numEmp`) VALUES
(1, 'reda@gmail.com', '123', 1),
(2, 'sibory@gmail.com', 'abc', 2),
(3, 'michel', 'xyz', 3);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `numEmp` int(11) NOT NULL AUTO_INCREMENT,
  `nomEmp` varchar(20) NOT NULL,
  `prenomEmp` varchar(20) NOT NULL,
  `fonctionEmp` varchar(30) NOT NULL,
  `sexe` char(1) NOT NULL,
  `dateNaissance` date NOT NULL,
  `mailEmp` varchar(30) NOT NULL,
  PRIMARY KEY (`numEmp`),
  UNIQUE KEY `Employe_AK` (`numEmp`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`numEmp`, `nomEmp`, `prenomEmp`, `fonctionEmp`, `sexe`, `dateNaissance`, `mailEmp`) VALUES
(1, 'madjoub', 'reda', 'RH', 'M', '1994-05-26', 'reda@gmail.com'),
(2, 'gueye', 'sibory', 'IT', 'M', '1994-05-26', 'sibory@gmail.com'),
(3, 'mendi', 'michel', 'CE', 'M', '1994-05-26', 'michel@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `equipement`
--

DROP TABLE IF EXISTS `equipement`;
CREATE TABLE IF NOT EXISTS `equipement` (
  `numEquip` int(11) NOT NULL AUTO_INCREMENT,
  `dispoEquip` tinyint(1) NOT NULL,
  `nomEquip` varchar(30) NOT NULL,
  `totalEquip` int(11) NOT NULL,
  `dateEmprunt` date NOT NULL,
  `heureEmprunt` time NOT NULL,
  `dateRetour` date NOT NULL,
  `heureRetour` time NOT NULL,
  `numEmp` int(11) DEFAULT NULL,
  PRIMARY KEY (`numEquip`),
  KEY `Equipement_Employe0_FK` (`numEmp`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipement`
--

INSERT INTO `equipement` (`numEquip`, `dispoEquip`, `nomEquip`, `totalEquip`, `dateEmprunt`, `heureEmprunt`, `dateRetour`, `heureRetour`, `numEmp`) VALUES
(1, 1, 'velo', 10, '2020-08-22', '08:00:00', '2020-08-24', '08:00:00', 2);

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

DROP TABLE IF EXISTS `evenement`;
CREATE TABLE IF NOT EXISTS `evenement` (
  `numEve` int(11) NOT NULL AUTO_INCREMENT,
  `dateEve` date NOT NULL,
  `nomEve` varchar(50) NOT NULL,
  `noteEve` int(11) NOT NULL,
  `heureDebutEve` time NOT NULL,
  `dureeEve` int(11) NOT NULL,
  `placeMaxEve` int(11) NOT NULL,
  `nbrParticipant` int(11) NOT NULL,
  `numEmp` int(11) NOT NULL,
  PRIMARY KEY (`numEve`),
  KEY `Evenement_Employe_FK` (`numEmp`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`numEve`, `dateEve`, `nomEve`, `noteEve`, `heureDebutEve`, `dureeEve`, `placeMaxEve`, `nbrParticipant`, `numEmp`) VALUES
(1, '2020-08-22', 'API culture presentation', 5, '08:00:00', 2, 20, 1, 1),
(2, '2020-06-12', 'Blabla', 15, '18:57:00', 15, 25, 8, 25),
(3, '2020-06-12', 'Blabla', 15, '18:57:00', 15, 25, 8, 25),
(4, '2020-06-12', 'Ping Pong', 15, '18:57:00', 15, 25, 8, 25);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
