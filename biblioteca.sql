-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2017 a las 16:06:39
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE IF NOT EXISTS `libros` (
`idLibro` int(5) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `edicion` int(5) NOT NULL,
  `tema` varchar(20) NOT NULL,
  `publico` varchar(10) NOT NULL,
  `unidades` int(4) NOT NULL,
  `ultimoPrestamo` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`idLibro`, `titulo`, `autor`, `edicion`, `tema`, `publico`, `unidades`, `ultimoPrestamo`) VALUES
(2, 'Juego de Tronos', 'G.R.R.Martin', 2008, 'fantasia', 'adulto', 5, '2017-02-19'),
(3, 'harry potter', 'J.K. Rowling', 2015, 'fantasia', 'infantil', 4, '2017-02-17'),
(4, 'pepa pig', 'pepa perez', 2015, 'infantil', 'infantil', 2, '2017-02-18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE IF NOT EXISTS `prestamos` (
  `idUsuario` int(5) NOT NULL,
  `idLibro` int(5) NOT NULL,
  `fechaDevolucion` date NOT NULL,
  `sancionado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`idUsuario`, `idLibro`, `fechaDevolucion`, `sancionado`) VALUES
(1, 3, '2017-03-14', 0),
(1, 4, '2017-02-28', 0),
(2, 2, '2017-02-15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `tipo` varchar(10) NOT NULL,
  `sancion` int(4) NOT NULL,
  `librosSacados` int(4) NOT NULL,
  `nombre` varchar(30) NOT NULL,
`idUsuario` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`tipo`, `sancion`, `librosSacados`, `nombre`, `idUsuario`) VALUES
('infantil', 0, 2, 'Jaimito Perez', 1),
('adulto', 1, 1, 'Pedro Perez', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
 ADD PRIMARY KEY (`idLibro`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
 ADD PRIMARY KEY (`idUsuario`,`idLibro`), ADD KEY `fk_libro` (`idLibro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
MODIFY `idLibro` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `idUsuario` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
ADD CONSTRAINT `fk_libro` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`),
ADD CONSTRAINT `fk_user` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
