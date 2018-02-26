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
/*
DELETE FROM AEROPUERTO WHERE CodIATA='LPP' AND Nombre = "Aeropuerto de Gran Canaria";
DELETE FROM AEROPUERTO WHERE CodIATA='VLC' AND Nombre = "Aeropuerto de Manises";
*/

/*
COMPANIA Data
*/
INSERT INTO `COMPANIA`
    (CodCompania, Nombre,               Logo)
  VALUES
    ('PMI',     'Air Europa Express'   ,NULL),
    ('DRD',     'Air Madrid'           ,NULL),
    ('HTH',     'Helitt Líneas Aéreas' ,NULL);


/*
  TERMINAL Data
*/
INSERT INTO `TERMINAL`
    (CodIAT, NumeroA)
  VALUES
    ('IBZ', 'T1'),
    ('MAD', 'T1'),
    ('VLC', 'T2'),
    ('MAD', 'T3'),
    ('MAD', 'T4'),
    ('IBZ', 'T1'),
    ('VLC', 'T1'),
    ('LPP', 'T1'),
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
     'LPP','MAD',
     'Aeropuerto de Gran Canaria','Telde(Las Palmas)',
     'T3','T4',
     'CANCELADO');
