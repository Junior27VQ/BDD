create table productos(
    codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
    constraint productos_pk primary key(codigo)
)

create table ventas(
    id_venta int,
    codigo_producto int not null,
    fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_venta),
	constraint codigo_producto_fk
	  foreign key (codigo_producto)
	  references productos (codigo)
)

select * from productos
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Pasta dental','Fortident',3.0,40);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (5,'Cera','Cera de piso',2.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (6,'Pan',1.50,50);
insert into productos(codigo,nombre,precio,stock) 
values (7,'Queso',5.50,60);
insert into productos(codigo,nombre,precio,stock)
values (8,'Leche',2.50,70);
insert into productos(codigo,nombre,precio,stock)
values (9,'Jamon',1.00,120);
insert into productos(codigo,nombre,precio,stock)
values (10,'Coca Cola',3.50,300);

select * from ventas
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (0,1,'2025/01/01',5);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (1,2,'2025/02/02',6);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (2,3,'2025/03/03',7);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (3,4,'2025/04/04',8);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (4,5,'2025/05/05',9);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (5,1,'2025/01/01',5);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (6,2,'2025/02/02',6);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (7,3,'2025/03/03',7);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (9,5,'2025/04/04',8);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values (8,8,'2025/05/05',9);
--consulta
select pr.nombre, pr.stock, ve.cantidad from
productos pr, ventas ve
where pr.codigo = ve.codigo_producto
and pr.nombre like '%m%' or pr.descripcion is null;
--subconsulta
select nombre, stock from
productos pr, ventas ve
where pr.codigo = ve.codigo_producto
and ve.cantidad = 5;
