CREATE DATABASE  IF NOT EXISTS `ciencia`;
USE `ciencia`;

CREATE TABLE `asignado_a` (
  `Cientifico` varchar(8) NOT NULL,
  `Proyecto` char(4) NOT NULL,
  PRIMARY KEY (`Cientifico`,`Proyecto`),
  KEY `Proyecto` (`Proyecto`),
  CONSTRAINT `asignado_a_ibfk_1` FOREIGN KEY (`Cientifico`) REFERENCES `cientificos` (`DNI`),
  CONSTRAINT `asignado_a_ibfk_2` FOREIGN KEY (`Proyecto`) REFERENCES `proyecto` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cientificos` (
  `DNI` varchar(8) NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `proyecto` (
  `Id` char(4) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Horas` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


