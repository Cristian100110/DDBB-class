

CREATE USER ''@'localhost';
GRANT SELECT  ON `buscador-vuelos`.`RESERVA` TO ''@'localhost'
  WITH GRANT OPTION;
GRANT SELECT  ON `buscador-vuelos`.`RESERVA_VUELOS` TO ''@'localhost'
  WITH GRANT OPTION;

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'super_secure_passwordo_yeah_unicorns_pepperoni_eiffel_towah_760';
GRANT ALL PRIVILEGES ON `buscador-vuelos`.* TO 'admin'@'localhost'
  WITH GRANT OPTION;

CREATE USER 'normaluser'@'localhost' IDENTIFIED BY 'password';
/* normaluser can __create__ a reservation */
GRANT  INSERT ON
  `buscador-vuelos`.`PASAJERO`,`buscador-vuelos`.`RESERVA`, `buscador-vuelos`.`RESERVA_VUELOS`
  TO 'normaluser'@'localhost';
/* can also see flights data, not other reservations */
GRANT  SELECT ON
  `buscador-vuelos`.`AEROPUERTO`,`buscador-vuelos`.`TERMINAL`,`buscador-vuelos`.`COMPANIA`,
  `buscador-vuelos`.`VUELO`, `buscador-vuelos`.`ASIENTO`
  TO 'normaluser'@'localhost';
