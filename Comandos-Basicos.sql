create database santiago;
show databases;
use santiago;
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar(255),
    PRIMARY KEY (id)
);
	
-- INSERT INTO animales (tipo, estado) VALUES ("Chanchito", "Feliz");

-- Hacer que la columna id se autoincremente
ALTER TABLE animales MODIFY COLUMN  id int auto_increment;


SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES ("Chanchito", "Feliz");
INSERT INTO animales (tipo, estado) VALUES ("Chanchito", "Feliz");
INSERT INTO animales (tipo, estado) VALUES ("Felipe", "Triste");

SELECT * FROM animales;

SELECT * FROM animales WHERE id = 1;

SELECT * FROM animales WHERE estado = "Feliz" AND tipo = "Chanchito";

UPDATE animales SET estado = "Feliz" where id = 3;

SELECT * FROM animales;

DELETE FROM animales where id = 3;

UPDATE animales set estado = "triste" where tipo = "Dragon"
-- Esto arroja error 1175
