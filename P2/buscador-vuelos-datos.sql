/**/

INSERT INTO AEROPUERTO (CodIATA, nombre, Ciudad, Pais)
  VALUES
    ('MAD', 'Aeropuerto Adolfo Suárez',     'prueba',                 'España'),
    ('VLC',	'Aeropuerto de Manises',        'Manises (Valencia)',     'España'),
    ('IBZ',	'Aeropuerto de Ibiza',          'Ibiza',                  'Epaña');
    ('LPP',	'Aeropuerto de Gran Canaria',   'Telde(Las Palmas)',      'España'),
    ('TFN', 'Aeropuerto de Tenerife Norte', 'Santa Cruz de Tenerife', 'España');

UPDATE AEROPUERTO SET Ciudad='prueba - Madrid' WHERE Ciudad='prueba';
UPDATE AEROPUERTO SET CodIATA='LPP - LPA' WHERE CodIATA='LPP';
UPDATE AEROPUERTO SET Pais='Epaña - España' WHERE Pais='Epaña';

DELETE FROM AEROPUERTO WHERE CodIATA="TFN" And Nombre = "Aeropuerto de Tenerife Norte";
/*DELETE FROM AEROPUERTO WHERE CodIATA='LPP' AND Nombre = "Aeropuerto de Gran Canaria";
DELETE FROM AEROPUERTO WHERE CodIATA='VLC' AND Nombre = "Aeropuerto de Manises";*/

INSERT INTO COMPANIA (CodCompania, Nombre, Logo)
  VALUES
    ('VLG', 'Air Europa Express'   ,NULL),
    ('DRD', 'Air Madrid'           ,NULL),
    ('HTH', 'Helitt Líneas Aéreas' ,NULL);

INSERT INTO TERMINAL (Numero  CodIATA)
  VALUES
    ('52HT1', 'IBZ')
    ('86D4N', 'MAD')
