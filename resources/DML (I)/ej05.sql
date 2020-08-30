CREATE DATABASE  IF NOT EXISTS `LosInvestigadores`;
USE `LosInvestigadores`;

CREATE TABLE `equipos` (
  `NumSerie` char(4) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Facultad` int DEFAULT NULL,
  PRIMARY KEY (`NumSerie`),
  KEY `Facultad` (`Facultad`),
  CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`Facultad`) REFERENCES `facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `equipos` VALUES ('1','Álgebra',5),('10','Física nuclear y astropartículas (GIFNA)',2),('2','Aminoácidos y péptidos',6),('3','Biocomputación y Física de Sistemas Complejos',4),('4','Biología estructural',10),('5','Catálisis Heterogénea en Síntesis Orgánicas Selectivas',8),('6','Catálisis homogénea por Compuestos Organometálicos',7),('7','Espectroscopia analítica y sensores',9),('8','Extinción y reconstrucción paleoambiental desde el Cretácico al Cuaternario',3),('9','Física Matemática',1);

CREATE TABLE `facultad` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `facultad` VALUES (1,'Universidad Autónoma de Barcelona'),(2,'Universidad Autónoma de Madrid'),(3,'Universidad Carlos III de Madrid'),(4,'Universidad Complutense de Madrid'),(5,'Universidad de A Coruña'),(6,'Universidad de Alcalá'),(7,'Universidad de Alicante'),(8,'Universidad de Almería'),(9,'Universidad de Barcelona'),(10,'Universidad de Burgos');

CREATE TABLE `investigadores` (
  `DNI` varchar(8) NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Facultad` int DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `Facultad` (`Facultad`),
  CONSTRAINT `investigadores_ibfk_1` FOREIGN KEY (`Facultad`) REFERENCES `facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `investigadores` VALUES ('23740542','Roxana Balaguer',7),('25243395','Ferran Corral',4),('39012728','Malika Toribio',10),('69019680','Francisco Gabarri',3),('74856594','Raúl da Silva',8),('78185609','Domingo Castello',1),('93615172','Ana-Belen Ubeda',2),('95939873','Alicia Díaz',9),('97856247','Antonia Andreu',5),('99744712','Sonsoles Huerta',6);

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

INSERT INTO `reserva` VALUES ('23740542','4','2020-06-15 09:00:00','2021-01-23 21:00:00'),('25243395','5','2018-02-23 09:00:00','2020-02-12 21:00:00'),('39012728','1','2019-07-23 09:00:00','2021-09-25 21:00:00'),('39012728','6','2020-01-17 09:00:00','2020-03-06 21:00:00'),('69019680','2','2020-01-06 09:00:00','2022-05-06 21:00:00'),('74856594','8','2020-01-05 09:00:00','2020-03-12 21:00:00'),('78185609','3','2018-03-26 09:00:00','2020-06-01 21:00:00'),('78185609','9','2019-03-21 09:00:00','2020-09-22 21:00:00'),('93615172','7','2019-07-11 09:00:00','2021-02-16 21:00:00'),('99744712','10','2020-01-22 09:00:00','2025-06-21 21:00:00');