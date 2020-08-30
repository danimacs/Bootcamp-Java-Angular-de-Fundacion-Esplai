CREATE DATABASE  IF NOT EXISTS `directores`;
USE `directores`;

CREATE TABLE `despachos` (
  `numero` int NOT NULL AUTO_INCREMENT,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `directores` (
  `dni` varchar(8) NOT NULL,
  `nom_apels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dni_jefe` varchar(8) DEFAULT NULL,
  `despacho` int DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `despacho` (`despacho`),
  KEY `dni_jefe` (`dni_jefe`),
  CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`despacho`) REFERENCES `despachos` (`numero`),
  CONSTRAINT `directores_ibfk_2` FOREIGN KEY (`dni_jefe`) REFERENCES `directores` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;