-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2022 at 04:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BE15_CR13_bigEventsAndreasPlangger`
--
CREATE DATABASE IF NOT EXISTS `BE15_CR13_bigEventsAndreasPlangger` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `BE15_CR13_bigEventsAndreasPlangger`;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_date` datetime NOT NULL,
  `description` varchar(655) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(9) NOT NULL,
  `email` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `event_name`, `event_date`, `description`, `picture`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1000, 'Klimt - The Immersive Experience', '2022-04-22 18:00:00', 'This exhibition is a completely newly conceived multimedia spectacle that presents the world-famous artworks of Gustav Klimt in a way never seen before!\r\nThe paintings of the Austrian artist are enlarged several times with the help of elaborate light installations and projections and brought to life on the walls of the presentation rooms. Masterful art meets state-of-the-art technology - a symbiosis that carries Klimts genius into a new age.\r\n', 'klimt.jpg', 600, 'gustav@klimt.com', '43 1 888 55 25', 'Farkas-Gasse 19\r\n1030 Vienna', 'klimt-experience.com', 'exhibition'),
(1001, 'Tristan und Isolde', '2022-04-14 20:00:00', 'With this opera, Richard Wagner created the key work of musical romanticism, as sworn by E. T. A. Hoffmann exclaiming: Glowing rays shoot through this realm of deep night, and we become aware of giant shadows that billowed up and down, lock us in closer and closer and destroy us, but not the pain of infinite longing. ', 'wagner.jpg', 650, 'richard@wagner.com', '43 1 514 44 2250 ', 'Opernring 2\r\n1010 Vienna', 'www.culturall.com', 'opera'),
(1020, 'Summer Concert Schönbrunn 2022', '2022-06-16 20:00:00', 'Musical enjoyment at the highest level against the beautiful backdrop of Schönbrunn!\r\n\r\nThe detailed program will be announced at a later date.', 'summerconcert.jpg', 10000, 'summer@concert.com', '43 1 888 55 29', 'Schlossstraße\r\n1130 Vienna', 'www.sommernachtskonzert.at', 'concert'),
(1021, 'Karoline und Kasimir', '2022-04-14 20:15:00', 'Important topics in Horvaths works were popular culture, politics and history. He especially tried to warn of the dawn of fascism and its dangers. Among Horvaths more enduringly popular works, Youth Without God describes the youth in Nazi Germany from a disgruntled teachers point of view, who initially is an opportunist, but is helpless against the racist and militaristic Nazi propaganda that de-humanizes his pupils.', 'kasimir.jpg', 450, 'karoline@kasimir.com', '+43 1 52 111 400', 'Arthur-Schnitzler-Platz 1\r\n1070 Vienna', 'www.volkstheater.at', 'theatre'),
(1022, 'Piano recital Igor Levit', '2022-05-14 20:30:00', 'Stevenson: Passacaglia on DSCH is a large-scale composition for solo piano by the British composer Ronald Stevenson. It was composed between 24 December 1960 and 18 May 1962, except for two sections added on the day of the first performance on 10 December 1963. The composer presented a copy of the score to Dmitri Shostakovich, its dedicatee, at the 1962 Edinburgh Festival.', 'piano.jpg', 340, 'igor@levit.com', '43 1 505 81 90', 'Magna Auditorium\r\nMusikvereinsplatz 1\r\n1010 Vienna', 'www.musikverein.at', 'concert');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1026;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
