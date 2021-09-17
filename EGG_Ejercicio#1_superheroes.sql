--Insertar en las tablas creadas los siguientes datos:

USE superheroes;

INSERT INTO creador (id_creador, nombre) VALUES (1,'Marvel');
INSERT INTO creador (id_creador, nombre) VALUES (2,'DC Comics');
SELECT * FROM creador;

-- Insertar datos en la tabla `personajes`

INSERT INTO `personajes` VALUES(1,'Bruce Banner','Hulk', 160,'600 mil', 75, 98, 1962, 'Físico Nuclear', 1);  
INSERT INTO `personajes` VALUES(2,'Tony Stark','Iron Man', 170,'200 mil', 70, 123, 1963, 'Inventor Industrial', 1);
INSERT INTO `personajes` VALUES(3,'Thor Odinson','Thor', 145,'inifita', 100, 235, 1962, 'Rey de Asgard', 1); 
INSERT INTO `personajes` VALUES(4,'Wanda Maximoff','Bruja Escarlata', 170,'100 mil', 90, 345, 1964, 'Bruja', 1); 
INSERT INTO `personajes` VALUES(5,'Carol Danvers','Capitana Marvel', 157,'250 mil', 85, 128, 1968, 'Oficial de Inteligencia', 1); 
INSERT INTO `personajes` VALUES(6,'Thanos','Thanos', 170,'infinita', 40, 306, 1973, 'Adorador de la Muerte', 1); 
INSERT INTO `personajes` VALUES(7,'Peter Parker','Spiderman', 165,'25 mil', 80, 74, 1962, 'Fotógrafo', 1); 
INSERT INTO `personajes` VALUES(8,'Steve Rogers','Capitan America', 145,'600', 45, 60, 1941, 'Oficial Federal', 1); 
INSERT INTO `personajes` VALUES(9,'Bobby Drake','Ice Man', 140,'2 mil', 64, 122, 1963, 'Contador', 2); 
INSERT INTO `personajes` VALUES(10,'Barry Allen','Flash', 160,'10 mil', 120, 168, 1956, 'Científico Forense', 2); 
INSERT INTO `personajes` VALUES(11,'Bruce Wayne','Batman', 170,'500', 32, 47, 1939, 'Hombre de Negocios', 2); 
INSERT INTO `personajes` VALUES(12,'Clark Kent','Superman', 165,'infinita', 120, 182, 1948, 'Reportero', 2); 
INSERT INTO `personajes` VALUES(13,'Diana Prince','Mujer Maravilla', 160,'infinita', 95, 127, 1949, 'Princesa Guerrera', 2); 

SELECT * FROM personajes;

-- b) Cambiar en la tabla personajes el año de aparición a 1938 del personaje Superman.
--  A continuación, realizar un listado de toda la tabla para verificar que el personaje
UPDATE personajes SET aparición='1938' WHERE id_personaje=12;
UPDATE personajes SET aparición='1938' WHERE nombre='Superman';
SELECT * FROM personajes;

-- c) El registro que contiene al personaje Flash. A continuación, mostrar toda la tabla
--para verificar que el registro haya sido eliminado.
DELETE FROM personajes WHERE id_personaje = 10;
DELETE FROM personajes WHERE nombre = 'Flash';
SELECT * FROM personajes;

-- d) Eliminar la base de datos superhéroes.

DROP DATABASE superheroes;
