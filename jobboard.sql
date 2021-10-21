-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 21 oct. 2021 à 14:30
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jobboard2`
--

-- --------------------------------------------------------

--
-- Structure de la table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
CREATE TABLE IF NOT EXISTS `advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `description` text,
  `date` date DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `companie_id` int(11) DEFAULT NULL,
  `contrat_type` text,
  PRIMARY KEY (`id`),
  KEY `companie_id` (`companie_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `advertisements`
--

INSERT INTO `advertisements` (`id`, `title`, `description`, `date`, `published`, `companie_id`, `contrat_type`) VALUES
(1, 'Développeur web front-end FR', 'Vous avez envie de travailler en équipe ? Vous êtes en recherche de challenge ? Vous serez amené à :\n- Participer à la conception et le développement back-end et front-end des applis web en PHP5/7, MySQL, HTML5, CSS3, JavaScript, jQuery.\n- Assurer le développement et le support des applications web.\n- Contribuer à la création de sites web.\n- Participer à la création d\'API en Symfony :.\n- Refonte de notre Intranet en utilisant les API Google.\n- Être garant de l\'amélioration continue des plateformes existantes.\n- Assurer la qualité du code, le respect des délais et les processus de mise en production.\n- Être le support au déploiement des solutions.\n- Être force de proposition sur les innovations technologiques.', '2021-09-28', 1, 1, 'Temps plein/CDI');

-- --------------------------------------------------------

--
-- Structure de la table `applied`
--

DROP TABLE IF EXISTS `applied`;
CREATE TABLE IF NOT EXISTS `applied` (
  `id` varchar(255) NOT NULL,
  `advertisement_id` varchar(255) DEFAULT NULL,
  `people_id` varchar(255) DEFAULT NULL,
  `motivation_people` text,
  PRIMARY KEY (`id`),
  KEY `people_id` (`people_id`),
  KEY `advertisement_id` (`advertisement_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

DROP TABLE IF EXISTS `companies`;
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `activities` text,
  `address` text,
  `postal_code` int(11) DEFAULT NULL,
  `city` text,
  `siret` int(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `number_employes` int(20) DEFAULT NULL,
  `website` text,
  `phone` int(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`id`, `name`, `activities`, `address`, `postal_code`, `city`, `siret`, `password`, `number_employes`, `website`, `phone`, `email`, `contact_name`) VALUES
(1, 'Epitech', 'Ecole ', '21 Rue Mirès', 13002, 'Marseille', 12345, '123', 400, 'epitech.eu', 612345678, 'epitech@epitech.eu', 'Samuel Cadau');

-- --------------------------------------------------------

--
-- Structure de la table `people`
--

DROP TABLE IF EXISTS `people`;
CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `first_name` text,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `city` text,
  `phone` char(255) DEFAULT NULL,
  `birth_date` text,
  `cv` blob,
  `website` text,
  `picture` varbinary(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `registered` date DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `roles` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `people`
--

INSERT INTO `people` (`id`, `name`, `first_name`, `password`, `email`, `address`, `postal_code`, `city`, `phone`, `birth_date`, `cv`, `website`, `picture`, `gender`, `registered`, `last_login`, `roles`) VALUES
(2, 'user', 'user', '$2a$10$3rGrtX0McYVXd4yOwWzBW.Dh..5ole8.gTcBnGAUyINOSrmAHgVoK', 'user@gmail.com', '21 Rue Mirès', '13002', 'Marseille', '0624143087', '24-06-1999', NULL, 'site.Fr', NULL, NULL, '2021-10-08', '2021-10-21', '1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
