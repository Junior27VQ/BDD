--Relacion muchos a muchos entre municipio y proyecto:
create table ciudad(
    id_ciudad int,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key(id_ciudad)
)
create table municipio(
    id_municipio int,
	nombre varchar(45) not null,
	id_ciudad int,
	constraint municipio_fk foreign key(id_ciudad) references ciudad(id_ciudad),
	constraint municipio_pk primary key(id_municipio)
)
create table proyecto(
    id_proyecto int,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key(id_proyecto)
)
create table proyecto_municipio(
    municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key(municipio_id) references municipio(id_municipio),
	constraint proyecto_fk foreign key(proyecto_id) references proyecto(id_proyecto),
	constraint proyecto_municipio_pk primary key(municipio_id,proyecto_id)
)
--insert

--Consulta:
select m.nombre, p.proyecto
from municipio m, proyecto p, proyecto_municipio pm
where m.id_municipio = pm.municipio_id and p.id_proyecto = pm.proyecto_id
--subconsulta:
select proyecto 
from proyecto
where id_proyecto IN(select proyecto_id from proyecto_municipio where municipio_id = 1)
--funcion de agregacion:
select m.nombre, count(pm.proyecto_id) 
from municipio m, proyecto_municipio pm
where m.id_municipio = pm.municipio_id 
group by m.nombre
--Consulta2:
select m.nombre, p.proyecto
from municipio m, proyecto p, proyecto_municipio pm
where m.id_municipio = pm.municipio_id and p.id_proyecto = pm.proyecto_id
and m.nombre like '%GAD%'
--subconsulta2:
select proyecto 
from proyecto
where id_proyecto IN(select proyecto_id from proyecto_municipio where municipio_id = 2)
--funcion de agregacion2:
select m.nombre, min(pm.proyecto_id) 
from municipio m, proyecto_municipio pm
where m.id_municipio = pm.municipio_id 
group by m.nombre
--Consulta3:
select m.nombre, c.nombre
from municipio m, ciudad c
where m.id_municipio = c.id_ciudad 
--subconsulta3:
select proyecto 
from proyecto
where id_proyecto IN(select proyecto_id from proyecto_municipio where municipio_id = 3)
--funcion de agregacion3:
select m.nombre, max(pm.proyecto_id) 
from municipio m, proyecto_municipio pm
where m.id_municipio = pm.municipio_id 
group by m.nombre
