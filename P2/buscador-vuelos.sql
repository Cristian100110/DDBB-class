DROP DATABASE IF EXISTS `buscador-vuelos`;
CREATE DATABASE `buscador-vuelos`;
USE `buscador-vuelos`

/*
  IATA Codes are 3 letters long, but they dont uniquely identify an airport
  So we use CodIATA and Nombre
*/
CREATE TABLE `AEROPUERTO`(
  CodIATA CHAR(3),
  Nombre  VARCHAR(20),
  Ciudad  VARCHAR(20),
  Pais    VARCHAR(20),
  CONSTRAINT `PK_AIRPORT` PRIMARY KEY (`CodIATA`,`Nombre`)
);

/*
  CodCompania will be an ICAO code
*/
CREATE TABLE `COMPANIA`(
  CodCompania CHAR(3),
  Nombre      VARCHAR(20),
  Logo        VARCHAR(256),
  CONSTRAINT `PK_COMPANIA` PRIMARY KEY (`CodCompania`)
);

/*
  DATA terminal
*/
CREATE TABLE `TERMINAL`(
  Numero  VARCHAR(5),
  CodIATA CHAR(3),
  CONSTRAINT `FK_AEROPUERTO`
    FOREIGN KEY (`CodIATA`)
    REFERENCES `AEROPUERTO` (`CodIATA`),

  CONSTRAINT `PK_TERMINAL` PRIMARY KEY (`Numero`,`CodIATA`)
);

/*
  Flight number identifies a particular flight when combined with the name
  of the airlin
  CodIATA_Aeropuerto-Origen  ,
  CodIATA_Aeropuerto-Destino ,e and the date.
  https://en.wikipedia.org/wiki/Flight_number
*/
CREATE TABLE `VUELO`(
  CodVuelo                   INT(4) UNSIGNED,
  CodCompania                CHAR(3),
  Fecha                      DATE,
  CodIATA_Aeropuerto_Origen  CHAR(3),
  CodIATA_Aeropuerto_Destino CHAR(3),
  Numero_Terminal_Origen     VARCHAR(5),
  Numero_Terminal_Destino    VARCHAR(5),
  Nombre_Aeropuerto_Origen   VARCHAR(20),
  Nombre_Aeropuerto_Destino  VARCHAR(20),
  Estado                     ENUM('OK','RETRASADO','CANCELADO'),

  CONSTRAINT `FK_AEROPUERTO_Origen`
		FOREIGN KEY (`CodIATA_Aeropuerto_Origen`,`Nombre_Aeropuerto_Origen`)
    REFERENCES  `AEROPUERTO` (`CodIATA`,`Nombre`),

  CONSTRAINT `FK_AEROPUERTO_Destino`
		FOREIGN KEY (`CodIATA_Aeropuerto_Destino`,`Nombre_Aeropuerto_Destino`)
    REFERENCES  `AEROPUERTO` (`CodIATA`,`Nombre`),

  CONSTRAINT `FK_TERMINAL_Origen`
		FOREIGN KEY (`Numero_Terminal_Origen`)
    REFERENCES  `TERMINAL` (`Numero`),

  CONSTRAINT `FK_TERMINAL_Destino`
		FOREIGN KEY (`Numero_Terminal_Destino`)
    REFERENCES  `TERMINAL` (`Numero`),

  CONSTRAINT `FK_COMPANIA_flight`
    FOREIGN KEY (`CodCompania`)
    REFERENCES `COMPANIA`(`CodCompania`),

  CONSTRAINT `PK_VUELO` PRIMARY KEY (`CodVuelo`, `CodCompania`, `Fecha`)
);

/*
  Data seat
*/
CREATE TABLE `ASIENTO`(
  CodVuelo    INT(4) UNSIGNED,
  CodCompania CHAR(3),
  Fecha       DATE,
  CodAsiento  INT(4) UNSIGNED,
  TipoClase   ENUM('Turista','Turista Superior','Ejecutiva','Primera clase'),

  CONSTRAINT `FK_VUELO`
    FOREIGN KEY (`CodVuelo`,`CodCompania`,`Fecha`)
    REFERENCES `VUELO`(`CodVuelo`,`CodCompania`,`Fecha`),

  CONSTRAINT `PK_SEATS` PRIMARY KEY (`CodVuelo`, `CodCompania`, `Fecha`, `CodAsiento`)
);

/*
  Data person
*/
CREATE TABLE `PASAJERO`(
  DNI       CHAR(10),
  Nombre    VARCHAR(20),
  Apellido1 VARCHAR(20),
  Apellido2 VARCHAR(20),
  CONSTRAINT `PK_DNI` PRIMARY KEY (`DNI`)
);

/*
  Data reservation
*/
CREATE TABLE `RESERVA`(
  Localizador VARCHAR(20),
  DNI         CHAR(10),
  ‎Precio      DECIMAL(10.2),

  CONSTRAINT `FK_PASAJERO`
    FOREIGN KEY (`DNI`)
    REFERENCES  `PASAJERO` (`DNI`),

  CONSTRAINT `PK_RESERVA` PRIMARY KEY (`Localizador`)
);

/*
 Data reservation flight
*/
CREATE TABLE `RESERVA_VUELOS`(
  Localizador VARCHAR(20),
  CodVuelo    INT(4) UNSIGNED,
  CodCompania CHAR(3),
  Fecha       DATE,
  CodAsiento  INT(4) UNSIGNED,

  CONSTRAINT `FK_RESERVA`
    FOREIGN KEY (`Localizador`)
    REFERENCES `RESERVA`(`Localizador`),

  CONSTRAINT `FK_VUELO_`
    FOREIGN KEY (`CodVuelo`, `CodCompania`, `Fecha`, `CodAsiento`)
    REFERENCES `ASIENTO`(`CodVuelo`, `CodCompania`, `Fecha`, `CodAsiento`)
);
