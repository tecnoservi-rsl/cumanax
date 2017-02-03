-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-02-2017 a las 05:33:42
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
  `nro_contacto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `correo_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `facebook_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pin_agencia` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `whatsapp_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `agencia`
--

INSERT INTO `agencia` (`id_agencia`, `nombre_agencia`, `nro_contacto`, `correo_agencia`, `facebook_agencia`, `pin_agencia`, `whatsapp_agencia`) VALUES
(1, 'BADGIRL', '2147483647', 'BADGIRL@CUMANAX.COM', '0werwerwer', '5748RAS', '2147483647'),
(2, 'Independiente', '2147483647', 'independiente@gmail.com', '0werwer', 'erwwerwer', '0'),
(3, 'AREN DE RUBY', '324234234', '234234234@SADSD.COM', '234234', '234234234', '23423424');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chicas`
--

CREATE TABLE `chicas` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_chicas`
--

CREATE TABLE `fotos_chicas` (
  `id_foto` int(11) NOT NULL,
  `id_chicas` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

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
(933, NULL, '127.0.0.1', 'agencia', 'index', '2017-02-03', '00:29:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `enlace` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_menu`, `titulo`, `enlace`) VALUES
(1, 'Damas', 'damas'),
(2, 'Caballeros', 'caballeros'),
(3, 'Trans', 'trans'),
(4, 'Agencias', 'agencia'),
(5, 'Anunciate', 'anunciate');

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

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id_permisos`, `id_menu`, `id_role`, `permiso`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 1),
(3, 3, 1, 0),
(4, 4, 2, 1),
(5, 3, 2, 1),
(6, 5, 2, 1);

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
(2, 'anonimo', 1);

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
  MODIFY `id_agencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `chicas`
--
ALTER TABLE `chicas`
  MODIFY `id_chicas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=934;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `video_chica`
--
ALTER TABLE `video_chica`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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