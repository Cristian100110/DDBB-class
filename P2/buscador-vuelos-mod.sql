/**/
USE `buscador-vuelos`

ALTER TABLE `FK_COMPANIA_flight`
  ADD CONSTRAINT `FK_COMPANIA_flight`
    FOREIGN KEY (`CodCompania`)
    REFERENCES `COMPANIA`(`CodCompania`)
;
