-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2024 a las 17:47:02
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_ofertas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(3) NOT NULL,
  `razon_social` varchar(128) NOT NULL DEFAULT '',
  `ruc` varchar(11) NOT NULL DEFAULT '',
  `correo` varchar(64) NOT NULL DEFAULT '',
  `direccion` varchar(128) NOT NULL DEFAULT '',
  `telefono` varchar(10) NOT NULL DEFAULT '',
  `decripcion` varchar(500) NOT NULL DEFAULT '',
  `rubro` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta`
--

CREATE TABLE `oferta` (
  `id` int(11) NOT NULL,
  `titulo` varchar(64) NOT NULL DEFAULT '',
  `id_empresa` int(11) DEFAULT NULL,
  `pago` int(5) DEFAULT NULL,
  `horario` varchar(64) NOT NULL DEFAULT '',
  `especilidad` varchar(64) NOT NULL DEFAULT '',
  `modalidad` varchar(64) NOT NULL DEFAULT '',
  `fecha_publicaion` date DEFAULT NULL,
  `fecha_sierre` date DEFAULT NULL,
  `maximo_postulante` int(3) DEFAULT NULL,
  `cantidad_postulante` int(20) DEFAULT NULL,
  `estado` varchar(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulaciones`
--

CREATE TABLE `postulaciones` (
  `id` int(11) NOT NULL,
  `id_postulante` varchar(3) NOT NULL DEFAULT '',
  `id_oferta` varchar(3) NOT NULL,
  `fecha-postulante` int(11) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postulante`
--

CREATE TABLE `postulante` (
  `id_postulante` int(3) NOT NULL,
  `dni` varchar(7) NOT NULL DEFAULT '',
  `nombre` varchar(10) NOT NULL DEFAULT '',
  `apellido` varchar(10) NOT NULL DEFAULT '',
  `edad` varchar(3) NOT NULL DEFAULT '',
  `correo` varchar(20) NOT NULL DEFAULT '',
  `telefono` varchar(10) NOT NULL DEFAULT '',
  `direccion` varchar(25) NOT NULL DEFAULT '',
  `estado civil` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `postulante`
--
ALTER TABLE `postulante`
  ADD PRIMARY KEY (`id_postulante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oferta`
--
ALTER TABLE `oferta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulaciones`
--
ALTER TABLE `postulaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `postulante`
--
ALTER TABLE `postulante`
  MODIFY `id_postulante` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
