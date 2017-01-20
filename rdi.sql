-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 20 Janvier 2017 à 14:18
-- Version du serveur :  5.7.9
-- Version de PHP :  5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rdi`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `Status` varchar(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Publication` text NOT NULL,
  `Date_creation` date NOT NULL,
  `Date_modification` date NOT NULL,
  `Date_publication` date NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Author_modification` varchar(50) NOT NULL,
  `Revue` varchar(50) NOT NULL,
  `Editor` varchar(50) NOT NULL,
  `Conference` varchar(100) NOT NULL,
  `Pages` varchar(20) NOT NULL,
  `Booktitle` varchar(50) NOT NULL,
  `Comment` text NOT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `id_author` int(5) NOT NULL,
  `id_article` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `Sex` varchar(5) NOT NULL,
  `Firstname` varchar(30) NOT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Photo` varchar(200) NOT NULL,
  `Date_register` date NOT NULL,
  `Nb_publications` int(10) NOT NULL,
  `Nb_connexions` int(10) NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `member`
--

INSERT INTO `member` (`id_member`, `Sex`, `Firstname`, `Lastname`, `Login`, `Password`, `Photo`, `Date_register`, `Nb_publications`, `Nb_connexions`) VALUES
(1, 'M.', 'Adrien', 'PERDEREAU', 'adrien', 'adrien', '', '2016-12-16', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE IF NOT EXISTS `visitor` (
  `id_visitor` int(11) NOT NULL,
  `Date_connexion` date NOT NULL,
  PRIMARY KEY (`id_visitor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
