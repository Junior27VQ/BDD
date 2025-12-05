create table persona(
    cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_pk primary key(cedula)
)

create table prestamo(
    cedula char(10),
	monto money,
    fecha_prestamo date not null,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key(cedula),
	constraint cedula_fk
	  foreign key (cedula)
	  references persona (cedula)
)

select * from persona
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456789','Sean','Jamas',1.25,'2002/01/11','12:31',100,2);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456780','Sech','Bandido',1.55,'2005/02/12','15:41',110,3);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456781','Endo','Satoru',1.75,'2010/03/25','01:31',890,2);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456782','Makima','Maldicion',1.50,'2022/04/27','20:20',350,1);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456783','Denji','Motocierra',1.35,'2005/05/30','18:36',200,5);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456784','Goenji','Kiu',1.56,'2012/12/25','12:31',250,2);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456785','Dalex','Lunai',1.58,'2025/08/23','23:36',300,1);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456786','Angela','Paraiso',1.75,'2021/05/20','02:52',452,4);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456787','Lucifer','Estrlla',1.64,'2023/11/27','20:12',500,2);
insert into persona(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos)
values('0123456788','Charlot','Dreid',1.60,'2016/10/29','14:36',1000,3);

select * from prestamo
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456789',155,'2025/01/25','12:12','Jose');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456780',200,'2025/02/05','14:20','Serci');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456781',300,'2025/03/02','12:30','Fiodor');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456782',400,'2025/04/26','15:45','Sansa');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456783',500,'2025/05/30','14:35','Bolto');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456784',600,'2025/06/16','10:26','Flor');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456785',700,'2025/07/26','11:32','Fauna');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456786',900,'2025/08/05','12:48','Silbestre');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456787',1000,'2025/09/27','11:21','Dangon');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('0123456788',550,'2025/10/01','14:55','Akira');