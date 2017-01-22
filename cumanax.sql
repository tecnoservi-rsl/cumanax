-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2017 a las 13:32:16
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cumanax`
--
CREATE DATABASE IF NOT EXISTS `cumanax` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `cumanax`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agencia`
--

CREATE TABLE IF NOT EXISTS `agencia` (
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

CREATE TABLE IF NOT EXISTS `chicas` (
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
  `id_agencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
`id_cliente` int(11) NOT NULL,
  `cedula_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido_cliente` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo_cliente` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_chicas`
--

CREATE TABLE IF NOT EXISTS `fotos_chicas` (
  `id_foto` int(11) NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

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
(44, NULL, '127.0.0.1', 'faceblocked', 'index', '2016-12-19', '10:17:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `enlace` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE IF NOT EXISTS `permisos` (
`id_permisos` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `permiso` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`id_role` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `peso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id_role`, `role`, `peso`) VALUES
(1, 'admin_sistem', 1),
(4, 'anonimo', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
`id_servicio` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
 ADD PRIMARY KEY (`id_cliente`), ADD UNIQUE KEY `correo_cliente` (`correo_cliente`,`cedula_cliente`);

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
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
 ADD PRIMARY KEY (`id_servicio`), ADD KEY `id_agencia` (`id_agencia`,`id_cliente`), ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id_usuario`), ADD KEY `id_role_2` (`id_role`), ADD KEY `id_role_3` (`id_role`), ADD KEY `id_role_4` (`id_role`), ADD KEY `id_role_5` (`id_role`);

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
MODIFY `id_chicas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
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
MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chicas`
--
ALTER TABLE `chicas`
ADD CONSTRAINT `chicas_ibfk_1` FOREIGN KEY (`id_agencia`) REFERENCES `agencia` (`id_agencia`);

--
-- Filtros para la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
ADD CONSTRAINT `fotos_chicas_ibfk_1` FOREIGN KEY (`id_chicas`) REFERENCES `chicas` (`id_chicas`);

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
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
ADD CONSTRAINT `servicio_ibfk_1` FOREIGN KEY (`id_agencia`) REFERENCES `agencia` (`id_agencia`),
ADD CONSTRAINT `servicio_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
