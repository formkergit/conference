-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 15 déc. 2025 à 10:21
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `conference`
--
CREATE DATABASE IF NOT EXISTS `conference` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `conference`;

-- --------------------------------------------------------

--
-- Structure de la table `participants`
--

DROP TABLE IF EXISTS `participants`;
CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `pays` varchar(50) NOT NULL,
  `type_participant` varchar(20) NOT NULL,
  `centres_interet` text NOT NULL,
  `conditions_valide` tinyint(1) NOT NULL DEFAULT 0,
  `date_inscription` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `participants`
--

INSERT INTO `participants` (`id`, `nom`, `prenom`, `email`, `password_hash`, `date_naissance`, `telephone`, `pays`, `type_participant`, `centres_interet`, `conditions_valide`, `date_inscription`) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont@email.com', MD5('pass123'), '1985-03-15', '0123456789', 'France', 'Etudiant', 'PHP,JavaScript', 1, '2025-01-10 14:30:00'),
(2, 'Martin', 'Marie', 'marie.martin@email.com', MD5('motdepasse456'), '1990-07-22', '0987654321', 'Belgique', 'Professionnel', 'DevOps,IA', 1, '2025-01-11 09:15:00'),
(3, 'Dubois', 'Pierre', 'pierre.dubois@email.com', MD5('secret789'), '1982-11-08', '0612345678', 'Suisse', 'Speaker', 'PHP,DevOps', 0, '2025-01-12 16:45:00'),
(4, 'Bernard', 'Sophie', 'sophie.bernard@email.com', MD5('helloabc'), '1995-05-30', '0478912345', 'Canada', 'Etudiant', 'JavaScript,IA', 1, '2025-01-13 11:20:00'),
(5, 'Thomas', 'Luc', 'luc.thomas@email.com', MD5('qwerty123'), '1978-09-12', '0567891234', 'France', 'Professionnel', 'PHP,DevOps', 1, '2025-01-14 13:10:00'),
(6, 'Robert', 'Claire', 'claire.robert@email.com', MD5('azerty456'), '1987-02-18', '0398765432', 'Belgique', 'Etudiant', 'IA,JavaScript', 0, '2025-01-15 10:30:00'),
(7, 'Richard', 'Paul', 'paul.richard@email.com', MD5('mypass789'), '1992-12-05', '0689123456', 'Suisse', 'Speaker', 'DevOps,PHP', 1, '2025-01-16 15:00:00'),
(8, 'Petit', 'Julie', 'julie.petit@email.com', MD5('testpwd012'), '1989-08-27', '0512345678', 'Canada', 'Professionnel', 'JavaScript,PHP', 1, '2025-01-17 12:45:00'),
(9, 'Durand', 'Marc', 'marc.durand@email.com', MD5('secure345'), '1984-04-19', '0745678912', 'France', 'Etudiant', 'IA,DevOps', 0, '2025-01-18 17:20:00'),
(10, 'Leroy', 'Anne', 'anne.leroy@email.com', MD5('login678'), '1993-10-03', '0234567890', 'Belgique', 'Professionnel', 'PHP,IA', 1, '2025-01-19 08:55:00'),
(11, 'Moreau', 'David', 'david.moreau@email.com', MD5('passw0rd'), '1986-06-14', '0891234567', 'Suisse', 'Speaker', 'JavaScript,DevOps', 1, '2025-01-20 14:10:00'),
(12, 'Simon', 'Laura', 'laura.simon@email.com', MD5('mypwd901'), '1991-01-25', '0654321987', 'Canada', 'Etudiant', 'PHP,JavaScript', 0, '2025-01-21 11:35:00'),
(13, 'Laurent', 'Nicolas', 'nicolas.laurent@email.com', MD5('hello234'), '1979-03-07', '0712345890', 'France', 'Professionnel', 'DevOps,IA', 1, '2025-01-22 16:25:00'),
(14, 'Michel', 'Elise', 'elise.michel@email.com', MD5('secret567'), '1988-07-11', '0487654321', 'Belgique', 'Etudiant', 'PHP,DevOps', 1, '2025-01-23 09:40:00'),
(15, 'Lefebvre', 'Thomas', 'thomas.lefebvre@email.com', MD5('test1234'), '1994-11-29', '0598765432', 'Suisse', 'Speaker', 'IA,JavaScript', 0, '2025-01-24 13:50:00'),
(16, 'Boyer', 'Camille', 'camille.boyer@email.com', MD5('pwd5678'), '1983-05-16', '0623456789', 'Canada', 'Professionnel', 'PHP,DevOps', 1, '2025-01-25 10:15:00'),
(17, 'Girard', 'Alexandre', 'alexandre.girard@email.com', MD5('pass890'), '1990-09-04', '0734567891', 'France', 'Etudiant', 'JavaScript,IA', 1, '2025-01-26 15:30:00'),
(18, 'Andre', 'Valerie', 'valerie.andre@email.com', MD5('mysecret'), '1985-12-21', '0412987654', 'Belgique', 'Professionnel', 'DevOps,PHP', 0, '2025-01-27 12:05:00'),
(19, 'Roux', 'Mathieu', 'mathieu.roux@email.com', MD5('login456'), '1992-02-13', '0578912345', 'Suisse', 'Speaker', 'IA,PHP', 1, '2025-01-28 17:45:00'),
(20, 'Francois', 'Sarah', 'sarah.francois@email.com', MD5('hello789'), '1987-08-30', '0265432198', 'Canada', 'Etudiant', 'JavaScript,DevOps', 1, '2025-01-29 11:20:00'),
(21, 'Moulin', 'Olivier', 'olivier.moulin@email.com', MD5('passdef'), '1981-04-09', '0845678912', 'France', 'Professionnel', 'PHP,IA', 0, '2025-01-30 14:35:00'),
(22, 'Lambert', 'Emma', 'emma.lambert@email.com', MD5('testghi'), '1993-10-17', '0356789123', 'Belgique', 'Etudiant', 'DevOps,JavaScript', 1, '2025-01-31 09:50:00'),
(23, 'Schmitt', 'Hugo', 'hugo.schmitt@email.com', MD5('pwd123x'), '1989-06-28', '0691234567', 'Suisse', 'Speaker', 'PHP,DevOps', 1, '2025-02-01 16:10:00'),
(24, 'Rousseau', 'Lea', 'lea.rousseau@email.com', MD5('secretabc'), '1995-03-05', '0421987654', 'Canada', 'Professionnel', 'IA,JavaScript', 0, '2025-02-02 13:25:00'),
(25, 'Carroll', 'Antoine', 'antoine.carroll@email.com', MD5('mypasswd'), '1984-11-12', '0589123456', 'France', 'Etudiant', 'PHP,DevOps', 1, '2025-02-03 10:40:00'),
(26, 'Vincent', 'Nora', 'nora.vincent@email.com', MD5('qwerty789'), '1990-07-19', '0312345678', 'Belgique', 'Professionnel', 'JavaScript,IA', 1, '2025-02-04 15:55:00'),
(27, 'Fournier', 'Gabriel', 'gabriel.fournier@email.com', MD5('loginxyz'), '1986-01-26', '0765432198', 'Suisse', 'Speaker', 'DevOps,PHP', 0, '2025-02-05 12:15:00'),
(28, 'Meunier', 'Chloe', 'chloe.meunier@email.com', MD5('pass567'), '1992-09-08', '0498765432', 'Canada', 'Etudiant', 'IA,JavaScript', 1, '2025-02-06 17:30:00'),
(29, 'Gregoire', 'Louis', 'louis.gregoire@email.com', MD5('test890'), '1977-05-22', '0634567890', 'France', 'Professionnel', 'PHP,DevOps', 1, '2025-02-07 11:45:00'),
(30, 'Blanchard', 'Manon', 'manon.blanchard@email.com', MD5('hello321'), '1988-12-14', '0278912345', 'Belgique', 'Etudiant', 'JavaScript,PHP', 0, '2025-02-08 14:20:00'),
(31, 'Fabre', 'Ethan', 'ethan.fabre@email.com', MD5('secretdef'), '1994-04-03', '0856789123', 'Suisse', 'Speaker', 'DevOps,IA', 1, '2025-02-09 09:35:00'),
(32, 'Jean', 'Lina', 'lina.jean@email.com', MD5('pwd456'), '1983-10-27', '0543219876', 'Canada', 'Professionnel', 'PHP,JavaScript', 1, '2025-02-10 16:50:00'),
(33, 'Denis', 'Maxime', 'maxime.denis@email.com', MD5('passghi'), '1989-02-15', '0619876543', 'France', 'Etudiant', 'IA,DevOps', 0, '2025-02-11 13:10:00'),
(34, 'Pascal', 'Zoe', 'zoe.pascal@email.com', MD5('mypwd234'), '1991-08-09', '0789123456', 'Belgique', 'Professionnel', 'JavaScript,PHP', 1, '2025-02-12 10:25:00'),
(35, 'Sanchez', 'Leo', 'leo.sanchez@email.com', MD5('test567'), '1985-06-20', '0432198765', 'Suisse', 'Speaker', 'DevOps,PHP', 1, '2025-02-13 15:40:00'),
(36, 'Remy', 'Ines', 'ines.remy@email.com', MD5('qwerty890'), '1993-11-07', '0598765432', 'Canada', 'Etudiant', 'IA,JavaScript', 0, '2025-02-14 12:05:00'),
(37, 'Bruno', 'Adam', 'adam.bruno@email.com', MD5('login4567'), '1980-03-18', '0321456789', 'France', 'Professionnel', 'PHP,DevOps', 1, '2025-02-15 17:20:00'),
(38, 'Aubert', 'Mia', 'mia.aubert@email.com', MD5('passxyz'), '1987-09-30', '0678901234', 'Belgique', 'Etudiant', 'JavaScript,IA', 1, '2025-02-16 11:35:00'),
(39, 'Clement', 'Noah', 'noah.clement@email.com', MD5('secret789'), '1992-05-12', '0812345678', 'Suisse', 'Speaker', 'DevOps,PHP', 0, '2025-02-17 14:50:00'),
(40, 'Joly', 'Lola', 'lola.joly@email.com', MD5('pwd12345'), '1984-12-04', '0456789123', 'Canada', 'Professionnel', 'IA,JavaScript', 1, '2025-02-18 09:15:00'),
(41, 'Gauthier', 'Liam', 'liam.gauthier@email.com', MD5('hello567'), '1990-07-25', '0732198765', 'France', 'Etudiant', 'PHP,DevOps', 1, '2025-02-19 16:30:00'),
(42, 'Morin', 'Ruby', 'ruby.morin@email.com', MD5('testabc'), '1986-01-16', '0267890123', 'Belgique', 'Professionnel', 'JavaScript,PHP', 0, '2025-02-20 13:45:00'),
(43, 'Etienne', 'Theo', 'theo.etienne@email.com', MD5('passdefg'), '1989-04-28', '0589012345', 'Suisse', 'Speaker', 'DevOps,IA', 1, '2025-02-21 10:20:00'),
(44, 'Reverand', 'Alice', 'alice.reverand@email.com', MD5('mypwd890'), '1995-10-11', '0415678901', 'Canada', 'Etudiant', 'PHP,JavaScript', 1, '2025-02-22 15:55:00'),
(45, 'Barbier', 'Jules', 'jules.barbier@email.com', MD5('qwerty321'), '1982-08-03', '0698765432', 'France', 'Professionnel', 'IA,DevOps', 0, '2025-02-23 12:10:00'),
(46, 'Besson', 'Eva', 'eva.besson@email.com', MD5('secret123'), '1991-02-19', '0378901234', 'Belgique', 'Etudiant', 'JavaScript,PHP', 1, '2025-02-24 17:25:00'),
(47, 'Louis', 'Robin', 'robin.louis@email.com', MD5('login789'), '1988-11-06', '0523456789', 'Suisse', 'Speaker', 'DevOps,PHP', 1, '2025-02-25 11:40:00'),
(48, 'Charpentier', 'Luna', 'luna.charpentier@email.com', MD5('passwxyz'), '1993-06-23', '0645678901', 'Canada', 'Professionnel', 'IA,JavaScript', 0, '2025-02-26 14:15:00'),
(49, 'Chevalier', 'Milan', 'milan.chevalier@email.com', MD5('testdef'), '1985-03-09', '0289012345', 'France', 'Etudiant', 'PHP,DevOps', 1, '2025-02-27 09:30:00'),
(50, 'JeanPierre', 'Yara', 'yara.jeanpierre@email.com', MD5('mypwd567'), '1989-09-17', '0754321987', 'Belgique', 'Professionnel', 'JavaScript,IA', 1, '2025-02-28 16:45:00');


--
-- Index pour les tables déchargées
--

--
-- Index pour la table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
