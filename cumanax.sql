-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 25-01-2017 a las 02:25:10
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cumanax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencia`
--

CREATE TABLE `agencia` (
  `id_agencia` int(11) NOT NULL,
  `nombre_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nro_contacto` int(11) NOT NULL,
  `correo_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `facebook_agencia` int(11) NOT NULL,
  `pin_agencia` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `whatsapp_agencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chicas`
--

CREATE TABLE `chicas` (
  `id_chicas` int(11) NOT NULL,
  `nombre_chicas` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `destrezas` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `especialidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `medidas` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `color_cabello` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `color_ojos` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `color_piel` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `tlf` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `publico` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `id_agencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `chicas`
--

INSERT INTO `chicas` (`id_chicas`, `nombre_chicas`, `fecha_nacimiento`, `destrezas`, `especialidad`, `medidas`, `peso`, `color_cabello`, `color_ojos`, `color_piel`, `tlf`, `publico`, `id_agencia`) VALUES
(1, 'LA CATIRA', '0000-00-00', 'DE TODO', 'SEXO ORAL ', 80, 64, 'RUBIO MEDIO', 'MARRONES', 'BLANCA', '24242424@D', 'NO PLICA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_chicas`
--

CREATE TABLE `fotos_chicas` (
  `id_foto` int(11) NOT NULL,
  `id_chicas` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fotos_chicas`
--

INSERT INTO `fotos_chicas` (`id_foto`, `id_chicas`, `nombre_foto`) VALUES
(1, 1, 'sosmedica5884b4b3ac0f3l.php.gif');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `ip` varchar(12) NOT NULL,
  `controlador` varchar(30) NOT NULL,
  `metodo` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `id_usuario`, `ip`, `controlador`, `metodo`, `fecha`, `hora`) VALUES
(1, NULL, '127.0.0.1', 'principal', 'index', '2016-12-19', '10:13:35'),
(2, NULL, '127.0.0.1', 'app', 'index', '2016-12-19', '10:14:08'),
(3, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:37'),
(4, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:40'),
(5, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:43'),
(6, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:43'),
(7, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:43'),
(8, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:44'),
(9, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:44'),
(10, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:49'),
(11, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:51'),
(12, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:53'),
(13, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:54'),
(14, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:54'),
(15, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:14:54'),
(16, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:04'),
(17, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:04'),
(18, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:04'),
(19, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:04'),
(20, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:04'),
(21, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:04'),
(22, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:05'),
(23, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:05'),
(24, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:05'),
(25, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:05'),
(26, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:05'),
(27, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:05'),
(28, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:06'),
(29, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:06'),
(30, NULL, '127.0.0.1', 'app', 'estilos', '2016-12-19', '10:15:06'),
(31, NULL, '127.0.0.1', 'principal', 'index', '2016-12-19', '10:15:23'),
(32, NULL, '127.0.0.1', 'app', 'index', '2016-12-19', '10:15:35'),
(33, NULL, '127.0.0.1', 'faceblocked', 'index', '2016-12-19', '10:15:42'),
(34, NULL, '127.0.0.1', 'login', 'index', '2016-12-19', '10:15:53'),
(35, NULL, '127.0.0.1', 'app', 'index', '2016-12-19', '10:16:01'),
(36, NULL, '127.0.0.1', 'login', 'index', '2016-12-19', '10:16:13'),
(37, NULL, '127.0.0.1', 'login', 'index', '2016-12-19', '10:16:30'),
(38, NULL, '127.0.0.1', 'login', 'index', '2016-12-19', '10:16:37'),
(39, NULL, '127.0.0.1', 'principal', 'index', '2016-12-19', '10:16:40'),
(40, NULL, '127.0.0.1', 'app', 'index', '2016-12-19', '10:16:45'),
(41, NULL, '127.0.0.1', 'faceblocked', 'index', '2016-12-19', '10:17:04'),
(42, NULL, '127.0.0.1', 'faceblocked', 'traer_datos_ci', '2016-12-19', '10:17:11'),
(43, NULL, '127.0.0.1', 'principal', 'index', '2016-12-19', '10:17:16'),
(44, NULL, '127.0.0.1', 'faceblocked', 'index', '2016-12-19', '10:17:26'),
(45, NULL, '127.0.0.1', 'registro', 'index', '2017-01-21', '21:14:54'),
(46, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:15:04'),
(47, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:21:21'),
(48, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:22:27'),
(49, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:23:04'),
(50, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:23:23'),
(51, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:27:58'),
(52, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:33:48'),
(53, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:39:18'),
(54, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:41:27'),
(55, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:47:38'),
(56, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:48:56'),
(57, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:50:12'),
(58, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:51:15'),
(59, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:53:03'),
(60, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:54:54'),
(61, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:55:08'),
(62, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:55:30'),
(63, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '21:59:59'),
(64, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:18:58'),
(65, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:23:19'),
(66, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:23:27'),
(67, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:23:27'),
(68, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:23:28'),
(69, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:24:24'),
(70, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:25:14'),
(71, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:26:56'),
(72, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:28:42'),
(73, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:29:59'),
(74, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:32:17'),
(75, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:33:16'),
(76, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:34:13'),
(77, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:41:01'),
(78, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:42:27'),
(79, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:43:02'),
(80, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:43:39'),
(81, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:44:11'),
(82, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:49:29'),
(83, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:49:59'),
(84, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:55:06'),
(85, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:55:51'),
(86, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:57:55'),
(87, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '22:58:42'),
(88, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:03:29'),
(89, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:04:07'),
(90, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:05:45'),
(91, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:08:07'),
(92, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:12:11'),
(93, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:13:00'),
(94, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:17:55'),
(95, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:19:48'),
(96, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:20:01'),
(97, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:21:31'),
(98, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:22:03'),
(99, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:22:10'),
(100, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:23:06'),
(101, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:23:56'),
(102, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:24:24'),
(103, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:24:58'),
(104, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:28:00'),
(105, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:28:51'),
(106, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:31:52'),
(107, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:33:49'),
(108, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:34:22'),
(109, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-21', '23:34:49'),
(110, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-21', '23:35:25'),
(111, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-21', '23:36:26'),
(112, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:36:48'),
(113, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-21', '23:36:51'),
(114, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:36:53'),
(115, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-21', '23:37:11'),
(116, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-21', '23:45:18'),
(117, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:05:49'),
(118, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:06:21'),
(119, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:07:10'),
(120, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:07:37'),
(121, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:08:01'),
(122, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:08:48'),
(123, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:09:17'),
(124, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:09:54'),
(125, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:16:25'),
(126, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:18:41'),
(127, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:19:16'),
(128, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:22:45'),
(129, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:23:38'),
(130, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:28:42'),
(131, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:29:31'),
(132, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:29:35'),
(133, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:30:32'),
(134, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:31:33'),
(135, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:31:56'),
(136, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:33:01'),
(137, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:34:18'),
(138, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:35:02'),
(139, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:37:22'),
(140, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:38:37'),
(141, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:39:03'),
(142, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:40:51'),
(143, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:40:52'),
(144, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:41:22'),
(145, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:42:23'),
(146, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:43:08'),
(147, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:43:23'),
(148, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:43:26'),
(149, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:43:45'),
(150, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:44:58'),
(151, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:45:01'),
(152, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:45:22'),
(153, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:46:06'),
(154, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:46:32'),
(155, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:47:55'),
(156, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:48:17'),
(157, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:49:24'),
(158, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:50:13'),
(159, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:50:44'),
(160, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '00:51:07'),
(161, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '00:51:56'),
(162, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:02:12'),
(163, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:02:34'),
(164, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:06:06'),
(165, 1, '127.0.0.1', 'registro', 'index', '2017-01-22', '01:06:08'),
(166, 1, '127.0.0.1', 'principal', 'index', '2017-01-22', '01:06:10'),
(167, 1, '127.0.0.1', 'principal', 'js', '2017-01-22', '01:06:11'),
(168, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:06:38'),
(169, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:06:57'),
(170, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:08:08'),
(171, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:08:30'),
(172, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:09:41'),
(173, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:10:19'),
(174, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:16:22'),
(175, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:17:48'),
(176, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:18:34'),
(177, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:19:51'),
(178, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:26:18'),
(179, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:27:37'),
(180, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:30:01'),
(181, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:30:30'),
(182, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:30:34'),
(183, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:32:06'),
(184, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:32:25'),
(185, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:36:16'),
(186, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:36:20'),
(187, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:36:29'),
(188, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:37:16'),
(189, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:37:30'),
(190, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:37:38'),
(191, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:38:01'),
(192, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:39:22'),
(193, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:48:31'),
(194, 1, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '01:48:39'),
(195, 1, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '01:50:11'),
(196, NULL, '127.0.0.1', 'faceblocked', 'index', '2017-01-22', '09:31:11'),
(197, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-22', '09:31:22'),
(198, NULL, '127.0.0.1', 'registro', 'guardar_publicacion', '2017-01-22', '09:33:39'),
(199, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:33:49'),
(200, NULL, '127.0.0.1', 'principal', 'js', '2017-01-22', '09:33:49'),
(201, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:34:22'),
(202, NULL, '127.0.0.1', 'principal', 'js', '2017-01-22', '09:34:22'),
(203, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:34:45'),
(204, NULL, '127.0.0.1', 'principal', 'js', '2017-01-22', '09:34:45'),
(205, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:35:39'),
(206, NULL, '127.0.0.1', 'principal', 'js', '2017-01-22', '09:35:39'),
(207, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:36:25'),
(208, NULL, '127.0.0.1', 'principal', 'js', '2017-01-22', '09:36:25'),
(209, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:39:45'),
(210, NULL, '127.0.0.1', 'principal', 'js', '2017-01-22', '09:39:45'),
(211, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:47:32'),
(212, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:54:31'),
(213, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:55:20'),
(214, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '09:57:36'),
(215, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:02:20'),
(216, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:40:49'),
(217, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:44:28'),
(218, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:46:17'),
(219, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:47:27'),
(220, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:47:35'),
(221, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:48:24'),
(222, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:48:40'),
(223, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:50:01'),
(224, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:51:08'),
(225, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:52:23'),
(226, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:52:36'),
(227, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:53:50'),
(228, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:55:16'),
(229, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:55:54'),
(230, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:56:34'),
(231, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:57:00'),
(232, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:57:32'),
(233, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:58:31'),
(234, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '10:59:27'),
(235, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '11:00:42'),
(236, NULL, '127.0.0.1', 'principal', 'index', '2017-01-22', '11:01:33'),
(237, NULL, '127.0.0.1', 'faceblocked', 'index', '2017-01-23', '16:29:52'),
(238, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '16:30:01'),
(239, NULL, '127.0.0.1', 'principal', 'js', '2017-01-23', '16:30:01'),
(240, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '16:40:17'),
(241, NULL, '127.0.0.1', 'faceblocked', 'index', '2017-01-23', '16:40:50'),
(242, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '16:41:02'),
(243, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '16:48:16'),
(244, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '16:49:32'),
(245, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:07:30'),
(246, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:11:55'),
(247, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:14:35'),
(248, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:14:45'),
(249, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:14:56'),
(250, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:15:54'),
(251, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:15:58'),
(252, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:16:06'),
(253, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:25:27'),
(254, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:26:18'),
(255, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:33:20'),
(256, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:33:29'),
(257, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:33:46'),
(258, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:33:49'),
(259, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:34:26'),
(260, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:34:34'),
(261, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '17:35:42'),
(262, NULL, '127.0.0.1', 'principal', 'js', '2017-01-23', '17:35:42'),
(263, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '18:57:55'),
(264, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '18:59:00'),
(265, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '18:59:42'),
(266, NULL, '127.0.0.1', 'principal', 'js', '2017-01-23', '18:59:42'),
(267, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-23', '19:01:14'),
(268, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-23', '19:07:47'),
(269, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '19:12:42'),
(270, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '19:12:42'),
(271, NULL, '127.0.0.1', 'principal', 'js', '2017-01-23', '19:12:43'),
(272, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '19:12:56'),
(273, NULL, '127.0.0.1', 'principal', 'js', '2017-01-23', '19:12:56'),
(274, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '19:16:16'),
(275, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '19:19:25'),
(276, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '19:33:31'),
(277, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '19:35:10'),
(278, NULL, '127.0.0.1', 'registro', 'nenas', '2017-01-23', '19:35:32'),
(279, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '20:55:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `enlace` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id_permisos` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `permiso` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `peso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id_role`, `role`, `peso`) VALUES
(1, 'admin_sistem', 1),
(4, 'anonimo', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_role` int(11) NOT NULL DEFAULT '2',
  `login` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_role`, `login`, `password`, `estado`) VALUES
(1, 1, 'admin', '53362d5ea52a28e1a960323ea19b02cb2b828026', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video_chica`
--

CREATE TABLE `video_chica` (
  `id_video` int(11) NOT NULL,
  `id_chicas` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agencia`
--
ALTER TABLE `agencia`
  ADD PRIMARY KEY (`id_agencia`),
  ADD UNIQUE KEY `nombre_agencia` (`nombre_agencia`);

--
-- Indices de la tabla `chicas`
--
ALTER TABLE `chicas`
  ADD PRIMARY KEY (`id_chicas`),
  ADD KEY `id_agencia` (`id_agencia`);

--
-- Indices de la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `id_chicas` (`id_chicas`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id_permisos`),
  ADD KEY `id_menu` (`id_menu`,`id_role`),
  ADD KEY `id_role` (`id_role`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_role_2` (`id_role`),
  ADD KEY `id_role_3` (`id_role`),
  ADD KEY `id_role_4` (`id_role`),
  ADD KEY `id_role_5` (`id_role`);

--
-- Indices de la tabla `video_chica`
--
ALTER TABLE `video_chica`
  ADD PRIMARY KEY (`id_video`),
  ADD KEY `id_chicas` (`id_chicas`),
  ADD KEY `id_chicas_2` (`id_chicas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agencia`
--
ALTER TABLE `agencia`
  MODIFY `id_agencia` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `chicas`
--
ALTER TABLE `chicas`
  MODIFY `id_chicas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `video_chica`
--
ALTER TABLE `video_chica`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chicas`
--
ALTER TABLE `chicas`
  ADD CONSTRAINT `chicas_ibfk_1` FOREIGN KEY (`id_agencia`) REFERENCES `agencia` (`id_agencia`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Filtros para la tabla `video_chica`
--
ALTER TABLE `video_chica`
  ADD CONSTRAINT `video_chica_ibfk_1` FOREIGN KEY (`id_chicas`) REFERENCES `chicas` (`id_chicas`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
