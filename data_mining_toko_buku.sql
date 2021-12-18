-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2021 at 09:26 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mining_toko_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` varchar(5) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `hrs_writing_per_day` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `birthday`, `country`, `hrs_writing_per_day`) VALUES
('AH957', 'Arturo', 'Hijuelos', '1983-11-09', 'United Kingdom', 8),
('AI923', 'Anastasia', 'Inez', '1981-03-30', 'New Zealand', 11),
('AM329', 'Arthur', 'McCrumb', '1983-01-13', 'New Zealand', 3),
('AS443', 'Abraham', 'Stackhouse', '1993-03-01', 'Norway', 6),
('AW980', 'Amelia', 'Wangerin, Jr.', '1975-03-26', 'New Zealand', 16),
('BH149', 'Bernard', 'Hopf', '1987-01-27', 'United States', 1),
('BL857', 'Bravig', 'Lewisohn', '1990-01-21', 'United States', 11),
('BM856', 'Burton', 'Malamud', '1993-09-18', 'Brazil', 6),
('BT132', 'Bianca', 'Thompson', '1971-01-28', 'United States', 5),
('CF829', 'Charles', 'Fenimore', '1995-08-18', 'Norway', 7),
('CS190', 'Carolyn', 'Segal', '1977-03-24', 'United States', 7),
('CW626', 'Clifford', 'Wolitzer', '1976-12-01', 'United Kingdom', 8),
('DB605', 'David', 'Beam', '1979-01-26', 'United States', 5.13),
('DF413', 'Darryl', 'Fleischman', '1999-02-07', 'Germany', 16),
('EH487', 'Elizabeth', 'Herbach', '1972-07-22', 'New Zealand', 0),
('EK605', 'Elmer', 'Komroff', '1982-09-11', 'Norway', 6),
('GG800', 'Gloria', 'Green', '1995-04-19', 'Hong Kong', 8),
('GH671', 'Grace', 'Harrison', '1975-01-08', 'United States', 6),
('HB302', 'Hillary', 'Barnhardt', '1975-06-07', 'New Zealand', 4),
('HM751', 'Hamlin', 'Myrer', '1997-03-29', 'Brazil', 9),
('JH502', 'Jill', 'Hergesheimer', '1998-08-15', 'Canada', 8),
('JK592', 'Jonathan', 'Kotzwinkle', '1992-04-03', 'Germany', 6),
('JS525', 'John W.', 'Spanogle', '1974-02-10', 'United Kingdom', 10),
('KD840', 'Kenneth', 'Douglas', '1995-08-24', 'South Africa', 3),
('KE397', 'Kris', 'Elegant', '1992-10-26', 'Hong Kong', 5),
('KY296', 'Kathy', 'Yglesias', '1995-09-03', 'Brazil', 8),
('LD375', 'Lynne', 'Danticat', '1996-01-19', 'New Zealand', 8),
('LK915', 'Lori', 'Kaan', '2000-08-27', 'China', 6),
('LL585', 'Langston', 'Lippman', '1999-09-02', 'New Zealand', 0),
('LN356', 'Leonard', 'Nabokov', '1980-03-29', 'United States', 1),
('MW974', 'Malin', 'Wolff', '2000-08-31', 'Hong Kong', 6),
('OL640', 'Oliver', 'Lowry', '1991-04-29', 'Netherlands', 4),
('PA878', 'Philip', 'Antrim', '1994-08-22', 'Netherlands', 7),
('PB147', 'Phoebe', 'Brown', '1997-03-21', 'Hong Kong', 13),
('PH273', 'Patricia', 'Hazzard', '1984-04-27', 'Singapore', 5),
('RL217', 'R.M.', 'Larner', '1973-01-26', 'China', 9),
('RM781', 'Robert', 'Milofsky', '1981-11-12', 'United States', 10),
('RP438', 'Robert', 'Plimpton', '1974-02-11', 'Canada', 13),
('UK129', 'Ursula', 'Karénine', '1979-10-25', 'United Kingdom', 9),
('WB149', 'Wendell', 'Barton', '1988-01-25', 'United States', 2),
('WH901', 'Ward', 'Haigh', '1973-10-07', 'Brazil', 7);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `name`, `year`) VALUES
(1, 'Post Alley', 'Agatha Award', 2006),
(2, 'Alanna Saves the Day', 'Caldecott Medal', 2013),
(3, 'Portmeirion', 'Hugo Award', 2015),
(4, 'Rystwyth', 'Hugo Award', 2020),
(5, 'The Mallemaroking', 'Hugo Award', 2006),
(6, 'No More Lightning', 'Man Booker', 2018),
(7, 'Nothing But Capers', 'National Book Award', 2006),
(8, 'Cimornul', 'National Book Award', 2016),
(9, 'The Spark and The Ashes', 'National Book Award', 2020),
(10, 'The Mallemaroking', 'Nebula Award', 2006),
(11, 'Heliotrope Pajamas', 'Newberry Medal', 2009),
(12, 'the life and times of an utterly inconsequential person', 'PEN/Faulkner Award', 2019),
(13, 'Inconvenient Confessions: a memoir', 'Pulitzer', 2017),
(14, 'We\'re Sisters and We Kinda Like Each Other', 'Pulitzer', 2010),
(15, 'Hashtag QuokkaSelfie', 'Pulitzer', 2006),
(16, 'Saint Esme', 'RITA Award', 2016),
(17, 'Ballinby Boys', 'World Fantasy Award', 2007),
(18, '(im)Mortality', 'Young Reader\'s Choice Award', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` varchar(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`) VALUES
('AD222', 'Alanna Saves the Day', 'BH149'),
('AK974', 'Adventures of Kaya', 'WH901'),
('AM124', 'A Horrible Human with the Habits of a Monster', 'KD840'),
('AY135', 'And I Said Yes', 'EK605'),
('BB194', 'Ballinby Boys', 'AM329'),
('BC244', 'Banana Slug and the Lost Cow', 'HB302'),
('BF374', 'Banana Slug and Xyr Friends', 'HB302'),
('BF889', 'Banana Slug and the Glass Half Full', 'GG800'),
('BR858', 'Banana Slug and the Mossy Rock', 'MW974'),
('BS284', 'Burnished Silver', 'LD375'),
('CC830', 'Cimornul', 'JH502'),
('CH391', 'Can I Be Honest?', 'CF829'),
('CP573', 'Concerning Prophecy', 'GH671'),
('DE571', 'Don\'t Check your Ego', 'RL217'),
('DG384', 'The Deep Grey', 'RM781'),
('DR914', 'Dust on the Rim', 'KY296'),
('DY800', 'Did You Hear?', 'LD375'),
('HP265', 'Heliotrope Pajamas', 'MW974'),
('HS107', 'Hashtag QuokkaSelfie', 'LL585'),
('IA439', 'Interrobangs for All', 'EK605'),
('IC739', 'Inconvenient Confessions: a memoir', 'OL640'),
('IG460', 'It\'s Never Just a Glass', 'LN356'),
('KA663', 'Kalakalal Avenue', 'EK605'),
('LB510', 'Lace and Brandy', 'LD375'),
('LS176', 'Land Water Sky Space', 'EH487'),
('MM424', '(im)Mortality', 'CW626'),
('MW621', 'Muddy Waters', 'LD375'),
('NB483', 'Not to Gossip, But', 'GG800'),
('NC652', 'Nothing But Capers', 'AS443'),
('NL209', 'No More Lightning', 'CF829'),
('NP937', 'Natural Pamplemousse', 'PB147'),
('NR695', '9803 North Millworks Road', 'CS190'),
('PA169', 'Post Alley', 'BM856'),
('PP866', 'Portmeirion', 'BT132'),
('QQ737', 'Quiddity and Quoddity', 'JH502'),
('RR774', 'Rystwyth', 'BT132'),
('SE355', 'Saint Esme', 'LD375'),
('SS361', 'Some Eggs or Something?', 'LK915'),
('SS693', 'Say it with Snap!', 'JS525'),
('ST303', 'Soft, Pliable Truth', 'RP438'),
('ST862', 'She Also Tottered', 'RP438'),
('TA182', 'The Spark and The Ashes', 'UK129'),
('TC188', 'Thatchwork Cottage', 'BM856'),
('TC401', 'Tales of the Compass', 'KY296'),
('TH143', 'The Elephant House', 'JS525'),
('TH296', 'The Winchcombe Railway Museum Heist', 'CS190'),
('TH556', 'The Startling End of Mr. Hidhoo', 'JK592'),
('TI225', 'The Thing Is', 'GG800'),
('TM925', 'The Mallemaroking', 'BT132'),
('TO369', 'The Scent of Oranges', 'LD375'),
('TP887', 'the life and times of an utterly inconsequential person', 'DB605'),
('TS869', 'The Seawitch Sings', 'LD375'),
('TT359', 'Turn Left Til You Get There', 'KE397'),
('TT773', 'The Triscanipt', 'UK129'),
('WG715', 'Whither Thou Goest', 'LD375'),
('WK456', 'Who Did You Think You Were Kidding?', 'PA878'),
('WO506', 'We\'re Sisters and We Kinda Like Each Other', 'PH273'),
('ZT703', 'Zero over Twelve', 'BM856');

-- --------------------------------------------------------

--
-- Table structure for table `edition`
--

CREATE TABLE `edition` (
  `id` int(11) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `book_id` varchar(5) DEFAULT NULL,
  `format` varchar(255) NOT NULL,
  `pub_id` varchar(5) DEFAULT NULL,
  `publication_date` date NOT NULL,
  `pages` int(11) NOT NULL,
  `print_size` varchar(255) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edition`
--

INSERT INTO `edition` (`id`, `isbn`, `book_id`, `format`, `pub_id`, `publication_date`, `pages`, `print_size`, `price`) VALUES
(1, '989-28-79-70597-8', 'TT359', 'Hardcover', 'ESP', '2007-06-02', 277, '15', 27.99),
(2, '989-28-654-6930-3', 'NP937', 'Hardcover', 'PP', '2007-08-18', 394, '6', 30.99),
(3, '989-28-79-52883-6', 'PA169', 'Hardcover', 'PP', '2007-09-08', 384, '10', 27.99),
(4, '989-28-79-43574-5', 'TM925', 'Graphic', 'ESP', '2007-09-15', 187, '8', 23.99),
(5, '989-28-654-5794-2', 'HS107', 'Hardcover', 'PP', '2007-09-29', 640, '3', 26.99),
(6, '989-28-79-44730-4', 'DR914', 'Mass market paperback', 'ESP', '2008-01-05', 575, '4', 8.99),
(7, '989-28-654-5771-3', 'HS107', 'Trade paperback', 'PP', '2008-01-12', 631, '5', 15.99),
(8, '989-28-79-04510-4', 'TT359', 'Mass market paperback', 'ESP', '2008-02-16', 264, '25', 8.99),
(9, '989-28-79-18127-7', 'AY135', 'Hardcover', 'ESP', '2008-04-24', 704, '15', 27.99),
(10, '989-28-79-68089-3', 'BB194', 'Hardcover', 'ESP', '2008-05-18', 401, '10', 21.5),
(11, '989-28-79-22871-2', 'TI225', 'Mass market paperback', 'ESP', '2008-07-13', 452, '15', 8.99),
(12, '989-28-79-01991-4', 'PA169', 'Trade paperback', 'PP', '2008-09-07', 356, '16', 12.5),
(13, '989-28-654-0047-4', 'NP937', 'Trade paperback', 'PP', '2009-04-18', 371, '6', 15.99),
(14, '989-28-79-67891-3', 'SS361', 'Hardcover', 'ESP', '2009-07-25', 105, '14', 27.99),
(15, '989-28-654-2620-7', 'NC652', 'Hardcover', 'PP', '2009-09-12', 390, '4', 32.99),
(16, '989-28-3705-054-6', 'HP265', 'Paperback', 'CHP', '2010-03-06', 28, '18', 7.99),
(17, '989-28-79-45675-7', 'SS361', 'Trade paperback', 'ESP', '2010-07-03', 105, '20', 12.5),
(18, '989-28-79-82749-6', 'NR695', 'Hardcover', 'ESP', '2010-07-10', 384, '5', 22.99),
(19, '989-28-79-30536-9', 'NB483', 'Mass market paperback', 'ESP', '2010-07-26', 311, '22', 8.99),
(20, '989-28-229-1404-4', 'TS869', 'Mass market paperback', 'SSC', '2010-12-11', 381, '11', 9.5),
(21, '989-28-229-7592-2', 'MW621', 'Mass market paperback', 'SSC', '2011-03-05', 362, '13', 9.5),
(22, '989-28-3705-222-9', 'AK974', 'Trade paperback', 'CHP', '2011-07-23', 256, '35', 11.99),
(23, '989-28-79-69807-2', 'NR695', 'Mass market paperback', 'ESP', '2011-09-24', 414, '12', 8.99),
(24, '989-28-79-42728-3', 'IA439', 'Hardcover', 'ESP', '2011-11-05', 493, '20', 27.99),
(25, '989-28-654-7965-4', 'WO506', 'Hardcover', 'PP', '2011-12-17', 288, '3', 29.99),
(26, '989-28-79-87459-9', 'TH556', 'Graphic', 'ESP', '2011-12-21', 88, '3', 23.99),
(27, '989-28-229-6632-6', 'WG715', 'Mass market paperback', 'SSC', '2012-02-14', 423, '16', 9.5),
(28, '989-28-79-32105-5', 'DY800', 'Mass market paperback', 'ESP', '2012-02-25', 390, '29', 8.99),
(29, '989-28-79-71565-6', 'TM925', 'Hardcover', 'ESP', '2012-02-25', 819, '25', 21.5),
(30, '989-28-79-43841-8', 'QQ737', 'Hardcover', 'ESP', '2012-04-01', 373, '3', 18.5),
(31, '989-28-79-61125-5', 'IA439', 'Trade paperback', 'ESP', '2012-05-27', 470, '40', 12.5),
(32, '989-28-654-0127-3', 'WO506', 'Trade paperback', 'PP', '2012-12-09', 295, '7', 16.99),
(33, '989-28-654-9826-6', 'DE571', 'Hardcover', 'PP', '2012-12-16', 480, '4', 28.99),
(34, '989-28-654-8573-0', 'TH143', 'Hardcover', 'PP', '2013-01-13', 598, '9', 23.99),
(35, '989-28-79-82125-8', 'TH296', 'Hardcover', 'ESP', '2013-02-10', 293, '10', 22.99),
(36, '989-28-79-14379-4', 'QQ737', 'Trade paperback', 'ESP', '2013-02-28', 373, '42', 11.99),
(37, '989-28-654-6033-1', 'TH143', 'Trade paperback', 'PP', '2014-01-04', 598, '12', 15.99),
(38, '989-28-229-0197-6', 'TO369', 'Mass market paperback', 'SSC', '2014-02-08', 255, '20', 9.5),
(39, '989-28-654-4370-9', 'DE571', 'Trade paperback', 'PP', '2014-03-29', 480, '5', 15.99),
(40, '989-28-79-13801-1', 'TM925', 'Mass market paperback', 'ESP', '2014-07-19', 672, '71', 8.99),
(41, '989-28-3705-633-3', 'IG460', 'Hardcover', 'CHP', '2014-08-09', 222, '3', 19.99),
(42, '989-28-3705-987-7', 'AD222', 'Trade paperback', 'CHP', '2014-09-22', 188, '10', 8.99),
(43, '989-28-79-13871-4', 'TH296', 'Mass market paperback', 'ESP', '2014-09-27', 357, '25', 8.99),
(44, '989-28-79-05638-4', 'TC188', 'Hardcover', 'ESP', '2014-11-15', 485, '12', 27.99),
(45, '989-28-79-91028-0', 'TM925', 'Trade paperback', 'ESP', '2015-04-14', 784, '50', 12.5),
(46, '989-28-3705-966-2', 'HP265', 'Paperback', 'CHP', '2015-05-02', 31, '25', 10.99),
(47, '989-28-3705-607-4', 'IG460', 'Trade paperback', 'CHP', '2015-07-25', 218, '10', 11.99),
(48, '989-28-229-5891-8', 'LB510', 'Mass market paperback', 'SSC', '2015-07-25', 380, '25', 9.5),
(49, '989-28-3705-592-3', 'BF889', 'Board book', 'CHP', '2015-10-10', 12, '8', 6.99),
(50, '989-28-79-82197-5', 'TC188', 'Trade paperback', 'ESP', '2015-12-05', 469, '20', 12.5),
(51, '989-28-79-22562-9', 'ZT703', 'Hardcover', 'ESP', '2015-12-12', 356, '18', 20.99),
(52, '989-28-79-40897-8', 'PP866', 'Hardcover', 'ESP', '2016-02-20', 656, '32', 21.5),
(53, '989-28-79-23015-9', 'CH391', 'Hardcover', 'ESP', '2016-03-06', 404, '2', 18.5),
(54, '989-28-3705-152-9', 'BF889', 'Paperback', 'CHP', '2016-04-03', 20, '10', 7.99),
(55, '989-28-3705-583-1', 'BC244', 'Board book', 'CHP', '2016-05-08', 13, '10', 6.99),
(56, '989-28-79-07610-8', 'KA663', 'Hardcover', 'ESP', '2016-05-15', 432, '25', 27.99),
(57, '989-28-3705-649-4', 'BR858', 'Board book', 'CHP', '2016-07-10', 11, '10', 6.99),
(58, '989-28-79-51397-9', 'TT773', 'Hardcover', 'ESP', '2016-08-28', 292, '40', 21.5),
(59, '989-28-3705-775-0', 'BC244', 'Paperback', 'CHP', '2016-11-06', 22, '15', 7.99),
(60, '989-28-79-05670-4', 'ZT703', 'Mass market paperback', 'ESP', '2016-11-20', 338, '26', 8.99),
(61, '989-28-3705-136-9', 'BR858', 'Paperback', 'CHP', '2017-01-08', 15, '17', 7.99),
(62, '989-28-79-56856-6', 'CC830', 'Hardcover', 'ESP', '2017-02-19', 434, '25', 21.5),
(63, '989-28-79-26824-4', 'TT773', 'Mass market paperback', 'ESP', '2017-04-08', 280, '40', 8.99),
(64, '989-28-229-3157-7', 'SE355', 'Mass market paperback', 'SSC', '2017-04-15', 336, '35', 9.5),
(65, '989-28-3705-492-6', 'CH391', 'Trade paperback', 'CHP', '2017-04-24', 404, '7', 11.99),
(66, '989-28-3705-138-3', 'BF374', 'Board book', 'CHP', '2017-05-27', 12, '18', 6.99),
(67, '989-28-3705-007-2', 'HP265', 'Board book', 'CHP', '2017-06-03', 16, '55', 5.99),
(68, '989-28-3705-369-1', 'BF374', 'Paperback', 'CHP', '2017-10-14', 20, '18', 7.99),
(69, '989-28-79-23023-4', 'PP866', 'Mass market paperback', 'ESP', '2017-10-21', 792, '78', 8.99),
(70, '989-28-79-21991-8', 'KA663', 'Mass market paperback', 'ESP', '2017-11-25', 341, '45', 8.99),
(71, '989-28-79-68531-7', 'ST303', 'Hardcover', 'ESP', '2018-01-06', 437, '7', 21.5),
(72, '989-28-79-96705-5', 'CC830', 'Mass market paperback', 'ESP', '2018-03-17', 381, '50', 8.99),
(73, '989-28-79-16826-1', 'AM124', 'Graphic', 'ESP', '2018-03-24', 85, '3', 23.99),
(74, '989-28-654-2017-5', 'IC739', 'Hardcover', 'PP', '2018-06-09', 337, '16', 29.99),
(75, '989-28-79-16533-8', 'ST862', 'Hardcover', 'ESP', '2019-02-16', 531, '9', 21.5),
(76, '989-28-79-69359-6', 'CP573', 'Hardcover', 'ESP', '2019-03-02', 706, '6', 21.5),
(77, '989-28-79-16808-7', 'ST303', 'Trade paperback', 'ESP', '2019-05-18', 458, '11', 12.5),
(78, '989-28-654-5018-9', 'IC739', 'Trade paperback', 'PP', '2019-07-15', 385, '20', 16.99),
(79, '989-28-79-36485-4', 'ST862', 'Trade paperback', 'ESP', '2019-09-14', 520, '15', 12.5),
(80, '989-28-79-27078-0', 'NL209', 'Graphic', 'ESP', '2019-10-05', 192, '4', 23.99),
(81, '989-28-79-55824-6', 'CP573', 'Mass market paperback', 'ESP', '2019-12-21', 651, '15', 8.99),
(82, '989-28-79-82339-9', 'TC401', 'Hardcover', 'ESP', '2020-02-22', 421, '10', 21.5),
(83, '989-28-654-9484-8', 'SS693', 'Hardcover', 'PP', '2020-03-01', 400, '8', 23.99),
(84, '989-28-654-3988-7', 'LS176', 'Hardcover', 'PP', '2020-03-15', 368, '2', 48),
(85, '989-28-79-86624-2', 'TP887', 'Hardcover', 'ESP', '2020-05-14', 1296, '30', 35.84),
(86, '989-28-79-64693-6', 'AY135', 'Trade paperback', 'ESP', '2020-08-25', 645, '36', 12.5),
(87, '989-28-229-9769-6', 'BS284', 'Mass market paperback', 'SSC', '2020-09-20', 368, '37', 9.5),
(88, '989-28-3705-763-7', 'MM424', 'Hardcover', 'CHP', '2020-11-15', 324, '3', 22.99),
(89, '989-28-79-74374-1', 'RR774', 'Hardcover', 'ESP', '2021-01-03', 1218, '40', 21.5),
(90, '989-28-79-55752-2', 'TC401', 'Mass market paperback', 'ESP', '2021-04-03', 398, '18', 8.99),
(91, '989-28-654-6507-7', 'SS693', 'Trade paperback', 'PP', '2021-05-15', 387, '8', 15.99),
(92, '989-28-79-03683-6', 'TA182', 'Hardcover', 'ESP', '2021-07-03', 340, '35', 18.5),
(93, '989-28-654-3899-6', 'WK456', 'Hardcover', 'PP', '2021-08-14', 207, '2', 29.99),
(94, '989-28-79-11297-4', 'TP887', 'Trade paperback', 'ESP', '2021-08-25', 1296, '30', 13.46),
(95, '989-28-3705-205-2', 'MM424', 'Trade paperback', 'CHP', '2021-09-18', 324, '8', 11.99);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `book_id` varchar(5) DEFAULT NULL,
  `genre` varchar(255) NOT NULL,
  `series_id` varchar(6) DEFAULT NULL,
  `volume_number` int(11) DEFAULT NULL,
  `staff_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `book_id`, `genre`, `series_id`, `volume_number`, `staff_comment`) VALUES
(1, 'MM424', 'Young Adult', NULL, 0, 'Would you want to live forever? Doesn\'t that depend on what sort of life you\'d have—and who you\'d spend it with? '),
(2, 'NR695', 'Mystery', 'IR-ESP', 1, ''),
(3, 'AM124', 'Fiction', NULL, 0, '\"This graphic novel is better than years of marriage counceling\"'),
(4, 'AK974', 'Young Adult', NULL, 0, ''),
(5, 'AD222', 'Childrens', NULL, 0, 'Alanna didn\'t expect this Tuesday to be any different than the Tuesday before, and the Tuesday before that. She was wrong. Can she make it to Wednesday?'),
(6, 'AY135', 'Fiction', NULL, 0, ''),
(7, 'BB194', 'SciFi/Fantasy', NULL, 0, 'What? Disaster. Where? The stars. When? Now. Who? The Ballinby Boys. How? You\'ll have to turn the page to find out…'),
(8, 'BF889', 'Childrens', 'BS-CHP', 1, 'Glug glug glug, BANANA SLUG! '),
(9, 'BC244', 'Childrens', 'BS-CHP', 2, 'Can Banana Slug find Farmer Fern\'s missing cow before dark?'),
(10, 'BR858', 'Childrens', 'BS-CHP', 3, 'Come play on a rainy day! Bad weather can\'t stop Banana Slug!'),
(11, 'BF374', 'Childrens', 'BS-CHP', 4, ''),
(12, 'BS284', 'Romance', 'EL-SSC', 7, 'Book Seven of Esme\'s Ladies'),
(13, 'CH391', 'Young Adult', NULL, 0, ''),
(14, 'CC830', 'SciFi/Fantasy', NULL, 0, ''),
(15, 'CP573', 'SciFi/Fantasy', NULL, 0, 'As someone who hates prophecy, Lydan seems an unlikely guardian of the Prophetic Vaults of Yu\'ul. But it was prophecied that someone matching her description would someday save Yu\'ul from its doom. The Elders don\'t take such things lightly. But what, Lydan asks herself, does it mean to save something? Especially when the cost is...concerning. '),
(16, 'DY800', 'Fiction', 'MT-ESP', 3, '\"The best beach-book I\'ve ever read\" \"Easy and fun without being vapid\" '),
(17, 'DE571', 'Nonfiction', NULL, 0, ''),
(18, 'DR914', 'SciFi/Fantasy', NULL, 0, ''),
(19, 'HS107', 'Nonfiction', NULL, 0, '#QuokkaSelfie took the internet by storm in the early 21s. These adorable marsupials, quickly dubbed \"the happiest animal on Earth\" became an internet sensation when tourists started posting selfies with the smiling mammals. Rottnest Island, once an Australian Aboriginal penal colony, transformed into an eco-tourism destination thanks to these picture-perfect smiling creatures. But even beaming quokkas can\'t escape the darker side of intense human attention. Reports began circulating of quokkas being kicked liked footballs. Instagram labeled #QuokkaSelfie as potentially violating animal welfare. Conservationists decried \"lumpy jaw\", a potentially fatal infection caused by bread fed to these herbivores from human hands. In this—ultimately hopeful—exploration of #QuokkaSelfie, Langston Lippman and colleagues take a deeper look at the phenomenon of celebrating nature to the brink of destroying it. '),
(20, 'HP265', 'Childrens', NULL, 0, 'Wilberforce isn\'t sure about bedtime in a new bed, in a new house, in a new town. But when his grandmother brings him a pair of heliotrope pajamas, Wilberforce finds out bedtime can be downright magical. '),
(21, 'IC739', 'Memoir', NULL, 0, 'Lowry\'s comedic genius shines through every moment of her memoir. Told with clear eyes and biting wit, the anecdotes of each chapter bring to life a world of eccentric academics. The literarily-inclinded daughter of a physicist  and an epidemiologist, Lowry was forced to find her own way toward normal through an upbringing that was anything but. '),
(22, 'IA439', 'Fiction', NULL, 0, ''),
(23, 'IG460', 'Young Adult', NULL, 0, ''),
(24, 'KA663', 'Fiction', NULL, 0, ''),
(25, 'LB510', 'Romance', 'EL-SSC', 5, 'Book Five of Esme\'s Ladies'),
(26, 'LS176', 'Nonfiction', NULL, 0, ''),
(27, 'MW621', 'Romance', 'EL-SSC', 2, 'Book Two of Esme\'s Ladies'),
(28, 'NP937', 'Nonfiction', NULL, 0, ''),
(29, 'NL209', 'Fiction', NULL, 0, 'Beloved author Charles Fenimore strikes out in a new direction with his first graphic novel. In this devestating tale of daring, ingenuity, and just a dash of  luck, Fenimore dmonstrates his genius for combining visual flare and cutting prose. Uchon\'s mechanical contraption to tame lightning brings its own threats to her tinder-box community stricken by wildfires. Will Uchon\'s luck run out on the eve of the biggest lightning storm to threaten the sleepy town of Delanro in decades? '),
(30, 'NB483', 'Fiction', 'MT-ESP', 2, '\"I never thought I\'d enjoy a trashy, light chick-lit series. But here I am, and Green is rapidly becoming my favorite author!\"'),
(31, 'NC652', 'Nonfiction', NULL, 0, 'When his wife set out to write her magnum opus cookbook, food critic Stackhouse thought the hardest part would be making sure he didn\'t outgrow his favorite slacks. He never expected that amidst the thyme and roux and cleavers, their relationship would be tried, tested, and ultimately perfected. Tastefully seasoned with the recipes that brought them to the brink, \"Nothing But Capers\" follows the tumult that strained then saved his marriage and his life. '),
(32, 'PP866', 'SciFi/Fantasy', 'MM-ESP', 2, 'No one saw it coming. No one could escape the effects. No one could imagine what would come next. '),
(33, 'PA169', 'Fiction', NULL, 0, ''),
(34, 'QQ737', 'Young Adult', NULL, 0, 'Debut novel from Jill Hergesheimer'),
(35, 'RR774', 'SciFi/Fantasy', 'MM-ESP', 3, 'The triumphant, tragic, unimaginable third installment in the Mallemaroking saga'),
(36, 'SE355', 'Romance', 'EL-SSC', 6, 'Book Six of Esme\'s Ladies'),
(37, 'SS693', 'Nonfiction', NULL, 0, 'Long-winded talkers waste time for themselves and those who listen. When you have something to say, get to the point. Say it with Snap! '),
(38, 'ST862', 'SciFi/Fantasy', NULL, 0, ''),
(39, 'ST303', 'SciFi/Fantasy', NULL, 0, ''),
(40, 'SS361', 'Fiction', NULL, 0, ''),
(41, 'TC401', 'SciFi/Fantasy', NULL, 0, ''),
(42, 'TC188', 'Fiction', NULL, 0, ''),
(43, 'TH143', 'Nonfiction', NULL, 0, ''),
(44, 'TP887', 'Fiction', NULL, 0, ''),
(45, 'TM925', 'SciFi/Fantasy', 'MM-ESP', 1, 'An epic on the scale of Game of Thrones and The Lord of the Rings. The Mallemaroking is a book that cannot be defined, only experienced. '),
(46, 'TO369', 'Romance', 'EL-SSC', 4, 'Book Four of Esme\'s Ladies'),
(47, 'TS869', 'Romance', 'EL-SSC', 1, 'Book One of Esme\'s Ladies'),
(48, 'TA182', 'Young Adult', NULL, 0, ''),
(49, 'TH556', 'Fiction', NULL, 0, 'Mr. Hidoo, with his kind smile and perpetual silence, is easy to overlook. Until he turns up dead. '),
(50, 'TI225', 'Fiction', 'MT-ESP', 1, '\"The thing is, \'The Thing Is\' is exactly what you need. Don\'t believe me? Give it a try.\"'),
(51, 'TT773', 'SciFi/Fantasy', NULL, 0, ''),
(52, 'TH296', 'Mystery', 'IR-ESP', 2, ''),
(53, 'TT359', 'Fiction', 'AT-ESP', 1, ''),
(54, 'WO506', 'Memoir', NULL, 0, '\"Only a sister knows the difference between a strangle and a hug\"'),
(55, 'WG715', 'Romance', 'EL-SSC', 3, 'Book Three of Esme\'s Ladies'),
(56, 'WK456', 'Memoir', NULL, 0, 'Antrim\'s ability to make you laugh through your tears has never been stronger than in his memoirs. Diagnosed with terminal cancer at 38, Antrim reflects back on his life with the grace and wisdom of a man twice his age. \"Who Did You Think You Were Kidding\" reminds us that even on a sad path toward a death far too soon, the journey is what matters. '),
(57, 'ZT703', 'Mystery', NULL, 0, ''),
(58, 'DG384', 'Fiction', NULL, 0, 'The most anticipated release of the coming year!');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` varchar(5) NOT NULL,
  `publishing_house` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `year_established` year(4) NOT NULL,
  `marketing_spend` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `publishing_house`, `city`, `state`, `country`, `year_established`, `marketing_spend`) VALUES
('CHP', 'Cedar House Publishers', 'Friday Harbor', 'Washington', 'USA', 1939, 72000),
('ESP', 'Etaoin Shrdlu Press', 'Seattle', 'Washington', 'USA', 1922, 2320000),
('PP', 'Palimpsest Printing', 'Edinburgh', 'Scotland', 'UK', 1930, 48000),
('SSC', 'Sound & Seas Co.', 'Dunedin', 'Otago', 'New Zealand', 2006, 151000);

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` varchar(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `planned_volumes` int(11) NOT NULL,
  `book_tour_events` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `name`, `planned_volumes`, `book_tour_events`) VALUES
('AT-ESP', 'The Aspall Trilogy', 3, 5),
('BS-CHP', 'Banana Slug', 5, 24),
('EL-SSC', 'Esme\'s Ladies', 7, 15),
('IR-ESP', 'Inspector Ryeslton', 4, 19),
('MM-ESP', 'The Mallemaroking Saga', 3, 32),
('MT-ESP', 'Meddler Trilogy', 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `book_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `edition`
--
ALTER TABLE `edition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `pub_id` (`pub_id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `series_id` (`series_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `edition`
--
ALTER TABLE `edition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2230;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `edition`
--
ALTER TABLE `edition`
  ADD CONSTRAINT `edition_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `edition_ibfk_2` FOREIGN KEY (`pub_id`) REFERENCES `publisher` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `info`
--
ALTER TABLE `info`
  ADD CONSTRAINT `info_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `info_ibfk_2` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD CONSTRAINT `transaction_detail_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_detail_ibfk_2` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
