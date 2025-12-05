create table videojuegos(
    codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int,
    constraint videojuegos_pk primary key(codigo)
)

create table plataformas(
    id_plataforma int,
    nombre_plataforma varchar(50) not null,
    codigo_videojuego int,
	constraint plataformas_pk primary key(id_plataforma),
	constraint codigo_videojuegos_fk
	  foreign key (codigo_videojuego)
	  references videojuegos (codigo)
)

select * from videojuegos
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);
insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(12345, 'War Master', 'Guerra', 8);

select * from plataformas
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(0,'Poki',63549);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(1,'Steam',85421);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(2,'Epic Games Store',93475);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(3,'EA App',15983);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(4,'Battle',15983);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(5,'GOG',70215);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(6,'Rcckstar Games Laucher',01456);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(7,'Itch.io',63549);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(8,'Twitch',12345);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuego)
values(9,'Ubisoft Connect',70215);
--consulta
select vi.nombre,vi.descripcion,vi.valoracion,pl.nombre_plataforma from
videojuegos vi, plataformas pl
where vi.codigo = pl.codigo_videojuego
and vi.descripcion = 'Guerra' and vi.valoracion > 7 
or vi.nombre like'C%' and vi.valoracion > 8 and vi.nombre like 'D%';
--subconsulta
select pl.* from
videojuegos vi, plataformas pl
where vi.codigo = pl.codigo_videojuego
and vi.nombre = 'God of Ward'