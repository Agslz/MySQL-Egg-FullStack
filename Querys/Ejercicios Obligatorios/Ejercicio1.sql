DROP DATABASE IF EXISTS superheroes;
CREATE DATABASE superheroes CHARACTER SET utf8mb4;
USE superheroes;

CREATE TABLE creador (
id_creador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
  nombre VARCHAR(20) NOT NULL
);


CREATE TABLE personajes (
  id_personaje INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre_real VARCHAR(20) NOT NULL,
  personaje VARCHAR(20) NOT NULL,
  inteligencia INT(10) NOT NULL,
  fuerza VARCHAR(10) NOT NULL,
  velocidad INT(11) NOT NULL,
  poder INT(11) NOT NULL,
  aparicion INT(11) NOT NULL,
  ocupacion VARCHAR(30) NULL,
  id_creador INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_creador) REFERENCES creador(id_creador)
  );
 
#Insertamos los siguientes datos en Tabla 'creador'
INSERT INTO creador (id_creador, nombre) VALUES (1,'Marvel');
INSERT INTO creador (id_creador, nombre) VALUES (2,'DC COMICS');

#Insertamos uno mas de prueba
#INSERT INTO creador (id_creador, nombre) VALUES (3, 'Fox');

#Borramos el nombre Fox
#DELETE FROM creador WHERE id_creador = 3;

#Cambiamos el nombre de DC COMICS a DC Comics 
#UPDATE creador SET nombre = 'DC Comics' where id_creador = 2;

#Insertamos los siguientes datos en la tabla 'personajes'
INSERT INTO personajes VALUES (1,'Bruce Banner','Hulk',160,'600mil',75,98, 1962,'Físico Nuclear',1);
INSERT INTO personajes VALUES (2,'Tony Stark','Iron Man',170,'200mil',70,123, 1962,'Inventor Industrial',1);
INSERT INTO personajes VALUES (3,'Thor Odinson','Thor',145,'infinita',100,235, 1962,'Rey de Asgard',1);
INSERT INTO personajes VALUES (4,'Wanda MAximoff','Bruja Escarlata',170,'100mil',90,345, 1962,'Bruja',1);
INSERT INTO personajes VALUES (5,'Carol Danvers','Capitana Marvel',157,'250mil',85,128, 1962,'Oficial de inteligencia',1);
INSERT INTO personajes VALUES (6,'Thanos','Thanos',170,'infinita',40,306, 1962,'Adorador de la muerte',1);
INSERT INTO personajes VALUES (7,'Peter Parker','Spiderman',165,'25mil',80,74, 1962,'Fotógrafo',1);
INSERT INTO personajes VALUES (8,'Steve Rogers','Capitan America',145,'600',45,60, 1962,'Oficial Federal',1);
INSERT INTO personajes VALUES (9,'Bobby Drake','Ice Man',140,'2mil',64,122, 1962,'Contador',1);
INSERT INTO personajes VALUES (10,'Barry Allen','Flash',160,'10000mil',120,168, 1962,'Cientifico forense',2);
INSERT INTO personajes VALUES (11,'Bruce Wayne','Batman',170,'500',32,47, 1962,'Hombre de negocios',2);
INSERT INTO personajes VALUES (12,'Clarck Kent','Superman',165,'infinita',120,182, 1962,'Reportero',2);
INSERT INTO personajes VALUES (13,'Diana Prince','Mujer mavaravilla',160,'infinita',95,127, 1962,'Princesa guerrera',2);

SELECT * FROM creador
SELECT * FROM personajes;

#Cambiar en la tabla personajes el año de aparición a 1938 del personaje Superman
UPDATE personajes SET aparicion = 1938 where id_personaje = 12;

#El registro que contiene al personaje Flash. A continuación, mostrar toda la tabla para verificar que el registro haya sido eliminado
DELETE FROM personajes WHERE id_personaje = 10;

#Eliminar la base de datos superhéroes
DROP TABLE personajes;
DROP TABLE creador;
DROP DATABASE superheroes;
