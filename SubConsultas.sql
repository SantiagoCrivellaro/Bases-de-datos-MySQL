use santiago;

CREATE TABLE empleados (
	id int not null auto_increment,
    name varchar(500) not null,
    salario int not null,
    Primary Key (id)
);

INSERT INTO empleados (name, salario)
values
	("Santiago",5000),
    ("Maria",10000),
    ("Mateo",1200);
 
 INSERT INTO empleados (name, salario)
values
  ("Lucas",2000),
    ("Ignacio",7500),
    ("Matias",9000),
    ("Fernando",5000),
    ("Octavio",12000);
    
select * from empleados;


-- Ejecutamos una SubConsulta, Desde la Consulta WHERE, esto nos devuelve
-- Los empleados con un salario superior al promedio.

select name, salario
from empleados
WHERE salario > (SELECT AVG(salario) FROM empleados);


