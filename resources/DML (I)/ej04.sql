CREATE DATABASE  IF NOT EXISTS `grandes_almacenes`;
USE `grandes_almacenes`;

CREATE TABLE `cajeros` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nom_apels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cajeros` VALUES (1,'Jan Suarez'),(2,'Marisol Elvira'),(3,'Rosalia Lobato'),(4,'Marcela Dos-Santos'),(5,'Dumitru Guerra'),(6,'Felicidad Moro'),(7,'Elia Zaragoza'),(8,'Alexandra Hervas'),(9,'Leonor Villaverde'),(10,'Luna Bermudez');

CREATE TABLE `maquinas_registradoras` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `piso` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `maquinas_registradoras` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);

CREATE TABLE `productos` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `precio` int DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `productos` VALUES (1,'Naranja',1),(2,'Cereza',3),(3,'Sandía',2),(4,'Melón',3),(5,'Manzana',1),(6,'Platano',1),(7,'Ciruelas',1),(8,'Piña',3),(9,'Coco',5),(10,'Arandano',4);

CREATE TABLE `venta` (
  `cajero` int NOT NULL,
  `maquina` int NOT NULL,
  `producto` int NOT NULL,
  PRIMARY KEY (`cajero`,`maquina`,`producto`),
  KEY `maquina` (`maquina`),
  KEY `producto` (`producto`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`cajero`) REFERENCES `cajeros` (`codigo`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`maquina`) REFERENCES `maquinas_registradoras` (`codigo`),
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`producto`) REFERENCES `productos` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `venta` VALUES (5,1,1),(9,2,8),(2,4,7),(4,4,1),(2,5,6),(7,5,8),(1,7,9),(3,10,10),(6,10,7),(7,10,6);