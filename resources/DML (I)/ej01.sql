CREATE DATABASE  IF NOT EXISTS `directores`;
USE `directores`;

CREATE TABLE `despachos` (
  `numero` int NOT NULL AUTO_INCREMENT,
  `capacidad` int DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `despachos` VALUES (1,3),(2,1),(3,5),(4,2),(5,6),(6,4),(7,1),(8,9),(9,2),(10,6);

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

INSERT INTO `directores` VALUES ('13688746','Alejandro Salmeron','98742331',4),('32619642','Angelina Luna','65981234',2),('32969841','Anton Solano','98742331',4),('36842513','Bilal López','32969841',5),('41236549','Yaiza Palau','32619642',3),('65981234','Reyes Morillo',NULL,1),('66613254','Irene Montilla','32969841',5),('74621236','Aina Moran','32969841',5),('94135486','Alfredo Picazo','32619642',3),('98742331','Delfina Arenas','32619642',3);