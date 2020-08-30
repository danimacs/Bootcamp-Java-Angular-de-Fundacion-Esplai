CREATE DATABASE  IF NOT EXISTS `empresa` ;
USE `empresa`;

CREATE TABLE `piezas` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `proveedores` (
  `Id` char(4) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `suministra` (
  `CodigoPieza` int NOT NULL,
  `IdProveedor` char(4) NOT NULL,
  `Precio` int DEFAULT NULL,
  PRIMARY KEY (`CodigoPieza`,`IdProveedor`),
  KEY `IdProveedor` (`IdProveedor`),
  CONSTRAINT `suministra_ibfk_1` FOREIGN KEY (`CodigoPieza`) REFERENCES `piezas` (`Codigo`),
  CONSTRAINT `suministra_ibfk_2` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedores` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

