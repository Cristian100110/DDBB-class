/**/

INSERT INTO AEROPUERTO VALUES ('MAD', 'Aeropuerto Adolfo Suárez', 'prueba','España');/**/
INSERT INTO AEROPUERTO VALUES ('VLC',	'Aeropuerto de Manises', 'Manises (Valencia)', 'España');
INSERT INTO AEROPUERTO VALUES ('IBZ',	'Aeropuerto de Ibiza', 'Ibiza', 'Epaña');/**/
INSERT INTO AEROPUERTO VALUES ('LPP',	'Aeropuerto de Gran Canaria',	'Telde(Las Palmas)', 'España');/**/
INSERT INTO AEROPUERTO VALUES ('TFN', 'Aeropuerto de Tenerife Norte', 'Santa Cruz de Tenerife', 'España');

UPDATE AEROPUERTO SET Ciudad='prueba - Madrid' WHERE Ciudad='prueba';
UPDATE AEROPUERTO SET CodIATA='LPP - LPA' WHERE CodIATA='LPP';
UPDATE AEROPUERTO SET Pais='Epaña - España' WHERE Pais='Epaña';

DELETE FROM AEROPUERTO WHERE CodIATA="TFN" And Nombre = "Aeropuerto de Tenerife Norte"
