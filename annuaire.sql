-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 18 oct. 2018 à 17:12
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annuaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `ActeurId` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(35) NOT NULL,
  `DateNaissance` date NOT NULL,
  `Nationalite` varchar(50) NOT NULL,
  `Photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acteur`
--

INSERT INTO `acteur` (`ActeurId`, `Nom`, `Prenom`, `DateNaissance`, `Nationalite`, `Photo`) VALUES
(1, 'Schwarzenegger', 'Arnold', '1947-07-30', 'Autrichien Américain', 'image/images.jpg'),
(2, 'Dolph', 'Lundgren', '1957-11-03', 'suédois', 'image/téléchargement.jpg'),
(3, 'Stallone', 'Silverter', '1946-07-06', 'Américain', 'image/rambo.jpg'),
(4, 'Dwayne', 'Johnson', '1972-05-02', 'Américain Canadien', 'image/john.jpg'),
(5, 'Statham', 'jason', '1967-07-26', 'Britannique', 'image/jason.jpg'),
(6, 'Diesel', 'Vin', '1967-07-18', 'Américain', 'image/diesel.jpg'),
(7, 'Scalette', 'Johanson', '1984-11-22', 'américaine', 'image/scalette.jpg'),
(8, 'Lawrence', 'Jennifer', '1990-08-15', 'Américain', 'image/lawrence.jpg'),
(9, 'Lovato', 'Demi', '1990-08-20', 'mexicaine', 'image/demi.jpg'),
(10, 'Pratt', 'Chris', '1979-07-21', 'Américaine', 'image/pratt.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `FilmsID` int(11) NOT NULL,
  `Categorie` varchar(20) NOT NULL,
  `RealisateurID` int(11) NOT NULL,
  `ActeurId` int(11) NOT NULL,
  `Titre` varchar(30) NOT NULL,
  `Resume` text,
  `Annee` date NOT NULL,
  `Duree` int(11) NOT NULL,
  `ImageUrl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`FilmsID`, `Categorie`, `RealisateurID`, `ActeurId`, `Titre`, `Resume`, `Annee`, `Duree`, `ImageUrl`) VALUES
(1, 'comedie', 9, 1, 'un flic a la maternelle', 'Poursuivant un dangereux malfaiteur et sa mère trafiquants de drogue, John Kimble, policier remarquable, est amené à la suite de la dèfaillance d\'une collègue à faire la classe à une maternelle. En quelques heures c\'est l\'anarchie la plus totale et le brillant policier a plus de mal à contenir trente bambins que les plus coriaces bandits. Mais grâce à une collegue attentive et à son fils, il réussira à se faire des alliés des enfants et à retrouver les méchants.', '1991-02-19', 120, 'image/film.jpg'),
(2, 'comedie', 10, 2, 'un flic a la maternelle2', 'Chargé de retrouver des données sensibles volées, un agent du FBI est infiltré dans une école en tant que professeur. Mais ce travail va s\'avérer ien compliqué pour lui...', '2016-07-01', 140, 'image/film2.jpg'),
(3, 'action', 11, 3, 'Rambo', 'ohn Rambo est un héros de la Guerre du Vietnam errant de ville en ville à la recherche de ses anciens compagnons d\'armes.\r\nAlors qu\'il s\'apprête à traverser une petite ville pour s\'y restaurer, le Shérif Will Teasle l\'arrête pour vagabondage. Emprisonné et maltraité par des policiers abusifs, Rambo devient fou furieux et s\'enfuit dans les bois après avoir blessé de nombreux agents.', '1983-03-03', 137, 'image/film3.jpg'),
(4, 'famille', 12, 4, 'Maxi papa', 'Joe Kingman, robuste quarterback, star de l\'équipe de Boston, est bien décidé à remporter le championnat. Véritable \"célibattant\", Kingman vit le rêve ultime : il est riche, célèbre et de toutes les fêtes. Mais son rêve s\'écroule soudain quand il découvre qu\'il a une fille de 8 ans.', '2008-04-09', 150, 'image/film4.jpg'),
(5, 'action', 13, 5, 'Le transporteur 3', 'Parce qu\'il est le spécialiste incontesté des livraisons à haut risque, Frank Martin se voit contraint, sous la menace, de transporter deux sacs imposants et une jeune Ukrainienne depuis Marseille jusqu\'à Odessa. Que contiennent les sacs ? Qui est cette fille? Pourquoi doit-il l\'accompagner ?', '2008-09-26', 145, 'image/film5.jpg'),
(6, 'science Fiction', 14, 6, 'les chroniques de Riddick', 'Une lourde menace pèse sur l\'univers. Planète après planète, les féroces Necromongers étendent leur empire, ne laissant aux populations conquises qu\'une alternative : se convertir ou mourir. Et c\'est ainsi que le plus improbable sauveur de la galaxie est tiré de son exil et appelé à la rescousse...', '2004-08-18', 159, 'image/film6.jpg'),
(7, 'science Fiction', 15, 7, 'Lucy', 'A la suite de circonstances indépendantes de sa volonté, une jeune étudiante voit ses capacités intellectuelles se développer à l’infini. Elle « colonise » son cerveau, et acquiert des pouvoirs illimités.', '2014-04-17', 119, 'image/film7.jpg'),
(8, 'Drame', 16, 8, 'Hunger Game', 'La jeune Katniss, 16 ans, se porte volontaire pour prendre la place de sa jeune sœur dans la compétition. Elle se retrouve face à des adversaires surentraînés qui se sont préparés toute leur vie. Elle a pour seuls atouts son instinct et un mentor,', '2012-05-21', 222, 'image/film8.jpg'),
(9, 'commedie musical', 17, 9, 'Camp Rock', 'Mitchie, une adolescente souhaite plus que tout passer ses vacances dans le prestigieux Camp Rock. Pour réaliser son rêve elle devra travailler à la cuisine du Camp. Un jour où elle chante en travaillant, Shane Gray, le chanteur d\'un groupe de musique, l\'entend sans la voir et ne pense alors qu\'à une chose : retrouver la jeune fille qui chantait.', '2008-12-03', 134, 'image/film9.jpg'),
(10, 'Romance', 18, 10, 'Passenger', 'Alors que 5000 passagers endormis pour longtemps voyagent dans l’espace vers une nouvelle planète, deux d’entre eux sont accidentellement tirés de leur sommeil artificiel 90 ans trop tôt. Jim et Aurora doivent désormais accepter l’idée de passer le reste de leur existence à bord du vaisseau spatia', '2016-12-28', 157, 'image/film10.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `Categorie` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`Categorie`) VALUES
('action'),
('amination'),
('comedie'),
('comedie musical'),
('science fiction'),
('Thriller');

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `RealisateurID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(35) NOT NULL,
  `Photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `realisateur`
--

INSERT INTO `realisateur` (`RealisateurID`, `Nom`, `Prenom`, `Photo`) VALUES
(9, 'Reitman', ' Ivanco ', 'rea.jpg'),
(10, ' Don ', 'Michael Paul', 'don.jpg'),
(11, 'Kotcheff', 'Ted', 'ted.jpg'),
(12, 'Fickman', 'Andy', 'andy.jpg'),
(13, 'Leterrier', 'Louis', 'louis.jpg'),
(14, 'Twohy', 'David', 'david.jpg'),
(15, 'Besson', 'Luc', 'luc.jpg'),
(16, 'ROSS', 'GARY', 'realisa3.jpg'),
(17, 'Diamond', 'Mathew', 'diamon.jpg'),
(18, 'Tyldum', 'Morten', 'realisa.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acteur`
--
ALTER TABLE `acteur`
  ADD PRIMARY KEY (`ActeurId`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`FilmsID`),
  ADD KEY `ESTCATEGORIE` (`Categorie`),
  ADD KEY `ESTREALISATEUR` (`RealisateurID`),
  ADD KEY `ESTACTEUR` (`ActeurId`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`Categorie`);

--
-- Index pour la table `realisateur`
--
ALTER TABLE `realisateur`
  ADD PRIMARY KEY (`RealisateurID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acteur`
--
ALTER TABLE `acteur`
  MODIFY `ActeurId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `FilmsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `realisateur`
--
ALTER TABLE `realisateur`
  MODIFY `RealisateurID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
