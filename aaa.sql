-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-09-2019 a las 02:52:57
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aaa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesos`
--

CREATE TABLE `accesos` (
  `Id_acceso` int(11) NOT NULL,
  `tipo_de_usuario` int(100) NOT NULL,
  `Id_objeto` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accesos`
--

INSERT INTO `accesos` (`Id_acceso`, `tipo_de_usuario`, `Id_objeto`, `activo`) VALUES
(1, 2, 2, 1),
(2, 2, 3, 1),
(3, 2, 4, 1),
(4, 2, 6, 1),
(5, 1, 5, 1),
(6, 2, 8, 1),
(7, 1, 1, 1),
(10, 2, 9, 1),
(11, 2, 10, 1),
(13, 1, 12, 1),
(15, 1, 15, 1),
(16, 2, 14, 1),
(17, 2, 16, 1),
(18, 1, 7, 1),
(22, 2, 20, 1),
(23, 1, 21, 1),
(24, 2, 22, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `id_area` int(100) NOT NULL,
  `nombre_area` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`id_area`, `nombre_area`, `activo`) VALUES
(1, 'Informatica', 0),
(2, 'Finanzas', 0),
(3, 'Base de datos', 1),
(4, 'Telecomunicaciones', 1),
(5, 'Salud', 1),
(6, 'Ingenieria', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campus`
--

CREATE TABLE `campus` (
  `id_campus` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `activo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `campus`
--

INSERT INTO `campus` (`id_campus`, `nombre`, `activo`) VALUES
(1, 'Ceutec', 1),
(2, 'Unah', 1),
(3, 'UNITEC', 1),
(4, 'Ceutec CA', 0),
(5, 'Ceutec Proceres', 1),
(6, 'Ceutec Prado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_carrera` int(100) NOT NULL,
  `nombre_carrera` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `nombre_carrera`, `activo`) VALUES
(1, 'Diseno y Desarrollo Web', 1),
(2, 'Derecho', 0),
(3, 'Redes', 1),
(4, 'Enfermeria Auxiliar', 1),
(5, 'Ingeniera en Sistemas', 1),
(6, 'Call Center', 0),
(7, 'DiseÃ±o Grafico', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id_educacion` int(100) NOT NULL,
  `nivel_de_grado` int(100) NOT NULL,
  `fecha_de_inicio` date NOT NULL,
  `fecha_de_fin` date NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `id_campus` int(100) NOT NULL,
  `id_carrera` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id_educacion`, `nivel_de_grado`, `fecha_de_inicio`, `fecha_de_fin`, `nombre_usuario`, `id_campus`, `id_carrera`) VALUES
(1, 1, '0000-00-00', '0000-00-00', 'Ana0022', 1, 1),
(2, 1, '2014-01-01', '2018-12-24', 'Alex02', 1, 3),
(3, 1, '0000-00-00', '0000-00-00', 'Angel99', 1, 1),
(6, 1, '0000-00-00', '0000-00-00', 'Angel99', 1, 1),
(7, 1, '0000-00-00', '0000-00-00', 'Angel99', 1, 1),
(8, 1, '0000-00-00', '0000-00-00', 'ross77', 1, 1),
(9, 1, '2009-09-19', '2018-12-05', 'Luis10', 2, 1),
(10, 4, '2001-10-11', '2001-02-01', 'Dakell', 3, 2),
(12, 1, '2016-01-01', '2018-12-01', 'Dakell', 2, 1),
(13, 3, '0000-00-00', '0000-00-00', 'Fer01', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia_laboral`
--

CREATE TABLE `experiencia_laboral` (
  `id_experiencia` int(100) NOT NULL,
  `lugar_de_trabajo` varchar(100) NOT NULL,
  `fecha_de_inicio` date NOT NULL,
  `fecha_de_fin` date NOT NULL,
  `salario` varchar(100) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `experiencia_laboral`
--

INSERT INTO `experiencia_laboral` (`id_experiencia`, `lugar_de_trabajo`, `fecha_de_inicio`, `fecha_de_fin`, `salario`, `nombre_usuario`) VALUES
(1, 'Ficohsa', '2018-01-01', '0000-00-00', '15000', 'Jordan01'),
(2, 'UUNITEC', '2012-12-09', '2019-12-02', '9998', 'Luis10'),
(3, 'LOTO', '2017-09-15', '2019-09-15', '100000', 'Alex02'),
(4, 'Ficohsa', '2009-01-01', '2018-03-03', '1500', 'Dakell');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas`
--

CREATE TABLE `herramientas` (
  `id_herramientas` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `herramientas`
--

INSERT INTO `herramientas` (`id_herramientas`, `descripcion`, `activo`) VALUES
(1, 'Angular', 1),
(2, 'MySQL', 1),
(3, 'Javascript', 1),
(4, 'Office', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramientas_de_usuario`
--

CREATE TABLE `herramientas_de_usuario` (
  `id_relacion` int(100) NOT NULL,
  `id_herramientas` int(100) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `id_nivel` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `herramientas_de_usuario`
--

INSERT INTO `herramientas_de_usuario` (`id_relacion`, `id_herramientas`, `nombre_usuario`, `id_nivel`) VALUES
(2, 3, 'Ana0022', 5),
(3, 2, 'Luis10', 5),
(4, 1, 'Luis10', 5),
(5, 2, 'Alex02', 3),
(6, 1, 'Dakell', 3),
(8, 2, 'Dakell', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `id_idioma` int(100) NOT NULL,
  `nombre_del_idioma` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `idioma`
--

INSERT INTO `idioma` (`id_idioma`, `nombre_del_idioma`, `activo`) VALUES
(1, 'Ingles', 1),
(2, 'Frances', 1),
(3, 'Espanol', 1),
(4, 'Mandarin', 1),
(5, 'Japones', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma_por_persona`
--

CREATE TABLE `idioma_por_persona` (
  `id_relacion` int(100) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `id_idioma` int(100) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `id_nivel` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `idioma_por_persona`
--

INSERT INTO `idioma_por_persona` (`id_relacion`, `activo`, `id_idioma`, `nombre_usuario`, `id_nivel`) VALUES
(1, 1, 2, 'Jordan01', 1),
(2, 1, 1, 'Alex02', 5),
(3, 1, 1, 'Luis10', 3),
(4, 1, 2, 'Luis10', 3),
(5, 0, 1, 'Luis10', 3),
(6, 1, 2, 'Alex02', 3),
(7, 1, 1, 'Dakell', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id_nivel` int(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `Tipo_Nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivel`
--

INSERT INTO `nivel` (`id_nivel`, `nombre`, `activo`, `Tipo_Nivel`) VALUES
(1, 'Completo', 1, 1),
(2, 'En curso', 0, 1),
(3, 'Principiante', 1, 2),
(4, 'Medio', 1, 2),
(5, 'Experto', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto`
--

CREATE TABLE `objeto` (
  `Id_objeto` int(11) NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Ruta` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `objeto`
--

INSERT INTO `objeto` (`Id_objeto`, `Descripcion`, `Ruta`, `Activo`) VALUES
(1, 'Mis Idiomas', 'FormularioIdioma_por_persona.html', 1),
(2, 'Acceso', 'FormularioAcceso.html', 1),
(3, 'Area', 'FormularioArea.html', 1),
(4, 'Campus', 'FormularioCampus.html', 1),
(5, 'Mis Experiencias Laborales', 'Formulario_Experiencia_Laboral.html', 1),
(6, 'Carrera', 'FormularioCarrera.html', 1),
(7, 'Mi Educacion', 'FormularioEducacion.html', 1),
(8, 'Idioma', 'FormularioIdioma.html', 1),
(9, 'Nivel', 'FormularioNivel.html', 1),
(10, 'Objeto', 'FormularioObjeto.html', 1),
(12, 'Mis Areas', 'FormularioUsuarioArea.html', 1),
(14, 'Herramientas', 'FormularioHerramienta.html', 1),
(15, 'Mis Herramientas', 'FormularioHerramientas_usuario.html', 1),
(16, 'Tipo Usuario', 'FormularioTipo_usuario.html', 1),
(20, 'Usuario Administrador', 'FormularioUsuarioAd.html', 1),
(21, 'Mi perfil', 'ActualizarUsuario.html', 1),
(22, 'Reportes', 'Consumo.html', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE `sesion` (
  `IdSesion` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `FechaInicio` date NOT NULL,
  `FechaFin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`IdSesion`, `nombre_usuario`, `FechaInicio`, `FechaFin`) VALUES
(1, 'admin', '2019-09-13', '2019-09-13'),
(2, 'admin', '2019-09-13', '2019-09-13'),
(3, 'admin', '2019-09-13', '2019-09-13'),
(4, 'admin', '2019-09-13', '2019-09-13'),
(5, 'admin', '2019-09-16', '2019-09-16'),
(6, 'Alex02', '2019-09-16', '2019-09-16'),
(7, 'admin', '2019-09-16', '0000-00-00'),
(8, 'admin', '2019-09-16', '0000-00-00'),
(9, 'Alex02', '2019-09-16', '2019-09-16'),
(10, 'admin', '2019-09-16', '0000-00-00'),
(11, 'admin', '2019-09-16', '0000-00-00'),
(12, 'admin', '2019-09-16', '0000-00-00'),
(13, 'admin', '2019-09-16', '0000-00-00'),
(14, 'admin', '2019-09-16', '0000-00-00'),
(15, 'admin', '2019-09-16', '0000-00-00'),
(16, 'luis', '2019-09-16', '0000-00-00'),
(17, 'luis', '2019-09-16', '0000-00-00'),
(18, 'luis', '2019-09-16', '0000-00-00'),
(19, 'luis', '2019-09-16', '0000-00-00'),
(20, 'luis', '2019-09-16', '0000-00-00'),
(21, 'Alex02', '2019-09-16', '2019-09-16'),
(22, 'luis', '2019-09-16', '0000-00-00'),
(23, 'luis', '2019-09-16', '0000-00-00'),
(24, 'admin', '2019-09-16', '0000-00-00'),
(25, 'admin', '2019-09-16', '0000-00-00'),
(26, 'luis', '2019-09-16', '0000-00-00'),
(27, 'luis', '2019-09-16', '0000-00-00'),
(28, 'admin', '2019-09-16', '0000-00-00'),
(29, 'luis', '2019-09-16', '0000-00-00'),
(30, 'admin', '2019-09-16', '0000-00-00'),
(31, 'admin', '2019-09-16', '0000-00-00'),
(32, 'luis', '2019-09-16', '0000-00-00'),
(33, 'admin', '2019-09-16', '0000-00-00'),
(34, 'admin', '2019-09-16', '0000-00-00'),
(35, 'admin', '2019-09-16', '0000-00-00'),
(36, 'admin', '2019-09-16', '0000-00-00'),
(37, 'admin', '2019-09-16', '0000-00-00'),
(38, 'admin', '2019-09-16', '0000-00-00'),
(39, 'admin', '2019-09-16', '0000-00-00'),
(40, 'admin', '2019-09-16', '0000-00-00'),
(41, 'admin', '2019-09-16', '0000-00-00'),
(42, 'admin', '2019-09-16', '0000-00-00'),
(43, 'Ana0022', '2019-09-17', '0000-00-00'),
(44, 'Ana0022', '2019-09-17', '0000-00-00'),
(45, 'Ana0022', '2019-09-17', '2019-09-17'),
(46, 'admin', '2019-09-17', '0000-00-00'),
(47, 'admin', '2019-09-17', '0000-00-00'),
(48, 'admin', '2019-09-17', '0000-00-00'),
(49, 'admin', '2019-09-17', '0000-00-00'),
(50, 'admin', '2019-09-17', '0000-00-00'),
(51, 'admin', '2019-09-17', '0000-00-00'),
(52, 'admin', '2019-09-17', '0000-00-00'),
(53, 'admin', '2019-09-17', '0000-00-00'),
(54, 'Ana0022', '2019-09-17', '2019-09-17'),
(55, 'admin', '2019-09-17', '0000-00-00'),
(56, 'Alex02', '2019-09-17', '0000-00-00'),
(57, 'Ana0022', '2019-09-17', '2019-09-17'),
(58, 'luis', '2019-09-17', '2019-09-17'),
(59, 'admin', '2019-09-17', '0000-00-00'),
(60, 'Jess22', '2019-09-19', '0000-00-00'),
(61, 'Jess22', '2019-09-19', '0000-00-00'),
(62, 'Angel99', '2019-09-19', '2019-09-19'),
(63, 'admin', '2019-09-19', '0000-00-00'),
(64, 'ross77', '2019-09-19', '2019-09-19'),
(65, 'admin', '2019-09-19', '0000-00-00'),
(66, 'Ana0022', '2019-09-19', '2019-09-19'),
(67, 'admin', '2019-09-19', '2019-09-19'),
(68, 'admin', '2019-09-19', '0000-00-00'),
(69, 'admin', '2019-09-19', '0000-00-00'),
(70, 'admin', '2019-09-19', '0000-00-00'),
(71, 'admin', '2019-09-19', '0000-00-00'),
(72, 'admin', '2019-09-19', '0000-00-00'),
(73, 'admin', '2019-09-19', '0000-00-00'),
(74, 'admin', '2019-09-19', '0000-00-00'),
(75, 'admin', '2019-09-19', '0000-00-00'),
(76, 'admin', '2019-09-19', '0000-00-00'),
(77, 'admin', '2019-09-19', '2019-09-19'),
(78, 'Luis10', '2019-09-19', '2019-09-19'),
(79, 'admin', '2019-09-19', '0000-00-00'),
(80, 'admin', '2019-09-19', '0000-00-00'),
(81, 'admin', '2019-09-19', '2019-09-19'),
(82, 'Alex02', '2019-09-19', '2019-09-19'),
(83, 'admin', '2019-09-19', '0000-00-00'),
(84, 'admin', '2019-09-19', '2019-09-19'),
(85, 'Alex02', '2019-09-19', '2019-09-19'),
(86, 'admin', '2019-09-19', '2019-09-19'),
(87, 'Alex02', '2019-09-19', '2019-09-19'),
(88, 'admin', '2019-09-19', '2019-09-19'),
(89, 'Alex02', '2019-09-19', '0000-00-00'),
(90, 'Alex02', '2019-09-19', '2019-09-19'),
(91, 'admin', '2019-09-19', '2019-09-19'),
(92, 'Angel99', '2019-09-19', '2019-09-19'),
(93, 'Fer01', '2019-09-19', '2019-09-19'),
(94, 'admin', '2019-09-19', '2019-09-19'),
(95, 'Fer01', '2019-09-19', '2019-09-19'),
(96, 'Luis10', '2019-09-19', '0000-00-00'),
(97, 'Ana0022', '2019-09-20', '2019-09-20'),
(98, 'admin', '2019-09-20', '2019-09-20'),
(99, 'admin', '2019-09-20', '0000-00-00'),
(100, 'dan09', '2019-09-20', '2019-09-20'),
(101, 'Dakell', '2019-09-20', '2019-09-20'),
(102, 'admin', '2019-09-20', '2019-09-20'),
(103, 'admin', '2019-09-20', '2019-09-20'),
(104, 'Dakell', '2019-09-20', '2019-09-20'),
(105, 'admin', '2019-09-20', '0000-00-00'),
(106, 'Dakell', '2019-09-20', '2019-09-20'),
(107, 'admin', '2019-09-20', '2019-09-20'),
(108, 'Alex02', '2019-09-20', '0000-00-00'),
(109, 'admin', '2019-09-20', '0000-00-00'),
(110, 'Alex02', '2019-09-20', '2019-09-20'),
(111, 'admin', '2019-09-20', '2019-09-20'),
(112, 'admin', '2019-09-20', '2019-09-20'),
(113, 'Dakell', '2019-09-20', '0000-00-00'),
(114, 'Dakell', '2019-09-20', '2019-09-20'),
(115, 'admin', '2019-09-20', '0000-00-00'),
(116, 'Dakell', '2019-09-20', '0000-00-00'),
(117, 'admin', '2019-09-20', '2019-09-20'),
(118, 'Fer01', '2019-09-20', '2019-09-20'),
(119, 'admin', '2019-09-20', '2019-09-20'),
(120, 'Fer01', '2019-09-20', '2019-09-20'),
(121, 'admin', '2019-09-20', '2019-09-20'),
(122, 'admin', '2019-09-20', '0000-00-00'),
(123, 'Alex02', '2019-09-20', '2019-09-20'),
(124, 'admin', '2019-09-20', '2019-09-20'),
(125, 'Dakell', '2019-09-20', '0000-00-00'),
(126, 'Dakell', '2019-09-20', '2019-09-20'),
(127, 'admin', '2019-09-20', '0000-00-00'),
(128, 'admin', '2019-09-20', '2019-09-20'),
(129, 'Dakell', '2019-09-20', '0000-00-00'),
(130, 'admin', '2019-09-20', '0000-00-00'),
(131, 'Dakell', '2019-09-20', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `tipo_de_usuario` int(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `activo` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`tipo_de_usuario`, `descripcion`, `activo`) VALUES
(1, 'Usuario Normal', 1),
(2, 'Administrador', 1),
(3, 'Usuario Estandar ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre_usuario` varchar(100) NOT NULL,
  `identidad` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `hoja_de_vida` mediumblob NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `expectativa_salarial` int(100) NOT NULL,
  `Tipo_de_usuario` int(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre_usuario`, `identidad`, `nombre`, `hoja_de_vida`, `fecha_nacimiento`, `correo_electronico`, `sexo`, `expectativa_salarial`, `Tipo_de_usuario`, `contrasena`) VALUES
('admin', '0801', 'Gerson', 0x433a66616b6570617468536974696f73207765622073656775726f732e706466, '1988-12-06', 'gerson@gmail.com', 'M', 0, 2, 'admin'),
('Alex02', '1210-1999-00001', 'Alex Perez', 0x433a66616b6570617468536974696f73207765622073656775726f732e706466, '2000-08-29', 'alex@gmail.com', 'M', 20000, 1, '123'),
('Ana0022', '1011-1998-78102', 'Ana Flores', 0x433a66616b6570617468536974696f73207765622073656775726f732e706466, '1998-09-16', 'ann@gmail.com', 'F', 15000, 1, 'ana'),
('Angel99', '0801-2000-98756', 'Angel Martinez', 0x433a66616b657061746849534f2032373030312e706466, '1998-08-05', 'angelM@gmail.com', 'M', 11000, 1, 'angel'),
('Dakell', '0801200222133', 'Dakell R', 0x433a66616b657061746864616b656c6c2e706466, '2001-10-11', 'dakell@gmail.com', 'M', 2147483647, 1, 'patito'),
('dan09', '1208', 'Daniel Carcamo', '', '1995-05-05', 'dan09@gmail.com', ' M', 1400, 2, 'dan'),
('DianaM', '1205-1989-00026', 'Diana Martinez', '', '1989-01-01', 'diana@gmail.com', ' F', 18000, 1, 'diana'),
('Fer01', '0801-1990-00003', 'Fernando Aguilar', '', '1990-09-01', 'fer@gmail.com', ' M', 6000, 1, 'abc'),
('Jess22', '0802-1996-35781', 'Jessie Flores', '', '1996-02-15', 'jess@gmail.com', ' F', 12000, 1, 'jess'),
('Jordan01', '0801-2000-10862', 'Jordan Barrientos', '', '2000-05-04', 'jordanbarrientos@gmail.com', ' M', 30000, 1, 'patito'),
('luis', '', '', '', '0000-00-00', '', '', 0, 2, 'ad'),
('Luis10', '0801200122133', 'Luis Amador', 0x433a66616b6570617468536974696f73207765622073656775726f732e706466, '2001-09-19', 'luis@gmail.com', 'M', 300000, 1, 'patito'),
('mjflores', '0801-1996-00032', 'Maria Flores', 0x433a66616b657061746849534f2032373030312e706466, '1996-08-16', 'mjflores@gmail.com', ' F', 18000, 1, 'flores'),
('ross77', '0801-1977-00004', 'Rosa Rodriguez', '', '1977-05-06', 'ross@gmail.com', ' F', 10000, 1, 'ab1'),
('sdads', 'dsas', 'hkjh', '', '2019-09-06', 'hjjh@gma.com', ' F', 230, 1, 'jkjhjj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_area`
--

CREATE TABLE `usuario_area` (
  `id_relacion` int(100) NOT NULL,
  `id_area` int(100) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_area`
--

INSERT INTO `usuario_area` (`id_relacion`, `id_area`, `nombre_usuario`) VALUES
(1, 1, 'Jordan01'),
(2, 4, 'Ana0022'),
(3, 3, 'Luis10'),
(4, 4, 'Alex02'),
(5, 1, 'Dakell'),
(6, 3, 'Dakell'),
(7, 4, 'Dakell');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD PRIMARY KEY (`Id_acceso`),
  ADD UNIQUE KEY `Id_acceso` (`Id_acceso`,`Id_objeto`),
  ADD KEY `tipo_de_usuario` (`tipo_de_usuario`),
  ADD KEY `tipo_de_usuario_2` (`tipo_de_usuario`),
  ADD KEY `fk_objeto` (`Id_objeto`);

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indices de la tabla `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`id_campus`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id_educacion`),
  ADD KEY `fk_campus` (`id_campus`),
  ADD KEY `fk_usuario` (`nombre_usuario`),
  ADD KEY `fk_carrera` (`id_carrera`),
  ADD KEY `fk_nivel1` (`nivel_de_grado`);

--
-- Indices de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD PRIMARY KEY (`id_experiencia`),
  ADD KEY `fk_usuario2` (`nombre_usuario`);

--
-- Indices de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  ADD PRIMARY KEY (`id_herramientas`);

--
-- Indices de la tabla `herramientas_de_usuario`
--
ALTER TABLE `herramientas_de_usuario`
  ADD PRIMARY KEY (`id_relacion`),
  ADD KEY `fk_herramientas` (`id_herramientas`),
  ADD KEY `fk_nivel` (`id_nivel`),
  ADD KEY `usuario` (`nombre_usuario`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`id_idioma`);

--
-- Indices de la tabla `idioma_por_persona`
--
ALTER TABLE `idioma_por_persona`
  ADD PRIMARY KEY (`id_relacion`),
  ADD KEY `fk_usuario4` (`nombre_usuario`),
  ADD KEY `fk_nivel2` (`id_nivel`),
  ADD KEY `fk_idioma` (`id_idioma`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `objeto`
--
ALTER TABLE `objeto`
  ADD PRIMARY KEY (`Id_objeto`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`IdSesion`),
  ADD KEY `nombre_usuario` (`nombre_usuario`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`tipo_de_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nombre_usuario`),
  ADD KEY `rela` (`Tipo_de_usuario`);

--
-- Indices de la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  ADD PRIMARY KEY (`id_relacion`),
  ADD KEY `fk_usuario5` (`nombre_usuario`),
  ADD KEY `fk_area` (`id_area`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accesos`
--
ALTER TABLE `accesos`
  MODIFY `Id_acceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `area`
--
ALTER TABLE `area`
  MODIFY `id_area` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `campus`
--
ALTER TABLE `campus`
  MODIFY `id_campus` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id_carrera` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id_educacion` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  MODIFY `id_experiencia` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `herramientas`
--
ALTER TABLE `herramientas`
  MODIFY `id_herramientas` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `herramientas_de_usuario`
--
ALTER TABLE `herramientas_de_usuario`
  MODIFY `id_relacion` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `id_idioma` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `idioma_por_persona`
--
ALTER TABLE `idioma_por_persona`
  MODIFY `id_relacion` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id_nivel` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `objeto`
--
ALTER TABLE `objeto`
  MODIFY `Id_objeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `sesion`
--
ALTER TABLE `sesion`
  MODIFY `IdSesion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `tipo_de_usuario` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  MODIFY `id_relacion` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accesos`
--
ALTER TABLE `accesos`
  ADD CONSTRAINT `accesos_ibfk_1` FOREIGN KEY (`tipo_de_usuario`) REFERENCES `tipo_usuario` (`tipo_de_usuario`),
  ADD CONSTRAINT `fk_objeto` FOREIGN KEY (`Id_objeto`) REFERENCES `objeto` (`Id_objeto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `fk_campus` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id_campus`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_carrera` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id_carrera`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nivel1` FOREIGN KEY (`nivel_de_grado`) REFERENCES `nivel` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`nombre_usuario`) REFERENCES `usuario` (`nombre_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `experiencia_laboral`
--
ALTER TABLE `experiencia_laboral`
  ADD CONSTRAINT `fk_usuario2` FOREIGN KEY (`nombre_usuario`) REFERENCES `usuario` (`nombre_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `herramientas_de_usuario`
--
ALTER TABLE `herramientas_de_usuario`
  ADD CONSTRAINT `fk_herramientas` FOREIGN KEY (`id_herramientas`) REFERENCES `herramientas` (`id_herramientas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nivel` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario` FOREIGN KEY (`nombre_usuario`) REFERENCES `usuario` (`nombre_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `idioma_por_persona`
--
ALTER TABLE `idioma_por_persona`
  ADD CONSTRAINT `fk_idioma` FOREIGN KEY (`id_idioma`) REFERENCES `idioma` (`id_idioma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nivel2` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario4` FOREIGN KEY (`nombre_usuario`) REFERENCES `usuario` (`nombre_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD CONSTRAINT `sesion_ibfk_1` FOREIGN KEY (`nombre_usuario`) REFERENCES `usuario` (`nombre_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_tipo_usuario` FOREIGN KEY (`Tipo_de_usuario`) REFERENCES `tipo_usuario` (`tipo_de_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_area`
--
ALTER TABLE `usuario_area`
  ADD CONSTRAINT `fk_area` FOREIGN KEY (`id_area`) REFERENCES `area` (`id_area`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario5` FOREIGN KEY (`nombre_usuario`) REFERENCES `usuario` (`nombre_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
