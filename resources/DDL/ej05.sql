CREATE DATABASE  IF NOT EXISTS `LosAlmacenes` 
USE `LosAlmacenes`;

CREATE TABLE `almacenes` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Lugar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Capacidad` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `cajas` (
  `NumReferencia` char(5) NOT NULL,
  `Contenido` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Valor` int DEFAULT NULL,
  `almacen` int DEFAULT NULL,
  PRIMARY KEY (`NumReferencia`),
  KEY `almacen` (`almacen`),
  CONSTRAINT `cajas_ibfk_1` FOREIGN KEY (`almacen`) REFERENCES `almacenes` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;