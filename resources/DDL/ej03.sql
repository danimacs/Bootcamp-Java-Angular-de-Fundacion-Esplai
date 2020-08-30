CREATE DATABASE  IF NOT EXISTS `tienda_informatica` ;
USE `tienda_informatica`;

CREATE TABLE `articulos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `fabricante` int DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fabricante` (`fabricante`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`fabricante`) REFERENCES `fabricantes` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `fabricantes` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

