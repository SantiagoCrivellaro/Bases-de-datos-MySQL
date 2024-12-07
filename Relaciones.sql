-- Relaciones
-- la tabla que tenga la FK ( Foreign Key ) = n.
-- Puede ser = 1-n, n-1, n-n

-- 1:N


CREATE TABLE trabajadores (
	id int not null auto_increment,
    nombre varchar(500) not null,
    Primary Key (id)
    );    

CREATE TABLE departamentos (
	id int not null auto_increment,
    nombre_depto varchar(500) not null,
    trabajador_id int,
    Primary Key (id),
    Foreign Key (trabajador_id) references trabajadores(id)
    );
    
	
INSERT INTO trabajadores (nombre) 
values
	("Santiago"),
    ("Maria"),
    ("Mateo");
INSERT INTO departamentos (nombre_depto, trabajador_id)
values
	("Ventas",1),
    ("Finanzas",2);



    
-- N:1

CREATE TABLE clientes (
	id int not null auto_increment,
    nombre varchar(500),
    Primary Key (id)
);


CREATE TABLE pedidos (
	id int not null auto_increment,
    cliente_id int,
    descripcion varchar(500),
    Primary Key (id),
    Foreign Key (cliente_id) references clientes(id)
    );
    
INSERT INTO clientes (nombre) 
VALUES 
    ("Santiago"),
    ("Maria"),
    ("Carlos");


INSERT INTO pedidos (descripcion, cliente_id) 
VALUES 
    ("Pedido de productos electrónicos", 1), -- Pedido de Santiago
    ("Pedido de libros", 2),                -- Pedido de Maria
    ("Pedido de ropa", 1),                  -- Otro pedido de Santiago
    ("Pedido de muebles", 3);               -- Pedido de Carlos


-- N:N
-- Se usa Tabla Intermedia, usualmente con el nombre de ambas tablas.

CREATE TABLE alumnos (
	id int not null auto_increment,
    nombre varchar(500),
    Primary Key (id)
);

CREATE TABLE materias (
	id int not null auto_increment,
    materia varchar(500),
    Primary key (id)
    );


-- Tabla Intermedia

CREATE TABLE alumnos_materias (
	alumnos_id int not null,
    materias_id int not null,
    Primary Key (alumnos_id, materias_id),
    Foreign Key (alumnos_id) References alumnos(id),
    Foreign Key (materias_id) references materias(id)
    );
    
-- Insertar Valores

INSERT INTO alumnos (nombre)
values
	("Santiago"),
    ("Maria"),
    ("Mateo");
    
INSERT INTO materias (materia)
values
	("Matematicas"),
    ("Lengua"),
    ("Fisica");
    

INSERT INTO alumnos_materias (alumnos_id, materias_id)
values
	(1,2),
    (1,1),
    (3,3),
    (2,2),
    (3,1),
    (2,1);
    

