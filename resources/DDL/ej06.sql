CREATE DATABASE  IF NOT EXISTS `cine` ;
USE `cine`;

CREATE TABLE `peliculas` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CalificacionEdad` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `salas` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Pelicula` int DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `Pelicula` (`Pelicula`),
  CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`Pelicula`) REFERENCES `peliculas` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


