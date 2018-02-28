/**/

/*
  AEROPUERTO Data
*/
INSERT INTO `AEROPUERTO`
    (CodIATA, nombre,                        Ciudad,                   Pais)
  VALUES
    ('MAD',  'Aeropuerto Adolfo Suárez',     'prueba',                 'España'),
    ('VLC',	 'Aeropuerto de Manises',        'Manises (Valencia)',     'España'),
    ('IBZ',	 'Aeropuerto de Ibiza',          'Ibiza',                  'Epaña'),
    ('LPP',	 'Aeropuerto de Gran Canaria',   'Telde(Las Palmas)',      'España'),
    ('TFN',  'Aeropuerto de Tenerife Norte', 'Santa Cruz de Tenerife', 'España');

UPDATE AEROPUERTO SET Ciudad='Madrid' WHERE Ciudad='prueba';
UPDATE AEROPUERTO SET CodIATA='LPA' WHERE CodIATA='LPP';
UPDATE AEROPUERTO SET Pais='España' WHERE Pais='Epaña';

DELETE FROM AEROPUERTO WHERE CodIATA="TFN" And Nombre = "Aeropuerto de Tenerife Norte";
INSERT INTO `AEROPUERTO` VALUES ('TFN',  'Aeropuerto de Tenerife Norte', 'Santa Cruz de Tenerife', 'España');
/*
DELETE FROM AEROPUERTO WHERE CodIATA='LPP' AND Nombre = "Aeropuerto de Gran Canaria";
DELETE FROM AEROPUERTO WHERE CodIATA='VLC' AND Nombre = "Aeropuerto de Manises";
*/

/*
COMPANIA Data
*/
INSERT INTO `COMPANIA`
    (CodCompania, Nombre,                Logo)
  VALUES
    ('PMI',      'Air Europa Express'   ,NULL),
    ('DRD',      'Air Madrid'           ,NULL),
    ('HTH',      'Helitt Líneas Aéreas' ,NULL);


/*
  TERMINAL Data
*/
INSERT INTO `TERMINAL`
    (CodIATA, Numero)
  VALUES
    ('IBZ', 'T1'),
    ('MAD', 'T1'),
    ('MAD', 'T2'),
    ('MAD', 'T3'),
    ('MAD', 'T4'),
    ('VLC', 'T1'),
    ('VLC', 'T2'),
    ('LPA', 'T1'),
    ('LPA', 'T2'),
    ('LPA', 'T3'),
    ('TFN', 'T1');

/*
  VUELO DATA
*/
INSERT INTO `VUELO`
    (CodVuelo, CodCompania,Fecha,
     CodIATA_Aeropuerto_Origen, CodIATA_Aeropuerto_Destino,
     Nombre_Aeropuerto_Origen, Nombre_Aeropuerto_Destino,
     Numero_Terminal_Origen, Numero_Terminal_Destino,
     Estado)
  VALUES
    (4234,'PMI','2017-10-25',
     'MAD','TFN',
     'Aeropuerto Adolfo Suárez','Aeropuerto de Tenerife Norte',
     'T4','T1',
     'OK'),
    (1727,'DRD','2017-11-01',
     'VLC','TFN',
     'Aeropuerto de Manises','Aeropuerto de Tenerife Norte',
     'T2','T1',
     'RETRASADO'),
    ( 028,'HTH','2017-12-12',
     'LPA','MAD',
     'Aeropuerto de Gran Canaria','Aeropuerto Adolfo Suárez',
     'T3','T4',
     'CANCELADO');

/*
DATO ASIENTO
*/
INSERT INTO `ASIENTO`
    (CodVuelo, CodCompania, Fecha, CodAsiento, TipoClase)
  VALUES
  ('','','','',''),
  ('','','','',''),
  ('','','','',''),
  ('','','','',''),
  ('','','','','');


/*
DATO PASAJERO
*/
INSERT INTO `PASAJERO`
    (DNI,          Nombre,   Apellido1,  Apellido2)
  VALUES
    ('55470852A', 'Carmen', 'Mairena',  'Perez'),
    ('82683781K', 'Tomas',  'Gonzalez', 'Soto'),
    ('09834235O', 'Amelia', 'Ramirez',  'Silva'),
    ('58246723Q', 'Carlos', 'Martinez', 'Castillo'),
    ('84262355T', 'Lucas',  'Medina',   'Sanchez');

/*
DATO RESERVA
*/
INSERT INTO `RESERVA`
    (Localizador, DNI, Precio)
  VALUES
    ('','',''),
    ('','',''),
    ('','',''),
    ('','',''),
    ('','','');

/*
DATO RESERVA_VUELOS
*/
INSERT INTO `RESERVA_VUELOS`
    (Localizador, CodVuelo, CodCompania, Fecha, CodAsiento)
  VALUES
    ('','','','',''),
    ('','','','',''),
    ('','','','',''),
    ('','','','',''),
    ('','','','','');
