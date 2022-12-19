-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 19-12-2022 a las 20:28:24
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `helpdesk-system`
--
DROP DATABASE IF EXISTS `helpdesk-system`;
CREATE DATABASE IF NOT EXISTS `helpdesk-system` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `helpdesk-system`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hd_departments`
--

DROP TABLE IF EXISTS `hd_departments`;
CREATE TABLE IF NOT EXISTS `hd_departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hd_departments`
--

INSERT INTO `hd_departments` (`id`, `name`, `status`) VALUES
(1, 'Technical', 1),
(2, 'Testing', 1),
(3, 'Automation', 1),
(4, 'Design', 1),
(5, 'Programming', 1),
(7, 'Security', 1),
(8, 'HOLA ', 1),
(9, 'TESTIMONIO ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hd_tickets`
--

DROP TABLE IF EXISTS `hd_tickets`;
CREATE TABLE IF NOT EXISTS `hd_tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uniqid` varchar(20) NOT NULL,
  `user` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `init_msg` text NOT NULL,
  `department` int NOT NULL,
  `date` varchar(250) NOT NULL,
  `last_reply` int NOT NULL,
  `user_read` int NOT NULL,
  `admin_read` int NOT NULL,
  `resolved` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hd_tickets`
--

INSERT INTO `hd_tickets` (`id`, `uniqid`, `user`, `title`, `init_msg`, `department`, `date`, `last_reply`, `user_read`, `admin_read`, `resolved`) VALUES
(1, '617181b83c1e7', 1, 'System is not working', 'System is not working', 1, '1634828728', 1, 0, 1, 1),
(2, '61718394c0ad5', 2, 'There are some issue!!!!', 'There are some issue!!', 1, '1634829204', 2, 1, 0, 1),
(3, '617bfaa5ce86d', 1, 'zfsafsaf', 'zfsafsaf', 2, '1635515045', 1, 0, 0, 0),
(4, '617bfc35a93af', 2, 'There some glitches', 'There some glitches', 3, '1635515445', 2, 1, 0, 0),
(5, '617c0a73661fd', 1, 'there are secirty glitches!!!', 'there are secirty glitches', 1, '1635519091', 1, 0, 1, 0),
(6, '617c0ba6d462b', 2, 'there some issues', 'there some issues', 1, '1635519398', 2, 1, 0, 0),
(7, '638b673aa6671', 6, 'Webamies Tickets', 'Webamies Tickets', 3, '1670080314', 6, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hd_ticket_replies`
--

DROP TABLE IF EXISTS `hd_ticket_replies`;
CREATE TABLE IF NOT EXISTS `hd_ticket_replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL,
  `text` text NOT NULL,
  `ticket_id` text NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hd_ticket_replies`
--

INSERT INTO `hd_ticket_replies` (`id`, `user`, `text`, `ticket_id`, `date`) VALUES
(1, 1, 'This is fixed', '1', '1634829030'),
(2, 1, 'Please check it.', '1', '1634829129'),
(3, 1, 'The issue is fixed, you can check at your end. Thanks', '2', '1634829404'),
(4, 2, 'fixed', '2', '1635515403'),
(5, 2, 'this is fixed!', '4', '1635517083'),
(6, 1, 'I am looking into this', '5', '1635519340'),
(7, 2, 'ewtewt', '6', '1635519418');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hd_users`
--

DROP TABLE IF EXISTS `hd_users`;
CREATE TABLE IF NOT EXISTS `hd_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` enum('hombre','mujer') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(250) NOT NULL,
  `user_type` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int NOT NULL,
  `authtoken` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hd_users`
--

INSERT INTO `hd_users` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `create_date`, `image`, `user_type`, `status`, `authtoken`) VALUES
(1, 'Filiberto Mba Obama ', 'admin@webdamn.com', '202cb962ac59075b964b07152d234b70', 'hombre', '222626697', '2021-10-25 23:24:33', '', 'admin', 1, ''),
(2, 'Jovita Obono ', 'jovitaobono@gmail.com', '202cb962ac59075b964b07152d234b70', 'mujer', '222729996', '2021-10-25 23:24:33', '', 'user', 1, '73f66749989c7b09389894f1b27daa7387f9956fa51c87c1ba4fc4684b91acb5'),
(27, 'kkkkkkkkkkkkkkkkk', 'kkkkkkkkkkk22kkk@gmail.com', '202cb962ac59075b964b07152d234b70', 'mujer', 'kkkkkkkkkkkkk', '2022-12-04 15:26:43', '', 'user', 0, '73f66749989c7b09389894f1b27daa7340120c8c5916531b154665e41215385d'),
(28, 'admin@webdamn.com', 'webamies@gmail.com', '202cb962ac59075b964b07152d234b70', 'hombre', '', '2022-12-18 21:27:32', '', 'user', 0, '73f66749989c7b09389894f1b27daa733c0bebaa638db6d6b8d8590a8a7b81cb'),
(29, 'Zinsou', 'Zinsou@webdamn.com', '202cb962ac59075b964b07152d234b70', '', '', '2022-12-18 21:28:31', '', 'user', 0, '73f66749989c7b09389894f1b27daa739837b7dda7897ae58812301531f1b80b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
