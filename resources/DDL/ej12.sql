CREATE DATABASE  IF NOT EXISTS `academia` ;
USE `academia`;

CREATE TABLE `alumnos` (
  `DNI` varchar(9) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido1` varchar(15) DEFAULT NULL,
  `apellido2` varchar(15) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `curso` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `curso` (`curso`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `cursos` (`cod_curso`),
  CONSTRAINT `alumnos_chk_1` CHECK ((`curso` is not null)),
  CONSTRAINT `chk_sexo` CHECK ((`sexo` in (_utf8mb4'H',_utf8mb4'M')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `profesores` (
  `DNI` varchar(9) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido1` varchar(15) DEFAULT NULL,
  `apellido2` varchar(15) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `titulo` varchar(10) DEFAULT NULL,
  `gana` int NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cursos` (
  `cod_curso` varchar(10) NOT NULL,
  `nombre_curso` varchar(10) DEFAULT NULL,
  `dni_profesor` varchar(9) DEFAULT NULL,
  `maximo_alumnos` int DEFAULT NULL,
  `fecha_incio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `num_horas` int NOT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `dni_profesor` (`dni_profesor`),
  CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`dni_profesor`) REFERENCES `profesores` (`DNI`),
  CONSTRAINT `cursos_chk_1` CHECK ((`fecha_incio` < `fecha_fin`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

