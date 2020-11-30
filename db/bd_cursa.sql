-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2020 a las 17:22:51
-- Versión del servidor: 8.0.13
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_cursa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE `tbl_categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `edad_max` decimal(2,0) DEFAULT NULL,
  `edad_min` decimal(2,0) DEFAULT NULL,
  `sexo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`id_categoria`, `nombre`, `edad_max`, `edad_min`, `sexo`) VALUES
(1, 'Infantil MASC (1-10)', '10', '1', 'Hombres'),
(2, 'Infantil FEM (1-10)', '10', '1', 'Mujeres'),
(3, 'Juvenil MASC (11-17)', '17', '11', 'Hombres'),
(4, 'Juvenil FEM (11-17)', '17', '11', 'Mujeres'),
(5, 'Amateur MASC (18-29)', '29', '18', 'Hombres'),
(6, 'Amateur FEM (18-29)', '29', '18', 'Mujeres'),
(7, 'Veteranos MASC (30-59)', '59', '30', 'Hombres'),
(8, 'Veteranos FEM (30-59)', '59', '30', 'Mujeres'),
(9, 'Mayores MASC (60-99)', '99', '60', 'Hombres'),
(10, 'Mayores FEM (60-99)', '99', '60', 'Mujeres');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cursa`
--

CREATE TABLE `tbl_cursa` (
  `id_cursa` int(10) NOT NULL,
  `data_cursa` date NOT NULL,
  `lloc_cursa` varchar(50) DEFAULT NULL,
  `horari_cursa` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tbl_cursa`
--

INSERT INTO `tbl_cursa` (`id_cursa`, `data_cursa`, `lloc_cursa`, `horari_cursa`) VALUES
(1, '2020-11-18', 'L\'Hospitalet de Llobregat', '11:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_inscripcion`
--

CREATE TABLE `tbl_inscripcion` (
  `id_dorsal` int(11) NOT NULL,
  `id_cursa` int(11) NOT NULL,
  `dni_participante` varchar(9) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tbl_inscripcion`
--

INSERT INTO `tbl_inscripcion` (`id_dorsal`, `id_cursa`, `dni_participante`, `id_categoria`) VALUES
(9, 1, '', 1),
(10, 1, '', 1),
(3, 1, '20492402W', 5),
(6, 1, '23398471X', 1),
(5, 1, '40000111L', 5),
(2, 1, '50492402W', 5),
(1, 1, '51492402W', 5),
(8, 1, '55555555F', 1),
(4, 1, '6666', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_participante`
--

CREATE TABLE `tbl_participante` (
  `dni_participante` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido1` varchar(30) NOT NULL,
  `apellido2` varchar(30) NOT NULL,
  `nacimiento` date DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `sexo` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tbl_participante`
--

INSERT INTO `tbl_participante` (`dni_participante`, `nombre`, `apellido1`, `apellido2`, `nacimiento`, `email`, `sexo`) VALUES
('40000111L', 'Carlos', 'Piedras', 'Gamez', '2000-11-05', 'carlos@gmail.com', 'Hombre'),
('46492342W', 'Oriol', 'Casas', 'Tello', '2000-03-05', 'oriol@gmail.com', 'Hombre'),
('46492402W', 'Dani', 'Larrea', 'Gutierrez', '1989-06-07', 'dani@gmail.com', 'Hombre'),
('46492432W', 'Dani', 'Larrea', 'Gutierrez', '1989-06-07', 'dani@gmail.com', 'Hombre'),
('46492442W', 'Antonio', 'Maestre', 'Bayo', '2000-01-08', 'toni.maestre@gmail.com', 'Hombre'),
('50340982W', 'Pablo', 'Soriano', 'Gutierrez', '2020-10-28', 'pablo@gmail.com', 'Hombre'),
('50492402W', 'Pepe', 'Pepito', 'Membrillo', '1999-07-01', 'pepe@gmail.com', 'Hombre'),
('51492402W', 'Pablo', 'Verdejo', 'Diaz', '2000-12-12', 'pablo@gmail.com', 'Hombre'),
('55555555F', 'Manel', 'Portillo', 'FFF', '2020-11-04', 'manel@gmail.com', 'Hombre');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `tbl_cursa`
--
ALTER TABLE `tbl_cursa`
  ADD PRIMARY KEY (`id_cursa`);

--
-- Indices de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  ADD PRIMARY KEY (`id_dorsal`),
  ADD KEY `ID_cursa` (`id_cursa`,`dni_participante`,`id_categoria`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `tbl_participante`
--
ALTER TABLE `tbl_participante`
  ADD PRIMARY KEY (`dni_participante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_categoria`
--
ALTER TABLE `tbl_categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_cursa`
--
ALTER TABLE `tbl_cursa`
  MODIFY `id_cursa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  MODIFY `id_dorsal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_inscripcion`
--
ALTER TABLE `tbl_inscripcion`
  ADD CONSTRAINT `tbl_inscripcion_ibfk_1` FOREIGN KEY (`id_cursa`) REFERENCES `tbl_cursa` (`id_cursa`),
  ADD CONSTRAINT `tbl_inscripcion_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `tbl_categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
