create table profesores(
    codigo int,
	nombre varchar(100) not null,
    constraint profesores_pk primary key(codigo)
)

create table estudiantes(
    cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiante_pk primary key(cedula)
)
--modificamos la tabla para insertar una nueva columna
alter table estudiantes
add column codigo_profesor int
--establecemos una columna como calave foranea
alter table estudiantes
add constraint codigo_profesor_fk
foreign key (codigo_profesor)
references profesores(codigo)
--revisamos e insertamos informacion en nuetras tablas
select * from profesores
insert into profesores(codigo,nombre)
values(123,'Fernando');
insert into profesores(codigo,nombre)
values(456,'Milena');
insert into profesores(codigo,nombre)
values(789,'Rafael');
insert into profesores(codigo,nombre)
values(147,'Carmen');
insert into profesores(codigo,nombre)
values(258,'Francisco');
insert into profesores(codigo,nombre)
values(369,'Daniela');
insert into profesores(codigo,nombre)
values(159,'Carlos');
insert into profesores(codigo,nombre)
values(357,'Edit');
insert into profesores(codigo,nombre)
values(753,'Samuel');
insert into profesores(codigo,nombre)
values(951,'Rutila');

select * from estudiantes
delete from estudiantes--este comando sirve para vaciar los datos de una tabla
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0123456789','Jose','Mar','jm123@email.com','1987/12/01',123);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0123457789','Sander','Mendez','sm123@email.com','1989/12/02',456);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0183456789','Maria','Senteno','ms123@email.com','1995/10/01',789);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0123450789','Oscar','Mendez','om123@email.com','1989/05/08',147);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0103456789','Manuel','Valencia','mv123@email.com','2000/12/25',258);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0120402789','Samantha','Quinonez','sq123@email.com','1999/05/10',369);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0183096789','Josefa','Salcedo','js258@email.com','2001/10/21',159);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0202450789','Marcos','Mendoza','mm225@email.com','1989/09/08',357);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0103402789','Julia','Ramirez','jr023@email.com','2000/10/20',123);
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values ('0120402009','Julio','Veliz','jv852@email.com','1999/07/10',369);
--consulta
select pr.codigo,es.nombre,es.apellido from
estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo
and es.apellido like '%n%';
--subconsulta
select es.* from
estudiantes es, profesores pr
where es.codigo_profesor = pr.codigo
and pr.nombre = 'Francisco'
