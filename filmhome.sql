-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 21-02-2022 a las 12:19:08
-- Versión del servidor: 8.0.28
-- Versión de PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `youtube`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseo`
--

CREATE TABLE `deseo` (
  `id` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `genero` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `formato` varchar(50) NOT NULL,
  `puntuacion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `deseo`
--

INSERT INTO `deseo` (`id`, `titulo`, `genero`, `precio`, `formato`, `puntuacion`) VALUES
('1', 'Deseo1', 'Drama', '7', 'DVD', '9'),
('3', 'Macarena', 'Western', '14', 'VHS', '5'),
('9', 'Quesea', 'Drama', '8', 'DVD', '6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` varchar(50) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `genero` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  `formato` varchar(50) DEFAULT NULL,
  `puntuacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `titulo`, `genero`, `precio`, `formato`, `puntuacion`) VALUES
('1', 'Matrix', 'Ciencia-Ficcion', '15', 'Blue-ray', '10'),
('2', 'Sharknado', 'Tiburones', '12', 'Blue', '6'),
('3', 'Troy', 'Historia', '8', 'Blue-Tay', '10'),
('4', 'Bailando', 'Western', '8', 'VHS', '8'),
('5', 'Pap', 'Loco', '8', 'VHS', '2'),
('6', 'Nueva', 'Otro', '9', 'DVD', '8');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `deseo`
--
ALTER TABLE `deseo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
