DROP DATABASE IF EXISTS `buscador-vuelos`;
CREATE DATABASE `buscador-vuelos`;

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
  Logo        VARCHAR(256)
);

/*

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
  Fecha             DATE
  `CodIATA_Aeropuerto-Origen`  CHAR(3),
  `CodIATA_Aeropuerto-Destino` CHAR(3),
  /*
  `Nombre_Aeropuerto-Origen`  VARCHAR(20),
  `Nombre_Aeropuerto-Destino` VARCHAR(20),
  */
  Estado            ENUM('OK','RETRASADO','CANCELADO'),
  CONSTRAINT `FK_COMPAÑIA`
		FOREIGN KEY (`CodIATA_Aeropuerto-Origen`,`CodIATA_Aeropuerto-Destino`/*,
                 `Nombre_Aeropuerto-Origen`,`Nombre_Aeropuerto-Destino`*/)
		REFERENCES `AEROPUERTO` (`CodIATA`,`Nombre`,`CodIATA`,`Nombre`)
);
-- WE NEED TO FIX THE ABOVE

/*

*/
CREATE TABLE `ASIENTO`(
  CodAsiento INT,
  TipoClase
);

/*
  Datos humano
*/
CREATE TABLE `PASAJERO`(
  DNI       CHAR(10),
  Nombre    VARCHAR(20),
  Apellido1 VARCHAR(20),
  Apellido2 VARCHAR(20)
);

/*

*/
CREATE TABLE `RESERVA`(
  Localizador         ,
  DNI         CHAR(10),
  ‎Precio      DECIMAL
);

/*

*/
CREATE TABLE `RESERVA_VUELOS`(
  Localizador ,
  CodVuelo
);
