-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2019 a las 11:01:59
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine`
--
CREATE DATABASE IF NOT EXISTS `cine` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `cine`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actuar`
--

DROP TABLE IF EXISTS `actuar`;
CREATE TABLE `actuar` (
  `IDPeli` int(100) NOT NULL,
  `IDInt` int(100) NOT NULL,
  `Premiado` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `actuar`
--

INSERT INTO `actuar` (`IDPeli`, `IDInt`, `Premiado`) VALUES
(4, 1, ''),
(4, 2, 'Premiado a la peor pelicula del año');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

DROP TABLE IF EXISTS `director`;
CREATE TABLE `director` (
  `IDDire` int(100) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Nacionalidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `director`
--

INSERT INTO `director` (`IDDire`, `Nombre`, `Nacionalidad`) VALUES
(1, 'Alvaro', 'Española'),
(2, 'Alberto', 'Española'),
(3, 'Fran', 'Española'),
(4, 'Jkgrsda', 'Mexicana'),
(5, '', ''),
(6, 'Álvaro', 'Español');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `interprete`
--

DROP TABLE IF EXISTS `interprete`;
CREATE TABLE `interprete` (
  `IDInt` int(100) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Edad` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `interprete`
--

INSERT INTO `interprete` (`IDInt`, `Nombre`, `Edad`) VALUES
(1, 'Qwerty', 19),
(2, 'Jkgrsda', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
CREATE TABLE `pelicula` (
  `IDPeli` int(100) NOT NULL,
  `Titulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Year` int(4) NOT NULL,
  `Genero` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Nacionalidad` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `IDDire` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`IDPeli`, `Titulo`, `Year`, `Genero`, `Nacionalidad`, `IDDire`) VALUES
(1, 'Buscando a Nemo', 2003, 'Animación', 'Americana', 1),
(2, 'El Señor de los Anillos', 2001, 'Aventura', 'Americana', 4),
(4, 'Prueba', 2019, 'Miedo', 'Español', 2),
(5, 'Prueba2', 2019, 'Tests sin sentidos', 'España', 1),
(6, 'Prueba2', 2019, 'Tests sin sentidos', 'España', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `IDAdmin` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Password` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IDAdmin`, `Password`) VALUES
('admin', 'admin'),
('alvaro', '123456789');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actuar`
--
ALTER TABLE `actuar`
  ADD KEY `IDPeli` (`IDPeli`),
  ADD KEY `IDInt` (`IDInt`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`IDDire`),
  ADD KEY `IDDire` (`IDDire`);

--
-- Indices de la tabla `interprete`
--
ALTER TABLE `interprete`
  ADD PRIMARY KEY (`IDInt`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`IDPeli`),
  ADD KEY `IDDire` (`IDDire`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IDAdmin`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `director`
--
ALTER TABLE `director`
  MODIFY `IDDire` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `interprete`
--
ALTER TABLE `interprete`
  MODIFY `IDInt` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `IDPeli` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actuar`
--
ALTER TABLE `actuar`
  ADD CONSTRAINT `actuar_ibfk_1` FOREIGN KEY (`IDInt`) REFERENCES `interprete` (`IDInt`),
  ADD CONSTRAINT `actuar_ibfk_2` FOREIGN KEY (`IDPeli`) REFERENCES `pelicula` (`IDPeli`);

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`IDDire`) REFERENCES `director` (`IDDire`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
