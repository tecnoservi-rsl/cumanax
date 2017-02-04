-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-02-2017 a las 01:38:56
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
  `preview` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `nro_contacto` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `correo_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `facebook_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pin_agencia` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `whatsapp_agencia` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `agencia`
--

INSERT INTO `agencia` (`id_agencia`, `nombre_agencia`, `preview`, `nro_contacto`, `correo_agencia`, `facebook_agencia`, `pin_agencia`, `whatsapp_agencia`) VALUES
(7, 'EL AREN DE RUBY', 'ESPECIALISTAS EN PLACER... NUESTRAS CHICAS QUIEREN CUMPLIR TODAS TUS FANTACIAS', '0414-52-65-896', 'LEGNA18205@GMAIL.COM', 'ASDSAD', 'ASDSAD', 'SADSAD'),
(8, 'DAMAS DE LA NOCHE', 'HACEMOS DE SEXO UNA EXPERIENCIA INOLVIDABLE. ', '0414-52-65-896', 'LEGNA18205@GMAIL.COM', '654654654', '', ''),
(9, 'LAS LOBAS', 'TENEMOS LA MAYOR CANTIDAD DE CHICAS QUE PUEDEN HACERTE DE TODO', '324234234', 'LEGNA18205@GMAIL.COM', '', 'ASDSAD', 'SADSADA'),
(10, 'BADGIRL', 'TODAS LAS NIñAS MALAS DE LA CIUDAD DE CUMANA.', '+584248486869', 'BADGIRL@HOTMAIL.COM', 'BADGIRL', '5CDFFE5', '+584248486869'),
(11, 'A', 'ASD', 'ASD', 'ASD@HO', 'ASD', 'ASD', 'ASD');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `chicas`
--

INSERT INTO `chicas` (`id_chicas`, `tipo`, `nombre_chicas`, `fecha_nacimiento`, `destrezas`, `especialidad`, `estatura`, `medidas`, `peso`, `color_cabello`, `color_ojos`, `color_piel`, `tlf`, `publico`, `horario`, `localidad`, `email`, `bbm`, `whatsapp`, `facebook`, `instagram`, `twitter`, `preview`, `id_agencia`) VALUES
(1, 'DAMA', 'Alexandra', '2017-02-21', 'Tragona', 'Ruso, Griego, Fetiches', '1,70', '90-60-90', '57', 'Negro', 'Azules', 'Blanca', '04247894521', 'HOMBRES - MUJERES - PAREJAS - ', '24 Horas', 'Fe Y Alegria', 'Alexandralaloba@gmail.com', '5C34D345', '+584247894521', 'AlexandraLaLobaOficial', 'AlexandraLaLobaOficial', 'AlexandraLaLobaOficial', 'Me Gustaria Complacer Todas Tus Fantasias En La Cama', 9),
(2, 'DAMA', 'Mariux', '1992-10-13', 'Mamona', 'Oral Y Griego', '1,54', '90-60-revienta', '60', 'Amarillo', 'Azules', 'Blanca', '47858224226', 'HOMBRES - MUJERES - PAREJAS - ', '24 Horas', 'Cumaná', 'Maravillos29@hotmail.com', '5C34D345', '+584129858846', 'Ashley Atreviditax', '@AshleyOfficial', '@AshleyOfficial', 'Si Conoces A Jesus Preguntale Por Mi.', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_agencia`
--

CREATE TABLE IF NOT EXISTS `fotos_agencia` (
`id_foto` int(11) NOT NULL,
  `id_agencia` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fotos_agencia`
--

INSERT INTO `fotos_agencia` (`id_foto`, `id_agencia`, `nombre_foto`) VALUES
(4, 7, 'cumanax5894d31b96813cumanaxxxxxxxxxx.png'),
(5, 8, 'cumanax5894d7dc950cdffff.jpg'),
(6, 9, 'cumanax5894d821e0f53l.php.gif'),
(7, 10, 'cumanax5894d821e0f53l5.jpg'),
(8, 11, 'cumanax58951e4514ba4logo_cumanax.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_chicas`
--

CREATE TABLE IF NOT EXISTS `fotos_chicas` (
`id_foto` int(11) NOT NULL,
  `id_chicas` int(11) NOT NULL,
  `nombre_foto` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `fotos_chicas`
--

INSERT INTO `fotos_chicas` (`id_foto`, `id_chicas`, `nombre_foto`) VALUES
(1, 1, 'cumanax58951bb9acb85cumanax5894c6a5f3566cumanax5892aee20e14c1.jpg'),
(2, 1, 'cumanax58951bb9bc5b7cumanax5894c6a60e04fcumanax5892aee22f8e06.jpg'),
(3, 1, 'cumanax58951bb9bf8f7cumanax5894c6a61af9dcumanax5892aee211dc72.jpg'),
(4, 1, 'cumanax58951bb9c8ccfcumanax5894c6a61e185cumanax5892aee218fd53.jpg'),
(5, 1, 'cumanax58951bb9cbbc0cumanax5894c6a602f99cumanax5892aee21c46b4.jpg'),
(6, 1, 'cumanax58951bb9cefa0cumanax5894c6a629429cumanax5892aee22580d5.jpg'),
(7, 2, 'cumanax589520ef74886cumanax5894c6a60e04fcumanax5892aee22f8e06.jpg'),
(8, 2, 'cumanax589520ef81f71cumanax5894c6a61af9dcumanax5892aee211dc72.jpg'),
(9, 2, 'cumanax589520ef8cdf6cumanax58951bb9c8ccfcumanax5894c6a61e185cumanax5892aee218fd53.jpg'),
(10, 2, 'cumanax589520efaa882cumanax58951bb9cbbc0cumanax5894c6a602f99cumanax5892aee21c46b4.jpg'),
(11, 2, 'cumanax589520efb5d4dcumanax58951bb9cefa0cumanax5894c6a629429cumanax5892aee22580d5.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=1247 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`id`, `id_usuario`, `ip`, `controlador`, `metodo`, `fecha`, `hora`) VALUES
(1, NULL, '127.0.0.1', 'principal', 'index', '2016-12-19', '10:13:35'),
(2, NULL, '127.0.0.1', 'app', 'index', '2016-12-19', '10:14:08'),
(1178, NULL, '127.0.0.1', 'agencia', 'auto_completado', '2017-02-03', '16:27:07'),
(1179, NULL, '::1', 'principal', 'index', '2017-02-03', '20:03:07'),
(1180, NULL, '::1', 'agencia', 'index', '2017-02-03', '20:03:16'),
(1181, NULL, '::1', 'agencia', 'auto_completado', '2017-02-03', '20:03:21'),
(1182, NULL, '::1', 'principal', 'index', '2017-02-03', '20:04:19'),
(1183, NULL, '::1', 'registro', 'nenas', '2017-02-03', '20:04:31'),
(1184, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-03', '20:09:29'),
(1185, NULL, '::1', 'registro', 'nenas', '2017-02-03', '20:09:30'),
(1186, NULL, '::1', 'principal', 'index', '2017-02-03', '20:09:40'),
(1187, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:09:42'),
(1188, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:11:18'),
(1189, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:11:20'),
(1190, NULL, '::1', 'agencia', 'index', '2017-02-03', '20:11:50'),
(1191, NULL, '::1', 'agencia', 'auto_completado', '2017-02-03', '20:11:50'),
(1192, NULL, '::1', 'registro', 'agencias', '2017-02-03', '20:13:11'),
(1193, NULL, '::1', 'registro', 'guardar_agencia', '2017-02-03', '20:17:38'),
(1194, NULL, '::1', 'registro', 'agencias', '2017-02-03', '20:17:38'),
(1195, NULL, '::1', 'agencia', 'index', '2017-02-03', '20:17:40'),
(1196, NULL, '::1', 'agencia', 'auto_completado', '2017-02-03', '20:17:41'),
(1197, NULL, '::1', 'agencia', 'index', '2017-02-03', '20:19:35'),
(1198, NULL, '::1', 'agencia', 'auto_completado', '2017-02-03', '20:19:36'),
(1199, NULL, '::1', 'agencia', 'index', '2017-02-03', '20:19:42'),
(1200, NULL, '::1', 'agencia', 'auto_completado', '2017-02-03', '20:19:43'),
(1201, NULL, '::1', 'registro', 'agencias', '2017-02-03', '20:19:59'),
(1202, NULL, '::1', 'registro', 'guardar_agencia', '2017-02-03', '20:20:21'),
(1203, NULL, '::1', 'registro', 'agencias', '2017-02-03', '20:20:21'),
(1204, NULL, '::1', 'agencia', 'index', '2017-02-03', '20:20:24'),
(1205, NULL, '::1', 'agencia', 'auto_completado', '2017-02-03', '20:20:28'),
(1206, NULL, '::1', 'agencia', 'index', '2017-02-03', '20:22:01'),
(1207, NULL, '::1', 'agencia', 'auto_completado', '2017-02-03', '20:22:02'),
(1208, NULL, '::1', 'aviso', 'index', '2017-02-03', '20:22:12'),
(1209, NULL, '::1', 'legal', 'index', '2017-02-03', '20:22:23'),
(1210, NULL, '::1', 'principal', 'index', '2017-02-03', '20:22:26'),
(1211, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:22:43'),
(1212, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:23:28'),
(1213, NULL, '::1', 'aviso', 'index', '2017-02-03', '20:23:52'),
(1214, NULL, '192.168.0.10', 'nina', 'individual', '2017-02-03', '20:28:21'),
(1215, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:28:36'),
(1216, NULL, '::1', 'aviso', 'index', '2017-02-03', '20:29:07'),
(1217, NULL, '::1', 'legal', 'index', '2017-02-03', '20:29:09'),
(1218, NULL, '::1', 'principal', 'index', '2017-02-03', '20:29:13'),
(1219, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:29:16'),
(1220, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:29:20'),
(1221, NULL, '::1', 'principal', 'index', '2017-02-03', '20:29:23'),
(1222, NULL, '::1', 'registro', 'nenas', '2017-02-03', '20:29:28'),
(1223, NULL, '::1', 'registro', 'guardar_publicacion', '2017-02-03', '20:31:43'),
(1224, NULL, '::1', 'registro', 'nenas', '2017-02-03', '20:31:43'),
(1225, NULL, '::1', 'principal', 'index', '2017-02-03', '20:31:48'),
(1226, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:31:58'),
(1227, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:32:02'),
(1228, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:32:07'),
(1229, NULL, '::1', 'principal', 'index', '2017-02-03', '20:32:09'),
(1230, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:32:11'),
(1231, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:32:14'),
(1232, NULL, '::1', 'principal', 'index', '2017-02-03', '20:32:48'),
(1233, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:32:50'),
(1234, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:32:53'),
(1235, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:33:31'),
(1236, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:33:34'),
(1237, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:33:36'),
(1238, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:33:38'),
(1239, NULL, '::1', 'principal', 'index', '2017-02-03', '20:33:41'),
(1240, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:33:42'),
(1241, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:33:46'),
(1242, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:33:49'),
(1243, NULL, '::1', 'nina', 'votacion', '2017-02-03', '20:33:51'),
(1244, NULL, '::1', 'nina', 'individual', '2017-02-03', '20:35:55'),
(1245, NULL, '::1', 'anunciate', 'index', '2017-02-03', '20:36:06'),
(1246, NULL, '::1', 'principal', 'index', '2017-02-03', '20:36:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `enlace` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `permisos` (
`id_permisos` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `permiso` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `votacion`
--

INSERT INTO `votacion` (`id_votacion`, `id_chica`, `votacion`, `ip`, `fecha`) VALUES
(14, 2, 5, '::1', '2017-02-03'),
(15, 1, 5, '::1', '2017-02-03');

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
MODIFY `id_agencia` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `chicas`
--
ALTER TABLE `chicas`
MODIFY `id_chicas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `fotos_agencia`
--
ALTER TABLE `fotos_agencia`
MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `fotos_chicas`
--
ALTER TABLE `fotos_chicas`
MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1247;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
MODIFY `id_permisos` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
MODIFY `id_votacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
