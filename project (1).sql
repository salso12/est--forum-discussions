-- exported file from phpmy admin 
-- try to import this file in phpmyadmin 
-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1 (local host )
-- Généré le : ven. 17 déc. 2021 à 19:53
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `project`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Algorithms', 'An algorithm is a self-contained sequence of actions to be performed. Algorithms can perform calculation, data processing and automated reasoning tasks.An algorithm is an effective method that can be expressed within a finite amount of space and time and in a well-defined formal language for calculating a function.<br>There are various algorithm design paradigm like Brute-Force approach, Divide and conquer approach, Linear programming, Dynamic programming, The greedy method and so on...'),
(2, 'Architecture', 'In computer engineering, computer architecture is a set of rules and methods that describe the functionality, organization, and implementation of computer systems. Some definitions of architecture define it as describing the capabilities and programming model of a computer but not a particular implementation. In other definitions computer architecture involves instruction set architecture design, microarchitecture design, logic design, and implementation.<br>The purpose of computer architecture is to design a computer that maximizes performance while keeping power consumption in check, costs low relative to the amount of expected performance, and is also very reliable. For this, many aspects are to be considered which includes Instruction Set Design, Functional Organization, Logic Design, and Implementation.'),
(3, 'Theory Of Computation', 'In theoretical computer science and mathematics, the theory of computation is the branch that deals with how efficiently problems can be solved on a model of computation, using an algorithm. The field is divided into three major branches: automata theory and language, computability theory, and computational complexity theory, which are linked by the question: \"What are the fundamental capabilities and limitations of computers?\".<br>In order to perform a rigorous study of computation, computer scientists work with a mathematical abstraction of computers called a model of computation. There are several models in use, but the most commonly examined is the Turing machine.'),
(4, 'Database Management', 'A Database Management System (DBMS) is a computer program (or more typically, a suite of them) designed to manage a database, a large set of structured data, and run operations on the data requested by numerous users. Typical examples of DBMS use include accounting, human resources and customer support systems.<br>Originally found only in large companies with the computer hardware needed to support large data sets, DBMSs have more recently emerged as a fairly standard part of any company back office.'),
(5, 'Probability &amp; Queuing', 'Probability is the measure of the likelihood that an event will occur. Probability is quantified as a number between 0 and 1 (where 0 indicates impossibility and 1 indicates certainty). The higher the probability of an event, the more certain that the event will occur.<br>Queueing theory is the mathematical study of waiting lines, or queues. In queueing theory, a model is constructed so that queue lengths and waiting time can be predicted. Queueing theory is generally considered a branch of operations research because the results are often used when making business decisions about the resources needed to provide a service.'),
(6, 'Software Engineering', 'Software engineering (SWE) is the application of engineering to the development of software in a systematic method. Typically, Software engineering is Research, design, develop, and test operating systems-level software, compilers, and network distribution software for medical, industrial, military, communications, aerospace, business, scientific, and general computing applications, and is an an engineering discipline that is concerned with all aspects of software production.<br>Software engineering is a direct sub-field of engineering and has an overlap with computer science and management science. It is also considered a part of overall systems engineering.'),
(7, 'Other', 'Any Other Category...');

-- --------------------------------------------------------

--
-- Structure de la table `quacat`
--

CREATE TABLE `quacat` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quacat`
--

INSERT INTO `quacat` (`id`, `category`) VALUES
(1, 'Algorithms'),
(2, 'Algorithms'),
(3, 'Algorithms'),
(40, 'Algorithms'),
(41, 'Algorithms'),
(4, 'Architecture'),
(5, 'Architecture'),
(6, 'Database Management'),
(7, 'Database Management'),
(8, 'Database Management'),
(9, 'Database Management'),
(10, 'Database Management'),
(11, 'Database Management'),
(12, 'Database Management'),
(33, 'Database Management'),
(29, 'Other'),
(30, 'Other'),
(39, 'Other'),
(13, 'Probability &amp; Queuing'),
(14, 'Probability &amp; Queuing'),
(15, 'Software Engineering'),
(16, 'Software Engineering'),
(17, 'Software Engineering'),
(18, 'Software Engineering'),
(19, 'Software Engineering'),
(20, 'Software Engineering'),
(21, 'Software Engineering'),
(22, 'Software Engineering'),
(23, 'Software Engineering'),
(24, 'Software Engineering'),
(25, 'Software Engineering'),
(26, 'Software Engineering'),
(27, 'Software Engineering'),
(32, 'Software Engineering'),
(28, 'Theory Of Computation');

-- --------------------------------------------------------

--
-- Structure de la table `quans`
--

CREATE TABLE `quans` (
  `id` int(11) UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `answer` longtext DEFAULT NULL,
  `askedby` varchar(255) NOT NULL,
  `answeredby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `quans`
--

INSERT INTO `quans` (`id`, `question`, `answer`, `askedby`, `answeredby`) VALUES
(41, 'who\'s our favorite teacher', NULL, 'maaaaa', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `join_date`) VALUES
(17, 'admin', 'admin', 'admin123', 'admin@gmail.com', '2019-04-11 17:59:57'),
(20, 'maaaaa', '$2y$10$fwrPoKBJNr2mVN9v49D5feU9cUF9K6avkjT7/f/LGFE2gDZBCzUhy', 'rajaa hilmi', 'hilmirajaa49@gmail.com', '2021-12-17 15:08:19'),
(19, 'marwa', '$2y$10$bKsN/KAj68M2at4MWYUp5uWODrC/RS8FaBw7dGQEUrWfr89PAWpfa', 'rajaa hilmi', 'hilmirajaa49@gmail.com', '2021-12-13 12:48:26');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`,`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `quacat`
--
ALTER TABLE `quacat`
  ADD PRIMARY KEY (`category`,`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `quans`
--
ALTER TABLE `quans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `askedby` (`askedby`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `quans`
--
ALTER TABLE `quans`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
