-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-07-2022 a las 23:12:34
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `backendnew`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `descripcionc` varchar(255) DEFAULT NULL,
  `nombrec` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `descripcionc`, `nombrec`) VALUES
(1, '(Jul 2022)', 'Full Stack Developer - Python - Codo a Codo'),
(2, '(Apr 2022)\r\nID: bef5fb0f-7afe-503e-4d82-fb5dab13ee6e', 'RAP Level 1 - RocketBot Academy'),
(3, '(Feb 2022)\r\nID: 5e8fc615-6968-4591-83a9-c7d8dcecf968', 'GL Become a Lider - Fundación Telefónica'),
(4, '(2021 - 2022)\r\nMumuki', 'Argentina Programa'),
(5, '(Apr 2021)\r\nID: 755eaeee-3d65-44c8-9213-a579fef3147a', 'Project Management with Agile methodologies and Lean Approaches - Fundación Telefónica'),
(6, '(Apr 2021)\r\nID: 0bf145b3-2f44-4fe4-b9a1-3e6b439cc7f1', 'Introduction to Programming - Fundación Telefónica'),
(7, '(Nov 2014)', 'Programming Fundamentals with SQL Server (21hs) - Educación IT'),
(8, '(May 2014)', 'Introduction to Database and SQL (12hs)- Educación IT');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id` int(11) NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id`, `descripcione`, `nombree`) VALUES
(2, 'Tertiary graduate.\r\nAverage: 8.\r\n2008 - 2011', 'System Analyst - ISIV (SUPERIOR INSTITUTE OF INFORMATICS VIRASORO)'),
(3, 'Tertiary graduate.\r\nAverage: 8.\r\n2005 - 2011', 'Multimedia Art Technician - UNA (NATIONAL UNIVERSITY OF ART)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `descripcione` varchar(255) DEFAULT NULL,
  `nombree` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `experiencia`
--

INSERT INTO `experiencia` (`id`, `descripcione`, `nombree`) VALUES
(2, 'Freelancer mode. Responsible for test plans creation, designing and execution test cases in Azure DevOps. Automation TCs creation and execution using Robot framework and Python language for APIs and UI scenarios.', 'Senior QA Analyst - Plan A Technologies (Apr 2022 to Present)'),
(4, 'Analysis of requirements, designing and execution for the tests cases, and preparing reports on the effectiveness and defects to the production team for white box testing. Experience with database using Mongo Db and Amazon Web Services.', 'Senior QA Analyst - Endava (Apr 2022 to Present)'),
(6, 'Analysis of requirements, designing and execution of test cases according to the acceptance criteria. Estimation/Planning. \r\nWorking in collaboration with BA, PO, SM, Software Developers, and other QA members. Agile methodologies (Scrum and Kanban).', 'Senior QA Analyst - MAS Global Consulting (Jun 2021 – Apr 2022)'),
(7, 'Analysis of requirements, designing and execution test cases in the environments: QA, SYS, SIT, UAT and Prod. Experience on APIs automation (SOAP & REST services). Implementation to production onsite toll system in Abu Dhabi (Jul - Oct 2019).', 'Senior QA Analyst - Kapsch TrafficCom Argentina S.A. (Apr 2016 – Jun 2021)'),
(8, 'Supervision of tech. Support & Customer Service for Mobile Pharma products for Latin America (application used by laboratories, pharmacies, and medical representatives). QA Testing of Web, mobiles & tablets apps (iOS-Windows-Android).', 'Help Desk Supervisor & QA Tester - Mobile I Business S.A. (2013 – 2016)'),
(9, 'Agents supervision for Norton Antivirus support (Portuguese & Spanish). First position in the world ranking of attention from Symantec, improvement of customer dissatisfaction from 25% to 1.5% & Net promoter score higher than 80% for Brazil.', 'Help Desk Supervisor - Teleperformance S.A. (2011 – 2013)'),
(10, 'Coach of Norton anti-virus (Symantec) products. Obtained certifications: products Norton & Train the Trainer. Courses carried out in Dublin. Realization of training to resellers in Santiago de Chile. Personal Manager: 40 agents.\r\n', 'Trainer - Teleperformance S.A. (2010 - 2011)'),
(11, 'Realization of monitoring to the agents who provide support of Norton products. Reports of quality of care and statistics, analysis, and execution of scripts, coaching players. \r\nPersonal Manager: 40 agents.\r\n', 'Customer Care & Technical Support QA Analyst - Teleperformance S.A. (2009 - 2010)'),
(12, 'Agent chat for technical support and customer service of Norton antivirus products (Symantec).', 'Technical & Customer Support - Teleperformance S.A. (2008 - 2009)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `img`, `apellido`, `nombre`) VALUES
(1, 'otraurl', 'Ramirez', 'Flavia Gisela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `rol_nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `rol_nombre`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre`, `nombre_usuario`, `password`) VALUES
(1, 'user@user.com', 'user', 'user', '$2a$10$F8DigcJsKNkpWyyR6TV3ruCcSo0GOICzn/vjtgs0FQWFiyhF3jdl.'),
(2, 'admin@admin.com', 'admin', 'admin', '$2a$10$7KM6VUSZ/LefvUyiHLOhkOrhNLg/ULTtZ1/ks.HfvoU63GXjX3c9a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `usuario_ide` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`usuario_ide`, `rol_id`, `usuario_id`) VALUES
(1, 2, 1),
(2, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_puhr3k3l7bj71hb7hk7ktpxn0` (`nombre_usuario`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`usuario_ide`,`rol_id`),
  ADD KEY `FK610kvhkwcqk2pxeewur4l7bd1` (`rol_id`),
  ADD KEY `FKbyfgloj439r9wr9smrms9u33r` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `FK610kvhkwcqk2pxeewur4l7bd1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKbyfgloj439r9wr9smrms9u33r` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FKoxupc0px4qdwoo1qnv6req3o` FOREIGN KEY (`usuario_ide`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
