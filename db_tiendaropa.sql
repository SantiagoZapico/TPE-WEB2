-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-09-2023 a las 21:32:51
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tiendaropa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallesprenda`
--

CREATE TABLE `detallesprenda` (
  `id_tipoPrenda` int(11) NOT NULL,
  `talle` varchar(5) NOT NULL,
  `stock` int(5) NOT NULL,
  `id_prenda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detallesprenda`
--

INSERT INTO `detallesprenda` (`id_tipoPrenda`, `talle`, `stock`, `id_prenda`) VALUES
(1, 'M', 20, 57),
(3, 'S', 35, 56),
(4, 'M', 10, 56),
(7, 'XL', 3, 58),
(8, 'S', 54, 55),
(9, 'XS', 23, 54),
(10, 'XL', 7, 54),
(11, 'M', 35, 55),
(12, 'L', 3, 57),
(13, 'XS', 20, 59),
(14, 'S', 54, 58),
(15, 'XL', 14, 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablaprendas`
--

CREATE TABLE `tablaprendas` (
  `id_prenda` int(11) NOT NULL,
  `prenda` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `costo` int(6) NOT NULL,
  `rebaja` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tablaprendas`
--

INSERT INTO `tablaprendas` (`id_prenda`, `prenda`, `tipo`, `costo`, `rebaja`) VALUES
(54, 'Camiseta KOI', 'Remera', 8500, 10),
(55, 'Pantalon Gabardina ', 'Pantalon', 5000, 10),
(56, 'Camiseta Inter Miami', 'Remera', 21000, 5),
(57, 'Hoodie Oxford', 'Buzo', 50000, 3),
(58, 'Pantalon Chino Navi', 'Pantalon', 16400, 20),
(59, 'Buzo Adidas ', 'Buzo', 34900, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `detallesprenda`
--
ALTER TABLE `detallesprenda`
  ADD PRIMARY KEY (`id_tipoPrenda`),
  ADD KEY `id_prenda` (`id_prenda`);

--
-- Indices de la tabla `tablaprendas`
--
ALTER TABLE `tablaprendas`
  ADD PRIMARY KEY (`id_prenda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detallesprenda`
--
ALTER TABLE `detallesprenda`
  MODIFY `id_tipoPrenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tablaprendas`
--
ALTER TABLE `tablaprendas`
  MODIFY `id_prenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallesprenda`
--
ALTER TABLE `detallesprenda`
  ADD CONSTRAINT `id_prenda` FOREIGN KEY (`id_prenda`) REFERENCES `tablaprendas` (`id_prenda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
