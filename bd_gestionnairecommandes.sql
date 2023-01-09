-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 16 Décembre 2022 à 23:34
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bd_gestionnairecommandes`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nom` text NOT NULL,
  `prixSeul` varchar(255) NOT NULL,
  `prixEnMenu` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=130 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `nom`, `prixSeul`, `prixEnMenu`, `image`, `categorie`) VALUES
(48, 'BM', '5', '7.40', 'images/articles/1326c90fefe4cd6733aba7f513212fb6.jpg', 'Burger'),
(49, 'Royal Bacon', '6.90', '9.40', 'images/articles/afdce99ca3e13cad052df88ff3165fed.jpg', 'Burger'),
(50, 'So Mythic', '4.90', '7.40', 'images/articles/f73955a49f47c8266ab0699c039bad89.jpg', 'Burger'),
(51, 'Crousty Cheese', '5.30', '8', 'images/articles/b574bd091e00406ce9ee61bf599a04a1.jpg', 'Burger'),
(52, 'Original', '6.70', '9.40', 'images/articles/d72a5e85debe5860f9dfe69b6f1dbf57.jpg', 'Burger'),
(53, 'Duo box', '18.40', '18.40', 'images/articles/481f3f2343fe1af72aa5f0e528587763.jpg', 'Burger'),
(54, 'Cheese', '2.70', '4.20', 'images/articles/56411e092ede3086c11cca38fa63775e.jpg', 'Burger'),
(55, 'So Fish', '4.20', '6.50', 'images/articles/80a9762886dac8f2110671f82d6a1ec0.jpg', 'Burger'),
(56, 'Double Cheese', '3.70', '5.70', 'images/articles/ce2d93ae75a3c915d84540736cd8faf2.jpg', 'Burger'),
(57, 'Long Bacon', '4.70', '8.20', 'images/articles/b68cfe775f52811e02da13028b3e9b9d.jpg', 'Burger'),
(58, 'Maxi Cheese', '8.90', '11', 'images/articles/6136c8a209037db986ea72e13b64dbff.jpg', 'Burger'),
(59, 'Big night ', '10', '12.40', 'images/articles/edcab9d7032f913181e0be304b4ac2fe.jpg', 'Burger'),
(60, 'So Mythic Chicken', '5.40', '7.60', 'images/articles/3e9d4fc1faf3fa9b16f2162563cf8963.jpg', 'Burger'),
(61, 'Arabika boeuf', '5.40', '7.80', 'images/articles/022157927bf50ed9aa6a81056a2fa524.jpg', 'Burger'),
(62, 'Arabika Poulet', '5.40', '7.80', 'images/articles/2f3694ec9438afd4c88fa97d141c2667.jpg', 'Burger'),
(63, 'Chicken Classic', '6.40', '9', 'images/articles/8f4ac6f4759a7ef1ce706c598b2e0337.jpg', 'Burger'),
(64, 'So Twist', '5.60', '8.60', 'images/articles/f95cd31076e89ad6d8e00ac459d0ef77.jpg', 'Burger'),
(65, 'So Master', '6.40', '9', 'images/articles/e336ab411273ec151ed277f0ee730850.jpg', 'Burger'),
(66, 'BBQ Bacon', '6.60', '9.40', 'images/articles/2a071ea5ecfce87151eb456fad9ae354.jpg', 'Burger'),
(67, 'Max Pepper', '6.40', '9.40', 'images/articles/f2c6afc0d99298abe1c120d4ac2a7668.jpg', 'Burger'),
(68, 'Solo Filet x6', '5.90', '8.90', 'images/articles/383b031882a997bff1c5778aef635abb.jpg', 'Burger'),
(69, 'Solo Wings x6', '5.90', '8.90', 'images/articles/8f4fa33eea404689ddfe7139b594c2d0.jpg', 'Burger'),
(70, 'Solo Mix x6', '5.90', '8.90', 'images/articles/71e13d91e5628c2f254cee1aac7d09f0.jpg', 'Burger'),
(71, 'Solo Nuggets', '4.20', '7.70', 'images/articles/c514ebbcdac74feb53552ac09f5ef60f.jpg', 'Burger'),
(72, 'So Buckets Mix', '26.40', '26.40', 'images/articles/c1330ecb15f020ac9fe436f8cfaead41.jpg', 'Burger'),
(73, 'So Bucket Tenders', '27.40', '27.40', 'images/articles/67e63fdb78a8eb962a328fa5df2ac06a.jpg', 'Burger'),
(74, 'Solo Bucket Wings', '24.40', '24.40', 'images/articles/e92f66d871a49ba96daf8dba5c76d661.jpg', 'Burger'),
(75, 'So Maxi Bucket Mix', '34.40', '34.40', 'images/articles/025547e575ba376cae936768cf63b950.jpg', 'Burger'),
(76, 'So Maxi Bucket Tenders', '35.90', '35.90', 'images/articles/3d8b0fe8ac58e3abbb06aa7f4db31d98.jpg', 'Burger'),
(77, 'So Maxi Bucket Wings', '31.40', '31.40', 'images/articles/b86583c1697e25bc5c80a0c0019f4083.jpg', 'Burger'),
(78, 'Mythic Easy', '4.50', '6.50', 'images/articles/e3cd06d17c62efb1ca1b398bdbcefd55.jpg', 'Burger'),
(79, 'Mytchic Boss', '5.20', '7.50', 'images/articles/60222d548a0b0010c15c49a171021470.jpg', 'Burger'),
(80, 'Mythic Maxx', '6.20', '8.80', 'images/articles/a58258f2832c6f414355e802ba8f8829.jpg', 'Burger'),
(81, 'Cheezy Fries ', '3.70', '3.70', 'images/articles/70b1ee5bc2b23459232fb7a44342425f.jpg', 'Burger'),
(82, 'Smooky Fries', '4.70', '4.70', 'images/articles/b887f8ba78cca4e50ae4b45eea1c2dbf.jpg', 'Burger'),
(83, 'Menu Enfant Cheese', '5.40', '5.40', 'images/articles/a0159304bfbb24845850f92f58fed341.jpg', 'Burger'),
(84, 'Menu Enfant Nuggets', '5.40', '5.40', 'images/articles/f7036c5814a9837ae7fb18ba7d297e2f.jpg', 'Burger'),
(85, 'Menu Enfant Fish', '5.40', '5.40', 'images/articles/aef0ac7dbdc5c371a46987d64413e9e6.jpg', 'Burger'),
(86, 'Sauce Algerienne', '0.20', '0.20', 'images/articles/40d6db5e2a45171964b55d1a7e4b6c47.jpg', 'Sauces'),
(87, 'Oasis', '1.50', '1.50', 'images/articles/6701ae360180871c1ee4feeca51f75b1.jpg', 'Boissons'),
(88, 'Mayonnaise', '0.5', '0.5', '', 'Sauces'),
(89, 'Tiramisu orÃ©o', '3.40', '3.40', 'images/articles/8c4c03adb3f63213c805ea584441c5e3.jpg', 'Dessert'),
(90, 'Tiramisu Kinder dÃ©lice', '3.40', '3.40', 'images/articles/90b176361b34ec81317d8f11d7985402.jpg', 'Dessert'),
(91, 'Tiramisu spÃ©culos caramel', '3.40', '3.40', 'images/articles/8ff4a70a955fc7c1caf8cf4b51702755.jpg', 'Dessert'),
(92, 'Tiramisu spÃ©culos chocolat blanc', '3.40', '3.40', 'images/articles/8a8f09ab5a56a25157046d1881a010d1.jpg', 'Dessert'),
(93, 'Tarte aux daim', '3.40', '3.40', 'images/articles/17b822988865f7e529f67a8964462437.jpg', 'Dessert'),
(94, 'Glace Haagen dazs', '3.90', '3.90', 'images/articles/e3f7017cc2badf6e5339efe348d548e6.jpg', 'Dessert'),
(95, 'Glace Ben and Jerry''s 100ml', '3', '3', 'images/articles/f5794533df588099347f2ef2db6c08fd.jpg', 'Dessert'),
(96, 'Glace Ben and Jerry''s 427ml', '7.9', '7.9', 'images/articles/a631a9cee513b7e57e2677508eb59875.jpg', 'Dessert'),
(97, 'Oasis pomme cassis', '1.5', '1.5', 'images/articles/1e42deecb41c0204ac2046ed32171653.jpg', 'Boissons'),
(98, 'coca cola', '1.5', '1.5', 'images/articles/06d535e833a381b104d1ffecd34352ed.jpg', 'Boissons'),
(99, 'Coca-cola cherry', '1.5', '1.5', 'images/articles/122fd0a2b2512ee8b421f5a85c9bebeb.jpg', 'Boissons'),
(100, 'Coca-cola zÃ©ro', '1.5', '1.5', 'images/articles/9056ed94aab6f36611ba64aaf786b1f5.jpg', 'Boissons'),
(101, 'Orangina', '1.5', '1.5', 'images/articles/f5efb6a639eea9fb5e95a659c0ce493f.jpg', 'Boissons'),
(102, 'Schweppes agrumes', '1.5', '1.5', 'images/articles/022c49dfb5d2917f904b0743f8a44d67.jpg', 'Boissons'),
(103, 'Fanta citron', '1.5', '1.5', 'images/articles/2e0e2f9b014fe678107aa00f5d806703.jpg', 'Boissons'),
(104, 'Fanta oranga', '1.5', '1.5', 'images/articles/df4da3341518218df606f70c45f5ee1f.jpg', 'Boissons'),
(105, 'Hawaii', '1.5', '1.5', 'images/articles/dcc661f5693ed892d6a91c667d0ce850.jpg', 'Boissons'),
(106, 'Bouteille d''eau 33cl', '1', '1', 'images/articles/1de2ece353b4a32232f8ec2c0bf52acf.jpg', 'Boissons'),
(107, 'Perrier ', '1.5', '1.5', 'images/articles/cde7eaf31c2f4d25bb913c3397e6e859.jpg', 'Boissons'),
(108, 'Seven up mojito', '1.5', '1.5', 'images/articles/41e49ec0dc6735939e3094773a9f198a.jpg', 'Boissons'),
(109, 'Sprite', '1.5', '1.5', 'images/articles/e15bffbffd9109b910c189e02d0e082f.jpg', 'Boissons'),
(110, 'Ice-tea pÃªche', '1.5', '1.5', 'images/articles/5955359b94a0983572bb6c0fa3d20d76.jpg', 'Boissons'),
(111, 'Tropico', '1.5', '1.5', 'images/articles/5a9c5a36e660dfbc8d201dac3780527b.jpg', 'Boissons'),
(112, 'Redbull', '2', '2', 'images/articles/3dc72b17a1b8731cc2c88523eb9f5978.jpg', 'Boissons'),
(113, 'Biggy burger', '0.5', '0.5', 'images/articles/73fc1c7c308a9132b02a9de739924cd0.jpg', 'Sauces'),
(114, 'Ketchup', '0.5', '0.5', 'images/articles/f4e759046cdf8e7752b7d7ed2b60f459.jpg', 'Sauces'),
(115, 'Barbecue', '0.5', '0.5', 'images/articles/af7e4bc8c4ce77c4150b387f28d26a27.jpg', 'Sauces'),
(116, 'Pitta', '0.5', '0.5', 'images/articles/0b7d0114c4fd7732d8539a9773eb09ac.jpg', 'Sauces'),
(117, 'Samourai', '0.5', '0.5', 'images/articles/5bdcb8e1ca787ecf0c1be68248a67e50.jpg', 'Sauces'),
(118, 'Andalouse', '0.5', '0.5', 'images/articles/cbc2c42b58f9dd27aece008431e1393a.jpg', 'Sauces'),
(119, 'Curry', '0.5', '0.5', 'images/articles/e00fa9e0cb02b3bddd36eabf7f637f26.jpg', 'Sauces'),
(120, 'Hannibal', '0.5', '0.5', 'images/articles/beb4f05026c67b2e5a26e4ec5a2a8c29.jpg', 'Sauces'),
(121, 'CÃ©sar Ilou', '1', '1', 'images/articles/21e85ba06f00b86c9e21860afdb706f6.jpg', 'Sauces'),
(122, 'Calyspo bleu', '3.5', '3.5', 'images/articles/28018dd61da658e24d8be60b5d5d5568.jpg', 'Boissons'),
(123, 'Powerade bleu', '2.5', '2.5', 'images/articles/8baad8d477cdda03085bcc432e288d99.jpg', 'Boissons'),
(124, 'Capri-sun', '0.5', '0.5', 'images/articles/81d0d6b9b13b9cb9d61a0641698bd8dd.jpg', 'Boissons'),
(125, 'Pomme pote', '0.5', '0.5', 'images/articles/3aec53a0dc34015497f8d7790a3eaccc.jpg', 'Dessert'),
(126, 'Coca-cola 1,5L', '3.7', '3.7', 'images/articles/db05bb64f64d0a465e5c6fde535f7548.jpg', 'Boissons'),
(127, 'Seven up mojito 1,5L', '3.7', '3.7', 'images/articles/08c59e8a1e0153ab5d7270af8adf507a.jpg', 'Boissons'),
(128, 'Oasis 2L', '3.7', '3.7', 'images/articles/cb43477dec94019f65083a552142d28f.jpg', 'Boissons'),
(129, 'Ice-tea pÃªche 1,5L', '3.7', '3.7', 'images/articles/e2355f2d23e991dd2447eb299b7d4622.jpg', 'Boissons');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `adresse` text NOT NULL,
  `numero` text NOT NULL,
  `numeroDeCommande` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id`, `adresse`, `numero`, `numeroDeCommande`, `date`) VALUES
(15, '10 rue bellevue 59155', '0320586965', 32313, '18/08/2022 19:43'),
(14, '59 rue roger salengro', '01566665', 15710, '08/07/2022 00:11'),
(13, '55 rue du zguegue 59000', '0756569585', 15710, '08/07/2022 00:08'),
(12, '155 rue de la zounch', '0758659568', 15710, '08/07/2022 00:06'),
(16, '10 rue bellevue', '0320586596', 19582, '18/08/2022 19:45'),
(17, '12 rue jean', '0652656859', 5416, '28/09/2022 22:51'),
(18, '15 rue de nounch', '0620525654', 466, '29/09/2022 23:10'),
(19, '15 rue de nounch', '0620525654', 6671, '29/09/2022 23:13'),
(20, '', '', 6671, '29/09/2022 23:26'),
(21, '.', '.', 16515, '29/09/2022 23:27'),
(22, '', '', 24488, '10/10/2022 23:49'),
(23, '134 rue colbert 59800 lille', '0695205924', 11664, '02/11/2022 18:43'),
(24, '21 rue des vetererans VD', '0602067180', 3155, '02/11/2022 20:37'),
(25, '', '', 19389, '04/11/2022 20:07'),
(26, '', '', 7234, '04/11/2022 20:08'),
(27, '', '', 7234, '04/11/2022 20:08');

-- --------------------------------------------------------

--
-- Structure de la table `commandeencours`
--

CREATE TABLE IF NOT EXISTS `commandeencours` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `idArticleCommander` varchar(255) DEFAULT NULL,
  `nombreArticleCommander` int(255) DEFAULT NULL,
  `menu` int(255) DEFAULT NULL,
  `sauce` text NOT NULL,
  `boisson` text NOT NULL,
  `sc` text,
  `ss` text,
  `st` text,
  `so` text,
  `sf` text NOT NULL,
  `ssa` text NOT NULL,
  `numeroDeCommande` text NOT NULL,
  `status` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Contenu de la table `commandeencours`
--

INSERT INTO `commandeencours` (`id`, `idArticleCommander`, `nombreArticleCommander`, `menu`, `sauce`, `boisson`, `sc`, `ss`, `st`, `so`, `sf`, `ssa`, `numeroDeCommande`, `status`) VALUES
(15, '28', 1, 0, '', '', '', '', '', '', '', '', '5416', 1),
(16, '25', 1, 0, '', '', '', '', '', '', '', '', '5416', 1),
(17, '45', 1, 0, '', '', '', '', '', '', '', '', '5416', 1),
(18, '40', 1, 0, '', '', '', '', '', '', '', '', '5416', 1),
(19, '41', 1, 0, '', '', '', '', '', '', '', '', '5416', 1),
(20, '29', 1, 0, '', '', '', '', '', '', '', '', '5416', 1),
(84, '59', 1, 1, 'Ketchup', 'coca cola', '', '', '', '', '', '', '11664', 1),
(85, '91', 1, 0, '', '', '', '', '', '', '', '', '11664', 1),
(86, '59', 1, 1, 'Andalouse', 'coca cola', '', '', '', '', '', '', '3155', 1),
(87, '94', 1, 0, '', '', '', '', '', '', '', '', '3155', 1),
(88, '79', 1, 1, 'Mayonnaise', 'Coca-cola cherry', '', '', '', '', '', '', '3155', 1),
(89, '79', 1, 1, 'Mayonnaise', 'Coca-cola cherry', '', '', '', '', '', '', '3155', 1),
(90, '79', 1, 0, '', '', '', '', '', '', '', '', '3155', 1),
(91, '61', 1, 0, '', '', '', '', '', '', '', '', '19389', 1),
(93, '53', 1, 0, '', '', '', '', '', '', '', '', '7234', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE IF NOT EXISTS `commandes` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `burger` varchar(255) NOT NULL,
  `frite` varchar(255) NOT NULL,
  `sauce` varchar(255) NOT NULL,
  `boisson` varchar(255) NOT NULL,
  `dessert` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `paiement` varchar(255) NOT NULL,
  `origine` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `compteARebour` int(255) NOT NULL,
  `estArchiver` int(255) NOT NULL,
  `avantAppoint` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6948 ;

--
-- Contenu de la table `commandes`
--

INSERT INTO `commandes` (`id`, `burger`, `frite`, `sauce`, `boisson`, `dessert`, `adresse`, `telephone`, `prix`, `paiement`, `origine`, `date`, `compteARebour`, `estArchiver`, `avantAppoint`) VALUES
(6947, 'Maxi Cheese/Long Bacon/Tenders/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '78/21  bd albert 1er', '0658573230', '19.5', 'Especes', 'Livraison', '16/12/2022 23:28', 1671229681, 0, '20'),
(6946, 'L''Arabika Poulet/So''Fish/Sans Burger/Sans Burger/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Andalouse/Sauce Ketchup/Sans Sauce/Sans Sauce/', 'Coca/Ice Tea/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Haagen Dazs/Haagen Dazs/', 'tulipine ', '0751392226', '21.4', 'Especes', 'Livraison', '16/12/2022 22:59', 1671227954, 0, 'OK'),
(6945, 'L''Original/Double Cheese Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce PomFrite/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Coca 1.5l/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '127 boulevard de verdin', '0612159974', '16.6', 'Especes', 'Livraison', '16/12/2022 22:54', 1671227642, 0, '50'),
(6944, 'Maxi Cheese/Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sauce Mayonnaise/', 'Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', 'auchan fache', '0753597198', '33', 'Especes', 'Livraison', '16/12/2022 20:48', 1671220118, 0, '50'),
(6943, 'Crousty Cheese/Crousty Cheese/Crousty Cheese/Tenders/Tenders/', 'Avec Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce PomFrite/Sauce PomFrite/Sauce PomFrite/Sans Sauce/Sans Sauce/', 'Coca/Coca/Ice Tea/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '100 Rue du Recueil59491 Villeneuve-d''Ascq', '0663339481', '35.8', 'Carte Bancaire', 'Livraison', '16/12/2022 20:29', 1671218961, 0, 'OK'),
(6942, 'Max Pepper/Royal Bacon/', 'Avec Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/', 'Eau/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '110 rue jean jacque rouseaux hellemmes', '0615249618', '16.3', 'Carte Bancaire', 'Livraison', '16/12/2022 18:40', 1671212433, 0, 'OK'),
(6941, 'Maxi Cheese/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/Sans Sauce/', 'Oasis Tropical/Sans Boisson/Ice Tea/', 'Sans Dessert/Tiramisu Kinder/Sans Dessert/', '5 rue kelerman', '0621959472', '16', 'Carte Bancaire', 'Livraison', '16/12/2022 01:50', 1671151843, 0, 'OK'),
(6940, 'Chicken Classique/Cheese Burger/Tenders/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/Sans Sauce/', 'Ice Tea/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '', '0629651533', '17.6', 'Carte Bancaire', 'Emporter', '16/12/2022 01:37', 1671151040, 0, 'OK'),
(6939, 'So''Mythic/Sans Burger/', 'Avec Frite/Sans Frite/', 'Sauce Andalouse/Sans Sauce/', 'Hawai/Sans Boisson/', 'Sans Dessert/Tiramusu Speculos Caramel/', '', '', '10.9', 'Especes', 'Emporter', '16/12/2022 01:25', 1671150358, 0, 'OK'),
(6937, 'Crousty Cheese/So''Mythic/Wings/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '3 rue de la louviere', '0783516549', '18.6', 'Especes', 'Livraison', '16/12/2022 00:45', 1671147936, 0, '20'),
(6938, 'L''Original/So''Mythic/', 'Avec Frite/Sans Frite/', 'Sauce Barbecue/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '16 rue castel hellemmes', '0781676947', '14.3', 'Especes', 'Livraison', '16/12/2022 00:48', 1671148083, 0, '20'),
(6936, 'Maxi Cheese/Sans Burger/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'hopital jeanne de flandre urgence ', '0752836478 ', '15.5', 'Especes', 'Livraison', '16/12/2022 00:36', 1671147373, 0, 'OK'),
(6935, 'Big Night/BM/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Biggy/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '30 rue de la bascule lille', '0782685635', '18.9', 'Carte Bancaire', 'Livraison', '15/12/2022 23:32', 1671143551, 0, 'OK'),
(6934, 'Maxi Cheese/Maxi Cheese/Maxi Cheese/Maxi Cheese/So Kids/', 'Avec Frite/Avec Frite/Avec Frite/Avec Frite/Avec Frite/', 'Sauce Biggy/Sauce Mayonnaise/Sauce Ketchup/Sauce Mayonnaise/Sauce Ketchup/', 'Coca/Coca/Coca/Coca/Capri-sun + Pom Potes/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '0602353273', '49.4', 'Especes', 'Livraison', '15/12/2022 23:02', 1671141761, 0, '50'),
(6932, 'Wings/Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Ketchup/Sauce Ketchup/', 'Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '153 Rue Pasteur, 59139 Wattignies', '0749242416', '30.6', 'Especes', 'Livraison', '15/12/2022 22:14', 1671138849, 0, '50'),
(6933, 'Crousty Cheese/Crousty Cheese/Mythic EaZy/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Mayonnaise/Sauce Algerienne/Sans Sauce/', 'Coca/Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '30 Rue Brasseur, Lille five', '0765673560', '20.5', 'Especes', 'Livraison', '15/12/2022 22:46', 1671140803, 0, 'OK'),
(6931, 'Mythic BoSS/Crousty Cheese/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '0652131923', '12.8', 'Especes', 'Emporter', '15/12/2022 21:49', 1671137391, 0, 'OK'),
(6930, 'L''Original/', 'Sans Frite/', 'Sans Sauce/', 'Sans Boisson/', 'Sans Dessert/', '', '', '6.7', 'Carte Bancaire', 'Emporter', '15/12/2022 20:28', 1671132493, 0, 'OK'),
(6929, 'Barbecue Bacon/So''Master/Crousty Cheese/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Algerienne/Sauce Algerienne/Sauce Algerienne/', 'Coca Cherry/Coca Cherry/Coca Cherry/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '3 denis papin mons', '0621558013', '26.4', 'Carte Bancaire', 'Livraison', '15/12/2022 20:13', 1671131586, 0, 'OK'),
(6927, 'So''Hot wings/', 'Avec Frite/', 'Sans Sauce/', 'Coca 1.5l/', 'Sans Dessert/', 'erreur', '', '24.4', 'Ticket restaurant', 'Emporter', '15/12/2022 20:01', 1671130919, 0, ''),
(6928, 'L''Original/L''Original/L''Original/Big Night/Chicken Classique/So''Mixte/', 'Sans Frite/Sans Frite/Sans Frite/Avec Frite/Sans Frite/Avec Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sauce Andalouse/Sans Sauce/Melange de sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/Coca Cherry/Sans Boisson/Oasis 2l/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '', '0650419799', '65.3', 'Especes', 'Emporter', '15/12/2022 20:06', 1671131177, 0, 'OK'),
(6926, 'L''Original/Big Night/So''Hot wings/Chicken Classique/L''Original/L''Original/', 'Sans Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sauce Andalouse/Melange de sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Coca Cherry/Oasis 2l/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '', '0650419799', '63.3', 'Especes', 'Emporter', '15/12/2022 19:50', 1671130255, 0, 'OK'),
(6925, 'Big Night/', 'Avec Frite/', 'Sauce Ketchup/', 'Coca/', 'Sans Dessert/', '', '', '12.4', 'Carte Bancaire', 'Livraison', '15/12/2022 00:45', 1671061512, 0, 'OK'),
(6923, 'Sans Burger/', 'Sans Frite/', 'Sans Sauce/', 'Ice Tea Peche 1.5l/', 'Sans Dessert/', '141 rue jean baptiste defaux lezennes', '', '3.5', 'Especes', 'Livraison', '15/12/2022 00:24', 1671060263, 0, 'OK'),
(6921, 'Maxi Cheese/Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Mayonnaise/Sauce Ketchup/', 'Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '22 citÃ© pascal wattiginie', '0780367531', '33', 'Especes', 'Livraison', '14/12/2022 22:28', 1671053294, 0, '50'),
(6922, 'Maxi Cheese/Long Bacon/Crousty Cheese/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca Cherry/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '141 rue jean baptiste defaux lezennes', '0668288727', '21', 'Especes', 'Livraison', '15/12/2022 00:22', 1671060141, 0, 'OK'),
(6920, 'Maxi Cheese/Maxi Cheese/Nuggets/Long Bacon/', 'Avec Frite/Sans Frite/Avec Frite/Sans Frite/', 'Melange de sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Schweppes Agrum/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'high bar', '0786886330', '32.5', 'Carte Bancaire', 'Livraison', '14/12/2022 20:15', 1671045313, 0, 'OK'),
(6917, 'Chicken Classique/So Kids/So Kids/So Kids/L''Arabika Poulet/', 'Sans Frite/Avec Frite/Avec Frite/Avec Frite/Avec Frite/', 'Sans Sauce/Sauce Ketchup/Sauce Mayonnaise/Sauce Ketchup/Sauce Mayonnaise/', 'Sans Boisson/Capri-sun + Pom Potes/Capri-sun + Pom Potes/Capri-sun + Pom Potes/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '5d sentier du curÃ©Ã©', '0782171747', '30.5', 'Ticket restaurant', 'Livraison', '14/12/2022 18:11', 1671037890, 0, ''),
(6916, 'Mythic MaX/Mythic EaZy/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Fanta Citron/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Tiramusu Speculos Caramel/', '4 Av. Mormal59800 Lille', '0617568164', '16.2', 'Carte Bancaire', 'Livraison', '14/12/2022 02:37', 1670981833, 0, 'OK'),
(6915, 'Mythic BoSS/Long Bacon/', 'Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '0634433514', '9.9', 'Especes', 'Emporter', '14/12/2022 02:02', 1670979753, 0, '10'),
(6918, 'Maxi Cheese/Salade Chicken/', 'Sans Frite/Salade Fromagere/', 'Sans Sauce/Sauce Mayonnaise/', 'Sans Boisson/Coca Zero/', 'Sans Dessert/Tiramisu Kinder/', '', '', '12.4', 'Especes', 'Livraison', '14/12/2022 19:08', 1671041287, 0, 'OK'),
(6924, 'Big Night/', 'Avec Frite/', 'Sauce Ketchup/', 'Eau/', 'Sans Dessert/', '', '', '12.4', 'Carte Bancaire', 'Emporter', '15/12/2022 00:41', 1671061303, 0, 'OK'),
(6919, 'Maxi Cheese/Chicken Classique/L''Arabika Poulet/Nuggets/Nuggets/So''Master/Cheese Burger/Sans Burger/Sans Burger/Sans Burger/', 'Sans Frite/Avec Frite/Avec Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sauce Algerienne/Sauce Mayonnaise/Sauce Mayonnaise/Sauce Mayonnaise/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Coca/Coca/Coca/Coca/Sans Boisson/Sans Boisson/Coca/Oasis Tropical/Oasis Tropical/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '', '', '55.2', 'Especes', 'Emporter', '14/12/2022 19:10', 1671041410, 0, 'OK'),
(6914, 'Maxi Cheese/Twist/Crousty Cheese/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Andalouse/Sauce Andalouse/Sauce Algerienne/', 'Coca/Coca Zero/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', 'RESIDENCE GALOIS', '0783397348', '27.6', 'Carte Bancaire', 'Livraison', '14/12/2022 01:43', 1670978593, 0, 'OK'),
(6913, 'Royal Bacon/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/', 'Fanta Citron/Coca/', 'Sans Dessert/Sans Dessert/', '235 RUE DU FB DE ROUBAIX SAINT MAURICE', '0749468700', '20.4', 'Especes', 'Livraison', '14/12/2022 01:08', 1670976484, 0, 'OK'),
(6911, 'Mythic MaX/', 'Avec Frite/Sans Frite/Avec Frite/', 'Sauce Mayonnaise/Sans Sauce/Melange de sauce/', 'Coca/Sans Boisson/Coca/', 'Sans Dessert/Sans Dessert/Mars/', '93 RUE MADAGASCAR', '0637418130', '8.2', 'Carte Bancaire', 'Livraison', '13/12/2022 23:43', 1670971406, 3, 'OK'),
(6912, 'Mythic MaX/BM/Mythic MaX/BM/', 'Avec Frite/Sans Frite/Avec Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/Sauce Mayonnaise/Sans Sauce/', 'Coca/Sans Boisson/Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '93 RUE MADAGASCAR', '0637418130', '26.4', 'Carte Bancaire', 'Livraison', '13/12/2022 23:45', 1670971553, 0, 'OK'),
(6910, 'Max Pepper/Cheese Burger/Cheese Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sprite/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Tiramisu Kinder/', '33 bd genral leclerc mons', '0744289794', '18.3', 'Carte Bancaire', 'Livraison', '13/12/2022 23:35', 1670970933, 3, 'OK'),
(6909, 'Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Ketchup/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', 'auchan fache', '0604435600', '22', 'Especes', 'Livraison', '13/12/2022 23:30', 1670970613, 0, '50'),
(6908, 'Max Pepper/Crousty Cheese/Frite/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '23 Rue du GÃ©nÃ©ral Koenig, La Madeleine', '0785248946', '19.2', 'Especes', 'Livraison', '13/12/2022 23:26', 1670970379, 0, '20'),
(6907, 'Maxi Cheese/Cheese Burger/Maxi Cheese/', 'Avec Frite/Sans Frite/Avec Frite/', 'Sauce Samourai/Sans Sauce/Sauce Mayonnaise/', 'Oasis Pomme Cassis/Sans Boisson/Oasis Pomme Cassis/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '8 rue du 11 novembre 1918 mons', '0602332954', '24.7', 'Especes', 'Livraison', '13/12/2022 23:11', 1670969505, 0, '25'),
(6906, 'Mythic MaX/Mythic MaX/Chili Cheese Nuggets/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '4/1 Rue de Gascogne 59370 Mons-en-BarÅ“ul', '0627878554', '17.1', 'Especes', 'Livraison', '13/12/2022 22:36', 1670967401, 0, '20'),
(6904, 'Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Ketchup/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', 'auchan fache', '0767592274', '22', 'Especes', 'Livraison', '13/12/2022 22:16', 1670966198, 0, '50'),
(6905, 'Wings/Long Bacon/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Schweppes Agrum/Sans Boisson/Schweppes Agrum/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '20 rue pierre legrand five (maison de la photographie)', '0786886330', '14.8', 'Especes', 'Livraison', '13/12/2022 22:33', 1670967193, 0, 'OK'),
(6903, 'So''Mythic Chicken/Mythic BoSS/', 'Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Mayonnaise/', 'Oasis Tropical/Schweppes Agrum/', 'Sans Dessert/Sans Dessert/', '7 rue de la briquetterie saint maurice', '0622518211', '15.1', 'Carte Bancaire', 'Livraison', '13/12/2022 21:36', 1670963812, 0, 'OK'),
(6902, 'Maxi Cheese/Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sauce Ketchup/', 'Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '153 Rue Pasteur, 59139 Wattignies', '0749242416', '33', 'Especes', 'Livraison', '13/12/2022 21:08', 1670962132, 0, '50'),
(6901, 'Big Night/Sans Burger/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca Zero/Sans Boisson/', 'Sans Dessert/Tiramusu Speculos Caramel/', '32 rue delphin petit', '0681676223', '15.9', 'Especes', 'Livraison', '13/12/2022 20:21', 1670959310, 0, 'OK'),
(6898, 'Mythic BoSS/Mythic BoSS/Mythic BoSS/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sans Sauce/', 'Coca Cherry/Coca Cherry/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '21 rue des veteran', '0602067180', '20.2', 'Especes', 'Livraison', '13/12/2022 18:47', 1670953643, 0, 'OK'),
(6896, 'So''Mythic Chicken/L''Arabika Poulet/Cheese Burger/Cheese Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Curry/Sans Sauce/Sans Sauce/Sans Sauce/', 'Ice Tea/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '12 Avenue de Paris, Villeneuve-d''Ascq', '0610839134', '18.4', 'Carte Bancaire', 'Livraison', '13/12/2022 02:07', 1670893670, 0, 'OK'),
(6895, 'Crousty Cheese/Chicken Classique/', 'Sans Frite/Avec Frite/', 'Sans Sauce/Sauce Biggy/', 'Sans Boisson/Ice Tea/', 'Sans Dessert/Sans Dessert/', '118 rue de la louviere', '0636050346', '14.3', 'Especes', 'Livraison', '13/12/2022 01:28', 1670891300, 0, '20'),
(6892, 'So''Mythic/Crousty Cheese/', 'Avec Frite/Sans Frite/', 'Sauce Andalouse/Sans Sauce/', 'Oasis Tropical/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '17 rue jean macÃ© ', '0672520101', '12.7', 'Carte Bancaire', 'Livraison', '12/12/2022 23:59', 1670885996, 0, 'OK'),
(6900, 'Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '0780268786', '22', 'Especes', 'Livraison', '13/12/2022 20:14', 1670958888, 0, '50'),
(6899, 'So''Mythic/Mythic MaX/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/', 'Coca/Ice Tea/', 'Sans Dessert/Sans Dessert/', '36 rue de pologne five', '0627677545', '15.6', 'Carte Bancaire', 'Livraison', '13/12/2022 19:25', 1670955953, 0, 'OK'),
(6897, 'L''Arabika Poulet/Big Night/So''Croque/Sans Burger/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Coca/Eau/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '17 Avenue Louise, La Madeleine', '0768790439', '25.4', 'Especes', 'Livraison', '13/12/2022 02:21', 1670894494, 0, '30'),
(6894, 'So''Fish/So''Fish/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '', '10.7', 'Especes', 'Emporter', '13/12/2022 01:17', 1670890659, 0, 'OK'),
(6893, 'So''Master/Double Cheese Burger/', 'Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '', '10.1', 'Especes', 'Emporter', '13/12/2022 01:15', 1670890506, 0, 'OK'),
(6891, 'Maxi Cheese/Tenders/Tenders/Tenders/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '8 Rte de Gondecourt59113 Seclin', '0780518591', '28.7', 'Especes', 'Livraison', '12/12/2022 23:25', 1670883901, 0, '50'),
(6890, 'Barbecue Bacon/Long Bacon/So''Fish/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '63 rue jean Jacque rousseau hellemmes', '0768756682', '18.3', 'Especes', 'Livraison', '12/12/2022 22:45', 1670881553, 0, 'OK'),
(6888, 'So''Mythic/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Biggy/Sans Sauce/Sans Sauce/', 'Hawai/Sans Boisson/Sans Boisson/', 'Sans Dessert/Tiramusu Speculos Caramel/Tarte au Daim/', 'b&b hotel VD grand stade', '0629879798', '14.4', 'Especes', 'Livraison', '12/12/2022 21:44', 1670877840, 0, '20'),
(6889, 'Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Mayonnaise/', 'Coca Cherry/Coca Cherry/', 'Sans Dessert/Sans Dessert/', 'auchan fache', '0780298536', '22', 'Especes', 'Livraison', '12/12/2022 22:27', 1670880452, 0, '50'),
(6887, 'Maxi Cheese/Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Mayonnaise/Sauce Ketchup/', 'Coca Cherry/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '0656748249', '33', 'Especes', 'Livraison', '12/12/2022 21:13', 1670876000, 0, '50'),
(6886, 'Nuggets/Long Bacon/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Schweppes Agrum/Sans Boisson/Schweppes Agrum/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '20 rue pierre legrand five (maison de la photographie)', '0786886330', '14.1', 'Especes', 'Livraison', '12/12/2022 19:27', 1670869648, 0, 'OK'),
(6885, 'Big Night/Sans Burger/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '73 rue paul kimpe', '0602153844', '12.4', 'Carte Bancaire', 'Livraison', '11/12/2022 22:04', 1670792645, 0, 'OK'),
(6884, 'So''Fish/So''Croque/Chicken Classique/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Biggy/Sans Sauce/Sauce Biggy/Sans Sauce/Sans Sauce/', 'Hawai/Sans Boisson/Oasis Tropical/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Tarte au Daim/Tarte au Daim/', '', '', '25.5', 'Especes', 'Emporter', '11/12/2022 21:58', 1670792336, 0, 'OK'),
(6883, 'Double Cheese Burger/Chicken Classique/', 'Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Samourai/', 'Fanta Citron/Coca/', 'Sans Dessert/Sans Dessert/', '70 rue faubourg d''arras Lille', '0769056565', '14.7', 'Carte Bancaire', 'Livraison', '11/12/2022 21:29', 1670790562, 0, 'OK'),
(6881, 'So''Mythic/L''Original/', 'Avec Frite/Avec Frite/', 'Sauce Biggy/Sauce Mayonnaise/', 'Hawai/Sprite/', 'Sans Dessert/Sans Dessert/', 'bb hotel grand stade', '0629879798', '16.8', 'Especes', 'Livraison', '11/12/2022 20:28', 1670786882, 0, '20'),
(6879, 'So''Mythic/Twist/Twist/Wings/Cheese Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'hotel b&b vd grand stade', '0641004582', '27', 'Especes', 'Livraison', '10/12/2022 22:49', 1670708986, 0, '50'),
(6878, 'Maxi Cheese/Maxi Cheese/Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/Avec Frite/Avec Frite/', 'Sauce Algerienne/Sauce Mayonnaise/Sauce Mayonnaise/Sauce Ketchup/', 'Coca/Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'kiabi fache', '0634100016', '44', 'Especes', 'Livraison', '10/12/2022 21:41', 1670704868, 0, '50'),
(6877, 'Crousty Cheese/', 'Avec Frite/', 'Sauce Samourai/', 'Coca/', 'Sans Dessert/', '', '', '8', 'Carte Bancaire', 'Emporter', '10/12/2022 20:09', 1670699392, 0, 'OK'),
(6875, 'So''Mixte/', 'Avec Frite/', 'Melange de sauce/', 'Ice Tea Peche 1.5l/', 'Sans Dessert/', '78 rue piere moroy', '0645618897', '26.4', 'Especes', 'Livraison', '10/12/2022 03:44', 1670640268, 0, 'OK'),
(6874, 'Royal Bacon/Mythic EaZy/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Biggy/Sans Sauce/Sans Sauce/', 'Fanta Citron/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Tiramisu Kinder/', '102 rue belle vue fives', '0619751691', '17.4', 'Especes', 'Livraison', '10/12/2022 02:26', 1670635591, 0, '20'),
(6872, 'Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '0656748249', '22', 'Especes', 'Livraison', '10/12/2022 00:02', 1670626968, 0, '50'),
(6873, 'Tenders/Tenders/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Coca Zero/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '6 Rue Etienne Dolet, 59800 Lille', '0695927697', '13.3', 'Carte Bancaire', 'Livraison', '10/12/2022 00:46', 1670629587, 0, 'OK'),
(6871, 'Mythic BoSS/Crousty Cheese/', 'Avec Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '', '12.8', 'Especes', 'Emporter', '09/12/2022 23:43', 1670625817, 0, 'OK'),
(6870, 'So''Master/Wings/Wings/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '22 citÃ© pascal wattiginie', '0780367531', '20.4', 'Especes', 'Livraison', '09/12/2022 23:14', 1670624090, 0, 'OK'),
(6869, 'So''Mythic/Wings/So''Fish/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Haagen Dazs/', '34bis bd gÃ©nÃ©ral leclerc mons', '0753323888', '20.8', 'Carte Bancaire', 'Livraison', '09/12/2022 22:53', 1670622814, 0, 'OK'),
(6868, 'Crousty Cheese/Mozza Stick/Crousty Cheese/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '2bis parvis notre dame de Pellevoisin saint maurice ', '0645474700', '18', 'Carte Bancaire', 'Livraison', '09/12/2022 22:23', 1670620997, 0, 'OK'),
(6866, 'Chicken Classique/Chicken Classique/So''Master/Big Night/', 'Avec Frite/Avec Frite/Avec Frite/Avec Frite/', 'Sauce Barbecue/Sauce Curry/Sauce Algerienne/Sauce Algerienne/', 'Ice Tea/Oasis Tropical/Ice Tea/Oasis Tropical/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '10 Rue des DÃ©portÃ©s59800 Lille', '0769363905', '39.4', 'Especes', 'Livraison', '09/12/2022 21:32', 1670617962, 0, '40'),
(6867, 'Mythic MaX/Mythic BoSS/So''Mythic/So''Mythic/So''Mythic/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Samourai/Sauce Mayonnaise/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca Cherry/Coca Cherry/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'domitys le piano', '0603997760', '30.4', 'Especes', 'Livraison', '09/12/2022 21:37', 1670618258, 0, '50'),
(6864, 'Barbecue Bacon/Long Bacon/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/', 'Ice Tea/Perrier/', 'Sans Dessert/Sans Dessert/', '61 Rue Pline, Lille', '0611594953', '17.6', 'Carte Bancaire', 'Livraison', '09/12/2022 19:55', 1670612120, 0, 'OK'),
(6863, 'Crousty Cheese/Crousty Cheese/Nuggets/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Algerienne/Sauce Algerienne/Sans Sauce/', 'Ice Tea/Coca Cherry/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '23 rue de l''amiral courbet five', '0783585243', '20.2', 'Carte Bancaire', 'Livraison', '09/12/2022 19:45', 1670611557, 0, 'OK'),
(6860, 'So''Mythic Chicken/So''Mythic Chicken/Cheese Burger/Cheese Burger/Cheese Burger/Cheese Burger/Cheese Burger/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce PomFrite/Sauce PomFrite/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Coca/Sans Boisson/Sans Boisson/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '', '', '28.7', 'Especes', 'Emporter', '09/12/2022 03:36', 1670553396, 0, '30'),
(6859, 'Maxi Cheese/L''Original/Sans Burger/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Coca Cherry/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Tiramisu Kinder/', '', '0621159404', '20.6', 'Especes', 'Emporter', '09/12/2022 01:29', 1670545780, 0, 'OK'),
(6857, 'Mythic MaX/Tenders/Barbecue Bacon/So''Mythic Chicken/Wings/', 'Avec Frite/Sans Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Samourai/Sans Sauce/Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '10 Rue de Bolbec, 59700 Marcq-en-BarÅ“ul', '0745714049', '34.6', 'Especes', 'Livraison', '09/12/2022 01:00', 1670544017, 0, 'OK'),
(6855, 'Chicken Classique/Maxi Cheese/', 'Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '2 place rihour', '0650405167', '15.3', 'Especes', 'Livraison', '08/12/2022 23:35', 1670538918, 0, '20'),
(6856, 'Twist/', 'Avec Frite/', 'Sauce Ketchup/', 'Coca/', 'Sans Dessert/', '', '', '8.6', 'Especes', 'Emporter', '09/12/2022 00:15', 1670541340, 0, '10'),
(6854, 'Maxi Cheese/', 'Sans Frite/', 'Sans Sauce/', 'Sans Boisson/', 'Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '', '8.9', 'Especes', 'Livraison', '08/12/2022 22:35', 1670535321, 0, 'OK'),
(6853, 'Maxi Cheese/', 'Avec Frite/', 'Sauce Mayonnaise/', 'Coca/', 'Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '', '11', 'Especes', 'Livraison', '08/12/2022 22:32', 1670535159, 0, '20'),
(6852, 'Maxi Cheese/Maxi Cheese/Sans Burger/Big Night/', 'Avec Frite/Avec Frite/Sans Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sans Sauce/Sauce Mayonnaise/', 'Coca/Coca/Sans Boisson/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '0644867137', '34.4', 'Especes', 'Livraison', '08/12/2022 22:30', 1670535041, 0, '50'),
(6851, 'Double Cheese Burger/Big Night/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', 'kiabi fache', '0780605537', '18.1', 'Especes', 'Emporter', '08/12/2022 22:12', 1670533953, 3, 'OK'),
(6849, 'Barbecue Bacon/Long Bacon/', 'Avec Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/', 'Ice Tea/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '58 rue corneille  villneuv', '0766072387', '14.1', 'Especes', 'Livraison', '08/12/2022 21:42', 1670532153, 0, '50'),
(6848, 'Sans Burger/', 'Sans Frite/', 'Sans Sauce/', 'Sans Boisson/', 'Tiramisu Kinder/', '', '', '3.5', 'Especes', 'Emporter', '08/12/2022 21:27', 1670531265, 0, 'OK'),
(6847, 'So''Mixte/L''Arabika Poulet/', 'Avec Frite/Sans Frite/', 'Melange de sauce/Sans Sauce/', 'Coca 1.5l/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '', '31.8', 'Carte Bancaire', 'Emporter', '08/12/2022 20:19', 1670527169, 0, 'OK'),
(6846, 'Max Pepper/Max Pepper/Royal Bacon/Sans Burger/Sans Burger/Sans Burger/Wings/', 'Avec Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Biggy/Sauce Andalouse/Sauce Andalouse/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Fanta Citron/Coca/Coca Cherry/Sans Boisson/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Tiramisu Speculos Chocolat Blanc/Tiramisu Speculos Chocolat Blanc/Sans Dessert/Sans Dessert/', '5/5 rue de la seine lille sud', '0625254831', '40.9', 'Especes', 'Livraison', '08/12/2022 20:04', 1670526255, 0, '50'),
(6845, 'Crousty Cheese/Cheese Burger/Cheese Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Melange de sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Oasis Tropical/Sans Boisson/Sans Boisson/Oasis Tropical/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '98 rue piere le grand fives', '0605621310', '14.9', 'Especes', 'Livraison', '08/12/2022 19:27', 1670524050, 0, '50'),
(6843, 'So''Hot wings/', 'Avec Frite/', 'Sauce Algerienne/', 'Coca 1.5l/', 'Sans Dessert/', '110 Rue du Grand But Lomme, 59160 Lille', '0634564442', '24.4', 'Especes', 'Livraison', '08/12/2022 02:20', 1670462431, 0, '30'),
(6844, 'Crousty Cheese/Royal Bacon/', 'Avec Frite/Avec Frite/', 'Sauce Andalouse/Sauce Biggy/', 'Coca/Fanta Orange/', 'Sans Dessert/Sans Dessert/', '', '0745562863', '17.4', 'Especes', 'Emporter', '08/12/2022 02:34', 1670463267, 0, '20'),
(6842, 'Big Night/Big Night/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca Cherry/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Haagen Dazs/Haagen Dazs/', '24 Rue Adolphe Parent, 59350 Saint-AndrÃ©-lez-Lille', '0669488376', '29.4', 'Carte Bancaire', 'Livraison', '08/12/2022 02:14', 1670462057, 0, 'OK'),
(6841, 'Max Pepper/Double Cheese Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Hawai/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Tiramisu Kinder/', '80 boulvard de l''ouest rÃ©s mea', '0758859265', '16.6', 'Carte Bancaire', 'Livraison', '08/12/2022 01:17', 1670458669, 0, 'OK'),
(6840, 'Big Night/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Ice Tea/Sans Boisson/Sans Boisson/', 'Sans Dessert/Mars/Snickers/', '75 rue faidherbe mons', '0650607164', '16', 'Carte Bancaire', 'Livraison', '08/12/2022 01:07', 1670458044, 0, 'OK'),
(6839, 'So''Mythic/Nuggets/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Tiramisu Kinder/', '', '0650190320', '15.1', 'Especes', 'Emporter', '08/12/2022 01:03', 1670457807, 0, 'OK'),
(6838, 'Max Pepper/Tenders/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Oasis Tropical/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '', '', '13.8', 'Carte Bancaire', 'Emporter', '08/12/2022 00:56', 1670457393, 0, 'OK'),
(6837, 'Maxi Cheese/Long Bacon/Crousty Cheese/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca Cherry/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '141 rue jean baptiste defaux lezennes', '0668288727', '21', 'Especes', 'Livraison', '08/12/2022 00:53', 1670457200, 0, 'OK'),
(6836, 'Crousty Cheese/L''Original/Double Cheese Burger/Double Cheese Burger/', 'Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '46 rue du four a chaux lille sud', '0763941760', '19.4', 'Carte Bancaire', 'Livraison', '08/12/2022 00:22', 1670455366, 0, 'OK'),
(6835, 'Big Night/Big Night/', 'Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Mayonnaise/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '0780244754', '24.8', 'Especes', 'Livraison', '08/12/2022 00:17', 1670455047, 0, '50'),
(6834, 'Big Night/Sans Burger/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca Zero/Sans Boisson/', 'Sans Dessert/Tiramusu Speculos Caramel/', '32 rue delphin petit', '0681676223', '15.9', 'Especes', 'Livraison', '07/12/2022 20:56', 1670442970, 0, 'OK'),
(6833, 'Mythic BoSS/Crousty Cheese/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '0652131923', '12.8', 'Especes', 'Emporter', '07/12/2022 20:52', 1670442751, 0, 'OK'),
(6832, 'Big Night/Long Bacon/Sans Burger/So Kids/Chili Cheese Nuggets/Salade Chicken/', 'Avec Frite/Avec Frite/Sans Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sauce Algerienne/Sans Sauce/Sauce Ketchup/Sans Sauce/Sans Sauce/', 'Coca/Coca/Coca 1.5l/Capri-sun + Pom Potes/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '3 rue du calvaire fives', '0744530340', '41.4', 'Especes', 'Livraison', '07/12/2022 20:50', 1670442652, 0, '50'),
(6831, 'Big Night/Sans Burger/', 'Avec Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/', 'Fanta Orange/Sans Boisson/', 'Sans Dessert/Tiramisu Kinder/', '8 rue du thÃ©Ã¢tre de verdure hellemmes', '0658701047', '15.9', 'Carte Bancaire', 'Livraison', '07/12/2022 20:32', 1670441562, 0, 'OK'),
(6829, 'Wings/Crousty Cheese/', 'Avec Frite/Sans Frite/', 'Sauce Biggy/Sans Sauce/', '7up Mojito/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '', '13.9', 'Especes', 'Emporter', '07/12/2022 03:31', 1670380316, 1, 'OK'),
(6828, 'So''Mythic/So''Mythic/So''Mythic/Tenders/Double Cheese Burger/', 'Avec Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sauce Mayonnaise/Sans Sauce/Sans Sauce/', 'Coca/Coca/Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '', '0783121594', '31.8', 'Especes', 'Emporter', '07/12/2022 03:00', 1670378425, 1, 'OK'),
(6882, 'Chicken Classique/Long Bacon/', 'Avec Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '63 rue jean Jacque rousseau hellemmes', '0768756682', '13.7', 'Especes', 'Livraison', '11/12/2022 21:01', 1670788863, 0, 'OK'),
(6876, 'Mythic BoSS/Mythic BoSS/Mythic BoSS/Mythic BoSS/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sans Sauce/Sans Sauce/', 'Coca Cherry/Coca Cherry/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '21 rue des veteran', '0602067180', '25.4', 'Carte Bancaire', 'Livraison', '10/12/2022 19:26', 1670696808, 0, 'OK'),
(6861, 'Royal Bacon/Royal Bacon/Sans Burger/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Biggy/Sauce Biggy/Sans Sauce/', 'Fanta Citron/Fanta Citron/Sans Boisson/', 'Sans Dessert/Sans Dessert/Tiramisu Kinder/', '5 rue de la seine lille sud', '0625254831', '22.3', 'Especes', 'Livraison', '09/12/2022 18:21', 1670606465, 0, 'OK'),
(6858, 'So''Mythic/Sans Burger/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Tiramisu Kinder/', '', '', '10.9', 'Especes', 'Emporter', '09/12/2022 01:23', 1670545408, 0, 'OK'),
(6850, 'Barbecue Bacon/', 'Avec Frite/', 'Sauce Mayonnaise/', 'Sprite/', 'Sans Dessert/', '28', '', '9.4', 'Especes', 'Livraison', '08/12/2022 21:51', 1670532672, 0, 'OK'),
(6865, 'Long Bacon/Long Bacon/Max Pepper/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '', '', '15.8', 'Especes', 'Emporter', '09/12/2022 20:18', 1670613535, 0, 'OK'),
(6880, 'Double Cheese Burger/Tenders/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Barbecue/', 'Ice Tea/Coca/', 'Sans Dessert/Sans Dessert/', '29 rue eugene jacquet', '0610435687', '14.6', 'Especes', 'Livraison', '11/12/2022 18:45', 1670780719, 0, '20'),
(6862, 'Royal Bacon/So''Mythic Chicken/Crousty Cheese/So''Mythic/Nuggets/Sans Burger/', 'Avec Frite/Avec Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/', 'Melange de sauce/Melange de sauce/Melange de sauce/Melange de sauce/Sans Sauce/Sans Sauce/', 'Coca Cherry/Coca Cherry/Coca/Schweppes Agrum/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'high bar', '0786886330', '36.6', 'Carte Bancaire', 'Livraison', '09/12/2022 19:22', 1670610178, 0, 'OK'),
(6827, 'Maxi Cheese/Wings/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Tiramisu Kinder/', '13 rue saint bernard lille', '0610012818', '20.2', 'Especes', 'Livraison', '07/12/2022 02:07', 1670375239, 1, 'OK'),
(6830, 'L''Arabika Poulet/Chili Cheese Nuggets/So''Master/Nuggets/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sauce Algerienne/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Coca/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Tiramusu Speculos Caramel/Tiramusu Speculos Caramel/', '3 rue de la marbrerie', '0745432563', '32.8', 'Especes', 'Livraison', '07/12/2022 20:17', 1670440644, 0, '50'),
(6826, 'So''Master/Chili Cheese Nuggets/Sans Burger/Sans Burger/Sans Burger/L''Original/BM/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/Avec Frite/Sans Frite/', 'Sauce Samourai/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/Sauce Curry/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Sans Boisson/Sans Boisson/Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/Tiramisu Speculos Chocolat Blanc/Tiramisu Speculos Chocolat Blanc/Tiramisu Kinder/Sans Dessert/Sans Dessert/', '9 Rue Victor Hugo, 59113 Seclin', '0753175073', '38.6', 'Especes', 'Livraison', '07/12/2022 01:29', 1670372943, 1, 'OK'),
(6825, 'Big Night/Big Night/Big Night/Big Night/Sans Burger/', 'Avec Frite/Avec Frite/Avec Frite/Avec Frite/Sans Frite/', 'Melange de sauce/Melange de sauce/Melange de sauce/Melange de sauce/Sans Sauce/', 'Coca Cherry/Coca Cherry/Coca Cherry/Oasis Tropical/Coca 1.5l/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '5 impasse des rossier hellemmes', '0745587185', '53.1', 'Especes', 'Livraison', '07/12/2022 01:24', 1670372690, 1, 'OK'),
(6824, 'Crousty Cheese/Max Pepper/', 'Avec Frite/Avec Frite/', 'Sauce Algerienne/Sauce Algerienne/', 'Coca/Hawai/', 'Sans Dessert/Sans Dessert/', '', '0774920638', '17.4', 'Especes', 'Emporter', '07/12/2022 00:48', 1670370528, 1, 'OK'),
(6823, 'Big Night/Big Night/Big Night/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sauce Mayonnaise/', 'Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '', '37.2', 'Especes', 'Livraison', '07/12/2022 00:36', 1670369774, 1, '50'),
(6822, 'BM/', 'Avec Frite/', 'Sauce Algerienne/', 'Coca Zero/', 'Sans Dessert/', '', '', '7.4', 'Especes', 'Emporter', '07/12/2022 00:28', 1670369304, 1, '20'),
(6821, 'Chili Cheese Nuggets/', 'Sans Frite/', 'Sans Sauce/', 'Sans Boisson/', 'Sans Dessert/', '33 rue de la marbrerie hellemmes', '', '4.7', 'Especes', 'Livraison', '07/12/2022 00:26', 1670369207, 1, 'OK'),
(6820, 'So''Master/Sans Burger/So Kids/So''Fish/Nuggets/Sans Burger/', 'Avec Frite/Sans Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sauce Mayonnaise/Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Capri-sun + Pom Potes/Coca/Sans Boisson/Coca 1.5l/', 'Sans Dessert/Mars/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '3 rue de la marbrerie', '0745432563', '30.4', 'Especes', 'Livraison', '07/12/2022 00:25', 1670369149, 1, 'OK'),
(6819, 'Crousty Cheese/Crousty Cheese/Wings/Cheese Burger/Cheese Burger/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Melange de sauce/Melange de sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Coca/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '', '0603900452', '27.1', 'Carte Bancaire', 'Emporter', '07/12/2022 00:15', 1670368522, 1, 'OK'),
(6818, 'Big Night/Big Night/', 'Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '0777069804', '24.8', 'Especes', 'Livraison', '06/12/2022 23:44', 1670366665, 1, '50'),
(6817, 'Big Night/Big Night/Cheese Burger/Nuggets/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sans Sauce/Sans Sauce/', 'Coca/Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '161 Rue Jules Guesde59175 Templemars', '0604170501', '31.7', 'Especes', 'Livraison', '06/12/2022 23:39', 1670366345, 1, '35'),
(6816, 'Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Ketchup/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', '153 Rue Pasteur, 59139 Wattignies', '0749242416', '22', 'Especes', 'Livraison', '06/12/2022 22:46', 1670363216, 1, '50'),
(6815, 'Big Night/Mythic EaZy/Frite/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '', '', '21.4', 'Carte Bancaire', 'Emporter', '06/12/2022 21:19', 1670357981, 1, 'OK'),
(6814, 'Maxi Cheese/Maxi Cheese/Wings/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Algerienne/Sauce Mayonnaise/Sans Sauce/', 'Hawai/Tropico/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '108 rue jean zay', '07808296747', '27.7', 'Especes', 'Livraison', '06/12/2022 21:18', 1670357894, 1, '30'),
(6813, 'Big Night/Frite/', 'Avec Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/', 'Ice Tea/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '36 rue de pologne five', '0627677545', '15.4', 'Carte Bancaire', 'Livraison', '06/12/2022 19:46', 1670352391, 1, 'OK'),
(6812, 'Tenders/Tenders/Tenders/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '6 Rue Etienne Dolet, 59800 Lille', '0695927697', '17.7', 'Carte Bancaire', 'Livraison', '06/12/2022 19:45', 1670352303, 1, 'OK'),
(6811, 'Sans Burger/', 'Sans Frite/', 'Sans Sauce/', 'Coca 1.5l/', 'Sans Dessert/', 'ouss', '', '3.5', 'Especes', 'Emporter', '06/12/2022 19:43', 1670352206, 1, 'OK'),
(6810, 'So''Mythic/So''Mythic/Mozza Stick/Sans Burger/Sans Burger/Sans Burger/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Biggy/Sauce Mayonnaise/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Ice Tea/Coca/Sans Boisson/Sans Boisson/Eau/Eau/', 'Sans Dessert/Sans Dessert/Sans Dessert/Tiramusu Speculos Caramel/Sans Dessert/Sans Dessert/', '21 rue delemazure ', '0667431346', '26', 'Especes', 'Livraison', '06/12/2022 19:24', 1670351068, 1, '50'),
(6809, 'Maxi Cheese/Big Night/Wings/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce PomFrite/Sauce PomFrite/Sans Sauce/', 'Oasis Tropical/Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '101 rue roger salengro 59790', '0678019689', '29.1', 'Carte Bancaire', 'Livraison', '06/12/2022 01:15', 1670285733, 3, 'OK'),
(6808, 'Crousty Cheese/L''Original/Double Cheese Burger/Double Cheese Burger/', 'Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '46 rue du four a chaux lille sud', '0763941760', '19.4', 'Carte Bancaire', 'Livraison', '06/12/2022 00:34', 1670283277, 3, 'OK'),
(6807, 'Crousty Cheese/CrousL''Original/', 'Sans Frite/Avec Frite/', 'Sans Sauce/Melange de sauce/', 'Sans Boisson/Caprisun/', 'Sans Dessert/Milkshake vanille/', '46 rue du four a chaux lille sud', '0763941760', '9.8', 'Carte Bancaire', 'Emporter', '06/12/2022 00:33', 1670283218, 3, 'OK'),
(6805, 'Chicken Classique/Mythic MaX/', 'Avec Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/', 'Fanta Citron/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '4 Av. Mormal59800 Lille', '0617568164', '15.2', 'Carte Bancaire', 'Livraison', '06/12/2022 00:19', 1670282394, 3, 'OK'),
(6803, 'Sans Burger/', 'Sans Frite/', 'Sans Sauce/', 'Sans Boisson/', 'Tiramisu Oreo/', '', '', '3.5', 'Especes', 'Emporter', '06/12/2022 00:10', 1670281808, 3, '5'),
(6804, 'Maxi Cheese/Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Ketchup/Sauce Mayonnaise/', 'Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', 'route de l''aÃ©roport Lesquin (air de repos', '0602353273', '33', 'Especes', 'Livraison', '06/12/2022 00:15', 1670282140, 3, '50'),
(6802, 'L''Original/Chicken Classique/Wings/Max Pepper/Max Pepper/Sans Burger/Sans Burger/Sans Burger/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sauce Mayonnaise/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/Oasis Tropical/Sans Boisson/Coca Cherry/Coca Cherry/Oasis Tropical/Oasis Tropical/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '2 Rue de la RÃ©sistance, 59155 Faches-Thumesnil', '0650419799', '40.6', 'Especes', 'Livraison', '05/12/2022 23:48', 1670280506, 3, '50'),
(6801, 'Long Bacon/', 'Avec Frite/', 'Sauce Mayonnaise/', 'Coca/', 'Sans Dessert/', '', '', '8.2', 'Especes', 'Emporter', '05/12/2022 23:35', 1670279725, 3, 'OK'),
(6800, 'So''Mythic/So''Mythic/So''Mythic/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Biggy/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Coca 1.5l/Oasis 2l/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '23 rue paul kimpe hellemmes', '0778320226', '24.2', 'Especes', 'Livraison', '05/12/2022 22:44', 1670276694, 3, '30'),
(6806, 'Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce PomFrite/Sauce PomFrite/', 'Ice Tea/Ice Tea/', 'Sans Dessert/Sans Dessert/', '', '0783387348', '22', 'Carte Bancaire', 'Emporter', '06/12/2022 00:23', 1670282614, 3, 'OK'),
(6799, 'Chili Cheese Nuggets/Nuggets/Crousty Cheese/Sans Burger/Sans Burger/', 'Sans Frite/Sans Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Coca/Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Mars/', '3 rue de la marbrerie', '0745432563', '20.2', 'Especes', 'Livraison', '05/12/2022 22:32', 1670275945, 3, 'OK'),
(6797, 'Maxi Cheese/Maxi Cheese/Sans Burger/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Barbecue/Sauce Barbecue/Sans Sauce/', 'Coca/Coca/Coca 1.5l/', 'Sans Dessert/Sans Dessert/Sans Dessert/', 'kiabi fache', '0768631822', '25.5', 'Especes', 'Livraison', '05/12/2022 22:27', 1670275662, 3, '50'),
(6798, 'CBig Night/', 'Avec Frite Cheddar/', 'Sans Sauce/Sans Sauce/Sauce Algerienne/Sauce Epice/', 'Sans Boisson/Sans Boisson/Coca/Capri-sun + Pom Potes/', 'Sans Dessert/Sans Dessert/Sans Dessert/Milkshake bueno chocolat/', '3 rue de la marbrerie', '0745432563', '0', 'Especes', 'Emporter', '05/12/2022 22:30', 1670275828, 3, 'OK'),
(6796, 'Maxi Cheese/Wings/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '55 rue jules ferrey loos', '0780402339', '16.7', 'Especes', 'Emporter', '05/12/2022 22:18', 1670275111, 3, 'OK'),
(6794, 'Wings/Frite/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Schweppes Agrum/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '20 rue pierre legrand five (maison de la photographie)', '0786886330', '10.2', 'Especes', 'Emporter', '05/12/2022 22:10', 1670274606, 3, 'OK'),
(6795, 'Wings/Mythic EaZy/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Schweppes Agrum/Sans Boisson/Schweppes Agrum/Ice Tea Peche 1.5l/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '20 rue pierre legrand five (maison de la photographie)', '0786886330', '18.1', 'Especes', 'Livraison', '05/12/2022 22:11', 1670274691, 3, 'OK');
INSERT INTO `commandes` (`id`, `burger`, `frite`, `sauce`, `boisson`, `dessert`, `adresse`, `telephone`, `prix`, `paiement`, `origine`, `date`, `compteARebour`, `estArchiver`, `avantAppoint`) VALUES
(6792, 'Maxi Cheese/Maxi Cheese/', 'Avec Frite/Avec Frite/', 'Sauce Ketchup/Sauce Algerienne/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', 'kiabi fache', '0606447825', '22', 'Especes', 'Livraison', '05/12/2022 21:53', 1670273606, 3, '50'),
(6793, 'So''Mythic/Wings/Tenders/', 'Avec Frite/Sans Frite/Avec Frite/', 'Sauce Mayonnaise/Sans Sauce/Sauce Barbecue/', 'Coca/Sans Boisson/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '3 rue jean bart lille ', '0766067758', '22', 'Carte Bancaire', 'Livraison', '05/12/2022 22:08', 1670274506, 3, 'OK'),
(6791, 'Nuggets/', 'Avec Frite/', 'Sauce Mayonnaise/', 'Perrier/', 'Sans Dessert/', '', '', '7.9', 'Especes', 'Emporter', '05/12/2022 19:38', 1670265487, 3, '10'),
(6790, 'Crousty Cheese/', 'Sans Frite/', 'Sans Sauce/', 'Sans Boisson/', 'Sans Dessert/', '', '', '5.3', 'Carte Bancaire', 'Emporter', '05/12/2022 02:37', 1670204232, 3, 'OK'),
(6789, 'Double Cheese Burger/Maxi Cheese/Tenders/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sans Sauce/', 'Coca/Coca Zero/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', 'HÃ´tel Novotel Lille AÃ©roport, 55 Rte de Douai, 59810 Lesquin', '0768170702', '22.6', 'Especes', 'Livraison', '05/12/2022 02:24', 1670203496, 3, '30'),
(6788, 'So''Mythic/Sans Burger/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Coca Cherry/Sans Boisson/', 'Sans Dessert/Sans Dessert/Tiramusu Speculos Caramel/', '', '', '9.9', 'Especes', 'Emporter', '05/12/2022 02:17', 1670203065, 3, '50'),
(6787, 'Big Night/Tenders/Wings/', 'Avec Frite/Sans Frite/Sans Frite/', 'Melange de sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', 'l511 rue des seringats 59262 sainghin-en-mÃ©lantois', '0783459042', '24', 'Especes', 'Livraison', '05/12/2022 02:15', 1670202929, 3, 'OK'),
(6786, 'L''Original/Chicken Classique/Sans Burger/Sans Burger/Max Pepper/Double Cheese Burger/Sans Burger/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/Sans Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/Sauce Mayonnaise/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Coca Cherry/Coca Cherry/Oasis Tropical/Sans Boisson/Ice Tea/Ice Tea/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '2 Rue de la RÃ©sistance, 59155 Faches-Thumesnil', '0663909576', '32.2', 'Especes', 'Livraison', '05/12/2022 00:07', 1670195276, 3, '40'),
(6784, 'Tenders/Tenders/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Coca Zero/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '6 Rue Etienne Dolet, 59800 Lille', '0695927697', '13.3', 'Carte Bancaire', 'Livraison', '04/12/2022 23:23', 1670192607, 3, 'OK'),
(6785, 'Maxi Cheese/So''Master/Maxi Cheese/Maxi Cheese/Frite/Sans Burger/', 'Avec Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Mayonnaise/Sauce Ketchup/Sauce Ketchup/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Coca/Coca/Sans Boisson/Sans Boisson/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '153 Rue Pasteur, 59139 Wattignies', '0783489741', '44.4', 'Especes', 'Livraison', '04/12/2022 23:46', 1670194010, 3, '50'),
(6783, 'Mythic EaZy/So''Fish/', 'Avec Frite/Sans Frite/', 'Sauce Mayonnaise/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '', '0772419848', '10.7', 'Especes', 'Emporter', '04/12/2022 22:55', 1670190949, 3, '20'),
(6782, 'Max Pepper/Mythic BoSS/Cheese Burger/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Samourai/Sauce PomFrite/Sans Sauce/', 'Ice Tea/Coca Zero/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '51 rue des comices ', '0675962036', '19.6', 'Carte Bancaire', 'Livraison', '04/12/2022 22:54', 1670190850, 3, 'OK'),
(6780, 'Long Bacon/Max Pepper/Cheese Burger/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '', '0782181556', '13.8', 'Especes', 'Emporter', '04/12/2022 22:00', 1670187650, 3, 'OK'),
(6781, 'So''Mythic/So''Master/Frite/Frite/Big Night/Mythic EaZy/Sans Burger/Sans Burger/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/Sans Sauce/Sauce Algerienne/Sauce Algerienne/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Sans Boisson/Coca/Coca/Coca/Coca/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '1 rue comptesse de segur ,residence  jules romain ronchin ', '0637484771', '43.2', 'Ticket restaurant + especes', 'Livraison', '04/12/2022 22:23', 1670189037, 3, ''),
(6757, 'Maxi Cheese/Royal Bacon/Sans Burger/Tenders/Nuggets/Long Bacon/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/Avec Frite/Sans Frite/', 'Melange de sauce/Melange de sauce/Sans Sauce/Sans Sauce/Sauce Ketchup/Sans Sauce/', 'Coca/Coca Cherry/Sans Boisson/Sans Boisson/Schweppes Agrum/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', 'les pres', '0786886330', '38.9', 'Carte Bancaire', 'Livraison', '03/12/2022 19:45', 1670093110, 3, 'OK'),
(6758, 'Big Night/Maxi Cheese/Sans Burger/', 'Avec Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Coca Cherry/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Haagen Dazs/', '55 square du portugal', '0768594952', '24.8', 'Especes', 'Livraison', '03/12/2022 21:09', 1670098143, 3, 'OK'),
(6759, 'Crousty Cheese/Cheese Burger/', 'Avec Frite/Sans Frite/', 'Sauce PomFrite/Sans Sauce/', 'Coca Cherry/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '23 rue vaucanson lille five', '0784145332', '10.7', 'Carte Bancaire', 'Livraison', '03/12/2022 21:35', 1670099719, 3, 'OK'),
(6760, 'So''Maxi mixte/', 'Avec Frite/', 'Melange de sauce/', 'Ice Tea Peche 1.5l/', 'Sans Dessert/', '', '0651149465', '34.4', 'Carte Bancaire', 'Emporter', '03/12/2022 21:41', 1670100108, 3, 'OK'),
(6779, 'Crousty Cheese/Big Night/Chili Cheese Nuggets/Chili Cheese Nuggets/Sans Burger/Sans Burger/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sauce Algerienne/Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Coca/Coca/Sans Boisson/Sans Boisson/Coca 1.5l/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Tarte au Daim/', '33 rue de la marbrerie hellemmes', '0745432563', '36.8', 'Especes', 'Livraison', '04/12/2022 21:57', 1670187479, 3, '50'),
(6778, 'Maxi Cheese/Cheese Burger/Maxi Cheese/Cheese Burger/', 'Avec Frite/Sans Frite/Avec Frite/Sans Frite/', 'Sauce Samourai/Sans Sauce/Sauce Mayonnaise/Sans Sauce/', 'Oasis Pomme Cassis/Sans Boisson/Oasis Pomme Cassis/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '8 rue du 11 novembre 1918 mons', '0602332954', '27.4', 'Especes', 'Livraison', '04/12/2022 20:39', 1670182792, 3, 'OK'),
(6763, 'Maxi Cheese/Chili Cheese Nuggets/', 'Avec Frite/Sans Frite/', 'Sauce Algerienne/Sans Sauce/', 'Coca Zero/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '100 boulevard de l''ouest (rÃ©sidence belvedere)', '0765502918', '15.7', 'Especes', 'Livraison', '03/12/2022 23:23', 1670106238, 3, '20'),
(6764, 'CSo''Mythic/', 'Avec Frite/Avec Frite/', 'Sauce Algerienne/Epice/', 'Coca/Coca/', 'Sans Dessert/Sans Dessert/', '3 rue de la marbrerie', '0745432563', '0', 'Especes', 'Emporter', '03/12/2022 23:35', 1670106920, 3, 'OK'),
(6765, 'Cheese Burger/So''Mythic/Chili Cheese Nuggets/Chili Cheese Nuggets/', 'Avec Frite/Avec Frite/Sans Frite/Sans Frite/', 'Sauce Algerienne/Sauce Algerienne/Sans Sauce/Sans Sauce/', 'Coca/Coca/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '33 rue de la marbrerie hellemmes', '0745432563', '21.5', 'Especes', 'Livraison', '03/12/2022 23:37', 1670107025, 3, '50'),
(6766, 'Crousty Cheese/', 'Avec Frite/', 'Sauce Samourai/', 'Coca/', 'Sans Dessert/', '', '', '8', 'Carte Bancaire', 'Emporter', '03/12/2022 23:54', 1670108085, 3, 'OK'),
(6767, 'Maxi Cheese/Maxi Cheese/Tenders/', 'Avec Frite/Avec Frite/Sans Frite/', 'Sauce Ketchup/Sauce Mayonnaise/Sans Sauce/', 'Coca/Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '52 Rue KlÃ©ber59155 Faches-Thumesnil', '0749759928', '27.9', 'Especes', 'Livraison', '04/12/2022 00:54', 1670111678, 3, 'OK'),
(6768, 'Crousty Cheese/', 'Avec Frite/', 'Sauce Algerienne/', 'Hawai/', 'Sans Dessert/', '', '', '8', 'Carte Bancaire', 'Emporter', '04/12/2022 00:57', 1670111856, 3, 'OK'),
(6769, 'Maxi Cheese/Crousty Cheese/', 'Avec Frite/Sans Frite/', 'Sauce Ketchup/Sans Sauce/', 'Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/', '105 rue anatole france ronchin', '0606460738', '16.3', 'Especes', 'Livraison', '04/12/2022 02:12', 1670116348, 3, '50'),
(6770, 'Maxi Cheese/', 'Avec Frite/', 'Sauce Andalouse/', 'Coca Cherry/', 'Sans Dessert/', '', '', '11', 'Especes', 'Emporter', '04/12/2022 02:46', 1670118373, 3, 'OK'),
(6771, 'Crousty Cheese/Crousty Cheese/Sans Burger/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '', '0682812412', '12.1', 'Especes', 'Emporter', '04/12/2022 02:48', 1670118481, 3, '20'),
(6773, 'Wings/', 'Sans Frite/', 'Sans Sauce/', 'Sans Boisson/', 'Sans Dessert/', '', '', '5.7', 'Especes', 'Emporter', '04/12/2022 03:27', 1670120867, 3, 'OK'),
(6774, 'Sans Burger/Maxi Cheese/Maxi Cheese/', 'Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '', '', '17.8', 'Especes', 'Emporter', '04/12/2022 03:30', 1670121043, 3, 'OK'),
(6777, 'Royal Bacon/So''Mythic Chicken/BM/', 'Avec Frite/Avec Frite/Avec Frite/', 'Sauce Mayonnaise/Sauce Mayonnaise/Sauce Ketchup/', 'Coca/Sprite/Coca/', 'Sans Dessert/Sans Dessert/Sans Dessert/', '', '0677445736', '24.4', 'Carte Bancaire', 'Emporter', '04/12/2022 19:27', 1670178455, 3, 'OK'),
(6775, 'Maxi Cheese/Maxi Cheese/So''Mythic/So''Mythic/', 'Sans Frite/Sans Frite/Sans Frite/Sans Frite/', 'Sans Sauce/Sans Sauce/Sans Sauce/Sans Sauce/', 'Sans Boisson/Sans Boisson/Sans Boisson/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '162 rue solferino bar l''irlandais', '0698789797', '27.6', 'Especes', 'Livraison', '04/12/2022 03:46', 1670121967, 3, 'OK'),
(6776, 'BM/Cheese Burger/Cheese Burger/Cheese Burger/Tenders/Chicken Classique/Royal Bacon/So''Mythic/', 'Avec Frite/Sans Frite/Sans Frite/Sans Frite/Avec Frite/Sans Frite/Avec Frite/Sans Frite/', 'Sauce PomFrite/Sans Sauce/Sans Sauce/Sans Sauce/Sauce Ketchup/Sans Sauce/Sauce Ketchup/Sans Sauce/', 'Coca/Sans Boisson/Sans Boisson/Sans Boisson/Coca/Sans Boisson/Coca/Sans Boisson/', 'Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/Sans Dessert/', '', '0785836152', '45.1', 'Especes', 'Emporter', '04/12/2022 03:49', 1670122177, 3, 'OK');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
