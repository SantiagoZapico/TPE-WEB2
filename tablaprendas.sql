-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2023 a las 23:44:52
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
-- Estructura de tabla para la tabla `tablaprendas`
--

CREATE TABLE `tablaprendas` (
  `id` int(11) NOT NULL,
  `prenda` varchar(50) NOT NULL,
  `costo` int(6) NOT NULL,
  `rebaja` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tablaprendas`
--

INSERT INTO `tablaprendas` (`id`, `prenda`, `costo`, `rebaja`) VALUES
(15, 'Remera', 7500, 10),
(24, 'Pantalon', 3000, 5),
(26, 'Campera', 24500, 45),
(49, 'Buzo', 8000, 20),
(50, 'Vestido', 12000, 0),
(51, 'Pollera', 19500, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tablaprendas`
--
ALTER TABLE `tablaprendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tablaprendas`
--
ALTER TABLE `tablaprendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
