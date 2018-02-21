DROP DATABASE IF EXISTS `buscador-vuelos`;
CREATE DATABASE `buscador-vuelos`;
use `buscador-vuelos`

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
  CONSTRAINT `algo` PRIMARY KEY (`CodCompania`)
);

/*
  DATA terminal
*/
CREATE TABLE `TERMINAL`(
  Numero  VARCHAR(5),
  CodIATA CHAR(3)

);

/*
  Flight number identifies a particular flight when combined with the name
  of the airlin
  CodIATA_Aeropuerto-Origen  ,
  CodIATA_Aeropuerto-Destino ,e and the date.
  https://en.wikipedia.org/wiki/Flight_number
*/
CREATE TABLE `VUELO`(
  CodVuelo          INT(4) UNSIGNED,
  CodCompañia       CHAR(3),
  Fecha             DATE,
  CodIATA_Aeropuerto_Origen  CHAR(3),
  CodIATA_Aeropuerto_Destino CHAR(3),
  Nombre_Aeropuerto_Origen  VARCHAR(20),
  Nombre_Aeropuerto_Destino VARCHAR(20),
  Estado            ENUM('OK','RETRASADO','CANCELADO'),

  CONSTRAINT `FK_AEROPUERTO_Origen`
		FOREIGN KEY (`CodIATA_Aeropuerto_Origen`,`Nombre_Aeropuerto_Origen`)
    REFERENCES `AEROPUERTO` (`CodIATA`,`Nombre`),

  CONSTRAINT `FK_AEROPUERTO_Destino`
		FOREIGN KEY (`CodIATA_Aeropuerto_Destino`,`Nombre_Aeropuerto_Destino`)
    REFERENCES `AEROPUERTO` (`CodIATA`,`Nombre`)

);

/*
  Data seat
*/
CREATE TABLE `ASIENTO`(
  CodAsiento INT(4) UNSIGNED,
  TipoClase ENUM('Turista','Turista Superior','Ejecutiva','Primera clase')
);

/*
  Data person
*/
CREATE TABLE `PASAJERO`(
  DNI       CHAR(10),
  Nombre    VARCHAR(20),
  Apellido1 VARCHAR(20),
  Apellido2 VARCHAR(20),
  CONSTRAINT `algofgthn` PRIMARY KEY (`DNI`)
);

/*
  Data reservation
*/
CREATE TABLE `RESERVA`(
  Localizador VARCHAR(20),
  DNI         CHAR(10),
  ‎Precio      DECIMAL(10.2)
);

/*
 Data reservation flight
*/
CREATE TABLE `RESERVA_VUELOS`(
  Localizador     VARCHAR(20),
  CodVuelo INT(4) UNSIGNED
);
