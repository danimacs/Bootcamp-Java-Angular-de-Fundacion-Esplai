CREATE DATABASE  IF NOT EXISTS `empresa`;
USE `empresa`;

CREATE TABLE `piezas` (
  `Codigo` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `piezas` VALUES (1,'Cilindro de freno de rueda'),(2,'Pastillas de freno'),(3,'Zapatas de freno'),(4,'Discos de freno'),(5,'Tambor de freno'),(6,'Zapatas de freno de mano'),(7,'Latiguillos de freno'),(8,'Sensor de abs'),(9,'Cilindro receptor de embrague'),(10,'Cilindro maestro de embrague');

CREATE TABLE `proveedores` (
  `Id` char(4) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `proveedores` VALUES ('1','Bosch'),('10','NGK'),('2','ABS'),('3','MAPCO'),('4','BREMBO'),('5','STARK'),('6','VALEO'),('7','SWAG'),('8','VAN WEZEL'),('9','SACHS');

CREATE TABLE `suministra` (
  `CodigoPieza` int NOT NULL,
  `IdProveedor` char(4) NOT NULL,
  `Precio` int DEFAULT NULL,
  PRIMARY KEY (`CodigoPieza`,`IdProveedor`),
  KEY `IdProveedor` (`IdProveedor`),
  CONSTRAINT `suministra_ibfk_1` FOREIGN KEY (`CodigoPieza`) REFERENCES `piezas` (`Codigo`),
  CONSTRAINT `suministra_ibfk_2` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedores` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `suministra` VALUES (1,'5',11),(2,'4',30),(3,'9',16),(4,'7',42),(5,'2',29),(6,'5',17),(7,'3',8),(8,'6',15),(9,'10',13),(10,'1',38);