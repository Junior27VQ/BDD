--crear tabla productos
create table productos(
    codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint producto_pk primary key(codigo)
)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(1234,'Zapatos','Comodos y de calidad',64.99,25)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(5678,'Camisa','Elegante y versatil',24.99,100)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(9012,'Llin','pantalones para hobres',55.99,75)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(3456,'Licras','Pantalones para mujer',35.99,65)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(7890,'Sosten','Ropa de mujer',12.99,150)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(1478,'Lencetia','Ropa para mujer',49.99,200)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(5236,'Medias','Calsetines de hombres',14.99,300)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(9852,'Gorras','Accesorio',89.99,250)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(7410,'Correa','Accesorio de calidad',9.99,150)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(0369,'Boxer','Ropa interior de hombre',6.99,500)

insert into productos(codigo,nombre,precio,stock)
values(0258,'Aretes',185.99,20)

insert into productos(codigo,nombre,precio,stock)
values(0147,'Pulseras',164.99,60)

insert into productos(codigo,nombre,precio,stock)
values(0357,'Anillos',199.99,80)

select * from productos