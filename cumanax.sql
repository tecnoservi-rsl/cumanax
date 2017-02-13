-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2017 a las 00:29:52
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cumanax`
--
CREATE DATABASE IF NOT EXISTS `cumanax` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cumanax`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencia`
--

CREATE TABLE IF NOT EXISTS `agencia` (
`id_agencia` int(11) NOT NULL,
  `nombre_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `preview` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `nro_contacto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `correo_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `facebook_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pin_agencia` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `whatsapp_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `agencia`
--

INSERT INTO `agencia` (`id_agencia`, `nombre_agencia`, `preview`, `nro_contacto`, `correo_agencia`, `facebook_agencia`, `pin_agencia`, `whatsapp_agencia`) VALUES
(1, 'badgirls', 'fggsdzf', 'sdfad', 'dafs', 'df', 'dfs', 'df');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chicas`
--

CREATE TABLE IF NOT EXISTS `chicas` (
`id_chicas` int(11) NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombre_chicas` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `destrezas` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `especialidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estatura` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `medidas` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `peso` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `color_cabello` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `color_ojos` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `color_piel` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tlf` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `publico` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `horario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `localidad` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `bbm` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `whatsapp` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `instagram` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `twitter` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `preview` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `id_agencia` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `chicas`
--

INSERT INTO `chicas` (`id_chicas`, `tipo`, `nombre_chicas`, `fecha_nacimiento`, `destrezas`, `especialidad`, `estatura`, `medidas`, `peso`, `color_cabello`, `color_ojos`, `color_piel`, `tlf`, `publico`, `horario`, `localidad`, `email`, `bbm`, `whatsapp`, `facebook`, `instagram`, `twitter`, `preview`, `id_agencia`) VALUES
(1, 'x', 'hola', '2017-02-01', 'DSF', 'HJ', 'JH', 'JH', 'JH', 'JH', 'JH', 'JH', 'JH', 'JHJH', 'HJ', 'JH', 'HJ', 'HJ', 'JH', 'JH', 'JH', 'HJ', 'HJ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_agencia`
--

CREATE TABLE IF NOT EXISTS `fotos_agencia` (
`id_foto` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_chicas`
--

CREATE TABLE IF NOT EXISTS `fotos_chicas` (
`id_foto` int(11) NOT NULL,
  `id_chicas` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
`id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `ip` varchar(12) NOT NULL,
  `controlador` varchar(30) NOT NULL,
  `metodo` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `id_usuario`, `ip`, `controlador`, `metodo`, `fecha`, `hora`) VALUES
(1, NULL, '::1', 'principal', 'index', '2017-02-07', '20:11:16'),
(2, NULL, '::1', 'principal', 'index', '2017-02-07', '20:11:18'),
(3, NULL, '::1', 'principal', 'index', '2017-02-07', '20:11:28'),
(4, NULL, '::1', 'principal', 'tipo', '2017-02-07', '20:11:29'),
(5, NULL, '::1', 'principal', 'tipo', '2017-02-07', '20:11:31'),
(6, NULL, '::1', 'principal', 'tipo', '2017-02-07', '20:11:32'),
(7, NULL, '::1', 'agencia', 'index', '2017-02-07', '20:11:33'),
(8, NULL, '::1', 'agencia', 'auto_completado', '2017-02-07', '20:11:33'),
(9, NULL, '::1', 'anunciate', 'index', '2017-02-07', '20:11:36'),
(10, NULL, '::1', 'agencia', 'index', '2017-02-07', '20:11:57'),
(11, NULL, '::1', 'agencia', 'auto_completado', '2017-02-07', '20:11:57'),
(12, NULL, '::1', 'principal', 'tipo', '2017-02-07', '20:11:59'),
(13, NULL, '::1', 'principal', 'tipo', '2017-02-07', '20:12:00'),
(14, NULL, '::1', 'principal', 'tipo', '2017-02-07', '20:12:01'),
(15, NULL, '::1', 'principal', 'index', '2017-02-07', '20:12:03'),
(16, NULL, '::1', 'principal', 'index', '2017-02-07', '21:22:32'),
(17, NULL, '::1', 'principal', 'index', '2017-02-07', '21:22:49'),
(18, NULL, '::1', 'principal', 'index', '2017-02-07', '21:23:05'),
(19, NULL, '::1', 'principal', 'index', '2017-02-07', '21:23:32'),
(20, NULL, '::1', 'principal', 'tipo', '2017-02-07', '21:23:38'),
(21, NULL, '::1', 'principal', 'tipo', '2017-02-07', '21:23:41'),
(22, NULL, '::1', 'principal', 'tipo', '2017-02-07', '21:23:42'),
(23, NULL, '::1', 'agencia', 'index', '2017-02-07', '21:23:43'),
(24, NULL, '::1', 'agencia', 'auto_completado', '2017-02-07', '21:23:43'),
(25, NULL, '::1', 'anunciate', 'index', '2017-02-07', '21:23:45'),
(26, NULL, '::1', 'principal', 'tipo', '2017-02-07', '21:23:56'),
(27, NULL, '127.0.0.1', 'aviso', 'index', '2017-02-12', '15:09:49'),
(28, NULL, '127.0.0.1', 'legal', 'index', '2017-02-12', '15:09:53'),
(29, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:09:57'),
(30, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:12:07'),
(31, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:12:30'),
(32, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:13:47'),
(33, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:14:17'),
(34, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:14:41'),
(35, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:15:39'),
(36, NULL, '127.0.0.1', 'anunciate', 'index', '2017-02-12', '15:17:10'),
(37, NULL, '127.0.0.1', 'agencia', 'index', '2017-02-12', '15:17:13'),
(38, NULL, '127.0.0.1', 'agencia', 'auto_completado', '2017-02-12', '15:17:13'),
(39, NULL, '127.0.0.1', 'principal', 'tipo', '2017-02-12', '15:17:14'),
(40, NULL, '127.0.0.1', 'principal', 'tipo', '2017-02-12', '15:17:16'),
(41, NULL, '127.0.0.1', 'principal', 'tipo', '2017-02-12', '15:17:18'),
(42, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:17:20'),
(43, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:20:30'),
(44, NULL, '127.0.0.1', 'principal', 'tipo', '2017-02-12', '15:21:02'),
(45, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:21:13'),
(46, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:22:03'),
(47, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:22:40'),
(48, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:23:56'),
(49, NULL, '127.0.0.1', 'principal', 'index', '2017-02-12', '15:24:56'),
(50, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:27:48'),
(51, NULL, '127.0.0.1', 'app', 'permisos_ch', '2017-02-12', '15:28:22'),
(52, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:28:24'),
(53, NULL, '127.0.0.1', 'app', 'permisos_ch', '2017-02-12', '15:28:26'),
(54, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:28:27'),
(55, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:29:18'),
(56, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:29:39'),
(57, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:37:34'),
(58, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:38:07'),
(59, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:39:47'),
(60, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:40:42'),
(61, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:41:04'),
(62, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:41:11'),
(63, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '15:41:48'),
(64, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '16:19:11'),
(65, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '16:20:09'),
(66, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:20:30'),
(67, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '16:21:48'),
(68, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:21:55'),
(69, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '16:23:01'),
(70, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:23:07'),
(71, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:25:39'),
(72, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:26:13'),
(73, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:26:21'),
(74, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '16:27:21'),
(75, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:27:37'),
(76, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:28:16'),
(77, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:28:18'),
(78, NULL, '127.0.0.1', 'app', 'index', '2017-02-12', '16:28:59'),
(79, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:28:59'),
(80, NULL, '127.0.0.1', 'app', 'buscar_chicas', '2017-02-12', '16:29:05'),
(81, NULL, '::1', 'app', 'index', '2017-02-12', '16:33:26'),
(82, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:33:35'),
(83, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:33:41'),
(84, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:44'),
(85, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:44'),
(86, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:45'),
(87, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:45'),
(88, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:47'),
(89, NULL, '::1', 'app', 'index', '2017-02-12', '16:34:49'),
(90, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:53'),
(91, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:54'),
(92, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:55'),
(93, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:56'),
(94, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:34:57'),
(95, NULL, '::1', 'app', 'index', '2017-02-12', '16:35:00'),
(96, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:35:05'),
(97, NULL, '::1', 'app', 'index', '2017-02-12', '16:35:07'),
(98, NULL, '::1', 'app', 'permisos_ch', '2017-02-12', '16:35:10'),
(99, NULL, '::1', 'app', 'index', '2017-02-12', '16:35:17'),
(100, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:35:23'),
(101, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:45:04'),
(102, NULL, '::1', 'app', 'index', '2017-02-12', '16:45:18'),
(103, NULL, '::1', 'app', 'index', '2017-02-12', '16:45:52'),
(104, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:46:04'),
(105, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:46:06'),
(106, NULL, '::1', 'app', 'index', '2017-02-12', '16:46:33'),
(107, NULL, '::1', 'app', 'index', '2017-02-12', '16:46:45'),
(108, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:46:51'),
(109, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:46:53'),
(110, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:46:54'),
(111, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:46:55'),
(112, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:52:28'),
(113, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:53:50'),
(114, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:53:53'),
(115, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:53:53'),
(116, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:53:55'),
(117, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:09'),
(118, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:09'),
(119, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:09'),
(120, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:10'),
(121, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:10'),
(122, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:11'),
(123, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:12'),
(124, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:12'),
(125, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:13'),
(126, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:13'),
(127, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:13'),
(128, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:13'),
(129, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:14'),
(130, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:14'),
(131, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:14'),
(132, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:14'),
(133, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:15'),
(134, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:15'),
(135, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:17'),
(136, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:18'),
(137, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:19'),
(138, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:19'),
(139, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:19'),
(140, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:20'),
(141, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:20'),
(142, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:20'),
(143, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:21'),
(144, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:21'),
(145, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:21'),
(146, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:22'),
(147, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:42'),
(148, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:42'),
(149, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:42'),
(150, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:42'),
(151, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:42'),
(152, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:43'),
(153, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:43'),
(154, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:43'),
(155, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:46'),
(156, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:46'),
(157, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:48'),
(158, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:48'),
(159, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:48'),
(160, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:48'),
(161, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:48'),
(162, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:49'),
(163, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:49'),
(164, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:50'),
(165, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:51'),
(166, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:52'),
(167, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:52'),
(168, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:52'),
(169, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:53'),
(170, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:53'),
(171, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:54'),
(172, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:54:54'),
(173, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:55:06'),
(174, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:55:06'),
(175, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:55:06'),
(176, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:55:06'),
(177, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:09'),
(178, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:10'),
(179, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:10'),
(180, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:22'),
(181, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:34'),
(182, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:40'),
(183, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:46'),
(184, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:46'),
(185, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:48'),
(186, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:48'),
(187, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:48'),
(188, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:48'),
(189, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:56:58'),
(190, NULL, '::1', 'app', 'index', '2017-02-12', '16:58:13'),
(191, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:20'),
(192, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:20'),
(193, NULL, '::1', 'app', 'eliminar_chicas', '2017-02-12', '16:58:40'),
(194, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:46'),
(195, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:52'),
(196, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:53'),
(197, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:53'),
(198, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:54'),
(199, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:55'),
(200, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:56'),
(201, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '16:58:56'),
(202, NULL, '::1', 'app', 'index', '2017-02-12', '17:00:02'),
(203, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:00:08'),
(204, NULL, '::1', 'app', 'eliminar_chicas', '2017-02-12', '17:00:12'),
(205, NULL, '::1', 'app', 'index', '2017-02-12', '17:00:50'),
(206, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:00:55'),
(207, NULL, '::1', 'app', 'eliminar_chicas', '2017-02-12', '17:01:01'),
(208, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:08'),
(209, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:17'),
(210, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:24'),
(211, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:27'),
(212, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:27'),
(213, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:29'),
(214, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:30'),
(215, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:30'),
(216, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:30'),
(217, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:30'),
(218, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:30'),
(219, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:30'),
(220, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:38'),
(221, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:38'),
(222, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:38'),
(223, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:38'),
(224, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:39'),
(225, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:39'),
(226, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:39'),
(227, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:39'),
(228, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:39'),
(229, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:39'),
(230, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:56'),
(231, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:57'),
(232, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:57'),
(233, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:58'),
(234, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:58'),
(235, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:58'),
(236, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:58'),
(237, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:58'),
(238, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:58'),
(239, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:58'),
(240, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:59'),
(241, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:59'),
(242, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:59'),
(243, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:59'),
(244, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:01:59'),
(245, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:00'),
(246, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:00'),
(247, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:00'),
(248, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:00'),
(249, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:00'),
(250, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:00'),
(251, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:01'),
(252, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:01'),
(253, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:01'),
(254, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:01'),
(255, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:01'),
(256, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:01'),
(257, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:02'),
(258, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:02'),
(259, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:02'),
(260, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:02'),
(261, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:02'),
(262, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:02'),
(263, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:03'),
(264, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:03'),
(265, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:03'),
(266, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:03'),
(267, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:03'),
(268, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:03'),
(269, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:04'),
(270, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:04'),
(271, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:04'),
(272, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:04'),
(273, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:04'),
(274, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:05'),
(275, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:05'),
(276, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:05'),
(277, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:05'),
(278, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:05'),
(279, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:05'),
(280, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:06'),
(281, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:06'),
(282, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:06'),
(283, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:06'),
(284, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:06'),
(285, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:07'),
(286, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:09'),
(287, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:10'),
(288, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:10'),
(289, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:02:24'),
(290, NULL, '::1', 'app', 'index', '2017-02-12', '17:04:23'),
(291, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '17:04:27'),
(292, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:33:38'),
(293, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:33:39'),
(294, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:39:01'),
(295, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:39:45'),
(296, NULL, '::1', 'app', 'index', '2017-02-12', '18:39:49'),
(297, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:39:49'),
(298, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:39:56'),
(299, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:39:57'),
(300, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:39:58'),
(301, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:39:58'),
(302, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:39:59'),
(303, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '18:40:06'),
(304, NULL, '::1', 'app', 'index', '2017-02-12', '18:53:58'),
(305, NULL, '::1', 'app', 'index', '2017-02-12', '18:54:14'),
(306, NULL, '::1', 'app', 'index', '2017-02-12', '18:54:27'),
(307, NULL, '::1', 'app', 'index', '2017-02-12', '18:55:14'),
(308, NULL, '::1', 'app', 'index', '2017-02-12', '18:56:19'),
(309, NULL, '::1', 'app', 'index', '2017-02-12', '18:56:53'),
(310, NULL, '::1', 'app', 'index', '2017-02-12', '18:57:39'),
(311, NULL, '::1', 'app', 'index', '2017-02-12', '18:58:40'),
(312, NULL, '::1', 'app', 'index', '2017-02-12', '18:59:17'),
(313, NULL, '::1', 'app', 'index', '2017-02-12', '18:59:45'),
(314, NULL, '::1', 'app', 'index', '2017-02-12', '18:59:57'),
(315, NULL, '::1', 'app', 'index', '2017-02-12', '19:03:25'),
(316, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '19:03:28'),
(317, NULL, '::1', 'app', 'index', '2017-02-12', '19:03:51'),
(318, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '19:03:54'),
(319, NULL, '::1', 'app', 'index', '2017-02-12', '19:11:00'),
(320, NULL, '::1', 'app', 'buscar_chicas', '2017-02-12', '19:11:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `enlace` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_menu`, `titulo`, `enlace`) VALUES
(1, 'Damas', 'principal/tipo/dama'),
(2, 'Caballeros', 'principal/tipo/caballero'),
(3, 'Trans', 'principal/tipo/trans'),
(4, 'Agencias', 'agencia'),
(5, 'Anunciate', 'anunciate'),
(6, 'Registro', 'registro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
`id_pagos` int(11) NOT NULL,
  `id_chicas` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pagos`, `id_chicas`, `fecha_pago`, `fecha_vencimiento`) VALUES
(1, 1, '2017-02-01', '2017-03-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
`id_permisos` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `permiso` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permisos`, `id_menu`, `id_role`, `permiso`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 1),
(3, 3, 1, 1),
(4, 4, 2, 1),
(5, 3, 2, 1),
(6, 5, 2, 1),
(7, 6, 1, 1),
(8, 1, 1, 1),
(9, 4, 1, 1),
(10, 2, 1, 1),
(11, 6, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`id_role` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `peso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id_role`, `role`, `peso`) VALUES
(1, 'admin_sistem', 1),
(2, 'anonimo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id_usuario` int(11) NOT NULL,
  `id_role` int(11) NOT NULL DEFAULT '2',
  `login` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_role`, `login`, `password`, `estado`) VALUES
(1, 1, 'admin', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votacion`
--

CREATE TABLE IF NOT EXISTS `votacion` (
`id_votacion` int(11) NOT NULL,
  `id_chica` int(11) NOT NULL,
  `votacion` int(11) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agencia`
--
ALTER TABLE `agencia`
 ADD PRIMARY KEY (`id_agencia`), ADD UNIQUE KEY `nombre_agencia` (`nombre_agencia`);

--
-- Indices de la tabla `chicas`
--
ALTER TABLE `chicas`
 ADD PRIMARY KEY (`id_chicas`), ADD KEY `id_agencia` (`id_agencia`);

--
-- Indices de la tabla `fotos_agencia`
--
ALTER TABLE `fotos_agencia`
 ADD PRIMARY KEY (`id_foto`), ADD KEY `id_chicas` (`id_agencia`), ADD KEY `id_chicas_2` (`id_agencia`);

--
-- Indices de la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
 ADD PRIMARY KEY (`id_foto`), ADD KEY `id_chicas` (`id_chicas`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
 ADD PRIMARY KEY (`id`), ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
 ADD PRIMARY KEY (`id_pagos`), ADD KEY `id_chica` (`id_chicas`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
 ADD PRIMARY KEY (`id_permisos`), ADD KEY `id_menu` (`id_menu`,`id_role`), ADD KEY `id_role` (`id_role`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id_role`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id_usuario`), ADD KEY `id_role_2` (`id_role`), ADD KEY `id_role_3` (`id_role`), ADD KEY `id_role_4` (`id_role`), ADD KEY `id_role_5` (`id_role`);

--
-- Indices de la tabla `votacion`
--
ALTER TABLE `votacion`
 ADD PRIMARY KEY (`id_votacion`), ADD KEY `id_chica` (`id_chica`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agencia`
--
ALTER TABLE `agencia`
MODIFY `id_agencia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `chicas`
--
ALTER TABLE `chicas`
MODIFY `id_chicas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `fotos_agencia`
--
ALTER TABLE `fotos_agencia`
MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=321;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
MODIFY `id_pagos` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `votacion`
--
ALTER TABLE `votacion`
MODIFY `id_votacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chicas`
--
ALTER TABLE `chicas`
ADD CONSTRAINT `chicas_ibfk_1` FOREIGN KEY (`id_agencia`) REFERENCES `agencia` (`id_agencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fotos_agencia`
--
ALTER TABLE `fotos_agencia`
ADD CONSTRAINT `fotos_agencia_ibfk_1` FOREIGN KEY (`id_agencia`) REFERENCES `agencia` (`id_agencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
ADD CONSTRAINT `fotos_chicas_ibfk_1` FOREIGN KEY (`id_chicas`) REFERENCES `chicas` (`id_chicas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `log`
--
ALTER TABLE `log`
ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_chicas`) REFERENCES `chicas` (`id_chicas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `votacion`
--
ALTER TABLE `votacion`
ADD CONSTRAINT `votacion_ibfk_1` FOREIGN KEY (`id_chica`) REFERENCES `chicas` (`id_chicas`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
