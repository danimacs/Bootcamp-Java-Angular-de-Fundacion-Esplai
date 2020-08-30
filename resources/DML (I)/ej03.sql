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

INSERT INTO `asignado_a` VALUES ('59948542','1'),('13165693','10'),('42722350','2'),('83484189','3'),('99205218','4'),('44446562','5'),('90850801','6'),('56820009','7'),('38060119','8'),('93722485','9');

CREATE TABLE `cientificos` (
  `DNI` varchar(8) NOT NULL,
  `NomApels` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `cientificos` VALUES ('13165693','Emilia Cerezo'),('38060119','Trinidad Lima'),('42722350','Nicolasa Aguado'),('44446562','Oihane del Rio'),('56820009','Florin Varela'),('59948542','Rosa Losada'),('83484189','Marwa Arcos'),('90850801','Raul Lorente'),('93722485','Beñat De-La-Fuente'),('99205218','Gerardo Garzon');

CREATE TABLE `proyecto` (
  `Id` char(4) NOT NULL,
  `Nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Horas` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `proyecto` VALUES ('1','Primera imagen de un agujero negro',220),('10','Inteligencia artificial para ganar en el póker',165),('2','Las rocas presentes en la extinción de los dinosaurios',218),('3','Así eran los denisovanos',331),('4','Esperanza para los pacientes de ébola',442),('5','Supremacía cuántica',611),('6','Explican el origen de los organismos multicelulares',156),('7','El mundo más lejano jamás explorado del sistema solar',394),('8','Un tratamiento para la fibrosis quística',361),('9','Reforzar el intestino para revertir la desnutrición',722);