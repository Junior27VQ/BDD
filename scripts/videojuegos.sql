--crear tabla de videojuegos
drop table videojuegos

create table videojuegos(
    codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuego_pk primary key(codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(123,'futboll','Deporte fisico',10)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(456,'Maicraf','Carrera de autos deportivos',5)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(789,'FatalFury','Peleas',07)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(321,'Candi Crush','Coramelos',04)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(654,'Sniper 3D','Franco tirador',08)

insert into videojuegos(codigo,nombre,valoracion)
values(987,'Sudoku',06)

insert into videojuegos(codigo,nombre,valoracion)
values(741,'Angry Birds',07)

insert into videojuegos(codigo,nombre,valoracion)
values(852,'Subway Surf',09)

select * from videojuegos
