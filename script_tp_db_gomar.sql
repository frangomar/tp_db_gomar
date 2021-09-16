create table usuarios (
id TINYINT NOT NULL auto_increment,
nombre varchar(45) not null,
email varchar(45) not null,
PRIMARY KEY (id));


create table notas (
id TINYINT NOT NULL auto_increment,
titulo varchar(100) not null,
fecha_creacion date NOT null,
fecha_ult_mod date NOT null,
descripcion text,
id_usuario TINYINT NOT NULL auto_increment,
eliminacion_auth,
foreign key (id_usuario) references usuarios (id),
PRIMARY KEY (id));

create table categorias (
id TINYINT NOT NULL auto_increment,
nombre VARCHAR (50) NOT NULL
)

create table categorias_notas (
id TINYINT NOT NULL auto_increment,
id_categoria TINYINT NOT NULL auto_increment,
id_nota TINYINT NOT NULL auto_increment,
foreign key (id_categoria) references categorias (id),
foreign key (id_nota) references notas (id),
PRIMARY KEY (id));

