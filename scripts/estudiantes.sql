--crear tabla de estudiantes
create table estudiantes(
    cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiante_pk primary key(cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1234567890','Raul','Sinfuentes','R2@email.com','07/08/2001')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('2345678901','Juliet','Senteno','Rapalela@email.com','15/05/2004')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('3456789012','Jose','Calderon','Cal123@email.com','05/12/2021')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('4567890123','Sofia','Valdiry','Valldy@email.com','15/04/2015')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('5678901234','Jeferson','Ortiz','Jepez@email.com','23/06/2005')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('6789012345','Franchesca','Ramires','Remiri@email.com','25/11/2000')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('7890123456','Andres','Valencia','Tuchi@email.com','30/09/2012')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('8901234567','Natasha','Romanof','Scarlet@email.com','05/05/2005')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('9012345678','Lamine','Yamal','Barsa@email.com','28/08/2008')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0123456789','Nicol','Nike','Nik25@email.com','09/12/1987')

select * from estudiantes