

CREATE USER ''@'localhost';
GRANT SELECT  ON `buscador-vuelos`.`RESERVA` TO ''@'localhost'
  WITH GRANT OPTION;
GRANT SELECT  ON `buscador-vuelos`.`RESERVA_VUELOS` TO ''@'localhost'
  WITH GRANT OPTION;

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'super_secure_passwordo_yeah_unicorns_pepperoni_eiffel_towah_760';
GRANT ALL PRIVILEGES ON `buscador-vuelos`.* TO 'admin'@'localhost'
  WITH GRANT OPTION;

CREATE USER 'normaluser'@'localhost' IDENTIFIED BY 'password';
GRANT  SELECT ON `buscador-vuelos`.* TO 'normaluser'@'localhost';
CREATE USER 'normaluser'@'localhost';
