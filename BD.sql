-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2017 a las 19:49:15
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencia`
--

CREATE TABLE IF NOT EXISTS `agencia` (
`id_agencia` int(11) NOT NULL,
  `nombre_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nro_contacto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `correo_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `facebook_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pin_agencia` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `whatsapp_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `agencia`
--

INSERT INTO `agencia` (`id_agencia`, `nombre_agencia`, `nro_contacto`, `correo_agencia`, `facebook_agencia`, `pin_agencia`, `whatsapp_agencia`) VALUES
(1, 'BADGIRL', '2147483647', 'BADGIRL@CUMANAX.COM', '0', '5748RAS', '2147483647'),
(2, 'Independiente', '2147483647', 'independiente@gmail.com', '0', '', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chicas`
--

CREATE TABLE IF NOT EXISTS `chicas` (
`id_chicas` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `chicas`
--

INSERT INTO `chicas` (`id_chicas`, `nombre_chicas`, `fecha_nacimiento`, `destrezas`, `especialidad`, `estatura`, `medidas`, `peso`, `color_cabello`, `color_ojos`, `color_piel`, `tlf`, `publico`, `horario`, `localidad`, `email`, `bbm`, `whatsapp`, `facebook`, `instagram`, `twitter`, `preview`, `id_agencia`) VALUES
(1, 'ASHLEY', '1992-02-02', 'FLEXIBLE 100%, ATREVIDA', 'RUSO, GRIEGO, FETICHES', '1.70', '92-62-121', '71', 'ROJO', 'VERDES', 'CATIRA', '04145417743', 'HOMBRES - MUJERES - PAREJAS', '24 HORAS', 'MATURIN', 'ashleylinda@gmail.com', '54CFD32', '+584145417743', 'ASHLEY ATREVIDITAX', '@ASHLEYOFFICIAL', '@ASHLEYOFFICIAL', 'ME GUSTA EL SADOMASOQUISMO, DESPUES DE ESTAR CONMIGO ESTOY SEGURA QUE A TI TAMBIEN TE GUSTARá.', 2),
(2, 'Susana', '1990-02-24', 'Mamadora', '69', '1.80', '90-60-90', '57', 'Castaño Claro', 'Ambar', 'Blanca', '04168975549', 'HOMBRES - MUJERES - ', '24 Horas', 'Margarita', 'Susana@hotmail.com', '3284jkds', '+584168975549', 'Susana Marcano', '@susy', '', 'Dskgjsdfl Asdkfjlkads Sadfklj Dsafklj Fdsaikjdfsa Efadkkja Dsfafkjkl Dfsik Fak Dsfasdaf Afdsfad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_chicas`
--

CREATE TABLE IF NOT EXISTS `fotos_chicas` (
`id_foto` int(11) NOT NULL,
  `id_chicas` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fotos_chicas`
--

INSERT INTO `fotos_chicas` (`id_foto`, `id_chicas`, `nombre_foto`) VALUES
(10, 1, 'cumanax58927965c7eef9.jpg'),
(11, 1, 'cumanax58927965d194514.jpg'),
(12, 1, 'cumanax58927965d48fb15.jpg'),
(13, 1, 'cumanax58927965df71b16.jpg'),
(14, 1, 'cumanax58927965e286b17.jpg'),
(15, 1, 'cumanax58927965e566028.jpg'),
(16, 2, 'cumanax589376993596311.jpg'),
(17, 2, 'cumanax5893769938f8212.jpg'),
(18, 2, 'cumanax58937699449ff14.jpg'),
(19, 2, 'cumanax589376995802615.jpg'),
(20, 2, 'cumanax589376996988316.jpg'),
(21, 2, 'cumanax589376996c5a017.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=latin1;

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
(279, NULL, '127.0.0.1', 'principal', 'index', '2017-01-23', '20:55:01'),
(307, NULL, '::1', 'nina', 'index', '2017-01-30', '15:26:13'),
(308, NULL, '::1', 'nina', 'index', '2017-01-30', '15:26:16'),
(309, NULL, '::1', 'nina', 'index', '2017-01-30', '15:26:58'),
(310, NULL, '::1', 'nina', 'index', '2017-01-30', '15:28:40'),
(311, NULL, '::1', 'nina', 'index', '2017-01-30', '15:29:13'),
(312, NULL, '::1', 'nina', 'index', '2017-01-30', '15:30:05'),
(313, NULL, '::1', 'nina', 'index', '2017-01-30', '15:30:36'),
(314, NULL, '::1', 'nina', 'index', '2017-01-30', '15:30:38'),
(315, NULL, '::1', 'nina', 'index', '2017-01-30', '15:44:04'),
(316, NULL, '::1', 'nina', 'index', '2017-01-30', '15:44:06'),
(317, NULL, '::1', 'nina', 'index', '2017-01-30', '15:44:08'),
(318, NULL, '::1', 'nina', 'index', '2017-01-30', '15:44:09'),
(319, NULL, '::1', 'nina', 'index', '2017-01-30', '15:44:25'),
(320, NULL, '::1', 'nina', 'index', '2017-01-30', '15:44:38'),
(321, NULL, '::1', 'nina', 'index', '2017-01-30', '15:44:41'),
(322, NULL, '::1', 'nina', 'index', '2017-01-30', '15:45:02'),
(323, NULL, '::1', 'nina', 'index', '2017-01-30', '15:45:20'),
(324, NULL, '::1', 'nina', 'index', '2017-01-30', '15:46:12'),
(325, NULL, '::1', 'nina', 'index', '2017-01-30', '15:46:59'),
(326, NULL, '::1', 'nina', 'index', '2017-01-30', '15:47:21'),
(327, NULL, '::1', 'nina', 'index', '2017-01-30', '15:47:24'),
(328, NULL, '::1', 'nina', 'index', '2017-01-30', '15:48:19'),
(329, NULL, '::1', 'nina', 'index', '2017-01-30', '15:48:43'),
(330, NULL, '::1', 'nina', 'index', '2017-01-30', '15:49:19'),
(331, NULL, '::1', 'nina', 'index', '2017-01-30', '15:50:08'),
(332, NULL, '::1', 'nina', 'index', '2017-01-30', '15:51:01'),
(333, NULL, '::1', 'nina', 'index', '2017-01-30', '15:51:21'),
(334, NULL, '::1', 'nina', 'index', '2017-01-30', '15:51:43'),
(335, NULL, '::1', 'nina', 'index', '2017-01-30', '15:52:20'),
(336, NULL, '::1', 'nina', 'index', '2017-01-30', '15:53:25'),
(337, NULL, '::1', 'nina', 'index', '2017-01-30', '15:55:13'),
(338, NULL, '::1', 'nina', 'index', '2017-01-30', '15:55:59'),
(339, NULL, '::1', 'nina', 'index', '2017-01-30', '15:56:10'),
(340, NULL, '::1', 'nina', 'index', '2017-01-30', '15:56:21'),
(341, NULL, '::1', 'nina', 'index', '2017-01-30', '15:56:31'),
(342, NULL, '::1', 'nina', 'index', '2017-01-30', '15:58:08'),
(343, NULL, '::1', 'nina', 'index', '2017-01-30', '15:59:38'),
(344, NULL, '::1', 'nina', 'index', '2017-01-30', '15:59:53'),
(345, NULL, '::1', 'nina', 'index', '2017-01-30', '16:00:25'),
(346, NULL, '::1', 'nina', 'index', '2017-01-30', '16:01:00'),
(347, NULL, '::1', 'nina', 'index', '2017-01-30', '16:01:12'),
(348, NULL, '::1', 'nina', 'index', '2017-01-30', '16:02:08'),
(349, NULL, '::1', 'nina', 'index', '2017-01-30', '16:04:37'),
(350, NULL, '::1', 'nina', 'index', '2017-01-30', '16:05:06'),
(351, NULL, '::1', 'nina', 'index', '2017-01-30', '16:06:09'),
(352, NULL, '::1', 'nina', 'index', '2017-01-30', '16:07:17'),
(353, NULL, '::1', 'nina', 'index', '2017-01-30', '16:07:32'),
(354, NULL, '::1', 'nina', 'index', '2017-01-30', '16:09:19'),
(355, NULL, '::1', 'nina', 'index', '2017-01-30', '16:09:35'),
(356, NULL, '::1', 'aviso', 'index', '2017-01-30', '16:10:32'),
(357, NULL, '::1', 'nina', 'index', '2017-01-30', '16:11:35'),
(358, NULL, '::1', 'nina', 'index', '2017-01-30', '16:11:38'),
(359, NULL, '::1', 'nina', 'index', '2017-01-30', '16:13:51'),
(360, NULL, '::1', 'nina', 'index', '2017-01-30', '16:16:26'),
(361, NULL, '::1', 'nina', 'index', '2017-01-30', '16:18:46'),
(362, NULL, '::1', 'nina', 'index', '2017-01-30', '16:18:50'),
(363, NULL, '::1', 'nina', 'index', '2017-01-30', '16:20:37'),
(364, NULL, '::1', 'nina', 'index', '2017-01-30', '16:21:42'),
(365, NULL, '::1', 'nina', 'index', '2017-01-30', '16:22:19'),
(366, NULL, '::1', 'nina', 'index', '2017-01-30', '16:23:47'),
(367, NULL, '::1', 'nina', 'index', '2017-01-30', '16:24:25'),
(368, NULL, '::1', 'nina', 'index', '2017-01-30', '16:25:07'),
(369, NULL, '::1', 'nina', 'index', '2017-01-30', '16:25:19'),
(370, NULL, '::1', 'nina', 'index', '2017-01-30', '16:25:35'),
(371, NULL, '::1', 'nina', 'index', '2017-01-30', '16:25:54'),
(372, NULL, '::1', 'nina', 'index', '2017-01-30', '16:26:43'),
(373, NULL, '::1', 'nina', 'index', '2017-01-30', '16:26:47'),
(374, NULL, '::1', 'nina', 'index', '2017-01-30', '16:27:08'),
(375, NULL, '::1', 'nina', 'index', '2017-01-30', '16:27:11'),
(376, NULL, '::1', 'nina', 'index', '2017-01-30', '16:27:20'),
(377, NULL, '::1', 'nina', 'index', '2017-01-30', '16:27:24'),
(378, NULL, '::1', 'nina', 'index', '2017-01-30', '16:28:02'),
(379, NULL, '::1', 'nina', 'index', '2017-01-30', '16:30:23'),
(380, NULL, '::1', 'nina', 'index', '2017-01-30', '16:31:00'),
(381, NULL, '::1', 'nina', 'index', '2017-01-30', '16:32:09'),
(382, NULL, '::1', 'nina', 'index', '2017-01-30', '16:33:55'),
(383, NULL, '::1', 'nina', 'index', '2017-01-30', '16:35:03'),
(384, NULL, '::1', 'nina', 'index', '2017-01-30', '16:36:41'),
(385, NULL, '::1', 'nina', 'index', '2017-01-30', '16:37:17'),
(386, NULL, '::1', 'nina', 'index', '2017-01-30', '16:38:21'),
(387, NULL, '::1', 'nina', 'index', '2017-01-30', '16:39:23'),
(388, NULL, '::1', 'nina', 'index', '2017-01-30', '16:46:12'),
(389, NULL, '::1', 'nina', 'index', '2017-01-30', '16:46:36'),
(390, NULL, '::1', 'nina', 'index', '2017-01-30', '16:46:39'),
(391, NULL, '::1', 'nina', 'index', '2017-01-30', '16:46:51'),
(392, NULL, '::1', 'aviso', 'index', '2017-01-30', '16:47:51'),
(393, NULL, '::1', 'legal', 'index', '2017-01-30', '16:47:56'),
(394, NULL, '::1', 'principal', 'index', '2017-01-30', '16:47:59'),
(395, NULL, '::1', 'nina', 'index', '2017-01-30', '16:50:04'),
(396, NULL, '::1', 'nina', 'index', '2017-01-30', '16:51:19'),
(397, NULL, '::1', 'nina', 'index', '2017-01-30', '16:52:04'),
(398, NULL, '::1', 'nina', 'index', '2017-01-30', '16:52:59'),
(399, NULL, '::1', 'nina', 'index', '2017-01-30', '16:53:19'),
(400, NULL, '::1', 'nina', 'index', '2017-01-30', '16:53:21'),
(401, NULL, '::1', 'nina', 'index', '2017-01-30', '16:53:31'),
(402, NULL, '::1', 'nina', 'index', '2017-01-30', '16:53:54'),
(403, NULL, '::1', 'nina', 'index', '2017-01-30', '16:55:53'),
(404, NULL, '::1', 'nina', 'index', '2017-01-30', '16:56:27'),
(405, NULL, '::1', 'nina', 'index', '2017-01-30', '16:56:46'),
(406, NULL, '::1', 'nina', 'index', '2017-01-30', '16:56:59'),
(407, NULL, '::1', 'nina', 'index', '2017-01-30', '16:57:57'),
(408, NULL, '::1', 'nina', 'index', '2017-01-30', '17:02:23'),
(409, NULL, '::1', 'nina', 'index', '2017-01-30', '17:09:19'),
(410, NULL, '::1', 'nina', 'index', '2017-01-30', '17:10:00'),
(411, NULL, '::1', 'nina', 'index', '2017-01-30', '17:10:33'),
(412, NULL, '::1', 'nina', 'index', '2017-01-30', '17:11:40'),
(413, NULL, '::1', 'nina', 'index', '2017-01-30', '17:15:05'),
(414, NULL, '::1', 'nina', 'index', '2017-01-30', '17:16:10'),
(415, NULL, '::1', 'nina', 'index', '2017-01-30', '17:16:31'),
(416, NULL, '::1', 'nina', 'index', '2017-01-30', '17:16:46'),
(417, NULL, '::1', 'nina', 'index', '2017-01-30', '17:17:27'),
(418, NULL, '::1', 'nina', 'index', '2017-01-30', '17:18:01'),
(419, NULL, '::1', 'nina', 'index', '2017-01-30', '17:18:58'),
(420, NULL, '::1', 'nina', 'index', '2017-01-30', '17:19:43'),
(421, NULL, '::1', 'nina', 'index', '2017-01-30', '17:20:32'),
(422, NULL, '::1', 'nina', 'index', '2017-01-30', '17:22:07'),
(423, NULL, '::1', 'nina', 'index', '2017-01-30', '17:22:14'),
(424, NULL, '::1', 'nina', 'index', '2017-01-30', '17:22:30'),
(425, NULL, '::1', 'nina', 'index', '2017-01-30', '17:23:11'),
(426, NULL, '::1', 'nina', 'index', '2017-01-30', '17:23:51'),
(427, NULL, '::1', 'nina', 'index', '2017-01-30', '17:27:29'),
(428, NULL, '::1', 'nina', 'index', '2017-01-30', '17:28:34'),
(429, NULL, '::1', 'nina', 'index', '2017-01-30', '17:28:51'),
(430, NULL, '::1', 'nina', 'index', '2017-01-30', '17:29:59'),
(431, NULL, '::1', 'nina', 'index', '2017-01-30', '17:30:33'),
(432, NULL, '::1', 'nina', 'index', '2017-01-30', '17:32:31'),
(433, NULL, '::1', 'nina', 'index', '2017-01-30', '17:33:26'),
(434, NULL, '::1', 'nina', 'index', '2017-01-30', '17:33:43'),
(435, NULL, '::1', 'nina', 'index', '2017-01-30', '17:34:17'),
(436, NULL, '::1', 'nina', 'index', '2017-01-30', '17:35:01'),
(437, NULL, '::1', 'nina', 'index', '2017-01-30', '17:37:42'),
(438, NULL, '::1', 'nina', 'index', '2017-01-30', '17:40:00'),
(439, NULL, '::1', 'nina', 'index', '2017-01-30', '17:42:02'),
(440, NULL, '::1', 'nina', 'index', '2017-01-30', '17:42:08'),
(441, NULL, '::1', 'nina', 'index', '2017-01-30', '17:42:12'),
(442, NULL, '::1', 'nina', 'index', '2017-01-30', '17:43:05'),
(443, NULL, '::1', 'nina', 'index', '2017-01-30', '17:43:09'),
(444, NULL, '::1', 'nina', 'index', '2017-01-30', '17:43:47'),
(445, NULL, '::1', 'nina', 'index', '2017-01-30', '17:45:29'),
(446, NULL, '::1', 'nina', 'index', '2017-01-30', '17:48:15'),
(447, NULL, '::1', 'nina', 'index', '2017-01-30', '17:48:33'),
(448, NULL, '::1', 'nina', 'index', '2017-01-30', '17:48:43'),
(449, NULL, '::1', 'nina', 'index', '2017-01-30', '17:48:53'),
(450, NULL, '::1', 'nina', 'index', '2017-01-30', '17:51:48'),
(451, NULL, '::1', 'nina', 'index', '2017-01-30', '17:53:40'),
(452, NULL, '::1', 'nina', 'index', '2017-01-30', '17:53:56'),
(453, NULL, '::1', 'nina', 'index', '2017-01-30', '17:55:41'),
(454, NULL, '::1', 'nina', 'index', '2017-01-30', '17:55:56'),
(455, NULL, '::1', 'nina', 'index', '2017-01-30', '18:44:50'),
(456, NULL, '::1', 'nina', 'index', '2017-01-30', '18:47:21'),
(457, NULL, '::1', 'nina', 'index', '2017-01-30', '18:47:41'),
(458, NULL, '::1', 'nina', 'index', '2017-01-30', '18:48:07'),
(459, NULL, '::1', 'nina', 'index', '2017-01-30', '18:50:58'),
(460, NULL, '::1', 'nina', 'index', '2017-01-30', '18:51:39'),
(461, NULL, '::1', 'nina', 'index', '2017-01-30', '18:52:06'),
(462, NULL, '::1', 'nina', 'index', '2017-01-30', '18:52:27'),
(463, NULL, '::1', 'nina', 'index', '2017-01-30', '18:53:02'),
(464, NULL, '::1', 'nina', 'index', '2017-01-30', '18:53:17'),
(465, NULL, '::1', 'nina', 'index', '2017-01-30', '18:53:38'),
(466, NULL, '::1', 'nina', 'index', '2017-01-30', '18:54:05'),
(467, NULL, '::1', 'nina', 'index', '2017-01-30', '18:54:19'),
(468, NULL, '::1', 'nina', 'index', '2017-01-30', '18:54:26'),
(469, NULL, '::1', 'nina', 'index', '2017-01-30', '18:55:14'),
(470, NULL, '::1', 'nina', 'index', '2017-01-30', '18:56:22'),
(471, NULL, '::1', 'nina', 'index', '2017-01-30', '18:57:33'),
(472, NULL, '::1', 'nina', 'index', '2017-01-30', '18:59:46'),
(473, NULL, '::1', 'nina', 'index', '2017-01-30', '18:59:52'),
(474, NULL, '::1', 'aviso', 'index', '2017-01-30', '18:59:54'),
(475, NULL, '::1', 'legal', 'index', '2017-01-30', '18:59:56'),
(476, NULL, '::1', 'principal', 'index', '2017-01-30', '18:59:58'),
(477, NULL, '::1', 'nina', 'index.phtml', '2017-01-30', '19:00:01'),
(478, NULL, '::1', 'nina', 'index', '2017-01-30', '19:00:12'),
(479, NULL, '::1', 'anunciate', 'index', '2017-01-30', '19:03:03'),
(480, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:04:25'),
(481, NULL, '::1', 'registro', 'guardar_agencia', '2017-01-30', '19:05:37'),
(482, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:05:37'),
(483, NULL, '::1', 'principal', 'index', '2017-01-30', '19:05:43'),
(484, NULL, '::1', 'registro', 'nenas', '2017-01-30', '19:06:52'),
(485, NULL, '::1', 'registro', 'guardar_publicacion', '2017-01-30', '19:08:08'),
(486, NULL, '::1', 'registro', 'guardar_publicacion', '2017-01-30', '19:10:25'),
(487, NULL, '::1', 'registro', 'nenas', '2017-01-30', '19:10:25'),
(488, NULL, '::1', 'registro', 'index', '2017-01-30', '19:10:36'),
(489, NULL, '::1', 'aviso', 'index', '2017-01-30', '19:11:02'),
(490, NULL, '::1', 'legal', 'index', '2017-01-30', '19:11:06'),
(491, NULL, '::1', 'principal', 'index', '2017-01-30', '19:11:23'),
(492, NULL, '::1', 'principal', 'index', '2017-01-30', '19:12:19'),
(493, NULL, '::1', 'principal', 'index', '2017-01-30', '19:13:25'),
(494, NULL, '::1', 'principal', 'index', '2017-01-30', '19:15:01'),
(495, NULL, '::1', 'principal', 'index', '2017-01-30', '19:15:26'),
(496, NULL, '::1', 'nina', 'index.phtml', '2017-01-30', '19:15:39'),
(497, NULL, '::1', 'principal', 'index', '2017-01-30', '19:15:41'),
(498, NULL, '::1', 'aviso', 'index', '2017-01-30', '19:19:30'),
(499, NULL, '::1', 'aviso', 'index', '2017-01-30', '19:21:52'),
(500, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:22:03'),
(501, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:22:39'),
(502, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:25:56'),
(503, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:26:06'),
(504, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:31:31'),
(505, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:31:40'),
(506, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:33:17'),
(507, NULL, '::1', 'registro', 'agencias', '2017-01-30', '19:34:58'),
(508, NULL, '::1', 'principal', 'index', '2017-01-30', '19:35:11'),
(509, NULL, '::1', 'nina', 'index', '2017-01-30', '19:35:30'),
(510, NULL, '::1', 'nina', 'index', '2017-01-30', '19:36:43'),
(511, NULL, '::1', 'nina', 'index', '2017-01-30', '19:38:15'),
(512, NULL, '::1', 'nina', 'index', '2017-01-30', '19:41:18'),
(513, NULL, '::1', 'nina', 'index', '2017-01-30', '19:43:35'),
(514, NULL, '::1', 'nina', 'index', '2017-01-30', '19:43:38'),
(515, NULL, '::1', 'nina', 'index', '2017-01-30', '19:44:56'),
(516, NULL, '::1', 'nina', 'index', '2017-01-30', '19:46:22'),
(517, NULL, '::1', 'nina', 'index', '2017-01-30', '19:47:34'),
(518, NULL, '::1', 'nina', 'index', '2017-01-30', '19:47:47'),
(519, NULL, '::1', 'nina', 'index', '2017-01-30', '19:47:49'),
(520, NULL, '::1', 'nina', 'index', '2017-01-30', '19:48:01'),
(521, NULL, '::1', 'nina', 'index', '2017-01-30', '20:03:49'),
(522, NULL, '::1', 'aviso', 'index', '2017-01-30', '20:03:51'),
(523, NULL, '::1', 'legal', 'index', '2017-01-30', '20:03:53'),
(524, NULL, '::1', 'principal', 'index', '2017-01-30', '20:03:59'),
(525, NULL, '::1', 'nina', 'index.phtml', '2017-01-30', '20:04:02'),
(526, NULL, '::1', 'nina', 'index.phtml', '2017-01-30', '20:04:13'),
(527, NULL, '::1', 'nina', 'index.phtml', '2017-01-30', '20:04:51'),
(528, NULL, '::1', 'nina', 'index.phtml', '2017-01-30', '20:09:41'),
(529, NULL, '::1', 'nina', 'index.phtml', '2017-01-30', '20:09:51'),
(530, NULL, '::1', 'principal', 'index', '2017-01-30', '20:09:55'),
(531, NULL, '::1', 'aviso', 'index', '2017-02-01', '18:25:39'),
(532, NULL, '::1', 'legal', 'index', '2017-02-01', '18:25:41'),
(533, NULL, '::1', 'principal', 'index', '2017-02-01', '18:25:44'),
(534, NULL, '::1', 'app', 'index', '2017-02-01', '18:26:14'),
(535, NULL, '::1', 'app', 'permisos_ch', '2017-02-01', '18:26:18'),
(536, NULL, '::1', 'app', 'permisos_ch', '2017-02-01', '18:26:19'),
(537, NULL, '::1', 'app', 'permisos_ch', '2017-02-01', '18:26:20'),
(538, NULL, '::1', 'app', 'permisos_ch', '2017-02-01', '18:26:21'),
(539, NULL, '::1', 'aviso', 'index', '2017-02-01', '18:26:25'),
(540, NULL, '::1', 'legal', 'index', '2017-02-01', '18:26:27'),
(541, NULL, '::1', 'principal', 'index', '2017-02-01', '18:26:30'),
(542, NULL, '::1', 'principal', 'index', '2017-02-01', '18:27:27'),
(543, NULL, '::1', 'principal', 'index', '2017-02-01', '18:28:35'),
(544, NULL, '::1', 'principal', 'index', '2017-02-01', '18:29:10'),
(545, NULL, '::1', 'principal', 'index', '2017-02-01', '18:29:13'),
(546, NULL, '::1', 'app', 'index', '2017-02-01', '18:29:23'),
(547, NULL, '::1', 'app', 'permisos_ch', '2017-02-01', '18:29:25'),
(548, NULL, '::1', 'app', 'index', '2017-02-01', '18:29:27'),
(549, NULL, '::1', 'aviso', 'index', '2017-02-01', '18:29:30'),
(550, NULL, '::1', 'legal', 'index', '2017-02-01', '18:29:32'),
(551, NULL, '::1', 'principal', 'index', '2017-02-01', '18:29:34'),
(552, NULL, '::1', 'anunciate', 'index', '2017-02-01', '18:30:25'),
(553, NULL, '::1', 'anunciate', 'index', '2017-02-01', '18:30:27'),
(554, NULL, '::1', 'anunciate', 'index', '2017-02-01', '18:30:28'),
(555, NULL, '::1', 'anunciate', 'index', '2017-02-01', '18:30:30'),
(556, NULL, '::1', 'anunciate', 'index', '2017-02-01', '18:30:31'),
(557, NULL, '::1', 'principal', 'index', '2017-02-01', '18:30:32'),
(558, NULL, '::1', 'principal', 'index', '2017-02-01', '18:31:39'),
(559, NULL, '::1', 'principal', 'index', '2017-02-01', '18:31:41'),
(560, NULL, '::1', 'principal', 'index', '2017-02-01', '18:32:12'),
(561, NULL, '::1', 'principal', 'index', '2017-02-01', '18:33:26'),
(562, NULL, '::1', 'nina', 'index', '2017-02-01', '18:33:27'),
(563, NULL, '::1', 'aviso', 'index', '2017-02-01', '18:35:56'),
(564, NULL, '::1', 'legal', 'index', '2017-02-01', '18:36:13'),
(565, NULL, '::1', 'principal', 'index', '2017-02-01', '18:36:16'),
(566, NULL, '::1', 'nina', 'index', '2017-02-01', '18:36:53'),
(567, NULL, '::1', 'nina', 'index', '2017-02-01', '18:37:38'),
(568, NULL, '::1', 'principal', 'index', '2017-02-01', '18:44:10'),
(569, NULL, '::1', 'nina', 'index', '2017-02-01', '18:44:24'),
(570, NULL, '::1', 'principal', 'index', '2017-02-01', '18:52:38'),
(571, NULL, '::1', 'registro', 'nenas', '2017-02-01', '18:56:05'),
(572, NULL, '::1', 'aviso', 'index', '2017-02-01', '19:02:10'),
(573, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:02:16'),
(574, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-01', '19:05:15'),
(575, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:05:15'),
(576, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:08:16'),
(577, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:08:59'),
(578, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:10:22'),
(579, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:14:43'),
(580, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:18:52'),
(581, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:00'),
(582, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:16'),
(583, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:18'),
(584, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:18'),
(585, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:18'),
(586, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:42'),
(587, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:43'),
(588, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:43'),
(589, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:44'),
(590, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:44'),
(591, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:45'),
(592, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:45'),
(593, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:45'),
(594, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:45'),
(595, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:45'),
(596, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:46'),
(597, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:46'),
(598, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:46'),
(599, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:46'),
(600, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:46'),
(601, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:47'),
(602, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:19:47'),
(603, NULL, '::1', 'principal', 'index', '2017-02-01', '19:20:03'),
(604, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:20:21'),
(605, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:23:12'),
(606, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:23:33'),
(607, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:23:37'),
(608, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:23:39'),
(609, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:23:42'),
(610, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:24:22'),
(611, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:24:42'),
(612, NULL, '::1', 'principal', 'index', '2017-02-01', '19:30:13'),
(613, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:41:37'),
(614, NULL, '::1', 'principal', 'index', '2017-02-01', '19:41:42'),
(615, NULL, '::1', 'principal', 'index', '2017-02-01', '19:43:46'),
(616, NULL, '::1', 'principal', 'index', '2017-02-01', '19:43:58'),
(617, NULL, '::1', 'principal', 'index', '2017-02-01', '19:49:51'),
(618, NULL, '::1', 'principal', 'index', '2017-02-01', '19:50:06'),
(619, NULL, '::1', 'principal', 'index', '2017-02-01', '19:53:17'),
(620, NULL, '::1', 'principal', 'index', '2017-02-01', '19:54:08'),
(621, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:57:06'),
(622, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-01', '19:58:00'),
(623, NULL, '::1', 'registro', 'nenas', '2017-02-01', '19:58:00'),
(624, NULL, '::1', 'principal', 'index', '2017-02-01', '19:58:24'),
(625, NULL, '::1', 'principal', 'index', '2017-02-01', '19:58:25'),
(626, NULL, '::1', 'principal', 'index', '2017-02-01', '20:00:56'),
(627, NULL, '::1', 'nina', 'index', '2017-02-01', '20:01:04'),
(628, NULL, '::1', 'nina', 'index', '2017-02-01', '20:01:59'),
(629, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:01'),
(630, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:02'),
(631, NULL, '::1', 'nina', 'index', '2017-02-01', '20:02:04'),
(632, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:06'),
(633, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:08'),
(634, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:08'),
(635, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:08'),
(636, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:09'),
(637, NULL, '::1', 'nina', 'index', '2017-02-01', '20:02:10'),
(638, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:13'),
(639, NULL, '::1', 'principal', 'index', '2017-02-01', '20:02:30'),
(640, NULL, '::1', 'nina', '5', '2017-02-01', '20:02:34'),
(641, NULL, '::1', 'principal', 'index', '2017-02-01', '20:07:15'),
(642, NULL, '::1', 'nina', '5', '2017-02-01', '20:07:29'),
(643, NULL, '::1', 'nina', '5', '2017-02-01', '20:08:15'),
(644, NULL, '::1', 'principal', 'index', '2017-02-01', '20:08:17'),
(645, NULL, '::1', 'principal', 'index', '2017-02-01', '20:08:18'),
(646, NULL, '::1', 'registro', 'nina', '2017-02-01', '20:08:28'),
(647, NULL, '::1', 'registro', 'nenas', '2017-02-01', '20:08:36'),
(648, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-01', '20:12:21'),
(649, NULL, '::1', 'registro', 'nenas', '2017-02-01', '20:12:22'),
(650, NULL, '::1', 'principal', 'index', '2017-02-01', '20:12:29'),
(651, NULL, '::1', 'registro', 'chicas', '2017-02-01', '20:13:00'),
(652, NULL, '::1', 'principal', 'index', '2017-02-01', '20:13:09'),
(653, NULL, '::1', 'principal', 'index', '2017-02-01', '20:13:10'),
(654, NULL, '::1', 'principal', 'index', '2017-02-01', '20:13:12'),
(655, NULL, '::1', 'principal', 'index', '2017-02-01', '20:13:13'),
(656, NULL, '::1', 'principal', 'index', '2017-02-01', '20:13:14'),
(657, NULL, '::1', 'principal', 'index', '2017-02-01', '20:13:15'),
(658, NULL, '::1', 'principal', 'index', '2017-02-01', '20:13:17'),
(659, NULL, '::1', 'principal', 'index', '2017-02-01', '20:13:18'),
(660, NULL, '::1', 'registro', 'chicas', '2017-02-01', '20:13:23'),
(661, NULL, '::1', 'registro', 'nenas', '2017-02-01', '20:13:28'),
(662, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-01', '20:16:22'),
(663, NULL, '::1', 'registro', 'nenas', '2017-02-01', '20:16:22'),
(664, NULL, '::1', 'principal', 'index', '2017-02-01', '20:16:42'),
(665, NULL, '::1', 'nina', '6', '2017-02-01', '20:19:15'),
(666, NULL, '::1', 'nina', '6', '2017-02-01', '20:31:34'),
(667, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:31:41'),
(668, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:32:16'),
(669, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:33:05'),
(670, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:33:14'),
(671, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:33:46'),
(672, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:35:27'),
(673, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:38:54'),
(674, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:39:20'),
(675, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:39:21'),
(676, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:39:42'),
(677, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:40:39'),
(678, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:41:16'),
(679, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:41:59'),
(680, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:43:57'),
(681, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:44:34'),
(682, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:49:09'),
(683, NULL, '::1', 'nina', 'individual', '2017-02-01', '20:49:22'),
(684, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:02:40'),
(685, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:05:31'),
(686, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:06:10'),
(687, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:06:35'),
(688, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:07:34'),
(689, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:07:53'),
(690, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:10:39'),
(691, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:10:41'),
(692, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:11:01'),
(693, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:13:03'),
(694, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:13:46'),
(695, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:14:05'),
(696, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:14:23'),
(697, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:17:13'),
(698, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:17:44'),
(699, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:18:49'),
(700, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:23:20'),
(701, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:23:23'),
(702, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:24:31'),
(703, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:24:35'),
(704, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:24:39'),
(705, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:24:43'),
(706, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:24:55'),
(707, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:25:00'),
(708, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:27:23'),
(709, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:28:49'),
(710, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:29:03'),
(711, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:29:07'),
(712, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:29:54'),
(713, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:38:56'),
(714, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:42:05'),
(715, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:44:22'),
(716, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:45:38'),
(717, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:46:03'),
(718, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:46:06'),
(719, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:46:39'),
(720, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:46:52'),
(721, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:47:15'),
(722, NULL, '::1', 'nina', 'individual', '2017-02-01', '23:58:35'),
(723, NULL, '::1', 'registro', 'nenas', '2017-02-01', '23:58:45'),
(724, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-02', '00:00:33'),
(725, NULL, '::1', 'registro', 'nenas', '2017-02-02', '00:00:34'),
(726, NULL, '::1', 'principal', 'index', '2017-02-02', '00:01:08'),
(727, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:01:16'),
(728, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:03:39'),
(729, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:04:54'),
(730, NULL, '::1', 'registro', 'nenas', '2017-02-02', '00:05:13'),
(731, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-02', '00:06:26'),
(732, NULL, '::1', 'registro', 'nenas', '2017-02-02', '00:06:26'),
(733, NULL, '::1', 'principal', 'index', '2017-02-02', '00:06:30'),
(734, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:06:33'),
(735, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:11:40'),
(736, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:11:43'),
(737, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:11:44'),
(738, NULL, '::1', 'registro', 'nenas', '2017-02-02', '00:11:51'),
(739, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-02', '00:12:16'),
(740, NULL, '::1', 'registro', 'nenas', '2017-02-02', '00:12:16'),
(741, NULL, '::1', 'principal', 'index', '2017-02-02', '00:12:39'),
(742, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:12:41'),
(743, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:13:42'),
(744, NULL, '::1', 'registro', 'nina', '2017-02-02', '00:13:59'),
(745, NULL, '::1', 'registro', 'nenas', '2017-02-02', '00:14:06'),
(746, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-02', '00:14:35'),
(747, NULL, '::1', 'registro', 'nenas', '2017-02-02', '00:14:35'),
(748, NULL, '::1', 'principal', 'index', '2017-02-02', '00:14:38'),
(749, NULL, '::1', 'nina', 'individual', '2017-02-02', '00:14:39'),
(750, NULL, '::1', 'aviso', 'index', '2017-02-02', '14:09:43'),
(751, NULL, '::1', 'legal', 'index', '2017-02-02', '14:09:46'),
(752, NULL, '::1', 'principal', 'index', '2017-02-02', '14:09:48'),
(753, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:09:51'),
(754, NULL, '::1', 'registro', 'nenas', '2017-02-02', '14:10:29'),
(755, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-02', '14:12:41'),
(756, NULL, '::1', 'registro', 'nenas', '2017-02-02', '14:12:41'),
(757, NULL, '::1', 'principal', 'index', '2017-02-02', '14:12:43'),
(758, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:12:46'),
(759, NULL, '::1', 'registro', 'nenas', '2017-02-02', '14:14:58'),
(760, NULL, '::1', 'registro', 'nenas', '2017-02-02', '14:15:35'),
(761, NULL, '::1', 'principal', 'index', '2017-02-02', '14:17:33'),
(762, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:17:34'),
(763, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:18:34'),
(764, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:19:05'),
(765, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:19:07'),
(766, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:38:27'),
(767, NULL, '::1', 'principal', 'index', '2017-02-02', '14:38:40'),
(768, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:03'),
(769, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:08'),
(770, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:09'),
(771, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:12'),
(772, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:13');
INSERT INTO `log` (`id`, `id_usuario`, `ip`, `controlador`, `metodo`, `fecha`, `hora`) VALUES
(773, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:14'),
(774, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:15'),
(775, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:16'),
(776, NULL, '::1', 'principal', 'index', '2017-02-02', '14:41:18'),
(777, NULL, '::1', 'principal', 'index', '2017-02-02', '14:47:52'),
(778, NULL, '::1', 'principal', 'index', '2017-02-02', '14:47:56'),
(779, NULL, '::1', 'principal', 'index', '2017-02-02', '14:47:57'),
(780, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:48:01'),
(781, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:48:08'),
(782, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:48:48'),
(783, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:48:49'),
(784, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:48:53'),
(785, NULL, '::1', 'nina', 'individual', '2017-02-02', '14:48:57');

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
(1, 'Damas', 'damas'),
(2, 'Caballeros', 'caballeros'),
(3, 'Trans', 'trans'),
(4, 'Agencias', 'agencias'),
(5, 'Anunciate', 'anunciate'),
(6, 'mmgvocharlot', 'asdasdasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
`id_permisos` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `permiso` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permisos`, `id_menu`, `id_role`, `permiso`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 1),
(3, 3, 1, 0),
(4, 4, 2, 1),
(5, 3, 2, 1),
(6, 5, 2, 1),
(7, 6, 2, 1);

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
-- Estructura de tabla para la tabla `video_chica`
--

CREATE TABLE IF NOT EXISTS `video_chica` (
`id_video` int(11) NOT NULL,
  `id_chicas` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `video_chica`
--

INSERT INTO `video_chica` (`id_video`, `id_chicas`, `nombre_foto`) VALUES
(5, 1, 'nenas58927965e85c6'),
(6, 2, 'nenas589376996fa68');

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
-- Indices de la tabla `video_chica`
--
ALTER TABLE `video_chica`
 ADD PRIMARY KEY (`id_video`), ADD KEY `id_chicas` (`id_chicas`), ADD KEY `id_chicas_2` (`id_chicas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agencia`
--
ALTER TABLE `agencia`
MODIFY `id_agencia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `chicas`
--
ALTER TABLE `chicas`
MODIFY `id_chicas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=786;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
-- AUTO_INCREMENT de la tabla `video_chica`
--
ALTER TABLE `video_chica`
MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
