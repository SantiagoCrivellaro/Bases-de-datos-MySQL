CREATE TABLE ciudad (
	id int not null auto_increment,
    nombre varchar(500) not null,
    primary key (id)
);

INSERT INTO ciudad (nombre)
values
	("Buenos Aires"),
    ("La pampa"),
    ("New York");
    
    
CREATE TABLE persona (
	
    id int not null auto_increment,
    nombre varchar(500) not null,
    ciudad_id int not null,
    primary key (id),
    foreign key (ciudad_id) References ciudad(id)
    );
   
   
   
   INSERT INTO persona (nombre, ciudad_id)
   values
		("Santiago",1),
        ("Maria",2),
        ("Mateo",3);
    
 ALTER TABLE persona DROP FOREIGN KEY persona_ibfk_1;
 DROP TABLE ciudad;
 DROP TABLE persona;
 
 -- SHOW CREATE TABLE persona;
 
 -- Left Join
 
 SELECT ciudad.nombre as ciudad, persona.nombre as nombre
 FROM ciudad
 LEFT JOIN persona ON persona.ciudad_id = ciudad.id;
 

-- Right Join
 SELECT ciudad.nombre as ciudad, persona.nombre as nombre
 FROM ciudad
 RIGHT JOIN persona ON persona.ciudad_id = ciudad.id;
 
 -- Full  Join
  SELECT ciudad.nombre as ciudad, persona.nombre as nombre
 FROM ciudad
 FULL JOIN persona ON persona.ciudad_id = ciudad.id;
 

  SELECT ciudad.nombre as ciudad, persona.nombre as nombre
 FROM ciudad
 INNER JOIN persona ON persona.ciudad_id = ciudad.id;
  

 
  