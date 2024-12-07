CREATE TABLE user (
	id int not null auto_increment,
    name varchar(50) not null,
    edad int not null,
    email varchar(100) not null,
    primary key (id)
);

INSERT INTO user (name, edad, email) values ("Oscar",25,"oscar@gmail.com");
INSERT INTO user (name, edad, email) values ("Layla",15,"layla@gmail.com");
INSERT INTO user (name,edad,email)   values ("Nicolas",36,"nico@gmail.com");
INSERT INTO user (name,edad,email)   values ("Chanchito",7,"chanchito@gmail.com");

-- Operacion Read Produndas.
select * from user;
select * from user limit 3;
select * from user where edad >= 15;
select * from user where edad > 15;
select * from user where edad > 20 and email = "nico@gmail.com";
select * from user where edad > 20 or email = "layla@gmail.com";
select * from user where email != "layla@gmail.com";
select * from user where edad between 15 and 30;

-- Busquedas :

-- Los % quieren decir que da igual, Devuelve todos los usuarios
select * from user where email like "%gmail%";

-- Puede empezar como sea, pero debe terminar el gmail.
select * from user where email like "%gmail";

-- Empieze con Oscar, y lo que sigue da igual
select * from user where email like "oscar%";


-- Ordenar por edad ascendente
select * from user order by edad asc;

-- Ordenar por edad Descendente
select * from user order by edad desc;

-- Buscamos el user con mayor edad
-- Mayor = Variable, Sobrenombre al mayor.
select max(edad) as mayor from user;

-- Buscamos el user con menor edad
select min(edad) as menor from user;


-- Seleccionar Columnas

select id, name from user;

-- Cambiamos el nombre de la columna
-- as = Alias, Apodo, Variable.


select id, name as nombre from user;

