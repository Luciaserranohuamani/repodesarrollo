-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-01-2019 a las 18:27:41
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdseguridad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menid` int(11) NOT NULL,
  `mensubid` int(11) DEFAULT NULL,
  `mennombre` varchar(45) DEFAULT NULL,
  `mencontrolador` varchar(45) DEFAULT NULL,
  `menaccion` varchar(20) DEFAULT NULL,
  `menicono` varchar(30) DEFAULT NULL,
  `menorden` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`menid`, `mensubid`, `mennombre`, `mencontrolador`, `menaccion`, `menicono`, `menorden`) VALUES
(1, NULL, 'CRUD', 'Principal', 'index', NULL, 1),
(2, 1, 'CRUD de usuarios', 'usuarioController', '', NULL, 2),
(4, NULL, 'Productos', 'Productos', 'visualizar', NULL, 4),
(5, 4, 'Laptops', 'laptops', 'listar', NULL, 5),
(6, 1, 'CRUD de productos', 'personaController', '', NULL, 6),
(7, NULL, 'reporte Productos', 'Usuario', 'listar', NULL, 7),
(8, 7, 'consulta productos', 'Usuario', 'listar', NULL, 8),
(9, NULL, 'Logout', 'Login', 'user_logout', NULL, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mep`
--

CREATE TABLE IF NOT EXISTS `mep` (
  `mepid` int(11) NOT NULL,
  `perid` int(11) NOT NULL,
  `menid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mep`
--

INSERT INTO `mep` (`mepid`, `perid`, `menid`) VALUES
(1, 1, 1),
(2, 1, 2),
(6, 1, 4),
(9, 2, 4),
(12, 3, 4),
(7, 1, 5),
(10, 2, 5),
(8, 1, 6),
(14, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE IF NOT EXISTS `perfil` (
  `perid` int(11) NOT NULL,
  `pernombre` varchar(20) DEFAULT NULL,
  `perdescripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`perid`, `pernombre`, `perdescripcion`) VALUES
(1, 'Administrador', NULL),
(2, 'cliente', NULL),
(3, 'Secretaria', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `pantalla` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `ram` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `procesador` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `disco_duro` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `precio` double(11,0) NOT NULL,
  `opcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `valores` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `marca`, `pantalla`, `ram`, `procesador`, `disco_duro`, `precio`, `opcion`, `valores`, `imagen`) VALUES
(1, 'Samsung', '14''', '4 Gb', 'Core i3', '300 Gb', 990, 'color', 'blanco,azul', 'pc_1.jpg'),
(2, 'Lenovo', '10''', '3 Gb', 'Intel Pentium', '750 Gb', 1100, 'color', 'negro,verde,morado', 'pc_2.jpg'),
(3, 'Portatil Mac', '14''', '4 Gb', 'Core i3', '500 Gb', 1000, 'color', 'negro,rojo', 'pc_3.jpg'),
(4, 'Compaq', '10''', '2 Gb', 'AMD', '300 Gb', 700, 'color', 'rojo,azul,blanco', 'pc_4.jpg'),
(5, 'Sony Vaió', '14''', '4 Gb', 'Core i3', '500 Gb', 1000, 'color', 'morado,azul,plomo', 'pc_5.jpg'),
(6, 'Hewlet Packart', '14''', '4 Gb', 'Core i3', '500 Gb', 990, 'color', 'blanco,azul,rojo', 'hp_1.jpg'),
(7, 'Sony Vaió', '18''', '3 Gb', 'Intel Pentium', '500 Gb', 650, 'color', 'azul,verde,blanco', 'sv_1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `usuid` int(11) NOT NULL,
  `perid` int(11) NOT NULL,
  `usudni` varchar(8) DEFAULT NULL,
  `usuemail` varchar(30) DEFAULT NULL,
  `usucontrasenia` varchar(1000) DEFAULT NULL,
  `usunombres` varchar(20) DEFAULT NULL,
  `usuapellidos` varchar(30) DEFAULT NULL,
  `usucelular` varchar(9) DEFAULT NULL,
  `usuestado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuid`, `perid`, `usudni`, `usuemail`, `usucontrasenia`, `usunombres`, `usuapellidos`, `usucelular`, `usuestado`) VALUES
(1, 1, '9876543', 'frank.mich1@gmail.com', 'admin', 'Frank', 'Zuloaga', '984407461', 1),
(2, 1, '98398387', 'campn@gmail.com', 'camp', 'Frank', 'Zuloaga', '984407461', 1),
(3, 2, '72575792', 'frank@d.com', 'admin', 'frank', 'zuloaga', '984407461', 1),
(4, 2, '54741126', 'noragami@gmail.com', 'admin', 'yato', 'gami', '987456123', 1),
(5, 2, '72575792', 'noragami1@gmail.com', 'admin', 'frank', 'zuloaga', '984407460', 1),
(6, 2, '54741126', 'lelouch@gmail.com', 'code', 'lelouch', 'lamperouge', '984407460', 1),
(7, 2, '72575792', 'aot@gmail.com', 'eren', 'eren', 'jeager', '984407460', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menid`),
  ADD KEY `fk_menu_menu1_idx` (`mensubid`);

--
-- Indices de la tabla `mep`
--
ALTER TABLE `mep`
  ADD PRIMARY KEY (`mepid`,`perid`,`menid`),
  ADD KEY `fk_perfil_has_menu_menu1_idx` (`menid`),
  ADD KEY `fk_perfil_has_menu_perfil1_idx` (`perid`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`perid`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuid`),
  ADD KEY `fk_usuario_perfil_idx` (`perid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `menid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `mep`
--
ALTER TABLE `mep`
  MODIFY `mepid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `perid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_menu1` FOREIGN KEY (`mensubid`) REFERENCES `menu` (`menid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `mep`
--
ALTER TABLE `mep`
  ADD CONSTRAINT `fk_perfil_has_menu_menu1` FOREIGN KEY (`menid`) REFERENCES `menu` (`menid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perfil_has_menu_perfil1` FOREIGN KEY (`perid`) REFERENCES `perfil` (`perid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_perfil` FOREIGN KEY (`perid`) REFERENCES `perfil` (`perid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
