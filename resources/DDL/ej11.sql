CREATE DATABASE  IF NOT EXISTS `LosInvestigadores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `LosInvestigadores`;

CREATE TABLE `equipos` (
  `NumSerie` char(4) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Facultad` int DEFAULT NULL,
  PRIMARY KEY (`NumSerie`),
  KEY `Facultad` (`Facultad`),
  CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`Facultad`) REFERENCES `facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `facultad` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `investigadores` (
  `DNI` varchar(8) NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Facultad` int DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `Facultad` (`Facultad`),
  CONSTRAINT `investigadores_ibfk_1` FOREIGN KEY (`Facultad`) REFERENCES `facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `reserva` (
  `DNI` varchar(8) NOT NULL,
  `NumSerie` char(4) NOT NULL,
  `Comienzo` datetime DEFAULT NULL,
  `Fin` datetime DEFAULT NULL,
  PRIMARY KEY (`DNI`,`NumSerie`),
  KEY `NumSerie` (`NumSerie`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `investigadores` (`DNI`),
  CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`NumSerie`) REFERENCES `equipos` (`NumSerie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
