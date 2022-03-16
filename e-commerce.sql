-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 16 mars 2022 à 13:33
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `e-commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `id_produit` int NOT NULL AUTO_INCREMENT,
  `nom_du_produit` text NOT NULL,
  `description` text NOT NULL,
  `prix_produit` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_dépot` datetime NOT NULL,
  `stock_produit` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_produit`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `nom_du_produit`, `description`, `prix_produit`, `image`, `date_dépot`, `stock_produit`) VALUES
(2, 'Souris pro', 'La souris gaming Razer Naga Pro représente le Saint Graal des joueurs de MOBA et/ou MMO qui s\'adonnent également à d\'autres jeux plus conventionnels. Plus besoin de changer de souris en fonction du nombre de macros nécessaires, tout est là ! Bénéficiez également de la liberté du sans-fil !jeux plus conventionnels. Plus besoin de changer de souris en fonction du nombre de jeux plus conventionnels. Plus besoin de changer de souris en fonction du nombre de', 150, 'img/souris.jpg', '2022-03-07 13:51:34', 1),
(4, 'Fauteuil GAMER', 'Le RECARO Exo Platinum Sky est bien plus qu\'un simple fauteuil de gamer. En tant que modèle RECARO original, notre fauteuil a été pensé jusqu\'en dans les moindres détails. Il présente ainsi des caractéristiques sur-mesure pour le gaming : options de réglage novatrices avec quatre positions de base et réglage individuel de précision, coque d\'assise spécialement conçue avec rembourrage à format technique, conception pensée pour décupler ton expérience de jeu, matériaux de qualité \r\n\r\n', 1340, 'img/fauteuil.jpg', '2022-03-07 13:56:50', 1),
(5, 'Bureau Gaming', 'Voici notre tout nouveau bureau de jeu professionnel, conçu et fabriqué pour répondre aux exigences des joueurs. Equipée d\'un porte-gobelet, de deux prises pour casque et d\'un support USB pour poignée de jeu, elle vous permet d’avoir à portée de main tous vos équipements. Voici notre tout nouveau bureau de jeu professionnel, conçu et fabriqué pour répondre aux exigences des joueurs. Equipée d\'un porte-gobelet, de deux prises pour casque et d\'un support USB pour poignée de jeu.\r\n\r\n', 320, 'img/bureau.jpeg', '2022-03-07 14:35:14', 1),
(6, 'Clavier gaming ', 'Véritable bond en avant, le clavier SteelSeries Apex Pro vous permet de régler chaque touche en fonction de votre niveau de sensibilité préféré, que ce soit pour le gaming, le travail ou autre chose. Avec une réponse 8x plus rapide, une activation 5x plus rapide et une résistance 2x plus ', 209, 'img/clavier.jpg', '2022-03-07 14:36:54', 1),
(7, 'Tapis Gaming avec éclairage ', 'Mars Gaming MMPRGBL. Largeur: 365 mm, Profondeur: 265 mm. Couleur du produit: Noir, Coloration de surface: Uniforme, Matériel: Nylon, Alimenté par port USB, Couleur de Backlight: Rouge/Vert/Bleu, Base antidérapante, Tapis de souris de jeu\r\n\r\n', 25, 'img/tapis.jpg', '2022-03-07 15:01:19', 1),
(10, 'PC Gamer\r\n', 'Notre bureau d\'ordinateur est composé de panneaux de bois MDF et de métal. En raison de la structure stable, la capacité de charge maximale du plateau de table est de 90 kg. Grâce aux accessoires inclus, vous pouvez garder la table d\'ordinateur en ordre et profiter du jeu. ', 320, 'img/PC.jpg', '2022-03-11 13:29:39', 1),
(11, 'guitare éléctrique', 'vd f', 212121, '../img', '2022-03-09 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id-user` int NOT NULL AUTO_INCREMENT,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id-user`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id-user`, `email`, `password`) VALUES
(7, 'jojo@bernard.fr', '2222'),
(5, 'blabla@bibi.fr', '1111');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
