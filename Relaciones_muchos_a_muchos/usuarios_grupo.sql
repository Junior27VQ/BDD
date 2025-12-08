--Relacion muchos a muchos entre usuarios y grupo:
create table usuarios(
    id_usuario int,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key(id_usuario)
)

create table grupo(
    id_grupo int,
	nombre varchar(25) not null,
	descripcion varchar(75) not null,
	fecha_creacion date,
	constraint grupo_pk primary key(id_grupo)
)

create table usuario_grupo(
    us_id int not null,
	gr_id int not null,
	constraint usuarios_fk foreign key(us_id) references usuarios(id_usuario),
	constraint grupo_fk foreign key(gr_id) references grupo(id_grupo),
	constraint usuario_grupo_pk primary key(us_id,gr_id)
)
--insert

--Consulta:
select u.nombre, g.nombre 
from usuarios u, grupo g, usuario_grupo ug
where u.id_usuario = ug.us_id and g.id_grupo = ug.gr_id
--subconsulta:
select nombre 
from usuarios
where id_usuario IN(select us_id from usuario_grupo where gr_id = 1)
--funcion de agregacion:
select g.nombre, count(ug.us_id) 
from grupo g, usuario_grupo ug
where g.id_grupo = ug.gr_id
group by g.nombre

--Consulta2:
select u.nombre, g.nombre 
from usuarios u, grupo g, usuario_grupo ug
where u.id_usuario = ug.us_id and g.id_grupo = ug.gr_id
and g.nombre like '%intensivo%'
--subconsulta2:
select nombre 
from usuarios
where id_usuario IN(select us_id from usuario_grupo where gr_id = 2)
--funcion de agregacion2:
select g.nombre, max(ug.us_id) ,min(ug.us_id)
from grupo g, usuario_grupo ug
where g.id_grupo = ug.gr_id
group by g.nombre

--Consulta3:
select u.nombre, g.fecha_creacion 
from usuarios u, grupo g, usuario_grupo ug
where u.id_usuario = ug.us_id and g.id_grupo = ug.gr_id
and (g.fecha_creacion between '2020/03/08' and '2022/03/08')
--subconsulta3:
select nombre 
from usuarios
where id_usuario IN(select us_id from usuario_grupo where gr_id = 3)
--funcion de agregacion3:
select g.descripcion, count(ug.us_id)
from grupo g, usuario_grupo ug
where g.id_grupo = ug.gr_id and g.descripcion like '%matutino%'
group by g.descripcion
