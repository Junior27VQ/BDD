--sirve para eliminar una tabla 'drop table usuario'
--creacion de tablas
create table clientes(
    cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
    constraint clientes_pk primary key(cedula)
)

create table compras(
    id_compra int,
    cedula char(10) not null,
    fecha_creacion date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key(id_compra),
	constraint cedula_fk
	  foreign key (cedula)
	  references clientes (cedula)
)

select * from clientes
insert into clientes(cedula,nombre,apellido,edad)
values ('1234567890','Monica','Grande',34);--ya esta creada
insert into clientes(cedula,nombre,apellido,edad)
values ('2345678901','Raul','Gomez',45);
insert into clientes(cedula,nombre,apellido,edad)
values ('3456789012','Maria','Vera',24);
insert into clientes(cedula,nombre,apellido,edad)
values ('4567890123','Romni','Mendes',32);
insert into clientes(cedula,nombre,apellido,edad)
values ('5678901234','Mercedes','Bom',22);
insert into clientes(cedula,nombre,apellido,edad)
values ('6789012345','Ramon','Urtado',40);
insert into clientes(cedula,nombre,apellido,edad)
values ('7890123456','Mia','Carvajal',38);
insert into clientes(cedula,nombre,apellido,edad)
values ('8901234567','Rambo','Rio',50);
insert into clientes(cedula,nombre,apellido,edad)
values ('9012345678','Mala','Menas',30);
insert into clientes(cedula,nombre,apellido,edad)
values ('0123456789','Rojelio','Zuñiga',27);

select * from compras
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (1,'1234567890','2025/12/04',15);--este ya esta inserado en la tabla
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (2,'1234567890','2025/11/03',10);
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (3,'0123456789','2025/12/02',12);
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (4,'2345678901','2025/10/01',16);
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (5,'5678901234','2025/09/04',20);
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (6,'2345678901','2025/05/01',05);
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (7,'7890123456','2025/10/04',25);
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (8,'0123456789','2025/11/20',21);
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (9,'5678901234','2025/12/03',35);
insert into compras(id_compra,cedula,fecha_creacion,monto)
values (10,'6789012345','2025/12/01',13);
--consulta
select cl.nombre,cl.apellido from
clientes cl,compras co
where cl.cedula = co.cedula
and cl.cedula like '%7%';
--subconsuta
select cl.* from
clientes cl,compras co
where cl.cedula = co.cedula
and cl.nombre = 'Monica';
