-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2023 a las 21:00:42
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cajero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banco`
--

CREATE TABLE `banco` (
  `Id_Banco` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `Id_suc` int(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `num_cajeros` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `banco`
--

INSERT INTO `banco` (`Id_Banco`, `nombre`, `Id_suc`, `direccion`, `num_cajeros`) VALUES
(1234, 'Tu Banco', 4342, 'Av San Martin 1256', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajero`
--

CREATE TABLE `cajero` (
  `Id_Cajero` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `cap_max` varchar(10) DEFAULT NULL,
  `cant_dinero` int(10) DEFAULT NULL,
  `tarj_ret` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cajero`
--

INSERT INTO `cajero` (`Id_Cajero`, `nombre`, `ubicacion`, `cap_max`, `cant_dinero`, `tarj_ret`) VALUES
(1, 'Cajero 1', 'Av san Martin 1256', '', 100000, 'Tarjeta Tu'),
(2, 'Cajero 2', 'Av san Martin 1256', '', 100000, 'Tarjeta Tu'),
(3, 'Cajero 3', 'Tucuman 2453', '', 100000, 'Tarjeta Tu');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_banc`
--

CREATE TABLE `cuenta_banc` (
  `Id_Cuenta` int(11) NOT NULL,
  `cbu` varchar(50) DEFAULT NULL,
  `alias` varchar(25) DEFAULT NULL,
  `tarj_asoc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta_banc`
--

INSERT INTO `cuenta_banc` (`Id_Cuenta`, `cbu`, `alias`, `tarj_asoc`) VALUES
(12345, '30098765432135456', 'Marcela.perez', 'Tarjeta Tu Banco'),
(123456, '3098760546435457', 'Josefina.suarez', 'Tarjeta Tu Banco'),
(1234567, '390975435644458', 'Pedro.alfonso', 'Tarjeta Tu Banco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_tran`
--

CREATE TABLE `detalle_tran` (
  `Id_TransaccionU` int(11) NOT NULL,
  `cuenta_asoc` varchar(50) DEFAULT NULL,
  `cuenta_or` varchar(50) DEFAULT NULL,
  `cuenta_dest` varchar(50) DEFAULT NULL,
  `fecha_hora` date DEFAULT NULL,
  `monto` int(11) DEFAULT NULL,
  `Id_suc` int(11) DEFAULT NULL,
  `Id_Cajero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_tran`
--

INSERT INTO `detalle_tran` (`Id_TransaccionU`, `cuenta_asoc`, `cuenta_or`, `cuenta_dest`, `fecha_hora`, `monto`, `Id_suc`, `Id_Cajero`) VALUES
(6743224, '12345', 'Marcela.perez', 'Josefina.suarez', '2023-03-25', 10000, 4342, 1),
(56874223, '123456', 'Josefina.suarez', 'Pedro.alfonso', '2023-03-23', 30000, 4342, 2),
(98767755, '1234567', 'Pedro.alfonso', 'maria.juarez', '2023-03-24', 20000, 4342, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `Id_Persona` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `dni` int(20) DEFAULT NULL,
  `cuil_cuit` int(20) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `tel_cel` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`Id_Persona`, `nombre`, `apellido`, `dni`, `cuil_cuit`, `fecha_nac`, `direccion`, `tel_cel`, `email`) VALUES
(5123, 'Marcela ', 'Perez', 39123456, 2147483647, '1995-03-26', 'Salta 1234', '261235853', 'marceperez@gmail.com'),
(51234, 'Josefina ', 'Suarez', 391234567, 27391234, '1995-05-11', 'Montevideo 990', '261235854', 'suarez@gmail.com'),
(512345, 'Pedro', 'Alfonso', 39241567, 209874439, '1995-07-10', 'Lavalle 43', '261245784', 'pedroalfonso@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `system_banc`
--

CREATE TABLE `system_banc` (
  `Id_Banco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `system_banc`
--

INSERT INTO `system_banc` (`Id_Banco`) VALUES
(4342);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta`
--

CREATE TABLE `tarjeta` (
  `Id_Tarjeta` int(11) NOT NULL,
  `num_tarjeta` int(11) DEFAULT NULL,
  `cod_seg` int(11) DEFAULT NULL,
  `fecha_venc` date DEFAULT NULL,
  `clave` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjeta`
--

INSERT INTO `tarjeta` (`Id_Tarjeta`, `num_tarjeta`, `cod_seg`, `fecha_venc`, `clave`) VALUES
(2230, 2147483647, 123, '2025-03-25', 543);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `Id_TransaccionB` int(11) NOT NULL,
  `Id_Banco` int(11) DEFAULT NULL,
  `fecha_hora` date DEFAULT NULL,
  `montos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`Id_TransaccionB`, `Id_Banco`, `fecha_hora`, `montos`) VALUES
(33456, 4342, '2023-03-25', 10000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trasaccion_cajero`
--

CREATE TABLE `trasaccion_cajero` (
  `Id_TransaccionC` int(11) NOT NULL,
  `Id_Cajero` int(11) DEFAULT NULL,
  `Id_Banco` int(11) DEFAULT NULL,
  `fecha_hora` date DEFAULT NULL,
  `monto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trasaccion_cajero`
--

INSERT INTO `trasaccion_cajero` (`Id_TransaccionC`, `Id_Cajero`, `Id_Banco`, `fecha_hora`, `monto`) VALUES
(2021, 1, 4342, '2023-03-25', 10000),
(2022, 2, 4342, '2023-03-23', 30000),
(2023, 3, 4342, '2023-03-24', 20000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_User` int(11) NOT NULL,
  `usuario` varchar(15) DEFAULT NULL,
  `passw` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_User`, `usuario`, `passw`) VALUES
(12, 'marcelaperez', '123456'),
(13, 'josefinasuarez', '1234567'),
(14, 'pedroalfonso', '12345678');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`Id_Banco`);

--
-- Indices de la tabla `cajero`
--
ALTER TABLE `cajero`
  ADD PRIMARY KEY (`Id_Cajero`);

--
-- Indices de la tabla `cuenta_banc`
--
ALTER TABLE `cuenta_banc`
  ADD PRIMARY KEY (`Id_Cuenta`);

--
-- Indices de la tabla `detalle_tran`
--
ALTER TABLE `detalle_tran`
  ADD PRIMARY KEY (`Id_TransaccionU`),
  ADD UNIQUE KEY `cuenta_dest` (`cuenta_dest`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`Id_Persona`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `cuil_cuit` (`cuil_cuit`);

--
-- Indices de la tabla `system_banc`
--
ALTER TABLE `system_banc`
  ADD PRIMARY KEY (`Id_Banco`);

--
-- Indices de la tabla `tarjeta`
--
ALTER TABLE `tarjeta`
  ADD PRIMARY KEY (`Id_Tarjeta`),
  ADD UNIQUE KEY `num_tarjeta` (`num_tarjeta`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`Id_TransaccionB`);

--
-- Indices de la tabla `trasaccion_cajero`
--
ALTER TABLE `trasaccion_cajero`
  ADD PRIMARY KEY (`Id_TransaccionC`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_User`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
