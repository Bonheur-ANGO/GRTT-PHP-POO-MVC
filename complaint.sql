-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 10:46 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complaint`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `administrator_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `administrator_name`, `password`, `role`) VALUES
(1, 'root', 'root', 1),
(2, 'Teddy', '1515', 2),
(4, 'Bernard', 'bernard', 2),
(6, 'Thomas', '1234', 2),
(15, 'Joel', 'joel', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id_role` int(11) NOT NULL,
  `name_role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id_role`, `name_role`) VALUES
(1, 'superAdministrateur'),
(2, 'Administrateur');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id_complaint` int(11) NOT NULL,
  `message` text NOT NULL,
  `type` int(11) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `date_complaint` datetime NOT NULL,
  `state` int(11) DEFAULT '1',
  `customer_type` int(11) DEFAULT '1',
  `contact_concerned` int(8) NOT NULL,
  `number_concerned` varchar(255) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `user_has_complaint` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id_complaint`, `message`, `type`, `id_customer`, `date_complaint`, `state`, `customer_type`, `contact_concerned`, `number_concerned`, `mail`, `user_has_complaint`) VALUES
(14, 'Salut,\r\n\r\nLe query string est toujours laiss?? de c??t?? lors de la r????criture. Il faut le traiter s??par??ment.\r\n\r\nMais si tu veux simplement ajouter customerID=18 ?? la fin de ton URL r????crite, il te suffit d\'ajouter le flag QSA (pour Query String Append)\r\n\r\nTa r??gle devient donc:j\'ai un petit soucis sur une application. J\'ai un site qui est compl??tement rewrit?? afin de g??rer le multilingue.\r\n\r\nVoil?? le format des adresses:\r\n\r\nmondomaine.net/en/admin/prospectDelete.php?customerID=18\r\n\r\net la ligne correspondant au rewrite', 3, 6, '2020-06-27 17:21:00', 2, 1, 58965425, '25568478', 'angomillenium@gmail.com', 'Bobo'),
(15, 'Si la cha??ne en entr??e pass??e ?? cette fonction et le document final partagent le m??me jeu de caract??res, cette fonction est suffisante pour pr??parer l\'entr??e pour une inclusion dans la plupart des contextes d\'un document HTML. Si cependant, l\'entr??e peut pr??senter des caract??res qui ne sont pas cod??s dans le jeu de caract??res du document final, et que vous souhaitez ??pargner ces caract??res (comme des num??riques ou des entit??s nomm??s), cette fonction et la fonction htmlentities() (qui n\'encodes que les sous-cha??nes qui ont des entit??s nomm??s ??quivalentes) ne sont pas suffisantes. Vous devez utiliser la fonction mb_encode_numericentity() ?? la place.', 2, 10, '2020-06-28 15:02:00', 2, 1, 563958741, '25568478', 'angomillenium@gmail.com', 'Mani'),
(16, 'Le <input type = \"email\"> d??finit un champ pour une adresse e-mail.\r\n\r\nLa valeur entr??e est automatiquement valid??e pour garantir qu\'il s\'agit d\'une adresse e-mail correctement format??e.\r\n\r\nPour d??finir un champ de messagerie qui autorise plusieurs adresses de messagerie, ajoutez l\'attribut \"multiple\".\r\n\r\nAstuce: ajoutez toujours la balise <label> pour les meilleures pratiques d\'accessibilit??! ', 2, 12, '2020-06-28 15:32:26', 2, 1, 12354869, '25568478', 'massom@gmail.com', 'Massom'),
(17, 'Si certains sont des entrepreneurs n??s qui r??vent de libert?? depuis leur plus jeune ??ge, d???autres font la rencontre de l???entreprenariat presque par hasard. John Codeur est de ceux-l??. Jeune et passionn?? d???informatique, il d??cide de se lancer dans des ??tudes d???ing??nieur et se destine ainsi ?? une confortable vie de salari??. Il obtient son dipl??me haut la main ; mais h??las, un ??l??ment impr??vu va se dresser entre lui et ses projets : la mauvaise conjoncture. En effet, il arrive sur le march?? du travail ?? l?????poque o?? le secteur est satur??. Devant la multiplicit?? des candidats, les recruteurs se montrent exigeants et ils ferment les postes aux jeunes d??pourvus d???exp??rience.', 2, 6, '2020-06-29 14:52:39', 2, 1, 25689754, '12356987', 'khali@gmail.com', 'Khali'),
(18, 'Maintenant, essayez de changer la valeur ?? l\'int??rieur de l\'attribut pattern suivant certains exemples vus plus haut et regardez comment les valeurs entr??es en sont affect??es pour rester valides. ??crivez vos propres textes et voyez comment vous vous en sortez ! Restez dans le domaine des fruits dans la mesure du possible, afin que vos exemples aient du sens !', 2, 16, '2020-07-02 19:15:22', 2, 1, 58677242, '58658476', 'nff', 'Kassi'),
(20, 'Optional. Specifies an additional parameter to the sendmail program (the one defined in the sendmail_path configuration setting). (i.e. this can be used to set the envelope sender address when using sendmail with the -f sendmail option)', 3, 16, '2020-07-03 18:51:30', 2, 1, 52365845, '12356987', 'angomillenium@gmail.com', 'Bobo'),
(22, 'Pour pr??senter mon exp??rience de stage au sein de la soci??t?? Spirula, il appara??t pertinent de pr??senter ?? titre pr??alable l???environnement ??conomique du stage, ?? savoir le secteur de l???agroalimentaire (Chapitre I), puis d???envisager le cadre du stage : la culture d???entreprise dans la soci??t?? Spirula, comme d??cisive dans la prise de d??cision (Chapitre II). Enfin, j???aborderai les diff??rentes missions et t??ches que j???ai pu effectuer au sein du service marketing, et les nombreux apports que j???ai pu en tirer (Chapitre III).', 2, 12, '2020-07-11 01:00:39', 2, 1, 45869785, '56985758', 'theo@gmail.com', 'Th??o'),
(23, 'Bonjour j\'ai un probl??me avec mon t??l??phone fixe la ligne a ??t?? coup?? depuis deix jours. Comment puis je faire?', 2, 17, '2020-07-13 19:58:35', 1, 1, 25469875, '58658476', 'angomillenium@gmail.com', 'Bobo'),
(24, 'Bonjour nous sommes l\'entreprise Cubes IT, depuis 5 jours nous n\'avons plus de connexion internet', 3, 13, '2020-07-13 20:01:50', 2, 2, 25469875, '54789658', 'angomillenium@gmail.com', 'Mounir'),
(25, 'Bonjour je suis en difficult?? avec ma ligne ADSL, depuis plus de 4 jours je nai pas de connexion internet, une aide pour moi svp', 3, 6, '2020-07-13 20:04:52', 1, 1, 45689574, '1524cdj5', 'angomillenium@gmail.com', 'Makil'),
(26, 'Bonjour je n\'ai plus de connexion sur mon t??l??phone', 3, 19, '2020-07-21 10:49:27', 2, 1, 25469875, '54869761', 'angomillenium@gmail.com', 'Bilel'),
(27, 'Bonjour ??a fait d??j?? plus de 4 jours que je n\'ai plus de connexion internet', 4, 20, '2020-07-21 10:55:22', 2, 1, 12546987, '56985475', 'hayet@gmail.com', 'Hayet'),
(28, 'luyfvkfugliyflufg??ugm', 4, 21, '2020-08-24 14:49:18', 1, 1, 5415268, '54869574', 'angomillenium@gmail.com', 'Evelyne'),
(29, 'Bonjour, je n\'ai pas de connexion depuis 6 jours. Quelle incomp??tence!!!!', 3, 22, '2020-11-20 16:09:16', 2, 1, 2546847, '24212451lk', 'macathelin@esaip.org', 'Jaques');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `idtype` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint_type`
--

INSERT INTO `complaint_type` (`idtype`, `name`) VALUES
(1, 'T??l??phonie Fixe'),
(2, 'T??l??phonie Mobile'),
(3, 'Internet, ADSL, 3G'),
(4, 'Internet 4G');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(70) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `mail`, `password`, `city`) VALUES
(1, 'Bobo', '', '1234', 'NABEUL'),
(2, 'charles', '', '1111', 'libreville'),
(3, 'joel la pute', '', '2222', 'nabeul'),
(5, 'Marie Ange', '', '$2y$10$vbZxCddqtLZdMnQifJwAW.iz.l1vKjTuN/LDHWQeOjf.DAith4Fta', 'Libreville'),
(6, 'anderson', '', '$2y$10$dpQnrCct5/5kfWH0wRKDmOFoxKPrCXif7.nVknePMD8/I.2elzNqu', 'Nabeul'),
(7, 'Luce', '', '1234', 'Nabeul'),
(8, 'Ahlem', '', '$2y$10$VhJaXMjqxAboJI7mjuJojeiDJnCKpzmwd.3aWVFpOLuCr0CEm/BD.', 'NABEUL'),
(9, 'Mounir', '', '$2y$10$HDrGVcG0RUK/B28G4h2AvOTReKK.yhHrBwYhL2CRMDXvQ/aT8kmXi', 'Arous'),
(10, 'Thomas', '', '$2y$10$WTc/8fke64L0mneXAQdrDuwcNxn2QZYyCAPuPszMBPpXvLmZzGtcC', 'Nabeul'),
(11, 'Ange', 'ange@hotmail.com', '$2y$10$DkWEXLck0U/IXL9aZHvzxuRm.zRt6TCVpD.L3mfuelIZTqscM2cAG', 'Bahamas'),
(12, 'Michel', 'michel@hotmail.com', '$2y$10$jSkmwHWqo.Fy.bRHUz3Ld.K/42429I7pldfbm1k/uFASKEj2KW3ii', 'Monastir'),
(13, 'Sophie', 'sophie@gmail.com', '$2y$10$FKNh.F3GLLplph0lAS83/.a2ujzRc9AkODEdI2l9QrypONwgJ/dIq', 'Nabeul'),
(16, 'Kassi', 'angomillenium@gmail.com', '$2y$10$TQNjYtKkIBt8RLUVwpFKnuR34LLnU/VAAXdkgmnFPV9Lcu0mq0osS', 'Libreville'),
(17, 'Pakir', 'angomillenium@gmail.com', '$2y$10$0JoJSV7pcBOLpMVLJBYhaO3pMTakwrlalO1m4Jf0xBbSfMxCbi8D2', 'Monastir'),
(18, 'Arly', 'angomillenium@gmail.com', '$2y$10$cAuH4gelIxMAqvI7TEFGtuFRTpjDJssiPSO/UFVzcsgIegs.CjTcK', 'Sousse'),
(19, 'Bilel', 'angomillenium@gmail.com', '$2y$10$mSlTATzqsKq4vhdlfGWIautYk8gqCTnO9X8DG3ZDFmPZlNkoz2hdi', 'NABEUL'),
(20, 'Hayet', 'hayet@gmail.com', '$2y$10$Kxumz.bb1Z3qP0zVyEAucewxPvbo.Sma6MrQptLT.yydLjOiEITIW', 'Nabeul'),
(21, 'Amge', 'angomillenium@gmail.com', '$2y$10$B1LcHBhW2Hzw5TV0O9epcezJG9wgKVb07jqOxS4WSL682X4sZqVvG', 'Nabeul'),
(22, 'Jaques', 'macathelin@esaip.org', '$2y$10$.3/SaDCO7aovtw4lNlJ2BORn8M.iQ/pbADeg6s/C2AxclhNsrz7bG', 'Libreville');

-- --------------------------------------------------------

--
-- Table structure for table `customer_type`
--

CREATE TABLE `customer_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_type`
--

INSERT INTO `customer_type` (`id`, `name`) VALUES
(1, 'Particulier'),
(2, 'Entreprise');

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `message_response` longtext,
  `id_complaint` int(11) DEFAULT NULL,
  `date_response` datetime DEFAULT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`message_response`, `id_complaint`, `date_response`, `num`) VALUES
(' Votre r??clamation a bien ??t?? trait?? par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 14, '2020-06-29 14:03:25', 1),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 17, '2020-06-29 14:56:38', 2),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 18, '2020-07-03 18:21:23', 4),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 15, '2020-07-03 18:22:55', 5),
('Nous avons bien traiter', 20, '2020-07-03 19:38:44', 6),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 16, '2020-07-04 13:11:12', 7),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 24, '2020-07-13 20:05:10', 9),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 22, '2020-07-13 20:05:24', 10),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 27, '2020-07-24 19:25:54', 11),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 29, '2020-11-20 16:14:34', 12),
(' Votre r??clamation a bien ??t?? trait??e par nos agents, nous vous demandons de faire quelques v??rifications pour vous en assurez. Nous vous remercions...   Equipe TT... ', 26, '2021-02-19 22:20:11', 13);

-- --------------------------------------------------------

--
-- Table structure for table `state_complaint`
--

CREATE TABLE `state_complaint` (
  `id` int(11) NOT NULL,
  `name_state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_complaint`
--

INSERT INTO `state_complaint` (`id`, `name_state`) VALUES
(1, 'non_trait??e'),
(2, 'trait??e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id_complaint`),
  ADD KEY `type` (`type`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `state` (`state`),
  ADD KEY `customer_type` (`customer_type`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`idtype`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_type`
--
ALTER TABLE `customer_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`num`),
  ADD KEY `id_complaint` (`id_complaint`);

--
-- Indexes for table `state_complaint`
--
ALTER TABLE `state_complaint`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id_complaint` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `idtype` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `customer_type`
--
ALTER TABLE `customer_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `state_complaint`
--
ALTER TABLE `state_complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`role`) REFERENCES `admin_roles` (`id_role`);

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`type`) REFERENCES `complaint_type` (`idtype`),
  ADD CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `complaint_ibfk_3` FOREIGN KEY (`state`) REFERENCES `state_complaint` (`id`),
  ADD CONSTRAINT `complaint_ibfk_4` FOREIGN KEY (`customer_type`) REFERENCES `customer_type` (`id`);

--
-- Constraints for table `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `response_ibfk_1` FOREIGN KEY (`id_complaint`) REFERENCES `complaint` (`id_complaint`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
